
#include "gui.h"

/* Margins to avoid overlapping GUI */
const int margin_left 	= 80;
const int margin_right  = 30;
const int margin_top 	= 50;
const int margin_bottom = 80;


void plotSettings(cairo_t *cr , int graph_height , int graph_width )
{
    /* Axis Settings */
    cairo_set_source_rgb(cr, 0, 0, 0);
    cairo_set_line_width(cr, 2);

    /* X axis */
    cairo_move_to(cr, margin_left, margin_top + graph_height);
    cairo_line_to(cr, margin_left + graph_width, margin_top + graph_height);
    cairo_stroke(cr);

    /* Y axis */
    cairo_move_to(cr, margin_left, margin_top);
    cairo_line_to(cr, margin_left, margin_top + graph_height);
    cairo_stroke(cr);

    /* Grid to graph*/
    cairo_set_source_rgb(cr, 0.9, 0.9, 0.9);
    cairo_set_line_width(cr, 0.5);
    for (int i = 0; i <= 5; i++)
    {
    	/* Horizontal grid drawing loop! */
        int y = margin_top + (graph_height * i) / 5;
        cairo_move_to(cr, margin_left, y);
        cairo_line_to(cr, margin_left + graph_width, y);
        cairo_stroke(cr);
    }
}

/*
 *
 * */
void plotGraph1 (cairo_t *cr ,uint64_t min_time , uint64_t time_range,
							int graph_width ,int graph_height , double min_val1 ,double max_val1 )
{
    /* Configuration for Graph-1 */
	/* Set color to red and set width of line */
	cairo_set_source_rgb(cr, 1, 0, 0);
	cairo_set_line_width(cr, 2);

	int first = 1;
	for (int i = 0; i < ctx.graph_data[0].count; i++)
	{
		/* Get timestamp of data  points*/
		uint64_t ts = ctx.graph_data[0].points[i].timestamp;

		if (ts < min_time) continue;

		/* Maps the timestamp to a horizontal pixel. */
		double x = margin_left + (double)(ts - min_time) / time_range * graph_width;

		/*Normalization for y-axis, maps in vertical axis between 0-1 */
		double norm = (double)(ctx.graph_data[0].points[i].value - min_val1) / (max_val1 - min_val1);

		/* Set the y-axis */
		double y = margin_top + graph_height - (norm * graph_height);

		if (first)
		{
			cairo_move_to(cr, x, y);
			first = 0;
		} else
		{
			cairo_line_to(cr, x, y);
		}
	}
	/* Draw Action! */
	cairo_stroke(cr);
}





void plotGraph2 (cairo_t *cr ,uint64_t min_time , uint64_t time_range,
					int graph_width ,int graph_height , double min_val2 ,double max_val2)
{
    /* Configuration for Graph-2 */
	cairo_set_source_rgb(cr, 0, 0, 1);
	cairo_set_line_width(cr, 2);

	int first = 1;
	for (int i = 0; i < ctx.graph_data[1].count; i++)
	{
		/* Get timestamp of data  points*/
		uint64_t ts = ctx.graph_data[1].points[i].timestamp;

		if (ts < min_time) continue;

		/* Maps the timestamp to a horizontal pixel. */
		double x = margin_left + (double)(ts - min_time) / time_range * graph_width;

		/*Normalization for y-axis, maps in vertical axis between 0-1 */
		double norm = (double)(ctx.graph_data[1].points[i].value - min_val2) /(max_val2 - min_val2);

		/* Set the y-axis */
		double y = margin_top + graph_height - (norm * graph_height);

		if (first) {
			cairo_move_to(cr, x, y);
			first = 0;
		} else {
			cairo_line_to(cr, x, y);
		}
	}
	/* Draw Action! */
	cairo_stroke(cr);
}


/*
 *
 * */
uint64_t latestSampledTime(void)
{
	uint64_t currentTime = 0;
	/* Set now timing to Last data point time from buffer*/
    if (ctx.graph_data[0].count > 0)
    {
    	currentTime = ctx.graph_data[0]
                  .points[ctx.graph_data[0].count - 1]
                  .timestamp;
    }

    /* Set now timing to Last data point time from buffer*/
    if (ctx.graph_data[1].count > 0)
    {
    	/* If graph2 has more time , set now to that */
        uint64_t t = ctx.graph_data[1]
                         .points[ctx.graph_data[1].count - 1]
                         .timestamp;
        if (t > currentTime)
        {
        	currentTime = t;
        }
    }

    return currentTime;
}



/*
 *
 * */
//void plotLabelYaxis (cairo_t *cr ,int graph_height ,  double min_val1 ,double max_val1)
//{
//	/* Labeling to Y-Axis */
//    cairo_set_source_rgb(cr, 0, 0, 0);
//    cairo_set_font_size(cr, 9);
//
//    for (int i = 0; i <= 5; i++)
//    {
//    	/* Calculates the 5 value between range of sensor */
//        //double YlabelVal = (min_val1 + (((max_val1 - min_val1) * (5 - i)) / 5));
//        double YlabelVal = (0 + (((5 - 0) * (5 - i)) / 5));
//
//        /* Where the put label in Y-axis */
//        int y = (margin_top + ((graph_height * i) / 5));
//
//        char label[32];
//        snprintf(label, sizeof(label), "%.1f", YlabelVal);
//        cairo_move_to(cr, margin_left - 75, y + 3);
//        cairo_show_text(cr, label);
//    }
//}


void plotDualYAxis(cairo_t *cr, int graph_height, int graph_width ,
                   double min_val1, double max_val1,   // left axis
                   double min_val2, double max_val2)   // right axis
{
    cairo_set_font_size(cr, 9);

    // --- LEFT Y AXIS (sensor 1, red) ---
    cairo_set_source_rgb(cr, 1, 0, 0); // red
    for (int i = 0; i <= 5; i++)
    {
        double YlabelVal = min_val1 + ((max_val1 - min_val1) * (5 - i) / 5);
        int y = margin_top + (graph_height * i / 5);

        char label[32];
        snprintf(label, sizeof(label), "%.1f", YlabelVal);
        cairo_move_to(cr, margin_left - 50, y + 3);  // adjust left spacing
        cairo_show_text(cr, label);

        // optional: draw tick marks
        cairo_move_to(cr, margin_left - 5, y);
        cairo_line_to(cr, margin_left, y);
        cairo_stroke(cr);
    }

    // --- RIGHT Y AXIS (sensor 2, blue) ---
    cairo_set_source_rgb(cr, 0, 0, 1); // blue
    for (int i = 0; i <= 5; i++)
    {
        double YlabelVal = min_val2 + ((max_val2 - min_val2) * (5 - i) / 5);
        int y = margin_top + (graph_height * i / 5);

        char label[32];
        snprintf(label, sizeof(label), "%.2f", YlabelVal);  // 2 decimal for volts
        cairo_move_to(cr, margin_left + graph_width + 5, y + 3);  // right side
        cairo_show_text(cr, label);

        // optional: draw tick marks
        cairo_move_to(cr, margin_left + graph_width, y);
        cairo_line_to(cr, margin_left + graph_width + 5, y);
        cairo_stroke(cr);
    }

    // --- Optional: vertical axis line for left/right ---
    cairo_set_source_rgb(cr, 0, 0, 0);
    cairo_move_to(cr, margin_left, margin_top);
    cairo_line_to(cr, margin_left, margin_top + graph_height);
    cairo_move_to(cr, margin_left + graph_width, margin_top);
    cairo_line_to(cr, margin_left + graph_width, margin_top + graph_height);
    cairo_stroke(cr);
}



/*
 *
 * */
void plotLabelXaxis (cairo_t *cr ,int graph_width ,int graph_height,
						uint64_t min_time ,uint64_t time_range)
{
    cairo_set_source_rgb(cr, 0, 0, 0);
    cairo_set_font_size(cr, 9);

    for (int i = 0; i <= 8; i++)
    {
    	/* Calculates the 5 time value between range of our time window */
        uint64_t XlabelTime = min_time + (time_range * i) / 8;

        /* Where the put label in X-axis */
        int x = margin_left + (graph_width * i) / 8;

        char label[64];
        snprintf(label, sizeof(label),"%" PRIu64 " ms", XlabelTime / 1000);

        cairo_move_to(cr, x - 35,
                      margin_top + graph_height + 25);
        cairo_show_text(cr, label);
    }
}


/*
 *
 * */
void plotTitles (cairo_t *cr ,int width , int height)
{
    /* Axis titles */
    cairo_set_font_size(cr, 10);
    cairo_move_to(cr, width / 2 - 40, height - 10);
    cairo_show_text(cr, "Time");

    cairo_move_to(cr, 10, height / 2 - 20);
    cairo_show_text(cr, "Value");
}


/*
 *
 * */
gboolean on_draw_graph(GtkWidget *widget, cairo_t *cr, gpointer data)
{
	/* Get Info on size of GUI*/
    int width = gtk_widget_get_allocated_width(widget);
    int height = gtk_widget_get_allocated_height(widget);

    if (width <= 0 || height <= 0)
        					return FALSE;

    pthread_mutex_lock(&ctx.graph_mutex);

    /* Draw the background of GUI */
    cairo_set_source_rgb(cr, 1, 1, 1); /* White color */
    cairo_rectangle(cr, 0, 0, width, height);
    cairo_fill(cr);

    /* If there is no data, write text that no data in buffer! */
    if (ctx.graph_data[0].count == 0 && ctx.graph_data[1].count == 0)
    {
        cairo_set_source_rgb(cr, 0.5, 0.5, 0.5);
        cairo_select_font_face(cr, "Monospace",
                               CAIRO_FONT_SLANT_NORMAL,
                               CAIRO_FONT_WEIGHT_NORMAL);
        cairo_set_font_size(cr, 14);
        cairo_move_to(cr, width / 2 - 80, height / 2);
        cairo_show_text(cr, "No data to display");
        pthread_mutex_unlock(&ctx.graph_mutex);
        return FALSE;
    }

    /* Calculate graph area that we can use*/
    int graph_width = width - margin_left - margin_right;
    int graph_height = height - margin_top - margin_bottom;
    /* Check if it is correct */
    if (graph_width <= 0 || graph_height <= 0)
    {
        pthread_mutex_unlock(&ctx.graph_mutex);
        return FALSE;
    }

    /* Get min and max val for Graphs */
    double min_val1 = ctx.graph_data[0].min_val;
    double max_val1 = ctx.graph_data[0].max_val;
    double min_val2 = ctx.graph_data[1].min_val;
    double max_val2 = ctx.graph_data[1].max_val;

    /* Calculate the range of Y-axis for Graph1*/
    double range1 = (max_val1 > min_val1) ? (max_val1 - min_val1) : 1;
    /* Add padding to Y-axis*/
    uint32_t pad1 = (range1 / 10) + 1;
    /* Calculate new min-max with paddings*/
    min_val1 = (min_val1 > pad1) ? (min_val1 - pad1) : 0;
    max_val1 += pad1;

    /* Calculate the range of Y-axis for Graph2*/
    uint32_t range2 = (max_val2 > min_val2) ? (max_val2 - min_val2) : 1;
    /* Add padding to Y-axis*/
    uint32_t pad2 = (range2 / 10) + 1;
    /* Calculate new min-max with paddings*/
    min_val2 = (min_val2 > pad2) ? (min_val2 - pad2) : 0;
    max_val2 += pad2;

    /* Sliding timing window implementation*/
    uint64_t now = latestSampledTime();

    /* Set min-time */
    uint64_t min_time = (now > SLIDING_WINDOW_US)
                        ? (now - SLIDING_WINDOW_US)
                        : 0;

    uint64_t time_range = SLIDING_WINDOW_US;

    /* Settings of graph and grid lines */
    plotSettings(cr , graph_height , graph_width);

    /* Configuration for Graph-1 */
    plotGraph1 (cr, min_time , time_range , graph_width ,
    					graph_height ,min_val1 , max_val1);


    plotGraph2 (cr , min_time, time_range ,graph_width,
    					graph_height , min_val2, max_val2);

	/* Labeling to Y-Axis */
    //plotLabelYaxis (cr , graph_height , min_val1 , max_val1);
    plotDualYAxis (cr , graph_height ,graph_width ,  min_val1 , max_val1
    				, min_val2 , max_val2);

	/* Labeling to X-Axis */
    plotLabelXaxis (cr , graph_width , graph_height , min_time , time_range);

    /* Axis titles */
    plotTitles(cr , width , height);

    pthread_mutex_unlock(&ctx.graph_mutex);
    return FALSE;
}





/*
 *
 * */
void add_graph_data_point(uint32_t sensor_id, uint32_t raw_value, uint64_t timestamp, int graph_index)
{
	/* Get sensor graph data struct as pointer*/
	sensor_graph_data *g = &ctx.graph_data[graph_index];

    pthread_mutex_lock(&ctx.graph_mutex);
    /* Convert raw to unit data*/
    double value = convert_raw_to_unit(sensor_id, raw_value);


    uint64_t window_start = 0;
    uint32_t write = 0;

    /* Are these points older than our timing window? if older, filter it*/
    if (timestamp > SLIDING_WINDOW_US)
    {
    	/* Is time now greater then window time interval ? */
    	window_start = timestamp - SLIDING_WINDOW_US;

        for (int i = 0; i < g->count; i++)
        {
            if (g->points[i].timestamp >= window_start)
            {
                g->points[write++] = g->points[i];
            }
        }
        /* Our new count value since we added some of them to beginning*/
        g->count = write;
    }

    /* Add new data point to buffer */
    if (g->count < MAX_DATA_POINTS)
    {
         g->points[g->count].timestamp = timestamp;
         g->points[g->count].value = value;
         g->count++;
     }

    /* Update new minimum and maximum values*/
    if (g->count == 1)
    {
        g->min_val  = value;
        g->max_val  = value;
    } else
    {
        if (value < g->min_val)
        					g->min_val = value;
        if (value > g->max_val)
        					g->max_val = value;
    }

    pthread_mutex_unlock(&ctx.graph_mutex);
}



/*
 *
 * */
double temp_raw_to_celsius(uint32_t rawvalue)
{
	double valC = ((rawvalue * 0.03125) - 256.0) ;
	//double valC = ((((double)rawvalue)/4096) * 3.3) ;
	return valC;
}


/*
 *
 * */
double adc_raw_to_volt(uint32_t rawvalue)
{
	double valV = ((((double)rawvalue)/4095.0) * 3.3) ;
	return valV;
}



/*
 *
 * */
double convert_raw_to_unit(int sensor_id, uint32_t raw)
{
    switch (sensor_id) {
    case SENSOR_TEMP:
        return temp_raw_to_celsius(raw);
    case SENSOR_ADC0:
    	 return adc_raw_to_volt(raw);
    case SENSOR_ADC1:
        return adc_raw_to_volt(raw);
    default:
        return (double)0;
    }
}
