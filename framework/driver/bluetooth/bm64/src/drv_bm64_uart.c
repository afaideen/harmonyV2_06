/*******************************************************************************
  BM64 Bluetooth Static Driver implementation

  Company:
    Microchip Technology Inc.

  File Name:
    drv_bm64_uart.c

  Summary:
   BM64 Bluetooth Static Driver source file for UART functions.

  Description:
    This file is the implementation of the internal functions of the BM64
    driver related to sending and receiving data to/from the BM64 over UART.
 
*******************************************************************************/

/*******************************************************************************
Copyright (c) 2017 released Microchip Technology Inc.  All rights reserved.

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

// *****************************************************************************
// *****************************************************************************
// Section: Included Files 
// *****************************************************************************
// *****************************************************************************

#include <xc.h>
#include "driver/bluetooth/bm64/drv_bm64.h"
#include "framework/driver/bluetooth/bm64/drv_bm64_local.h"
#include "driver/bluetooth/bm64/drv_bm64_command_send.h"
#include "driver/bluetooth/bm64/drv_bm64_uart.h"

// all #defines, enums and non-static functions and variables prefixed by
// DRV_BM64 to avoid name conflicts

static DRV_BM64_UART_DATA uartData;
volatile uint8_t DRV_BM64_eusartRxCount;

// called from DRV_BM64_Initialize, not the directly by the user
void DRV_BM64_UART_Initialize ( void )
{

    /* Place the App state machine in its initial state. */
    uartData.state = DRV_BM64_UART_STATE_INIT;
    
    uartData.rxHead = 0; 
    
    uartData.rxTail = 0;
    
    DRV_BM64_eusartRxCount=0;  
}


/******************************************************************************
  Function:
    void UartWriteBytesData ( uint8_t* pTxBuffer, uint16_t size )

  Return:
    true - if actual number of bytes transmitted is same as the argument size.
    false - in case of an error
 
  Remarks:
    
 */


void DRV_BM64_EUSART_Write(uint8_t txData)
{ 
    DRV_USART_WriteByte(uartData.drvUSARTHandle,txData);   
    
}

uint8_t DRV_BM64_EUSART_Read(void)
{
    uint8_t readByte;
    
    readByte=uartData.rxBuffer[uartData.rxTail++];
    
    if(uartData.rxTail >= RX_BUFFER_SIZE)
    {
        uartData.rxTail = 0;
    }
   
    DRV_BM64_eusartRxCount--;
    
    return readByte;
    
}

void DRV_BM64_UART_TransmitEventHandler(const SYS_MODULE_INDEX index)
{
     
    DRV_BM64_UART_TransferNextByte();

}

void DRV_BM64_UART_ReceiveEventHandler(const SYS_MODULE_INDEX index)
{
     
    while(DRV_USART_ReceiverBufferIsEmpty(uartData.drvUSARTHandle));
       uartData.rxBuffer[uartData.rxHead++] = DRV_USART_ReadByte(uartData.drvUSARTHandle);
        

    if(uartData.rxHead >= RX_BUFFER_SIZE)
    {
        uartData.rxHead = 0;
    }
    
    DRV_BM64_eusartRxCount++;
}
/******************************************************************************
  Function:
    void UART_Tasks ( void )

  Remarks:
    See prototype in app.h.
 */

 void DRV_BM64_UART_Tasks ( void )
{
    /* Check the application's current state. */
    switch ( uartData.state )
    {
        /* Application's initial state. */
        case DRV_BM64_UART_STATE_INIT:
        
            // drvUSARTHandle is the handle returned by the DRV_USART_Open function.
            uartData.drvUSARTHandle = DRV_USART_Open(DRV_USART_INDEX_0, 
                    DRV_IO_INTENT_READWRITE | DRV_IO_INTENT_NONBLOCKING);    
            
            // Register an event handler with driver. This is done once
            DRV_USART_ByteReceiveCallbackSet(DRV_USART_INDEX_0, DRV_BM64_UART_ReceiveEventHandler);
            DRV_USART_ByteTransmitCallbackSet(DRV_USART_INDEX_0, DRV_BM64_UART_TransmitEventHandler);



            if ( (DRV_HANDLE) DRV_HANDLE_INVALID != uartData.drvUSARTHandle)
            {
                uartData.state = DRV_BM64_UART_STATE_TRANSMIT;
            }

            break;
            
        case DRV_BM64_UART_STATE_TRANSMIT:
            if(!DRV_USART_TransmitBufferIsFull(uartData.drvUSARTHandle))
                DRV_BM64_UART_TransferNextByte();

            break;
        

        /* The default state should never be executed. */
        default:        
            /* TODO: Handle error in application's state machine. */
            break;        
    }
}

/*******************************************************************************
 End of File
 */
