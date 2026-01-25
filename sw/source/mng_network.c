/**
 ******************************************************************************
* @file           : mng_network.c
* @author         : Mert Ali Turk
* @brief          : Network implementation file.
* @date           : 2025-11-18
*
* @note
*   This file includes network implementation APIs
*
******************************************************************************
*/

#include "mng_network.h"


/**
 * @brief  Initiliaze network object.
 * 
 * @param  me   : Pointer to handle network object.
 * 
 * @retval MNG_NETWORK_STAT
 * 
 *              MNG_NETWORK_OK                - 0
 *              MNG_NETWORK_ERR_NULL_PTR      - 1
 *              MNG_NETWORK_ERR_SOCKET        - 2
 *              MNG_NETWORK_ERR_BIND          - 3 
 *              MNG_NETWORK_ERR_LISTEN        - 4
 *              MNG_NETWORK_ERR_ACCEPT        - 5
 *              MNG_NETWORK_ERR_RECV          - 6
 *              MNG_NETWORK_ERR_SEND          - 7 
 *              MNG_NETWORK_CLIENT_CLOSED     - 8
 *              MNG_NETWORK_CLOSED            - 9
 * 
 */
MNG_NETWORK_STAT mng_networkInit (mng_networkHandle_t * me )
{
    int ret;

    if(me == (void *)0)
    {
        return  MNG_NETWORK_ERR_NULL_PTR;
    }

    /* Initialize server and client to disconnected */
    me->serverSocket = -1 ;
    me->clientSocket = -1 ;

    /* Create socket file descriptor. */
    me->serverSocket = socket(AF_INET , SOCK_STREAM , 0);
    if(me->serverSocket < 0)
    {
        return MNG_NETWORK_ERR_SOCKET;
    }
    
    /* Configuring server address structure. */
    me->server_address.sin_family = AF_INET;
    me->server_address.sin_addr.s_addr = INADDR_ANY;
    me->server_address.sin_port = htons(MNG_NETWORK_PORT);

    /* Bind the socket. */
    ret = bind(me->serverSocket , (struct sockaddr *)&me->server_address , 
                                                    sizeof(me->server_address));
    if(ret < 0 )
    {
        return MNG_NETWORK_ERR_BIND;
    }

    /* Listen for connection from GUI (client) */
    ret = listen(me->serverSocket , 2);
    if(ret < 0 )
    {
        return MNG_NETWORK_ERR_LISTEN;
    }

    return     MNG_NETWORK_OK;
}


/**
 * @brief  Accepts the client
 * 
 * @param  me   : Pointer to handle network object.
 * 
 * @retval MNG_NETWORK_STAT
 * 
 *              MNG_NETWORK_OK                - 0
 *              MNG_NETWORK_ERR_NULL_PTR      - 1
 *              MNG_NETWORK_ERR_SOCKET        - 2
 *              MNG_NETWORK_ERR_BIND          - 3 
 *              MNG_NETWORK_ERR_LISTEN        - 4
 *              MNG_NETWORK_ERR_ACCEPT        - 5
 *              MNG_NETWORK_ERR_RECV          - 6
 *              MNG_NETWORK_ERR_SEND          - 7 
 *              MNG_NETWORK_CLIENT_CLOSED     - 8
 *              MNG_NETWORK_CLOSED            - 9
 *
 */
MNG_NETWORK_STAT mng_networkAccept (mng_networkHandle_t * me )
{
    if(me == (void *)0)
    {
        return MNG_NETWORK_ERR_NULL_PTR;
    }

    /* Accepting the client */
    /*******                !IT BLOCKS HERE!     **********/
    me->clientSocket = accept(me->serverSocket , NULL ,NULL);
    if( me->clientSocket < 0 )
    {
        return MNG_NETWORK_ERR_ACCEPT;
    }
    
    return MNG_NETWORK_OK;
}




/**
 * @brief  It receive commands from Client!
 * 
 * @param  me   : Pointer to handle network object.
 * 
 * @retval MNG_NETWORK_STAT
 * 
 *              MNG_NETWORK_OK                - 0
 *              MNG_NETWORK_ERR_NULL_PTR      - 1
 *              MNG_NETWORK_ERR_SOCKET        - 2
 *              MNG_NETWORK_ERR_BIND          - 3 
 *              MNG_NETWORK_ERR_LISTEN        - 4
 *              MNG_NETWORK_ERR_ACCEPT        - 5
 *              MNG_NETWORK_ERR_RECV          - 6
 *              MNG_NETWORK_ERR_SEND          - 7 
 *              MNG_NETWORK_CLIENT_CLOSED     - 8
 *              MNG_NETWORK_CLOSED            - 9
 *
 */
MNG_NETWORK_STAT mng_networkReceive (mng_networkHandle_t * me )
{
    ssize_t len;
    if(me == (void *)0)
    {
        return MNG_NETWORK_ERR_NULL_PTR;
    }

    len = recv(me->clientSocket , &me->cmdHandle , sizeof(Clnt_Send_struct) , 0);
    if(len < 0 )
    {
        return MNG_NETWORK_ERR_RECV;

    }
    else if(len == 0)  /* Connection closed by remote client*/
    {
        mng_networkCloseClient(me); 
        return MNG_NETWORK_CLIENT_CLOSED;
    }
    else if(len > 0)
    {
        /* Parse the command have been received. */
        return MNG_NETWORK_OK;
    }
}




/**
 * @brief  Accepts the client
 * 
 * @param  me   : Pointer to handle network object.
 * @param  data : Pointer to buffer , which is going to be senden.
 * @param  len  : Length of the data
 * 
 * @retval MNG_NETWORK_STAT
 * 
 *              MNG_NETWORK_OK                - 0
 *              MNG_NETWORK_ERR_NULL_PTR      - 1
 *              MNG_NETWORK_ERR_SOCKET        - 2
 *              MNG_NETWORK_ERR_BIND          - 3 
 *              MNG_NETWORK_ERR_LISTEN        - 4
 *              MNG_NETWORK_ERR_ACCEPT        - 5
 *              MNG_NETWORK_ERR_RECV          - 6
 *              MNG_NETWORK_ERR_SEND          - 7 
 *              MNG_NETWORK_CLIENT_CLOSED     - 8
 *              MNG_NETWORK_CLOSED            - 9
 *
 */
MNG_NETWORK_STAT mng_networkSend (mng_networkHandle_t * me , const void * data , size_t len)
{
    int ret;
    if(me == (void *)0)
    {
        return MNG_NETWORK_ERR_NULL_PTR;
    }

    ret = send(me->clientSocket , data , len , 0);
    if(ret < 0 )
    {
        return MNG_NETWORK_ERR_SEND;
    }

    return MNG_NETWORK_OK;
}


/**
 * @brief  Parsing received commands from GUI
 * 
 * @param  me:  Pointer to handle network object.
 * @param  mng_sensorInstances_t: Pointer to sensor instances
 * 
 *
 */
void mng_networkParseCmd (mng_networkHandle_t * me , mng_sensorInstances_t * s)
{
    switch (me->cmdHandle.cmd)
    {
        case MNG_CMD_REQ_DATA:            
            break;

        case MNG_CMD_DORMANT_ADC0:
            /* code */
            s->adc0Instance->sensorDormant = 1U;
            break;
        
        case MNG_CMD_DORMANT_ADC1:
            /* code */
            s->adc1Instance->sensorDormant = 1U;
            break;

        case MNG_CMD_DORMANT_TEM:
            /* code */
            s->tempInstance->sensorDormant = 1U;
            break;

        case MNG_CMD_DORMANT_SWBUTT:
            /* code */
            s->SwitchButtonsInstance->sensorDormant = 1U;
            break;

        case MNG_CMD_WLED:
            /* code */
            // Write to leds
            int fd = open(MNG_MEASCDD_FILE_DESCRIPTOR , O_RDWR);
            mng_writeReg(fd , MNG_IP_LEDS_REGNUM , me->cmdHandle.param[0]);
            break;

        case MNG_CMD_SHUTDOWN:
            /* code */
            SHUTDOWN = 0;
            break;

        case MNG_CMD_SET_FREQ:
            /* code */
            // Disconnect operation
            if ( me->cmdHandle.param[0] == MNG_CMD_SET_FREQ_ADC0)
            {
                s->adc0Instance->sensorDormant = 0U;   
                s->adc0Instance->sensorFreq = me->cmdHandle.param[1];
            }
            else if(me->cmdHandle.param[0] == MNG_CMD_SET_FREQ_ADC1)
            {
                s->adc1Instance->sensorDormant = 0U;
                s->adc1Instance->sensorFreq = me->cmdHandle.param[1];
                printf(" TEMP FREQ HAS CHANGED\n");
            }
            else if(me->cmdHandle.param[0] == MNG_CMD_SET_FREQ_TMP)
            {
                s->tempInstance->sensorDormant = 0U;
                s->tempInstance->sensorFreq = me->cmdHandle.param[1];
            }
            else if(me->cmdHandle.param[0] == MNG_CMD_SET_FREQ_SWBT)
            {
                s->SwitchButtonsInstance->sensorDormant = 0U;
                s->SwitchButtonsInstance->sensorFreq = me->cmdHandle.param[1];
            }

            break;

        default:
            break;
    }
} 





/**
 * @brief  De-initializes network object.
 * 
 * @param  me   : Pointer to handle network object.
 * 
 * @retval MNG_NETWORK_STAT
 * 
 *              MNG_NETWORK_OK                - 0
 *              MNG_NETWORK_ERR_NULL_PTR      - 1
 *              MNG_NETWORK_ERR_SOCKET        - 2
 *              MNG_NETWORK_ERR_BIND          - 3 
 *              MNG_NETWORK_ERR_LISTEN        - 4
 *              MNG_NETWORK_ERR_ACCEPT        - 5
 *              MNG_NETWORK_ERR_RECV          - 6
 *              MNG_NETWORK_ERR_SEND          - 7 
 *              MNG_NETWORK_CLIENT_CLOSED     - 8
 *              MNG_NETWORK_CLOSED            - 9
 *
 */
MNG_NETWORK_STAT mng_networkDeinit(mng_networkHandle_t * me)
{
    if (me->clientSocket > 0)
    {
        close(me->clientSocket);
        me->clientSocket = -1;
    }
    if (me->serverSocket > 0)
    {
        close(me->serverSocket);
        me->serverSocket = -1;
    }

    return MNG_NETWORK_CLOSED;
}


/**
 * @brief  Closes the connected client.
 * 
 * @param  me   : Pointer to handle network object.
 * 
 * @retval MNG_NETWORK_STAT
 * 
 *              MNG_NETWORK_OK                - 0
 *              MNG_NETWORK_ERR_NULL_PTR      - 1
 *              MNG_NETWORK_ERR_SOCKET        - 2
 *              MNG_NETWORK_ERR_BIND          - 3 
 *              MNG_NETWORK_ERR_LISTEN        - 4
 *              MNG_NETWORK_ERR_ACCEPT        - 5
 *              MNG_NETWORK_ERR_RECV          - 6
 *              MNG_NETWORK_ERR_SEND          - 7 
 *              MNG_NETWORK_CLIENT_CLOSED     - 8
 *              MNG_NETWORK_CLOSED            - 9
 *
 */
MNG_NETWORK_STAT mng_networkCloseClient(mng_networkHandle_t * me)
{
    if (me == (void *)0)
    {
        return MNG_NETWORK_ERR_NULL_PTR;
    }

    if (me->clientSocket > 0)
    {
        close(me->clientSocket); 
        
        me->clientSocket = -1; 
        
        return MNG_NETWORK_CLIENT_CLOSED;
    }
}
