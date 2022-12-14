/*******************************************************************************
  BSD compatible socket interface internal types.

  File Name:
    m2m_socket_host_if.h

  Summary:

  Description:
   
*******************************************************************************/

//DOM-IGNORE-BEGIN
/*******************************************************************************
Copyright (c) 2015 released Microchip Technology Inc. All rights reserved.

Microchip licenses to you the right to use, modify, copy and distribute
Software only when embedded on a Microchip microcontroller or digital signal
controller that is integrated into your product or third party product
(pursuant to the sublicense terms in the accompanying license agreement).

You should refer to the license agreement accompanying this Software for
additional information regarding your rights and obligations.

SOFTWARE AND DOCUMENTATION ARE PROVIDED AS IS WITHOUT WARRANTY OF ANY KIND,
EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION, ANY WARRANTY OF
MERCHANTABILITY, TITLE, NON-INFRINGEMENT AND FITNESS FOR A PARTICULAR PURPOSE.
IN NO EVENT SHALL MICROCHIP OR ITS LICENSORS BE LIABLE OR OBLIGATED UNDER
CONTRACT, NEGLIGENCE, STRICT LIABILITY, CONTRIBUTION, BREACH OF WARRANTY, OR
OTHER LEGAL EQUITABLE THEORY ANY DIRECT OR INDIRECT DAMAGES OR EXPENSES
INCLUDING BUT NOT LIMITED TO ANY INCIDENTAL, SPECIAL, INDIRECT, PUNITIVE OR
CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA, COST OF PROCUREMENT OF
SUBSTITUTE GOODS, TECHNOLOGY, SERVICES, OR ANY CLAIMS BY THIRD PARTIES
(INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF), OR OTHER SIMILAR COSTS.
 *******************************************************************************/

#ifndef __M2M_SOCKET_HOST_IF_H__
#define __M2M_SOCKET_HOST_IF_H__


#ifdef  __cplusplus
extern "C" {
#endif

/*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*
INCLUDES
*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*/

#ifndef	_BOOT_
#ifndef _FIRMWARE_
#include "driver/wifi/winc1500/wireless_driver_extension/socket/include/socket.h"
#else
#include "m2m_types.h"
#endif
#endif

/*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*
MACROS
*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*/

/*
 *	HOSTNAME_MAX_SIZE is defined here and also in host_drv/socket/include/socket.h
 *	The two definitions must match.
*/

#ifdef _FIRMWARE_
#define HOSTNAME_MAX_SIZE					(64)
#endif

#define SSL_MAX_OPT_LEN						HOSTNAME_MAX_SIZE



#define SOCKET_CMD_INVALID					0x00
/*!< 
	Invlaid Socket command value.
*/


#define SOCKET_CMD_BIND						0x41
/*!< 
	Socket Binding command value.
*/


#define SOCKET_CMD_LISTEN					0x42
/*!< 
	Socket Listening command value.
*/


#define SOCKET_CMD_ACCEPT					0x43
/*!< 
	Socket Accepting command value.
*/


#define SOCKET_CMD_CONNECT					0x44
/*!< 
	Socket Connecting command value.
*/


#define SOCKET_CMD_SEND						0x45
/*!< 
	Socket send command value.
*/


#define SOCKET_CMD_RECV						0x46
/*!< 
	Socket Recieve command value.
*/


#define SOCKET_CMD_SENDTO					0x47
/*!< 
	Socket sendTo command value.
*/


#define SOCKET_CMD_RECVFROM					0x48
/*!< 
	Socket RecieveFrom command value.
*/


#define SOCKET_CMD_CLOSE					0x49
/*!< 
	Socket Close command value.
*/


#define SOCKET_CMD_DNS_RESOLVE				0x4A
/*!< 
	Socket DNS Resolve command value.
*/


#define SOCKET_CMD_SSL_CONNECT				0x4B
/*!< 
	SSL-Socket Connect command value.
*/


#define SOCKET_CMD_SSL_SEND					0x4C	
/*!< 
	SSL-Socket Send command value.
*/	


#define SOCKET_CMD_SSL_RECV					0x4D
/*!< 
	SSL-Socket Recieve command value.
*/


#define SOCKET_CMD_SSL_CLOSE				0x4E
/*!< 
	SSL-Socket Close command value.
*/


#define SOCKET_CMD_SET_SOCKET_OPTION		0x4F
/*!< 
	Set Socket Option command value.
*/


#define SOCKET_CMD_SSL_CREATE				0x50
/*!<
*/


#define SOCKET_CMD_SSL_SET_SOCK_OPT			0x51
/*!<
*/


#define SOCKET_CMD_PING						0x52
/*!<
*/


#define SOCKET_CMD_SSL_SET_CS_LIST			0x53
/*!<
	Recommend instead using @ref M2M_SSL_REQ_SET_CS_LIST and	
	associated response @ref M2M_SSL_RESP_SET_CS_LIST
*/


#define SOCKET_CMD_SSL_BIND					0x54
/*!<
*/


#define SOCKET_CMD_SSL_EXP_CHECK			0x55
/*!<
*/



#define PING_ERR_SUCCESS					0
#define PING_ERR_DEST_UNREACH				1
#define PING_ERR_TIMEOUT					2

/*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*
DATA TYPES
*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*/


/*!
*  @brief	
*/
typedef struct{	
	uint16		u16Family;
	uint16		u16Port;
	uint32		u32IPAddr;
}tstrSockAddr;


typedef sint8			SOCKET;
typedef tstrSockAddr	tstrUIPSockAddr;



/*!
@struct	\
	tstrDnsReply
	
@brief
	DNS Reply, contains hostName and HostIP.
*/
typedef struct{
	char		acHostName[HOSTNAME_MAX_SIZE];
	uint32		u32HostIP;
}tstrDnsReply;


/*!
@brief
*/
typedef struct{
	tstrSockAddr	strAddr;
	SOCKET			sock;
	uint8			u8Void;
	uint16			u16SessionID;
}tstrBindCmd;


/*!
@brief
*/
typedef struct{
	SOCKET		sock;
	sint8		s8Status;
	uint16		u16SessionID;
}tstrBindReply;


/*!
*  @brief
*/
typedef struct{
	SOCKET	sock;
	uint8	u8BackLog;
	uint16	u16SessionID;
}tstrListenCmd;


/*!
@struct	\
	tstrSocketRecvMsg
	
@brief	Socket recv status. 

	It is passed to the APPSocketEventHandler with SOCKET_MSG_RECV or SOCKET_MSG_RECVFROM message type 
	in a response to a user call to the recv or recvfrom.
	If the received data from the remote peer is larger than the USER Buffer size (given at recv call), the data is 
	delivered to the user in a number of consecutive chunks according to the USER Buffer size.
*/
typedef struct{
	SOCKET		sock;
	sint8		s8Status;
	uint16		u16SessionID;
}tstrListenReply;


/*!
*  @brief
*/
typedef struct{
	tstrSockAddr	strAddr;
	SOCKET			sListenSock;
	SOCKET			sConnectedSock;
	uint16			u16AppDataOffset;
	/*!<
		In further packet send requests the host interface should put the user application
		data at this offset in the allocated shared data packet.
	*/
}tstrAcceptReply;


/*!
*  @brief
*/
typedef struct{
	tstrSockAddr	strAddr;
	SOCKET			sock;
	uint8			u8SslFlags;
	uint16			u16SessionID;
}tstrConnectCmd;


/*!
@struct	\
	tstrConnectReply
	
@brief
	Connect Reply, contains sock number and error value
*/
typedef struct{
	SOCKET		sock;
	sint8		s8Error;
	uint16		u16AppDataOffset;
	/*!<
		In further packet send requests the host interface should put the user application
		data at this offset in the allocated shared data packet.
	*/
}tstrConnectReply;


/*!
@brief
*/
typedef struct{
	SOCKET			sock;
	uint8			u8Void;
	uint16			u16DataSize;
	tstrSockAddr	strAddr;
	uint16			u16SessionID;
	uint16			u16Void;
}tstrSendCmd;


/*!
@struct	\
	tstrSendReply
	
@brief
	Send Reply, contains socket number and number of sent bytes.
*/
typedef struct{
	SOCKET		sock;
	uint8		u8Void;
	sint16		s16SentBytes;
	uint16		u16SessionID;
	uint16		u16Void;
}tstrSendReply;


/*!
*  @brief
*/
typedef struct{
	uint32		u32Timeoutmsec;
	SOCKET		sock;
	uint8		u8Void;
	uint16		u16SessionID;
}tstrRecvCmd;


/*!
@struct
@brief
*/
typedef struct{
	tstrSockAddr	strRemoteAddr;
	sint16			s16RecvStatus;
	uint16			u16DataOffset;
	SOCKET			sock;
	uint8			u8Void;
	uint16			u16SessionID;
}tstrRecvReply;


/*!
*  @brief
*/
typedef struct{
	uint32		u32OptionValue;
	SOCKET		sock;
	uint8 		u8Option;
	uint16		u16SessionID;
}tstrSetSocketOptCmd;


typedef struct{
	SOCKET		sslSock;
	uint8		__PAD24__[3];
}tstrSSLSocketCreateCmd;


/*!
*  @brief
*/
typedef struct{
	SOCKET		sock;
	uint8 		u8Option;
	uint16		u16SessionID;
	uint32		u32OptLen;
	uint8		au8OptVal[SSL_MAX_OPT_LEN];
}tstrSSLSetSockOptCmd;


/*!
*/
typedef struct{
	uint32	u32DestIPAddr;
	uint32	u32CmdPrivate;
	uint16	u16PingCount;
	uint8	u8TTL;
	uint8	__PAD8__;
}tstrPingCmd;

typedef struct{
	uint32	u32IPAddr;
	uint32	u32CmdPrivate;
	uint32	u32RTT;
	uint16	u16Success;
	uint16	u16Fail;
	uint8	u8ErrorCode;
	uint8	__PAD24__[3];
}tstrPingReply;

/*!
@struct\
	tstrSslCertExpSettings

@brief	SSL Certificate Expiry Validation Settings

@sa		tenuSslCertExpSettings
*/
typedef struct{
	uint32	u32CertExpValidationOpt;
	/*!<
		See @tenuSslCertExpSettings for possible values.
	*/
}tstrSslCertExpSettings;


#ifdef  __cplusplus
}
#endif /* __cplusplus */

#endif /* __M2M_SOCKET_HOST_IF_H__ */
