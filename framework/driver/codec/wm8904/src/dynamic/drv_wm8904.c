/*******************************************************************************
  WM8904 Codec Driver Dynamic implementation.

  Company:
    Microchip Technology Inc.

  File Name:
    drv_WM8904_local_usb_audio.h

  Summary:
    WM8904 Codec Driver Dynamic implementation.

  Description:
    This file contains the Dynamic mode implementation of the WM8904 driver.
*******************************************************************************/
// DOM-IGNORE-BEGIN
/*******************************************************************************
Copyright (c) 2014 released Microchip Technology Inc.  All rights reserved.

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
//#define READWRITE

#include "driver/codec/wm8904/src/drv_wm8904_local.h"
#include "math.h"       // for floor

static bool add_I2C_Command(DRV_WM8904_OBJ *drvObj, WM8904_I2C_COMMAND_BUFFER I2C_CommandPtr,
        bool end);
static void start_I2C_Commands(DRV_WM8904_OBJ *drvObj);
static void _DRV_WM8904_ControlTasks(DRV_WM8904_OBJ *drvObj);
static void WM8904_TimerCallback( uintptr_t context, uint32_t alarmCount );
static void _DRV_WM8904_I2SBufferEventHandler(DRV_I2S_BUFFER_EVENT event,
    DRV_I2S_BUFFER_HANDLE bufferHandle, uintptr_t contextHandle);
static void _samplingRateSet(DRV_WM8904_OBJ *drvObj, uint32_t sampleRate, bool standalone);
static void _volumeSet(DRV_WM8904_OBJ *drvObj, DRV_WM8904_CHANNEL chan, uint8_t volume, bool standalone);

// *****************************************************************************
/* Driver Hardware instance objects.

  Summary:
    Defines the hardware instances objects for the WM8904 Codec

  Description:
    This data type defines the hardware instance objects that are available for
    WM8904 Codec, so as to capture the hardware state of the instance.

  Remarks:
    Not all modes are available on all micro-controllers.
 */
DRV_WM8904_OBJ gDrvwm8904Obj[DRV_WM8904_INSTANCES_NUMBER];

// *****************************************************************************
/* Driver Client instance objects.

  Summary:
    Defines the client instances objects

  Description:
    This data type defines the client instance objects that are available on
    WM8904, so as to capture the client state of the instance.
    It uses the configuration of maximum number of clients which can get
    registered per hardware instance.

  Remarks:
    Not all modes are available on all micro-controllers.
 */
DRV_WM8904_CLIENT_OBJ gDrvwm8904ClientObj[DRV_WM8904_CLIENTS_NUMBER];


// *****************************************************************************
/* Driver common data object

  Summary:
    Defines the common data object

  Description:
    This object maintains data that is required by all WM8904
   driver instances

  Remarks:
    None
 */
DRV_WM8904_COMMON_DATA_OBJ gDrvwm8904CommonDataObj;

// *****************************************************************************
// *****************************************************************************
// Section: WM8904 Codec Driver System Routine Implementations
// *****************************************************************************
// *****************************************************************************

// *****************************************************************************

/*   Function:
	SYS_MODULE_OBJ  DRV_WM8904_Initialize
	(
		const SYS_MODULE_INDEX drvIndex,
        const SYS_MODULE_INIT *const init
	);

  Summary:
    Initializes hardware and data for the instance of the WM8904 Codec module

  Description:
    This routine initializes the WM8904 driver instance for the specified driver
    index, making it ready for clients to open and use it. The initialization
    data is specified by the init parameter. The initialization may fail if the
    number of driver objects allocated are insufficient or if the specified
    driver instance is already initialized.

  Precondition:


  Remarks:
    This routine must be called before any other WM8904 routine is called.

    This routine should only be called once during system initialization
    unless DRV_WM8904_Deinitialize is called to de-initialize the driver
    instance. This routine will NEVER block for hardware access.

 */
SYS_MODULE_OBJ  DRV_WM8904_Initialize
(
	const SYS_MODULE_INDEX drvIndex,
	const SYS_MODULE_INIT *const init
)
{
    DRV_WM8904_OBJ *drvObj;
    DRV_WM8904_INIT *wm8904Init;
    uint8_t index;


    /* Validate the driver index */
    if (drvIndex >= DRV_WM8904_INSTANCES_NUMBER)
    {
        SYS_DEBUG(0, "Invalid driver index \r\n");
        return SYS_MODULE_OBJ_INVALID;
    }

    if (true == gDrvwm8904Obj[drvIndex].inUse)
    {
        /* Cannot initialize an object that is already in use. */
        SYS_DEBUG(0, "Instance already in use \r\n");
        return SYS_MODULE_OBJ_INVALID;
    }

    wm8904Init = (DRV_WM8904_INIT *) init;
    drvObj = (DRV_WM8904_OBJ *)&gDrvwm8904Obj[drvIndex];

    /* Populate the driver object with the required data */
    drvObj->inUse                           = true;
    drvObj->status                          = SYS_STATUS_UNINITIALIZED;
    drvObj->numClients                      = 0;
    drvObj->i2sDriverModuleIndex            = wm8904Init->i2sDriverModuleIndex;
    drvObj->samplingRate                    = wm8904Init->samplingRate;
    drvObj->audioDataFormat                 = wm8904Init->audioDataFormat;
    drvObj->enableMicInput                 = wm8904Init->enableMicInput;

    ////////////////////// from orig initialization
    /* Initialize the appCodecWM8904Data structure. */
    drvObj->currentState    = DRV_WM8904_STATE_INIT;
    drvObj->drvI2CHandle    = DRV_HANDLE_INVALID;
    drvObj->hReadyBuffer    = DRV_I2C_BUFFER_HANDLE_INVALID;
    drvObj->hTxBuffer       = DRV_I2C_BUFFER_HANDLE_INVALID;
    drvObj->hRxBuffer       = DRV_I2C_BUFFER_HANDLE_INVALID; 
    drvObj->drvIndex        = drvIndex;
    drvObj->WM8904Delay     = 0;
    drvObj->I2C_endLoop     = 0;
    drvObj->I2C_lastCommand = 0;   
    
    /*Assigning the init volume to all supported audio channels*/
    for(index=0; index < DRV_WM8904_NUMBER_OF_CHANNELS; index++)
    {
        drvObj->volume[index] = wm8904Init->volume;
    }

    drvObj->isInInterruptContext            = false;

    drvObj->commandCompleteCallback = (DRV_WM8904_COMMAND_EVENT_HANDLER)0;    
    drvObj->commandContextData = -1;

    switch(drvObj->audioDataFormat)
    {
        default:
        case DATA_16_BIT_LEFT_JUSTIFIED:
        case DATA_16_BIT_I2S:
    drvObj->bit_depth = 16;
            break;

        case DATA_32_BIT_LEFT_JUSTIFIED:
        case DATA_32_BIT_I2S:
            drvObj->bit_depth = 32;
            break;
    }

    /* Create the hardware instance mutex. */
     if(OSAL_MUTEX_Create(&(drvObj->mutexDriverInstance)) != OSAL_RESULT_TRUE)
     {
        return SYS_MODULE_OBJ_INVALID;
     }

    /* Check if the global mutexes have been created. If not
       then create these. */
     if(!gDrvwm8904CommonDataObj.membersAreInitialized)
     {
         /* This means that mutexes where not created. Create them. */
         if((OSAL_MUTEX_Create(&(gDrvwm8904CommonDataObj.mutexClientObjects)) != OSAL_RESULT_TRUE))
         {
            return SYS_MODULE_OBJ_INVALID;
         }
         /* Set this flag so that global mutexes get allocated only once */
         gDrvwm8904CommonDataObj.membersAreInitialized = true;
     }

    drvObj->status = SYS_STATUS_BUSY;

    /* Return the object structure */
    return ((SYS_MODULE_OBJ) drvObj);

} /* DRV_WM8904_Initialize */

// *****************************************************************************
/* Function:
    void DRV_WM8904_Deinitialize( SYS_MODULE_OBJ object)

  Summary:
    Deinitializes the specified instance of the WM8904 driver module

  Description:
    Deinitializes the specified instance of the WM8904 driver module, disabling
    its operation (and any hardware).  Invalidates all the internal data.

  Precondition:
    Function DRV_WM8904_Initialize should have been called before calling this
    function.

  Parameters:
    object          - Driver object handle, returned from the
                      DRV_WM8904_Initialize routine

  Returns:
    None.

  Remarks:
    Once the Initialize operation has been called, the De-initialize operation
    must be called before the Initialize operation can be called again. This
    routine will NEVER block waiting for hardware.
*/
void DRV_WM8904_Deinitialize( SYS_MODULE_OBJ object)
{
    DRV_WM8904_OBJ *drvObj;
    

    if (object == SYS_MODULE_OBJ_INVALID || object == (SYS_MODULE_OBJ)NULL )
    {
        /* Invalid object */
        SYS_DEBUG(0, "Invalid object \r\n");
        return;
    }


	drvObj = (DRV_WM8904_OBJ *) object;

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

    /* Set number of clients to zero */
    drvObj->numClients = 0;
    drvObj->status = SYS_STATUS_UNINITIALIZED;
}


// *****************************************************************************
/* Function:
    SYS_STATUS DRV_WM8904_Status( SYS_MODULE_OBJ object)

  Summary:
    Gets the current status of the WM8904 driver module.

  Description:
    This routine provides the current status of the WM8904 driver module.

  Precondition:
    Function DRV_WM8904_Initialize should have been called before calling this
    function.

  Parameters:
    object          - Driver object handle, returned from the
                      DRV_WM8904_Initialize routine

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
SYS_STATUS DRV_WM8904_Status( SYS_MODULE_OBJ object)
{
    DRV_WM8904_OBJ *drvObj;

    if (object == SYS_MODULE_OBJ_INVALID ||
        object < DRV_WM8904_INSTANCES_NUMBER)
    {
        SYS_DEBUG(0, "System Module Object is invalid \r\n");
        return SYS_STATUS_ERROR;
    }
    drvObj = (DRV_WM8904_OBJ *)object;

    /* Return the status of the driver object */
    return drvObj->status;
} /* DRV_WM8904_Status */


// *****************************************************************************
/* Function:
    void  DRV_WM8904_Tasks(SYS_MODULE_OBJ object);

  Summary:
    Maintains the driver's control and data interface state machine.

  Description:
    This routine is used to maintain the driver's internal control and data
    interface state machine and implement its control and data interface
    implementations.
    This function should be called from the SYS_Tasks() function.

  Precondition:
    The DRV_WM8904_Initialize routine must have been called for the specified
    WM8904 driver instance.

  Parameters:
    object      - Object handle for the specified driver instance (returned from
                  DRV_WM8904_Initialize)

  Returns:
    None.

  Remarks:
    This routine is normally not called directly by an application.  It is
    called by the system's Tasks routine (SYS_Tasks).

*/
void DRV_WM8904_Tasks(SYS_MODULE_OBJ object)
{

    DRV_WM8904_OBJ *drvObj;

    drvObj = (DRV_WM8904_OBJ *)object;

    if((false == drvObj->inUse))
    {
        // This instance of the driver is not initialized. Don't do anything
        return;
    }

    _DRV_WM8904_ControlTasks(drvObj);
}


// *****************************************************************************
// *****************************************************************************
// Section: WM8904 Codec Driver Client Routines
// *****************************************************************************
// *****************************************************************************
// *****************************************************************************
/* Function:
    DRV_HANDLE DRV_WM8904_Open
    (
		const SYS_MODULE_INDEX drvIndex,
		const DRV_IO_INTENT    ioIntent
	)

  Summary:
    Opens the specified WM8904 driver instance and returns a handle to it

  Description:
    This routine opens the specified WM8904 driver instance and provides a
    handle that must be provided to all other client-level operations to
    identify the caller and the instance of the driver. The ioIntent
    parameter defines how the client interacts with this driver instance.

    The DRV_IO_INTENT_BLOCKING and DRV_IO_INTENT_NONBLOCKING ioIntent
    options are not relevant to this driver. All the data transfer functions
    of this driver are non blocking.

    Only DRV_IO_INTENT_WRITE is a valid ioIntent option as WM8904 is DAC only.

    Specifying a DRV_IO_INTENT_EXCLUSIVE will cause the driver to provide
    exclusive access to this client. The driver cannot be opened by any
    other client.

  Precondition:
    Function DRV_WM8904_Initialize must have been called before calling this
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
    - if the number of client objects allocated via DRV_WM8904_CLIENTS_NUMBER is insufficient.
    - if the client is trying to open the driver but driver has been opened exclusively by another client.
    - if the driver hardware instance being opened is not initialized or is invalid.
    - if the ioIntent options passed are not relevant to this driver.

  Remarks:
    The handle returned is valid until the DRV_WM8904_Close routine is called.
    This routine will NEVER block waiting for hardware.If the requested intent
    flags are not supported, the routine will return DRV_HANDLE_INVALID.  This
    function is thread safe in a RTOS application. It should not be called in an
    ISR.
*/
DRV_HANDLE DRV_WM8904_Open
(
	const SYS_MODULE_INDEX iDriver,
	const DRV_IO_INTENT ioIntent
)
{
    DRV_WM8904_CLIENT_OBJ *hClient;
    DRV_WM8904_OBJ *drvObj;
    uint32_t iClient;

    /* The iDriver value should be valid. It should be
     * less the number of driver object instances.
     */
    if (iDriver >= DRV_WM8904_INSTANCES_NUMBER)
    {
        SYS_DEBUG(0, "Bad Driver Index \r\n");
        return DRV_HANDLE_INVALID;
    }
    drvObj = (DRV_WM8904_OBJ *)&gDrvwm8904Obj[iDriver];
    if (drvObj->status != SYS_STATUS_READY)
    {
        /* The WM8904  module should be ready */
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
    hClient = (DRV_WM8904_CLIENT_OBJ *)&gDrvwm8904ClientObj[iClient];

    /* Grab client object mutex here */
    if(OSAL_MUTEX_Lock(&(gDrvwm8904CommonDataObj.mutexClientObjects), OSAL_WAIT_FOREVER) == OSAL_RESULT_TRUE)
    {
        /* Setup client operations */
        /* Find available slot in array of client objects */
        for (; iClient < DRV_WM8904_CLIENTS_NUMBER; iClient++)
        {
            if (false == hClient->inUse)
            {
                /* Set the exclusive mode for the driver instance */
                /* Set the exclusive mode for the driver instance */
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

                hClient->ioIntent |= DRV_IO_INTENT_NONBLOCKING;

                /* Remember which WM8904 driver instance owns me */
                hClient->inUse  = true;
                hClient->hDriver = drvObj;
                hClient->pEventCallBack = NULL;
                //hClient->pReadEventCallBack = NULL;
                drvObj->numClients++;
                /* We have found a client object
                 * Release the mutex and return with
                 * the driver handle */
                /* An operation mode is needed */
                if((OSAL_MUTEX_Unlock(&(gDrvwm8904CommonDataObj.mutexClientObjects))) != OSAL_RESULT_TRUE)
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
        if((OSAL_MUTEX_Unlock(&(gDrvwm8904CommonDataObj.mutexClientObjects))) != OSAL_RESULT_TRUE)
        {
            SYS_DEBUG(0, "Unable to unlock open routine mutex \r\n");
        }
    }
    return DRV_HANDLE_INVALID;
}

// *****************************************************************************
/* Function:
    void DRV_WM8904_Close( DRV_Handle handle )

  Summary:
    Closes an opened-instance of the WM8904 driver

  Description:
    This routine closes an opened-instance of the WM8904 driver, invalidating the
    handle. Any buffers in the driver queue that were submitted by this client
    will be removed.  After calling this routine, the handle passed in "handle"
    must not be used with any of the remaining driver routines.  A new handle must
    be obtained by calling DRV_WM8904_Open before the caller may use the driver
    again

  Remarks:

    Usually there is no need for the driver client to verify that the Close
    operation has completed.  The driver will abort any ongoing operations
    when this routine is called.
*/
void DRV_WM8904_Close( const DRV_HANDLE handle)
{
    DRV_WM8904_CLIENT_OBJ *clientObj;
    DRV_WM8904_OBJ *drvObj;
    //DRV_WM8904_BUFFER_OBJECT *iterator1, *iterator2;

    if(handle == DRV_HANDLE_INVALID || (DRV_HANDLE)NULL == handle)
    {
        SYS_DEBUG(0, "Invalid Driver Handle \r\n");
        return;
    }

    clientObj = (DRV_WM8904_CLIENT_OBJ *) handle;
    if (false == clientObj->inUse)
    {
        SYS_DEBUG(0, "Invalid Driver Handle \r\n");
        return;
    }

    drvObj = (DRV_WM8904_OBJ *) clientObj->hDriver;

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
} /* DRV_WM8904_Close */


// *****************************************************************************
/*
Function:
	void DRV_WM8904_BufferAddWrite
	(
		const DRV_HANDLE handle,
		DRV_WM8904_BUFFER_HANDLE *bufferHandle,
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
    modified.  The function returns DRV_WM8904_BUFFER_HANDLE_INVALID
    - if a buffer could not be allocated to the request
    - if the input buffer pointer is NULL
    - if the buffer size is 0.
    - if the queue is full or the queue depth is insufficient
    If the requesting client registered an event callback with the driver,
    the driver will issue a DRV_WM8904_BUFFER_EVENT_COMPLETE event if the buffer
    was processed successfully of DRV_WM8904_BUFFER_EVENT_ERROR event if the
    buffer was not processed successfully.

  Precondition:
    The DRV_WM8904_Initialize routine must have been called for the specified
    WM8904 device instance and the DRV_WM8904_Status must have returned
    SYS_STATUS_READY.

    DRV_WM8904_Open must have been called to obtain a valid opened device handle.

    DRV_IO_INTENT_WRITE ust have been specified in the DRV_WM8904_Open call.

  Parameters:
    handle       - Handle of the WM8904 instance as return by the
                   DRV_WM8904_Open function.
    buffer       - Data to be transmitted.
    size         - Buffer size in bytes.
    bufferHandle - Pointer to an argument that will contain the
                   return buffer handle.

  Returns:
    The bufferHandle parameter will contain the return buffer handle. This will be
    DRV_WM8904_BUFFER_HANDLE_INVALID if the function was not successful.

   Remarks:
    This function is thread safe in a RTOS application. It can be called from
    within the WM8904 Driver Buffer Event Handler that is registered by this
    client. It should not be called in the event handler associated with another
    WM8904 driver instance. It should not otherwise be called directly in an ISR.

*/
void DRV_WM8904_BufferAddWrite
(
	const DRV_HANDLE handle,
	DRV_WM8904_BUFFER_HANDLE *bufferHandle,
	void *buffer, size_t size
)
{
    DRV_WM8904_CLIENT_OBJ *clientObj;

    DRV_WM8904_OBJ *drvObj;

    /* The Client and driver objects from the handle */
    clientObj = (DRV_WM8904_CLIENT_OBJ *) handle;
    drvObj = (DRV_WM8904_OBJ *) clientObj->hDriver;

    /* We first check the arguments and initialize the
     * buffer handle */
    if(bufferHandle != NULL)
    {
        *bufferHandle = DRV_WM8904_BUFFER_HANDLE_INVALID;
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
            *bufferHandle = (DRV_WM8904_BUFFER_HANDLE)i2sBufferHandle;
        }
        else
        {
            *bufferHandle = DRV_WM8904_BUFFER_HANDLE_INVALID;
        }
    }

    /* Release mutex */
    if((OSAL_MUTEX_Unlock(&(drvObj->mutexDriverInstance))) != OSAL_RESULT_TRUE)
    {
        SYS_DEBUG(0, "Unable to DriverInstance mutex \r\n");
    }
} /* DRV_WM8904_BufferAddWrite */

// *****************************************************************************
/* Function:
	void DRV_WM8904_BufferAddWriteRead
        (
                const DRV_HANDLE handle,
                DRV_WM8904_BUFFER_HANDLE *bufferHandle,
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
    be modified. The function returns DRV_WM8904_BUFFER_EVENT_COMPLETE:
    - if a buffer could not be allocated to the request
    - if the input buffer pointer is NULL
    - if the client opened the driver for read only or write only
    - if the buffer size is 0
    - if the queue is full or the queue depth is insufficient
    If the requesting client registered an event callback with the driver,
    the driver will issue a DRV_WM8904_BUFFER_EVENT_COMPLETE event if the buffer
    was processed successfully of DRV_WM8904_BUFFER_EVENT_ERROR event if the
    buffer was not processed successfully.

  Remarks:
    This function is thread safe in a RTOS application. It can be called from
    within the WM8904 Driver Buffer Event Handler that is registered by this
    client. It should not be called in the event handler associated with another
    WM8904 driver instance. It should not otherwise be called directly in an ISR.

    This function is useful when there is valid read expected for every
    WM8904 write. The transmit and receive size must be same.

*/
void DRV_WM8904_BufferAddWriteRead
(
    const DRV_HANDLE handle,
    DRV_WM8904_BUFFER_HANDLE	*bufferHandle,
    void *transmitBuffer, void *receiveBuffer,
    size_t size
)
{
    DRV_WM8904_CLIENT_OBJ *clientObj;

    DRV_WM8904_OBJ *drvObj;

    /* The Client and driver objects from the handle */
    clientObj = (DRV_WM8904_CLIENT_OBJ *) handle;
    drvObj = (DRV_WM8904_OBJ *) clientObj->hDriver;

    /* We first check the arguments and initialize the
     * buffer handle */
    if(bufferHandle != NULL)
    {
        *bufferHandle = DRV_WM8904_BUFFER_HANDLE_INVALID;
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
            *bufferHandle = (DRV_WM8904_BUFFER_HANDLE)i2sBufferHandle;
        }
        else
        {
            *bufferHandle = DRV_WM8904_BUFFER_HANDLE_INVALID;
        }
    }

    /* Release mutex */
    if((OSAL_MUTEX_Unlock(&(drvObj->mutexDriverInstance))) != OSAL_RESULT_TRUE)
    {
        SYS_DEBUG(0, "Unable to DriverInstance mutex \r\n");
    }
} /* DRV_WM8904_BufferAddWriteRead */

// *****************************************************************************
/*
Function:
	void DRV_WM8904_BufferAddRead
	(
		const DRV_HANDLE handle,
		DRV_WM8904_BUFFER_HANDLE *bufferHandle,
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
    modified.  The function returns DRV_WM8904_BUFFER_HANDLE_INVALID
    - if a buffer could not be allocated to the request
    - if the input buffer pointer is NULL
    - if the buffer size is 0.
    - if the queue is full or the queue depth is insufficient
    If the requesting client registered an event callback with the driver,
    the driver will issue a DRV_WM8904_BUFFER_EVENT_COMPLETE event if the buffer
    was processed successfully of DRV_WM8904_BUFFER_EVENT_ERROR event if the
    buffer was not processed successfully.

  Precondition:
    The DRV_WM8904_Initialize routine must have been called for the specified
    WM8904 device instance and the DRV_WM8904_Status must have returned
    SYS_STATUS_READY.

    DRV_WM8904_Open must have been called to obtain a valid opened device handle.

    DRV_IO_INTENT_WRITE ust have been specified in the DRV_WM8904_Open call.

  Parameters:
    handle       - Handle of the WM8904 instance as return by the
                   DRV_WM8904_Open function.
    buffer       - Data to be transmitted.
    size         - Buffer size in bytes.
    bufferHandle - Pointer to an argument that will contain the
                   return buffer handle.

  Returns:
    The bufferHandle parameter will contain the return buffer handle. This will be
    DRV_WM8904_BUFFER_HANDLE_INVALID if the function was not successful.

   Remarks:
    This function is thread safe in a RTOS application. It can be called from
    within the WM8904 Driver Buffer Event Handler that is registered by this
    client. It should not be called in the event handler associated with another
    WM8904 driver instance. It should not otherwise be called directly in an ISR.

*/
void DRV_WM8904_BufferAddRead
(
	const DRV_HANDLE handle,
	DRV_WM8904_BUFFER_HANDLE *bufferHandle,
	void *buffer, size_t size
)
{
    DRV_WM8904_CLIENT_OBJ *clientObj;

    DRV_WM8904_OBJ *drvObj;

    /* The Client and driver objects from the handle */
    clientObj = (DRV_WM8904_CLIENT_OBJ *) handle;
    drvObj = (DRV_WM8904_OBJ *) clientObj->hDriver;

    /* We first check the arguments and initialize the
     * buffer handle */
    if(bufferHandle != NULL)
    {
        *bufferHandle = DRV_WM8904_BUFFER_HANDLE_INVALID;
    }

    /* See if the handle is still valid */
    if(false == clientObj->inUse)
    {
        SYS_DEBUG(0, "Invalid Driver Handle \r\n");
        return;
    }

    /* Grab a mutex. */
//    if (OSAL_MUTEX_Lock(&(drvObj->mutexDriverInstance), OSAL_WAIT_FOREVER) == OSAL_RESULT_TRUE)
//    {
//        ;
//    }
//    else
//    {
//        /* The mutex acquisition timed out. Return with an
//         * invalid handle. This code will not execute
//         * if there is no RTOS. */
//        return;
//    }

    {
        DRV_I2S_BUFFER_HANDLE i2sBufferHandle = DRV_I2S_BUFFER_HANDLE_INVALID;
        DRV_I2S_BufferAddRead( drvObj->i2sDriverClientHandleRead, &i2sBufferHandle,
                                    (uint8_t *) buffer, size);


        if(i2sBufferHandle != DRV_I2S_BUFFER_HANDLE_INVALID)
        {
            *bufferHandle = (DRV_WM8904_BUFFER_HANDLE)i2sBufferHandle;
        }
        else
        {
            *bufferHandle = DRV_WM8904_BUFFER_HANDLE_INVALID;
        }
    }
} /* DRV_WM8904_BufferAddRead */

// *****************************************************************************
/*
  Function:
	void DRV_WM8904_BufferEventHandlerSet
	(
		DRV_HANDLE handle,
		const DRV_WM8904_BUFFER_EVENT_HANDLER eventHandler,
		const uintptr_t contextHandle
	)

  Summary:
    This function allows a client to identify a buffer event handling function
    for the driver to call back when queued buffer transfers have finished.

  Description:
    This function allows a client to identify a buffer event handling function
    for the driver to call back when queued buffer transfers have finished.
    When a client calls DRV_WM8904_BufferAddWrite function, it is provided with
    a handle identifying  the buffer that was added to the driver's buffer queue.
    The driver will pass this handle back to the client by calling "eventHandler"
    function when the buffer transfer has completed.

    The event handler should be set before the client performs any "buffer add"
    operations that could generate events. The event handler once set, persists
    until the client closes the driver or sets another event handler (which
    could be a "NULL" pointer to indicate no callback).

  Precondition:
    The DRV_WM8904_Initialize routine must have been called for the specified
    WM8904 driver instance.

    DRV_WM8904_Open must have been called to obtain a valid opened device handle.

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
void DRV_WM8904_BufferEventHandlerSet
(
	DRV_HANDLE handle,
	const DRV_WM8904_BUFFER_EVENT_HANDLER eventHandler,
	const uintptr_t contextHandle
)
{
    DRV_WM8904_CLIENT_OBJ *clientObj;
    DRV_WM8904_OBJ *drvObj;

    if((DRV_HANDLE_INVALID == handle) || (0 == handle))
    {
        /* This means the handle is invalid */
        SYS_DEBUG(0, "Handle is invalid \r\n");
        return;
    }

    /* Assing the event handler and the context */
    clientObj = (DRV_WM8904_CLIENT_OBJ *) handle;
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
        (DRV_I2S_BUFFER_EVENT_HANDLER) _DRV_WM8904_I2SBufferEventHandler,
        (uintptr_t)(clientObj));
    }
    else if((clientObj->ioIntent & DRV_IO_INTENT_READWRITE) == DRV_IO_INTENT_WRITE)
    {
        DRV_I2S_BufferEventHandlerSet(drvObj->i2sDriverClientHandleWrite,
        (DRV_I2S_BUFFER_EVENT_HANDLER) _DRV_WM8904_I2SBufferEventHandler,
        (uintptr_t)(clientObj));
    }
    else if((clientObj->ioIntent & DRV_IO_INTENT_READWRITE) == DRV_IO_INTENT_READ)
    {
        DRV_I2S_BufferEventHandlerSet(drvObj->i2sDriverClientHandleRead,
        (DRV_I2S_BUFFER_EVENT_HANDLER) _DRV_WM8904_I2SBufferEventHandler,
        (uintptr_t)(clientObj));
    }
} /* DRV_WM8904_BufferEventHandlerSet */

void DRV_WM8904_I2SBufferHandlerSet
(
	DRV_HANDLE handle,
        DRV_I2S_BUFFER_EVENT_HANDLER I2SBufferEventHandler
)
{
    DRV_WM8904_CLIENT_OBJ *clientObj;
    DRV_WM8904_OBJ *drvObj;

    if((DRV_HANDLE_INVALID == handle) || (0 == handle))
    {
        /* This means the handle is invalid */
        SYS_DEBUG(0, "Handle is invalid \r\n");
        return;
    }

    clientObj = (DRV_WM8904_CLIENT_OBJ *) handle;
    if(false == clientObj->inUse)
    {
        SYS_DEBUG(0, "Invalid driver handle \r\n");
        return;
    }
    drvObj = clientObj->hDriver;

    DRV_I2S_BufferEventHandlerSet(drvObj->i2sDriverHandle,
        (DRV_I2S_BUFFER_EVENT_HANDLER) I2SBufferEventHandler,
        (uintptr_t)(drvObj));
}

// *****************************************************************************
/*
  Function:
    void DRV_WM8904_SetAudioCommunicationMode
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
    The DRV_WM8904_Initialize routine must have been called for the specified
    WM8904 driver instance.

    DRV_WM8904_Open must have been called to obtain a valid opened device handle.

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
#if 0
void DRV_WM8904_SetAudioCommunicationMode
(
    DRV_HANDLE handle, 
    const DATA_LENGTH dl, 
    const SAMPLE_LENGTH sl)
{
    
    DRV_WM8904_OBJ *drvObj;
    DRV_WM8904_CLIENT_OBJ *clientObj;

    if((DRV_HANDLE_INVALID == handle) || (0 == handle))
    {
        /* This means the handle is invalid */
        SYS_DEBUG(0, "Handle is invalid \r\n");
        return;
    }
    
    clientObj = (DRV_WM8904_CLIENT_OBJ *) handle;
    
    if(false == clientObj->inUse)
    {
        SYS_DEBUG(0, "Invalid driver handle \r\n");
        return;
    }
    
    drvObj = (DRV_WM8904_OBJ *)clientObj->hDriver;
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
#endif

#define WM8904_NUMBER_AUDIOFORMAT_COMMANDS   1

static void _setAudioCommunicationFormat(DRV_WM8904_OBJ *drvObj, DRV_WM8904_AUDIO_DATA_FORMAT audioDataFormat, bool standalone)
{
    WM8904_I2C_COMMAND_BUFFER WM8904_I2C_Command;

    switch(audioDataFormat)
    {
        case DATA_16_BIT_LEFT_JUSTIFIED:
            WM8904_I2C_Command.reg_addr = WM8904_AUDIO_INTERFACE_1; // R25
            WM8904_I2C_Command.value = WM8904_BCLK_DIR | WM8904_AIF_WL_16BIT | WM8904_AIF_FMT_LEFT;
            drvObj->bit_depth = 16;
            break;
        default:            
        case DATA_16_BIT_I2S:
            WM8904_I2C_Command.reg_addr = WM8904_AUDIO_INTERFACE_1; // R25
            WM8904_I2C_Command.value = WM8904_BCLK_DIR | WM8904_AIF_WL_16BIT | WM8904_AIF_FMT_I2S; 
            drvObj->bit_depth = 16;
            break;            
        case DATA_32_BIT_LEFT_JUSTIFIED:
            WM8904_I2C_Command.reg_addr = WM8904_AUDIO_INTERFACE_1; // R25
            WM8904_I2C_Command.value = WM8904_BCLK_DIR | WM8904_AIF_WL_32BIT | WM8904_AIF_FMT_LEFT;
            drvObj->bit_depth = 32;            
            break;
        case DATA_32_BIT_I2S:
            WM8904_I2C_Command.reg_addr = WM8904_AUDIO_INTERFACE_1; // R25
            WM8904_I2C_Command.value = WM8904_BCLK_DIR | WM8904_AIF_WL_32BIT | WM8904_AIF_FMT_I2S;            
            drvObj->bit_depth = 32;            
            break;
    }    
    
    WM8904_I2C_Command.delay = (standalone) ? 5 : 2;             
    add_I2C_Command(drvObj, WM8904_I2C_Command, standalone);   // add command to buffer

    if (standalone)
    {
        start_I2C_Commands(drvObj);
        drvObj->audioDataFormat = audioDataFormat;
    }
}

// *****************************************************************************
/*
  Function:
	void DRV_WM8904_CommandEventHandlerSet
	(
		DRV_HANDLE handle,
		const DRV_WM8904_COMMAND_EVENT_HANDLER eventHandler,
		const uintptr_t contextHandle
	)

  Summary:
    This function allows a client to identify a command event handling function
    for the driver to call back when the last submitted command have finished.

  Description:
    This function allows a client to identify a command event handling function
    for the driver to call back when the last submitted command have finished.

    When a client calls DRV_WM8904_BufferAddWrite function, it is provided with
    a handle identifying  the buffer that was added to the driver's buffer queue.
    The driver will pass this handle back to the client by calling "eventHandler"
    function when the buffer transfer has completed.

    The event handler should be set before the client performs any "WM8904 Codec
    Specific Client Routines" operations that could generate events.
    The event handler once set, persists until the client closes the driver or
    sets another event handler (which could be a "NULL" pointer to indicate no callback).

  Precondition:
    The DRV_WM8904_Initialize routine must have been called for the specified
    WM8904 driver instance.

    DRV_WM8904_Open must have been called to obtain a valid opened device handle.

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
    If the client does not want to be notified when the command
    has completed, it does not need to register a callback.
*/
void DRV_WM8904_CommandEventHandlerSet
(
	DRV_HANDLE handle,
	const DRV_WM8904_COMMAND_EVENT_HANDLER eventHandler,
	const uintptr_t contextHandle
)
{
    DRV_WM8904_CLIENT_OBJ *clientObj;
    DRV_WM8904_OBJ *drvObj;

    if((DRV_HANDLE_INVALID == handle) || (0 == handle))
    {
        /* This means the handle is invalid */
        SYS_DEBUG(0, "Handle is invalid \r\n");
        return;
    }


    clientObj = (DRV_WM8904_CLIENT_OBJ *) handle;
    /* assigning the event handler and the context */
    if(false == clientObj->inUse)
    {
        SYS_DEBUG(0, "Invalid driver handle \r\n");
        return;
    }

    drvObj = (DRV_WM8904_OBJ *)clientObj->hDriver;
    drvObj->commandCompleteCallback = eventHandler;
    drvObj->commandContextData = contextHandle;
}

// *****************************************************************************
// *****************************************************************************
// Section: WM8904 Codec Version Information Routines
// *****************************************************************************
// *****************************************************************************
// *****************************************************************************
/*
  Function:
    int8_t* DRV_WM8904_VersionStrGet(void)

  Summary:
    This function returns the version of WM8904 driver in string format.

  Description:
    The DRV_WM8904_VersionStrGet function returns a string in the format:
    "<major>.<minor>[.<patch>][<type>]"
    Where:
        <major> is the WM8904 driver's version number.
        <minor> is the WM8904 driver's version number.
        <patch> is an optional "patch" or "dot" release number (which is not
        included in the string if it equals "00").
        <type> is an optional release type ("a" for alpha, "b" for beta ?
        not the entire word spelled out) that is not included if the release
        is a production version (I.e. Not an alpha or beta).

        The String does not contain any spaces.

        Example:
        "0.03a"
        "1.00"

  Precondition:
    None

  Parameters:
    None

  Returns: returns a string containing the version of WM8904 driver.

  Example:
    <code>
        int8_t *WM8904string;
        WM8904string = DRV_WM8904_VersionStrGet();
    </code>

  Remarks:
    None
 */
int8_t* DRV_WM8904_VersionStrGet(void)
{
    return (int8_t*) _DRV_WM8904_VERSION_STR;
}


// *****************************************************************************
/*
  Function:
    uint32_t DRV_WM8904_VersionGet( void )

  Summary:
    This function returns the version of WM8904 driver

  Description:
    The version number returned from the DRV_WM8904_VersionGet function is an
    unsigned integer in the following decimal format.
    <major> * 10000 + <minor> * 100 + <patch>

    Where the numbers are represented in decimal and the meaning is the same as
    above.  Note that there is no numerical representation of release type.

    Example:
    For version "0.03a", return:  0 * 10000 + 3 * 100 + 0
    For version "1.00", return:  1 * 100000 + 0 * 100 + 0


  Precondition:
    None

  Parameters:
    None

  Returns: returns the version of WM8904 driver.

  Example:
    <code>
        uint32_t WM8904version;
        WM8904version = DRV_WM8904_VersionGet();
    </code>

  Remarks:
    None
 */
uint32_t DRV_WM8904_VersionGet(void)
{
    return (_DRV_WM8904_VERSION_MAJOR * 10000 +  \
            _DRV_WM8904_VERSION_MINOR * 100 + \
            _DRV_WM8904_VERSION_PATCH);
}

// *****************************************************************************
// *****************************************************************************
// Section: WM8904 Codec Specific Client Routines
// *****************************************************************************
// *****************************************************************************
// *****************************************************************************
/*
  Function:
    void DRV_WM8904_SamplingRateSet(DRV_HANDLE handle, uint32_t samplingRate)

  Summary:
    This function sets the sampling rate of the media stream.

  Description:
    This function sets the media sampling rate for the client handle.

  Remarks:
    None.
*/   
#define WM8904_NUMBER_SAMPLERATE_COMMANDS   11

void _samplingRateSet(DRV_WM8904_OBJ *drvObj, uint32_t sampleRate, bool standalone)
{
    WM8904_I2C_COMMAND_BUFFER WM8904_I2C_Commands[WM8904_NUMBER_SAMPLERATE_COMMANDS];
    
#define MCLK_MAX13 13000000   // to keep MCLK below 13 MHz
#define MCLK_MAX26 26000000   // to keep MCLK below 26 MHz
#define FVCO_MAX 100000000  // Fvco must be between 90 and 100 MHz
#define FVCO_MIN 90000000    
#define FREF 12000000       // PCK2 freq from CA70 is 12 MHz   

    uint32_t bitClk = sampleRate * drvObj->bit_depth * 2;     // 2 for stereo
    uint16_t bitClk_ratio;
    uint32_t mclk, mclk_max;
    if (drvObj->enableMicInput)	// want highest mclk when ADC is enabled
	{
	    bitClk_ratio = 32;     // will always divide by 2 at least once, max value is 16
	    mclk = mclk_max = MCLK_MAX26;
	}
	else
	{
	    bitClk_ratio = 16;     // will always divide by 2 at least once, max value is 8
	    mclk = mclk_max = MCLK_MAX13;
	}
    while ((bitClk_ratio > 1) && (mclk >= mclk_max))
    {
        bitClk_ratio = bitClk_ratio / 2;        // final value will be between 1, 2, 4, 8 or 16
        mclk = bitClk * bitClk_ratio;      
    }
    
    uint32_t fll_outdiv = FVCO_MAX / mclk;      // integer division, so we will get floor of value
    uint32_t fvco = mclk * fll_outdiv;          // must be between 90 and 100 MHz
    if (fvco >= FVCO_MIN)
    {
        double nk = (double)fvco / (double)FREF;    // calc N.K value
        uint16_t n = (uint8_t) floor(nk);            // integer part N
        double k = nk - (double)n;                  // frac part K
        uint16_t k16 = (uint16_t)(65536.0 * k);     // K converted to parts in 65536
        uint16_t lrclk_rate = bitClk / sampleRate;
        uint16_t sysclk_ratio = mclk / sampleRate;
        uint16_t sysclk_ratio_i;
        uint16_t bitClk_ratio_i;

        switch (sysclk_ratio)
        {
            case 64:
                sysclk_ratio_i = 0;
                break;
            case 128:
                sysclk_ratio_i = 1;
                break;
            case 192:
                sysclk_ratio_i = 2;
                break;
            default:
            case 256:
                sysclk_ratio_i = 3;
                break;
            case 384:
                sysclk_ratio_i = 4;
                break;
            case 512:
                sysclk_ratio_i = 5;
                break;            
        }

        switch (bitClk_ratio)
        {
            case 16:
                bitClk_ratio_i = 12;
                break;
            default:
                bitClk_ratio_i = bitClk_ratio;
                break;
        }

        WM8904_I2C_Commands[0].reg_addr = WM8904_FLL_CONTROL_1; // R116
        WM8904_I2C_Commands[0].value = 0;       // disable while changing             

        WM8904_I2C_Commands[1].reg_addr = WM8904_CLOCK_RATES_1; // R21
        WM8904_I2C_Commands[1].value = WM8904_CLK_SYS_RATE(sysclk_ratio_i) | WM8904_SAMPLE_RATE(5); 

        WM8904_I2C_Commands[2].reg_addr = WM8904_CLOCK_RATES_0; // R20    
        WM8904_I2C_Commands[2].value = 0x0000;

        WM8904_I2C_Commands[3].reg_addr = WM8904_CLOCK_RATES_2; // R221    
        WM8904_I2C_Commands[3].value = WM8904_SYSCLK_SRC | WM8904_CLK_SYS_ENA | WM8904_CLK_DSP_ENA;                 

        WM8904_I2C_Commands[4].reg_addr = WM8904_AUDIO_INTERFACE_2; // R26
        WM8904_I2C_Commands[4].value = WM8904_BCLK_DIV(bitClk_ratio_i); 

        WM8904_I2C_Commands[5].reg_addr = WM8904_AUDIO_INTERFACE_3; // R27    
        WM8904_I2C_Commands[5].value = WM8904_LRCLK_DIR | WM8904_LRCLK_RATE(lrclk_rate);  

        WM8904_I2C_Commands[6].reg_addr = WM8904_FLL_CONTROL_2; // R117   
        WM8904_I2C_Commands[6].value = WM8904_FLL_OUTDIV((uint16_t)(fll_outdiv-1)); 

        WM8904_I2C_Commands[7].reg_addr = WM8904_FLL_CONTROL_3; // R118    
        WM8904_I2C_Commands[7].value = WM8904_FLL_K(k16); 
        
        WM8904_I2C_Commands[8].reg_addr = WM8904_FLL_CONTROL_4; // R119
        WM8904_I2C_Commands[8].value = WM8904_FLL_N(n);
        
        WM8904_I2C_Commands[9].reg_addr = WM8904_FLL_CONTROL_5; // R120
        WM8904_I2C_Commands[9].value = 0;        
       
        WM8904_I2C_Commands[10].reg_addr = WM8904_FLL_CONTROL_1; // R116
        WM8904_I2C_Commands[10].value = WM8904_FLL_FRACN_ENA | WM8904_FLL_ENA;       // re-enable      

        uint8_t i, loopSize;                                     
        loopSize = sizeof(WM8904_I2C_Commands) / sizeof(WM8904_I2C_Commands[0]);  
        for (i=0; i < loopSize; i++)
        {
            WM8904_I2C_Commands[i].delay = (i==loopSize-1) ? 5 : 2;             
            add_I2C_Command(drvObj, WM8904_I2C_Commands[i], (i==loopSize-1)&&standalone);   // add commands to buffer
        }  

        if (standalone)        
        {
        drvObj->samplingRate = sampleRate;

        start_I2C_Commands(drvObj);
    }
}
}

void DRV_WM8904_SamplingRateSet(DRV_HANDLE handle, uint32_t sampleRate)
{
    DRV_WM8904_OBJ *drvObj;
    DRV_WM8904_CLIENT_OBJ *clientObj;

    clientObj = (DRV_WM8904_CLIENT_OBJ *) handle;
    drvObj = (DRV_WM8904_OBJ *)clientObj->hDriver;
    
    _samplingRateSet(drvObj, sampleRate, true);
}


// *****************************************************************************
/*
  Function:
    uint32_t DRV_WM8904_SamplingRateGet(DRV_HANDLE handle)

  Summary:
    This function gets the sampling rate set on the DAC WM8904

  Description:
    This function gets the sampling rate set on the DAC WM8904.

  Remarks:
    None.
 */
uint32_t DRV_WM8904_SamplingRateGet(DRV_HANDLE handle)
{
    DRV_WM8904_OBJ *drvObj;
    DRV_WM8904_CLIENT_OBJ *clientObj;

    clientObj = (DRV_WM8904_CLIENT_OBJ *) handle;
    drvObj = (DRV_WM8904_OBJ *)clientObj->hDriver;

    /* Return the sampling rate */
    return drvObj->samplingRate;
}

// *****************************************************************************
/*
  Function:
    void DRV_WM8904_VolumeSet(DRV_HANDLE handle, DRV_WM8904_CHANNEL chan, uint8_t volume)

  Summary:
    This function sets the volume for WM8904 CODEC.

  Description:
    This functions sets the volume value from 0-255 which can attenuate
    from 0dB to ?48dB and mute

  Remarks:
    None.
*/
#define WM8904_NUMBER_VOLUME_COMMANDS   4

static void _volumeSet(DRV_WM8904_OBJ *drvObj, DRV_WM8904_CHANNEL chan, uint8_t volume, bool standalone)
{
    WM8904_I2C_COMMAND_BUFFER WM8904_I2C_Commands[WM8904_NUMBER_VOLUME_COMMANDS];
    uint8_t loopSize;
    
    // map of 0-255 to internal values WM8904 volume levels 0-192
    
uint8_t volumeSteps[256]=
{  // 64 is -48 dB, 96 is -36 dB, 104 is -33 dB
  0,  64,  96, 104, 112, 113, 114, 115,     // 112 is -30 dB
116, 117, 118, 119, 120, 120, 121, 123, 
123, 124, 125, 126, 127, 128, 128, 129, 	// 128 is -24 dB
130, 130, 131, 132, 133, 134, 134, 135,
135, 136, 137, 138, 138, 139, 140, 140,
141, 142, 143, 144, 144, 144, 145, 145,     // 144 is -18 dB
145, 146, 146, 147, 147, 148, 148, 148,
149, 149, 149, 150, 150, 150, 151, 151,
152, 152, 153, 153, 153, 154, 154, 154,     // 152 is -15 dB
155, 155, 155, 156, 156, 157, 157, 157, 
158, 158, 159, 159, 159, 160, 160, 161,     // 160 is -12 dB
161, 161, 162, 162, 162, 163, 163, 163,
164, 164, 165, 165, 165, 166, 166, 166,
167, 167, 167, 168, 168, 169, 169, 170,     // 168 is -9.0 dB
170, 170, 171, 171, 171, 172, 172, 172, 
172, 172, 173, 173, 173, 173, 173, 173, 	// 172 is -7.5 dB
174, 174, 174, 174, 174, 175, 175, 175,
175, 175, 175, 176, 176, 176, 176, 176,     // 176 is -6.0 dB
177, 177, 177, 177, 177, 178, 178, 178,
178, 178, 179, 179, 179, 179, 179, 179,
180, 180, 180, 180, 180, 180, 181, 181,     // 180 is -4.5 dB
181, 181, 181, 181, 181, 182, 182, 182, 
182, 182, 182, 182, 182, 183, 183, 183,
183, 183, 183, 183, 183, 184, 184, 184, 	// 184 is -3.0 dB
184, 184, 184, 184, 184, 185, 185, 185,
185, 185, 185, 185, 185, 186, 186, 186,
186, 186, 186, 187, 187, 187, 187, 187,
187, 187, 187, 188, 188, 188, 188, 188, 	// 188 is -1.5 dB
188, 188, 188, 189, 189, 189, 189, 189,
189, 189, 189, 189, 190, 190, 190, 190,
190, 190, 190, 190, 191, 191, 191, 191,
191, 191, 191, 191, 192, 192, 192, 192, 	// 192 is 0 dB
};

    uint8_t indexedVolume = volumeSteps[volume];   // convert to 0-100% and then do lookup

    if(DRV_WM8904_CHANNEL_LEFT == chan)
    {
        if (standalone)        
        {
            drvObj->volume[DRV_WM8904_CHANNEL_LEFT] = volume;	// remembered value is original input in range 0-255 
        }                 
        WM8904_I2C_Commands[0].reg_addr = WM8904_DAC_DIGITAL_VOLUME_LEFT; // R30
        WM8904_I2C_Commands[0].value = WM8904_DAC_VU|WM8904_DACL_VOL(indexedVolume);       
        loopSize = 1;
    }
    else if(DRV_WM8904_CHANNEL_RIGHT == chan)
    {
        if (standalone)
        {
            drvObj->volume[DRV_WM8904_CHANNEL_RIGHT] = volume;	// remembered value is original input in range 0-255 
        }               
        WM8904_I2C_Commands[0].reg_addr = WM8904_DAC_DIGITAL_VOLUME_RIGHT; // R31
        WM8904_I2C_Commands[0].value = WM8904_DAC_VU|WM8904_DACR_VOL(indexedVolume);         
        loopSize = 1;
    }
    else
    {
        if (standalone)
        {
            drvObj->volume[DRV_WM8904_CHANNEL_LEFT] = volume;	// remembered value is original input in range 0-255
        drvObj->volume[DRV_WM8904_CHANNEL_RIGHT] = volume;
        drvObj->volume[DRV_WM8904_CHANNEL_LEFT_RIGHT] = volume;
        }            
        WM8904_I2C_Commands[0].reg_addr = WM8904_DAC_DIGITAL_VOLUME_LEFT; // R30
        WM8904_I2C_Commands[0].value = WM8904_DACL_VOL(indexedVolume);
        WM8904_I2C_Commands[1].reg_addr = WM8904_DAC_DIGITAL_VOLUME_RIGHT; // R31
        WM8904_I2C_Commands[1].value = WM8904_DACR_VOL(indexedVolume);
        WM8904_I2C_Commands[2].reg_addr = WM8904_DAC_DIGITAL_VOLUME_LEFT; // R30
        WM8904_I2C_Commands[2].value = WM8904_DAC_VU|WM8904_DACL_VOL(indexedVolume);
        WM8904_I2C_Commands[3].reg_addr = WM8904_DAC_DIGITAL_VOLUME_RIGHT; // R31
        WM8904_I2C_Commands[3].value = WM8904_DAC_VU|WM8904_DACR_VOL(indexedVolume);         
        loopSize = 4;
    }       

    uint8_t i;                                      
    for (i=0; i < loopSize; i++)
    {
        WM8904_I2C_Commands[i].delay = (i==loopSize-1) ? 5 : 2;             
        add_I2C_Command(drvObj, WM8904_I2C_Commands[i], (i==loopSize-1)&&standalone);   // add commands to buffer
    }  

    if (standalone)
    {
    start_I2C_Commands(drvObj);    
}
}

void DRV_WM8904_VolumeSet(DRV_HANDLE handle, DRV_WM8904_CHANNEL chan, uint8_t volume)
{
    DRV_WM8904_OBJ *drvObj;
    DRV_WM8904_CLIENT_OBJ *clientObj;
    
    clientObj = (DRV_WM8904_CLIENT_OBJ *) handle;
    drvObj = (DRV_WM8904_OBJ *)clientObj->hDriver;

    _volumeSet(drvObj, chan, volume, true);
}


// *****************************************************************************
/*
  Function:
    uint8_t DRV_WM8904_VolumeGet(DRV_HANDLE handle, DRV_WM8904_CHANNEL chan)

  Summary:
    This function gets the volume for WM8904 CODEC.

  Description:
    This functions gets the current volume programmed to the DAC WM8904.

  Remarks:
    None.
 */
uint8_t DRV_WM8904_VolumeGet(DRV_HANDLE handle, DRV_WM8904_CHANNEL chan)
{
    DRV_WM8904_OBJ *drvObj;
    DRV_WM8904_CLIENT_OBJ *clientObj;    

    clientObj = (DRV_WM8904_CLIENT_OBJ *) handle;
    drvObj = (DRV_WM8904_OBJ *)clientObj->hDriver;

    /* Return the volume */
    return drvObj->volume[chan];
}

// *****************************************************************************
/*
  Function:
    void DRV_WM8904_MuteOn(DRV_HANDLE handle);

  Summary:
    This function allows WM8904 output for soft mute on.

  Description:
    This function Enables WM8904 output for soft mute.

  Remarks:
    None.
*/
void DRV_WM8904_MuteOn(DRV_HANDLE handle)
{
    DRV_WM8904_OBJ *drvObj;
    DRV_WM8904_CLIENT_OBJ *clientObj;
    WM8904_I2C_COMMAND_BUFFER WM8904_I2C_Command;

    clientObj = (DRV_WM8904_CLIENT_OBJ *) handle;
    drvObj = (DRV_WM8904_OBJ *)clientObj->hDriver;
    
    WM8904_I2C_Command.reg_addr = WM8904_DAC_DIGITAL_1; // R33
    WM8904_I2C_Command.value = 	WM8904_DAC_MUTE|
            WM8904_DAC_MUTERATE|WM8904_DAC_UNMUTE_RAMP|WM8904_DEEMPH(0);    // mute      
    WM8904_I2C_Command.delay = 5;             

    add_I2C_Command(drvObj, WM8904_I2C_Command, true);   // add command to buffer
    start_I2C_Commands(drvObj);   
}

// *****************************************************************************
/*
  Function:
    void DRV_WM8904_MuteOff(DRV_HANDLE handle)

  Summary:
    This function disables WM8904 output for soft mute.

  Description:
    This function disables WM8904 output for soft mute.

  Remarks:
    None.
*/
void DRV_WM8904_MuteOff(DRV_HANDLE handle)
{
    DRV_WM8904_OBJ *drvObj;
    DRV_WM8904_CLIENT_OBJ *clientObj;
    WM8904_I2C_COMMAND_BUFFER WM8904_I2C_Command;

    clientObj       = (DRV_WM8904_CLIENT_OBJ *) handle;
    drvObj          = (DRV_WM8904_OBJ *)clientObj->hDriver;
    
    WM8904_I2C_Command.reg_addr = WM8904_DAC_DIGITAL_1; // R33
    WM8904_I2C_Command.value = 	WM8904_DAC_MUTERATE|WM8904_DAC_UNMUTE_RAMP|WM8904_DEEMPH(0);       // re-enable      
    WM8904_I2C_Command.delay = 5;             

    add_I2C_Command(drvObj, WM8904_I2C_Command, true);   // add command to buffer
    start_I2C_Commands(drvObj);    
}

// *****************************************************************************
// *****************************************************************************
// Section: Global Data Definitions
// *****************************************************************************
// *****************************************************************************

// register contents for initialization of WM8904
static const WM8904_I2C_COMMAND_BUFFER WM8904_I2C_InitializationCommands1[] =
{
    { WM8904_SW_RESET_AND_ID, 0, 100 },
    { WM8904_BIAS_CONTROL_0, WM8904_ISEL_HP_BIAS, 2 },    
	{ WM8904_VMID_CONTROL_0, WM8904_VMID_BUF_ENA |WM8904_VMID_RES_FAST | WM8904_VMID_ENA, 5 },
	{ WM8904_VMID_CONTROL_0, WM8904_VMID_BUF_ENA | WM8904_VMID_RES_NORMAL | WM8904_VMID_ENA, 2 },
	{ WM8904_BIAS_CONTROL_0, WM8904_ISEL_HP_BIAS | WM8904_BIAS_ENA, 2 },   
	{ WM8904_POWER_MANAGEMENT_2, WM8904_HPL_PGA_ENA | WM8904_HPR_PGA_ENA, 2 },
	{ WM8904_DAC_DIGITAL_1, WM8904_DEEMPH(0), 2 },
	{ WM8904_ANALOGUE_OUT12_ZC, 0x0000, 2 },
	{ WM8904_CHARGE_PUMP_0, WM8904_CP_ENA, 2 },
	{ WM8904_CLASS_W_0, WM8904_CP_DYN_PWR, 2 },
	{ WM8904_DIGITAL_PULLS, WM8904_LRCLK_PU | WM8904_BCLK_PU, 2},
};
    
static const WM8904_I2C_COMMAND_BUFFER WM8904_I2C_InitializationCommands3[] =
{             
	{ WM8904_POWER_MANAGEMENT_6, WM8904_DACL_ENA | WM8904_DACR_ENA /*| WM8904_ADCL_ENA | WM8904_ADCR_ENA*/, 5 },        
	{ WM8904_ANALOGUE_HP_0, WM8904_HPL_ENA | WM8904_HPR_ENA, 2 },
	{ WM8904_ANALOGUE_HP_0, WM8904_HPL_ENA_DLY | WM8904_HPL_ENA | WM8904_HPR_ENA_DLY | WM8904_HPR_ENA, 2 },
	{ WM8904_DC_SERVO_0, WM8904_DCS_ENA_CHAN_3 | WM8904_DCS_ENA_CHAN_2 | WM8904_DCS_ENA_CHAN_1 | WM8904_DCS_ENA_CHAN_0, 2 },
	{ WM8904_DC_SERVO_1, WM8904_DCS_TRIG_STARTUP_3 | WM8904_DCS_TRIG_STARTUP_2 |WM8904_DCS_TRIG_STARTUP_1 | WM8904_DCS_TRIG_STARTUP_0, 100 },
	{ WM8904_ANALOGUE_HP_0, WM8904_HPL_ENA_OUTP | WM8904_HPL_ENA_DLY | WM8904_HPL_ENA | WM8904_HPR_ENA_OUTP | WM8904_HPR_ENA_DLY | WM8904_HPR_ENA, 2 },
	{ WM8904_ANALOGUE_HP_0, WM8904_HPL_RMV_SHORT | WM8904_HPL_ENA_OUTP | WM8904_HPL_ENA_DLY | WM8904_HPL_ENA |
		WM8904_HPR_RMV_SHORT | WM8904_HPR_ENA_OUTP | WM8904_HPR_ENA_DLY | WM8904_HPR_ENA, 2 }
};
   
static const WM8904_I2C_COMMAND_BUFFER WM8904_I2C_InitializationCommands5[] =
{     
	{ WM8904_ANALOGUE_OUT1_LEFT, WM8904_HPOUTL_VOL(0x39), 2 },
	{ WM8904_ANALOGUE_OUT1_RIGHT, WM8904_HPOUTR_VOL(0x39), 2 }, 
	{ WM8904_ANALOGUE_OUT1_LEFT, WM8904_HPOUT_VU | WM8904_HPOUTL_VOL(0x39), 2 },
	{ WM8904_ANALOGUE_OUT1_RIGHT, WM8904_HPOUT_VU | WM8904_HPOUTR_VOL(0x39), 100 }     
};

static const WM8904_I2C_COMMAND_BUFFER WM8904_I2C_InitializationCommands6[] =
{
	{ WM8904_POWER_MANAGEMENT_6, WM8904_DACL_ENA | WM8904_DACR_ENA | WM8904_ADCL_ENA | WM8904_ADCR_ENA, 2 }, 
	{ WM8904_ANALOGUE_LEFT_INPUT_0, WM8904_LIN_VOL(0x1C), 2 },
	{ WM8904_ANALOGUE_RIGHT_INPUT_0, WM8904_RIN_VOL(0x1C), 2 },    
    { WM8904_POWER_MANAGEMENT_0, WM8904_INL_ENA | WM8904_INR_ENA, 2 },
    { WM8904_AUDIO_INTERFACE_0, /*WM8904_LOOPBACK |*/ WM8904_AIFADCR_SRC | WM8904_AIFDACR_SRC, 100 },    
};    

static uint32_t debugVar;             // never referenced, debug only
static uint32_t bytesTransferred=0;   // never referenced, debug only

// *****************************************************************************
 /*
  Function:
    static void _DRV_WM8904_ControlTasks(DRV_WM8904_OBJ *drvObj)

  Summary:
    Implements the state machine for the Audio control interface of WM8904

  Description:
    Implements the state machine for the Audio control interface of WM8904

  Remarks:
    None
*/
static void _DRV_WM8904_ControlTasks (DRV_WM8904_OBJ *drvObj)
{                
    /* Check the application's current state. */
    switch ( drvObj->currentState )
    {
        /* Application's initial state. */
        case DRV_WM8904_STATE_INIT:
        {
            /* Open the timer Driver */
            drvObj->tmrHandle = DRV_TMR_Open(DRV_TMR_INDEX_0, 0);        

            if( DRV_HANDLE_INVALID == drvObj->tmrHandle )
            {
                return;
            }
            
            DRV_TMR_AlarmRegister(drvObj->tmrHandle, 12000, 1, (uint32_t)drvObj->drvIndex,
                WM8904_TimerCallback); // 12 MHz / 12000 => 1 kHz (1 ms)          
            DRV_TMR_AlarmEnable(drvObj->tmrHandle, true);
            DRV_TMR_Start(drvObj->tmrHandle); 
    
            drvObj->currentState = DRV_WM8904_STATE_OPEN;
        }
        break;
        
        /* Application's initial state. */
        case DRV_WM8904_STATE_OPEN:
        {
            /* Open the I2C Driver */
            drvObj->drvI2CHandle = DRV_I2C_Open( DRV_I2C_INDEX_0, 
                ( DRV_IO_INTENT_READWRITE | DRV_IO_INTENT_NONBLOCKING ) );

            if( DRV_HANDLE_INVALID == drvObj->drvI2CHandle )
            {
                return;
            }
            drvObj->currentState = DRV_WM8904_STATE_READY;
        }
        break;        
        
        case DRV_WM8904_STATE_READY:
        {
            uint16_t dataVar16;
            drvObj->tmpData[0] = 0x0;            
            dataVar16 = 0xFFFF;
            drvObj->tmpData[1] = (dataVar16 & 0xff00) >> 8;
            drvObj->tmpData[2] = dataVar16 & 0xff;            
                       
            drvObj->hReadyBuffer = DRV_I2C_TransmitForced( drvObj->drvI2CHandle,
                DRV_WM8904_DEVICE_ADDR, (I2C_DATA_TYPE *)&drvObj->tmpData, 3, 0, NULL );                        
            if( DRV_I2C_BUFFER_HANDLE_INVALID == drvObj->hReadyBuffer )
            {
                drvObj->currentState = DRV_WM8904_STATE_ERROR;
            }
            else
            {
                drvObj->currentState = DRV_WM8904_STATE_RESET_ADDRESS;
            }
        }        
        break;       
        
        case DRV_WM8904_STATE_RESET_ADDRESS:
        {
            DRV_I2C_BUFFER_EVENT statusEvent = DRV_I2C_TransferStatusGet(drvObj->drvI2CHandle,
                drvObj->hReadyBuffer);
            if(statusEvent == DRV_I2C_BUFFER_EVENT_COMPLETE)
            {             
                drvObj->tmpData[0] = 0x0;                                  
                drvObj->hReadyBuffer = DRV_I2C_Receive( drvObj->drvI2CHandle,
                    DRV_WM8904_DEVICE_ADDR, (I2C_DATA_TYPE *)&drvObj->tmpData, 3, NULL );

                if( DRV_I2C_BUFFER_HANDLE_INVALID == drvObj->hReadyBuffer )
                {
                    drvObj->currentState = DRV_WM8904_STATE_ERROR;
                }
                else
                {
                    drvObj->currentState  = DRV_WM8904_STATE_DATA_TRANSMIT;
                }
            }
            else
            {
                bytesTransferred = DRV_I2C_BytesTransferred(drvObj->drvI2CHandle, 
                    drvObj->hReadyBuffer);
                debugVar++;
            }            
        }
        break;

        case DRV_WM8904_STATE_DATA_TRANSMIT:
        {
            DRV_I2C_BUFFER_EVENT statusEvent = DRV_I2C_TransferStatusGet(drvObj->drvI2CHandle,
                drvObj->hReadyBuffer);  
            if(statusEvent == DRV_I2C_BUFFER_EVENT_COMPLETE)
            {
                if((drvObj->tmpData[0] == 0x89) && (drvObj->tmpData[1] == 0x04))
                {                    
                    uint8_t i, loopSize;                     
                    // get # of entries in table                     
                    loopSize = sizeof(WM8904_I2C_InitializationCommands1) / sizeof(WM8904_I2C_InitializationCommands1[0]);  
                    loopSize += WM8904_NUMBER_AUDIOFORMAT_COMMANDS;        
                    loopSize += sizeof(WM8904_I2C_InitializationCommands3) / sizeof(WM8904_I2C_InitializationCommands3[0]);
                    loopSize += WM8904_NUMBER_VOLUME_COMMANDS;
                    loopSize += sizeof(WM8904_I2C_InitializationCommands5) / sizeof(WM8904_I2C_InitializationCommands5[0]);
                    if (drvObj->enableMicInput)
                    {
                        loopSize += sizeof(WM8904_I2C_InitializationCommands6) / sizeof(WM8904_I2C_InitializationCommands6[0]);    
                    }
                    loopSize += WM8904_NUMBER_SAMPLERATE_COMMANDS;
                                        
                    if (loopSize <= WM8904_MAX_I2C_COMMANDS)
                    {
                        loopSize = sizeof(WM8904_I2C_InitializationCommands1) / sizeof(WM8904_I2C_InitializationCommands1[0]);                        
                        for (i=0; i < loopSize; i++)
                        {
                            add_I2C_Command(drvObj, WM8904_I2C_InitializationCommands1[i], false);   // add commands to buffer
                        }

                        _setAudioCommunicationFormat(drvObj, drvObj->audioDataFormat, false);                       
                        
                        loopSize = sizeof(WM8904_I2C_InitializationCommands3) / sizeof(WM8904_I2C_InitializationCommands3[0]);                        
                        for (i=0; i < loopSize; i++)
                        {
                            add_I2C_Command(drvObj, WM8904_I2C_InitializationCommands3[i], false);   // add commands to buffer
                        }
                        
                        _volumeSet(drvObj, DRV_WM8904_CHANNEL_LEFT_RIGHT, drvObj->volume[DRV_WM8904_CHANNEL_LEFT_RIGHT], false);

                        loopSize = sizeof(WM8904_I2C_InitializationCommands5) / sizeof(WM8904_I2C_InitializationCommands5[0]);                        
                        for (i=0; i < loopSize; i++)
                        {
                            add_I2C_Command(drvObj, WM8904_I2C_InitializationCommands5[i], false);   // add commands to buffer
                        } 
                        
                        if (drvObj->enableMicInput)
                        {
                            loopSize = sizeof(WM8904_I2C_InitializationCommands6) / sizeof(WM8904_I2C_InitializationCommands6[0]);                        
                            for (i=0; i < loopSize; i++)
                            {
                                add_I2C_Command(drvObj, WM8904_I2C_InitializationCommands6[i], false);   // add commands to buffer
                            }
                        }
                      
                        _samplingRateSet(drvObj, drvObj->samplingRate, false);                                                
                        
                        drvObj->I2C_loopCount = 0;                      
                        drvObj->currentState = DRV_WM8904_STATE_WRITE_COMPLETE_MAIN;                                                                         
                    }
                    else
                    {
                        drvObj->currentState = DRV_WM8904_STATE_ERROR;
                    }                   
                }
                else
                {
                    // Incorrect Device ID
                    debugVar++;
                }
            }
            else
            {
                bytesTransferred = DRV_I2C_BytesTransferred(drvObj->drvI2CHandle,
                    drvObj->hReadyBuffer);
                debugVar++;                
            }
        }
        break;
        
        case DRV_WM8904_STATE_WRITE_COMPLETE_MAIN:
        {           
            if(drvObj->I2C_loopCount >= drvObj->I2C_endLoop)
            {
                drvObj->I2C_loopCount = drvObj->I2C_endLoop = 0;      // for next sequence of commands
                drvObj->currentState = DRV_WM8904_STATE_DONE;
                
                // will also be redundantly set at end of any new command sequences
                drvObj->status = SYS_STATUS_READY;
                return;
            }
            else               
            {              
                DRV_I2C_BUFFER_EVENT statusEvent = (drvObj->I2C_loopCount) ? DRV_I2C_TransferStatusGet(drvObj->drvI2CHandle,
                    drvObj->hTxBuffer) : DRV_I2C_BUFFER_EVENT_COMPLETE;  
                if(statusEvent == DRV_I2C_BUFFER_EVENT_COMPLETE)
                {                     
                    for (; drvObj->I2C_loopCount < drvObj->I2C_endLoop;) 
                    {
                       if (drvObj->I2C_Commands[drvObj->I2C_loopCount].reg_addr <= 255)                                                        
                       {
                            uint16_t dataVar16;
                            dataVar16 = drvObj->I2C_Commands[drvObj->I2C_loopCount].value;
                            drvObj->tmpData[0] = drvObj->I2C_Commands[drvObj->I2C_loopCount].reg_addr;                       
                            drvObj->tmpData[1] = (dataVar16 & 0xff00) >> 8;
                            drvObj->tmpData[2] = dataVar16 & 0xff;
                            
                            drvObj->hTxBuffer = DRV_I2C_Transmit( drvObj->drvI2CHandle,
                                DRV_WM8904_DEVICE_ADDR, (I2C_DATA_TYPE *)&drvObj->tmpData, 3, NULL );                           
                            if( DRV_I2C_BUFFER_HANDLE_INVALID == drvObj->hTxBuffer )
                            {
                                drvObj->currentState = DRV_WM8904_STATE_ERROR;
                            }
                            else
                            {
                                drvObj->WM8904Delay = drvObj->I2C_Commands[drvObj->I2C_loopCount].delay;
                                if (drvObj->WM8904Delay==0)
                                {
                                    drvObj->WM8904Delay = 2;      // always delay at least 2 ms    
                                }
                                drvObj->I2C_loopCount++;
                                drvObj->I2C_lastCommand = drvObj->I2C_loopCount;    // 1 ahead so 0 can be used as flag
                                drvObj->currentState = DRV_WM8904_STATE_WAIT;
                                break;
                            }                                    
                        }
                        else
                        {
                            drvObj->I2C_loopCount++;
                        }
                    }
                }
                else
                {
                    bytesTransferred = DRV_I2C_BytesTransferred(drvObj->drvI2CHandle, 
                        drvObj->hTxBuffer);
                    debugVar++;                 
                }                
            }                        
        }
        break;       
        
        case DRV_WM8904_STATE_WAIT:
        {
        }
        break;
        
        case DRV_WM8904_STATE_ERROR:
        {
        }
        break;
        
        case DRV_WM8904_STATE_DONE:
        {
        }
        break;        
                
        default:
        {
        }
        break;
    }
    
    return;
}

static bool add_I2C_Command(DRV_WM8904_OBJ *drvObj, WM8904_I2C_COMMAND_BUFFER I2C_CommandPtr, bool end)
{
    if (drvObj->I2C_endLoop < WM8904_MAX_I2C_COMMANDS)
    {
        drvObj->I2C_Commands[drvObj->I2C_endLoop] = I2C_CommandPtr;     // structure copy
        drvObj->I2C_Commands[drvObj->I2C_endLoop].end = end;            // mark last command in series
        drvObj->I2C_endLoop++;        
        return true;
    }
    return false;
}

static void start_I2C_Commands(DRV_WM8904_OBJ *drvObj)
{
    if (drvObj->currentState == DRV_WM8904_STATE_DONE)
    {
        drvObj->currentState = DRV_WM8904_STATE_WRITE_COMPLETE_MAIN;     // restart machine
    }
    // otherwise commands have been added to end of current queue and will be executed
}

// *****************************************************************************
// *****************************************************************************
// Section: Application Callback Routines
// *****************************************************************************
// *****************************************************************************
/* These routines are called by drivers when certain events occur.
*/

/// *****************************************************************************
 /*
  Function:
        static void WM8904_TimerCallback
        (
            uintptr_t context,
            uint32_t alarmCount
        )

  Summary:
    Implements the handler for timer callback function.

  Description:
    Called every 1 ms by timer services.  It then decrements WM8904Delay if
    non-zero.  When this count reaches 0, this means a command has finished
    executing.  If it is the last command in a sequence, a callback function
  is called.

  Parameters:
    context      - Contains index into driver's instance object array
    alarmCount   - Not used

  Remarks:
    None
*/
static void WM8904_TimerCallback( uintptr_t context, uint32_t alarmCount )
{
    DRV_WM8904_OBJ* drvObj = (DRV_WM8904_OBJ *)&gDrvwm8904Obj[(uint32_t)context];
    if (drvObj->WM8904Delay)
    {      
        drvObj->WM8904Delay--;
        if (drvObj->WM8904Delay==0)
        {
            if (drvObj->I2C_lastCommand)
            {
                if (drvObj->I2C_Commands[drvObj->I2C_lastCommand-1].end)
                {                    
                    if (drvObj->commandCompleteCallback != (DRV_WM8904_COMMAND_EVENT_HANDLER) 0)
                    {
                        drvObj->commandCompleteCallback(drvObj->commandContextData);
                    }
                }
                drvObj->I2C_lastCommand = 0;    // mark processed                
            }
            // ready to eecute next command in sequence (if any))
            drvObj->currentState = DRV_WM8904_STATE_WRITE_COMPLETE_MAIN;
        }        
    }
}

/// *****************************************************************************
 /*
  Function:
        static void _DRV_WM8904_I2SBufferEventHandler
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
static void _DRV_WM8904_I2SBufferEventHandler
(
    DRV_I2S_BUFFER_EVENT event,
    DRV_I2S_BUFFER_HANDLE bufferHandle,
    uintptr_t contextHandle
)
{
    //DRV_WM8904_OBJ *drvObj;
    //DRV_WM8904_BUFFER_OBJECT *bufObject;
    DRV_WM8904_CLIENT_OBJ *clientObj;

    if(DRV_I2S_BUFFER_HANDLE_INVALID == bufferHandle ||
            0 == contextHandle )
    {
        /* This means the handle is invalid */
        SYS_DEBUG(0, "Handle is invalid \r\n");
        return;
    }

    clientObj = (DRV_WM8904_CLIENT_OBJ *)contextHandle;
    if(DRV_I2S_BUFFER_EVENT_COMPLETE == event)
    {
        clientObj->pEventCallBack(DRV_WM8904_BUFFER_EVENT_COMPLETE,
            (DRV_WM8904_BUFFER_HANDLE) bufferHandle, clientObj->hClientArg);
    }
    else if(DRV_I2S_BUFFER_EVENT_ABORT == event)
    {
        clientObj->pEventCallBack(DRV_WM8904_BUFFER_EVENT_ABORT,
            (DRV_WM8904_BUFFER_HANDLE) bufferHandle, clientObj->hClientArg);
    }
    else if(DRV_I2S_BUFFER_EVENT_ERROR == event)
    {
        clientObj->pEventCallBack(DRV_WM8904_BUFFER_EVENT_ERROR,
            (DRV_WM8904_BUFFER_HANDLE) bufferHandle, clientObj->hClientArg);
    }
    else
    {
        ;
    }
    return;
}

/*******************************************************************************
 End of File
*/

