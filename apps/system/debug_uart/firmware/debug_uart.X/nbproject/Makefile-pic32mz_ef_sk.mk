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
SOURCEFILES_QUOTED_IF_SPACED=../src/system_config/pic32mz_ef_sk/bsp/bsp.c ../src/system_config/pic32mz_ef_sk/framework/system/clk/src/sys_clk_pic32mz.c ../src/system_config/pic32mz_ef_sk/framework/system/devcon/src/sys_devcon.c ../src/system_config/pic32mz_ef_sk/framework/system/devcon/src/sys_devcon_pic32mz.c ../src/system_config/pic32mz_ef_sk/framework/system/devcon/src/sys_devcon_cache_pic32mz.S ../src/system_config/pic32mz_ef_sk/framework/system/ports/src/sys_ports_static.c ../src/system_config/pic32mz_ef_sk/system_init.c ../src/system_config/pic32mz_ef_sk/system_interrupt.c ../src/system_config/pic32mz_ef_sk/system_exceptions.c ../src/system_config/pic32mz_ef_sk/system_tasks.c ../src/app.c ../src/main.c ../../../../../../framework/driver/usart/src/dynamic/drv_usart.c ../../../../../../framework/driver/usart/src/dynamic/drv_usart_buffer_queue.c ../../../../../../framework/driver/usart/src/dynamic/drv_usart_read_write.c ../../../../../../framework/system/console/src/sys_console.c ../../../../../../framework/system/console/src/sys_console_uart.c ../../../../../../framework/system/debug/src/sys_debug.c ../../../../../../framework/system/int/src/sys_int_pic32.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/354129722/bsp.o ${OBJECTDIR}/_ext/571564127/sys_clk_pic32mz.o ${OBJECTDIR}/_ext/1868830280/sys_devcon.o ${OBJECTDIR}/_ext/1868830280/sys_devcon_pic32mz.o ${OBJECTDIR}/_ext/1868830280/sys_devcon_cache_pic32mz.o ${OBJECTDIR}/_ext/1009894383/sys_ports_static.o ${OBJECTDIR}/_ext/849053718/system_init.o ${OBJECTDIR}/_ext/849053718/system_interrupt.o ${OBJECTDIR}/_ext/849053718/system_exceptions.o ${OBJECTDIR}/_ext/849053718/system_tasks.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1927798604/drv_usart.o ${OBJECTDIR}/_ext/1927798604/drv_usart_buffer_queue.o ${OBJECTDIR}/_ext/1927798604/drv_usart_read_write.o ${OBJECTDIR}/_ext/994638301/sys_console.o ${OBJECTDIR}/_ext/994638301/sys_console_uart.o ${OBJECTDIR}/_ext/322127129/sys_debug.o ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/354129722/bsp.o.d ${OBJECTDIR}/_ext/571564127/sys_clk_pic32mz.o.d ${OBJECTDIR}/_ext/1868830280/sys_devcon.o.d ${OBJECTDIR}/_ext/1868830280/sys_devcon_pic32mz.o.d ${OBJECTDIR}/_ext/1868830280/sys_devcon_cache_pic32mz.o.d ${OBJECTDIR}/_ext/1009894383/sys_ports_static.o.d ${OBJECTDIR}/_ext/849053718/system_init.o.d ${OBJECTDIR}/_ext/849053718/system_interrupt.o.d ${OBJECTDIR}/_ext/849053718/system_exceptions.o.d ${OBJECTDIR}/_ext/849053718/system_tasks.o.d ${OBJECTDIR}/_ext/1360937237/app.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1927798604/drv_usart.o.d ${OBJECTDIR}/_ext/1927798604/drv_usart_buffer_queue.o.d ${OBJECTDIR}/_ext/1927798604/drv_usart_read_write.o.d ${OBJECTDIR}/_ext/994638301/sys_console.o.d ${OBJECTDIR}/_ext/994638301/sys_console_uart.o.d ${OBJECTDIR}/_ext/322127129/sys_debug.o.d ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/354129722/bsp.o ${OBJECTDIR}/_ext/571564127/sys_clk_pic32mz.o ${OBJECTDIR}/_ext/1868830280/sys_devcon.o ${OBJECTDIR}/_ext/1868830280/sys_devcon_pic32mz.o ${OBJECTDIR}/_ext/1868830280/sys_devcon_cache_pic32mz.o ${OBJECTDIR}/_ext/1009894383/sys_ports_static.o ${OBJECTDIR}/_ext/849053718/system_init.o ${OBJECTDIR}/_ext/849053718/system_interrupt.o ${OBJECTDIR}/_ext/849053718/system_exceptions.o ${OBJECTDIR}/_ext/849053718/system_tasks.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1927798604/drv_usart.o ${OBJECTDIR}/_ext/1927798604/drv_usart_buffer_queue.o ${OBJECTDIR}/_ext/1927798604/drv_usart_read_write.o ${OBJECTDIR}/_ext/994638301/sys_console.o ${OBJECTDIR}/_ext/994638301/sys_console_uart.o ${OBJECTDIR}/_ext/322127129/sys_debug.o ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o

# Source Files
SOURCEFILES=../src/system_config/pic32mz_ef_sk/bsp/bsp.c ../src/system_config/pic32mz_ef_sk/framework/system/clk/src/sys_clk_pic32mz.c ../src/system_config/pic32mz_ef_sk/framework/system/devcon/src/sys_devcon.c ../src/system_config/pic32mz_ef_sk/framework/system/devcon/src/sys_devcon_pic32mz.c ../src/system_config/pic32mz_ef_sk/framework/system/devcon/src/sys_devcon_cache_pic32mz.S ../src/system_config/pic32mz_ef_sk/framework/system/ports/src/sys_ports_static.c ../src/system_config/pic32mz_ef_sk/system_init.c ../src/system_config/pic32mz_ef_sk/system_interrupt.c ../src/system_config/pic32mz_ef_sk/system_exceptions.c ../src/system_config/pic32mz_ef_sk/system_tasks.c ../src/app.c ../src/main.c ../../../../../../framework/driver/usart/src/dynamic/drv_usart.c ../../../../../../framework/driver/usart/src/dynamic/drv_usart_buffer_queue.c ../../../../../../framework/driver/usart/src/dynamic/drv_usart_read_write.c ../../../../../../framework/system/console/src/sys_console.c ../../../../../../framework/system/console/src/sys_console_uart.c ../../../../../../framework/system/debug/src/sys_debug.c ../../../../../../framework/system/int/src/sys_int_pic32.c



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
	${MAKE}  -f nbproject/Makefile-pic32mz_ef_sk.mk ${DISTDIR}/debug_uart.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

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
${OBJECTDIR}/_ext/1868830280/sys_devcon_cache_pic32mz.o: ../src/system_config/pic32mz_ef_sk/framework/system/devcon/src/sys_devcon_cache_pic32mz.S  .generated_files/flags/pic32mz_ef_sk/e6381ba6bd828c014818b029bfe7f99bcb394be3 .generated_files/flags/pic32mz_ef_sk/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1868830280" 
	@${RM} ${OBJECTDIR}/_ext/1868830280/sys_devcon_cache_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/1868830280/sys_devcon_cache_pic32mz.o 
	@${RM} ${OBJECTDIR}/_ext/1868830280/sys_devcon_cache_pic32mz.o.ok ${OBJECTDIR}/_ext/1868830280/sys_devcon_cache_pic32mz.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1868830280/sys_devcon_cache_pic32mz.o.d"  -o ${OBJECTDIR}/_ext/1868830280/sys_devcon_cache_pic32mz.o ../src/system_config/pic32mz_ef_sk/framework/system/devcon/src/sys_devcon_cache_pic32mz.S  -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1868830280/sys_devcon_cache_pic32mz.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1868830280/sys_devcon_cache_pic32mz.o.d" "${OBJECTDIR}/_ext/1868830280/sys_devcon_cache_pic32mz.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/1868830280/sys_devcon_cache_pic32mz.o: ../src/system_config/pic32mz_ef_sk/framework/system/devcon/src/sys_devcon_cache_pic32mz.S  .generated_files/flags/pic32mz_ef_sk/3aecc60dc77d8bfd30431dd150635efa0195c629 .generated_files/flags/pic32mz_ef_sk/52a56d43e5361242acb1485a17d792daa15724df
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
${OBJECTDIR}/_ext/354129722/bsp.o: ../src/system_config/pic32mz_ef_sk/bsp/bsp.c  .generated_files/flags/pic32mz_ef_sk/3d8e0af7e2f99ec9103e8228fce534cf895700e2 .generated_files/flags/pic32mz_ef_sk/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/354129722" 
	@${RM} ${OBJECTDIR}/_ext/354129722/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/354129722/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"/system_config/pic32mz_ef_sk" -I"/pic32mz_ef_sk" -I"/system_config/pic32mz_ef_sk/framework" -I"/system_config/pic32mz_ef_sk/bsp" -I"../src" -I"../src/system_config/pic32mz_ef_sk" -I"../src/pic32mz_ef_sk" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk/framework" -I"../src/system_config/pic32mz_ef_sk/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/354129722/bsp.o.d" -o ${OBJECTDIR}/_ext/354129722/bsp.o ../src/system_config/pic32mz_ef_sk/bsp/bsp.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/571564127/sys_clk_pic32mz.o: ../src/system_config/pic32mz_ef_sk/framework/system/clk/src/sys_clk_pic32mz.c  .generated_files/flags/pic32mz_ef_sk/6639060ec8ea34244bfdecfad6c8cd98024d6545 .generated_files/flags/pic32mz_ef_sk/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/571564127" 
	@${RM} ${OBJECTDIR}/_ext/571564127/sys_clk_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/571564127/sys_clk_pic32mz.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"/system_config/pic32mz_ef_sk" -I"/pic32mz_ef_sk" -I"/system_config/pic32mz_ef_sk/framework" -I"/system_config/pic32mz_ef_sk/bsp" -I"../src" -I"../src/system_config/pic32mz_ef_sk" -I"../src/pic32mz_ef_sk" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk/framework" -I"../src/system_config/pic32mz_ef_sk/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/571564127/sys_clk_pic32mz.o.d" -o ${OBJECTDIR}/_ext/571564127/sys_clk_pic32mz.o ../src/system_config/pic32mz_ef_sk/framework/system/clk/src/sys_clk_pic32mz.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1868830280/sys_devcon.o: ../src/system_config/pic32mz_ef_sk/framework/system/devcon/src/sys_devcon.c  .generated_files/flags/pic32mz_ef_sk/ae706fa86f91b2d55b5c4f325c9a09c3bbd456ab .generated_files/flags/pic32mz_ef_sk/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1868830280" 
	@${RM} ${OBJECTDIR}/_ext/1868830280/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/1868830280/sys_devcon.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"/system_config/pic32mz_ef_sk" -I"/pic32mz_ef_sk" -I"/system_config/pic32mz_ef_sk/framework" -I"/system_config/pic32mz_ef_sk/bsp" -I"../src" -I"../src/system_config/pic32mz_ef_sk" -I"../src/pic32mz_ef_sk" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk/framework" -I"../src/system_config/pic32mz_ef_sk/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1868830280/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/1868830280/sys_devcon.o ../src/system_config/pic32mz_ef_sk/framework/system/devcon/src/sys_devcon.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1868830280/sys_devcon_pic32mz.o: ../src/system_config/pic32mz_ef_sk/framework/system/devcon/src/sys_devcon_pic32mz.c  .generated_files/flags/pic32mz_ef_sk/d4cb1ac3d1d7b047624eb1e069fc49c4d9842ad5 .generated_files/flags/pic32mz_ef_sk/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1868830280" 
	@${RM} ${OBJECTDIR}/_ext/1868830280/sys_devcon_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/1868830280/sys_devcon_pic32mz.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"/system_config/pic32mz_ef_sk" -I"/pic32mz_ef_sk" -I"/system_config/pic32mz_ef_sk/framework" -I"/system_config/pic32mz_ef_sk/bsp" -I"../src" -I"../src/system_config/pic32mz_ef_sk" -I"../src/pic32mz_ef_sk" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk/framework" -I"../src/system_config/pic32mz_ef_sk/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1868830280/sys_devcon_pic32mz.o.d" -o ${OBJECTDIR}/_ext/1868830280/sys_devcon_pic32mz.o ../src/system_config/pic32mz_ef_sk/framework/system/devcon/src/sys_devcon_pic32mz.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1009894383/sys_ports_static.o: ../src/system_config/pic32mz_ef_sk/framework/system/ports/src/sys_ports_static.c  .generated_files/flags/pic32mz_ef_sk/bc24cbeb62a2a39eb1d4e9fa68da3617c631d870 .generated_files/flags/pic32mz_ef_sk/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1009894383" 
	@${RM} ${OBJECTDIR}/_ext/1009894383/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/1009894383/sys_ports_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"/system_config/pic32mz_ef_sk" -I"/pic32mz_ef_sk" -I"/system_config/pic32mz_ef_sk/framework" -I"/system_config/pic32mz_ef_sk/bsp" -I"../src" -I"../src/system_config/pic32mz_ef_sk" -I"../src/pic32mz_ef_sk" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk/framework" -I"../src/system_config/pic32mz_ef_sk/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1009894383/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/1009894383/sys_ports_static.o ../src/system_config/pic32mz_ef_sk/framework/system/ports/src/sys_ports_static.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/849053718/system_init.o: ../src/system_config/pic32mz_ef_sk/system_init.c  .generated_files/flags/pic32mz_ef_sk/b1b5be91238c5b7927a5bd666d562ed1f10db927 .generated_files/flags/pic32mz_ef_sk/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/849053718" 
	@${RM} ${OBJECTDIR}/_ext/849053718/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/849053718/system_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"/system_config/pic32mz_ef_sk" -I"/pic32mz_ef_sk" -I"/system_config/pic32mz_ef_sk/framework" -I"/system_config/pic32mz_ef_sk/bsp" -I"../src" -I"../src/system_config/pic32mz_ef_sk" -I"../src/pic32mz_ef_sk" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk/framework" -I"../src/system_config/pic32mz_ef_sk/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/849053718/system_init.o.d" -o ${OBJECTDIR}/_ext/849053718/system_init.o ../src/system_config/pic32mz_ef_sk/system_init.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/849053718/system_interrupt.o: ../src/system_config/pic32mz_ef_sk/system_interrupt.c  .generated_files/flags/pic32mz_ef_sk/bad92b2e0d1cd31289a3dce451825aafbc6395bd .generated_files/flags/pic32mz_ef_sk/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/849053718" 
	@${RM} ${OBJECTDIR}/_ext/849053718/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/849053718/system_interrupt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"/system_config/pic32mz_ef_sk" -I"/pic32mz_ef_sk" -I"/system_config/pic32mz_ef_sk/framework" -I"/system_config/pic32mz_ef_sk/bsp" -I"../src" -I"../src/system_config/pic32mz_ef_sk" -I"../src/pic32mz_ef_sk" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk/framework" -I"../src/system_config/pic32mz_ef_sk/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/849053718/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/849053718/system_interrupt.o ../src/system_config/pic32mz_ef_sk/system_interrupt.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/849053718/system_exceptions.o: ../src/system_config/pic32mz_ef_sk/system_exceptions.c  .generated_files/flags/pic32mz_ef_sk/b34b207dc720560ad3610a755319414b66bd8766 .generated_files/flags/pic32mz_ef_sk/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/849053718" 
	@${RM} ${OBJECTDIR}/_ext/849053718/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/849053718/system_exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"/system_config/pic32mz_ef_sk" -I"/pic32mz_ef_sk" -I"/system_config/pic32mz_ef_sk/framework" -I"/system_config/pic32mz_ef_sk/bsp" -I"../src" -I"../src/system_config/pic32mz_ef_sk" -I"../src/pic32mz_ef_sk" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk/framework" -I"../src/system_config/pic32mz_ef_sk/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/849053718/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/849053718/system_exceptions.o ../src/system_config/pic32mz_ef_sk/system_exceptions.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/849053718/system_tasks.o: ../src/system_config/pic32mz_ef_sk/system_tasks.c  .generated_files/flags/pic32mz_ef_sk/4e4ce5b806f0bf48877e8d3f6dc976f33312dbdd .generated_files/flags/pic32mz_ef_sk/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/849053718" 
	@${RM} ${OBJECTDIR}/_ext/849053718/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/849053718/system_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"/system_config/pic32mz_ef_sk" -I"/pic32mz_ef_sk" -I"/system_config/pic32mz_ef_sk/framework" -I"/system_config/pic32mz_ef_sk/bsp" -I"../src" -I"../src/system_config/pic32mz_ef_sk" -I"../src/pic32mz_ef_sk" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk/framework" -I"../src/system_config/pic32mz_ef_sk/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/849053718/system_tasks.o.d" -o ${OBJECTDIR}/_ext/849053718/system_tasks.o ../src/system_config/pic32mz_ef_sk/system_tasks.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/pic32mz_ef_sk/29b330e0874b65feeba58613e616a0b1b506924f .generated_files/flags/pic32mz_ef_sk/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"/system_config/pic32mz_ef_sk" -I"/pic32mz_ef_sk" -I"/system_config/pic32mz_ef_sk/framework" -I"/system_config/pic32mz_ef_sk/bsp" -I"../src" -I"../src/system_config/pic32mz_ef_sk" -I"../src/pic32mz_ef_sk" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk/framework" -I"../src/system_config/pic32mz_ef_sk/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/pic32mz_ef_sk/9d422cf802593c04a949d9a33b73cba4c00df406 .generated_files/flags/pic32mz_ef_sk/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"/system_config/pic32mz_ef_sk" -I"/pic32mz_ef_sk" -I"/system_config/pic32mz_ef_sk/framework" -I"/system_config/pic32mz_ef_sk/bsp" -I"../src" -I"../src/system_config/pic32mz_ef_sk" -I"../src/pic32mz_ef_sk" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk/framework" -I"../src/system_config/pic32mz_ef_sk/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1927798604/drv_usart.o: ../../../../../../framework/driver/usart/src/dynamic/drv_usart.c  .generated_files/flags/pic32mz_ef_sk/6afe3cfeb42d518e23b50f8da8c240db92ee1da6 .generated_files/flags/pic32mz_ef_sk/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1927798604" 
	@${RM} ${OBJECTDIR}/_ext/1927798604/drv_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1927798604/drv_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"/system_config/pic32mz_ef_sk" -I"/pic32mz_ef_sk" -I"/system_config/pic32mz_ef_sk/framework" -I"/system_config/pic32mz_ef_sk/bsp" -I"../src" -I"../src/system_config/pic32mz_ef_sk" -I"../src/pic32mz_ef_sk" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk/framework" -I"../src/system_config/pic32mz_ef_sk/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1927798604/drv_usart.o.d" -o ${OBJECTDIR}/_ext/1927798604/drv_usart.o ../../../../../../framework/driver/usart/src/dynamic/drv_usart.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1927798604/drv_usart_buffer_queue.o: ../../../../../../framework/driver/usart/src/dynamic/drv_usart_buffer_queue.c  .generated_files/flags/pic32mz_ef_sk/72c52671e6a19233672cf70c0877cfdb2b566ab6 .generated_files/flags/pic32mz_ef_sk/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1927798604" 
	@${RM} ${OBJECTDIR}/_ext/1927798604/drv_usart_buffer_queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1927798604/drv_usart_buffer_queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"/system_config/pic32mz_ef_sk" -I"/pic32mz_ef_sk" -I"/system_config/pic32mz_ef_sk/framework" -I"/system_config/pic32mz_ef_sk/bsp" -I"../src" -I"../src/system_config/pic32mz_ef_sk" -I"../src/pic32mz_ef_sk" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk/framework" -I"../src/system_config/pic32mz_ef_sk/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1927798604/drv_usart_buffer_queue.o.d" -o ${OBJECTDIR}/_ext/1927798604/drv_usart_buffer_queue.o ../../../../../../framework/driver/usart/src/dynamic/drv_usart_buffer_queue.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1927798604/drv_usart_read_write.o: ../../../../../../framework/driver/usart/src/dynamic/drv_usart_read_write.c  .generated_files/flags/pic32mz_ef_sk/721e33368ca441cdd54674d0637532f19ed291 .generated_files/flags/pic32mz_ef_sk/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1927798604" 
	@${RM} ${OBJECTDIR}/_ext/1927798604/drv_usart_read_write.o.d 
	@${RM} ${OBJECTDIR}/_ext/1927798604/drv_usart_read_write.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"/system_config/pic32mz_ef_sk" -I"/pic32mz_ef_sk" -I"/system_config/pic32mz_ef_sk/framework" -I"/system_config/pic32mz_ef_sk/bsp" -I"../src" -I"../src/system_config/pic32mz_ef_sk" -I"../src/pic32mz_ef_sk" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk/framework" -I"../src/system_config/pic32mz_ef_sk/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1927798604/drv_usart_read_write.o.d" -o ${OBJECTDIR}/_ext/1927798604/drv_usart_read_write.o ../../../../../../framework/driver/usart/src/dynamic/drv_usart_read_write.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/994638301/sys_console.o: ../../../../../../framework/system/console/src/sys_console.c  .generated_files/flags/pic32mz_ef_sk/24c845ff850f2fe6614626286f11f7162397be5b .generated_files/flags/pic32mz_ef_sk/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/994638301" 
	@${RM} ${OBJECTDIR}/_ext/994638301/sys_console.o.d 
	@${RM} ${OBJECTDIR}/_ext/994638301/sys_console.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"/system_config/pic32mz_ef_sk" -I"/pic32mz_ef_sk" -I"/system_config/pic32mz_ef_sk/framework" -I"/system_config/pic32mz_ef_sk/bsp" -I"../src" -I"../src/system_config/pic32mz_ef_sk" -I"../src/pic32mz_ef_sk" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk/framework" -I"../src/system_config/pic32mz_ef_sk/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/994638301/sys_console.o.d" -o ${OBJECTDIR}/_ext/994638301/sys_console.o ../../../../../../framework/system/console/src/sys_console.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/994638301/sys_console_uart.o: ../../../../../../framework/system/console/src/sys_console_uart.c  .generated_files/flags/pic32mz_ef_sk/ebe0748962db68d81b6343d717f5e31b26f46b27 .generated_files/flags/pic32mz_ef_sk/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/994638301" 
	@${RM} ${OBJECTDIR}/_ext/994638301/sys_console_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/994638301/sys_console_uart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"/system_config/pic32mz_ef_sk" -I"/pic32mz_ef_sk" -I"/system_config/pic32mz_ef_sk/framework" -I"/system_config/pic32mz_ef_sk/bsp" -I"../src" -I"../src/system_config/pic32mz_ef_sk" -I"../src/pic32mz_ef_sk" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk/framework" -I"../src/system_config/pic32mz_ef_sk/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/994638301/sys_console_uart.o.d" -o ${OBJECTDIR}/_ext/994638301/sys_console_uart.o ../../../../../../framework/system/console/src/sys_console_uart.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/322127129/sys_debug.o: ../../../../../../framework/system/debug/src/sys_debug.c  .generated_files/flags/pic32mz_ef_sk/50f742640e9aeffb4974939f06f53206c54f5314 .generated_files/flags/pic32mz_ef_sk/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/322127129" 
	@${RM} ${OBJECTDIR}/_ext/322127129/sys_debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/322127129/sys_debug.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"/system_config/pic32mz_ef_sk" -I"/pic32mz_ef_sk" -I"/system_config/pic32mz_ef_sk/framework" -I"/system_config/pic32mz_ef_sk/bsp" -I"../src" -I"../src/system_config/pic32mz_ef_sk" -I"../src/pic32mz_ef_sk" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk/framework" -I"../src/system_config/pic32mz_ef_sk/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/322127129/sys_debug.o.d" -o ${OBJECTDIR}/_ext/322127129/sys_debug.o ../../../../../../framework/system/debug/src/sys_debug.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/711155467/sys_int_pic32.o: ../../../../../../framework/system/int/src/sys_int_pic32.c  .generated_files/flags/pic32mz_ef_sk/f8e79aa3603cbdd6b4f1bacb0e177e55e9b4e4dc .generated_files/flags/pic32mz_ef_sk/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/711155467" 
	@${RM} ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"/system_config/pic32mz_ef_sk" -I"/pic32mz_ef_sk" -I"/system_config/pic32mz_ef_sk/framework" -I"/system_config/pic32mz_ef_sk/bsp" -I"../src" -I"../src/system_config/pic32mz_ef_sk" -I"../src/pic32mz_ef_sk" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk/framework" -I"../src/system_config/pic32mz_ef_sk/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/711155467/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o ../../../../../../framework/system/int/src/sys_int_pic32.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/354129722/bsp.o: ../src/system_config/pic32mz_ef_sk/bsp/bsp.c  .generated_files/flags/pic32mz_ef_sk/e8f9f97ca1d71eb9d7ae0d2e015ec267c729a7b8 .generated_files/flags/pic32mz_ef_sk/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/354129722" 
	@${RM} ${OBJECTDIR}/_ext/354129722/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/354129722/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"/system_config/pic32mz_ef_sk" -I"/pic32mz_ef_sk" -I"/system_config/pic32mz_ef_sk/framework" -I"/system_config/pic32mz_ef_sk/bsp" -I"../src" -I"../src/system_config/pic32mz_ef_sk" -I"../src/pic32mz_ef_sk" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk/framework" -I"../src/system_config/pic32mz_ef_sk/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/354129722/bsp.o.d" -o ${OBJECTDIR}/_ext/354129722/bsp.o ../src/system_config/pic32mz_ef_sk/bsp/bsp.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/571564127/sys_clk_pic32mz.o: ../src/system_config/pic32mz_ef_sk/framework/system/clk/src/sys_clk_pic32mz.c  .generated_files/flags/pic32mz_ef_sk/c646938411ea369d702d7d1472c561980d8caa3f .generated_files/flags/pic32mz_ef_sk/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/571564127" 
	@${RM} ${OBJECTDIR}/_ext/571564127/sys_clk_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/571564127/sys_clk_pic32mz.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"/system_config/pic32mz_ef_sk" -I"/pic32mz_ef_sk" -I"/system_config/pic32mz_ef_sk/framework" -I"/system_config/pic32mz_ef_sk/bsp" -I"../src" -I"../src/system_config/pic32mz_ef_sk" -I"../src/pic32mz_ef_sk" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk/framework" -I"../src/system_config/pic32mz_ef_sk/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/571564127/sys_clk_pic32mz.o.d" -o ${OBJECTDIR}/_ext/571564127/sys_clk_pic32mz.o ../src/system_config/pic32mz_ef_sk/framework/system/clk/src/sys_clk_pic32mz.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1868830280/sys_devcon.o: ../src/system_config/pic32mz_ef_sk/framework/system/devcon/src/sys_devcon.c  .generated_files/flags/pic32mz_ef_sk/349b701bfe32e3225b63312cd9f5f8ccf798be4b .generated_files/flags/pic32mz_ef_sk/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1868830280" 
	@${RM} ${OBJECTDIR}/_ext/1868830280/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/1868830280/sys_devcon.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"/system_config/pic32mz_ef_sk" -I"/pic32mz_ef_sk" -I"/system_config/pic32mz_ef_sk/framework" -I"/system_config/pic32mz_ef_sk/bsp" -I"../src" -I"../src/system_config/pic32mz_ef_sk" -I"../src/pic32mz_ef_sk" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk/framework" -I"../src/system_config/pic32mz_ef_sk/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1868830280/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/1868830280/sys_devcon.o ../src/system_config/pic32mz_ef_sk/framework/system/devcon/src/sys_devcon.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1868830280/sys_devcon_pic32mz.o: ../src/system_config/pic32mz_ef_sk/framework/system/devcon/src/sys_devcon_pic32mz.c  .generated_files/flags/pic32mz_ef_sk/857776b819216eb1635a792e4bac04abfc231bb .generated_files/flags/pic32mz_ef_sk/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1868830280" 
	@${RM} ${OBJECTDIR}/_ext/1868830280/sys_devcon_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/1868830280/sys_devcon_pic32mz.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"/system_config/pic32mz_ef_sk" -I"/pic32mz_ef_sk" -I"/system_config/pic32mz_ef_sk/framework" -I"/system_config/pic32mz_ef_sk/bsp" -I"../src" -I"../src/system_config/pic32mz_ef_sk" -I"../src/pic32mz_ef_sk" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk/framework" -I"../src/system_config/pic32mz_ef_sk/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1868830280/sys_devcon_pic32mz.o.d" -o ${OBJECTDIR}/_ext/1868830280/sys_devcon_pic32mz.o ../src/system_config/pic32mz_ef_sk/framework/system/devcon/src/sys_devcon_pic32mz.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1009894383/sys_ports_static.o: ../src/system_config/pic32mz_ef_sk/framework/system/ports/src/sys_ports_static.c  .generated_files/flags/pic32mz_ef_sk/a6d3402321b0130da84a4e7c64fdc122736ee083 .generated_files/flags/pic32mz_ef_sk/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1009894383" 
	@${RM} ${OBJECTDIR}/_ext/1009894383/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/1009894383/sys_ports_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"/system_config/pic32mz_ef_sk" -I"/pic32mz_ef_sk" -I"/system_config/pic32mz_ef_sk/framework" -I"/system_config/pic32mz_ef_sk/bsp" -I"../src" -I"../src/system_config/pic32mz_ef_sk" -I"../src/pic32mz_ef_sk" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk/framework" -I"../src/system_config/pic32mz_ef_sk/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1009894383/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/1009894383/sys_ports_static.o ../src/system_config/pic32mz_ef_sk/framework/system/ports/src/sys_ports_static.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/849053718/system_init.o: ../src/system_config/pic32mz_ef_sk/system_init.c  .generated_files/flags/pic32mz_ef_sk/9bfbfdf333dd79b53f3ce3b276d872d029be565e .generated_files/flags/pic32mz_ef_sk/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/849053718" 
	@${RM} ${OBJECTDIR}/_ext/849053718/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/849053718/system_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"/system_config/pic32mz_ef_sk" -I"/pic32mz_ef_sk" -I"/system_config/pic32mz_ef_sk/framework" -I"/system_config/pic32mz_ef_sk/bsp" -I"../src" -I"../src/system_config/pic32mz_ef_sk" -I"../src/pic32mz_ef_sk" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk/framework" -I"../src/system_config/pic32mz_ef_sk/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/849053718/system_init.o.d" -o ${OBJECTDIR}/_ext/849053718/system_init.o ../src/system_config/pic32mz_ef_sk/system_init.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/849053718/system_interrupt.o: ../src/system_config/pic32mz_ef_sk/system_interrupt.c  .generated_files/flags/pic32mz_ef_sk/3dbebe26236c42c898cc7fc49a47dbd2dc7b9050 .generated_files/flags/pic32mz_ef_sk/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/849053718" 
	@${RM} ${OBJECTDIR}/_ext/849053718/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/849053718/system_interrupt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"/system_config/pic32mz_ef_sk" -I"/pic32mz_ef_sk" -I"/system_config/pic32mz_ef_sk/framework" -I"/system_config/pic32mz_ef_sk/bsp" -I"../src" -I"../src/system_config/pic32mz_ef_sk" -I"../src/pic32mz_ef_sk" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk/framework" -I"../src/system_config/pic32mz_ef_sk/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/849053718/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/849053718/system_interrupt.o ../src/system_config/pic32mz_ef_sk/system_interrupt.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/849053718/system_exceptions.o: ../src/system_config/pic32mz_ef_sk/system_exceptions.c  .generated_files/flags/pic32mz_ef_sk/e9e12180c60f13aae9e5680fa957f53ff973ceaf .generated_files/flags/pic32mz_ef_sk/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/849053718" 
	@${RM} ${OBJECTDIR}/_ext/849053718/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/849053718/system_exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"/system_config/pic32mz_ef_sk" -I"/pic32mz_ef_sk" -I"/system_config/pic32mz_ef_sk/framework" -I"/system_config/pic32mz_ef_sk/bsp" -I"../src" -I"../src/system_config/pic32mz_ef_sk" -I"../src/pic32mz_ef_sk" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk/framework" -I"../src/system_config/pic32mz_ef_sk/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/849053718/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/849053718/system_exceptions.o ../src/system_config/pic32mz_ef_sk/system_exceptions.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/849053718/system_tasks.o: ../src/system_config/pic32mz_ef_sk/system_tasks.c  .generated_files/flags/pic32mz_ef_sk/7351536db66b723861634b384d2ba6d50e650b60 .generated_files/flags/pic32mz_ef_sk/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/849053718" 
	@${RM} ${OBJECTDIR}/_ext/849053718/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/849053718/system_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"/system_config/pic32mz_ef_sk" -I"/pic32mz_ef_sk" -I"/system_config/pic32mz_ef_sk/framework" -I"/system_config/pic32mz_ef_sk/bsp" -I"../src" -I"../src/system_config/pic32mz_ef_sk" -I"../src/pic32mz_ef_sk" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk/framework" -I"../src/system_config/pic32mz_ef_sk/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/849053718/system_tasks.o.d" -o ${OBJECTDIR}/_ext/849053718/system_tasks.o ../src/system_config/pic32mz_ef_sk/system_tasks.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/pic32mz_ef_sk/79a734760400634598734020ae9d0a6b6d1c83de .generated_files/flags/pic32mz_ef_sk/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"/system_config/pic32mz_ef_sk" -I"/pic32mz_ef_sk" -I"/system_config/pic32mz_ef_sk/framework" -I"/system_config/pic32mz_ef_sk/bsp" -I"../src" -I"../src/system_config/pic32mz_ef_sk" -I"../src/pic32mz_ef_sk" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk/framework" -I"../src/system_config/pic32mz_ef_sk/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/pic32mz_ef_sk/f0ecc7941dd02aec27b1e6b330ce51db73d5b5f .generated_files/flags/pic32mz_ef_sk/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"/system_config/pic32mz_ef_sk" -I"/pic32mz_ef_sk" -I"/system_config/pic32mz_ef_sk/framework" -I"/system_config/pic32mz_ef_sk/bsp" -I"../src" -I"../src/system_config/pic32mz_ef_sk" -I"../src/pic32mz_ef_sk" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk/framework" -I"../src/system_config/pic32mz_ef_sk/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1927798604/drv_usart.o: ../../../../../../framework/driver/usart/src/dynamic/drv_usart.c  .generated_files/flags/pic32mz_ef_sk/2fd5aa70f4df3a78cbebe3f10005f15d3ae89898 .generated_files/flags/pic32mz_ef_sk/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1927798604" 
	@${RM} ${OBJECTDIR}/_ext/1927798604/drv_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1927798604/drv_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"/system_config/pic32mz_ef_sk" -I"/pic32mz_ef_sk" -I"/system_config/pic32mz_ef_sk/framework" -I"/system_config/pic32mz_ef_sk/bsp" -I"../src" -I"../src/system_config/pic32mz_ef_sk" -I"../src/pic32mz_ef_sk" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk/framework" -I"../src/system_config/pic32mz_ef_sk/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1927798604/drv_usart.o.d" -o ${OBJECTDIR}/_ext/1927798604/drv_usart.o ../../../../../../framework/driver/usart/src/dynamic/drv_usart.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1927798604/drv_usart_buffer_queue.o: ../../../../../../framework/driver/usart/src/dynamic/drv_usart_buffer_queue.c  .generated_files/flags/pic32mz_ef_sk/708ffe238a9540b58a15214d1898378dfad44578 .generated_files/flags/pic32mz_ef_sk/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1927798604" 
	@${RM} ${OBJECTDIR}/_ext/1927798604/drv_usart_buffer_queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1927798604/drv_usart_buffer_queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"/system_config/pic32mz_ef_sk" -I"/pic32mz_ef_sk" -I"/system_config/pic32mz_ef_sk/framework" -I"/system_config/pic32mz_ef_sk/bsp" -I"../src" -I"../src/system_config/pic32mz_ef_sk" -I"../src/pic32mz_ef_sk" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk/framework" -I"../src/system_config/pic32mz_ef_sk/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1927798604/drv_usart_buffer_queue.o.d" -o ${OBJECTDIR}/_ext/1927798604/drv_usart_buffer_queue.o ../../../../../../framework/driver/usart/src/dynamic/drv_usart_buffer_queue.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1927798604/drv_usart_read_write.o: ../../../../../../framework/driver/usart/src/dynamic/drv_usart_read_write.c  .generated_files/flags/pic32mz_ef_sk/848947a49865d07ec15599c2461b49dda8407942 .generated_files/flags/pic32mz_ef_sk/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1927798604" 
	@${RM} ${OBJECTDIR}/_ext/1927798604/drv_usart_read_write.o.d 
	@${RM} ${OBJECTDIR}/_ext/1927798604/drv_usart_read_write.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"/system_config/pic32mz_ef_sk" -I"/pic32mz_ef_sk" -I"/system_config/pic32mz_ef_sk/framework" -I"/system_config/pic32mz_ef_sk/bsp" -I"../src" -I"../src/system_config/pic32mz_ef_sk" -I"../src/pic32mz_ef_sk" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk/framework" -I"../src/system_config/pic32mz_ef_sk/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1927798604/drv_usart_read_write.o.d" -o ${OBJECTDIR}/_ext/1927798604/drv_usart_read_write.o ../../../../../../framework/driver/usart/src/dynamic/drv_usart_read_write.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/994638301/sys_console.o: ../../../../../../framework/system/console/src/sys_console.c  .generated_files/flags/pic32mz_ef_sk/f585efade854c2332e9568b303102ac4f0dbe1f7 .generated_files/flags/pic32mz_ef_sk/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/994638301" 
	@${RM} ${OBJECTDIR}/_ext/994638301/sys_console.o.d 
	@${RM} ${OBJECTDIR}/_ext/994638301/sys_console.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"/system_config/pic32mz_ef_sk" -I"/pic32mz_ef_sk" -I"/system_config/pic32mz_ef_sk/framework" -I"/system_config/pic32mz_ef_sk/bsp" -I"../src" -I"../src/system_config/pic32mz_ef_sk" -I"../src/pic32mz_ef_sk" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk/framework" -I"../src/system_config/pic32mz_ef_sk/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/994638301/sys_console.o.d" -o ${OBJECTDIR}/_ext/994638301/sys_console.o ../../../../../../framework/system/console/src/sys_console.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/994638301/sys_console_uart.o: ../../../../../../framework/system/console/src/sys_console_uart.c  .generated_files/flags/pic32mz_ef_sk/2b6a668c674fb6259eacb437e6bf4265e5850f08 .generated_files/flags/pic32mz_ef_sk/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/994638301" 
	@${RM} ${OBJECTDIR}/_ext/994638301/sys_console_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/994638301/sys_console_uart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"/system_config/pic32mz_ef_sk" -I"/pic32mz_ef_sk" -I"/system_config/pic32mz_ef_sk/framework" -I"/system_config/pic32mz_ef_sk/bsp" -I"../src" -I"../src/system_config/pic32mz_ef_sk" -I"../src/pic32mz_ef_sk" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk/framework" -I"../src/system_config/pic32mz_ef_sk/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/994638301/sys_console_uart.o.d" -o ${OBJECTDIR}/_ext/994638301/sys_console_uart.o ../../../../../../framework/system/console/src/sys_console_uart.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/322127129/sys_debug.o: ../../../../../../framework/system/debug/src/sys_debug.c  .generated_files/flags/pic32mz_ef_sk/ba10064ba367a2098a1a955300d3e1489709a0a4 .generated_files/flags/pic32mz_ef_sk/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/322127129" 
	@${RM} ${OBJECTDIR}/_ext/322127129/sys_debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/322127129/sys_debug.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"/system_config/pic32mz_ef_sk" -I"/pic32mz_ef_sk" -I"/system_config/pic32mz_ef_sk/framework" -I"/system_config/pic32mz_ef_sk/bsp" -I"../src" -I"../src/system_config/pic32mz_ef_sk" -I"../src/pic32mz_ef_sk" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk/framework" -I"../src/system_config/pic32mz_ef_sk/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/322127129/sys_debug.o.d" -o ${OBJECTDIR}/_ext/322127129/sys_debug.o ../../../../../../framework/system/debug/src/sys_debug.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/711155467/sys_int_pic32.o: ../../../../../../framework/system/int/src/sys_int_pic32.c  .generated_files/flags/pic32mz_ef_sk/c9af1fe1ec0e64a8292fd5466d9da3f316bbcdd5 .generated_files/flags/pic32mz_ef_sk/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/711155467" 
	@${RM} ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"/system_config/pic32mz_ef_sk" -I"/pic32mz_ef_sk" -I"/system_config/pic32mz_ef_sk/framework" -I"/system_config/pic32mz_ef_sk/bsp" -I"../src" -I"../src/system_config/pic32mz_ef_sk" -I"../src/pic32mz_ef_sk" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk/framework" -I"../src/system_config/pic32mz_ef_sk/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/711155467/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o ../../../../../../framework/system/int/src/sys_int_pic32.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
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
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/debug_uart.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\..\..\..\..\..\bin\framework\peripheral\PIC32MZ2048EFM144_peripherals.a      -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=2048,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/debug_uart.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../../../bin/framework/peripheral/PIC32MZ2048EFM144_peripherals.a 
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/debug_uart.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\..\..\..\..\..\bin\framework\peripheral\PIC32MZ2048EFM144_peripherals.a      -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=2048,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
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
