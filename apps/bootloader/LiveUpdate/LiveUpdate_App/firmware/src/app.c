/*******************************************************************************
  MPLAB Harmony Application Source File
  
  Company:
    Microchip Technology Inc.
  
  File Name:
    app.c

  Summary:
    This file contains the source code for the MPLAB Harmony application.

  Description:
    This file contains the source code for the MPLAB Harmony application.  It 
    implements the logic of the application's state machine and it may call 
    API routines of other MPLAB Harmony modules in the system, such as drivers,
    system services, and middleware.  However, it does not call any of the
    system interfaces (such as the "Initialize" and "Tasks" functions) of any of
    the modules in the system or make any assumptions about when those functions
    are called.  That is the responsibility of the configuration-specific system
    files.
 *******************************************************************************/

// DOM-IGNORE-BEGIN
/*******************************************************************************
Copyright (c) 2013-2014 released Microchip Technology Inc.  All rights reserved.

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


// *****************************************************************************
// *****************************************************************************
// Section: Included Files 
// *****************************************************************************
// *****************************************************************************

#include "app.h"

//#include "nvm.h"
#include "bootloader_nvm_interface.h"
void bootloader_TriggerReset(void);
void bootloader_NvmUpdateFlashSerial(uint32_t addr);
 void bootloader_SwapAndReset( void );
 void Enter_App(unsigned char btn);

bool APP_TIMER_Expired_ms(uint32_t * timer, uint32_t mseconds);
bool APP_TIMER_Set(uint32_t * timer);
void CORETIMER_DelayUs ( uint32_t delay_us);
void CORETIMER_DelayMs ( uint32_t delay_ms);
BSP_SWITCH_STATE APP_SWITCH_Pressed(uint32_t *t, BSP_SWITCH sw, uint32_t t_debouce);

// *****************************************************************************
// *****************************************************************************
// Section: Global Data Definitions
// *****************************************************************************
// *****************************************************************************

// *****************************************************************************
/* Application Data

  Summary:
    Holds application data

  Description:
    This structure holds the application's data.

  Remarks:
    This structure should be initialized by the APP_Initialize function.
    
    Application strings and buffers are be defined outside this structure.
*/

APP_DATA    appData;

// *****************************************************************************
// *****************************************************************************
// Section: Application Callback Functions
// *****************************************************************************
// *****************************************************************************
/******************************************************************************
  Function:
    static void APP_Bootloader_ForceEvent (void)

   Remarks:
    Forces the LiveUpdate application to enter into programming mode.
*/
int APP_Bootloader_ForceEvent(void)
{
    return (1);
}

void HandleBtnTask(void)
{
    if(BSP_SWITCH_4StateGet() == BSP_SWITCH_STATE_PRESSED)
    {
        /* Turn ON LED */
        BSP_LED_1On();
        BSP_LED_2Off();
    }
    else
    {
        /* Turn OFF LED */
        BSP_LED_2On();
        BSP_LED_1Off();
    }
}

// *****************************************************************************
// *****************************************************************************
// Section: Application Local Functions
// *****************************************************************************
// *****************************************************************************

void APP_TimerCallback( uintptr_t context, uint32_t alarmCount )
{
    static uint8_t count = 0;
    appData.tmrIntTriggered = true;
    BSP_LED_2Toggle();
    count++;
    if(count >= 5){
        appData.tmrIntTriggered = false;
        DRV_TMR_Stop(appData.tmrHandle);
        
    }

}
// *****************************************************************************
// *****************************************************************************
// Section: Application Initialization and State Machine Functions
// *****************************************************************************
// *****************************************************************************

/*******************************************************************************
  Function:
    void APP_Initialize ( void )

  Remarks:
    See prototype in app.h.
 */

void APP_Initialize ( void )
{
    /* Place the App state machine in its initial state. */
    appData.state = APP_STATE_INIT;
    appData.tmrIntTriggered = false;
//    appData.tmrHandle = DRV_TMR_Open(DRV_TMR_INDEX_0, 0);
    appData.tmrHandle = DRV_TMR_Open(DRV_TMR_INDEX_1, DRV_IO_INTENT_READWRITE);
    
    // Register the bootloader callbacks
    BOOTLOADER_ForceBootloadRegister(APP_Bootloader_ForceEvent);
    SYS_CONSOLE_MESSAGE("APP_Initialize...\r\n");
    /* Check from which Bank the Application is running */
    if ((NVMCON & _NVMCON_PFSWAP_MASK) != _NVMCON_PFSWAP_MASK)
    {
        BSP_RGB_LED_BLUEOn();
        appData.fw_bank_running = 1;
        SYS_CONSOLE_MESSAGE("\n\r####### Live Update Application running from Program Flash BANK 1 #######\n\r");
        SYS_CONSOLE_MESSAGE("\n\r####### Send new binary from host tool to program in BANK 2 #######\n\r");
    }
    else
    {
        BSP_RGB_LED_GREENOn();
        appData.fw_bank_running = 2;
        SYS_CONSOLE_MESSAGE("\n\r####### Live Update Application running from Program Flash BANK 2 #######\n\r");
        SYS_CONSOLE_MESSAGE("\n\r####### Send new binary from host tool to program in BANK 1 #######\n\r");
    }
    
    
}


/******************************************************************************
  Function:
    void APP_Tasks ( void )

  Remarks:
    See prototype in app.h.
 */

void APP_Tasks ( void )
{
    static uint32_t t1 = 0;
    static uint32_t t_sw1 = 0;
    static uint32_t t_sw2 = 0;
//    uint32_t* t_ptrsw1 = &t_sw1;
//    uint32_t *t_ptrsw2 = &t_sw2;

    /* Check the application's current state. */
    switch ( appData.state )
    {
        /* Application's initial state. */
        case APP_STATE_INIT:
        {
            bool appInitialized = true;
       
        
            if (appInitialized)
            {
                CORETIMER_DelayMs(1);
                appData.state = APP_STATE_SERVICE_TASKS;
                
                //How do i get 390625 value?
                //256 Tcy --> 1 ticks
                //1 Tcy --> 1/256 ticks
                //
                //1/100M --> 1/256 ticks
                //1s --> 1/256 * 100M = 390625
                //0.5s --> 1/256 * 100M/2 = 195312.5 = 195312
                DRV_TMR_AlarmRegister(appData.tmrHandle, 390625, true, 0, APP_TimerCallback);
                DRV_TMR_AlarmEnable(appData.tmrHandle, true);
                DRV_TMR_Start(appData.tmrHandle);
            }
            break;
        }

        case APP_STATE_SERVICE_TASKS:
        {
           
            if( APP_TIMER_Expired_ms(&t1, 50) )            
            {
                APP_TIMER_Set(&t1);
                BSP_LEDToggle(LED_NUMBER);
                
            }

            
            if( APP_SWITCH_Pressed(&t_sw1, BSP_SWITCH_1, 200) == BSP_SWITCH_STATE_PRESSED )
            {
//                Enter_App(1);
                BSP_LED_1Toggle();
                BSP_LED_2Off();
            }
            else if(APP_SWITCH_Pressed(&t_sw2, BSP_SWITCH_2, 200) == BSP_SWITCH_STATE_PRESSED )
            {
//                Enter_App(2);
                BSP_LED_1Off();
                BSP_LED_2Toggle();
            }

        

            break;
        }

        /* TODO: implement your application state machine.*/
        

        /* The default state should never be executed. */
        default:
        {
            /* TODO: Handle error in application's state machine. */
            break;
        }
    }
}



// void bootloader_SwapAndReset( void )
//{
//    /* Update Serial number of Inactive bank */
//    bootloader_NvmUpdateFlashSerial(UPPER_FLASH_SERIAL_START);
//
//    bootloader_TriggerReset();
//}

/*******************************************************************************
 End of File
 */
