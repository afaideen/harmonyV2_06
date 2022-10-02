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
ifeq "$(wildcard nbproject/Makefile-local-pic32mz_curiosity_v2.mk)" "nbproject/Makefile-local-pic32mz_curiosity_v2.mk"
include nbproject/Makefile-local-pic32mz_curiosity_v2.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=pic32mz_curiosity_v2
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/uart_basic.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/uart_basic.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=../src/system_config/pic32mz_curiosity_v2/bsp/bsp.c ../src/system_config/pic32mz_curiosity_v2/framework/driver/usart/src/drv_usart_mapping.c ../src/system_config/pic32mz_curiosity_v2/framework/driver/usart/src/drv_usart_static.c ../src/system_config/pic32mz_curiosity_v2/framework/driver/usart/src/drv_usart_static_byte_model.c ../src/system_config/pic32mz_curiosity_v2/framework/system/clk/src/sys_clk_pic32mz.c ../src/system_config/pic32mz_curiosity_v2/framework/system/console/src/sys_console_static.c ../src/system_config/pic32mz_curiosity_v2/framework/system/ports/src/sys_ports_static.c ../src/system_config/pic32mz_curiosity_v2/framework/system/reset/src/sys_reset.c ../src/system_config/pic32mz_curiosity_v2/system_init.c ../src/system_config/pic32mz_curiosity_v2/system_interrupt.c ../src/system_config/pic32mz_curiosity_v2/system_exceptions.c ../src/system_config/pic32mz_curiosity_v2/system_tasks.c ../src/app.c ../src/main.c ../../../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c ../../../../../../../framework/system/command/src/sys_command.c ../../../../../../../framework/system/common/src/sys_buffer.c ../../../../../../../framework/system/common/src/sys_queue.c ../../../../../../../framework/system/debug/src/sys_debug.c ../../../../../../../framework/system/devcon/src/sys_devcon.c ../../../../../../../framework/system/devcon/src/sys_devcon_pic32mz.c ../../../../../../../framework/system/devcon/src/sys_devcon_cache_pic32mz.S ../../../../../../../framework/system/int/src/sys_int_pic32.c ../../../../../../../framework/system/tmr/src/sys_tmr.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1805060854/bsp.o ${OBJECTDIR}/_ext/1261225095/drv_usart_mapping.o ${OBJECTDIR}/_ext/1261225095/drv_usart_static.o ${OBJECTDIR}/_ext/1261225095/drv_usart_static_byte_model.o ${OBJECTDIR}/_ext/327211555/sys_clk_pic32mz.o ${OBJECTDIR}/_ext/26884974/sys_console_static.o ${OBJECTDIR}/_ext/1884693325/sys_ports_static.o ${OBJECTDIR}/_ext/1519459830/sys_reset.o ${OBJECTDIR}/_ext/1673057882/system_init.o ${OBJECTDIR}/_ext/1673057882/system_interrupt.o ${OBJECTDIR}/_ext/1673057882/system_exceptions.o ${OBJECTDIR}/_ext/1673057882/system_tasks.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1085120521/drv_tmr.o ${OBJECTDIR}/_ext/890348032/sys_command.o ${OBJECTDIR}/_ext/1788741920/sys_buffer.o ${OBJECTDIR}/_ext/1788741920/sys_queue.o ${OBJECTDIR}/_ext/433763064/sys_debug.o ${OBJECTDIR}/_ext/1424708930/sys_devcon.o ${OBJECTDIR}/_ext/1424708930/sys_devcon_pic32mz.o ${OBJECTDIR}/_ext/1424708930/sys_devcon_cache_pic32mz.o ${OBJECTDIR}/_ext/1140991836/sys_int_pic32.o ${OBJECTDIR}/_ext/1137870/sys_tmr.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1805060854/bsp.o.d ${OBJECTDIR}/_ext/1261225095/drv_usart_mapping.o.d ${OBJECTDIR}/_ext/1261225095/drv_usart_static.o.d ${OBJECTDIR}/_ext/1261225095/drv_usart_static_byte_model.o.d ${OBJECTDIR}/_ext/327211555/sys_clk_pic32mz.o.d ${OBJECTDIR}/_ext/26884974/sys_console_static.o.d ${OBJECTDIR}/_ext/1884693325/sys_ports_static.o.d ${OBJECTDIR}/_ext/1519459830/sys_reset.o.d ${OBJECTDIR}/_ext/1673057882/system_init.o.d ${OBJECTDIR}/_ext/1673057882/system_interrupt.o.d ${OBJECTDIR}/_ext/1673057882/system_exceptions.o.d ${OBJECTDIR}/_ext/1673057882/system_tasks.o.d ${OBJECTDIR}/_ext/1360937237/app.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1085120521/drv_tmr.o.d ${OBJECTDIR}/_ext/890348032/sys_command.o.d ${OBJECTDIR}/_ext/1788741920/sys_buffer.o.d ${OBJECTDIR}/_ext/1788741920/sys_queue.o.d ${OBJECTDIR}/_ext/433763064/sys_debug.o.d ${OBJECTDIR}/_ext/1424708930/sys_devcon.o.d ${OBJECTDIR}/_ext/1424708930/sys_devcon_pic32mz.o.d ${OBJECTDIR}/_ext/1424708930/sys_devcon_cache_pic32mz.o.d ${OBJECTDIR}/_ext/1140991836/sys_int_pic32.o.d ${OBJECTDIR}/_ext/1137870/sys_tmr.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1805060854/bsp.o ${OBJECTDIR}/_ext/1261225095/drv_usart_mapping.o ${OBJECTDIR}/_ext/1261225095/drv_usart_static.o ${OBJECTDIR}/_ext/1261225095/drv_usart_static_byte_model.o ${OBJECTDIR}/_ext/327211555/sys_clk_pic32mz.o ${OBJECTDIR}/_ext/26884974/sys_console_static.o ${OBJECTDIR}/_ext/1884693325/sys_ports_static.o ${OBJECTDIR}/_ext/1519459830/sys_reset.o ${OBJECTDIR}/_ext/1673057882/system_init.o ${OBJECTDIR}/_ext/1673057882/system_interrupt.o ${OBJECTDIR}/_ext/1673057882/system_exceptions.o ${OBJECTDIR}/_ext/1673057882/system_tasks.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1085120521/drv_tmr.o ${OBJECTDIR}/_ext/890348032/sys_command.o ${OBJECTDIR}/_ext/1788741920/sys_buffer.o ${OBJECTDIR}/_ext/1788741920/sys_queue.o ${OBJECTDIR}/_ext/433763064/sys_debug.o ${OBJECTDIR}/_ext/1424708930/sys_devcon.o ${OBJECTDIR}/_ext/1424708930/sys_devcon_pic32mz.o ${OBJECTDIR}/_ext/1424708930/sys_devcon_cache_pic32mz.o ${OBJECTDIR}/_ext/1140991836/sys_int_pic32.o ${OBJECTDIR}/_ext/1137870/sys_tmr.o

# Source Files
SOURCEFILES=../src/system_config/pic32mz_curiosity_v2/bsp/bsp.c ../src/system_config/pic32mz_curiosity_v2/framework/driver/usart/src/drv_usart_mapping.c ../src/system_config/pic32mz_curiosity_v2/framework/driver/usart/src/drv_usart_static.c ../src/system_config/pic32mz_curiosity_v2/framework/driver/usart/src/drv_usart_static_byte_model.c ../src/system_config/pic32mz_curiosity_v2/framework/system/clk/src/sys_clk_pic32mz.c ../src/system_config/pic32mz_curiosity_v2/framework/system/console/src/sys_console_static.c ../src/system_config/pic32mz_curiosity_v2/framework/system/ports/src/sys_ports_static.c ../src/system_config/pic32mz_curiosity_v2/framework/system/reset/src/sys_reset.c ../src/system_config/pic32mz_curiosity_v2/system_init.c ../src/system_config/pic32mz_curiosity_v2/system_interrupt.c ../src/system_config/pic32mz_curiosity_v2/system_exceptions.c ../src/system_config/pic32mz_curiosity_v2/system_tasks.c ../src/app.c ../src/main.c ../../../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c ../../../../../../../framework/system/command/src/sys_command.c ../../../../../../../framework/system/common/src/sys_buffer.c ../../../../../../../framework/system/common/src/sys_queue.c ../../../../../../../framework/system/debug/src/sys_debug.c ../../../../../../../framework/system/devcon/src/sys_devcon.c ../../../../../../../framework/system/devcon/src/sys_devcon_pic32mz.c ../../../../../../../framework/system/devcon/src/sys_devcon_cache_pic32mz.S ../../../../../../../framework/system/int/src/sys_int_pic32.c ../../../../../../../framework/system/tmr/src/sys_tmr.c



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
	${MAKE}  -f nbproject/Makefile-pic32mz_curiosity_v2.mk ${DISTDIR}/uart_basic.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MZ2048EFM144
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1424708930/sys_devcon_cache_pic32mz.o: ../../../../../../../framework/system/devcon/src/sys_devcon_cache_pic32mz.S  .generated_files/flags/pic32mz_curiosity_v2/fb4a81895b205ff77d95aea5165874c9539b7619 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1424708930" 
	@${RM} ${OBJECTDIR}/_ext/1424708930/sys_devcon_cache_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/1424708930/sys_devcon_cache_pic32mz.o 
	@${RM} ${OBJECTDIR}/_ext/1424708930/sys_devcon_cache_pic32mz.o.ok ${OBJECTDIR}/_ext/1424708930/sys_devcon_cache_pic32mz.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1424708930/sys_devcon_cache_pic32mz.o.d"  -o ${OBJECTDIR}/_ext/1424708930/sys_devcon_cache_pic32mz.o ../../../../../../../framework/system/devcon/src/sys_devcon_cache_pic32mz.S  -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1424708930/sys_devcon_cache_pic32mz.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1424708930/sys_devcon_cache_pic32mz.o.d" "${OBJECTDIR}/_ext/1424708930/sys_devcon_cache_pic32mz.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/1424708930/sys_devcon_cache_pic32mz.o: ../../../../../../../framework/system/devcon/src/sys_devcon_cache_pic32mz.S  .generated_files/flags/pic32mz_curiosity_v2/bb64ddcab696f824fab555b6739ed5c07c17a3ff .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1424708930" 
	@${RM} ${OBJECTDIR}/_ext/1424708930/sys_devcon_cache_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/1424708930/sys_devcon_cache_pic32mz.o 
	@${RM} ${OBJECTDIR}/_ext/1424708930/sys_devcon_cache_pic32mz.o.ok ${OBJECTDIR}/_ext/1424708930/sys_devcon_cache_pic32mz.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1424708930/sys_devcon_cache_pic32mz.o.d"  -o ${OBJECTDIR}/_ext/1424708930/sys_devcon_cache_pic32mz.o ../../../../../../../framework/system/devcon/src/sys_devcon_cache_pic32mz.S  -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1424708930/sys_devcon_cache_pic32mz.o.asm.d",--gdwarf-2 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1424708930/sys_devcon_cache_pic32mz.o.d" "${OBJECTDIR}/_ext/1424708930/sys_devcon_cache_pic32mz.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1805060854/bsp.o: ../src/system_config/pic32mz_curiosity_v2/bsp/bsp.c  .generated_files/flags/pic32mz_curiosity_v2/114a017c56f56f1524477a9a9df0e3a0878f78d1 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1805060854" 
	@${RM} ${OBJECTDIR}/_ext/1805060854/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1805060854/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1805060854/bsp.o.d" -o ${OBJECTDIR}/_ext/1805060854/bsp.o ../src/system_config/pic32mz_curiosity_v2/bsp/bsp.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1261225095/drv_usart_mapping.o: ../src/system_config/pic32mz_curiosity_v2/framework/driver/usart/src/drv_usart_mapping.c  .generated_files/flags/pic32mz_curiosity_v2/d2853f938c130c9a889f69232652f887ee2d6a77 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1261225095" 
	@${RM} ${OBJECTDIR}/_ext/1261225095/drv_usart_mapping.o.d 
	@${RM} ${OBJECTDIR}/_ext/1261225095/drv_usart_mapping.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1261225095/drv_usart_mapping.o.d" -o ${OBJECTDIR}/_ext/1261225095/drv_usart_mapping.o ../src/system_config/pic32mz_curiosity_v2/framework/driver/usart/src/drv_usart_mapping.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1261225095/drv_usart_static.o: ../src/system_config/pic32mz_curiosity_v2/framework/driver/usart/src/drv_usart_static.c  .generated_files/flags/pic32mz_curiosity_v2/89ceeb869171f0cc186b72090808afbde4fea78e .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1261225095" 
	@${RM} ${OBJECTDIR}/_ext/1261225095/drv_usart_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/1261225095/drv_usart_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1261225095/drv_usart_static.o.d" -o ${OBJECTDIR}/_ext/1261225095/drv_usart_static.o ../src/system_config/pic32mz_curiosity_v2/framework/driver/usart/src/drv_usart_static.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1261225095/drv_usart_static_byte_model.o: ../src/system_config/pic32mz_curiosity_v2/framework/driver/usart/src/drv_usart_static_byte_model.c  .generated_files/flags/pic32mz_curiosity_v2/ab9436e773b1664292d55654144931dbbe901be7 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1261225095" 
	@${RM} ${OBJECTDIR}/_ext/1261225095/drv_usart_static_byte_model.o.d 
	@${RM} ${OBJECTDIR}/_ext/1261225095/drv_usart_static_byte_model.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1261225095/drv_usart_static_byte_model.o.d" -o ${OBJECTDIR}/_ext/1261225095/drv_usart_static_byte_model.o ../src/system_config/pic32mz_curiosity_v2/framework/driver/usart/src/drv_usart_static_byte_model.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/327211555/sys_clk_pic32mz.o: ../src/system_config/pic32mz_curiosity_v2/framework/system/clk/src/sys_clk_pic32mz.c  .generated_files/flags/pic32mz_curiosity_v2/ddc3081bb885216967a21837c01e4392ec272af6 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/327211555" 
	@${RM} ${OBJECTDIR}/_ext/327211555/sys_clk_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/327211555/sys_clk_pic32mz.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/327211555/sys_clk_pic32mz.o.d" -o ${OBJECTDIR}/_ext/327211555/sys_clk_pic32mz.o ../src/system_config/pic32mz_curiosity_v2/framework/system/clk/src/sys_clk_pic32mz.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/26884974/sys_console_static.o: ../src/system_config/pic32mz_curiosity_v2/framework/system/console/src/sys_console_static.c  .generated_files/flags/pic32mz_curiosity_v2/a5a0642bd1ae025b5f29ce77236312305fce5c30 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/26884974" 
	@${RM} ${OBJECTDIR}/_ext/26884974/sys_console_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/26884974/sys_console_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26884974/sys_console_static.o.d" -o ${OBJECTDIR}/_ext/26884974/sys_console_static.o ../src/system_config/pic32mz_curiosity_v2/framework/system/console/src/sys_console_static.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1884693325/sys_ports_static.o: ../src/system_config/pic32mz_curiosity_v2/framework/system/ports/src/sys_ports_static.c  .generated_files/flags/pic32mz_curiosity_v2/b800a58272b78ab7b2b94303ace2e8c4dea2c0fb .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1884693325" 
	@${RM} ${OBJECTDIR}/_ext/1884693325/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/1884693325/sys_ports_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1884693325/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/1884693325/sys_ports_static.o ../src/system_config/pic32mz_curiosity_v2/framework/system/ports/src/sys_ports_static.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1519459830/sys_reset.o: ../src/system_config/pic32mz_curiosity_v2/framework/system/reset/src/sys_reset.c  .generated_files/flags/pic32mz_curiosity_v2/6c4225be073ac8f80978625de8ca25f1afd3776 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1519459830" 
	@${RM} ${OBJECTDIR}/_ext/1519459830/sys_reset.o.d 
	@${RM} ${OBJECTDIR}/_ext/1519459830/sys_reset.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1519459830/sys_reset.o.d" -o ${OBJECTDIR}/_ext/1519459830/sys_reset.o ../src/system_config/pic32mz_curiosity_v2/framework/system/reset/src/sys_reset.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1673057882/system_init.o: ../src/system_config/pic32mz_curiosity_v2/system_init.c  .generated_files/flags/pic32mz_curiosity_v2/e552c51f638769c50a6239ea6189aa62da6771ed .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1673057882" 
	@${RM} ${OBJECTDIR}/_ext/1673057882/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1673057882/system_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1673057882/system_init.o.d" -o ${OBJECTDIR}/_ext/1673057882/system_init.o ../src/system_config/pic32mz_curiosity_v2/system_init.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1673057882/system_interrupt.o: ../src/system_config/pic32mz_curiosity_v2/system_interrupt.c  .generated_files/flags/pic32mz_curiosity_v2/966380cb40200d693d22ab0686df0329d3fa6612 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1673057882" 
	@${RM} ${OBJECTDIR}/_ext/1673057882/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1673057882/system_interrupt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1673057882/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/1673057882/system_interrupt.o ../src/system_config/pic32mz_curiosity_v2/system_interrupt.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1673057882/system_exceptions.o: ../src/system_config/pic32mz_curiosity_v2/system_exceptions.c  .generated_files/flags/pic32mz_curiosity_v2/92239ac485648a94ef3e2a24fd77e326796aca0 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1673057882" 
	@${RM} ${OBJECTDIR}/_ext/1673057882/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1673057882/system_exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1673057882/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/1673057882/system_exceptions.o ../src/system_config/pic32mz_curiosity_v2/system_exceptions.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1673057882/system_tasks.o: ../src/system_config/pic32mz_curiosity_v2/system_tasks.c  .generated_files/flags/pic32mz_curiosity_v2/7ae24d40b8102db145041213032475ff023d734 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1673057882" 
	@${RM} ${OBJECTDIR}/_ext/1673057882/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1673057882/system_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1673057882/system_tasks.o.d" -o ${OBJECTDIR}/_ext/1673057882/system_tasks.o ../src/system_config/pic32mz_curiosity_v2/system_tasks.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/pic32mz_curiosity_v2/3f56866db08c98c147d9a9209482ea3f01d88158 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/pic32mz_curiosity_v2/e1c9ad31e1e240d1a74d4c704e4df963358b138d .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1085120521/drv_tmr.o: ../../../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c  .generated_files/flags/pic32mz_curiosity_v2/b9cdb4ebc50baf86857cfd46523889bbb7de733a .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1085120521" 
	@${RM} ${OBJECTDIR}/_ext/1085120521/drv_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1085120521/drv_tmr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1085120521/drv_tmr.o.d" -o ${OBJECTDIR}/_ext/1085120521/drv_tmr.o ../../../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/890348032/sys_command.o: ../../../../../../../framework/system/command/src/sys_command.c  .generated_files/flags/pic32mz_curiosity_v2/e4b610aa290f47ea13fcbd5a4270cdc02325bf91 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/890348032" 
	@${RM} ${OBJECTDIR}/_ext/890348032/sys_command.o.d 
	@${RM} ${OBJECTDIR}/_ext/890348032/sys_command.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/890348032/sys_command.o.d" -o ${OBJECTDIR}/_ext/890348032/sys_command.o ../../../../../../../framework/system/command/src/sys_command.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1788741920/sys_buffer.o: ../../../../../../../framework/system/common/src/sys_buffer.c  .generated_files/flags/pic32mz_curiosity_v2/32dd994ce134bb15bfc638fc6c4d9cbdbca3dd4d .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1788741920" 
	@${RM} ${OBJECTDIR}/_ext/1788741920/sys_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1788741920/sys_buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1788741920/sys_buffer.o.d" -o ${OBJECTDIR}/_ext/1788741920/sys_buffer.o ../../../../../../../framework/system/common/src/sys_buffer.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1788741920/sys_queue.o: ../../../../../../../framework/system/common/src/sys_queue.c  .generated_files/flags/pic32mz_curiosity_v2/bd251459fc7e9a0cb82be2f04cd1001645c52e6e .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1788741920" 
	@${RM} ${OBJECTDIR}/_ext/1788741920/sys_queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1788741920/sys_queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1788741920/sys_queue.o.d" -o ${OBJECTDIR}/_ext/1788741920/sys_queue.o ../../../../../../../framework/system/common/src/sys_queue.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/433763064/sys_debug.o: ../../../../../../../framework/system/debug/src/sys_debug.c  .generated_files/flags/pic32mz_curiosity_v2/f9b69a42e139e85f5bc3ef668b2ab54fe46d61d9 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/433763064" 
	@${RM} ${OBJECTDIR}/_ext/433763064/sys_debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/433763064/sys_debug.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/433763064/sys_debug.o.d" -o ${OBJECTDIR}/_ext/433763064/sys_debug.o ../../../../../../../framework/system/debug/src/sys_debug.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1424708930/sys_devcon.o: ../../../../../../../framework/system/devcon/src/sys_devcon.c  .generated_files/flags/pic32mz_curiosity_v2/cdd5e1fadc73a07c7c535999ec7cba3d7944b91d .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1424708930" 
	@${RM} ${OBJECTDIR}/_ext/1424708930/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/1424708930/sys_devcon.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1424708930/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/1424708930/sys_devcon.o ../../../../../../../framework/system/devcon/src/sys_devcon.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1424708930/sys_devcon_pic32mz.o: ../../../../../../../framework/system/devcon/src/sys_devcon_pic32mz.c  .generated_files/flags/pic32mz_curiosity_v2/66f601613e384b3e40eef2082f07e5579807b527 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1424708930" 
	@${RM} ${OBJECTDIR}/_ext/1424708930/sys_devcon_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/1424708930/sys_devcon_pic32mz.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1424708930/sys_devcon_pic32mz.o.d" -o ${OBJECTDIR}/_ext/1424708930/sys_devcon_pic32mz.o ../../../../../../../framework/system/devcon/src/sys_devcon_pic32mz.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1140991836/sys_int_pic32.o: ../../../../../../../framework/system/int/src/sys_int_pic32.c  .generated_files/flags/pic32mz_curiosity_v2/de93ceb3fa71a6486f9c0ea68ad4663c2965a739 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1140991836" 
	@${RM} ${OBJECTDIR}/_ext/1140991836/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1140991836/sys_int_pic32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1140991836/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/1140991836/sys_int_pic32.o ../../../../../../../framework/system/int/src/sys_int_pic32.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1137870/sys_tmr.o: ../../../../../../../framework/system/tmr/src/sys_tmr.c  .generated_files/flags/pic32mz_curiosity_v2/69b60c0e15807ba413e4327ac823eedf47961ac8 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1137870" 
	@${RM} ${OBJECTDIR}/_ext/1137870/sys_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1137870/sys_tmr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1137870/sys_tmr.o.d" -o ${OBJECTDIR}/_ext/1137870/sys_tmr.o ../../../../../../../framework/system/tmr/src/sys_tmr.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/1805060854/bsp.o: ../src/system_config/pic32mz_curiosity_v2/bsp/bsp.c  .generated_files/flags/pic32mz_curiosity_v2/79811bb1d235e4df04e4529b5a3fe2e71c174888 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1805060854" 
	@${RM} ${OBJECTDIR}/_ext/1805060854/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1805060854/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1805060854/bsp.o.d" -o ${OBJECTDIR}/_ext/1805060854/bsp.o ../src/system_config/pic32mz_curiosity_v2/bsp/bsp.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1261225095/drv_usart_mapping.o: ../src/system_config/pic32mz_curiosity_v2/framework/driver/usart/src/drv_usart_mapping.c  .generated_files/flags/pic32mz_curiosity_v2/83813322a2e9f30a561428a9f27244c000e94626 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1261225095" 
	@${RM} ${OBJECTDIR}/_ext/1261225095/drv_usart_mapping.o.d 
	@${RM} ${OBJECTDIR}/_ext/1261225095/drv_usart_mapping.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1261225095/drv_usart_mapping.o.d" -o ${OBJECTDIR}/_ext/1261225095/drv_usart_mapping.o ../src/system_config/pic32mz_curiosity_v2/framework/driver/usart/src/drv_usart_mapping.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1261225095/drv_usart_static.o: ../src/system_config/pic32mz_curiosity_v2/framework/driver/usart/src/drv_usart_static.c  .generated_files/flags/pic32mz_curiosity_v2/534ff933658f8d4d12721dc3cf73eacaf535ff0 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1261225095" 
	@${RM} ${OBJECTDIR}/_ext/1261225095/drv_usart_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/1261225095/drv_usart_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1261225095/drv_usart_static.o.d" -o ${OBJECTDIR}/_ext/1261225095/drv_usart_static.o ../src/system_config/pic32mz_curiosity_v2/framework/driver/usart/src/drv_usart_static.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1261225095/drv_usart_static_byte_model.o: ../src/system_config/pic32mz_curiosity_v2/framework/driver/usart/src/drv_usart_static_byte_model.c  .generated_files/flags/pic32mz_curiosity_v2/38044348ea60738e6d00c8acdd0c75b2e749f68 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1261225095" 
	@${RM} ${OBJECTDIR}/_ext/1261225095/drv_usart_static_byte_model.o.d 
	@${RM} ${OBJECTDIR}/_ext/1261225095/drv_usart_static_byte_model.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1261225095/drv_usart_static_byte_model.o.d" -o ${OBJECTDIR}/_ext/1261225095/drv_usart_static_byte_model.o ../src/system_config/pic32mz_curiosity_v2/framework/driver/usart/src/drv_usart_static_byte_model.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/327211555/sys_clk_pic32mz.o: ../src/system_config/pic32mz_curiosity_v2/framework/system/clk/src/sys_clk_pic32mz.c  .generated_files/flags/pic32mz_curiosity_v2/a2efc131f2617199a5b4be68b8c32668853f4323 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/327211555" 
	@${RM} ${OBJECTDIR}/_ext/327211555/sys_clk_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/327211555/sys_clk_pic32mz.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/327211555/sys_clk_pic32mz.o.d" -o ${OBJECTDIR}/_ext/327211555/sys_clk_pic32mz.o ../src/system_config/pic32mz_curiosity_v2/framework/system/clk/src/sys_clk_pic32mz.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/26884974/sys_console_static.o: ../src/system_config/pic32mz_curiosity_v2/framework/system/console/src/sys_console_static.c  .generated_files/flags/pic32mz_curiosity_v2/495e698a9723bae74304721aa67b1cabdf7e809a .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/26884974" 
	@${RM} ${OBJECTDIR}/_ext/26884974/sys_console_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/26884974/sys_console_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26884974/sys_console_static.o.d" -o ${OBJECTDIR}/_ext/26884974/sys_console_static.o ../src/system_config/pic32mz_curiosity_v2/framework/system/console/src/sys_console_static.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1884693325/sys_ports_static.o: ../src/system_config/pic32mz_curiosity_v2/framework/system/ports/src/sys_ports_static.c  .generated_files/flags/pic32mz_curiosity_v2/e59b663685553a369a52925186d55e5f16210c1e .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1884693325" 
	@${RM} ${OBJECTDIR}/_ext/1884693325/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/1884693325/sys_ports_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1884693325/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/1884693325/sys_ports_static.o ../src/system_config/pic32mz_curiosity_v2/framework/system/ports/src/sys_ports_static.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1519459830/sys_reset.o: ../src/system_config/pic32mz_curiosity_v2/framework/system/reset/src/sys_reset.c  .generated_files/flags/pic32mz_curiosity_v2/2d1e4ef79a42919093649aeee09616603b246443 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1519459830" 
	@${RM} ${OBJECTDIR}/_ext/1519459830/sys_reset.o.d 
	@${RM} ${OBJECTDIR}/_ext/1519459830/sys_reset.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1519459830/sys_reset.o.d" -o ${OBJECTDIR}/_ext/1519459830/sys_reset.o ../src/system_config/pic32mz_curiosity_v2/framework/system/reset/src/sys_reset.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1673057882/system_init.o: ../src/system_config/pic32mz_curiosity_v2/system_init.c  .generated_files/flags/pic32mz_curiosity_v2/dd6ae7f605e4693e022f366e69d6273cbf87b3e5 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1673057882" 
	@${RM} ${OBJECTDIR}/_ext/1673057882/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1673057882/system_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1673057882/system_init.o.d" -o ${OBJECTDIR}/_ext/1673057882/system_init.o ../src/system_config/pic32mz_curiosity_v2/system_init.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1673057882/system_interrupt.o: ../src/system_config/pic32mz_curiosity_v2/system_interrupt.c  .generated_files/flags/pic32mz_curiosity_v2/11665b64f1cdb0b4d559061a30495677cbc7b6ef .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1673057882" 
	@${RM} ${OBJECTDIR}/_ext/1673057882/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1673057882/system_interrupt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1673057882/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/1673057882/system_interrupt.o ../src/system_config/pic32mz_curiosity_v2/system_interrupt.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1673057882/system_exceptions.o: ../src/system_config/pic32mz_curiosity_v2/system_exceptions.c  .generated_files/flags/pic32mz_curiosity_v2/8cb5ee584ddf0b17b8f68856bcb6fbde5e5ad5a0 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1673057882" 
	@${RM} ${OBJECTDIR}/_ext/1673057882/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1673057882/system_exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1673057882/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/1673057882/system_exceptions.o ../src/system_config/pic32mz_curiosity_v2/system_exceptions.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1673057882/system_tasks.o: ../src/system_config/pic32mz_curiosity_v2/system_tasks.c  .generated_files/flags/pic32mz_curiosity_v2/dbf38911f91c1e0fbb815da01b78a7fb1408f317 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1673057882" 
	@${RM} ${OBJECTDIR}/_ext/1673057882/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1673057882/system_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1673057882/system_tasks.o.d" -o ${OBJECTDIR}/_ext/1673057882/system_tasks.o ../src/system_config/pic32mz_curiosity_v2/system_tasks.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/pic32mz_curiosity_v2/76a4b40156bb10d83f239b5bd24e6eb888e5fcfa .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/pic32mz_curiosity_v2/bc5c25dce56af9b314ac2d4161df66013dc67dc6 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1085120521/drv_tmr.o: ../../../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c  .generated_files/flags/pic32mz_curiosity_v2/3c5be3f7d5cbd18948fbabb0dda97c17b178a5e4 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1085120521" 
	@${RM} ${OBJECTDIR}/_ext/1085120521/drv_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1085120521/drv_tmr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1085120521/drv_tmr.o.d" -o ${OBJECTDIR}/_ext/1085120521/drv_tmr.o ../../../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/890348032/sys_command.o: ../../../../../../../framework/system/command/src/sys_command.c  .generated_files/flags/pic32mz_curiosity_v2/3e10f70a35ee2a0a1a9f443667cf85d830328b07 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/890348032" 
	@${RM} ${OBJECTDIR}/_ext/890348032/sys_command.o.d 
	@${RM} ${OBJECTDIR}/_ext/890348032/sys_command.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/890348032/sys_command.o.d" -o ${OBJECTDIR}/_ext/890348032/sys_command.o ../../../../../../../framework/system/command/src/sys_command.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1788741920/sys_buffer.o: ../../../../../../../framework/system/common/src/sys_buffer.c  .generated_files/flags/pic32mz_curiosity_v2/fb98ab2201bc7490bfa91b95b87edb0fce585d57 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1788741920" 
	@${RM} ${OBJECTDIR}/_ext/1788741920/sys_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1788741920/sys_buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1788741920/sys_buffer.o.d" -o ${OBJECTDIR}/_ext/1788741920/sys_buffer.o ../../../../../../../framework/system/common/src/sys_buffer.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1788741920/sys_queue.o: ../../../../../../../framework/system/common/src/sys_queue.c  .generated_files/flags/pic32mz_curiosity_v2/7933bac7f243981704d3fa7177b119fca432a95d .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1788741920" 
	@${RM} ${OBJECTDIR}/_ext/1788741920/sys_queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1788741920/sys_queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1788741920/sys_queue.o.d" -o ${OBJECTDIR}/_ext/1788741920/sys_queue.o ../../../../../../../framework/system/common/src/sys_queue.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/433763064/sys_debug.o: ../../../../../../../framework/system/debug/src/sys_debug.c  .generated_files/flags/pic32mz_curiosity_v2/824f849a7b0d4ea252bc12ae08173dd85bd7c712 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/433763064" 
	@${RM} ${OBJECTDIR}/_ext/433763064/sys_debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/433763064/sys_debug.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/433763064/sys_debug.o.d" -o ${OBJECTDIR}/_ext/433763064/sys_debug.o ../../../../../../../framework/system/debug/src/sys_debug.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1424708930/sys_devcon.o: ../../../../../../../framework/system/devcon/src/sys_devcon.c  .generated_files/flags/pic32mz_curiosity_v2/866aae71cd93557e14e52c75306613f4129fdf81 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1424708930" 
	@${RM} ${OBJECTDIR}/_ext/1424708930/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/1424708930/sys_devcon.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1424708930/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/1424708930/sys_devcon.o ../../../../../../../framework/system/devcon/src/sys_devcon.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1424708930/sys_devcon_pic32mz.o: ../../../../../../../framework/system/devcon/src/sys_devcon_pic32mz.c  .generated_files/flags/pic32mz_curiosity_v2/550bb8981f70f7ee017ba85384c4ca82cb510ecd .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1424708930" 
	@${RM} ${OBJECTDIR}/_ext/1424708930/sys_devcon_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/1424708930/sys_devcon_pic32mz.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1424708930/sys_devcon_pic32mz.o.d" -o ${OBJECTDIR}/_ext/1424708930/sys_devcon_pic32mz.o ../../../../../../../framework/system/devcon/src/sys_devcon_pic32mz.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1140991836/sys_int_pic32.o: ../../../../../../../framework/system/int/src/sys_int_pic32.c  .generated_files/flags/pic32mz_curiosity_v2/718619f2ca8255585be89e7e9f87283f089b1223 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1140991836" 
	@${RM} ${OBJECTDIR}/_ext/1140991836/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1140991836/sys_int_pic32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1140991836/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/1140991836/sys_int_pic32.o ../../../../../../../framework/system/int/src/sys_int_pic32.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1137870/sys_tmr.o: ../../../../../../../framework/system/tmr/src/sys_tmr.c  .generated_files/flags/pic32mz_curiosity_v2/a7155de339d92a3ee7600f790f21cf0c891414c8 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1137870" 
	@${RM} ${OBJECTDIR}/_ext/1137870/sys_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1137870/sys_tmr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1137870/sys_tmr.o.d" -o ${OBJECTDIR}/_ext/1137870/sys_tmr.o ../../../../../../../framework/system/tmr/src/sys_tmr.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/uart_basic.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../../../../bin/framework/peripheral/PIC32MZ2048EFM144_peripherals.a  
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/uart_basic.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\..\..\..\..\..\..\bin\framework\peripheral\PIC32MZ2048EFM144_peripherals.a      -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x37F   -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=16000,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/uart_basic.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../../../../bin/framework/peripheral/PIC32MZ2048EFM144_peripherals.a 
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/uart_basic.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\..\..\..\..\..\..\bin\framework\peripheral\PIC32MZ2048EFM144_peripherals.a      -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=16000,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/uart_basic.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
