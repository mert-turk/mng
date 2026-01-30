
#include "gui.h"


gui_context ctx = {0};

uint64_t SLIDING_WINDOW_US = 5000000ULL;

int main(int argc, char *argv[])
{
    gtk_init(&argc, &argv);

    memset(&ctx, 0, sizeof(ctx));
    memset(ctx.graph_data[0].points, 0, sizeof(ctx.graph_data[0].points));
    memset(ctx.graph_data[1].points, 0, sizeof(ctx.graph_data[1].points));
    ctx.socket_fd = -1;
    ctx.connected = 0;
    ctx.thread_running = 0;
    ctx.transmitting = 0;
    ctx.current_sensor1 = SENSOR_TEMP;
    ctx.current_sensor2 = SENSOR_ADC0;
    ctx.start_time = 0;
    ctx.timer_id = 0;


    ctx.graph_data[0].min_val = UINT32_MAX;
    ctx.graph_data[0].max_val = 0;
    ctx.graph_data[1].min_val = UINT32_MAX;
    ctx.graph_data[1].max_val = 0;

    pthread_mutex_init(&ctx.graph_mutex, NULL);
    pthread_mutex_init(&ctx.display_mutex, NULL);

    log_debug("GUI Application Started");
    create_gui();
    gtk_main();

    pthread_mutex_destroy(&ctx.graph_mutex);
    pthread_mutex_destroy(&ctx.display_mutex);

    log_debug("GUI Application Closed");
    return 0;
}
