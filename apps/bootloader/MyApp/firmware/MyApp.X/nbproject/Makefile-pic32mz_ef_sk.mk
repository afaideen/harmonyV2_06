#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-pic32mz_ef_sk.mk)" "nbproject/Makefile-local-pic32mz_ef_sk.mk"
include nbproject/Makefile-local-pic32mz_ef_sk.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=pic32mz_ef_sk
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/MyApp.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/MyApp.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/system_config/pic32mz_ef_sk/bsp/bsp.c ../src/system_config/pic32mz_ef_sk/framework/system/clk/src/sys_clk_pic32mz.c ../src/system_config/pic32mz_ef_sk/framework/system/devcon/src/sys_devcon.c ../src/system_config/pic32mz_ef_sk/framework/system/devcon/src/sys_devcon_pic32mz.c ../src/system_config/pic32mz_ef_sk/framework/system/devcon/src/sys_devcon_cache_pic32mz.S ../src/system_config/pic32mz_ef_sk/framework/system/ports/src/sys_ports_static.c ../src/system_config/pic32mz_ef_sk/framework/system/reset/src/sys_reset.c ../src/system_config/pic32mz_ef_sk/system_init.c ../src/system_config/pic32mz_ef_sk/system_interrupt.c ../src/system_config/pic32mz_ef_sk/system_exceptions.c ../src/system_config/pic32mz_ef_sk/system_tasks.c ../src/app.c ../src/main.c ../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c ../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs.c ../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs_device.c ../../../../../framework/system/console/src/sys_console.c ../../../../../framework/system/console/src/sys_console_usb_cdc.c ../../../../../framework/system/debug/src/sys_debug.c ../../../../../framework/system/int/src/sys_int_pic32.c ../../../../../framework/system/tmr/src/sys_tmr.c ../../../../../framework/usb/src/dynamic/usb_device.c ../../../../../framework/usb/src/dynamic/usb_device_cdc.c ../../../../../framework/usb/src/dynamic/usb_device_cdc_acm.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/354129722/bsp.o ${OBJECTDIR}/_ext/571564127/sys_clk_pic32mz.o ${OBJECTDIR}/_ext/1868830280/sys_devcon.o ${OBJECTDIR}/_ext/1868830280/sys_devcon_pic32mz.o ${OBJECTDIR}/_ext/1868830280/sys_devcon_cache_pic32mz.o ${OBJECTDIR}/_ext/1009894383/sys_ports_static.o ${OBJECTDIR}/_ext/119080242/sys_reset.o ${OBJECTDIR}/_ext/849053718/system_init.o ${OBJECTDIR}/_ext/849053718/system_interrupt.o ${OBJECTDIR}/_ext/849053718/system_exceptions.o ${OBJECTDIR}/_ext/849053718/system_tasks.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/941160041/drv_tmr.o ${OBJECTDIR}/_ext/179651966/drv_usbhs.o ${OBJECTDIR}/_ext/179651966/drv_usbhs_device.o ${OBJECTDIR}/_ext/1434663852/sys_console.o ${OBJECTDIR}/_ext/1434663852/sys_console_usb_cdc.o ${OBJECTDIR}/_ext/2137108136/sys_debug.o ${OBJECTDIR}/_ext/1042686532/sys_int_pic32.o ${OBJECTDIR}/_ext/2110151058/sys_tmr.o ${OBJECTDIR}/_ext/2136608937/usb_device.o ${OBJECTDIR}/_ext/2136608937/usb_device_cdc.o ${OBJECTDIR}/_ext/2136608937/usb_device_cdc_acm.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/354129722/bsp.o.d ${OBJECTDIR}/_ext/571564127/sys_clk_pic32mz.o.d ${OBJECTDIR}/_ext/1868830280/sys_devcon.o.d ${OBJECTDIR}/_ext/1868830280/sys_devcon_pic32mz.o.d ${OBJECTDIR}/_ext/1868830280/sys_devcon_cache_pic32mz.o.d ${OBJECTDIR}/_ext/1009894383/sys_ports_static.o.d ${OBJECTDIR}/_ext/119080242/sys_reset.o.d ${OBJECTDIR}/_ext/849053718/system_init.o.d ${OBJECTDIR}/_ext/849053718/system_interrupt.o.d ${OBJECTDIR}/_ext/849053718/system_exceptions.o.d ${OBJECTDIR}/_ext/849053718/system_tasks.o.d ${OBJECTDIR}/_ext/1360937237/app.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/941160041/drv_tmr.o.d ${OBJECTDIR}/_ext/179651966/drv_usbhs.o.d ${OBJECTDIR}/_ext/179651966/drv_usbhs_device.o.d ${OBJECTDIR}/_ext/1434663852/sys_console.o.d ${OBJECTDIR}/_ext/1434663852/sys_console_usb_cdc.o.d ${OBJECTDIR}/_ext/2137108136/sys_debug.o.d ${OBJECTDIR}/_ext/1042686532/sys_int_pic32.o.d ${OBJECTDIR}/_ext/2110151058/sys_tmr.o.d ${OBJECTDIR}/_ext/2136608937/usb_device.o.d ${OBJECTDIR}/_ext/2136608937/usb_device_cdc.o.d ${OBJECTDIR}/_ext/2136608937/usb_device_cdc_acm.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/354129722/bsp.o ${OBJECTDIR}/_ext/571564127/sys_clk_pic32mz.o ${OBJECTDIR}/_ext/1868830280/sys_devcon.o ${OBJECTDIR}/_ext/1868830280/sys_devcon_pic32mz.o ${OBJECTDIR}/_ext/1868830280/sys_devcon_cache_pic32mz.o ${OBJECTDIR}/_ext/1009894383/sys_ports_static.o ${OBJECTDIR}/_ext/119080242/sys_reset.o ${OBJECTDIR}/_ext/849053718/system_init.o ${OBJECTDIR}/_ext/849053718/system_interrupt.o ${OBJECTDIR}/_ext/849053718/system_exceptions.o ${OBJECTDIR}/_ext/849053718/system_tasks.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/941160041/drv_tmr.o ${OBJECTDIR}/_ext/179651966/drv_usbhs.o ${OBJECTDIR}/_ext/179651966/drv_usbhs_device.o ${OBJECTDIR}/_ext/1434663852/sys_console.o ${OBJECTDIR}/_ext/1434663852/sys_console_usb_cdc.o ${OBJECTDIR}/_ext/2137108136/sys_debug.o ${OBJECTDIR}/_ext/1042686532/sys_int_pic32.o ${OBJECTDIR}/_ext/2110151058/sys_tmr.o ${OBJECTDIR}/_ext/2136608937/usb_device.o ${OBJECTDIR}/_ext/2136608937/usb_device_cdc.o ${OBJECTDIR}/_ext/2136608937/usb_device_cdc_acm.o

# Source Files
SOURCEFILES=../src/system_config/pic32mz_ef_sk/bsp/bsp.c ../src/system_config/pic32mz_ef_sk/framework/system/clk/src/sys_clk_pic32mz.c ../src/system_config/pic32mz_ef_sk/framework/system/devcon/src/sys_devcon.c ../src/system_config/pic32mz_ef_sk/framework/system/devcon/src/sys_devcon_pic32mz.c ../src/system_config/pic32mz_ef_sk/framework/system/devcon/src/sys_devcon_cache_pic32mz.S ../src/system_config/pic32mz_ef_sk/framework/system/ports/src/sys_ports_static.c ../src/system_config/pic32mz_ef_sk/framework/system/reset/src/sys_reset.c ../src/system_config/pic32mz_ef_sk/system_init.c ../src/system_config/pic32mz_ef_sk/system_interrupt.c ../src/system_config/pic32mz_ef_sk/system_exceptions.c ../src/system_config/pic32mz_ef_sk/system_tasks.c ../src/app.c ../src/main.c ../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c ../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs.c ../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs_device.c ../../../../../framework/system/console/src/sys_console.c ../../../../../framework/system/console/src/sys_console_usb_cdc.c ../../../../../framework/system/debug/src/sys_debug.c ../../../../../framework/system/int/src/sys_int_pic32.c ../../../../../framework/system/tmr/src/sys_tmr.c ../../../../../framework/usb/src/dynamic/usb_device.c ../../../../../framework/usb/src/dynamic/usb_device_cdc.c ../../../../../framework/usb/src/dynamic/usb_device_cdc_acm.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-pic32mz_ef_sk.mk dist/${CND_CONF}/${IMAGE_TYPE}/MyApp.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MZ2048EFM144
MP_LINKER_FILE_OPTION=,--script="..\src\system_config\pic32mz_ef_sk\app_mz.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1868830280/sys_devcon_cache_pic32mz.o: ../src/system_config/pic32mz_ef_sk/framework/system/devcon/src/sys_devcon_cache_pic32mz.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1868830280" 
	@${RM} ${OBJECTDIR}/_ext/1868830280/sys_devcon_cache_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/1868830280/sys_devcon_cache_pic32mz.o 
	@${RM} ${OBJECTDIR}/_ext/1868830280/sys_devcon_cache_pic32mz.o.ok ${OBJECTDIR}/_ext/1868830280/sys_devcon_cache_pic32mz.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1868830280/sys_devcon_cache_pic32mz.o.d"  -o ${OBJECTDIR}/_ext/1868830280/sys_devcon_cache_pic32mz.o ../src/system_config/pic32mz_ef_sk/framework/system/devcon/src/sys_devcon_cache_pic32mz.S  -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1868830280/sys_devcon_cache_pic32mz.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1868830280/sys_devcon_cache_pic32mz.o.d" "${OBJECTDIR}/_ext/1868830280/sys_devcon_cache_pic32mz.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/1868830280/sys_devcon_cache_pic32mz.o: ../src/system_config/pic32mz_ef_sk/framework/system/devcon/src/sys_devcon_cache_pic32mz.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1868830280" 
	@${RM} ${OBJECTDIR}/_ext/1868830280/sys_devcon_cache_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/1868830280/sys_devcon_cache_pic32mz.o 
	@${RM} ${OBJECTDIR}/_ext/1868830280/sys_devcon_cache_pic32mz.o.ok ${OBJECTDIR}/_ext/1868830280/sys_devcon_cache_pic32mz.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1868830280/sys_devcon_cache_pic32mz.o.d"  -o ${OBJECTDIR}/_ext/1868830280/sys_devcon_cache_pic32mz.o ../src/system_config/pic32mz_ef_sk/framework/system/devcon/src/sys_devcon_cache_pic32mz.S  -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1868830280/sys_devcon_cache_pic32mz.o.asm.d",--gdwarf-2 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1868830280/sys_devcon_cache_pic32mz.o.d" "${OBJECTDIR}/_ext/1868830280/sys_devcon_cache_pic32mz.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/354129722/bsp.o: ../src/system_config/pic32mz_ef_sk/bsp/bsp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/354129722" 
	@${RM} ${OBJECTDIR}/_ext/354129722/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/354129722/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk" -I"../src/pic32mz_ef_sk" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk/framework" -I"../src/system_config/pic32mz_ef_sk/bsp" -MMD -MF "${OBJECTDIR}/_ext/354129722/bsp.o.d" -o ${OBJECTDIR}/_ext/354129722/bsp.o ../src/system_config/pic32mz_ef_sk/bsp/bsp.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/354129722/bsp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/571564127/sys_clk_pic32mz.o: ../src/system_config/pic32mz_ef_sk/framework/system/clk/src/sys_clk_pic32mz.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/571564127" 
	@${RM} ${OBJECTDIR}/_ext/571564127/sys_clk_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/571564127/sys_clk_pic32mz.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk" -I"../src/pic32mz_ef_sk" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk/framework" -I"../src/system_config/pic32mz_ef_sk/bsp" -MMD -MF "${OBJECTDIR}/_ext/571564127/sys_clk_pic32mz.o.d" -o ${OBJECTDIR}/_ext/571564127/sys_clk_pic32mz.o ../src/system_config/pic32mz_ef_sk/framework/system/clk/src/sys_clk_pic32mz.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/571564127/sys_clk_pic32mz.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1868830280/sys_devcon.o: ../src/system_config/pic32mz_ef_sk/framework/system/devcon/src/sys_devcon.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1868830280" 
	@${RM} ${OBJECTDIR}/_ext/1868830280/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/1868830280/sys_devcon.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk" -I"../src/pic32mz_ef_sk" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk/framework" -I"../src/system_config/pic32mz_ef_sk/bsp" -MMD -MF "${OBJECTDIR}/_ext/1868830280/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/1868830280/sys_devcon.o ../src/system_config/pic32mz_ef_sk/framework/system/devcon/src/sys_devcon.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1868830280/sys_devcon.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1868830280/sys_devcon_pic32mz.o: ../src/system_config/pic32mz_ef_sk/framework/system/devcon/src/sys_devcon_pic32mz.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1868830280" 
	@${RM} ${OBJECTDIR}/_ext/1868830280/sys_devcon_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/1868830280/sys_devcon_pic32mz.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk" -I"../src/pic32mz_ef_sk" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk/framework" -I"../src/system_config/pic32mz_ef_sk/bsp" -MMD -MF "${OBJECTDIR}/_ext/1868830280/sys_devcon_pic32mz.o.d" -o ${OBJECTDIR}/_ext/1868830280/sys_devcon_pic32mz.o ../src/system_config/pic32mz_ef_sk/framework/system/devcon/src/sys_devcon_pic32mz.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1868830280/sys_devcon_pic32mz.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1009894383/sys_ports_static.o: ../src/system_config/pic32mz_ef_sk/framework/system/ports/src/sys_ports_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1009894383" 
	@${RM} ${OBJECTDIR}/_ext/1009894383/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/1009894383/sys_ports_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk" -I"../src/pic32mz_ef_sk" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk/framework" -I"../src/system_config/pic32mz_ef_sk/bsp" -MMD -MF "${OBJECTDIR}/_ext/1009894383/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/1009894383/sys_ports_static.o ../src/system_config/pic32mz_ef_sk/framework/system/ports/src/sys_ports_static.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1009894383/sys_ports_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/119080242/sys_reset.o: ../src/system_config/pic32mz_ef_sk/framework/system/reset/src/sys_reset.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/119080242" 
	@${RM} ${OBJECTDIR}/_ext/119080242/sys_reset.o.d 
	@${RM} ${OBJECTDIR}/_ext/119080242/sys_reset.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk" -I"../src/pic32mz_ef_sk" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk/framework" -I"../src/system_config/pic32mz_ef_sk/bsp" -MMD -MF "${OBJECTDIR}/_ext/119080242/sys_reset.o.d" -o ${OBJECTDIR}/_ext/119080242/sys_reset.o ../src/system_config/pic32mz_ef_sk/framework/system/reset/src/sys_reset.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/119080242/sys_reset.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/849053718/system_init.o: ../src/system_config/pic32mz_ef_sk/system_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/849053718" 
	@${RM} ${OBJECTDIR}/_ext/849053718/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/849053718/system_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk" -I"../src/pic32mz_ef_sk" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk/framework" -I"../src/system_config/pic32mz_ef_sk/bsp" -MMD -MF "${OBJECTDIR}/_ext/849053718/system_init.o.d" -o ${OBJECTDIR}/_ext/849053718/system_init.o ../src/system_config/pic32mz_ef_sk/system_init.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/849053718/system_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/849053718/system_interrupt.o: ../src/system_config/pic32mz_ef_sk/system_interrupt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/849053718" 
	@${RM} ${OBJECTDIR}/_ext/849053718/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/849053718/system_interrupt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk" -I"../src/pic32mz_ef_sk" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk/framework" -I"../src/system_config/pic32mz_ef_sk/bsp" -MMD -MF "${OBJECTDIR}/_ext/849053718/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/849053718/system_interrupt.o ../src/system_config/pic32mz_ef_sk/system_interrupt.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/849053718/system_interrupt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/849053718/system_exceptions.o: ../src/system_config/pic32mz_ef_sk/system_exceptions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/849053718" 
	@${RM} ${OBJECTDIR}/_ext/849053718/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/849053718/system_exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk" -I"../src/pic32mz_ef_sk" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk/framework" -I"../src/system_config/pic32mz_ef_sk/bsp" -MMD -MF "${OBJECTDIR}/_ext/849053718/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/849053718/system_exceptions.o ../src/system_config/pic32mz_ef_sk/system_exceptions.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/849053718/system_exceptions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/849053718/system_tasks.o: ../src/system_config/pic32mz_ef_sk/system_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/849053718" 
	@${RM} ${OBJECTDIR}/_ext/849053718/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/849053718/system_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk" -I"../src/pic32mz_ef_sk" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk/framework" -I"../src/system_config/pic32mz_ef_sk/bsp" -MMD -MF "${OBJECTDIR}/_ext/849053718/system_tasks.o.d" -o ${OBJECTDIR}/_ext/849053718/system_tasks.o ../src/system_config/pic32mz_ef_sk/system_tasks.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/849053718/system_tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk" -I"../src/pic32mz_ef_sk" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk/framework" -I"../src/system_config/pic32mz_ef_sk/bsp" -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/app.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk" -I"../src/pic32mz_ef_sk" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk/framework" -I"../src/system_config/pic32mz_ef_sk/bsp" -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/941160041/drv_tmr.o: ../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/941160041" 
	@${RM} ${OBJECTDIR}/_ext/941160041/drv_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/941160041/drv_tmr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk" -I"../src/pic32mz_ef_sk" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk/framework" -I"../src/system_config/pic32mz_ef_sk/bsp" -MMD -MF "${OBJECTDIR}/_ext/941160041/drv_tmr.o.d" -o ${OBJECTDIR}/_ext/941160041/drv_tmr.o ../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/941160041/drv_tmr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/179651966/drv_usbhs.o: ../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/179651966" 
	@${RM} ${OBJECTDIR}/_ext/179651966/drv_usbhs.o.d 
	@${RM} ${OBJECTDIR}/_ext/179651966/drv_usbhs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk" -I"../src/pic32mz_ef_sk" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk/framework" -I"../src/system_config/pic32mz_ef_sk/bsp" -MMD -MF "${OBJECTDIR}/_ext/179651966/drv_usbhs.o.d" -o ${OBJECTDIR}/_ext/179651966/drv_usbhs.o ../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/179651966/drv_usbhs.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/179651966/drv_usbhs_device.o: ../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/179651966" 
	@${RM} ${OBJECTDIR}/_ext/179651966/drv_usbhs_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/179651966/drv_usbhs_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk" -I"../src/pic32mz_ef_sk" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk/framework" -I"../src/system_config/pic32mz_ef_sk/bsp" -MMD -MF "${OBJECTDIR}/_ext/179651966/drv_usbhs_device.o.d" -o ${OBJECTDIR}/_ext/179651966/drv_usbhs_device.o ../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs_device.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/179651966/drv_usbhs_device.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1434663852/sys_console.o: ../../../../../framework/system/console/src/sys_console.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1434663852" 
	@${RM} ${OBJECTDIR}/_ext/1434663852/sys_console.o.d 
	@${RM} ${OBJECTDIR}/_ext/1434663852/sys_console.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk" -I"../src/pic32mz_ef_sk" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk/framework" -I"../src/system_config/pic32mz_ef_sk/bsp" -MMD -MF "${OBJECTDIR}/_ext/1434663852/sys_console.o.d" -o ${OBJECTDIR}/_ext/1434663852/sys_console.o ../../../../../framework/system/console/src/sys_console.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1434663852/sys_console.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1434663852/sys_console_usb_cdc.o: ../../../../../framework/system/console/src/sys_console_usb_cdc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1434663852" 
	@${RM} ${OBJECTDIR}/_ext/1434663852/sys_console_usb_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1434663852/sys_console_usb_cdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk" -I"../src/pic32mz_ef_sk" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk/framework" -I"../src/system_config/pic32mz_ef_sk/bsp" -MMD -MF "${OBJECTDIR}/_ext/1434663852/sys_console_usb_cdc.o.d" -o ${OBJECTDIR}/_ext/1434663852/sys_console_usb_cdc.o ../../../../../framework/system/console/src/sys_console_usb_cdc.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1434663852/sys_console_usb_cdc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2137108136/sys_debug.o: ../../../../../framework/system/debug/src/sys_debug.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2137108136" 
	@${RM} ${OBJECTDIR}/_ext/2137108136/sys_debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/2137108136/sys_debug.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk" -I"../src/pic32mz_ef_sk" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk/framework" -I"../src/system_config/pic32mz_ef_sk/bsp" -MMD -MF "${OBJECTDIR}/_ext/2137108136/sys_debug.o.d" -o ${OBJECTDIR}/_ext/2137108136/sys_debug.o ../../../../../framework/system/debug/src/sys_debug.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/2137108136/sys_debug.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1042686532/sys_int_pic32.o: ../../../../../framework/system/int/src/sys_int_pic32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1042686532" 
	@${RM} ${OBJECTDIR}/_ext/1042686532/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1042686532/sys_int_pic32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk" -I"../src/pic32mz_ef_sk" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk/framework" -I"../src/system_config/pic32mz_ef_sk/bsp" -MMD -MF "${OBJECTDIR}/_ext/1042686532/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/1042686532/sys_int_pic32.o ../../../../../framework/system/int/src/sys_int_pic32.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1042686532/sys_int_pic32.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2110151058/sys_tmr.o: ../../../../../framework/system/tmr/src/sys_tmr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2110151058" 
	@${RM} ${OBJECTDIR}/_ext/2110151058/sys_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/2110151058/sys_tmr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk" -I"../src/pic32mz_ef_sk" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk/framework" -I"../src/system_config/pic32mz_ef_sk/bsp" -MMD -MF "${OBJECTDIR}/_ext/2110151058/sys_tmr.o.d" -o ${OBJECTDIR}/_ext/2110151058/sys_tmr.o ../../../../../framework/system/tmr/src/sys_tmr.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/2110151058/sys_tmr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2136608937/usb_device.o: ../../../../../framework/usb/src/dynamic/usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2136608937" 
	@${RM} ${OBJECTDIR}/_ext/2136608937/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/2136608937/usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk" -I"../src/pic32mz_ef_sk" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk/framework" -I"../src/system_config/pic32mz_ef_sk/bsp" -MMD -MF "${OBJECTDIR}/_ext/2136608937/usb_device.o.d" -o ${OBJECTDIR}/_ext/2136608937/usb_device.o ../../../../../framework/usb/src/dynamic/usb_device.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/2136608937/usb_device.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2136608937/usb_device_cdc.o: ../../../../../framework/usb/src/dynamic/usb_device_cdc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2136608937" 
	@${RM} ${OBJECTDIR}/_ext/2136608937/usb_device_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/2136608937/usb_device_cdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk" -I"../src/pic32mz_ef_sk" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk/framework" -I"../src/system_config/pic32mz_ef_sk/bsp" -MMD -MF "${OBJECTDIR}/_ext/2136608937/usb_device_cdc.o.d" -o ${OBJECTDIR}/_ext/2136608937/usb_device_cdc.o ../../../../../framework/usb/src/dynamic/usb_device_cdc.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/2136608937/usb_device_cdc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2136608937/usb_device_cdc_acm.o: ../../../../../framework/usb/src/dynamic/usb_device_cdc_acm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2136608937" 
	@${RM} ${OBJECTDIR}/_ext/2136608937/usb_device_cdc_acm.o.d 
	@${RM} ${OBJECTDIR}/_ext/2136608937/usb_device_cdc_acm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk" -I"../src/pic32mz_ef_sk" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk/framework" -I"../src/system_config/pic32mz_ef_sk/bsp" -MMD -MF "${OBJECTDIR}/_ext/2136608937/usb_device_cdc_acm.o.d" -o ${OBJECTDIR}/_ext/2136608937/usb_device_cdc_acm.o ../../../../../framework/usb/src/dynamic/usb_device_cdc_acm.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/2136608937/usb_device_cdc_acm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/354129722/bsp.o: ../src/system_config/pic32mz_ef_sk/bsp/bsp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/354129722" 
	@${RM} ${OBJECTDIR}/_ext/354129722/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/354129722/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk" -I"../src/pic32mz_ef_sk" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk/framework" -I"../src/system_config/pic32mz_ef_sk/bsp" -MMD -MF "${OBJECTDIR}/_ext/354129722/bsp.o.d" -o ${OBJECTDIR}/_ext/354129722/bsp.o ../src/system_config/pic32mz_ef_sk/bsp/bsp.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/354129722/bsp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/571564127/sys_clk_pic32mz.o: ../src/system_config/pic32mz_ef_sk/framework/system/clk/src/sys_clk_pic32mz.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/571564127" 
	@${RM} ${OBJECTDIR}/_ext/571564127/sys_clk_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/571564127/sys_clk_pic32mz.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk" -I"../src/pic32mz_ef_sk" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk/framework" -I"../src/system_config/pic32mz_ef_sk/bsp" -MMD -MF "${OBJECTDIR}/_ext/571564127/sys_clk_pic32mz.o.d" -o ${OBJECTDIR}/_ext/571564127/sys_clk_pic32mz.o ../src/system_config/pic32mz_ef_sk/framework/system/clk/src/sys_clk_pic32mz.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/571564127/sys_clk_pic32mz.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1868830280/sys_devcon.o: ../src/system_config/pic32mz_ef_sk/framework/system/devcon/src/sys_devcon.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1868830280" 
	@${RM} ${OBJECTDIR}/_ext/1868830280/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/1868830280/sys_devcon.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk" -I"../src/pic32mz_ef_sk" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk/framework" -I"../src/system_config/pic32mz_ef_sk/bsp" -MMD -MF "${OBJECTDIR}/_ext/1868830280/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/1868830280/sys_devcon.o ../src/system_config/pic32mz_ef_sk/framework/system/devcon/src/sys_devcon.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1868830280/sys_devcon.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1868830280/sys_devcon_pic32mz.o: ../src/system_config/pic32mz_ef_sk/framework/system/devcon/src/sys_devcon_pic32mz.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1868830280" 
	@${RM} ${OBJECTDIR}/_ext/1868830280/sys_devcon_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/1868830280/sys_devcon_pic32mz.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk" -I"../src/pic32mz_ef_sk" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk/framework" -I"../src/system_config/pic32mz_ef_sk/bsp" -MMD -MF "${OBJECTDIR}/_ext/1868830280/sys_devcon_pic32mz.o.d" -o ${OBJECTDIR}/_ext/1868830280/sys_devcon_pic32mz.o ../src/system_config/pic32mz_ef_sk/framework/system/devcon/src/sys_devcon_pic32mz.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1868830280/sys_devcon_pic32mz.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1009894383/sys_ports_static.o: ../src/system_config/pic32mz_ef_sk/framework/system/ports/src/sys_ports_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1009894383" 
	@${RM} ${OBJECTDIR}/_ext/1009894383/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/1009894383/sys_ports_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk" -I"../src/pic32mz_ef_sk" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk/framework" -I"../src/system_config/pic32mz_ef_sk/bsp" -MMD -MF "${OBJECTDIR}/_ext/1009894383/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/1009894383/sys_ports_static.o ../src/system_config/pic32mz_ef_sk/framework/system/ports/src/sys_ports_static.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1009894383/sys_ports_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/119080242/sys_reset.o: ../src/system_config/pic32mz_ef_sk/framework/system/reset/src/sys_reset.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/119080242" 
	@${RM} ${OBJECTDIR}/_ext/119080242/sys_reset.o.d 
	@${RM} ${OBJECTDIR}/_ext/119080242/sys_reset.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk" -I"../src/pic32mz_ef_sk" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk/framework" -I"../src/system_config/pic32mz_ef_sk/bsp" -MMD -MF "${OBJECTDIR}/_ext/119080242/sys_reset.o.d" -o ${OBJECTDIR}/_ext/119080242/sys_reset.o ../src/system_config/pic32mz_ef_sk/framework/system/reset/src/sys_reset.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/119080242/sys_reset.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/849053718/system_init.o: ../src/system_config/pic32mz_ef_sk/system_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/849053718" 
	@${RM} ${OBJECTDIR}/_ext/849053718/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/849053718/system_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk" -I"../src/pic32mz_ef_sk" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk/framework" -I"../src/system_config/pic32mz_ef_sk/bsp" -MMD -MF "${OBJECTDIR}/_ext/849053718/system_init.o.d" -o ${OBJECTDIR}/_ext/849053718/system_init.o ../src/system_config/pic32mz_ef_sk/system_init.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/849053718/system_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/849053718/system_interrupt.o: ../src/system_config/pic32mz_ef_sk/system_interrupt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/849053718" 
	@${RM} ${OBJECTDIR}/_ext/849053718/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/849053718/system_interrupt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk" -I"../src/pic32mz_ef_sk" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk/framework" -I"../src/system_config/pic32mz_ef_sk/bsp" -MMD -MF "${OBJECTDIR}/_ext/849053718/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/849053718/system_interrupt.o ../src/system_config/pic32mz_ef_sk/system_interrupt.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/849053718/system_interrupt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/849053718/system_exceptions.o: ../src/system_config/pic32mz_ef_sk/system_exceptions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/849053718" 
	@${RM} ${OBJECTDIR}/_ext/849053718/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/849053718/system_exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk" -I"../src/pic32mz_ef_sk" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk/framework" -I"../src/system_config/pic32mz_ef_sk/bsp" -MMD -MF "${OBJECTDIR}/_ext/849053718/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/849053718/system_exceptions.o ../src/system_config/pic32mz_ef_sk/system_exceptions.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/849053718/system_exceptions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/849053718/system_tasks.o: ../src/system_config/pic32mz_ef_sk/system_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/849053718" 
	@${RM} ${OBJECTDIR}/_ext/849053718/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/849053718/system_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk" -I"../src/pic32mz_ef_sk" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk/framework" -I"../src/system_config/pic32mz_ef_sk/bsp" -MMD -MF "${OBJECTDIR}/_ext/849053718/system_tasks.o.d" -o ${OBJECTDIR}/_ext/849053718/system_tasks.o ../src/system_config/pic32mz_ef_sk/system_tasks.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/849053718/system_tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk" -I"../src/pic32mz_ef_sk" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk/framework" -I"../src/system_config/pic32mz_ef_sk/bsp" -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/app.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk" -I"../src/pic32mz_ef_sk" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk/framework" -I"../src/system_config/pic32mz_ef_sk/bsp" -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/941160041/drv_tmr.o: ../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/941160041" 
	@${RM} ${OBJECTDIR}/_ext/941160041/drv_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/941160041/drv_tmr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk" -I"../src/pic32mz_ef_sk" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk/framework" -I"../src/system_config/pic32mz_ef_sk/bsp" -MMD -MF "${OBJECTDIR}/_ext/941160041/drv_tmr.o.d" -o ${OBJECTDIR}/_ext/941160041/drv_tmr.o ../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/941160041/drv_tmr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/179651966/drv_usbhs.o: ../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/179651966" 
	@${RM} ${OBJECTDIR}/_ext/179651966/drv_usbhs.o.d 
	@${RM} ${OBJECTDIR}/_ext/179651966/drv_usbhs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk" -I"../src/pic32mz_ef_sk" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk/framework" -I"../src/system_config/pic32mz_ef_sk/bsp" -MMD -MF "${OBJECTDIR}/_ext/179651966/drv_usbhs.o.d" -o ${OBJECTDIR}/_ext/179651966/drv_usbhs.o ../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/179651966/drv_usbhs.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/179651966/drv_usbhs_device.o: ../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/179651966" 
	@${RM} ${OBJECTDIR}/_ext/179651966/drv_usbhs_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/179651966/drv_usbhs_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk" -I"../src/pic32mz_ef_sk" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk/framework" -I"../src/system_config/pic32mz_ef_sk/bsp" -MMD -MF "${OBJECTDIR}/_ext/179651966/drv_usbhs_device.o.d" -o ${OBJECTDIR}/_ext/179651966/drv_usbhs_device.o ../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs_device.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/179651966/drv_usbhs_device.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1434663852/sys_console.o: ../../../../../framework/system/console/src/sys_console.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1434663852" 
	@${RM} ${OBJECTDIR}/_ext/1434663852/sys_console.o.d 
	@${RM} ${OBJECTDIR}/_ext/1434663852/sys_console.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk" -I"../src/pic32mz_ef_sk" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk/framework" -I"../src/system_config/pic32mz_ef_sk/bsp" -MMD -MF "${OBJECTDIR}/_ext/1434663852/sys_console.o.d" -o ${OBJECTDIR}/_ext/1434663852/sys_console.o ../../../../../framework/system/console/src/sys_console.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1434663852/sys_console.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1434663852/sys_console_usb_cdc.o: ../../../../../framework/system/console/src/sys_console_usb_cdc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1434663852" 
	@${RM} ${OBJECTDIR}/_ext/1434663852/sys_console_usb_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1434663852/sys_console_usb_cdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk" -I"../src/pic32mz_ef_sk" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk/framework" -I"../src/system_config/pic32mz_ef_sk/bsp" -MMD -MF "${OBJECTDIR}/_ext/1434663852/sys_console_usb_cdc.o.d" -o ${OBJECTDIR}/_ext/1434663852/sys_console_usb_cdc.o ../../../../../framework/system/console/src/sys_console_usb_cdc.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1434663852/sys_console_usb_cdc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2137108136/sys_debug.o: ../../../../../framework/system/debug/src/sys_debug.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2137108136" 
	@${RM} ${OBJECTDIR}/_ext/2137108136/sys_debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/2137108136/sys_debug.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk" -I"../src/pic32mz_ef_sk" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk/framework" -I"../src/system_config/pic32mz_ef_sk/bsp" -MMD -MF "${OBJECTDIR}/_ext/2137108136/sys_debug.o.d" -o ${OBJECTDIR}/_ext/2137108136/sys_debug.o ../../../../../framework/system/debug/src/sys_debug.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/2137108136/sys_debug.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1042686532/sys_int_pic32.o: ../../../../../framework/system/int/src/sys_int_pic32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1042686532" 
	@${RM} ${OBJECTDIR}/_ext/1042686532/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1042686532/sys_int_pic32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk" -I"../src/pic32mz_ef_sk" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk/framework" -I"../src/system_config/pic32mz_ef_sk/bsp" -MMD -MF "${OBJECTDIR}/_ext/1042686532/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/1042686532/sys_int_pic32.o ../../../../../framework/system/int/src/sys_int_pic32.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1042686532/sys_int_pic32.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2110151058/sys_tmr.o: ../../../../../framework/system/tmr/src/sys_tmr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2110151058" 
	@${RM} ${OBJECTDIR}/_ext/2110151058/sys_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/2110151058/sys_tmr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk" -I"../src/pic32mz_ef_sk" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk/framework" -I"../src/system_config/pic32mz_ef_sk/bsp" -MMD -MF "${OBJECTDIR}/_ext/2110151058/sys_tmr.o.d" -o ${OBJECTDIR}/_ext/2110151058/sys_tmr.o ../../../../../framework/system/tmr/src/sys_tmr.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/2110151058/sys_tmr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2136608937/usb_device.o: ../../../../../framework/usb/src/dynamic/usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2136608937" 
	@${RM} ${OBJECTDIR}/_ext/2136608937/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/2136608937/usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk" -I"../src/pic32mz_ef_sk" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk/framework" -I"../src/system_config/pic32mz_ef_sk/bsp" -MMD -MF "${OBJECTDIR}/_ext/2136608937/usb_device.o.d" -o ${OBJECTDIR}/_ext/2136608937/usb_device.o ../../../../../framework/usb/src/dynamic/usb_device.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/2136608937/usb_device.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2136608937/usb_device_cdc.o: ../../../../../framework/usb/src/dynamic/usb_device_cdc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2136608937" 
	@${RM} ${OBJECTDIR}/_ext/2136608937/usb_device_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/2136608937/usb_device_cdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk" -I"../src/pic32mz_ef_sk" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk/framework" -I"../src/system_config/pic32mz_ef_sk/bsp" -MMD -MF "${OBJECTDIR}/_ext/2136608937/usb_device_cdc.o.d" -o ${OBJECTDIR}/_ext/2136608937/usb_device_cdc.o ../../../../../framework/usb/src/dynamic/usb_device_cdc.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/2136608937/usb_device_cdc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2136608937/usb_device_cdc_acm.o: ../../../../../framework/usb/src/dynamic/usb_device_cdc_acm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2136608937" 
	@${RM} ${OBJECTDIR}/_ext/2136608937/usb_device_cdc_acm.o.d 
	@${RM} ${OBJECTDIR}/_ext/2136608937/usb_device_cdc_acm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk" -I"../src/pic32mz_ef_sk" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk/framework" -I"../src/system_config/pic32mz_ef_sk/bsp" -MMD -MF "${OBJECTDIR}/_ext/2136608937/usb_device_cdc_acm.o.d" -o ${OBJECTDIR}/_ext/2136608937/usb_device_cdc_acm.o ../../../../../framework/usb/src/dynamic/usb_device_cdc_acm.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/2136608937/usb_device_cdc_acm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/MyApp.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../../bin/framework/peripheral/PIC32MZ2048EFM144_peripherals.a  ../src/system_config/pic32mz_ef_sk/app_mz.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/MyApp.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\..\..\..\..\bin\framework\peripheral\PIC32MZ2048EFM144_peripherals.a      -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x37F   -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_PK3=1,--defsym=_min_heap_size=16000,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/MyApp.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../../bin/framework/peripheral/PIC32MZ2048EFM144_peripherals.a ../src/system_config/pic32mz_ef_sk/app_mz.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/MyApp.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\..\..\..\..\bin\framework\peripheral\PIC32MZ2048EFM144_peripherals.a      -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=16000,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/MyApp.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/pic32mz_ef_sk
	${RM} -r dist/pic32mz_ef_sk

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
