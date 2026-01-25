/**
 ******************************************************************************
* @file           : mng_sensor.c
* @author         : Mert Ali Turk
* @brief          : Sensor processing implementation file.
* @date           : 2025-11-16
*
* @note
*   This file includes sensor implementation APIs
*
******************************************************************************
*/

#include "mng_sensor.h"
#include "measdev.h"
#include "mng_config.h"
#include <assert.h>
#include <unistd.h>

/*  STATIC FUNCTION PROTOTYPES  */
static uint32_t mng_max31865Read (int fd, uint32_t mreg);
static void mng_max31865Write (int fd, uint32_t mreg, uint32_t msend);



/**
 * @brief  Reading operation for specific register.
 * 
 * @param  fd: File Descriptor for "/dev/meascdd"
 * @param  regNum: Which register is going to be readen.
 * 
 * @retval val: Sampled sensor data.
 *
 * @note Size of data array and id array *MUST* be identical !
 */
uint32_t mng_readReg (int fd , uint16_t regNum)
{
    MeasObj_struct TF_Obj_Snd, TF_Obj_Rcv;
    uint32_t val;
    /* Write first in order to read. */
    TF_Obj_Snd.rnum = REGNUM_ID;
    TF_Obj_Snd.rvalue = regNum;		

    /* Write operation indicates which register we are going to read. */
    write(fd, &TF_Obj_Snd, MEASOBJ_SIZE);
    /* Read the value*/
    read(fd, &TF_Obj_Rcv, MEASOBJ_SIZE);	
    val = TF_Obj_Rcv.rvalue;
    return val; // Return sampled data
}


/**
 * @brief  Reading operation for specific register.
 * 
 * @param  fd: File Descriptor for "/dev/meascdd"
 * @param  regNum: Which register is going to be written.
 * @param  regVal: Value that written to register.
 * 
 * @retval void
 *
 * @note Size of data array and id array *MUST* be identical !
 */
void mng_writeReg (int fd , uint16_t regNum , uint32_t regVal)
{
    MeasObj_struct TF_Obj_Snd;
    uint32_t val;
    /* Set TF object for sending to device */
    TF_Obj_Snd.rnum = regNum;
    TF_Obj_Snd.rvalue = regVal;		

    /* Write operation. */
    write(fd, &TF_Obj_Snd, MEASOBJ_SIZE);	
}


/**
 * @brief   Initializes the sensor handler data structure.
 * 
 * @param  me: Pointer to mng_sensorHandle_t instance
 * @param  userFreq: The frequency value send by user application.
 * @param  sensorReg: Sensor register indicates that operations is going to
 *                    do for specific sensor.
 * 
 * @retval  MNG_SENSOR_STAT --> Succesful returns 0.
 * 
 *              MNG_SENSOR_OK                 - 0
 *              MNG_SENSOR_ERR_FREQ           - 1
 *              MNG_SENSOR_WAIT               - 2
 *              MNG_SENSOR_ERR_NULL_PTR       - 3   
 *              MNG_SENSOR_DORMANT            - 4  
 *
 *  @note This API must be called whenever user wants to change frequency!
 */
MNG_SENSOR_STAT mng_sensorInit (mng_sensorHandle_t * me , uint16_t userFreq , uint16_t sensorReg , uint32_t id)
{
    if( me == (void *)0 )   /* NULL pointer check*/
    {
        return MNG_SENSOR_ERR_NULL_PTR;
    }

    /* Choosen frequency *MUST* be divided by 10s */
    if((MNG_BASE_FREQ_HZ % userFreq) != 0 )
    {
        me->sensorFreq = 0U;
        return MNG_SENSOR_ERR_FREQ; 
    }

    me->sensorFreq     = userFreq;
    /* Calculate the sample period */
    me->samplePeriod     = MNG_BASE_FREQ_HZ / me->sensorFreq ;
    me->sensorID       = id;
    me->regNum         = sensorReg;
    me->sensorDormant  = 0U;
    me->elapsedTime    = 0U;
    me->sensorValue    = 0U;

    return MNG_SENSOR_OK;
}


/**
 * @brief  It process sensor reading for specific frequency.
 * 
 * @param  me: Pointer to mng_sensorHandle_t instance
 * @param  fd: File Descriptor for "/dev/meascdd"
 * 
 * @retval  MNG_SENSOR_STAT --> Succesful returns 0.
 * 
 *              MNG_SENSOR_OK                 - 0
 *              MNG_SENSOR_ERR_FREQ           - 1
 *              MNG_SENSOR_WAIT               - 2
 *              MNG_SENSOR_ERR_NULL_PTR       - 3   
 *              MNG_SENSOR_DORMANT            - 4      
 */
MNG_SENSOR_STAT mng_sensorRead(mng_sensorHandle_t * me , int fd)
{
    /* Check if sensor is in Wait mode. */
    if(me->sensorDormant != 0U)
    {
        return MNG_SENSOR_DORMANT;
    }

    me->samplePeriod--;
    /*  Read sensor if counter is finished. */
    if(me->samplePeriod == 0U)
    {
        me->sensorValue = mng_readReg( fd , me->regNum );
        /* Set counter for future reading. */
        me->samplePeriod = MNG_BASE_FREQ_HZ / me->sensorFreq;
        /* Get elapsed time */
        me->elapsedTime = mng_getElapsedTime();

        return MNG_SENSOR_OK;
    }

    return MNG_SENSOR_WAIT;
}


/**
 * @brief  It writes to specific register.
 * 
 * @param  me     : Pointer to mng_sensorHandle_t instance
 * @param  fd     : File Descriptor for "/dev/meascdd"
 * @param  regval : value to written to register.
 * 
 * @retval  MNG_SENSOR_STAT --> Succesful returns 0.
 * 
 *              MNG_SENSOR_OK                 - 0
 *              MNG_SENSOR_ERR_FREQ           - 1
 *              MNG_SENSOR_WAIT               - 2
 *              MNG_SENSOR_ERR_NULL_PTR       - 3   
 *              MNG_SENSOR_DORMANT            - 4      
 */
MNG_SENSOR_STAT mng_sensorWrite (mng_sensorHandle_t * me , int fd , uint32_t regval)
{
    int ret;
    /* Check if sensor is in Wait mode. */
    if(me->sensorDormant != 0U)
    {
        me->sensorValue = 0U;
        return MNG_SENSOR_DORMANT;
    }

    MeasObj_struct TF_Obj_Snd;
    TF_Obj_Snd.rnum   = me->regNum;
    TF_Obj_Snd.rvalue = regval;

    ret = write(fd , &TF_Obj_Snd , MEASOBJ_SIZE);
    if(ret < 0)
    {
        return MNG_SENSOR_ERR_FREQ;
    }

    return MNG_SENSOR_OK;
}


/**
 * @brief  ADC specific reading API.
 * 
 * @param  me     : Pointer to mng_sensorHandle_t instance
 * @param  fd     : File Descriptor for "/dev/meascdd"
 * 
 * @retval  MNG_SENSOR_STAT --> Succesful returns 0.
 * 
 *              MNG_SENSOR_OK                 - 0
 *              MNG_SENSOR_ERR_FREQ           - 1
 *              MNG_SENSOR_WAIT               - 2
 *              MNG_SENSOR_ERR_NULL_PTR       - 3   
 *              MNG_SENSOR_DORMANT            - 4      
 */
MNG_SENSOR_STAT mng_sensorReadADC (mng_sensorHandle_t * me , int fd )
{
    if (me == (void *)0)
    {
        return MNG_SENSOR_ERR_NULL_PTR;
    }

    /* Check if sensor is in Dormant. */
    if (me->sensorDormant != 0U)
    {
        me->sensorValue = 0U;
        return MNG_SENSOR_DORMANT;
    }
    
    me->samplePeriod--;
    /* Read sensor only if counter is finished. */
    if (me->samplePeriod == 0U)
    {
        uint32_t doneSignal = 0U;
        uint32_t timeout = 0U;
        
        /* Start ADC by writing 0 to slv_reg(4)*/
        mng_writeReg(fd, 4U, 0U);

        /* Wait for done_adc signal (slv_reg(4) == 1). */
        while((doneSignal == 0U) && (timeout < 10000000U ))
        {
            timeout++;
            doneSignal = mng_readReg(fd, 4U); // Read slv_reg(4)
        }

        if (timeout >= 10000000U) {
            // Handle timeout error
            me->samplePeriod = me->samplePeriod; // Reset counter even on error
            return MNG_SENSOR_ERR_FREQ; 
        }
        
        /* Read the actual ADC value using the handle's register number (me->regNum) */
        me->sensorValue = mng_readReg(fd, me->regNum);

        if (me->sensorID == MNG_ADC0_SENSOR_ID)
        {
            /* ADC0 is readen from first 16-bit */
            me->sensorValue &= me->sensorValue & 0x0FFF ;
        }else
        {
            /* ADC1 must shift to 16 it right to get right value. */
            me->sensorValue >>= 16U;
        }

        /* Set counter for future reading. */
        me->samplePeriod = MNG_BASE_FREQ_HZ / me->sensorFreq;  

        /* Get elapsed time */
        me->elapsedTime = mng_getElapsedTime();

        return MNG_SENSOR_OK;
    }
    
    return MNG_SENSOR_WAIT;
}


/**
 * @brief  MAX31865 specific reading API .
 * 
 * @param  fd     : File Descriptor for "/dev/meascdd"
 * @param  mreg   : Register number
 * 
 * @retval  Readen value - type is uint32_t
 *   
 */
static uint32_t mng_max31865Read (int fd, uint32_t mreg)
{
    uint32_t xdata = 0;
    uint32_t doneSignal = 0;
    uint32_t timeout = 0;
    
    /* Trigger MAX start flag. */
    mng_writeReg(fd, 1U, mreg << 8U);

    /* Wait for done signal */
    while(((doneSignal & 0x01U) == 0U) && (timeout < 1000U))
    {
        timeout++;
        doneSignal = mng_readReg(fd, 1U); 
    }
    
    
    if (timeout >= 1000U) {
        // Handle timeout error if necessary, maybe return a specific error code
    } else {
        /* Read the value of ADC1  */
        xdata = mng_readReg(fd, 2U);
        xdata &= 0x0ffU; 
    }
    
    return xdata; /* Return sampled data. */
}


/**
 * @brief  MAX31865 specific writing API .
 * 
 * 
 * @param  fd     : File Descriptor for "/dev/meascdd"
 * @param  mreg   : Register number
 * @param  msend  : Value to send it.
 * 
 * @retval  void
 *    
 */
static void mng_max31865Write (int fd, uint32_t mreg, uint32_t msend)
{
    uint32_t transm_data;
    uint32_t doneSignal = 0;
    uint32_t timeout = 0;
    
    /* Sensor write address is 0x80 (see page 13 in datasheet.) */
    mreg |= 0x080U;
    
    /* Whole data to write it to sensor. */
    transm_data = (mreg << 8U) | (msend & 0x0ffU);
    
    mng_writeReg(fd, 1U, transm_data);

    /* Wait for done signal. */
    while(((doneSignal & 0x01U) == 0U) && (timeout < 1000U))
    {
        timeout++;
        doneSignal = mng_readReg(fd, 1U); 
    }
    
    if (timeout >= 1000U) {
        // Handle timeout error if necessary
    }
}


/**
 * @brief  It reads Temperature sensor.
 * 
 * @param  me     : Pointer to mng_sensorHandle_t instance
 * @param  fd     : File Descriptor for "/dev/meascdd"
 * 
 * @retval  MNG_SENSOR_STAT --> Succesful returns 0.
 * 
 *              MNG_SENSOR_OK                 - 0
 *              MNG_SENSOR_ERR_FREQ           - 1
 *              MNG_SENSOR_WAIT               - 2
 *              MNG_SENSOR_ERR_NULL_PTR       - 3   
 *              MNG_SENSOR_DORMANT            - 4      
 */
MNG_SENSOR_STAT mng_sensorReadTemp (mng_sensorHandle_t * me , int fd )
{
    if (me == (void *)0) /* Null pointer check. */
    {
        return MNG_SENSOR_ERR_NULL_PTR;
    }

    /* Check if sensor is in Dormant. */
    if (me->sensorDormant != 0U)
    {
        return MNG_SENSOR_DORMANT;
    }
    
   
    me->samplePeriod--;
    /* Read sensor only if counter is finished. */
    if (me->samplePeriod == 0U)
    {
        uint32_t Data;
        uint32_t LSBData;
        uint32_t doneSignal = 0U;
        uint32_t timeout = 0U;
        
        /* V-Bias ON and 50/60 Hz filter ON (0x81) */
        mng_max31865Write(fd, 0x00, 0x81); 
        /* Start 1-Shot Measure starts. */ 
        mng_max31865Write(fd, 0x00, 0xA1); 
        /* Clear local flags */
        timeout = 0U;
        doneSignal = 0U;
        /* Wait for max_done and max_drdyn flags are set! */
        while(((doneSignal & 0x03U) == 0U) && (timeout < 10000000U) )
        {
            timeout++;
            doneSignal = mng_readReg(fd, 1U);
        }
        
        /* Read RTD MSB (Register 0x01) and LSB (Register 0x02) */
        Data = mng_max31865Read(fd, 1U);
        Data <<= 8U; 
        LSBData = mng_max31865Read(fd, 2U);
        
        /* Combine MSB and LSB , get rid of "Fault status bit" */
        Data |= (LSBData & 0x0ffU);
        me->sensorValue = (Data >> 1U);

        /* Set counter for future reading. */
        me->samplePeriod = MNG_BASE_FREQ_HZ / me->sensorFreq;
        
        /* Get elapsed time */
        me->elapsedTime = mng_getElapsedTime();

        return MNG_SENSOR_OK;
    }
    
    return MNG_SENSOR_WAIT;
}



/**
 * @brief  Calculates elapsed time between samples
 * 
 * @retval 
 *          uint64_t: elapsedTime 
 */
uint64_t mng_getElapsedTime (void)
{
    static struct timespec currentTime;
    uint64_t usCurrentTime;
    uint64_t elapsedTime;

    /* Get current time */
    clock_gettime(CLOCK_MONOTONIC, &currentTime);

    /* Calculation to get time in microsecond */
    usCurrentTime = ((currentTime.tv_sec * 1000000U) + (currentTime.tv_nsec / 1000U));
    elapsedTime   = usCurrentTime - usStartupTime;

    return elapsedTime; /* return elapsed time */
}

/**
 * @brief  Gets start-up time 
 * 
 */
uint64_t mng_getStartUpTime(void)
{
    struct timespec startupTime;
    startupTime.tv_nsec = 0U;
    startupTime.tv_sec = 0U;
    /* Get startup time */
    clock_gettime(CLOCK_MONOTONIC, &startupTime);
    /* Calculation to get time in microsecond */
    return ((startupTime.tv_sec * 1000000U) + (startupTime.tv_nsec / 1000U));
}





