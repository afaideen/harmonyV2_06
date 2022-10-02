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
ifeq "$(wildcard nbproject/Makefile-local-pic32mx795_pim_e16.mk)" "nbproject/Makefile-local-pic32mx795_pim_e16.mk"
include nbproject/Makefile-local-pic32mx795_pim_e16.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=pic32mx795_pim_e16
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/debug_uart.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/debug_uart.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=
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
SOURCEFILES_QUOTED_IF_SPACED=../src/system_config/pic32mx795_pim_e16/bsp/bsp.c ../src/system_config/pic32mx795_pim_e16/framework/system/clk/src/sys_clk_pic32mx.c ../src/system_config/pic32mx795_pim_e16/framework/system/devcon/src/sys_devcon.c ../src/system_config/pic32mx795_pim_e16/framework/system/devcon/src/sys_devcon_pic32mx.c ../src/system_config/pic32mx795_pim_e16/framework/system/ports/src/sys_ports_static.c ../src/system_config/pic32mx795_pim_e16/system_init.c ../src/system_config/pic32mx795_pim_e16/system_interrupt.c ../src/system_config/pic32mx795_pim_e16/system_exceptions.c ../src/system_config/pic32mx795_pim_e16/system_tasks.c ../src/app.c ../src/main.c ../../../../../../framework/driver/usart/src/dynamic/drv_usart.c ../../../../../../framework/driver/usart/src/dynamic/drv_usart_buffer_queue.c ../../../../../../framework/driver/usart/src/dynamic/drv_usart_read_write.c ../../../../../../framework/system/console/src/sys_console.c ../../../../../../framework/system/console/src/sys_console_uart.c ../../../../../../framework/system/debug/src/sys_debug.c ../../../../../../framework/system/int/src/sys_int_pic32.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/2088596378/bsp.o ${OBJECTDIR}/_ext/802619391/sys_clk_pic32mx.o ${OBJECTDIR}/_ext/403624616/sys_devcon.o ${OBJECTDIR}/_ext/403624616/sys_devcon_pic32mx.o ${OBJECTDIR}/_ext/284296305/sys_ports_static.o ${OBJECTDIR}/_ext/572292022/system_init.o ${OBJECTDIR}/_ext/572292022/system_interrupt.o ${OBJECTDIR}/_ext/572292022/system_exceptions.o ${OBJECTDIR}/_ext/572292022/system_tasks.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1927798604/drv_usart.o ${OBJECTDIR}/_ext/1927798604/drv_usart_buffer_queue.o ${OBJECTDIR}/_ext/1927798604/drv_usart_read_write.o ${OBJECTDIR}/_ext/994638301/sys_console.o ${OBJECTDIR}/_ext/994638301/sys_console_uart.o ${OBJECTDIR}/_ext/322127129/sys_debug.o ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/2088596378/bsp.o.d ${OBJECTDIR}/_ext/802619391/sys_clk_pic32mx.o.d ${OBJECTDIR}/_ext/403624616/sys_devcon.o.d ${OBJECTDIR}/_ext/403624616/sys_devcon_pic32mx.o.d ${OBJECTDIR}/_ext/284296305/sys_ports_static.o.d ${OBJECTDIR}/_ext/572292022/system_init.o.d ${OBJECTDIR}/_ext/572292022/system_interrupt.o.d ${OBJECTDIR}/_ext/572292022/system_exceptions.o.d ${OBJECTDIR}/_ext/572292022/system_tasks.o.d ${OBJECTDIR}/_ext/1360937237/app.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1927798604/drv_usart.o.d ${OBJECTDIR}/_ext/1927798604/drv_usart_buffer_queue.o.d ${OBJECTDIR}/_ext/1927798604/drv_usart_read_write.o.d ${OBJECTDIR}/_ext/994638301/sys_console.o.d ${OBJECTDIR}/_ext/994638301/sys_console_uart.o.d ${OBJECTDIR}/_ext/322127129/sys_debug.o.d ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/2088596378/bsp.o ${OBJECTDIR}/_ext/802619391/sys_clk_pic32mx.o ${OBJECTDIR}/_ext/403624616/sys_devcon.o ${OBJECTDIR}/_ext/403624616/sys_devcon_pic32mx.o ${OBJECTDIR}/_ext/284296305/sys_ports_static.o ${OBJECTDIR}/_ext/572292022/system_init.o ${OBJECTDIR}/_ext/572292022/system_interrupt.o ${OBJECTDIR}/_ext/572292022/system_exceptions.o ${OBJECTDIR}/_ext/572292022/system_tasks.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1927798604/drv_usart.o ${OBJECTDIR}/_ext/1927798604/drv_usart_buffer_queue.o ${OBJECTDIR}/_ext/1927798604/drv_usart_read_write.o ${OBJECTDIR}/_ext/994638301/sys_console.o ${OBJECTDIR}/_ext/994638301/sys_console_uart.o ${OBJECTDIR}/_ext/322127129/sys_debug.o ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o

# Source Files
SOURCEFILES=../src/system_config/pic32mx795_pim_e16/bsp/bsp.c ../src/system_config/pic32mx795_pim_e16/framework/system/clk/src/sys_clk_pic32mx.c ../src/system_config/pic32mx795_pim_e16/framework/system/devcon/src/sys_devcon.c ../src/system_config/pic32mx795_pim_e16/framework/system/devcon/src/sys_devcon_pic32mx.c ../src/system_config/pic32mx795_pim_e16/framework/system/ports/src/sys_ports_static.c ../src/system_config/pic32mx795_pim_e16/system_init.c ../src/system_config/pic32mx795_pim_e16/system_interrupt.c ../src/system_config/pic32mx795_pim_e16/system_exceptions.c ../src/system_config/pic32mx795_pim_e16/system_tasks.c ../src/app.c ../src/main.c ../../../../../../framework/driver/usart/src/dynamic/drv_usart.c ../../../../../../framework/driver/usart/src/dynamic/drv_usart_buffer_queue.c ../../../../../../framework/driver/usart/src/dynamic/drv_usart_read_write.c ../../../../../../framework/system/console/src/sys_console.c ../../../../../../framework/system/console/src/sys_console_uart.c ../../../../../../framework/system/debug/src/sys_debug.c ../../../../../../framework/system/int/src/sys_int_pic32.c


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
	${MAKE}  -f nbproject/Makefile-pic32mx795_pim_e16.mk dist/${CND_CONF}/${IMAGE_TYPE}/debug_uart.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX795F512L
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/2088596378/bsp.o: ../src/system_config/pic32mx795_pim_e16/bsp/bsp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2088596378" 
	@${RM} ${OBJECTDIR}/_ext/2088596378/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/2088596378/bsp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2088596378/bsp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D_PLIB_UNSUPPORTED="" -I"/system_config" -I"/driver/usart" -I"/driver" -I"/system/common" -I"/system/console" -I"/system/console/src" -I"/system/debug" -I"/system/devcon" -I"/system/int" -I"/system/ports" -I"/system" -I"/driver/usart" -I"/driver" -I"/system/common" -I"/system/console" -I"/system/console/src" -I"/system/debug" -I"/system/devcon" -I"/system/int" -I"/system/ports" -I"/system" -I"/system/clk" -I"/system/clk/src" -I"/system_config/pic32mx795_pim_e16" -I"/pic32mx795_pim_e16" -I"/system_config/pic32mx795_pim_e16/framework" -I"/system_config/pic32mx795_pim_e16/bsp" -I"/system_config/pic32mx795_pim_e16" -I"/pic32mx795_pim_e16" -I"/system_config/pic32mx795_pim_e16/framework" -I"/system_config/pic32mx795_pim_e16/bsp" -I"../src" -I"../src/system_config/pic32mx795_pim_e16" -I"../src/pic32mx795_pim_e16" -I"../../../../../../framework" -I"../src/system_config/pic32mx795_pim_e16/framework" -I"../src/system_config/pic32mx795_pim_e16/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/2088596378/bsp.o.d" -o ${OBJECTDIR}/_ext/2088596378/bsp.o ../src/system_config/pic32mx795_pim_e16/bsp/bsp.c    -DXPRJ_pic32mx795_pim_e16=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/802619391/sys_clk_pic32mx.o: ../src/system_config/pic32mx795_pim_e16/framework/system/clk/src/sys_clk_pic32mx.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/802619391" 
	@${RM} ${OBJECTDIR}/_ext/802619391/sys_clk_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/802619391/sys_clk_pic32mx.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/802619391/sys_clk_pic32mx.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D_PLIB_UNSUPPORTED="" -I"/system_config" -I"/driver/usart" -I"/driver" -I"/system/common" -I"/system/console" -I"/system/console/src" -I"/system/debug" -I"/system/devcon" -I"/system/int" -I"/system/ports" -I"/system" -I"/driver/usart" -I"/driver" -I"/system/common" -I"/system/console" -I"/system/console/src" -I"/system/debug" -I"/system/devcon" -I"/system/int" -I"/system/ports" -I"/system" -I"/system/clk" -I"/system/clk/src" -I"/system_config/pic32mx795_pim_e16" -I"/pic32mx795_pim_e16" -I"/system_config/pic32mx795_pim_e16/framework" -I"/system_config/pic32mx795_pim_e16/bsp" -I"/system_config/pic32mx795_pim_e16" -I"/pic32mx795_pim_e16" -I"/system_config/pic32mx795_pim_e16/framework" -I"/system_config/pic32mx795_pim_e16/bsp" -I"../src" -I"../src/system_config/pic32mx795_pim_e16" -I"../src/pic32mx795_pim_e16" -I"../../../../../../framework" -I"../src/system_config/pic32mx795_pim_e16/framework" -I"../src/system_config/pic32mx795_pim_e16/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/802619391/sys_clk_pic32mx.o.d" -o ${OBJECTDIR}/_ext/802619391/sys_clk_pic32mx.o ../src/system_config/pic32mx795_pim_e16/framework/system/clk/src/sys_clk_pic32mx.c    -DXPRJ_pic32mx795_pim_e16=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/403624616/sys_devcon.o: ../src/system_config/pic32mx795_pim_e16/framework/system/devcon/src/sys_devcon.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/403624616" 
	@${RM} ${OBJECTDIR}/_ext/403624616/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/403624616/sys_devcon.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/403624616/sys_devcon.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D_PLIB_UNSUPPORTED="" -I"/system_config" -I"/driver/usart" -I"/driver" -I"/system/common" -I"/system/console" -I"/system/console/src" -I"/system/debug" -I"/system/devcon" -I"/system/int" -I"/system/ports" -I"/system" -I"/driver/usart" -I"/driver" -I"/system/common" -I"/system/console" -I"/system/console/src" -I"/system/debug" -I"/system/devcon" -I"/system/int" -I"/system/ports" -I"/system" -I"/system/clk" -I"/system/clk/src" -I"/system_config/pic32mx795_pim_e16" -I"/pic32mx795_pim_e16" -I"/system_config/pic32mx795_pim_e16/framework" -I"/system_config/pic32mx795_pim_e16/bsp" -I"/system_config/pic32mx795_pim_e16" -I"/pic32mx795_pim_e16" -I"/system_config/pic32mx795_pim_e16/framework" -I"/system_config/pic32mx795_pim_e16/bsp" -I"../src" -I"../src/system_config/pic32mx795_pim_e16" -I"../src/pic32mx795_pim_e16" -I"../../../../../../framework" -I"../src/system_config/pic32mx795_pim_e16/framework" -I"../src/system_config/pic32mx795_pim_e16/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/403624616/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/403624616/sys_devcon.o ../src/system_config/pic32mx795_pim_e16/framework/system/devcon/src/sys_devcon.c    -DXPRJ_pic32mx795_pim_e16=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/403624616/sys_devcon_pic32mx.o: ../src/system_config/pic32mx795_pim_e16/framework/system/devcon/src/sys_devcon_pic32mx.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/403624616" 
	@${RM} ${OBJECTDIR}/_ext/403624616/sys_devcon_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/403624616/sys_devcon_pic32mx.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/403624616/sys_devcon_pic32mx.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D_PLIB_UNSUPPORTED="" -I"/system_config" -I"/driver/usart" -I"/driver" -I"/system/common" -I"/system/console" -I"/system/console/src" -I"/system/debug" -I"/system/devcon" -I"/system/int" -I"/system/ports" -I"/system" -I"/driver/usart" -I"/driver" -I"/system/common" -I"/system/console" -I"/system/console/src" -I"/system/debug" -I"/system/devcon" -I"/system/int" -I"/system/ports" -I"/system" -I"/system/clk" -I"/system/clk/src" -I"/system_config/pic32mx795_pim_e16" -I"/pic32mx795_pim_e16" -I"/system_config/pic32mx795_pim_e16/framework" -I"/system_config/pic32mx795_pim_e16/bsp" -I"/system_config/pic32mx795_pim_e16" -I"/pic32mx795_pim_e16" -I"/system_config/pic32mx795_pim_e16/framework" -I"/system_config/pic32mx795_pim_e16/bsp" -I"../src" -I"../src/system_config/pic32mx795_pim_e16" -I"../src/pic32mx795_pim_e16" -I"../../../../../../framework" -I"../src/system_config/pic32mx795_pim_e16/framework" -I"../src/system_config/pic32mx795_pim_e16/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/403624616/sys_devcon_pic32mx.o.d" -o ${OBJECTDIR}/_ext/403624616/sys_devcon_pic32mx.o ../src/system_config/pic32mx795_pim_e16/framework/system/devcon/src/sys_devcon_pic32mx.c    -DXPRJ_pic32mx795_pim_e16=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/284296305/sys_ports_static.o: ../src/system_config/pic32mx795_pim_e16/framework/system/ports/src/sys_ports_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/284296305" 
	@${RM} ${OBJECTDIR}/_ext/284296305/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/284296305/sys_ports_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/284296305/sys_ports_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D_PLIB_UNSUPPORTED="" -I"/system_config" -I"/driver/usart" -I"/driver" -I"/system/common" -I"/system/console" -I"/system/console/src" -I"/system/debug" -I"/system/devcon" -I"/system/int" -I"/system/ports" -I"/system" -I"/driver/usart" -I"/driver" -I"/system/common" -I"/system/console" -I"/system/console/src" -I"/system/debug" -I"/system/devcon" -I"/system/int" -I"/system/ports" -I"/system" -I"/system/clk" -I"/system/clk/src" -I"/system_config/pic32mx795_pim_e16" -I"/pic32mx795_pim_e16" -I"/system_config/pic32mx795_pim_e16/framework" -I"/system_config/pic32mx795_pim_e16/bsp" -I"/system_config/pic32mx795_pim_e16" -I"/pic32mx795_pim_e16" -I"/system_config/pic32mx795_pim_e16/framework" -I"/system_config/pic32mx795_pim_e16/bsp" -I"../src" -I"../src/system_config/pic32mx795_pim_e16" -I"../src/pic32mx795_pim_e16" -I"../../../../../../framework" -I"../src/system_config/pic32mx795_pim_e16/framework" -I"../src/system_config/pic32mx795_pim_e16/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/284296305/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/284296305/sys_ports_static.o ../src/system_config/pic32mx795_pim_e16/framework/system/ports/src/sys_ports_static.c    -DXPRJ_pic32mx795_pim_e16=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/572292022/system_init.o: ../src/system_config/pic32mx795_pim_e16/system_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/572292022" 
	@${RM} ${OBJECTDIR}/_ext/572292022/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/572292022/system_init.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/572292022/system_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D_PLIB_UNSUPPORTED="" -I"/system_config" -I"/driver/usart" -I"/driver" -I"/system/common" -I"/system/console" -I"/system/console/src" -I"/system/debug" -I"/system/devcon" -I"/system/int" -I"/system/ports" -I"/system" -I"/driver/usart" -I"/driver" -I"/system/common" -I"/system/console" -I"/system/console/src" -I"/system/debug" -I"/system/devcon" -I"/system/int" -I"/system/ports" -I"/system" -I"/system/clk" -I"/system/clk/src" -I"/system_config/pic32mx795_pim_e16" -I"/pic32mx795_pim_e16" -I"/system_config/pic32mx795_pim_e16/framework" -I"/system_config/pic32mx795_pim_e16/bsp" -I"/system_config/pic32mx795_pim_e16" -I"/pic32mx795_pim_e16" -I"/system_config/pic32mx795_pim_e16/framework" -I"/system_config/pic32mx795_pim_e16/bsp" -I"../src" -I"../src/system_config/pic32mx795_pim_e16" -I"../src/pic32mx795_pim_e16" -I"../../../../../../framework" -I"../src/system_config/pic32mx795_pim_e16/framework" -I"../src/system_config/pic32mx795_pim_e16/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/572292022/system_init.o.d" -o ${OBJECTDIR}/_ext/572292022/system_init.o ../src/system_config/pic32mx795_pim_e16/system_init.c    -DXPRJ_pic32mx795_pim_e16=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/572292022/system_interrupt.o: ../src/system_config/pic32mx795_pim_e16/system_interrupt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/572292022" 
	@${RM} ${OBJECTDIR}/_ext/572292022/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/572292022/system_interrupt.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/572292022/system_interrupt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D_PLIB_UNSUPPORTED="" -I"/system_config" -I"/driver/usart" -I"/driver" -I"/system/common" -I"/system/console" -I"/system/console/src" -I"/system/debug" -I"/system/devcon" -I"/system/int" -I"/system/ports" -I"/system" -I"/driver/usart" -I"/driver" -I"/system/common" -I"/system/console" -I"/system/console/src" -I"/system/debug" -I"/system/devcon" -I"/system/int" -I"/system/ports" -I"/system" -I"/system/clk" -I"/system/clk/src" -I"/system_config/pic32mx795_pim_e16" -I"/pic32mx795_pim_e16" -I"/system_config/pic32mx795_pim_e16/framework" -I"/system_config/pic32mx795_pim_e16/bsp" -I"/system_config/pic32mx795_pim_e16" -I"/pic32mx795_pim_e16" -I"/system_config/pic32mx795_pim_e16/framework" -I"/system_config/pic32mx795_pim_e16/bsp" -I"../src" -I"../src/system_config/pic32mx795_pim_e16" -I"../src/pic32mx795_pim_e16" -I"../../../../../../framework" -I"../src/system_config/pic32mx795_pim_e16/framework" -I"../src/system_config/pic32mx795_pim_e16/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/572292022/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/572292022/system_interrupt.o ../src/system_config/pic32mx795_pim_e16/system_interrupt.c    -DXPRJ_pic32mx795_pim_e16=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/572292022/system_exceptions.o: ../src/system_config/pic32mx795_pim_e16/system_exceptions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/572292022" 
	@${RM} ${OBJECTDIR}/_ext/572292022/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/572292022/system_exceptions.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/572292022/system_exceptions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D_PLIB_UNSUPPORTED="" -I"/system_config" -I"/driver/usart" -I"/driver" -I"/system/common" -I"/system/console" -I"/system/console/src" -I"/system/debug" -I"/system/devcon" -I"/system/int" -I"/system/ports" -I"/system" -I"/driver/usart" -I"/driver" -I"/system/common" -I"/system/console" -I"/system/console/src" -I"/system/debug" -I"/system/devcon" -I"/system/int" -I"/system/ports" -I"/system" -I"/system/clk" -I"/system/clk/src" -I"/system_config/pic32mx795_pim_e16" -I"/pic32mx795_pim_e16" -I"/system_config/pic32mx795_pim_e16/framework" -I"/system_config/pic32mx795_pim_e16/bsp" -I"/system_config/pic32mx795_pim_e16" -I"/pic32mx795_pim_e16" -I"/system_config/pic32mx795_pim_e16/framework" -I"/system_config/pic32mx795_pim_e16/bsp" -I"../src" -I"../src/system_config/pic32mx795_pim_e16" -I"../src/pic32mx795_pim_e16" -I"../../../../../../framework" -I"../src/system_config/pic32mx795_pim_e16/framework" -I"../src/system_config/pic32mx795_pim_e16/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/572292022/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/572292022/system_exceptions.o ../src/system_config/pic32mx795_pim_e16/system_exceptions.c    -DXPRJ_pic32mx795_pim_e16=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/572292022/system_tasks.o: ../src/system_config/pic32mx795_pim_e16/system_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/572292022" 
	@${RM} ${OBJECTDIR}/_ext/572292022/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/572292022/system_tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/572292022/system_tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D_PLIB_UNSUPPORTED="" -I"/system_config" -I"/driver/usart" -I"/driver" -I"/system/common" -I"/system/console" -I"/system/console/src" -I"/system/debug" -I"/system/devcon" -I"/system/int" -I"/system/ports" -I"/system" -I"/driver/usart" -I"/driver" -I"/system/common" -I"/system/console" -I"/system/console/src" -I"/system/debug" -I"/system/devcon" -I"/system/int" -I"/system/ports" -I"/system" -I"/system/clk" -I"/system/clk/src" -I"/system_config/pic32mx795_pim_e16" -I"/pic32mx795_pim_e16" -I"/system_config/pic32mx795_pim_e16/framework" -I"/system_config/pic32mx795_pim_e16/bsp" -I"/system_config/pic32mx795_pim_e16" -I"/pic32mx795_pim_e16" -I"/system_config/pic32mx795_pim_e16/framework" -I"/system_config/pic32mx795_pim_e16/bsp" -I"../src" -I"../src/system_config/pic32mx795_pim_e16" -I"../src/pic32mx795_pim_e16" -I"../../../../../../framework" -I"../src/system_config/pic32mx795_pim_e16/framework" -I"../src/system_config/pic32mx795_pim_e16/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/572292022/system_tasks.o.d" -o ${OBJECTDIR}/_ext/572292022/system_tasks.o ../src/system_config/pic32mx795_pim_e16/system_tasks.c    -DXPRJ_pic32mx795_pim_e16=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/app.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D_PLIB_UNSUPPORTED="" -I"/system_config" -I"/driver/usart" -I"/driver" -I"/system/common" -I"/system/console" -I"/system/console/src" -I"/system/debug" -I"/system/devcon" -I"/system/int" -I"/system/ports" -I"/system" -I"/driver/usart" -I"/driver" -I"/system/common" -I"/system/console" -I"/system/console/src" -I"/system/debug" -I"/system/devcon" -I"/system/int" -I"/system/ports" -I"/system" -I"/system/clk" -I"/system/clk/src" -I"/system_config/pic32mx795_pim_e16" -I"/pic32mx795_pim_e16" -I"/system_config/pic32mx795_pim_e16/framework" -I"/system_config/pic32mx795_pim_e16/bsp" -I"/system_config/pic32mx795_pim_e16" -I"/pic32mx795_pim_e16" -I"/system_config/pic32mx795_pim_e16/framework" -I"/system_config/pic32mx795_pim_e16/bsp" -I"../src" -I"../src/system_config/pic32mx795_pim_e16" -I"../src/pic32mx795_pim_e16" -I"../../../../../../framework" -I"../src/system_config/pic32mx795_pim_e16/framework" -I"../src/system_config/pic32mx795_pim_e16/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_pic32mx795_pim_e16=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D_PLIB_UNSUPPORTED="" -I"/system_config" -I"/driver/usart" -I"/driver" -I"/system/common" -I"/system/console" -I"/system/console/src" -I"/system/debug" -I"/system/devcon" -I"/system/int" -I"/system/ports" -I"/system" -I"/driver/usart" -I"/driver" -I"/system/common" -I"/system/console" -I"/system/console/src" -I"/system/debug" -I"/system/devcon" -I"/system/int" -I"/system/ports" -I"/system" -I"/system/clk" -I"/system/clk/src" -I"/system_config/pic32mx795_pim_e16" -I"/pic32mx795_pim_e16" -I"/system_config/pic32mx795_pim_e16/framework" -I"/system_config/pic32mx795_pim_e16/bsp" -I"/system_config/pic32mx795_pim_e16" -I"/pic32mx795_pim_e16" -I"/system_config/pic32mx795_pim_e16/framework" -I"/system_config/pic32mx795_pim_e16/bsp" -I"../src" -I"../src/system_config/pic32mx795_pim_e16" -I"../src/pic32mx795_pim_e16" -I"../../../../../../framework" -I"../src/system_config/pic32mx795_pim_e16/framework" -I"../src/system_config/pic32mx795_pim_e16/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32mx795_pim_e16=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1927798604/drv_usart.o: ../../../../../../framework/driver/usart/src/dynamic/drv_usart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1927798604" 
	@${RM} ${OBJECTDIR}/_ext/1927798604/drv_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1927798604/drv_usart.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1927798604/drv_usart.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D_PLIB_UNSUPPORTED="" -I"/system_config" -I"/driver/usart" -I"/driver" -I"/system/common" -I"/system/console" -I"/system/console/src" -I"/system/debug" -I"/system/devcon" -I"/system/int" -I"/system/ports" -I"/system" -I"/driver/usart" -I"/driver" -I"/system/common" -I"/system/console" -I"/system/console/src" -I"/system/debug" -I"/system/devcon" -I"/system/int" -I"/system/ports" -I"/system" -I"/system/clk" -I"/system/clk/src" -I"/system_config/pic32mx795_pim_e16" -I"/pic32mx795_pim_e16" -I"/system_config/pic32mx795_pim_e16/framework" -I"/system_config/pic32mx795_pim_e16/bsp" -I"/system_config/pic32mx795_pim_e16" -I"/pic32mx795_pim_e16" -I"/system_config/pic32mx795_pim_e16/framework" -I"/system_config/pic32mx795_pim_e16/bsp" -I"../src" -I"../src/system_config/pic32mx795_pim_e16" -I"../src/pic32mx795_pim_e16" -I"../../../../../../framework" -I"../src/system_config/pic32mx795_pim_e16/framework" -I"../src/system_config/pic32mx795_pim_e16/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1927798604/drv_usart.o.d" -o ${OBJECTDIR}/_ext/1927798604/drv_usart.o ../../../../../../framework/driver/usart/src/dynamic/drv_usart.c    -DXPRJ_pic32mx795_pim_e16=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1927798604/drv_usart_buffer_queue.o: ../../../../../../framework/driver/usart/src/dynamic/drv_usart_buffer_queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1927798604" 
	@${RM} ${OBJECTDIR}/_ext/1927798604/drv_usart_buffer_queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1927798604/drv_usart_buffer_queue.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1927798604/drv_usart_buffer_queue.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D_PLIB_UNSUPPORTED="" -I"/system_config" -I"/driver/usart" -I"/driver" -I"/system/common" -I"/system/console" -I"/system/console/src" -I"/system/debug" -I"/system/devcon" -I"/system/int" -I"/system/ports" -I"/system" -I"/driver/usart" -I"/driver" -I"/system/common" -I"/system/console" -I"/system/console/src" -I"/system/debug" -I"/system/devcon" -I"/system/int" -I"/system/ports" -I"/system" -I"/system/clk" -I"/system/clk/src" -I"/system_config/pic32mx795_pim_e16" -I"/pic32mx795_pim_e16" -I"/system_config/pic32mx795_pim_e16/framework" -I"/system_config/pic32mx795_pim_e16/bsp" -I"/system_config/pic32mx795_pim_e16" -I"/pic32mx795_pim_e16" -I"/system_config/pic32mx795_pim_e16/framework" -I"/system_config/pic32mx795_pim_e16/bsp" -I"../src" -I"../src/system_config/pic32mx795_pim_e16" -I"../src/pic32mx795_pim_e16" -I"../../../../../../framework" -I"../src/system_config/pic32mx795_pim_e16/framework" -I"../src/system_config/pic32mx795_pim_e16/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1927798604/drv_usart_buffer_queue.o.d" -o ${OBJECTDIR}/_ext/1927798604/drv_usart_buffer_queue.o ../../../../../../framework/driver/usart/src/dynamic/drv_usart_buffer_queue.c    -DXPRJ_pic32mx795_pim_e16=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1927798604/drv_usart_read_write.o: ../../../../../../framework/driver/usart/src/dynamic/drv_usart_read_write.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1927798604" 
	@${RM} ${OBJECTDIR}/_ext/1927798604/drv_usart_read_write.o.d 
	@${RM} ${OBJECTDIR}/_ext/1927798604/drv_usart_read_write.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1927798604/drv_usart_read_write.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D_PLIB_UNSUPPORTED="" -I"/system_config" -I"/driver/usart" -I"/driver" -I"/system/common" -I"/system/console" -I"/system/console/src" -I"/system/debug" -I"/system/devcon" -I"/system/int" -I"/system/ports" -I"/system" -I"/driver/usart" -I"/driver" -I"/system/common" -I"/system/console" -I"/system/console/src" -I"/system/debug" -I"/system/devcon" -I"/system/int" -I"/system/ports" -I"/system" -I"/system/clk" -I"/system/clk/src" -I"/system_config/pic32mx795_pim_e16" -I"/pic32mx795_pim_e16" -I"/system_config/pic32mx795_pim_e16/framework" -I"/system_config/pic32mx795_pim_e16/bsp" -I"/system_config/pic32mx795_pim_e16" -I"/pic32mx795_pim_e16" -I"/system_config/pic32mx795_pim_e16/framework" -I"/system_config/pic32mx795_pim_e16/bsp" -I"../src" -I"../src/system_config/pic32mx795_pim_e16" -I"../src/pic32mx795_pim_e16" -I"../../../../../../framework" -I"../src/system_config/pic32mx795_pim_e16/framework" -I"../src/system_config/pic32mx795_pim_e16/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1927798604/drv_usart_read_write.o.d" -o ${OBJECTDIR}/_ext/1927798604/drv_usart_read_write.o ../../../../../../framework/driver/usart/src/dynamic/drv_usart_read_write.c    -DXPRJ_pic32mx795_pim_e16=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/994638301/sys_console.o: ../../../../../../framework/system/console/src/sys_console.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/994638301" 
	@${RM} ${OBJECTDIR}/_ext/994638301/sys_console.o.d 
	@${RM} ${OBJECTDIR}/_ext/994638301/sys_console.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/994638301/sys_console.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D_PLIB_UNSUPPORTED="" -I"/system_config" -I"/driver/usart" -I"/driver" -I"/system/common" -I"/system/console" -I"/system/console/src" -I"/system/debug" -I"/system/devcon" -I"/system/int" -I"/system/ports" -I"/system" -I"/driver/usart" -I"/driver" -I"/system/common" -I"/system/console" -I"/system/console/src" -I"/system/debug" -I"/system/devcon" -I"/system/int" -I"/system/ports" -I"/system" -I"/system/clk" -I"/system/clk/src" -I"/system_config/pic32mx795_pim_e16" -I"/pic32mx795_pim_e16" -I"/system_config/pic32mx795_pim_e16/framework" -I"/system_config/pic32mx795_pim_e16/bsp" -I"/system_config/pic32mx795_pim_e16" -I"/pic32mx795_pim_e16" -I"/system_config/pic32mx795_pim_e16/framework" -I"/system_config/pic32mx795_pim_e16/bsp" -I"../src" -I"../src/system_config/pic32mx795_pim_e16" -I"../src/pic32mx795_pim_e16" -I"../../../../../../framework" -I"../src/system_config/pic32mx795_pim_e16/framework" -I"../src/system_config/pic32mx795_pim_e16/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/994638301/sys_console.o.d" -o ${OBJECTDIR}/_ext/994638301/sys_console.o ../../../../../../framework/system/console/src/sys_console.c    -DXPRJ_pic32mx795_pim_e16=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/994638301/sys_console_uart.o: ../../../../../../framework/system/console/src/sys_console_uart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/994638301" 
	@${RM} ${OBJECTDIR}/_ext/994638301/sys_console_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/994638301/sys_console_uart.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/994638301/sys_console_uart.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D_PLIB_UNSUPPORTED="" -I"/system_config" -I"/driver/usart" -I"/driver" -I"/system/common" -I"/system/console" -I"/system/console/src" -I"/system/debug" -I"/system/devcon" -I"/system/int" -I"/system/ports" -I"/system" -I"/driver/usart" -I"/driver" -I"/system/common" -I"/system/console" -I"/system/console/src" -I"/system/debug" -I"/system/devcon" -I"/system/int" -I"/system/ports" -I"/system" -I"/system/clk" -I"/system/clk/src" -I"/system_config/pic32mx795_pim_e16" -I"/pic32mx795_pim_e16" -I"/system_config/pic32mx795_pim_e16/framework" -I"/system_config/pic32mx795_pim_e16/bsp" -I"/system_config/pic32mx795_pim_e16" -I"/pic32mx795_pim_e16" -I"/system_config/pic32mx795_pim_e16/framework" -I"/system_config/pic32mx795_pim_e16/bsp" -I"../src" -I"../src/system_config/pic32mx795_pim_e16" -I"../src/pic32mx795_pim_e16" -I"../../../../../../framework" -I"../src/system_config/pic32mx795_pim_e16/framework" -I"../src/system_config/pic32mx795_pim_e16/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/994638301/sys_console_uart.o.d" -o ${OBJECTDIR}/_ext/994638301/sys_console_uart.o ../../../../../../framework/system/console/src/sys_console_uart.c    -DXPRJ_pic32mx795_pim_e16=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/322127129/sys_debug.o: ../../../../../../framework/system/debug/src/sys_debug.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/322127129" 
	@${RM} ${OBJECTDIR}/_ext/322127129/sys_debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/322127129/sys_debug.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/322127129/sys_debug.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D_PLIB_UNSUPPORTED="" -I"/system_config" -I"/driver/usart" -I"/driver" -I"/system/common" -I"/system/console" -I"/system/console/src" -I"/system/debug" -I"/system/devcon" -I"/system/int" -I"/system/ports" -I"/system" -I"/driver/usart" -I"/driver" -I"/system/common" -I"/system/console" -I"/system/console/src" -I"/system/debug" -I"/system/devcon" -I"/system/int" -I"/system/ports" -I"/system" -I"/system/clk" -I"/system/clk/src" -I"/system_config/pic32mx795_pim_e16" -I"/pic32mx795_pim_e16" -I"/system_config/pic32mx795_pim_e16/framework" -I"/system_config/pic32mx795_pim_e16/bsp" -I"/system_config/pic32mx795_pim_e16" -I"/pic32mx795_pim_e16" -I"/system_config/pic32mx795_pim_e16/framework" -I"/system_config/pic32mx795_pim_e16/bsp" -I"../src" -I"../src/system_config/pic32mx795_pim_e16" -I"../src/pic32mx795_pim_e16" -I"../../../../../../framework" -I"../src/system_config/pic32mx795_pim_e16/framework" -I"../src/system_config/pic32mx795_pim_e16/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/322127129/sys_debug.o.d" -o ${OBJECTDIR}/_ext/322127129/sys_debug.o ../../../../../../framework/system/debug/src/sys_debug.c    -DXPRJ_pic32mx795_pim_e16=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/711155467/sys_int_pic32.o: ../../../../../../framework/system/int/src/sys_int_pic32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/711155467" 
	@${RM} ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/711155467/sys_int_pic32.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D_PLIB_UNSUPPORTED="" -I"/system_config" -I"/driver/usart" -I"/driver" -I"/system/common" -I"/system/console" -I"/system/console/src" -I"/system/debug" -I"/system/devcon" -I"/system/int" -I"/system/ports" -I"/system" -I"/driver/usart" -I"/driver" -I"/system/common" -I"/system/console" -I"/system/console/src" -I"/system/debug" -I"/system/devcon" -I"/system/int" -I"/system/ports" -I"/system" -I"/system/clk" -I"/system/clk/src" -I"/system_config/pic32mx795_pim_e16" -I"/pic32mx795_pim_e16" -I"/system_config/pic32mx795_pim_e16/framework" -I"/system_config/pic32mx795_pim_e16/bsp" -I"/system_config/pic32mx795_pim_e16" -I"/pic32mx795_pim_e16" -I"/system_config/pic32mx795_pim_e16/framework" -I"/system_config/pic32mx795_pim_e16/bsp" -I"../src" -I"../src/system_config/pic32mx795_pim_e16" -I"../src/pic32mx795_pim_e16" -I"../../../../../../framework" -I"../src/system_config/pic32mx795_pim_e16/framework" -I"../src/system_config/pic32mx795_pim_e16/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/711155467/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o ../../../../../../framework/system/int/src/sys_int_pic32.c    -DXPRJ_pic32mx795_pim_e16=$(CND_CONF)    $(COMPARISON_BUILD) 
	
else
${OBJECTDIR}/_ext/2088596378/bsp.o: ../src/system_config/pic32mx795_pim_e16/bsp/bsp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2088596378" 
	@${RM} ${OBJECTDIR}/_ext/2088596378/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/2088596378/bsp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2088596378/bsp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D_PLIB_UNSUPPORTED="" -I"/system_config" -I"/driver/usart" -I"/driver" -I"/system/common" -I"/system/console" -I"/system/console/src" -I"/system/debug" -I"/system/devcon" -I"/system/int" -I"/system/ports" -I"/system" -I"/driver/usart" -I"/driver" -I"/system/common" -I"/system/console" -I"/system/console/src" -I"/system/debug" -I"/system/devcon" -I"/system/int" -I"/system/ports" -I"/system" -I"/system/clk" -I"/system/clk/src" -I"/system_config/pic32mx795_pim_e16" -I"/pic32mx795_pim_e16" -I"/system_config/pic32mx795_pim_e16/framework" -I"/system_config/pic32mx795_pim_e16/bsp" -I"/system_config/pic32mx795_pim_e16" -I"/pic32mx795_pim_e16" -I"/system_config/pic32mx795_pim_e16/framework" -I"/system_config/pic32mx795_pim_e16/bsp" -I"../src" -I"../src/system_config/pic32mx795_pim_e16" -I"../src/pic32mx795_pim_e16" -I"../../../../../../framework" -I"../src/system_config/pic32mx795_pim_e16/framework" -I"../src/system_config/pic32mx795_pim_e16/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/2088596378/bsp.o.d" -o ${OBJECTDIR}/_ext/2088596378/bsp.o ../src/system_config/pic32mx795_pim_e16/bsp/bsp.c    -DXPRJ_pic32mx795_pim_e16=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/802619391/sys_clk_pic32mx.o: ../src/system_config/pic32mx795_pim_e16/framework/system/clk/src/sys_clk_pic32mx.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/802619391" 
	@${RM} ${OBJECTDIR}/_ext/802619391/sys_clk_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/802619391/sys_clk_pic32mx.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/802619391/sys_clk_pic32mx.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D_PLIB_UNSUPPORTED="" -I"/system_config" -I"/driver/usart" -I"/driver" -I"/system/common" -I"/system/console" -I"/system/console/src" -I"/system/debug" -I"/system/devcon" -I"/system/int" -I"/system/ports" -I"/system" -I"/driver/usart" -I"/driver" -I"/system/common" -I"/system/console" -I"/system/console/src" -I"/system/debug" -I"/system/devcon" -I"/system/int" -I"/system/ports" -I"/system" -I"/system/clk" -I"/system/clk/src" -I"/system_config/pic32mx795_pim_e16" -I"/pic32mx795_pim_e16" -I"/system_config/pic32mx795_pim_e16/framework" -I"/system_config/pic32mx795_pim_e16/bsp" -I"/system_config/pic32mx795_pim_e16" -I"/pic32mx795_pim_e16" -I"/system_config/pic32mx795_pim_e16/framework" -I"/system_config/pic32mx795_pim_e16/bsp" -I"../src" -I"../src/system_config/pic32mx795_pim_e16" -I"../src/pic32mx795_pim_e16" -I"../../../../../../framework" -I"../src/system_config/pic32mx795_pim_e16/framework" -I"../src/system_config/pic32mx795_pim_e16/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/802619391/sys_clk_pic32mx.o.d" -o ${OBJECTDIR}/_ext/802619391/sys_clk_pic32mx.o ../src/system_config/pic32mx795_pim_e16/framework/system/clk/src/sys_clk_pic32mx.c    -DXPRJ_pic32mx795_pim_e16=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/403624616/sys_devcon.o: ../src/system_config/pic32mx795_pim_e16/framework/system/devcon/src/sys_devcon.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/403624616" 
	@${RM} ${OBJECTDIR}/_ext/403624616/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/403624616/sys_devcon.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/403624616/sys_devcon.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D_PLIB_UNSUPPORTED="" -I"/system_config" -I"/driver/usart" -I"/driver" -I"/system/common" -I"/system/console" -I"/system/console/src" -I"/system/debug" -I"/system/devcon" -I"/system/int" -I"/system/ports" -I"/system" -I"/driver/usart" -I"/driver" -I"/system/common" -I"/system/console" -I"/system/console/src" -I"/system/debug" -I"/system/devcon" -I"/system/int" -I"/system/ports" -I"/system" -I"/system/clk" -I"/system/clk/src" -I"/system_config/pic32mx795_pim_e16" -I"/pic32mx795_pim_e16" -I"/system_config/pic32mx795_pim_e16/framework" -I"/system_config/pic32mx795_pim_e16/bsp" -I"/system_config/pic32mx795_pim_e16" -I"/pic32mx795_pim_e16" -I"/system_config/pic32mx795_pim_e16/framework" -I"/system_config/pic32mx795_pim_e16/bsp" -I"../src" -I"../src/system_config/pic32mx795_pim_e16" -I"../src/pic32mx795_pim_e16" -I"../../../../../../framework" -I"../src/system_config/pic32mx795_pim_e16/framework" -I"../src/system_config/pic32mx795_pim_e16/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/403624616/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/403624616/sys_devcon.o ../src/system_config/pic32mx795_pim_e16/framework/system/devcon/src/sys_devcon.c    -DXPRJ_pic32mx795_pim_e16=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/403624616/sys_devcon_pic32mx.o: ../src/system_config/pic32mx795_pim_e16/framework/system/devcon/src/sys_devcon_pic32mx.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/403624616" 
	@${RM} ${OBJECTDIR}/_ext/403624616/sys_devcon_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/403624616/sys_devcon_pic32mx.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/403624616/sys_devcon_pic32mx.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D_PLIB_UNSUPPORTED="" -I"/system_config" -I"/driver/usart" -I"/driver" -I"/system/common" -I"/system/console" -I"/system/console/src" -I"/system/debug" -I"/system/devcon" -I"/system/int" -I"/system/ports" -I"/system" -I"/driver/usart" -I"/driver" -I"/system/common" -I"/system/console" -I"/system/console/src" -I"/system/debug" -I"/system/devcon" -I"/system/int" -I"/system/ports" -I"/system" -I"/system/clk" -I"/system/clk/src" -I"/system_config/pic32mx795_pim_e16" -I"/pic32mx795_pim_e16" -I"/system_config/pic32mx795_pim_e16/framework" -I"/system_config/pic32mx795_pim_e16/bsp" -I"/system_config/pic32mx795_pim_e16" -I"/pic32mx795_pim_e16" -I"/system_config/pic32mx795_pim_e16/framework" -I"/system_config/pic32mx795_pim_e16/bsp" -I"../src" -I"../src/system_config/pic32mx795_pim_e16" -I"../src/pic32mx795_pim_e16" -I"../../../../../../framework" -I"../src/system_config/pic32mx795_pim_e16/framework" -I"../src/system_config/pic32mx795_pim_e16/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/403624616/sys_devcon_pic32mx.o.d" -o ${OBJECTDIR}/_ext/403624616/sys_devcon_pic32mx.o ../src/system_config/pic32mx795_pim_e16/framework/system/devcon/src/sys_devcon_pic32mx.c    -DXPRJ_pic32mx795_pim_e16=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/284296305/sys_ports_static.o: ../src/system_config/pic32mx795_pim_e16/framework/system/ports/src/sys_ports_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/284296305" 
	@${RM} ${OBJECTDIR}/_ext/284296305/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/284296305/sys_ports_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/284296305/sys_ports_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D_PLIB_UNSUPPORTED="" -I"/system_config" -I"/driver/usart" -I"/driver" -I"/system/common" -I"/system/console" -I"/system/console/src" -I"/system/debug" -I"/system/devcon" -I"/system/int" -I"/system/ports" -I"/system" -I"/driver/usart" -I"/driver" -I"/system/common" -I"/system/console" -I"/system/console/src" -I"/system/debug" -I"/system/devcon" -I"/system/int" -I"/system/ports" -I"/system" -I"/system/clk" -I"/system/clk/src" -I"/system_config/pic32mx795_pim_e16" -I"/pic32mx795_pim_e16" -I"/system_config/pic32mx795_pim_e16/framework" -I"/system_config/pic32mx795_pim_e16/bsp" -I"/system_config/pic32mx795_pim_e16" -I"/pic32mx795_pim_e16" -I"/system_config/pic32mx795_pim_e16/framework" -I"/system_config/pic32mx795_pim_e16/bsp" -I"../src" -I"../src/system_config/pic32mx795_pim_e16" -I"../src/pic32mx795_pim_e16" -I"../../../../../../framework" -I"../src/system_config/pic32mx795_pim_e16/framework" -I"../src/system_config/pic32mx795_pim_e16/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/284296305/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/284296305/sys_ports_static.o ../src/system_config/pic32mx795_pim_e16/framework/system/ports/src/sys_ports_static.c    -DXPRJ_pic32mx795_pim_e16=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/572292022/system_init.o: ../src/system_config/pic32mx795_pim_e16/system_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/572292022" 
	@${RM} ${OBJECTDIR}/_ext/572292022/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/572292022/system_init.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/572292022/system_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D_PLIB_UNSUPPORTED="" -I"/system_config" -I"/driver/usart" -I"/driver" -I"/system/common" -I"/system/console" -I"/system/console/src" -I"/system/debug" -I"/system/devcon" -I"/system/int" -I"/system/ports" -I"/system" -I"/driver/usart" -I"/driver" -I"/system/common" -I"/system/console" -I"/system/console/src" -I"/system/debug" -I"/system/devcon" -I"/system/int" -I"/system/ports" -I"/system" -I"/system/clk" -I"/system/clk/src" -I"/system_config/pic32mx795_pim_e16" -I"/pic32mx795_pim_e16" -I"/system_config/pic32mx795_pim_e16/framework" -I"/system_config/pic32mx795_pim_e16/bsp" -I"/system_config/pic32mx795_pim_e16" -I"/pic32mx795_pim_e16" -I"/system_config/pic32mx795_pim_e16/framework" -I"/system_config/pic32mx795_pim_e16/bsp" -I"../src" -I"../src/system_config/pic32mx795_pim_e16" -I"../src/pic32mx795_pim_e16" -I"../../../../../../framework" -I"../src/system_config/pic32mx795_pim_e16/framework" -I"../src/system_config/pic32mx795_pim_e16/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/572292022/system_init.o.d" -o ${OBJECTDIR}/_ext/572292022/system_init.o ../src/system_config/pic32mx795_pim_e16/system_init.c    -DXPRJ_pic32mx795_pim_e16=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/572292022/system_interrupt.o: ../src/system_config/pic32mx795_pim_e16/system_interrupt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/572292022" 
	@${RM} ${OBJECTDIR}/_ext/572292022/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/572292022/system_interrupt.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/572292022/system_interrupt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D_PLIB_UNSUPPORTED="" -I"/system_config" -I"/driver/usart" -I"/driver" -I"/system/common" -I"/system/console" -I"/system/console/src" -I"/system/debug" -I"/system/devcon" -I"/system/int" -I"/system/ports" -I"/system" -I"/driver/usart" -I"/driver" -I"/system/common" -I"/system/console" -I"/system/console/src" -I"/system/debug" -I"/system/devcon" -I"/system/int" -I"/system/ports" -I"/system" -I"/system/clk" -I"/system/clk/src" -I"/system_config/pic32mx795_pim_e16" -I"/pic32mx795_pim_e16" -I"/system_config/pic32mx795_pim_e16/framework" -I"/system_config/pic32mx795_pim_e16/bsp" -I"/system_config/pic32mx795_pim_e16" -I"/pic32mx795_pim_e16" -I"/system_config/pic32mx795_pim_e16/framework" -I"/system_config/pic32mx795_pim_e16/bsp" -I"../src" -I"../src/system_config/pic32mx795_pim_e16" -I"../src/pic32mx795_pim_e16" -I"../../../../../../framework" -I"../src/system_config/pic32mx795_pim_e16/framework" -I"../src/system_config/pic32mx795_pim_e16/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/572292022/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/572292022/system_interrupt.o ../src/system_config/pic32mx795_pim_e16/system_interrupt.c    -DXPRJ_pic32mx795_pim_e16=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/572292022/system_exceptions.o: ../src/system_config/pic32mx795_pim_e16/system_exceptions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/572292022" 
	@${RM} ${OBJECTDIR}/_ext/572292022/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/572292022/system_exceptions.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/572292022/system_exceptions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D_PLIB_UNSUPPORTED="" -I"/system_config" -I"/driver/usart" -I"/driver" -I"/system/common" -I"/system/console" -I"/system/console/src" -I"/system/debug" -I"/system/devcon" -I"/system/int" -I"/system/ports" -I"/system" -I"/driver/usart" -I"/driver" -I"/system/common" -I"/system/console" -I"/system/console/src" -I"/system/debug" -I"/system/devcon" -I"/system/int" -I"/system/ports" -I"/system" -I"/system/clk" -I"/system/clk/src" -I"/system_config/pic32mx795_pim_e16" -I"/pic32mx795_pim_e16" -I"/system_config/pic32mx795_pim_e16/framework" -I"/system_config/pic32mx795_pim_e16/bsp" -I"/system_config/pic32mx795_pim_e16" -I"/pic32mx795_pim_e16" -I"/system_config/pic32mx795_pim_e16/framework" -I"/system_config/pic32mx795_pim_e16/bsp" -I"../src" -I"../src/system_config/pic32mx795_pim_e16" -I"../src/pic32mx795_pim_e16" -I"../../../../../../framework" -I"../src/system_config/pic32mx795_pim_e16/framework" -I"../src/system_config/pic32mx795_pim_e16/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/572292022/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/572292022/system_exceptions.o ../src/system_config/pic32mx795_pim_e16/system_exceptions.c    -DXPRJ_pic32mx795_pim_e16=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/572292022/system_tasks.o: ../src/system_config/pic32mx795_pim_e16/system_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/572292022" 
	@${RM} ${OBJECTDIR}/_ext/572292022/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/572292022/system_tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/572292022/system_tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D_PLIB_UNSUPPORTED="" -I"/system_config" -I"/driver/usart" -I"/driver" -I"/system/common" -I"/system/console" -I"/system/console/src" -I"/system/debug" -I"/system/devcon" -I"/system/int" -I"/system/ports" -I"/system" -I"/driver/usart" -I"/driver" -I"/system/common" -I"/system/console" -I"/system/console/src" -I"/system/debug" -I"/system/devcon" -I"/system/int" -I"/system/ports" -I"/system" -I"/system/clk" -I"/system/clk/src" -I"/system_config/pic32mx795_pim_e16" -I"/pic32mx795_pim_e16" -I"/system_config/pic32mx795_pim_e16/framework" -I"/system_config/pic32mx795_pim_e16/bsp" -I"/system_config/pic32mx795_pim_e16" -I"/pic32mx795_pim_e16" -I"/system_config/pic32mx795_pim_e16/framework" -I"/system_config/pic32mx795_pim_e16/bsp" -I"../src" -I"../src/system_config/pic32mx795_pim_e16" -I"../src/pic32mx795_pim_e16" -I"../../../../../../framework" -I"../src/system_config/pic32mx795_pim_e16/framework" -I"../src/system_config/pic32mx795_pim_e16/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/572292022/system_tasks.o.d" -o ${OBJECTDIR}/_ext/572292022/system_tasks.o ../src/system_config/pic32mx795_pim_e16/system_tasks.c    -DXPRJ_pic32mx795_pim_e16=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/app.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D_PLIB_UNSUPPORTED="" -I"/system_config" -I"/driver/usart" -I"/driver" -I"/system/common" -I"/system/console" -I"/system/console/src" -I"/system/debug" -I"/system/devcon" -I"/system/int" -I"/system/ports" -I"/system" -I"/driver/usart" -I"/driver" -I"/system/common" -I"/system/console" -I"/system/console/src" -I"/system/debug" -I"/system/devcon" -I"/system/int" -I"/system/ports" -I"/system" -I"/system/clk" -I"/system/clk/src" -I"/system_config/pic32mx795_pim_e16" -I"/pic32mx795_pim_e16" -I"/system_config/pic32mx795_pim_e16/framework" -I"/system_config/pic32mx795_pim_e16/bsp" -I"/system_config/pic32mx795_pim_e16" -I"/pic32mx795_pim_e16" -I"/system_config/pic32mx795_pim_e16/framework" -I"/system_config/pic32mx795_pim_e16/bsp" -I"../src" -I"../src/system_config/pic32mx795_pim_e16" -I"../src/pic32mx795_pim_e16" -I"../../../../../../framework" -I"../src/system_config/pic32mx795_pim_e16/framework" -I"../src/system_config/pic32mx795_pim_e16/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_pic32mx795_pim_e16=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D_PLIB_UNSUPPORTED="" -I"/system_config" -I"/driver/usart" -I"/driver" -I"/system/common" -I"/system/console" -I"/system/console/src" -I"/system/debug" -I"/system/devcon" -I"/system/int" -I"/system/ports" -I"/system" -I"/driver/usart" -I"/driver" -I"/system/common" -I"/system/console" -I"/system/console/src" -I"/system/debug" -I"/system/devcon" -I"/system/int" -I"/system/ports" -I"/system" -I"/system/clk" -I"/system/clk/src" -I"/system_config/pic32mx795_pim_e16" -I"/pic32mx795_pim_e16" -I"/system_config/pic32mx795_pim_e16/framework" -I"/system_config/pic32mx795_pim_e16/bsp" -I"/system_config/pic32mx795_pim_e16" -I"/pic32mx795_pim_e16" -I"/system_config/pic32mx795_pim_e16/framework" -I"/system_config/pic32mx795_pim_e16/bsp" -I"../src" -I"../src/system_config/pic32mx795_pim_e16" -I"../src/pic32mx795_pim_e16" -I"../../../../../../framework" -I"../src/system_config/pic32mx795_pim_e16/framework" -I"../src/system_config/pic32mx795_pim_e16/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32mx795_pim_e16=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1927798604/drv_usart.o: ../../../../../../framework/driver/usart/src/dynamic/drv_usart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1927798604" 
	@${RM} ${OBJECTDIR}/_ext/1927798604/drv_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1927798604/drv_usart.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1927798604/drv_usart.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D_PLIB_UNSUPPORTED="" -I"/system_config" -I"/driver/usart" -I"/driver" -I"/system/common" -I"/system/console" -I"/system/console/src" -I"/system/debug" -I"/system/devcon" -I"/system/int" -I"/system/ports" -I"/system" -I"/driver/usart" -I"/driver" -I"/system/common" -I"/system/console" -I"/system/console/src" -I"/system/debug" -I"/system/devcon" -I"/system/int" -I"/system/ports" -I"/system" -I"/system/clk" -I"/system/clk/src" -I"/system_config/pic32mx795_pim_e16" -I"/pic32mx795_pim_e16" -I"/system_config/pic32mx795_pim_e16/framework" -I"/system_config/pic32mx795_pim_e16/bsp" -I"/system_config/pic32mx795_pim_e16" -I"/pic32mx795_pim_e16" -I"/system_config/pic32mx795_pim_e16/framework" -I"/system_config/pic32mx795_pim_e16/bsp" -I"../src" -I"../src/system_config/pic32mx795_pim_e16" -I"../src/pic32mx795_pim_e16" -I"../../../../../../framework" -I"../src/system_config/pic32mx795_pim_e16/framework" -I"../src/system_config/pic32mx795_pim_e16/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1927798604/drv_usart.o.d" -o ${OBJECTDIR}/_ext/1927798604/drv_usart.o ../../../../../../framework/driver/usart/src/dynamic/drv_usart.c    -DXPRJ_pic32mx795_pim_e16=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1927798604/drv_usart_buffer_queue.o: ../../../../../../framework/driver/usart/src/dynamic/drv_usart_buffer_queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1927798604" 
	@${RM} ${OBJECTDIR}/_ext/1927798604/drv_usart_buffer_queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1927798604/drv_usart_buffer_queue.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1927798604/drv_usart_buffer_queue.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D_PLIB_UNSUPPORTED="" -I"/system_config" -I"/driver/usart" -I"/driver" -I"/system/common" -I"/system/console" -I"/system/console/src" -I"/system/debug" -I"/system/devcon" -I"/system/int" -I"/system/ports" -I"/system" -I"/driver/usart" -I"/driver" -I"/system/common" -I"/system/console" -I"/system/console/src" -I"/system/debug" -I"/system/devcon" -I"/system/int" -I"/system/ports" -I"/system" -I"/system/clk" -I"/system/clk/src" -I"/system_config/pic32mx795_pim_e16" -I"/pic32mx795_pim_e16" -I"/system_config/pic32mx795_pim_e16/framework" -I"/system_config/pic32mx795_pim_e16/bsp" -I"/system_config/pic32mx795_pim_e16" -I"/pic32mx795_pim_e16" -I"/system_config/pic32mx795_pim_e16/framework" -I"/system_config/pic32mx795_pim_e16/bsp" -I"../src" -I"../src/system_config/pic32mx795_pim_e16" -I"../src/pic32mx795_pim_e16" -I"../../../../../../framework" -I"../src/system_config/pic32mx795_pim_e16/framework" -I"../src/system_config/pic32mx795_pim_e16/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1927798604/drv_usart_buffer_queue.o.d" -o ${OBJECTDIR}/_ext/1927798604/drv_usart_buffer_queue.o ../../../../../../framework/driver/usart/src/dynamic/drv_usart_buffer_queue.c    -DXPRJ_pic32mx795_pim_e16=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1927798604/drv_usart_read_write.o: ../../../../../../framework/driver/usart/src/dynamic/drv_usart_read_write.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1927798604" 
	@${RM} ${OBJECTDIR}/_ext/1927798604/drv_usart_read_write.o.d 
	@${RM} ${OBJECTDIR}/_ext/1927798604/drv_usart_read_write.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1927798604/drv_usart_read_write.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D_PLIB_UNSUPPORTED="" -I"/system_config" -I"/driver/usart" -I"/driver" -I"/system/common" -I"/system/console" -I"/system/console/src" -I"/system/debug" -I"/system/devcon" -I"/system/int" -I"/system/ports" -I"/system" -I"/driver/usart" -I"/driver" -I"/system/common" -I"/system/console" -I"/system/console/src" -I"/system/debug" -I"/system/devcon" -I"/system/int" -I"/system/ports" -I"/system" -I"/system/clk" -I"/system/clk/src" -I"/system_config/pic32mx795_pim_e16" -I"/pic32mx795_pim_e16" -I"/system_config/pic32mx795_pim_e16/framework" -I"/system_config/pic32mx795_pim_e16/bsp" -I"/system_config/pic32mx795_pim_e16" -I"/pic32mx795_pim_e16" -I"/system_config/pic32mx795_pim_e16/framework" -I"/system_config/pic32mx795_pim_e16/bsp" -I"../src" -I"../src/system_config/pic32mx795_pim_e16" -I"../src/pic32mx795_pim_e16" -I"../../../../../../framework" -I"../src/system_config/pic32mx795_pim_e16/framework" -I"../src/system_config/pic32mx795_pim_e16/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1927798604/drv_usart_read_write.o.d" -o ${OBJECTDIR}/_ext/1927798604/drv_usart_read_write.o ../../../../../../framework/driver/usart/src/dynamic/drv_usart_read_write.c    -DXPRJ_pic32mx795_pim_e16=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/994638301/sys_console.o: ../../../../../../framework/system/console/src/sys_console.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/994638301" 
	@${RM} ${OBJECTDIR}/_ext/994638301/sys_console.o.d 
	@${RM} ${OBJECTDIR}/_ext/994638301/sys_console.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/994638301/sys_console.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D_PLIB_UNSUPPORTED="" -I"/system_config" -I"/driver/usart" -I"/driver" -I"/system/common" -I"/system/console" -I"/system/console/src" -I"/system/debug" -I"/system/devcon" -I"/system/int" -I"/system/ports" -I"/system" -I"/driver/usart" -I"/driver" -I"/system/common" -I"/system/console" -I"/system/console/src" -I"/system/debug" -I"/system/devcon" -I"/system/int" -I"/system/ports" -I"/system" -I"/system/clk" -I"/system/clk/src" -I"/system_config/pic32mx795_pim_e16" -I"/pic32mx795_pim_e16" -I"/system_config/pic32mx795_pim_e16/framework" -I"/system_config/pic32mx795_pim_e16/bsp" -I"/system_config/pic32mx795_pim_e16" -I"/pic32mx795_pim_e16" -I"/system_config/pic32mx795_pim_e16/framework" -I"/system_config/pic32mx795_pim_e16/bsp" -I"../src" -I"../src/system_config/pic32mx795_pim_e16" -I"../src/pic32mx795_pim_e16" -I"../../../../../../framework" -I"../src/system_config/pic32mx795_pim_e16/framework" -I"../src/system_config/pic32mx795_pim_e16/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/994638301/sys_console.o.d" -o ${OBJECTDIR}/_ext/994638301/sys_console.o ../../../../../../framework/system/console/src/sys_console.c    -DXPRJ_pic32mx795_pim_e16=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/994638301/sys_console_uart.o: ../../../../../../framework/system/console/src/sys_console_uart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/994638301" 
	@${RM} ${OBJECTDIR}/_ext/994638301/sys_console_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/994638301/sys_console_uart.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/994638301/sys_console_uart.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D_PLIB_UNSUPPORTED="" -I"/system_config" -I"/driver/usart" -I"/driver" -I"/system/common" -I"/system/console" -I"/system/console/src" -I"/system/debug" -I"/system/devcon" -I"/system/int" -I"/system/ports" -I"/system" -I"/driver/usart" -I"/driver" -I"/system/common" -I"/system/console" -I"/system/console/src" -I"/system/debug" -I"/system/devcon" -I"/system/int" -I"/system/ports" -I"/system" -I"/system/clk" -I"/system/clk/src" -I"/system_config/pic32mx795_pim_e16" -I"/pic32mx795_pim_e16" -I"/system_config/pic32mx795_pim_e16/framework" -I"/system_config/pic32mx795_pim_e16/bsp" -I"/system_config/pic32mx795_pim_e16" -I"/pic32mx795_pim_e16" -I"/system_config/pic32mx795_pim_e16/framework" -I"/system_config/pic32mx795_pim_e16/bsp" -I"../src" -I"../src/system_config/pic32mx795_pim_e16" -I"../src/pic32mx795_pim_e16" -I"../../../../../../framework" -I"../src/system_config/pic32mx795_pim_e16/framework" -I"../src/system_config/pic32mx795_pim_e16/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/994638301/sys_console_uart.o.d" -o ${OBJECTDIR}/_ext/994638301/sys_console_uart.o ../../../../../../framework/system/console/src/sys_console_uart.c    -DXPRJ_pic32mx795_pim_e16=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/322127129/sys_debug.o: ../../../../../../framework/system/debug/src/sys_debug.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/322127129" 
	@${RM} ${OBJECTDIR}/_ext/322127129/sys_debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/322127129/sys_debug.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/322127129/sys_debug.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D_PLIB_UNSUPPORTED="" -I"/system_config" -I"/driver/usart" -I"/driver" -I"/system/common" -I"/system/console" -I"/system/console/src" -I"/system/debug" -I"/system/devcon" -I"/system/int" -I"/system/ports" -I"/system" -I"/driver/usart" -I"/driver" -I"/system/common" -I"/system/console" -I"/system/console/src" -I"/system/debug" -I"/system/devcon" -I"/system/int" -I"/system/ports" -I"/system" -I"/system/clk" -I"/system/clk/src" -I"/system_config/pic32mx795_pim_e16" -I"/pic32mx795_pim_e16" -I"/system_config/pic32mx795_pim_e16/framework" -I"/system_config/pic32mx795_pim_e16/bsp" -I"/system_config/pic32mx795_pim_e16" -I"/pic32mx795_pim_e16" -I"/system_config/pic32mx795_pim_e16/framework" -I"/system_config/pic32mx795_pim_e16/bsp" -I"../src" -I"../src/system_config/pic32mx795_pim_e16" -I"../src/pic32mx795_pim_e16" -I"../../../../../../framework" -I"../src/system_config/pic32mx795_pim_e16/framework" -I"../src/system_config/pic32mx795_pim_e16/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/322127129/sys_debug.o.d" -o ${OBJECTDIR}/_ext/322127129/sys_debug.o ../../../../../../framework/system/debug/src/sys_debug.c    -DXPRJ_pic32mx795_pim_e16=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/711155467/sys_int_pic32.o: ../../../../../../framework/system/int/src/sys_int_pic32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/711155467" 
	@${RM} ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/711155467/sys_int_pic32.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D_PLIB_UNSUPPORTED="" -I"/system_config" -I"/driver/usart" -I"/driver" -I"/system/common" -I"/system/console" -I"/system/console/src" -I"/system/debug" -I"/system/devcon" -I"/system/int" -I"/system/ports" -I"/system" -I"/driver/usart" -I"/driver" -I"/system/common" -I"/system/console" -I"/system/console/src" -I"/system/debug" -I"/system/devcon" -I"/system/int" -I"/system/ports" -I"/system" -I"/system/clk" -I"/system/clk/src" -I"/system_config/pic32mx795_pim_e16" -I"/pic32mx795_pim_e16" -I"/system_config/pic32mx795_pim_e16/framework" -I"/system_config/pic32mx795_pim_e16/bsp" -I"/system_config/pic32mx795_pim_e16" -I"/pic32mx795_pim_e16" -I"/system_config/pic32mx795_pim_e16/framework" -I"/system_config/pic32mx795_pim_e16/bsp" -I"../src" -I"../src/system_config/pic32mx795_pim_e16" -I"../src/pic32mx795_pim_e16" -I"../../../../../../framework" -I"../src/system_config/pic32mx795_pim_e16/framework" -I"../src/system_config/pic32mx795_pim_e16/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/711155467/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o ../../../../../../framework/system/int/src/sys_int_pic32.c    -DXPRJ_pic32mx795_pim_e16=$(CND_CONF)    $(COMPARISON_BUILD) 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/debug_uart.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../../../bin/framework/peripheral/PIC32MX795F512L_peripherals.a  
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_REAL_ICE=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/debug_uart.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\..\..\..\..\..\bin\framework\peripheral\PIC32MX795F512L_peripherals.a      -DXPRJ_pic32mx795_pim_e16=$(CND_CONF)    $(COMPARISON_BUILD)   -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC02000:0x1FC02FEF -mreserve=boot@0x1FC02000:0x1FC024FF  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_REAL_ICE=1,--defsym=_min_heap_size=2048,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/debug_uart.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../../../bin/framework/peripheral/PIC32MX795F512L_peripherals.a 
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/debug_uart.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\..\..\..\..\..\bin\framework\peripheral\PIC32MX795F512L_peripherals.a      -DXPRJ_pic32mx795_pim_e16=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=2048,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/debug_uart.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/pic32mx795_pim_e16
	${RM} -r dist/pic32mx795_pim_e16

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
