
#include "gui.h"
#include "tcpmessage.h"


const char *sensor_names[] = {
    "Unknown",
    "Temperature (°C)",
    "ADC0 (raw)",
    "ADC1 (raw)",
    "Switch (hex)",
    "Push Button (hex)"
};


/*
 *
 * */
void on_connect_clicked(GtkButton *button, gpointer data)
{
    if (ctx.connected) {
        gtk_label_set_text(GTK_LABEL(ctx.label_status), "Already connected!");
        return;
    }

    const char *server_ip = gtk_entry_get_text(GTK_ENTRY(ctx.entry_ip));
    if (!server_ip || strlen(server_ip) == 0) {
        gtk_label_set_text(GTK_LABEL(ctx.label_status), "Enter server IP address!");
        return;
    }

    log_debug("Connecting to %s:%d", server_ip, SERVER_PORT);

    ctx.socket_fd = socket(AF_INET, SOCK_STREAM, 0);
    if (ctx.socket_fd < 0) {
        perror("[GUI] Socket creation error");
        gtk_label_set_text(GTK_LABEL(ctx.label_status), "Socket error!");
        return;
    }

    struct sockaddr_in serv_addr;
    memset(&serv_addr, 0, sizeof(serv_addr));
    serv_addr.sin_family = AF_INET;
    serv_addr.sin_port = htons(SERVER_PORT);

    if (inet_pton(AF_INET, server_ip, &serv_addr.sin_addr) <= 0) {
        perror("[GUI] Invalid address");
        gtk_label_set_text(GTK_LABEL(ctx.label_status), "Invalid server address!");
        close(ctx.socket_fd);
        ctx.socket_fd = -1;
        return;
    }

    if (connect(ctx.socket_fd, (struct sockaddr *)&serv_addr, sizeof(serv_addr)) < 0) {
        perror("[GUI] Connection error");
        gtk_label_set_text(GTK_LABEL(ctx.label_status), "Connection failed!");
        close(ctx.socket_fd);
        ctx.socket_fd = -1;
        return;
    }

    ctx.connected = 1;
    ctx.thread_running = 1;
    ctx.start_time = 0;

    if (pthread_create(&ctx.receive_thread, NULL, receive_data_thread, NULL) < 0) {
        perror("[GUI] Thread creation error");
        gtk_label_set_text(GTK_LABEL(ctx.label_status), "Thread creation error!");
        close(ctx.socket_fd);
        ctx.socket_fd = -1;
        ctx.connected = 0;
        return;
    }

    char status_msg[128];
    snprintf(status_msg, sizeof(status_msg), "Connected to %s!", server_ip);
    gtk_label_set_text(GTK_LABEL(ctx.label_status), status_msg);
    gtk_widget_set_sensitive(GTK_WIDGET(ctx.entry_ip), FALSE);
    gtk_widget_set_sensitive(GTK_WIDGET(ctx.button_connect), FALSE);
    gtk_widget_set_sensitive(GTK_WIDGET(ctx.button_disconnect), TRUE);
    gtk_widget_set_sensitive(GTK_WIDGET(ctx.button_start), TRUE);
    gtk_widget_set_sensitive(GTK_WIDGET(ctx.button_configure), TRUE);
    gtk_widget_set_sensitive(GTK_WIDGET(ctx.btn_temp_set), TRUE);
    gtk_widget_set_sensitive(GTK_WIDGET(ctx.btn_adc0_set), TRUE);
    gtk_widget_set_sensitive(GTK_WIDGET(ctx.btn_adc1_set), TRUE);
    gtk_widget_set_sensitive(GTK_WIDGET(ctx.btn_switch_set), TRUE);
    gtk_widget_set_sensitive(GTK_WIDGET(ctx.button_shutdown), TRUE);
    gtk_widget_set_sensitive(ctx.btn_req_data_time_set, TRUE);
    gtk_widget_set_sensitive(ctx.spin_req_data_time, TRUE);
    gtk_widget_set_sensitive(ctx.btn_req_data_time_set, TRUE);
    gtk_widget_set_sensitive(ctx.spin_req_data_time, TRUE);



    log_debug("Connected successfully");
}


/*
 *
 * */
void on_disconnect_clicked(GtkButton *button, gpointer data)
{
    if (!ctx.connected) {
        gtk_label_set_text(GTK_LABEL(ctx.label_status), "Not connected!");
        return;
    }

    log_debug("Disconnecting...");

    ctx.thread_running = 0;
    ctx.transmitting = 0;

    const char *disconnect_cmd = "disconnect\n";
    if (send(ctx.socket_fd, disconnect_cmd, strlen(disconnect_cmd), 0) < 0) {
        log_error("Failed to send disconnect command");
    }

    usleep(100000);

    if (ctx.socket_fd >= 0) {
        close(ctx.socket_fd);
        ctx.socket_fd = -1;
    }

    pthread_join(ctx.receive_thread, NULL);

    ctx.connected = 0;

    gtk_label_set_text(GTK_LABEL(ctx.label_status), "Disconnected!");
    gtk_widget_set_sensitive(GTK_WIDGET(ctx.entry_ip), TRUE);
    gtk_widget_set_sensitive(GTK_WIDGET(ctx.button_connect), TRUE);
    gtk_widget_set_sensitive(GTK_WIDGET(ctx.button_disconnect), FALSE);
    gtk_widget_set_sensitive(GTK_WIDGET(ctx.button_start), FALSE);
    gtk_widget_set_sensitive(GTK_WIDGET(ctx.button_stop), FALSE);
    gtk_widget_set_sensitive(GTK_WIDGET(ctx.button_configure), FALSE);
    gtk_widget_set_sensitive(GTK_WIDGET(ctx.btn_temp_set), FALSE);
    gtk_widget_set_sensitive(GTK_WIDGET(ctx.btn_adc0_set), FALSE);
    gtk_widget_set_sensitive(GTK_WIDGET(ctx.btn_adc1_set), FALSE);
    gtk_widget_set_sensitive(GTK_WIDGET(ctx.btn_switch_set), FALSE);
    gtk_widget_set_sensitive(ctx.btn_req_data_time_set, FALSE);
    gtk_widget_set_sensitive(ctx.spin_req_data_time, FALSE);


    gtk_button_set_label(GTK_BUTTON(ctx.button_start), "Start");

    log_debug("Disconnected successfully");
}

void on_start_clicked(GtkButton *button, gpointer data)
{
    if (!ctx.connected) {
        gtk_label_set_text(GTK_LABEL(ctx.label_status), "Not connected!");
        return;
    }

    if (ctx.transmitting) {
        gtk_label_set_text(GTK_LABEL(ctx.label_status), "Already transmitting!");
        return;
    }


	Clnt_Send_struct sendCmd;
    sendCmd.cmd = MNG_CMD_REQ_DATA;
    sendCmd.param[0] = 0;
    sendCmd.param[1] = 0;

    if (send(ctx.socket_fd, &sendCmd, sizeof(sendCmd), 0) < 0)
    {
        perror("[GUI] Error sending start command");
        gtk_label_set_text(GTK_LABEL(ctx.label_status), "Error sending command!");
        return;
    }

    memset(ctx.graph_data[0].points, 0, sizeof(ctx.graph_data[0].points));
    memset(ctx.graph_data[1].points, 0, sizeof(ctx.graph_data[1].points));

    ctx.transmitting = 1;
    ctx.timer_id = g_timeout_add(INITIAL_TIME_INTERVAL_REQ, (GSourceFunc)data_request_timer, NULL);


    gtk_label_set_text(GTK_LABEL(ctx.label_status), "Data acquisition started!");
    gtk_widget_set_sensitive(GTK_WIDGET(ctx.button_start), FALSE);
    gtk_widget_set_sensitive(GTK_WIDGET(ctx.button_stop), TRUE);
    gtk_button_set_label(GTK_BUTTON(ctx.button_start), "Started");


    log_debug("Transmission started");
}



/*
 *
 * */
void on_stop_clicked(GtkButton *button, gpointer data)
{
    if (!ctx.connected || !ctx.transmitting) {
        gtk_label_set_text(GTK_LABEL(ctx.label_status), "Not transmitting!");
        return;
    }




    ctx.transmitting = 0;
    gtk_label_set_text(GTK_LABEL(ctx.label_status), "Data acquisition stopped!");
    gtk_widget_set_sensitive(GTK_WIDGET(ctx.button_start), TRUE);
    gtk_widget_set_sensitive(GTK_WIDGET(ctx.button_stop), FALSE);
    gtk_button_set_label(GTK_BUTTON(ctx.button_start), "Start");

    log_debug("Transmission stopped");
}



/*
 *
 * */
void on_set_temp_clicked(GtkButton *button, gpointer data)
{
    if (!ctx.connected)
    {
        gtk_label_set_text(GTK_LABEL(ctx.label_status), "Not connected!");
        return;
    }

    Clnt_Send_struct sendCmd;
    int temp_cfg = (int)gtk_spin_button_get_value(GTK_SPIN_BUTTON(ctx.spin_temp_cfg));

    if ((1000 % temp_cfg) != 0) {
        gtk_label_set_text(GTK_LABEL(ctx.label_status),
                           "Invalid TEMP frequency: must divide 1000 Hz");
        return;
    }

    if(temp_cfg == 0)
    {
    	sendCmd.cmd = MNG_CMD_DORMANT_TEM;
        sendCmd.param[0] = 0;
        sendCmd.param[1] = 0;

    }else
    {
        sendCmd.cmd = MNG_CMD_SET_FREQ;
        sendCmd.param[0] = MNG_CMD_SET_FREQ_TMP;
        sendCmd.param[1] = temp_cfg;
    }


    if (send(ctx.socket_fd , &sendCmd, sizeof(Clnt_Send_struct),0) < 0)
    {
        perror("[GUI] Error sending configure command");
        gtk_label_set_text(GTK_LABEL(ctx.label_status), "Error sending configure command!");
        return;
    }

    char status_msg[256];
    snprintf(status_msg, sizeof(status_msg),
             "Configure sent: Temp=%d Hz ",
			 temp_cfg);
    gtk_label_set_text(GTK_LABEL(ctx.label_status), status_msg);
}


/*
 *
 * */
void on_set_adc0_clicked(GtkButton *button, gpointer data)
{
    if (!ctx.connected) {
        gtk_label_set_text(GTK_LABEL(ctx.label_status), "Not connected!");
        return;
    }

    Clnt_Send_struct sendCmd;

    int adc0_cfg = (int)gtk_spin_button_get_value(GTK_SPIN_BUTTON(ctx.spin_adc0_cfg));

    if ((1000 % adc0_cfg) != 0) {
        gtk_label_set_text(GTK_LABEL(ctx.label_status),
                           "Invalid ADC0 frequency: must divide 1000 Hz");
        return;
    }

    if(adc0_cfg == 0)
    {
    	sendCmd.cmd = MNG_CMD_DORMANT_ADC0;
        sendCmd.param[0] = 0;
        sendCmd.param[1] = 0;

    }else
    {
        sendCmd.cmd = MNG_CMD_SET_FREQ;
        sendCmd.param[0] = MNG_CMD_SET_FREQ_ADC0;
        sendCmd.param[1] = adc0_cfg;
    }


    if (send(ctx.socket_fd , &sendCmd, sizeof(Clnt_Send_struct),0) < 0)
    {
        perror("[GUI] Error sending configure command");
        gtk_label_set_text(GTK_LABEL(ctx.label_status), "Error sending configure command!");
        return;
    }

    char status_msg[256];
    snprintf(status_msg, sizeof(status_msg),
             "Configure sent: ADC0=%d Hz ",
			 adc0_cfg);
    gtk_label_set_text(GTK_LABEL(ctx.label_status), status_msg);

}


/*
 *
 * */
void on_set_adc1_clicked(GtkButton *button, gpointer data)
{
    if (!ctx.connected) {
        gtk_label_set_text(GTK_LABEL(ctx.label_status), "Not connected!");
        return;
    }

    Clnt_Send_struct sendCmd;
    int adc1_cfg = (int)gtk_spin_button_get_value(GTK_SPIN_BUTTON(ctx.spin_adc1_cfg));

    if ((1000 % adc1_cfg) != 0) {
        gtk_label_set_text(GTK_LABEL(ctx.label_status),
                           "Invalid ADC1 frequency: must divide 1000 Hz");
        return;
    }
    /* -------------------------------- */

    if(adc1_cfg == 0)
    {
    	sendCmd.cmd = MNG_CMD_DORMANT_ADC1;
        sendCmd.param[0] = 0;
        sendCmd.param[1] = 0;

    }else
    {
        sendCmd.cmd = MNG_CMD_SET_FREQ;
        sendCmd.param[0] = MNG_CMD_SET_FREQ_ADC1;
        sendCmd.param[1] = adc1_cfg;
    }



    if (send(ctx.socket_fd , &sendCmd, sizeof(Clnt_Send_struct),0) < 0)
    {
        perror("[GUI] Error sending configure command");
        gtk_label_set_text(GTK_LABEL(ctx.label_status), "Error sending configure command!");
        return;
    }

    char status_msg[256];
    snprintf(status_msg, sizeof(status_msg),
             "Configure sent: ADC1=%d Hz ",
			 adc1_cfg);
    gtk_label_set_text(GTK_LABEL(ctx.label_status), status_msg);
}


/*
 *
 * */
void on_set_switch_clicked(GtkButton *button, gpointer data)
{
    if (!ctx.connected)
    {
        gtk_label_set_text(GTK_LABEL(ctx.label_status), "Not connected!");
        return;
    }

    Clnt_Send_struct sendCmd;
    int switch_cfg = (int)gtk_spin_button_get_value(GTK_SPIN_BUTTON(ctx.spin_switch_cfg));

    if ((1000 % switch_cfg) != 0) {
        gtk_label_set_text(GTK_LABEL(ctx.label_status),
                           "Invalid SWBTN frequency: must divide 1000 Hz");
        return;
    }


    if(switch_cfg == 0)
    {
    	sendCmd.cmd = MNG_CMD_DORMANT_SWBUTT;
        sendCmd.param[0] = 0;
        sendCmd.param[1] = 0;

    }else
    {
        sendCmd.cmd = MNG_CMD_SET_FREQ;
        sendCmd.param[0] = MNG_CMD_SET_FREQ_SWBT;
        sendCmd.param[1] = switch_cfg;
    }




    if (send(ctx.socket_fd , &sendCmd, sizeof(Clnt_Send_struct),0) < 0)
    {
        perror("[GUI] Error sending configure command");
        gtk_label_set_text(GTK_LABEL(ctx.label_status), "Error sending configure command!");
        return;
    }

    char status_msg[256];
    snprintf(status_msg, sizeof(status_msg),
             "Configure sent: SWTBN=%d Hz ",
			 switch_cfg);
    gtk_label_set_text(GTK_LABEL(ctx.label_status), status_msg);
}



/*
 *
 * */
void on_graph_clicked(GtkButton *button, gpointer data)
{
    int sensor1_index = gtk_combo_box_get_active(GTK_COMBO_BOX(ctx.combo_sensor1));
    int sensor2_index = gtk_combo_box_get_active(GTK_COMBO_BOX(ctx.combo_sensor2));

    if (sensor1_index < 0 || sensor2_index < 0) {
        gtk_label_set_text(GTK_LABEL(ctx.label_graph_status), "Select two sensors!");
        return;
    }

    if (sensor1_index == sensor2_index) {
        gtk_label_set_text(GTK_LABEL(ctx.label_graph_status), "Select TWO DIFFERENT sensors!");
        return;
    }

    int sensor1 = sensor1_index + 1;
    int sensor2 = sensor2_index + 1;

    if (sensor1 < SENSOR_TEMP || sensor1 > SENSOR_ADC1 ||
        sensor2 < SENSOR_TEMP || sensor2 > SENSOR_ADC1) {
        gtk_label_set_text(GTK_LABEL(ctx.label_graph_status), "Only Temperature, ADC0, ADC1 can be graphed!");
        return;
    }

    ctx.current_sensor1 = sensor1;
    ctx.current_sensor2 = sensor2;

    pthread_mutex_lock(&ctx.graph_mutex);
    ctx.graph_data[0].count = 0;
    ctx.graph_data[0].min_val = UINT32_MAX;
    ctx.graph_data[0].max_val = 0;
    ctx.graph_data[1].count = 0;
    ctx.graph_data[1].min_val = UINT32_MAX;
    ctx.graph_data[1].max_val = 0;
    pthread_mutex_unlock(&ctx.graph_mutex);

    char status_msg[256];
    snprintf(status_msg, sizeof(status_msg),
             "Plotting %s (red) vs %s (blue)...",
             sensor_names[sensor1],
             sensor_names[sensor2]);
    gtk_label_set_text(GTK_LABEL(ctx.label_graph_status), status_msg);
    gtk_widget_queue_draw(ctx.drawing_area);

    log_debug("Graph: %s vs %s", sensor_names[sensor1], sensor_names[sensor2]);
}


/*
 *
 */
void on_clear_graph_clicked(GtkButton *button, gpointer data)
{
    pthread_mutex_lock(&ctx.graph_mutex);
    ctx.graph_data[0].count = 0;
    ctx.graph_data[0].min_val = UINT32_MAX;
    ctx.graph_data[0].max_val = 0;
    ctx.graph_data[1].count = 0;
    ctx.graph_data[1].min_val = UINT32_MAX;
    ctx.graph_data[1].max_val = 0;
    memset(ctx.graph_data[0].points, 0, sizeof(ctx.graph_data[0].points));
    memset(ctx.graph_data[1].points, 0, sizeof(ctx.graph_data[1].points));
    pthread_mutex_unlock(&ctx.graph_mutex);

    gtk_label_set_text(GTK_LABEL(ctx.label_graph_status), "Graph data cleared!");
    gtk_widget_queue_draw(ctx.drawing_area);

    log_debug("Graph cleared");
}



/*
 *
 * */
void on_shutdown_clicked(GtkWidget *widget, gpointer data)
{
    if (!ctx.connected)
    {
        gtk_label_set_text(GTK_LABEL(ctx.label_status), "Not connected!");
        return;
    }

    Clnt_Send_struct sendCmd;
    sendCmd.cmd = MNG_CMD_SHUTDOWN;
    sendCmd.param[0] = 0;
    sendCmd.param[1] = 0;

    if (send(ctx.socket_fd , &sendCmd, sizeof(Clnt_Send_struct),0) < 0)
    {
        perror("[GUI] Error sending configure command");
        gtk_label_set_text(GTK_LABEL(ctx.label_status), "Error sending configure command!");
        return;
    }

    gtk_widget_set_sensitive(GTK_WIDGET(ctx.button_connect), FALSE);
    gtk_widget_set_sensitive(GTK_WIDGET(ctx.button_disconnect), FALSE);
    gtk_widget_set_sensitive(GTK_WIDGET(ctx.button_start), FALSE);

}

/*
 *
 * */
void on_set_sliding_window_clicked(GtkButton *button, gpointer data)
{
    uint64_t new_window;


    new_window = (uint64_t)gtk_spin_button_get_value(GTK_SPIN_BUTTON(ctx.spin_sliding_window));



    if (new_window < 100000 || new_window > 10000000) {
        gtk_label_set_text(GTK_LABEL(ctx.label_status),
                           "Sliding window must be 100,000 – 10,000,000 µs");
        return;
    }

    SLIDING_WINDOW_US = new_window;

    char msg[128];
    snprintf(msg, sizeof(msg), "Sliding window set to %" PRIu64 " µs", SLIDING_WINDOW_US);
    gtk_label_set_text(GTK_LABEL(ctx.label_status), msg);
}


/*
 *
 * */
void on_sensor1_changed(GtkComboBox *combo, gpointer data)
{
    int idx = gtk_combo_box_get_active(combo);

    switch (idx)
    {
		case 0:
			ctx.current_sensor1 = SENSOR_NONE;
			break;
		case 1:
			ctx.current_sensor1 = SENSOR_TEMP;
			break;
		case 2:
			ctx.current_sensor1 = SENSOR_ADC0;
			break;
		case 3:
			ctx.current_sensor1 = SENSOR_ADC1;
			break;
		default:
			return;
    }

    memset(ctx.graph_data[0].points, 0, sizeof(ctx.graph_data[0].points));
    ctx.graph_data[0].count = 0;

    gtk_label_set_text(GTK_LABEL(ctx.label_graph_status),
                       "Sensor 1 updated");

    gtk_widget_queue_draw(ctx.drawing_area);
}


/*
 *
 * */
void on_sensor2_changed(GtkComboBox *combo, gpointer data)
{
    int idx = gtk_combo_box_get_active(combo);

    switch (idx)
    {
		case 0:
			ctx.current_sensor2 = SENSOR_NONE;
			break;
		case 1:
			ctx.current_sensor2 = SENSOR_TEMP;
			break;
		case 2:
			ctx.current_sensor2 = SENSOR_ADC0;
			break;
		case 3:
			ctx.current_sensor2 = SENSOR_ADC1;
			break;
		default:
			return;
    }


    memset(ctx.graph_data[1].points, 0, sizeof(ctx.graph_data[1].points));
    ctx.graph_data[1].count = 0;

    gtk_label_set_text(GTK_LABEL(ctx.label_graph_status),
                       "Sensor 2 updated");

    gtk_widget_queue_draw(ctx.drawing_area);
}



void on_set_req_data_time_clicked(GtkButton *button, gpointer user_data)
{
    int req_time_ms =
        gtk_spin_button_get_value_as_int(
            GTK_SPIN_BUTTON(ctx.spin_req_data_time));

    if (ctx.timer_id > 0)
    {
        g_source_remove(ctx.timer_id);
        ctx.timer_id = 0;
    }

    ctx.interval_ms = req_time_ms;
    ctx.timer_id = g_timeout_add(req_time_ms, (GSourceFunc)data_request_timer, NULL);
    log_debug("Data request timer updated to %u ms", req_time_ms);


}




/*
 *
 * */
void on_window_destroy(GtkWidget *widget, gpointer data)
{
    if (ctx.connected) {
        on_disconnect_clicked(NULL, NULL);
    }
    gtk_main_quit();
}
