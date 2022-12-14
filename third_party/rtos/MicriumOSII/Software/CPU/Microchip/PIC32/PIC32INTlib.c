/********************************************************************
 * FileName:		PICxxINTlib.c
 * Dependencies:
 * Processor:		PICxx
 * Hardware:		N/A
 * Assembler:		N/A
 * Linker:		    N/A
 * Company:		    Microchip Technology, Inc.
 *
 * Software License Agreement:
 * The software supplied herewith by Microchip Technology Incorporated
 * (the ?Company?) for its PICmicro? Microcontroller is intended and
 * supplied to you, the Company?s customer, for use solely and
 * exclusively on Microchip PICmicro Microcontroller products. The
 * software is owned by the Company and/or its supplier, and is
 * protected under applicable copyright laws. All rights are reserved.
 * Any use in violation of the foregoing restrictions may subject the
 * user to criminal sanctions under applicable laws, as well as to
 * civil liability for the breach of the terms and conditions of this
 * license.
 *
 * THIS SOFTWARE IS PROVIDED IN AN ?AS IS? CONDITION. NO WARRANTIES,
 * WHETHER EXPRESS, IMPLIED OR STATUTORY, INCLUDING, BUT NOT LIMITED
 * TO, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A
 * PARTICULAR PURPOSE APPLY TO THIS SOFTWARE. THE COMPANY SHALL NOT,
 * IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL OR
 * CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.
 *
 *********************************************************************
 * File Description:
 *
 * INT Peripheral Library
 *
 * Change History:
 * Name         Date            Changes
 * S Justice    05/22/06        Initial Version
 *
 * $Id: PIC32INTlib.c,v 1.4 2006/09/27 17:20:07 C12923 Exp $
 * $Name:  $
 ********************************************************************/
#ifdef PIC24F
#error "this library can not be used with PIC24"
#endif

#include <int.h>


/*********************************************************************
 * Function:        void INTEnableSystemMultiVectoredInt(void)
 *
 * PreCondition:    EBASE and IntCtl.VS set up
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    System interrupts are turned on
 *
 * Overview:        Enables system wide multi-vectored interrupts
 ********************************************************************/
void INTEnableSystemMultiVectoredInt(void)
{
    unsigned int val;

    // set the CP0 cause IV bit high
    asm volatile("mfc0   %0,$13" : "=r"(val));
    val |= 0x00800000;
    asm volatile("mtc0   %0,$13" : "+r"(val));

    // set the CP0 status IE bit high to turn on interrupts
    INTEnableInterrupts();

}
/*********************************************************************
 * Function:       void INTEnableSystemSingleVectoredInt(void)
 *
 * PreCondition:    EBASE and IntCtrl.VS set up (VS = 0)
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    Single vectored interrupts are turned on
 *
 * Overview:        Enables system wide single vectored interrupts
 ********************************************************************/
void INTEnableSystemSingleVectoredInt(void)
{
    unsigned int val;

    // set the CP0 cause IV bit high
    asm volatile("mfc0   %0,$13" : "=r"(val));
    val |= 0x00800000;
    asm volatile("mtc0   %0,$13" : "+r"(val));

    asm volatile("mfc0   %0, $12" : "=r"(val));
    // set the CP0 status IM0 -IM7 bits high
    val |= 0x00000400;
    asm volatile("mtc0   %0, $12" : "+r"(val));
    // set the CP0 status IE bit high to turn on interrupts
    INTEnableInterrupts();
}
/*********************************************************************
 * Function:        void INTDisableSystemSingleVectoredInt(void)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    System interrupts are disabled and will not handle
 *                  any interrupt requests
 *
 * Overview:        Disables system interrupts
 ********************************************************************/
void INTDisableSystemSingleVectoredInt(void)
{
    unsigned int val;

    asm volatile("mfc0   %0, $12" : "=r"(val));
    val &= 0xFFFF00FF;
    asm volatile("mtc0   %0, $12" : "+r"(val));
    INTDisableInterrupts();
}
/*********************************************************************
 * Function:        unsigned int INTGetPendingInterrupt(void)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          The pending interrupt or invalid data
 *
 * Side Effects:    None
 *
 * Overview:        Gets the pending interrupt
 ********************************************************************/
unsigned int INTGetPendingInterrupt(void)
{
    unsigned int result;
    unsigned int i;
    unsigned int mask;
    unsigned int value;

    result = INT_NUM_IRQ;

    if((value = IFS0))
    {

        for(mask = 1, i = 0; mask > 0; mask <<= 1, i++)
        {
            if(mask & value)
                return i;
        }
    }

    if((value = IFS1))
    {

        for(mask = 1, i = 32; mask > 0; mask <<= 1, i++)
        {
            if(mask & value)
                return i;
        }
    }
#if 0
    if((value = IFS2))
    {

        for(mask = 1, i = 64; mask > 0; mask <<= 1, i++)
        {
            if(mask & value)
                return i;
        }
    }
#endif
    return INT_NUM_IRQ;
}
