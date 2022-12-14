/*******************************************************************************
  AK4954 CODEC Driver Dynamic implementation.

  Company:
    Microchip Technology Inc.

  File Name:
    drv_ak4954.c

  Summary:
    AK4954 CODEC Driver Dynamic implementation.

  Description:
    This file contains the Dynamic mode implementation of the AK4954 driver.
*******************************************************************************/
// DOM-IGNORE-BEGIN
/*******************************************************************************
Copyright (c) 2017 released Microchip Technology Inc.  All rights reserved.

Microchip licenses to you the right to use, modify, copy and distribute
Software only when embedded on a Microchip microcontroller or digital signal
controller that is integrated into your product or third party product
(pursuant to the sublicense terms in the accompanying license agreement).

You should refer to the license agreement accompanying this Software for
additional information regarding your rights and obligations.

SOFTWARE AND DOCUMENTATION ARE PROVIDED AS IS  WITHOUT  WARRANTY  OF  ANY  KIND,
EITHER EXPRESS  OR  IMPLIED,  INCLUDING  WITHOUT  LIMITATION,  ANY  WARRANTY  OF
MERCHANTABILITY, TITLE, NON-INFRINGEMENT AND FITNESS FOR A  PARTICULAR  PURPOSE.
IN NO EVENT SHALL MICROCHIP OR  ITS  LICENSORS  BE  LIABLE  OR  OBLIGATED  UNDER
CONTRACT, NEGLIGENCE, STRICT LIABILITY, CONTRIBUTION,  BREACH  OF  WARRANTY,  OR
OTHER LEGAL  EQUITABLE  THEORY  ANY  DIRECT  OR  INDIRECT  DAMAGES  OR  EXPENSES
INCLUDING BUT NOT LIMITED TO ANY  INCIDENTAL,  SPECIAL,  INDIRECT,  PUNITIVE  OR
CONSEQUENTIAL DAMAGES, LOST  PROFITS  OR  LOST  DATA,  COST  OF  PROCUREMENT  OF
SUBSTITUTE  GOODS,  TECHNOLOGY,  SERVICES,  OR  ANY  CLAIMS  BY  THIRD   PARTIES
(INCLUDING BUT NOT LIMITED TO ANY DEFENSE  THEREOF),  OR  OTHER  SIMILAR  COSTS.
*******************************************************************************/
// DOM-IGNORE-END

/*************************************************************
 * Include files.
 ************************************************************/
#include "driver/codec/ak4954/src/drv_ak4954_local.h"


// *****************************************************************************
/* Driver Hardware instance objects.

  Summary:
    Defines the hardware instances objects for the AK4954 CODEC

  Description:
    This data type defines the hardware instance objects that are available for
    AK4954 CODEC, so as to capture the hardware state of the instance.

  Remarks:
    Not all modes are available on all micro-controllers.
 */
DRV_AK4954_OBJ gDrvak4954Obj[DRV_AK4954_INSTANCES_NUMBER];


// *****************************************************************************
/* Driver Client instance objects.

  Summary:
    Defines the client instances objects

  Description:
    This data type defines the client instance objects that are available on
    AK4954, so as to capture the client state of the instance.
    It uses the configuration of maximum number of clients which can get
    registered per hardware instance.

  Remarks:
    Not all modes are available on all micro-controllers.
 */
DRV_AK4954_CLIENT_OBJ gDrvak4954ClientObj[DRV_AK4954_CLIENTS_NUMBER];


// *****************************************************************************
/* Driver common data object

  Summary:
    Defines the common data object

  Description:
    This object maintains data that is required by all AK4954
   driver instances

  Remarks:
    None
 */
DRV_AK4954_COMMON_DATA_OBJ gDrvak4954CommonDataObj;



// gDrvCommandBuffer is a queue container for AK4954 commands
AK4954_COMMAND_QUEUE gDrvCommandBuffer;
uint8_t command_array[20];



// *****************************************************************************
// *****************************************************************************
// Section: AK4954 CODEC Driver System Routine Implementations
// *****************************************************************************
// *****************************************************************************
/*   Function:
	SYS_MODULE_OBJ  DRV_AK4954_Initialize
	(
		const SYS_MODULE_INDEX drvIndex,
        const SYS_MODULE_INIT *const init
	);

  Summary:
    Initializes hardware and data for the instance of the AK4954 CODEC module

  Description:
    This routine initializes the AK4954 driver instance for the specified driver
    index, making it ready for clients to open and use it. The initialization
    data is specified by the init parameter. The initialization may fail if the
    number of driver objects allocated are insufficient or if the specified
    driver instance is already initialized.

  Precondition:


  Remarks:
    This routine must be called before any other AK4954 routine is called.

    This routine should only be called once during system initialization
    unless DRV_AK4954_Deinitialize is called to de-initialize the driver
    instance. This routine will NEVER block for hardware access.

 */
SYS_MODULE_OBJ  DRV_AK4954_Initialize
(
	const SYS_MODULE_INDEX drvIndex,
	const SYS_MODULE_INIT *const init
)
{
    DRV_AK4954_OBJ *drvObj;
    DRV_AK4954_INIT *ak4954Init;
    uint8_t index;


    /* Validate the driver index */
    if (drvIndex >= DRV_AK4954_INSTANCES_NUMBER)
    {
        SYS_DEBUG(0, "Invalid driver index \r\n");
        return SYS_MODULE_OBJ_INVALID;
    }

    if (true == gDrvak4954Obj[drvIndex].inUse)
    {
        /* Cannot initialize an object that is already in use. */
        SYS_DEBUG(0, "Instance already in use \r\n");
        return SYS_MODULE_OBJ_INVALID;
    }

    ak4954Init = (DRV_AK4954_INIT *) init;
    drvObj = (DRV_AK4954_OBJ *)&gDrvak4954Obj[drvIndex];

    /* Populate the driver object with the required data */
    drvObj->inUse                           = true;
    drvObj->status                          = SYS_STATUS_UNINITIALIZED;
    drvObj->numClients                      = 0;
    drvObj->i2sDriverModuleIndex            = ak4954Init->i2sDriverModuleIndex;
    drvObj->i2cDriverModuleIndex            = ak4954Init->i2cDriverModuleIndex;
    drvObj->samplingRate                    = DRV_AK4954_AUDIO_SAMPLING_RATE;
    drvObj->audioDataFormat                 = DRV_AK4954_AUDIO_DATA_FORMAT_MACRO;
    
    drvObj->drvI2CMasterHandle              = DRV_I2C_Open(DRV_AK4954_I2C_DRIVER_MODULE_INDEX_IDX0,
                                                            DRV_IO_INTENT_WRITE );
    if(drvObj->drvI2CMasterHandle == DRV_HANDLE_INVALID)
    {
        return SYS_MODULE_OBJ_INVALID;
    }

    /*Assigning the init volume to all supported audio channels*/
    for(index=0; index < DRV_AK4954_NUMBER_OF_CHANNELS; index++)
    {
        drvObj->volume[index] = ak4954Init->volume;
    }

    drvObj->isInInterruptContext            = false;

    /* Initialize */
    drvObj->commandCompleteCallback = (DRV_AK4954_COMMAND_EVENT_HANDLER)0;
    drvObj->commandContextData = -1;

    drvObj->mclk_multiplier = DRV_AK4954_MCLK_SAMPLE_FREQ_MULTPLIER;
    drvObj->delayDriverInitialization = ak4954Init->delayDriverInitialization;

    /* Create the hardware instance mutex. */
     if(OSAL_MUTEX_Create(&(drvObj->mutexDriverInstance)) != OSAL_RESULT_TRUE)
     {
        return SYS_MODULE_OBJ_INVALID;
     }

    /* Check if the global mutexes have been created. If not
       then create these. */
     if(!gDrvak4954CommonDataObj.membersAreInitialized)
     {
         /* This means that mutexes where not created. Create them. */
         if((OSAL_MUTEX_Create(&(gDrvak4954CommonDataObj.mutexClientObjects)) != OSAL_RESULT_TRUE))
         {
            return SYS_MODULE_OBJ_INVALID;
         }
         /* Set this flag so that global mutexes get allocated only once */
         gDrvak4954CommonDataObj.membersAreInitialized = true;
     }

    drvObj->status = SYS_STATUS_BUSY;

	// if delayed initialization is enabled, just go into a wait state
	// until application calls EnableInitialization routine
    drvObj->command = (drvObj->delayDriverInitialization) ?
        DRV_AK4954_COMMAND_NONE : DRV_AK4954_COMMAND_INIT_CLK_PDN_SET;
    
    gDrvCommandBuffer.queueIn = 0;
    gDrvCommandBuffer.queueOut = 0;

    /* Return the object structure */
    return ((SYS_MODULE_OBJ) drvObj);

} /* DRV_AK4954_Initialize */



// *****************************************************************************
/* Function:
    void DRV_AK4954_Deinitialize( SYS_MODULE_OBJ object)

  Summary:
    Deinitializes the specified instance of the AK4954 driver module

  Description:
    Deinitializes the specified instance of the AK4954 driver module, disabling
    its operation (and any hardware).  Invalidates all the internal data.

  Precondition:
    Function DRV_AK4954_Initialize should have been called before calling this
    function.

  Parameters:
    object          - Driver object handle, returned from the
                      DRV_AK4954_Initialize routine

  Returns:
    None.

  Remarks:
    Once the Initialize operation has been called, the De-initialize operation
    must be called before the Initialize operation can be called again. This
    routine will NEVER block waiting for hardware.
*/
void DRV_AK4954_Deinitialize( SYS_MODULE_OBJ object)
{
    DRV_AK4954_OBJ *drvObj;


    if (object == SYS_MODULE_OBJ_INVALID || object == (SYS_MODULE_OBJ)NULL)
    {
        /* Invalid object */
        SYS_DEBUG(0, "Invalid object \r\n");
        return;
    }


	drvObj = (DRV_AK4954_OBJ *) object;

    if (false == drvObj->inUse)
    {
        /* Cannot deinitialize an object that is
         * not already in use. */
        SYS_DEBUG(0, "Instance not in use \r\n");
        return;
    }

    /* Deallocate all the mutexes */
     if((OSAL_MUTEX_Delete(&(drvObj->mutexDriverInstance)) != OSAL_RESULT_TRUE))
     {
        SYS_DEBUG(0, "Unable to delete client handle mutex \r\n");
        return;
     }


//    DRV_I2S_Close (drvObj->i2sDriverClientHandleWrite);
//
//    DRV_I2S_Close (drvObj->i2sDriverClientHandleRead);

    /* Indicate that this object is not is use */
    drvObj->inUse = false;

    drvObj->numClients = 0;
    drvObj->status = SYS_STATUS_UNINITIALIZED;

    return;
}


// *****************************************************************************
/* Function:
    SYS_STATUS DRV_AK4954_Status( SYS_MODULE_OBJ object)

  Summary:
    Gets the current status of the AK4954 driver module.

  Description:
    This routine provides the current status of the AK4954 driver module.

  Precondition:
    Function DRV_AK4954_Initialize should have been called before calling this
    function.

  Parameters:
    object          - Driver object handle, returned from the
                      DRV_AK4954_Initialize routine

  Returns:
    SYS_STATUS_DEINITIALIZED  - Indicates that the driver has been
                                de-initialized

    SYS_STATUS_READY          - Indicates that any previous module operation
                                for the specified module has completed

    SYS_STATUS_BUSY           - Indicates that a previous module operation for
                                the specified module has not yet completed

    SYS_STATUS_ERROR          - Indicates that the specified module is in an
                                error state

  Remarks:
    A driver can opened only when its status is SYS_STATUS_READY.
*/
SYS_STATUS DRV_AK4954_Status( SYS_MODULE_OBJ object)
{
    DRV_AK4954_OBJ *drvObj;

    if (object == SYS_MODULE_OBJ_INVALID ||
        object < DRV_AK4954_INSTANCES_NUMBER)
    {
        SYS_DEBUG(0, "System Module Object is invalid \r\n");
        return SYS_STATUS_ERROR;
    }
    drvObj = (DRV_AK4954_OBJ *)object;

    /* Return the status of the driver object */
    return drvObj->status;
} /* DRV_AK4954_Status */

// *****************************************************************************
/* Function:
    void DRV_AK4954_EnableInitialization(SYS_MODULE_OBJ object);

  Summary:
   Enable delayed initialization of the driver.

  Description:
   If the AK4954 codec is sharing a RESET line with another peripheral, such as
   a Bluetooth module with its own driver, then the codec driver initialization
   has to be delayed until after the Bluetooth module has toggled its RESET pin.
   Once this has been accomplished, this function should be called to kick-start
   the codec driver initialization.

  Precondition:
    The DRV_AK4954_Initialize routine must have been called for the specified
    AK4954 driver instance.

  Parameters:
    object      - Object handle for the specified driver instance (returned from
                  DRV_AK4954_Initialize)
  Returns:
    None.

  Remarks:
    This is not needed for audio-only applications without a Bluetooth module.
*/
void DRV_AK4954_EnableInitialization(SYS_MODULE_OBJ object)
{
    DRV_AK4954_OBJ *drvObj;
    
    drvObj = (DRV_AK4954_OBJ *)object;

    if((false == drvObj->inUse))
    {
        /* This instance of the driver is not initialized. Don't
         * do anything */
        return;
    }

    if ((true == drvObj->delayDriverInitialization) &&
        (DRV_AK4954_COMMAND_NONE == drvObj->command))
    {
        drvObj->command = DRV_AK4954_COMMAND_INIT_CLK_PDN_SET;
    }
}

// *****************************************************************************
/* Function:
    bool DRV_AK4954_IsInitializationDelayed(SYS_MODULE_OBJ object);

  Summary:
   Checks if delayed initialization of the driver has been requested.

  Description:
   If the AK4954 codec is sharing a RESET line with another peripheral, such as
   a Bluetooth module with its own driver, then the codec driver initialization
   has to be delayed until after the Bluetooth module has toggled its RESET pin.
   This function returns true if that option has been selected in MHC in the
   checkbox: "Delay driver initialization (due to shared RESET pin)"

  Precondition:
    The DRV_AK4954_Initialize routine must have been called for the specified
    AK4954 driver instance.

  Parameters:
    object      - Object handle for the specified driver instance (returned from
                  DRV_AK4954_Initialize)
  Returns:
    true if the delayed initilization option has been enabled

  Remarks:
    This is not needed for audio-only applications without a Bluetooth module.
*/

bool DRV_AK4954_IsInitializationDelayed(SYS_MODULE_OBJ object)
{
    DRV_AK4954_OBJ *drvObj;
    
    drvObj = (DRV_AK4954_OBJ *)object;

    if((false == drvObj->inUse))
    {
        /* This instance of the driver is not initialized. Don't
         * do anything */
        return false;
    }

    return drvObj->delayDriverInitialization;   // return true or false
}

// *****************************************************************************
/* Function:
    void  DRV_AK4954_Tasks(SYS_MODULE_OBJ object);

  Summary:
    Maintains the driver's control and data interface state machine.

  Description:
    This routine is used to maintain the driver's internal control and data
    interface state machine and implement its control and data interface
    implementations.
    This function should be called from the SYS_Tasks() function.

  Precondition:
    The DRV_AK4954_Initialize routine must have been called for the specified
    AK4954 driver instance.

  Parameters:
    object      - Object handle for the specified driver instance (returned from
                  DRV_AK4954_Initialize)

  Returns:
    None.

  Remarks:
    This routine is normally not called directly by an application.  It is
    called by the system's Tasks routine (SYS_Tasks).

*/
void DRV_AK4954_Tasks(SYS_MODULE_OBJ object)
{
    DRV_AK4954_OBJ *drvObj;

    drvObj = (DRV_AK4954_OBJ *)object;

    if((false == drvObj->inUse))
    {
        /* This instance of the driver is not initialized. Don't
         * do anything */
        return;
    }

    _DRV_AK4954_ControlTasks(drvObj);

    return;
}


// *****************************************************************************
// *****************************************************************************
// Section: AK4954 CODEC Driver Client Routines
// *****************************************************************************
// *****************************************************************************
// *****************************************************************************
/* Function:
    DRV_HANDLE DRV_AK4954_Open
    (
		const SYS_MODULE_INDEX drvIndex,
		const DRV_IO_INTENT    ioIntent
	)

  Summary:
    Opens the specified AK4954 driver instance and returns a handle to it

  Description:
    This routine opens the specified AK4954 driver instance and provides a
    handle that must be provided to all other client-level operations to
    identify the caller and the instance of the driver. The ioIntent
    parameter defines how the client interacts with this driver instance.

    The DRV_IO_INTENT_BLOCKING and DRV_IO_INTENT_NONBLOCKING ioIntent
    options are not relevant to this driver. All the data transfer functions
    of this driver are non blocking.

    Only DRV_IO_INTENT_WRITE is a valid ioIntent option as AK4954 is DAC only.

    Specifying a DRV_IO_INTENT_EXCLUSIVE will cause the driver to provide
    exclusive access to this client. The driver cannot be opened by any
    other client.

  Precondition:
    Function DRV_AK4954_Initialize must have been called before calling this
    function.

  Parameters:
    drvIndex    - Identifier for the object instance to be opened

    ioIntent    - Zero or more of the values from the enumeration
                  DRV_IO_INTENT "or'd" together to indicate the intended use
                  of the driver. See function description for details.

  Returns:
    If successful, the routine returns a valid open-instance handle (a number
    identifying both the caller and the module instance).

    If an error occurs, the return value is DRV_HANDLE_INVALID. Error can occur
    - if the number of client objects allocated via DRV_AK4954_CLIENTS_NUMBER is insufficient.
    - if the client is trying to open the driver but driver has been opened exclusively by another client.
    - if the driver hardware instance being opened is not initialized or is invalid.
    - if the ioIntent options passed are not relevant to this driver.

  Remarks:
    The handle returned is valid until the DRV_AK4954_Close routine is called.
    This routine will NEVER block waiting for hardware.If the requested intent
    flags are not supported, the routine will return DRV_HANDLE_INVALID.  This
    function is thread safe in a RTOS application. It should not be called in an
    ISR.
*/
DRV_HANDLE DRV_AK4954_Open
(
	const SYS_MODULE_INDEX iDriver,
	const DRV_IO_INTENT ioIntent
)
{
    DRV_AK4954_CLIENT_OBJ *hClient;
    DRV_AK4954_OBJ *drvObj;
    uint32_t iClient;

    /* The iDriver value should be valid. It should be
     * less the number of driver object instances.
     */
    if (iDriver >= DRV_AK4954_INSTANCES_NUMBER)
    {
        SYS_DEBUG(0, "Bad Driver Index \r\n");
        return DRV_HANDLE_INVALID;
    }
    drvObj = (DRV_AK4954_OBJ *)&gDrvak4954Obj[iDriver];
    if (drvObj->status != SYS_STATUS_READY)
    {
        /* The AK4954  module should be ready */
        SYS_DEBUG(0, "Was the driver initialized? \r\n");
        return DRV_HANDLE_INVALID;
    }

    if ((drvObj->numClients > 0) && (true == drvObj->isExclusive))
    {
        /* Driver already opened in exclusive mode. Cannot open a new client. */
        SYS_DEBUG(0, "Cannot open a new client in exclusive mode \r\n");
        return DRV_HANDLE_INVALID;
    }

    if ((drvObj->numClients > 0) &&
        (DRV_IO_INTENT_EXCLUSIVE == (ioIntent & DRV_IO_INTENT_EXCLUSIVE)))
    {
        /*  A client Instance of driver is open.
            Cannot open the new client in exclusive mode */
            SYS_DEBUG(0, "Cannot open a new client in exclusive mode \r\n");
            return DRV_HANDLE_INVALID;
    }

    iClient = 0;
    hClient = (DRV_AK4954_CLIENT_OBJ *)&gDrvak4954ClientObj[iClient];

    /* Grab client object mutex here */
    if(OSAL_MUTEX_Lock(&(gDrvak4954CommonDataObj.mutexClientObjects), OSAL_WAIT_FOREVER) == OSAL_RESULT_TRUE)
    {
        /* Setup client operations */
        /* Find available slot in array of client objects */
        for (; iClient < DRV_AK4954_CLIENTS_NUMBER; iClient++)
        {
            if (false == hClient->inUse)
            {
                /* Set the exlusive mode for the driver instance */
                if (DRV_IO_INTENT_EXCLUSIVE == (ioIntent & DRV_IO_INTENT_EXCLUSIVE))
                {
                    drvObj->isExclusive = true;
                }

                if(DRV_IO_INTENT_READWRITE == (ioIntent & DRV_IO_INTENT_READWRITE))
                {
                    hClient->ioIntent = DRV_IO_INTENT_READWRITE;
					drvObj->i2sDriverHandle = DRV_I2S_Open(drvObj->i2sDriverModuleIndex,
                        (DRV_IO_INTENT_READWRITE | DRV_IO_INTENT_NONBLOCKING));

                }
                else if(DRV_IO_INTENT_WRITE == (ioIntent & DRV_IO_INTENT_READWRITE))
                {
                    hClient->ioIntent = DRV_IO_INTENT_WRITE;
                    drvObj->i2sDriverClientHandleWrite = DRV_I2S_Open(drvObj->i2sDriverModuleIndex,
                        (DRV_IO_INTENT_WRITE | DRV_IO_INTENT_NONBLOCKING));
                    drvObj->i2sDriverHandle = drvObj->i2sDriverClientHandleWrite;
                }
                else if(DRV_IO_INTENT_READ == (ioIntent & DRV_IO_INTENT_READWRITE))
                {
                    hClient->ioIntent = DRV_IO_INTENT_READ;
                    drvObj->i2sDriverClientHandleRead = DRV_I2S_Open(drvObj->i2sDriverModuleIndex,
                        (DRV_IO_INTENT_READ | DRV_IO_INTENT_NONBLOCKING));
                    drvObj->i2sDriverHandle = drvObj->i2sDriverClientHandleRead;
                }
                else
                {
                    SYS_DEBUG(0, "i2s DRV_I2S_Open Error");
                }

                DRV_I2S_TransmitErrorIgnore(drvObj->i2sDriverHandle, true);
                DRV_I2S_ReceiveErrorIgnore(drvObj->i2sDriverHandle, true);
                DRV_I2S_BaudSet(drvObj->i2sDriverHandle,
                            (drvObj->samplingRate * (DRV_AK4954_BCLK_BIT_CLK_DIVISOR)),
                            drvObj->samplingRate);
                hClient->ioIntent |= DRV_IO_INTENT_NONBLOCKING;

                /* Remember which AK4954 driver instance owns me */
                hClient->inUse  = true;
                hClient->hDriver = drvObj;
                hClient->pEventCallBack = NULL;

                drvObj->numClients++;
                /* We have found a client object
                 * Release the mutex and return with
                 * the driver handle */
                /* An operation mode is needed */
                if((OSAL_MUTEX_Unlock(&(gDrvak4954CommonDataObj.mutexClientObjects))) != OSAL_RESULT_TRUE)
                {
                    SYS_DEBUG(0, "Unable to unlock open routine mutex \r\n");
                    return DRV_HANDLE_INVALID;
                }
                /* Return the client object */
                return (DRV_HANDLE) hClient;
            }
            hClient++;
        }
        /* Could not find a client object. Release the mutex and
         * return with an invalid handle. */
        if((OSAL_MUTEX_Unlock(&(gDrvak4954CommonDataObj.mutexClientObjects))) != OSAL_RESULT_TRUE)
        {
            SYS_DEBUG(0, "Unable to unlock open routine mutex \r\n");
        }
    }
    return DRV_HANDLE_INVALID;
}

// *****************************************************************************
/* Function:
    void DRV_AK4954_Close( DRV_Handle handle )

  Summary:
    Closes an opened-instance of the AK4954 driver

  Description:
    This routine closes an opened-instance of the AK4954 driver, invalidating the
    handle. Any buffers in the driver queue that were submitted by this client
    will be removed.  After calling this routine, the handle passed in "handle"
    must not be used with any of the remaining driver routines.  A new handle must
    be obtained by calling DRV_AK4954_Open before the caller may use the driver
    again

  Remarks:

    Usually there is no need for the driver client to verify that the Close
    operation has completed.  The driver will abort any ongoing operations
    when this routine is called.
*/
void DRV_AK4954_Close( const DRV_HANDLE handle)
{
    DRV_AK4954_CLIENT_OBJ *clientObj;
    DRV_AK4954_OBJ *drvObj;


    if(handle == DRV_HANDLE_INVALID || (DRV_HANDLE)NULL == handle)
    {
        SYS_DEBUG(0, "Invalid Driver Handle \r\n");
        return;
    }

    clientObj = (DRV_AK4954_CLIENT_OBJ *) handle;
    if (false == clientObj->inUse)
    {
        SYS_DEBUG(0, "Invalid Driver Handle \r\n");
        return;
    }

    drvObj = (DRV_AK4954_OBJ *) clientObj->hDriver;


    if(DRV_IO_INTENT_READ == (clientObj->ioIntent & DRV_IO_INTENT_READWRITE))
    {
        DRV_I2S_Close (drvObj->i2sDriverClientHandleRead);
    }
    else if(DRV_IO_INTENT_WRITE == (clientObj->ioIntent & DRV_IO_INTENT_READWRITE))
    {
        DRV_I2S_Close (drvObj->i2sDriverClientHandleWrite);

    }
    else if(DRV_IO_INTENT_READWRITE == (clientObj->ioIntent & DRV_IO_INTENT_READWRITE))
    {
		DRV_I2S_Close (drvObj->i2sDriverHandle);

    }

    /* De-allocate the object */
    clientObj->inUse = false;
    /* Reduce the number of clients */
    drvObj->numClients--;
    return;
} /* DRV_AK4954_Close */


// *****************************************************************************
/*
Function:
	void DRV_AK4954_BufferAddWrite
	(
		const DRV_HANDLE handle,
		DRV_AK4954_BUFFER_HANDLE *bufferHandle,
		void *buffer, size_t size
	)

  Summary:
    Schedule a non-blocking driver write operation.

  Description:
    This function schedules a non-blocking write operation. The function returns
    with a valid buffer handle in the bufferHandle argument if the write request
    was scheduled successfully. The function adds the request to the hardware
    instance transmit queue and returns immediately. While the request is in the
    queue, the application buffer is owned by the driver and should not be
    modified.  The function returns DRV_AK4954_BUFFER_HANDLE_INVALID
    - if a buffer could not be allocated to the request
    - if the input buffer pointer is NULL
    - if the buffer size is 0.
    - if the queue is full or the queue depth is insufficient
    If the requesting client registered an event callback with the driver,
    the driver will issue a DRV_AK4954_BUFFER_EVENT_COMPLETE event if the buffer
    was processed successfully of DRV_AK4954_BUFFER_EVENT_ERROR event if the
    buffer was not processed successfully.

  Precondition:
    The DRV_AK4954_Initialize routine must have been called for the specified
    AK4954 device instance and the DRV_AK4954_Status must have returned
    SYS_STATUS_READY.

    DRV_AK4954_Open must have been called to obtain a valid opened device handle.

    DRV_IO_INTENT_WRITE ust have been specified in the DRV_AK4954_Open call.

  Parameters:
    handle       - Handle of the AK4954 instance as return by the
                   DRV_AK4954_Open function.
    buffer       - Data to be transmitted.
    size         - Buffer size in bytes.
    bufferHandle - Pointer to an argument that will contain the
                   return buffer handle.

  Returns:
    The bufferHandle parameter will contain the return buffer handle. This will be
    DRV_AK4954_BUFFER_HANDLE_INVALID if the function was not successful.

   Remarks:
    This function is thread safe in a RTOS application. It can be called from
    within the AK4954 Driver Buffer Event Handler that is registered by this
    client. It should not be called in the event handler associated with another
    AK4954 driver instance. It should not otherwise be called directly in an ISR.

*/
void DRV_AK4954_BufferAddWrite
(
	const DRV_HANDLE handle,
	DRV_AK4954_BUFFER_HANDLE *bufferHandle,
	void *buffer, size_t size
)
{
    DRV_AK4954_CLIENT_OBJ *clientObj;
    DRV_AK4954_OBJ *drvObj;

    /* The Client and driver objects from the handle */
    clientObj = (DRV_AK4954_CLIENT_OBJ *) handle;
    drvObj = (DRV_AK4954_OBJ *) clientObj->hDriver;

    /* We first check the arguments and initialize the
     * buffer handle */
    if(bufferHandle != NULL)
    {
        *bufferHandle = DRV_AK4954_BUFFER_HANDLE_INVALID;
    }


    /* See if the handle is still valid */
    if(false == clientObj->inUse)
    {
        SYS_DEBUG(0, "Invalid Driver Handle \r\n");
        return;

    }

    /* Grab a mutex. */
    if (OSAL_MUTEX_Lock(&(drvObj->mutexDriverInstance), OSAL_WAIT_FOREVER) == OSAL_RESULT_TRUE)
    {
        ;
    }
    else
    {
        /* The mutex acquisition timed out. Return with an
         * invalid handle. This code will not execute
         * if there is no RTOS. */
        return;
    }


    {

        DRV_I2S_BUFFER_HANDLE i2sBufferHandle = DRV_I2S_BUFFER_HANDLE_INVALID;
        DRV_I2S_BufferAddWrite(drvObj->i2sDriverClientHandleWrite, &i2sBufferHandle,
                                    (uint8_t *) buffer, size);

        if(i2sBufferHandle != DRV_I2S_BUFFER_HANDLE_INVALID)
        {
            *bufferHandle = (DRV_AK4954_BUFFER_HANDLE)i2sBufferHandle;
        }
        else
        {
            *bufferHandle = DRV_AK4954_BUFFER_HANDLE_INVALID;
        }
    }


        if((OSAL_MUTEX_Unlock(&(drvObj->mutexDriverInstance))) != OSAL_RESULT_TRUE)
        {
            SYS_DEBUG(0, "Unable to DriverInstance mutex \r\n");
        }
    return;
} /* DRV_AK4954_BufferAddWrite */

// *****************************************************************************
/* Function:
	void DRV_AK4954_BufferAddWriteRead
        (
                const DRV_HANDLE handle,
                DRV_AK4954_BUFFER_HANDLE *bufferHandle,
                void *transmitBuffer,
                void *receiveBuffer,
                size_t size
        )

  Summary:
    Schedule a non-blocking driver write-read operation.
	<p><b>Implementation:</b> Dynamic</p>

  Description:
    This function schedules a non-blocking write-read operation. The function
    returns with a valid buffer handle in the bufferHandle argument if the
    write-read request was scheduled successfully. The function adds the request
    to the hardware instance queue and returns immediately. While the request is
    in the queue, the application buffer is owned by the driver and should not
    be modified. The function returns DRV_AK4954_BUFFER_EVENT_COMPLETE:
    - if a buffer could not be allocated to the request
    - if the input buffer pointer is NULL
    - if the client opened the driver for read only or write only
    - if the buffer size is 0
    - if the queue is full or the queue depth is insufficient
    If the requesting client registered an event callback with the driver,
    the driver will issue a DRV_AK4954_BUFFER_EVENT_COMPLETE event if the buffer
    was processed successfully of DRV_AK4954_BUFFER_EVENT_ERROR event if the
    buffer was not processed successfully.

  Remarks:
    This function is thread safe in a RTOS application. It can be called from
    within the AK4954 Driver Buffer Event Handler that is registered by this
    client. It should not be called in the event handler associated with another
    AK4954 driver instance. It should not otherwise be called directly in an ISR.

    This function is useful when there is valid read expected for every
    AK4954 write. The transmit and receive size must be same.

*/
void DRV_AK4954_BufferAddWriteRead
(
    const DRV_HANDLE handle,
    DRV_AK4954_BUFFER_HANDLE	*bufferHandle,
    void *transmitBuffer, void *receiveBuffer,
    size_t size
)
{
    DRV_AK4954_CLIENT_OBJ *clientObj;

    DRV_AK4954_OBJ *drvObj;

    /* The Client and driver objects from the handle */
    clientObj = (DRV_AK4954_CLIENT_OBJ *) handle;
    drvObj = (DRV_AK4954_OBJ *) clientObj->hDriver;

    /* We first check the arguments and initialize the
     * buffer handle */
    if(bufferHandle != NULL)
    {
        *bufferHandle = DRV_AK4954_BUFFER_HANDLE_INVALID;
    }


    /* See if the handle is still valid */
    if(false == clientObj->inUse)
    {
        SYS_DEBUG(0, "Invalid Driver Handle \r\n");
        return;

    }

    /* Grab a mutex. */
    if (OSAL_MUTEX_Lock(&(drvObj->mutexDriverInstance), OSAL_WAIT_FOREVER) == OSAL_RESULT_TRUE)
    {
        ;
    }
    else
    {
        /* The mutex acquisition timed out. Return with an
         * invalid handle. This code will not execute
         * if there is no RTOS. */
        return;
    }
    {

        DRV_I2S_BUFFER_HANDLE i2sBufferHandle = DRV_I2S_BUFFER_HANDLE_INVALID;
        DRV_I2S_BufferAddWriteRead(drvObj->i2sDriverHandle, &i2sBufferHandle,
                                    (uint8_t *) transmitBuffer, (uint8_t *) receiveBuffer, size);

            if(i2sBufferHandle != DRV_I2S_BUFFER_HANDLE_INVALID)
            {
                *bufferHandle = (DRV_AK4954_BUFFER_HANDLE)i2sBufferHandle;
            }
            else
            {
                *bufferHandle = DRV_AK4954_BUFFER_HANDLE_INVALID;
            }
    }

    /* Release mutex */
    if((OSAL_MUTEX_Unlock(&(drvObj->mutexDriverInstance))) != OSAL_RESULT_TRUE)
    {
        SYS_DEBUG(0, "Unable to DriverInstance mutex \r\n");
    }
    return;
} /* DRV_AK4954_BufferAddWriteRead */
// *****************************************************************************
/*
Function:
	void DRV_AK4954_BufferAddRead
	(
		const DRV_HANDLE handle,
		DRV_AK4954_BUFFER_HANDLE *bufferHandle,
		void *buffer, size_t size
	)

  Summary:
    Schedule a non-blocking driver write operation.

  Description:
    This function schedules a non-blocking write operation. The function returns
    with a valid buffer handle in the bufferHandle argument if the write request
    was scheduled successfully. The function adds the request to the hardware
    instance transmit queue and returns immediately. While the request is in the
    queue, the application buffer is owned by the driver and should not be
    modified.  The function returns DRV_AK4954_BUFFER_HANDLE_INVALID
    - if a buffer could not be allocated to the request
    - if the input buffer pointer is NULL
    - if the buffer size is 0.
    - if the queue is full or the queue depth is insufficient
    If the requesting client registered an event callback with the driver,
    the driver will issue a DRV_AK4954_BUFFER_EVENT_COMPLETE event if the buffer
    was processed successfully of DRV_AK4954_BUFFER_EVENT_ERROR event if the
    buffer was not processed successfully.

  Precondition:
    The DRV_AK4954_Initialize routine must have been called for the specified
    AK4954 device instance and the DRV_AK4954_Status must have returned
    SYS_STATUS_READY.

    DRV_AK4954_Open must have been called to obtain a valid opened device handle.

    DRV_IO_INTENT_WRITE ust have been specified in the DRV_AK4954_Open call.

  Parameters:
    handle       - Handle of the AK4954 instance as return by the
                   DRV_AK4954_Open function.
    buffer       - Data to be transmitted.
    size         - Buffer size in bytes.
    bufferHandle - Pointer to an argument that will contain the
                   return buffer handle.

  Returns:
    The bufferHandle parameter will contain the return buffer handle. This will be
    DRV_AK4954_BUFFER_HANDLE_INVALID if the function was not successful.

   Remarks:
    This function is thread safe in a RTOS application. It can be called from
    within the AK4954 Driver Buffer Event Handler that is registered by this
    client. It should not be called in the event handler associated with another
    AK4954 driver instance. It should not otherwise be called directly in an ISR.

*/
void DRV_AK4954_BufferAddRead
(
	const DRV_HANDLE handle,
	DRV_AK4954_BUFFER_HANDLE *bufferHandle,
	void *buffer, size_t size
)
{
    DRV_AK4954_CLIENT_OBJ *clientObj;

    DRV_AK4954_OBJ *drvObj;

    /* The Client and driver objects from the handle */
    clientObj = (DRV_AK4954_CLIENT_OBJ *) handle;
    drvObj = (DRV_AK4954_OBJ *) clientObj->hDriver;

    /* We first check the arguments and initialize the
     * buffer handle */
    if(bufferHandle != NULL)
    {
        *bufferHandle = DRV_AK4954_BUFFER_HANDLE_INVALID;
    }


    /* See if the handle is still valid */
    if(false == clientObj->inUse)
    {
        SYS_DEBUG(0, "Invalid Driver Handle \r\n");
        return;

    }

    /* Grab a mutex. */
    if (OSAL_MUTEX_Lock(&(drvObj->mutexDriverInstance), OSAL_WAIT_FOREVER) == OSAL_RESULT_TRUE)
    {
        ;
    }
    else
    {
        /* The mutex acquisition timed out. Return with an
         * invalid handle. This code will not execute
         * if there is no RTOS. */
        return;
    }

    {

        DRV_I2S_BUFFER_HANDLE i2sBufferHandle = DRV_I2S_BUFFER_HANDLE_INVALID;
        DRV_I2S_BufferAddRead( drvObj->i2sDriverClientHandleRead, &i2sBufferHandle,
                                    (uint8_t *) buffer, size);


            if(i2sBufferHandle != DRV_I2S_BUFFER_HANDLE_INVALID)
            {
                *bufferHandle = (DRV_AK4954_BUFFER_HANDLE)i2sBufferHandle;
            }
            else
            {
                *bufferHandle = DRV_AK4954_BUFFER_HANDLE_INVALID;
            }
    }
    /* Release mutex */
    if((OSAL_MUTEX_Unlock(&(drvObj->mutexDriverInstance))) != OSAL_RESULT_TRUE)
    {
        SYS_DEBUG(0, "Unable to DriverInstance mutex \r\n");
    }
    
    return;
} /* DRV_AK4954_BufferAddRead */
// *****************************************************************************
/*
  Function:
	void DRV_AK4954_BufferEventHandlerSet
	(
		DRV_HANDLE handle,
		const DRV_AK4954_BUFFER_EVENT_HANDLER eventHandler,
		const uintptr_t contextHandle
	)

  Summary:
    This function allows a client to identify a buffer event handling function
    for the driver to call back when queued buffer transfers have finished.

  Description:
    This function allows a client to identify a buffer event handling function
    for the driver to call back when queued buffer transfers have finished.
    When a client calls DRV_AK4954_BufferAddWrite function, it is provided with
    a handle identifying  the buffer that was added to the driver's buffer queue.
    The driver will pass this handle back to the client by calling "eventHandler"
    function when the buffer transfer has completed.

    The event handler should be set before the client performs any "buffer add"
    operations that could generate events. The event handler once set, persists
    until the client closes the driver or sets another event handler (which
    could be a "NULL" pointer to indicate no callback).

  Precondition:
    The DRV_AK4954_Initialize routine must have been called for the specified
    AK4954 driver instance.

    DRV_AK4954_Open must have been called to obtain a valid opened device handle.

  Parameters:
    handle       - A valid open-instance handle, returned from the driver's
                   open routine
    eventHandler - Pointer to the event handler function.
    context      - The value of parameter will be passed back to the client
                   unchanged, when the eventHandler function is called.  It can
                   be used to identify any client specific data object that
                   identifies the instance of the client module (for example,
                   it may be a pointer to the client module's state structure).

  Returns:
    None.
  Remarks:
    If the client does not want to be notified when the queued buffer transfer
    has completed, it does not need to register a callback.
*/
void DRV_AK4954_BufferEventHandlerSet
(
	DRV_HANDLE handle,
	const DRV_AK4954_BUFFER_EVENT_HANDLER eventHandler,
	const uintptr_t contextHandle
)
{
    DRV_AK4954_CLIENT_OBJ *clientObj;
    DRV_AK4954_OBJ *drvObj;

    if((DRV_HANDLE_INVALID == handle) || (0 == handle))
    {
        /* This means the handle is invalid */
        SYS_DEBUG(0, "Handle is invalid \r\n");
        return;
    }


    /* Assing the event handler and the context */
    clientObj = (DRV_AK4954_CLIENT_OBJ *) handle;
    if(false == clientObj->inUse)
    {
        SYS_DEBUG(0, "Invalid driver handle \r\n");
        return;
    }
    drvObj = clientObj->hDriver;
    /* Set the Event Handler and context */
    clientObj->pEventCallBack = eventHandler;
    clientObj->hClientArg = contextHandle;

    if((clientObj->ioIntent & DRV_IO_INTENT_READWRITE) == DRV_IO_INTENT_READWRITE)
    {

        DRV_I2S_BufferEventHandlerSet(drvObj->i2sDriverHandle,
        (DRV_I2S_BUFFER_EVENT_HANDLER) _DRV_AK4954_I2SBufferEventHandler,
        (uintptr_t)(clientObj));
    }
    else if((clientObj->ioIntent & DRV_IO_INTENT_READWRITE) == DRV_IO_INTENT_WRITE)
    {
        DRV_I2S_BufferEventHandlerSet(drvObj->i2sDriverClientHandleWrite,
        (DRV_I2S_BUFFER_EVENT_HANDLER) _DRV_AK4954_I2SBufferEventHandler,
        (uintptr_t)(clientObj));
    }
    else if((clientObj->ioIntent & DRV_IO_INTENT_READWRITE) == DRV_IO_INTENT_READ)
    {
        DRV_I2S_BufferEventHandlerSet(drvObj->i2sDriverClientHandleRead,
        (DRV_I2S_BUFFER_EVENT_HANDLER) _DRV_AK4954_I2SBufferEventHandler,
        (uintptr_t)(clientObj));
    }

    return;
} /* DRV_AK4954_BufferWriteEventHandlerSet */
void DRV_AK4954_I2SBufferHandlerSet
(
	DRV_HANDLE handle,
        DRV_I2S_BUFFER_EVENT_HANDLER I2SBufferEventHandler
)
{
    DRV_AK4954_CLIENT_OBJ *clientObj;
    DRV_AK4954_OBJ *drvObj;

    if((DRV_HANDLE_INVALID == handle) || (0 == handle))
    {
        /* This means the handle is invalid */
        SYS_DEBUG(0, "Handle is invalid \r\n");
        return;
    }

    /* Assing the event handler and the context */
    clientObj = (DRV_AK4954_CLIENT_OBJ *) handle;
    if(false == clientObj->inUse)
    {
        SYS_DEBUG(0, "Invalid driver handle \r\n");
        return;
    }
    drvObj = clientObj->hDriver;

    DRV_I2S_BufferEventHandlerSet(drvObj->i2sDriverHandle,
        (DRV_I2S_BUFFER_EVENT_HANDLER) I2SBufferEventHandler,
        (uintptr_t)(drvObj));

    return;

}

// *****************************************************************************
// *****************************************************************************
// Section: AK4954 CODEC Specific Client Routines
// *****************************************************************************
// *****************************************************************************
// *****************************************************************************
/*
  Function:
    void DRV_AK4954_SamplingRateSet(DRV_HANDLE handle, uint32_t samplingRate)

  Summary:
    This function sets the sampling rate of the media stream.

  Description:
    This function sets the media sampling rate for the client handle.

  Precondition:
    The DRV_AK4954_Initialize routine must have been called for the specified
    AK4954 driver instance.

    DRV_AK4954_Open must have been called to obtain a valid opened device handle.

  Parameters:
    handle       - A valid open-instance handle, returned from the driver's
                   open routine

  Returns:
    None
  Remarks:
    None.
*/
void DRV_AK4954_SamplingRateSet(DRV_HANDLE handle, uint32_t samplingRate)
{
    DRV_AK4954_OBJ *drvObj;
    DRV_AK4954_CLIENT_OBJ *clientObj;
    uint8_t regValue;

    if((DRV_HANDLE_INVALID == handle) || (0 == handle))
    {
        /* This means the handle is invalid */
        SYS_DEBUG(0, "Handle is invalid \r\n");
        return;
    }

    clientObj = (DRV_AK4954_CLIENT_OBJ *) handle;
    if(false == clientObj->inUse)
    {
        SYS_DEBUG(0, "Invalid driver handle \r\n");
        return;
    }
    drvObj = (DRV_AK4954_OBJ *)clientObj->hDriver;

    _DRV_AK4954_MasterClockSet(samplingRate, drvObj->mclk_multiplier);
    
    DRV_I2S_BaudSet(drvObj->i2sDriverHandle,
                        (samplingRate*(DRV_AK4954_BCLK_BIT_CLK_DIVISOR)),  // (samplingRate*drvObj->bclk_divider)
                        samplingRate);

    drvObj->samplingRate = samplingRate;    
 
    drvObj->command = DRV_AK4954_COMMAND_SEND;

    AK4954_COMMAND *sampleRateSetCmd;
    sampleRateSetCmd = _DRV_AK4954_CommandQueueGetSlot();
    
    if(sampleRateSetCmd == NULL)
    {
        return;
    }
      
    regValue = _DRV_AK4954_CONTROL_REG_BIT_WRITE_Wrapper(drvObj,
               AK4954A_REG_MODE_CTRL2,
               0,
               _getAK4954_samplerate(samplingRate)
               );
    
    sampleRateSetCmd->command = DRV_AK4954_COMMAND_SAMPLING_RATE_SET;
    sampleRateSetCmd->control_data[0] = (uint8_t)(AK4954A_REG_MODE_CTRL2&0xFF);
    sampleRateSetCmd->control_data[1] = (uint8_t)(regValue&0xFF);
    sampleRateSetCmd->array_size = 2;   
}

// *****************************************************************************
/*
  Function:
    uint32_t DRV_AK4954_SamplingRateGet(DRV_HANDLE handle)

  Summary:
    This function gets the sampling rate set on the Ak4954

  Description:
    This function gets the sampling rate set on the Ak4954.

  Remarks:
    None.
 */
uint32_t DRV_AK4954_SamplingRateGet(DRV_HANDLE handle)
{
    DRV_AK4954_OBJ *drvObj;
    DRV_AK4954_CLIENT_OBJ *clientObj;

    if((DRV_HANDLE_INVALID == handle) || (0 == handle))
    {
        /* This means the handle is invalid */
        SYS_DEBUG(0, "Handle is invalid \r\n");
        return 0; //return invalid value
    }
    
    clientObj = (DRV_AK4954_CLIENT_OBJ *) handle;
    
    if(false == clientObj->inUse)
    {
        SYS_DEBUG(0, "Invalid driver handle \r\n");
        return 0;
    }
    
    drvObj = (DRV_AK4954_OBJ *)clientObj->hDriver;

    /* Return the sampling rate */
    return drvObj->samplingRate;
}

// *****************************************************************************
/*
  Function:
    void DRV_AK4954_VolumeSet(DRV_HANDLE handle, DRV_AK4954_CHANNEL channel, uint8_t volume)

  Summary:
    This function sets the volume for AK4954 CODEC.

  Description:
    This functions sets the volume value from 0-255 which can attenuate
    from -115dB to +12dB. All decibles below -50dB are inbaudible


  Precondition:
    The DRV_AK4954_Initialize routine must have been called for the specified
    AK4954 driver instance.

    DRV_AK4954_Open must have been called to obtain a valid opened device handle.

  Parameters:
    handle       - A valid open-instance handle, returned from the driver's
                   open routine

  Returns:
    None
  Remarks:
    None.
*/
void DRV_AK4954_VolumeSet(DRV_HANDLE handle, DRV_AK4954_CHANNEL channel, uint8_t volume)
{
    DRV_AK4954_OBJ *drvObj;
    DRV_AK4954_CLIENT_OBJ *clientObj;

    if((DRV_HANDLE_INVALID == handle) || (0 == handle))
    {
        /* This means the handle is invalid */
        SYS_DEBUG(0, "Handle is invalid \r\n");
        return;
    }
    
    clientObj = (DRV_AK4954_CLIENT_OBJ *) handle;
    
    if(false == clientObj->inUse)
    {
        SYS_DEBUG(0, "Invalid driver handle \r\n");
        return;
    }
    
    drvObj = (DRV_AK4954_OBJ *)clientObj->hDriver;
    drvObj->command = DRV_AK4954_COMMAND_SEND;

    if(!drvObj->isVolumeSetUnderProcess)
    {
        AK4954_COMMAND *volumeSetCmd;
        volumeSetCmd = _DRV_AK4954_CommandQueueGetSlot();
        if(volumeSetCmd == NULL)
        {
            return;
        }
        
        drvObj->isVolumeSetUnderProcess = true;
        if(DRV_AK4954_CHANNEL_LEFT == channel)
        {
            DRV_AK4954_VolumeReMapping( drvObj, channel, volume);

            
            volumeSetCmd->command = DRV_AK4954_COMMAND_VOLUME_SET_CHANNEL_LEFT_ONLY;
            volumeSetCmd->control_data[0] = (uint8_t)(AK4954A_REG_LDIG_VOL_CTRL&0xFF);
            volumeSetCmd->control_data[1] = (uint8_t)(drvObj->volume[DRV_AK4954_CHANNEL_LEFT]&0xFF);
            volumeSetCmd->array_size = 2;
        }
        else if(DRV_AK4954_CHANNEL_RIGHT == channel)
        {
            DRV_AK4954_VolumeReMapping( drvObj, channel, volume);

            volumeSetCmd->command = DRV_AK4954_COMMAND_VOLUME_SET_CHANNEL_RIGHT_ONLY;
            volumeSetCmd->control_data[0] = (uint8_t)(AK4954A_REG_RDIG_VOL_CTRL&0xFF);
            volumeSetCmd->control_data[1] = (uint8_t)(drvObj->volume[DRV_AK4954_CHANNEL_RIGHT]&0xFF);
            volumeSetCmd->array_size = 2;
        }
        else
        {
            DRV_AK4954_VolumeReMapping( drvObj, DRV_AK4954_CHANNEL_LEFT, volume);
            DRV_AK4954_VolumeReMapping( drvObj, DRV_AK4954_CHANNEL_RIGHT, volume);


            volumeSetCmd->command = DRV_AK4954_COMMAND_VOLUME_SET_CHANNEL_LEFT;
            volumeSetCmd->control_data[0] = (uint8_t)(AK4954A_REG_LDIG_VOL_CTRL&0xFF);
            volumeSetCmd->control_data[1] = (uint8_t)(drvObj->volume[DRV_AK4954_CHANNEL_LEFT]&0xFF);
            volumeSetCmd->control_data[2] = (uint8_t)(drvObj->volume[DRV_AK4954_CHANNEL_RIGHT]&0xFF);
            volumeSetCmd->array_size = 3;
        }
        drvObj->isVolumeSetUnderProcess = false;
    }
    else
    {
        ; // Volume set under process
    }
    return;
}

// *****************************************************************************
/*
  Function:
    uint8_t DRV_AK4954_VolumeGet(DRV_HANDLE handle, DRV_AK4954_CHANNEL chan)

  Summary:
    This function gets the volume for AK4954 CODEC.

  Description:
    This functions gets the current volume programmed to the DAC AK4954.

  Precondition:
    The DRV_AK4954_Initialize routine must have been called for the specified
    AK4954 driver instance.

    DRV_AK4954_Open must have been called to obtain a valid opened device handle.

  Parameters:
    handle       - A valid open-instance handle, returned from the driver's
                   open routine

    chan         - Audio channel volume to be set,

  Returns:
    None

  Example:
    <code>
    // myAppObj is an application specific object.
    MY_APP_OBJ myAppObj;
    uint8_t volume;

    // myAK4954Handle is the handle returned
    // by the DRV_AK4954_Open function.

      volume = DRV_AK4954_VolumeGet(myAK4954Handle, DRV_AK4954_CHANNEL_LEFT);
    </code>

  Remarks:
    None.
 */
uint8_t DRV_AK4954_VolumeGet(DRV_HANDLE handle, DRV_AK4954_CHANNEL chan)
{
    DRV_AK4954_OBJ *drvObj;
    DRV_AK4954_CLIENT_OBJ *clientObj;
    
    if((DRV_HANDLE_INVALID == handle) || (0 == handle))
    {
        /* This means the handle is invalid */
        SYS_DEBUG(0, "Handle is invalid \r\n");
        return 0;
    }

    clientObj = (DRV_AK4954_CLIENT_OBJ *) handle;
    
    if(false == clientObj->inUse)
    {
        SYS_DEBUG(0, "Invalid driver handle \r\n");
        return 0;
    }
    
    drvObj = (DRV_AK4954_OBJ *)clientObj->hDriver;

    /* Return the volume */
    return drvObj->volume[chan];
}
// *****************************************************************************
/*
  Function:
    void DRV_AK4954_MuteOn(DRV_HANDLE handle);

  Summary:
    This function allows AK4954 output for soft mute on.

  Description:
    This function Enables AK4954 output for soft mute.





  Remarks:
    None.
*/
void DRV_AK4954_MuteOn(DRV_HANDLE handle)
{
    DRV_AK4954_OBJ *drvObj;
    DRV_AK4954_CLIENT_OBJ *clientObj;
    uint8_t regValue;

    if((DRV_HANDLE_INVALID == handle) || (0 == handle))
    {
        /* This means the handle is invalid */
        SYS_DEBUG(0, "Handle is invalid \r\n");
        return;
    }
    
    clientObj = (DRV_AK4954_CLIENT_OBJ *) handle;
    
    if(false == clientObj->inUse)
    {
        SYS_DEBUG(0, "Invalid driver handle \r\n");
        return;
    }
    
    drvObj = (DRV_AK4954_OBJ *)clientObj->hDriver;
    // Mute on is executed already, no need to send a I2C command
    if((drvObj->lastRegValue[AK4954A_REG_MODE_CTRL3] & 0x20) >> 5 == 0x01){
        return;
    }
    drvObj->command = DRV_AK4954_COMMAND_SEND;

    AK4954_COMMAND *muteOnCmd;
    muteOnCmd = _DRV_AK4954_CommandQueueGetSlot();
    if(muteOnCmd == NULL)
    {
        return;
    }
    regValue = _DRV_AK4954_CONTROL_REG_BIT_WRITE_Wrapper(drvObj,
               AK4954A_REG_MODE_CTRL3,
               5,
               0x1
               );
    
    muteOnCmd->command = DRV_AK4954_COMMAND_MUTE_ON;
    muteOnCmd->control_data[0] = (uint8_t)(AK4954A_REG_MODE_CTRL3&0xFF);
    muteOnCmd->control_data[1] = (uint8_t)(regValue&0xFF);
    muteOnCmd->array_size = 2;
    return;
}


// *****************************************************************************
/*
  Function:
    void DRV_AK4954_MuteOff(DRV_HANDLE handle)

  Summary:
    This function disables AK4954 output for soft mute.

  Description:
    This function disables AK4954 output for soft mute.

    Remarks:
    None.
*/
void DRV_AK4954_MuteOff(DRV_HANDLE handle)
{
    DRV_AK4954_OBJ *drvObj;
    DRV_AK4954_CLIENT_OBJ *clientObj;
    uint8_t regValue;

    if((DRV_HANDLE_INVALID == handle) || (0 == handle))
    {
        /* This means the handle is invalid */
        SYS_DEBUG(0, "Handle is invalid \r\n");
        return;
    }
    
    clientObj       = (DRV_AK4954_CLIENT_OBJ *) handle;
    
    if(false == clientObj->inUse)
    {
        SYS_DEBUG(0, "Invalid driver handle \r\n");
        return;
    }
    
    drvObj          = (DRV_AK4954_OBJ *)clientObj->hDriver;
    // Mute off is executed already, no need to send a I2C command
    if((drvObj->lastRegValue[AK4954A_REG_MODE_CTRL3] & 0x20) >> 5 == 0x00){
        return;
    }
    drvObj->command = DRV_AK4954_COMMAND_SEND;

    regValue = _DRV_AK4954_CONTROL_REG_BIT_WRITE_Wrapper(drvObj,
               AK4954A_REG_MODE_CTRL3,
               5,
               0x0
               );
//            DRV_AK4954_CONTROL_REG_BIT_WRITE(
//                    drvObj->lastRegValue[AK4954A_REG_MODE_CTRL3],
//                    5,0x0);

    AK4954_COMMAND *muteOffCmd;
    muteOffCmd = _DRV_AK4954_CommandQueueGetSlot();
    if(muteOffCmd == NULL)
    {
        return;
    }
    
    muteOffCmd->command = DRV_AK4954_COMMAND_MUTE_OFF;
    muteOffCmd->control_data[0] = (uint8_t)(AK4954A_REG_MODE_CTRL3&0xFF);
    muteOffCmd->control_data[1] = (uint8_t)(regValue&0xFF);
    muteOffCmd->array_size = 2;

    return;
}

// *****************************************************************************
/*
  Function:
    void DRV_AK4954_DigitalBlockModeSet(DRV_HANDLE handle)

  Summary:
    This function allows function selection amongst Recording, Playback, Both or Loopback provided by the codec

  Description:
     This function allows function selection amongst Recording, Playback, Both or Loopback provided by the codec


  Returns:
    None

  Remarks:
    None.
*/
void DRV_AK4954_DigitalBlockModeSet(DRV_HANDLE handle, DRV_AK4954_DIGITAL_BLOCK_CONTROL digitalblockControl)
{
    DRV_AK4954_OBJ *drvObj;
    DRV_AK4954_CLIENT_OBJ *clientObj;
    uint8_t regValue;

    if((DRV_HANDLE_INVALID == handle) || (0 == handle))
    {
        /* This means the handle is invalid */
        SYS_DEBUG(0, "Handle is invalid \r\n");
        return;
    }
    
    clientObj       = (DRV_AK4954_CLIENT_OBJ *) handle;
    
    if(false == clientObj->inUse)
    {
        SYS_DEBUG(0, "Invalid driver handle \r\n");
        return;
    }
    
    drvObj          = (DRV_AK4954_OBJ *)clientObj->hDriver;
    drvObj->command = DRV_AK4954_COMMAND_SEND;

    switch(digitalblockControl)
    {
        case DRV_AK4954_RECORDING_MODE:
        {
                regValue = DRV_AK4954_CONTROL_REG_FIELD_WRITE(
                    drvObj->lastRegValue[AK4954A_REG_DFLTR_MODE],
                    0x07,0x0,0x03);
        }
        break;

        case DRV_AK4954_PLAYBACK_MODE:
        {
                regValue = DRV_AK4954_CONTROL_REG_FIELD_WRITE(
                    drvObj->lastRegValue[AK4954A_REG_DFLTR_MODE],
                    0x07,0x0,0x04);
        }
        break;

        case DRV_AK4954_RECORDING_PLAYBACK_2_MODE:
        {
                regValue = DRV_AK4954_CONTROL_REG_FIELD_WRITE(
                    drvObj->lastRegValue[AK4954A_REG_DFLTR_MODE],
                    0x03,0x0,0x00);
        }
        case DRV_AK4954_LOOPBACK_MODE :
        {
                regValue = DRV_AK4954_CONTROL_REG_FIELD_WRITE(
                    drvObj->lastRegValue[AK4954A_REG_DFLTR_MODE],
                    0x07,0x0,0x07);
        }
        default:
        {
                regValue = DRV_AK4954_CONTROL_REG_FIELD_WRITE(
                    drvObj->lastRegValue[AK4954A_REG_DFLTR_MODE],
                    0x07,0x0,0x04);
        }
        break;
    }
    
    AK4954_COMMAND *DigitalModeCmd;
    DigitalModeCmd = _DRV_AK4954_CommandQueueGetSlot();
    if(DigitalModeCmd == NULL)
    {
        return;
    }
    
    
    DigitalModeCmd->command = DRV_AK4954_COMMAND_DIGITAL_BLOCK_CONTROL_SET;
    DigitalModeCmd->control_data[0] = (uint8_t)(AK4954A_REG_DFLTR_MODE&0xFF);
    DigitalModeCmd->control_data[1] = (uint8_t)(regValue&0xFF);
    DigitalModeCmd->array_size = 2;

    return;
}

// *****************************************************************************
/*
  Function:
    void DRV_AK4954_IntExtMicSet(DRV_HANDLE handle);

  Summary:
    This function sets up the codec for the internal or the external microphone use.

  Description:
    This function sets up the codec for the internal or the external microphone use.

  Precondition:
    The DRV_AK4954_Initialize routine must have been called for the specified
    AK4954 driver instance.

    DRV_AK4954_Open must have been called to obtain a valid opened device handle.

  Parameters:
    handle       - A valid open-instance handle, returned from the driver's
                   open routine
    micInput     - Internal vs External mic input
  Returns:
    None

  Remarks:
    None.
*/
void DRV_AK4954_IntExtMicSet(DRV_HANDLE handle, DRV_AK4954_INT_EXT_MIC micInput)
{
    if (micInput == INT_MIC)
    {
        //Internal Mic for AK4954 X32 DB
         DRV_AK4954_MicSet(handle, MIC1);
    }
    else
    {
        //External Mic for AK4954 X32 DB
         DRV_AK4954_MicSet(handle, MIC2);
    }
}

// *****************************************************************************
/*
  Function: 
    void DRV_AK4954_MicSet(DRV_HANDLE handle, DRV_AK4954_MIC micInput);

  Summary:
    This function select the single-ended AK4954 microphone
    input for the AK4954 Codec 

  Description:
    This function selects the single-ended AK4954 microphone
    input for the AK4954 Codec (Where the MEMS mic is MIC1, and the 
    external Microphone input is MIC2 on the AK4954 XC32 Daughter Board)

  Precondition:
    The DRV_AK4954_Initialize routine must have been called for the specified
    AK4954 driver instance.

    DRV_AK4954_Open must have been called to obtain a valid opened device handle.

  Parameters:
    handle       - A valid open-instance handle, returned from the driver's
                   open routine
    micInput     - MIC1 or MIC2

  Returns:
    None

  Remarks:
    None.
*/
void DRV_AK4954_MicSet(DRV_HANDLE handle, DRV_AK4954_MIC micInput)
{
    DRV_AK4954_OBJ *drvObj;
    DRV_AK4954_CLIENT_OBJ *clientObj;
    uint8_t regValue0, regValue1;
    
    if((DRV_HANDLE_INVALID == handle) || (0 == handle))
    {
        /* This means the handle is invalid */
        SYS_DEBUG(0, "Handle is invalid \r\n");
        return;
    }

    clientObj = (DRV_AK4954_CLIENT_OBJ *) handle;
    
    if(false == clientObj->inUse)
    {
        SYS_DEBUG(0, "Invalid driver handle \r\n");
        return;
    }
    
    drvObj = (DRV_AK4954_OBJ *)clientObj->hDriver;
    drvObj->command = DRV_AK4954_COMMAND_SEND;

    
    switch (micInput)
    {
        case MIC1:
        {
            if(drvObj->lastRegValue[AK4954A_REG_SIG_SLCT1] == 
               (DRV_AK4954_CONTROL_REG_FIELD_WRITE(AK4954A_REG_SIG_SLCT1, 
                                                   0x10, 
                                                   0, 
                                                   0)) && 
               drvObj->lastRegValue[AK4954A_REG_SIG_SLCT2] == 
               (DRV_AK4954_CONTROL_REG_FIELD_WRITE(AK4954A_REG_SIG_SLCT2, 
                                                   0x0F, 
                                                   0, 
                                                   0)))
            {
                return;
            }
            //MPSEL: MPWR Output Select
            regValue0 = _DRV_AK4954_CONTROL_REG_FIELD_WRITE_Wrapper(drvObj,
                        AK4954A_REG_SIG_SLCT1,
                        0x10,
                        0, 
                        0x0
                        );
            regValue1 = _DRV_AK4954_CONTROL_REG_FIELD_WRITE_Wrapper(drvObj,
                        AK4954A_REG_SIG_SLCT2,
                        0x0F,
                        0, 
                        0x0
                        );
        } //End MIC1
        break;

        case MIC2:
        {   //External Mic with +20dB Gain
            if(drvObj->lastRegValue[AK4954A_REG_SIG_SLCT1] == 
               (DRV_AK4954_CONTROL_REG_FIELD_WRITE(AK4954A_REG_SIG_SLCT1, 
                                                   0x17, 
                                                   0, 
                                                   SIGSLCT1_MPSEL_UP)) && 
               drvObj->lastRegValue[AK4954A_REG_SIG_SLCT2] == 
               (DRV_AK4954_CONTROL_REG_FIELD_WRITE(AK4954A_REG_SIG_SLCT2, 
                                                   0x0F, 
                                                   0, 
                                                   SIGSLCT2_INL0_ON | 
                                                   SIGSLCT2_INR0_ON)))
            {
                return;
            }

            //MPWR with +20dB gain
            regValue0 = _DRV_AK4954_CONTROL_REG_FIELD_WRITE_Wrapper(
                                drvObj,
                                AK4954A_REG_SIG_SLCT1,
                                0x17,
                                0, 
                                SIGSLCT1_MPSEL_UP);
            //MIC2
            regValue1 = _DRV_AK4954_CONTROL_REG_FIELD_WRITE_Wrapper(
                                drvObj,
                                AK4954A_REG_SIG_SLCT2,
                                0x0F,
                                0, 
                                SIGSLCT2_INL0_ON | SIGSLCT2_INR0_ON);
        } //End MIC2
        break;

        case MIC3:
        {
            //
            if(drvObj->lastRegValue[AK4954A_REG_SIG_SLCT1] == 
               (DRV_AK4954_CONTROL_REG_FIELD_WRITE(AK4954A_REG_SIG_SLCT1, 
                                                   0x17, 
                                                   0, 
                                                   SIGSLCT1_MGAIN2_SET | 
                                                   SIGSLCT1_MGAIN1_SET) ) && 

                drvObj->lastRegValue[AK4954A_REG_SIG_SLCT2] == 
                (DRV_AK4954_CONTROL_REG_FIELD_WRITE(AK4954A_REG_SIG_SLCT2, 
                                                    0x0F, 
                                                    0, 
                                                    SIGSLCT2_INL1_ON | 
                                                    SIGSLCT2_INR1_ON))  )
            {
                return;
            }

            //No MPWR, +20dB Gain
            regValue0 = _DRV_AK4954_CONTROL_REG_FIELD_WRITE_Wrapper(
                                drvObj,
                                AK4954A_REG_SIG_SLCT1,
                                0x17,
                                0, 
                                SIGSLCT1_MGAIN2_SET |
                                SIGSLCT1_MGAIN1_SET);

            //MIC3
            regValue1 = _DRV_AK4954_CONTROL_REG_FIELD_WRITE_Wrapper(
                                drvObj,
                                AK4954A_REG_SIG_SLCT2,
                                0x0F,
                                0, 
                                SIGSLCT2_INL1_ON | SIGSLCT2_INR1_ON);
        }
        break;

        default: //MIC1
        {
            if(drvObj->lastRegValue[AK4954A_REG_SIG_SLCT1] == 
               (DRV_AK4954_CONTROL_REG_FIELD_WRITE(AK4954A_REG_SIG_SLCT1, 
                                                   0x10, 
                                                   0, 
                                                   SIGSLCT1_MPSEL_UP)) && 
               drvObj->lastRegValue[AK4954A_REG_SIG_SLCT2] == 
               (DRV_AK4954_CONTROL_REG_FIELD_WRITE(AK4954A_REG_SIG_SLCT2, 
                                                   0x0F, 
                                                   0, 
                                                   SIGSLCT2_INL0_ON | 
                                                   SIGSLCT2_INR0_ON)))
            {
                return;
            }

            regValue0 = _DRV_AK4954_CONTROL_REG_FIELD_WRITE_Wrapper(
                                drvObj,
                                AK4954A_REG_SIG_SLCT1,
                                0x10,
                                0, 
                                SIGSLCT1_MPSEL_UP);

            regValue1 = _DRV_AK4954_CONTROL_REG_FIELD_WRITE_Wrapper(
                                drvObj,
                                AK4954A_REG_SIG_SLCT2,
                                0x0F,
                                0, 
                                SIGSLCT2_INL0_ON | SIGSLCT2_INR0_ON);
        }
        break;
    } //End default
    
    AK4954_COMMAND *micSetCmd;
    micSetCmd = _DRV_AK4954_CommandQueueGetSlot();
    if(micSetCmd == NULL)
    {
        return;
    }
    
    micSetCmd->command = DRV_AK4954_COMMAND_MIC_SET;
    micSetCmd->control_data[0] = (uint8_t)(AK4954A_REG_SIG_SLCT1&0xFF);
    micSetCmd->control_data[1] = (uint8_t)(regValue0&0xFF);
    micSetCmd->control_data[2] = (uint8_t)(regValue1&0xFF);
    micSetCmd->array_size = 3;
    
    return;
}

// *****************************************************************************
/*
  Function:
    void DRV_AK4954_MonoStereoMicSet(DRV_HANDLE handle);

  Summary:
    This function sets up the codec for the Mono or Stereo microphone mode.

  Description:
    This function sets up the codec for the Mono or Stereo microphone mode.

  Precondition:
    The DRV_AK4954_Initialize routine must have been called for the specified
    AK4954 driver instance.

    DRV_AK4954_Open must have been called to obtain a valid opened device handle.

  Parameters:
    handle       - A valid open-instance handle, returned from the driver's
                   open routine

  Returns:
    None

  Remarks:
    None.
*/
void DRV_AK4954_MonoStereoMicSet(DRV_HANDLE handle, DRV_AK4954_MONO_STEREO_MIC mono_stereo_mic)
{
    DRV_AK4954_OBJ *drvObj;
    DRV_AK4954_CLIENT_OBJ *clientObj;
    uint8_t regValue;

    if(mono_stereo_mic == ALL_ZEROS){
        return;
    }
    
    if((DRV_HANDLE_INVALID == handle) || (0 == handle))
    {
        /* This means the handle is invalid */
        SYS_DEBUG(0, "Handle is invalid \r\n");
        return;
    }
    
    clientObj = (DRV_AK4954_CLIENT_OBJ *) handle;
    
    if(false == clientObj->inUse)
    {
        SYS_DEBUG(0, "Invalid driver handle \r\n");
        return;
    }
    
    drvObj = (DRV_AK4954_OBJ *)clientObj->hDriver;
    drvObj->command = DRV_AK4954_COMMAND_SEND;

    switch(mono_stereo_mic)
    {
        case MONO_RIGHT_CHANNEL:
            if(drvObj->lastRegValue[AK4954A_REG_PWR_MGMT1] == (DRV_AK4954_CONTROL_REG_FIELD_WRITE(AK4954A_REG_PWR_MGMT1, 0x03, 0, PWRMGMT1_PMADR_UP))){
                return;
            }
            
            regValue = _DRV_AK4954_CONTROL_REG_FIELD_WRITE_Wrapper(drvObj,
                        AK4954A_REG_PWR_MGMT1,
                        0x03, 
                        0, 
                        PWRMGMT1_PMADR_UP
                        );
            break;
        case MONO_LEFT_CHANNEL:
            if(drvObj->lastRegValue[AK4954A_REG_PWR_MGMT1] == (DRV_AK4954_CONTROL_REG_FIELD_WRITE(AK4954A_REG_PWR_MGMT1, 0x03, 0, PWRMGMT1_PMADL_UP))){
                return;
            }
            regValue = _DRV_AK4954_CONTROL_REG_FIELD_WRITE_Wrapper(drvObj,
                        AK4954A_REG_PWR_MGMT1,
                        0x03, 
                        0, 
                        PWRMGMT1_PMADL_UP
                        );
            break;
        case STEREO:
            if(drvObj->lastRegValue[AK4954A_REG_PWR_MGMT1] == (DRV_AK4954_CONTROL_REG_FIELD_WRITE(AK4954A_REG_PWR_MGMT1, 0x03, 0, PWRMGMT1_PMADL_UP|PWRMGMT1_PMADR_UP))){
                return;
            }
            regValue = _DRV_AK4954_CONTROL_REG_FIELD_WRITE_Wrapper(drvObj,
                        AK4954A_REG_PWR_MGMT1,
                        0x03, 
                        0, 
                        PWRMGMT1_PMADL_UP | PWRMGMT1_PMADR_UP
                        );
            break;
        default:
            if(drvObj->lastRegValue[AK4954A_REG_PWR_MGMT1] == (DRV_AK4954_CONTROL_REG_FIELD_WRITE(AK4954A_REG_PWR_MGMT1, 0x03, 0, PWRMGMT1_PMADL_UP))){
                return;
            }
            regValue = _DRV_AK4954_CONTROL_REG_FIELD_WRITE_Wrapper(drvObj,
                        AK4954A_REG_PWR_MGMT1,
                        0x03,
                        0,
                        PWRMGMT1_PMADL_UP
                        );
            break;

    }
    
    AK4954_COMMAND *channelSetCmd;
    channelSetCmd = _DRV_AK4954_CommandQueueGetSlot();
    if(channelSetCmd == NULL)
    {
        return;
    }
    
    
    channelSetCmd->command = DRV_AK4954_COMMAND_MONO_STEREO_MIC_SET;
    channelSetCmd->control_data[0] = (uint8_t)(AK4954A_REG_PWR_MGMT1&0xFF);
    channelSetCmd->control_data[1] = (uint8_t)(regValue&0xFF);
    channelSetCmd->array_size = 2;

    return;
}
// *****************************************************************************
/*
  Function:
    void DRV_AK4954_SetAudioCommunicationMode
(
    DRV_HANDLE handle, 
    const DATA_LENGTH dl, 
    const SAMPLE_LENGTH sl
)

  Summary:
    This function provides a run time audio format configuration

  Description:
    This function sets up audio mode in I2S protocol

  Precondition:
    The DRV_AK4954_Initialize routine must have been called for the specified
    AK4954 driver instance.

    DRV_AK4954_Open must have been called to obtain a valid opened device handle.

  Parameters:
    handle       - A valid open-instance handle, returned from the driver's
                   open routine
    dl           - Data length for I2S audio interface
    sl           - Left/Right Sample Length for I2S audio interface
  Returns:
    None

  Remarks:
    None.
*/
void DRV_AK4954_SetAudioCommunicationMode
(
    DRV_HANDLE handle, 
    const DATA_LENGTH dl, 
    const SAMPLE_LENGTH sl)
{
    
    DRV_AK4954_OBJ *drvObj;
    DRV_AK4954_CLIENT_OBJ *clientObj;

    if((DRV_HANDLE_INVALID == handle) || (0 == handle))
    {
        /* This means the handle is invalid */
        SYS_DEBUG(0, "Handle is invalid \r\n");
        return;
    }
    
    clientObj = (DRV_AK4954_CLIENT_OBJ *) handle;
    
    if(false == clientObj->inUse)
    {
        SYS_DEBUG(0, "Invalid driver handle \r\n");
        return;
    }
    
    drvObj = (DRV_AK4954_OBJ *)clientObj->hDriver;

    // initialize with a mostly used one
    SPI_AUDIO_COMMUNICATION_WIDTH spi_audio_mode = SPI_AUDIO_COMMUNICATION_16DATA_16FIFO_32CHANNEL;
    if(sl == SAMPLE_LENGTH_32)
    {
        switch(dl)
        {
            case DATA_LENGTH_16:
                spi_audio_mode = SPI_AUDIO_COMMUNICATION_16DATA_16FIFO_32CHANNEL;
                break;
            case DATA_LENGTH_24:
                spi_audio_mode = SPI_AUDIO_COMMUNICATION_24DATA_32FIFO_32CHANNEL;
                break;
            case DATA_LENGTH_32:
                spi_audio_mode = SPI_AUDIO_COMMUNICATION_32DATA_32FIFO_32CHANNEL;
                break;
            default:
                 // should never reach this branch
                break;
        };
    }else
    {
        // no mater what dl is, the mode can only be
        spi_audio_mode = SPI_AUDIO_COMMUNICATION_16DATA_16FIFO_16CHANNEL;
    }
    
    DRV_I2S_SetAudioCommunicationMode(drvObj->i2sDriverHandle, spi_audio_mode);
}


// *****************************************************************************
/*
  Function:
	void DRV_AK4954_CommandEventHandlerSet
	(
		DRV_HANDLE handle,
		const DRV_AK4954_COMMAND_EVENT_HANDLER eventHandler,
		const uintptr_t contextHandle
	)

  Summary:
    This function allows a client to identify a command event handling function
    for the driver to call back when the last submitted command have finished.

  Description:
    This function allows a client to identify a command event handling function
    for the driver to call back when the last submitted command have finished.

    When a client calls DRV_AK4954_BufferAddWrite function, it is provided with
    a handle identifying  the buffer that was added to the driver's buffer queue.
    The driver will pass this handle back to the client by calling "eventHandler"
    function when the buffer transfer has completed.

    The event handler should be set before the client performs any "AK4954 CODEC
    Specific Client Routines" operations that could generate events.
    The event handler once set, persists until the client closes the driver or
    sets another event handler (which could be a "NULL" pointer to indicate no callback).

  Remarks:
    If the client does not want to be notified when the command
    has completed, it does not need to register a callback.
*/
void DRV_AK4954_CommandEventHandlerSet
(
	DRV_HANDLE handle,
	const DRV_AK4954_COMMAND_EVENT_HANDLER eventHandler,
	const uintptr_t contextHandle
)
{
    DRV_AK4954_CLIENT_OBJ *clientObj;
    DRV_AK4954_OBJ *drvObj;

    if((DRV_HANDLE_INVALID == handle) || (0 == handle))
    {
        /* This means the handle is invalid */
        SYS_DEBUG(0, "Handle is invalid \r\n");
        return;
    }


    clientObj = (DRV_AK4954_CLIENT_OBJ *) handle;
    /* Assing the event handler and the context */
    if(false == clientObj->inUse)
    {
        SYS_DEBUG(0, "Invalid driver handle \r\n");
        return;
    }

    drvObj = (DRV_AK4954_OBJ *)clientObj->hDriver;
    drvObj->commandCompleteCallback = eventHandler;
    drvObj->commandContextData = contextHandle;
    return;
}


// *****************************************************************************
// *****************************************************************************
// Section: AK4954 CODEC Version Information Routines
// *****************************************************************************
// *****************************************************************************
// *****************************************************************************
/*
  Function:
    int8_t* DRV_AK4954_VersionStrGet(void)

  Summary:
    This function returns the version of AK4954 driver in string format.

  Description:
    The DRV_AK4954_VersionStrGet function returns a string in the format:
    "<major>.<minor>[.<patch>][<type>]"
    Where:
        <major> is the AK4954 driver's version number.
        <minor> is the AK4954 driver's version number.
        <patch> is an optional "patch" or "dot" release number (which is not
        included in the string if it equals "00").
        <type> is an optional release type ("a" for alpha, "b" for beta ?
        not the entire word spelled out) that is not included if the release
        is a production version (I.e. Not an alpha or beta).

        The String does not contain any spaces.

        Example:
        "0.03a"
        "1.00"

  Remarks:
    None
 */
int8_t* DRV_AK4954_VersionStrGet(void)
{
    return (int8_t*) _DRV_AK4954_VERSION_STR;
}


// *****************************************************************************
/*
  Function:
    uint32_t DRV_AK4954_VersionGet( void )

  Summary:
    This function returns the version of AK4954 driver

  Description:
    The version number returned from the DRV_AK4954_VersionGet function is an
    unsigned integer in the following decimal format.
    <major> * 10000 + <minor> * 100 + <patch>

    Where the numbers are represented in decimal and the meaning is the same as
    above.  Note that there is no numerical representation of release type.

    Example:
    For version "0.03a", return:  0 * 10000 + 3 * 100 + 0
    For version "1.00", return:  1 * 100000 + 0 * 100 + 0

  Remarks:
    None
 */
uint32_t DRV_AK4954_VersionGet(void)
{
    return (_DRV_AK4954_VERSION_MAJOR * 10000 +  \
            _DRV_AK4954_VERSION_MINOR * 100 + \
            _DRV_AK4954_VERSION_PATCH);
}

// *****************************************************************************
// *****************************************************************************
// Section: File scope functions
// *****************************************************************************
// ****************************************************************************
/* Function:
    static void DRV_AK4954_VolumeReMapping( DRV_AK4954_OBJ* drvObj, uint8_t volume)

  Summary:
    Volume remapping to reverse the codec volume value to dB mapping which currently works reverse

  Description:
    Volume remapping to reverse the codec volume value to dB mapping which currently works reverse
 The ak4954 codec has DAC value to volume range mapping as :-
 00 H : +12dB
 FF H : -115dB
 In order to provide to the user a more intuitive DAC value to dB correspondance, this remapping fucntion reverses the volume value to dB mapping
 so that 00 H : -115 dB
         FF H : +12 dB

  Parameters:
    object          - Driver object handle, returned from the
                      DRV_AK4954_Initialize routine
    volume          - 0 - 255 value supported by the codec for volume adjustment

  Returns:
    None.
  Remarks:
    Note that the allowed range of the codec stretches from +12dB to -115 dB.
    However for most applications, the entire dB range is not audible.
    It might be observed that values 80 and below for the volume input might not have audible dB values.

*/
static void DRV_AK4954_VolumeReMapping( DRV_AK4954_OBJ* drvObj, DRV_AK4954_CHANNEL channel, uint8_t volume)
{
   //int volCtrl = (255 - volume);

    uint8_t gainValue;
    uint8_t gainDACBits;

    gainValue = ( ((MAX_VOLUME_CODE-MIN_VOLUME_CODE)*((int16_t)volume) )>>8 ) + MIN_VOLUME_CODE;
    gainDACBits = 0xFF - gainValue; // 0x00 = max gain, 0xFF = mute

    int volCtrl = gainDACBits;
   drvObj->volume[channel] =  volCtrl;

}/*DRV_AK4954_VolumeReMapping*/

// *****************************************************************************
 /*
  Function:
    static void _DRV_AK4954_MasterClockSet(uint32_t samplingRate)

  Summary:
    Generates the master clock(to AK4954) from REFCLOCK  for the given
    sampling rate.

  Description:
    Generates the master clock(to AK4954) from REFCLOCK  for the given
    sampling rate.

  Remarks:
    None
*/
static void _DRV_AK4954_MasterClockSet(uint32_t samplingRate, uint16_t mclk_multiplier)
{
uint32_t mclkInHertz, achievedFrequencyHz;

    /* 256fs MCLK is 256 times sampling rate */
    mclkInHertz = mclk_multiplier*samplingRate;
    achievedFrequencyHz = SYS_CLK_ReferenceFrequencySet(
                                CLK_BUS_REFERENCE_1,
                                DRV_AK4954_INPUT_REFCLOCK,
                                mclkInHertz, true );
    if (achievedFrequencyHz == 0)
    {
        SYS_DEBUG(0, "Frequency not set properly. check what is the problem \r\n");
    }


    return;

}

// *****************************************************************************

/*  Function:
        static void _DRV_AK4954_ConrolRegisterReSet
        (
            DRV_AK4954_OBJ *drvObj,
            DRV_AK4954_CONTROL_REGISTER contRegister,
            uint8_t value
        )

  Summary:
    Writes 00 written to AK4954 register address.
 	Writes 00 written to AK4954 register data.
  Description:
    Writes 00 written to AK4954 register address.
 	Writes 00 written to AK4954 register data.
 	Codec ak4954 needs these dummy values of 00H for address and 00H for data to be written to it to start the codec configuration
  Remarks:
    None
*/
//static void _DRV_AK4954_ConrolRegisterReSet
//(
//    DRV_AK4954_OBJ *drvObj,
//    DRV_AK4954_CONTROL_REGISTER contRegister,
//    uint32_t value
//)
//{
//
//    /* Enable I2C module */
//    DRV_I2C_MasterStart(DRV_AK4954_I2C_DRIVER_MODULE_INDEX_IDX0);
//
//    while(!(DRV_I2C_WaitForStartComplete(DRV_AK4954_I2C_DRIVER_MODULE_INDEX_IDX0)));
//
//    //while(!DRV_I2C0_MasterBusIdle());
////    while(!DRV_I2C_MasterBusIdle(DRV_AK4954_I2C_DRIVER_MODULE_INDEX_IDX0));
//    //for(i=1l; i<1000; i++);
//    /* Send audio codec reset release sequence */
//    /* Send codec address (0x24) */
//    DRV_I2C_ByteWrite(DRV_AK4954_I2C_DRIVER_MODULE_INDEX_IDX0, AK4954_I2C_ADDR);
//
//    while (!(DRV_I2C_WaitForByteWriteToComplete(DRV_AK4954_I2C_DRIVER_MODULE_INDEX_IDX0))); //GJVAK4954
//    //DRV_I2C_WaitForByteWriteToComplete(DRV_AK4954_I2C_DRIVER_MODULE_INDEX_IDX0);          //GJVAK4954
//    
//    /* check if address is ACKE'ed,                             //GJVAK4954
//     * if address ACKed proceed to send more data               //GJVAK4954
//     * if address is NACKed then send STOP             */       //GJVAK4954
////  if (DRV_I2C_WriteByteAcknowledged(DRV_AK4954_I2C_DRIVER_MODULE_INDEX_IDX0))               //GJVAK4954
//    {
//
////    DRV_I2C_WriteByteAcknowledged(DRV_AK4954_I2C_DRIVER_MODULE_INDEX_IDX0);                   //GJVAK4954
//
////        DRV_I2C_WaitForACKOrNACKComplete(DRV_AK4954_I2C_DRIVER_MODULE_INDEX_IDX0);            //GJVAK4954
//
//        /* Send codec sub address (0x00)*/
//        DRV_I2C_ByteWrite(DRV_AK4954_I2C_DRIVER_MODULE_INDEX_IDX0, AK4954_I2C_DUMMY_ADDR);
//
//         while (!(DRV_I2C_WaitForByteWriteToComplete(DRV_AK4954_I2C_DRIVER_MODULE_INDEX_IDX0)));    //GJVAK4954        
////        DRV_I2C_WaitForByteWriteToComplete(DRV_AK4954_I2C_DRIVER_MODULE_INDEX_IDX0);              //GJVAK4954
//
//
////        DRV_I2C_WriteByteAcknowledged(DRV_AK4954_I2C_DRIVER_MODULE_INDEX_IDX0);
////
////        DRV_I2C_WaitForACKOrNACKComplete(DRV_AK4954_I2C_DRIVER_MODULE_INDEX_IDX0);
//
//
//        /* Send dummy data (0x00)*/
//        DRV_I2C_ByteWrite(DRV_AK4954_I2C_DRIVER_MODULE_INDEX_IDX0,AK4954_I2C_DUMMY_BYTE);
//
////        DRV_I2C_WaitForByteWriteToComplete(DRV_AK4954_I2C_DRIVER_MODULE_INDEX_IDX0);              //GJVAK4954
//        while (!(DRV_I2C_WaitForByteWriteToComplete(DRV_AK4954_I2C_DRIVER_MODULE_INDEX_IDX0)));     //GJVAK4954 
//
////        DRV_I2C_WriteByteAcknowledged(DRV_AK4954_I2C_DRIVER_MODULE_INDEX_IDX0);                   //GJVAK4954
//
//        /* Initiate the stop condition */
//        /* Set repeated start condition bit */
//
//        DRV_I2C_MasterStop(DRV_AK4954_I2C_DRIVER_MODULE_INDEX_IDX0);
//        
//        while (!DRV_I2C0_WaitForStopComplete());
//        Nop();
//    }
//
//}

static uintptr_t _DRV_AK4954_ConrolRegisterReSet
(
    DRV_AK4954_OBJ *drvObj,
    uint8_t *controlData,
    uint32_t size
)
{
    uintptr_t drvI2CBuffHandle = DRV_I2C_TransmitForced (  drvObj->drvI2CMasterHandle,
                                AK4954_I2C_ADDR,
                                (I2C_DATA_TYPE *)controlData, 
                                size, 
                                (DRV_I2C_BUS_ERROR_EVENT)0,
                                NULL);
    drvObj->controlCommandStatus = false;
    return drvI2CBuffHandle;
}
// *****************************************************************************

/*  Function:
        static void _DRV_AK4954_ConrolRegisterSet
        (
            DRV_AK4954_OBJ *drvObj,
            uint8_t *controlData,
            uint32_t size
        )

  Summary:
    Writes bytes to AK4954 register .

  Description:
    Writes bytes to AK4954 register .

  Remarks:
    None
*/
static uintptr_t _DRV_AK4954_ConrolRegisterSet
(
    DRV_AK4954_OBJ *drvObj,
    uint8_t *controlData,
    uint32_t size
)
{   
    uintptr_t drvI2CBuffHandle = DRV_I2C_Transmit( drvObj->drvI2CMasterHandle,
                                                    AK4954_I2C_ADDR,
                                                    (I2C_DATA_TYPE *)controlData, 
                                                    size, 
                                                    NULL);
    drvObj->controlCommandStatus = false;
    return drvI2CBuffHandle;
}



// *****************************************************************************

///*  Function:
//        static uint8_t _DRV_AK4954_ConrolRegisterGet
//        (
//            DRV_AK4954_OBJ *drvObj,
//            DRV_AK4954_CONTROL_REGISTER contRegister,
//            uint8_t value
//        )
//
//  Summary:
//    Fetches the value written to AK4954 register.
//  Description:
//    Fetches the value written to AK4954 register.
//
//  Remarks:
//    None
//*/
//static uint8_t _DRV_AK4954_ConrolRegisterGet(
//    DRV_AK4954_OBJ *drvObj,
//    DRV_AK4954_CONTROL_REGISTER contRegister
//)
//{
//
//    uint8_t byte1 = (uint8_t) (contRegister & 0xFF);
//    uint8_t byte2;
//
//    int i = 0;
//
//    /**************************/
//    /* CODEC CONTROL SEQUENCE */
//    /**************************/
//    I2C2BRG = 0x0070;
//     /* Turn-on the I2C2 module */
//    I2C2CONbits.ON = 1;
//
//
//    for(i=1l; i<1000; i++);
//    /* Enable the start condition (transaction starts) */
//    I2C2CONbits.SEN = 1;
//    /* Wait for start sequence to finish  (hardware clear) */
//    while (I2C2CONbits.SEN);
//    /* Wait for start indication */
//    while (!I2C2STATbits.S);
//    /* Check for collisions */
//    if (I2C2STATbits.BCL)
//    {
//        /* Clear collision */
//        I2C2STATbits.BCL = 0;
//        /* Increment error flag */
//        i2cErrors++;
//    }
//
//    /* Send codec address (0x24) */
//    I2C2TRN = AK4954_I2C_ADDR ; //Dummy address for write
//
//    /* Wait for transmit buffer to be empty */
//    while (I2C2STATbits.TBF);
//    /* Wait for transmit complete */
//    while (I2C2STATbits.TRSTAT);
//    /* Wait for ACK */
//    if (I2C2STATbits.ACKSTAT)
//    {
//        /* Increment error flag*/
//        i2cErrors++;
//    }
//
//    //Write control data from the array
//    I2C2TRN = byte1;
//    /* Wait for transmit buffer to be empty */
//    while (I2C2STATbits.TBF);
//    /* Wait for transmit complete */
//    while (I2C2STATbits.TRSTAT);
//    /* Wait for NACK (should get nack according to AK4954A data sheet page 31) */
//    if (I2C2STATbits.ACKSTAT)
//    {
//        /* Increment error flag*/
//        i2cErrors++;
//    }
//
//    //I2C2CONbits.ON = 0;
//    //Another Re-Start request
//    /**************************/
//    /* CODEC CONTROL SEQUENCE */
//    /**************************/
//
//    for(i=1l; i<1000; i++);
//    /* Enable the start condition (transaction starts) */
//    I2C2CONbits.RSEN = 1;
//    /* Wait for start sequence to finish  (hardware clear) */
//    while (I2C2CONbits.RSEN);
//    /* Wait for start indication */
//    while (!I2C2STATbits.S);
//    /* Check for collisions */
//    if (I2C2STATbits.BCL)
//    {
//        /* Clear collision */
//        I2C2STATbits.BCL = 0;
//        /* Increment error flag */
//        i2cErrors++;
//    }
//
//
//    //Write control data from the array
//    I2C2TRN = 0x25; // Read address
//    /* Wait for transmit buffer to be empty */
//    while (I2C2STATbits.TBF);
//    /* Wait for transmit complete */
//    while (I2C2STATbits.TRSTAT);
//    /* Wait for NACK (should get nack according to AK4954A data sheet page 31) */
//    if (I2C2STATbits.ACKSTAT)
//    {
//        /* Increment error flag*/
//        i2cErrors++;
//    }
//
//
//    I2C2CONbits.RCEN = 1;//Receive enable bit
//    I2C2STATbits.I2COV = 0;
//    //Write control data from the array
//    //I2C2TRN = byte2;
//    /* Wait for receive buffer to be empty */
//    while (!I2C2STATbits.RBF);
//    /* Wait for receive complete */
//    byte2 = I2C2RCV;
//    //while (I2C2CONbits.RCEN);
//
//
//    /* Initiate the stop condition */
//    /* Clear the enable bits (SEN, RSEN, PEN, RCEN and ACKEN) */
//    I2C2CONCLR = 0x0000001F;
//    /* Set repeated start condition bit */
//    I2C2CONbits.PEN = 1;
//    /* Wait for stop sequence to finish  (hardware clear) */
//    while (I2C2CONbits.PEN);
//
//    while ((I2C2CON & 0x00000004) == 0x00000004);
//
//    I2C2CONCLR = 0x00008000;
//
//    return (byte2);
//}


// *****************************************************************************
 /*
  Function:
    static void _DRV_AK4954_ControlTasks(DRV_AK4954_OBJ *drvObj)

  Summary:
    Implements the state machine for the Audio control interface of AK4954

  Description:
    Implements the state machine for the Audio control interface of AK4954

  Remarks:
    None
*/
static void _DRV_AK4954_ControlTasks(DRV_AK4954_OBJ *drvObj)
{
    volatile uint8_t regValue;

    switch (drvObj->command)
    {
        case DRV_AK4954_COMMAND_NONE:
        {
            /* Do nothing. No Control Command executed */
            ;
        }
        break;

        case DRV_AK4954_COMMAND_INIT_CLK_PDN_SET:
        {
			/* Generate master clock from REFCLOCK for the given sampling rate */
             _DRV_AK4954_MasterClockSet(drvObj->samplingRate, drvObj->mclk_multiplier);

            /* If the delayDriverInitialization option is enabled, we will skip
               toggling the chip's reset pin, since we assume it is tied to a
               common reset line shared with other peripherals such as a
               Bluetooth module, that has already been toggled (which would
               have earlier reset the codec). */
             
            if (drvObj->delayDriverInitialization==false)
            {
               /* Reset Values for Control interface  and power down pins */
               BSP_AK4954_PDNOff();

               /* Bring power down out of reset */
               BSP_AK4954_PDNOn();
            }

            /* Initiate AK4954 Command */
            drvObj->command = DRV_AK4954_COMMAND_INIT_MODE_CTRL_SET;

            //AK4954 needs a sequence of dummy address 00 and dummy data 00 to get I2C communication started.
            command_array[0] = 0;
            command_array[1] = 0;
            drvObj->drvI2CBuffHandle = _DRV_AK4954_ConrolRegisterReSet(drvObj, command_array, 2);
            
        }
        break;
        case DRV_AK4954_COMMAND_INIT_MODE_CTRL_SET:
        {
            
            if  (DRV_I2C_TransferStatusGet(drvObj->drvI2CMasterHandle, drvObj->drvI2CBuffHandle) == DRV_I2C_BUFFER_EVENT_COMPLETE)
            {
                
                drvObj->command = DRV_AK4954_COMMAND_INIT_START;
                
                // Ak4954 Audio Interface Format
                regValue = _DRV_AK4954_CONTROL_REG_FIELD_WRITE_Wrapper(drvObj,
                            AK4954A_REG_MODE_CTRL1,
                            0xFF,
                            0,
                            MODECTRL1_DIF1_UP | MODECTRL1_DIF0_UP
                            );                 
                command_array[0] = (uint8_t)(AK4954A_REG_MODE_CTRL1 & 0xFF);
                command_array[1] = (uint8_t)(regValue&0xFF);
                

                // MCKI frequency Setting
                regValue = _DRV_AK4954_CONTROL_REG_FIELD_WRITE_Wrapper(drvObj,
                            AK4954A_REG_MODE_CTRL2,
                            0xFF,
                            0,
                            _getAK4954_samplerate(drvObj->samplingRate)
                            );
                command_array[2] = (uint8_t)(regValue & 0xFF);

                //+26dB MGAIN while PMAD<L,R> OFF
                regValue = _DRV_AK4954_CONTROL_REG_FIELD_WRITE_Wrapper(
                                drvObj,
                                AK4954A_REG_SIG_SLCT1,
                                0x07,
                                0, 
                                SIGSLCT1_MGAIN2_SET | 
                                SIGSLCT1_MGAIN1_SET |
                                SIGSLCT1_MGAIN0_SET);
                command_array[3] = (uint8_t)(regValue & 0xFF);

                //Left IVL Level (ALC=0)
                regValue = _DRV_AK4954_CONTROL_REG_FIELD_WRITE_Wrapper(
                                drvObj,
                                AK4954A_REG_LIN_VOL_CTRL,
                                0xFF,
                                0, 
                                LINPGAGAIN_IVL(0xFF));
                command_array[4] = (uint8_t)(regValue & 0xFF);

                //Right IVL Level (ALC=0)
                regValue = _DRV_AK4954_CONTROL_REG_FIELD_WRITE_Wrapper(
                                drvObj,
                                AK4954A_REG_RIN_VOL_CTRL,
                                0xFF,
                                0, 
                                RINPGAGAIN_IVL(0xFF));
                command_array[5] = (uint8_t)(regValue & 0xFF);


                
                // write to 0x05 and 0x06 control address in one operation
                drvObj->drvI2CBuffHandle = _DRV_AK4954_ConrolRegisterSet(drvObj, command_array, 6);
            }
            break;
        }
        
        case DRV_AK4954_COMMAND_INIT_START:
        {
            
            if (DRV_I2C_TransferStatusGet(drvObj->drvI2CMasterHandle, drvObj->drvI2CBuffHandle) == DRV_I2C_BUFFER_EVENT_COMPLETE 
                    && false == drvObj->controlCommandStatus)
            {
                drvObj->controlCommandStatus = true;
                drvObj->command = DRV_AK4954_COMMAND_DFLTR_MODE_SET;

                // Write to 0x00~0x12 control address in one operation
                
                // Set PMPFIL bit to enable microphone function
                regValue = _DRV_AK4954_CONTROL_REG_FIELD_WRITE_Wrapper(drvObj,
                            AK4954A_REG_PWR_MGMT1,
                            0xFF,
                            0, //Stereo Mic Selection
                            (PWRMGMT1_PMPFIL_UP | PWRMGMT1_PMVCM_UP | 
                             PWRMGMT1_PMDAC_UP | 
                             PWRMGMT1_PMADL_UP | PWRMGMT1_PMADR_UP));

                command_array[0] = (uint8_t)(AK4954A_REG_PWR_MGMT1&0xFF);
                command_array[1] = regValue;

                regValue = _DRV_AK4954_CONTROL_REG_FIELD_WRITE_Wrapper(drvObj,
                            AK4954A_REG_PWR_MGMT2,
                            0xFF,
                            0,
                            PWRMGMT2_PMHPL_UP | PWRMGMT2_PMHPR_UP
                            );
                command_array[2] = regValue;
                

                regValue = _DRV_AK4954_CONTROL_REG_FIELD_WRITE_Wrapper(drvObj,
                            AK4954A_REG_SIG_SLCT1,
                            0xFF,
                            0,
                            //SIGSLCT1_SLPSN_UP | SIGSLCT1_MPSEL_UP |   // Ext Mic enabled, Mic gain set   
                            SIGSLCT1_SLPSN_UP |                         // Int Mic enabled, Mic gain set
                            SIGSLCT1_PMMP_UP);

                command_array[3] = regValue;

                regValue = _DRV_AK4954_CONTROL_REG_FIELD_WRITE_Wrapper(drvObj,
                            AK4954A_REG_SIG_SLCT2,
                            0xFF,
                            0,
                            //SIGSLCT2_SLG0_ON | SIGSLCT2_INR0_ON | SIGSLCT2_INL0_ON  //External Mic selected
                            SIGSLCT2_SLG0_ON                                          //Internal Mic selected
                            );
                command_array[4] = regValue;
                


                regValue = _DRV_AK4954_CONTROL_REG_FIELD_WRITE_Wrapper(drvObj,
                            AK4954A_REG_SIG_SLCT3,
                            0xFF,
                            0,
                            SIGSLCT3_PTS0_UP
                            );
                command_array[5] = regValue;
               
                regValue = _DRV_AK4954_CONTROL_REG_FIELD_WRITE_Wrapper(drvObj,
                            AK4954A_REG_MODE_CTRL1,
                            0xFF,
                            0, 
                            MODECTRL1_DIF1_UP | MODECTRL1_DIF0_UP
                            );
                command_array[6] = regValue;

                regValue = _DRV_AK4954_CONTROL_REG_FIELD_WRITE_Wrapper(drvObj,
                            AK4954A_REG_MODE_CTRL2,
                            0xFF,
                            0,
                            _getAK4954_samplerate(drvObj->samplingRate)
                            );
                command_array[7] = regValue;

                regValue = _DRV_AK4954_CONTROL_REG_FIELD_WRITE_Wrapper(drvObj,
                            AK4954A_REG_MODE_CTRL3,
                            0xFF,
                            0,
                            //MODECTRL3_READ_UP | 
                            //MODECTRL3_OVOLC_UP |
                            MODECTRL3_DVOLC_UP);
                command_array[8] = regValue;

                regValue = _DRV_AK4954_CONTROL_REG_FIELD_WRITE_Wrapper(drvObj,
                            AK4954A_REG_DIG_MIC,
                            0xFF,
                            0,
                            0x00    //Digital Mic de-selected
                            );
                command_array[9] = regValue;

                
                regValue = _DRV_AK4954_CONTROL_REG_FIELD_WRITE_Wrapper(drvObj,
                            AK4954A_REG_TMR_SLCT,
                            0xFF,
                            0,
                            TMRSLCT_DVTM0_UP
                            );
                command_array[10] = regValue;
 

                 regValue = _DRV_AK4954_CONTROL_REG_FIELD_WRITE_Wrapper(drvObj,
                            AK4954A_REG_ALC_TMR_SLCT,
                            0xFF,
                            0,
                            0x00
                            );
                command_array[11] = regValue;

                 
                regValue = _DRV_AK4954_CONTROL_REG_FIELD_WRITE_Wrapper(drvObj,
                            AK4954A_REG_ALC_MODE_CTRL1,
                            0xFF,
                            0,
                            0x00
                            );
                command_array[12] = regValue;


                regValue = _DRV_AK4954_CONTROL_REG_FIELD_WRITE_Wrapper(drvObj,
                            AK4954A_REG_ALC_MODE_CTRL2,
                            0xFF,
                            0,
                            0xE1
                            );
                command_array[13] = regValue;


                //regValue = _DRV_AK4954_CONTROL_REG_FIELD_WRITE_Wrapper(drvObj,
                //            AK4954A_REG_ALC_MODE_CTRL3,
                //            0xFF,
                //            0,
                //            0x28
                //            );
                //command_array[14] = regValue;


                //regValue = _DRV_AK4954_CONTROL_REG_FIELD_WRITE_Wrapper(drvObj,
                //            AK4954A_REG_ALC_VLM,
                //            0xFF,
                //            0,
                //            0x91
                //            );
                //command_array[15] = regValue;


                regValue = _DRV_AK4954_CONTROL_REG_FIELD_WRITE_Wrapper(drvObj,
                            AK4954A_REG_LIN_VOL_CTRL,
                            0xFF,
                            0,
                            0xA1
                            );
                command_array[14] = regValue;


                regValue = _DRV_AK4954_CONTROL_REG_FIELD_WRITE_Wrapper(drvObj,
                            AK4954A_REG_RIN_VOL_CTRL,
                            0xFF,
                            0,
                            0xA1
                            );
                command_array[15] = regValue;


                //regValue = _DRV_AK4954_CONTROL_REG_FIELD_WRITE_Wrapper(drvObj,
                //            AK4954A_REG_LOP_VOL_CTRL,
                //            0xFF,
                //            0,
                //            0x90
                //            );
                //command_array[16] = regValue;


                //regValue = _DRV_AK4954_CONTROL_REG_FIELD_WRITE_Wrapper(drvObj,
                //            AK4954A_REG_ROP_VOL_CTRL,
                //            0xFF,
                //            0,
                //            0x90
                //            );
                //command_array[17] = regValue;


                drvObj->drvI2CBuffHandle = _DRV_AK4954_ConrolRegisterSet(drvObj, command_array, sizeof(command_array));
                
            }
            else
            {
                /* Do Nothing. Remain in this state untill
                 * the INIT_START command is transferred successfully */
                ;
            }

        }
        break;
        case DRV_AK4954_COMMAND_DFLTR_MODE_SET:
        {
            
            if (DRV_I2C_TransferStatusGet(drvObj->drvI2CMasterHandle, drvObj->drvI2CBuffHandle) == DRV_I2C_BUFFER_EVENT_COMPLETE 
                    && false == drvObj->controlCommandStatus)
            {
                drvObj->controlCommandStatus = true;
                regValue = _DRV_AK4954_CONTROL_REG_FIELD_WRITE_Wrapper(drvObj,
                            AK4954A_REG_DFLTR_MODE,
                            0x07,
                            0,
                            0x00
                            );  
                command_array[0] = (uint8_t)(AK4954A_REG_DFLTR_MODE&0xFF);
                command_array[1] = (uint8_t)(regValue&0xFF);
                drvObj->drvI2CBuffHandle = _DRV_AK4954_ConrolRegisterSet( drvObj, command_array, 2);
                drvObj->command = DRV_AK4954_COMMAND_INIT_AUDIOFORMAT;
            }
            
            
        }
        break;
        case DRV_AK4954_COMMAND_INIT_AUDIOFORMAT:
        {
            
            if (DRV_I2C_TransferStatusGet(drvObj->drvI2CMasterHandle, drvObj->drvI2CBuffHandle) == DRV_I2C_BUFFER_EVENT_COMPLETE 
                    && false == drvObj->controlCommandStatus)
            {
                drvObj->controlCommandStatus = true;
                regValue = _DRV_AK4954_CONTROL_REG_FIELD_WRITE_Wrapper(drvObj,
                            AK4954A_REG_MODE_CTRL1,
                            0x03,
                            0,
                            drvObj->audioDataFormat
                            );
                command_array[0] = (uint8_t)(AK4954A_REG_MODE_CTRL1&0xFF);
                command_array[1] = (uint8_t)(regValue&0xFF);
                drvObj->drvI2CBuffHandle = _DRV_AK4954_ConrolRegisterSet( drvObj, command_array, 2);
                drvObj->command = DRV_AK4954_COMMAND_VOLUME_SET_CHANNELS_INIT;
                
            }
            
        }
        break;
        case DRV_AK4954_COMMAND_VOLUME_SET_CHANNELS_INIT:
        {
            
            if (DRV_I2C_TransferStatusGet(drvObj->drvI2CMasterHandle, drvObj->drvI2CBuffHandle) == DRV_I2C_BUFFER_EVENT_COMPLETE 
                    && false == drvObj->controlCommandStatus)
            {
                drvObj->controlCommandStatus = true;
                DRV_AK4954_VolumeReMapping( drvObj, DRV_AK4954_CHANNEL_LEFT, drvObj->volume[DRV_AK4954_CHANNEL_LEFT]);
                DRV_AK4954_VolumeReMapping( drvObj, DRV_AK4954_CHANNEL_RIGHT, drvObj->volume[DRV_AK4954_CHANNEL_RIGHT]);

//                _DRV_AK4954_ConrolRegisterSet(drvObj,AK4954A_REG_LDIG_VOL_CTRL,drvObj->volume[DRV_AK4954_CHANNEL_LEFT]);
                command_array[0] = (uint8_t)(AK4954A_REG_LDIG_VOL_CTRL&0xFF);
                command_array[1] = (uint8_t)(drvObj->volume[DRV_AK4954_CHANNEL_LEFT]&0xFF);
                command_array[2] = (uint8_t)(drvObj->volume[DRV_AK4954_CHANNEL_RIGHT]&0xFF);
                drvObj->drvI2CBuffHandle = _DRV_AK4954_ConrolRegisterSet( drvObj, command_array, 3);
                drvObj->command = DRV_AK4954_COMMAND_INIT_END;
            }
        }
        break;
        case DRV_AK4954_COMMAND_INIT_END:
        {
            if (DRV_I2C_TransferStatusGet(drvObj->drvI2CMasterHandle, drvObj->drvI2CBuffHandle) == DRV_I2C_BUFFER_EVENT_COMPLETE 
                    && false == drvObj->controlCommandStatus)
            {
                drvObj->controlCommandStatus = true;
                drvObj->command = DRV_AK4954_COMMAND_NONE;
                drvObj->status = SYS_STATUS_READY;
            }
            else
            {
                /* Do Nothing. Remain in this state untill
                 * the INIT_END command is transferred successfully */
                ;
            }
        }
        break;
        case DRV_AK4954_COMMAND_SEND:
        {
            AK4954_COMMAND* cmd = _DRV_AK4954_CommandQueueTop();
            // Command Queue is Empty, no need to send control command
            if(cmd == NULL){
                drvObj->command = DRV_AK4954_COMMAND_NONE;
            }else{
                cmd->drvI2CBufHandle = _DRV_AK4954_ConrolRegisterSet( drvObj, cmd->control_data, cmd->array_size);
                drvObj->command = DRV_AK4954_COMMAND_COMPLETE;
            }
        }
        break;
        case DRV_AK4954_COMMAND_COMPLETE:
        {
            AK4954_COMMAND* cmd = _DRV_AK4954_CommandQueueTop();
            // safety check, cmd should never be NULL
            if(cmd == NULL){
                drvObj->command = DRV_AK4954_COMMAND_NONE;
            }else{
                if (DRV_I2C_TransferStatusGet(drvObj->drvI2CMasterHandle, cmd->drvI2CBufHandle) == DRV_I2C_BUFFER_EVENT_COMPLETE){
                    drvObj->command = DRV_AK4954_COMMAND_SEND;
                    // Release this command slot
                    _DRV_AK4954_CommandQueuePop();
                }
                /*
                else{
                    // otherwise continously check if this command completes
                }*/
            }
        }
        break;

        case DRV_AK4954_COMMAND_SAMPLING_RATE_SET:
        case DRV_AK4954_COMMAND_MUTE_ON:
        case DRV_AK4954_COMMAND_MUTE_OFF:
        case DRV_AK4954_COMMAND_DIGITAL_BLOCK_CONTROL_SET:
        case DRV_AK4954_COMMAND_VOLUME_SET_CHANNEL_LEFT:
        case DRV_AK4954_COMMAND_VOLUME_SET_CHANNEL_RIGHT:
        case DRV_AK4954_COMMAND_VOLUME_SET_CHANNEL_LEFT_ONLY:
        case DRV_AK4954_COMMAND_VOLUME_SET_CHANNEL_RIGHT_ONLY:
        case DRV_AK4954_COMMAND_MIC_SET:
        case DRV_AK4954_COMMAND_INT_EXT_MIC_SET:
        
        case DRV_AK4954_COMMAND_MONO_STEREO_MIC_SET:
        {
            if (false == drvObj->controlCommandStatus)
            {
                drvObj->controlCommandStatus = true;
                drvObj->command = DRV_AK4954_COMMAND_NONE;

                if (drvObj->commandCompleteCallback != (DRV_AK4954_COMMAND_EVENT_HANDLER) 0)
                {
                    drvObj->commandCompleteCallback(drvObj->commandContextData);
                }
            }
            else
            {
                /* Do Nothing. Remain in this state untill
                 * the command is transferred successfully */
                ;
            }
        }
        break;
    }
    return;
}


// *****************************************************************************
 /*
  Function:
        static void _DRV_AK4954_I2SBufferEventHandler
        (
            DRV_I2S_BUFFER_EVENT event,
            DRV_I2S_BUFFER_HANDLE bufferHandle,
            uintptr_t contextHandle
        )

  Summary:
    Implements the handler for i2s buffer request completion.

  Description:
    Implements the handler for i2s buffer request completion.

  Remarks:
    None
*/

static void _DRV_AK4954_I2SBufferEventHandler
(
    DRV_I2S_BUFFER_EVENT event,
    DRV_I2S_BUFFER_HANDLE bufferHandle,
    uintptr_t contextHandle
)
{
//    DRV_AK4954_OBJ *drvObj;
//    DRV_AK4954_BUFFER_OBJECT *bufObject;
    DRV_AK4954_CLIENT_OBJ *clientObj;

    if(DRV_I2S_BUFFER_HANDLE_INVALID == bufferHandle ||
            0 == contextHandle )
    {
        /* This means the handle is invalid */
        SYS_DEBUG(0, "Handle is invalid \r\n");
        return;
    }

    clientObj = (DRV_AK4954_CLIENT_OBJ *)contextHandle;
    if(DRV_I2S_BUFFER_EVENT_COMPLETE == event)
    {
        clientObj->pEventCallBack(DRV_AK4954_BUFFER_EVENT_COMPLETE,
            (DRV_AK4954_BUFFER_HANDLE) bufferHandle, clientObj->hClientArg);
    }
    else if(DRV_I2S_BUFFER_EVENT_ABORT == event)
    {
        clientObj->pEventCallBack(DRV_AK4954_BUFFER_EVENT_ABORT,
            (DRV_AK4954_BUFFER_HANDLE) bufferHandle, clientObj->hClientArg);
    }
    else if(DRV_I2S_BUFFER_EVENT_ERROR == event)
    {
        clientObj->pEventCallBack(DRV_AK4954_BUFFER_EVENT_ERROR,
            (DRV_AK4954_BUFFER_HANDLE) bufferHandle, clientObj->hClientArg);
    }
    else
    {
        ;
    }
    return;
}

// helper routine to get value for AK4954A_REG_MODE_CTRL2 register (FS0-3 bits) for AK4954
uint8_t _getAK4954_samplerate(uint32_t samplingRate)
{
    uint8_t ak4954_rate;
    
    ak4954_rate = 9;    // default
    if (samplingRate <= 8000)
    {
        ak4954_rate = 0;
    }
    else if (samplingRate <= 11025)
    {
        ak4954_rate = 1;
    }
     else if (samplingRate <= 12000)
    {
        ak4954_rate = 2;
    }  
     else if (samplingRate <= 16000)
    {
        ak4954_rate = 4;
    }
    else if (samplingRate <= 22050)
    {
        ak4954_rate = 5;
    }
    else if (samplingRate <= 24000)
    {
        ak4954_rate = 6;
    }
        else if (samplingRate <= 32000)
    {
        ak4954_rate = 8;
    }
    else if (samplingRate <= 44100)
    {
        ak4954_rate = 9;
    }
        else if (samplingRate <= 48000)
    {
        ak4954_rate = 10;
    }
    else if (samplingRate <= 64000)
    {
        ak4954_rate = 12;
    }
    else if (samplingRate <= 88200)
    {
        ak4954_rate = 13;
    }
    else if (samplingRate <= 96000)
    {
        ak4954_rate = 14;
    }
    
    return ak4954_rate;
}
// *****************************************************************************
// *****************************************************************************
// Section: AK4954 Command Queue Implementations
// *****************************************************************************
// *****************************************************************************
// *****************************************************************************
 /*
  Function:
        static void _DRV_AK4954_CommandQueueGetSlot
        (
        )

  Summary:
    Get a free slot from AK4954 command queue.

  Description:
    Get a free slot from AK4954 command queue.

  Remarks:
    None
*/
static AK4954_COMMAND* _DRV_AK4954_CommandQueueGetSlot(){
    
    if(gDrvCommandBuffer.status == 1)
    {
        return NULL;
    }
    AK4954_COMMAND* ret = NULL;
    ret = &gDrvCommandBuffer.commandBuffer[gDrvCommandBuffer.queueIn];
    gDrvCommandBuffer.queueIn++;
    if(gDrvCommandBuffer.queueIn == AK4954_COMMAND_QUEUE_BUFFER){
        gDrvCommandBuffer.queueIn = 0;
    }
    if(gDrvCommandBuffer.queueIn == gDrvCommandBuffer.queueOut)
    {
        // Buffer is Full
        gDrvCommandBuffer.status = 1;
    }else{
        gDrvCommandBuffer.status = 2;
    }
    return ret;
}
 /*
  Function:
        static void _DRV_AK4954_CommandQueuePop
        (
        )

  Summary:
    Pop up the top slot of AK4954 command queue.

  Description:
    Pop up the top slot of AK4954 command queue.

  Remarks:
    None
*/
static AK4954_COMMAND* _DRV_AK4954_CommandQueuePop(){
    if(gDrvCommandBuffer.status == 0)
    {
        return NULL;
    }
    AK4954_COMMAND *ret = &gDrvCommandBuffer.commandBuffer[gDrvCommandBuffer.queueOut];
    gDrvCommandBuffer.queueOut++;
    if(gDrvCommandBuffer.queueOut == AK4954_COMMAND_QUEUE_BUFFER){
        gDrvCommandBuffer.queueOut = 0;
    }
    if(gDrvCommandBuffer.queueOut == gDrvCommandBuffer.queueIn){
        gDrvCommandBuffer.status = 0;
    }else{
        gDrvCommandBuffer.status = 2;
    }
    return ret;
}
 /*
  Function:
        static void _DRV_AK4954_CommandQueueTop
        (
        )

  Summary:
    Return the top slot of AK4954 command queue.

  Description:
    Return the top slot of AK4954 command queue.

  Remarks:
    None
*/
static AK4954_COMMAND* _DRV_AK4954_CommandQueueTop(){
    if(gDrvCommandBuffer.status == 0)
    {
        return NULL;
    }
    AK4954_COMMAND *ret = &gDrvCommandBuffer.commandBuffer[gDrvCommandBuffer.queueOut];
    
    return ret;
}

// *****************************************************************************

 /*
  Function:
        static uint8_t _DRV_AK4954_CONTROL_REG_FIELD_WRITE_Wrapper
        (
            DRV_AK4954_OBJ *drvObj, 
            uint8_t reg_addr, 
            uint8_t mask, 
            uint8_t pos, 
            uint8_t val
        )

  Summary:
    A wrapper function of DRV_AK4954_CONTROL_REG_FIELD_WRITE macro.

  Description:
    A wrapper function of DRV_AK4954_CONTROL_REG_FIELD_WRITE macro.

  Remarks:
    None
*/
static uint8_t _DRV_AK4954_CONTROL_REG_FIELD_WRITE_Wrapper(DRV_AK4954_OBJ *drvObj, uint8_t reg_addr, uint8_t mask, uint8_t pos, uint8_t val){
    uint8_t regValue; 
    regValue = DRV_AK4954_CONTROL_REG_FIELD_WRITE(
                                drvObj->lastRegValue[reg_addr],
                                mask,
                                pos,
                                val);
    
    drvObj->lastRegValue[reg_addr] = regValue;
    return regValue;
}
// *****************************************************************************
 /*
  Function:
        static uint8_t _DRV_AK4954_CONTROL_REG_BIT_WRITE_Wrapper
        (
            DRV_AK4954_OBJ *drvObj, 
            uint8_t reg_addr, 
            uint8_t pos, 
            uint8_t val
        )

  Summary:
    A wrapper function of DRV_AK4954_CONTROL_REG_BIT_WRITE macro.

  Description:
    A wrapper function of DRV_AK4954_CONTROL_REG_BIT_WRITE macro.

  Remarks:
    None
*/
static uint8_t _DRV_AK4954_CONTROL_REG_BIT_WRITE_Wrapper(DRV_AK4954_OBJ *drvObj, uint8_t reg_addr, uint8_t pos, uint8_t val)
{
    uint8_t regValue;
    regValue = DRV_AK4954_CONTROL_REG_BIT_WRITE(
                    drvObj->lastRegValue[reg_addr],
                    pos,
                    val);
    drvObj->lastRegValue[reg_addr] = regValue;
    return regValue;
}

/*******************************************************************************
 End of File
*/

