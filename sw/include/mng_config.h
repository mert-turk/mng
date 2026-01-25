/**
 ******************************************************************************
* @file           : mng_config.h
* @author         : Mert Ali Turk
* @brief          : Configuration header file for application layer.
* @date           : 2025-11-20
*
* @note
*   This file can configure attributes of application layer.
*       
******************************************************************************
*/


#ifndef MNG_CONFIG_H
#define MNG_CONFIG_H


/* Length of the Ring Buffer*/
#define MNG_RBUF_LENGTH                  104U
/* Overwrite of sampled datas to buffer *Uncomment to use*  */
#define MNG_RBUF_OVERWRITE
/* Base frequency is maximum frequency that sensor can sampled. */
#define MNG_BASE_FREQ_HZ                 1000U
/* 1 ms sensor loop sleep value. (microsec) */     
#define MNG_SENSOR_LOOP_INTERVAL_US      1000
/* Initial frequency  for sampling sensors is 10 Hz */
#define MNG_INITIAL_FREQ_HZ              10U
/* Command buffer to store client's commands. */
#define MNG_CMD_MAX_PARAMS               2
/* Network port for server. */
#define MNG_NETWORK_PORT                 50012
/* Network Timeout Value İN us for Select API */
#define MNG_NETWORK_TIMEOUT_US           1000
/* Meascdd device driver file descriptor directory. */
#define MNG_MEASCDD_FILE_DESCRIPTOR      "/dev/meascdd"
/* ADC Sensor Register Number*/
#define MNG_IP_ADC_SENSOR_REGNUM         5
/* MAX Sensor Register Number*/
#define MNG_IP_MAX_SENSOR_REGNUM         2
/* Switch and Buttons Register Number*/
#define MNG_IP_SWITCH_BUTTONS_REGNUM     0
/* LED output Register Number*/
#define MNG_IP_LEDS_REGNUM               0
/* Specific sensor ID for sensor */
#define MNG_ADC0_SENSOR_ID               1U
/* Specific sensor ID for sensor */
#define MNG_ADC1_SENSOR_ID               2U
/* Specific sensor ID for sensor */
#define MNG_TEMP_SENSOR_ID               3U
/* Specific sensor ID for sensor */
#define MNG_SWBTN_SENSOR_ID              4U
/* Size of payload which is going to send */
#define MNG_PAYLOAD_SIZE                 104U


/*  Command definitions (Client <-> Server)  */
#define MNG_CMD_DORMANT_ADC0    0x01U  // Set adc0 to dormant
#define MNG_CMD_DORMANT_ADC1    0x20U  // Set adc1 to dormant
#define MNG_CMD_DORMANT_TEM     0x03U  // Set temperature to dormant
#define MNG_CMD_DORMANT_SWBUTT  0x0BU  // Set switch-buttons to dormant
#define MNG_CMD_WLED            0x09U  // write LED
#define MNG_CMD_REQ_DATA        0xFFU  // Request data
#define MNG_CMD_SHUTDOWN        0x30U  // Shutdown the application
#define MNG_CMD_SET_FREQ        0x0CU  // Set frequency command
#define MNG_CMD_SET_FREQ_TMP    0x0DU  // Set frequency for temperature 
#define MNG_CMD_SET_FREQ_ADC0   0x0EU  // Set frequency for adc0 
#define MNG_CMD_SET_FREQ_ADC1   0x0FU  // Set frequency for adc1 
#define MNG_CMD_SET_FREQ_SWBT   0x10U  // Set frequency for swbtn 


/* Extern shutdown variable */
extern uint32_t SHUTDOWN;

#endif //MNG_CONFIG_H