/**
 ******************************************************************************
* @file           : mng_rbuf.h
* @author         : Mert Ali Turk
* @brief          : Generic Ring Buffer (Circular Buffer) implementation
* @date           : 2025-11-01
*
* @note
*       This file includes ring buffer prototype declarations and type definitions. 
*
******************************************************************************
*/

#ifndef     MNG_RINGBUF_H
#define     MNG_RINGBUF_H

#include "stdint.h"
#include "mng_config.h"
#include "mng_sensor.h"

/*****************************************************************************/
/*                               TYPE DEFINITIONS                            */
/*****************************************************************************/
typedef struct mng_rbuf
{
    struct mng_rbuf  * rbufPtr ;                        /* Pointer to self*/
    uint32_t           rbufVal[MNG_RBUF_LENGTH];        /* Sensor Value buffer */
    uint64_t           rbufElpTime[MNG_RBUF_LENGTH];    /* Sensor sample elapsed time buffer*/
    uint32_t           rbufSensorID[MNG_RBUF_LENGTH];   /* Sensor ID for every entry */   
    uint16_t volatile  rbufHead;                        /* Ptr to where next char will be inserted*/
    uint16_t volatile  rbufTail;                        /* Ptr to where next char will be extracted*/
    uint16_t           rbufSize;                        /* Size of the buffer */
    uint16_t volatile  rbufEntries;                     /* Current number of entries */
    uint8_t            rbufAlive;                       /* Buffer is alive or not info*/
}mng_rbuf_t;

typedef enum{
    MNG_RBUF_OK = 0,
    MNG_RBUF_ERR_EMPTY,
    MNG_RBUF_ERR_FULL,
    MNG_RBUF_ERR_DEAD,
    MNG_RBUF_ERR_NULL_PTR
}MNG_RBUF_STAT;



/*****************************************************************************/
/*                               FUNCTION PROTOTYPES                         */
/*****************************************************************************/

/**
 * @brief  Initializes the ring buffer structure.
 */
MNG_RBUF_STAT mng_rbufCreate (mng_rbuf_t * me );


/**
 * @brief  write data to buffer.
 */
MNG_RBUF_STAT mng_rbufEnqueue (mng_rbuf_t * me , mng_sensorHandle_t * sensor);

/**
 * @brief  Read data from buffer.
 */
MNG_RBUF_STAT mng_rbufDequeue (mng_rbuf_t * me , uint32_t * sensor_val , uint32_t * id, uint64_t * elapsedTime);


/**
 * @brief  It resets the buffer. (It does not kill object ! )
 */
MNG_RBUF_STAT mng_rbufReset (mng_rbuf_t * me);


/**
 * @brief  It clears objects and kills buffer.
 */
MNG_RBUF_STAT mng_rbufKill  (mng_rbuf_t * me);



#endif     //MNG_RINGBUF_H