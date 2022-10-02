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
ifeq "$(wildcard nbproject/Makefile-local-udp_pic32mz_ef_curiosity_v2.mk)" "nbproject/Makefile-local-udp_pic32mz_ef_curiosity_v2.mk"
include nbproject/Makefile-local-udp_pic32mz_ef_curiosity_v2.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=udp_pic32mz_ef_curiosity_v2
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/LiveUpdate_Switcher.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/LiveUpdate_Switcher.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp/bsp.c ../src/system_config/udp_pic32mz_ef_curiosity_v2/framework/system/clk/src/sys_clk_pic32mz.c ../src/system_config/udp_pic32mz_ef_curiosity_v2/framework/system/devcon/src/sys_devcon.c ../src/system_config/udp_pic32mz_ef_curiosity_v2/framework/system/devcon/src/sys_devcon_pic32mz.c ../src/system_config/udp_pic32mz_ef_curiosity_v2/framework/system/devcon/src/sys_devcon_cache_pic32mz.S ../src/system_config/udp_pic32mz_ef_curiosity_v2/framework/system/ports/src/sys_ports_static.c ../src/system_config/udp_pic32mz_ef_curiosity_v2/framework/system/reset/src/sys_reset.c ../src/system_config/udp_pic32mz_ef_curiosity_v2/system_init.c ../src/system_config/udp_pic32mz_ef_curiosity_v2/system_interrupt.c ../src/system_config/udp_pic32mz_ef_curiosity_v2/system_exceptions.c ../src/system_config/udp_pic32mz_ef_curiosity_v2/system_tasks.c ../src/main.c ../src/app.c ../../../../../../framework/bootloader/src/datastream/datastream.c ../../../../../../framework/bootloader/src/datastream/datastream_udp.c ../../../../../../framework/bootloader/src/bootloader.c ../../../../../../framework/bootloader/src/nvm.c ../../../../../../framework/driver/ethmac/src/dynamic/drv_ethmac.c ../../../../../../framework/driver/ethmac/src/dynamic/drv_ethmac_lib.c ../../../../../../framework/driver/ethphy/src/dynamic/drv_ethphy.c ../../../../../../framework/driver/ethphy/src/dynamic/drv_extphy_ksz8061.c ../../../../../../framework/driver/miim/src/dynamic/drv_miim.c ../../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c ../../../../../../framework/system/int/src/sys_int_pic32.c ../../../../../../framework/system/random/src/sys_random.c ../../../../../../framework/system/tmr/src/sys_tmr.c ../../../../../../framework/tcpip/src/common/helpers.c ../../../../../../framework/tcpip/src/ipv4.c ../../../../../../framework/tcpip/src/udp.c ../../../../../../framework/tcpip/src/tcpip_heap_alloc.c ../../../../../../framework/tcpip/src/tcpip_heap_internal.c ../../../../../../framework/tcpip/src/arp.c ../../../../../../framework/tcpip/src/dhcp.c ../../../../../../framework/tcpip/src/dns.c ../../../../../../framework/tcpip/src/hash_fnv.c ../../../../../../framework/tcpip/src/oahash.c ../../../../../../framework/tcpip/src/tcpip_helpers.c ../../../../../../framework/tcpip/src/tcpip_helper_c32.S ../../../../../../framework/tcpip/src/tcpip_manager.c ../../../../../../framework/tcpip/src/tcpip_notify.c ../../../../../../framework/tcpip/src/tcpip_packet.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/80646058/bsp.o ${OBJECTDIR}/_ext/1559072963/sys_clk_pic32mz.o ${OBJECTDIR}/_ext/218585956/sys_devcon.o ${OBJECTDIR}/_ext/218585956/sys_devcon_pic32mz.o ${OBJECTDIR}/_ext/218585956/sys_devcon_cache_pic32mz.o ${OBJECTDIR}/_ext/818113363/sys_ports_static.o ${OBJECTDIR}/_ext/72700778/sys_reset.o ${OBJECTDIR}/_ext/794083578/system_init.o ${OBJECTDIR}/_ext/794083578/system_interrupt.o ${OBJECTDIR}/_ext/794083578/system_exceptions.o ${OBJECTDIR}/_ext/794083578/system_tasks.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/682638542/datastream.o ${OBJECTDIR}/_ext/682638542/datastream_udp.o ${OBJECTDIR}/_ext/1854679915/bootloader.o ${OBJECTDIR}/_ext/1854679915/nvm.o ${OBJECTDIR}/_ext/1764881201/drv_ethmac.o ${OBJECTDIR}/_ext/1764881201/drv_ethmac_lib.o ${OBJECTDIR}/_ext/588727395/drv_ethphy.o ${OBJECTDIR}/_ext/588727395/drv_extphy_ksz8061.o ${OBJECTDIR}/_ext/572279899/drv_miim.o ${OBJECTDIR}/_ext/1152366776/drv_tmr.o ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o ${OBJECTDIR}/_ext/899838009/sys_random.o ${OBJECTDIR}/_ext/430974239/sys_tmr.o ${OBJECTDIR}/_ext/593738990/helpers.o ${OBJECTDIR}/_ext/1833714580/ipv4.o ${OBJECTDIR}/_ext/1833714580/udp.o ${OBJECTDIR}/_ext/1833714580/tcpip_heap_alloc.o ${OBJECTDIR}/_ext/1833714580/tcpip_heap_internal.o ${OBJECTDIR}/_ext/1833714580/arp.o ${OBJECTDIR}/_ext/1833714580/dhcp.o ${OBJECTDIR}/_ext/1833714580/dns.o ${OBJECTDIR}/_ext/1833714580/hash_fnv.o ${OBJECTDIR}/_ext/1833714580/oahash.o ${OBJECTDIR}/_ext/1833714580/tcpip_helpers.o ${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o ${OBJECTDIR}/_ext/1833714580/tcpip_manager.o ${OBJECTDIR}/_ext/1833714580/tcpip_notify.o ${OBJECTDIR}/_ext/1833714580/tcpip_packet.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/80646058/bsp.o.d ${OBJECTDIR}/_ext/1559072963/sys_clk_pic32mz.o.d ${OBJECTDIR}/_ext/218585956/sys_devcon.o.d ${OBJECTDIR}/_ext/218585956/sys_devcon_pic32mz.o.d ${OBJECTDIR}/_ext/218585956/sys_devcon_cache_pic32mz.o.d ${OBJECTDIR}/_ext/818113363/sys_ports_static.o.d ${OBJECTDIR}/_ext/72700778/sys_reset.o.d ${OBJECTDIR}/_ext/794083578/system_init.o.d ${OBJECTDIR}/_ext/794083578/system_interrupt.o.d ${OBJECTDIR}/_ext/794083578/system_exceptions.o.d ${OBJECTDIR}/_ext/794083578/system_tasks.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/app.o.d ${OBJECTDIR}/_ext/682638542/datastream.o.d ${OBJECTDIR}/_ext/682638542/datastream_udp.o.d ${OBJECTDIR}/_ext/1854679915/bootloader.o.d ${OBJECTDIR}/_ext/1854679915/nvm.o.d ${OBJECTDIR}/_ext/1764881201/drv_ethmac.o.d ${OBJECTDIR}/_ext/1764881201/drv_ethmac_lib.o.d ${OBJECTDIR}/_ext/588727395/drv_ethphy.o.d ${OBJECTDIR}/_ext/588727395/drv_extphy_ksz8061.o.d ${OBJECTDIR}/_ext/572279899/drv_miim.o.d ${OBJECTDIR}/_ext/1152366776/drv_tmr.o.d ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o.d ${OBJECTDIR}/_ext/899838009/sys_random.o.d ${OBJECTDIR}/_ext/430974239/sys_tmr.o.d ${OBJECTDIR}/_ext/593738990/helpers.o.d ${OBJECTDIR}/_ext/1833714580/ipv4.o.d ${OBJECTDIR}/_ext/1833714580/udp.o.d ${OBJECTDIR}/_ext/1833714580/tcpip_heap_alloc.o.d ${OBJECTDIR}/_ext/1833714580/tcpip_heap_internal.o.d ${OBJECTDIR}/_ext/1833714580/arp.o.d ${OBJECTDIR}/_ext/1833714580/dhcp.o.d ${OBJECTDIR}/_ext/1833714580/dns.o.d ${OBJECTDIR}/_ext/1833714580/hash_fnv.o.d ${OBJECTDIR}/_ext/1833714580/oahash.o.d ${OBJECTDIR}/_ext/1833714580/tcpip_helpers.o.d ${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o.d ${OBJECTDIR}/_ext/1833714580/tcpip_manager.o.d ${OBJECTDIR}/_ext/1833714580/tcpip_notify.o.d ${OBJECTDIR}/_ext/1833714580/tcpip_packet.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/80646058/bsp.o ${OBJECTDIR}/_ext/1559072963/sys_clk_pic32mz.o ${OBJECTDIR}/_ext/218585956/sys_devcon.o ${OBJECTDIR}/_ext/218585956/sys_devcon_pic32mz.o ${OBJECTDIR}/_ext/218585956/sys_devcon_cache_pic32mz.o ${OBJECTDIR}/_ext/818113363/sys_ports_static.o ${OBJECTDIR}/_ext/72700778/sys_reset.o ${OBJECTDIR}/_ext/794083578/system_init.o ${OBJECTDIR}/_ext/794083578/system_interrupt.o ${OBJECTDIR}/_ext/794083578/system_exceptions.o ${OBJECTDIR}/_ext/794083578/system_tasks.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/682638542/datastream.o ${OBJECTDIR}/_ext/682638542/datastream_udp.o ${OBJECTDIR}/_ext/1854679915/bootloader.o ${OBJECTDIR}/_ext/1854679915/nvm.o ${OBJECTDIR}/_ext/1764881201/drv_ethmac.o ${OBJECTDIR}/_ext/1764881201/drv_ethmac_lib.o ${OBJECTDIR}/_ext/588727395/drv_ethphy.o ${OBJECTDIR}/_ext/588727395/drv_extphy_ksz8061.o ${OBJECTDIR}/_ext/572279899/drv_miim.o ${OBJECTDIR}/_ext/1152366776/drv_tmr.o ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o ${OBJECTDIR}/_ext/899838009/sys_random.o ${OBJECTDIR}/_ext/430974239/sys_tmr.o ${OBJECTDIR}/_ext/593738990/helpers.o ${OBJECTDIR}/_ext/1833714580/ipv4.o ${OBJECTDIR}/_ext/1833714580/udp.o ${OBJECTDIR}/_ext/1833714580/tcpip_heap_alloc.o ${OBJECTDIR}/_ext/1833714580/tcpip_heap_internal.o ${OBJECTDIR}/_ext/1833714580/arp.o ${OBJECTDIR}/_ext/1833714580/dhcp.o ${OBJECTDIR}/_ext/1833714580/dns.o ${OBJECTDIR}/_ext/1833714580/hash_fnv.o ${OBJECTDIR}/_ext/1833714580/oahash.o ${OBJECTDIR}/_ext/1833714580/tcpip_helpers.o ${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o ${OBJECTDIR}/_ext/1833714580/tcpip_manager.o ${OBJECTDIR}/_ext/1833714580/tcpip_notify.o ${OBJECTDIR}/_ext/1833714580/tcpip_packet.o

# Source Files
SOURCEFILES=../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp/bsp.c ../src/system_config/udp_pic32mz_ef_curiosity_v2/framework/system/clk/src/sys_clk_pic32mz.c ../src/system_config/udp_pic32mz_ef_curiosity_v2/framework/system/devcon/src/sys_devcon.c ../src/system_config/udp_pic32mz_ef_curiosity_v2/framework/system/devcon/src/sys_devcon_pic32mz.c ../src/system_config/udp_pic32mz_ef_curiosity_v2/framework/system/devcon/src/sys_devcon_cache_pic32mz.S ../src/system_config/udp_pic32mz_ef_curiosity_v2/framework/system/ports/src/sys_ports_static.c ../src/system_config/udp_pic32mz_ef_curiosity_v2/framework/system/reset/src/sys_reset.c ../src/system_config/udp_pic32mz_ef_curiosity_v2/system_init.c ../src/system_config/udp_pic32mz_ef_curiosity_v2/system_interrupt.c ../src/system_config/udp_pic32mz_ef_curiosity_v2/system_exceptions.c ../src/system_config/udp_pic32mz_ef_curiosity_v2/system_tasks.c ../src/main.c ../src/app.c ../../../../../../framework/bootloader/src/datastream/datastream.c ../../../../../../framework/bootloader/src/datastream/datastream_udp.c ../../../../../../framework/bootloader/src/bootloader.c ../../../../../../framework/bootloader/src/nvm.c ../../../../../../framework/driver/ethmac/src/dynamic/drv_ethmac.c ../../../../../../framework/driver/ethmac/src/dynamic/drv_ethmac_lib.c ../../../../../../framework/driver/ethphy/src/dynamic/drv_ethphy.c ../../../../../../framework/driver/ethphy/src/dynamic/drv_extphy_ksz8061.c ../../../../../../framework/driver/miim/src/dynamic/drv_miim.c ../../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c ../../../../../../framework/system/int/src/sys_int_pic32.c ../../../../../../framework/system/random/src/sys_random.c ../../../../../../framework/system/tmr/src/sys_tmr.c ../../../../../../framework/tcpip/src/common/helpers.c ../../../../../../framework/tcpip/src/ipv4.c ../../../../../../framework/tcpip/src/udp.c ../../../../../../framework/tcpip/src/tcpip_heap_alloc.c ../../../../../../framework/tcpip/src/tcpip_heap_internal.c ../../../../../../framework/tcpip/src/arp.c ../../../../../../framework/tcpip/src/dhcp.c ../../../../../../framework/tcpip/src/dns.c ../../../../../../framework/tcpip/src/hash_fnv.c ../../../../../../framework/tcpip/src/oahash.c ../../../../../../framework/tcpip/src/tcpip_helpers.c ../../../../../../framework/tcpip/src/tcpip_helper_c32.S ../../../../../../framework/tcpip/src/tcpip_manager.c ../../../../../../framework/tcpip/src/tcpip_notify.c ../../../../../../framework/tcpip/src/tcpip_packet.c



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
	${MAKE}  -f nbproject/Makefile-udp_pic32mz_ef_curiosity_v2.mk ${DISTDIR}/LiveUpdate_Switcher.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MZ2048EFM144
MP_LINKER_FILE_OPTION=,--script="..\src\system_config\udp_pic32mz_ef_curiosity_v2\btl_mz.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/218585956/sys_devcon_cache_pic32mz.o: ../src/system_config/udp_pic32mz_ef_curiosity_v2/framework/system/devcon/src/sys_devcon_cache_pic32mz.S  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/dd3f91180afc819b7eb1fca93e20d72e6f00c543 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/218585956" 
	@${RM} ${OBJECTDIR}/_ext/218585956/sys_devcon_cache_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/218585956/sys_devcon_cache_pic32mz.o 
	@${RM} ${OBJECTDIR}/_ext/218585956/sys_devcon_cache_pic32mz.o.ok ${OBJECTDIR}/_ext/218585956/sys_devcon_cache_pic32mz.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/218585956/sys_devcon_cache_pic32mz.o.d"  -o ${OBJECTDIR}/_ext/218585956/sys_devcon_cache_pic32mz.o ../src/system_config/udp_pic32mz_ef_curiosity_v2/framework/system/devcon/src/sys_devcon_cache_pic32mz.S  -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/218585956/sys_devcon_cache_pic32mz.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/218585956/sys_devcon_cache_pic32mz.o.d" "${OBJECTDIR}/_ext/218585956/sys_devcon_cache_pic32mz.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o: ../../../../../../framework/tcpip/src/tcpip_helper_c32.S  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/a75187b2c0f46076d8df099ad973796f8cafaed2 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o.ok ${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o.d"  -o ${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o ../../../../../../framework/tcpip/src/tcpip_helper_c32.S  -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o.d" "${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/218585956/sys_devcon_cache_pic32mz.o: ../src/system_config/udp_pic32mz_ef_curiosity_v2/framework/system/devcon/src/sys_devcon_cache_pic32mz.S  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/b91c356dc181987b8145fafd04feb54af7df4ef8 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/218585956" 
	@${RM} ${OBJECTDIR}/_ext/218585956/sys_devcon_cache_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/218585956/sys_devcon_cache_pic32mz.o 
	@${RM} ${OBJECTDIR}/_ext/218585956/sys_devcon_cache_pic32mz.o.ok ${OBJECTDIR}/_ext/218585956/sys_devcon_cache_pic32mz.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/218585956/sys_devcon_cache_pic32mz.o.d"  -o ${OBJECTDIR}/_ext/218585956/sys_devcon_cache_pic32mz.o ../src/system_config/udp_pic32mz_ef_curiosity_v2/framework/system/devcon/src/sys_devcon_cache_pic32mz.S  -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/218585956/sys_devcon_cache_pic32mz.o.asm.d",--gdwarf-2 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/218585956/sys_devcon_cache_pic32mz.o.d" "${OBJECTDIR}/_ext/218585956/sys_devcon_cache_pic32mz.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o: ../../../../../../framework/tcpip/src/tcpip_helper_c32.S  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/a71738fd07ee0f74b14ed8ddf24924e2e22a13a9 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o.ok ${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o.d"  -o ${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o ../../../../../../framework/tcpip/src/tcpip_helper_c32.S  -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o.asm.d",--gdwarf-2 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o.d" "${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/80646058/bsp.o: ../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp/bsp.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/93345b4c49c03ae8a80926278599d2fdc22c651e .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/80646058" 
	@${RM} ${OBJECTDIR}/_ext/80646058/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/80646058/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/80646058/bsp.o.d" -o ${OBJECTDIR}/_ext/80646058/bsp.o ../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp/bsp.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1559072963/sys_clk_pic32mz.o: ../src/system_config/udp_pic32mz_ef_curiosity_v2/framework/system/clk/src/sys_clk_pic32mz.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/9426e65e89f308718d85fbb1d81dc708d0db1156 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1559072963" 
	@${RM} ${OBJECTDIR}/_ext/1559072963/sys_clk_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/1559072963/sys_clk_pic32mz.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1559072963/sys_clk_pic32mz.o.d" -o ${OBJECTDIR}/_ext/1559072963/sys_clk_pic32mz.o ../src/system_config/udp_pic32mz_ef_curiosity_v2/framework/system/clk/src/sys_clk_pic32mz.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/218585956/sys_devcon.o: ../src/system_config/udp_pic32mz_ef_curiosity_v2/framework/system/devcon/src/sys_devcon.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/ef4aa89ff480d14485b40b0f018d17dc5314c9d1 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/218585956" 
	@${RM} ${OBJECTDIR}/_ext/218585956/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/218585956/sys_devcon.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/218585956/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/218585956/sys_devcon.o ../src/system_config/udp_pic32mz_ef_curiosity_v2/framework/system/devcon/src/sys_devcon.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/218585956/sys_devcon_pic32mz.o: ../src/system_config/udp_pic32mz_ef_curiosity_v2/framework/system/devcon/src/sys_devcon_pic32mz.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/3dbd32ca4dde460906fdf8c69be478e510b3264c .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/218585956" 
	@${RM} ${OBJECTDIR}/_ext/218585956/sys_devcon_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/218585956/sys_devcon_pic32mz.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/218585956/sys_devcon_pic32mz.o.d" -o ${OBJECTDIR}/_ext/218585956/sys_devcon_pic32mz.o ../src/system_config/udp_pic32mz_ef_curiosity_v2/framework/system/devcon/src/sys_devcon_pic32mz.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/818113363/sys_ports_static.o: ../src/system_config/udp_pic32mz_ef_curiosity_v2/framework/system/ports/src/sys_ports_static.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/6d207072559eb628f9e4a62e89cc4bc2675ad68c .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/818113363" 
	@${RM} ${OBJECTDIR}/_ext/818113363/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/818113363/sys_ports_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/818113363/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/818113363/sys_ports_static.o ../src/system_config/udp_pic32mz_ef_curiosity_v2/framework/system/ports/src/sys_ports_static.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/72700778/sys_reset.o: ../src/system_config/udp_pic32mz_ef_curiosity_v2/framework/system/reset/src/sys_reset.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/3e5294ab95b5a338745e19823828ac55a25e4844 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/72700778" 
	@${RM} ${OBJECTDIR}/_ext/72700778/sys_reset.o.d 
	@${RM} ${OBJECTDIR}/_ext/72700778/sys_reset.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/72700778/sys_reset.o.d" -o ${OBJECTDIR}/_ext/72700778/sys_reset.o ../src/system_config/udp_pic32mz_ef_curiosity_v2/framework/system/reset/src/sys_reset.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/794083578/system_init.o: ../src/system_config/udp_pic32mz_ef_curiosity_v2/system_init.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/a6e74ff66d8110c94f870af0bbfbc6ff520da0dd .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/794083578" 
	@${RM} ${OBJECTDIR}/_ext/794083578/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/794083578/system_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/794083578/system_init.o.d" -o ${OBJECTDIR}/_ext/794083578/system_init.o ../src/system_config/udp_pic32mz_ef_curiosity_v2/system_init.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/794083578/system_interrupt.o: ../src/system_config/udp_pic32mz_ef_curiosity_v2/system_interrupt.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/bfc0731ab9961fdd19cd5eb69ee2a755b0c59b09 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/794083578" 
	@${RM} ${OBJECTDIR}/_ext/794083578/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/794083578/system_interrupt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/794083578/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/794083578/system_interrupt.o ../src/system_config/udp_pic32mz_ef_curiosity_v2/system_interrupt.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/794083578/system_exceptions.o: ../src/system_config/udp_pic32mz_ef_curiosity_v2/system_exceptions.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/e7165c27420fbb03f4ddc3ee806fab83f37f102f .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/794083578" 
	@${RM} ${OBJECTDIR}/_ext/794083578/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/794083578/system_exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/794083578/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/794083578/system_exceptions.o ../src/system_config/udp_pic32mz_ef_curiosity_v2/system_exceptions.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/794083578/system_tasks.o: ../src/system_config/udp_pic32mz_ef_curiosity_v2/system_tasks.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/9addfc710e72cc396b581bfdd51cfdebf7fb09eb .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/794083578" 
	@${RM} ${OBJECTDIR}/_ext/794083578/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/794083578/system_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/794083578/system_tasks.o.d" -o ${OBJECTDIR}/_ext/794083578/system_tasks.o ../src/system_config/udp_pic32mz_ef_curiosity_v2/system_tasks.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/a0695744afeb606cdeb8ec1f22c67f2c20727208 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/141779108192b059f359d9857a50b48a4a2f2ffe .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/682638542/datastream.o: ../../../../../../framework/bootloader/src/datastream/datastream.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/66479d549af5b56d84adaf0242fdd207c347f05b .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/682638542" 
	@${RM} ${OBJECTDIR}/_ext/682638542/datastream.o.d 
	@${RM} ${OBJECTDIR}/_ext/682638542/datastream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/682638542/datastream.o.d" -o ${OBJECTDIR}/_ext/682638542/datastream.o ../../../../../../framework/bootloader/src/datastream/datastream.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/682638542/datastream_udp.o: ../../../../../../framework/bootloader/src/datastream/datastream_udp.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/8e4e64bcd082f9d31f884058e300d60c5e47a98d .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/682638542" 
	@${RM} ${OBJECTDIR}/_ext/682638542/datastream_udp.o.d 
	@${RM} ${OBJECTDIR}/_ext/682638542/datastream_udp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/682638542/datastream_udp.o.d" -o ${OBJECTDIR}/_ext/682638542/datastream_udp.o ../../../../../../framework/bootloader/src/datastream/datastream_udp.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854679915/bootloader.o: ../../../../../../framework/bootloader/src/bootloader.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/926986aaa35055b462104c369fa250cd0c507bad .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1854679915" 
	@${RM} ${OBJECTDIR}/_ext/1854679915/bootloader.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854679915/bootloader.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1854679915/bootloader.o.d" -o ${OBJECTDIR}/_ext/1854679915/bootloader.o ../../../../../../framework/bootloader/src/bootloader.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854679915/nvm.o: ../../../../../../framework/bootloader/src/nvm.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/356da448822612e4396a5f7a61597eb4bcae534b .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1854679915" 
	@${RM} ${OBJECTDIR}/_ext/1854679915/nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854679915/nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1854679915/nvm.o.d" -o ${OBJECTDIR}/_ext/1854679915/nvm.o ../../../../../../framework/bootloader/src/nvm.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1764881201/drv_ethmac.o: ../../../../../../framework/driver/ethmac/src/dynamic/drv_ethmac.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/df97b77113976eb5f1bceb8cba6c00dfeaa504f9 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1764881201" 
	@${RM} ${OBJECTDIR}/_ext/1764881201/drv_ethmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1764881201/drv_ethmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1764881201/drv_ethmac.o.d" -o ${OBJECTDIR}/_ext/1764881201/drv_ethmac.o ../../../../../../framework/driver/ethmac/src/dynamic/drv_ethmac.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1764881201/drv_ethmac_lib.o: ../../../../../../framework/driver/ethmac/src/dynamic/drv_ethmac_lib.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/3a239223b3b71f681a104eee289435ca111f01f0 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1764881201" 
	@${RM} ${OBJECTDIR}/_ext/1764881201/drv_ethmac_lib.o.d 
	@${RM} ${OBJECTDIR}/_ext/1764881201/drv_ethmac_lib.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1764881201/drv_ethmac_lib.o.d" -o ${OBJECTDIR}/_ext/1764881201/drv_ethmac_lib.o ../../../../../../framework/driver/ethmac/src/dynamic/drv_ethmac_lib.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/588727395/drv_ethphy.o: ../../../../../../framework/driver/ethphy/src/dynamic/drv_ethphy.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/a7f6364ec28cc7764bb33f6b45839d76370606d2 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/588727395" 
	@${RM} ${OBJECTDIR}/_ext/588727395/drv_ethphy.o.d 
	@${RM} ${OBJECTDIR}/_ext/588727395/drv_ethphy.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/588727395/drv_ethphy.o.d" -o ${OBJECTDIR}/_ext/588727395/drv_ethphy.o ../../../../../../framework/driver/ethphy/src/dynamic/drv_ethphy.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/588727395/drv_extphy_ksz8061.o: ../../../../../../framework/driver/ethphy/src/dynamic/drv_extphy_ksz8061.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/f3f2745e391e73040a5b331cdc93c5e811cf040c .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/588727395" 
	@${RM} ${OBJECTDIR}/_ext/588727395/drv_extphy_ksz8061.o.d 
	@${RM} ${OBJECTDIR}/_ext/588727395/drv_extphy_ksz8061.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/588727395/drv_extphy_ksz8061.o.d" -o ${OBJECTDIR}/_ext/588727395/drv_extphy_ksz8061.o ../../../../../../framework/driver/ethphy/src/dynamic/drv_extphy_ksz8061.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/572279899/drv_miim.o: ../../../../../../framework/driver/miim/src/dynamic/drv_miim.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/e48785ab6e55b574d2b2a977ed7b510a42e2c9e5 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/572279899" 
	@${RM} ${OBJECTDIR}/_ext/572279899/drv_miim.o.d 
	@${RM} ${OBJECTDIR}/_ext/572279899/drv_miim.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/572279899/drv_miim.o.d" -o ${OBJECTDIR}/_ext/572279899/drv_miim.o ../../../../../../framework/driver/miim/src/dynamic/drv_miim.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1152366776/drv_tmr.o: ../../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/724528c4278e365e4aae1e673e84f69981fd717a .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1152366776" 
	@${RM} ${OBJECTDIR}/_ext/1152366776/drv_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1152366776/drv_tmr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1152366776/drv_tmr.o.d" -o ${OBJECTDIR}/_ext/1152366776/drv_tmr.o ../../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/711155467/sys_int_pic32.o: ../../../../../../framework/system/int/src/sys_int_pic32.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/366d4761c6f17492567a86ec7409f876c0a8cdf .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/711155467" 
	@${RM} ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/711155467/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o ../../../../../../framework/system/int/src/sys_int_pic32.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/899838009/sys_random.o: ../../../../../../framework/system/random/src/sys_random.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/51f40b90da5abe43511559828bbec343c4d857f4 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/899838009" 
	@${RM} ${OBJECTDIR}/_ext/899838009/sys_random.o.d 
	@${RM} ${OBJECTDIR}/_ext/899838009/sys_random.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/899838009/sys_random.o.d" -o ${OBJECTDIR}/_ext/899838009/sys_random.o ../../../../../../framework/system/random/src/sys_random.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/430974239/sys_tmr.o: ../../../../../../framework/system/tmr/src/sys_tmr.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/aaa56c900d138af8dbe75a32478b421182574aa1 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/430974239" 
	@${RM} ${OBJECTDIR}/_ext/430974239/sys_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/430974239/sys_tmr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/430974239/sys_tmr.o.d" -o ${OBJECTDIR}/_ext/430974239/sys_tmr.o ../../../../../../framework/system/tmr/src/sys_tmr.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/593738990/helpers.o: ../../../../../../framework/tcpip/src/common/helpers.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/9445f254992349d39934e71a6a811776e973eac2 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/593738990" 
	@${RM} ${OBJECTDIR}/_ext/593738990/helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/593738990/helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/593738990/helpers.o.d" -o ${OBJECTDIR}/_ext/593738990/helpers.o ../../../../../../framework/tcpip/src/common/helpers.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/ipv4.o: ../../../../../../framework/tcpip/src/ipv4.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/646b56355642ddadf2cc6a027da37611d44d2807 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/ipv4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/ipv4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/ipv4.o.d" -o ${OBJECTDIR}/_ext/1833714580/ipv4.o ../../../../../../framework/tcpip/src/ipv4.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/udp.o: ../../../../../../framework/tcpip/src/udp.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/ca47acfdc4fb2212279f718740fdc43b5b636005 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/udp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/udp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/udp.o.d" -o ${OBJECTDIR}/_ext/1833714580/udp.o ../../../../../../framework/tcpip/src/udp.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/tcpip_heap_alloc.o: ../../../../../../framework/tcpip/src/tcpip_heap_alloc.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/ec12689e78e6b3f430b0fcb6a55d672bc8a065a2 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_heap_alloc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_heap_alloc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/tcpip_heap_alloc.o.d" -o ${OBJECTDIR}/_ext/1833714580/tcpip_heap_alloc.o ../../../../../../framework/tcpip/src/tcpip_heap_alloc.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/tcpip_heap_internal.o: ../../../../../../framework/tcpip/src/tcpip_heap_internal.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/576a5b67f358484392f7a5ac71e09130a3b52c8f .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_heap_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_heap_internal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/tcpip_heap_internal.o.d" -o ${OBJECTDIR}/_ext/1833714580/tcpip_heap_internal.o ../../../../../../framework/tcpip/src/tcpip_heap_internal.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/arp.o: ../../../../../../framework/tcpip/src/arp.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/36131b82e15db1d5da96893d2360cd5fd86428e9 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/arp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/arp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/arp.o.d" -o ${OBJECTDIR}/_ext/1833714580/arp.o ../../../../../../framework/tcpip/src/arp.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/dhcp.o: ../../../../../../framework/tcpip/src/dhcp.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/f5589186558dc9824bdfedd9d768f90a28a7d57 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/dhcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/dhcp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/dhcp.o.d" -o ${OBJECTDIR}/_ext/1833714580/dhcp.o ../../../../../../framework/tcpip/src/dhcp.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/dns.o: ../../../../../../framework/tcpip/src/dns.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/295fd9319acb78955779817acc0a46506483e8b4 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/dns.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/dns.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/dns.o.d" -o ${OBJECTDIR}/_ext/1833714580/dns.o ../../../../../../framework/tcpip/src/dns.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/hash_fnv.o: ../../../../../../framework/tcpip/src/hash_fnv.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/927a2e258fe14277c9559f19c60cc07f33c4a575 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/hash_fnv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/hash_fnv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/hash_fnv.o.d" -o ${OBJECTDIR}/_ext/1833714580/hash_fnv.o ../../../../../../framework/tcpip/src/hash_fnv.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/oahash.o: ../../../../../../framework/tcpip/src/oahash.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/190cac9f6d2d74af813af865647bbd261b5c58ab .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/oahash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/oahash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/oahash.o.d" -o ${OBJECTDIR}/_ext/1833714580/oahash.o ../../../../../../framework/tcpip/src/oahash.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/tcpip_helpers.o: ../../../../../../framework/tcpip/src/tcpip_helpers.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/407bafc85f2bf7d230cd799e16784a2444b982ad .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/tcpip_helpers.o.d" -o ${OBJECTDIR}/_ext/1833714580/tcpip_helpers.o ../../../../../../framework/tcpip/src/tcpip_helpers.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/tcpip_manager.o: ../../../../../../framework/tcpip/src/tcpip_manager.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/ab26640ebb9667075cc9bd5db8c286f5a0bc4aa1 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/tcpip_manager.o.d" -o ${OBJECTDIR}/_ext/1833714580/tcpip_manager.o ../../../../../../framework/tcpip/src/tcpip_manager.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/tcpip_notify.o: ../../../../../../framework/tcpip/src/tcpip_notify.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/2a28595da90567c1b3e050c57c302731c7bce2c9 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_notify.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_notify.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/tcpip_notify.o.d" -o ${OBJECTDIR}/_ext/1833714580/tcpip_notify.o ../../../../../../framework/tcpip/src/tcpip_notify.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/tcpip_packet.o: ../../../../../../framework/tcpip/src/tcpip_packet.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/51d3936e556539e58317ef04336228a255c069c0 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_packet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_packet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/tcpip_packet.o.d" -o ${OBJECTDIR}/_ext/1833714580/tcpip_packet.o ../../../../../../framework/tcpip/src/tcpip_packet.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/80646058/bsp.o: ../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp/bsp.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/aa32a3f26eae707b9261a8c322ae690ce2249244 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/80646058" 
	@${RM} ${OBJECTDIR}/_ext/80646058/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/80646058/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/80646058/bsp.o.d" -o ${OBJECTDIR}/_ext/80646058/bsp.o ../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp/bsp.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1559072963/sys_clk_pic32mz.o: ../src/system_config/udp_pic32mz_ef_curiosity_v2/framework/system/clk/src/sys_clk_pic32mz.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/450c070103afd8cfcf593f3a0ae28ee7051bff56 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1559072963" 
	@${RM} ${OBJECTDIR}/_ext/1559072963/sys_clk_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/1559072963/sys_clk_pic32mz.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1559072963/sys_clk_pic32mz.o.d" -o ${OBJECTDIR}/_ext/1559072963/sys_clk_pic32mz.o ../src/system_config/udp_pic32mz_ef_curiosity_v2/framework/system/clk/src/sys_clk_pic32mz.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/218585956/sys_devcon.o: ../src/system_config/udp_pic32mz_ef_curiosity_v2/framework/system/devcon/src/sys_devcon.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/ae3d5369cc55ad6da06e108bd79f9f9ff9d80081 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/218585956" 
	@${RM} ${OBJECTDIR}/_ext/218585956/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/218585956/sys_devcon.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/218585956/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/218585956/sys_devcon.o ../src/system_config/udp_pic32mz_ef_curiosity_v2/framework/system/devcon/src/sys_devcon.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/218585956/sys_devcon_pic32mz.o: ../src/system_config/udp_pic32mz_ef_curiosity_v2/framework/system/devcon/src/sys_devcon_pic32mz.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/2d254d96161a2de000fe1034e404b7dbf5c34158 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/218585956" 
	@${RM} ${OBJECTDIR}/_ext/218585956/sys_devcon_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/218585956/sys_devcon_pic32mz.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/218585956/sys_devcon_pic32mz.o.d" -o ${OBJECTDIR}/_ext/218585956/sys_devcon_pic32mz.o ../src/system_config/udp_pic32mz_ef_curiosity_v2/framework/system/devcon/src/sys_devcon_pic32mz.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/818113363/sys_ports_static.o: ../src/system_config/udp_pic32mz_ef_curiosity_v2/framework/system/ports/src/sys_ports_static.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/2960068b7dfe0d95690bf85309bc01915135f8f3 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/818113363" 
	@${RM} ${OBJECTDIR}/_ext/818113363/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/818113363/sys_ports_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/818113363/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/818113363/sys_ports_static.o ../src/system_config/udp_pic32mz_ef_curiosity_v2/framework/system/ports/src/sys_ports_static.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/72700778/sys_reset.o: ../src/system_config/udp_pic32mz_ef_curiosity_v2/framework/system/reset/src/sys_reset.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/8ad00a3a5b891cdaeee4cb4889e3d440493a994d .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/72700778" 
	@${RM} ${OBJECTDIR}/_ext/72700778/sys_reset.o.d 
	@${RM} ${OBJECTDIR}/_ext/72700778/sys_reset.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/72700778/sys_reset.o.d" -o ${OBJECTDIR}/_ext/72700778/sys_reset.o ../src/system_config/udp_pic32mz_ef_curiosity_v2/framework/system/reset/src/sys_reset.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/794083578/system_init.o: ../src/system_config/udp_pic32mz_ef_curiosity_v2/system_init.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/c5819847a9907abace0321328187600e1dce0f02 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/794083578" 
	@${RM} ${OBJECTDIR}/_ext/794083578/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/794083578/system_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/794083578/system_init.o.d" -o ${OBJECTDIR}/_ext/794083578/system_init.o ../src/system_config/udp_pic32mz_ef_curiosity_v2/system_init.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/794083578/system_interrupt.o: ../src/system_config/udp_pic32mz_ef_curiosity_v2/system_interrupt.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/d67fd870f7a0fa9ad77e5c8f6db374aabc8087c0 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/794083578" 
	@${RM} ${OBJECTDIR}/_ext/794083578/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/794083578/system_interrupt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/794083578/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/794083578/system_interrupt.o ../src/system_config/udp_pic32mz_ef_curiosity_v2/system_interrupt.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/794083578/system_exceptions.o: ../src/system_config/udp_pic32mz_ef_curiosity_v2/system_exceptions.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/34483390c240c698f27723dc9cb126111a96342d .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/794083578" 
	@${RM} ${OBJECTDIR}/_ext/794083578/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/794083578/system_exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/794083578/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/794083578/system_exceptions.o ../src/system_config/udp_pic32mz_ef_curiosity_v2/system_exceptions.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/794083578/system_tasks.o: ../src/system_config/udp_pic32mz_ef_curiosity_v2/system_tasks.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/998050c745ab8f2874bb5ad8089184776b50aef8 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/794083578" 
	@${RM} ${OBJECTDIR}/_ext/794083578/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/794083578/system_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/794083578/system_tasks.o.d" -o ${OBJECTDIR}/_ext/794083578/system_tasks.o ../src/system_config/udp_pic32mz_ef_curiosity_v2/system_tasks.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/5b68a6c7831c59af9f4cb11ec2e2cd327782a52a .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/ba4bb9540f1576b1fd1876dc4205e899566fab0f .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/682638542/datastream.o: ../../../../../../framework/bootloader/src/datastream/datastream.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/9b9a79d7a0183251a36c24222da5ba4dd1a2253c .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/682638542" 
	@${RM} ${OBJECTDIR}/_ext/682638542/datastream.o.d 
	@${RM} ${OBJECTDIR}/_ext/682638542/datastream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/682638542/datastream.o.d" -o ${OBJECTDIR}/_ext/682638542/datastream.o ../../../../../../framework/bootloader/src/datastream/datastream.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/682638542/datastream_udp.o: ../../../../../../framework/bootloader/src/datastream/datastream_udp.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/d37a3dcc5fac5666eb5c4c3dd601a1ea36444739 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/682638542" 
	@${RM} ${OBJECTDIR}/_ext/682638542/datastream_udp.o.d 
	@${RM} ${OBJECTDIR}/_ext/682638542/datastream_udp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/682638542/datastream_udp.o.d" -o ${OBJECTDIR}/_ext/682638542/datastream_udp.o ../../../../../../framework/bootloader/src/datastream/datastream_udp.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854679915/bootloader.o: ../../../../../../framework/bootloader/src/bootloader.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/6df9a42c1599b2bbee41fa8bce221ae5abdbf79a .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1854679915" 
	@${RM} ${OBJECTDIR}/_ext/1854679915/bootloader.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854679915/bootloader.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1854679915/bootloader.o.d" -o ${OBJECTDIR}/_ext/1854679915/bootloader.o ../../../../../../framework/bootloader/src/bootloader.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854679915/nvm.o: ../../../../../../framework/bootloader/src/nvm.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/6b18acc7005330447380a98d6be74f63ee1561ae .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1854679915" 
	@${RM} ${OBJECTDIR}/_ext/1854679915/nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854679915/nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1854679915/nvm.o.d" -o ${OBJECTDIR}/_ext/1854679915/nvm.o ../../../../../../framework/bootloader/src/nvm.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1764881201/drv_ethmac.o: ../../../../../../framework/driver/ethmac/src/dynamic/drv_ethmac.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/545f02a8a17e99c111ed8e51d6f6159819467b37 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1764881201" 
	@${RM} ${OBJECTDIR}/_ext/1764881201/drv_ethmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1764881201/drv_ethmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1764881201/drv_ethmac.o.d" -o ${OBJECTDIR}/_ext/1764881201/drv_ethmac.o ../../../../../../framework/driver/ethmac/src/dynamic/drv_ethmac.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1764881201/drv_ethmac_lib.o: ../../../../../../framework/driver/ethmac/src/dynamic/drv_ethmac_lib.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/9b951d1e7bb1df719240644440fe2c2baa153ccd .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1764881201" 
	@${RM} ${OBJECTDIR}/_ext/1764881201/drv_ethmac_lib.o.d 
	@${RM} ${OBJECTDIR}/_ext/1764881201/drv_ethmac_lib.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1764881201/drv_ethmac_lib.o.d" -o ${OBJECTDIR}/_ext/1764881201/drv_ethmac_lib.o ../../../../../../framework/driver/ethmac/src/dynamic/drv_ethmac_lib.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/588727395/drv_ethphy.o: ../../../../../../framework/driver/ethphy/src/dynamic/drv_ethphy.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/5cef24cff1141cf28b4ca962d89e5c17da8d15b4 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/588727395" 
	@${RM} ${OBJECTDIR}/_ext/588727395/drv_ethphy.o.d 
	@${RM} ${OBJECTDIR}/_ext/588727395/drv_ethphy.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/588727395/drv_ethphy.o.d" -o ${OBJECTDIR}/_ext/588727395/drv_ethphy.o ../../../../../../framework/driver/ethphy/src/dynamic/drv_ethphy.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/588727395/drv_extphy_ksz8061.o: ../../../../../../framework/driver/ethphy/src/dynamic/drv_extphy_ksz8061.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/d696cd8454258a717798004488903efba3b1cffc .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/588727395" 
	@${RM} ${OBJECTDIR}/_ext/588727395/drv_extphy_ksz8061.o.d 
	@${RM} ${OBJECTDIR}/_ext/588727395/drv_extphy_ksz8061.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/588727395/drv_extphy_ksz8061.o.d" -o ${OBJECTDIR}/_ext/588727395/drv_extphy_ksz8061.o ../../../../../../framework/driver/ethphy/src/dynamic/drv_extphy_ksz8061.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/572279899/drv_miim.o: ../../../../../../framework/driver/miim/src/dynamic/drv_miim.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/ac8dcfa88abc3d7093475485a374803101769b9e .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/572279899" 
	@${RM} ${OBJECTDIR}/_ext/572279899/drv_miim.o.d 
	@${RM} ${OBJECTDIR}/_ext/572279899/drv_miim.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/572279899/drv_miim.o.d" -o ${OBJECTDIR}/_ext/572279899/drv_miim.o ../../../../../../framework/driver/miim/src/dynamic/drv_miim.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1152366776/drv_tmr.o: ../../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/d9a28e9e1d7c8e2f3b4c81506cbecb946a46eae .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1152366776" 
	@${RM} ${OBJECTDIR}/_ext/1152366776/drv_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1152366776/drv_tmr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1152366776/drv_tmr.o.d" -o ${OBJECTDIR}/_ext/1152366776/drv_tmr.o ../../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/711155467/sys_int_pic32.o: ../../../../../../framework/system/int/src/sys_int_pic32.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/784752598cb6a2aa5ad13ac95bd9e1d2639fe422 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/711155467" 
	@${RM} ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/711155467/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o ../../../../../../framework/system/int/src/sys_int_pic32.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/899838009/sys_random.o: ../../../../../../framework/system/random/src/sys_random.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/3f98322b6635adc9fed5969bf72e33fd1278f9c5 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/899838009" 
	@${RM} ${OBJECTDIR}/_ext/899838009/sys_random.o.d 
	@${RM} ${OBJECTDIR}/_ext/899838009/sys_random.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/899838009/sys_random.o.d" -o ${OBJECTDIR}/_ext/899838009/sys_random.o ../../../../../../framework/system/random/src/sys_random.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/430974239/sys_tmr.o: ../../../../../../framework/system/tmr/src/sys_tmr.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/576f650b10851f99fed5748710493c2058a26a1a .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/430974239" 
	@${RM} ${OBJECTDIR}/_ext/430974239/sys_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/430974239/sys_tmr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/430974239/sys_tmr.o.d" -o ${OBJECTDIR}/_ext/430974239/sys_tmr.o ../../../../../../framework/system/tmr/src/sys_tmr.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/593738990/helpers.o: ../../../../../../framework/tcpip/src/common/helpers.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/a236a07697971ae83964606701197629250851bc .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/593738990" 
	@${RM} ${OBJECTDIR}/_ext/593738990/helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/593738990/helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/593738990/helpers.o.d" -o ${OBJECTDIR}/_ext/593738990/helpers.o ../../../../../../framework/tcpip/src/common/helpers.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/ipv4.o: ../../../../../../framework/tcpip/src/ipv4.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/abe3f870f19eb051c05e7927f0f94240849be8b0 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/ipv4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/ipv4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/ipv4.o.d" -o ${OBJECTDIR}/_ext/1833714580/ipv4.o ../../../../../../framework/tcpip/src/ipv4.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/udp.o: ../../../../../../framework/tcpip/src/udp.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/87f8c3137fd5fc8d6bc0373c757b666b0e30e613 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/udp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/udp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/udp.o.d" -o ${OBJECTDIR}/_ext/1833714580/udp.o ../../../../../../framework/tcpip/src/udp.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/tcpip_heap_alloc.o: ../../../../../../framework/tcpip/src/tcpip_heap_alloc.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/35ff69c6ca4343371845fd3e4a11856ecd6d9ae8 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_heap_alloc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_heap_alloc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/tcpip_heap_alloc.o.d" -o ${OBJECTDIR}/_ext/1833714580/tcpip_heap_alloc.o ../../../../../../framework/tcpip/src/tcpip_heap_alloc.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/tcpip_heap_internal.o: ../../../../../../framework/tcpip/src/tcpip_heap_internal.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/5adcefcc1a1b7338398e173d5ba6dd40f59cddb .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_heap_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_heap_internal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/tcpip_heap_internal.o.d" -o ${OBJECTDIR}/_ext/1833714580/tcpip_heap_internal.o ../../../../../../framework/tcpip/src/tcpip_heap_internal.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/arp.o: ../../../../../../framework/tcpip/src/arp.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/71bb93757bd63ff163bf9f35794198a3dc5af244 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/arp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/arp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/arp.o.d" -o ${OBJECTDIR}/_ext/1833714580/arp.o ../../../../../../framework/tcpip/src/arp.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/dhcp.o: ../../../../../../framework/tcpip/src/dhcp.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/9f2e03e34dcbb15c1cc019d150ff39efea51414 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/dhcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/dhcp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/dhcp.o.d" -o ${OBJECTDIR}/_ext/1833714580/dhcp.o ../../../../../../framework/tcpip/src/dhcp.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/dns.o: ../../../../../../framework/tcpip/src/dns.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/e2324f96d2e96540cda5bf9f297e2ad3a807b1a0 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/dns.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/dns.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/dns.o.d" -o ${OBJECTDIR}/_ext/1833714580/dns.o ../../../../../../framework/tcpip/src/dns.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/hash_fnv.o: ../../../../../../framework/tcpip/src/hash_fnv.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/3fa6a972b19fbdc04a6c27456721396af6d93cdb .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/hash_fnv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/hash_fnv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/hash_fnv.o.d" -o ${OBJECTDIR}/_ext/1833714580/hash_fnv.o ../../../../../../framework/tcpip/src/hash_fnv.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/oahash.o: ../../../../../../framework/tcpip/src/oahash.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/98ca912eab2c2a6d6c4c3cfce81c544d3b779b66 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/oahash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/oahash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/oahash.o.d" -o ${OBJECTDIR}/_ext/1833714580/oahash.o ../../../../../../framework/tcpip/src/oahash.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/tcpip_helpers.o: ../../../../../../framework/tcpip/src/tcpip_helpers.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/781d9348f15b1af4153a85cd0b1d7aaa8b8e70af .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/tcpip_helpers.o.d" -o ${OBJECTDIR}/_ext/1833714580/tcpip_helpers.o ../../../../../../framework/tcpip/src/tcpip_helpers.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/tcpip_manager.o: ../../../../../../framework/tcpip/src/tcpip_manager.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/11f42acf01c5614087da1f09d881b54f2ee1e737 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/tcpip_manager.o.d" -o ${OBJECTDIR}/_ext/1833714580/tcpip_manager.o ../../../../../../framework/tcpip/src/tcpip_manager.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/tcpip_notify.o: ../../../../../../framework/tcpip/src/tcpip_notify.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/6e63c5a3c4a2d010c9d1a59be342280e22e7862f .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_notify.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_notify.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/tcpip_notify.o.d" -o ${OBJECTDIR}/_ext/1833714580/tcpip_notify.o ../../../../../../framework/tcpip/src/tcpip_notify.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/tcpip_packet.o: ../../../../../../framework/tcpip/src/tcpip_packet.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/a96ab52469bfd9944b080c815ce4446f072d67d5 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_packet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_packet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/tcpip_packet.o.d" -o ${OBJECTDIR}/_ext/1833714580/tcpip_packet.o ../../../../../../framework/tcpip/src/tcpip_packet.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/LiveUpdate_Switcher.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../../../bin/framework/peripheral/PIC32MZ2048EFM144_peripherals.a  ../src/system_config/udp_pic32mz_ef_curiosity_v2/btl_mz.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/LiveUpdate_Switcher.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\..\..\..\..\..\bin\framework\peripheral\PIC32MZ2048EFM144_peripherals.a      -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x37F   -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=64960,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/LiveUpdate_Switcher.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../../../bin/framework/peripheral/PIC32MZ2048EFM144_peripherals.a ../src/system_config/udp_pic32mz_ef_curiosity_v2/btl_mz.ld D:/github/microchip/harmonyV2_06/apps/bootloader/LiveUpdate/LiveUpdate_App/firmware/LiveUpdate_App.X/dist/pic32mz_curiosity_v2_udp_led3/production/LiveUpdate_App.X.production.hex
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/LiveUpdate_Switcher.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\..\..\..\..\..\bin\framework\peripheral\PIC32MZ2048EFM144_peripherals.a      -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=64960,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/LiveUpdate_Switcher.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
	@echo Normalizing hex file
	@"C:/Program Files/Microchip/MPLABX/v6.00/mplab_platform/platform/../mplab_ide/modules/../../bin/hexmate" --edf="C:/Program Files/Microchip/MPLABX/v6.00/mplab_platform/platform/../mplab_ide/modules/../../dat/en_msgs.txt" ${DISTDIR}/LiveUpdate_Switcher.X.${IMAGE_TYPE}.hex -o${DISTDIR}/LiveUpdate_Switcher.X.${IMAGE_TYPE}.hex

	@echo "Creating unified hex file"
	@"C:/Program Files/Microchip/MPLABX/v6.00/mplab_platform/platform/../mplab_ide/modules/../../bin/hexmate" --edf="C:/Program Files/Microchip/MPLABX/v6.00/mplab_platform/platform/../mplab_ide/modules/../../dat/en_msgs.txt" ${DISTDIR}/LiveUpdate_Switcher.X.${IMAGE_TYPE}.hex D:/github/microchip/harmonyV2_06/apps/bootloader/LiveUpdate/LiveUpdate_App/firmware/LiveUpdate_App.X/dist/pic32mz_curiosity_v2_udp_led3/production/LiveUpdate_App.X.production.hex -odist/${CND_CONF}/production/LiveUpdate_Switcher.X.production.unified.hex

endif


# Subprojects
.build-subprojects:
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
	cd D:/github/microchip/harmonyV2_06/apps/bootloader/LiveUpdate/LiveUpdate_App/firmware/LiveUpdate_App.X && ${MAKE}  -f Makefile CONF=pic32mz_curiosity_v2_udp_led3 TYPE_IMAGE=DEBUG_RUN
else
	cd D:/github/microchip/harmonyV2_06/apps/bootloader/LiveUpdate/LiveUpdate_App/firmware/LiveUpdate_App.X && ${MAKE}  -f Makefile CONF=pic32mz_curiosity_v2_udp_led3
endif


# Subprojects
.clean-subprojects:
	cd D:/github/microchip/harmonyV2_06/apps/bootloader/LiveUpdate/LiveUpdate_App/firmware/LiveUpdate_App.X && rm -rf "build/pic32mz_curiosity_v2_udp_led3" "dist/pic32mz_curiosity_v2_udp_led3"

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
