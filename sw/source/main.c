#include<stdio.h>
#include<stdlib.h>
#include <stdint.h>
#include<unistd.h>
#include<errno.h>
#include<fcntl.h>
#include<string.h>
#include <pthread.h>
#include <time.h>
#include "mng_sensor.h"
#include "mng_ringbuf.h"
#include "mng_network.h"

/*****************************************************************************/
/*                               Global Variables                            */
/*****************************************************************************/
uint32_t SHUTDOWN = 1;
pthread_mutex_t rbufMutex;
mng_sensorHandle_t adc0 , adc1 , Temperature , SwitchButtons ;
mng_sensorInstances_t ins;
mng_rbuf_t  ringBuff;
uint64_t usStartupTime;

/*********************************************************************************/
static void * NetworkThread(void * arg)
{
    (void *)arg;
    int ret;
    mng_networkHandle_t net;
    mng_Payload_t packet;
    int32_t  popVal;
    uint32_t popID;
    uint64_t popTime;
    ret = mng_networkInit(&net);
    if(ret != MNG_NETWORK_OK)
    {
        printf("Error occured in initilization \r\n");
    }

    ret = mng_networkAccept(&net);
    if(ret != MNG_NETWORK_OK)
    {
        printf("Error occured accepting client! \r\n");
    }

    while(SHUTDOWN)
    {
        memset(&net.cmdHandle, 0, sizeof(net.cmdHandle));
        memset(&packet, 0, sizeof(packet));
        ret = mng_networkReceive(&net);
        if(ret == MNG_NETWORK_OK)
        {
            pthread_mutex_lock(&rbufMutex); /* Lock the rbuf */
            /* Parse the received command */
            mng_networkParseCmd (&net , &ins);
            if(net.cmdHandle.cmd == MNG_CMD_REQ_DATA)
            {
                /* How many entries we are going to send? */
                packet.sampleCount = ringBuff.rbufEntries;
                /* Dequeue samples to the send packet*/
                for(int i=0 ;i < packet.sampleCount && i < MNG_PAYLOAD_SIZE  ; i++)
                {
                    ret = mng_rbufDequeue(&ringBuff, &popVal, &popID, &popTime);
                    if (ret == MNG_RBUF_OK)
                    {
                        /* Push variables to packet*/
                        packet.sendBuf[i].sensorVal   = popVal;
                        packet.sendBuf[i].sensorID    = popID;
                        packet.sendBuf[i].elapsedTime = popTime;
                    }
                }

                pthread_mutex_unlock(&rbufMutex);/* Unlock the rbuf */
                ret = mng_networkSend(&net , (mng_Payload_t *)&packet , sizeof(packet));
                if(ret != MNG_NETWORK_OK)
                {
                    printf("Error occured sending data! \r\n");
                }
            }
            else
            {
                pthread_mutex_unlock(&rbufMutex);/* Unlock the rbuf */
            }
        }
    }

    pthread_exit(NULL);
}



/**********************************************************************************/
static void * SensorTask(void *arg)
{
    (void *)arg;
    int fd = open(MNG_MEASCDD_FILE_DESCRIPTOR , O_RDWR);
	if (fd < 0) {
		return errno;
	}
    
    while(SHUTDOWN)
    {
        pthread_mutex_lock(&rbufMutex);
        if (mng_sensorReadADC(&adc0, fd) == MNG_SENSOR_OK)
        {           
            mng_rbufEnqueue(&ringBuff, &adc0);
        }

        if (mng_sensorReadADC(&adc1, fd) == MNG_SENSOR_OK)
        {           
            mng_rbufEnqueue(&ringBuff, &adc1);
        }

        if (mng_sensorReadTemp(&Temperature, fd) == MNG_SENSOR_OK)
        {
            mng_rbufEnqueue(&ringBuff, &Temperature);
        }

        if (mng_sensorRead(&SwitchButtons, fd) == MNG_SENSOR_OK)
        {
            mng_rbufEnqueue(&ringBuff, &SwitchButtons);
        }
        
        pthread_mutex_unlock(&rbufMutex);
        usleep(MNG_SENSOR_LOOP_INTERVAL_US);
    }

    close(fd);
    pthread_exit(NULL);
}



int main(){
           
    pthread_t   sensorTh;
    pthread_t   networkTh;

    mng_sensorInit(&adc0 , 100U , MNG_IP_ADC_SENSOR_REGNUM , MNG_ADC0_SENSOR_ID );
    mng_sensorInit(&adc1 , 100U , MNG_IP_ADC_SENSOR_REGNUM , MNG_ADC1_SENSOR_ID );
    mng_sensorInit(&Temperature , 10U , MNG_IP_MAX_SENSOR_REGNUM ,MNG_TEMP_SENSOR_ID );
    mng_sensorInit(&SwitchButtons , 10U , MNG_IP_SWITCH_BUTTONS_REGNUM , MNG_SWBTN_SENSOR_ID);
    mng_rbufCreate(&ringBuff );

    ins.adc0Instance = &adc0;
    ins.adc1Instance = &adc1;
    ins.tempInstance = &Temperature;
    ins.SwitchButtonsInstance = &SwitchButtons;
    
    /* Get Startup time*/
    usStartupTime = mng_getStartUpTime();

    int ret = pthread_mutex_init(&rbufMutex , NULL);
    if(ret != 0)
    {
        
        return 1;
    }

    ret = pthread_create(&sensorTh , NULL , SensorTask , NULL);
    if(ret != 0)
    {
        
        return 1;
    }
    printf(" Thread Sensor is created \n");

       
    ret = pthread_create(&networkTh , NULL , NetworkThread , NULL);
    if(ret != 0)
    {
        
        return 1;
    }
    printf(" Thread network is Created\n");

    ret = pthread_join(sensorTh , NULL);
    if(ret != 0)
    {
        return 1;
    }

    ret = pthread_join(networkTh , NULL);
    if(ret != 0)
    {
        return 1;
    }

    mng_rbufKill(&ringBuff);
    pthread_mutex_destroy(&rbufMutex);

    return EXIT_SUCCESS;
}
