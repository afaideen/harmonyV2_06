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
ifeq "$(wildcard nbproject/Makefile-local-pic32mz_ef_sk_Inst_1.mk)" "nbproject/Makefile-local-pic32mz_ef_sk_Inst_1.mk"
include nbproject/Makefile-local-pic32mz_ef_sk_Inst_1.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=pic32mz_ef_sk_Inst_1
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/LiveUpdate_App.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/LiveUpdate_App.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=../src/system_config/pic32mz_ef_sk_Inst_1/bsp/bsp.c ../src/system_config/pic32mz_ef_sk_Inst_1/framework/driver/usart/src/drv_usart_mapping.c ../src/system_config/pic32mz_ef_sk_Inst_1/framework/driver/usart/src/drv_usart_static.c ../src/system_config/pic32mz_ef_sk_Inst_1/framework/driver/usart/src/drv_usart_static_byte_model.c ../src/system_config/pic32mz_ef_sk_Inst_1/framework/system/clk/src/sys_clk_pic32mz.c ../src/system_config/pic32mz_ef_sk_Inst_1/framework/system/devcon/src/sys_devcon.c ../src/system_config/pic32mz_ef_sk_Inst_1/framework/system/devcon/src/sys_devcon_pic32mz.c ../src/system_config/pic32mz_ef_sk_Inst_1/framework/system/devcon/src/sys_devcon_cache_pic32mz.S ../src/system_config/pic32mz_ef_sk_Inst_1/framework/system/ports/src/sys_ports_static.c ../src/system_config/pic32mz_ef_sk_Inst_1/framework/system/reset/src/sys_reset.c ../src/system_config/pic32mz_ef_sk_Inst_1/system_init.c ../src/system_config/pic32mz_ef_sk_Inst_1/system_interrupt.c ../src/system_config/pic32mz_ef_sk_Inst_1/system_exceptions.c ../src/system_config/pic32mz_ef_sk_Inst_1/system_tasks.c ../src/app.c ../src/main.c D:/Microchip/harmony/v2_06/apps/bootloader/LiveUpdate/LiveUpdate_App/firmware/src/app_helper.c ../../../../../../framework/bootloader/src/datastream/datastream.c ../../../../../../framework/bootloader/src/datastream/datastream_usart.c ../../../../../../framework/bootloader/src/bootloader.c ../../../../../../framework/bootloader/src/nvm.c ../../../../../../framework/system/int/src/sys_int_pic32.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1640318959/bsp.o ${OBJECTDIR}/_ext/1136722066/drv_usart_mapping.o ${OBJECTDIR}/_ext/1136722066/drv_usart_static.o ${OBJECTDIR}/_ext/1136722066/drv_usart_static_byte_model.o ${OBJECTDIR}/_ext/1780309302/sys_clk_pic32mz.o ${OBJECTDIR}/_ext/1009006589/sys_devcon.o ${OBJECTDIR}/_ext/1009006589/sys_devcon_pic32mz.o ${OBJECTDIR}/_ext/1009006589/sys_devcon_cache_pic32mz.o ${OBJECTDIR}/_ext/12326810/sys_ports_static.o ${OBJECTDIR}/_ext/878487331/sys_reset.o ${OBJECTDIR}/_ext/1786459361/system_init.o ${OBJECTDIR}/_ext/1786459361/system_interrupt.o ${OBJECTDIR}/_ext/1786459361/system_exceptions.o ${OBJECTDIR}/_ext/1786459361/system_tasks.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1467197364/app_helper.o ${OBJECTDIR}/_ext/682638542/datastream.o ${OBJECTDIR}/_ext/682638542/datastream_usart.o ${OBJECTDIR}/_ext/1854679915/bootloader.o ${OBJECTDIR}/_ext/1854679915/nvm.o ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1640318959/bsp.o.d ${OBJECTDIR}/_ext/1136722066/drv_usart_mapping.o.d ${OBJECTDIR}/_ext/1136722066/drv_usart_static.o.d ${OBJECTDIR}/_ext/1136722066/drv_usart_static_byte_model.o.d ${OBJECTDIR}/_ext/1780309302/sys_clk_pic32mz.o.d ${OBJECTDIR}/_ext/1009006589/sys_devcon.o.d ${OBJECTDIR}/_ext/1009006589/sys_devcon_pic32mz.o.d ${OBJECTDIR}/_ext/1009006589/sys_devcon_cache_pic32mz.o.d ${OBJECTDIR}/_ext/12326810/sys_ports_static.o.d ${OBJECTDIR}/_ext/878487331/sys_reset.o.d ${OBJECTDIR}/_ext/1786459361/system_init.o.d ${OBJECTDIR}/_ext/1786459361/system_interrupt.o.d ${OBJECTDIR}/_ext/1786459361/system_exceptions.o.d ${OBJECTDIR}/_ext/1786459361/system_tasks.o.d ${OBJECTDIR}/_ext/1360937237/app.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1467197364/app_helper.o.d ${OBJECTDIR}/_ext/682638542/datastream.o.d ${OBJECTDIR}/_ext/682638542/datastream_usart.o.d ${OBJECTDIR}/_ext/1854679915/bootloader.o.d ${OBJECTDIR}/_ext/1854679915/nvm.o.d ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1640318959/bsp.o ${OBJECTDIR}/_ext/1136722066/drv_usart_mapping.o ${OBJECTDIR}/_ext/1136722066/drv_usart_static.o ${OBJECTDIR}/_ext/1136722066/drv_usart_static_byte_model.o ${OBJECTDIR}/_ext/1780309302/sys_clk_pic32mz.o ${OBJECTDIR}/_ext/1009006589/sys_devcon.o ${OBJECTDIR}/_ext/1009006589/sys_devcon_pic32mz.o ${OBJECTDIR}/_ext/1009006589/sys_devcon_cache_pic32mz.o ${OBJECTDIR}/_ext/12326810/sys_ports_static.o ${OBJECTDIR}/_ext/878487331/sys_reset.o ${OBJECTDIR}/_ext/1786459361/system_init.o ${OBJECTDIR}/_ext/1786459361/system_interrupt.o ${OBJECTDIR}/_ext/1786459361/system_exceptions.o ${OBJECTDIR}/_ext/1786459361/system_tasks.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1467197364/app_helper.o ${OBJECTDIR}/_ext/682638542/datastream.o ${OBJECTDIR}/_ext/682638542/datastream_usart.o ${OBJECTDIR}/_ext/1854679915/bootloader.o ${OBJECTDIR}/_ext/1854679915/nvm.o ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o

# Source Files
SOURCEFILES=../src/system_config/pic32mz_ef_sk_Inst_1/bsp/bsp.c ../src/system_config/pic32mz_ef_sk_Inst_1/framework/driver/usart/src/drv_usart_mapping.c ../src/system_config/pic32mz_ef_sk_Inst_1/framework/driver/usart/src/drv_usart_static.c ../src/system_config/pic32mz_ef_sk_Inst_1/framework/driver/usart/src/drv_usart_static_byte_model.c ../src/system_config/pic32mz_ef_sk_Inst_1/framework/system/clk/src/sys_clk_pic32mz.c ../src/system_config/pic32mz_ef_sk_Inst_1/framework/system/devcon/src/sys_devcon.c ../src/system_config/pic32mz_ef_sk_Inst_1/framework/system/devcon/src/sys_devcon_pic32mz.c ../src/system_config/pic32mz_ef_sk_Inst_1/framework/system/devcon/src/sys_devcon_cache_pic32mz.S ../src/system_config/pic32mz_ef_sk_Inst_1/framework/system/ports/src/sys_ports_static.c ../src/system_config/pic32mz_ef_sk_Inst_1/framework/system/reset/src/sys_reset.c ../src/system_config/pic32mz_ef_sk_Inst_1/system_init.c ../src/system_config/pic32mz_ef_sk_Inst_1/system_interrupt.c ../src/system_config/pic32mz_ef_sk_Inst_1/system_exceptions.c ../src/system_config/pic32mz_ef_sk_Inst_1/system_tasks.c ../src/app.c ../src/main.c D:/Microchip/harmony/v2_06/apps/bootloader/LiveUpdate/LiveUpdate_App/firmware/src/app_helper.c ../../../../../../framework/bootloader/src/datastream/datastream.c ../../../../../../framework/bootloader/src/datastream/datastream_usart.c ../../../../../../framework/bootloader/src/bootloader.c ../../../../../../framework/bootloader/src/nvm.c ../../../../../../framework/system/int/src/sys_int_pic32.c



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
	${MAKE}  -f nbproject/Makefile-pic32mz_ef_sk_Inst_1.mk dist/${CND_CONF}/${IMAGE_TYPE}/LiveUpdate_App.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MZ2048EFM144
MP_LINKER_FILE_OPTION=,--script="..\src\system_config\pic32mz_ef_sk_Inst_1\app_mz.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1009006589/sys_devcon_cache_pic32mz.o: ../src/system_config/pic32mz_ef_sk_Inst_1/framework/system/devcon/src/sys_devcon_cache_pic32mz.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1009006589" 
	@${RM} ${OBJECTDIR}/_ext/1009006589/sys_devcon_cache_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/1009006589/sys_devcon_cache_pic32mz.o 
	@${RM} ${OBJECTDIR}/_ext/1009006589/sys_devcon_cache_pic32mz.o.ok ${OBJECTDIR}/_ext/1009006589/sys_devcon_cache_pic32mz.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1009006589/sys_devcon_cache_pic32mz.o.d"  -o ${OBJECTDIR}/_ext/1009006589/sys_devcon_cache_pic32mz.o ../src/system_config/pic32mz_ef_sk_Inst_1/framework/system/devcon/src/sys_devcon_cache_pic32mz.S  -DXPRJ_pic32mz_ef_sk_Inst_1=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1009006589/sys_devcon_cache_pic32mz.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1009006589/sys_devcon_cache_pic32mz.o.d" "${OBJECTDIR}/_ext/1009006589/sys_devcon_cache_pic32mz.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/1009006589/sys_devcon_cache_pic32mz.o: ../src/system_config/pic32mz_ef_sk_Inst_1/framework/system/devcon/src/sys_devcon_cache_pic32mz.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1009006589" 
	@${RM} ${OBJECTDIR}/_ext/1009006589/sys_devcon_cache_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/1009006589/sys_devcon_cache_pic32mz.o 
	@${RM} ${OBJECTDIR}/_ext/1009006589/sys_devcon_cache_pic32mz.o.ok ${OBJECTDIR}/_ext/1009006589/sys_devcon_cache_pic32mz.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1009006589/sys_devcon_cache_pic32mz.o.d"  -o ${OBJECTDIR}/_ext/1009006589/sys_devcon_cache_pic32mz.o ../src/system_config/pic32mz_ef_sk_Inst_1/framework/system/devcon/src/sys_devcon_cache_pic32mz.S  -DXPRJ_pic32mz_ef_sk_Inst_1=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1009006589/sys_devcon_cache_pic32mz.o.asm.d",--gdwarf-2 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1009006589/sys_devcon_cache_pic32mz.o.d" "${OBJECTDIR}/_ext/1009006589/sys_devcon_cache_pic32mz.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1640318959/bsp.o: ../src/system_config/pic32mz_ef_sk_Inst_1/bsp/bsp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1640318959" 
	@${RM} ${OBJECTDIR}/_ext/1640318959/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1640318959/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_Inst_1" -I"../src/pic32mz_ef_sk_Inst_1" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_Inst_1/framework" -I"../src/system_config/pic32mz_ef_sk_Inst_1/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1640318959/bsp.o.d" -o ${OBJECTDIR}/_ext/1640318959/bsp.o ../src/system_config/pic32mz_ef_sk_Inst_1/bsp/bsp.c    -DXPRJ_pic32mz_ef_sk_Inst_1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1640318959/bsp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1136722066/drv_usart_mapping.o: ../src/system_config/pic32mz_ef_sk_Inst_1/framework/driver/usart/src/drv_usart_mapping.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1136722066" 
	@${RM} ${OBJECTDIR}/_ext/1136722066/drv_usart_mapping.o.d 
	@${RM} ${OBJECTDIR}/_ext/1136722066/drv_usart_mapping.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_Inst_1" -I"../src/pic32mz_ef_sk_Inst_1" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_Inst_1/framework" -I"../src/system_config/pic32mz_ef_sk_Inst_1/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1136722066/drv_usart_mapping.o.d" -o ${OBJECTDIR}/_ext/1136722066/drv_usart_mapping.o ../src/system_config/pic32mz_ef_sk_Inst_1/framework/driver/usart/src/drv_usart_mapping.c    -DXPRJ_pic32mz_ef_sk_Inst_1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1136722066/drv_usart_mapping.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1136722066/drv_usart_static.o: ../src/system_config/pic32mz_ef_sk_Inst_1/framework/driver/usart/src/drv_usart_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1136722066" 
	@${RM} ${OBJECTDIR}/_ext/1136722066/drv_usart_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/1136722066/drv_usart_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_Inst_1" -I"../src/pic32mz_ef_sk_Inst_1" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_Inst_1/framework" -I"../src/system_config/pic32mz_ef_sk_Inst_1/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1136722066/drv_usart_static.o.d" -o ${OBJECTDIR}/_ext/1136722066/drv_usart_static.o ../src/system_config/pic32mz_ef_sk_Inst_1/framework/driver/usart/src/drv_usart_static.c    -DXPRJ_pic32mz_ef_sk_Inst_1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1136722066/drv_usart_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1136722066/drv_usart_static_byte_model.o: ../src/system_config/pic32mz_ef_sk_Inst_1/framework/driver/usart/src/drv_usart_static_byte_model.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1136722066" 
	@${RM} ${OBJECTDIR}/_ext/1136722066/drv_usart_static_byte_model.o.d 
	@${RM} ${OBJECTDIR}/_ext/1136722066/drv_usart_static_byte_model.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_Inst_1" -I"../src/pic32mz_ef_sk_Inst_1" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_Inst_1/framework" -I"../src/system_config/pic32mz_ef_sk_Inst_1/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1136722066/drv_usart_static_byte_model.o.d" -o ${OBJECTDIR}/_ext/1136722066/drv_usart_static_byte_model.o ../src/system_config/pic32mz_ef_sk_Inst_1/framework/driver/usart/src/drv_usart_static_byte_model.c    -DXPRJ_pic32mz_ef_sk_Inst_1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1136722066/drv_usart_static_byte_model.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1780309302/sys_clk_pic32mz.o: ../src/system_config/pic32mz_ef_sk_Inst_1/framework/system/clk/src/sys_clk_pic32mz.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1780309302" 
	@${RM} ${OBJECTDIR}/_ext/1780309302/sys_clk_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/1780309302/sys_clk_pic32mz.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_Inst_1" -I"../src/pic32mz_ef_sk_Inst_1" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_Inst_1/framework" -I"../src/system_config/pic32mz_ef_sk_Inst_1/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1780309302/sys_clk_pic32mz.o.d" -o ${OBJECTDIR}/_ext/1780309302/sys_clk_pic32mz.o ../src/system_config/pic32mz_ef_sk_Inst_1/framework/system/clk/src/sys_clk_pic32mz.c    -DXPRJ_pic32mz_ef_sk_Inst_1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1780309302/sys_clk_pic32mz.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1009006589/sys_devcon.o: ../src/system_config/pic32mz_ef_sk_Inst_1/framework/system/devcon/src/sys_devcon.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1009006589" 
	@${RM} ${OBJECTDIR}/_ext/1009006589/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/1009006589/sys_devcon.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_Inst_1" -I"../src/pic32mz_ef_sk_Inst_1" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_Inst_1/framework" -I"../src/system_config/pic32mz_ef_sk_Inst_1/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1009006589/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/1009006589/sys_devcon.o ../src/system_config/pic32mz_ef_sk_Inst_1/framework/system/devcon/src/sys_devcon.c    -DXPRJ_pic32mz_ef_sk_Inst_1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1009006589/sys_devcon.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1009006589/sys_devcon_pic32mz.o: ../src/system_config/pic32mz_ef_sk_Inst_1/framework/system/devcon/src/sys_devcon_pic32mz.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1009006589" 
	@${RM} ${OBJECTDIR}/_ext/1009006589/sys_devcon_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/1009006589/sys_devcon_pic32mz.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_Inst_1" -I"../src/pic32mz_ef_sk_Inst_1" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_Inst_1/framework" -I"../src/system_config/pic32mz_ef_sk_Inst_1/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1009006589/sys_devcon_pic32mz.o.d" -o ${OBJECTDIR}/_ext/1009006589/sys_devcon_pic32mz.o ../src/system_config/pic32mz_ef_sk_Inst_1/framework/system/devcon/src/sys_devcon_pic32mz.c    -DXPRJ_pic32mz_ef_sk_Inst_1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1009006589/sys_devcon_pic32mz.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/12326810/sys_ports_static.o: ../src/system_config/pic32mz_ef_sk_Inst_1/framework/system/ports/src/sys_ports_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/12326810" 
	@${RM} ${OBJECTDIR}/_ext/12326810/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/12326810/sys_ports_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_Inst_1" -I"../src/pic32mz_ef_sk_Inst_1" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_Inst_1/framework" -I"../src/system_config/pic32mz_ef_sk_Inst_1/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/12326810/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/12326810/sys_ports_static.o ../src/system_config/pic32mz_ef_sk_Inst_1/framework/system/ports/src/sys_ports_static.c    -DXPRJ_pic32mz_ef_sk_Inst_1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/12326810/sys_ports_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/878487331/sys_reset.o: ../src/system_config/pic32mz_ef_sk_Inst_1/framework/system/reset/src/sys_reset.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/878487331" 
	@${RM} ${OBJECTDIR}/_ext/878487331/sys_reset.o.d 
	@${RM} ${OBJECTDIR}/_ext/878487331/sys_reset.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_Inst_1" -I"../src/pic32mz_ef_sk_Inst_1" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_Inst_1/framework" -I"../src/system_config/pic32mz_ef_sk_Inst_1/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/878487331/sys_reset.o.d" -o ${OBJECTDIR}/_ext/878487331/sys_reset.o ../src/system_config/pic32mz_ef_sk_Inst_1/framework/system/reset/src/sys_reset.c    -DXPRJ_pic32mz_ef_sk_Inst_1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/878487331/sys_reset.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1786459361/system_init.o: ../src/system_config/pic32mz_ef_sk_Inst_1/system_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1786459361" 
	@${RM} ${OBJECTDIR}/_ext/1786459361/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1786459361/system_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_Inst_1" -I"../src/pic32mz_ef_sk_Inst_1" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_Inst_1/framework" -I"../src/system_config/pic32mz_ef_sk_Inst_1/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1786459361/system_init.o.d" -o ${OBJECTDIR}/_ext/1786459361/system_init.o ../src/system_config/pic32mz_ef_sk_Inst_1/system_init.c    -DXPRJ_pic32mz_ef_sk_Inst_1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1786459361/system_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1786459361/system_interrupt.o: ../src/system_config/pic32mz_ef_sk_Inst_1/system_interrupt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1786459361" 
	@${RM} ${OBJECTDIR}/_ext/1786459361/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1786459361/system_interrupt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_Inst_1" -I"../src/pic32mz_ef_sk_Inst_1" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_Inst_1/framework" -I"../src/system_config/pic32mz_ef_sk_Inst_1/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1786459361/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/1786459361/system_interrupt.o ../src/system_config/pic32mz_ef_sk_Inst_1/system_interrupt.c    -DXPRJ_pic32mz_ef_sk_Inst_1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1786459361/system_interrupt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1786459361/system_exceptions.o: ../src/system_config/pic32mz_ef_sk_Inst_1/system_exceptions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1786459361" 
	@${RM} ${OBJECTDIR}/_ext/1786459361/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1786459361/system_exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_Inst_1" -I"../src/pic32mz_ef_sk_Inst_1" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_Inst_1/framework" -I"../src/system_config/pic32mz_ef_sk_Inst_1/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1786459361/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/1786459361/system_exceptions.o ../src/system_config/pic32mz_ef_sk_Inst_1/system_exceptions.c    -DXPRJ_pic32mz_ef_sk_Inst_1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1786459361/system_exceptions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1786459361/system_tasks.o: ../src/system_config/pic32mz_ef_sk_Inst_1/system_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1786459361" 
	@${RM} ${OBJECTDIR}/_ext/1786459361/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1786459361/system_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_Inst_1" -I"../src/pic32mz_ef_sk_Inst_1" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_Inst_1/framework" -I"../src/system_config/pic32mz_ef_sk_Inst_1/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1786459361/system_tasks.o.d" -o ${OBJECTDIR}/_ext/1786459361/system_tasks.o ../src/system_config/pic32mz_ef_sk_Inst_1/system_tasks.c    -DXPRJ_pic32mz_ef_sk_Inst_1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1786459361/system_tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_Inst_1" -I"../src/pic32mz_ef_sk_Inst_1" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_Inst_1/framework" -I"../src/system_config/pic32mz_ef_sk_Inst_1/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_pic32mz_ef_sk_Inst_1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/app.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_Inst_1" -I"../src/pic32mz_ef_sk_Inst_1" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_Inst_1/framework" -I"../src/system_config/pic32mz_ef_sk_Inst_1/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32mz_ef_sk_Inst_1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1467197364/app_helper.o: D\:/Microchip/harmony/v2_06/apps/bootloader/LiveUpdate/LiveUpdate_App/firmware/src/app_helper.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1467197364" 
	@${RM} ${OBJECTDIR}/_ext/1467197364/app_helper.o.d 
	@${RM} ${OBJECTDIR}/_ext/1467197364/app_helper.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_Inst_1" -I"../src/pic32mz_ef_sk_Inst_1" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_Inst_1/framework" -I"../src/system_config/pic32mz_ef_sk_Inst_1/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1467197364/app_helper.o.d" -o ${OBJECTDIR}/_ext/1467197364/app_helper.o D:/Microchip/harmony/v2_06/apps/bootloader/LiveUpdate/LiveUpdate_App/firmware/src/app_helper.c    -DXPRJ_pic32mz_ef_sk_Inst_1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1467197364/app_helper.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/682638542/datastream.o: ../../../../../../framework/bootloader/src/datastream/datastream.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/682638542" 
	@${RM} ${OBJECTDIR}/_ext/682638542/datastream.o.d 
	@${RM} ${OBJECTDIR}/_ext/682638542/datastream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_Inst_1" -I"../src/pic32mz_ef_sk_Inst_1" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_Inst_1/framework" -I"../src/system_config/pic32mz_ef_sk_Inst_1/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/682638542/datastream.o.d" -o ${OBJECTDIR}/_ext/682638542/datastream.o ../../../../../../framework/bootloader/src/datastream/datastream.c    -DXPRJ_pic32mz_ef_sk_Inst_1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/682638542/datastream.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/682638542/datastream_usart.o: ../../../../../../framework/bootloader/src/datastream/datastream_usart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/682638542" 
	@${RM} ${OBJECTDIR}/_ext/682638542/datastream_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/682638542/datastream_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_Inst_1" -I"../src/pic32mz_ef_sk_Inst_1" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_Inst_1/framework" -I"../src/system_config/pic32mz_ef_sk_Inst_1/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/682638542/datastream_usart.o.d" -o ${OBJECTDIR}/_ext/682638542/datastream_usart.o ../../../../../../framework/bootloader/src/datastream/datastream_usart.c    -DXPRJ_pic32mz_ef_sk_Inst_1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/682638542/datastream_usart.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1854679915/bootloader.o: ../../../../../../framework/bootloader/src/bootloader.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1854679915" 
	@${RM} ${OBJECTDIR}/_ext/1854679915/bootloader.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854679915/bootloader.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_Inst_1" -I"../src/pic32mz_ef_sk_Inst_1" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_Inst_1/framework" -I"../src/system_config/pic32mz_ef_sk_Inst_1/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1854679915/bootloader.o.d" -o ${OBJECTDIR}/_ext/1854679915/bootloader.o ../../../../../../framework/bootloader/src/bootloader.c    -DXPRJ_pic32mz_ef_sk_Inst_1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1854679915/bootloader.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1854679915/nvm.o: ../../../../../../framework/bootloader/src/nvm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1854679915" 
	@${RM} ${OBJECTDIR}/_ext/1854679915/nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854679915/nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_Inst_1" -I"../src/pic32mz_ef_sk_Inst_1" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_Inst_1/framework" -I"../src/system_config/pic32mz_ef_sk_Inst_1/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1854679915/nvm.o.d" -o ${OBJECTDIR}/_ext/1854679915/nvm.o ../../../../../../framework/bootloader/src/nvm.c    -DXPRJ_pic32mz_ef_sk_Inst_1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1854679915/nvm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/711155467/sys_int_pic32.o: ../../../../../../framework/system/int/src/sys_int_pic32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/711155467" 
	@${RM} ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_Inst_1" -I"../src/pic32mz_ef_sk_Inst_1" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_Inst_1/framework" -I"../src/system_config/pic32mz_ef_sk_Inst_1/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/711155467/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o ../../../../../../framework/system/int/src/sys_int_pic32.c    -DXPRJ_pic32mz_ef_sk_Inst_1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/711155467/sys_int_pic32.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/1640318959/bsp.o: ../src/system_config/pic32mz_ef_sk_Inst_1/bsp/bsp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1640318959" 
	@${RM} ${OBJECTDIR}/_ext/1640318959/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1640318959/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_Inst_1" -I"../src/pic32mz_ef_sk_Inst_1" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_Inst_1/framework" -I"../src/system_config/pic32mz_ef_sk_Inst_1/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1640318959/bsp.o.d" -o ${OBJECTDIR}/_ext/1640318959/bsp.o ../src/system_config/pic32mz_ef_sk_Inst_1/bsp/bsp.c    -DXPRJ_pic32mz_ef_sk_Inst_1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1640318959/bsp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1136722066/drv_usart_mapping.o: ../src/system_config/pic32mz_ef_sk_Inst_1/framework/driver/usart/src/drv_usart_mapping.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1136722066" 
	@${RM} ${OBJECTDIR}/_ext/1136722066/drv_usart_mapping.o.d 
	@${RM} ${OBJECTDIR}/_ext/1136722066/drv_usart_mapping.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_Inst_1" -I"../src/pic32mz_ef_sk_Inst_1" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_Inst_1/framework" -I"../src/system_config/pic32mz_ef_sk_Inst_1/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1136722066/drv_usart_mapping.o.d" -o ${OBJECTDIR}/_ext/1136722066/drv_usart_mapping.o ../src/system_config/pic32mz_ef_sk_Inst_1/framework/driver/usart/src/drv_usart_mapping.c    -DXPRJ_pic32mz_ef_sk_Inst_1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1136722066/drv_usart_mapping.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1136722066/drv_usart_static.o: ../src/system_config/pic32mz_ef_sk_Inst_1/framework/driver/usart/src/drv_usart_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1136722066" 
	@${RM} ${OBJECTDIR}/_ext/1136722066/drv_usart_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/1136722066/drv_usart_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_Inst_1" -I"../src/pic32mz_ef_sk_Inst_1" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_Inst_1/framework" -I"../src/system_config/pic32mz_ef_sk_Inst_1/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1136722066/drv_usart_static.o.d" -o ${OBJECTDIR}/_ext/1136722066/drv_usart_static.o ../src/system_config/pic32mz_ef_sk_Inst_1/framework/driver/usart/src/drv_usart_static.c    -DXPRJ_pic32mz_ef_sk_Inst_1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1136722066/drv_usart_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1136722066/drv_usart_static_byte_model.o: ../src/system_config/pic32mz_ef_sk_Inst_1/framework/driver/usart/src/drv_usart_static_byte_model.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1136722066" 
	@${RM} ${OBJECTDIR}/_ext/1136722066/drv_usart_static_byte_model.o.d 
	@${RM} ${OBJECTDIR}/_ext/1136722066/drv_usart_static_byte_model.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_Inst_1" -I"../src/pic32mz_ef_sk_Inst_1" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_Inst_1/framework" -I"../src/system_config/pic32mz_ef_sk_Inst_1/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1136722066/drv_usart_static_byte_model.o.d" -o ${OBJECTDIR}/_ext/1136722066/drv_usart_static_byte_model.o ../src/system_config/pic32mz_ef_sk_Inst_1/framework/driver/usart/src/drv_usart_static_byte_model.c    -DXPRJ_pic32mz_ef_sk_Inst_1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1136722066/drv_usart_static_byte_model.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1780309302/sys_clk_pic32mz.o: ../src/system_config/pic32mz_ef_sk_Inst_1/framework/system/clk/src/sys_clk_pic32mz.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1780309302" 
	@${RM} ${OBJECTDIR}/_ext/1780309302/sys_clk_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/1780309302/sys_clk_pic32mz.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_Inst_1" -I"../src/pic32mz_ef_sk_Inst_1" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_Inst_1/framework" -I"../src/system_config/pic32mz_ef_sk_Inst_1/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1780309302/sys_clk_pic32mz.o.d" -o ${OBJECTDIR}/_ext/1780309302/sys_clk_pic32mz.o ../src/system_config/pic32mz_ef_sk_Inst_1/framework/system/clk/src/sys_clk_pic32mz.c    -DXPRJ_pic32mz_ef_sk_Inst_1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1780309302/sys_clk_pic32mz.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1009006589/sys_devcon.o: ../src/system_config/pic32mz_ef_sk_Inst_1/framework/system/devcon/src/sys_devcon.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1009006589" 
	@${RM} ${OBJECTDIR}/_ext/1009006589/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/1009006589/sys_devcon.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_Inst_1" -I"../src/pic32mz_ef_sk_Inst_1" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_Inst_1/framework" -I"../src/system_config/pic32mz_ef_sk_Inst_1/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1009006589/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/1009006589/sys_devcon.o ../src/system_config/pic32mz_ef_sk_Inst_1/framework/system/devcon/src/sys_devcon.c    -DXPRJ_pic32mz_ef_sk_Inst_1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1009006589/sys_devcon.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1009006589/sys_devcon_pic32mz.o: ../src/system_config/pic32mz_ef_sk_Inst_1/framework/system/devcon/src/sys_devcon_pic32mz.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1009006589" 
	@${RM} ${OBJECTDIR}/_ext/1009006589/sys_devcon_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/1009006589/sys_devcon_pic32mz.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_Inst_1" -I"../src/pic32mz_ef_sk_Inst_1" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_Inst_1/framework" -I"../src/system_config/pic32mz_ef_sk_Inst_1/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1009006589/sys_devcon_pic32mz.o.d" -o ${OBJECTDIR}/_ext/1009006589/sys_devcon_pic32mz.o ../src/system_config/pic32mz_ef_sk_Inst_1/framework/system/devcon/src/sys_devcon_pic32mz.c    -DXPRJ_pic32mz_ef_sk_Inst_1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1009006589/sys_devcon_pic32mz.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/12326810/sys_ports_static.o: ../src/system_config/pic32mz_ef_sk_Inst_1/framework/system/ports/src/sys_ports_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/12326810" 
	@${RM} ${OBJECTDIR}/_ext/12326810/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/12326810/sys_ports_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_Inst_1" -I"../src/pic32mz_ef_sk_Inst_1" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_Inst_1/framework" -I"../src/system_config/pic32mz_ef_sk_Inst_1/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/12326810/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/12326810/sys_ports_static.o ../src/system_config/pic32mz_ef_sk_Inst_1/framework/system/ports/src/sys_ports_static.c    -DXPRJ_pic32mz_ef_sk_Inst_1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/12326810/sys_ports_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/878487331/sys_reset.o: ../src/system_config/pic32mz_ef_sk_Inst_1/framework/system/reset/src/sys_reset.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/878487331" 
	@${RM} ${OBJECTDIR}/_ext/878487331/sys_reset.o.d 
	@${RM} ${OBJECTDIR}/_ext/878487331/sys_reset.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_Inst_1" -I"../src/pic32mz_ef_sk_Inst_1" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_Inst_1/framework" -I"../src/system_config/pic32mz_ef_sk_Inst_1/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/878487331/sys_reset.o.d" -o ${OBJECTDIR}/_ext/878487331/sys_reset.o ../src/system_config/pic32mz_ef_sk_Inst_1/framework/system/reset/src/sys_reset.c    -DXPRJ_pic32mz_ef_sk_Inst_1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/878487331/sys_reset.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1786459361/system_init.o: ../src/system_config/pic32mz_ef_sk_Inst_1/system_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1786459361" 
	@${RM} ${OBJECTDIR}/_ext/1786459361/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1786459361/system_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_Inst_1" -I"../src/pic32mz_ef_sk_Inst_1" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_Inst_1/framework" -I"../src/system_config/pic32mz_ef_sk_Inst_1/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1786459361/system_init.o.d" -o ${OBJECTDIR}/_ext/1786459361/system_init.o ../src/system_config/pic32mz_ef_sk_Inst_1/system_init.c    -DXPRJ_pic32mz_ef_sk_Inst_1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1786459361/system_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1786459361/system_interrupt.o: ../src/system_config/pic32mz_ef_sk_Inst_1/system_interrupt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1786459361" 
	@${RM} ${OBJECTDIR}/_ext/1786459361/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1786459361/system_interrupt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_Inst_1" -I"../src/pic32mz_ef_sk_Inst_1" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_Inst_1/framework" -I"../src/system_config/pic32mz_ef_sk_Inst_1/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1786459361/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/1786459361/system_interrupt.o ../src/system_config/pic32mz_ef_sk_Inst_1/system_interrupt.c    -DXPRJ_pic32mz_ef_sk_Inst_1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1786459361/system_interrupt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1786459361/system_exceptions.o: ../src/system_config/pic32mz_ef_sk_Inst_1/system_exceptions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1786459361" 
	@${RM} ${OBJECTDIR}/_ext/1786459361/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1786459361/system_exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_Inst_1" -I"../src/pic32mz_ef_sk_Inst_1" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_Inst_1/framework" -I"../src/system_config/pic32mz_ef_sk_Inst_1/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1786459361/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/1786459361/system_exceptions.o ../src/system_config/pic32mz_ef_sk_Inst_1/system_exceptions.c    -DXPRJ_pic32mz_ef_sk_Inst_1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1786459361/system_exceptions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1786459361/system_tasks.o: ../src/system_config/pic32mz_ef_sk_Inst_1/system_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1786459361" 
	@${RM} ${OBJECTDIR}/_ext/1786459361/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1786459361/system_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_Inst_1" -I"../src/pic32mz_ef_sk_Inst_1" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_Inst_1/framework" -I"../src/system_config/pic32mz_ef_sk_Inst_1/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1786459361/system_tasks.o.d" -o ${OBJECTDIR}/_ext/1786459361/system_tasks.o ../src/system_config/pic32mz_ef_sk_Inst_1/system_tasks.c    -DXPRJ_pic32mz_ef_sk_Inst_1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1786459361/system_tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_Inst_1" -I"../src/pic32mz_ef_sk_Inst_1" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_Inst_1/framework" -I"../src/system_config/pic32mz_ef_sk_Inst_1/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_pic32mz_ef_sk_Inst_1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/app.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_Inst_1" -I"../src/pic32mz_ef_sk_Inst_1" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_Inst_1/framework" -I"../src/system_config/pic32mz_ef_sk_Inst_1/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32mz_ef_sk_Inst_1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1467197364/app_helper.o: D\:/Microchip/harmony/v2_06/apps/bootloader/LiveUpdate/LiveUpdate_App/firmware/src/app_helper.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1467197364" 
	@${RM} ${OBJECTDIR}/_ext/1467197364/app_helper.o.d 
	@${RM} ${OBJECTDIR}/_ext/1467197364/app_helper.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_Inst_1" -I"../src/pic32mz_ef_sk_Inst_1" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_Inst_1/framework" -I"../src/system_config/pic32mz_ef_sk_Inst_1/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1467197364/app_helper.o.d" -o ${OBJECTDIR}/_ext/1467197364/app_helper.o D:/Microchip/harmony/v2_06/apps/bootloader/LiveUpdate/LiveUpdate_App/firmware/src/app_helper.c    -DXPRJ_pic32mz_ef_sk_Inst_1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1467197364/app_helper.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/682638542/datastream.o: ../../../../../../framework/bootloader/src/datastream/datastream.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/682638542" 
	@${RM} ${OBJECTDIR}/_ext/682638542/datastream.o.d 
	@${RM} ${OBJECTDIR}/_ext/682638542/datastream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_Inst_1" -I"../src/pic32mz_ef_sk_Inst_1" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_Inst_1/framework" -I"../src/system_config/pic32mz_ef_sk_Inst_1/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/682638542/datastream.o.d" -o ${OBJECTDIR}/_ext/682638542/datastream.o ../../../../../../framework/bootloader/src/datastream/datastream.c    -DXPRJ_pic32mz_ef_sk_Inst_1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/682638542/datastream.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/682638542/datastream_usart.o: ../../../../../../framework/bootloader/src/datastream/datastream_usart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/682638542" 
	@${RM} ${OBJECTDIR}/_ext/682638542/datastream_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/682638542/datastream_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_Inst_1" -I"../src/pic32mz_ef_sk_Inst_1" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_Inst_1/framework" -I"../src/system_config/pic32mz_ef_sk_Inst_1/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/682638542/datastream_usart.o.d" -o ${OBJECTDIR}/_ext/682638542/datastream_usart.o ../../../../../../framework/bootloader/src/datastream/datastream_usart.c    -DXPRJ_pic32mz_ef_sk_Inst_1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/682638542/datastream_usart.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1854679915/bootloader.o: ../../../../../../framework/bootloader/src/bootloader.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1854679915" 
	@${RM} ${OBJECTDIR}/_ext/1854679915/bootloader.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854679915/bootloader.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_Inst_1" -I"../src/pic32mz_ef_sk_Inst_1" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_Inst_1/framework" -I"../src/system_config/pic32mz_ef_sk_Inst_1/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1854679915/bootloader.o.d" -o ${OBJECTDIR}/_ext/1854679915/bootloader.o ../../../../../../framework/bootloader/src/bootloader.c    -DXPRJ_pic32mz_ef_sk_Inst_1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1854679915/bootloader.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1854679915/nvm.o: ../../../../../../framework/bootloader/src/nvm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1854679915" 
	@${RM} ${OBJECTDIR}/_ext/1854679915/nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854679915/nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_Inst_1" -I"../src/pic32mz_ef_sk_Inst_1" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_Inst_1/framework" -I"../src/system_config/pic32mz_ef_sk_Inst_1/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1854679915/nvm.o.d" -o ${OBJECTDIR}/_ext/1854679915/nvm.o ../../../../../../framework/bootloader/src/nvm.c    -DXPRJ_pic32mz_ef_sk_Inst_1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1854679915/nvm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/711155467/sys_int_pic32.o: ../../../../../../framework/system/int/src/sys_int_pic32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/711155467" 
	@${RM} ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_Inst_1" -I"../src/pic32mz_ef_sk_Inst_1" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_Inst_1/framework" -I"../src/system_config/pic32mz_ef_sk_Inst_1/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/711155467/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o ../../../../../../framework/system/int/src/sys_int_pic32.c    -DXPRJ_pic32mz_ef_sk_Inst_1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/711155467/sys_int_pic32.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/LiveUpdate_App.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../../../bin/framework/peripheral/PIC32MZ2048EFH144_peripherals.a  ../src/system_config/pic32mz_ef_sk_Inst_1/app_mz.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/LiveUpdate_App.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\..\..\..\..\..\bin\framework\peripheral\PIC32MZ2048EFH144_peripherals.a      -DXPRJ_pic32mz_ef_sk_Inst_1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x37F   -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_PK3=1,--defsym=_min_heap_size=0,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/LiveUpdate_App.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../../../bin/framework/peripheral/PIC32MZ2048EFH144_peripherals.a ../src/system_config/pic32mz_ef_sk_Inst_1/app_mz.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/LiveUpdate_App.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\..\..\..\..\..\bin\framework\peripheral\PIC32MZ2048EFH144_peripherals.a      -DXPRJ_pic32mz_ef_sk_Inst_1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=0,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/LiveUpdate_App.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/pic32mz_ef_sk_Inst_1
	${RM} -r dist/pic32mz_ef_sk_Inst_1

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
