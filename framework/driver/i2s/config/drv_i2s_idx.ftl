config DRV_I2S_INSTANCES_NUMBER_GT_${INSTANCE+1}
    depends on USE_DRV_I2S
    bool
<#if INSTANCE != 0>
	default n if DRV_I2S_INSTANCES_NUMBER_GT_${INSTANCE} = n     
</#if>	
	default n if DRV_I2S_INSTANCES_NUMBER = ${INSTANCE+1}
	default y
	
config DRV_I2S_INST_IDX${INSTANCE}
    depends on USE_DRV_I2S 
<#if INSTANCE != 0>
	             && DRV_I2S_INSTANCES_NUMBER_GT_${INSTANCE}
</#if>
    bool "I2S Driver Instance ${INSTANCE}"
    default y
    ---help---
    IDH_HTML_DRV_I2S_INSTANCES_NUMBER
    ---endhelp---
    
    
ifblock DRV_I2S_INST_IDX${INSTANCE}

config DRV_I2S_PERIPHERAL_ID_IDX${INSTANCE}
    string "I2S Module ID"
    range SPI_MODULE_ID
    default "SPI_ID_1"
    ---help---
    IDH_HTML_SPI_MODULE_ID
    ---endhelp---

menu "RTOS Configuration"
    depends on USE_DRV_I2S
    depends on USE_3RDPARTY_RTOS
    depends on DRV_I2S_IMPL = "DYNAMIC"

config DRV_I2S_RTOS_IDX${INSTANCE}
    string "Run Library Tasks As"
    range 3RDPARTY_RTOS_SYS_TASKS_OPTIONS
    default "Standalone"

config DRV_I2S_IDX${INSTANCE}_RTOS_TASK_SIZE
    int "Task Size"
    depends on DRV_I2S_RTOS_IDX${INSTANCE} = "Standalone"
    default 1024

config DRV_I2S_IDX${INSTANCE}_RTOS_TASK_PRIORITY
    int "Task Priority"
    depends on DRV_I2S_RTOS_IDX${INSTANCE} = "Standalone"
    default 1

config DRV_I2S_IDX${INSTANCE}_RTOS_USE_DELAY
    bool "Use Task Delay?"
    depends on DRV_I2S_RTOS_IDX${INSTANCE} = "Standalone"
    default y

config DRV_I2S_IDX${INSTANCE}_RTOS_DELAY
    int "Task Delay"
    depends on DRV_I2S_RTOS_IDX${INSTANCE} = "Standalone"
    depends on DRV_I2S_IDX${INSTANCE}_RTOS_USE_DELAY
    default 1000
endmenu

config DRV_I2S_USE_SSIN_PIN_IDX${INSTANCE}
    string
    depends on USE_DRV_I2S
    default DRV_I2S_PERIPHERAL_ID_IDX${INSTANCE} if DRV_I2S_USAGE_MODE_IDX${INSTANCE} = "DRV_I2S_MODE_SLAVE"
	
config DRV_I2S_USE_SSOUT_PIN_IDX${INSTANCE}
    string
    depends on USE_DRV_I2S
    default DRV_I2S_PERIPHERAL_ID_IDX${INSTANCE} if DRV_I2S_USAGE_MODE_IDX${INSTANCE} = "DRV_I2S_MODE_MASTER"
	
config DRV_I2S_STOP_IN_IDLE_IDX${INSTANCE}
	bool
	depends on USE_DRV_I2S
	default n
    ---help---
    IDH_HTML_DRV_I2S_STOP_IN_IDLE
    ---endhelp---
	
config DRV_I2S_USAGE_MODE_IDX${INSTANCE}
    string "Usage Mode"
    depends on USE_DRV_I2S
    range DRV_I2S_USAGE_MODE
    default "DRV_I2S_MODE_MASTER"
    ---help---
    IDH_HTML_DRV_I2S_MODE
    ---endhelp---
	
config SPI_BAUD_RATE_CLK_IDX${INSTANCE}
	string "Baud Clock"
	depends on USE_DRV_I2S
	range SPI_BAUD_RATE_CLOCK
	default "SPI_BAUD_RATE_MCLK_CLOCK"
    ---help---
    IDH_HTML_SPI_BAUD_RATE_CLOCK
    ---endhelp---
	
config DRV_I2S_CLK_MODE_IDX${INSTANCE}
    string "Clock Mode"
    depends on USE_DRV_I2S
    range DRV_I2S_CLOCK_MODE
    default "DRV_I2S_CLOCK_MODE_IDLE_HIGH_EDGE_FALL"
    ---help---
    IDH_HTML_DRV_I2S_CLOCK_MODE
    ---endhelp---
	
config SPI_AUDIO_COMM_WIDTH_IDX${INSTANCE}
	string "Audio Communication Width"
	depends on USE_DRV_I2S
	range SPI_AUDIO_COMMUNICATION_WIDTH
	default "SPI_AUDIO_COMMUNICATION_24DATA_32FIFO_32CHANNEL"
    ---help---
    IDH_HTML_SPI_AUDIO_COMMUNICATION_WIDTH
    ---endhelp---
	
config SPI_AUDIO_TRANSMIT_MODE_IDX${INSTANCE}
	string "Audio Mode"
	depends on USE_DRV_I2S
	range SPI_AUDIO_TRANSMIT_MODE
	default "SPI_AUDIO_TRANSMIT_STEREO"
    ---help---
    IDH_HTML_SPI_AUDIO_TRANSMIT_MODE
    ---endhelp---
	
config SPI_INPUT_SAMPLING_PHASE_IDX${INSTANCE}
	string "Input Sample Phase Selection"
	depends on USE_DRV_I2S
	range SPI_INPUT_SAMPLING_PHASE
	default "SPI_INPUT_SAMPLING_PHASE_IN_MIDDLE"
    ---help---
    IDH_HTML_SPI_INPUT_SAMPLING_PHASE
    ---endhelp---
	
config DRV_I2S_AUDIO_PROTOCOL_MODE_IDX${INSTANCE}
	string "Audio Protocol Mode"
	depends on USE_DRV_I2S
	range DRV_I2S_AUDIO_PROTOCOL_MODE
	default "DRV_I2S_AUDIO_I2S"
    ---help---
    IDH_HTML_DRV_I2S_AUDIO_PROTOCOL_MODE
    ---endhelp---
	
config DRV_I2S_TX_INT_SRC_IDX${INSTANCE}
    string
    default "INT_SOURCE_SPI_1_TRANSMIT" if DRV_I2S_PERIPHERAL_ID_IDX${INSTANCE} = "SPI_ID_1"
    default "INT_SOURCE_SPI_2_TRANSMIT" if DRV_I2S_PERIPHERAL_ID_IDX${INSTANCE} = "SPI_ID_2"
    default "INT_SOURCE_SPI_3_TRANSMIT" if DRV_I2S_PERIPHERAL_ID_IDX${INSTANCE} = "SPI_ID_3"
    default "INT_SOURCE_SPI_4_TRANSMIT" if DRV_I2S_PERIPHERAL_ID_IDX${INSTANCE} = "SPI_ID_4"
    default "INT_SOURCE_SPI_5_TRANSMIT" if DRV_I2S_PERIPHERAL_ID_IDX${INSTANCE} = "SPI_ID_5"
    default "INT_SOURCE_SPI_6_TRANSMIT" if DRV_I2S_PERIPHERAL_ID_IDX${INSTANCE} = "SPI_ID_6"

config DRV_I2S_RX_INT_SRC_IDX${INSTANCE}
    string
    default "INT_SOURCE_SPI_1_RECEIVE" if DRV_I2S_PERIPHERAL_ID_IDX${INSTANCE} = "SPI_ID_1"
    default "INT_SOURCE_SPI_2_RECEIVE" if DRV_I2S_PERIPHERAL_ID_IDX${INSTANCE} = "SPI_ID_2"
    default "INT_SOURCE_SPI_3_RECEIVE" if DRV_I2S_PERIPHERAL_ID_IDX${INSTANCE} = "SPI_ID_3"
    default "INT_SOURCE_SPI_4_RECEIVE" if DRV_I2S_PERIPHERAL_ID_IDX${INSTANCE} = "SPI_ID_4"
    default "INT_SOURCE_SPI_5_RECEIVE" if DRV_I2S_PERIPHERAL_ID_IDX${INSTANCE} = "SPI_ID_5"
    default "INT_SOURCE_SPI_6_RECEIVE" if DRV_I2S_PERIPHERAL_ID_IDX${INSTANCE} = "SPI_ID_6"

config DRV_I2S_ERR_INT_SRC_IDX${INSTANCE}
    string
    default "INT_SOURCE_SPI_1_ERROR" if DRV_I2S_PERIPHERAL_ID_IDX${INSTANCE} = "SPI_ID_1"
    default "INT_SOURCE_SPI_2_ERROR" if DRV_I2S_PERIPHERAL_ID_IDX${INSTANCE} = "SPI_ID_2"
    default "INT_SOURCE_SPI_3_ERROR" if DRV_I2S_PERIPHERAL_ID_IDX${INSTANCE} = "SPI_ID_3"
    default "INT_SOURCE_SPI_4_ERROR" if DRV_I2S_PERIPHERAL_ID_IDX${INSTANCE} = "SPI_ID_4"
    default "INT_SOURCE_SPI_5_ERROR" if DRV_I2S_PERIPHERAL_ID_IDX${INSTANCE} = "SPI_ID_5"
    default "INT_SOURCE_SPI_6_ERROR" if DRV_I2S_PERIPHERAL_ID_IDX${INSTANCE} = "SPI_ID_6"

#PIC32MX
config DRV_I2S_INT_VECTOR_IDX${INSTANCE}
    string
    default "INT_VECTOR_SPI1" if DRV_I2S_PERIPHERAL_ID_IDX${INSTANCE} = "SPI_ID_1"
    default "INT_VECTOR_SPI2" if DRV_I2S_PERIPHERAL_ID_IDX${INSTANCE} = "SPI_ID_2"
    default "INT_VECTOR_SPI3" if DRV_I2S_PERIPHERAL_ID_IDX${INSTANCE} = "SPI_ID_3"
    default "INT_VECTOR_SPI4" if DRV_I2S_PERIPHERAL_ID_IDX${INSTANCE} = "SPI_ID_4"
    default "INT_VECTOR_SPI5" if DRV_I2S_PERIPHERAL_ID_IDX${INSTANCE} = "SPI_ID_5"
    default "INT_VECTOR_SPI6" if DRV_I2S_PERIPHERAL_ID_IDX${INSTANCE} = "SPI_ID_6"
    
config DRV_I2S_ISR_VECTOR_IDX${INSTANCE}
    depends on PIC32MX
    string
    default "_SPI1_VECTOR" if DRV_I2S_PERIPHERAL_ID_IDX${INSTANCE} = "SPI_ID_1"
    default "_SPI2_VECTOR" if DRV_I2S_PERIPHERAL_ID_IDX${INSTANCE} = "SPI_ID_2"
    default "_SPI3_VECTOR" if DRV_I2S_PERIPHERAL_ID_IDX${INSTANCE} = "SPI_ID_3"
    default "_SPI4_VECTOR" if DRV_I2S_PERIPHERAL_ID_IDX${INSTANCE} = "SPI_ID_4"
    default "_SPI5_VECTOR" if DRV_I2S_PERIPHERAL_ID_IDX${INSTANCE} = "SPI_ID_5"
    default "_SPI6_VECTOR" if DRV_I2S_PERIPHERAL_ID_IDX${INSTANCE} = "SPI_ID_6"
    
    
config DRV_I2S_INT_PRIORITY_IDX${INSTANCE}
    depends on PIC32MX
    string "I2S Interrupt Priority"
    depends on DRV_I2S_INTERRUPT_MODE
    range INT_PRIORITY_LEVEL
    default "INT_PRIORITY_LEVEL1"
    ---help---
    IDH_HTML_INT_PRIORITY_LEVEL
    ---endhelp---

config DRV_I2S_INT_SUB_PRIORITY_IDX${INSTANCE}
    depends on PIC32MX
    string "I2S Interrupt Sub-priority"
    depends on DRV_I2S_INTERRUPT_MODE
    range INT_SUBPRIORITY_LEVEL
    default "INT_SUBPRIORITY_LEVEL0"
    ---help---
    IDH_HTML_INT_SUBPRIORITY_LEVEL
    ---endhelp---

config DRV_I2S_INT_PRIO_NUM_IDX${INSTANCE}
    depends on PIC32MX
    string
    depends on DRV_I2S_INTERRUPT_MODE
    default "0" if DRV_I2S_INT_PRIORITY_IDX${INSTANCE} = "INT_DISABLE_INTERRUPT"
    default "1" if DRV_I2S_INT_PRIORITY_IDX${INSTANCE} = "INT_PRIORITY_LEVEL1"
    default "2" if DRV_I2S_INT_PRIORITY_IDX${INSTANCE} = "INT_PRIORITY_LEVEL2"
    default "3" if DRV_I2S_INT_PRIORITY_IDX${INSTANCE} = "INT_PRIORITY_LEVEL3"
    default "4" if DRV_I2S_INT_PRIORITY_IDX${INSTANCE} = "INT_PRIORITY_LEVEL4"
    default "5" if DRV_I2S_INT_PRIORITY_IDX${INSTANCE} = "INT_PRIORITY_LEVEL5"
    default "6" if DRV_I2S_INT_PRIORITY_IDX${INSTANCE} = "INT_PRIORITY_LEVEL6"
    default "7" if DRV_I2S_INT_PRIORITY_IDX${INSTANCE} = "INT_PRIORITY_LEVEL7"


#PIC32MZ || PIC32MK
	
config DRV_I2S_TX_INT_VECTOR_IDX${INSTANCE}
    string
    default "INT_VECTOR_SPI1_TX" if DRV_I2S_PERIPHERAL_ID_IDX${INSTANCE} = "SPI_ID_1"
    default "INT_VECTOR_SPI2_TX" if DRV_I2S_PERIPHERAL_ID_IDX${INSTANCE} = "SPI_ID_2"
    default "INT_VECTOR_SPI3_TX" if DRV_I2S_PERIPHERAL_ID_IDX${INSTANCE} = "SPI_ID_3"
    default "INT_VECTOR_SPI4_TX" if DRV_I2S_PERIPHERAL_ID_IDX${INSTANCE} = "SPI_ID_4"
    default "INT_VECTOR_SPI5_TX" if DRV_I2S_PERIPHERAL_ID_IDX${INSTANCE} = "SPI_ID_5"
    default "INT_VECTOR_SPI6_TX" if DRV_I2S_PERIPHERAL_ID_IDX${INSTANCE} = "SPI_ID_6"
	
config DRV_I2S_TX_INT_PRIORITY_IDX${INSTANCE}
    depends on PIC32MZ || PIC32MK 
    string "Transmit Interrupt Priority"
    depends on DRV_I2S_INTERRUPT_MODE
    range INT_PRIORITY_LEVEL
    default "INT_PRIORITY_LEVEL1"
    ---help---
    IDH_HTML_INT_PRIORITY_LEVEL
    ---endhelp---

config DRV_I2S_TX_INT_SUB_PRIORITY_IDX${INSTANCE}
    depends on PIC32MZ || PIC32MK
    string "Transmit Interrupt Sub-priority"
    depends on DRV_I2S_INTERRUPT_MODE
    range INT_SUBPRIORITY_LEVEL
    default "INT_SUBPRIORITY_LEVEL0"
    ---help---
    IDH_HTML_INT_SUBPRIORITY_LEVEL
    ---endhelp---

config DRV_I2S_TX_INT_PRIO_NUM_IDX${INSTANCE}
    depends on PIC32MZ || PIC32MK
    string
    depends on DRV_I2S_INTERRUPT_MODE
    default "0" if DRV_I2S_TX_INT_PRIORITY_IDX${INSTANCE} = "INT_DISABLE_INTERRUPT"
    default "1" if DRV_I2S_TX_INT_PRIORITY_IDX${INSTANCE} = "INT_PRIORITY_LEVEL1"
    default "2" if DRV_I2S_TX_INT_PRIORITY_IDX${INSTANCE} = "INT_PRIORITY_LEVEL2"
    default "3" if DRV_I2S_TX_INT_PRIORITY_IDX${INSTANCE} = "INT_PRIORITY_LEVEL3"
    default "4" if DRV_I2S_TX_INT_PRIORITY_IDX${INSTANCE} = "INT_PRIORITY_LEVEL4"
    default "5" if DRV_I2S_TX_INT_PRIORITY_IDX${INSTANCE} = "INT_PRIORITY_LEVEL5"
    default "6" if DRV_I2S_TX_INT_PRIORITY_IDX${INSTANCE} = "INT_PRIORITY_LEVEL6"
    default "7" if DRV_I2S_TX_INT_PRIORITY_IDX${INSTANCE} = "INT_PRIORITY_LEVEL7"

config DRV_I2S_TX_ISR_VECTOR_IDX${INSTANCE}
    depends on PIC32MZ || PIC32MK
    string
    depends on DRV_I2S_INTERRUPT_MODE
    default "_SPI1_TX_VECTOR" if DRV_I2S_TX_INT_VECTOR_IDX${INSTANCE} = "INT_VECTOR_SPI1_TX"
    default "_SPI2_TX_VECTOR" if DRV_I2S_TX_INT_VECTOR_IDX${INSTANCE} = "INT_VECTOR_SPI2_TX"
    default "_SPI3_TX_VECTOR" if DRV_I2S_TX_INT_VECTOR_IDX${INSTANCE} = "INT_VECTOR_SPI3_TX"
    default "_SPI4_TX_VECTOR" if DRV_I2S_TX_INT_VECTOR_IDX${INSTANCE} = "INT_VECTOR_SPI4_TX"
    default "_SPI5_TX_VECTOR" if DRV_I2S_TX_INT_VECTOR_IDX${INSTANCE} = "INT_VECTOR_SPI5_TX"
    default "_SPI6_TX_VECTOR" if DRV_I2S_TX_INT_VECTOR_IDX${INSTANCE} = "INT_VECTOR_SPI6_TX"
	
	
config DRV_I2S_RX_INT_VECTOR_IDX${INSTANCE}
    string
    default "INT_VECTOR_SPI1_RX" if DRV_I2S_PERIPHERAL_ID_IDX${INSTANCE} = "SPI_ID_1"
    default "INT_VECTOR_SPI2_RX" if DRV_I2S_PERIPHERAL_ID_IDX${INSTANCE} = "SPI_ID_2"
    default "INT_VECTOR_SPI3_RX" if DRV_I2S_PERIPHERAL_ID_IDX${INSTANCE} = "SPI_ID_3"
    default "INT_VECTOR_SPI4_RX" if DRV_I2S_PERIPHERAL_ID_IDX${INSTANCE} = "SPI_ID_4"
    default "INT_VECTOR_SPI5_RX" if DRV_I2S_PERIPHERAL_ID_IDX${INSTANCE} = "SPI_ID_5"
    default "INT_VECTOR_SPI6_RX" if DRV_I2S_PERIPHERAL_ID_IDX${INSTANCE} = "SPI_ID_6"
	
config DRV_I2S_RX_INT_PRIORITY_IDX${INSTANCE}
    depends on PIC32MZ || PIC32MK
    string "Receive Interrupt Priority"
    depends on DRV_I2S_INTERRUPT_MODE
    range INT_PRIORITY_LEVEL
    default "INT_PRIORITY_LEVEL1"
    ---help---
    IDH_HTML_INT_PRIORITY_LEVEL
    ---endhelp---

config DRV_I2S_RX_INT_SUB_PRIORITY_IDX${INSTANCE}
    depends on PIC32MZ || PIC32MK
    string "Receive Interrupt Sub-priority"
    depends on DRV_I2S_INTERRUPT_MODE
    range INT_SUBPRIORITY_LEVEL
    default "INT_SUBPRIORITY_LEVEL0"
    ---help---
    IDH_HTML_INT_SUBPRIORITY_LEVEL
    ---endhelp---

config DRV_I2S_RX_INT_PRIO_NUM_IDX${INSTANCE}
    depends on PIC32MZ || PIC32MK
    string
    depends on DRV_I2S_INTERRUPT_MODE
    default "0" if DRV_I2S_RX_INT_PRIORITY_IDX${INSTANCE} = "INT_DISABLE_INTERRUPT"
    default "1" if DRV_I2S_RX_INT_PRIORITY_IDX${INSTANCE} = "INT_PRIORITY_LEVEL1"
    default "2" if DRV_I2S_RX_INT_PRIORITY_IDX${INSTANCE} = "INT_PRIORITY_LEVEL2"
    default "3" if DRV_I2S_RX_INT_PRIORITY_IDX${INSTANCE} = "INT_PRIORITY_LEVEL3"
    default "4" if DRV_I2S_RX_INT_PRIORITY_IDX${INSTANCE} = "INT_PRIORITY_LEVEL4"
    default "5" if DRV_I2S_RX_INT_PRIORITY_IDX${INSTANCE} = "INT_PRIORITY_LEVEL5"
    default "6" if DRV_I2S_RX_INT_PRIORITY_IDX${INSTANCE} = "INT_PRIORITY_LEVEL6"
    default "7" if DRV_I2S_RX_INT_PRIORITY_IDX${INSTANCE} = "INT_PRIORITY_LEVEL7"

config DRV_I2S_RX_ISR_VECTOR_IDX${INSTANCE}
    depends on PIC32MZ || PIC32MK
    string
    depends on DRV_I2S_INTERRUPT_MODE
    default "_SPI1_RX_VECTOR" if DRV_I2S_RX_INT_VECTOR_IDX${INSTANCE} = "INT_VECTOR_SPI1_RX"
    default "_SPI2_RX_VECTOR" if DRV_I2S_RX_INT_VECTOR_IDX${INSTANCE} = "INT_VECTOR_SPI2_RX"
    default "_SPI3_RX_VECTOR" if DRV_I2S_RX_INT_VECTOR_IDX${INSTANCE} = "INT_VECTOR_SPI3_RX"
    default "_SPI4_RX_VECTOR" if DRV_I2S_RX_INT_VECTOR_IDX${INSTANCE} = "INT_VECTOR_SPI4_RX"
    default "_SPI5_RX_VECTOR" if DRV_I2S_RX_INT_VECTOR_IDX${INSTANCE} = "INT_VECTOR_SPI5_RX"
    default "_SPI6_RX_VECTOR" if DRV_I2S_RX_INT_VECTOR_IDX${INSTANCE} = "INT_VECTOR_SPI6_RX"
	

	
config DRV_I2S_ERR_INT_VECTOR_IDX${INSTANCE}
    string
    default "INT_VECTOR_SPI1_FAULT" if DRV_I2S_PERIPHERAL_ID_IDX${INSTANCE} = "SPI_ID_1"
    default "INT_VECTOR_SPI2_FAULT" if DRV_I2S_PERIPHERAL_ID_IDX${INSTANCE} = "SPI_ID_2"
    default "INT_VECTOR_SPI3_FAULT" if DRV_I2S_PERIPHERAL_ID_IDX${INSTANCE} = "SPI_ID_3"
    default "INT_VECTOR_SPI4_FAULT" if DRV_I2S_PERIPHERAL_ID_IDX${INSTANCE} = "SPI_ID_4"
    default "INT_VECTOR_SPI5_FAULT" if DRV_I2S_PERIPHERAL_ID_IDX${INSTANCE} = "SPI_ID_5"
    default "INT_VECTOR_SPI6_FAULT" if DRV_I2S_PERIPHERAL_ID_IDX${INSTANCE} = "SPI_ID_6"
	
config DRV_I2S_ERR_INT_PRIORITY_IDX${INSTANCE}
    depends on PIC32MZ || PIC32MK
    string "Error Interrupt Priority"
    depends on DRV_I2S_INTERRUPT_MODE
    range INT_PRIORITY_LEVEL
    default "INT_PRIORITY_LEVEL1"
    ---help---
    IDH_HTML_INT_PRIORITY_LEVEL
    ---endhelp---

config DRV_I2S_ERR_INT_SUB_PRIORITY_IDX${INSTANCE}
    depends on PIC32MZ || PIC32MK
    string "Error Interrupt Sub-priority"
    depends on DRV_I2S_INTERRUPT_MODE
    range INT_SUBPRIORITY_LEVEL
    default "INT_SUBPRIORITY_LEVEL0"
    ---help---
    IDH_HTML_INT_SUBPRIORITY_LEVEL
    ---endhelp---

config DRV_I2S_ERR_INT_PRIO_NUM_IDX${INSTANCE}
    depends on PIC32MZ || PIC32MK
    string
    depends on DRV_I2S_INTERRUPT_MODE
    default "0" if DRV_I2S_ERR_INT_PRIORITY_IDX${INSTANCE} = "INT_DISABLE_INTERRUPT"
    default "1" if DRV_I2S_ERR_INT_PRIORITY_IDX${INSTANCE} = "INT_PRIORITY_LEVEL1"
    default "2" if DRV_I2S_ERR_INT_PRIORITY_IDX${INSTANCE} = "INT_PRIORITY_LEVEL2"
    default "3" if DRV_I2S_ERR_INT_PRIORITY_IDX${INSTANCE} = "INT_PRIORITY_LEVEL3"
    default "4" if DRV_I2S_ERR_INT_PRIORITY_IDX${INSTANCE} = "INT_PRIORITY_LEVEL4"
    default "5" if DRV_I2S_ERR_INT_PRIORITY_IDX${INSTANCE} = "INT_PRIORITY_LEVEL5"
    default "6" if DRV_I2S_ERR_INT_PRIORITY_IDX${INSTANCE} = "INT_PRIORITY_LEVEL6"
    default "7" if DRV_I2S_ERR_INT_PRIORITY_IDX${INSTANCE} = "INT_PRIORITY_LEVEL7"

config DRV_I2S_ERR_ISR_VECTOR_IDX${INSTANCE}
    depends on PIC32MZ || PIC32MK
    string
    depends on DRV_I2S_INTERRUPT_MODE
    default "_SPI1_FAULT_VECTOR" if DRV_I2S_ERR_INT_VECTOR_IDX${INSTANCE} = "INT_VECTOR_SPI1_FAULT"
    default "_SPI2_FAULT_VECTOR" if DRV_I2S_ERR_INT_VECTOR_IDX${INSTANCE} = "INT_VECTOR_SPI2_FAULT"
    default "_SPI3_FAULT_VECTOR" if DRV_I2S_ERR_INT_VECTOR_IDX${INSTANCE} = "INT_VECTOR_SPI3_FAULT"
    default "_SPI4_FAULT_VECTOR" if DRV_I2S_ERR_INT_VECTOR_IDX${INSTANCE} = "INT_VECTOR_SPI4_FAULT"
    default "_SPI5_FAULT_VECTOR" if DRV_I2S_ERR_INT_VECTOR_IDX${INSTANCE} = "INT_VECTOR_SPI5_FAULT"
    default "_SPI6_FAULT_VECTOR" if DRV_I2S_ERR_INT_VECTOR_IDX${INSTANCE} = "INT_VECTOR_SPI6_FAULT"
	
config QUEUE_SIZE_TX_IDX${INSTANCE}
	int "Queue Size Transmit"
	depends on USE_DRV_I2S
	default 3
	range 1 65535	
    ---help---
    IDH_HTML_DRV_I2S_INIT
    ---endhelp---
	
config QUEUE_SIZE_RX_IDX${INSTANCE}
	int "Queue Size Receive"
	depends on USE_DRV_I2S
	default 2
	range 1 65535	
    ---help---
    IDH_HTML_DRV_I2S_INIT
    ---endhelp---
	
config 	DRV_I2S_TX_DMA_CHANNEL_IDX${INSTANCE}
	int "Transmit DMA Channel Instance"
	depends on DRV_I2S_SUPPORT_TRANSMIT_DMA
	range 0	0 if DMA_NUMBER_OF_CHANNELS = "1"
	range 0 1 if DMA_NUMBER_OF_CHANNELS = "2"
	range 0 2 if DMA_NUMBER_OF_CHANNELS = "3"
	range 0 3 if DMA_NUMBER_OF_CHANNELS = "4"
	range 0 4 if DMA_NUMBER_OF_CHANNELS = "5"
	range 0 5 if DMA_NUMBER_OF_CHANNELS = "6"
	range 0 6 if DMA_NUMBER_OF_CHANNELS = "7"
	range 0 7 if DMA_NUMBER_OF_CHANNELS = "8"
	default 0
    	---help---
    	IDH_HTML_DRV_I2S_TRANSMIT_DMA_CHANNEL
    	---endhelp---

ifblock DRV_I2S_DMA_USE_CHANNEL_CHAINING
config 	DRV_I2S_TX_DMA_CHAINING_CHANNEL_IDX${INSTANCE}
	int "Transmit DMA Chaining Channel Instance"
	depends on DRV_I2S_SUPPORT_TRANSMIT_DMA
	range 0	0 if DMA_NUMBER_OF_CHANNELS = "1"
	range 0 1 if DMA_NUMBER_OF_CHANNELS = "2"
	range 0 2 if DMA_NUMBER_OF_CHANNELS = "3"
	range 0 3 if DMA_NUMBER_OF_CHANNELS = "4"
	range 0 4 if DMA_NUMBER_OF_CHANNELS = "5"
	range 0 5 if DMA_NUMBER_OF_CHANNELS = "6"
	range 0 6 if DMA_NUMBER_OF_CHANNELS = "7"
	range 0 7 if DMA_NUMBER_OF_CHANNELS = "8"
	default 1
    	---help---
    	IDH_HTML_DRV_I2S_TRANSMIT_DMA_CHAINING_CHANNEL
    	---endhelp---
endif

config DRV_I2S_RX_DMA_CHANNEL_IDX${INSTANCE}
	int "Receive DMA Channel Instance"
	depends on DRV_I2S_SUPPORT_RECEIVE_DMA
	range 0	0 if DMA_NUMBER_OF_CHANNELS = "1"
	range 0 1 if DMA_NUMBER_OF_CHANNELS = "2"
	range 0 2 if DMA_NUMBER_OF_CHANNELS = "3"
	range 0 3 if DMA_NUMBER_OF_CHANNELS = "4"
	range 0 4 if DMA_NUMBER_OF_CHANNELS = "5"
	range 0 5 if DMA_NUMBER_OF_CHANNELS = "6"
	range 0 6 if DMA_NUMBER_OF_CHANNELS = "7"
	range 0 7 if DMA_NUMBER_OF_CHANNELS = "8"
	default 0
    	---help---
    	IDH_HTML_DRV_I2S_RECEIVE_DMA_CHANNEL
    	---endhelp---

ifblock DRV_I2S_DMA_USE_CHANNEL_CHAINING
config DRV_I2S_RX_DMA_CHAINING_CHANNEL_IDX${INSTANCE}
	int "Receive DMA Chaining Channel Instance"
	depends on DRV_I2S_SUPPORT_RECEIVE_DMA
	range 0	0 if DMA_NUMBER_OF_CHANNELS = "1"
	range 0 1 if DMA_NUMBER_OF_CHANNELS = "2"
	range 0 2 if DMA_NUMBER_OF_CHANNELS = "3"
	range 0 3 if DMA_NUMBER_OF_CHANNELS = "4"
	range 0 4 if DMA_NUMBER_OF_CHANNELS = "5"
	range 0 5 if DMA_NUMBER_OF_CHANNELS = "6"
	range 0 6 if DMA_NUMBER_OF_CHANNELS = "7"
	range 0 7 if DMA_NUMBER_OF_CHANNELS = "8"
	default 1
    	---help---
    	IDH_HTML_DRV_I2S_RECEIVE_DMA_CHAINING_CHANNEL
    	---endhelp---
endif

config DRV_I2S_POWER_STATE_IDX${INSTANCE}
    string "Power State" 
    range SYS_MODULE_POWER_STATE
    default "SYS_MODULE_POWER_RUN_FULL"
    ---help---
    IDH_HTML_SYS_MODULE_INIT
    ---endhelp---

endif
	
    