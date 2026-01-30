
#include "gui.h"
#include "tcpmessage.h"



/*
 *
 * */
void *receive_data_thread(void *arg)
{
    log_debug("Receive thread started");

   // unsigned char raw_payload[PAYLOAD_SIZE];
    mng_Payload_t response;



    while (ctx.thread_running) {
        //memset(raw_payload, 0, PAYLOAD_SIZE);

        log_debug("Waiting for payload...");
        memset(&response, 0, sizeof(response));
        ssize_t bytes_received = recv(ctx.socket_fd, &response, sizeof(response), 0);

        log_debug("Received %zd bytes", bytes_received);

        if (bytes_received < 0) {
            if (errno != ECONNRESET && errno != EPIPE) {
                perror("[GUI] recv error");
            }
            log_debug("recv() returned error, breaking");
            break;
        } else if (bytes_received == 0) {
            log_debug("Server closed connection");
            break;
        }

       /* if (bytes_received != PAYLOAD_SIZE) {
            log_debug("WARNING: Received %zd bytes, expected %d", bytes_received, PAYLOAD_SIZE);
        } */

        int packets_parsed = 0;
        log_debug("Total getting sample count = %u",  response.sampleCount);

        for (uint32_t i = 0; i < response.sampleCount  ; i++)
        {

            //packet *pkt = (packet *)&raw_payload[i * PACKET_SIZE];

//            log_debug("Packet %d: sid=%u, svalue=%u, ts=%" PRIu64,
//                     i, response.sendBuf[i].sensorID,
//					 	response.sendBuf[i].sensorVal,
//						response.sendBuf[i].elapsedTime);

            if ( response.sendBuf[i].sensorID > 5) {
                log_error("Invalid sensor ID in packet %d: %u", i, response.sendBuf[i].sensorID);
                continue;
            }

            if (ctx.start_time == 0) {
                ctx.start_time = response.sendBuf[i].elapsedTime;
                log_debug("Start time set to: %" PRIu64, ctx.start_time);
            }

            sensor_data_update *update = (sensor_data_update *)g_malloc(sizeof(sensor_data_update));
            if (update == NULL) {
                log_error("Failed to allocate memory for sensor_data_update");
                break;
            }

            update->sid    = response.sendBuf[i].sensorID;
            update->svalue = response.sendBuf[i].sensorVal;
            update->ts     = response.sendBuf[i].elapsedTime;

            log_debug("Queuing update for sensor %d", response.sendBuf[i].sensorID);

            guint idle_id = g_idle_add(update_sensor_display, (gpointer)update);
            if (idle_id == 0) {
                log_error("g_idle_add() failed");
                g_free(update);
                break;
            }

            packets_parsed++;
        }

        log_debug("Parsed %d packets from payload", packets_parsed);
    }

    log_debug("Receive thread exiting");
    return NULL;
}


/*
 *
 * */
// This function runs every X milliseconds while 'transmitting' is active
gboolean data_request_timer(gpointer data)
{
    if (ctx.connected && ctx.transmitting)
    {
    	Clnt_Send_struct sendCmd;
        sendCmd.cmd = MNG_CMD_REQ_DATA;
        sendCmd.param[0] = 0;
        sendCmd.param[1] = 0;

        if (send(ctx.socket_fd, &sendCmd, sizeof(sendCmd), 0) < 0)
        {
            log_error("Failed to send periodic data request");
        } else {
            log_debug("Sent periodic data request to server");
        }
        return TRUE; // Continue the timer
    }
    return FALSE; // Stop the timer
}




/*
 *
 * */
gboolean update_sensor_display(gpointer data)
{
    sensor_data_update *update = (sensor_data_update *)data;

    if (update == NULL) {
        log_error("update_sensor_display: NULL pointer");
        return FALSE;
    }

    if (update->sid > 5) {
        log_error("Invalid sensor ID: %d", update->sid);
        g_free(update);
        return FALSE;
    }

    char buffer[256];
    int needs_redraw = 0;

    pthread_mutex_lock(&ctx.display_mutex);

    switch (update->sid) {
		case SENSOR_TEMP: {
			uint64_t relative_ms = (update->ts - ctx.start_time) / 1000;

			ctx.display_temp = update->svalue;
			ctx.display_temp_ts = relative_ms;

			snprintf(buffer, sizeof(buffer), "%u", update->svalue);
			gtk_label_set_text(GTK_LABEL(ctx.label_temp), buffer);

			snprintf(buffer, sizeof(buffer), "%" PRIu64 " ms", relative_ms);
			gtk_label_set_text(GTK_LABEL(ctx.label_temp_ts), buffer);

			log_debug("TEMP: %u @ %" PRIu64 " us (relative: %" PRIu64 " ms)",
					 update->svalue, update->ts, relative_ms);

			if (ctx.current_sensor1 == SENSOR_TEMP)
				add_graph_data_point(SENSOR_TEMP, update->svalue, update->ts, 0);
			if (ctx.current_sensor2 == SENSOR_TEMP)
				add_graph_data_point(SENSOR_TEMP, update->svalue, update->ts, 1);
			needs_redraw = 1;
			break;
		}

		case SENSOR_ADC0: {
			uint64_t relative_ms = (update->ts - ctx.start_time) / 1000;

			ctx.display_adc0 = update->svalue;
			ctx.display_adc0_ts = relative_ms;

			snprintf(buffer, sizeof(buffer), "%u", update->svalue);
			gtk_label_set_text(GTK_LABEL(ctx.label_adc0), buffer);

			snprintf(buffer, sizeof(buffer), "%" PRIu64 " ms", relative_ms);
			gtk_label_set_text(GTK_LABEL(ctx.label_adc0_ts), buffer);

			log_debug("ADC0: %u @ %" PRIu64 " us (relative: %" PRIu64 " ms)",
					 update->svalue, update->ts, relative_ms);


			if (ctx.current_sensor1 == SENSOR_ADC0)
				add_graph_data_point(SENSOR_ADC0, update->svalue, update->ts, 0);
			if (ctx.current_sensor2 == SENSOR_ADC0)
				add_graph_data_point(SENSOR_ADC0, update->svalue, update->ts, 1);
			needs_redraw = 1;
			break;
		}

		case SENSOR_ADC1: {
			uint64_t relative_ms = (update->ts - ctx.start_time) / 1000;


			ctx.display_adc1 = update->svalue;
			ctx.display_adc1_ts = relative_ms;

			snprintf(buffer, sizeof(buffer), "%u", update->svalue);
			gtk_label_set_text(GTK_LABEL(ctx.label_adc1), buffer);

			snprintf(buffer, sizeof(buffer), "%" PRIu64 " ms", relative_ms);
			gtk_label_set_text(GTK_LABEL(ctx.label_adc1_ts), buffer);

			log_debug("ADC1: %u @ %" PRIu64 " us (relative: %" PRIu64 " ms)",
					 update->svalue, update->ts, relative_ms);


			if (ctx.current_sensor1 == SENSOR_ADC1)
				add_graph_data_point(SENSOR_ADC1, update->svalue, update->ts, 0);
			if (ctx.current_sensor2 == SENSOR_ADC1)
				add_graph_data_point(SENSOR_ADC1, update->svalue, update->ts, 1);
			needs_redraw = 1;
			break;
		}

		case SENSOR_SWBTN:
			if (ctx.display_swbtn != update->svalue) {
				ctx.display_swbtn = update->svalue;

				snprintf(buffer, sizeof(buffer), "0x%02X", update->svalue);
				gtk_label_set_text(GTK_LABEL(ctx.label_switch), buffer);
				log_debug("SWITCH: 0x%02X", update->svalue);

				ctx.display_pushb = (update->svalue >> 8);
				snprintf(buffer, sizeof(buffer), "0x%02X",  (update->svalue >> 8));
				gtk_label_set_text(GTK_LABEL(ctx.label_pushb), buffer);
				log_debug("PUSHB: 0x%02X", update->svalue);

			}
			break;

		default:
			log_error("Unknown sensor ID: %d", update->sid);
			break;
    }

    pthread_mutex_unlock(&ctx.display_mutex);

    g_free(update);

    if (needs_redraw && ctx.drawing_area != NULL) {
        gtk_widget_queue_draw(ctx.drawing_area);
    }

    return FALSE;
}
