/*
 * tcpmessage.h
 *
 *  Created on: Sep 22, 2022
 *      Author: mueller
 */

#ifndef TCPMESSAGE_H_
#define TCPMESSAGE_H_

#define PORT 50012

#define MAX_SAMPLES  10
typedef struct {
	unsigned int msg_type;
	unsigned int nsamples;
	unsigned int scount;
	unsigned int stime[MAX_SAMPLES];
	unsigned int sval[MAX_SAMPLES];
} Srv_Send_struct;

#define MAX_PARAMS  2
typedef struct {
	unsigned int cmd;
	unsigned int param[MAX_PARAMS];
} Clnt_Send_struct;

/*  Command definitions (Client <-> Server)  */
#define MNG_CMD_DORMANT_ADC0    0x01U  // Request ADC data
#define MNG_CMD_DORMANT_ADC1    0x20U  // Request ADC data
#define MNG_CMD_DORMANT_TEM     0x03U  // Request Temperature data
#define MNG_CMD_DORMANT_SWBUTT  0x0BU  // Request SW-BTN data
#define MNG_CMD_RLED            0x07U  // Control Red LED
#define MNG_CMD_WLED            0x09U  // Control White LED
#define MNG_CMD_REQ_DATA        0xFFU  // Request ADC data
#define MNG_CMD_DISCONNECT      0x0AU  // Disconnect

#define MNG_CMD_SET_FREQ        0x0CU
#define MNG_CMD_SHUTDOWN        0x30U
#define MNG_CMD_SET_FREQ_TMP    0x0DU
#define MNG_CMD_SET_FREQ_ADC0   0x0EU
#define MNG_CMD_SET_FREQ_ADC1   0x0FU
#define MNG_CMD_SET_FREQ_SWBT   0x10U


#endif /* TCPMESSAGE_H_ */
