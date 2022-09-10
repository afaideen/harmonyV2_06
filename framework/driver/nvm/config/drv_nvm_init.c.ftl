<#--
/*******************************************************************************
  NVM Driver Initialization File

  File Name:
    drv_nvm_init.c.ftl

  Summary:
    This file contains source code necessary to initialize the NVM driver.

  Description:
    This file contains source code necessary to initialize the system.  It
    implements the "SYS_Initialize" function, configuration bits, and allocates
    any necessary global system resources, such as the systemObjects structure
    that contains the object handles to all the MPLAB Harmony module objects in
    the system.
 *******************************************************************************/

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
<#if CONFIG_USE_DRV_NVM == true>
<#if CONFIG_USE_SYS_INT == true && CONFIG_DRV_NVM_INTERRUPT_MODE == true>
    /* Configure the Flash Controller Interrupt Priority */
    SYS_INT_VectorPrioritySet(${CONFIG_DRV_NVM_INTERRUPT_VECTOR}, ${CONFIG_DRV_NVM_INT_PRIO_NUM});
    /* Configure the Flash Controller Interrupt Sub Priority */
    SYS_INT_VectorSubprioritySet(${CONFIG_DRV_NVM_SYS_INTERRUPT_VECTOR}, ${CONFIG_DRV_NVM_INTERRUPT_SUB_PRIORITY});
</#if>
    /* Initialize the NVM Driver */
<#if CONFIG_DRV_NVM_DRIVER_MODE == "DYNAMIC">
    sysObj.drvNvm = DRV_NVM_Initialize(DRV_NVM_INDEX_0, (SYS_MODULE_INIT *)&drvNvmInit);
<#elseif CONFIG_DRV_NVM_DRIVER_MODE == "STATIC">
    sysObj.drvNvm = DRV_NVM_Initialize(DRV_NVM_INDEX_0, (SYS_MODULE_INIT *)NULL);
</#if>
</#if>
<#--
/*******************************************************************************
 End of File
*/
-->
