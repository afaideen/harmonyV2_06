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
${OBJECTDIR}/_ext/218585956/sys_devcon_cache_pic32mz.o: ../src/system_config/udp_pic32mz_ef_curiosity_v2/framework/system/devcon/src/sys_devcon_cache_pic32mz.S  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/fc4908f0858bedb4b09d41ce720efbb16994fa33 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/218585956" 
	@${RM} ${OBJECTDIR}/_ext/218585956/sys_devcon_cache_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/218585956/sys_devcon_cache_pic32mz.o 
	@${RM} ${OBJECTDIR}/_ext/218585956/sys_devcon_cache_pic32mz.o.ok ${OBJECTDIR}/_ext/218585956/sys_devcon_cache_pic32mz.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/218585956/sys_devcon_cache_pic32mz.o.d"  -o ${OBJECTDIR}/_ext/218585956/sys_devcon_cache_pic32mz.o ../src/system_config/udp_pic32mz_ef_curiosity_v2/framework/system/devcon/src/sys_devcon_cache_pic32mz.S  -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/218585956/sys_devcon_cache_pic32mz.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/218585956/sys_devcon_cache_pic32mz.o.d" "${OBJECTDIR}/_ext/218585956/sys_devcon_cache_pic32mz.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o: ../../../../../../framework/tcpip/src/tcpip_helper_c32.S  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/c25e9ecb226b38a6a8d0f7016613f5503ca9c195 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o.ok ${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o.d"  -o ${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o ../../../../../../framework/tcpip/src/tcpip_helper_c32.S  -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o.d" "${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/218585956/sys_devcon_cache_pic32mz.o: ../src/system_config/udp_pic32mz_ef_curiosity_v2/framework/system/devcon/src/sys_devcon_cache_pic32mz.S  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/60bcdb1f150466678c1250c91184888264a5fa3d .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/218585956" 
	@${RM} ${OBJECTDIR}/_ext/218585956/sys_devcon_cache_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/218585956/sys_devcon_cache_pic32mz.o 
	@${RM} ${OBJECTDIR}/_ext/218585956/sys_devcon_cache_pic32mz.o.ok ${OBJECTDIR}/_ext/218585956/sys_devcon_cache_pic32mz.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/218585956/sys_devcon_cache_pic32mz.o.d"  -o ${OBJECTDIR}/_ext/218585956/sys_devcon_cache_pic32mz.o ../src/system_config/udp_pic32mz_ef_curiosity_v2/framework/system/devcon/src/sys_devcon_cache_pic32mz.S  -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/218585956/sys_devcon_cache_pic32mz.o.asm.d",--gdwarf-2 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/218585956/sys_devcon_cache_pic32mz.o.d" "${OBJECTDIR}/_ext/218585956/sys_devcon_cache_pic32mz.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o: ../../../../../../framework/tcpip/src/tcpip_helper_c32.S  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/61bd459e9ff70e2e50bf0e4d429c776a40598a0 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
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
${OBJECTDIR}/_ext/80646058/bsp.o: ../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp/bsp.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/3bdd3c37b357c56f0b02fc43a465f7b318d9cb8f .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/80646058" 
	@${RM} ${OBJECTDIR}/_ext/80646058/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/80646058/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/80646058/bsp.o.d" -o ${OBJECTDIR}/_ext/80646058/bsp.o ../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp/bsp.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1559072963/sys_clk_pic32mz.o: ../src/system_config/udp_pic32mz_ef_curiosity_v2/framework/system/clk/src/sys_clk_pic32mz.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/72f78c1ec36822527a5231dbc650530e1aed7891 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1559072963" 
	@${RM} ${OBJECTDIR}/_ext/1559072963/sys_clk_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/1559072963/sys_clk_pic32mz.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1559072963/sys_clk_pic32mz.o.d" -o ${OBJECTDIR}/_ext/1559072963/sys_clk_pic32mz.o ../src/system_config/udp_pic32mz_ef_curiosity_v2/framework/system/clk/src/sys_clk_pic32mz.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/218585956/sys_devcon.o: ../src/system_config/udp_pic32mz_ef_curiosity_v2/framework/system/devcon/src/sys_devcon.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/ac388d2405a801b8b6102ce2bfbc1192e23e2004 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/218585956" 
	@${RM} ${OBJECTDIR}/_ext/218585956/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/218585956/sys_devcon.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/218585956/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/218585956/sys_devcon.o ../src/system_config/udp_pic32mz_ef_curiosity_v2/framework/system/devcon/src/sys_devcon.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/218585956/sys_devcon_pic32mz.o: ../src/system_config/udp_pic32mz_ef_curiosity_v2/framework/system/devcon/src/sys_devcon_pic32mz.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/c19bc1a08926ad2705376ff8c353afdb4dddb8f9 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/218585956" 
	@${RM} ${OBJECTDIR}/_ext/218585956/sys_devcon_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/218585956/sys_devcon_pic32mz.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/218585956/sys_devcon_pic32mz.o.d" -o ${OBJECTDIR}/_ext/218585956/sys_devcon_pic32mz.o ../src/system_config/udp_pic32mz_ef_curiosity_v2/framework/system/devcon/src/sys_devcon_pic32mz.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/818113363/sys_ports_static.o: ../src/system_config/udp_pic32mz_ef_curiosity_v2/framework/system/ports/src/sys_ports_static.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/9becaabb543a7c6dd2c0f653a71562209fc7a722 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/818113363" 
	@${RM} ${OBJECTDIR}/_ext/818113363/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/818113363/sys_ports_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/818113363/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/818113363/sys_ports_static.o ../src/system_config/udp_pic32mz_ef_curiosity_v2/framework/system/ports/src/sys_ports_static.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/72700778/sys_reset.o: ../src/system_config/udp_pic32mz_ef_curiosity_v2/framework/system/reset/src/sys_reset.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/4f4e3df3d0a47a6f5fc8f1af79138aa857ec6fb5 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/72700778" 
	@${RM} ${OBJECTDIR}/_ext/72700778/sys_reset.o.d 
	@${RM} ${OBJECTDIR}/_ext/72700778/sys_reset.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/72700778/sys_reset.o.d" -o ${OBJECTDIR}/_ext/72700778/sys_reset.o ../src/system_config/udp_pic32mz_ef_curiosity_v2/framework/system/reset/src/sys_reset.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/794083578/system_init.o: ../src/system_config/udp_pic32mz_ef_curiosity_v2/system_init.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/150d4fd9c4e10210fcccb484b720dd8af59a357e .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/794083578" 
	@${RM} ${OBJECTDIR}/_ext/794083578/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/794083578/system_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/794083578/system_init.o.d" -o ${OBJECTDIR}/_ext/794083578/system_init.o ../src/system_config/udp_pic32mz_ef_curiosity_v2/system_init.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/794083578/system_interrupt.o: ../src/system_config/udp_pic32mz_ef_curiosity_v2/system_interrupt.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/b43abbfd3a839b8e155c42f2166d4be6809e411c .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/794083578" 
	@${RM} ${OBJECTDIR}/_ext/794083578/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/794083578/system_interrupt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/794083578/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/794083578/system_interrupt.o ../src/system_config/udp_pic32mz_ef_curiosity_v2/system_interrupt.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/794083578/system_exceptions.o: ../src/system_config/udp_pic32mz_ef_curiosity_v2/system_exceptions.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/3d7dd189511adb6286449791f77006861a0e8656 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/794083578" 
	@${RM} ${OBJECTDIR}/_ext/794083578/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/794083578/system_exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/794083578/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/794083578/system_exceptions.o ../src/system_config/udp_pic32mz_ef_curiosity_v2/system_exceptions.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/794083578/system_tasks.o: ../src/system_config/udp_pic32mz_ef_curiosity_v2/system_tasks.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/e3940304b26844d55d8fc72f3080cfdeffbc071e .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/794083578" 
	@${RM} ${OBJECTDIR}/_ext/794083578/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/794083578/system_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/794083578/system_tasks.o.d" -o ${OBJECTDIR}/_ext/794083578/system_tasks.o ../src/system_config/udp_pic32mz_ef_curiosity_v2/system_tasks.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/5dfc165157a75a7b422064e13dc42cb88e4a6120 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/4527c0a41df8c93829bc9381ee59d670f029e203 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/682638542/datastream.o: ../../../../../../framework/bootloader/src/datastream/datastream.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/be7b0dfa3919115705313359c5a41f106549d908 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/682638542" 
	@${RM} ${OBJECTDIR}/_ext/682638542/datastream.o.d 
	@${RM} ${OBJECTDIR}/_ext/682638542/datastream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/682638542/datastream.o.d" -o ${OBJECTDIR}/_ext/682638542/datastream.o ../../../../../../framework/bootloader/src/datastream/datastream.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/682638542/datastream_udp.o: ../../../../../../framework/bootloader/src/datastream/datastream_udp.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/fed1d9c6c090af46d6db912bc73ed186fdfd6916 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/682638542" 
	@${RM} ${OBJECTDIR}/_ext/682638542/datastream_udp.o.d 
	@${RM} ${OBJECTDIR}/_ext/682638542/datastream_udp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/682638542/datastream_udp.o.d" -o ${OBJECTDIR}/_ext/682638542/datastream_udp.o ../../../../../../framework/bootloader/src/datastream/datastream_udp.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854679915/bootloader.o: ../../../../../../framework/bootloader/src/bootloader.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/5fec54ef511554af6823de4852e19400574f0aa9 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1854679915" 
	@${RM} ${OBJECTDIR}/_ext/1854679915/bootloader.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854679915/bootloader.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1854679915/bootloader.o.d" -o ${OBJECTDIR}/_ext/1854679915/bootloader.o ../../../../../../framework/bootloader/src/bootloader.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854679915/nvm.o: ../../../../../../framework/bootloader/src/nvm.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/ceb1aefeb81ef4e20df8cf94a5d1e34f758f93ea .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1854679915" 
	@${RM} ${OBJECTDIR}/_ext/1854679915/nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854679915/nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1854679915/nvm.o.d" -o ${OBJECTDIR}/_ext/1854679915/nvm.o ../../../../../../framework/bootloader/src/nvm.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1764881201/drv_ethmac.o: ../../../../../../framework/driver/ethmac/src/dynamic/drv_ethmac.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/5cb47987021f40a32fca49d292d87a7e979c2f2f .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1764881201" 
	@${RM} ${OBJECTDIR}/_ext/1764881201/drv_ethmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1764881201/drv_ethmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1764881201/drv_ethmac.o.d" -o ${OBJECTDIR}/_ext/1764881201/drv_ethmac.o ../../../../../../framework/driver/ethmac/src/dynamic/drv_ethmac.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1764881201/drv_ethmac_lib.o: ../../../../../../framework/driver/ethmac/src/dynamic/drv_ethmac_lib.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/5bca2f1fc692cc3474cc5f7406f7a55d1fab9f81 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1764881201" 
	@${RM} ${OBJECTDIR}/_ext/1764881201/drv_ethmac_lib.o.d 
	@${RM} ${OBJECTDIR}/_ext/1764881201/drv_ethmac_lib.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1764881201/drv_ethmac_lib.o.d" -o ${OBJECTDIR}/_ext/1764881201/drv_ethmac_lib.o ../../../../../../framework/driver/ethmac/src/dynamic/drv_ethmac_lib.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/588727395/drv_ethphy.o: ../../../../../../framework/driver/ethphy/src/dynamic/drv_ethphy.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/c320e28aa650771478075d6e3f296d816a75a697 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/588727395" 
	@${RM} ${OBJECTDIR}/_ext/588727395/drv_ethphy.o.d 
	@${RM} ${OBJECTDIR}/_ext/588727395/drv_ethphy.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/588727395/drv_ethphy.o.d" -o ${OBJECTDIR}/_ext/588727395/drv_ethphy.o ../../../../../../framework/driver/ethphy/src/dynamic/drv_ethphy.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/588727395/drv_extphy_ksz8061.o: ../../../../../../framework/driver/ethphy/src/dynamic/drv_extphy_ksz8061.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/42bb3dd06467aab095ac1eccf77c1a6c74159d73 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/588727395" 
	@${RM} ${OBJECTDIR}/_ext/588727395/drv_extphy_ksz8061.o.d 
	@${RM} ${OBJECTDIR}/_ext/588727395/drv_extphy_ksz8061.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/588727395/drv_extphy_ksz8061.o.d" -o ${OBJECTDIR}/_ext/588727395/drv_extphy_ksz8061.o ../../../../../../framework/driver/ethphy/src/dynamic/drv_extphy_ksz8061.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/572279899/drv_miim.o: ../../../../../../framework/driver/miim/src/dynamic/drv_miim.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/474be70a3cf3dbb27cd90cc599db7d643ebb488b .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/572279899" 
	@${RM} ${OBJECTDIR}/_ext/572279899/drv_miim.o.d 
	@${RM} ${OBJECTDIR}/_ext/572279899/drv_miim.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/572279899/drv_miim.o.d" -o ${OBJECTDIR}/_ext/572279899/drv_miim.o ../../../../../../framework/driver/miim/src/dynamic/drv_miim.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1152366776/drv_tmr.o: ../../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/b9031da2cb58a57f472ad55e58a98d9795bbc8de .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1152366776" 
	@${RM} ${OBJECTDIR}/_ext/1152366776/drv_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1152366776/drv_tmr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1152366776/drv_tmr.o.d" -o ${OBJECTDIR}/_ext/1152366776/drv_tmr.o ../../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/711155467/sys_int_pic32.o: ../../../../../../framework/system/int/src/sys_int_pic32.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/d74af6d5cb36e1be144bfee7efafb0c0ffdc662b .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/711155467" 
	@${RM} ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/711155467/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o ../../../../../../framework/system/int/src/sys_int_pic32.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/899838009/sys_random.o: ../../../../../../framework/system/random/src/sys_random.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/96c00d4b327f54744de0d56e81aefcc2beabd4cc .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/899838009" 
	@${RM} ${OBJECTDIR}/_ext/899838009/sys_random.o.d 
	@${RM} ${OBJECTDIR}/_ext/899838009/sys_random.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/899838009/sys_random.o.d" -o ${OBJECTDIR}/_ext/899838009/sys_random.o ../../../../../../framework/system/random/src/sys_random.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/430974239/sys_tmr.o: ../../../../../../framework/system/tmr/src/sys_tmr.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/7568b7e0418ba0829137505465e7c99451eb223 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/430974239" 
	@${RM} ${OBJECTDIR}/_ext/430974239/sys_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/430974239/sys_tmr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/430974239/sys_tmr.o.d" -o ${OBJECTDIR}/_ext/430974239/sys_tmr.o ../../../../../../framework/system/tmr/src/sys_tmr.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/593738990/helpers.o: ../../../../../../framework/tcpip/src/common/helpers.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/77722f3d00de5e26f6d8051089316b0523230bf2 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/593738990" 
	@${RM} ${OBJECTDIR}/_ext/593738990/helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/593738990/helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/593738990/helpers.o.d" -o ${OBJECTDIR}/_ext/593738990/helpers.o ../../../../../../framework/tcpip/src/common/helpers.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/ipv4.o: ../../../../../../framework/tcpip/src/ipv4.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/4ef72b7fe61e463ffd9677840872dfc59fac9e4e .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/ipv4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/ipv4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/ipv4.o.d" -o ${OBJECTDIR}/_ext/1833714580/ipv4.o ../../../../../../framework/tcpip/src/ipv4.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/udp.o: ../../../../../../framework/tcpip/src/udp.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/5781613bee9e530556d2f5e11c90d30de2df3f59 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/udp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/udp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/udp.o.d" -o ${OBJECTDIR}/_ext/1833714580/udp.o ../../../../../../framework/tcpip/src/udp.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/tcpip_heap_alloc.o: ../../../../../../framework/tcpip/src/tcpip_heap_alloc.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/f04deec7fe4fdd3b6c63f6581a73df68916a4cdd .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_heap_alloc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_heap_alloc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/tcpip_heap_alloc.o.d" -o ${OBJECTDIR}/_ext/1833714580/tcpip_heap_alloc.o ../../../../../../framework/tcpip/src/tcpip_heap_alloc.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/tcpip_heap_internal.o: ../../../../../../framework/tcpip/src/tcpip_heap_internal.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/560e41759c2b8d67b31b452e185196d0266ea6f8 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_heap_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_heap_internal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/tcpip_heap_internal.o.d" -o ${OBJECTDIR}/_ext/1833714580/tcpip_heap_internal.o ../../../../../../framework/tcpip/src/tcpip_heap_internal.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/arp.o: ../../../../../../framework/tcpip/src/arp.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/74f75f399415e8f883d51d5d0c50e005cf1c25e3 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/arp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/arp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/arp.o.d" -o ${OBJECTDIR}/_ext/1833714580/arp.o ../../../../../../framework/tcpip/src/arp.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/dhcp.o: ../../../../../../framework/tcpip/src/dhcp.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/dc69c798cec8f3561b0bc6ac2c4de3d4944040be .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/dhcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/dhcp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/dhcp.o.d" -o ${OBJECTDIR}/_ext/1833714580/dhcp.o ../../../../../../framework/tcpip/src/dhcp.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/dns.o: ../../../../../../framework/tcpip/src/dns.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/b1b6bdcfab039799695af96e41a192d6a0d0dd41 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/dns.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/dns.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/dns.o.d" -o ${OBJECTDIR}/_ext/1833714580/dns.o ../../../../../../framework/tcpip/src/dns.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/hash_fnv.o: ../../../../../../framework/tcpip/src/hash_fnv.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/36f3163e597f8a1686346a3fa753385e18da81cc .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/hash_fnv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/hash_fnv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/hash_fnv.o.d" -o ${OBJECTDIR}/_ext/1833714580/hash_fnv.o ../../../../../../framework/tcpip/src/hash_fnv.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/oahash.o: ../../../../../../framework/tcpip/src/oahash.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/fc7b9d4e7dde26da4028e1bd56a174af83900519 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/oahash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/oahash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/oahash.o.d" -o ${OBJECTDIR}/_ext/1833714580/oahash.o ../../../../../../framework/tcpip/src/oahash.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/tcpip_helpers.o: ../../../../../../framework/tcpip/src/tcpip_helpers.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/577cc2a6d9647aef836a1d8b748fa1725e235db6 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/tcpip_helpers.o.d" -o ${OBJECTDIR}/_ext/1833714580/tcpip_helpers.o ../../../../../../framework/tcpip/src/tcpip_helpers.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/tcpip_manager.o: ../../../../../../framework/tcpip/src/tcpip_manager.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/be33e02666edc9ff66d8a4a637d8fdea1b430f14 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/tcpip_manager.o.d" -o ${OBJECTDIR}/_ext/1833714580/tcpip_manager.o ../../../../../../framework/tcpip/src/tcpip_manager.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/tcpip_notify.o: ../../../../../../framework/tcpip/src/tcpip_notify.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/ee659c6b9af593d512a764c728d0517342dc34d1 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_notify.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_notify.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/tcpip_notify.o.d" -o ${OBJECTDIR}/_ext/1833714580/tcpip_notify.o ../../../../../../framework/tcpip/src/tcpip_notify.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/tcpip_packet.o: ../../../../../../framework/tcpip/src/tcpip_packet.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/fac63780ea2d48b5d3b211aa99dc7cfaacedfd74 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_packet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_packet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/tcpip_packet.o.d" -o ${OBJECTDIR}/_ext/1833714580/tcpip_packet.o ../../../../../../framework/tcpip/src/tcpip_packet.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/80646058/bsp.o: ../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp/bsp.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/c67e6e84afee10732e4fbbf08a2b3899b463d282 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/80646058" 
	@${RM} ${OBJECTDIR}/_ext/80646058/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/80646058/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/80646058/bsp.o.d" -o ${OBJECTDIR}/_ext/80646058/bsp.o ../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp/bsp.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1559072963/sys_clk_pic32mz.o: ../src/system_config/udp_pic32mz_ef_curiosity_v2/framework/system/clk/src/sys_clk_pic32mz.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/ee93ecc13d43efb5d2cafee11450531cde81000c .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1559072963" 
	@${RM} ${OBJECTDIR}/_ext/1559072963/sys_clk_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/1559072963/sys_clk_pic32mz.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1559072963/sys_clk_pic32mz.o.d" -o ${OBJECTDIR}/_ext/1559072963/sys_clk_pic32mz.o ../src/system_config/udp_pic32mz_ef_curiosity_v2/framework/system/clk/src/sys_clk_pic32mz.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/218585956/sys_devcon.o: ../src/system_config/udp_pic32mz_ef_curiosity_v2/framework/system/devcon/src/sys_devcon.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/ec7249bad7b44038c05915d80cde32854147de34 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/218585956" 
	@${RM} ${OBJECTDIR}/_ext/218585956/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/218585956/sys_devcon.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/218585956/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/218585956/sys_devcon.o ../src/system_config/udp_pic32mz_ef_curiosity_v2/framework/system/devcon/src/sys_devcon.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/218585956/sys_devcon_pic32mz.o: ../src/system_config/udp_pic32mz_ef_curiosity_v2/framework/system/devcon/src/sys_devcon_pic32mz.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/64fec7d4443f8445ce620887c51a9f71b36bd09a .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/218585956" 
	@${RM} ${OBJECTDIR}/_ext/218585956/sys_devcon_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/218585956/sys_devcon_pic32mz.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/218585956/sys_devcon_pic32mz.o.d" -o ${OBJECTDIR}/_ext/218585956/sys_devcon_pic32mz.o ../src/system_config/udp_pic32mz_ef_curiosity_v2/framework/system/devcon/src/sys_devcon_pic32mz.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/818113363/sys_ports_static.o: ../src/system_config/udp_pic32mz_ef_curiosity_v2/framework/system/ports/src/sys_ports_static.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/14acff41aad1c0bff364653976b59f12352aa2ec .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/818113363" 
	@${RM} ${OBJECTDIR}/_ext/818113363/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/818113363/sys_ports_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/818113363/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/818113363/sys_ports_static.o ../src/system_config/udp_pic32mz_ef_curiosity_v2/framework/system/ports/src/sys_ports_static.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/72700778/sys_reset.o: ../src/system_config/udp_pic32mz_ef_curiosity_v2/framework/system/reset/src/sys_reset.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/959d1fcb818a2b32b094cd303136d7d5c017bbeb .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/72700778" 
	@${RM} ${OBJECTDIR}/_ext/72700778/sys_reset.o.d 
	@${RM} ${OBJECTDIR}/_ext/72700778/sys_reset.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/72700778/sys_reset.o.d" -o ${OBJECTDIR}/_ext/72700778/sys_reset.o ../src/system_config/udp_pic32mz_ef_curiosity_v2/framework/system/reset/src/sys_reset.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/794083578/system_init.o: ../src/system_config/udp_pic32mz_ef_curiosity_v2/system_init.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/c21f4525872431fa21eb4ae5b386387217f30808 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/794083578" 
	@${RM} ${OBJECTDIR}/_ext/794083578/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/794083578/system_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/794083578/system_init.o.d" -o ${OBJECTDIR}/_ext/794083578/system_init.o ../src/system_config/udp_pic32mz_ef_curiosity_v2/system_init.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/794083578/system_interrupt.o: ../src/system_config/udp_pic32mz_ef_curiosity_v2/system_interrupt.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/7b6c5ddd05205fb667f8cf15208d417b7b58e6d5 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/794083578" 
	@${RM} ${OBJECTDIR}/_ext/794083578/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/794083578/system_interrupt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/794083578/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/794083578/system_interrupt.o ../src/system_config/udp_pic32mz_ef_curiosity_v2/system_interrupt.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/794083578/system_exceptions.o: ../src/system_config/udp_pic32mz_ef_curiosity_v2/system_exceptions.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/72502476f6b6d01056de7527bca72c3d30e838e2 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/794083578" 
	@${RM} ${OBJECTDIR}/_ext/794083578/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/794083578/system_exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/794083578/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/794083578/system_exceptions.o ../src/system_config/udp_pic32mz_ef_curiosity_v2/system_exceptions.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/794083578/system_tasks.o: ../src/system_config/udp_pic32mz_ef_curiosity_v2/system_tasks.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/f15014f87dc5619cb8380513b3e533ef6edc5163 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/794083578" 
	@${RM} ${OBJECTDIR}/_ext/794083578/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/794083578/system_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/794083578/system_tasks.o.d" -o ${OBJECTDIR}/_ext/794083578/system_tasks.o ../src/system_config/udp_pic32mz_ef_curiosity_v2/system_tasks.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/71ee55575f26707d7bfba70548d851c7d43b2999 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/79f73514f37e2c0fc51c21efb2ec2077fdd798bc .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/682638542/datastream.o: ../../../../../../framework/bootloader/src/datastream/datastream.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/b9caf52f5cab36e179a2ae25f59941eaef91c785 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/682638542" 
	@${RM} ${OBJECTDIR}/_ext/682638542/datastream.o.d 
	@${RM} ${OBJECTDIR}/_ext/682638542/datastream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/682638542/datastream.o.d" -o ${OBJECTDIR}/_ext/682638542/datastream.o ../../../../../../framework/bootloader/src/datastream/datastream.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/682638542/datastream_udp.o: ../../../../../../framework/bootloader/src/datastream/datastream_udp.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/79b330332ec9ad985e730af6d441d3e356e4c824 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/682638542" 
	@${RM} ${OBJECTDIR}/_ext/682638542/datastream_udp.o.d 
	@${RM} ${OBJECTDIR}/_ext/682638542/datastream_udp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/682638542/datastream_udp.o.d" -o ${OBJECTDIR}/_ext/682638542/datastream_udp.o ../../../../../../framework/bootloader/src/datastream/datastream_udp.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854679915/bootloader.o: ../../../../../../framework/bootloader/src/bootloader.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/7a9cb270fb4a57b973e43cae98ee062b71662462 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1854679915" 
	@${RM} ${OBJECTDIR}/_ext/1854679915/bootloader.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854679915/bootloader.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1854679915/bootloader.o.d" -o ${OBJECTDIR}/_ext/1854679915/bootloader.o ../../../../../../framework/bootloader/src/bootloader.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854679915/nvm.o: ../../../../../../framework/bootloader/src/nvm.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/54eaff4006e452816072b6da8e40102dcc8aaa9d .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1854679915" 
	@${RM} ${OBJECTDIR}/_ext/1854679915/nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854679915/nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1854679915/nvm.o.d" -o ${OBJECTDIR}/_ext/1854679915/nvm.o ../../../../../../framework/bootloader/src/nvm.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1764881201/drv_ethmac.o: ../../../../../../framework/driver/ethmac/src/dynamic/drv_ethmac.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/9b56bd02fd3610e372e183fb70e390d89df836be .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1764881201" 
	@${RM} ${OBJECTDIR}/_ext/1764881201/drv_ethmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1764881201/drv_ethmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1764881201/drv_ethmac.o.d" -o ${OBJECTDIR}/_ext/1764881201/drv_ethmac.o ../../../../../../framework/driver/ethmac/src/dynamic/drv_ethmac.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1764881201/drv_ethmac_lib.o: ../../../../../../framework/driver/ethmac/src/dynamic/drv_ethmac_lib.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/d5964fc3aef31bd6715df6d77294c835a7d9b44c .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1764881201" 
	@${RM} ${OBJECTDIR}/_ext/1764881201/drv_ethmac_lib.o.d 
	@${RM} ${OBJECTDIR}/_ext/1764881201/drv_ethmac_lib.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1764881201/drv_ethmac_lib.o.d" -o ${OBJECTDIR}/_ext/1764881201/drv_ethmac_lib.o ../../../../../../framework/driver/ethmac/src/dynamic/drv_ethmac_lib.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/588727395/drv_ethphy.o: ../../../../../../framework/driver/ethphy/src/dynamic/drv_ethphy.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/a2b6d5979a831178e0bb7fd3c916671c3d405fee .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/588727395" 
	@${RM} ${OBJECTDIR}/_ext/588727395/drv_ethphy.o.d 
	@${RM} ${OBJECTDIR}/_ext/588727395/drv_ethphy.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/588727395/drv_ethphy.o.d" -o ${OBJECTDIR}/_ext/588727395/drv_ethphy.o ../../../../../../framework/driver/ethphy/src/dynamic/drv_ethphy.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/588727395/drv_extphy_ksz8061.o: ../../../../../../framework/driver/ethphy/src/dynamic/drv_extphy_ksz8061.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/ce0e8b17f25f50375b7a3d90bad879e69c9e6445 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/588727395" 
	@${RM} ${OBJECTDIR}/_ext/588727395/drv_extphy_ksz8061.o.d 
	@${RM} ${OBJECTDIR}/_ext/588727395/drv_extphy_ksz8061.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/588727395/drv_extphy_ksz8061.o.d" -o ${OBJECTDIR}/_ext/588727395/drv_extphy_ksz8061.o ../../../../../../framework/driver/ethphy/src/dynamic/drv_extphy_ksz8061.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/572279899/drv_miim.o: ../../../../../../framework/driver/miim/src/dynamic/drv_miim.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/42d2eae9c3391e2b7c098c0651e4b6bbe4299701 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/572279899" 
	@${RM} ${OBJECTDIR}/_ext/572279899/drv_miim.o.d 
	@${RM} ${OBJECTDIR}/_ext/572279899/drv_miim.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/572279899/drv_miim.o.d" -o ${OBJECTDIR}/_ext/572279899/drv_miim.o ../../../../../../framework/driver/miim/src/dynamic/drv_miim.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1152366776/drv_tmr.o: ../../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/672a71e6307476484378042eb25695434720a1b1 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1152366776" 
	@${RM} ${OBJECTDIR}/_ext/1152366776/drv_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1152366776/drv_tmr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1152366776/drv_tmr.o.d" -o ${OBJECTDIR}/_ext/1152366776/drv_tmr.o ../../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/711155467/sys_int_pic32.o: ../../../../../../framework/system/int/src/sys_int_pic32.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/49f3561d4d21ae7a5cbd25a9a5717c3516ccfe72 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/711155467" 
	@${RM} ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/711155467/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o ../../../../../../framework/system/int/src/sys_int_pic32.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/899838009/sys_random.o: ../../../../../../framework/system/random/src/sys_random.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/c7ede8f0c0a03e5d8bcba1464d852b312e49a1d1 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/899838009" 
	@${RM} ${OBJECTDIR}/_ext/899838009/sys_random.o.d 
	@${RM} ${OBJECTDIR}/_ext/899838009/sys_random.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/899838009/sys_random.o.d" -o ${OBJECTDIR}/_ext/899838009/sys_random.o ../../../../../../framework/system/random/src/sys_random.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/430974239/sys_tmr.o: ../../../../../../framework/system/tmr/src/sys_tmr.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/faa86a24bba3011afc02d55559a44da9b565c230 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/430974239" 
	@${RM} ${OBJECTDIR}/_ext/430974239/sys_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/430974239/sys_tmr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/430974239/sys_tmr.o.d" -o ${OBJECTDIR}/_ext/430974239/sys_tmr.o ../../../../../../framework/system/tmr/src/sys_tmr.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/593738990/helpers.o: ../../../../../../framework/tcpip/src/common/helpers.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/1f425807179a3bd467ce712d091cfd1cf81ba167 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/593738990" 
	@${RM} ${OBJECTDIR}/_ext/593738990/helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/593738990/helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/593738990/helpers.o.d" -o ${OBJECTDIR}/_ext/593738990/helpers.o ../../../../../../framework/tcpip/src/common/helpers.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/ipv4.o: ../../../../../../framework/tcpip/src/ipv4.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/bcd538e51c8bbd4069b015ccabcd53c21499df11 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/ipv4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/ipv4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/ipv4.o.d" -o ${OBJECTDIR}/_ext/1833714580/ipv4.o ../../../../../../framework/tcpip/src/ipv4.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/udp.o: ../../../../../../framework/tcpip/src/udp.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/6320eb344d31f0ef1ff0e3338f461a349c953f61 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/udp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/udp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/udp.o.d" -o ${OBJECTDIR}/_ext/1833714580/udp.o ../../../../../../framework/tcpip/src/udp.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/tcpip_heap_alloc.o: ../../../../../../framework/tcpip/src/tcpip_heap_alloc.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/99e15d80b569b3ac6a586251ca9ea634a2932020 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_heap_alloc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_heap_alloc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/tcpip_heap_alloc.o.d" -o ${OBJECTDIR}/_ext/1833714580/tcpip_heap_alloc.o ../../../../../../framework/tcpip/src/tcpip_heap_alloc.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/tcpip_heap_internal.o: ../../../../../../framework/tcpip/src/tcpip_heap_internal.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/f5ac98998f323fb25ac507ec483935789b908f22 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_heap_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_heap_internal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/tcpip_heap_internal.o.d" -o ${OBJECTDIR}/_ext/1833714580/tcpip_heap_internal.o ../../../../../../framework/tcpip/src/tcpip_heap_internal.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/arp.o: ../../../../../../framework/tcpip/src/arp.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/b6401122b166a2acc93998a1a0488ec81ec6fe7e .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/arp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/arp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/arp.o.d" -o ${OBJECTDIR}/_ext/1833714580/arp.o ../../../../../../framework/tcpip/src/arp.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/dhcp.o: ../../../../../../framework/tcpip/src/dhcp.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/2be75a377920de7c4d171ab7ac31cacf65d765be .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/dhcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/dhcp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/dhcp.o.d" -o ${OBJECTDIR}/_ext/1833714580/dhcp.o ../../../../../../framework/tcpip/src/dhcp.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/dns.o: ../../../../../../framework/tcpip/src/dns.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/98a3523b775c53b3b053eed4801d2fc73db576ce .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/dns.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/dns.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/dns.o.d" -o ${OBJECTDIR}/_ext/1833714580/dns.o ../../../../../../framework/tcpip/src/dns.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/hash_fnv.o: ../../../../../../framework/tcpip/src/hash_fnv.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/41c2ba51960eb535d9b970b45119783fe395c45d .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/hash_fnv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/hash_fnv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/hash_fnv.o.d" -o ${OBJECTDIR}/_ext/1833714580/hash_fnv.o ../../../../../../framework/tcpip/src/hash_fnv.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/oahash.o: ../../../../../../framework/tcpip/src/oahash.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/6f4a55ab8b9fe8e6e8b25fd80fbe849756fe28d7 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/oahash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/oahash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/oahash.o.d" -o ${OBJECTDIR}/_ext/1833714580/oahash.o ../../../../../../framework/tcpip/src/oahash.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/tcpip_helpers.o: ../../../../../../framework/tcpip/src/tcpip_helpers.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/5885d2b73f5971f15e7e4e310185e3dbcc65d338 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/tcpip_helpers.o.d" -o ${OBJECTDIR}/_ext/1833714580/tcpip_helpers.o ../../../../../../framework/tcpip/src/tcpip_helpers.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/tcpip_manager.o: ../../../../../../framework/tcpip/src/tcpip_manager.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/e05be208153ced01206b40bfba59beeeb9b7cd30 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/tcpip_manager.o.d" -o ${OBJECTDIR}/_ext/1833714580/tcpip_manager.o ../../../../../../framework/tcpip/src/tcpip_manager.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/tcpip_notify.o: ../../../../../../framework/tcpip/src/tcpip_notify.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/ec292cb70710a8c50b991535e2de214a7c03e4a5 .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_notify.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_notify.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2" -I"../src/udp_pic32mz_ef_curiosity_v2" -I"../../../../../../framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/framework" -I"../src/system_config/udp_pic32mz_ef_curiosity_v2/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/tcpip_notify.o.d" -o ${OBJECTDIR}/_ext/1833714580/tcpip_notify.o ../../../../../../framework/tcpip/src/tcpip_notify.c    -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/tcpip_packet.o: ../../../../../../framework/tcpip/src/tcpip_packet.c  .generated_files/flags/udp_pic32mz_ef_curiosity_v2/331f9579932ff6600f5f65c443dcd00736fd6c2c .generated_files/flags/udp_pic32mz_ef_curiosity_v2/52a56d43e5361242acb1485a17d792daa15724df
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
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/LiveUpdate_Switcher.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\..\..\..\..\..\bin\framework\peripheral\PIC32MZ2048EFM144_peripherals.a      -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x37F   -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=69960,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/LiveUpdate_Switcher.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../../../bin/framework/peripheral/PIC32MZ2048EFM144_peripherals.a ../src/system_config/udp_pic32mz_ef_curiosity_v2/btl_mz.ld ../../../LiveUpdate_App/firmware/LiveUpdate_App.X/dist/pic32mz_curiosity_v2_udp_led3/production/LiveUpdate_App.X.production.hex
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/LiveUpdate_Switcher.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\..\..\..\..\..\bin\framework\peripheral\PIC32MZ2048EFM144_peripherals.a      -DXPRJ_udp_pic32mz_ef_curiosity_v2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=69960,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/LiveUpdate_Switcher.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
	@echo "Creating unified hex file"
	@"C:/Program Files/Microchip/MPLABX/v6.00/mplab_platform/platform/../mplab_ide/modules/../../bin/hexmate" --edf="C:/Program Files/Microchip/MPLABX/v6.00/mplab_platform/platform/../mplab_ide/modules/../../dat/en_msgs.txt" ${DISTDIR}/LiveUpdate_Switcher.X.${IMAGE_TYPE}.hex ../../../LiveUpdate_App/firmware/LiveUpdate_App.X/dist/pic32mz_curiosity_v2_udp_led3/production/LiveUpdate_App.X.production.hex -odist/${CND_CONF}/production/LiveUpdate_Switcher.X.production.unified.hex

endif


# Subprojects
.build-subprojects:
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
	cd ../../../LiveUpdate_App/firmware/LiveUpdate_App.X && ${MAKE}  -f Makefile CONF=pic32mz_curiosity_v2_udp_led3 TYPE_IMAGE=DEBUG_RUN
else
	cd ../../../LiveUpdate_App/firmware/LiveUpdate_App.X && ${MAKE}  -f Makefile CONF=pic32mz_curiosity_v2_udp_led3
endif


# Subprojects
.clean-subprojects:
	cd ../../../LiveUpdate_App/firmware/LiveUpdate_App.X && rm -rf "build/pic32mz_curiosity_v2_udp_led3" "dist/pic32mz_curiosity_v2_udp_led3"

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
