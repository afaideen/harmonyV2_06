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

APP_DATA appData;

// *****************************************************************************
// *****************************************************************************
// Section: Application Callback Functions
// *****************************************************************************
// *****************************************************************************
/******************************************************************************
  Function:
    static void APP_Bootloader_ForceEvent (void)

   Remarks:
    Sets a trigger to be passed to force bootloader callback.
    Run bootloader if switch_1 is pressed OR
    if memory location == '0xFFFFFFFF' otherwise jump to user
    application.
*/
int APP_Bootloader_ForceEvent(void)
{
    /* Check the switch press to trigger bootloader */
    if (BSP_SWITCH_STATE_PRESSED == BSP_SwitchStateGet(BTL_TRIGGER_SWITCH))
    {
        return (1);
    }

    /* Check the trigger memory location and return true/false. */
    if (*(uint32_t *)APP_RESET_ADDRESS == 0xFFFFFFFF)
        return (1);

    return (0);
}

/* TODO:  Add any necessary callback functions.
*/

// *****************************************************************************
// *****************************************************************************
// Section: Application Local Functions
// *****************************************************************************
// *****************************************************************************


/* TODO:  Add any necessary local functions.
*/


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

    // Register the bootloader callbacks
    BOOTLOADER_ForceBootloadRegister(APP_Bootloader_ForceEvent);

    /* TODO: Initialize your application's state machine and other
     * parameters.
     */
}

/* Array in the RAM to store the data */
#define ALIGN(x)                                 __attribute__((coherent, aligned(x)));
#define SIZE_DATABUFF                           0x1000 //0x400 = 1024, 0x1000 = 4096

//#define     NVM_MYMEMORY_ADDRESS                    (unsigned int)0x9D07D000
//#define     NVM_MYMEMORY_ADDRESS                    (unsigned int)0x9D001000 X
#define     NVM_MYMEMORY_ADDRESS                    (unsigned int)0x9D010000
//#define     NVM_MYMEMORY_ADDRESS                    (unsigned int)0x9D001000   X
//#define     NVM_MYMEMORY_ADDRESS                    (unsigned int)0x9D009000    X
#define APP_NVM_MYMEMORY_ADDRESS                   (KVA0_TO_KVA1((unsigned int *) NVM_MYMEMORY_ADDRESS))
unsigned int myMemory[SIZE_DATABUFF] __attribute__((space(prog), address(NVM_MYMEMORY_ADDRESS))) = {0x12345678, 0x9ABCDEF0};
 unsigned int *myptr = myMemory;
/******************************************************************************
  Function:
    void APP_Tasks ( void )

  Remarks:
    See prototype in app.h.
 */

void APP_Tasks ( void )
{

    /* Check the application's current state. */
    switch ( appData.state )
    {
        /* Application's initial state. */
        case APP_STATE_INIT:
        {
            bool appInitialized = true;


            if (appInitialized)
            {

                appData.state = APP_STATE_SERVICE_TASKS;
            }
            break;
        }

        case APP_STATE_SERVICE_TASKS:
        {
            static uint32_t cntr = 0;
            // Blink the LED
            if (cntr++ == 100000)
            {
                BSP_LEDToggle(BTL_LED);
                cntr = 0;
            }
            if(myMemory[512 - 1] == 512 - 1)
            {
                BSP_LED_2On();
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



/*******************************************************************************
 End of File
 */
