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
ifeq "$(wildcard nbproject/Makefile-local-pic32mz_ef_sk_udp_led3.mk)" "nbproject/Makefile-local-pic32mz_ef_sk_udp_led3.mk"
include nbproject/Makefile-local-pic32mz_ef_sk_udp_led3.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=pic32mz_ef_sk_udp_led3
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/LiveUpdate_App.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/LiveUpdate_App.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=../src/app.c ../src/main.c D:/Microchip/harmony/v2_06/apps/bootloader/LiveUpdate/LiveUpdate_App/firmware/src/app_helper.c ../../../../../../framework/bootloader/src/datastream/datastream.c ../../../../../../framework/bootloader/src/datastream/datastream_udp.c ../../../../../../framework/bootloader/src/bootloader.c ../../../../../../framework/bootloader/src/nvm.c ../../../../../../framework/driver/ethmac/src/dynamic/drv_ethmac.c ../../../../../../framework/driver/ethmac/src/dynamic/drv_ethmac_lib.c ../../../../../../framework/driver/ethphy/src/dynamic/drv_ethphy.c ../../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c ../../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs.c ../../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs_device.c ../../../../../../framework/system/command/src/sys_command.c ../../../../../../framework/system/console/src/sys_console.c ../../../../../../framework/system/console/src/sys_console_usb_cdc.c ../../../../../../framework/system/int/src/sys_int_pic32.c ../../../../../../framework/system/random/src/sys_random.c ../../../../../../framework/system/tmr/src/sys_tmr.c ../../../../../../framework/tcpip/src/common/helpers.c ../../../../../../framework/tcpip/src/ipv4.c ../../../../../../framework/tcpip/src/udp.c ../../../../../../framework/tcpip/src/tcpip_heap_alloc.c ../../../../../../framework/tcpip/src/tcpip_heap_internal.c ../../../../../../framework/tcpip/src/arp.c ../../../../../../framework/tcpip/src/dhcp.c ../../../../../../framework/tcpip/src/dns.c ../../../../../../framework/tcpip/src/hash_fnv.c ../../../../../../framework/tcpip/src/oahash.c ../../../../../../framework/tcpip/src/tcpip_helpers.c ../../../../../../framework/tcpip/src/tcpip_helper_c32.S ../../../../../../framework/tcpip/src/tcpip_manager.c ../../../../../../framework/tcpip/src/tcpip_notify.c ../../../../../../framework/tcpip/src/tcpip_packet.c ../../../../../../framework/usb/src/dynamic/usb_device.c ../../../../../../framework/usb/src/dynamic/usb_device_cdc.c ../../../../../../framework/usb/src/dynamic/usb_device_cdc_acm.c ../../../../../../framework/driver/ethphy/src/dynamic/drv_extphy_smsc8740.c ../src/system_config/pic32mz_ef_sk_udp_led3/framework/system/clk/src/sys_clk_pic32mz.c ../src/system_config/pic32mz_ef_sk_udp_led3/framework/system/devcon/src/sys_devcon.c ../src/system_config/pic32mz_ef_sk_udp_led3/framework/system/devcon/src/sys_devcon_pic32mz.c ../src/system_config/pic32mz_ef_sk_udp_led3/framework/system/devcon/src/sys_devcon_cache_pic32mz.S ../src/system_config/pic32mz_ef_sk_udp_led3/framework/system/ports/src/sys_ports_static.c ../src/system_config/pic32mz_ef_sk_udp_led3/framework/system/reset/src/sys_reset.c ../src/system_config/pic32mz_ef_sk_udp_led3/bsp/bsp.c ../src/system_config/pic32mz_ef_sk_udp_led3/system_init.c ../src/system_config/pic32mz_ef_sk_udp_led3/system_interrupt.c ../src/system_config/pic32mz_ef_sk_udp_led3/system_exceptions.c ../src/system_config/pic32mz_ef_sk_udp_led3/system_tasks.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1467197364/app_helper.o ${OBJECTDIR}/_ext/682638542/datastream.o ${OBJECTDIR}/_ext/682638542/datastream_udp.o ${OBJECTDIR}/_ext/1854679915/bootloader.o ${OBJECTDIR}/_ext/1854679915/nvm.o ${OBJECTDIR}/_ext/1764881201/drv_ethmac.o ${OBJECTDIR}/_ext/1764881201/drv_ethmac_lib.o ${OBJECTDIR}/_ext/588727395/drv_ethphy.o ${OBJECTDIR}/_ext/1152366776/drv_tmr.o ${OBJECTDIR}/_ext/1698770803/drv_usbhs.o ${OBJECTDIR}/_ext/1698770803/drv_usbhs_device.o ${OBJECTDIR}/_ext/1451350481/sys_command.o ${OBJECTDIR}/_ext/994638301/sys_console.o ${OBJECTDIR}/_ext/994638301/sys_console_usb_cdc.o ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o ${OBJECTDIR}/_ext/899838009/sys_random.o ${OBJECTDIR}/_ext/430974239/sys_tmr.o ${OBJECTDIR}/_ext/593738990/helpers.o ${OBJECTDIR}/_ext/1833714580/ipv4.o ${OBJECTDIR}/_ext/1833714580/udp.o ${OBJECTDIR}/_ext/1833714580/tcpip_heap_alloc.o ${OBJECTDIR}/_ext/1833714580/tcpip_heap_internal.o ${OBJECTDIR}/_ext/1833714580/arp.o ${OBJECTDIR}/_ext/1833714580/dhcp.o ${OBJECTDIR}/_ext/1833714580/dns.o ${OBJECTDIR}/_ext/1833714580/hash_fnv.o ${OBJECTDIR}/_ext/1833714580/oahash.o ${OBJECTDIR}/_ext/1833714580/tcpip_helpers.o ${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o ${OBJECTDIR}/_ext/1833714580/tcpip_manager.o ${OBJECTDIR}/_ext/1833714580/tcpip_notify.o ${OBJECTDIR}/_ext/1833714580/tcpip_packet.o ${OBJECTDIR}/_ext/692885480/usb_device.o ${OBJECTDIR}/_ext/692885480/usb_device_cdc.o ${OBJECTDIR}/_ext/692885480/usb_device_cdc_acm.o ${OBJECTDIR}/_ext/588727395/drv_extphy_smsc8740.o ${OBJECTDIR}/_ext/1527291256/sys_clk_pic32mz.o ${OBJECTDIR}/_ext/1697442161/sys_devcon.o ${OBJECTDIR}/_ext/1697442161/sys_devcon_pic32mz.o ${OBJECTDIR}/_ext/1697442161/sys_devcon_cache_pic32mz.o ${OBJECTDIR}/_ext/340664008/sys_ports_static.o ${OBJECTDIR}/_ext/550150133/sys_reset.o ${OBJECTDIR}/_ext/763640961/bsp.o ${OBJECTDIR}/_ext/2079795023/system_init.o ${OBJECTDIR}/_ext/2079795023/system_interrupt.o ${OBJECTDIR}/_ext/2079795023/system_exceptions.o ${OBJECTDIR}/_ext/2079795023/system_tasks.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1360937237/app.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1467197364/app_helper.o.d ${OBJECTDIR}/_ext/682638542/datastream.o.d ${OBJECTDIR}/_ext/682638542/datastream_udp.o.d ${OBJECTDIR}/_ext/1854679915/bootloader.o.d ${OBJECTDIR}/_ext/1854679915/nvm.o.d ${OBJECTDIR}/_ext/1764881201/drv_ethmac.o.d ${OBJECTDIR}/_ext/1764881201/drv_ethmac_lib.o.d ${OBJECTDIR}/_ext/588727395/drv_ethphy.o.d ${OBJECTDIR}/_ext/1152366776/drv_tmr.o.d ${OBJECTDIR}/_ext/1698770803/drv_usbhs.o.d ${OBJECTDIR}/_ext/1698770803/drv_usbhs_device.o.d ${OBJECTDIR}/_ext/1451350481/sys_command.o.d ${OBJECTDIR}/_ext/994638301/sys_console.o.d ${OBJECTDIR}/_ext/994638301/sys_console_usb_cdc.o.d ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o.d ${OBJECTDIR}/_ext/899838009/sys_random.o.d ${OBJECTDIR}/_ext/430974239/sys_tmr.o.d ${OBJECTDIR}/_ext/593738990/helpers.o.d ${OBJECTDIR}/_ext/1833714580/ipv4.o.d ${OBJECTDIR}/_ext/1833714580/udp.o.d ${OBJECTDIR}/_ext/1833714580/tcpip_heap_alloc.o.d ${OBJECTDIR}/_ext/1833714580/tcpip_heap_internal.o.d ${OBJECTDIR}/_ext/1833714580/arp.o.d ${OBJECTDIR}/_ext/1833714580/dhcp.o.d ${OBJECTDIR}/_ext/1833714580/dns.o.d ${OBJECTDIR}/_ext/1833714580/hash_fnv.o.d ${OBJECTDIR}/_ext/1833714580/oahash.o.d ${OBJECTDIR}/_ext/1833714580/tcpip_helpers.o.d ${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o.d ${OBJECTDIR}/_ext/1833714580/tcpip_manager.o.d ${OBJECTDIR}/_ext/1833714580/tcpip_notify.o.d ${OBJECTDIR}/_ext/1833714580/tcpip_packet.o.d ${OBJECTDIR}/_ext/692885480/usb_device.o.d ${OBJECTDIR}/_ext/692885480/usb_device_cdc.o.d ${OBJECTDIR}/_ext/692885480/usb_device_cdc_acm.o.d ${OBJECTDIR}/_ext/588727395/drv_extphy_smsc8740.o.d ${OBJECTDIR}/_ext/1527291256/sys_clk_pic32mz.o.d ${OBJECTDIR}/_ext/1697442161/sys_devcon.o.d ${OBJECTDIR}/_ext/1697442161/sys_devcon_pic32mz.o.d ${OBJECTDIR}/_ext/1697442161/sys_devcon_cache_pic32mz.o.d ${OBJECTDIR}/_ext/340664008/sys_ports_static.o.d ${OBJECTDIR}/_ext/550150133/sys_reset.o.d ${OBJECTDIR}/_ext/763640961/bsp.o.d ${OBJECTDIR}/_ext/2079795023/system_init.o.d ${OBJECTDIR}/_ext/2079795023/system_interrupt.o.d ${OBJECTDIR}/_ext/2079795023/system_exceptions.o.d ${OBJECTDIR}/_ext/2079795023/system_tasks.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1467197364/app_helper.o ${OBJECTDIR}/_ext/682638542/datastream.o ${OBJECTDIR}/_ext/682638542/datastream_udp.o ${OBJECTDIR}/_ext/1854679915/bootloader.o ${OBJECTDIR}/_ext/1854679915/nvm.o ${OBJECTDIR}/_ext/1764881201/drv_ethmac.o ${OBJECTDIR}/_ext/1764881201/drv_ethmac_lib.o ${OBJECTDIR}/_ext/588727395/drv_ethphy.o ${OBJECTDIR}/_ext/1152366776/drv_tmr.o ${OBJECTDIR}/_ext/1698770803/drv_usbhs.o ${OBJECTDIR}/_ext/1698770803/drv_usbhs_device.o ${OBJECTDIR}/_ext/1451350481/sys_command.o ${OBJECTDIR}/_ext/994638301/sys_console.o ${OBJECTDIR}/_ext/994638301/sys_console_usb_cdc.o ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o ${OBJECTDIR}/_ext/899838009/sys_random.o ${OBJECTDIR}/_ext/430974239/sys_tmr.o ${OBJECTDIR}/_ext/593738990/helpers.o ${OBJECTDIR}/_ext/1833714580/ipv4.o ${OBJECTDIR}/_ext/1833714580/udp.o ${OBJECTDIR}/_ext/1833714580/tcpip_heap_alloc.o ${OBJECTDIR}/_ext/1833714580/tcpip_heap_internal.o ${OBJECTDIR}/_ext/1833714580/arp.o ${OBJECTDIR}/_ext/1833714580/dhcp.o ${OBJECTDIR}/_ext/1833714580/dns.o ${OBJECTDIR}/_ext/1833714580/hash_fnv.o ${OBJECTDIR}/_ext/1833714580/oahash.o ${OBJECTDIR}/_ext/1833714580/tcpip_helpers.o ${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o ${OBJECTDIR}/_ext/1833714580/tcpip_manager.o ${OBJECTDIR}/_ext/1833714580/tcpip_notify.o ${OBJECTDIR}/_ext/1833714580/tcpip_packet.o ${OBJECTDIR}/_ext/692885480/usb_device.o ${OBJECTDIR}/_ext/692885480/usb_device_cdc.o ${OBJECTDIR}/_ext/692885480/usb_device_cdc_acm.o ${OBJECTDIR}/_ext/588727395/drv_extphy_smsc8740.o ${OBJECTDIR}/_ext/1527291256/sys_clk_pic32mz.o ${OBJECTDIR}/_ext/1697442161/sys_devcon.o ${OBJECTDIR}/_ext/1697442161/sys_devcon_pic32mz.o ${OBJECTDIR}/_ext/1697442161/sys_devcon_cache_pic32mz.o ${OBJECTDIR}/_ext/340664008/sys_ports_static.o ${OBJECTDIR}/_ext/550150133/sys_reset.o ${OBJECTDIR}/_ext/763640961/bsp.o ${OBJECTDIR}/_ext/2079795023/system_init.o ${OBJECTDIR}/_ext/2079795023/system_interrupt.o ${OBJECTDIR}/_ext/2079795023/system_exceptions.o ${OBJECTDIR}/_ext/2079795023/system_tasks.o

# Source Files
SOURCEFILES=../src/app.c ../src/main.c D:/Microchip/harmony/v2_06/apps/bootloader/LiveUpdate/LiveUpdate_App/firmware/src/app_helper.c ../../../../../../framework/bootloader/src/datastream/datastream.c ../../../../../../framework/bootloader/src/datastream/datastream_udp.c ../../../../../../framework/bootloader/src/bootloader.c ../../../../../../framework/bootloader/src/nvm.c ../../../../../../framework/driver/ethmac/src/dynamic/drv_ethmac.c ../../../../../../framework/driver/ethmac/src/dynamic/drv_ethmac_lib.c ../../../../../../framework/driver/ethphy/src/dynamic/drv_ethphy.c ../../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c ../../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs.c ../../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs_device.c ../../../../../../framework/system/command/src/sys_command.c ../../../../../../framework/system/console/src/sys_console.c ../../../../../../framework/system/console/src/sys_console_usb_cdc.c ../../../../../../framework/system/int/src/sys_int_pic32.c ../../../../../../framework/system/random/src/sys_random.c ../../../../../../framework/system/tmr/src/sys_tmr.c ../../../../../../framework/tcpip/src/common/helpers.c ../../../../../../framework/tcpip/src/ipv4.c ../../../../../../framework/tcpip/src/udp.c ../../../../../../framework/tcpip/src/tcpip_heap_alloc.c ../../../../../../framework/tcpip/src/tcpip_heap_internal.c ../../../../../../framework/tcpip/src/arp.c ../../../../../../framework/tcpip/src/dhcp.c ../../../../../../framework/tcpip/src/dns.c ../../../../../../framework/tcpip/src/hash_fnv.c ../../../../../../framework/tcpip/src/oahash.c ../../../../../../framework/tcpip/src/tcpip_helpers.c ../../../../../../framework/tcpip/src/tcpip_helper_c32.S ../../../../../../framework/tcpip/src/tcpip_manager.c ../../../../../../framework/tcpip/src/tcpip_notify.c ../../../../../../framework/tcpip/src/tcpip_packet.c ../../../../../../framework/usb/src/dynamic/usb_device.c ../../../../../../framework/usb/src/dynamic/usb_device_cdc.c ../../../../../../framework/usb/src/dynamic/usb_device_cdc_acm.c ../../../../../../framework/driver/ethphy/src/dynamic/drv_extphy_smsc8740.c ../src/system_config/pic32mz_ef_sk_udp_led3/framework/system/clk/src/sys_clk_pic32mz.c ../src/system_config/pic32mz_ef_sk_udp_led3/framework/system/devcon/src/sys_devcon.c ../src/system_config/pic32mz_ef_sk_udp_led3/framework/system/devcon/src/sys_devcon_pic32mz.c ../src/system_config/pic32mz_ef_sk_udp_led3/framework/system/devcon/src/sys_devcon_cache_pic32mz.S ../src/system_config/pic32mz_ef_sk_udp_led3/framework/system/ports/src/sys_ports_static.c ../src/system_config/pic32mz_ef_sk_udp_led3/framework/system/reset/src/sys_reset.c ../src/system_config/pic32mz_ef_sk_udp_led3/bsp/bsp.c ../src/system_config/pic32mz_ef_sk_udp_led3/system_init.c ../src/system_config/pic32mz_ef_sk_udp_led3/system_interrupt.c ../src/system_config/pic32mz_ef_sk_udp_led3/system_exceptions.c ../src/system_config/pic32mz_ef_sk_udp_led3/system_tasks.c



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
	${MAKE}  -f nbproject/Makefile-pic32mz_ef_sk_udp_led3.mk ${DISTDIR}/LiveUpdate_App.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MZ2048EFM144
MP_LINKER_FILE_OPTION=,--script="..\src\system_config\pic32mz_ef_sk_udp_led3\app_mz.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o: ../../../../../../framework/tcpip/src/tcpip_helper_c32.S  .generated_files/flags/pic32mz_ef_sk_udp_led3/c3b6e58b3ca72b5a1b7d094fdb90ddb5671646ec .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o.ok ${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o.d"  -o ${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o ../../../../../../framework/tcpip/src/tcpip_helper_c32.S  -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o.d" "${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1697442161/sys_devcon_cache_pic32mz.o: ../src/system_config/pic32mz_ef_sk_udp_led3/framework/system/devcon/src/sys_devcon_cache_pic32mz.S  .generated_files/flags/pic32mz_ef_sk_udp_led3/334787d1c67d704e6b6bb36c6529d48697401661 .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1697442161" 
	@${RM} ${OBJECTDIR}/_ext/1697442161/sys_devcon_cache_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/1697442161/sys_devcon_cache_pic32mz.o 
	@${RM} ${OBJECTDIR}/_ext/1697442161/sys_devcon_cache_pic32mz.o.ok ${OBJECTDIR}/_ext/1697442161/sys_devcon_cache_pic32mz.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1697442161/sys_devcon_cache_pic32mz.o.d"  -o ${OBJECTDIR}/_ext/1697442161/sys_devcon_cache_pic32mz.o ../src/system_config/pic32mz_ef_sk_udp_led3/framework/system/devcon/src/sys_devcon_cache_pic32mz.S  -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1697442161/sys_devcon_cache_pic32mz.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1697442161/sys_devcon_cache_pic32mz.o.d" "${OBJECTDIR}/_ext/1697442161/sys_devcon_cache_pic32mz.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o: ../../../../../../framework/tcpip/src/tcpip_helper_c32.S  .generated_files/flags/pic32mz_ef_sk_udp_led3/c7ea0528a59caada332229abe0f6c61d6864e44d .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o.ok ${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o.d"  -o ${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o ../../../../../../framework/tcpip/src/tcpip_helper_c32.S  -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o.asm.d",--gdwarf-2 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o.d" "${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1697442161/sys_devcon_cache_pic32mz.o: ../src/system_config/pic32mz_ef_sk_udp_led3/framework/system/devcon/src/sys_devcon_cache_pic32mz.S  .generated_files/flags/pic32mz_ef_sk_udp_led3/3b09d009c7cee9bc6d6ec74540f08be42951338b .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1697442161" 
	@${RM} ${OBJECTDIR}/_ext/1697442161/sys_devcon_cache_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/1697442161/sys_devcon_cache_pic32mz.o 
	@${RM} ${OBJECTDIR}/_ext/1697442161/sys_devcon_cache_pic32mz.o.ok ${OBJECTDIR}/_ext/1697442161/sys_devcon_cache_pic32mz.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1697442161/sys_devcon_cache_pic32mz.o.d"  -o ${OBJECTDIR}/_ext/1697442161/sys_devcon_cache_pic32mz.o ../src/system_config/pic32mz_ef_sk_udp_led3/framework/system/devcon/src/sys_devcon_cache_pic32mz.S  -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1697442161/sys_devcon_cache_pic32mz.o.asm.d",--gdwarf-2 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1697442161/sys_devcon_cache_pic32mz.o.d" "${OBJECTDIR}/_ext/1697442161/sys_devcon_cache_pic32mz.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/e6ef85f1d0053cae84a6ffa46c0eb0e6336e8d20 .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/8b404228bf72d1408d2896a38b72939e577ed08 .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1467197364/app_helper.o: D:/Microchip/harmony/v2_06/apps/bootloader/LiveUpdate/LiveUpdate_App/firmware/src/app_helper.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/89e0f9f0033b25a55fb78b95348a4db1ecb3ef0 .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1467197364" 
	@${RM} ${OBJECTDIR}/_ext/1467197364/app_helper.o.d 
	@${RM} ${OBJECTDIR}/_ext/1467197364/app_helper.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1467197364/app_helper.o.d" -o ${OBJECTDIR}/_ext/1467197364/app_helper.o D:/Microchip/harmony/v2_06/apps/bootloader/LiveUpdate/LiveUpdate_App/firmware/src/app_helper.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/682638542/datastream.o: ../../../../../../framework/bootloader/src/datastream/datastream.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/3c42263668127ebe57604f0034237db8031f53f5 .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/682638542" 
	@${RM} ${OBJECTDIR}/_ext/682638542/datastream.o.d 
	@${RM} ${OBJECTDIR}/_ext/682638542/datastream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/682638542/datastream.o.d" -o ${OBJECTDIR}/_ext/682638542/datastream.o ../../../../../../framework/bootloader/src/datastream/datastream.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/682638542/datastream_udp.o: ../../../../../../framework/bootloader/src/datastream/datastream_udp.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/36f54ce357baf1fba49e4687042863b0775a802c .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/682638542" 
	@${RM} ${OBJECTDIR}/_ext/682638542/datastream_udp.o.d 
	@${RM} ${OBJECTDIR}/_ext/682638542/datastream_udp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/682638542/datastream_udp.o.d" -o ${OBJECTDIR}/_ext/682638542/datastream_udp.o ../../../../../../framework/bootloader/src/datastream/datastream_udp.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854679915/bootloader.o: ../../../../../../framework/bootloader/src/bootloader.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/49be0a963aea94716d8f280ac9e450d14aeba0a2 .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1854679915" 
	@${RM} ${OBJECTDIR}/_ext/1854679915/bootloader.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854679915/bootloader.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1854679915/bootloader.o.d" -o ${OBJECTDIR}/_ext/1854679915/bootloader.o ../../../../../../framework/bootloader/src/bootloader.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854679915/nvm.o: ../../../../../../framework/bootloader/src/nvm.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/f987e0f0e4ae3300344932be6320fdee780580ff .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1854679915" 
	@${RM} ${OBJECTDIR}/_ext/1854679915/nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854679915/nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1854679915/nvm.o.d" -o ${OBJECTDIR}/_ext/1854679915/nvm.o ../../../../../../framework/bootloader/src/nvm.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1764881201/drv_ethmac.o: ../../../../../../framework/driver/ethmac/src/dynamic/drv_ethmac.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/ea899ddd33bf389901e8257a817c187be458f7a6 .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1764881201" 
	@${RM} ${OBJECTDIR}/_ext/1764881201/drv_ethmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1764881201/drv_ethmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1764881201/drv_ethmac.o.d" -o ${OBJECTDIR}/_ext/1764881201/drv_ethmac.o ../../../../../../framework/driver/ethmac/src/dynamic/drv_ethmac.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1764881201/drv_ethmac_lib.o: ../../../../../../framework/driver/ethmac/src/dynamic/drv_ethmac_lib.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/99f5eaea11f3c3acdde6ce7f8d5fde2df29e96f2 .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1764881201" 
	@${RM} ${OBJECTDIR}/_ext/1764881201/drv_ethmac_lib.o.d 
	@${RM} ${OBJECTDIR}/_ext/1764881201/drv_ethmac_lib.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1764881201/drv_ethmac_lib.o.d" -o ${OBJECTDIR}/_ext/1764881201/drv_ethmac_lib.o ../../../../../../framework/driver/ethmac/src/dynamic/drv_ethmac_lib.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/588727395/drv_ethphy.o: ../../../../../../framework/driver/ethphy/src/dynamic/drv_ethphy.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/1862c0a3723f58eee92da458a3795387fc53685c .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/588727395" 
	@${RM} ${OBJECTDIR}/_ext/588727395/drv_ethphy.o.d 
	@${RM} ${OBJECTDIR}/_ext/588727395/drv_ethphy.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/588727395/drv_ethphy.o.d" -o ${OBJECTDIR}/_ext/588727395/drv_ethphy.o ../../../../../../framework/driver/ethphy/src/dynamic/drv_ethphy.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1152366776/drv_tmr.o: ../../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/e0449ad2faf5c4b9f2a6826a70fa79aebbffc6cf .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1152366776" 
	@${RM} ${OBJECTDIR}/_ext/1152366776/drv_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1152366776/drv_tmr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1152366776/drv_tmr.o.d" -o ${OBJECTDIR}/_ext/1152366776/drv_tmr.o ../../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1698770803/drv_usbhs.o: ../../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/54841475a3a9934c1a79f5ca0950bb50cff37ec0 .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1698770803" 
	@${RM} ${OBJECTDIR}/_ext/1698770803/drv_usbhs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1698770803/drv_usbhs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1698770803/drv_usbhs.o.d" -o ${OBJECTDIR}/_ext/1698770803/drv_usbhs.o ../../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1698770803/drv_usbhs_device.o: ../../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs_device.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/5792de6c60164c96256ee663c915c2fe4edfa905 .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1698770803" 
	@${RM} ${OBJECTDIR}/_ext/1698770803/drv_usbhs_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1698770803/drv_usbhs_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1698770803/drv_usbhs_device.o.d" -o ${OBJECTDIR}/_ext/1698770803/drv_usbhs_device.o ../../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs_device.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1451350481/sys_command.o: ../../../../../../framework/system/command/src/sys_command.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/eed692b0bf3a7bbc6777aff89bca7adcda31608d .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1451350481" 
	@${RM} ${OBJECTDIR}/_ext/1451350481/sys_command.o.d 
	@${RM} ${OBJECTDIR}/_ext/1451350481/sys_command.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1451350481/sys_command.o.d" -o ${OBJECTDIR}/_ext/1451350481/sys_command.o ../../../../../../framework/system/command/src/sys_command.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/994638301/sys_console.o: ../../../../../../framework/system/console/src/sys_console.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/a14e30396da81bf30fe19e36b2eccc362ea18d0e .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/994638301" 
	@${RM} ${OBJECTDIR}/_ext/994638301/sys_console.o.d 
	@${RM} ${OBJECTDIR}/_ext/994638301/sys_console.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/994638301/sys_console.o.d" -o ${OBJECTDIR}/_ext/994638301/sys_console.o ../../../../../../framework/system/console/src/sys_console.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/994638301/sys_console_usb_cdc.o: ../../../../../../framework/system/console/src/sys_console_usb_cdc.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/185d526204156e5535245cd22cd4bd2085c7e713 .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/994638301" 
	@${RM} ${OBJECTDIR}/_ext/994638301/sys_console_usb_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/994638301/sys_console_usb_cdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/994638301/sys_console_usb_cdc.o.d" -o ${OBJECTDIR}/_ext/994638301/sys_console_usb_cdc.o ../../../../../../framework/system/console/src/sys_console_usb_cdc.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/711155467/sys_int_pic32.o: ../../../../../../framework/system/int/src/sys_int_pic32.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/b7118d19c1f6791bf598536c73aa56def3fc2793 .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/711155467" 
	@${RM} ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/711155467/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o ../../../../../../framework/system/int/src/sys_int_pic32.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/899838009/sys_random.o: ../../../../../../framework/system/random/src/sys_random.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/76288388184e73342f250965b2bb7dae2464136b .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/899838009" 
	@${RM} ${OBJECTDIR}/_ext/899838009/sys_random.o.d 
	@${RM} ${OBJECTDIR}/_ext/899838009/sys_random.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/899838009/sys_random.o.d" -o ${OBJECTDIR}/_ext/899838009/sys_random.o ../../../../../../framework/system/random/src/sys_random.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/430974239/sys_tmr.o: ../../../../../../framework/system/tmr/src/sys_tmr.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/f9d29b3241baae066820f3bf215cb631453b8442 .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/430974239" 
	@${RM} ${OBJECTDIR}/_ext/430974239/sys_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/430974239/sys_tmr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/430974239/sys_tmr.o.d" -o ${OBJECTDIR}/_ext/430974239/sys_tmr.o ../../../../../../framework/system/tmr/src/sys_tmr.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/593738990/helpers.o: ../../../../../../framework/tcpip/src/common/helpers.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/4295cae8c225cdf011f02c47bc65c430a82797db .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/593738990" 
	@${RM} ${OBJECTDIR}/_ext/593738990/helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/593738990/helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/593738990/helpers.o.d" -o ${OBJECTDIR}/_ext/593738990/helpers.o ../../../../../../framework/tcpip/src/common/helpers.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/ipv4.o: ../../../../../../framework/tcpip/src/ipv4.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/627015e6123d192f95ed8acefd7d879ba6cd2bf4 .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/ipv4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/ipv4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/ipv4.o.d" -o ${OBJECTDIR}/_ext/1833714580/ipv4.o ../../../../../../framework/tcpip/src/ipv4.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/udp.o: ../../../../../../framework/tcpip/src/udp.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/93da4018253437369631d8430c4996c549f79211 .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/udp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/udp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/udp.o.d" -o ${OBJECTDIR}/_ext/1833714580/udp.o ../../../../../../framework/tcpip/src/udp.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/tcpip_heap_alloc.o: ../../../../../../framework/tcpip/src/tcpip_heap_alloc.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/f25afc7011d30b5063b7e755e8ffaad2fd67cf56 .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_heap_alloc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_heap_alloc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/tcpip_heap_alloc.o.d" -o ${OBJECTDIR}/_ext/1833714580/tcpip_heap_alloc.o ../../../../../../framework/tcpip/src/tcpip_heap_alloc.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/tcpip_heap_internal.o: ../../../../../../framework/tcpip/src/tcpip_heap_internal.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/f11229d15f63470ecf4dc1e25398f808117255f6 .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_heap_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_heap_internal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/tcpip_heap_internal.o.d" -o ${OBJECTDIR}/_ext/1833714580/tcpip_heap_internal.o ../../../../../../framework/tcpip/src/tcpip_heap_internal.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/arp.o: ../../../../../../framework/tcpip/src/arp.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/5151da40f866e1fa7125aca9c19eae43aba1eedc .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/arp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/arp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/arp.o.d" -o ${OBJECTDIR}/_ext/1833714580/arp.o ../../../../../../framework/tcpip/src/arp.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/dhcp.o: ../../../../../../framework/tcpip/src/dhcp.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/cb578ed1dc16df17e872f5551e6cf8767d36eb5e .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/dhcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/dhcp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/dhcp.o.d" -o ${OBJECTDIR}/_ext/1833714580/dhcp.o ../../../../../../framework/tcpip/src/dhcp.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/dns.o: ../../../../../../framework/tcpip/src/dns.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/1a746ac53cdb9941e590f0b39b50696d5a6f6627 .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/dns.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/dns.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/dns.o.d" -o ${OBJECTDIR}/_ext/1833714580/dns.o ../../../../../../framework/tcpip/src/dns.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/hash_fnv.o: ../../../../../../framework/tcpip/src/hash_fnv.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/5853beea318e4d93d076afb16ff77689167559d0 .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/hash_fnv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/hash_fnv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/hash_fnv.o.d" -o ${OBJECTDIR}/_ext/1833714580/hash_fnv.o ../../../../../../framework/tcpip/src/hash_fnv.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/oahash.o: ../../../../../../framework/tcpip/src/oahash.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/4957fef354219dd401c80c80f89b83fe776358fc .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/oahash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/oahash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/oahash.o.d" -o ${OBJECTDIR}/_ext/1833714580/oahash.o ../../../../../../framework/tcpip/src/oahash.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/tcpip_helpers.o: ../../../../../../framework/tcpip/src/tcpip_helpers.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/782c54f4904f80addf8bd586756f781f9954f5a6 .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/tcpip_helpers.o.d" -o ${OBJECTDIR}/_ext/1833714580/tcpip_helpers.o ../../../../../../framework/tcpip/src/tcpip_helpers.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/tcpip_manager.o: ../../../../../../framework/tcpip/src/tcpip_manager.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/bb5ab86b426193227d78a4a0151ba7cee648c386 .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/tcpip_manager.o.d" -o ${OBJECTDIR}/_ext/1833714580/tcpip_manager.o ../../../../../../framework/tcpip/src/tcpip_manager.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/tcpip_notify.o: ../../../../../../framework/tcpip/src/tcpip_notify.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/f687df730cb264f0eabe850350ac43a7118ea8b9 .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_notify.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_notify.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/tcpip_notify.o.d" -o ${OBJECTDIR}/_ext/1833714580/tcpip_notify.o ../../../../../../framework/tcpip/src/tcpip_notify.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/tcpip_packet.o: ../../../../../../framework/tcpip/src/tcpip_packet.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/dab42ecb5b9d0056419c70089f300dfa338dd759 .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_packet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_packet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/tcpip_packet.o.d" -o ${OBJECTDIR}/_ext/1833714580/tcpip_packet.o ../../../../../../framework/tcpip/src/tcpip_packet.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/692885480/usb_device.o: ../../../../../../framework/usb/src/dynamic/usb_device.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/22412894db514dfcedc9296db0f2e5f426cf3b5c .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/692885480" 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/692885480/usb_device.o.d" -o ${OBJECTDIR}/_ext/692885480/usb_device.o ../../../../../../framework/usb/src/dynamic/usb_device.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/692885480/usb_device_cdc.o: ../../../../../../framework/usb/src/dynamic/usb_device_cdc.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/a809fa72b812c93f9af65c3d1055f30a27b6295e .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/692885480" 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device_cdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/692885480/usb_device_cdc.o.d" -o ${OBJECTDIR}/_ext/692885480/usb_device_cdc.o ../../../../../../framework/usb/src/dynamic/usb_device_cdc.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/692885480/usb_device_cdc_acm.o: ../../../../../../framework/usb/src/dynamic/usb_device_cdc_acm.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/2b036d22846d132702b06ebf9087638e987bb184 .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/692885480" 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device_cdc_acm.o.d 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device_cdc_acm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/692885480/usb_device_cdc_acm.o.d" -o ${OBJECTDIR}/_ext/692885480/usb_device_cdc_acm.o ../../../../../../framework/usb/src/dynamic/usb_device_cdc_acm.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/588727395/drv_extphy_smsc8740.o: ../../../../../../framework/driver/ethphy/src/dynamic/drv_extphy_smsc8740.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/79811421b9c8ad1ea7d6b8ad9be7b258f31d8a20 .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/588727395" 
	@${RM} ${OBJECTDIR}/_ext/588727395/drv_extphy_smsc8740.o.d 
	@${RM} ${OBJECTDIR}/_ext/588727395/drv_extphy_smsc8740.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/588727395/drv_extphy_smsc8740.o.d" -o ${OBJECTDIR}/_ext/588727395/drv_extphy_smsc8740.o ../../../../../../framework/driver/ethphy/src/dynamic/drv_extphy_smsc8740.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1527291256/sys_clk_pic32mz.o: ../src/system_config/pic32mz_ef_sk_udp_led3/framework/system/clk/src/sys_clk_pic32mz.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/4ce5b41feb716b5a02f23fbb2f2b04b87d42511b .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1527291256" 
	@${RM} ${OBJECTDIR}/_ext/1527291256/sys_clk_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/1527291256/sys_clk_pic32mz.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1527291256/sys_clk_pic32mz.o.d" -o ${OBJECTDIR}/_ext/1527291256/sys_clk_pic32mz.o ../src/system_config/pic32mz_ef_sk_udp_led3/framework/system/clk/src/sys_clk_pic32mz.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1697442161/sys_devcon.o: ../src/system_config/pic32mz_ef_sk_udp_led3/framework/system/devcon/src/sys_devcon.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/d0f43e647e3e6c52ab0cf46333b48f0709a682ab .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1697442161" 
	@${RM} ${OBJECTDIR}/_ext/1697442161/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/1697442161/sys_devcon.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1697442161/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/1697442161/sys_devcon.o ../src/system_config/pic32mz_ef_sk_udp_led3/framework/system/devcon/src/sys_devcon.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1697442161/sys_devcon_pic32mz.o: ../src/system_config/pic32mz_ef_sk_udp_led3/framework/system/devcon/src/sys_devcon_pic32mz.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/f571f675688168ac310b2d20d3e70c946e9f9237 .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1697442161" 
	@${RM} ${OBJECTDIR}/_ext/1697442161/sys_devcon_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/1697442161/sys_devcon_pic32mz.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1697442161/sys_devcon_pic32mz.o.d" -o ${OBJECTDIR}/_ext/1697442161/sys_devcon_pic32mz.o ../src/system_config/pic32mz_ef_sk_udp_led3/framework/system/devcon/src/sys_devcon_pic32mz.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/340664008/sys_ports_static.o: ../src/system_config/pic32mz_ef_sk_udp_led3/framework/system/ports/src/sys_ports_static.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/1c9ba1b164ff06b66b0d65c9d2f76a24fe2d553e .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/340664008" 
	@${RM} ${OBJECTDIR}/_ext/340664008/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/340664008/sys_ports_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/340664008/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/340664008/sys_ports_static.o ../src/system_config/pic32mz_ef_sk_udp_led3/framework/system/ports/src/sys_ports_static.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/550150133/sys_reset.o: ../src/system_config/pic32mz_ef_sk_udp_led3/framework/system/reset/src/sys_reset.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/caef6e00284537aa92dbcc0dccf903d905b9a3be .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/550150133" 
	@${RM} ${OBJECTDIR}/_ext/550150133/sys_reset.o.d 
	@${RM} ${OBJECTDIR}/_ext/550150133/sys_reset.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/550150133/sys_reset.o.d" -o ${OBJECTDIR}/_ext/550150133/sys_reset.o ../src/system_config/pic32mz_ef_sk_udp_led3/framework/system/reset/src/sys_reset.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/763640961/bsp.o: ../src/system_config/pic32mz_ef_sk_udp_led3/bsp/bsp.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/10ad192f64c606b5a1572c614267fa312404f2b8 .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/763640961" 
	@${RM} ${OBJECTDIR}/_ext/763640961/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/763640961/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/763640961/bsp.o.d" -o ${OBJECTDIR}/_ext/763640961/bsp.o ../src/system_config/pic32mz_ef_sk_udp_led3/bsp/bsp.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2079795023/system_init.o: ../src/system_config/pic32mz_ef_sk_udp_led3/system_init.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/b661a5f245184623d7ef0bf835e12fe86db5a75b .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/2079795023" 
	@${RM} ${OBJECTDIR}/_ext/2079795023/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/2079795023/system_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2079795023/system_init.o.d" -o ${OBJECTDIR}/_ext/2079795023/system_init.o ../src/system_config/pic32mz_ef_sk_udp_led3/system_init.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2079795023/system_interrupt.o: ../src/system_config/pic32mz_ef_sk_udp_led3/system_interrupt.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/e37a0c795e6bd3de5574d1628a0da80b38316730 .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/2079795023" 
	@${RM} ${OBJECTDIR}/_ext/2079795023/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/2079795023/system_interrupt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2079795023/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/2079795023/system_interrupt.o ../src/system_config/pic32mz_ef_sk_udp_led3/system_interrupt.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2079795023/system_exceptions.o: ../src/system_config/pic32mz_ef_sk_udp_led3/system_exceptions.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/52979bd60d469751987b66893b8889db87bebde8 .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/2079795023" 
	@${RM} ${OBJECTDIR}/_ext/2079795023/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/2079795023/system_exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2079795023/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/2079795023/system_exceptions.o ../src/system_config/pic32mz_ef_sk_udp_led3/system_exceptions.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2079795023/system_tasks.o: ../src/system_config/pic32mz_ef_sk_udp_led3/system_tasks.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/5e9aac0309cb440d45f6e0acb2263ee2f264b644 .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/2079795023" 
	@${RM} ${OBJECTDIR}/_ext/2079795023/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/2079795023/system_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2079795023/system_tasks.o.d" -o ${OBJECTDIR}/_ext/2079795023/system_tasks.o ../src/system_config/pic32mz_ef_sk_udp_led3/system_tasks.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/1ba18626a7a7d27da617b6f83df7d8d6c3b895de .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/2d837e0a26950d09293713b830c4d75d131ceba4 .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1467197364/app_helper.o: D:/Microchip/harmony/v2_06/apps/bootloader/LiveUpdate/LiveUpdate_App/firmware/src/app_helper.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/58773427567c616a516657eecb1788a36b820f2b .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1467197364" 
	@${RM} ${OBJECTDIR}/_ext/1467197364/app_helper.o.d 
	@${RM} ${OBJECTDIR}/_ext/1467197364/app_helper.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1467197364/app_helper.o.d" -o ${OBJECTDIR}/_ext/1467197364/app_helper.o D:/Microchip/harmony/v2_06/apps/bootloader/LiveUpdate/LiveUpdate_App/firmware/src/app_helper.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/682638542/datastream.o: ../../../../../../framework/bootloader/src/datastream/datastream.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/e1ef7d533393f1f55b8407a469f3f5ec5f4c2bfb .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/682638542" 
	@${RM} ${OBJECTDIR}/_ext/682638542/datastream.o.d 
	@${RM} ${OBJECTDIR}/_ext/682638542/datastream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/682638542/datastream.o.d" -o ${OBJECTDIR}/_ext/682638542/datastream.o ../../../../../../framework/bootloader/src/datastream/datastream.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/682638542/datastream_udp.o: ../../../../../../framework/bootloader/src/datastream/datastream_udp.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/eff9193b0065d68184e5369541cbfa02710bfe12 .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/682638542" 
	@${RM} ${OBJECTDIR}/_ext/682638542/datastream_udp.o.d 
	@${RM} ${OBJECTDIR}/_ext/682638542/datastream_udp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/682638542/datastream_udp.o.d" -o ${OBJECTDIR}/_ext/682638542/datastream_udp.o ../../../../../../framework/bootloader/src/datastream/datastream_udp.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854679915/bootloader.o: ../../../../../../framework/bootloader/src/bootloader.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/8c05a1a1470bab4011b0d49789e74e99e422575c .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1854679915" 
	@${RM} ${OBJECTDIR}/_ext/1854679915/bootloader.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854679915/bootloader.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1854679915/bootloader.o.d" -o ${OBJECTDIR}/_ext/1854679915/bootloader.o ../../../../../../framework/bootloader/src/bootloader.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854679915/nvm.o: ../../../../../../framework/bootloader/src/nvm.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/9623c3006668b49b16193e3beedded840eed3f85 .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1854679915" 
	@${RM} ${OBJECTDIR}/_ext/1854679915/nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854679915/nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1854679915/nvm.o.d" -o ${OBJECTDIR}/_ext/1854679915/nvm.o ../../../../../../framework/bootloader/src/nvm.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1764881201/drv_ethmac.o: ../../../../../../framework/driver/ethmac/src/dynamic/drv_ethmac.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/91b781733f2acff0ab89ee75ce69fa8fd2a767ac .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1764881201" 
	@${RM} ${OBJECTDIR}/_ext/1764881201/drv_ethmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1764881201/drv_ethmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1764881201/drv_ethmac.o.d" -o ${OBJECTDIR}/_ext/1764881201/drv_ethmac.o ../../../../../../framework/driver/ethmac/src/dynamic/drv_ethmac.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1764881201/drv_ethmac_lib.o: ../../../../../../framework/driver/ethmac/src/dynamic/drv_ethmac_lib.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/acb261132ce039c4a7fdda9201960ff4d6b7e685 .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1764881201" 
	@${RM} ${OBJECTDIR}/_ext/1764881201/drv_ethmac_lib.o.d 
	@${RM} ${OBJECTDIR}/_ext/1764881201/drv_ethmac_lib.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1764881201/drv_ethmac_lib.o.d" -o ${OBJECTDIR}/_ext/1764881201/drv_ethmac_lib.o ../../../../../../framework/driver/ethmac/src/dynamic/drv_ethmac_lib.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/588727395/drv_ethphy.o: ../../../../../../framework/driver/ethphy/src/dynamic/drv_ethphy.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/ae96c0b1f89a8d6edf38c301f7a2a6174f469a35 .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/588727395" 
	@${RM} ${OBJECTDIR}/_ext/588727395/drv_ethphy.o.d 
	@${RM} ${OBJECTDIR}/_ext/588727395/drv_ethphy.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/588727395/drv_ethphy.o.d" -o ${OBJECTDIR}/_ext/588727395/drv_ethphy.o ../../../../../../framework/driver/ethphy/src/dynamic/drv_ethphy.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1152366776/drv_tmr.o: ../../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/92f3bf7dd150fecf8903800bb86aaf3e0cfc4186 .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1152366776" 
	@${RM} ${OBJECTDIR}/_ext/1152366776/drv_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1152366776/drv_tmr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1152366776/drv_tmr.o.d" -o ${OBJECTDIR}/_ext/1152366776/drv_tmr.o ../../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1698770803/drv_usbhs.o: ../../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/800d53d41f23a60b3099da7e872788e46fb7d74f .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1698770803" 
	@${RM} ${OBJECTDIR}/_ext/1698770803/drv_usbhs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1698770803/drv_usbhs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1698770803/drv_usbhs.o.d" -o ${OBJECTDIR}/_ext/1698770803/drv_usbhs.o ../../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1698770803/drv_usbhs_device.o: ../../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs_device.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/569d6beb7c1075dc71870d543adcb222e17d71ac .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1698770803" 
	@${RM} ${OBJECTDIR}/_ext/1698770803/drv_usbhs_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1698770803/drv_usbhs_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1698770803/drv_usbhs_device.o.d" -o ${OBJECTDIR}/_ext/1698770803/drv_usbhs_device.o ../../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs_device.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1451350481/sys_command.o: ../../../../../../framework/system/command/src/sys_command.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/b78c9d14a9943ddb382ca8ad0aa19a8454a7ed55 .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1451350481" 
	@${RM} ${OBJECTDIR}/_ext/1451350481/sys_command.o.d 
	@${RM} ${OBJECTDIR}/_ext/1451350481/sys_command.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1451350481/sys_command.o.d" -o ${OBJECTDIR}/_ext/1451350481/sys_command.o ../../../../../../framework/system/command/src/sys_command.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/994638301/sys_console.o: ../../../../../../framework/system/console/src/sys_console.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/4ea83dbcd0970bcba885a9702c09d18f6306d7c1 .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/994638301" 
	@${RM} ${OBJECTDIR}/_ext/994638301/sys_console.o.d 
	@${RM} ${OBJECTDIR}/_ext/994638301/sys_console.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/994638301/sys_console.o.d" -o ${OBJECTDIR}/_ext/994638301/sys_console.o ../../../../../../framework/system/console/src/sys_console.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/994638301/sys_console_usb_cdc.o: ../../../../../../framework/system/console/src/sys_console_usb_cdc.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/a2035a7ddd53499a772f50cc4547d22797df5de2 .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/994638301" 
	@${RM} ${OBJECTDIR}/_ext/994638301/sys_console_usb_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/994638301/sys_console_usb_cdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/994638301/sys_console_usb_cdc.o.d" -o ${OBJECTDIR}/_ext/994638301/sys_console_usb_cdc.o ../../../../../../framework/system/console/src/sys_console_usb_cdc.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/711155467/sys_int_pic32.o: ../../../../../../framework/system/int/src/sys_int_pic32.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/b1b22f61766d74731d697176bf02718304120072 .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/711155467" 
	@${RM} ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/711155467/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o ../../../../../../framework/system/int/src/sys_int_pic32.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/899838009/sys_random.o: ../../../../../../framework/system/random/src/sys_random.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/2e34571b9ca70356ba8209b84e36597b99f781da .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/899838009" 
	@${RM} ${OBJECTDIR}/_ext/899838009/sys_random.o.d 
	@${RM} ${OBJECTDIR}/_ext/899838009/sys_random.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/899838009/sys_random.o.d" -o ${OBJECTDIR}/_ext/899838009/sys_random.o ../../../../../../framework/system/random/src/sys_random.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/430974239/sys_tmr.o: ../../../../../../framework/system/tmr/src/sys_tmr.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/80d9d69317d2515ad764aec6395166e0032373a1 .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/430974239" 
	@${RM} ${OBJECTDIR}/_ext/430974239/sys_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/430974239/sys_tmr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/430974239/sys_tmr.o.d" -o ${OBJECTDIR}/_ext/430974239/sys_tmr.o ../../../../../../framework/system/tmr/src/sys_tmr.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/593738990/helpers.o: ../../../../../../framework/tcpip/src/common/helpers.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/7043634637561b51273187e24a63095f522ffd4c .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/593738990" 
	@${RM} ${OBJECTDIR}/_ext/593738990/helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/593738990/helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/593738990/helpers.o.d" -o ${OBJECTDIR}/_ext/593738990/helpers.o ../../../../../../framework/tcpip/src/common/helpers.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/ipv4.o: ../../../../../../framework/tcpip/src/ipv4.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/b9127d81fccf379418e8f4b1073fef1724cde06d .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/ipv4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/ipv4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/ipv4.o.d" -o ${OBJECTDIR}/_ext/1833714580/ipv4.o ../../../../../../framework/tcpip/src/ipv4.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/udp.o: ../../../../../../framework/tcpip/src/udp.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/864dea88dd3916239861b13878cac774e671e7c8 .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/udp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/udp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/udp.o.d" -o ${OBJECTDIR}/_ext/1833714580/udp.o ../../../../../../framework/tcpip/src/udp.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/tcpip_heap_alloc.o: ../../../../../../framework/tcpip/src/tcpip_heap_alloc.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/dd68a639405050136c7ffb38181f5701831f7866 .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_heap_alloc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_heap_alloc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/tcpip_heap_alloc.o.d" -o ${OBJECTDIR}/_ext/1833714580/tcpip_heap_alloc.o ../../../../../../framework/tcpip/src/tcpip_heap_alloc.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/tcpip_heap_internal.o: ../../../../../../framework/tcpip/src/tcpip_heap_internal.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/b41acba908a1bd870ad674440bc6af31addc0bb5 .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_heap_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_heap_internal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/tcpip_heap_internal.o.d" -o ${OBJECTDIR}/_ext/1833714580/tcpip_heap_internal.o ../../../../../../framework/tcpip/src/tcpip_heap_internal.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/arp.o: ../../../../../../framework/tcpip/src/arp.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/cafe766b74806df722f5f1f44e057f2136add173 .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/arp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/arp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/arp.o.d" -o ${OBJECTDIR}/_ext/1833714580/arp.o ../../../../../../framework/tcpip/src/arp.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/dhcp.o: ../../../../../../framework/tcpip/src/dhcp.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/b5d20aa2f22944d49826f884e9ec97a32c65e550 .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/dhcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/dhcp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/dhcp.o.d" -o ${OBJECTDIR}/_ext/1833714580/dhcp.o ../../../../../../framework/tcpip/src/dhcp.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/dns.o: ../../../../../../framework/tcpip/src/dns.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/19c7b6e8162b5017e331f361ec0e1f9f8ab0a9fe .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/dns.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/dns.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/dns.o.d" -o ${OBJECTDIR}/_ext/1833714580/dns.o ../../../../../../framework/tcpip/src/dns.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/hash_fnv.o: ../../../../../../framework/tcpip/src/hash_fnv.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/132b20eff895fc966324a460c3e2b98e7de4e88d .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/hash_fnv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/hash_fnv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/hash_fnv.o.d" -o ${OBJECTDIR}/_ext/1833714580/hash_fnv.o ../../../../../../framework/tcpip/src/hash_fnv.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/oahash.o: ../../../../../../framework/tcpip/src/oahash.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/51b823237c927ad7949ad3f3c9271c6c17b1446d .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/oahash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/oahash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/oahash.o.d" -o ${OBJECTDIR}/_ext/1833714580/oahash.o ../../../../../../framework/tcpip/src/oahash.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/tcpip_helpers.o: ../../../../../../framework/tcpip/src/tcpip_helpers.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/42322e2edaa7237dead3caff5447710db77ba3ff .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/tcpip_helpers.o.d" -o ${OBJECTDIR}/_ext/1833714580/tcpip_helpers.o ../../../../../../framework/tcpip/src/tcpip_helpers.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/tcpip_manager.o: ../../../../../../framework/tcpip/src/tcpip_manager.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/9baedc993c1f8450f53d177d093873938188e2a1 .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/tcpip_manager.o.d" -o ${OBJECTDIR}/_ext/1833714580/tcpip_manager.o ../../../../../../framework/tcpip/src/tcpip_manager.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/tcpip_notify.o: ../../../../../../framework/tcpip/src/tcpip_notify.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/cdd4ec27a476da245fc988a1c63dab9776dd19c8 .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_notify.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_notify.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/tcpip_notify.o.d" -o ${OBJECTDIR}/_ext/1833714580/tcpip_notify.o ../../../../../../framework/tcpip/src/tcpip_notify.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/tcpip_packet.o: ../../../../../../framework/tcpip/src/tcpip_packet.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/5faebc93a8aa4626c7d3b3eb71ad5ddfda43b481 .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_packet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_packet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/tcpip_packet.o.d" -o ${OBJECTDIR}/_ext/1833714580/tcpip_packet.o ../../../../../../framework/tcpip/src/tcpip_packet.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/692885480/usb_device.o: ../../../../../../framework/usb/src/dynamic/usb_device.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/cc99fcf3b175239b0472e6d4a0ec4c2fe3ed8e91 .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/692885480" 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/692885480/usb_device.o.d" -o ${OBJECTDIR}/_ext/692885480/usb_device.o ../../../../../../framework/usb/src/dynamic/usb_device.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/692885480/usb_device_cdc.o: ../../../../../../framework/usb/src/dynamic/usb_device_cdc.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/cf7bd129903cad58845c1ff8f8d3c664b3bbedc5 .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/692885480" 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device_cdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/692885480/usb_device_cdc.o.d" -o ${OBJECTDIR}/_ext/692885480/usb_device_cdc.o ../../../../../../framework/usb/src/dynamic/usb_device_cdc.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/692885480/usb_device_cdc_acm.o: ../../../../../../framework/usb/src/dynamic/usb_device_cdc_acm.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/58c54dcf99d33a93864579f0ee64da915d2c5ad5 .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/692885480" 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device_cdc_acm.o.d 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device_cdc_acm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/692885480/usb_device_cdc_acm.o.d" -o ${OBJECTDIR}/_ext/692885480/usb_device_cdc_acm.o ../../../../../../framework/usb/src/dynamic/usb_device_cdc_acm.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/588727395/drv_extphy_smsc8740.o: ../../../../../../framework/driver/ethphy/src/dynamic/drv_extphy_smsc8740.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/6e9fed38ab744c62b38b47bd0dd0ed43782cf447 .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/588727395" 
	@${RM} ${OBJECTDIR}/_ext/588727395/drv_extphy_smsc8740.o.d 
	@${RM} ${OBJECTDIR}/_ext/588727395/drv_extphy_smsc8740.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/588727395/drv_extphy_smsc8740.o.d" -o ${OBJECTDIR}/_ext/588727395/drv_extphy_smsc8740.o ../../../../../../framework/driver/ethphy/src/dynamic/drv_extphy_smsc8740.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1527291256/sys_clk_pic32mz.o: ../src/system_config/pic32mz_ef_sk_udp_led3/framework/system/clk/src/sys_clk_pic32mz.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/f3ffaa07a72d8cd5a4b9b9c7c7e9cd3abf5aa2c1 .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1527291256" 
	@${RM} ${OBJECTDIR}/_ext/1527291256/sys_clk_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/1527291256/sys_clk_pic32mz.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1527291256/sys_clk_pic32mz.o.d" -o ${OBJECTDIR}/_ext/1527291256/sys_clk_pic32mz.o ../src/system_config/pic32mz_ef_sk_udp_led3/framework/system/clk/src/sys_clk_pic32mz.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1697442161/sys_devcon.o: ../src/system_config/pic32mz_ef_sk_udp_led3/framework/system/devcon/src/sys_devcon.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/8054fb7216045b16a40c21e43b79890c07f0377 .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1697442161" 
	@${RM} ${OBJECTDIR}/_ext/1697442161/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/1697442161/sys_devcon.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1697442161/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/1697442161/sys_devcon.o ../src/system_config/pic32mz_ef_sk_udp_led3/framework/system/devcon/src/sys_devcon.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1697442161/sys_devcon_pic32mz.o: ../src/system_config/pic32mz_ef_sk_udp_led3/framework/system/devcon/src/sys_devcon_pic32mz.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/a6650589e66add3faa177cf11add24563e425547 .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1697442161" 
	@${RM} ${OBJECTDIR}/_ext/1697442161/sys_devcon_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/1697442161/sys_devcon_pic32mz.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1697442161/sys_devcon_pic32mz.o.d" -o ${OBJECTDIR}/_ext/1697442161/sys_devcon_pic32mz.o ../src/system_config/pic32mz_ef_sk_udp_led3/framework/system/devcon/src/sys_devcon_pic32mz.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/340664008/sys_ports_static.o: ../src/system_config/pic32mz_ef_sk_udp_led3/framework/system/ports/src/sys_ports_static.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/9c3c5c830b484a9ac976d37df62a1206665494bd .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/340664008" 
	@${RM} ${OBJECTDIR}/_ext/340664008/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/340664008/sys_ports_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/340664008/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/340664008/sys_ports_static.o ../src/system_config/pic32mz_ef_sk_udp_led3/framework/system/ports/src/sys_ports_static.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/550150133/sys_reset.o: ../src/system_config/pic32mz_ef_sk_udp_led3/framework/system/reset/src/sys_reset.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/426d8d9d470f80e6fea3dfd2e7f489dcdb629409 .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/550150133" 
	@${RM} ${OBJECTDIR}/_ext/550150133/sys_reset.o.d 
	@${RM} ${OBJECTDIR}/_ext/550150133/sys_reset.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/550150133/sys_reset.o.d" -o ${OBJECTDIR}/_ext/550150133/sys_reset.o ../src/system_config/pic32mz_ef_sk_udp_led3/framework/system/reset/src/sys_reset.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/763640961/bsp.o: ../src/system_config/pic32mz_ef_sk_udp_led3/bsp/bsp.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/a27e2ab3b2bcc47eda34cc66c551d5699a7b885c .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/763640961" 
	@${RM} ${OBJECTDIR}/_ext/763640961/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/763640961/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/763640961/bsp.o.d" -o ${OBJECTDIR}/_ext/763640961/bsp.o ../src/system_config/pic32mz_ef_sk_udp_led3/bsp/bsp.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2079795023/system_init.o: ../src/system_config/pic32mz_ef_sk_udp_led3/system_init.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/c247f1f3453bee5a80b0029aa6861859511259eb .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/2079795023" 
	@${RM} ${OBJECTDIR}/_ext/2079795023/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/2079795023/system_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2079795023/system_init.o.d" -o ${OBJECTDIR}/_ext/2079795023/system_init.o ../src/system_config/pic32mz_ef_sk_udp_led3/system_init.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2079795023/system_interrupt.o: ../src/system_config/pic32mz_ef_sk_udp_led3/system_interrupt.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/acf7b46d84397b0adbd2337f6f9d113ea70bde28 .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/2079795023" 
	@${RM} ${OBJECTDIR}/_ext/2079795023/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/2079795023/system_interrupt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2079795023/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/2079795023/system_interrupt.o ../src/system_config/pic32mz_ef_sk_udp_led3/system_interrupt.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2079795023/system_exceptions.o: ../src/system_config/pic32mz_ef_sk_udp_led3/system_exceptions.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/c3ed833d1ccca8e34ec108a8d569a2707a8e0ae4 .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/2079795023" 
	@${RM} ${OBJECTDIR}/_ext/2079795023/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/2079795023/system_exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2079795023/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/2079795023/system_exceptions.o ../src/system_config/pic32mz_ef_sk_udp_led3/system_exceptions.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2079795023/system_tasks.o: ../src/system_config/pic32mz_ef_sk_udp_led3/system_tasks.c  .generated_files/flags/pic32mz_ef_sk_udp_led3/7e2f21744d1e7ad836f459946595fa78ac4a5e03 .generated_files/flags/pic32mz_ef_sk_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/2079795023" 
	@${RM} ${OBJECTDIR}/_ext/2079795023/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/2079795023/system_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_ef_sk_udp_led3" -I"../src/pic32mz_ef_sk_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/framework" -I"../src/system_config/pic32mz_ef_sk_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2079795023/system_tasks.o.d" -o ${OBJECTDIR}/_ext/2079795023/system_tasks.o ../src/system_config/pic32mz_ef_sk_udp_led3/system_tasks.c    -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/LiveUpdate_App.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../../../bin/framework/peripheral/PIC32MZ2048EFM144_peripherals.a  ../src/system_config/pic32mz_ef_sk_udp_led3/app_mz.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/LiveUpdate_App.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\..\..\..\..\..\bin\framework\peripheral\PIC32MZ2048EFM144_peripherals.a      -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x37F   -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_PK3=1,--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/LiveUpdate_App.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../../../bin/framework/peripheral/PIC32MZ2048EFM144_peripherals.a ../src/system_config/pic32mz_ef_sk_udp_led3/app_mz.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/LiveUpdate_App.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\..\..\..\..\..\bin\framework\peripheral\PIC32MZ2048EFM144_peripherals.a      -DXPRJ_pic32mz_ef_sk_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/LiveUpdate_App.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
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
