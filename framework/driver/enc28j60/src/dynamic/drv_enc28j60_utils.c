/*******************************************************************************
  ENC28J60 Driver Utilities
  Company:
    Microchip Technology Inc.

  File Name:
    drv_enc28j60_utils.c
  Summary:

  Description:
*******************************************************************************/
// DOM-IGNORE-BEGIN
/*******************************************************************************
Copyright (c) 2015 released Microchip Technology Inc.  All rights reserved.
Microchip licenses to you the right to use, modify, copy and distribute
Software only when embedded on a Microchip microcontroller or digital signal
controller that is integrated into your product or third party product
(pursuant to the sublicense terms in the accompanying license agreement).
You should refer to the license agreement accompanying this Software for
additional information regarding your rights and obligations.
SOFTWARE AND DOCUMENTATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND,
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
// DOM-IGNORE-END

#include "drv_enc28j60_utils.h"
#include "osal/osal.h"
#include "drv_enc28j60_local.h"

void DRV_ENC28J60_SetEvent(struct _DRV_ENC28J60_DriverInfo *  pDrvInst, TCPIP_MAC_EVENT events)
{
    events &= pDrvInst->eventMask;
    if (events == 0)
    {
        return;
    }
    OSAL_RESULT res = OSAL_MUTEX_Lock(&pDrvInst->drvMutex, OSAL_WAIT_FOREVER);
    res = res;
    SYS_ASSERT(res == OSAL_RESULT_TRUE, "Could not lock the driver mutex");

    pDrvInst->currentEvents |= events;
    (*pDrvInst->stackCfg.eventF)(events, pDrvInst->stackCfg.eventParam);

	res = OSAL_MUTEX_Unlock(&pDrvInst->drvMutex);
    res = res;
    SYS_ASSERT(res == OSAL_RESULT_TRUE, "Could not unlock the driver mutex");	

}




void DRV_ENC28J60_AddGpData(struct _DRV_ENC28J60_DriverInfo *  pDrvInst, uint16_t size)
{
    pDrvInst->txBufferRemaining -= size;
    pDrvInst->txPtrVal += size;
    if (pDrvInst->txPtrVal >=pDrvInst->encRamForAppStartAdr)
    {
        pDrvInst->txPtrVal = pDrvInst->encMemTxStart + (pDrvInst->txPtrVal - pDrvInst->encRamForAppStartAdr);
    }

}

// ENCJ60 debugging
//
volatile int DRV_ENC28J60_StayAssertLoop = 0;

void DRV_ENC28J60_Assert(bool cond, const char* message, int lineNo)
{
#if ((DRV_ENC28J60_DEBUG_LEVEL & DRV_ENC28J60_DEBUG_MASK_BASIC) != 0)

    if(cond == false)
    {
        SYS_CONSOLE_PRINT("ENC28J60 Assert: %s, in line: %d, \r\n", message, lineNo);
        while(DRV_ENC28J60_StayAssertLoop == 1);
    }
    
#endif  // ((DRV_ENC28J60_DEBUG_LEVEL & DRV_ENC28J60_DEBUG_MASK_BASIC) != 0)
}


