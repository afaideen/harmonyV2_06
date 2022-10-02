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
SOURCEFILES_QUOTED_IF_SPACED=../src/app.c ../src/main.c ../../../../../../../framework/system/common/src/sys_buffer.c ../../../../../../../framework/system/common/src/sys_queue.c ../../../../../../../framework/system/int/src/sys_int_pic32.c ../../../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c ../../../../../../../framework/system/devcon/src/sys_devcon.c ../../../../../../../framework/system/devcon/src/sys_devcon_pic32mz.c ../../../../../../../framework/system/devcon/src/sys_devcon_cache_pic32mz.S ../../../../../../../framework/system/command/src/sys_command.c ../../../../../../../framework/system/debug/src/sys_debug.c ../../../../../../../framework/system/tmr/src/sys_tmr.c ../src/system_config/pic32mz_curiosity_v2/framework/driver/usart/src/drv_usart_mapping.c ../src/system_config/pic32mz_curiosity_v2/framework/driver/usart/src/drv_usart_static.c ../src/system_config/pic32mz_curiosity_v2/framework/driver/usart/src/drv_usart_static_byte_model.c ../src/system_config/pic32mz_curiosity_v2/framework/system/clk/src/sys_clk_pic32mz.c ../src/system_config/pic32mz_curiosity_v2/framework/system/ports/src/sys_ports_static.c ../src/system_config/pic32mz_curiosity_v2/framework/system/console/src/sys_console_static.c ../src/system_config/pic32mz_curiosity_v2/framework/system/reset/src/sys_reset.c ../src/system_config/pic32mz_curiosity_v2/bsp/bsp.c ../src/system_config/pic32mz_curiosity_v2/system_init.c ../src/system_config/pic32mz_curiosity_v2/system_interrupt.c ../src/system_config/pic32mz_curiosity_v2/system_exceptions.c ../src/system_config/pic32mz_curiosity_v2/system_tasks.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1788741920/sys_buffer.o ${OBJECTDIR}/_ext/1788741920/sys_queue.o ${OBJECTDIR}/_ext/1140991836/sys_int_pic32.o ${OBJECTDIR}/_ext/1085120521/drv_tmr.o ${OBJECTDIR}/_ext/1424708930/sys_devcon.o ${OBJECTDIR}/_ext/1424708930/sys_devcon_pic32mz.o ${OBJECTDIR}/_ext/1424708930/sys_devcon_cache_pic32mz.o ${OBJECTDIR}/_ext/890348032/sys_command.o ${OBJECTDIR}/_ext/433763064/sys_debug.o ${OBJECTDIR}/_ext/1137870/sys_tmr.o ${OBJECTDIR}/_ext/1261225095/drv_usart_mapping.o ${OBJECTDIR}/_ext/1261225095/drv_usart_static.o ${OBJECTDIR}/_ext/1261225095/drv_usart_static_byte_model.o ${OBJECTDIR}/_ext/327211555/sys_clk_pic32mz.o ${OBJECTDIR}/_ext/1884693325/sys_ports_static.o ${OBJECTDIR}/_ext/26884974/sys_console_static.o ${OBJECTDIR}/_ext/1519459830/sys_reset.o ${OBJECTDIR}/_ext/1805060854/bsp.o ${OBJECTDIR}/_ext/1673057882/system_init.o ${OBJECTDIR}/_ext/1673057882/system_interrupt.o ${OBJECTDIR}/_ext/1673057882/system_exceptions.o ${OBJECTDIR}/_ext/1673057882/system_tasks.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1360937237/app.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1788741920/sys_buffer.o.d ${OBJECTDIR}/_ext/1788741920/sys_queue.o.d ${OBJECTDIR}/_ext/1140991836/sys_int_pic32.o.d ${OBJECTDIR}/_ext/1085120521/drv_tmr.o.d ${OBJECTDIR}/_ext/1424708930/sys_devcon.o.d ${OBJECTDIR}/_ext/1424708930/sys_devcon_pic32mz.o.d ${OBJECTDIR}/_ext/1424708930/sys_devcon_cache_pic32mz.o.d ${OBJECTDIR}/_ext/890348032/sys_command.o.d ${OBJECTDIR}/_ext/433763064/sys_debug.o.d ${OBJECTDIR}/_ext/1137870/sys_tmr.o.d ${OBJECTDIR}/_ext/1261225095/drv_usart_mapping.o.d ${OBJECTDIR}/_ext/1261225095/drv_usart_static.o.d ${OBJECTDIR}/_ext/1261225095/drv_usart_static_byte_model.o.d ${OBJECTDIR}/_ext/327211555/sys_clk_pic32mz.o.d ${OBJECTDIR}/_ext/1884693325/sys_ports_static.o.d ${OBJECTDIR}/_ext/26884974/sys_console_static.o.d ${OBJECTDIR}/_ext/1519459830/sys_reset.o.d ${OBJECTDIR}/_ext/1805060854/bsp.o.d ${OBJECTDIR}/_ext/1673057882/system_init.o.d ${OBJECTDIR}/_ext/1673057882/system_interrupt.o.d ${OBJECTDIR}/_ext/1673057882/system_exceptions.o.d ${OBJECTDIR}/_ext/1673057882/system_tasks.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1788741920/sys_buffer.o ${OBJECTDIR}/_ext/1788741920/sys_queue.o ${OBJECTDIR}/_ext/1140991836/sys_int_pic32.o ${OBJECTDIR}/_ext/1085120521/drv_tmr.o ${OBJECTDIR}/_ext/1424708930/sys_devcon.o ${OBJECTDIR}/_ext/1424708930/sys_devcon_pic32mz.o ${OBJECTDIR}/_ext/1424708930/sys_devcon_cache_pic32mz.o ${OBJECTDIR}/_ext/890348032/sys_command.o ${OBJECTDIR}/_ext/433763064/sys_debug.o ${OBJECTDIR}/_ext/1137870/sys_tmr.o ${OBJECTDIR}/_ext/1261225095/drv_usart_mapping.o ${OBJECTDIR}/_ext/1261225095/drv_usart_static.o ${OBJECTDIR}/_ext/1261225095/drv_usart_static_byte_model.o ${OBJECTDIR}/_ext/327211555/sys_clk_pic32mz.o ${OBJECTDIR}/_ext/1884693325/sys_ports_static.o ${OBJECTDIR}/_ext/26884974/sys_console_static.o ${OBJECTDIR}/_ext/1519459830/sys_reset.o ${OBJECTDIR}/_ext/1805060854/bsp.o ${OBJECTDIR}/_ext/1673057882/system_init.o ${OBJECTDIR}/_ext/1673057882/system_interrupt.o ${OBJECTDIR}/_ext/1673057882/system_exceptions.o ${OBJECTDIR}/_ext/1673057882/system_tasks.o

# Source Files
SOURCEFILES=../src/app.c ../src/main.c ../../../../../../../framework/system/common/src/sys_buffer.c ../../../../../../../framework/system/common/src/sys_queue.c ../../../../../../../framework/system/int/src/sys_int_pic32.c ../../../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c ../../../../../../../framework/system/devcon/src/sys_devcon.c ../../../../../../../framework/system/devcon/src/sys_devcon_pic32mz.c ../../../../../../../framework/system/devcon/src/sys_devcon_cache_pic32mz.S ../../../../../../../framework/system/command/src/sys_command.c ../../../../../../../framework/system/debug/src/sys_debug.c ../../../../../../../framework/system/tmr/src/sys_tmr.c ../src/system_config/pic32mz_curiosity_v2/framework/driver/usart/src/drv_usart_mapping.c ../src/system_config/pic32mz_curiosity_v2/framework/driver/usart/src/drv_usart_static.c ../src/system_config/pic32mz_curiosity_v2/framework/driver/usart/src/drv_usart_static_byte_model.c ../src/system_config/pic32mz_curiosity_v2/framework/system/clk/src/sys_clk_pic32mz.c ../src/system_config/pic32mz_curiosity_v2/framework/system/ports/src/sys_ports_static.c ../src/system_config/pic32mz_curiosity_v2/framework/system/console/src/sys_console_static.c ../src/system_config/pic32mz_curiosity_v2/framework/system/reset/src/sys_reset.c ../src/system_config/pic32mz_curiosity_v2/bsp/bsp.c ../src/system_config/pic32mz_curiosity_v2/system_init.c ../src/system_config/pic32mz_curiosity_v2/system_interrupt.c ../src/system_config/pic32mz_curiosity_v2/system_exceptions.c ../src/system_config/pic32mz_curiosity_v2/system_tasks.c



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
${OBJECTDIR}/_ext/1424708930/sys_devcon_cache_pic32mz.o: ../../../../../../../framework/system/devcon/src/sys_devcon_cache_pic32mz.S  .generated_files/flags/pic32mz_curiosity_v2/3b9ffb3b8012e0ffa1b777dd2fdca0a7119272fe .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1424708930" 
	@${RM} ${OBJECTDIR}/_ext/1424708930/sys_devcon_cache_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/1424708930/sys_devcon_cache_pic32mz.o 
	@${RM} ${OBJECTDIR}/_ext/1424708930/sys_devcon_cache_pic32mz.o.ok ${OBJECTDIR}/_ext/1424708930/sys_devcon_cache_pic32mz.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1424708930/sys_devcon_cache_pic32mz.o.d"  -o ${OBJECTDIR}/_ext/1424708930/sys_devcon_cache_pic32mz.o ../../../../../../../framework/system/devcon/src/sys_devcon_cache_pic32mz.S  -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1424708930/sys_devcon_cache_pic32mz.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1424708930/sys_devcon_cache_pic32mz.o.d" "${OBJECTDIR}/_ext/1424708930/sys_devcon_cache_pic32mz.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/1424708930/sys_devcon_cache_pic32mz.o: ../../../../../../../framework/system/devcon/src/sys_devcon_cache_pic32mz.S  .generated_files/flags/pic32mz_curiosity_v2/5372016a8c650d63aa42f087e18238c475c982f7 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
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
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/pic32mz_curiosity_v2/106ed907b39e7c04630d0f4cdd7196b2f5aa70ec .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/pic32mz_curiosity_v2/7bb90208236c2c9ec1f56523e81521f27b6ac6e5 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1788741920/sys_buffer.o: ../../../../../../../framework/system/common/src/sys_buffer.c  .generated_files/flags/pic32mz_curiosity_v2/64188011c4a9ea5cd0d43f8b49c314c69c298a93 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1788741920" 
	@${RM} ${OBJECTDIR}/_ext/1788741920/sys_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1788741920/sys_buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1788741920/sys_buffer.o.d" -o ${OBJECTDIR}/_ext/1788741920/sys_buffer.o ../../../../../../../framework/system/common/src/sys_buffer.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1788741920/sys_queue.o: ../../../../../../../framework/system/common/src/sys_queue.c  .generated_files/flags/pic32mz_curiosity_v2/17f3486d1262a087eda2ad2e311265d0a96fdbff .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1788741920" 
	@${RM} ${OBJECTDIR}/_ext/1788741920/sys_queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1788741920/sys_queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1788741920/sys_queue.o.d" -o ${OBJECTDIR}/_ext/1788741920/sys_queue.o ../../../../../../../framework/system/common/src/sys_queue.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1140991836/sys_int_pic32.o: ../../../../../../../framework/system/int/src/sys_int_pic32.c  .generated_files/flags/pic32mz_curiosity_v2/5393a754f90a46971a59a261695958064e529197 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1140991836" 
	@${RM} ${OBJECTDIR}/_ext/1140991836/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1140991836/sys_int_pic32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1140991836/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/1140991836/sys_int_pic32.o ../../../../../../../framework/system/int/src/sys_int_pic32.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1085120521/drv_tmr.o: ../../../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c  .generated_files/flags/pic32mz_curiosity_v2/86b898abe7e9ef35a4499c96560d4c5e59c4fc6e .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1085120521" 
	@${RM} ${OBJECTDIR}/_ext/1085120521/drv_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1085120521/drv_tmr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1085120521/drv_tmr.o.d" -o ${OBJECTDIR}/_ext/1085120521/drv_tmr.o ../../../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1424708930/sys_devcon.o: ../../../../../../../framework/system/devcon/src/sys_devcon.c  .generated_files/flags/pic32mz_curiosity_v2/f12ffe62820b5d69308b47f3970694cb51a4b020 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1424708930" 
	@${RM} ${OBJECTDIR}/_ext/1424708930/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/1424708930/sys_devcon.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1424708930/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/1424708930/sys_devcon.o ../../../../../../../framework/system/devcon/src/sys_devcon.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1424708930/sys_devcon_pic32mz.o: ../../../../../../../framework/system/devcon/src/sys_devcon_pic32mz.c  .generated_files/flags/pic32mz_curiosity_v2/27b15438687bc82ceb1881ee922a11644eaf4637 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1424708930" 
	@${RM} ${OBJECTDIR}/_ext/1424708930/sys_devcon_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/1424708930/sys_devcon_pic32mz.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1424708930/sys_devcon_pic32mz.o.d" -o ${OBJECTDIR}/_ext/1424708930/sys_devcon_pic32mz.o ../../../../../../../framework/system/devcon/src/sys_devcon_pic32mz.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/890348032/sys_command.o: ../../../../../../../framework/system/command/src/sys_command.c  .generated_files/flags/pic32mz_curiosity_v2/ffe391ae5217c688f40614969b440bd1c8b769b8 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/890348032" 
	@${RM} ${OBJECTDIR}/_ext/890348032/sys_command.o.d 
	@${RM} ${OBJECTDIR}/_ext/890348032/sys_command.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/890348032/sys_command.o.d" -o ${OBJECTDIR}/_ext/890348032/sys_command.o ../../../../../../../framework/system/command/src/sys_command.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/433763064/sys_debug.o: ../../../../../../../framework/system/debug/src/sys_debug.c  .generated_files/flags/pic32mz_curiosity_v2/8a752e8c2d13919ad335356ed187656d1311bdca .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/433763064" 
	@${RM} ${OBJECTDIR}/_ext/433763064/sys_debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/433763064/sys_debug.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/433763064/sys_debug.o.d" -o ${OBJECTDIR}/_ext/433763064/sys_debug.o ../../../../../../../framework/system/debug/src/sys_debug.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1137870/sys_tmr.o: ../../../../../../../framework/system/tmr/src/sys_tmr.c  .generated_files/flags/pic32mz_curiosity_v2/1616d047f010aeaedc15597a0242f51fb84f1b5a .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1137870" 
	@${RM} ${OBJECTDIR}/_ext/1137870/sys_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1137870/sys_tmr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1137870/sys_tmr.o.d" -o ${OBJECTDIR}/_ext/1137870/sys_tmr.o ../../../../../../../framework/system/tmr/src/sys_tmr.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1261225095/drv_usart_mapping.o: ../src/system_config/pic32mz_curiosity_v2/framework/driver/usart/src/drv_usart_mapping.c  .generated_files/flags/pic32mz_curiosity_v2/5a10d1bf34655a49888034f1a2c1a3506950e32a .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1261225095" 
	@${RM} ${OBJECTDIR}/_ext/1261225095/drv_usart_mapping.o.d 
	@${RM} ${OBJECTDIR}/_ext/1261225095/drv_usart_mapping.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1261225095/drv_usart_mapping.o.d" -o ${OBJECTDIR}/_ext/1261225095/drv_usart_mapping.o ../src/system_config/pic32mz_curiosity_v2/framework/driver/usart/src/drv_usart_mapping.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1261225095/drv_usart_static.o: ../src/system_config/pic32mz_curiosity_v2/framework/driver/usart/src/drv_usart_static.c  .generated_files/flags/pic32mz_curiosity_v2/88771dfc2192114fd2033b285b8919537be792bc .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1261225095" 
	@${RM} ${OBJECTDIR}/_ext/1261225095/drv_usart_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/1261225095/drv_usart_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1261225095/drv_usart_static.o.d" -o ${OBJECTDIR}/_ext/1261225095/drv_usart_static.o ../src/system_config/pic32mz_curiosity_v2/framework/driver/usart/src/drv_usart_static.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1261225095/drv_usart_static_byte_model.o: ../src/system_config/pic32mz_curiosity_v2/framework/driver/usart/src/drv_usart_static_byte_model.c  .generated_files/flags/pic32mz_curiosity_v2/7be87fbe0bfab14948efbc1e6bf6d98d1f36600 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1261225095" 
	@${RM} ${OBJECTDIR}/_ext/1261225095/drv_usart_static_byte_model.o.d 
	@${RM} ${OBJECTDIR}/_ext/1261225095/drv_usart_static_byte_model.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1261225095/drv_usart_static_byte_model.o.d" -o ${OBJECTDIR}/_ext/1261225095/drv_usart_static_byte_model.o ../src/system_config/pic32mz_curiosity_v2/framework/driver/usart/src/drv_usart_static_byte_model.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/327211555/sys_clk_pic32mz.o: ../src/system_config/pic32mz_curiosity_v2/framework/system/clk/src/sys_clk_pic32mz.c  .generated_files/flags/pic32mz_curiosity_v2/a9d9a7c486aa76a2fabadba90916677134996189 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/327211555" 
	@${RM} ${OBJECTDIR}/_ext/327211555/sys_clk_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/327211555/sys_clk_pic32mz.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/327211555/sys_clk_pic32mz.o.d" -o ${OBJECTDIR}/_ext/327211555/sys_clk_pic32mz.o ../src/system_config/pic32mz_curiosity_v2/framework/system/clk/src/sys_clk_pic32mz.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1884693325/sys_ports_static.o: ../src/system_config/pic32mz_curiosity_v2/framework/system/ports/src/sys_ports_static.c  .generated_files/flags/pic32mz_curiosity_v2/d133e17a39a89ad2262061bc92d6a1026473e251 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1884693325" 
	@${RM} ${OBJECTDIR}/_ext/1884693325/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/1884693325/sys_ports_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1884693325/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/1884693325/sys_ports_static.o ../src/system_config/pic32mz_curiosity_v2/framework/system/ports/src/sys_ports_static.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/26884974/sys_console_static.o: ../src/system_config/pic32mz_curiosity_v2/framework/system/console/src/sys_console_static.c  .generated_files/flags/pic32mz_curiosity_v2/4b2ff7fb54957de27481b677308dec17701af687 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/26884974" 
	@${RM} ${OBJECTDIR}/_ext/26884974/sys_console_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/26884974/sys_console_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26884974/sys_console_static.o.d" -o ${OBJECTDIR}/_ext/26884974/sys_console_static.o ../src/system_config/pic32mz_curiosity_v2/framework/system/console/src/sys_console_static.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1519459830/sys_reset.o: ../src/system_config/pic32mz_curiosity_v2/framework/system/reset/src/sys_reset.c  .generated_files/flags/pic32mz_curiosity_v2/da473c0543ceebfa2a8fd6e91227d54f5df5ed14 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1519459830" 
	@${RM} ${OBJECTDIR}/_ext/1519459830/sys_reset.o.d 
	@${RM} ${OBJECTDIR}/_ext/1519459830/sys_reset.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1519459830/sys_reset.o.d" -o ${OBJECTDIR}/_ext/1519459830/sys_reset.o ../src/system_config/pic32mz_curiosity_v2/framework/system/reset/src/sys_reset.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1805060854/bsp.o: ../src/system_config/pic32mz_curiosity_v2/bsp/bsp.c  .generated_files/flags/pic32mz_curiosity_v2/97e39d4e14956ac35bd1af46f886642f92689107 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1805060854" 
	@${RM} ${OBJECTDIR}/_ext/1805060854/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1805060854/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1805060854/bsp.o.d" -o ${OBJECTDIR}/_ext/1805060854/bsp.o ../src/system_config/pic32mz_curiosity_v2/bsp/bsp.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1673057882/system_init.o: ../src/system_config/pic32mz_curiosity_v2/system_init.c  .generated_files/flags/pic32mz_curiosity_v2/caf8e03d3195f39c23df3b7a4816752ec45a6db3 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1673057882" 
	@${RM} ${OBJECTDIR}/_ext/1673057882/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1673057882/system_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1673057882/system_init.o.d" -o ${OBJECTDIR}/_ext/1673057882/system_init.o ../src/system_config/pic32mz_curiosity_v2/system_init.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1673057882/system_interrupt.o: ../src/system_config/pic32mz_curiosity_v2/system_interrupt.c  .generated_files/flags/pic32mz_curiosity_v2/1267bca378fe0392c4e6c3bd346c18d3226f1dc6 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1673057882" 
	@${RM} ${OBJECTDIR}/_ext/1673057882/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1673057882/system_interrupt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1673057882/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/1673057882/system_interrupt.o ../src/system_config/pic32mz_curiosity_v2/system_interrupt.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1673057882/system_exceptions.o: ../src/system_config/pic32mz_curiosity_v2/system_exceptions.c  .generated_files/flags/pic32mz_curiosity_v2/77e87f9907ab9c66b0b2dfd7e55cbb5f0f06123b .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1673057882" 
	@${RM} ${OBJECTDIR}/_ext/1673057882/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1673057882/system_exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1673057882/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/1673057882/system_exceptions.o ../src/system_config/pic32mz_curiosity_v2/system_exceptions.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1673057882/system_tasks.o: ../src/system_config/pic32mz_curiosity_v2/system_tasks.c  .generated_files/flags/pic32mz_curiosity_v2/dc86c51c6d3c4c86e872beaf52e659524b550d61 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1673057882" 
	@${RM} ${OBJECTDIR}/_ext/1673057882/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1673057882/system_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1673057882/system_tasks.o.d" -o ${OBJECTDIR}/_ext/1673057882/system_tasks.o ../src/system_config/pic32mz_curiosity_v2/system_tasks.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/pic32mz_curiosity_v2/f51de50b4aa4b11446feda903851b07c5fd18ece .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/pic32mz_curiosity_v2/a85223301c860230edd12bb9879b8f8d89e4e38f .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1788741920/sys_buffer.o: ../../../../../../../framework/system/common/src/sys_buffer.c  .generated_files/flags/pic32mz_curiosity_v2/c50b0c68ca44b65689d0b4e1b22d29b801c69531 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1788741920" 
	@${RM} ${OBJECTDIR}/_ext/1788741920/sys_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1788741920/sys_buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1788741920/sys_buffer.o.d" -o ${OBJECTDIR}/_ext/1788741920/sys_buffer.o ../../../../../../../framework/system/common/src/sys_buffer.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1788741920/sys_queue.o: ../../../../../../../framework/system/common/src/sys_queue.c  .generated_files/flags/pic32mz_curiosity_v2/2687091e4bc7472d5982a4f30f3f93bbe1f337b3 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1788741920" 
	@${RM} ${OBJECTDIR}/_ext/1788741920/sys_queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1788741920/sys_queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1788741920/sys_queue.o.d" -o ${OBJECTDIR}/_ext/1788741920/sys_queue.o ../../../../../../../framework/system/common/src/sys_queue.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1140991836/sys_int_pic32.o: ../../../../../../../framework/system/int/src/sys_int_pic32.c  .generated_files/flags/pic32mz_curiosity_v2/4a7d7be88ddf7aac2a06560f68b67451570883a .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1140991836" 
	@${RM} ${OBJECTDIR}/_ext/1140991836/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1140991836/sys_int_pic32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1140991836/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/1140991836/sys_int_pic32.o ../../../../../../../framework/system/int/src/sys_int_pic32.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1085120521/drv_tmr.o: ../../../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c  .generated_files/flags/pic32mz_curiosity_v2/d6bdf48dbea9c089167971213f8f9e84841abb80 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1085120521" 
	@${RM} ${OBJECTDIR}/_ext/1085120521/drv_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1085120521/drv_tmr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1085120521/drv_tmr.o.d" -o ${OBJECTDIR}/_ext/1085120521/drv_tmr.o ../../../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1424708930/sys_devcon.o: ../../../../../../../framework/system/devcon/src/sys_devcon.c  .generated_files/flags/pic32mz_curiosity_v2/ec0e81f3f245ad8dc4780e2b8e85158b2eb96e03 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1424708930" 
	@${RM} ${OBJECTDIR}/_ext/1424708930/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/1424708930/sys_devcon.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1424708930/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/1424708930/sys_devcon.o ../../../../../../../framework/system/devcon/src/sys_devcon.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1424708930/sys_devcon_pic32mz.o: ../../../../../../../framework/system/devcon/src/sys_devcon_pic32mz.c  .generated_files/flags/pic32mz_curiosity_v2/5d31567a29b0b353ca8572fe638edb882d4e0c11 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1424708930" 
	@${RM} ${OBJECTDIR}/_ext/1424708930/sys_devcon_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/1424708930/sys_devcon_pic32mz.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1424708930/sys_devcon_pic32mz.o.d" -o ${OBJECTDIR}/_ext/1424708930/sys_devcon_pic32mz.o ../../../../../../../framework/system/devcon/src/sys_devcon_pic32mz.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/890348032/sys_command.o: ../../../../../../../framework/system/command/src/sys_command.c  .generated_files/flags/pic32mz_curiosity_v2/cef9e58326512a2377fd3c4b52bf84286e545a4e .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/890348032" 
	@${RM} ${OBJECTDIR}/_ext/890348032/sys_command.o.d 
	@${RM} ${OBJECTDIR}/_ext/890348032/sys_command.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/890348032/sys_command.o.d" -o ${OBJECTDIR}/_ext/890348032/sys_command.o ../../../../../../../framework/system/command/src/sys_command.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/433763064/sys_debug.o: ../../../../../../../framework/system/debug/src/sys_debug.c  .generated_files/flags/pic32mz_curiosity_v2/42efb49833a4cf950736c87985dc6341e366056d .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/433763064" 
	@${RM} ${OBJECTDIR}/_ext/433763064/sys_debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/433763064/sys_debug.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/433763064/sys_debug.o.d" -o ${OBJECTDIR}/_ext/433763064/sys_debug.o ../../../../../../../framework/system/debug/src/sys_debug.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1137870/sys_tmr.o: ../../../../../../../framework/system/tmr/src/sys_tmr.c  .generated_files/flags/pic32mz_curiosity_v2/95160e3cb6646b3593871a2d6659f91143ccb1b4 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1137870" 
	@${RM} ${OBJECTDIR}/_ext/1137870/sys_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1137870/sys_tmr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1137870/sys_tmr.o.d" -o ${OBJECTDIR}/_ext/1137870/sys_tmr.o ../../../../../../../framework/system/tmr/src/sys_tmr.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1261225095/drv_usart_mapping.o: ../src/system_config/pic32mz_curiosity_v2/framework/driver/usart/src/drv_usart_mapping.c  .generated_files/flags/pic32mz_curiosity_v2/157645aaa249f85fd0eafe100af3756f8ad86e4f .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1261225095" 
	@${RM} ${OBJECTDIR}/_ext/1261225095/drv_usart_mapping.o.d 
	@${RM} ${OBJECTDIR}/_ext/1261225095/drv_usart_mapping.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1261225095/drv_usart_mapping.o.d" -o ${OBJECTDIR}/_ext/1261225095/drv_usart_mapping.o ../src/system_config/pic32mz_curiosity_v2/framework/driver/usart/src/drv_usart_mapping.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1261225095/drv_usart_static.o: ../src/system_config/pic32mz_curiosity_v2/framework/driver/usart/src/drv_usart_static.c  .generated_files/flags/pic32mz_curiosity_v2/4540238a2c1173c6276eba9cdd89166e5f5884ae .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1261225095" 
	@${RM} ${OBJECTDIR}/_ext/1261225095/drv_usart_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/1261225095/drv_usart_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1261225095/drv_usart_static.o.d" -o ${OBJECTDIR}/_ext/1261225095/drv_usart_static.o ../src/system_config/pic32mz_curiosity_v2/framework/driver/usart/src/drv_usart_static.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1261225095/drv_usart_static_byte_model.o: ../src/system_config/pic32mz_curiosity_v2/framework/driver/usart/src/drv_usart_static_byte_model.c  .generated_files/flags/pic32mz_curiosity_v2/1eea757bb040ba6222bf76eb63feda63227b2e7 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1261225095" 
	@${RM} ${OBJECTDIR}/_ext/1261225095/drv_usart_static_byte_model.o.d 
	@${RM} ${OBJECTDIR}/_ext/1261225095/drv_usart_static_byte_model.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1261225095/drv_usart_static_byte_model.o.d" -o ${OBJECTDIR}/_ext/1261225095/drv_usart_static_byte_model.o ../src/system_config/pic32mz_curiosity_v2/framework/driver/usart/src/drv_usart_static_byte_model.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/327211555/sys_clk_pic32mz.o: ../src/system_config/pic32mz_curiosity_v2/framework/system/clk/src/sys_clk_pic32mz.c  .generated_files/flags/pic32mz_curiosity_v2/afdf508d7b5c0d5ee8c22c210eb93556b2a026f .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/327211555" 
	@${RM} ${OBJECTDIR}/_ext/327211555/sys_clk_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/327211555/sys_clk_pic32mz.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/327211555/sys_clk_pic32mz.o.d" -o ${OBJECTDIR}/_ext/327211555/sys_clk_pic32mz.o ../src/system_config/pic32mz_curiosity_v2/framework/system/clk/src/sys_clk_pic32mz.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1884693325/sys_ports_static.o: ../src/system_config/pic32mz_curiosity_v2/framework/system/ports/src/sys_ports_static.c  .generated_files/flags/pic32mz_curiosity_v2/35b5da7fd4ba1b7f0880129b635653a516aa6743 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1884693325" 
	@${RM} ${OBJECTDIR}/_ext/1884693325/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/1884693325/sys_ports_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1884693325/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/1884693325/sys_ports_static.o ../src/system_config/pic32mz_curiosity_v2/framework/system/ports/src/sys_ports_static.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/26884974/sys_console_static.o: ../src/system_config/pic32mz_curiosity_v2/framework/system/console/src/sys_console_static.c  .generated_files/flags/pic32mz_curiosity_v2/410547d27f579f39ca003f9245044912ebe754df .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/26884974" 
	@${RM} ${OBJECTDIR}/_ext/26884974/sys_console_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/26884974/sys_console_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/26884974/sys_console_static.o.d" -o ${OBJECTDIR}/_ext/26884974/sys_console_static.o ../src/system_config/pic32mz_curiosity_v2/framework/system/console/src/sys_console_static.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1519459830/sys_reset.o: ../src/system_config/pic32mz_curiosity_v2/framework/system/reset/src/sys_reset.c  .generated_files/flags/pic32mz_curiosity_v2/dc09a92160412568b0d0a7093367c4d4e6379865 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1519459830" 
	@${RM} ${OBJECTDIR}/_ext/1519459830/sys_reset.o.d 
	@${RM} ${OBJECTDIR}/_ext/1519459830/sys_reset.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1519459830/sys_reset.o.d" -o ${OBJECTDIR}/_ext/1519459830/sys_reset.o ../src/system_config/pic32mz_curiosity_v2/framework/system/reset/src/sys_reset.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1805060854/bsp.o: ../src/system_config/pic32mz_curiosity_v2/bsp/bsp.c  .generated_files/flags/pic32mz_curiosity_v2/325bcfa5f19303442a8815246623d4ecbf044f44 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1805060854" 
	@${RM} ${OBJECTDIR}/_ext/1805060854/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1805060854/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1805060854/bsp.o.d" -o ${OBJECTDIR}/_ext/1805060854/bsp.o ../src/system_config/pic32mz_curiosity_v2/bsp/bsp.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1673057882/system_init.o: ../src/system_config/pic32mz_curiosity_v2/system_init.c  .generated_files/flags/pic32mz_curiosity_v2/3c0a48a6976262b5acba41492ed20d7a676d6e82 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1673057882" 
	@${RM} ${OBJECTDIR}/_ext/1673057882/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1673057882/system_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1673057882/system_init.o.d" -o ${OBJECTDIR}/_ext/1673057882/system_init.o ../src/system_config/pic32mz_curiosity_v2/system_init.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1673057882/system_interrupt.o: ../src/system_config/pic32mz_curiosity_v2/system_interrupt.c  .generated_files/flags/pic32mz_curiosity_v2/39dbfc29b4e2bf70c2fd3d7727cfcd5905623020 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1673057882" 
	@${RM} ${OBJECTDIR}/_ext/1673057882/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1673057882/system_interrupt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1673057882/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/1673057882/system_interrupt.o ../src/system_config/pic32mz_curiosity_v2/system_interrupt.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1673057882/system_exceptions.o: ../src/system_config/pic32mz_curiosity_v2/system_exceptions.c  .generated_files/flags/pic32mz_curiosity_v2/5adeced33ddc2799a1ee62d6b2947757f104427d .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1673057882" 
	@${RM} ${OBJECTDIR}/_ext/1673057882/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1673057882/system_exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1673057882/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/1673057882/system_exceptions.o ../src/system_config/pic32mz_curiosity_v2/system_exceptions.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1673057882/system_tasks.o: ../src/system_config/pic32mz_curiosity_v2/system_tasks.c  .generated_files/flags/pic32mz_curiosity_v2/bff8edbcb97de6ca2d42fea7a18f43ce35ab90f2 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1673057882" 
	@${RM} ${OBJECTDIR}/_ext/1673057882/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1673057882/system_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../../../../../framework/driver" -I"../../../../../../../framework/system/common" -I"../../../../../../../framework/system/devcon" -I"../../../../../../../framework/system" -I"../src" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1673057882/system_tasks.o.d" -o ${OBJECTDIR}/_ext/1673057882/system_tasks.o ../src/system_config/pic32mz_curiosity_v2/system_tasks.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
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
