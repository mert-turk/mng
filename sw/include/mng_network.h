/**
 ******************************************************************************
* @file           : mng_network.h
* @author         : Mert Ali Turk
* @brief          : Network header file.
* @date           : 2025-11-18
*
* @note
*   This file includes network handle APIs prototype declarations and type definitions.
*       
******************************************************************************
*/

#ifndef MNG_NETWORK_H
#define MNG_NETWORK_H

#include<stdio.h>
#include<stdlib.h>
#include <stdint.h>
#include<unistd.h>
#include <sys/timerfd.h>
#include <sys/socket.h>
#include <sys/select.h>
#include <netinet/in.h>
#include "mng_config.h"
#include "mng_sensor.h"
#include<fcntl.h>
/*****************************************************************************/
/*                               TYPE DEFINITIONS                            */
/*****************************************************************************/

typedef struct {
    unsigned int cmd;                   
    unsigned int param[MNG_CMD_MAX_PARAMS];     
} __attribute__((packed)) Clnt_Send_struct;

typedef struct
{
    int serverSocket;
    int clientSocket;
    struct sockaddr_in server_address;
    Clnt_Send_struct cmdHandle;
}mng_networkHandle_t;


typedef struct {
    uint64_t  elapsedTime;   /* Time Info */
    uint32_t   sensorVal;     /* Sensor sampled data*/
    uint32_t  sensorID;      /* Sensor specific ID*/
}__attribute__((packed)) mng_sensorDataPacked_t;


typedef struct {
    uint32_t sampleCount;
    mng_sensorDataPacked_t sendBuf[MNG_PAYLOAD_SIZE];
}__attribute__((packed)) mng_Payload_t;

typedef enum{
    MNG_NETWORK_OK = 0,
    MNG_NETWORK_ERR_NULL_PTR,
    MNG_NETWORK_ERR_SOCKET,
    MNG_NETWORK_ERR_BIND,
    MNG_NETWORK_ERR_LISTEN,
    MNG_NETWORK_ERR_ACCEPT,
    MNG_NETWORK_ERR_RECV,
    MNG_NETWORK_ERR_SEND,
    MNG_NETWORK_CLIENT_CLOSED,
    MNG_NETWORK_CLOSED,
}MNG_NETWORK_STAT;



typedef struct {
    mng_sensorHandle_t * adc0Instance;
    mng_sensorHandle_t * adc1Instance;
    mng_sensorHandle_t * tempInstance;
    mng_sensorHandle_t * SwitchButtonsInstance;
}mng_sensorInstances_t;

/*****************************************************************************/
/*                               FUNCTION PROTOTYPES                         */
/*****************************************************************************/

/**
 * @brief  Initializes the network.
 */
MNG_NETWORK_STAT mng_networkInit (mng_networkHandle_t * me );


/**
 * @brief  Accepts the client.
 */
MNG_NETWORK_STAT mng_networkAccept (mng_networkHandle_t * me );


/**
 * @brief  It receives commands.
 */
MNG_NETWORK_STAT mng_networkReceive (mng_networkHandle_t * me );


/**
 * @brief  It sends data to GUI
 */
MNG_NETWORK_STAT mng_networkSend (mng_networkHandle_t * me , const void * data , size_t len);


/**
 * @brief  De-initliaze network object.
 */
MNG_NETWORK_STAT mng_networkDeinit(mng_networkHandle_t * me);


/**
 * @brief  It closes the client.
 */
MNG_NETWORK_STAT mng_networkCloseClient(mng_networkHandle_t * me);


/**
 * @brief  It parses commands sended by GUI.
 */
void mng_networkParseCmd (mng_networkHandle_t * me , mng_sensorInstances_t * s);



#endif // MNG_NETWORK_H