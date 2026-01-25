/**
 ******************************************************************************
* @file           : mng_sensor.h
* @author         : Mert Ali Turk
* @brief          : Sensor handle implementation.
* @date           : 2025-11-16
*
* @note
*   This file includes sensor handle APIs prototype declarations and type definitions.
*       
******************************************************************************
*/

#ifndef MNG_SENSOR_H
#define MNG_SENSOR_H

#include <time.h>
#include"stdint.h"


/*****************************************************************************/
/*                               TYPE DEFINITIONS                            */
/*****************************************************************************/
typedef struct
{
    uint16_t sensorFreq;     /* Desired Frequency (Hz) set by user. */
    uint16_t samplePeriod;   /* (MNG_BASE_FREQ / sensorFreq) Determines sampling period */
    uint32_t sensorValue;    /* The last sampled data from sensor. */
    uint64_t elapsedTime;    /* Elapsed time between samples. */
    uint8_t  sensorDormant;
    uint32_t sensorID;       /* ID of specific sensor */
    uint16_t regNum;         /* Specific register number for sensor object. */
}mng_sensorHandle_t;


typedef enum{
    MNG_SENSOR_OK = 0,
    MNG_SENSOR_ERR_FREQ,
    MNG_SENSOR_WAIT,
    MNG_SENSOR_ERR_NULL_PTR,
    MNG_SENSOR_DORMANT
}MNG_SENSOR_STAT;


/*****************************************************************************/
/*                               FUNCTION PROTOTYPES                         */
/*****************************************************************************/

/**
 * @brief  Initializes the sensor frequency.
 */
MNG_SENSOR_STAT mng_sensorInit (mng_sensorHandle_t * me , uint16_t userFreq , uint16_t sensorReg , uint32_t id);

/**
 * @brief  Samples the sensor.
 */
MNG_SENSOR_STAT mng_sensorRead (mng_sensorHandle_t * me , int fd);

/**
 * @brief  Reads register.
 */
uint32_t mng_readReg (int fd , uint16_t regNum);

/**
 * @brief  Writes to register.
 */
void mng_writeReg (int fd , uint16_t regNum , uint32_t regVal);

/**
 * @brief  It writes to sensor.
 */
MNG_SENSOR_STAT mng_sensorWrite (mng_sensorHandle_t * me , int fd , uint32_t regval);

/**
 * @brief  It read ADC sensor.
 */
MNG_SENSOR_STAT mng_sensorReadADC (mng_sensorHandle_t * me , int fd );

/**
 * @brief  It read Temperature sensor.
 */
MNG_SENSOR_STAT mng_sensorReadTemp (mng_sensorHandle_t * me , int fd );

/**
 * @brief  It Calculates startup time
 */
uint64_t mng_getStartUpTime(void);

/**
 * @brief  Calculates elapsed time between samples
 */
uint64_t mng_getElapsedTime (void);


/*****************************************************************************/
/*                               Extern Variables                            */
/*****************************************************************************/
extern uint64_t usStartupTime;


#endif //MNG_SENSOR_H