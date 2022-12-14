/*******************************************************************************
 Touch controller MXT336T driver file

  File Name:
    drv_MXT336T.c

  Summary:
    Touch controller MXT336T driver interface file.

  Description:
    This file consist of touch controller MXT336T driver interfaces. It
    implements the driver interfaces which read the touch input data from
    MXT336T through I2C bus.
 ******************************************************************************/

// DOM-IGNORE-BEGIN
/*******************************************************************************
Copyright (c) 2013-2016 released Microchip Technology Inc.  All rights reserved.

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
 ******************************************************************************/
// DOM-IGNORE-END

#include <sys/attribs.h>
#include <sys/kmem.h>

#include "system_definitions.h"
#include "driver/i2c/drv_i2c.h"
#include "driver/input/touch/mxt336t/drv_mxt336t.h"

#include "system/input/sys_input.h"

//#define DEBUG_ENABLE


#define I2C_FRAME_SIZE             32
#define I2C_READ_ID_FRAME_SIZE     sizeof(MXT336T_Message)

// defines MXT336T command register I2C write address
#define I2C_MASTER_WRITE_ID        0x94 

// defines MXT336T command register I2C read address
#define I2C_MASTER_READ_ID         0x95

// multitouch screen resolution configuration registers for T100
#define T100_XRANGE                0xD
#define T100_YRANGE                0x18


#define DEFAULT_XRES               479
#define DEFAULT_YRES               271

#define DRV_MXT336T_NUM_QUEUE      2

// MXT336T object IDs
typedef enum
{
    MXT336T_OBJECT_RESERVED_T0 = 0 , 
    MXT336T_OBJECT_RESERVED_T1 = 1 , 
    MXT336T_OBJECT_DEBUG_DELTAS_T2 = 2 , 
    MXT336T_OBJECT_DEBUG_REFERENCES_T3 = 3 , 
    MXT336T_OBJECT_DEBUG_SIGNALS_T4 = 4 , 
    MXT336T_OBJECT_GEN_MESSAGEPROCESSOR_T5 = 5 , 
    MXT336T_OBJECT_GEN_COMMANDPROCESSOR_T6 = 6 , 
    MXT336T_OBJECT_GEN_POWERCONFIG_T7 = 7 , 
    MXT336T_OBJECT_GEN_ACQUISITIONCONFIG_T8 = 8 , 
    MXT336T_OBJECT_TOUCH_MULTITOUCHSCREEN_T9 = 9 , 
    MXT336T_OBJECT_TOUCH_SINGLETOUCHSCREEN_T10 = 10 , 
    MXT336T_OBJECT_TOUCH_XSLIDER_T11 = 11 , 
    MXT336T_OBJECT_TOUCH_YSLIDER_T12 = 12 , 
    MXT336T_OBJECT_TOUCH_XWHEEL_T13 = 13 , 
    MXT336T_OBJECT_TOUCH_YWHEEL_T14 = 14 , 
    MXT336T_OBJECT_TOUCH_KEYARRAY_T15 = 15 , 
    MXT336T_OBJECT_PROCG_SIGNALFILTER_T16 = 16 , 
    MXT336T_OBJECT_PROCI_LINEARIZATIONTABLE_T17 = 17 , 
    MXT336T_OBJECT_SPT_COMMSCONFIG_T18 = 18 , 
    MXT336T_OBJECT_SPT_GPIOPWM_T19 = 19 , 
    MXT336T_OBJECT_PROCI_GRIPFACESUPPRESSION_T20 = 20 , 
    MXT336T_OBJECT_RESERVED_T21 = 21 , 
    MXT336T_OBJECT_PROCG_NOISESUPPRESSION_T22 = 22 , 
    MXT336T_OBJECT_TOUCH_PROXIMITY_T23 = 23 , 
    MXT336T_OBJECT_PROCI_ONETOUCHGESTUREPROCESSOR_T24 = 24 , 
    MXT336T_OBJECT_SPT_SELFTEST_T25 = 25 , 
    MXT336T_OBJECT_DEBUG_CTERANGE_T26 = 26 , 
    MXT336T_OBJECT_PROCI_TWOTOUCHGESTUREPROCESSOR_T27 = 27 , 
    MXT336T_OBJECT_SPT_CTECONFIG_T28 = 28 , 
    MXT336T_OBJECT_SPT_GPI_T29 = 29 , 
    MXT336T_OBJECT_SPT_GATE_T30 = 30 , 
    MXT336T_OBJECT_TOUCH_KEYSET_T31 = 31 , 
    MXT336T_OBJECT_TOUCH_XSLIDERSET_T32 = 32 , 
    MXT336T_OBJECT_RESERVED_T33 = 33 , 
    MXT336T_OBJECT_GEN_MESSAGEBLOCK_T34 = 34 , 
    MXT336T_OBJECT_SPT_PROTOTYPE_T35 = 35 , 
    MXT336T_OBJECT_RESERVED_T36 = 36 , 
    MXT336T_OBJECT_DEBUG_DIAGNOSTIC_T37 = 37 , 
    MXT336T_OBJECT_SPT_USERDATA_T38 = 38 , 
    MXT336T_OBJECT_SPARE_T39 = 39 , 
    MXT336T_OBJECT_PROCI_GRIPSUPPRESSION_T40 = 40 , 
    MXT336T_OBJECT_PROCI_PALMSUPPRESSION_T41 = 41 , 
    MXT336T_OBJECT_PROCI_TOUCHSUPPRESSION_T42 = 42 , 
    MXT336T_OBJECT_SPT_DIGITIZER_T43 = 43 , 
    MXT336T_OBJECT_SPT_MESSAGECOUNT_T44 = 44 , 
    MXT336T_OBJECT_PROCI_VIRTUALKEY_T45 = 45 , 
    MXT336T_OBJECT_SPT_CTECONFIG_T46 = 46 , 
    MXT336T_OBJECT_PROCI_STYLUS_T47 = 47 , 
    MXT336T_OBJECT_PROCG_NOISESUPPRESSION_T48 = 48 , 
    MXT336T_OBJECT_GEN_DUALPULSE_T49 = 49 , 
    MXT336T_OBJECT_SPARE_T50 = 50 , 
    MXT336T_OBJECT_SPT_SONY_CUSTOM_T51 = 51 , 
    MXT336T_OBJECT_TOUCH_PROXKEY_T52 = 52 , 
    MXT336T_OBJECT_GEN_DATASOURCE_T53 = 53 , 
    MXT336T_OBJECT_PROCG_NOISESUPPRESSION_T54 = 54 , 
    MXT336T_OBJECT_PROCI_ADAPTIVETHRESHOLD_T55 = 55 , 
    MXT336T_OBJECT_PROCI_SHIELDLESS_T56 = 56 , 
    MXT336T_OBJECT_PROCI_EXTRATOUCHSCREENDATA_T57 = 57 , 
    MXT336T_OBJECT_SPT_EXTRANOISESUPCTRLS_T58 = 58 , 
    MXT336T_OBJECT_SPT_FASTDRIFT_T59 = 59 , 
    MXT336T_OBJECT_SPT_TIMER_T61 = 61 , 
    MXT336T_OBJECT_PROCG_NOISESUPPRESSION_T62 = 62 , 
    MXT336T_OBJECT_PROCI_ACTIVESTYLUS_T63 = 63 , 
    MXT336T_OBJECT_SPT_REFERENCERELOAD_T64 = 64 , 
    MXT336T_OBJECT_PROCI_LENSBENDING_T65 = 65 , 
    MXT336T_OBJECT_SPT_GOLDENREFERENCES_T66 = 66 , 
    MXT336T_OBJECT_PROCI_CUSTOMGESTUREPROCESSOR_T67 = 67 , 
    MXT336T_OBJECT_SERIAL_DATA_COMMAND_T68 = 68 , 
    MXT336T_OBJECT_PROCI_PALMGESTUREPROCESSOR_T69 = 69 , 
    MXT336T_OBJECT_SPT_DYNAMICCONFIGURATIONCONTROLLER_T70 = 70 , 
    MXT336T_OBJECT_SPT_DYNAMICCONFIGURATIONCONTAINER_T71 = 71 , 
    MXT336T_OBJECT_PROCG_NOISESUPPRESSION_T72 = 72 , 
    MXT336T_OBJECT_PROCI_ZONEINDICATION_T73 = 73 , 
    MXT336T_OBJECT_PROCG_SIMPLEGESTUREPROCESSOR_T74 = 74 , 
    MXT336T_OBJECT_MOTION_SENSING_OBJECT_T75 = 75 , 
    MXT336T_OBJECT_PROCI_MOTION_GESTURES_T76 = 76 , 
    MXT336T_OBJECT_SPT_CTESCANCONFIG_T77 = 77 , 
    MXT336T_OBJECT_PROCI_GLOVEDETECTION_T78 = 78 , 
    MXT336T_OBJECT_SPT_TOUCHEVENTTRIGGER_T79 = 79 , 
    MXT336T_OBJECT_PROCI_RETRANSMISSIONCOMPENSATION_T80 = 80 , 
    MXT336T_OBJECT_PROCI_UNLOCKGESTURE_T81 = 81 , 
    MXT336T_OBJECT_SPT_NOISESUPEXTENSION_T82 = 82 , 
    MXT336T_OBJECT_ENVIRO_LIGHTSENSING_T83 = 83 , 
    MXT336T_OBJECT_PROCI_GESTUREPROCESSOR_T84 = 84 , 
    MXT336T_OBJECT_PEN_ACTIVESTYLUSPOWER_T85 = 85 , 
    MXT336T_OBJECT_PROCG_NOISESUPACTIVESTYLUS_T86 = 86 , 
    MXT336T_OBJECT_PEN_ACTIVESTYLUSDATA_T87 = 87 , 
    MXT336T_OBJECT_PEN_ACTIVESTYLUSRECEIVE_T88 = 88 , 
    MXT336T_OBJECT_PEN_ACTIVESTYLUSTRANSMIT_T89 = 89 , 
    MXT336T_OBJECT_PEN_ACTIVESTYLUSWINDOW_T90 = 90 , 
    MXT336T_OBJECT_DEBUG_CUSTOMDATACONFIG_T91 = 91 , 
    MXT336T_OBJECT_PROCI_SYMBOLGESTUREPROCESSOR_T92 = 92 , 
    MXT336T_OBJECT_PROCI_TOUCHSEQUENCELOGGER_T93 = 93 , 
    MXT336T_OBJECT_SPT_PTCCONFIG_T95 = 95 , 
    MXT336T_OBJECT_SPT_PTCTUNINGPARAMS_T96 = 96 , 
    MXT336T_OBJECT_TOUCH_PTCKEYS_T97 = 97 , 
    MXT336T_OBJECT_PROCG_PTCNOISESUPPRESSION_T98 = 98 , 
    MXT336T_OBJECT_PROCI_KEYGESTUREPROCESSOR_T99 = 99 , 
    MXT336T_OBJECT_TOUCH_MULTITOUCHSCREEN_T100 = 100 , 
    MXT336T_OBJECT_SPT_TOUCHSCREENHOVER_T101 = 101 , 
    MXT336T_OBJECT_SPT_SELFCAPHOVERCTECONFIG_T102 = 102 , 
    MXT336T_OBJECT_PROCI_SCHNOISESUPPRESSION_T103 = 103 , 
    MXT336T_OBJECT_SPT_AUXTOUCHCONFIG_T104 = 104 , 
    MXT336T_OBJECT_SPT_DRIVENPLATEHOVERCONFIG_T105 = 105 , 
    MXT336T_OBJECT_SPT_ACTIVESTYLUSMMBCONFIG_T106 = 106 , 
    MXT336T_OBJECT_PROCI_ACTIVESTYLUS_T107 = 107 , 
    MXT336T_OBJECT_PROCG_NOISESUPSELFCAP_T108 = 108 , 
    MXT336T_OBJECT_SPT_SELFCAPGLOBALCONFIG_T109 = 109 , 
    MXT336T_OBJECT_SPT_SELFCAPTUNINGPARAMS_T110 = 110 , 
    MXT336T_OBJECT_SPT_SELFCAPCONFIG_T111 = 111 , 
    MXT336T_OBJECT_PROCI_SELFCAPGRIPSUPPRESSION_T112 = 112 , 
    MXT336T_OBJECT_SPT_PROXMEASURECONFIG_T113 = 113 , 
    MXT336T_OBJECT_SPT_ACTIVESTYLUSMEASCONFIG_T114 = 114 , 
    MXT336T_OBJECT_PROCI_SYMBOLGESTURE_T115 = 115 , 
    MXT336T_OBJECT_SPT_SYMBOLGESTURECONFIG_T116 = 116 , 
    MXT336T_OBJECT_GEN_INFOBLOCK16BIT_T254 = 254 , 
    MXT336T_OBJECT_SPT_PROTOTYPE_T220 = 220 , 
    MXT336T_OBJECT_SPT_PROTOTYPE_T221 = 221 , 
    MXT336T_OBJECT_SPT_PROTOTYPE_T222 = 222 , 
    MXT336T_OBJECT_SPT_PROTOTYPE_T223 = 223 , 
    MXT336T_OBJECT_SPT_PROTOTYPE_T224 = 224 , 
    MXT336T_OBJECT_SPT_PROTOTYPE_T225 = 225 , 
    MXT336T_OBJECT_SPT_PROTOTYPE_T226 = 226 , 
    MXT336T_OBJECT_SPT_PROTOTYPE_T227 = 227 , 
    MXT336T_OBJECT_SPT_PROTOTYPE_T228 = 228 , 
    MXT336T_OBJECT_SPT_PROTOTYPE_T229 = 229 , 
    MXT336T_OBJECT_SPT_PROTOTYPE_T230 = 230 , 
    MXT336T_OBJECT_SPT_PROTOTYPE_T231 = 231 , 
    MXT336T_OBJECT_SPT_PROTOTYPE_T232 = 232 , 
    MXT336T_OBJECT_SPT_PROTOTYPE_T233 = 233 , 
    MXT336T_OBJECT_SPT_PROTOTYPE_T234 = 234 , 
    MXT336T_OBJECT_SPT_PROTOTYPE_T235 = 235 , 
    MXT336T_OBJECT_SPT_PROTOTYPE_T236 = 236 , 
    MXT336T_OBJECT_SPT_PROTOTYPE_T237 = 237 , 
    MXT336T_OBJECT_SPT_PROTOTYPE_T238 = 238 , 
    MXT336T_OBJECT_SPT_PROTOTYPE_T239 = 239 , 
    MXT336T_OBJECT_RESERVED_T255 = 255 ,
} MXT336T_OBJECT_TYPE;

//#define MESSAGE_CHECKSUM_ENABLED

// structs defining pieces of the MXT336T information header block
typedef struct MXT336T_ID_Info_t
{
    uint8_t family_id;              /* address 0 */
    uint8_t variant_id;             /* address 1 */
    uint8_t version;                /* address 2 */
    uint8_t build;                  /* address 3 */
    uint8_t matrix_x_size;          /* address 4 */
    uint8_t matrix_y_size;          /* address 5 */
    uint8_t num_declared_objects;   /* address 6 */
} __attribute__((packed)) MXT336T_ID_Info;

typedef struct MXT336T_Object_t
{
    uint8_t  object_type;            /* Object type ID */
    uint16_t i2c_address;            /* Start address of the obj config structure */
    uint8_t  size;                   /* Byte length of the obj config structure -1 */
    uint8_t  instances;              /* Number of objects of this obj. type -1 */
    uint8_t  num_report_ids;         /* e.g. max number of touches in a screen etc */
    
} __attribute__((packed)) MXT336T_Object;


typedef struct MXT336T_CRC_t
{
    uint16_t CRC_lo;                 /* low 16 bits of 24 bit value */
    uint8_t  CRC_hi;                 /* high 8 bits of 24 bit value */
} __attribute__((packed)) MXT336T_CRC;


typedef struct MXT336T_InfoBlock_t
{
    /* Pointer to the struct containing ID information */
    MXT336T_ID_Info* id;
    
    /* Pointer to an array of objects */
    MXT336T_Object* objectTable;
        
    /* Pointer to information block checksum */
    MXT336T_CRC* crc;
    
} MXT336T_InfoBlock;

// this is the maximum message size the message processor may issue
// hardcoded for simplicity but this value may change between part versions
#define MESSAGE_DATA_SIZE 8

typedef struct MXT336T_Message_t
{
    uint8_t reportID;
    uint8_t data[MESSAGE_DATA_SIZE];
#ifdef MESSAGE_CHECKSUM_ENABLED
    uint8_t checksum;
#endif
} MXT336T_Message;

// struct describing an MXT336T touch event
typedef struct MXT336T_TouchEvent_t
{
    uint8_t tchstatus;
    uint8_t x_lo;
    uint8_t x_hi;
    uint8_t y_lo;
    uint8_t y_hi;
    uint8_t aux[4];
} MXT336T_TouchEvent;

/* maxtouch information block */
uint32_t objectCount;
uint32_t messageDataSize = MESSAGE_DATA_SIZE; // Prevent assert at line 739 from
                                              // firing at startup.
MXT336T_Object* objectTable;

uint8_t* infoBlockData;
uint32_t infoBlockSize;
MXT336T_InfoBlock infoBlock;

/* Pointer to the MXT336T object data stored in the corresponding device object */
MXT336T_Object* messageProcessor;  
MXT336T_Object* commandProcessor;
MXT336T_Object* touchScreenProcessor;
uint32_t touchBaseID;
uint32_t touchEndID;

typedef struct MXT336T_ReportIDMap_t
{
    uint8_t objectType;
    uint8_t instance;
    uint8_t baseID;
} MXT336T_ReportIDMap;

MXT336T_ReportIDMap* reportIDMapList;
uint32_t reportIDMapSize;

// MXT336T Driver Module Index Count
typedef enum {

    ID_1 = 0,
    NUMBER_OF_MODULES
            
} DRV_MODULE_ID;

typedef enum
{
    /* Driver Initialize state */
    DEVICE_STATE_OPEN = 0,
            
    DEVICE_STATE_INIT,
            
    /* reset the address */
    DEVICE_STATE_INIT_RESET,        
            
    /* Read information block */
    DEVICE_STATE_READ_IB,
       
    /* Create object table */
    DEVICE_STATE_READ_OBJECT_TABLE,
            
    /* Read info block crc */
    DEVICE_STATE_READ_CRC_VALUE,
            
    /* Write Resolution configs*/        
    DEVICE_STATE_CONFIGURE_RESOLUTION,
    DEVICE_STATE_WRITE_T100_XRANGE,
    
    DEVICE_STATE_WRITE_T100_YRANGE,
            
    /* Driver ready state */
    DEVICE_STATE_READY,   
            
    /* read a specified object from the device */        
    DEVICE_STATE_READ_MESSAGE_OBJECT,
            
    DEVICE_STATE_HANDLE_MESSAGE_OBJECT,
            
    /* In error state */        
    DEVICE_STATE_ERROR, 
            
} DEVICE_STATE;

// I2C task buffer
typedef struct
{
    /* I2C Buffer handle */
    DRV_I2C_BUFFER_HANDLE drvI2CBufferHandle;

    /* Response to Read Object Command */
    uint8_t drvI2CFrameData[I2C_FRAME_SIZE];

} TASK_QUEUE;

// defines an MXT336T driver object instance
struct DEVICE_OBJECT
{
    /* The status of the driver */
    SYS_STATUS status;
    
    /* Driver state */
    DEVICE_STATE deviceState;

    /* Save the index of the driver. Important to know this
    as we are using reference based accessing */
    SYS_MODULE_INDEX drvIndex;

    /* Flag to indicate instance in use  */
    bool inUse;

    /* Flag to indicate module used in exclusive access mode */
    bool isExclusive;

    /* Callback for I2C Driver Open call */
    DRV_HANDLE (*drvOpen)(const SYS_MODULE_INDEX index,
                          const DRV_IO_INTENT intent);

    /* Touch input interrupt source */
    INT_SOURCE interruptSource;
    
    /* interrupt pin for driver instance */
    PORTS_BIT_POS interruptPin;
    
    /* port channel for interrupt instance */
    PORTS_CHANNEL interruptChannel;
       
    /* reset pin for driver instance */
    PORTS_BIT_POS resetPin;
    
    /* port channel for reset pin */
    PORTS_CHANNEL resetChannel;

    /* Head of the task queue */
    TASK_QUEUE* taskQueue;

    /* I2C bus driver handle */
    DRV_HANDLE drvI2CHandle;
    
    MXT336T_Message mxtMsg;
    
    uint8_t reportIDBase;
    
    uint16_t xRes;
    uint16_t yRes;
    
    uint32_t readRequest;
};

// *****************************************************************************

/* send reset command to device */
//static void _SendResetCommand(struct DEVICE_OBJECT* pDrvObject);

/* Send request to read message processor object */
static void _MessageObjectRead(struct DEVICE_OBJECT* pDrvObject);

/* Send request to read message processor object */
//static void _RegRead(struct DEVICE_OBJECT* pDrvObject, uint8_t reg);
static void _RegWrite16(struct DEVICE_OBJECT* pDrvObject, uint8_t reg, uint16_t val);

// finds an object in the object table given a type id and an instance number
static MXT336T_Object* _MXT336T_FindObject(const struct DEVICE_OBJECT *pDrvObject,
                                           const uint8_t objType, 
                                           const uint8_t objInstance);

bool MXT_INTERRUPT_PIN_VALUE_GET(void)
{
    return(PLIB_PORTS_PinGet(PORTS_ID_0, PORT_CHANNEL_E, PORTS_BIT_POS_8 ));
}

static int32_t buildObjectMap();
static uint32_t checksumInfoBlock(const struct DEVICE_OBJECT *pDrvObject);

static void _findTouchBaseID();
static void _handleTouchMessage(uint8_t touchID, MXT336T_TouchEvent* tchEvt);

#ifdef MESSAGE_CHECKSUM_ENABLED
static uint8_t checksumMessage(uint8_t* msg);
#endif

/* MXT336T Driver instance object */
struct DEVICE_OBJECT sMXT336TDriverInstances[DRV_MXT336T_INDEX_COUNT];

/* MXT336T Driver task queue */
static TASK_QUEUE sMXT336TQueue[DRV_MXT336T_NUM_QUEUE];

static void calculateLargestObjectSize(struct DEVICE_OBJECT *pDrvObject);

DRV_I2C_BUFFER_EVENT operationStatus;


SYS_MODULE_OBJ DRV_MXT336T_Initialize(const SYS_MODULE_INDEX index,
                                      const SYS_MODULE_INIT * const init)
{
    const DRV_MXT336T_INIT *pInit = NULL;
    
#ifdef DEBUG_ENABLE    
    SYS_DEBUG_Print("MXT Init");
#endif
    
    if ( index >= DRV_MXT336T_INDEX_COUNT )
    {
        SYS_ASSERT(false, "MXT336T Driver: Attempting to initialize an instance number greater than the max");
        return SYS_MODULE_OBJ_INVALID;
    }

    struct DEVICE_OBJECT * pDrvInstance =
                ( struct DEVICE_OBJECT *)&sMXT336TDriverInstances[index];

    if ( pDrvInstance->inUse == true )
    {
        SYS_ASSERT(false, "MXT336T Driver: Attempting to reinitialize a driver instance that is already in use");
        return SYS_MODULE_OBJ_INVALID;
    }

    pDrvInstance->inUse = true;

    pInit = (const DRV_MXT336T_INIT* const)init;

    /* */
    pDrvInstance->drvOpen         = pInit->drvOpen;
    pDrvInstance->taskQueue       = (TASK_QUEUE*)&sMXT336TQueue;
    pDrvInstance->drvI2CHandle    = DRV_HANDLE_INVALID;
    infoBlockData = NULL;
    
    if(pInit->horizontalResolution > 0)
        pDrvInstance->xRes            = pInit->horizontalResolution - 1;
    else
        pDrvInstance->xRes = DEFAULT_XRES;
    
    if(pInit->verticalResolution > 0)
        pDrvInstance->yRes            = pInit->verticalResolution - 1;
    else
        pDrvInstance->yRes = DEFAULT_YRES;
    
    pDrvInstance->status = SYS_STATUS_READY;
    pDrvInstance->deviceState = DEVICE_STATE_OPEN;
    
    return (SYS_MODULE_OBJ)pDrvInstance;
}

void DRV_MXT336T_Deinitialize ( SYS_MODULE_OBJ object )
{
    struct DEVICE_OBJECT * pDrvInstance =
                                        (struct DEVICE_OBJECT *)object;

    if( pDrvInstance == NULL )
    {
        SYS_ASSERT(false, "MXT336T Driver: Attempting to deinitialize a NULL object");
        return;
    }

    if ( pDrvInstance->inUse == false )
    {
        SYS_ASSERT(false, "MXT336T Driver: Attempting to deinitialize a driver instance that is not in use");
        return;
    }

    SYS_INT_SourceDisable(pDrvInstance->interruptSource);

    pDrvInstance->inUse                 = false;
    pDrvInstance->status                = SYS_STATUS_UNINITIALIZED;

    return;
}

SYS_STATUS DRV_MXT336T_Status(SYS_MODULE_OBJ object)
{
    struct DEVICE_OBJECT* pDrvInstance = (struct DEVICE_OBJECT *)object;

    if ( object == SYS_MODULE_OBJ_INVALID )
    {
        //SYS_ASSERT( " Handle is invalid " );
        return SYS_STATUS_ERROR;
    }
    
    return pDrvInstance->status;
}

DRV_HANDLE DRV_MXT336T_Open(const SYS_MODULE_INDEX index,
                            const DRV_IO_INTENT intent)
{ 
#ifdef DEBUG_ENABLE
    SYS_DEBUG_Print("MXT Open");
#endif
    
    if (index >= DRV_MXT336T_INDEX_COUNT)
    {
        SYS_ASSERT(false, "MXT336T Driver: Attempting to open an instance" \
                          "number greater than the max");
        return DRV_HANDLE_INVALID;
    }
    
    struct DEVICE_OBJECT * pDrvInstance = (struct DEVICE_OBJECT*)&sMXT336TDriverInstances[index];

    /* Open the bus driver */
    if(pDrvInstance->drvOpen == NULL)
    {
        SYS_ASSERT(false, "MXT336T Driver: Bus driver init parameter missing");
        return DRV_HANDLE_INVALID;
    }
    
    if(pDrvInstance->drvI2CHandle == DRV_HANDLE_INVALID)
    {
        pDrvInstance->drvI2CHandle = pDrvInstance->drvOpen(DRV_MXT336T_I2C_MODULE_INDEX,
                                                           DRV_IO_INTENT_READWRITE);
    }
    
    if(pDrvInstance->drvI2CHandle == DRV_HANDLE_INVALID)
    {
        SYS_ASSERT(false, "MXT336T Driver: Bus driver initialization failed");
        return DRV_HANDLE_INVALID;
    }

    if ((intent & DRV_IO_INTENT_EXCLUSIVE) == DRV_IO_INTENT_EXCLUSIVE)
    {
        pDrvInstance->isExclusive = true;
    }
    
       
    pDrvInstance->status = SYS_STATUS_BUSY;
    
    
    
    return (DRV_HANDLE)pDrvInstance;
}

void DRV_MXT336T_Close (DRV_HANDLE handle)
{
    struct DEVICE_OBJECT* pDrvObject = (struct DEVICE_OBJECT*)handle;

    if(pDrvObject == NULL)
    {
        SYS_ASSERT(false, "MXT336T Driver: Trying to close a client with invalid driver object");
        
        return;
    }
    
    /* move driver to the idle state to stop any processes */
    pDrvObject->deviceState = DEVICE_STATE_INIT;    
    
    /* free up the memory used */
    OSAL_Free(infoBlockData);
    infoBlockData = NULL;
}

void DRV_MXT336T_ReadRequest( SYS_MODULE_OBJ object )
{
    struct DEVICE_OBJECT *pDrvObject = (struct DEVICE_OBJECT *)object;

    /* Check we are not processing any existing transaction, if a transaction is still
     * in process then the CHG line will still be asserted and the read will be started
     * in the main tasks routine */
    if (object == SYS_MODULE_OBJ_INVALID /*||
        pDrvObject->deviceState != DEVICE_STATE_READY*/)
        return;
    
    //_MessageObjectRead(pDrvObject);

    pDrvObject->readRequest = 1;        
}

static void handleMessage(struct DEVICE_OBJECT* pDrvObject);

void DRV_MXT336T_Tasks ( SYS_MODULE_OBJ object )
{
    uint16_t                                    crcResult;
    
    struct DEVICE_OBJECT* pDrvObject = (struct DEVICE_OBJECT *)object;

    if(object == SYS_MODULE_OBJ_INVALID)
        return;
    
    /* MXT336T Driver state machine */
    switch (pDrvObject->deviceState)
    {
        case DEVICE_STATE_OPEN:
        {
            DRV_MXT336T_Open(0, DRV_IO_INTENT_EXCLUSIVE);
            
            pDrvObject->deviceState = DEVICE_STATE_INIT;
        
            break;
        }
        case DEVICE_STATE_INIT:
        {
#ifdef DEBUG_ENABLE           
            SYS_DEBUG_Print("MXT State Init\n");
#endif
            
			static uint8_t delayN = 5;
			
			while(delayN > 0)
			{
				delayN--;
				return;				
			}
			
            pDrvObject->taskQueue[0].drvI2CFrameData[0] = 0;
            pDrvObject->taskQueue[0].drvI2CFrameData[1] = 0;

            pDrvObject->taskQueue[0].drvI2CBufferHandle = DRV_I2C_Transmit(pDrvObject->drvI2CHandle,
                                                                           I2C_MASTER_WRITE_ID, 
                                                                           &pDrvObject->taskQueue[0].drvI2CFrameData[0],
                                                                           2,
                                                                           NULL);  

            if (pDrvObject->taskQueue[0].drvI2CBufferHandle)
                pDrvObject->deviceState = DEVICE_STATE_INIT_RESET;
            
            break;
        }
        case DEVICE_STATE_INIT_RESET: /* Device reset address */
        {
            if (DRV_I2C_TransferStatusGet(pDrvObject->drvI2CHandle,
                                          pDrvObject->taskQueue[0].drvI2CBufferHandle) != DRV_I2C_BUFFER_EVENT_COMPLETE)
            {
                return;
            }
            
#ifdef DEBUG_ENABLE            
            SYS_DEBUG_Print("MXT Reset\n");
#endif
            
            /* read the information block */
            pDrvObject->taskQueue[0].drvI2CBufferHandle = DRV_I2C_Receive(pDrvObject->drvI2CHandle,
                                                                          I2C_MASTER_READ_ID,
                                                                          &pDrvObject->taskQueue[0].drvI2CFrameData[0],
                                                                          sizeof(MXT336T_ID_Info),
                                                                          NULL);
            
            if (!pDrvObject->taskQueue[0].drvI2CBufferHandle)
            {
                pDrvObject->deviceState = DEVICE_STATE_ERROR;
                break;
            }
            
            pDrvObject->deviceState = DEVICE_STATE_READ_IB;
            
            break;          
        }
        case DEVICE_STATE_READ_IB: /* Read information block */
        {
            if (DRV_I2C_BUFFER_EVENT_COMPLETE != DRV_I2C_TransferStatusGet(pDrvObject->drvI2CHandle,pDrvObject->taskQueue[0].drvI2CBufferHandle))
                return;
            
#ifdef DEBUG_ENABLE            
            SYS_DEBUG_Print("MXT Read Info Block\n");
#endif
            
            /* copy the information block */
            objectCount = pDrvObject->taskQueue[0].drvI2CFrameData[6];
                        
            /* read the object table */
            infoBlockSize = sizeof(MXT336T_ID_Info) +
                            (objectCount * sizeof(MXT336T_Object)) +
                            sizeof(MXT336T_CRC);
            
            infoBlockData = OSAL_Malloc(infoBlockSize); 
            
            infoBlock.id = (MXT336T_ID_Info*)infoBlockData;
            infoBlock.objectTable = (MXT336T_Object*)((uint8_t*)infoBlockData + sizeof(MXT336T_ID_Info));
            infoBlock.crc = (MXT336T_CRC*)((uint8_t*)infoBlockData + sizeof(MXT336T_ID_Info) + (objectCount * sizeof(MXT336T_Object)));
                       
            SYS_ASSERT(messageDataSize == MESSAGE_DATA_SIZE,
                       "MXT336T Driver: Predefined max message data size does not match calculated value.");
           
#ifdef DEBUG_ENABLE            
            SYS_DEBUG_Print("Message data size: %d\n", messageDataSize);
#endif
            
            pDrvObject->taskQueue[0].drvI2CBufferHandle = DRV_I2C_Receive(pDrvObject->drvI2CHandle,
                                                                          I2C_MASTER_READ_ID,
                                                                          infoBlockData,
                                                                          infoBlockSize,
                                                                          NULL);
            
            if (!pDrvObject->taskQueue[0].drvI2CBufferHandle)
            {
                pDrvObject->deviceState = DEVICE_STATE_ERROR;
                break;
            }
            
            pDrvObject->deviceState = DEVICE_STATE_READ_OBJECT_TABLE;
        
            break;            
        }
        
        case DEVICE_STATE_READ_OBJECT_TABLE: /* Wait for object table to be read */
        {
            if (DRV_I2C_BUFFER_EVENT_COMPLETE != DRV_I2C_TransferStatusGet(pDrvObject->drvI2CHandle,
                                                                           pDrvObject->taskQueue[0].drvI2CBufferHandle))
            {
                return;
            }
            
#ifdef DEBUG_ENABLE            
            SYS_DEBUG_Print("MXT Read Object Table\n");
#endif
            
            crcResult = checksumInfoBlock(pDrvObject);
            
            if (crcResult != 0)
            {
                pDrvObject->deviceState = DEVICE_STATE_ERROR;
                break;
            }
            
            calculateLargestObjectSize(pDrvObject);
            
            if(buildObjectMap() != 0)
            {
                pDrvObject->deviceState = DEVICE_STATE_ERROR;
                break;
            }
            
            /* we assume that all MXT336T devices have a message processor object in order to signal 
             * events back to the host. Search for and hold a pointer to this object */
            messageProcessor = _MXT336T_FindObject(pDrvObject,
                                                   MXT336T_OBJECT_GEN_MESSAGEPROCESSOR_T5,
                                                   0);
                    
            /* if no message object then an error */       
            if (messageProcessor == NULL)
            {
                pDrvObject->deviceState = DEVICE_STATE_ERROR;
                break;
            }
            
            /* we assume that all MXT336T devices have a command processor object in order to signal 
             * events back to the host. Search for and hold a pointer to this object */
            commandProcessor = _MXT336T_FindObject(pDrvObject,
                                                   MXT336T_OBJECT_GEN_COMMANDPROCESSOR_T6,
                                                   0);
                    
            /* if no message object then an error */       
            if (commandProcessor == NULL)
            {
                pDrvObject->deviceState = DEVICE_STATE_ERROR;
                break;
            }
            
            // turn on message crc8 checksum
#ifdef MESSAGE_CHECKSUM_ENABLED
            messageProcessor->i2c_address |= 0x8000;
#endif
                           
            touchScreenProcessor = _MXT336T_FindObject(pDrvObject,
                                                       MXT336T_OBJECT_TOUCH_MULTITOUCHSCREEN_T100,
                                                       0);
                    
            /* if no message object then an error */       
            if (touchScreenProcessor == NULL)
            {
                pDrvObject->deviceState = DEVICE_STATE_ERROR;
                break;
            }
            
            _findTouchBaseID();
            
            pDrvObject->deviceState = DEVICE_STATE_CONFIGURE_RESOLUTION;
            
            break;
        }   
        case DEVICE_STATE_CONFIGURE_RESOLUTION:
        {
#ifdef DEBUG_ENABLE            
            SYS_DEBUG_Print("MXT Configure Resolution\n");
#endif
            
            _RegWrite16(pDrvObject, T100_XRANGE, pDrvObject->xRes);
            //_RegRead(pDrvObject, T100_XRANGE);
            
            //pDrvObject->status = SYS_STATUS_READY;
            pDrvObject->deviceState = DEVICE_STATE_WRITE_T100_XRANGE;
            
            break;
        }
        case DEVICE_STATE_WRITE_T100_XRANGE:
        {
            if (DRV_I2C_BUFFER_EVENT_COMPLETE != DRV_I2C_TransferStatusGet(pDrvObject->drvI2CHandle,
                                                                           pDrvObject->taskQueue[0].drvI2CBufferHandle))
            {
                return;
            }
            
#ifdef DEBUG_ENABLE            
            SYS_DEBUG_Print("MXT Write T100 XRange %d\n", pDrvObject->taskQueue[0].drvI2CFrameData[2] | pDrvObject->taskQueue[0].drvI2CFrameData[3] << 8);
#endif
           
            _RegWrite16(pDrvObject, T100_YRANGE, pDrvObject->yRes);

            pDrvObject->deviceState = DEVICE_STATE_WRITE_T100_YRANGE;
            
            break;
        }    
        case DEVICE_STATE_WRITE_T100_YRANGE:
        {
            if (DRV_I2C_BUFFER_EVENT_COMPLETE != DRV_I2C_TransferStatusGet(pDrvObject->drvI2CHandle,
                                                                           pDrvObject->taskQueue[0].drvI2CBufferHandle))
            {
                return;
            }
            
#ifdef DEBUG_ENABLE           
            SYS_DEBUG_Print("MXT Write T100 YRange %d\n", pDrvObject->taskQueue[0].drvI2CFrameData[2] | pDrvObject->taskQueue[0].drvI2CFrameData[3] << 8);
#endif
            
            pDrvObject->status = SYS_STATUS_READY;
            pDrvObject->deviceState = DEVICE_STATE_READ_MESSAGE_OBJECT;
            
            break;
        }
        case DEVICE_STATE_READY: /* Driver ready state */
        {
            if(pDrvObject->mxtMsg.reportID != 0xFF || pDrvObject->readRequest == 1)
            {
                pDrvObject->deviceState = DEVICE_STATE_READ_MESSAGE_OBJECT;
                pDrvObject->readRequest = 0;
            }           
            
            break;    
        }
        case DEVICE_STATE_READ_MESSAGE_OBJECT:
        {
            _MessageObjectRead(pDrvObject);
            
            pDrvObject->deviceState = DEVICE_STATE_HANDLE_MESSAGE_OBJECT;
            
            break;
        }
        case DEVICE_STATE_HANDLE_MESSAGE_OBJECT: /* read a specified object from the device */
        {
            if (DRV_I2C_BUFFER_EVENT_COMPLETE != DRV_I2C_TransferStatusGet(pDrvObject->drvI2CHandle,
                                                                           pDrvObject->taskQueue[1].drvI2CBufferHandle))
            {
                return;
            }
            
#ifdef DEBUG_ENABLE            
            SYS_DEBUG_Print("MXT message id: %d\n", pDrvObject->mxtMsg.reportID);
#endif
            
            if(pDrvObject->mxtMsg.reportID == 0xFF)
            {
                pDrvObject->deviceState = DEVICE_STATE_READY; 
                
                return;
            }
            
#ifdef MESSAGE_CHECKSUM_ENABLED            
            if(checksumMessage((uint8_t*)&pDrvObject->mxtMsg) == 0)
            {
                handleMessage(pDrvObject);
            }
            else
            {
#ifdef DEBUG_ENABLE                
                SYS_DEBUG_Print("Checksum failed\n");
#endif
            }
#else
            handleMessage(pDrvObject);
#endif            
            pDrvObject->deviceState = DEVICE_STATE_READ_MESSAGE_OBJECT;    

            break;
        }
        case DEVICE_STATE_ERROR: /* In error state */
        {
            pDrvObject->status = SYS_STATUS_ERROR;
            break;
        }
        default:
        {
            break;
        }
    }
    
    return;
}

// *****************************************************************************
// *****************************************************************************
// Section: Internal functions used by this module only
// *****************************************************************************
// *****************************************************************************


// *****************************************************************************
/* Send request to read message processor object */
static void _MessageObjectRead(struct DEVICE_OBJECT *pDrvObject)
{
    //size_t msgSize;

    if (pDrvObject == NULL)
        return;
    
    /* write the address of the message processor object to the device */     
    pDrvObject->taskQueue[0].drvI2CFrameData[0] = messageProcessor->i2c_address & 0xFF;  
    pDrvObject->taskQueue[0].drvI2CFrameData[1] = messageProcessor->i2c_address >> 8;
    
    pDrvObject->taskQueue[0].drvI2CBufferHandle = DRV_I2C_Transmit(pDrvObject->drvI2CHandle,
                                                                   I2C_MASTER_WRITE_ID, 
                                                                   &pDrvObject->taskQueue[0].drvI2CFrameData[0],
                                                                   2,
                                                                   NULL); 

    /* schedule a read of the message processor object */
    memset(&pDrvObject->mxtMsg, 0, sizeof(MXT336T_Message));
    
    pDrvObject->taskQueue[1].drvI2CBufferHandle =  DRV_I2C_Receive(pDrvObject->drvI2CHandle,
                                                                   I2C_MASTER_READ_ID,
                                                                   &pDrvObject->mxtMsg,
                                                                   I2C_READ_ID_FRAME_SIZE,
                                                                   NULL);
}

#if 0
static void _SendResetCommand(struct DEVICE_OBJECT *pDrvObject)
{
    if (pDrvObject == NULL)
        return;
    
    /* write the address of the command processor object to the device */     
    memset(pDrvObject->taskQueue[0].drvI2CFrameData, 0, I2C_FRAME_SIZE);
    
    pDrvObject->taskQueue[0].drvI2CFrameData[0] = commandProcessor->i2c_address & 0xFF;  
    pDrvObject->taskQueue[0].drvI2CFrameData[1] = commandProcessor->i2c_address >> 8;
    
    pDrvObject->taskQueue[0].drvI2CFrameData[2] = 0x1; // nonzero = reset command
    
    pDrvObject->taskQueue[0].drvI2CBufferHandle = DRV_I2C_Transmit(pDrvObject->drvI2CHandle,
                                                                   I2C_MASTER_WRITE_ID, 
                                                                   &pDrvObject->taskQueue[0].drvI2CFrameData[0],
                                                                   9, // address plus 7 bytes of command data
                                                                   NULL); 
}
#endif

/* Send request to read message processor object */
static void _RegWrite16(struct DEVICE_OBJECT *pDrvObject, uint8_t reg, uint16_t val)
{
    uint16_t pReg;

    if (pDrvObject == NULL)
        return;
    
    /* write the address of the object register to the device */     
    pReg = touchScreenProcessor->i2c_address + reg;
    
    pDrvObject->taskQueue[0].drvI2CFrameData[0] = pReg & 0xFF;  
    pDrvObject->taskQueue[0].drvI2CFrameData[1] = pReg >> 8;
    pDrvObject->taskQueue[0].drvI2CFrameData[2] = val & 0xFF;  
    pDrvObject->taskQueue[0].drvI2CFrameData[3] = val >> 8;
            
    //addr = pDrvObject->taskQueue[0].drvI2CFrameData[0]+pReg;
    pDrvObject->taskQueue[0].drvI2CBufferHandle = DRV_I2C_Transmit(pDrvObject->drvI2CHandle,
                                                                   I2C_MASTER_WRITE_ID,
                                                                   &pDrvObject->taskQueue[0].drvI2CFrameData[0],
                                                                   4,
                                                                   NULL); 
}

#if 0
/* Send request to read message processor object */
static void _RegRead(struct DEVICE_OBJECT *pDrvObject, uint8_t reg)
{
    uint16_t pReg;

    if (pDrvObject == NULL)
        return;
    
    /* write the address of the object register to the device */     
    pReg = touchScreenProcessor->i2c_address + reg;
    
    pDrvObject->taskQueue[0].drvI2CFrameData[0] = pReg & 0xFF;  
    pDrvObject->taskQueue[0].drvI2CFrameData[1] = pReg >> 8;
            
    //addr = pDrvObject->taskQueue[0].drvI2CFrameData[0]+pReg;
    pDrvObject->taskQueue[0].drvI2CBufferHandle = DRV_I2C_Transmit(pDrvObject->drvI2CHandle,
                                                                   I2C_MASTER_WRITE_ID,
                                                                   &pDrvObject->taskQueue[0].drvI2CFrameData[0],
                                                                   2,
                                                                   NULL); 

    
    /* schedule a read of the specific register in the object */
    //msgSize = (pDrvObject->pMXT336TObject->size + 1) - 2 + 1; /* + 1 for size offset, -2 for spec, +1 for reportID field */
    pDrvObject->taskQueue[1].drvI2CBufferHandle = DRV_I2C_Receive(pDrvObject->drvI2CHandle,
                                                                  I2C_MASTER_READ_ID,
                                                                  &pDrvObject->taskQueue[1].drvI2CFrameData[0],
                                                                  2,
                                                                  NULL);
}
#endif

static void handleMessage(struct DEVICE_OBJECT* pDrvObject)
{    
    if ((pDrvObject->mxtMsg.reportID == 0x00) || (pDrvObject->mxtMsg.reportID == 0xFF))
    {
        /* invalid message */
        return;
    }   
    
    // multitouch message?
    if(pDrvObject->mxtMsg.reportID >= touchBaseID &&
       pDrvObject->mxtMsg.reportID <= touchEndID)
    {
        _handleTouchMessage(pDrvObject->mxtMsg.reportID - touchBaseID,
                            (MXT336T_TouchEvent*)pDrvObject->mxtMsg.data);
    }
    else
    {
#ifdef DEBUG_ENABLE        
        SYS_DEBUG_Print("MXT unhandled id: %d\n", pDrvObject->mxtMsg.reportID);
#endif
    }
}

// *****************************************************************************
/* Find a specific MXT336T client object in the device object table 
 * Internally used by the driver to find the MXT336T object data  */
static MXT336T_Object* _MXT336T_FindObject(const struct DEVICE_OBJECT *pDrvObject,
                                           const uint8_t objType, 
                                           const uint8_t objInstance)
{
    MXT336T_Object* pObject;
    uint8_t objectIndex = 0;
    
    if (pDrvObject == NULL || infoBlockData == NULL)
        return NULL;

    pObject = infoBlock.objectTable;
    
    /* iterate through the object table to find the required object and instance */
    do
    {
        /* check the object type */
        if (objType == pObject->object_type)
        {
            /* found a match for the object type */
            
            /* check the instance matches the requested one - this is questionable for now */
            //if (objInstance == (pObject->instances + 1))
            if (objInstance <= (pObject->instances))    
            {
                return pObject;                       
            }                   
        }
        
        pObject++;
        objectIndex++;    
    }
    while(objectIndex != objectCount);
    
    return NULL;    
}

static void calculateLargestObjectSize(struct DEVICE_OBJECT *pDrvObject)
{
    MXT336T_Object* pObject;
    uint8_t objectIndex = 0;

    if (pDrvObject == NULL || infoBlockData == NULL)
        return;
    
    messageDataSize = 0;

    pObject = infoBlock.objectTable;
    
    /* iterate through the object table to find the required object and instance */
    do
    {
        if(pObject->object_type == MXT336T_OBJECT_GEN_MESSAGEPROCESSOR_T5)
        {
            messageDataSize = pObject->size - 2; // per page 23 of the datasheet
        
            return;
        }
        
        pObject++;
        objectIndex++;    
    }
    while(objectIndex != objectCount);
}

static uint32_t crc24(uint32_t crc, uint8_t firstByte, uint8_t secondByte)
{
    static const uint32_t crcpoly = 0x80001B;
    uint32_t result;
    uint16_t data_word;
    
    data_word = (uint16_t)firstByte | (uint16_t)((uint16_t)secondByte << 8u);
    result = (uint32_t)data_word ^ (uint32_t)(crc << 1u);
    
    if(result & 0x1000000)
    {
        result ^= crcpoly; // XOR result with crcpoly
    }
    
    return result;
}

static uint32_t checksumInfoBlock(const struct DEVICE_OBJECT *pDrvObject)
{
    uint32_t crc = 0;       // calculated CRC
    uint32_t target = 0;
    uint32_t crc_area_size; // size of data for crc calculation
    uint8_t* mem;           // data buffer
    uint32_t i;
    
    /* 7 bytes of version data, 6 * OBJECT_COUNT bytes of object table */
    crc_area_size = infoBlockSize - sizeof(MXT336T_CRC);
    
    mem = (uint8_t*)infoBlockData;
    
    i = 0;
    
    while(i < (crc_area_size - 1))
    {
        crc = crc24(crc, *(mem + i), *(mem + i + 1));
        i += 2;
    }
    
    // call crc24 with the final byte plus a zero to make the sequence even
    crc = crc24(crc, *(mem + i), 0);
    
    crc = (crc & 0xFFFFFF);  // mask the 32 bit result
    
    target = infoBlock.crc->CRC_hi;
    target <<= 16;
    target |= infoBlock.crc->CRC_lo;
    
    if(crc == target)
        return 0;
                
    return 1;
}

#ifdef MESSAGE_CHECKSUM_ENABLED
static uint8_t crc8(uint8_t crc, uint8_t data)
{
    static const uint8_t crcpoly = 0x8C;
    
    uint8_t index;
    uint8_t fb;
    
    index = 8;
    
    do
    {
        fb = (crc ^ data) & 0x01;
        
        data >>= 1;
        crc >>= 1;
        
        if(fb)
            crc ^= crcpoly;
    }
    while(--index);
    
    return crc;
}

static uint8_t checksumMessage(uint8_t* msg)
{
    uint8_t crc = 0;
    uint8_t data_in;
    uint32_t i;
    
    for(i = 0; i < sizeof(MXT336T_Message) - 1; i++)
    {
        data_in = msg[i];
        crc = crc8(crc, data_in);
    }
    
    return crc;
}
#endif

static int32_t buildObjectMap()
{
    reportIDMapSize = 1;
    uint16_t report_id_count = 1;
    
    uint8_t element_index;
    uint8_t instance_index;
    uint8_t report_index;
    uint16_t no_of_bytes;
    //uint8_t baseIndex;
    
    MXT336T_Object* object;
    
    /* calculate number of report IDs */
    for(element_index = 0; element_index < infoBlock.id->num_declared_objects; element_index++)
    {
        object = &infoBlock.objectTable[element_index];
        reportIDMapSize += (object->instances + 1) * object->num_report_ids;
    }
    
    /* Allocate memory for report ID look-up table */
    no_of_bytes = reportIDMapSize * sizeof(MXT336T_ReportIDMap);
    reportIDMapList = OSAL_Malloc(no_of_bytes);
    
    if(reportIDMapList == NULL)
        return -1;
    
    /* Report ID 0 is reserved, so create empty mapping */
    reportIDMapList[0].objectType = 0;
    reportIDMapList[0].instance = 0;
    
    /* store the object and instance of each report ID */
    for(element_index = 0; element_index < infoBlock.id->num_declared_objects; element_index++)
    {
        object = &infoBlock.objectTable[element_index];
        
        for(instance_index = 0; instance_index < (object->instances + 1); instance_index++)
        {
            for(report_index = 0; report_index < object->num_report_ids; report_index++)
            {
#ifdef DEBUG_ENABLE                
                SYS_DEBUG_Print("Object type map - report id count: %d, element index: %d, object type: %d, object instance: %d\n", report_id_count, element_index, object->object_type, object->instances);
#endif
                
                reportIDMapList[report_id_count].objectType = object->object_type;
                reportIDMapList[report_id_count].instance = instance_index;
                
                report_id_count++;
            }
        }
    }
    
    return 0;
}

static void _findTouchBaseID()
{
    uint32_t i;
    
    for(i = 0; i < reportIDMapSize; i++)
    {
        if(reportIDMapList[i].objectType == touchScreenProcessor->object_type)
        {
            touchBaseID = i + 2;
            touchEndID = touchBaseID + 9;
            
            break;
        }
    }
}

static void _handleTouchMessage(uint8_t touchID, MXT336T_TouchEvent* tchEvt)
{
    //uint8_t detect;
    //uint8_t type;
    uint8_t event;
    uint16_t xpos = 0;
    uint16_t ypos = 0;

    //detect = tchEvt->tchstatus >> 7;
    //type = tchEvt->tchstatus >> 6;
    event = tchEvt->tchstatus & 0xF;
    xpos = tchEvt->x_lo;
    xpos |= tchEvt->x_hi << 8;
    ypos = tchEvt->y_lo;
    ypos |= tchEvt->y_hi << 8;
    
    if(event == 0)
        return;
    
#ifdef DEBUG_ENABLE      
    SYS_DEBUG_Print("Touch event - id: %d, detect: %d, type: %d, event: %d, xpos: %d, ypos: %d\n", touchID, detect, type, event, xpos, ypos);
#endif
    
    switch(event)
    {
        case 0x4: // touch down
        {
            //laInput_InjectTouchDown(touchID, xpos, ypos);
            
            SYS_INP_InjectTouchDown(touchID, xpos, ypos);
            
            break;
        }
        case 0x5: // touch up
        {
            //laInput_InjectTouchUp(touchID, xpos, ypos);
            
            SYS_INP_InjectTouchUp(touchID, xpos, ypos);
            
            break;
        }
        case 0x1: // touch move
        {
            //laInput_InjectTouchMoved(touchID, xpos, ypos);
            
            SYS_INP_InjectTouchMove(touchID, xpos, ypos);
            
            break;
        }
    }
}