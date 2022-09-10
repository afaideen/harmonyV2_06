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
ifeq "$(wildcard nbproject/Makefile-local-sdcard_pic32mz_ef_sk_meb2.mk)" "nbproject/Makefile-local-sdcard_pic32mz_ef_sk_meb2.mk"
include nbproject/Makefile-local-sdcard_pic32mz_ef_sk_meb2.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=sdcard_pic32mz_ef_sk_meb2
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/basic.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/basic.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=../src/system_config/sdcard_pic32mz_ef_sk_meb2/bsp/bsp.c ../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework/driver/spi/dynamic/drv_spi_tasks.c ../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework/driver/spi/dynamic/drv_spi_api.c ../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework/driver/spi/dynamic/drv_spi_master_ebm_tasks.c ../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework/system/clk/src/sys_clk_pic32mz.c ../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework/system/devcon/src/sys_devcon.c ../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework/system/devcon/src/sys_devcon_pic32mz.c ../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework/system/devcon/src/sys_devcon_cache_pic32mz.S ../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework/system/ports/src/sys_ports_static.c ../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework/system/reset/src/sys_reset.c ../src/system_config/sdcard_pic32mz_ef_sk_meb2/system_init.c ../src/system_config/sdcard_pic32mz_ef_sk_meb2/system_interrupt.c ../src/system_config/sdcard_pic32mz_ef_sk_meb2/system_exceptions.c ../src/system_config/sdcard_pic32mz_ef_sk_meb2/system_tasks.c ../src/main.c ../src/app.c ../../../../../framework/bootloader/src/datastream/datastream_sdcard.c ../../../../../framework/bootloader/src/bootloader.c ../../../../../framework/bootloader/src/nvm.c ../../../../../framework/driver/sdcard/src/dynamic/drv_sdcard.c ../../../../../framework/driver/spi/src/dynamic/drv_spi.c ../../../../../framework/driver/spi/src/drv_spi_sys_queue_fifo.c ../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c ../../../../../framework/system/fs/src/dynamic/sys_fs.c ../../../../../framework/system/fs/src/dynamic/sys_fs_media_manager.c ../../../../../framework/system/fs/fat_fs/src/file_system/ff.c ../../../../../framework/system/fs/fat_fs/src/hardware_access/diskio.c ../../../../../framework/system/int/src/sys_int_pic32.c ../../../../../framework/system/tmr/src/sys_tmr.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1436307855/bsp.o ${OBJECTDIR}/_ext/354547916/drv_spi_tasks.o ${OBJECTDIR}/_ext/354547916/drv_spi_api.o ${OBJECTDIR}/_ext/354547916/drv_spi_master_ebm_tasks.o ${OBJECTDIR}/_ext/93314346/sys_clk_pic32mz.o ${OBJECTDIR}/_ext/736125341/sys_devcon.o ${OBJECTDIR}/_ext/736125341/sys_devcon_pic32mz.o ${OBJECTDIR}/_ext/736125341/sys_devcon_cache_pic32mz.o ${OBJECTDIR}/_ext/973355514/sys_ports_static.o ${OBJECTDIR}/_ext/82541373/sys_reset.o ${OBJECTDIR}/_ext/2090968255/system_init.o ${OBJECTDIR}/_ext/2090968255/system_interrupt.o ${OBJECTDIR}/_ext/2090968255/system_exceptions.o ${OBJECTDIR}/_ext/2090968255/system_tasks.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/615392287/datastream_sdcard.o ${OBJECTDIR}/_ext/686445382/bootloader.o ${OBJECTDIR}/_ext/686445382/nvm.o ${OBJECTDIR}/_ext/1789358541/drv_sdcard.o ${OBJECTDIR}/_ext/1324760662/drv_spi.o ${OBJECTDIR}/_ext/1385053818/drv_spi_sys_queue_fifo.o ${OBJECTDIR}/_ext/941160041/drv_tmr.o ${OBJECTDIR}/_ext/1750042194/sys_fs.o ${OBJECTDIR}/_ext/1750042194/sys_fs_media_manager.o ${OBJECTDIR}/_ext/1964723635/ff.o ${OBJECTDIR}/_ext/732200470/diskio.o ${OBJECTDIR}/_ext/1042686532/sys_int_pic32.o ${OBJECTDIR}/_ext/2110151058/sys_tmr.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1436307855/bsp.o.d ${OBJECTDIR}/_ext/354547916/drv_spi_tasks.o.d ${OBJECTDIR}/_ext/354547916/drv_spi_api.o.d ${OBJECTDIR}/_ext/354547916/drv_spi_master_ebm_tasks.o.d ${OBJECTDIR}/_ext/93314346/sys_clk_pic32mz.o.d ${OBJECTDIR}/_ext/736125341/sys_devcon.o.d ${OBJECTDIR}/_ext/736125341/sys_devcon_pic32mz.o.d ${OBJECTDIR}/_ext/736125341/sys_devcon_cache_pic32mz.o.d ${OBJECTDIR}/_ext/973355514/sys_ports_static.o.d ${OBJECTDIR}/_ext/82541373/sys_reset.o.d ${OBJECTDIR}/_ext/2090968255/system_init.o.d ${OBJECTDIR}/_ext/2090968255/system_interrupt.o.d ${OBJECTDIR}/_ext/2090968255/system_exceptions.o.d ${OBJECTDIR}/_ext/2090968255/system_tasks.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/app.o.d ${OBJECTDIR}/_ext/615392287/datastream_sdcard.o.d ${OBJECTDIR}/_ext/686445382/bootloader.o.d ${OBJECTDIR}/_ext/686445382/nvm.o.d ${OBJECTDIR}/_ext/1789358541/drv_sdcard.o.d ${OBJECTDIR}/_ext/1324760662/drv_spi.o.d ${OBJECTDIR}/_ext/1385053818/drv_spi_sys_queue_fifo.o.d ${OBJECTDIR}/_ext/941160041/drv_tmr.o.d ${OBJECTDIR}/_ext/1750042194/sys_fs.o.d ${OBJECTDIR}/_ext/1750042194/sys_fs_media_manager.o.d ${OBJECTDIR}/_ext/1964723635/ff.o.d ${OBJECTDIR}/_ext/732200470/diskio.o.d ${OBJECTDIR}/_ext/1042686532/sys_int_pic32.o.d ${OBJECTDIR}/_ext/2110151058/sys_tmr.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1436307855/bsp.o ${OBJECTDIR}/_ext/354547916/drv_spi_tasks.o ${OBJECTDIR}/_ext/354547916/drv_spi_api.o ${OBJECTDIR}/_ext/354547916/drv_spi_master_ebm_tasks.o ${OBJECTDIR}/_ext/93314346/sys_clk_pic32mz.o ${OBJECTDIR}/_ext/736125341/sys_devcon.o ${OBJECTDIR}/_ext/736125341/sys_devcon_pic32mz.o ${OBJECTDIR}/_ext/736125341/sys_devcon_cache_pic32mz.o ${OBJECTDIR}/_ext/973355514/sys_ports_static.o ${OBJECTDIR}/_ext/82541373/sys_reset.o ${OBJECTDIR}/_ext/2090968255/system_init.o ${OBJECTDIR}/_ext/2090968255/system_interrupt.o ${OBJECTDIR}/_ext/2090968255/system_exceptions.o ${OBJECTDIR}/_ext/2090968255/system_tasks.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/615392287/datastream_sdcard.o ${OBJECTDIR}/_ext/686445382/bootloader.o ${OBJECTDIR}/_ext/686445382/nvm.o ${OBJECTDIR}/_ext/1789358541/drv_sdcard.o ${OBJECTDIR}/_ext/1324760662/drv_spi.o ${OBJECTDIR}/_ext/1385053818/drv_spi_sys_queue_fifo.o ${OBJECTDIR}/_ext/941160041/drv_tmr.o ${OBJECTDIR}/_ext/1750042194/sys_fs.o ${OBJECTDIR}/_ext/1750042194/sys_fs_media_manager.o ${OBJECTDIR}/_ext/1964723635/ff.o ${OBJECTDIR}/_ext/732200470/diskio.o ${OBJECTDIR}/_ext/1042686532/sys_int_pic32.o ${OBJECTDIR}/_ext/2110151058/sys_tmr.o

# Source Files
SOURCEFILES=../src/system_config/sdcard_pic32mz_ef_sk_meb2/bsp/bsp.c ../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework/driver/spi/dynamic/drv_spi_tasks.c ../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework/driver/spi/dynamic/drv_spi_api.c ../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework/driver/spi/dynamic/drv_spi_master_ebm_tasks.c ../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework/system/clk/src/sys_clk_pic32mz.c ../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework/system/devcon/src/sys_devcon.c ../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework/system/devcon/src/sys_devcon_pic32mz.c ../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework/system/devcon/src/sys_devcon_cache_pic32mz.S ../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework/system/ports/src/sys_ports_static.c ../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework/system/reset/src/sys_reset.c ../src/system_config/sdcard_pic32mz_ef_sk_meb2/system_init.c ../src/system_config/sdcard_pic32mz_ef_sk_meb2/system_interrupt.c ../src/system_config/sdcard_pic32mz_ef_sk_meb2/system_exceptions.c ../src/system_config/sdcard_pic32mz_ef_sk_meb2/system_tasks.c ../src/main.c ../src/app.c ../../../../../framework/bootloader/src/datastream/datastream_sdcard.c ../../../../../framework/bootloader/src/bootloader.c ../../../../../framework/bootloader/src/nvm.c ../../../../../framework/driver/sdcard/src/dynamic/drv_sdcard.c ../../../../../framework/driver/spi/src/dynamic/drv_spi.c ../../../../../framework/driver/spi/src/drv_spi_sys_queue_fifo.c ../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c ../../../../../framework/system/fs/src/dynamic/sys_fs.c ../../../../../framework/system/fs/src/dynamic/sys_fs_media_manager.c ../../../../../framework/system/fs/fat_fs/src/file_system/ff.c ../../../../../framework/system/fs/fat_fs/src/hardware_access/diskio.c ../../../../../framework/system/int/src/sys_int_pic32.c ../../../../../framework/system/tmr/src/sys_tmr.c



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
	${MAKE}  -f nbproject/Makefile-sdcard_pic32mz_ef_sk_meb2.mk dist/${CND_CONF}/${IMAGE_TYPE}/basic.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MZ2048EFH144
MP_LINKER_FILE_OPTION=,--script="..\src\system_config\sdcard_pic32mz_ef_sk_meb2\btl_mz.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/736125341/sys_devcon_cache_pic32mz.o: ../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework/system/devcon/src/sys_devcon_cache_pic32mz.S  .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/c13a5172a698589036013cb28a53c7fabf3a7c9 .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/fd6ded16d8ebfbd0490861e04085d1315f3eee1
	@${MKDIR} "${OBJECTDIR}/_ext/736125341" 
	@${RM} ${OBJECTDIR}/_ext/736125341/sys_devcon_cache_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/736125341/sys_devcon_cache_pic32mz.o 
	@${RM} ${OBJECTDIR}/_ext/736125341/sys_devcon_cache_pic32mz.o.ok ${OBJECTDIR}/_ext/736125341/sys_devcon_cache_pic32mz.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/736125341/sys_devcon_cache_pic32mz.o.d"  -o ${OBJECTDIR}/_ext/736125341/sys_devcon_cache_pic32mz.o ../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework/system/devcon/src/sys_devcon_cache_pic32mz.S  -DXPRJ_sdcard_pic32mz_ef_sk_meb2=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/736125341/sys_devcon_cache_pic32mz.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_REAL_ICE=1 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/736125341/sys_devcon_cache_pic32mz.o.d" "${OBJECTDIR}/_ext/736125341/sys_devcon_cache_pic32mz.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/736125341/sys_devcon_cache_pic32mz.o: ../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework/system/devcon/src/sys_devcon_cache_pic32mz.S  .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/4221322f0a1587bb2fc7a0a7b07767aefa074ad4 .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/fd6ded16d8ebfbd0490861e04085d1315f3eee1
	@${MKDIR} "${OBJECTDIR}/_ext/736125341" 
	@${RM} ${OBJECTDIR}/_ext/736125341/sys_devcon_cache_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/736125341/sys_devcon_cache_pic32mz.o 
	@${RM} ${OBJECTDIR}/_ext/736125341/sys_devcon_cache_pic32mz.o.ok ${OBJECTDIR}/_ext/736125341/sys_devcon_cache_pic32mz.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/736125341/sys_devcon_cache_pic32mz.o.d"  -o ${OBJECTDIR}/_ext/736125341/sys_devcon_cache_pic32mz.o ../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework/system/devcon/src/sys_devcon_cache_pic32mz.S  -DXPRJ_sdcard_pic32mz_ef_sk_meb2=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/736125341/sys_devcon_cache_pic32mz.o.asm.d",--gdwarf-2 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/736125341/sys_devcon_cache_pic32mz.o.d" "${OBJECTDIR}/_ext/736125341/sys_devcon_cache_pic32mz.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1436307855/bsp.o: ../src/system_config/sdcard_pic32mz_ef_sk_meb2/bsp/bsp.c  .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/5013e9a946765ba7089351972fb959723fc7157a .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/fd6ded16d8ebfbd0490861e04085d1315f3eee1
	@${MKDIR} "${OBJECTDIR}/_ext/1436307855" 
	@${RM} ${OBJECTDIR}/_ext/1436307855/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1436307855/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2" -I"../src/sdcard_pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1436307855/bsp.o.d" -o ${OBJECTDIR}/_ext/1436307855/bsp.o ../src/system_config/sdcard_pic32mz_ef_sk_meb2/bsp/bsp.c    -DXPRJ_sdcard_pic32mz_ef_sk_meb2=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/354547916/drv_spi_tasks.o: ../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework/driver/spi/dynamic/drv_spi_tasks.c  .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/dcfa4db5c65291438b9e1ee25acf39805ecd0231 .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/fd6ded16d8ebfbd0490861e04085d1315f3eee1
	@${MKDIR} "${OBJECTDIR}/_ext/354547916" 
	@${RM} ${OBJECTDIR}/_ext/354547916/drv_spi_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/354547916/drv_spi_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2" -I"../src/sdcard_pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/354547916/drv_spi_tasks.o.d" -o ${OBJECTDIR}/_ext/354547916/drv_spi_tasks.o ../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework/driver/spi/dynamic/drv_spi_tasks.c    -DXPRJ_sdcard_pic32mz_ef_sk_meb2=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/354547916/drv_spi_api.o: ../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework/driver/spi/dynamic/drv_spi_api.c  .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/743756f9f7e153b10272d8dd4c11ea79f8c894eb .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/fd6ded16d8ebfbd0490861e04085d1315f3eee1
	@${MKDIR} "${OBJECTDIR}/_ext/354547916" 
	@${RM} ${OBJECTDIR}/_ext/354547916/drv_spi_api.o.d 
	@${RM} ${OBJECTDIR}/_ext/354547916/drv_spi_api.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2" -I"../src/sdcard_pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/354547916/drv_spi_api.o.d" -o ${OBJECTDIR}/_ext/354547916/drv_spi_api.o ../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework/driver/spi/dynamic/drv_spi_api.c    -DXPRJ_sdcard_pic32mz_ef_sk_meb2=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/354547916/drv_spi_master_ebm_tasks.o: ../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework/driver/spi/dynamic/drv_spi_master_ebm_tasks.c  .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/3adc23e7c883a932a055853578e3abd4a96d6a10 .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/fd6ded16d8ebfbd0490861e04085d1315f3eee1
	@${MKDIR} "${OBJECTDIR}/_ext/354547916" 
	@${RM} ${OBJECTDIR}/_ext/354547916/drv_spi_master_ebm_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/354547916/drv_spi_master_ebm_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2" -I"../src/sdcard_pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/354547916/drv_spi_master_ebm_tasks.o.d" -o ${OBJECTDIR}/_ext/354547916/drv_spi_master_ebm_tasks.o ../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework/driver/spi/dynamic/drv_spi_master_ebm_tasks.c    -DXPRJ_sdcard_pic32mz_ef_sk_meb2=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/93314346/sys_clk_pic32mz.o: ../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework/system/clk/src/sys_clk_pic32mz.c  .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/2107c320620f33677b74f11a70b662191052b1a .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/fd6ded16d8ebfbd0490861e04085d1315f3eee1
	@${MKDIR} "${OBJECTDIR}/_ext/93314346" 
	@${RM} ${OBJECTDIR}/_ext/93314346/sys_clk_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/93314346/sys_clk_pic32mz.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2" -I"../src/sdcard_pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/93314346/sys_clk_pic32mz.o.d" -o ${OBJECTDIR}/_ext/93314346/sys_clk_pic32mz.o ../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework/system/clk/src/sys_clk_pic32mz.c    -DXPRJ_sdcard_pic32mz_ef_sk_meb2=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/736125341/sys_devcon.o: ../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework/system/devcon/src/sys_devcon.c  .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/4f9ae8977d196896ae1623d3b1b594e6fe90c78 .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/fd6ded16d8ebfbd0490861e04085d1315f3eee1
	@${MKDIR} "${OBJECTDIR}/_ext/736125341" 
	@${RM} ${OBJECTDIR}/_ext/736125341/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/736125341/sys_devcon.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2" -I"../src/sdcard_pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/736125341/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/736125341/sys_devcon.o ../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework/system/devcon/src/sys_devcon.c    -DXPRJ_sdcard_pic32mz_ef_sk_meb2=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/736125341/sys_devcon_pic32mz.o: ../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework/system/devcon/src/sys_devcon_pic32mz.c  .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/67baaaa98ce0f011670c3c852a0f3cee6294fc26 .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/fd6ded16d8ebfbd0490861e04085d1315f3eee1
	@${MKDIR} "${OBJECTDIR}/_ext/736125341" 
	@${RM} ${OBJECTDIR}/_ext/736125341/sys_devcon_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/736125341/sys_devcon_pic32mz.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2" -I"../src/sdcard_pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/736125341/sys_devcon_pic32mz.o.d" -o ${OBJECTDIR}/_ext/736125341/sys_devcon_pic32mz.o ../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework/system/devcon/src/sys_devcon_pic32mz.c    -DXPRJ_sdcard_pic32mz_ef_sk_meb2=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/973355514/sys_ports_static.o: ../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework/system/ports/src/sys_ports_static.c  .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/201cbcfe1c8b61d1ea6cd42d7465aac483a1d40f .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/fd6ded16d8ebfbd0490861e04085d1315f3eee1
	@${MKDIR} "${OBJECTDIR}/_ext/973355514" 
	@${RM} ${OBJECTDIR}/_ext/973355514/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/973355514/sys_ports_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2" -I"../src/sdcard_pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/973355514/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/973355514/sys_ports_static.o ../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework/system/ports/src/sys_ports_static.c    -DXPRJ_sdcard_pic32mz_ef_sk_meb2=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/82541373/sys_reset.o: ../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework/system/reset/src/sys_reset.c  .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/ab759cdbcbe2bfba52ad78d31ff3e49a0ea7cc73 .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/fd6ded16d8ebfbd0490861e04085d1315f3eee1
	@${MKDIR} "${OBJECTDIR}/_ext/82541373" 
	@${RM} ${OBJECTDIR}/_ext/82541373/sys_reset.o.d 
	@${RM} ${OBJECTDIR}/_ext/82541373/sys_reset.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2" -I"../src/sdcard_pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/82541373/sys_reset.o.d" -o ${OBJECTDIR}/_ext/82541373/sys_reset.o ../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework/system/reset/src/sys_reset.c    -DXPRJ_sdcard_pic32mz_ef_sk_meb2=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2090968255/system_init.o: ../src/system_config/sdcard_pic32mz_ef_sk_meb2/system_init.c  .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/a5d026ccd43e177f3b6b88e6d35e09e5d77d7fde .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/fd6ded16d8ebfbd0490861e04085d1315f3eee1
	@${MKDIR} "${OBJECTDIR}/_ext/2090968255" 
	@${RM} ${OBJECTDIR}/_ext/2090968255/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/2090968255/system_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2" -I"../src/sdcard_pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2090968255/system_init.o.d" -o ${OBJECTDIR}/_ext/2090968255/system_init.o ../src/system_config/sdcard_pic32mz_ef_sk_meb2/system_init.c    -DXPRJ_sdcard_pic32mz_ef_sk_meb2=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2090968255/system_interrupt.o: ../src/system_config/sdcard_pic32mz_ef_sk_meb2/system_interrupt.c  .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/da7e089a132f453d2e036ad8e37ae82cf8ee4dc6 .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/fd6ded16d8ebfbd0490861e04085d1315f3eee1
	@${MKDIR} "${OBJECTDIR}/_ext/2090968255" 
	@${RM} ${OBJECTDIR}/_ext/2090968255/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/2090968255/system_interrupt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2" -I"../src/sdcard_pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2090968255/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/2090968255/system_interrupt.o ../src/system_config/sdcard_pic32mz_ef_sk_meb2/system_interrupt.c    -DXPRJ_sdcard_pic32mz_ef_sk_meb2=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2090968255/system_exceptions.o: ../src/system_config/sdcard_pic32mz_ef_sk_meb2/system_exceptions.c  .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/f3e32e549ed95f224c44c3bdb0c424b424b3baa2 .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/fd6ded16d8ebfbd0490861e04085d1315f3eee1
	@${MKDIR} "${OBJECTDIR}/_ext/2090968255" 
	@${RM} ${OBJECTDIR}/_ext/2090968255/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/2090968255/system_exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2" -I"../src/sdcard_pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2090968255/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/2090968255/system_exceptions.o ../src/system_config/sdcard_pic32mz_ef_sk_meb2/system_exceptions.c    -DXPRJ_sdcard_pic32mz_ef_sk_meb2=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2090968255/system_tasks.o: ../src/system_config/sdcard_pic32mz_ef_sk_meb2/system_tasks.c  .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/2cc81024184c95d0fc33b025ee278c1dc06ed3cd .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/fd6ded16d8ebfbd0490861e04085d1315f3eee1
	@${MKDIR} "${OBJECTDIR}/_ext/2090968255" 
	@${RM} ${OBJECTDIR}/_ext/2090968255/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/2090968255/system_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2" -I"../src/sdcard_pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2090968255/system_tasks.o.d" -o ${OBJECTDIR}/_ext/2090968255/system_tasks.o ../src/system_config/sdcard_pic32mz_ef_sk_meb2/system_tasks.c    -DXPRJ_sdcard_pic32mz_ef_sk_meb2=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/cfa4d70e49eba44ee1c9d11fcb11a9a76a80f838 .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/fd6ded16d8ebfbd0490861e04085d1315f3eee1
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2" -I"../src/sdcard_pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_sdcard_pic32mz_ef_sk_meb2=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/b458b50d33ff4fb748a51f22d4a7d7b7a8531fb2 .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/fd6ded16d8ebfbd0490861e04085d1315f3eee1
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2" -I"../src/sdcard_pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_sdcard_pic32mz_ef_sk_meb2=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/615392287/datastream_sdcard.o: ../../../../../framework/bootloader/src/datastream/datastream_sdcard.c  .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/3851e67df5b3be0dfa710deefa4b363f2c22c735 .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/fd6ded16d8ebfbd0490861e04085d1315f3eee1
	@${MKDIR} "${OBJECTDIR}/_ext/615392287" 
	@${RM} ${OBJECTDIR}/_ext/615392287/datastream_sdcard.o.d 
	@${RM} ${OBJECTDIR}/_ext/615392287/datastream_sdcard.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2" -I"../src/sdcard_pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/615392287/datastream_sdcard.o.d" -o ${OBJECTDIR}/_ext/615392287/datastream_sdcard.o ../../../../../framework/bootloader/src/datastream/datastream_sdcard.c    -DXPRJ_sdcard_pic32mz_ef_sk_meb2=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/686445382/bootloader.o: ../../../../../framework/bootloader/src/bootloader.c  .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/5b6280d2e206822df2ba2b6b9ca54849209227d2 .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/fd6ded16d8ebfbd0490861e04085d1315f3eee1
	@${MKDIR} "${OBJECTDIR}/_ext/686445382" 
	@${RM} ${OBJECTDIR}/_ext/686445382/bootloader.o.d 
	@${RM} ${OBJECTDIR}/_ext/686445382/bootloader.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2" -I"../src/sdcard_pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/686445382/bootloader.o.d" -o ${OBJECTDIR}/_ext/686445382/bootloader.o ../../../../../framework/bootloader/src/bootloader.c    -DXPRJ_sdcard_pic32mz_ef_sk_meb2=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/686445382/nvm.o: ../../../../../framework/bootloader/src/nvm.c  .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/273dc0968b2f1482e7b127bbe8a2966969d24438 .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/fd6ded16d8ebfbd0490861e04085d1315f3eee1
	@${MKDIR} "${OBJECTDIR}/_ext/686445382" 
	@${RM} ${OBJECTDIR}/_ext/686445382/nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/686445382/nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2" -I"../src/sdcard_pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/686445382/nvm.o.d" -o ${OBJECTDIR}/_ext/686445382/nvm.o ../../../../../framework/bootloader/src/nvm.c    -DXPRJ_sdcard_pic32mz_ef_sk_meb2=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1789358541/drv_sdcard.o: ../../../../../framework/driver/sdcard/src/dynamic/drv_sdcard.c  .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/4d246a34a450f47bac9dbaa6f2cbd7369daeea39 .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/fd6ded16d8ebfbd0490861e04085d1315f3eee1
	@${MKDIR} "${OBJECTDIR}/_ext/1789358541" 
	@${RM} ${OBJECTDIR}/_ext/1789358541/drv_sdcard.o.d 
	@${RM} ${OBJECTDIR}/_ext/1789358541/drv_sdcard.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2" -I"../src/sdcard_pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1789358541/drv_sdcard.o.d" -o ${OBJECTDIR}/_ext/1789358541/drv_sdcard.o ../../../../../framework/driver/sdcard/src/dynamic/drv_sdcard.c    -DXPRJ_sdcard_pic32mz_ef_sk_meb2=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1324760662/drv_spi.o: ../../../../../framework/driver/spi/src/dynamic/drv_spi.c  .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/39b367de2561153f7cc702adb2adc017b3549886 .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/fd6ded16d8ebfbd0490861e04085d1315f3eee1
	@${MKDIR} "${OBJECTDIR}/_ext/1324760662" 
	@${RM} ${OBJECTDIR}/_ext/1324760662/drv_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1324760662/drv_spi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2" -I"../src/sdcard_pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1324760662/drv_spi.o.d" -o ${OBJECTDIR}/_ext/1324760662/drv_spi.o ../../../../../framework/driver/spi/src/dynamic/drv_spi.c    -DXPRJ_sdcard_pic32mz_ef_sk_meb2=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1385053818/drv_spi_sys_queue_fifo.o: ../../../../../framework/driver/spi/src/drv_spi_sys_queue_fifo.c  .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/236bb6153499564be49e0bd19ebe5c5c59401860 .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/fd6ded16d8ebfbd0490861e04085d1315f3eee1
	@${MKDIR} "${OBJECTDIR}/_ext/1385053818" 
	@${RM} ${OBJECTDIR}/_ext/1385053818/drv_spi_sys_queue_fifo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1385053818/drv_spi_sys_queue_fifo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2" -I"../src/sdcard_pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1385053818/drv_spi_sys_queue_fifo.o.d" -o ${OBJECTDIR}/_ext/1385053818/drv_spi_sys_queue_fifo.o ../../../../../framework/driver/spi/src/drv_spi_sys_queue_fifo.c    -DXPRJ_sdcard_pic32mz_ef_sk_meb2=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/941160041/drv_tmr.o: ../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c  .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/a7a376519209bd3ae4384decd08cc02cd35ea5ca .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/fd6ded16d8ebfbd0490861e04085d1315f3eee1
	@${MKDIR} "${OBJECTDIR}/_ext/941160041" 
	@${RM} ${OBJECTDIR}/_ext/941160041/drv_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/941160041/drv_tmr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2" -I"../src/sdcard_pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/941160041/drv_tmr.o.d" -o ${OBJECTDIR}/_ext/941160041/drv_tmr.o ../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c    -DXPRJ_sdcard_pic32mz_ef_sk_meb2=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1750042194/sys_fs.o: ../../../../../framework/system/fs/src/dynamic/sys_fs.c  .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/b488e414857b07f62494192c69f4df118e5dfb7 .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/fd6ded16d8ebfbd0490861e04085d1315f3eee1
	@${MKDIR} "${OBJECTDIR}/_ext/1750042194" 
	@${RM} ${OBJECTDIR}/_ext/1750042194/sys_fs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1750042194/sys_fs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2" -I"../src/sdcard_pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1750042194/sys_fs.o.d" -o ${OBJECTDIR}/_ext/1750042194/sys_fs.o ../../../../../framework/system/fs/src/dynamic/sys_fs.c    -DXPRJ_sdcard_pic32mz_ef_sk_meb2=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1750042194/sys_fs_media_manager.o: ../../../../../framework/system/fs/src/dynamic/sys_fs_media_manager.c  .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/dea7bd9ef090c765c70b9b976b32b39cbea9b237 .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/fd6ded16d8ebfbd0490861e04085d1315f3eee1
	@${MKDIR} "${OBJECTDIR}/_ext/1750042194" 
	@${RM} ${OBJECTDIR}/_ext/1750042194/sys_fs_media_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/1750042194/sys_fs_media_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2" -I"../src/sdcard_pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1750042194/sys_fs_media_manager.o.d" -o ${OBJECTDIR}/_ext/1750042194/sys_fs_media_manager.o ../../../../../framework/system/fs/src/dynamic/sys_fs_media_manager.c    -DXPRJ_sdcard_pic32mz_ef_sk_meb2=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1964723635/ff.o: ../../../../../framework/system/fs/fat_fs/src/file_system/ff.c  .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/3141431dfe353c783cfdeaa5e2bed74cbc3ec651 .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/fd6ded16d8ebfbd0490861e04085d1315f3eee1
	@${MKDIR} "${OBJECTDIR}/_ext/1964723635" 
	@${RM} ${OBJECTDIR}/_ext/1964723635/ff.o.d 
	@${RM} ${OBJECTDIR}/_ext/1964723635/ff.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2" -I"../src/sdcard_pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1964723635/ff.o.d" -o ${OBJECTDIR}/_ext/1964723635/ff.o ../../../../../framework/system/fs/fat_fs/src/file_system/ff.c    -DXPRJ_sdcard_pic32mz_ef_sk_meb2=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/732200470/diskio.o: ../../../../../framework/system/fs/fat_fs/src/hardware_access/diskio.c  .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/fd710aa2f5a00876c4e2972f6d31c01505d4ec04 .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/fd6ded16d8ebfbd0490861e04085d1315f3eee1
	@${MKDIR} "${OBJECTDIR}/_ext/732200470" 
	@${RM} ${OBJECTDIR}/_ext/732200470/diskio.o.d 
	@${RM} ${OBJECTDIR}/_ext/732200470/diskio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2" -I"../src/sdcard_pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/732200470/diskio.o.d" -o ${OBJECTDIR}/_ext/732200470/diskio.o ../../../../../framework/system/fs/fat_fs/src/hardware_access/diskio.c    -DXPRJ_sdcard_pic32mz_ef_sk_meb2=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1042686532/sys_int_pic32.o: ../../../../../framework/system/int/src/sys_int_pic32.c  .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/539802b17a493149731e17ac353d141daec94ed3 .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/fd6ded16d8ebfbd0490861e04085d1315f3eee1
	@${MKDIR} "${OBJECTDIR}/_ext/1042686532" 
	@${RM} ${OBJECTDIR}/_ext/1042686532/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1042686532/sys_int_pic32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2" -I"../src/sdcard_pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1042686532/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/1042686532/sys_int_pic32.o ../../../../../framework/system/int/src/sys_int_pic32.c    -DXPRJ_sdcard_pic32mz_ef_sk_meb2=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2110151058/sys_tmr.o: ../../../../../framework/system/tmr/src/sys_tmr.c  .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/c8bd271aac67cba208febe36502985355c2841dd .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/fd6ded16d8ebfbd0490861e04085d1315f3eee1
	@${MKDIR} "${OBJECTDIR}/_ext/2110151058" 
	@${RM} ${OBJECTDIR}/_ext/2110151058/sys_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/2110151058/sys_tmr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2" -I"../src/sdcard_pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2110151058/sys_tmr.o.d" -o ${OBJECTDIR}/_ext/2110151058/sys_tmr.o ../../../../../framework/system/tmr/src/sys_tmr.c    -DXPRJ_sdcard_pic32mz_ef_sk_meb2=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/1436307855/bsp.o: ../src/system_config/sdcard_pic32mz_ef_sk_meb2/bsp/bsp.c  .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/93207435eed4fdec9496c409c4826d7de01565ff .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/fd6ded16d8ebfbd0490861e04085d1315f3eee1
	@${MKDIR} "${OBJECTDIR}/_ext/1436307855" 
	@${RM} ${OBJECTDIR}/_ext/1436307855/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1436307855/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2" -I"../src/sdcard_pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1436307855/bsp.o.d" -o ${OBJECTDIR}/_ext/1436307855/bsp.o ../src/system_config/sdcard_pic32mz_ef_sk_meb2/bsp/bsp.c    -DXPRJ_sdcard_pic32mz_ef_sk_meb2=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/354547916/drv_spi_tasks.o: ../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework/driver/spi/dynamic/drv_spi_tasks.c  .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/4b5efca7d2a183c1824dfe4b0155da590c452366 .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/fd6ded16d8ebfbd0490861e04085d1315f3eee1
	@${MKDIR} "${OBJECTDIR}/_ext/354547916" 
	@${RM} ${OBJECTDIR}/_ext/354547916/drv_spi_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/354547916/drv_spi_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2" -I"../src/sdcard_pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/354547916/drv_spi_tasks.o.d" -o ${OBJECTDIR}/_ext/354547916/drv_spi_tasks.o ../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework/driver/spi/dynamic/drv_spi_tasks.c    -DXPRJ_sdcard_pic32mz_ef_sk_meb2=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/354547916/drv_spi_api.o: ../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework/driver/spi/dynamic/drv_spi_api.c  .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/b831dfd7acf75e4ff10054e1b1818d4145cf70d9 .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/fd6ded16d8ebfbd0490861e04085d1315f3eee1
	@${MKDIR} "${OBJECTDIR}/_ext/354547916" 
	@${RM} ${OBJECTDIR}/_ext/354547916/drv_spi_api.o.d 
	@${RM} ${OBJECTDIR}/_ext/354547916/drv_spi_api.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2" -I"../src/sdcard_pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/354547916/drv_spi_api.o.d" -o ${OBJECTDIR}/_ext/354547916/drv_spi_api.o ../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework/driver/spi/dynamic/drv_spi_api.c    -DXPRJ_sdcard_pic32mz_ef_sk_meb2=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/354547916/drv_spi_master_ebm_tasks.o: ../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework/driver/spi/dynamic/drv_spi_master_ebm_tasks.c  .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/aa16d8373d59560444220bee24ef519a8dbc5816 .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/fd6ded16d8ebfbd0490861e04085d1315f3eee1
	@${MKDIR} "${OBJECTDIR}/_ext/354547916" 
	@${RM} ${OBJECTDIR}/_ext/354547916/drv_spi_master_ebm_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/354547916/drv_spi_master_ebm_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2" -I"../src/sdcard_pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/354547916/drv_spi_master_ebm_tasks.o.d" -o ${OBJECTDIR}/_ext/354547916/drv_spi_master_ebm_tasks.o ../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework/driver/spi/dynamic/drv_spi_master_ebm_tasks.c    -DXPRJ_sdcard_pic32mz_ef_sk_meb2=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/93314346/sys_clk_pic32mz.o: ../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework/system/clk/src/sys_clk_pic32mz.c  .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/50408de4c28802e58b732e67d107de1cc7f5073b .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/fd6ded16d8ebfbd0490861e04085d1315f3eee1
	@${MKDIR} "${OBJECTDIR}/_ext/93314346" 
	@${RM} ${OBJECTDIR}/_ext/93314346/sys_clk_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/93314346/sys_clk_pic32mz.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2" -I"../src/sdcard_pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/93314346/sys_clk_pic32mz.o.d" -o ${OBJECTDIR}/_ext/93314346/sys_clk_pic32mz.o ../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework/system/clk/src/sys_clk_pic32mz.c    -DXPRJ_sdcard_pic32mz_ef_sk_meb2=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/736125341/sys_devcon.o: ../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework/system/devcon/src/sys_devcon.c  .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/f8db3e279801e08ef5d469e3939532642ec24c86 .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/fd6ded16d8ebfbd0490861e04085d1315f3eee1
	@${MKDIR} "${OBJECTDIR}/_ext/736125341" 
	@${RM} ${OBJECTDIR}/_ext/736125341/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/736125341/sys_devcon.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2" -I"../src/sdcard_pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/736125341/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/736125341/sys_devcon.o ../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework/system/devcon/src/sys_devcon.c    -DXPRJ_sdcard_pic32mz_ef_sk_meb2=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/736125341/sys_devcon_pic32mz.o: ../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework/system/devcon/src/sys_devcon_pic32mz.c  .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/f60e06c3cb1be2fb8746b7a7b2614220a34ab036 .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/fd6ded16d8ebfbd0490861e04085d1315f3eee1
	@${MKDIR} "${OBJECTDIR}/_ext/736125341" 
	@${RM} ${OBJECTDIR}/_ext/736125341/sys_devcon_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/736125341/sys_devcon_pic32mz.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2" -I"../src/sdcard_pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/736125341/sys_devcon_pic32mz.o.d" -o ${OBJECTDIR}/_ext/736125341/sys_devcon_pic32mz.o ../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework/system/devcon/src/sys_devcon_pic32mz.c    -DXPRJ_sdcard_pic32mz_ef_sk_meb2=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/973355514/sys_ports_static.o: ../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework/system/ports/src/sys_ports_static.c  .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/331dd22872a64bb8340af268ca878d37406b6730 .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/fd6ded16d8ebfbd0490861e04085d1315f3eee1
	@${MKDIR} "${OBJECTDIR}/_ext/973355514" 
	@${RM} ${OBJECTDIR}/_ext/973355514/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/973355514/sys_ports_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2" -I"../src/sdcard_pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/973355514/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/973355514/sys_ports_static.o ../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework/system/ports/src/sys_ports_static.c    -DXPRJ_sdcard_pic32mz_ef_sk_meb2=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/82541373/sys_reset.o: ../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework/system/reset/src/sys_reset.c  .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/1132f7aa0c1a378212368ff7d90c15a2bf289acb .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/fd6ded16d8ebfbd0490861e04085d1315f3eee1
	@${MKDIR} "${OBJECTDIR}/_ext/82541373" 
	@${RM} ${OBJECTDIR}/_ext/82541373/sys_reset.o.d 
	@${RM} ${OBJECTDIR}/_ext/82541373/sys_reset.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2" -I"../src/sdcard_pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/82541373/sys_reset.o.d" -o ${OBJECTDIR}/_ext/82541373/sys_reset.o ../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework/system/reset/src/sys_reset.c    -DXPRJ_sdcard_pic32mz_ef_sk_meb2=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2090968255/system_init.o: ../src/system_config/sdcard_pic32mz_ef_sk_meb2/system_init.c  .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/86796a3fd61c733f5ddcae0e697c75a253244d83 .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/fd6ded16d8ebfbd0490861e04085d1315f3eee1
	@${MKDIR} "${OBJECTDIR}/_ext/2090968255" 
	@${RM} ${OBJECTDIR}/_ext/2090968255/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/2090968255/system_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2" -I"../src/sdcard_pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2090968255/system_init.o.d" -o ${OBJECTDIR}/_ext/2090968255/system_init.o ../src/system_config/sdcard_pic32mz_ef_sk_meb2/system_init.c    -DXPRJ_sdcard_pic32mz_ef_sk_meb2=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2090968255/system_interrupt.o: ../src/system_config/sdcard_pic32mz_ef_sk_meb2/system_interrupt.c  .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/955d0e7bfd8c9816c3645f96cff5c15f9cf95e15 .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/fd6ded16d8ebfbd0490861e04085d1315f3eee1
	@${MKDIR} "${OBJECTDIR}/_ext/2090968255" 
	@${RM} ${OBJECTDIR}/_ext/2090968255/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/2090968255/system_interrupt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2" -I"../src/sdcard_pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2090968255/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/2090968255/system_interrupt.o ../src/system_config/sdcard_pic32mz_ef_sk_meb2/system_interrupt.c    -DXPRJ_sdcard_pic32mz_ef_sk_meb2=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2090968255/system_exceptions.o: ../src/system_config/sdcard_pic32mz_ef_sk_meb2/system_exceptions.c  .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/b3b10c74db617e9ec8f63aff5820d2f18b6db5f9 .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/fd6ded16d8ebfbd0490861e04085d1315f3eee1
	@${MKDIR} "${OBJECTDIR}/_ext/2090968255" 
	@${RM} ${OBJECTDIR}/_ext/2090968255/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/2090968255/system_exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2" -I"../src/sdcard_pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2090968255/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/2090968255/system_exceptions.o ../src/system_config/sdcard_pic32mz_ef_sk_meb2/system_exceptions.c    -DXPRJ_sdcard_pic32mz_ef_sk_meb2=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2090968255/system_tasks.o: ../src/system_config/sdcard_pic32mz_ef_sk_meb2/system_tasks.c  .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/e276d3f8192b2cd9cac2a4ed197f98601e2a9d82 .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/fd6ded16d8ebfbd0490861e04085d1315f3eee1
	@${MKDIR} "${OBJECTDIR}/_ext/2090968255" 
	@${RM} ${OBJECTDIR}/_ext/2090968255/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/2090968255/system_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2" -I"../src/sdcard_pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2090968255/system_tasks.o.d" -o ${OBJECTDIR}/_ext/2090968255/system_tasks.o ../src/system_config/sdcard_pic32mz_ef_sk_meb2/system_tasks.c    -DXPRJ_sdcard_pic32mz_ef_sk_meb2=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/ac1abf0c3c5b8c23929134da40cbd34696f200a1 .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/fd6ded16d8ebfbd0490861e04085d1315f3eee1
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2" -I"../src/sdcard_pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_sdcard_pic32mz_ef_sk_meb2=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/95e592f15fc7f8545f432d5778f2fdf6086bad43 .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/fd6ded16d8ebfbd0490861e04085d1315f3eee1
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2" -I"../src/sdcard_pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_sdcard_pic32mz_ef_sk_meb2=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/615392287/datastream_sdcard.o: ../../../../../framework/bootloader/src/datastream/datastream_sdcard.c  .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/42cf8247d76c965d77c84deceea3814f91e07708 .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/fd6ded16d8ebfbd0490861e04085d1315f3eee1
	@${MKDIR} "${OBJECTDIR}/_ext/615392287" 
	@${RM} ${OBJECTDIR}/_ext/615392287/datastream_sdcard.o.d 
	@${RM} ${OBJECTDIR}/_ext/615392287/datastream_sdcard.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2" -I"../src/sdcard_pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/615392287/datastream_sdcard.o.d" -o ${OBJECTDIR}/_ext/615392287/datastream_sdcard.o ../../../../../framework/bootloader/src/datastream/datastream_sdcard.c    -DXPRJ_sdcard_pic32mz_ef_sk_meb2=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/686445382/bootloader.o: ../../../../../framework/bootloader/src/bootloader.c  .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/76558aa809567bf596a111f8b9471cecb9f7f97 .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/fd6ded16d8ebfbd0490861e04085d1315f3eee1
	@${MKDIR} "${OBJECTDIR}/_ext/686445382" 
	@${RM} ${OBJECTDIR}/_ext/686445382/bootloader.o.d 
	@${RM} ${OBJECTDIR}/_ext/686445382/bootloader.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2" -I"../src/sdcard_pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/686445382/bootloader.o.d" -o ${OBJECTDIR}/_ext/686445382/bootloader.o ../../../../../framework/bootloader/src/bootloader.c    -DXPRJ_sdcard_pic32mz_ef_sk_meb2=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/686445382/nvm.o: ../../../../../framework/bootloader/src/nvm.c  .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/f944eed69d28aff030599d136d18742558840aa .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/fd6ded16d8ebfbd0490861e04085d1315f3eee1
	@${MKDIR} "${OBJECTDIR}/_ext/686445382" 
	@${RM} ${OBJECTDIR}/_ext/686445382/nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/686445382/nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2" -I"../src/sdcard_pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/686445382/nvm.o.d" -o ${OBJECTDIR}/_ext/686445382/nvm.o ../../../../../framework/bootloader/src/nvm.c    -DXPRJ_sdcard_pic32mz_ef_sk_meb2=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1789358541/drv_sdcard.o: ../../../../../framework/driver/sdcard/src/dynamic/drv_sdcard.c  .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/e18c850650e68e7866483499f81e2dc0288d20d4 .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/fd6ded16d8ebfbd0490861e04085d1315f3eee1
	@${MKDIR} "${OBJECTDIR}/_ext/1789358541" 
	@${RM} ${OBJECTDIR}/_ext/1789358541/drv_sdcard.o.d 
	@${RM} ${OBJECTDIR}/_ext/1789358541/drv_sdcard.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2" -I"../src/sdcard_pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1789358541/drv_sdcard.o.d" -o ${OBJECTDIR}/_ext/1789358541/drv_sdcard.o ../../../../../framework/driver/sdcard/src/dynamic/drv_sdcard.c    -DXPRJ_sdcard_pic32mz_ef_sk_meb2=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1324760662/drv_spi.o: ../../../../../framework/driver/spi/src/dynamic/drv_spi.c  .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/3b833a9aa08147d41c5f53e59c9725ce4a7bdf5e .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/fd6ded16d8ebfbd0490861e04085d1315f3eee1
	@${MKDIR} "${OBJECTDIR}/_ext/1324760662" 
	@${RM} ${OBJECTDIR}/_ext/1324760662/drv_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1324760662/drv_spi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2" -I"../src/sdcard_pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1324760662/drv_spi.o.d" -o ${OBJECTDIR}/_ext/1324760662/drv_spi.o ../../../../../framework/driver/spi/src/dynamic/drv_spi.c    -DXPRJ_sdcard_pic32mz_ef_sk_meb2=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1385053818/drv_spi_sys_queue_fifo.o: ../../../../../framework/driver/spi/src/drv_spi_sys_queue_fifo.c  .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/e8cb23895064533c3d0cfbb2ba955aa86d548d4a .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/fd6ded16d8ebfbd0490861e04085d1315f3eee1
	@${MKDIR} "${OBJECTDIR}/_ext/1385053818" 
	@${RM} ${OBJECTDIR}/_ext/1385053818/drv_spi_sys_queue_fifo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1385053818/drv_spi_sys_queue_fifo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2" -I"../src/sdcard_pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1385053818/drv_spi_sys_queue_fifo.o.d" -o ${OBJECTDIR}/_ext/1385053818/drv_spi_sys_queue_fifo.o ../../../../../framework/driver/spi/src/drv_spi_sys_queue_fifo.c    -DXPRJ_sdcard_pic32mz_ef_sk_meb2=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/941160041/drv_tmr.o: ../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c  .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/df6ce80c06b5b429d5a637f663e25b81ef97aead .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/fd6ded16d8ebfbd0490861e04085d1315f3eee1
	@${MKDIR} "${OBJECTDIR}/_ext/941160041" 
	@${RM} ${OBJECTDIR}/_ext/941160041/drv_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/941160041/drv_tmr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2" -I"../src/sdcard_pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/941160041/drv_tmr.o.d" -o ${OBJECTDIR}/_ext/941160041/drv_tmr.o ../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c    -DXPRJ_sdcard_pic32mz_ef_sk_meb2=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1750042194/sys_fs.o: ../../../../../framework/system/fs/src/dynamic/sys_fs.c  .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/8252bd8a398b9d7e29fea02a2bd4a0a1b502bc77 .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/fd6ded16d8ebfbd0490861e04085d1315f3eee1
	@${MKDIR} "${OBJECTDIR}/_ext/1750042194" 
	@${RM} ${OBJECTDIR}/_ext/1750042194/sys_fs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1750042194/sys_fs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2" -I"../src/sdcard_pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1750042194/sys_fs.o.d" -o ${OBJECTDIR}/_ext/1750042194/sys_fs.o ../../../../../framework/system/fs/src/dynamic/sys_fs.c    -DXPRJ_sdcard_pic32mz_ef_sk_meb2=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1750042194/sys_fs_media_manager.o: ../../../../../framework/system/fs/src/dynamic/sys_fs_media_manager.c  .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/d11b1d35a796a33ba136e1cd743347b003447366 .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/fd6ded16d8ebfbd0490861e04085d1315f3eee1
	@${MKDIR} "${OBJECTDIR}/_ext/1750042194" 
	@${RM} ${OBJECTDIR}/_ext/1750042194/sys_fs_media_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/1750042194/sys_fs_media_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2" -I"../src/sdcard_pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1750042194/sys_fs_media_manager.o.d" -o ${OBJECTDIR}/_ext/1750042194/sys_fs_media_manager.o ../../../../../framework/system/fs/src/dynamic/sys_fs_media_manager.c    -DXPRJ_sdcard_pic32mz_ef_sk_meb2=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1964723635/ff.o: ../../../../../framework/system/fs/fat_fs/src/file_system/ff.c  .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/b9d346fd9cb837fe7b30acfb511350c811febef .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/fd6ded16d8ebfbd0490861e04085d1315f3eee1
	@${MKDIR} "${OBJECTDIR}/_ext/1964723635" 
	@${RM} ${OBJECTDIR}/_ext/1964723635/ff.o.d 
	@${RM} ${OBJECTDIR}/_ext/1964723635/ff.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2" -I"../src/sdcard_pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1964723635/ff.o.d" -o ${OBJECTDIR}/_ext/1964723635/ff.o ../../../../../framework/system/fs/fat_fs/src/file_system/ff.c    -DXPRJ_sdcard_pic32mz_ef_sk_meb2=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/732200470/diskio.o: ../../../../../framework/system/fs/fat_fs/src/hardware_access/diskio.c  .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/1b7cb5911130e32e4aa8b9ae74a363b3b085337 .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/fd6ded16d8ebfbd0490861e04085d1315f3eee1
	@${MKDIR} "${OBJECTDIR}/_ext/732200470" 
	@${RM} ${OBJECTDIR}/_ext/732200470/diskio.o.d 
	@${RM} ${OBJECTDIR}/_ext/732200470/diskio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2" -I"../src/sdcard_pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/732200470/diskio.o.d" -o ${OBJECTDIR}/_ext/732200470/diskio.o ../../../../../framework/system/fs/fat_fs/src/hardware_access/diskio.c    -DXPRJ_sdcard_pic32mz_ef_sk_meb2=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1042686532/sys_int_pic32.o: ../../../../../framework/system/int/src/sys_int_pic32.c  .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/4fa0e8e38ec4c2fa1025204e61367bb55058c114 .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/fd6ded16d8ebfbd0490861e04085d1315f3eee1
	@${MKDIR} "${OBJECTDIR}/_ext/1042686532" 
	@${RM} ${OBJECTDIR}/_ext/1042686532/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1042686532/sys_int_pic32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2" -I"../src/sdcard_pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1042686532/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/1042686532/sys_int_pic32.o ../../../../../framework/system/int/src/sys_int_pic32.c    -DXPRJ_sdcard_pic32mz_ef_sk_meb2=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2110151058/sys_tmr.o: ../../../../../framework/system/tmr/src/sys_tmr.c  .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/e1fa67372285f3ddc38275d0012a1dfaee792182 .generated_files/flags/sdcard_pic32mz_ef_sk_meb2/fd6ded16d8ebfbd0490861e04085d1315f3eee1
	@${MKDIR} "${OBJECTDIR}/_ext/2110151058" 
	@${RM} ${OBJECTDIR}/_ext/2110151058/sys_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/2110151058/sys_tmr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2" -I"../src/sdcard_pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/framework" -I"../src/system_config/sdcard_pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2110151058/sys_tmr.o.d" -o ${OBJECTDIR}/_ext/2110151058/sys_tmr.o ../../../../../framework/system/tmr/src/sys_tmr.c    -DXPRJ_sdcard_pic32mz_ef_sk_meb2=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/basic.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../../bin/framework/peripheral/PIC32MZ2048EFH144_peripherals.a  ../src/system_config/sdcard_pic32mz_ef_sk_meb2/btl_mz.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_REAL_ICE=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/basic.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\..\..\..\..\bin\framework\peripheral\PIC32MZ2048EFH144_peripherals.a      -DXPRJ_sdcard_pic32mz_ef_sk_meb2=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x37F   -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_REAL_ICE=1,--defsym=_min_heap_size=2048,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/basic.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../../bin/framework/peripheral/PIC32MZ2048EFH144_peripherals.a ../src/system_config/sdcard_pic32mz_ef_sk_meb2/btl_mz.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/basic.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\..\..\..\..\bin\framework\peripheral\PIC32MZ2048EFH144_peripherals.a      -DXPRJ_sdcard_pic32mz_ef_sk_meb2=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=2048,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/basic.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/sdcard_pic32mz_ef_sk_meb2
	${RM} -r dist/sdcard_pic32mz_ef_sk_meb2
