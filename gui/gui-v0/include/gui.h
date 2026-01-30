
#ifndef GUI_H_
#define GUI_H_


#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <arpa/inet.h>
#include <sys/socket.h>
#include <pthread.h>
#include <stdint.h>
#include <inttypes.h>
#include <errno.h>
#include <stdarg.h>
#include <gtk/gtk.h>
#include <glib.h>
#include <cairo.h>
#include <math.h>



#define SERVER_PORT 		50012
#define MAX_DATA_POINTS 	20000
#define PACKET_SIZE 		16
#define PAYLOAD_SIZE 		1536
#define PACKETS_PER_PAYLOAD 96
#define MNG_PAYLOAD_SIZE    104U

#define SENSOR_NONE		0
#define SENSOR_TEMP 	3
#define SENSOR_ADC0 	1
#define SENSOR_ADC1 	2
#define SENSOR_SWBTN 	4
#define SENSOR_PUSHB 	7
#define INITIAL_TIME_INTERVAL_REQ	100U

//#define SLIDING_WINDOW_US 5000000ULL


extern uint64_t SLIDING_WINDOW_US;    // new runtime variable



typedef struct {
    uint64_t timestamp;
    double value;      // Changed to signed to support negative temperatures
} data_point;

typedef struct {
    data_point points[MAX_DATA_POINTS];
    int count;
    uint32_t sensor_id;      // This identifies which sensor is currently being drawn
    double min_val;    // Changed to signed (e.g., -100000)
    double max_val;    // Changed to signed (e.g., 100000)
} sensor_graph_data;

typedef struct {
    GtkWidget *window;
    GtkWidget *drawing_area;

    /* Sensor labels */
    GtkWidget *label_temp;
    GtkWidget *label_temp_ts;
    GtkWidget *label_adc0;
    GtkWidget *label_adc0_ts;
    GtkWidget *label_adc1;
    GtkWidget *label_adc1_ts;
    GtkWidget *label_switch;
    GtkWidget *label_pushb;
    GtkWidget *label_status;

    /* Connection controls */
    GtkWidget *entry_ip;
    GtkWidget *button_connect;
    GtkWidget *button_disconnect;
    GtkWidget *button_start;
    GtkWidget *button_stop;

    /* Configure controls */
    GtkWidget *spin_temp_cfg;
    GtkWidget *spin_adc0_cfg;
    GtkWidget *spin_adc1_cfg;
    GtkWidget *spin_switch_cfg;
    GtkWidget *spin_pushb_cfg;
    GtkWidget *button_configure;
    GtkWidget *spin_sliding_window;

    /* Graph controls */
    GtkWidget *combo_sensor1;
    GtkWidget *combo_sensor2;
    GtkWidget *button_graph;
    GtkWidget *button_clear;
    GtkWidget *label_graph_status;

    GtkWidget *btn_temp_set;
    GtkWidget *btn_adc0_set;
    GtkWidget *btn_adc1_set;
    GtkWidget *btn_switch_set;
    GtkWidget *button_shutdown;
    GtkWidget *btn_sliding_window_set;
    GtkWidget *toggle_sampling;

    GtkWidget *spin_req_data_time;
    GtkWidget *btn_req_data_time_set;


    int socket_fd;
    pthread_t receive_thread;
    int connected;
    int thread_running;
    int transmitting;

    sensor_graph_data graph_data[2];
    pthread_mutex_t graph_mutex;

    int current_sensor1;
    int current_sensor2;

    /* Cache last displayed values to prevent redundant updates */
    uint32_t display_temp;
    uint64_t display_temp_ts;
    uint32_t display_adc0;
    uint64_t display_adc0_ts;
    uint32_t display_adc1;
    uint64_t display_adc1_ts;
    uint32_t display_swbtn;
    uint32_t display_pushb;

    guint timer_id;
    uint32_t interval_ms;

    uint64_t start_time;
    pthread_mutex_t display_mutex;
} gui_context;




extern gui_context ctx;

typedef struct {
    uint32_t sid;
    uint32_t svalue;
    uint64_t ts;
} __attribute__((packed)) packet;


typedef struct {
	uint32_t sid;
    uint32_t svalue;
    uint64_t ts;
} sensor_data_update;

typedef struct {
    uint64_t  elapsedTime;   /* Time Info */
    uint32_t   sensorVal;     /* Sensor sampled data*/
    uint32_t  sensorID;      /* Sensor specific ID*/
}__attribute__((packed)) mng_sensorDataPacked_t;


typedef struct {
    uint32_t sampleCount;
    mng_sensorDataPacked_t sendBuf[MNG_PAYLOAD_SIZE];
}__attribute__((packed)) mng_Payload_t;


/*	Drawing graph Prototype*/
gboolean on_draw_graph(GtkWidget *widget, cairo_t *cr, gpointer data);

void add_graph_data_point(uint32_t sensor_id, uint32_t raw_value,
								uint64_t timestamp, int graph_index);

/*	Sensor parsing Prototype*/
gboolean update_sensor_display(gpointer data);

/*	Thread Prototype*/
void *receive_data_thread(void *arg);

/*	GUI creation Prototype*/
void create_gui(void);

/*	Periodic data request Prototype*/
gboolean data_request_timer(gpointer data);

/*	Convert raw data to unit Prototype*/
double convert_raw_to_unit(int sensor_id, uint32_t raw);

/*	Find latest time for X-axis */
uint64_t latestSampledTime(void);

/*	Settings for lines and plots */
void plotSettings(cairo_t *cr , int graph_height , int graph_width );

/* Plot graph 1 */
void plotGraph1 (cairo_t *cr ,uint64_t min_time , uint64_t time_range,
				int graph_width ,int graph_height , double min_val1 ,double max_val1 );

/* Plot graph 2 */
void plotGraph2 (cairo_t *cr ,uint64_t min_time , uint64_t time_range,
					int graph_width ,int graph_height , double min_val2 ,double max_val2);

/*	Set Label for Y axis*/
//void plotLabelYaxis (cairo_t *cr ,int graph_height ,  double min_val1 ,double max_val1);
void plotDualYAxis(cairo_t *cr, int graph_height, int graph_width ,
                   double min_val1, double max_val1,   // left axis
                   double min_val2, double max_val2);   // right axis

/*	Set Label for X axis*/
void plotLabelXaxis (cairo_t *cr ,int graph_width ,int graph_height,
						uint64_t min_time ,uint64_t time_range);

/*	Write titles to graph */
void plotTitles (cairo_t *cr ,int width , int height);

/*  Error Handlers */
void log_debug(const char *fmt, ...) ;
void log_error(const char *fmt, ...) ;


/* Button Callbacks ! */
void on_connect_clicked(GtkButton *button, gpointer data);
void on_disconnect_clicked(GtkButton *button, gpointer data);
void on_start_clicked(GtkButton *button, gpointer data);
void on_stop_clicked(GtkButton *button, gpointer data);
void on_configure_clicked(GtkButton *button, gpointer data);
void on_graph_clicked(GtkButton *button, gpointer data);
void on_clear_graph_clicked(GtkButton *button, gpointer data);
void on_window_destroy(GtkWidget *widget, gpointer data);
void on_set_temp_clicked(GtkButton *button, gpointer data);
void on_set_switch_clicked(GtkButton *button, gpointer data);
void on_set_adc1_clicked(GtkButton *button, gpointer data);
void on_set_adc0_clicked(GtkButton *button, gpointer data);
void on_shutdown_clicked(GtkWidget *widget, gpointer data);
void on_set_sliding_window_clicked(GtkButton *button, gpointer data);
void on_sensor1_changed(GtkComboBox *combo, gpointer data);
void on_sensor2_changed(GtkComboBox *combo, gpointer data);
void on_sampling_toggled(GtkToggleButton *btn, gpointer user_data);
void on_set_req_data_time_clicked(GtkButton *button, gpointer user_data);

#endif
