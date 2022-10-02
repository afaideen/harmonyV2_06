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
FINAL_IMAGE=${DISTDIR}/debug_uart.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/debug_uart.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=../src/system_config/pic32mz_curiosity_v2/bsp/bsp.c ../src/system_config/pic32mz_curiosity_v2/framework/system/clk/src/sys_clk_pic32mz.c ../src/system_config/pic32mz_curiosity_v2/framework/system/ports/src/sys_ports_static.c ../src/system_config/pic32mz_curiosity_v2/framework/system/reset/src/sys_reset.c ../src/system_config/pic32mz_curiosity_v2/system_init.c ../src/system_config/pic32mz_curiosity_v2/system_interrupt.c ../src/system_config/pic32mz_curiosity_v2/system_exceptions.c ../src/system_config/pic32mz_curiosity_v2/system_tasks.c ../src/app.c ../src/main.c ../../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c ../../../../../../framework/driver/usart/src/dynamic/drv_usart.c ../../../../../../framework/driver/usart/src/dynamic/drv_usart_buffer_queue.c ../../../../../../framework/driver/usart/src/dynamic/drv_usart_read_write.c ../../../../../../framework/system/command/src/sys_command.c ../../../../../../framework/system/common/src/sys_buffer.c ../../../../../../framework/system/common/src/sys_queue.c ../../../../../../framework/system/console/src/sys_console.c ../../../../../../framework/system/console/src/sys_console_uart.c ../../../../../../framework/system/debug/src/sys_debug.c ../../../../../../framework/system/devcon/src/sys_devcon.c ../../../../../../framework/system/devcon/src/sys_devcon_pic32mz.c ../../../../../../framework/system/devcon/src/sys_devcon_cache_pic32mz.S ../../../../../../framework/system/int/src/sys_int_pic32.c ../../../../../../framework/system/tmr/src/sys_tmr.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1805060854/bsp.o ${OBJECTDIR}/_ext/327211555/sys_clk_pic32mz.o ${OBJECTDIR}/_ext/1884693325/sys_ports_static.o ${OBJECTDIR}/_ext/1519459830/sys_reset.o ${OBJECTDIR}/_ext/1673057882/system_init.o ${OBJECTDIR}/_ext/1673057882/system_interrupt.o ${OBJECTDIR}/_ext/1673057882/system_exceptions.o ${OBJECTDIR}/_ext/1673057882/system_tasks.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1152366776/drv_tmr.o ${OBJECTDIR}/_ext/1927798604/drv_usart.o ${OBJECTDIR}/_ext/1927798604/drv_usart_buffer_queue.o ${OBJECTDIR}/_ext/1927798604/drv_usart_read_write.o ${OBJECTDIR}/_ext/1451350481/sys_command.o ${OBJECTDIR}/_ext/169017583/sys_buffer.o ${OBJECTDIR}/_ext/169017583/sys_queue.o ${OBJECTDIR}/_ext/994638301/sys_console.o ${OBJECTDIR}/_ext/994638301/sys_console_uart.o ${OBJECTDIR}/_ext/322127129/sys_debug.o ${OBJECTDIR}/_ext/912498863/sys_devcon.o ${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mz.o ${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o ${OBJECTDIR}/_ext/430974239/sys_tmr.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1805060854/bsp.o.d ${OBJECTDIR}/_ext/327211555/sys_clk_pic32mz.o.d ${OBJECTDIR}/_ext/1884693325/sys_ports_static.o.d ${OBJECTDIR}/_ext/1519459830/sys_reset.o.d ${OBJECTDIR}/_ext/1673057882/system_init.o.d ${OBJECTDIR}/_ext/1673057882/system_interrupt.o.d ${OBJECTDIR}/_ext/1673057882/system_exceptions.o.d ${OBJECTDIR}/_ext/1673057882/system_tasks.o.d ${OBJECTDIR}/_ext/1360937237/app.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1152366776/drv_tmr.o.d ${OBJECTDIR}/_ext/1927798604/drv_usart.o.d ${OBJECTDIR}/_ext/1927798604/drv_usart_buffer_queue.o.d ${OBJECTDIR}/_ext/1927798604/drv_usart_read_write.o.d ${OBJECTDIR}/_ext/1451350481/sys_command.o.d ${OBJECTDIR}/_ext/169017583/sys_buffer.o.d ${OBJECTDIR}/_ext/169017583/sys_queue.o.d ${OBJECTDIR}/_ext/994638301/sys_console.o.d ${OBJECTDIR}/_ext/994638301/sys_console_uart.o.d ${OBJECTDIR}/_ext/322127129/sys_debug.o.d ${OBJECTDIR}/_ext/912498863/sys_devcon.o.d ${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mz.o.d ${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o.d ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o.d ${OBJECTDIR}/_ext/430974239/sys_tmr.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1805060854/bsp.o ${OBJECTDIR}/_ext/327211555/sys_clk_pic32mz.o ${OBJECTDIR}/_ext/1884693325/sys_ports_static.o ${OBJECTDIR}/_ext/1519459830/sys_reset.o ${OBJECTDIR}/_ext/1673057882/system_init.o ${OBJECTDIR}/_ext/1673057882/system_interrupt.o ${OBJECTDIR}/_ext/1673057882/system_exceptions.o ${OBJECTDIR}/_ext/1673057882/system_tasks.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1152366776/drv_tmr.o ${OBJECTDIR}/_ext/1927798604/drv_usart.o ${OBJECTDIR}/_ext/1927798604/drv_usart_buffer_queue.o ${OBJECTDIR}/_ext/1927798604/drv_usart_read_write.o ${OBJECTDIR}/_ext/1451350481/sys_command.o ${OBJECTDIR}/_ext/169017583/sys_buffer.o ${OBJECTDIR}/_ext/169017583/sys_queue.o ${OBJECTDIR}/_ext/994638301/sys_console.o ${OBJECTDIR}/_ext/994638301/sys_console_uart.o ${OBJECTDIR}/_ext/322127129/sys_debug.o ${OBJECTDIR}/_ext/912498863/sys_devcon.o ${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mz.o ${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o ${OBJECTDIR}/_ext/430974239/sys_tmr.o

# Source Files
SOURCEFILES=../src/system_config/pic32mz_curiosity_v2/bsp/bsp.c ../src/system_config/pic32mz_curiosity_v2/framework/system/clk/src/sys_clk_pic32mz.c ../src/system_config/pic32mz_curiosity_v2/framework/system/ports/src/sys_ports_static.c ../src/system_config/pic32mz_curiosity_v2/framework/system/reset/src/sys_reset.c ../src/system_config/pic32mz_curiosity_v2/system_init.c ../src/system_config/pic32mz_curiosity_v2/system_interrupt.c ../src/system_config/pic32mz_curiosity_v2/system_exceptions.c ../src/system_config/pic32mz_curiosity_v2/system_tasks.c ../src/app.c ../src/main.c ../../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c ../../../../../../framework/driver/usart/src/dynamic/drv_usart.c ../../../../../../framework/driver/usart/src/dynamic/drv_usart_buffer_queue.c ../../../../../../framework/driver/usart/src/dynamic/drv_usart_read_write.c ../../../../../../framework/system/command/src/sys_command.c ../../../../../../framework/system/common/src/sys_buffer.c ../../../../../../framework/system/common/src/sys_queue.c ../../../../../../framework/system/console/src/sys_console.c ../../../../../../framework/system/console/src/sys_console_uart.c ../../../../../../framework/system/debug/src/sys_debug.c ../../../../../../framework/system/devcon/src/sys_devcon.c ../../../../../../framework/system/devcon/src/sys_devcon_pic32mz.c ../../../../../../framework/system/devcon/src/sys_devcon_cache_pic32mz.S ../../../../../../framework/system/int/src/sys_int_pic32.c ../../../../../../framework/system/tmr/src/sys_tmr.c



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
	${MAKE}  -f nbproject/Makefile-pic32mz_curiosity_v2.mk ${DISTDIR}/debug_uart.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

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
${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o: ../../../../../../framework/system/devcon/src/sys_devcon_cache_pic32mz.S  .generated_files/flags/pic32mz_curiosity_v2/6d9b943449bc82ad07cc874c6f490e227673da01 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/912498863" 
	@${RM} ${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o 
	@${RM} ${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o.ok ${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o.d"  -o ${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o ../../../../../../framework/system/devcon/src/sys_devcon_cache_pic32mz.S  -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o.d" "${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o: ../../../../../../framework/system/devcon/src/sys_devcon_cache_pic32mz.S  .generated_files/flags/pic32mz_curiosity_v2/e43552401616f61faa1f391ff229da408aba78f2 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/912498863" 
	@${RM} ${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o 
	@${RM} ${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o.ok ${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o.d"  -o ${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o ../../../../../../framework/system/devcon/src/sys_devcon_cache_pic32mz.S  -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o.asm.d",--gdwarf-2 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o.d" "${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1805060854/bsp.o: ../src/system_config/pic32mz_curiosity_v2/bsp/bsp.c  .generated_files/flags/pic32mz_curiosity_v2/a8f71d56728d28cedbaa5eaa6f8c6663f22c16d2 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1805060854" 
	@${RM} ${OBJECTDIR}/_ext/1805060854/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1805060854/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1805060854/bsp.o.d" -o ${OBJECTDIR}/_ext/1805060854/bsp.o ../src/system_config/pic32mz_curiosity_v2/bsp/bsp.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/327211555/sys_clk_pic32mz.o: ../src/system_config/pic32mz_curiosity_v2/framework/system/clk/src/sys_clk_pic32mz.c  .generated_files/flags/pic32mz_curiosity_v2/379c62b13dca21f3d9d909031811338acfbc62cb .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/327211555" 
	@${RM} ${OBJECTDIR}/_ext/327211555/sys_clk_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/327211555/sys_clk_pic32mz.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/327211555/sys_clk_pic32mz.o.d" -o ${OBJECTDIR}/_ext/327211555/sys_clk_pic32mz.o ../src/system_config/pic32mz_curiosity_v2/framework/system/clk/src/sys_clk_pic32mz.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1884693325/sys_ports_static.o: ../src/system_config/pic32mz_curiosity_v2/framework/system/ports/src/sys_ports_static.c  .generated_files/flags/pic32mz_curiosity_v2/96a78471351a91380dd4fed06a10d83da530ae98 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1884693325" 
	@${RM} ${OBJECTDIR}/_ext/1884693325/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/1884693325/sys_ports_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1884693325/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/1884693325/sys_ports_static.o ../src/system_config/pic32mz_curiosity_v2/framework/system/ports/src/sys_ports_static.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1519459830/sys_reset.o: ../src/system_config/pic32mz_curiosity_v2/framework/system/reset/src/sys_reset.c  .generated_files/flags/pic32mz_curiosity_v2/7ce371403cbe0f870145857dedb4e45e54c1a34e .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1519459830" 
	@${RM} ${OBJECTDIR}/_ext/1519459830/sys_reset.o.d 
	@${RM} ${OBJECTDIR}/_ext/1519459830/sys_reset.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1519459830/sys_reset.o.d" -o ${OBJECTDIR}/_ext/1519459830/sys_reset.o ../src/system_config/pic32mz_curiosity_v2/framework/system/reset/src/sys_reset.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1673057882/system_init.o: ../src/system_config/pic32mz_curiosity_v2/system_init.c  .generated_files/flags/pic32mz_curiosity_v2/2c165e11241b1dda0e60d9d555a5c46c1738d7fe .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1673057882" 
	@${RM} ${OBJECTDIR}/_ext/1673057882/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1673057882/system_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1673057882/system_init.o.d" -o ${OBJECTDIR}/_ext/1673057882/system_init.o ../src/system_config/pic32mz_curiosity_v2/system_init.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1673057882/system_interrupt.o: ../src/system_config/pic32mz_curiosity_v2/system_interrupt.c  .generated_files/flags/pic32mz_curiosity_v2/f60e2fb926c2813a1221bd42bd969d2ec220485c .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1673057882" 
	@${RM} ${OBJECTDIR}/_ext/1673057882/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1673057882/system_interrupt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1673057882/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/1673057882/system_interrupt.o ../src/system_config/pic32mz_curiosity_v2/system_interrupt.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1673057882/system_exceptions.o: ../src/system_config/pic32mz_curiosity_v2/system_exceptions.c  .generated_files/flags/pic32mz_curiosity_v2/3a252be92fa9d4162a684d5d2e6c109d68461f01 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1673057882" 
	@${RM} ${OBJECTDIR}/_ext/1673057882/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1673057882/system_exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1673057882/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/1673057882/system_exceptions.o ../src/system_config/pic32mz_curiosity_v2/system_exceptions.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1673057882/system_tasks.o: ../src/system_config/pic32mz_curiosity_v2/system_tasks.c  .generated_files/flags/pic32mz_curiosity_v2/49232a56c37513329ff9db148802761768db4b73 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1673057882" 
	@${RM} ${OBJECTDIR}/_ext/1673057882/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1673057882/system_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1673057882/system_tasks.o.d" -o ${OBJECTDIR}/_ext/1673057882/system_tasks.o ../src/system_config/pic32mz_curiosity_v2/system_tasks.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/pic32mz_curiosity_v2/e8db921139be096d5628ef8e9f497bb91d967930 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/pic32mz_curiosity_v2/7ef41ff79e48331c3ae75dc918416180241b4862 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1152366776/drv_tmr.o: ../../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c  .generated_files/flags/pic32mz_curiosity_v2/e49129501402d77232b272629b46ab15fc343094 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1152366776" 
	@${RM} ${OBJECTDIR}/_ext/1152366776/drv_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1152366776/drv_tmr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1152366776/drv_tmr.o.d" -o ${OBJECTDIR}/_ext/1152366776/drv_tmr.o ../../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1927798604/drv_usart.o: ../../../../../../framework/driver/usart/src/dynamic/drv_usart.c  .generated_files/flags/pic32mz_curiosity_v2/c1d5fd1066f209535987f631fe15c4145cef3ec3 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1927798604" 
	@${RM} ${OBJECTDIR}/_ext/1927798604/drv_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1927798604/drv_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1927798604/drv_usart.o.d" -o ${OBJECTDIR}/_ext/1927798604/drv_usart.o ../../../../../../framework/driver/usart/src/dynamic/drv_usart.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1927798604/drv_usart_buffer_queue.o: ../../../../../../framework/driver/usart/src/dynamic/drv_usart_buffer_queue.c  .generated_files/flags/pic32mz_curiosity_v2/c86bf7a5d768104037b359ff7c7e683e657b4dae .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1927798604" 
	@${RM} ${OBJECTDIR}/_ext/1927798604/drv_usart_buffer_queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1927798604/drv_usart_buffer_queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1927798604/drv_usart_buffer_queue.o.d" -o ${OBJECTDIR}/_ext/1927798604/drv_usart_buffer_queue.o ../../../../../../framework/driver/usart/src/dynamic/drv_usart_buffer_queue.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1927798604/drv_usart_read_write.o: ../../../../../../framework/driver/usart/src/dynamic/drv_usart_read_write.c  .generated_files/flags/pic32mz_curiosity_v2/a9860b7b29051a145dafb43cad638f0da1e53cb3 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1927798604" 
	@${RM} ${OBJECTDIR}/_ext/1927798604/drv_usart_read_write.o.d 
	@${RM} ${OBJECTDIR}/_ext/1927798604/drv_usart_read_write.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1927798604/drv_usart_read_write.o.d" -o ${OBJECTDIR}/_ext/1927798604/drv_usart_read_write.o ../../../../../../framework/driver/usart/src/dynamic/drv_usart_read_write.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1451350481/sys_command.o: ../../../../../../framework/system/command/src/sys_command.c  .generated_files/flags/pic32mz_curiosity_v2/e45f315b7f9ed3316acbe7554c4d4284c090056d .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1451350481" 
	@${RM} ${OBJECTDIR}/_ext/1451350481/sys_command.o.d 
	@${RM} ${OBJECTDIR}/_ext/1451350481/sys_command.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1451350481/sys_command.o.d" -o ${OBJECTDIR}/_ext/1451350481/sys_command.o ../../../../../../framework/system/command/src/sys_command.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/169017583/sys_buffer.o: ../../../../../../framework/system/common/src/sys_buffer.c  .generated_files/flags/pic32mz_curiosity_v2/46ac9a480869094b7de5f5169c8779db718b5434 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/169017583" 
	@${RM} ${OBJECTDIR}/_ext/169017583/sys_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/169017583/sys_buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/169017583/sys_buffer.o.d" -o ${OBJECTDIR}/_ext/169017583/sys_buffer.o ../../../../../../framework/system/common/src/sys_buffer.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/169017583/sys_queue.o: ../../../../../../framework/system/common/src/sys_queue.c  .generated_files/flags/pic32mz_curiosity_v2/99880534893317eb91cf939e429ecba30bb0e8d2 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/169017583" 
	@${RM} ${OBJECTDIR}/_ext/169017583/sys_queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/169017583/sys_queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/169017583/sys_queue.o.d" -o ${OBJECTDIR}/_ext/169017583/sys_queue.o ../../../../../../framework/system/common/src/sys_queue.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/994638301/sys_console.o: ../../../../../../framework/system/console/src/sys_console.c  .generated_files/flags/pic32mz_curiosity_v2/910b31feedb3369a41f423fe420bf00fa730f8bc .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/994638301" 
	@${RM} ${OBJECTDIR}/_ext/994638301/sys_console.o.d 
	@${RM} ${OBJECTDIR}/_ext/994638301/sys_console.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/994638301/sys_console.o.d" -o ${OBJECTDIR}/_ext/994638301/sys_console.o ../../../../../../framework/system/console/src/sys_console.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/994638301/sys_console_uart.o: ../../../../../../framework/system/console/src/sys_console_uart.c  .generated_files/flags/pic32mz_curiosity_v2/fe4e1be443f59489b7b7923f4e5cab0e84f9f9a2 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/994638301" 
	@${RM} ${OBJECTDIR}/_ext/994638301/sys_console_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/994638301/sys_console_uart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/994638301/sys_console_uart.o.d" -o ${OBJECTDIR}/_ext/994638301/sys_console_uart.o ../../../../../../framework/system/console/src/sys_console_uart.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/322127129/sys_debug.o: ../../../../../../framework/system/debug/src/sys_debug.c  .generated_files/flags/pic32mz_curiosity_v2/9e17cc95e28462a6560b02562cae08eb5f6d3c72 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/322127129" 
	@${RM} ${OBJECTDIR}/_ext/322127129/sys_debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/322127129/sys_debug.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/322127129/sys_debug.o.d" -o ${OBJECTDIR}/_ext/322127129/sys_debug.o ../../../../../../framework/system/debug/src/sys_debug.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/912498863/sys_devcon.o: ../../../../../../framework/system/devcon/src/sys_devcon.c  .generated_files/flags/pic32mz_curiosity_v2/a731ac80cbe4a3245453c1c3bd348114cfe7b33a .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/912498863" 
	@${RM} ${OBJECTDIR}/_ext/912498863/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/912498863/sys_devcon.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/912498863/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/912498863/sys_devcon.o ../../../../../../framework/system/devcon/src/sys_devcon.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mz.o: ../../../../../../framework/system/devcon/src/sys_devcon_pic32mz.c  .generated_files/flags/pic32mz_curiosity_v2/411063b2d88fe5670941f0b56b71c5fffcbf37d5 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/912498863" 
	@${RM} ${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mz.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mz.o.d" -o ${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mz.o ../../../../../../framework/system/devcon/src/sys_devcon_pic32mz.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/711155467/sys_int_pic32.o: ../../../../../../framework/system/int/src/sys_int_pic32.c  .generated_files/flags/pic32mz_curiosity_v2/e934ac2921622eab91c42b8c065a70caa2597a05 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/711155467" 
	@${RM} ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/711155467/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o ../../../../../../framework/system/int/src/sys_int_pic32.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/430974239/sys_tmr.o: ../../../../../../framework/system/tmr/src/sys_tmr.c  .generated_files/flags/pic32mz_curiosity_v2/b869cae12962c31879f4cd239c10df6977b40d84 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/430974239" 
	@${RM} ${OBJECTDIR}/_ext/430974239/sys_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/430974239/sys_tmr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/430974239/sys_tmr.o.d" -o ${OBJECTDIR}/_ext/430974239/sys_tmr.o ../../../../../../framework/system/tmr/src/sys_tmr.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/1805060854/bsp.o: ../src/system_config/pic32mz_curiosity_v2/bsp/bsp.c  .generated_files/flags/pic32mz_curiosity_v2/cf2d8ec839b13b8a79c12175b3a529068763c649 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1805060854" 
	@${RM} ${OBJECTDIR}/_ext/1805060854/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1805060854/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1805060854/bsp.o.d" -o ${OBJECTDIR}/_ext/1805060854/bsp.o ../src/system_config/pic32mz_curiosity_v2/bsp/bsp.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/327211555/sys_clk_pic32mz.o: ../src/system_config/pic32mz_curiosity_v2/framework/system/clk/src/sys_clk_pic32mz.c  .generated_files/flags/pic32mz_curiosity_v2/b5480bf4917ee945c8029894484749309a3c622f .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/327211555" 
	@${RM} ${OBJECTDIR}/_ext/327211555/sys_clk_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/327211555/sys_clk_pic32mz.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/327211555/sys_clk_pic32mz.o.d" -o ${OBJECTDIR}/_ext/327211555/sys_clk_pic32mz.o ../src/system_config/pic32mz_curiosity_v2/framework/system/clk/src/sys_clk_pic32mz.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1884693325/sys_ports_static.o: ../src/system_config/pic32mz_curiosity_v2/framework/system/ports/src/sys_ports_static.c  .generated_files/flags/pic32mz_curiosity_v2/631e68c2084c74f6523367e168955e3b7e5b98dd .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1884693325" 
	@${RM} ${OBJECTDIR}/_ext/1884693325/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/1884693325/sys_ports_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1884693325/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/1884693325/sys_ports_static.o ../src/system_config/pic32mz_curiosity_v2/framework/system/ports/src/sys_ports_static.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1519459830/sys_reset.o: ../src/system_config/pic32mz_curiosity_v2/framework/system/reset/src/sys_reset.c  .generated_files/flags/pic32mz_curiosity_v2/cc40597428b163b672174f6ce6353a1827fae016 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1519459830" 
	@${RM} ${OBJECTDIR}/_ext/1519459830/sys_reset.o.d 
	@${RM} ${OBJECTDIR}/_ext/1519459830/sys_reset.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1519459830/sys_reset.o.d" -o ${OBJECTDIR}/_ext/1519459830/sys_reset.o ../src/system_config/pic32mz_curiosity_v2/framework/system/reset/src/sys_reset.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1673057882/system_init.o: ../src/system_config/pic32mz_curiosity_v2/system_init.c  .generated_files/flags/pic32mz_curiosity_v2/fcb9c2c0b9cb56b67bb6f3d7b12cceab4536dc74 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1673057882" 
	@${RM} ${OBJECTDIR}/_ext/1673057882/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1673057882/system_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1673057882/system_init.o.d" -o ${OBJECTDIR}/_ext/1673057882/system_init.o ../src/system_config/pic32mz_curiosity_v2/system_init.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1673057882/system_interrupt.o: ../src/system_config/pic32mz_curiosity_v2/system_interrupt.c  .generated_files/flags/pic32mz_curiosity_v2/70df719ef3c15b3d8b8bbb7fbbeb6b44ec9f5b5 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1673057882" 
	@${RM} ${OBJECTDIR}/_ext/1673057882/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1673057882/system_interrupt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1673057882/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/1673057882/system_interrupt.o ../src/system_config/pic32mz_curiosity_v2/system_interrupt.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1673057882/system_exceptions.o: ../src/system_config/pic32mz_curiosity_v2/system_exceptions.c  .generated_files/flags/pic32mz_curiosity_v2/9cc7ae8e910132b5f1a03f995f81ee24a3740035 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1673057882" 
	@${RM} ${OBJECTDIR}/_ext/1673057882/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1673057882/system_exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1673057882/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/1673057882/system_exceptions.o ../src/system_config/pic32mz_curiosity_v2/system_exceptions.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1673057882/system_tasks.o: ../src/system_config/pic32mz_curiosity_v2/system_tasks.c  .generated_files/flags/pic32mz_curiosity_v2/55efd8221d48a9f1b4649220d07c967128c203c7 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1673057882" 
	@${RM} ${OBJECTDIR}/_ext/1673057882/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1673057882/system_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1673057882/system_tasks.o.d" -o ${OBJECTDIR}/_ext/1673057882/system_tasks.o ../src/system_config/pic32mz_curiosity_v2/system_tasks.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/pic32mz_curiosity_v2/fab4cda5c3931f35f4f0e9bb703661ed9cbaacfe .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/pic32mz_curiosity_v2/cb14a8c8a639ef3ecdd5a13bf63fd2d07255fa54 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1152366776/drv_tmr.o: ../../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c  .generated_files/flags/pic32mz_curiosity_v2/1c42dce1fe197a8eb72bc52a85389a476e4d8104 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1152366776" 
	@${RM} ${OBJECTDIR}/_ext/1152366776/drv_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1152366776/drv_tmr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1152366776/drv_tmr.o.d" -o ${OBJECTDIR}/_ext/1152366776/drv_tmr.o ../../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1927798604/drv_usart.o: ../../../../../../framework/driver/usart/src/dynamic/drv_usart.c  .generated_files/flags/pic32mz_curiosity_v2/364ed80cbee891e1456565c3371b496aaaecc6b8 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1927798604" 
	@${RM} ${OBJECTDIR}/_ext/1927798604/drv_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1927798604/drv_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1927798604/drv_usart.o.d" -o ${OBJECTDIR}/_ext/1927798604/drv_usart.o ../../../../../../framework/driver/usart/src/dynamic/drv_usart.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1927798604/drv_usart_buffer_queue.o: ../../../../../../framework/driver/usart/src/dynamic/drv_usart_buffer_queue.c  .generated_files/flags/pic32mz_curiosity_v2/1b6f1d1423220574d87c304aba5a67e2f1779e95 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1927798604" 
	@${RM} ${OBJECTDIR}/_ext/1927798604/drv_usart_buffer_queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1927798604/drv_usart_buffer_queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1927798604/drv_usart_buffer_queue.o.d" -o ${OBJECTDIR}/_ext/1927798604/drv_usart_buffer_queue.o ../../../../../../framework/driver/usart/src/dynamic/drv_usart_buffer_queue.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1927798604/drv_usart_read_write.o: ../../../../../../framework/driver/usart/src/dynamic/drv_usart_read_write.c  .generated_files/flags/pic32mz_curiosity_v2/6d3adf7d4b51203ce6041ed2193d9e0b28f89a8a .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1927798604" 
	@${RM} ${OBJECTDIR}/_ext/1927798604/drv_usart_read_write.o.d 
	@${RM} ${OBJECTDIR}/_ext/1927798604/drv_usart_read_write.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1927798604/drv_usart_read_write.o.d" -o ${OBJECTDIR}/_ext/1927798604/drv_usart_read_write.o ../../../../../../framework/driver/usart/src/dynamic/drv_usart_read_write.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1451350481/sys_command.o: ../../../../../../framework/system/command/src/sys_command.c  .generated_files/flags/pic32mz_curiosity_v2/9a68fac9d1cb403307b66581a34868d0a076329d .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1451350481" 
	@${RM} ${OBJECTDIR}/_ext/1451350481/sys_command.o.d 
	@${RM} ${OBJECTDIR}/_ext/1451350481/sys_command.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1451350481/sys_command.o.d" -o ${OBJECTDIR}/_ext/1451350481/sys_command.o ../../../../../../framework/system/command/src/sys_command.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/169017583/sys_buffer.o: ../../../../../../framework/system/common/src/sys_buffer.c  .generated_files/flags/pic32mz_curiosity_v2/61bd3a8dbc578f6238ad8440a3031fad6213fc1e .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/169017583" 
	@${RM} ${OBJECTDIR}/_ext/169017583/sys_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/169017583/sys_buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/169017583/sys_buffer.o.d" -o ${OBJECTDIR}/_ext/169017583/sys_buffer.o ../../../../../../framework/system/common/src/sys_buffer.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/169017583/sys_queue.o: ../../../../../../framework/system/common/src/sys_queue.c  .generated_files/flags/pic32mz_curiosity_v2/e7d316381f29927100d4c55bc506dcb730b69c12 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/169017583" 
	@${RM} ${OBJECTDIR}/_ext/169017583/sys_queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/169017583/sys_queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/169017583/sys_queue.o.d" -o ${OBJECTDIR}/_ext/169017583/sys_queue.o ../../../../../../framework/system/common/src/sys_queue.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/994638301/sys_console.o: ../../../../../../framework/system/console/src/sys_console.c  .generated_files/flags/pic32mz_curiosity_v2/613c7a264c358012ce1e99fb979b784f86314ec5 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/994638301" 
	@${RM} ${OBJECTDIR}/_ext/994638301/sys_console.o.d 
	@${RM} ${OBJECTDIR}/_ext/994638301/sys_console.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/994638301/sys_console.o.d" -o ${OBJECTDIR}/_ext/994638301/sys_console.o ../../../../../../framework/system/console/src/sys_console.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/994638301/sys_console_uart.o: ../../../../../../framework/system/console/src/sys_console_uart.c  .generated_files/flags/pic32mz_curiosity_v2/7697271570a5ef965453f4669b5ef6677b88d726 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/994638301" 
	@${RM} ${OBJECTDIR}/_ext/994638301/sys_console_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/994638301/sys_console_uart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/994638301/sys_console_uart.o.d" -o ${OBJECTDIR}/_ext/994638301/sys_console_uart.o ../../../../../../framework/system/console/src/sys_console_uart.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/322127129/sys_debug.o: ../../../../../../framework/system/debug/src/sys_debug.c  .generated_files/flags/pic32mz_curiosity_v2/bc85eac9fea26bc7771f031601377d02124ca673 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/322127129" 
	@${RM} ${OBJECTDIR}/_ext/322127129/sys_debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/322127129/sys_debug.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/322127129/sys_debug.o.d" -o ${OBJECTDIR}/_ext/322127129/sys_debug.o ../../../../../../framework/system/debug/src/sys_debug.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/912498863/sys_devcon.o: ../../../../../../framework/system/devcon/src/sys_devcon.c  .generated_files/flags/pic32mz_curiosity_v2/b393eb1e3509f05cc0b72e6498a5dbe24d7b02fb .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/912498863" 
	@${RM} ${OBJECTDIR}/_ext/912498863/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/912498863/sys_devcon.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/912498863/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/912498863/sys_devcon.o ../../../../../../framework/system/devcon/src/sys_devcon.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mz.o: ../../../../../../framework/system/devcon/src/sys_devcon_pic32mz.c  .generated_files/flags/pic32mz_curiosity_v2/6c2c4dfbcf43fa4f4d7f65065cc944cb652f4a8e .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/912498863" 
	@${RM} ${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mz.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mz.o.d" -o ${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mz.o ../../../../../../framework/system/devcon/src/sys_devcon_pic32mz.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/711155467/sys_int_pic32.o: ../../../../../../framework/system/int/src/sys_int_pic32.c  .generated_files/flags/pic32mz_curiosity_v2/ff94ba4eafde57d138680cd8e711fa75765ec0ea .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/711155467" 
	@${RM} ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/711155467/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o ../../../../../../framework/system/int/src/sys_int_pic32.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/430974239/sys_tmr.o: ../../../../../../framework/system/tmr/src/sys_tmr.c  .generated_files/flags/pic32mz_curiosity_v2/e6f0186fcd8b6defa0e869bd2fe4343e771b74e0 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/430974239" 
	@${RM} ${OBJECTDIR}/_ext/430974239/sys_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/430974239/sys_tmr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/430974239/sys_tmr.o.d" -o ${OBJECTDIR}/_ext/430974239/sys_tmr.o ../../../../../../framework/system/tmr/src/sys_tmr.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/debug_uart.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../../../bin/framework/peripheral/PIC32MZ2048EFM144_peripherals.a  
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/debug_uart.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\..\..\..\..\..\bin\framework\peripheral\PIC32MZ2048EFM144_peripherals.a      -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x37F   -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=2048,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/debug_uart.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../../../bin/framework/peripheral/PIC32MZ2048EFM144_peripherals.a 
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/debug_uart.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\..\..\..\..\..\bin\framework\peripheral\PIC32MZ2048EFM144_peripherals.a      -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=2048,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/debug_uart.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
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
