
#include "gui.h"

void create_gui()
{
    ctx.window = gtk_window_new(GTK_WINDOW_TOPLEVEL);
    gtk_window_set_title(GTK_WINDOW(ctx.window),
                         "Measurement Network Gateway - Real-Time Data Monitor");
    gtk_window_set_default_size(GTK_WINDOW(ctx.window), 1500, 950);
    gtk_container_set_border_width(GTK_CONTAINER(ctx.window), 10);
    g_signal_connect(ctx.window, "destroy", G_CALLBACK(on_window_destroy), NULL);

    GtkWidget *vbox_main = gtk_box_new(GTK_ORIENTATION_VERTICAL, 10);
    gtk_container_add(GTK_CONTAINER(ctx.window), vbox_main);

    GtkWidget *label_title = gtk_label_new(NULL);
    gtk_label_set_markup(GTK_LABEL(label_title),
                         "<b><big>Measurement Network Gateway</big></b>");
    gtk_box_pack_start(GTK_BOX(vbox_main), label_title, FALSE, FALSE, 0);

    /* Connection controls frame */
    GtkWidget *frame_conn = gtk_frame_new(" Connection ");
    gtk_box_pack_start(GTK_BOX(vbox_main), frame_conn, FALSE, FALSE, 0);

    GtkWidget *hbox_conn = gtk_box_new(GTK_ORIENTATION_HORIZONTAL, 10);
    gtk_container_add(GTK_CONTAINER(frame_conn), hbox_conn);
    gtk_container_set_border_width(GTK_CONTAINER(hbox_conn), 10);

    GtkWidget *label_ip = gtk_label_new("Server IP:");
    gtk_box_pack_start(GTK_BOX(hbox_conn), label_ip, FALSE, FALSE, 0);

    ctx.entry_ip = gtk_entry_new();
    gtk_entry_set_text(GTK_ENTRY(ctx.entry_ip), "127.0.0.1");
    gtk_entry_set_width_chars(GTK_ENTRY(ctx.entry_ip), 15);
    gtk_box_pack_start(GTK_BOX(hbox_conn), ctx.entry_ip, FALSE, FALSE, 0);

    ctx.button_connect = gtk_button_new_with_label("Connect");
    g_signal_connect(ctx.button_connect, "clicked", G_CALLBACK(on_connect_clicked), NULL);
    gtk_box_pack_start(GTK_BOX(hbox_conn), ctx.button_connect, FALSE, FALSE, 0);

    ctx.button_disconnect = gtk_button_new_with_label("Disconnect");
    gtk_widget_set_sensitive(GTK_WIDGET(ctx.button_disconnect), FALSE);
    g_signal_connect(ctx.button_disconnect, "clicked", G_CALLBACK(on_disconnect_clicked), NULL);
    gtk_box_pack_start(GTK_BOX(hbox_conn), ctx.button_disconnect, FALSE, FALSE, 0);

    ctx.button_start = gtk_button_new_with_label("Start");
    gtk_widget_set_sensitive(GTK_WIDGET(ctx.button_start), FALSE);
    g_signal_connect(ctx.button_start, "clicked", G_CALLBACK(on_start_clicked), NULL);
    gtk_box_pack_start(GTK_BOX(hbox_conn), ctx.button_start, FALSE, FALSE, 0);

    ctx.button_stop = gtk_button_new_with_label("Stop");
    gtk_widget_set_sensitive(GTK_WIDGET(ctx.button_stop), FALSE);
    g_signal_connect(ctx.button_stop, "clicked", G_CALLBACK(on_stop_clicked), NULL);
    gtk_box_pack_start(GTK_BOX(hbox_conn), ctx.button_stop, FALSE, FALSE, 0);

    /* Status */
    ctx.label_status = gtk_label_new("Disconnected");
    gtk_label_set_markup(GTK_LABEL(ctx.label_status), "<i>Status: Disconnected</i>");
    gtk_box_pack_start(GTK_BOX(vbox_main), ctx.label_status, FALSE, FALSE, 0);

    /* Configure frame */
    GtkWidget *frame_config = gtk_frame_new(" Sensor Frequency Set(Hz) ");
    gtk_box_pack_start(GTK_BOX(vbox_main), frame_config, FALSE, FALSE, 0);

    GtkWidget *hbox_config = gtk_box_new(GTK_ORIENTATION_HORIZONTAL, 10);
    gtk_container_add(GTK_CONTAINER(frame_config), hbox_config);
    gtk_container_set_border_width(GTK_CONTAINER(hbox_config), 10);

    /* Temperature config */
    GtkWidget *label_temp_cfg = gtk_label_new("Temp (Hz):");
    gtk_box_pack_start(GTK_BOX(hbox_config), label_temp_cfg, FALSE, FALSE, 0);
    ctx.spin_temp_cfg = gtk_spin_button_new_with_range(0, 1000, 50);


    gtk_spin_button_set_value(GTK_SPIN_BUTTON(ctx.spin_temp_cfg), 500);
    gtk_widget_set_size_request(ctx.spin_temp_cfg, 80, -1);
    gtk_box_pack_start(GTK_BOX(hbox_config), ctx.spin_temp_cfg, FALSE, FALSE, 0);

    ctx.btn_temp_set = gtk_button_new_with_label("Set");
    gtk_widget_set_sensitive(ctx.btn_temp_set, FALSE);
    g_signal_connect(ctx.btn_temp_set, "clicked",
                     G_CALLBACK(on_set_temp_clicked), NULL);
    gtk_box_pack_start(GTK_BOX(hbox_config), ctx.btn_temp_set, FALSE, FALSE, 0);

    /* ADC0 config */
    GtkWidget *label_adc0_cfg = gtk_label_new("ADC0 (Hz):");
    gtk_box_pack_start(GTK_BOX(hbox_config), label_adc0_cfg, FALSE, FALSE, 0);
    ctx.spin_adc0_cfg = gtk_spin_button_new_with_range(0, 1000, 50);
    gtk_spin_button_set_value(GTK_SPIN_BUTTON(ctx.spin_adc0_cfg), 500);
    gtk_widget_set_size_request(ctx.spin_adc0_cfg, 80, -1);
    gtk_box_pack_start(GTK_BOX(hbox_config), ctx.spin_adc0_cfg, FALSE, FALSE, 0);

    ctx.btn_adc0_set = gtk_button_new_with_label("Set");
    gtk_widget_set_sensitive(ctx.btn_adc0_set, FALSE);
    g_signal_connect(ctx.btn_adc0_set, "clicked",
                     G_CALLBACK(on_set_adc0_clicked), NULL);
    gtk_box_pack_start(GTK_BOX(hbox_config), ctx.btn_adc0_set, FALSE, FALSE, 0);

    /* ADC1 config */
    GtkWidget *label_adc1_cfg = gtk_label_new("ADC1 (Hz):");
    gtk_box_pack_start(GTK_BOX(hbox_config), label_adc1_cfg, FALSE, FALSE, 0);
    ctx.spin_adc1_cfg = gtk_spin_button_new_with_range(0, 1000, 50);
    gtk_spin_button_set_value(GTK_SPIN_BUTTON(ctx.spin_adc1_cfg), 500);
    gtk_widget_set_size_request(ctx.spin_adc1_cfg, 80, -1);
    gtk_box_pack_start(GTK_BOX(hbox_config), ctx.spin_adc1_cfg, FALSE, FALSE, 0);


    ctx.btn_adc1_set = gtk_button_new_with_label("Set");
    gtk_widget_set_sensitive(ctx.btn_adc1_set, FALSE);
    g_signal_connect(ctx.btn_adc1_set, "clicked",
                     G_CALLBACK(on_set_adc1_clicked), NULL);
    gtk_box_pack_start(GTK_BOX(hbox_config), ctx.btn_adc1_set, FALSE, FALSE, 0);

    /* Switch config */
    GtkWidget *label_switch_cfg = gtk_label_new("Sw-Btn (Hz):");
    gtk_box_pack_start(GTK_BOX(hbox_config), label_switch_cfg, FALSE, FALSE, 0);
    ctx.spin_switch_cfg = gtk_spin_button_new_with_range(0, 1000, 50);
    gtk_spin_button_set_value(GTK_SPIN_BUTTON(ctx.spin_switch_cfg), 500);
    gtk_widget_set_size_request(ctx.spin_switch_cfg, 80, -1);
    gtk_box_pack_start(GTK_BOX(hbox_config), ctx.spin_switch_cfg, FALSE, FALSE, 0);

    ctx.btn_switch_set = gtk_button_new_with_label("Set");
    gtk_widget_set_sensitive(ctx.btn_switch_set, FALSE);
    g_signal_connect(ctx.btn_switch_set, "clicked",
                     G_CALLBACK(on_set_switch_clicked), NULL);
    gtk_box_pack_start(GTK_BOX(hbox_config), ctx.btn_switch_set, FALSE, FALSE, 0);

    /* Time interval Change*/
    ctx.spin_sliding_window = gtk_spin_button_new_with_range( 1, 10000000, 100000);
    gtk_spin_button_set_value(GTK_SPIN_BUTTON(ctx.spin_sliding_window), SLIDING_WINDOW_US);
    gtk_box_pack_start(GTK_BOX(hbox_config), ctx.spin_sliding_window, FALSE, FALSE, 0);

    ctx.btn_sliding_window_set = gtk_button_new_with_label("Set Window");
    g_signal_connect(ctx.btn_sliding_window_set, "clicked",
                     G_CALLBACK(on_set_sliding_window_clicked), NULL);
    gtk_box_pack_start(GTK_BOX(hbox_config), ctx.btn_sliding_window_set, FALSE, FALSE, 0);


    /* SHUTDOWN button config*/
    ctx.button_shutdown = gtk_button_new_with_label("Shutdown");
    gtk_box_pack_start(GTK_BOX(hbox_conn), ctx.button_shutdown, FALSE, FALSE, 0);
    g_signal_connect(ctx.button_shutdown, "clicked",
                     G_CALLBACK(on_shutdown_clicked), NULL);



    gtk_widget_set_sensitive(GTK_WIDGET(ctx.button_shutdown), FALSE);
    /* PushButton config
    GtkWidget *label_pushb_cfg = gtk_label_new("PushB (ms):");
    gtk_box_pack_start(GTK_BOX(hbox_config), label_pushb_cfg, FALSE, FALSE, 0);
    ctx.spin_pushb_cfg = gtk_spin_button_new_with_range(10, 10000, 50);
    gtk_spin_button_set_value(GTK_SPIN_BUTTON(ctx.spin_pushb_cfg), 500);
    gtk_widget_set_size_request(ctx.spin_pushb_cfg, 80, -1);
    gtk_box_pack_start(GTK_BOX(hbox_config), ctx.spin_pushb_cfg, FALSE, FALSE, 0);
*/
    /* Configure button
    ctx.button_configure = gtk_button_new_with_label("Apply Config");
    gtk_widget_set_sensitive(GTK_WIDGET(ctx.button_configure), FALSE);
    g_signal_connect(ctx.button_configure, "clicked", G_CALLBACK(on_configure_clicked), NULL);
    gtk_box_pack_start(GTK_BOX(hbox_config), ctx.button_configure, FALSE, FALSE, 0);
*/


    /* Main content area */
    GtkWidget *hpaned = gtk_paned_new(GTK_ORIENTATION_HORIZONTAL);
    gtk_box_pack_start(GTK_BOX(vbox_main), hpaned, TRUE, TRUE, 0);
    gtk_paned_set_position(GTK_PANED(hpaned), 350);

    /* LEFT: Sensor Data */
    GtkWidget *frame_sensors = gtk_frame_new(" Sensor Data (Live) ");
    gtk_paned_add1(GTK_PANED(hpaned), frame_sensors);

    GtkWidget *vbox_sensors = gtk_box_new(GTK_ORIENTATION_VERTICAL, 10);
    gtk_container_add(GTK_CONTAINER(frame_sensors), vbox_sensors);
    gtk_container_set_border_width(GTK_CONTAINER(vbox_sensors), 10);

    /* Temperature */
    GtkWidget *hbox_temp = gtk_box_new(GTK_ORIENTATION_HORIZONTAL, 10);
    gtk_box_pack_start(GTK_BOX(vbox_sensors), hbox_temp, FALSE, FALSE, 0);

    GtkWidget *label_temp_title = gtk_label_new(NULL);
    gtk_label_set_markup(GTK_LABEL(label_temp_title), "<b>Temperature:</b>");
    gtk_widget_set_size_request(label_temp_title, 130, -1);
    gtk_widget_set_halign(label_temp_title, GTK_ALIGN_START);
    gtk_box_pack_start(GTK_BOX(hbox_temp), label_temp_title, FALSE, FALSE, 0);

    ctx.label_temp = gtk_label_new("--");
    gtk_widget_set_halign(ctx.label_temp, GTK_ALIGN_START);
    gtk_widget_set_size_request(ctx.label_temp, 80, -1);
    gtk_box_pack_start(GTK_BOX(hbox_temp), ctx.label_temp, FALSE, FALSE, 0);

    ctx.label_temp_ts = gtk_label_new("-- ms");
    gtk_widget_set_halign(ctx.label_temp_ts, GTK_ALIGN_END);
    gtk_box_pack_start(GTK_BOX(hbox_temp), ctx.label_temp_ts, TRUE, TRUE, 0);

    /* ADC0 */
    GtkWidget *hbox_adc0 = gtk_box_new(GTK_ORIENTATION_HORIZONTAL, 10);
    gtk_box_pack_start(GTK_BOX(vbox_sensors), hbox_adc0, FALSE, FALSE, 0);

    GtkWidget *label_adc0_title = gtk_label_new(NULL);
    gtk_label_set_markup(GTK_LABEL(label_adc0_title), "<b>ADC0:</b>");
    gtk_widget_set_size_request(label_adc0_title, 130, -1);
    gtk_widget_set_halign(label_adc0_title, GTK_ALIGN_START);
    gtk_box_pack_start(GTK_BOX(hbox_adc0), label_adc0_title, FALSE, FALSE, 0);

    ctx.label_adc0 = gtk_label_new("--");
    gtk_widget_set_halign(ctx.label_adc0, GTK_ALIGN_START);
    gtk_widget_set_size_request(ctx.label_adc0, 80, -1);
    gtk_box_pack_start(GTK_BOX(hbox_adc0), ctx.label_adc0, FALSE, FALSE, 0);

    ctx.label_adc0_ts = gtk_label_new("-- ms");
    gtk_widget_set_halign(ctx.label_adc0_ts, GTK_ALIGN_END);
    gtk_box_pack_start(GTK_BOX(hbox_adc0), ctx.label_adc0_ts, TRUE, TRUE, 0);

    /* ADC1 */
    GtkWidget *hbox_adc1 = gtk_box_new(GTK_ORIENTATION_HORIZONTAL, 10);
    gtk_box_pack_start(GTK_BOX(vbox_sensors), hbox_adc1, FALSE, FALSE, 0);

    GtkWidget *label_adc1_title = gtk_label_new(NULL);
    gtk_label_set_markup(GTK_LABEL(label_adc1_title), "<b>ADC1:</b>");
    gtk_widget_set_size_request(label_adc1_title, 130, -1);
    gtk_widget_set_halign(label_adc1_title, GTK_ALIGN_START);
    gtk_box_pack_start(GTK_BOX(hbox_adc1), label_adc1_title, FALSE, FALSE, 0);

    ctx.label_adc1 = gtk_label_new("--");
    gtk_widget_set_halign(ctx.label_adc1, GTK_ALIGN_START);
    gtk_widget_set_size_request(ctx.label_adc1, 80, -1);
    gtk_box_pack_start(GTK_BOX(hbox_adc1), ctx.label_adc1, FALSE, FALSE, 0);

    ctx.label_adc1_ts = gtk_label_new("-- ms");
    gtk_widget_set_halign(ctx.label_adc1_ts, GTK_ALIGN_END);
    gtk_box_pack_start(GTK_BOX(hbox_adc1), ctx.label_adc1_ts, TRUE, TRUE, 0);

    gtk_box_pack_start(GTK_BOX(vbox_sensors), gtk_separator_new(GTK_ORIENTATION_HORIZONTAL), FALSE, FALSE, 0);

    /* Switch */
    GtkWidget *hbox_switch = gtk_box_new(GTK_ORIENTATION_HORIZONTAL, 10);
    gtk_box_pack_start(GTK_BOX(vbox_sensors), hbox_switch, FALSE, FALSE, 0);

    GtkWidget *label_switch_title = gtk_label_new(NULL);
    gtk_label_set_markup(GTK_LABEL(label_switch_title), "<b>Switch:</b>");
    gtk_widget_set_size_request(label_switch_title, 130, -1);
    gtk_widget_set_halign(label_switch_title, GTK_ALIGN_START);
    gtk_box_pack_start(GTK_BOX(hbox_switch), label_switch_title, FALSE, FALSE, 0);

    ctx.label_switch = gtk_label_new("--");
    gtk_widget_set_halign(ctx.label_switch, GTK_ALIGN_START);
    gtk_box_pack_start(GTK_BOX(hbox_switch), ctx.label_switch, TRUE, TRUE, 0);

    /* Push Button */
    GtkWidget *hbox_pushb = gtk_box_new(GTK_ORIENTATION_HORIZONTAL, 10);
    gtk_box_pack_start(GTK_BOX(vbox_sensors), hbox_pushb, FALSE, FALSE, 0);

    GtkWidget *label_pushb_title = gtk_label_new(NULL);
    gtk_label_set_markup(GTK_LABEL(label_pushb_title), "<b>Push Button:</b>");
    gtk_widget_set_size_request(label_pushb_title, 130, -1);
    gtk_widget_set_halign(label_pushb_title, GTK_ALIGN_START);
    gtk_box_pack_start(GTK_BOX(hbox_pushb), label_pushb_title, FALSE, FALSE, 0);

    ctx.label_pushb = gtk_label_new("--");
    gtk_widget_set_halign(ctx.label_pushb, GTK_ALIGN_START);
    gtk_box_pack_start(GTK_BOX(hbox_pushb), ctx.label_pushb, TRUE, TRUE, 0);





    /* RIGHT: Graph Area */
    GtkWidget *vbox_graph = gtk_box_new(GTK_ORIENTATION_VERTICAL, 10);
    gtk_paned_add2(GTK_PANED(hpaned), vbox_graph);

    ctx.drawing_area = gtk_drawing_area_new();
    gtk_widget_set_size_request(ctx.drawing_area, 600, 400);
    g_signal_connect(G_OBJECT(ctx.drawing_area), "draw", G_CALLBACK(on_draw_graph), NULL);
    gtk_box_pack_start(GTK_BOX(vbox_graph), ctx.drawing_area, TRUE, TRUE, 0);

    /* Request Data Time control */
    GtkWidget *frame_req_time = gtk_frame_new(" Request Data Time ");
    gtk_box_pack_start(GTK_BOX(vbox_sensors), frame_req_time, FALSE, FALSE, 0);

    GtkWidget *hbox_req_time = gtk_box_new(GTK_ORIENTATION_HORIZONTAL, 10);
    gtk_container_add(GTK_CONTAINER(frame_req_time), hbox_req_time);

    GtkWidget *label_req_time = gtk_label_new("Time (ms):");
    gtk_box_pack_start(GTK_BOX(hbox_req_time), label_req_time, FALSE, FALSE, 0);

    ctx.spin_req_data_time = gtk_spin_button_new_with_range(1, 100, 10);
    gtk_spin_button_set_value(GTK_SPIN_BUTTON(ctx.spin_req_data_time), 100);
    gtk_widget_set_size_request(ctx.spin_req_data_time, 100, -1);
    gtk_box_pack_start(GTK_BOX(hbox_req_time), ctx.spin_req_data_time, FALSE, FALSE, 0);

    ctx.btn_req_data_time_set = gtk_button_new_with_label("Set");
    gtk_box_pack_start(GTK_BOX(hbox_req_time), ctx.btn_req_data_time_set, FALSE, FALSE, 0);

    g_signal_connect(ctx.btn_req_data_time_set, "clicked",
                     G_CALLBACK(on_set_req_data_time_clicked), NULL);

    gtk_widget_set_sensitive(ctx.btn_req_data_time_set, FALSE);
    gtk_widget_set_sensitive(ctx.spin_req_data_time, FALSE);

    /* Graph controls frame */
    GtkWidget *frame_graph = gtk_frame_new(" Graph Controls ");
    gtk_box_pack_start(GTK_BOX(vbox_graph), frame_graph, FALSE, FALSE, 0);

    GtkWidget *vbox_graph_controls = gtk_box_new(GTK_ORIENTATION_VERTICAL, 10);
    gtk_container_add(GTK_CONTAINER(frame_graph), vbox_graph_controls);
    gtk_container_set_border_width(GTK_CONTAINER(vbox_graph_controls), 10);

    /* Sensor 1 selection */
    GtkWidget *hbox_s1 = gtk_box_new(GTK_ORIENTATION_HORIZONTAL, 10);
    gtk_box_pack_start(GTK_BOX(vbox_graph_controls), hbox_s1, FALSE, FALSE, 0);

    GtkWidget *label_s1 = gtk_label_new("Sensor 1 (Red):");
    gtk_widget_set_size_request(label_s1, 130, -1);
    gtk_widget_set_halign(label_s1, GTK_ALIGN_START);
    gtk_box_pack_start(GTK_BOX(hbox_s1), label_s1, FALSE, FALSE, 0);

    ctx.combo_sensor1 = gtk_combo_box_text_new();
    gtk_combo_box_text_append_text(GTK_COMBO_BOX_TEXT(ctx.combo_sensor1), "None");
    gtk_combo_box_text_append_text(GTK_COMBO_BOX_TEXT(ctx.combo_sensor1), "Temperature");
    gtk_combo_box_text_append_text(GTK_COMBO_BOX_TEXT(ctx.combo_sensor1), "ADC0");
    gtk_combo_box_text_append_text(GTK_COMBO_BOX_TEXT(ctx.combo_sensor1), "ADC1");
    gtk_combo_box_set_active(GTK_COMBO_BOX(ctx.combo_sensor1), 1);
    gtk_box_pack_start(GTK_BOX(hbox_s1), ctx.combo_sensor1, TRUE, TRUE, 0);

    g_signal_connect(ctx.combo_sensor1, "changed",
                     G_CALLBACK(on_sensor1_changed), NULL);


    /* Sensor 2 selection */
    GtkWidget *hbox_s2 = gtk_box_new(GTK_ORIENTATION_HORIZONTAL, 10);
    gtk_box_pack_start(GTK_BOX(vbox_graph_controls), hbox_s2, FALSE, FALSE, 0);

    GtkWidget *label_s2 = gtk_label_new("Sensor 2 (Blue):");
    gtk_widget_set_size_request(label_s2, 130, -1);
    gtk_widget_set_halign(label_s2, GTK_ALIGN_START);
    gtk_box_pack_start(GTK_BOX(hbox_s2), label_s2, FALSE, FALSE, 0);

    ctx.combo_sensor2 = gtk_combo_box_text_new();
    gtk_combo_box_text_append_text(GTK_COMBO_BOX_TEXT(ctx.combo_sensor2), "None");
    gtk_combo_box_text_append_text(GTK_COMBO_BOX_TEXT(ctx.combo_sensor2), "Temperature");
    gtk_combo_box_text_append_text(GTK_COMBO_BOX_TEXT(ctx.combo_sensor2), "ADC0");
    gtk_combo_box_text_append_text(GTK_COMBO_BOX_TEXT(ctx.combo_sensor2), "ADC1");
    gtk_combo_box_set_active(GTK_COMBO_BOX(ctx.combo_sensor2), 2);
    gtk_box_pack_start(GTK_BOX(hbox_s2), ctx.combo_sensor2, TRUE, TRUE, 0);

    g_signal_connect(ctx.combo_sensor2, "changed",
                     G_CALLBACK(on_sensor2_changed), NULL);


    /* Graph buttons */
    GtkWidget *hbox_graph_btns = gtk_box_new(GTK_ORIENTATION_HORIZONTAL, 5);
    gtk_box_pack_start(GTK_BOX(vbox_graph_controls), hbox_graph_btns, FALSE, FALSE, 0);

    ctx.button_graph = gtk_button_new_with_label("Plot Graph");
    g_signal_connect(ctx.button_graph, "clicked", G_CALLBACK(on_graph_clicked), NULL);
    gtk_box_pack_start(GTK_BOX(hbox_graph_btns), ctx.button_graph, TRUE, TRUE, 0);

    ctx.button_clear = gtk_button_new_with_label("Clear Data");
    g_signal_connect(ctx.button_clear, "clicked", G_CALLBACK(on_clear_graph_clicked), NULL);
    gtk_box_pack_start(GTK_BOX(hbox_graph_btns), ctx.button_clear, TRUE, TRUE, 0);

    /* Graph status */
    ctx.label_graph_status = gtk_label_new("Select two different sensors and click 'Plot Graph'");
    gtk_label_set_line_wrap(GTK_LABEL(ctx.label_graph_status), TRUE);
    gtk_label_set_selectable(GTK_LABEL(ctx.label_graph_status), TRUE);
    gtk_box_pack_start(GTK_BOX(vbox_graph_controls), ctx.label_graph_status, FALSE, FALSE, 0);

    gtk_widget_show_all(ctx.window);
}
