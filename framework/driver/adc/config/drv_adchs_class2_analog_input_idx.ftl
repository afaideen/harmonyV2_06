config DRV_ADCHS_CLASS_2_ANALOG_INPUT_CONVERT_INSTANCES_NUMBER_GT_${INSTANCE+1}
    depends on USE_DRV_ADC
    bool
<#if INSTANCE != 0>
	default n if DRV_ADCHS_CLASS_2_ANALOG_INPUT_CONVERT_INSTANCES_NUMBER_GT_${INSTANCE} = n
</#if>
	default n if DRV_ADCHS_CLASS_2_ANALOG_INPUT_CONVERT_INSTANCES_NUMBER = ${INSTANCE+1}
	default y

config DRV_ADCHS_CLASS_2_ANALOG_INPUT_INST_IDX${INSTANCE}
    depends on USE_DRV_ADC
<#if INSTANCE != 0>
	             && DRV_ADCHS_CLASS_2_ANALOG_INPUT_CONVERT_INSTANCES_NUMBER_GT_${INSTANCE}
</#if>
    bool "Class 2 Analog Input Instance ${INSTANCE}"
    default n
    ---help---
    IDH_HTML_DRV_ADCHS_CLASS_2_ANALOG_INPUT_CONVERT_INSTANCES_NUMBER
    ---endhelp---

ifblock DRV_ADCHS_CLASS_2_ANALOG_INPUT_INST_IDX${INSTANCE}

config DRV_ADCHS_CLASS_2_ANALOG_INPUT_IDX${INSTANCE}
    string "Class-2 Analog input"
    depends on USE_DRV_ADC
	depends on DRV_ADC_TYPE_ADCHS
	range ADCHS_CLASS2_AN_INPUT_ID
    default "ADCHS_CLASS2_AN5"
	---help---
	IDH_HTML_ADCHS_AN_INPUT_ID
	---endhelp---

config DRV_ADCHS_CLASS_2_ANALOG_INPUT_LEVEL_TRIGGER_IDX${INSTANCE}
    bool "Check for Level trigger; Un-check for edge trigger, for selected analog input?"
    depends on USE_DRV_ADC
	depends on DRV_ADC_TYPE_ADCHS
	default n
	---help---
	IDH_HTML_ADCHS_ANALOG_INPUT_TRIGGER_MODE
	---endhelp---

config DRV_ADCHS_CLASS_2_TRIGGER_SOURCE_IDX${INSTANCE}
    string "Trigger source"
    depends on USE_DRV_ADC
	depends on DRV_ADC_TYPE_ADCHS
	range ADCHS_TRIGGER_SOURCE
    default "ADCHS_TRIGGER_SOURCE_GLOBAL_SOFTWARE_EDGE"
	---help---
	IDH_HTML_ADCHS_TRIGGER_SOURCE
	---endhelp---

config DRV_ADCHS_CLASS_2_INPUT_MODE_IDX${INSTANCE}
    string "Analog Input Mode"
    depends on USE_DRV_ADC
	depends on DRV_ADC_TYPE_ADCHS
	range ADCHS_INPUT_MODE
    default "ADCHS_INPUT_MODE_SINGLE_ENDED_UNIPOLAR"
	---help---
	IDH_HTML_ADCHS_INPUT_MODE
	---endhelp---
config DRV_ADCHS_CLASS_2_DATA_RDY_INTERRUPT_ENABLE_IDX${INSTANCE}
	bool "Data Ready Interrupt Enable"
	depends on USE_DRV_ADC && DRV_ADCHS_INDIVIDUAL_INTERRUPT_ENABLE
	default n
	---help---
	IDH_HTML_ADCHS_CHANNEL_DATA_RDY_INTERRUPT_ENABLE
	---endhelp---
	
config DRV_ADCHS_CLASS_2_DATA_RDY_INTERRUPT_PRIORITY_IDX${INSTANCE}
    string "Interrupt Priority"
    depends on USE_DRV_ADC && DRV_ADCHS_CLASS_2_DATA_RDY_INTERRUPT_ENABLE_IDX${INSTANCE}
    range INT_PRIORITY_LEVEL
    default "INT_PRIORITY_LEVEL3"
    ---help---
      IDH_HTML_INT_PRIORITY_LEVEL
    ---endhelp---
    
config DRV_ADCHS_CLASS_2_DATA_RDY_INTERRUPT_SUB_PRIORITY_IDX${INSTANCE}
    string "Interrupt Sub-priority"
    depends on USE_DRV_ADC && DRV_ADCHS_CLASS_2_DATA_RDY_INTERRUPT_ENABLE_IDX${INSTANCE}
    range INT_SUBPRIORITY_LEVEL
    default "INT_SUBPRIORITY_LEVEL0"
    ---help---
      IDH_HTML_INT_SUBPRIORITY_LEVEL
    ---endhelp---

config DRV_ADCHS_CLASS_2_DATA_RDY_INT_IPL_IDX${INSTANCE}
    string
    depends on USE_DRV_ADC && DRV_ADCHS_CLASS_2_DATA_RDY_INTERRUPT_ENABLE_IDX${INSTANCE}
    default "0" if DRV_ADCHS_CLASS_2_DATA_RDY_INTERRUPT_PRIORITY_IDX${INSTANCE} = "INT_DISABLE_INTERRUPT"
    default "1" if DRV_ADCHS_CLASS_2_DATA_RDY_INTERRUPT_PRIORITY_IDX${INSTANCE} = "INT_PRIORITY_LEVEL1"
    default "2" if DRV_ADCHS_CLASS_2_DATA_RDY_INTERRUPT_PRIORITY_IDX${INSTANCE} = "INT_PRIORITY_LEVEL2"
    default "3" if DRV_ADCHS_CLASS_2_DATA_RDY_INTERRUPT_PRIORITY_IDX${INSTANCE} = "INT_PRIORITY_LEVEL3"
    default "4" if DRV_ADCHS_CLASS_2_DATA_RDY_INTERRUPT_PRIORITY_IDX${INSTANCE} = "INT_PRIORITY_LEVEL4"
    default "5" if DRV_ADCHS_CLASS_2_DATA_RDY_INTERRUPT_PRIORITY_IDX${INSTANCE} = "INT_PRIORITY_LEVEL5"
    default "6" if DRV_ADCHS_CLASS_2_DATA_RDY_INTERRUPT_PRIORITY_IDX${INSTANCE} = "INT_PRIORITY_LEVEL6"
    default "7" if DRV_ADCHS_CLASS_2_DATA_RDY_INTERRUPT_PRIORITY_IDX${INSTANCE} = "INT_PRIORITY_LEVEL7"
	
	
endif