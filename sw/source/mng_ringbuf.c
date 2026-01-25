/**
 ******************************************************************************
* @file           : mng_rbuf.c
* @author         : Mert Ali Turk
* @brief          : Generic Ring Buffer (Circular Buffer) implementation
* @date           : 2025-11-01
*
* @note
*       This file includes ring buffer implementation APIs. 
*
******************************************************************************
*/

#include"mng_ringbuf.h"


/**
 * @brief  Initializes the ring buffer structure.
 * 
 * 
 * @param  me: Pointer to mng_rbuf_t instance
 * 
 * 
 * @retval MNG_RBUF_STAT
 *              MNG_RBUF_OK             - 0
 *              MNG_RBUF_ERR_EMPTY      - 1
 *              MNG_RBUF_ERR_FULL       - 2
 *              MNG_RBUF_ERR_DEAD       - 3 
 *              MNG_RBUF_ERR_NULL_PTR   - 4
 *
 *  @note Size of data array and id array *MUST* be identical !
 */
MNG_RBUF_STAT mng_rbufCreate(mng_rbuf_t * me )
{
    if (me == (void *)0 ) /* Check if pointer is NULL */
    {
        return MNG_RBUF_ERR_NULL_PTR;
    }

    me->rbufPtr      = me;           /* Pointer to object*/
    me->rbufEntries  = 0U;
    me->rbufHead     = 0U;
    me->rbufTail     = 0U;
    me->rbufAlive    = 1U;
    me->rbufSize     = MNG_RBUF_LENGTH;

    /* Clear Content of adresses, elapsed time and id space. */
    for(uint16_t i=0 ; i < me->rbufSize ; i++ )
    {
        me->rbufVal[i]      = 0U;
        me->rbufSensorID[i] = 0U;
        me->rbufElpTime[i]  = 0U;
    }

    return MNG_RBUF_OK;
}


/**
 * @brief  Writes datas to buffer.
 * 
 * 
 * @param  me: Pointer to mng_rbuf_t instance
 * @param  mng_sensorHandle_t: Pointer to sensor which is going to be writen to buffer.
 * 
 * @retval MNG_RBUF_STAT
 *              MNG_RBUF_OK             - 0
 *              MNG_RBUF_ERR_EMPTY      - 1
 *              MNG_RBUF_ERR_FULL       - 2
 *              MNG_RBUF_ERR_DEAD       - 3 
 *              MNG_RBUF_ERR_NULL_PTR   - 4
 *
 *  
 */
MNG_RBUF_STAT mng_rbufEnqueue (mng_rbuf_t * me , mng_sensorHandle_t * sensor)
{
    if (me == (void *)0 ) /* Check if pointer is NULL */
    {
        return MNG_RBUF_ERR_NULL_PTR;
    }

    if(me->rbufAlive == 0U) /* is Alive? */
    {
        return MNG_RBUF_ERR_DEAD;
    }

    if (me->rbufEntries == me->rbufSize)
    {
#ifdef MNG_RBUF_OVERWRITE
    /* Overwrite: remove oldest item */
    me->rbufTail = (me->rbufTail + 1U) % me->rbufSize;
    me->rbufEntries--;
#else
    return MNG_RBUF_ERR_FULL;
#endif
    }

    /* Write sensor value to buffer. */
    me->rbufVal[me->rbufHead] = sensor->sensorValue; 
    /* Give ID number for specific sensor value. */
    me->rbufSensorID[me->rbufHead] = sensor->sensorID;
    /* Write elapsed time to buffer */
    me->rbufElpTime[me->rbufHead] = sensor->elapsedTime;           
    
    me->rbufHead =  ( me->rbufHead + 1U ) % me->rbufSize; /* Determine next inserted buf area*/
    me->rbufEntries++;                                    /* Increase entries by one */
    return MNG_RBUF_OK;
}


/**
 * @brief  Reads data from Buffer.
 * 
 * 
 * @param  me: Pointer to mng_rbuf_t instance
 * @param  sensor_val: Pointer to data for reading from buffer.
 * @param  id: Pointer to id number of specific sensor value. 
 * @param  elapsedTime: Pointer to Elapsed time value for specific sensor. 
 *
 * @retval MNG_RBUF_STAT
 *              MNG_RBUF_OK             - 0
 *              MNG_RBUF_ERR_EMPTY      - 1
 *              MNG_RBUF_ERR_FULL       - 2
 *              MNG_RBUF_ERR_DEAD       - 3 
 *              MNG_RBUF_ERR_NULL_PTR   - 4
 *
 */
MNG_RBUF_STAT mng_rbufDequeue (mng_rbuf_t * me , uint32_t * sensor_val ,
                                 uint32_t * id , uint64_t * elapsedTime)
{
    if (me == (void *)0 ) /* Check if pointer is NULL */
    {
        return MNG_RBUF_ERR_NULL_PTR;
    }

    if(me->rbufAlive == 0U)/* is Alive? */
    {
        return MNG_RBUF_ERR_DEAD; // add error macros here
    }

    /* Check if there is any entry to buffer ? */
    if(me->rbufEntries == 0U)
    {
        return MNG_RBUF_ERR_EMPTY;
    }
    
    /* De-reference sensor value from buffer. */
    *sensor_val = me->rbufVal[me->rbufTail];
    /* De-reference sensor ID from buffer. */
    *id = me->rbufSensorID[me->rbufTail];
    /* De-reference elapsed time from buffer. */
    *elapsedTime = me->rbufElpTime[me->rbufTail];
    
    me->rbufTail=  ( me->rbufTail + 1U ) % me->rbufSize; /* Determine next extracted buf area*/
    me->rbufEntries--;                                   /* Decrease entries by one */
    
    return MNG_RBUF_OK;
}


/**
 * @brief  It kills buffer object.
 * @param  me: Pointer to mng_rbuf_t instance
 * 
 * 
 * 
 * @retval MNG_RBUF_STAT
 *              MNG_RBUF_OK             - 0
 *              MNG_RBUF_ERR_EMPTY      - 1
 *              MNG_RBUF_ERR_FULL       - 2
 *              MNG_RBUF_ERR_DEAD       - 3 
 *              MNG_RBUF_ERR_NULL_PTR   - 4
 * @note
 *      After this function buffer object CAN NOT be used! 
 */
MNG_RBUF_STAT mng_rbufKill  (mng_rbuf_t * me)
{
    if (me == (void *)0 ) /* Check if pointer is NULL */
    {
        return MNG_RBUF_ERR_NULL_PTR;
    }

    if(me->rbufAlive == 1U) /* is Alive? */
    {
        /* Set Alive attribute to 0U , indicate it is dead*/
        me->rbufAlive   = 0U;
        me->rbufPtr     = (void *)0;
        me->rbufSize    = 0U;
        me->rbufEntries = 0U;
        me->rbufHead    = 0U;
        me->rbufTail    = 0U;
    }else
    {
        return MNG_RBUF_ERR_DEAD;
    }

    return MNG_RBUF_OK;
}


/**
 * @brief  It clears buffer object.
 * @param  me: Pointer to mng_rbuf_t instance
 * 
 * 
 * @retval MNG_RBUF_STAT
 *              MNG_RBUF_OK             - 0
 *              MNG_RBUF_ERR_EMPTY      - 1
 *              MNG_RBUF_ERR_FULL       - 2
 *              MNG_RBUF_ERR_DEAD       - 3 
 *              MNG_RBUF_ERR_NULL_PTR   - 4
 *  * @note
 *      It resets the instance of buffer , but it does NOT kill , 
 *      instance still lives in memory.
 */
MNG_RBUF_STAT mng_rbufReset (mng_rbuf_t * me)
{
    if (me == (void *)0 ) /* Check if pointer is NULL */
    {
        return MNG_RBUF_ERR_NULL_PTR;
    }

    if (me->rbufAlive == 1U) /* is Alive? */
    {
        /* Set zero to object attributes , which determines the location of data's*/
        me->rbufEntries = 0U;
        me->rbufHead    = 0U;
        me->rbufTail    = 0U;

        /* Clear Content of adresses*/
        for(uint16_t i=0 ; i < me->rbufSize ; i++ )
        {
            me->rbufVal[i] = 0U;
            me->rbufSensorID[i] = 0U;
            me->rbufElpTime[i] = 0U;
        }

    }else
    {
        return MNG_RBUF_ERR_DEAD;
    }

    return MNG_RBUF_OK;
}


