<#--
/*******************************************************************************
Copyright (c) 2013-2014 released Microchip Technology Inc.  All rights reserved.

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
 -->
// <editor-fold defaultstate="collapsed" desc="TCP/IP Stack Initialization Data">
// *****************************************************************************
// *****************************************************************************
// Section: TCPIP Data
// *****************************************************************************
// *****************************************************************************
<#--
// tcpip_stack_init.c.ftl: TCP/IP modules initialization data
-->

<#if CONFIG_TCPIP_USE_ARP == true>
/*** ARP Service Initialization Data ***/
const TCPIP_ARP_MODULE_CONFIG tcpipARPInitData =
{ 
    .cacheEntries       = TCPIP_ARP_CACHE_ENTRIES,     
    .deleteOld          = TCPIP_ARP_CACHE_DELETE_OLD,    
    .entrySolvedTmo     = TCPIP_ARP_CACHE_SOLVED_ENTRY_TMO, 
    .entryPendingTmo    = TCPIP_ARP_CACHE_PENDING_ENTRY_TMO, 
    .entryRetryTmo      = TCPIP_ARP_CACHE_PENDING_RETRY_TMO, 
    .permQuota          = TCPIP_ARP_CACHE_PERMANENT_QUOTA, 
    .purgeThres         = TCPIP_ARP_CACHE_PURGE_THRESHOLD, 
    .purgeQuanta        = TCPIP_ARP_CACHE_PURGE_QUANTA, 
    .retries            = TCPIP_ARP_CACHE_ENTRY_RETRIES, 
    .gratProbeCount     = TCPIP_ARP_GRATUITOUS_PROBE_COUNT,
};
</#if>

<#if CONFIG_TCPIP_USE_TELNET == true>
/*** telnet Server Initialization Data ***/
const TCPIP_TELNET_MODULE_CONFIG tcpipTelnetInitData =
{ 
};
</#if>

<#if CONFIG_TCPIP_USE_ANNOUNCE == true>
/*** Announce Discovery Initialization Data ***/
const TCPIP_ANNOUNCE_MODULE_CONFIG tcpipAnnounceInitData =
{ 
};
</#if>

<#if CONFIG_TCPIP_USE_UDP == true>
/*** UDP Sockets Initialization Data ***/
const TCPIP_UDP_MODULE_CONFIG tcpipUDPInitData =
{
    .nSockets       = TCPIP_UDP_MAX_SOCKETS,
    .sktTxBuffSize  = TCPIP_UDP_SOCKET_DEFAULT_TX_SIZE, 
<#if CONFIG_TCPIP_UDP_USE_POOL_BUFFERS == true>
    .poolBuffers    = TCPIP_UDP_SOCKET_POOL_BUFFERS,
    .poolBufferSize = TCPIP_UDP_SOCKET_POOL_BUFFER_SIZE,
</#if>
};
</#if>

<#if CONFIG_TCPIP_USE_TCP == true>
/*** TCP Sockets Initialization Data ***/
const TCPIP_TCP_MODULE_CONFIG tcpipTCPInitData =
{
    .nSockets       = TCPIP_TCP_MAX_SOCKETS,
    .sktTxBuffSize  = TCPIP_TCP_SOCKET_DEFAULT_TX_SIZE, 
    .sktRxBuffSize  = TCPIP_TCP_SOCKET_DEFAULT_RX_SIZE,
};
</#if>

<#if CONFIG_TCPIP_STACK_USE_HTTP_SERVER == true>
/*** HTTP Server Initialization Data ***/
const TCPIP_HTTP_MODULE_CONFIG tcpipHTTPInitData =
{
    .nConnections   = TCPIP_HTTP_MAX_CONNECTIONS,
    .dataLen		= TCPIP_HTTP_MAX_DATA_LEN,
    .sktTxBuffSize	= TCPIP_HTTP_SKT_TX_BUFF_SIZE,
    .sktRxBuffSize	= TCPIP_HTTP_SKT_RX_BUFF_SIZE,
    .configFlags	= TCPIP_HTTP_CONFIG_FLAGS,
    .http_malloc_fnc    = TCPIP_HTTP_MALLOC_FUNC,
    .http_free_fnc      = TCPIP_HTTP_FREE_FUNC,
};
</#if>

<#if CONFIG_TCPIP_STACK_USE_HTTP_NET_SERVER == true>
/*** HTTP_NET Server Initialization Data ***/
const TCPIP_HTTP_NET_MODULE_CONFIG tcpipHTTPNetInitData =
{
    .nConnections   = TCPIP_HTTP_NET_MAX_CONNECTIONS,
    .dataLen		= TCPIP_HTTP_NET_MAX_DATA_LEN,
    .sktTxBuffSize	= TCPIP_HTTP_NET_SKT_TX_BUFF_SIZE,
    .sktRxBuffSize	= TCPIP_HTTP_NET_SKT_RX_BUFF_SIZE,
    .listenPort	    = TCPIP_HTTP_NET_LISTEN_PORT,
<#if CONFIG_TCPIP_HTTP_NET_DYNVAR_PROCESS == true>
    .nDescriptors   = TCPIP_HTTP_NET_DYNVAR_DESCRIPTORS_NUMBER,
<#else>
    .nDescriptors   = 0,
</#if>
    .nChunks        = TCPIP_HTTP_NET_CHUNKS_NUMBER, 
    .maxRecurseLevel= TCPIP_HTTP_NET_MAX_RECURSE_LEVEL,    
    .configFlags	= TCPIP_HTTP_NET_CONFIG_FLAGS,
    .nFileBuffers   = TCPIP_HTTP_NET_FILE_PROCESS_BUFFERS_NUMBER,
    .fileBufferSize = TCPIP_HTTP_NET_FILE_PROCESS_BUFFER_SIZE,
    .chunkPoolRetries = TCPIP_HTTP_NET_CHUNK_RETRIES,
    .fileBufferRetries = TCPIP_HTTP_NET_FILE_PROCESS_BUFFER_RETRIES,
<#if CONFIG_TCPIP_HTTP_NET_DYNVAR_PROCESS == true>
    .dynVarRetries  = TCPIP_HTTP_NET_DYNVAR_PROCESS_RETRIES,
<#else>
    .dynVarRetries      = 0,
</#if>
    .connTimeout        = TCPIP_HTTP_NET_CONNECTION_TIMEOUT,
    .http_malloc_fnc    = TCPIP_HTTP_NET_MALLOC_FUNC,
    .http_free_fnc      = TCPIP_HTTP_NET_FREE_FUNC,
};
</#if>

<#if CONFIG_TCPIP_USE_SNTP_CLIENT == true>
/*** SNTP Client Initialization Data ***/
const TCPIP_SNTP_MODULE_CONFIG tcpipSNTPInitData =
{
    .ntp_server		        = TCPIP_NTP_SERVER,
    .ntp_interface		    = TCPIP_NTP_DEFAULT_IF,
    .ntp_connection_type	= TCPIP_NTP_DEFAULT_CONNECTION_TYPE,
    .ntp_reply_timeout		= TCPIP_NTP_REPLY_TIMEOUT,
    .ntp_stamp_timeout		= TCPIP_NTP_TIME_STAMP_TMO,
    .ntp_success_interval	= TCPIP_NTP_QUERY_INTERVAL,
    .ntp_error_interval		= TCPIP_NTP_FAST_QUERY_INTERVAL,
};
</#if>

<#if CONFIG_TCPIP_USE_SMTP_CLIENT == true>
/*** SMTP client Initialization Data ***/
const TCPIP_SMTP_CLIENT_MODULE_CONFIG tcpipSMTPInitData =
{ 
};
</#if>

<#if CONFIG_TCPIP_USE_SMTPC_CLIENT == true>
/*** SMTPC client Initialization Data ***/
const TCPIP_SMTPC_MODULE_CONFIG tcpipSMTPCInitData =
{
    .nMailConnections       = TCPIP_SMTPC_MAIL_CONNECTIONS,
    .serverReplyTmo         = TCPIP_SMTPC_SERVER_REPLY_TIMEOUT,
    .serverDataTmo          = TCPIP_SMTPC_SERVER_DATA_TIMEOUT,
    .tlsHandshakeTmo        = TCPIP_SMTPC_TLS_HANDSHAKE_TIMEOUT,
    .nMailRetries           = TCPIP_SMTPC_MAIL_RETRIES,
    .serverRetryTmo         = TCPIP_SMTPC_SERVER_TRANSIENT_RETRY_TIMEOUT,
    .smtpcRetryTmo          = TCPIP_SMTPC_INTERNAL_RETRY_TIMEOUT,
    .sktTxBuffSize          = TCPIP_SMTPC_SKT_TX_BUFF_SIZE,
    .sktRxBuffSize          = TCPIP_SMTPC_SKT_RX_BUFF_SIZE,
};
</#if>

<#if CONFIG_TCPIP_STACK_USE_DHCP_CLIENT == true>
/*** DHCP client Initialization Data ***/
const TCPIP_DHCP_MODULE_CONFIG tcpipDHCPInitData =
{     
    .dhcpEnable     = TCPIP_DHCP_CLIENT_ENABLED,   
    .dhcpTmo        = TCPIP_DHCP_TIMEOUT,
    .dhcpCliPort    = TCPIP_DHCP_CLIENT_CONNECT_PORT,
    .dhcpSrvPort    = TCPIP_DHCP_SERVER_LISTEN_PORT,

};
</#if>

<#if CONFIG_TCPIP_STACK_USE_BERKELEY_API == true>
/*** Berkeley API Initialization Data ***/
const BERKELEY_MODULE_CONFIG tcpipBerkeleyInitData = 
{
    .maxSockets     = MAX_BSD_SOCKETS,
};
</#if>

<#if CONFIG_TCPIP_STACK_USE_ICMP_SERVER == true>
/*** ICMP Server Initialization Data ***/
const TCPIP_ICMP_MODULE_CONFIG tcpipICMPInitData = 
{
};
</#if>

<#if CONFIG_TCPIP_USE_NBNS == true>
/*** NBNS Server Initialization Data ***/
const TCPIP_NBNS_MODULE_CONFIG tcpipNBNSInitData =
{ 
};
</#if>

<#if CONFIG_TCPIP_USE_IGMP == true>
/*** IGMP module Initialization Data ***/
const TCPIP_IGMP_MODULE_CONFIG tcpipIGMPInitData =
{     
    .lowSsmAddress     = 0,   
    .highSsmAddress    = 0,
    .reportInterval    = TCPIP_IGMP_UNSOLICITED_REPORT_INTERVAL,
    .nInterfaces       = TCPIP_IGMP_INTERFACES,
};
</#if>

<#if CONFIG_TCPIP_USE_ETH_MAC == true>
/*** ETH PHY Initialization Data ***/

<#if CONFIG_DRV_ETHPHY_USE_RESET_CALLBACK == true>
<#if CONFIG_DRV_ETHPHY_RESET_CALLBACK?has_content>
extern void ${CONFIG_DRV_ETHPHY_RESET_CALLBACK}( const struct DRV_ETHPHY_OBJECT_BASE_TYPE* pBaseObj);
</#if>
</#if>


const DRV_ETHPHY_INIT tcpipPhyInitData =
{
    .moduleInit             = {SYS_MODULE_POWER_RUN_FULL},
    .ethphyId               = TCPIP_EMAC_MODULE_ID,
    .phyAddress             = TCPIP_EMAC_PHY_ADDRESS,
    .phyFlags               = TCPIP_EMAC_PHY_CONFIG_FLAGS,
    .pPhyObject             = &DRV_ETHPHY_OBJECT_${CONFIG_TCPIP_EMAC_PHY_TYPE},
<#if CONFIG_DRV_ETHPHY_USE_RESET_CALLBACK == true && CONFIG_DRV_ETHPHY_RESET_CALLBACK?has_content>
    .resetFunction          = ${CONFIG_DRV_ETHPHY_RESET_CALLBACK},
<#else>
    .resetFunction          = 0,
</#if>
<#if CONFIG_DRV_MIIM_USE_DRIVER == true>
    .pMiimObject            = &${CONFIG_DRV_MIIM_DRIVER_OBJECT},
    .pMiimInit              = &drvMiimInitData,
    .miimIndex              = DRV_MIIM_DRIVER_INDEX,
<#else>
    .pMiimObject            = 0,
    .pMiimInit              = 0,
    .miimIndex              = 0,
</#if>
};

/*** ETH MAC Initialization Data ***/
const TCPIP_MODULE_MAC_PIC32INT_CONFIG tcpipMACPIC32INTInitData =
{ 
    .nTxDescriptors         = TCPIP_EMAC_TX_DESCRIPTORS,
    .rxBuffSize             = TCPIP_EMAC_RX_BUFF_SIZE,
    .nRxDescriptors         = TCPIP_EMAC_RX_DESCRIPTORS,
    .nRxDedicatedBuffers    = TCPIP_EMAC_RX_DEDICATED_BUFFERS,
    .nRxInitBuffers         = TCPIP_EMAC_RX_INIT_BUFFERS,
    .rxLowThreshold         = TCPIP_EMAC_RX_LOW_THRESHOLD,
    .rxLowFill              = TCPIP_EMAC_RX_LOW_FILL,
    .linkInitDelay          = TCPIP_EMAC_PHY_LINK_INIT_DELAY,
    .ethFlags               = TCPIP_EMAC_ETH_OPEN_FLAGS,
    .ethModuleId            = TCPIP_EMAC_MODULE_ID,
<#if CONFIG_TCPIP_EMAC_PHY_TYPE == "SMSC_LAN9303">
    .pPhyBase               = &DRV_ETHPHY_OBJECT_BASE_smsc9303,
<#elseif CONFIG_TCPIP_EMAC_PHY_TYPE == "KSZ8863">
    .pPhyBase		    = &DRV_ETHPHY_OBJECT_BASE_ksz8863,
<#else>
    .pPhyBase               = &DRV_ETHPHY_OBJECT_BASE_Default,
</#if>
    .pPhyInit               = &tcpipPhyInitData,
};
</#if>


<#if CONFIG_USE_DRV_WIFI == true>
 <#if CONFIG_DRV_WIFI_DEVICE == "MRF24WN">
/*** Wi-Fi Interface MRF24WN Initialization Data ***/
const TCPIP_MODULE_MAC_MRF24WN_CONFIG macMRF24WNConfigData = {
};
 <#elseif CONFIG_DRV_WIFI_DEVICE == "WINC1500">
/*** Wi-Fi Interface WINC1500 Initialization Data ***/
const TCPIP_MODULE_MAC_WINC1500_CONFIG macWINC1500ConfigData = {
};
 <#elseif CONFIG_DRV_WIFI_DEVICE == "WILC1000">
/*** Wi-Fi Interface WILC1000 Initialization Data ***/
const TCPIP_MODULE_MAC_WILC1000_CONFIG macWILC1000ConfigData = {
};
 </#if>
</#if>

<#if CONFIG_TCPIP_USE_DDNS == true>
/*** DDNS Initialization Data ***/
const DDNS_MODULE_CONFIG tcpipDDNSInitData =
{
};
</#if>

<#if CONFIG_TCPIP_USE_LINK_ZERO_CONFIG == true>
/*** Zeroconfig initialization data ***/
const ZCLL_MODULE_CONFIG tcpipZCLLInitData =
{
};
</#if>

<#if CONFIG_TCPIP_USE_TFTPC_MODULE == true>
/*** TFTP Client Initialization Data ***/
const TCPIP_TFTPC_MODULE_CONFIG tcpipTFTPCInitData =
{
    .tftpc_interface        = TCPIP_TFTPC_DEFAULT_IF,
    .tftpc_reply_timeout	= TCPIP_TFTPC_CMD_PROCESS_TIMEOUT,  
};
</#if>

<#if CONFIG_TCPIP_STACK_USE_DHCP_SERVER == true>
/*** DHCP server initialization data ***/
TCPIP_DHCPS_ADDRESS_CONFIG DHCP_POOL_CONFIG[]=
{
<#if CONFIG_TCPIP_DHCP_SERVER_IDX0 == true>
    {
        .interfaceIndex     = TCPIP_DHCP_SERVER_INTERFACE_INDEX_IDX0,
        .serverIPAddress    = TCPIP_DHCPS_DEFAULT_SERVER_IP_ADDRESS_IDX0,
        .startIPAddRange    = TCPIP_DHCPS_DEFAULT_IP_ADDRESS_RANGE_START_IDX0,
        .ipMaskAddress      = TCPIP_DHCPS_DEFAULT_SERVER_NETMASK_ADDRESS_IDX0,
        .priDNS             = TCPIP_DHCPS_DEFAULT_SERVER_PRIMARY_DNS_ADDRESS_IDX0,
        .secondDNS          = TCPIP_DHCPS_DEFAULT_SERVER_SECONDARY_DNS_ADDRESS_IDX0,
        .poolEnabled        = TCPIP_DHCP_SERVER_POOL_ENABLED_IDX0,
    },
</#if>
<#if CONFIG_TCPIP_DHCP_SERVER_IDX1 == true>
    {
        .interfaceIndex     = TCPIP_DHCP_SERVER_INTERFACE_INDEX_IDX1,
        .serverIPAddress    = TCPIP_DHCPS_DEFAULT_SERVER_IP_ADDRESS_IDX1,
        .startIPAddRange    = TCPIP_DHCPS_DEFAULT_IP_ADDRESS_RANGE_START_IDX1,
        .ipMaskAddress      = TCPIP_DHCPS_DEFAULT_SERVER_NETMASK_ADDRESS_IDX1,
        .priDNS             = TCPIP_DHCPS_DEFAULT_SERVER_PRIMARY_DNS_ADDRESS_IDX1,
        .secondDNS          = TCPIP_DHCPS_DEFAULT_SERVER_SECONDARY_DNS_ADDRESS_IDX1,
        .poolEnabled        = TCPIP_DHCP_SERVER_POOL_ENABLED_IDX1,
    },
</#if>    
};
const TCPIP_DHCPS_MODULE_CONFIG tcpipDHCPSInitData =
{
    .enabled            = true,
    .deleteOldLease     = TCPIP_DHCP_SERVER_DELETE_OLD_ENTRIES,
    .leaseEntries       = TCPIP_DHCPS_LEASE_ENTRIES_DEFAULT,
    .entrySolvedTmo     = TCPIP_DHCPS_LEASE_SOLVED_ENTRY_TMO,
    .dhcpServer         = (TCPIP_DHCPS_ADDRESS_CONFIG*)DHCP_POOL_CONFIG,
};
</#if>

<#if CONFIG_TCPIP_USE_FTP_MODULE == true>
/*** FTP Server Initialization Data ***/
const TCPIP_FTP_MODULE_CONFIG tcpipFTPInitData =
{ 
    .nConnections       = TCPIP_FTP_MAX_CONNECTIONS,
    .dataSktTxBuffSize	= TCPIP_FTP_DATA_SKT_TX_BUFF_SIZE,
    .dataSktRxBuffSize	= TCPIP_FTP_DATA_SKT_RX_BUFF_SIZE,
    .userName			= TCPIP_FTP_USER_NAME,
    .password		    = TCPIP_FTP_PASSWORD,
};
</#if>

<#if CONFIG_TCPIP_USE_DNS_CLIENT == true>
/*** DNS Client Initialization Data ***/
const TCPIP_DNS_CLIENT_MODULE_CONFIG tcpipDNSClientInitData =
{
    .deleteOldLease         = TCPIP_DNS_CLIENT_DELETE_OLD_ENTRIES,
    .cacheEntries           = TCPIP_DNS_CLIENT_CACHE_ENTRIES,
    .entrySolvedTmo         = TCPIP_DNS_CLIENT_CACHE_ENTRY_TMO,    
    .nIPv4Entries  = TCPIP_DNS_CLIENT_CACHE_PER_IPV4_ADDRESS,
    .ipAddressType       = TCPIP_DNS_CLIENT_ADDRESS_TYPE,
    .nIPv6Entries  = TCPIP_DNS_CLIENT_CACHE_PER_IPV6_ADDRESS,
};
</#if>

<#if CONFIG_TCPIP_USE_DNSS == true>
/*** DNS Server Initialization Data ***/
const TCPIP_DNSS_MODULE_CONFIG tcpipDNSServerInitData =
{ 
    .deleteOldLease			= TCPIP_DNSS_DELETE_OLD_LEASE,
    .replyBoardAddr			= TCPIP_DNSS_REPLY_BOARD_ADDR,
    .IPv4EntriesPerDNSName 	= TCPIP_DNSS_CACHE_PER_IPV4_ADDRESS,
<#if CONFIG_TCPIP_STACK_USE_IPV6 == true >
	.IPv6EntriesPerDNSName 	= TCPIP_DNSS_CACHE_PER_IPV6_ADDRESS,
<#else>
	.IPv6EntriesPerDNSName 	= 0,
</#if>
};
</#if>

<#if CONFIG_TCPIP_STACK_USE_IPV6 == true>
/*** IPv6 Initialization Data ***/
const TCPIP_IPV6_MODULE_CONFIG  tcpipIPv6InitData = 
{
    .rxfragmentBufSize      = TCPIP_IPV6_RX_FRAGMENTED_BUFFER_SIZE,
    .fragmentPktRxTimeout   = TCPIP_IPV6_FRAGMENT_PKT_TIMEOUT,
};
</#if>

<#if CONFIG_TCPIP_USE_SNMP == true>
TCPIP_SNMP_COMMUNITY_CONFIG tcpipSNMPInitReadcommunity[] =
{
<#if CONFIG_TCPIP_SNMP_STACK_CONFIG_IDX0>
/*** SNMP Configuration Index 0 ***/
    {
        TCPIP_SNMP_STACK_READCOMMUNITY_NAME_IDX0,
    },
</#if>
<#if CONFIG_TCPIP_SNMP_STACK_CONFIG_IDX1>
/*** SNMP Configuration Index 1 ***/
    {
        TCPIP_SNMP_STACK_READCOMMUNITY_NAME_IDX1,
    },
</#if>	
<#if CONFIG_TCPIP_SNMP_STACK_CONFIG_IDX2>
/*** SNMP Configuration Index 2 ***/	
    {
        TCPIP_SNMP_STACK_READCOMMUNITY_NAME_IDX2,
    },
</#if>	
};

TCPIP_SNMP_COMMUNITY_CONFIG tcpipSNMPInitWritecommunity[] =
{
<#if CONFIG_TCPIP_SNMP_STACK_CONFIG_IDX0>
/*** SNMP Configuration Index 0 ***/
    {
        TCPIP_SNMP_STACK_WRITECOMMUNITY_NAME_IDX0,
    },
</#if>	
<#if CONFIG_TCPIP_SNMP_STACK_CONFIG_IDX1>
/*** SNMP Configuration Index 1 ***/
    {
        TCPIP_SNMP_STACK_WRITECOMMUNITY_NAME_IDX1,
    },
</#if>	
<#if CONFIG_TCPIP_SNMP_STACK_CONFIG_IDX2>
/*** SNMP Configuration Index 2 ***/
    {
        TCPIP_SNMP_STACK_WRITECOMMUNITY_NAME_IDX2,
    },
</#if>	
};

<#if CONFIG_TCPIP_USE_SNMPv3 == true>
// SNMPv3 USM configuration
TCPIP_SNMPV3_USM_USER_CONFIG tcpipSNMPv3InitUSM[] =
{
<#if CONFIG_TCPIP_SNMP_STACK_CONFIG_IDX0>
/*** SNMPV3 Configuration Index 0 ***/
    {
        TCPIP_SNMPV3_STACK_USM_NAME_IDX0,            			/*** securityName ***/
        TCPIP_SNMPV3_STACK_SECURITY_LEVEL_IDX0,              	/*** authentication and privacy security-level ***/
        /*** auth ***/
        TCPIP_SNMPV3_STACK_AUTH_PROTOCOL_IDX0,        			/*** MD5 auth protocol ***/
        TCPIP_SNMPV3_STACK_AUTH_PASSWORD_IDX0,            		/*** auth passphrase ***/
        /*** priv ***/
        TCPIP_SNMPV3_STACK_PRIV_PROTOCOL_IDX0,        			/*** AES priv protocol ***/
        TCPIP_SNMPV3_STACK_PRIV_PASSWORD_IDX0,            		/*** priv passphrase ***/
    },
</#if>	
<#if CONFIG_TCPIP_SNMP_STACK_CONFIG_IDX1>
/*** SNMPV3 Configuration Index 1 ***/	
    {
        TCPIP_SNMPV3_STACK_USM_NAME_IDX1,            			/*** securityName ***/
        TCPIP_SNMPV3_STACK_SECURITY_LEVEL_IDX1,              	/*** authentication and privacy security-level ***/
        /*** auth ***/
        TCPIP_SNMPV3_STACK_AUTH_PROTOCOL_IDX1,        			/*** MD5 auth protocol ***/
        TCPIP_SNMPV3_STACK_AUTH_PASSWORD_IDX1,            		/*** auth passphrase ***/
        /*** priv ***/
        TCPIP_SNMPV3_STACK_PRIV_PROTOCOL_IDX1,        			/*** AES priv protocol ***/
        TCPIP_SNMPV3_STACK_PRIV_PASSWORD_IDX1,            		/*** priv passphrase ***/
    },
</#if>	
<#if CONFIG_TCPIP_SNMP_STACK_CONFIG_IDX2>
/*** SNMPV3 Configuration Index 2 ***/	
    {
        TCPIP_SNMPV3_STACK_USM_NAME_IDX2,            			/*** securityName ***/
        TCPIP_SNMPV3_STACK_SECURITY_LEVEL_IDX2,              	/*** authentication and privacy security-level ***/
        /*** auth ***/
        TCPIP_SNMPV3_STACK_AUTH_PROTOCOL_IDX2,        			/*** MD5 auth protocol ***/
        TCPIP_SNMPV3_STACK_AUTH_PASSWORD_IDX2,            		/*** auth passphrase ***/
        /*** priv ***/
        TCPIP_SNMPV3_STACK_PRIV_PROTOCOL_IDX2,        			/*** AES priv protocol ***/
        TCPIP_SNMPV3_STACK_PRIV_PASSWORD_IDX2,            		/*** priv passphrase ***/
    },
</#if>	
};

// SNMPv3 USM based Trap configuration
// User name should be exacly same to the above USM table.
TCPIP_SNMPV3_TARGET_ENTRY_CONFIG tcpipSNMPv3InitTargetTrap[]=
{
<#if CONFIG_TCPIP_SNMP_STACK_CONFIG_IDX0>
/*** SNMPV3 Configuration Index 0 ***/
    {
        TCPIP_SNMPV3_TARGET_ENTRY_SEC_NAME_IDX0,                    /*** securityName ***/
        TCPIP_SNMPV3_TARGET_ENTRY_MESSAGE_PROTOCOL_TYPE_IDX0,    	/*** Message processing model ***/
        TCPIP_SNMPV3_TARGET_ENTRY_SEC_MODEL_TYPE_IDX0,      		/*** Security Model ***/
        TCPIP_SNMPV3_TARGET_ENTRY_SEC_LEVEL_IDX0,             		/*** Security-level ***/
    },
</#if>	
<#if CONFIG_TCPIP_SNMP_STACK_CONFIG_IDX1>
/*** SNMPV3 Configuration Index 1 ***/	
     {
        TCPIP_SNMPV3_TARGET_ENTRY_SEC_NAME_IDX1,                    /*** securityName ***/
        TCPIP_SNMPV3_TARGET_ENTRY_MESSAGE_PROTOCOL_TYPE_IDX1,    	/*** Message processing model ***/
        TCPIP_SNMPV3_TARGET_ENTRY_SEC_MODEL_TYPE_IDX1,      		/*** Security Model ***/
        TCPIP_SNMPV3_TARGET_ENTRY_SEC_LEVEL_IDX1,             		/*** Security-level ***/
    },
</#if>	
<#if CONFIG_TCPIP_SNMP_STACK_CONFIG_IDX2>
/*** SNMPV3 Configuration Index 2 ***/	
	{
        TCPIP_SNMPV3_TARGET_ENTRY_SEC_NAME_IDX2,                    /*** securityName ***/
        TCPIP_SNMPV3_TARGET_ENTRY_MESSAGE_PROTOCOL_TYPE_IDX2,    	/*** Message processing model ***/
        TCPIP_SNMPV3_TARGET_ENTRY_SEC_MODEL_TYPE_IDX2,      		/*** Security Model ***/
        TCPIP_SNMPV3_TARGET_ENTRY_SEC_LEVEL_IDX2,             		/*** Security-level ***/
    },
</#if>
};
</#if>

const TCPIP_SNMP_MODULE_CONFIG tcpipSNMPInitData =
{
	.trapEnable             = TCPIP_SNMP_USE_TRAP_SUPPORT,
	.snmp_trapv2_use        = TCPIP_SNMP_STACK_USE_V2_TRAP,
<#if CONFIG_TCPIP_USE_SNMPv3 == true>
	.snmpv3_trapv1v2_use    = TCPIP_SNMPV3_STACK_USE_V1_V2_TRAP,
<#else>
	.snmpv3_trapv1v2_use    = false,
</#if>	
	.snmp_bib_file          = TCPIP_SNMP_BIB_FILE_NAME,
	.read_community_config  = (TCPIP_SNMP_COMMUNITY_CONFIG*)tcpipSNMPInitReadcommunity,
	.write_community_config = (TCPIP_SNMP_COMMUNITY_CONFIG*)tcpipSNMPInitWritecommunity,
<#if CONFIG_TCPIP_USE_SNMPv3 == true>
	.usm_config             = (TCPIP_SNMPV3_USM_USER_CONFIG*)tcpipSNMPv3InitUSM,
	.trap_target_config     = (TCPIP_SNMPV3_TARGET_ENTRY_CONFIG*)tcpipSNMPv3InitTargetTrap,
<#else>
	.usm_config             = NULL,
	.trap_target_config     = NULL,
</#if>
};
</#if>

<#if CONFIG_TCPIP_USE_HEAP == true>
<#if CONFIG_TCPIP_STACK_USE_HEAP_CONFIG == "TCPIP_STACK_HEAP_TYPE_INTERNAL_HEAP">
TCPIP_STACK_HEAP_INTERNAL_CONFIG tcpipHeapConfig =
{
    .heapType = TCPIP_STACK_HEAP_TYPE_INTERNAL_HEAP,
    .heapFlags = TCPIP_STACK_HEAP_USE_FLAGS,
    .heapUsage = TCPIP_STACK_HEAP_USAGE_CONFIG,
    .malloc_fnc = TCPIP_STACK_MALLOC_FUNC,
    .calloc_fnc = TCPIP_STACK_CALLOC_FUNC,
    .free_fnc = TCPIP_STACK_FREE_FUNC,
    .heapSize = TCPIP_STACK_DRAM_SIZE,
};
<#elseif CONFIG_TCPIP_STACK_USE_HEAP_CONFIG == "TCPIP_STACK_HEAP_TYPE_EXTERNAL_HEAP">
TCPIP_STACK_HEAP_EXTERNAL_CONFIG tcpipHeapConfig =
{
    .heapType = TCPIP_STACK_HEAP_TYPE_EXTERNAL_HEAP,
    .heapFlags = TCPIP_STACK_HEAP_USE_FLAGS,
    .heapUsage = TCPIP_STACK_HEAP_USAGE_CONFIG,
    .malloc_fnc = TCPIP_STACK_MALLOC_FUNC,
    .calloc_fnc = TCPIP_STACK_CALLOC_FUNC,
    .free_fnc = TCPIP_STACK_FREE_FUNC,
};
<#elseif CONFIG_TCPIP_STACK_USE_HEAP_CONFIG == "TCPIP_STACK_HEAP_TYPE_INTERNAL_HEAP_POOL">
TCPIP_STACK_HEAP_POOL_ENTRY tcpipHeapPoolEntryTbl[TCPIP_HEAP_POOL_ENTRIES_NUMBER] =
{
    // entrySize     nBlocks            // expansion Blocks
<#if CONFIG_TCPIP_HEAP_POOL_ENTRY_SIZE_IDX0?has_content>
    {  ${CONFIG_TCPIP_HEAP_POOL_ENTRY_SIZE_IDX0},       ${CONFIG_TCPIP_HEAP_POOL_ENTRY_BLOCKS_IDX0},    ${CONFIG_TCPIP_HEAP_POOL_ENTRY_EXP_BLOCKS_IDX0} },
</#if>
<#if CONFIG_TCPIP_HEAP_POOL_ENTRY_SIZE_IDX1?has_content>
    {  ${CONFIG_TCPIP_HEAP_POOL_ENTRY_SIZE_IDX1},       ${CONFIG_TCPIP_HEAP_POOL_ENTRY_BLOCKS_IDX1},    ${CONFIG_TCPIP_HEAP_POOL_ENTRY_EXP_BLOCKS_IDX1} },
</#if>
<#if CONFIG_TCPIP_HEAP_POOL_ENTRY_SIZE_IDX2?has_content>
    {  ${CONFIG_TCPIP_HEAP_POOL_ENTRY_SIZE_IDX2},       ${CONFIG_TCPIP_HEAP_POOL_ENTRY_BLOCKS_IDX2},    ${CONFIG_TCPIP_HEAP_POOL_ENTRY_EXP_BLOCKS_IDX2} },
</#if>
<#if CONFIG_TCPIP_HEAP_POOL_ENTRY_SIZE_IDX3?has_content>
    {  ${CONFIG_TCPIP_HEAP_POOL_ENTRY_SIZE_IDX3},       ${CONFIG_TCPIP_HEAP_POOL_ENTRY_BLOCKS_IDX3},    ${CONFIG_TCPIP_HEAP_POOL_ENTRY_EXP_BLOCKS_IDX3} },
</#if>
<#if CONFIG_TCPIP_HEAP_POOL_ENTRY_SIZE_IDX4?has_content>
    {  ${CONFIG_TCPIP_HEAP_POOL_ENTRY_SIZE_IDX4},       ${CONFIG_TCPIP_HEAP_POOL_ENTRY_BLOCKS_IDX4},    ${CONFIG_TCPIP_HEAP_POOL_ENTRY_EXP_BLOCKS_IDX4} },
</#if>
<#if CONFIG_TCPIP_HEAP_POOL_ENTRY_SIZE_IDX5?has_content>
    {  ${CONFIG_TCPIP_HEAP_POOL_ENTRY_SIZE_IDX5},       ${CONFIG_TCPIP_HEAP_POOL_ENTRY_BLOCKS_IDX5},    ${CONFIG_TCPIP_HEAP_POOL_ENTRY_EXP_BLOCKS_IDX5} },
</#if>
<#if CONFIG_TCPIP_HEAP_POOL_ENTRY_SIZE_IDX6?has_content>
    {  ${CONFIG_TCPIP_HEAP_POOL_ENTRY_SIZE_IDX6},       ${CONFIG_TCPIP_HEAP_POOL_ENTRY_BLOCKS_IDX6},    ${CONFIG_TCPIP_HEAP_POOL_ENTRY_EXP_BLOCKS_IDX6} },
</#if>
<#if CONFIG_TCPIP_HEAP_POOL_ENTRY_SIZE_IDX7?has_content>
    {  ${CONFIG_TCPIP_HEAP_POOL_ENTRY_SIZE_IDX7},       ${CONFIG_TCPIP_HEAP_POOL_ENTRY_BLOCKS_IDX7},    ${CONFIG_TCPIP_HEAP_POOL_ENTRY_EXP_BLOCKS_IDX7} },
</#if>
<#if CONFIG_TCPIP_HEAP_POOL_ENTRY_SIZE_IDX8?has_content>
    {  ${CONFIG_TCPIP_HEAP_POOL_ENTRY_SIZE_IDX8},       ${CONFIG_TCPIP_HEAP_POOL_ENTRY_BLOCKS_IDX8},    ${CONFIG_TCPIP_HEAP_POOL_ENTRY_EXP_BLOCKS_IDX8} },
</#if>
<#if CONFIG_TCPIP_HEAP_POOL_ENTRY_SIZE_IDX9?has_content>
    {  ${CONFIG_TCPIP_HEAP_POOL_ENTRY_SIZE_IDX9},       ${CONFIG_TCPIP_HEAP_POOL_ENTRY_BLOCKS_IDX9},    ${CONFIG_TCPIP_HEAP_POOL_ENTRY_EXP_BLOCKS_IDX9} },
</#if>
<#if CONFIG_TCPIP_HEAP_POOL_ENTRY_SIZE_IDX10?has_content>
    {  ${CONFIG_TCPIP_HEAP_POOL_ENTRY_SIZE_IDX10},      ${CONFIG_TCPIP_HEAP_POOL_ENTRY_BLOCKS_IDX10},   ${CONFIG_TCPIP_HEAP_POOL_ENTRY_EXP_BLOCKS_IDX10} },
</#if>
<#if CONFIG_TCPIP_HEAP_POOL_ENTRY_SIZE_IDX11?has_content>
    {  ${CONFIG_TCPIP_HEAP_POOL_ENTRY_SIZE_IDX11},      ${CONFIG_TCPIP_HEAP_POOL_ENTRY_BLOCKS_IDX11},   ${CONFIG_TCPIP_HEAP_POOL_ENTRY_EXP_BLOCKS_IDX11} },
</#if>
<#if CONFIG_TCPIP_HEAP_POOL_ENTRY_SIZE_IDX12?has_content>
    {  ${CONFIG_TCPIP_HEAP_POOL_ENTRY_SIZE_IDX12},      ${CONFIG_TCPIP_HEAP_POOL_ENTRY_BLOCKS_IDX12},   ${CONFIG_TCPIP_HEAP_POOL_ENTRY_EXP_BLOCKS_IDX12} },
</#if>
<#if CONFIG_TCPIP_HEAP_POOL_ENTRY_SIZE_IDX13?has_content>
    {  ${CONFIG_TCPIP_HEAP_POOL_ENTRY_SIZE_IDX13},      ${CONFIG_TCPIP_HEAP_POOL_ENTRY_BLOCKS_IDX13},   ${CONFIG_TCPIP_HEAP_POOL_ENTRY_EXP_BLOCKS_IDX13} },
</#if>
<#if CONFIG_TCPIP_HEAP_POOL_ENTRY_SIZE_IDX14?has_content>
    {  ${CONFIG_TCPIP_HEAP_POOL_ENTRY_SIZE_IDX14},      ${CONFIG_TCPIP_HEAP_POOL_ENTRY_BLOCKS_IDX14},   ${CONFIG_TCPIP_HEAP_POOL_ENTRY_EXP_BLOCKS_IDX14} },
</#if>
<#if CONFIG_TCPIP_HEAP_POOL_ENTRY_SIZE_IDX15?has_content>
    {  ${CONFIG_TCPIP_HEAP_POOL_ENTRY_SIZE_IDX15},      ${CONFIG_TCPIP_HEAP_POOL_ENTRY_BLOCKS_IDX15},   ${CONFIG_TCPIP_HEAP_POOL_ENTRY_EXP_BLOCKS_IDX15} },
</#if>
<#if CONFIG_TCPIP_HEAP_POOL_ENTRY_SIZE_IDX16?has_content>
    {  ${CONFIG_TCPIP_HEAP_POOL_ENTRY_SIZE_IDX16},      ${CONFIG_TCPIP_HEAP_POOL_ENTRY_BLOCKS_IDX16},   ${CONFIG_TCPIP_HEAP_POOL_ENTRY_EXP_BLOCKS_IDX16} },
</#if>
<#if CONFIG_TCPIP_HEAP_POOL_ENTRY_SIZE_IDX17?has_content>
    {  ${CONFIG_TCPIP_HEAP_POOL_ENTRY_SIZE_IDX17},      ${CONFIG_TCPIP_HEAP_POOL_ENTRY_BLOCKS_IDX17},   ${CONFIG_TCPIP_HEAP_POOL_ENTRY_EXP_BLOCKS_IDX17} },
</#if>
<#if CONFIG_TCPIP_HEAP_POOL_ENTRY_SIZE_IDX18?has_content>
    {  ${CONFIG_TCPIP_HEAP_POOL_ENTRY_SIZE_IDX18},      ${CONFIG_TCPIP_HEAP_POOL_ENTRY_BLOCKS_IDX18},   ${CONFIG_TCPIP_HEAP_POOL_ENTRY_EXP_BLOCKS_IDX18}},
</#if>
<#if CONFIG_TCPIP_HEAP_POOL_ENTRY_SIZE_IDX19?has_content>
    {  ${CONFIG_TCPIP_HEAP_POOL_ENTRY_SIZE_IDX19},      ${CONFIG_TCPIP_HEAP_POOL_ENTRY_BLOCKS_IDX19},   ${CONFIG_TCPIP_HEAP_POOL_ENTRY_EXP_BLOCKS_IDX19} },
</#if>
};

TCPIP_STACK_HEAP_POOL_CONFIG tcpipHeapConfig =
{
    .heapType = TCPIP_STACK_HEAP_TYPE_INTERNAL_HEAP_POOL,
    .heapFlags = TCPIP_STACK_HEAP_USE_FLAGS,
    .heapUsage = TCPIP_STACK_HEAP_USAGE_CONFIG,
    .malloc_fnc = TCPIP_STACK_MALLOC_FUNC,
    .calloc_fnc = TCPIP_STACK_CALLOC_FUNC,
    .free_fnc = TCPIP_STACK_FREE_FUNC,
    .nPoolEntries = TCPIP_HEAP_POOL_ENTRIES_NUMBER,
    .pEntries = tcpipHeapPoolEntryTbl,
    .expansionHeapSize = TCPIP_STACK_INTERNAL_HEAP_POOL_EXPANSION_SIZE,
};
</#if>
</#if>
 
const TCPIP_NETWORK_CONFIG __attribute__((unused))  TCPIP_HOSTS_CONFIGURATION[] =
{
<#macro genhostConfigs idx>
<#if .vars["CONFIG_TCPIP_STACK_NETWORK_CONFIG_IDX${idx}"]>
/*** Network Configuration Index 0 ***/
    {
        TCPIP_NETWORK_DEFAULT_INTERFACE_NAME_IDX${idx},       // interface
        TCPIP_NETWORK_DEFAULT_HOST_NAME_IDX${idx},            // hostName
        TCPIP_NETWORK_DEFAULT_MAC_ADDR_IDX${idx},             // macAddr
        TCPIP_NETWORK_DEFAULT_IP_ADDRESS_IDX${idx},           // ipAddr
        TCPIP_NETWORK_DEFAULT_IP_MASK_IDX${idx},              // ipMask
        TCPIP_NETWORK_DEFAULT_GATEWAY_IDX${idx},              // gateway
        TCPIP_NETWORK_DEFAULT_DNS_IDX${idx},                  // priDNS
        TCPIP_NETWORK_DEFAULT_SECOND_DNS_IDX${idx},           // secondDNS
        TCPIP_NETWORK_DEFAULT_POWER_MODE_IDX${idx},           // powerMode
        TCPIP_NETWORK_DEFAULT_INTERFACE_FLAGS_IDX${idx},      // startFlags
       &TCPIP_NETWORK_DEFAULT_MAC_DRIVER_IDX${idx},           // pMacObject
<#if .vars["CONFIG_TCPIP_NETWORK_INTERFACE_FLAG_IPV6_ADDRESS_IDX${idx}"]>
        TCPIP_NETWORK_DEFAULT_IPV6_ADDRESS_IDX${idx},         // ipv6Addr
        TCPIP_NETWORK_DEFAULT_IPV6_PREFIX_LENGTH_IDX${idx},   // ipv6PrefixLen
        TCPIP_NETWORK_DEFAULT_IPV6_GATEWAY_IDX${idx},         // ipv6Gateway 
</#if>
    },
</#if>
</#macro>
<#list 0..(CONFIG_TCPIP_STACK_NETWORK_CONFIG_NUMBER?number-1) as idx>
	<@genhostConfigs idx/>
</#list>
};

const TCPIP_STACK_MODULE_CONFIG TCPIP_STACK_MODULE_CONFIG_TBL [] =
{
<#if CONFIG_TCPIP_STACK_USE_IPV4 == true>
    {TCPIP_MODULE_IPV4,             0},
</#if>
<#if CONFIG_TCPIP_STACK_USE_ICMP_CLIENT == true || CONFIG_TCPIP_STACK_USE_ICMP_SERVER == true>
    {TCPIP_MODULE_ICMP,             0},                             // TCPIP_MODULE_ICMP
</#if>
<#if CONFIG_TCPIP_USE_ARP == true>
    {TCPIP_MODULE_ARP,              &tcpipARPInitData},             // TCPIP_MODULE_ARP
</#if>
<#if CONFIG_TCPIP_STACK_USE_IPV6 == true>
    {TCPIP_MODULE_IPV6,             &tcpipIPv6InitData},            // TCPIP_MODULE_IPV6
    {TCPIP_MODULE_ICMPV6,           0},                             // TCPIP_MODULE_ICMPV6
    {TCPIP_MODULE_NDP,              0},                             // TCPIP_MODULE_NDP
</#if>
<#if CONFIG_TCPIP_USE_UDP == true>
    {TCPIP_MODULE_UDP,              &tcpipUDPInitData},             // TCPIP_MODULE_UDP
</#if>
<#if CONFIG_TCPIP_USE_TCP == true>
    {TCPIP_MODULE_TCP,              &tcpipTCPInitData},             // TCPIP_MODULE_TCP
</#if>
<#if CONFIG_TCPIP_STACK_USE_DHCP_CLIENT == true>
    {TCPIP_MODULE_DHCP_CLIENT,      &tcpipDHCPInitData},            // TCPIP_MODULE_DHCP_CLIENT
</#if>
<#if CONFIG_TCPIP_STACK_USE_DHCP_SERVER == true>
    {TCPIP_MODULE_DHCP_SERVER,      &tcpipDHCPSInitData},           // TCPIP_MODULE_DHCP_SERVER
</#if>
<#if CONFIG_TCPIP_USE_ANNOUNCE == true>
    {TCPIP_MODULE_ANNOUNCE,         &tcpipAnnounceInitData},        // TCPIP_MODULE_ANNOUNCE
</#if>
<#if CONFIG_TCPIP_USE_DNS_CLIENT == true>
    {TCPIP_MODULE_DNS_CLIENT,       &tcpipDNSClientInitData},       // TCPIP_MODULE_DNS_CLIENT
</#if>
<#if CONFIG_TCPIP_USE_DNSS == true>
    {TCPIP_MODULE_DNS_SERVER,       &tcpipDNSServerInitData},       // TCPIP_MODULE_DNS_SERVER
</#if>
<#if CONFIG_TCPIP_USE_NBNS == true>
    {TCPIP_MODULE_NBNS,             &tcpipNBNSInitData},            // TCPIP_MODULE_NBNS
</#if>
<#if CONFIG_TCPIP_USE_SNTP_CLIENT == true>
    {TCPIP_MODULE_SNTP,             &tcpipSNTPInitData},            // TCPIP_MODULE_SNTP
</#if>

<#if CONFIG_TCPIP_STACK_USE_BERKELEY_API == true>
    {TCPIP_MODULE_BERKELEY,         &tcpipBerkeleyInitData},        // TCPIP_MODULE_BERKELEY
</#if>
<#if CONFIG_TCPIP_USE_FTP_MODULE == true>
    {TCPIP_MODULE_FTP_SERVER,       &tcpipFTPInitData},             // TCPIP_MODULE_FTP
</#if>
<#if CONFIG_TCPIP_STACK_USE_HTTP_SERVER == true>
    {TCPIP_MODULE_HTTP_SERVER,      &tcpipHTTPInitData},            // TCPIP_MODULE_HTTP_SERVER
</#if>
<#if CONFIG_TCPIP_STACK_USE_HTTP_NET_SERVER == true>
    {TCPIP_MODULE_HTTP_NET_SERVER,  &tcpipHTTPNetInitData},         // TCPIP_MODULE_HTTP_NET_SERVER
</#if>
<#if CONFIG_TCPIP_USE_TELNET == true>
    {TCPIP_MODULE_TELNET_SERVER,    &tcpipTelnetInitData},          // TCPIP_MODULE_TELNET_SERVER
</#if>
<#if CONFIG_TCPIP_USE_SNMP == true>
    {TCPIP_MODULE_SNMP_SERVER,      &tcpipSNMPInitData},            // TCPIP_MODULE_SNMP_SERVER
</#if>
<#if CONFIG_TCPIP_USE_SMTPC_CLIENT == true>
    {TCPIP_MODULE_SMTPC, &tcpipSMTPCInitData},                                  // TCPIP_MODULE_SMTPC,
</#if>
<#if CONFIG_TCPIP_USE_DDNS == true>
    {TCPIP_MODULE_DYNDNS_CLIENT,    &tcpipDDNSInitData},            // TCPIP_MODULE_DYNDNS_CLIENT,
</#if>
<#if CONFIG_TCPIP_USE_REBOOT_SERVER == true>
    {TCPIP_MODULE_REBOOT_SERVER,    0},                             // TCPIP_MODULE_REBOOT_SERVER,
</#if>
<#if CONFIG_TCPIP_USE_LINK_ZERO_CONFIG == true>
    {TCPIP_MODULE_ZCLL,             0},                             // TCPIP_MODULE_ZCLL,
</#if>
<#if CONFIG_TCPIP_USE_MULTI_CAST_DNS_ZERO_CONFIG == true>
    {TCPIP_MODULE_MDNS,             0},                             // TCPIP_MODULE_MDNS,
</#if>
<#if CONFIG_TCPIP_USE_TFTPC_MODULE == true>
    {TCPIP_MODULE_TFTP_CLIENT,      &tcpipTFTPCInitData},           // TCPIP_MODULE_TFTP_CLIENT
</#if>
<#if CONFIG_TCPIP_USE_TFTPS_MODULE == true>
    {TCPIP_MODULE_TFTP_SERVER,      0},           					// TCPIP_MODULE_TFTP_SERVER
</#if>
<#if CONFIG_TCPIP_USE_IGMP == true>
    {TCPIP_MODULE_IGMP, &tcpipIGMPInitData},            // TCPIP_MODULE_IGMP
</#if>
<#if CONFIG_TCPIP_USE_HEAP == true>
    { TCPIP_MODULE_MANAGER,         &tcpipHeapConfig },             // TCPIP_MODULE_MANAGER
</#if>
    // MAC modules
<#function checkInterface interface>
	<#list 0..(CONFIG_TCPIP_STACK_NETWORK_CONFIG_NUMBER?number-1) as idx>
		<#if .vars["CONFIG_TCPIP_STACK_NETWORK_CONFIG_IDX${idx}"] && (.vars["CONFIG_TCPIP_NETWORK_DEFAULT_INTERFACE_NAME_IDX${idx}"] == interface)>
			<#return true>
		</#if>
	</#list>
	<#return false>
</#function>
<#if checkInterface("PIC32INT")>
    {TCPIP_MODULE_MAC_PIC32INT,     &tcpipMACPIC32INTInitData},     // TCPIP_MODULE_MAC_PIC32INT
</#if>
<#if CONFIG_USE_DRV_WIFI == true>
 <#if CONFIG_DRV_WIFI_DEVICE == "MRF24WN">
    <#if checkInterface("MRF24WN")>
    {TCPIP_MODULE_MAC_MRF24WN,      &macMRF24WNConfigData},         // TCPIP_MODULE_MAC_MRF24WN
  </#if>
 <#elseif CONFIG_DRV_WIFI_DEVICE == "WINC1500">
    <#if checkInterface("WINC1500")>
    {TCPIP_MODULE_MAC_WINC1500,     &macWINC1500ConfigData},        // TCPIP_MODULE_MAC_WINC1500
  </#if>
 <#elseif CONFIG_DRV_WIFI_DEVICE == "WILC1000">
    <#if checkInterface("WILC1000")>
    {TCPIP_MODULE_MAC_WILC1000,     &macWILC1000ConfigData},        // TCPIP_MODULE_MAC_WILC1000
  </#if>
 </#if>
</#if>
<#if checkInterface("ENCX24J600")>
    {TCPIP_MODULE_MAC_ENCJ600,      &drvEncX24j600InitDataIdx0},    // TCPIP_MODULE_MAC_ENCJ600
</#if>

<#if checkInterface("ENC28J60")>
    {TCPIP_MODULE_MAC_ENCJ60,       &drvEnc28j60InitDataIdx0},      // TCPIP_MODULE_MAC_ENCJ60
</#if>
};

/*********************************************************************
 * Function:        SYS_MODULE_OBJ TCPIP_STACK_Init()
 *
 * PreCondition:    None
 *
 * Input:
 *
 * Output:          valid system module object if Stack and its componets are initialized
 *                  SYS_MODULE_OBJ_INVALID otherwise
 *
 * Overview:        The function starts the initialization of the stack.
 *                  If an error occurs, the SYS_ERROR() is called
 *                  and the function de-initialize itself and will return false.
 *
 * Side Effects:    None
 *
 * Note:            This function must be called before any of the
 *                  stack or its component routines are used.
 *
 ********************************************************************/

SYS_MODULE_OBJ TCPIP_STACK_Init()
{
    TCPIP_STACK_INIT    tcpipInit;

    tcpipInit.moduleInit.sys.powerState = SYS_MODULE_POWER_RUN_FULL;
    tcpipInit.pNetConf = TCPIP_HOSTS_CONFIGURATION;
    tcpipInit.nNets = sizeof (TCPIP_HOSTS_CONFIGURATION) / sizeof (*TCPIP_HOSTS_CONFIGURATION);
    tcpipInit.pModConfig = TCPIP_STACK_MODULE_CONFIG_TBL;
    tcpipInit.nModules = sizeof (TCPIP_STACK_MODULE_CONFIG_TBL) / sizeof (*TCPIP_STACK_MODULE_CONFIG_TBL);

    return TCPIP_STACK_Initialize(0, &tcpipInit.moduleInit);
}
// </editor-fold>
<#--
/*******************************************************************************
 End of File
*/
-->
