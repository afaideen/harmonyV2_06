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
${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o: ../../../../../../framework/system/devcon/src/sys_devcon_cache_pic32mz.S  .generated_files/flags/pic32mz_curiosity_v2/fb4a81895b205ff77d95aea5165874c9539b7619 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/912498863" 
	@${RM} ${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o 
	@${RM} ${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o.ok ${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o.d"  -o ${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o ../../../../../../framework/system/devcon/src/sys_devcon_cache_pic32mz.S  -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o.d" "${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o: ../../../../../../framework/system/devcon/src/sys_devcon_cache_pic32mz.S  .generated_files/flags/pic32mz_curiosity_v2/bb64ddcab696f824fab555b6739ed5c07c17a3ff .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
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
${OBJECTDIR}/_ext/1805060854/bsp.o: ../src/system_config/pic32mz_curiosity_v2/bsp/bsp.c  .generated_files/flags/pic32mz_curiosity_v2/3bb656ee39fe0865c4fb8617bf4e0205f56e4141 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1805060854" 
	@${RM} ${OBJECTDIR}/_ext/1805060854/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1805060854/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1805060854/bsp.o.d" -o ${OBJECTDIR}/_ext/1805060854/bsp.o ../src/system_config/pic32mz_curiosity_v2/bsp/bsp.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/327211555/sys_clk_pic32mz.o: ../src/system_config/pic32mz_curiosity_v2/framework/system/clk/src/sys_clk_pic32mz.c  .generated_files/flags/pic32mz_curiosity_v2/c5b2df6b8333c67359b90500c8a2e7a4ce94c807 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/327211555" 
	@${RM} ${OBJECTDIR}/_ext/327211555/sys_clk_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/327211555/sys_clk_pic32mz.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/327211555/sys_clk_pic32mz.o.d" -o ${OBJECTDIR}/_ext/327211555/sys_clk_pic32mz.o ../src/system_config/pic32mz_curiosity_v2/framework/system/clk/src/sys_clk_pic32mz.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1884693325/sys_ports_static.o: ../src/system_config/pic32mz_curiosity_v2/framework/system/ports/src/sys_ports_static.c  .generated_files/flags/pic32mz_curiosity_v2/fb7c431c9b53fad27ae441feec08f44560e76870 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1884693325" 
	@${RM} ${OBJECTDIR}/_ext/1884693325/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/1884693325/sys_ports_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1884693325/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/1884693325/sys_ports_static.o ../src/system_config/pic32mz_curiosity_v2/framework/system/ports/src/sys_ports_static.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1519459830/sys_reset.o: ../src/system_config/pic32mz_curiosity_v2/framework/system/reset/src/sys_reset.c  .generated_files/flags/pic32mz_curiosity_v2/1cc4c09aca648a6a05117fde27d47be329dea072 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1519459830" 
	@${RM} ${OBJECTDIR}/_ext/1519459830/sys_reset.o.d 
	@${RM} ${OBJECTDIR}/_ext/1519459830/sys_reset.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1519459830/sys_reset.o.d" -o ${OBJECTDIR}/_ext/1519459830/sys_reset.o ../src/system_config/pic32mz_curiosity_v2/framework/system/reset/src/sys_reset.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1673057882/system_init.o: ../src/system_config/pic32mz_curiosity_v2/system_init.c  .generated_files/flags/pic32mz_curiosity_v2/d33ee302d7c2fed9bb6cfead20413e482027781e .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1673057882" 
	@${RM} ${OBJECTDIR}/_ext/1673057882/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1673057882/system_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1673057882/system_init.o.d" -o ${OBJECTDIR}/_ext/1673057882/system_init.o ../src/system_config/pic32mz_curiosity_v2/system_init.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1673057882/system_interrupt.o: ../src/system_config/pic32mz_curiosity_v2/system_interrupt.c  .generated_files/flags/pic32mz_curiosity_v2/7afdb1fbac85853588f21e320b477f9c1496332b .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1673057882" 
	@${RM} ${OBJECTDIR}/_ext/1673057882/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1673057882/system_interrupt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1673057882/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/1673057882/system_interrupt.o ../src/system_config/pic32mz_curiosity_v2/system_interrupt.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1673057882/system_exceptions.o: ../src/system_config/pic32mz_curiosity_v2/system_exceptions.c  .generated_files/flags/pic32mz_curiosity_v2/a94ee825cbc03455baa1e442025e70c48225c16c .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1673057882" 
	@${RM} ${OBJECTDIR}/_ext/1673057882/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1673057882/system_exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1673057882/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/1673057882/system_exceptions.o ../src/system_config/pic32mz_curiosity_v2/system_exceptions.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1673057882/system_tasks.o: ../src/system_config/pic32mz_curiosity_v2/system_tasks.c  .generated_files/flags/pic32mz_curiosity_v2/85220a3949c46afc8e742e2cea40e56cc2e8640d .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1673057882" 
	@${RM} ${OBJECTDIR}/_ext/1673057882/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1673057882/system_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1673057882/system_tasks.o.d" -o ${OBJECTDIR}/_ext/1673057882/system_tasks.o ../src/system_config/pic32mz_curiosity_v2/system_tasks.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/pic32mz_curiosity_v2/78b25df9a18ef2cc11ceeae9df461c55bdd6a9ab .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/pic32mz_curiosity_v2/75c4fe11b19997895a09ce316f17016e9a2a7e7d .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1152366776/drv_tmr.o: ../../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c  .generated_files/flags/pic32mz_curiosity_v2/d8ef09a8527d2e2976d4dbd3c2d58edfb520d121 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1152366776" 
	@${RM} ${OBJECTDIR}/_ext/1152366776/drv_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1152366776/drv_tmr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1152366776/drv_tmr.o.d" -o ${OBJECTDIR}/_ext/1152366776/drv_tmr.o ../../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1927798604/drv_usart.o: ../../../../../../framework/driver/usart/src/dynamic/drv_usart.c  .generated_files/flags/pic32mz_curiosity_v2/851dd2479c6197bde3b2d304265d91f3eb7d4b54 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1927798604" 
	@${RM} ${OBJECTDIR}/_ext/1927798604/drv_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1927798604/drv_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1927798604/drv_usart.o.d" -o ${OBJECTDIR}/_ext/1927798604/drv_usart.o ../../../../../../framework/driver/usart/src/dynamic/drv_usart.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1927798604/drv_usart_buffer_queue.o: ../../../../../../framework/driver/usart/src/dynamic/drv_usart_buffer_queue.c  .generated_files/flags/pic32mz_curiosity_v2/edd59dc6078c1186847cfc74becfea019514382f .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1927798604" 
	@${RM} ${OBJECTDIR}/_ext/1927798604/drv_usart_buffer_queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1927798604/drv_usart_buffer_queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1927798604/drv_usart_buffer_queue.o.d" -o ${OBJECTDIR}/_ext/1927798604/drv_usart_buffer_queue.o ../../../../../../framework/driver/usart/src/dynamic/drv_usart_buffer_queue.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1927798604/drv_usart_read_write.o: ../../../../../../framework/driver/usart/src/dynamic/drv_usart_read_write.c  .generated_files/flags/pic32mz_curiosity_v2/2114c492bcd110bdc78e171579de6424df6ebe7 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1927798604" 
	@${RM} ${OBJECTDIR}/_ext/1927798604/drv_usart_read_write.o.d 
	@${RM} ${OBJECTDIR}/_ext/1927798604/drv_usart_read_write.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1927798604/drv_usart_read_write.o.d" -o ${OBJECTDIR}/_ext/1927798604/drv_usart_read_write.o ../../../../../../framework/driver/usart/src/dynamic/drv_usart_read_write.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1451350481/sys_command.o: ../../../../../../framework/system/command/src/sys_command.c  .generated_files/flags/pic32mz_curiosity_v2/bb683f8840f92eb0e8d19a504cff14d19a324749 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1451350481" 
	@${RM} ${OBJECTDIR}/_ext/1451350481/sys_command.o.d 
	@${RM} ${OBJECTDIR}/_ext/1451350481/sys_command.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1451350481/sys_command.o.d" -o ${OBJECTDIR}/_ext/1451350481/sys_command.o ../../../../../../framework/system/command/src/sys_command.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/169017583/sys_buffer.o: ../../../../../../framework/system/common/src/sys_buffer.c  .generated_files/flags/pic32mz_curiosity_v2/2e59558dfd117ad137470c9486a37bfc31d5f992 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/169017583" 
	@${RM} ${OBJECTDIR}/_ext/169017583/sys_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/169017583/sys_buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/169017583/sys_buffer.o.d" -o ${OBJECTDIR}/_ext/169017583/sys_buffer.o ../../../../../../framework/system/common/src/sys_buffer.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/169017583/sys_queue.o: ../../../../../../framework/system/common/src/sys_queue.c  .generated_files/flags/pic32mz_curiosity_v2/4bc4e3403bfefa8bcc272f3fabb6a812176ede26 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/169017583" 
	@${RM} ${OBJECTDIR}/_ext/169017583/sys_queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/169017583/sys_queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/169017583/sys_queue.o.d" -o ${OBJECTDIR}/_ext/169017583/sys_queue.o ../../../../../../framework/system/common/src/sys_queue.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/994638301/sys_console.o: ../../../../../../framework/system/console/src/sys_console.c  .generated_files/flags/pic32mz_curiosity_v2/7de62560836389c42b4981da549c8e130b95a362 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/994638301" 
	@${RM} ${OBJECTDIR}/_ext/994638301/sys_console.o.d 
	@${RM} ${OBJECTDIR}/_ext/994638301/sys_console.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/994638301/sys_console.o.d" -o ${OBJECTDIR}/_ext/994638301/sys_console.o ../../../../../../framework/system/console/src/sys_console.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/994638301/sys_console_uart.o: ../../../../../../framework/system/console/src/sys_console_uart.c  .generated_files/flags/pic32mz_curiosity_v2/9934d5b32e8fc95106228ef57b69cd97f52975f0 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/994638301" 
	@${RM} ${OBJECTDIR}/_ext/994638301/sys_console_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/994638301/sys_console_uart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/994638301/sys_console_uart.o.d" -o ${OBJECTDIR}/_ext/994638301/sys_console_uart.o ../../../../../../framework/system/console/src/sys_console_uart.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/322127129/sys_debug.o: ../../../../../../framework/system/debug/src/sys_debug.c  .generated_files/flags/pic32mz_curiosity_v2/c3e901926d9abf1092bf3c0015b506fa0157bacc .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/322127129" 
	@${RM} ${OBJECTDIR}/_ext/322127129/sys_debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/322127129/sys_debug.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/322127129/sys_debug.o.d" -o ${OBJECTDIR}/_ext/322127129/sys_debug.o ../../../../../../framework/system/debug/src/sys_debug.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/912498863/sys_devcon.o: ../../../../../../framework/system/devcon/src/sys_devcon.c  .generated_files/flags/pic32mz_curiosity_v2/4b988ea672135ad338288f68d96a86295eb39edc .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/912498863" 
	@${RM} ${OBJECTDIR}/_ext/912498863/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/912498863/sys_devcon.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/912498863/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/912498863/sys_devcon.o ../../../../../../framework/system/devcon/src/sys_devcon.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mz.o: ../../../../../../framework/system/devcon/src/sys_devcon_pic32mz.c  .generated_files/flags/pic32mz_curiosity_v2/c94035d9a678ff6070c8de58b5ac4e7e30e34e70 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/912498863" 
	@${RM} ${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mz.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mz.o.d" -o ${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mz.o ../../../../../../framework/system/devcon/src/sys_devcon_pic32mz.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/711155467/sys_int_pic32.o: ../../../../../../framework/system/int/src/sys_int_pic32.c  .generated_files/flags/pic32mz_curiosity_v2/92956c039ca412d1516ce13645e88d6f69eabff .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/711155467" 
	@${RM} ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/711155467/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o ../../../../../../framework/system/int/src/sys_int_pic32.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/430974239/sys_tmr.o: ../../../../../../framework/system/tmr/src/sys_tmr.c  .generated_files/flags/pic32mz_curiosity_v2/6675906758c679bab30d0b23accc43da6f4a57bc .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/430974239" 
	@${RM} ${OBJECTDIR}/_ext/430974239/sys_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/430974239/sys_tmr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/430974239/sys_tmr.o.d" -o ${OBJECTDIR}/_ext/430974239/sys_tmr.o ../../../../../../framework/system/tmr/src/sys_tmr.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/1805060854/bsp.o: ../src/system_config/pic32mz_curiosity_v2/bsp/bsp.c  .generated_files/flags/pic32mz_curiosity_v2/db7cf794b6669273cdf10363b83b470c8c5338f6 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1805060854" 
	@${RM} ${OBJECTDIR}/_ext/1805060854/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1805060854/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1805060854/bsp.o.d" -o ${OBJECTDIR}/_ext/1805060854/bsp.o ../src/system_config/pic32mz_curiosity_v2/bsp/bsp.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/327211555/sys_clk_pic32mz.o: ../src/system_config/pic32mz_curiosity_v2/framework/system/clk/src/sys_clk_pic32mz.c  .generated_files/flags/pic32mz_curiosity_v2/28444285b6479b1e24af423aa876c68dfe28a5ed .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/327211555" 
	@${RM} ${OBJECTDIR}/_ext/327211555/sys_clk_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/327211555/sys_clk_pic32mz.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/327211555/sys_clk_pic32mz.o.d" -o ${OBJECTDIR}/_ext/327211555/sys_clk_pic32mz.o ../src/system_config/pic32mz_curiosity_v2/framework/system/clk/src/sys_clk_pic32mz.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1884693325/sys_ports_static.o: ../src/system_config/pic32mz_curiosity_v2/framework/system/ports/src/sys_ports_static.c  .generated_files/flags/pic32mz_curiosity_v2/9e27ff51a5b096e8915037264e0ee2639d2e14d8 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1884693325" 
	@${RM} ${OBJECTDIR}/_ext/1884693325/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/1884693325/sys_ports_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1884693325/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/1884693325/sys_ports_static.o ../src/system_config/pic32mz_curiosity_v2/framework/system/ports/src/sys_ports_static.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1519459830/sys_reset.o: ../src/system_config/pic32mz_curiosity_v2/framework/system/reset/src/sys_reset.c  .generated_files/flags/pic32mz_curiosity_v2/b97aee3d070c212e63da27db0c19c38aa9e5bef9 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1519459830" 
	@${RM} ${OBJECTDIR}/_ext/1519459830/sys_reset.o.d 
	@${RM} ${OBJECTDIR}/_ext/1519459830/sys_reset.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1519459830/sys_reset.o.d" -o ${OBJECTDIR}/_ext/1519459830/sys_reset.o ../src/system_config/pic32mz_curiosity_v2/framework/system/reset/src/sys_reset.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1673057882/system_init.o: ../src/system_config/pic32mz_curiosity_v2/system_init.c  .generated_files/flags/pic32mz_curiosity_v2/736f7d8266c0f3dba2380f8b18ae82d6f8f11d00 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1673057882" 
	@${RM} ${OBJECTDIR}/_ext/1673057882/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1673057882/system_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1673057882/system_init.o.d" -o ${OBJECTDIR}/_ext/1673057882/system_init.o ../src/system_config/pic32mz_curiosity_v2/system_init.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1673057882/system_interrupt.o: ../src/system_config/pic32mz_curiosity_v2/system_interrupt.c  .generated_files/flags/pic32mz_curiosity_v2/eb5e6d3076854dbc0c387c6e5fd38a735794f842 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1673057882" 
	@${RM} ${OBJECTDIR}/_ext/1673057882/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1673057882/system_interrupt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1673057882/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/1673057882/system_interrupt.o ../src/system_config/pic32mz_curiosity_v2/system_interrupt.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1673057882/system_exceptions.o: ../src/system_config/pic32mz_curiosity_v2/system_exceptions.c  .generated_files/flags/pic32mz_curiosity_v2/d1e54a16714094011c128d4575dafce47d988b2b .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1673057882" 
	@${RM} ${OBJECTDIR}/_ext/1673057882/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1673057882/system_exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1673057882/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/1673057882/system_exceptions.o ../src/system_config/pic32mz_curiosity_v2/system_exceptions.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1673057882/system_tasks.o: ../src/system_config/pic32mz_curiosity_v2/system_tasks.c  .generated_files/flags/pic32mz_curiosity_v2/4de3b378e75e98843f6842964bd8d60ca6e39d84 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1673057882" 
	@${RM} ${OBJECTDIR}/_ext/1673057882/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1673057882/system_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1673057882/system_tasks.o.d" -o ${OBJECTDIR}/_ext/1673057882/system_tasks.o ../src/system_config/pic32mz_curiosity_v2/system_tasks.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/pic32mz_curiosity_v2/cbfb58412ec31f6a196f555dc462dad960e9c01e .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/pic32mz_curiosity_v2/ae9dfdbd82ebc158b6ee38a099352be96118e799 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1152366776/drv_tmr.o: ../../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c  .generated_files/flags/pic32mz_curiosity_v2/df5763a8232680c7b2bbcb177bcf3b18bc5f0471 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1152366776" 
	@${RM} ${OBJECTDIR}/_ext/1152366776/drv_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1152366776/drv_tmr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1152366776/drv_tmr.o.d" -o ${OBJECTDIR}/_ext/1152366776/drv_tmr.o ../../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1927798604/drv_usart.o: ../../../../../../framework/driver/usart/src/dynamic/drv_usart.c  .generated_files/flags/pic32mz_curiosity_v2/759318971c2759c82c9f43954d5c1ad50cbccfed .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1927798604" 
	@${RM} ${OBJECTDIR}/_ext/1927798604/drv_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1927798604/drv_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1927798604/drv_usart.o.d" -o ${OBJECTDIR}/_ext/1927798604/drv_usart.o ../../../../../../framework/driver/usart/src/dynamic/drv_usart.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1927798604/drv_usart_buffer_queue.o: ../../../../../../framework/driver/usart/src/dynamic/drv_usart_buffer_queue.c  .generated_files/flags/pic32mz_curiosity_v2/ccd021ab81fa187f10a32edc233b83a758832024 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1927798604" 
	@${RM} ${OBJECTDIR}/_ext/1927798604/drv_usart_buffer_queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1927798604/drv_usart_buffer_queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1927798604/drv_usart_buffer_queue.o.d" -o ${OBJECTDIR}/_ext/1927798604/drv_usart_buffer_queue.o ../../../../../../framework/driver/usart/src/dynamic/drv_usart_buffer_queue.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1927798604/drv_usart_read_write.o: ../../../../../../framework/driver/usart/src/dynamic/drv_usart_read_write.c  .generated_files/flags/pic32mz_curiosity_v2/119718c770ae113481c22c3dc4d48b359e2ee68f .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1927798604" 
	@${RM} ${OBJECTDIR}/_ext/1927798604/drv_usart_read_write.o.d 
	@${RM} ${OBJECTDIR}/_ext/1927798604/drv_usart_read_write.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1927798604/drv_usart_read_write.o.d" -o ${OBJECTDIR}/_ext/1927798604/drv_usart_read_write.o ../../../../../../framework/driver/usart/src/dynamic/drv_usart_read_write.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1451350481/sys_command.o: ../../../../../../framework/system/command/src/sys_command.c  .generated_files/flags/pic32mz_curiosity_v2/77669ac750a65a84fa545e91a3e152e58613b651 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1451350481" 
	@${RM} ${OBJECTDIR}/_ext/1451350481/sys_command.o.d 
	@${RM} ${OBJECTDIR}/_ext/1451350481/sys_command.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1451350481/sys_command.o.d" -o ${OBJECTDIR}/_ext/1451350481/sys_command.o ../../../../../../framework/system/command/src/sys_command.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/169017583/sys_buffer.o: ../../../../../../framework/system/common/src/sys_buffer.c  .generated_files/flags/pic32mz_curiosity_v2/18e034f60bea1cfdf667060d7111a71957f775e .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/169017583" 
	@${RM} ${OBJECTDIR}/_ext/169017583/sys_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/169017583/sys_buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/169017583/sys_buffer.o.d" -o ${OBJECTDIR}/_ext/169017583/sys_buffer.o ../../../../../../framework/system/common/src/sys_buffer.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/169017583/sys_queue.o: ../../../../../../framework/system/common/src/sys_queue.c  .generated_files/flags/pic32mz_curiosity_v2/df11528b69aa52fff537b1c7152de72b46820d2b .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/169017583" 
	@${RM} ${OBJECTDIR}/_ext/169017583/sys_queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/169017583/sys_queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/169017583/sys_queue.o.d" -o ${OBJECTDIR}/_ext/169017583/sys_queue.o ../../../../../../framework/system/common/src/sys_queue.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/994638301/sys_console.o: ../../../../../../framework/system/console/src/sys_console.c  .generated_files/flags/pic32mz_curiosity_v2/4d8cb81b74b2a987b1952f7559c0160e4d018a25 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/994638301" 
	@${RM} ${OBJECTDIR}/_ext/994638301/sys_console.o.d 
	@${RM} ${OBJECTDIR}/_ext/994638301/sys_console.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/994638301/sys_console.o.d" -o ${OBJECTDIR}/_ext/994638301/sys_console.o ../../../../../../framework/system/console/src/sys_console.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/994638301/sys_console_uart.o: ../../../../../../framework/system/console/src/sys_console_uart.c  .generated_files/flags/pic32mz_curiosity_v2/68ab8aebac40d1281ab8915fbc2e5393d301e766 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/994638301" 
	@${RM} ${OBJECTDIR}/_ext/994638301/sys_console_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/994638301/sys_console_uart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/994638301/sys_console_uart.o.d" -o ${OBJECTDIR}/_ext/994638301/sys_console_uart.o ../../../../../../framework/system/console/src/sys_console_uart.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/322127129/sys_debug.o: ../../../../../../framework/system/debug/src/sys_debug.c  .generated_files/flags/pic32mz_curiosity_v2/37e7b540e50f06dec9500f4815c5cac2649f5f8f .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/322127129" 
	@${RM} ${OBJECTDIR}/_ext/322127129/sys_debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/322127129/sys_debug.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/322127129/sys_debug.o.d" -o ${OBJECTDIR}/_ext/322127129/sys_debug.o ../../../../../../framework/system/debug/src/sys_debug.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/912498863/sys_devcon.o: ../../../../../../framework/system/devcon/src/sys_devcon.c  .generated_files/flags/pic32mz_curiosity_v2/1eb9a9b7e363263406183fab5a8f4c093009e038 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/912498863" 
	@${RM} ${OBJECTDIR}/_ext/912498863/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/912498863/sys_devcon.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/912498863/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/912498863/sys_devcon.o ../../../../../../framework/system/devcon/src/sys_devcon.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mz.o: ../../../../../../framework/system/devcon/src/sys_devcon_pic32mz.c  .generated_files/flags/pic32mz_curiosity_v2/231645f258a6f0c98c13bda29312042fce64def3 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/912498863" 
	@${RM} ${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mz.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mz.o.d" -o ${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mz.o ../../../../../../framework/system/devcon/src/sys_devcon_pic32mz.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/711155467/sys_int_pic32.o: ../../../../../../framework/system/int/src/sys_int_pic32.c  .generated_files/flags/pic32mz_curiosity_v2/c424bbee2a16ef5057195893c191d437c36e9348 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/711155467" 
	@${RM} ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2" -I"../src/pic32mz_curiosity_v2" -I"../src/system_config/pic32mz_curiosity_v2/framework" -I"../src/system_config/pic32mz_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/711155467/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o ../../../../../../framework/system/int/src/sys_int_pic32.c    -DXPRJ_pic32mz_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/430974239/sys_tmr.o: ../../../../../../framework/system/tmr/src/sys_tmr.c  .generated_files/flags/pic32mz_curiosity_v2/ccf253e09cbe714c2140d64f8cdae070b9d71eb2 .generated_files/flags/pic32mz_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
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
