#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>
#include <unistd.h>
#include "string.h"
#include "mng_ringbuf.h"
#include "mng_sensor.h"
#include "mng_network.h"
#include <math.h>
#include <stdlib.h>

/* FOR TESTING STTRUCTS AND VARIABLES */
typedef struct
{
    uint32_t adc0;
    uint32_t adc1;
    uint32_t temp;
    uint64_t timestamp;
} mng_signal_state_t;

typedef struct
{
    double freq_hz;     // Signal frequency
    double amplitude;   // Signal amplitude
    double phase;       // Internal phase accumulator
} mng_signal_cfg_t;

#define SIGNAL_GEN_PERIOD_US 1000   // 1 kHz update
#define SIGNAL_GEN_DT_SEC    (SIGNAL_GEN_PERIOD_US / 1e6)

static mng_signal_cfg_t adc0Sig = { .freq_hz = 5.0, .amplitude = 1500.0 };
static mng_signal_cfg_t adc1Sig = { .freq_hz = 0.5, .amplitude = 800.0 };
static mng_signal_cfg_t tempSig = { .freq_hz = 2.0, .amplitude = 2000.0 };

static mng_signal_state_t gSignals;
static pthread_mutex_t signalMutex = PTHREAD_MUTEX_INITIALIZER;

static double adc0_phase = 0.0;
static double adc1_phase = 0.0;
static double temp_phase = 0.0;
pthread_t signal_tid;

static double noise(double amp)
{
    return ((double)rand() / RAND_MAX - 0.5) * amp;
}



static uint32_t gen_temp_signal(mng_signal_cfg_t *cfg)
{
    cfg->phase += 2.0 * M_PI * cfg->freq_hz * SIGNAL_GEN_DT_SEC;

    if (cfg->phase > 2.0 * M_PI)
        cfg->phase -= 2.0 * M_PI;

    double v =
        16384.0 +
        cfg->amplitude * sin(cfg->phase) +
        noise(5.0);

    if (v < 0) v = 0;
    if (v > 32767) v = 32767;

    return (uint32_t)v;
}


static uint32_t gen_adc_signal(mng_signal_cfg_t *cfg, uint32_t max)
{
    cfg->phase += 2.0 * M_PI * cfg->freq_hz * SIGNAL_GEN_DT_SEC;

    if (cfg->phase > 2.0 * M_PI)
        cfg->phase -= 2.0 * M_PI;

    double v =
        (max / 2.0) +
        cfg->amplitude * sin(cfg->phase) +
        noise(5.0);

    if (v < 0) v = 0;
    if (v > max) v = max;

    return (uint32_t)v;
}



void *mockSignalGeneratorTask(void *arg)
{
    (void)arg;

    while (SHUTDOWN)
    {
        pthread_mutex_lock(&signalMutex);

        gSignals.adc0 = gen_adc_signal(&adc0Sig, 4095);
        gSignals.adc1 = gen_adc_signal(&adc1Sig, 4095);
        gSignals.temp = gen_temp_signal(&tempSig);
        gSignals.timestamp = mng_getElapsedTime();

        pthread_mutex_unlock(&signalMutex);

        usleep(SIGNAL_GEN_PERIOD_US);
    }

    return NULL;
}
/***********************************************/

// Shared resources from your application
uint32_t SHUTDOWN = 1;
pthread_mutex_t rbufMutex;
mng_sensorInstances_t ins;
static mng_sensorHandle_t tempSensor , adcSensor0 , adcSensor1, swbtn;
mng_rbuf_t  ringBuff;
uint64_t usStartupTime;

MNG_SENSOR_STAT mock_mng_sensorReadadc(mng_sensorHandle_t * me );
MNG_SENSOR_STAT mock_mng_sensorReadtemp(mng_sensorHandle_t * me );

void *mockNetworkTask( void *arg)
{
    (void *)arg;
    int ret;
    mng_networkHandle_t net;
    mng_Payload_t packet;
    memset(&packet, 0, sizeof(packet));
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
        ret = -1;
        memset(&net.cmdHandle, 0, sizeof(net.cmdHandle));
        ret = mng_networkReceive(&net);
        if(ret == MNG_NETWORK_OK)
        {
            
            printf(" Received command is %u ....... \n ", net.cmdHandle.cmd);
            printf(" Received command is %u ....... \n ", net.cmdHandle.param[0]);
            printf(" Received command is %u ....... \n ", net.cmdHandle.param[1]);
            memset(&packet, 0, sizeof(packet));
            pthread_mutex_lock(&rbufMutex); /* Lock the rbuf */
            // i will put here parsing api
            mng_networkParseCmd (&net , &ins);
            if(net.cmdHandle.cmd == MNG_CMD_REQ_DATA)
            {
                /* How many entries we are going to send? */
                printf(" Total entry is %d....... \n ", ringBuff.rbufEntries);
                packet.sampleCount = ringBuff.rbufEntries;
                /* Dequeue samples to the send packet*/
                for(int i=0 ; i < packet.sampleCount && i < MNG_PAYLOAD_SIZE ; i++)
                {
                    // 1. Create temporary, aligned variables
                    uint32_t  tempVal;
                    uint32_t tempID;
                    uint64_t tempTime;

                    // 2. Dequeue into the aligned variables (No warning here!)
                    ret = mng_rbufDequeue(&ringBuff, &tempVal, &tempID, &tempTime);
                    if (ret == MNG_RBUF_OK)
                    {
                        // 3. Copy the values into the packed struct
                        packet.sendBuf[i].sensorVal   = tempVal;
                        packet.sendBuf[i].sensorID    = tempID;
                        packet.sendBuf[i].elapsedTime = tempTime;

                        printf("ID:%d   SenVal:%d      Time:%ld  \n", 
                                tempID, tempVal, tempTime);
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
   
    mng_networkDeinit(&net);
    return NULL;
}





void *mockSensorTask(void *arg) 
{
    while(SHUTDOWN) 
    {
        pthread_mutex_lock(&rbufMutex);
        if (mock_mng_sensorReadtemp(&tempSensor) == MNG_SENSOR_OK )
        {
            mng_rbufEnqueue(&ringBuff, &tempSensor); // Use your actual API
        }

        if (mock_mng_sensorReadadc(&adcSensor0) ==  MNG_SENSOR_OK)
        {
            mng_rbufEnqueue(&ringBuff, &adcSensor0); // Use your actual API
        }

        if (mock_mng_sensorReadadc(&adcSensor1) ==  MNG_SENSOR_OK)
        {
            mng_rbufEnqueue(&ringBuff, &adcSensor1); // Use your actual API
        }

        swbtn.samplePeriod--;
        if (swbtn.samplePeriod == 0U)
        {
            swbtn.sensorValue = rand();
            swbtn.elapsedTime = mng_getElapsedTime();
            swbtn.samplePeriod = MNG_INITIAL_FREQ_HZ / swbtn.sensorFreq;
            mng_rbufEnqueue(&ringBuff, &swbtn); // Use your actual API
        }

        pthread_mutex_unlock(&rbufMutex); 


        usleep(MNG_SENSOR_LOOP_INTERVAL_US);
    }
    return NULL;
}

int main() {
    pthread_t sensor_tid, network_tid;

    printf("--- MNG Integrated System Test ---\n");
    
   
    mng_rbufCreate(&ringBuff); //
    mng_sensorInit(&tempSensor, 10, MNG_IP_MAX_SENSOR_REGNUM , MNG_TEMP_SENSOR_ID); //
    mng_sensorInit(&adcSensor0, 10, MNG_IP_ADC_SENSOR_REGNUM , MNG_ADC0_SENSOR_ID ); //
    mng_sensorInit(&adcSensor1, 10, MNG_IP_ADC_SENSOR_REGNUM , MNG_ADC1_SENSOR_ID );
    mng_sensorInit(&swbtn, 10, MNG_IP_SWITCH_BUTTONS_REGNUM , MNG_SWBTN_SENSOR_ID); //
    usStartupTime = mng_getStartUpTime();

    
    ins.adc0Instance= &adcSensor0;
    ins.adc1Instance= &adcSensor1;
    ins.tempInstance= &tempSensor;
    ins.SwitchButtonsInstance= &swbtn;

    int ret = pthread_mutex_init(&rbufMutex , NULL);
    if(ret != 0)
    {
        
        return 1;
    }

    ret = pthread_create(&sensor_tid , NULL , mockSensorTask , NULL);
    if(ret != 0)
    {
        
        return 1;
    }
    printf(" Thread Sensor is created \n");

       
    ret = pthread_create(&network_tid , NULL , mockNetworkTask , NULL);
    if(ret != 0)
    {
        
        return 1;
    }
    printf(" Thread network is Created\n");

    pthread_create(&signal_tid, NULL, mockSignalGeneratorTask, NULL);

    ret = pthread_join(sensor_tid , NULL);
    if(ret != 0)
    {
        // SEND RETURN INFO VIA UART
        return 1;
    }

    ret = pthread_join(network_tid , NULL);
    if(ret != 0)
    {
        // SEND RETURN INFO VIA UART
        return 1;
    }

    ret = pthread_join(signal_tid , NULL);
    if(ret != 0)
    {
        // SEND RETURN INFO VIA UART
        return 1;
    }

   
    pthread_mutex_destroy(&rbufMutex);
    return 0;
}


MNG_SENSOR_STAT mock_mng_sensorReadadc(mng_sensorHandle_t *me)
{
    if (me->sensorDormant != 0U)
        return MNG_SENSOR_DORMANT;

    me->samplePeriod--;

    if (me->samplePeriod == 0U)
    {
        pthread_mutex_lock(&signalMutex);

        if (me->sensorID == MNG_ADC0_SENSOR_ID)
            me->sensorValue = gSignals.adc0; // generated fake sensor values
        else if (me->sensorID == MNG_ADC1_SENSOR_ID)
            me->sensorValue = gSignals.adc1; // generated fake sensor values

        me->elapsedTime = mng_getElapsedTime();

        pthread_mutex_unlock(&signalMutex);

        me->samplePeriod = MNG_BASE_FREQ_HZ / me->sensorFreq;
        return MNG_SENSOR_OK;
    }

    return MNG_SENSOR_WAIT;
}



MNG_SENSOR_STAT mock_mng_sensorReadtemp(mng_sensorHandle_t *me)
{
    if (me->sensorDormant != 0U)
        return MNG_SENSOR_DORMANT;

    me->samplePeriod--;
    if (me->samplePeriod == 0U)
    {

        pthread_mutex_lock(&signalMutex);

        me->sensorValue = gSignals.temp; // generated fake sensor values
        me->elapsedTime = mng_getElapsedTime();

        pthread_mutex_unlock(&signalMutex);

        me->samplePeriod = MNG_BASE_FREQ_HZ / me->sensorFreq;
        return MNG_SENSOR_OK;

    }
    
    return MNG_SENSOR_WAIT;
}

