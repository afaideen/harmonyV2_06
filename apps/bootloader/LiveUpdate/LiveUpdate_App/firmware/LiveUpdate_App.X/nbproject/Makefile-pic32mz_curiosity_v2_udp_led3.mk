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
ifeq "$(wildcard nbproject/Makefile-local-pic32mz_curiosity_v2_udp_led3.mk)" "nbproject/Makefile-local-pic32mz_curiosity_v2_udp_led3.mk"
include nbproject/Makefile-local-pic32mz_curiosity_v2_udp_led3.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=pic32mz_curiosity_v2_udp_led3
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
SOURCEFILES_QUOTED_IF_SPACED=../src/app.c ../src/main.c D:/Microchip/harmony/v2_06/apps/bootloader/LiveUpdate/LiveUpdate_App/firmware/src/app_helper.c ../../../../../../framework/bootloader/src/datastream/datastream.c ../../../../../../framework/bootloader/src/datastream/datastream_udp.c ../../../../../../framework/bootloader/src/bootloader.c ../../../../../../framework/bootloader/src/nvm.c ../../../../../../framework/driver/ethmac/src/dynamic/drv_ethmac.c ../../../../../../framework/driver/ethmac/src/dynamic/drv_ethmac_lib.c ../../../../../../framework/driver/ethphy/src/dynamic/drv_ethphy.c ../../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c ../../../../../../framework/system/int/src/sys_int_pic32.c ../../../../../../framework/system/random/src/sys_random.c ../../../../../../framework/system/tmr/src/sys_tmr.c ../../../../../../framework/tcpip/src/common/helpers.c ../../../../../../framework/tcpip/src/ipv4.c ../../../../../../framework/tcpip/src/udp.c ../../../../../../framework/tcpip/src/tcpip_heap_alloc.c ../../../../../../framework/tcpip/src/tcpip_heap_internal.c ../../../../../../framework/tcpip/src/arp.c ../../../../../../framework/tcpip/src/dhcp.c ../../../../../../framework/tcpip/src/dns.c ../../../../../../framework/tcpip/src/hash_fnv.c ../../../../../../framework/tcpip/src/oahash.c ../../../../../../framework/tcpip/src/tcpip_helpers.c ../../../../../../framework/tcpip/src/tcpip_helper_c32.S ../../../../../../framework/tcpip/src/tcpip_manager.c ../../../../../../framework/tcpip/src/tcpip_notify.c ../../../../../../framework/tcpip/src/tcpip_packet.c ../../../../../../framework/driver/ethphy/src/dynamic/drv_extphy_ksz8061.c ../../../../../../framework/driver/miim/src/dynamic/drv_miim.c ../../../../../../framework/system/common/src/sys_buffer.c ../../../../../../framework/system/common/src/sys_queue.c ../../../../../../framework/system/devcon/src/sys_devcon.c ../../../../../../framework/system/devcon/src/sys_devcon_pic32mz.c ../../../../../../framework/system/devcon/src/sys_devcon_cache_pic32mz.S ../../../../../../framework/system/command/src/sys_command.c ../../../../../../framework/system/console/src/sys_console.c ../../../../../../framework/system/console/src/sys_console_usb_cdc.c ../../../../../../framework/system/debug/src/sys_debug.c ../../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs.c ../../../../../../framework/usb/src/dynamic/usb_device.c ../../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs_device.c ../../../../../../framework/usb/src/dynamic/usb_device_cdc.c ../../../../../../framework/usb/src/dynamic/usb_device_cdc_acm.c ../src/system_config/pic32mz_curiosity_v2_udp_led3/framework/system/clk/src/sys_clk_pic32mz.c ../src/system_config/pic32mz_curiosity_v2_udp_led3/framework/system/ports/src/sys_ports_static.c ../src/system_config/pic32mz_curiosity_v2_udp_led3/framework/system/reset/src/sys_reset.c ../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp/bsp.c ../src/system_config/pic32mz_curiosity_v2_udp_led3/system_init.c ../src/system_config/pic32mz_curiosity_v2_udp_led3/system_interrupt.c ../src/system_config/pic32mz_curiosity_v2_udp_led3/system_exceptions.c ../src/system_config/pic32mz_curiosity_v2_udp_led3/system_tasks.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1467197364/app_helper.o ${OBJECTDIR}/_ext/682638542/datastream.o ${OBJECTDIR}/_ext/682638542/datastream_udp.o ${OBJECTDIR}/_ext/1854679915/bootloader.o ${OBJECTDIR}/_ext/1854679915/nvm.o ${OBJECTDIR}/_ext/1764881201/drv_ethmac.o ${OBJECTDIR}/_ext/1764881201/drv_ethmac_lib.o ${OBJECTDIR}/_ext/588727395/drv_ethphy.o ${OBJECTDIR}/_ext/1152366776/drv_tmr.o ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o ${OBJECTDIR}/_ext/899838009/sys_random.o ${OBJECTDIR}/_ext/430974239/sys_tmr.o ${OBJECTDIR}/_ext/593738990/helpers.o ${OBJECTDIR}/_ext/1833714580/ipv4.o ${OBJECTDIR}/_ext/1833714580/udp.o ${OBJECTDIR}/_ext/1833714580/tcpip_heap_alloc.o ${OBJECTDIR}/_ext/1833714580/tcpip_heap_internal.o ${OBJECTDIR}/_ext/1833714580/arp.o ${OBJECTDIR}/_ext/1833714580/dhcp.o ${OBJECTDIR}/_ext/1833714580/dns.o ${OBJECTDIR}/_ext/1833714580/hash_fnv.o ${OBJECTDIR}/_ext/1833714580/oahash.o ${OBJECTDIR}/_ext/1833714580/tcpip_helpers.o ${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o ${OBJECTDIR}/_ext/1833714580/tcpip_manager.o ${OBJECTDIR}/_ext/1833714580/tcpip_notify.o ${OBJECTDIR}/_ext/1833714580/tcpip_packet.o ${OBJECTDIR}/_ext/588727395/drv_extphy_ksz8061.o ${OBJECTDIR}/_ext/572279899/drv_miim.o ${OBJECTDIR}/_ext/169017583/sys_buffer.o ${OBJECTDIR}/_ext/169017583/sys_queue.o ${OBJECTDIR}/_ext/912498863/sys_devcon.o ${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mz.o ${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o ${OBJECTDIR}/_ext/1451350481/sys_command.o ${OBJECTDIR}/_ext/994638301/sys_console.o ${OBJECTDIR}/_ext/994638301/sys_console_usb_cdc.o ${OBJECTDIR}/_ext/322127129/sys_debug.o ${OBJECTDIR}/_ext/1698770803/drv_usbhs.o ${OBJECTDIR}/_ext/692885480/usb_device.o ${OBJECTDIR}/_ext/1698770803/drv_usbhs_device.o ${OBJECTDIR}/_ext/692885480/usb_device_cdc.o ${OBJECTDIR}/_ext/692885480/usb_device_cdc_acm.o ${OBJECTDIR}/_ext/1428938804/sys_clk_pic32mz.o ${OBJECTDIR}/_ext/313238148/sys_ports_static.o ${OBJECTDIR}/_ext/577575993/sys_reset.o ${OBJECTDIR}/_ext/1428765765/bsp.o ${OBJECTDIR}/_ext/2138285451/system_init.o ${OBJECTDIR}/_ext/2138285451/system_interrupt.o ${OBJECTDIR}/_ext/2138285451/system_exceptions.o ${OBJECTDIR}/_ext/2138285451/system_tasks.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1360937237/app.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1467197364/app_helper.o.d ${OBJECTDIR}/_ext/682638542/datastream.o.d ${OBJECTDIR}/_ext/682638542/datastream_udp.o.d ${OBJECTDIR}/_ext/1854679915/bootloader.o.d ${OBJECTDIR}/_ext/1854679915/nvm.o.d ${OBJECTDIR}/_ext/1764881201/drv_ethmac.o.d ${OBJECTDIR}/_ext/1764881201/drv_ethmac_lib.o.d ${OBJECTDIR}/_ext/588727395/drv_ethphy.o.d ${OBJECTDIR}/_ext/1152366776/drv_tmr.o.d ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o.d ${OBJECTDIR}/_ext/899838009/sys_random.o.d ${OBJECTDIR}/_ext/430974239/sys_tmr.o.d ${OBJECTDIR}/_ext/593738990/helpers.o.d ${OBJECTDIR}/_ext/1833714580/ipv4.o.d ${OBJECTDIR}/_ext/1833714580/udp.o.d ${OBJECTDIR}/_ext/1833714580/tcpip_heap_alloc.o.d ${OBJECTDIR}/_ext/1833714580/tcpip_heap_internal.o.d ${OBJECTDIR}/_ext/1833714580/arp.o.d ${OBJECTDIR}/_ext/1833714580/dhcp.o.d ${OBJECTDIR}/_ext/1833714580/dns.o.d ${OBJECTDIR}/_ext/1833714580/hash_fnv.o.d ${OBJECTDIR}/_ext/1833714580/oahash.o.d ${OBJECTDIR}/_ext/1833714580/tcpip_helpers.o.d ${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o.d ${OBJECTDIR}/_ext/1833714580/tcpip_manager.o.d ${OBJECTDIR}/_ext/1833714580/tcpip_notify.o.d ${OBJECTDIR}/_ext/1833714580/tcpip_packet.o.d ${OBJECTDIR}/_ext/588727395/drv_extphy_ksz8061.o.d ${OBJECTDIR}/_ext/572279899/drv_miim.o.d ${OBJECTDIR}/_ext/169017583/sys_buffer.o.d ${OBJECTDIR}/_ext/169017583/sys_queue.o.d ${OBJECTDIR}/_ext/912498863/sys_devcon.o.d ${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mz.o.d ${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o.d ${OBJECTDIR}/_ext/1451350481/sys_command.o.d ${OBJECTDIR}/_ext/994638301/sys_console.o.d ${OBJECTDIR}/_ext/994638301/sys_console_usb_cdc.o.d ${OBJECTDIR}/_ext/322127129/sys_debug.o.d ${OBJECTDIR}/_ext/1698770803/drv_usbhs.o.d ${OBJECTDIR}/_ext/692885480/usb_device.o.d ${OBJECTDIR}/_ext/1698770803/drv_usbhs_device.o.d ${OBJECTDIR}/_ext/692885480/usb_device_cdc.o.d ${OBJECTDIR}/_ext/692885480/usb_device_cdc_acm.o.d ${OBJECTDIR}/_ext/1428938804/sys_clk_pic32mz.o.d ${OBJECTDIR}/_ext/313238148/sys_ports_static.o.d ${OBJECTDIR}/_ext/577575993/sys_reset.o.d ${OBJECTDIR}/_ext/1428765765/bsp.o.d ${OBJECTDIR}/_ext/2138285451/system_init.o.d ${OBJECTDIR}/_ext/2138285451/system_interrupt.o.d ${OBJECTDIR}/_ext/2138285451/system_exceptions.o.d ${OBJECTDIR}/_ext/2138285451/system_tasks.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1467197364/app_helper.o ${OBJECTDIR}/_ext/682638542/datastream.o ${OBJECTDIR}/_ext/682638542/datastream_udp.o ${OBJECTDIR}/_ext/1854679915/bootloader.o ${OBJECTDIR}/_ext/1854679915/nvm.o ${OBJECTDIR}/_ext/1764881201/drv_ethmac.o ${OBJECTDIR}/_ext/1764881201/drv_ethmac_lib.o ${OBJECTDIR}/_ext/588727395/drv_ethphy.o ${OBJECTDIR}/_ext/1152366776/drv_tmr.o ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o ${OBJECTDIR}/_ext/899838009/sys_random.o ${OBJECTDIR}/_ext/430974239/sys_tmr.o ${OBJECTDIR}/_ext/593738990/helpers.o ${OBJECTDIR}/_ext/1833714580/ipv4.o ${OBJECTDIR}/_ext/1833714580/udp.o ${OBJECTDIR}/_ext/1833714580/tcpip_heap_alloc.o ${OBJECTDIR}/_ext/1833714580/tcpip_heap_internal.o ${OBJECTDIR}/_ext/1833714580/arp.o ${OBJECTDIR}/_ext/1833714580/dhcp.o ${OBJECTDIR}/_ext/1833714580/dns.o ${OBJECTDIR}/_ext/1833714580/hash_fnv.o ${OBJECTDIR}/_ext/1833714580/oahash.o ${OBJECTDIR}/_ext/1833714580/tcpip_helpers.o ${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o ${OBJECTDIR}/_ext/1833714580/tcpip_manager.o ${OBJECTDIR}/_ext/1833714580/tcpip_notify.o ${OBJECTDIR}/_ext/1833714580/tcpip_packet.o ${OBJECTDIR}/_ext/588727395/drv_extphy_ksz8061.o ${OBJECTDIR}/_ext/572279899/drv_miim.o ${OBJECTDIR}/_ext/169017583/sys_buffer.o ${OBJECTDIR}/_ext/169017583/sys_queue.o ${OBJECTDIR}/_ext/912498863/sys_devcon.o ${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mz.o ${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o ${OBJECTDIR}/_ext/1451350481/sys_command.o ${OBJECTDIR}/_ext/994638301/sys_console.o ${OBJECTDIR}/_ext/994638301/sys_console_usb_cdc.o ${OBJECTDIR}/_ext/322127129/sys_debug.o ${OBJECTDIR}/_ext/1698770803/drv_usbhs.o ${OBJECTDIR}/_ext/692885480/usb_device.o ${OBJECTDIR}/_ext/1698770803/drv_usbhs_device.o ${OBJECTDIR}/_ext/692885480/usb_device_cdc.o ${OBJECTDIR}/_ext/692885480/usb_device_cdc_acm.o ${OBJECTDIR}/_ext/1428938804/sys_clk_pic32mz.o ${OBJECTDIR}/_ext/313238148/sys_ports_static.o ${OBJECTDIR}/_ext/577575993/sys_reset.o ${OBJECTDIR}/_ext/1428765765/bsp.o ${OBJECTDIR}/_ext/2138285451/system_init.o ${OBJECTDIR}/_ext/2138285451/system_interrupt.o ${OBJECTDIR}/_ext/2138285451/system_exceptions.o ${OBJECTDIR}/_ext/2138285451/system_tasks.o

# Source Files
SOURCEFILES=../src/app.c ../src/main.c D:/Microchip/harmony/v2_06/apps/bootloader/LiveUpdate/LiveUpdate_App/firmware/src/app_helper.c ../../../../../../framework/bootloader/src/datastream/datastream.c ../../../../../../framework/bootloader/src/datastream/datastream_udp.c ../../../../../../framework/bootloader/src/bootloader.c ../../../../../../framework/bootloader/src/nvm.c ../../../../../../framework/driver/ethmac/src/dynamic/drv_ethmac.c ../../../../../../framework/driver/ethmac/src/dynamic/drv_ethmac_lib.c ../../../../../../framework/driver/ethphy/src/dynamic/drv_ethphy.c ../../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c ../../../../../../framework/system/int/src/sys_int_pic32.c ../../../../../../framework/system/random/src/sys_random.c ../../../../../../framework/system/tmr/src/sys_tmr.c ../../../../../../framework/tcpip/src/common/helpers.c ../../../../../../framework/tcpip/src/ipv4.c ../../../../../../framework/tcpip/src/udp.c ../../../../../../framework/tcpip/src/tcpip_heap_alloc.c ../../../../../../framework/tcpip/src/tcpip_heap_internal.c ../../../../../../framework/tcpip/src/arp.c ../../../../../../framework/tcpip/src/dhcp.c ../../../../../../framework/tcpip/src/dns.c ../../../../../../framework/tcpip/src/hash_fnv.c ../../../../../../framework/tcpip/src/oahash.c ../../../../../../framework/tcpip/src/tcpip_helpers.c ../../../../../../framework/tcpip/src/tcpip_helper_c32.S ../../../../../../framework/tcpip/src/tcpip_manager.c ../../../../../../framework/tcpip/src/tcpip_notify.c ../../../../../../framework/tcpip/src/tcpip_packet.c ../../../../../../framework/driver/ethphy/src/dynamic/drv_extphy_ksz8061.c ../../../../../../framework/driver/miim/src/dynamic/drv_miim.c ../../../../../../framework/system/common/src/sys_buffer.c ../../../../../../framework/system/common/src/sys_queue.c ../../../../../../framework/system/devcon/src/sys_devcon.c ../../../../../../framework/system/devcon/src/sys_devcon_pic32mz.c ../../../../../../framework/system/devcon/src/sys_devcon_cache_pic32mz.S ../../../../../../framework/system/command/src/sys_command.c ../../../../../../framework/system/console/src/sys_console.c ../../../../../../framework/system/console/src/sys_console_usb_cdc.c ../../../../../../framework/system/debug/src/sys_debug.c ../../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs.c ../../../../../../framework/usb/src/dynamic/usb_device.c ../../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs_device.c ../../../../../../framework/usb/src/dynamic/usb_device_cdc.c ../../../../../../framework/usb/src/dynamic/usb_device_cdc_acm.c ../src/system_config/pic32mz_curiosity_v2_udp_led3/framework/system/clk/src/sys_clk_pic32mz.c ../src/system_config/pic32mz_curiosity_v2_udp_led3/framework/system/ports/src/sys_ports_static.c ../src/system_config/pic32mz_curiosity_v2_udp_led3/framework/system/reset/src/sys_reset.c ../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp/bsp.c ../src/system_config/pic32mz_curiosity_v2_udp_led3/system_init.c ../src/system_config/pic32mz_curiosity_v2_udp_led3/system_interrupt.c ../src/system_config/pic32mz_curiosity_v2_udp_led3/system_exceptions.c ../src/system_config/pic32mz_curiosity_v2_udp_led3/system_tasks.c



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
	${MAKE}  -f nbproject/Makefile-pic32mz_curiosity_v2_udp_led3.mk ${DISTDIR}/LiveUpdate_App.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MZ2048EFM144
MP_LINKER_FILE_OPTION=,--script="..\src\system_config\pic32mz_curiosity_v2_udp_led3\app_mz.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o: ../../../../../../framework/tcpip/src/tcpip_helper_c32.S  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/5db30516260ac7fc70c1b8c147f45e5475f1c815 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o.ok ${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o.d"  -o ${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o ../../../../../../framework/tcpip/src/tcpip_helper_c32.S  -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o.d" "${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o: ../../../../../../framework/system/devcon/src/sys_devcon_cache_pic32mz.S  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/472e72a9dedfde3140f24eb46fc6c55fccec01f3 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/912498863" 
	@${RM} ${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o 
	@${RM} ${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o.ok ${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o.d"  -o ${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o ../../../../../../framework/system/devcon/src/sys_devcon_cache_pic32mz.S  -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o.d" "${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o: ../../../../../../framework/tcpip/src/tcpip_helper_c32.S  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/ea2dcdbb0272863fc020695c97dee43f6bc04cb2 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o.ok ${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o.d"  -o ${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o ../../../../../../framework/tcpip/src/tcpip_helper_c32.S  -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o.asm.d",--gdwarf-2 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o.d" "${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o: ../../../../../../framework/system/devcon/src/sys_devcon_cache_pic32mz.S  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/5f08abf6e2f035038f4cff8f85a45adf5d72759b .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/912498863" 
	@${RM} ${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o 
	@${RM} ${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o.ok ${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o.d"  -o ${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o ../../../../../../framework/system/devcon/src/sys_devcon_cache_pic32mz.S  -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o.asm.d",--gdwarf-2 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o.d" "${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/43023cf52d4b373c5c29a74c490cd93b5eb1cb6 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/ade929b518f35cd04f3045e3ac29f634087a7dc3 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1467197364/app_helper.o: D:/Microchip/harmony/v2_06/apps/bootloader/LiveUpdate/LiveUpdate_App/firmware/src/app_helper.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/2911ad4ade19484724529e00c6c32678f33a1e8a .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1467197364" 
	@${RM} ${OBJECTDIR}/_ext/1467197364/app_helper.o.d 
	@${RM} ${OBJECTDIR}/_ext/1467197364/app_helper.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1467197364/app_helper.o.d" -o ${OBJECTDIR}/_ext/1467197364/app_helper.o D:/Microchip/harmony/v2_06/apps/bootloader/LiveUpdate/LiveUpdate_App/firmware/src/app_helper.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/682638542/datastream.o: ../../../../../../framework/bootloader/src/datastream/datastream.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/cdce8a312939cf60037988d44d6fc4f499b8407a .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/682638542" 
	@${RM} ${OBJECTDIR}/_ext/682638542/datastream.o.d 
	@${RM} ${OBJECTDIR}/_ext/682638542/datastream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/682638542/datastream.o.d" -o ${OBJECTDIR}/_ext/682638542/datastream.o ../../../../../../framework/bootloader/src/datastream/datastream.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/682638542/datastream_udp.o: ../../../../../../framework/bootloader/src/datastream/datastream_udp.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/2f151fad771723746c85497d0ab335b9749076f .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/682638542" 
	@${RM} ${OBJECTDIR}/_ext/682638542/datastream_udp.o.d 
	@${RM} ${OBJECTDIR}/_ext/682638542/datastream_udp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/682638542/datastream_udp.o.d" -o ${OBJECTDIR}/_ext/682638542/datastream_udp.o ../../../../../../framework/bootloader/src/datastream/datastream_udp.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854679915/bootloader.o: ../../../../../../framework/bootloader/src/bootloader.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/36953843e4126946599b3f8ed5ab3df5bca88a6b .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1854679915" 
	@${RM} ${OBJECTDIR}/_ext/1854679915/bootloader.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854679915/bootloader.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1854679915/bootloader.o.d" -o ${OBJECTDIR}/_ext/1854679915/bootloader.o ../../../../../../framework/bootloader/src/bootloader.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854679915/nvm.o: ../../../../../../framework/bootloader/src/nvm.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/27abeebb3f3d27ce6550f435b69ba87268a8d3a4 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1854679915" 
	@${RM} ${OBJECTDIR}/_ext/1854679915/nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854679915/nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1854679915/nvm.o.d" -o ${OBJECTDIR}/_ext/1854679915/nvm.o ../../../../../../framework/bootloader/src/nvm.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1764881201/drv_ethmac.o: ../../../../../../framework/driver/ethmac/src/dynamic/drv_ethmac.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/2a18e07838e53856fcb6228724a11fc7a67d273f .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1764881201" 
	@${RM} ${OBJECTDIR}/_ext/1764881201/drv_ethmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1764881201/drv_ethmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1764881201/drv_ethmac.o.d" -o ${OBJECTDIR}/_ext/1764881201/drv_ethmac.o ../../../../../../framework/driver/ethmac/src/dynamic/drv_ethmac.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1764881201/drv_ethmac_lib.o: ../../../../../../framework/driver/ethmac/src/dynamic/drv_ethmac_lib.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/f9d11067ceaec5410e86db923959a4a6561b637a .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1764881201" 
	@${RM} ${OBJECTDIR}/_ext/1764881201/drv_ethmac_lib.o.d 
	@${RM} ${OBJECTDIR}/_ext/1764881201/drv_ethmac_lib.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1764881201/drv_ethmac_lib.o.d" -o ${OBJECTDIR}/_ext/1764881201/drv_ethmac_lib.o ../../../../../../framework/driver/ethmac/src/dynamic/drv_ethmac_lib.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/588727395/drv_ethphy.o: ../../../../../../framework/driver/ethphy/src/dynamic/drv_ethphy.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/66e4c742fc55825ea88fd022cec7fb71100c0948 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/588727395" 
	@${RM} ${OBJECTDIR}/_ext/588727395/drv_ethphy.o.d 
	@${RM} ${OBJECTDIR}/_ext/588727395/drv_ethphy.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/588727395/drv_ethphy.o.d" -o ${OBJECTDIR}/_ext/588727395/drv_ethphy.o ../../../../../../framework/driver/ethphy/src/dynamic/drv_ethphy.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1152366776/drv_tmr.o: ../../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/8dfa03ae71b0d8bb3a62239609bc1037a759c93 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1152366776" 
	@${RM} ${OBJECTDIR}/_ext/1152366776/drv_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1152366776/drv_tmr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1152366776/drv_tmr.o.d" -o ${OBJECTDIR}/_ext/1152366776/drv_tmr.o ../../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/711155467/sys_int_pic32.o: ../../../../../../framework/system/int/src/sys_int_pic32.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/5b360d1f35bbdc74543bd5cecbf913805b8786a2 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/711155467" 
	@${RM} ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/711155467/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o ../../../../../../framework/system/int/src/sys_int_pic32.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/899838009/sys_random.o: ../../../../../../framework/system/random/src/sys_random.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/752a533517e7a2cc0228f92d8388a1bc4dc43c40 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/899838009" 
	@${RM} ${OBJECTDIR}/_ext/899838009/sys_random.o.d 
	@${RM} ${OBJECTDIR}/_ext/899838009/sys_random.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/899838009/sys_random.o.d" -o ${OBJECTDIR}/_ext/899838009/sys_random.o ../../../../../../framework/system/random/src/sys_random.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/430974239/sys_tmr.o: ../../../../../../framework/system/tmr/src/sys_tmr.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/7bdcfee173b63eea802a6f648b7d9c8ce4d980b7 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/430974239" 
	@${RM} ${OBJECTDIR}/_ext/430974239/sys_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/430974239/sys_tmr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/430974239/sys_tmr.o.d" -o ${OBJECTDIR}/_ext/430974239/sys_tmr.o ../../../../../../framework/system/tmr/src/sys_tmr.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/593738990/helpers.o: ../../../../../../framework/tcpip/src/common/helpers.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/2a2ee7617b21d6039606ce016ad5c3bdf76e08a6 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/593738990" 
	@${RM} ${OBJECTDIR}/_ext/593738990/helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/593738990/helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/593738990/helpers.o.d" -o ${OBJECTDIR}/_ext/593738990/helpers.o ../../../../../../framework/tcpip/src/common/helpers.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/ipv4.o: ../../../../../../framework/tcpip/src/ipv4.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/abf09776c3008df8eb4bf725551e5bf7e09a322b .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/ipv4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/ipv4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/ipv4.o.d" -o ${OBJECTDIR}/_ext/1833714580/ipv4.o ../../../../../../framework/tcpip/src/ipv4.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/udp.o: ../../../../../../framework/tcpip/src/udp.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/5aa42b55ed8384779b60fa5d6930acc6c5e1b188 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/udp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/udp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/udp.o.d" -o ${OBJECTDIR}/_ext/1833714580/udp.o ../../../../../../framework/tcpip/src/udp.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/tcpip_heap_alloc.o: ../../../../../../framework/tcpip/src/tcpip_heap_alloc.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/3bc98c0d5c7e8f09a24fce7a8d337fcef22398f1 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_heap_alloc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_heap_alloc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/tcpip_heap_alloc.o.d" -o ${OBJECTDIR}/_ext/1833714580/tcpip_heap_alloc.o ../../../../../../framework/tcpip/src/tcpip_heap_alloc.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/tcpip_heap_internal.o: ../../../../../../framework/tcpip/src/tcpip_heap_internal.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/cf72d33306d89ae28276db986f9602f386c25545 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_heap_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_heap_internal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/tcpip_heap_internal.o.d" -o ${OBJECTDIR}/_ext/1833714580/tcpip_heap_internal.o ../../../../../../framework/tcpip/src/tcpip_heap_internal.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/arp.o: ../../../../../../framework/tcpip/src/arp.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/467cc27468f89bfec19aef9b657275cf0bb64761 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/arp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/arp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/arp.o.d" -o ${OBJECTDIR}/_ext/1833714580/arp.o ../../../../../../framework/tcpip/src/arp.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/dhcp.o: ../../../../../../framework/tcpip/src/dhcp.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/5c392366df3d12b8b203f2805ba420fe48a52e6d .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/dhcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/dhcp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/dhcp.o.d" -o ${OBJECTDIR}/_ext/1833714580/dhcp.o ../../../../../../framework/tcpip/src/dhcp.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/dns.o: ../../../../../../framework/tcpip/src/dns.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/ac10a4184ef54dbb07bfb723b84460970354df10 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/dns.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/dns.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/dns.o.d" -o ${OBJECTDIR}/_ext/1833714580/dns.o ../../../../../../framework/tcpip/src/dns.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/hash_fnv.o: ../../../../../../framework/tcpip/src/hash_fnv.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/83b1b9729cddf89e464d6177570950e40d27bce0 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/hash_fnv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/hash_fnv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/hash_fnv.o.d" -o ${OBJECTDIR}/_ext/1833714580/hash_fnv.o ../../../../../../framework/tcpip/src/hash_fnv.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/oahash.o: ../../../../../../framework/tcpip/src/oahash.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/c5eff62454a56982219499ea0bbf29366334a5b4 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/oahash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/oahash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/oahash.o.d" -o ${OBJECTDIR}/_ext/1833714580/oahash.o ../../../../../../framework/tcpip/src/oahash.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/tcpip_helpers.o: ../../../../../../framework/tcpip/src/tcpip_helpers.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/c674924edd0d3b7aaeec6c3bdd65d0daadc4b99c .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/tcpip_helpers.o.d" -o ${OBJECTDIR}/_ext/1833714580/tcpip_helpers.o ../../../../../../framework/tcpip/src/tcpip_helpers.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/tcpip_manager.o: ../../../../../../framework/tcpip/src/tcpip_manager.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/664cb832cfa34c7ec6756cde4243cd23681b9e2 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/tcpip_manager.o.d" -o ${OBJECTDIR}/_ext/1833714580/tcpip_manager.o ../../../../../../framework/tcpip/src/tcpip_manager.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/tcpip_notify.o: ../../../../../../framework/tcpip/src/tcpip_notify.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/e77d04c49abdbe46e1b66c76a52072a257180ebc .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_notify.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_notify.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/tcpip_notify.o.d" -o ${OBJECTDIR}/_ext/1833714580/tcpip_notify.o ../../../../../../framework/tcpip/src/tcpip_notify.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/tcpip_packet.o: ../../../../../../framework/tcpip/src/tcpip_packet.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/4415da410c8b7430a6a3d7efdc4841ae1aa73fbe .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_packet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_packet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/tcpip_packet.o.d" -o ${OBJECTDIR}/_ext/1833714580/tcpip_packet.o ../../../../../../framework/tcpip/src/tcpip_packet.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/588727395/drv_extphy_ksz8061.o: ../../../../../../framework/driver/ethphy/src/dynamic/drv_extphy_ksz8061.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/183396f74200c6de5af192af22f31e8b0ba2450e .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/588727395" 
	@${RM} ${OBJECTDIR}/_ext/588727395/drv_extphy_ksz8061.o.d 
	@${RM} ${OBJECTDIR}/_ext/588727395/drv_extphy_ksz8061.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/588727395/drv_extphy_ksz8061.o.d" -o ${OBJECTDIR}/_ext/588727395/drv_extphy_ksz8061.o ../../../../../../framework/driver/ethphy/src/dynamic/drv_extphy_ksz8061.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/572279899/drv_miim.o: ../../../../../../framework/driver/miim/src/dynamic/drv_miim.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/9ff2fcfbf234e4b87463cf18e6ebe1fa9fd51cc2 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/572279899" 
	@${RM} ${OBJECTDIR}/_ext/572279899/drv_miim.o.d 
	@${RM} ${OBJECTDIR}/_ext/572279899/drv_miim.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/572279899/drv_miim.o.d" -o ${OBJECTDIR}/_ext/572279899/drv_miim.o ../../../../../../framework/driver/miim/src/dynamic/drv_miim.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/169017583/sys_buffer.o: ../../../../../../framework/system/common/src/sys_buffer.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/ada83857cc0efb2999b04dea23bbe71b911ce7b4 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/169017583" 
	@${RM} ${OBJECTDIR}/_ext/169017583/sys_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/169017583/sys_buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/169017583/sys_buffer.o.d" -o ${OBJECTDIR}/_ext/169017583/sys_buffer.o ../../../../../../framework/system/common/src/sys_buffer.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/169017583/sys_queue.o: ../../../../../../framework/system/common/src/sys_queue.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/dc3482cc9cf615d872898fa7483c34153fa26be5 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/169017583" 
	@${RM} ${OBJECTDIR}/_ext/169017583/sys_queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/169017583/sys_queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/169017583/sys_queue.o.d" -o ${OBJECTDIR}/_ext/169017583/sys_queue.o ../../../../../../framework/system/common/src/sys_queue.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/912498863/sys_devcon.o: ../../../../../../framework/system/devcon/src/sys_devcon.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/dd1fc01882f94137e5261bc41c42c9c84c231647 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/912498863" 
	@${RM} ${OBJECTDIR}/_ext/912498863/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/912498863/sys_devcon.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/912498863/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/912498863/sys_devcon.o ../../../../../../framework/system/devcon/src/sys_devcon.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mz.o: ../../../../../../framework/system/devcon/src/sys_devcon_pic32mz.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/5cc39f262b04988271c2898c5e613a177b40c0a1 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/912498863" 
	@${RM} ${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mz.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mz.o.d" -o ${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mz.o ../../../../../../framework/system/devcon/src/sys_devcon_pic32mz.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1451350481/sys_command.o: ../../../../../../framework/system/command/src/sys_command.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/67fda4277866642c5e3cdb12ff219738fde37526 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1451350481" 
	@${RM} ${OBJECTDIR}/_ext/1451350481/sys_command.o.d 
	@${RM} ${OBJECTDIR}/_ext/1451350481/sys_command.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1451350481/sys_command.o.d" -o ${OBJECTDIR}/_ext/1451350481/sys_command.o ../../../../../../framework/system/command/src/sys_command.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/994638301/sys_console.o: ../../../../../../framework/system/console/src/sys_console.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/7323ceffd7e2ede81098686fc825d52eb23f949c .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/994638301" 
	@${RM} ${OBJECTDIR}/_ext/994638301/sys_console.o.d 
	@${RM} ${OBJECTDIR}/_ext/994638301/sys_console.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/994638301/sys_console.o.d" -o ${OBJECTDIR}/_ext/994638301/sys_console.o ../../../../../../framework/system/console/src/sys_console.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/994638301/sys_console_usb_cdc.o: ../../../../../../framework/system/console/src/sys_console_usb_cdc.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/5327e0f35ee03da71247ec44bb1a0be653d6e342 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/994638301" 
	@${RM} ${OBJECTDIR}/_ext/994638301/sys_console_usb_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/994638301/sys_console_usb_cdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/994638301/sys_console_usb_cdc.o.d" -o ${OBJECTDIR}/_ext/994638301/sys_console_usb_cdc.o ../../../../../../framework/system/console/src/sys_console_usb_cdc.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/322127129/sys_debug.o: ../../../../../../framework/system/debug/src/sys_debug.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/58f66aac15e23a7d065ff8547f5734a05b2078b7 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/322127129" 
	@${RM} ${OBJECTDIR}/_ext/322127129/sys_debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/322127129/sys_debug.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/322127129/sys_debug.o.d" -o ${OBJECTDIR}/_ext/322127129/sys_debug.o ../../../../../../framework/system/debug/src/sys_debug.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1698770803/drv_usbhs.o: ../../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/799fbdbbb91e5f86230fd99ad4ad488254e7f84f .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1698770803" 
	@${RM} ${OBJECTDIR}/_ext/1698770803/drv_usbhs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1698770803/drv_usbhs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1698770803/drv_usbhs.o.d" -o ${OBJECTDIR}/_ext/1698770803/drv_usbhs.o ../../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/692885480/usb_device.o: ../../../../../../framework/usb/src/dynamic/usb_device.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/a502ac9838a7712205162e8cac1f8d613c2a4c4d .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/692885480" 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/692885480/usb_device.o.d" -o ${OBJECTDIR}/_ext/692885480/usb_device.o ../../../../../../framework/usb/src/dynamic/usb_device.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1698770803/drv_usbhs_device.o: ../../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs_device.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/1e8c969117aa6c616a723ebbe978f97680837534 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1698770803" 
	@${RM} ${OBJECTDIR}/_ext/1698770803/drv_usbhs_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1698770803/drv_usbhs_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1698770803/drv_usbhs_device.o.d" -o ${OBJECTDIR}/_ext/1698770803/drv_usbhs_device.o ../../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs_device.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/692885480/usb_device_cdc.o: ../../../../../../framework/usb/src/dynamic/usb_device_cdc.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/8e2c6ad365bff1b07e55aa84fa875df545363481 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/692885480" 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device_cdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/692885480/usb_device_cdc.o.d" -o ${OBJECTDIR}/_ext/692885480/usb_device_cdc.o ../../../../../../framework/usb/src/dynamic/usb_device_cdc.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/692885480/usb_device_cdc_acm.o: ../../../../../../framework/usb/src/dynamic/usb_device_cdc_acm.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/d9baaa7e2b0503c0fbeebef1df915365fa5997c5 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/692885480" 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device_cdc_acm.o.d 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device_cdc_acm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/692885480/usb_device_cdc_acm.o.d" -o ${OBJECTDIR}/_ext/692885480/usb_device_cdc_acm.o ../../../../../../framework/usb/src/dynamic/usb_device_cdc_acm.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1428938804/sys_clk_pic32mz.o: ../src/system_config/pic32mz_curiosity_v2_udp_led3/framework/system/clk/src/sys_clk_pic32mz.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/e1271684378449aa1d1a59b7901878c21b31ddc0 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1428938804" 
	@${RM} ${OBJECTDIR}/_ext/1428938804/sys_clk_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/1428938804/sys_clk_pic32mz.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1428938804/sys_clk_pic32mz.o.d" -o ${OBJECTDIR}/_ext/1428938804/sys_clk_pic32mz.o ../src/system_config/pic32mz_curiosity_v2_udp_led3/framework/system/clk/src/sys_clk_pic32mz.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/313238148/sys_ports_static.o: ../src/system_config/pic32mz_curiosity_v2_udp_led3/framework/system/ports/src/sys_ports_static.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/ddc68a4650be1c1f8586df2979e40f61e56c6a59 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/313238148" 
	@${RM} ${OBJECTDIR}/_ext/313238148/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/313238148/sys_ports_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/313238148/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/313238148/sys_ports_static.o ../src/system_config/pic32mz_curiosity_v2_udp_led3/framework/system/ports/src/sys_ports_static.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/577575993/sys_reset.o: ../src/system_config/pic32mz_curiosity_v2_udp_led3/framework/system/reset/src/sys_reset.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/fe3ff86f89cda6967e9381f9dffa35280c2ad811 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/577575993" 
	@${RM} ${OBJECTDIR}/_ext/577575993/sys_reset.o.d 
	@${RM} ${OBJECTDIR}/_ext/577575993/sys_reset.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/577575993/sys_reset.o.d" -o ${OBJECTDIR}/_ext/577575993/sys_reset.o ../src/system_config/pic32mz_curiosity_v2_udp_led3/framework/system/reset/src/sys_reset.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1428765765/bsp.o: ../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp/bsp.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/3aba0fb55bd576ec867c0f46ac7e2bc80d856697 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1428765765" 
	@${RM} ${OBJECTDIR}/_ext/1428765765/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1428765765/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1428765765/bsp.o.d" -o ${OBJECTDIR}/_ext/1428765765/bsp.o ../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp/bsp.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2138285451/system_init.o: ../src/system_config/pic32mz_curiosity_v2_udp_led3/system_init.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/9ef8c963e6c3bd3f2ba35b33a95f251474677df2 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/2138285451" 
	@${RM} ${OBJECTDIR}/_ext/2138285451/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/2138285451/system_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2138285451/system_init.o.d" -o ${OBJECTDIR}/_ext/2138285451/system_init.o ../src/system_config/pic32mz_curiosity_v2_udp_led3/system_init.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2138285451/system_interrupt.o: ../src/system_config/pic32mz_curiosity_v2_udp_led3/system_interrupt.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/2d2b1aaa8e5a20d9643204165f9a56d1bc9f5d62 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/2138285451" 
	@${RM} ${OBJECTDIR}/_ext/2138285451/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/2138285451/system_interrupt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2138285451/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/2138285451/system_interrupt.o ../src/system_config/pic32mz_curiosity_v2_udp_led3/system_interrupt.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2138285451/system_exceptions.o: ../src/system_config/pic32mz_curiosity_v2_udp_led3/system_exceptions.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/528204513b9f1cd32f9d0969b9d13ed566fcbaba .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/2138285451" 
	@${RM} ${OBJECTDIR}/_ext/2138285451/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/2138285451/system_exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2138285451/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/2138285451/system_exceptions.o ../src/system_config/pic32mz_curiosity_v2_udp_led3/system_exceptions.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2138285451/system_tasks.o: ../src/system_config/pic32mz_curiosity_v2_udp_led3/system_tasks.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/c16d97bb317f853ca2bdbc3e97fa91c31b965379 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/2138285451" 
	@${RM} ${OBJECTDIR}/_ext/2138285451/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/2138285451/system_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2138285451/system_tasks.o.d" -o ${OBJECTDIR}/_ext/2138285451/system_tasks.o ../src/system_config/pic32mz_curiosity_v2_udp_led3/system_tasks.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/9327a3763494e5e1bd3d2aa78c30b8b3be88f427 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/acf42fe2d9d3092891685463bf6b841ca4a165b7 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1467197364/app_helper.o: D:/Microchip/harmony/v2_06/apps/bootloader/LiveUpdate/LiveUpdate_App/firmware/src/app_helper.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/5e71fa8e928a1e637c5fb7e2280d8207488c9e68 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1467197364" 
	@${RM} ${OBJECTDIR}/_ext/1467197364/app_helper.o.d 
	@${RM} ${OBJECTDIR}/_ext/1467197364/app_helper.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1467197364/app_helper.o.d" -o ${OBJECTDIR}/_ext/1467197364/app_helper.o D:/Microchip/harmony/v2_06/apps/bootloader/LiveUpdate/LiveUpdate_App/firmware/src/app_helper.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/682638542/datastream.o: ../../../../../../framework/bootloader/src/datastream/datastream.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/18574393f6cf4affe8d6b484780096703c116b4f .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/682638542" 
	@${RM} ${OBJECTDIR}/_ext/682638542/datastream.o.d 
	@${RM} ${OBJECTDIR}/_ext/682638542/datastream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/682638542/datastream.o.d" -o ${OBJECTDIR}/_ext/682638542/datastream.o ../../../../../../framework/bootloader/src/datastream/datastream.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/682638542/datastream_udp.o: ../../../../../../framework/bootloader/src/datastream/datastream_udp.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/b8a914a94c30ff2907eea45709e3d6427db994db .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/682638542" 
	@${RM} ${OBJECTDIR}/_ext/682638542/datastream_udp.o.d 
	@${RM} ${OBJECTDIR}/_ext/682638542/datastream_udp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/682638542/datastream_udp.o.d" -o ${OBJECTDIR}/_ext/682638542/datastream_udp.o ../../../../../../framework/bootloader/src/datastream/datastream_udp.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854679915/bootloader.o: ../../../../../../framework/bootloader/src/bootloader.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/ebf75728a915d26f0c6ec300dab2f497e39102a6 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1854679915" 
	@${RM} ${OBJECTDIR}/_ext/1854679915/bootloader.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854679915/bootloader.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1854679915/bootloader.o.d" -o ${OBJECTDIR}/_ext/1854679915/bootloader.o ../../../../../../framework/bootloader/src/bootloader.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854679915/nvm.o: ../../../../../../framework/bootloader/src/nvm.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/3a7d56d10a0f1d5dc90dd8e4dea9aab3f971b156 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1854679915" 
	@${RM} ${OBJECTDIR}/_ext/1854679915/nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854679915/nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1854679915/nvm.o.d" -o ${OBJECTDIR}/_ext/1854679915/nvm.o ../../../../../../framework/bootloader/src/nvm.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1764881201/drv_ethmac.o: ../../../../../../framework/driver/ethmac/src/dynamic/drv_ethmac.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/b35eda4adc7ea0131ff4fe3f16bb830967b68c20 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1764881201" 
	@${RM} ${OBJECTDIR}/_ext/1764881201/drv_ethmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1764881201/drv_ethmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1764881201/drv_ethmac.o.d" -o ${OBJECTDIR}/_ext/1764881201/drv_ethmac.o ../../../../../../framework/driver/ethmac/src/dynamic/drv_ethmac.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1764881201/drv_ethmac_lib.o: ../../../../../../framework/driver/ethmac/src/dynamic/drv_ethmac_lib.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/3b91f5282caac54d0e2049532519f8817a91c3d7 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1764881201" 
	@${RM} ${OBJECTDIR}/_ext/1764881201/drv_ethmac_lib.o.d 
	@${RM} ${OBJECTDIR}/_ext/1764881201/drv_ethmac_lib.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1764881201/drv_ethmac_lib.o.d" -o ${OBJECTDIR}/_ext/1764881201/drv_ethmac_lib.o ../../../../../../framework/driver/ethmac/src/dynamic/drv_ethmac_lib.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/588727395/drv_ethphy.o: ../../../../../../framework/driver/ethphy/src/dynamic/drv_ethphy.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/be3d42759b5329e57d976c4063abd5421b16a2dc .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/588727395" 
	@${RM} ${OBJECTDIR}/_ext/588727395/drv_ethphy.o.d 
	@${RM} ${OBJECTDIR}/_ext/588727395/drv_ethphy.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/588727395/drv_ethphy.o.d" -o ${OBJECTDIR}/_ext/588727395/drv_ethphy.o ../../../../../../framework/driver/ethphy/src/dynamic/drv_ethphy.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1152366776/drv_tmr.o: ../../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/4b2c87019ebf4b65672ac46657080f5b2ee22dab .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1152366776" 
	@${RM} ${OBJECTDIR}/_ext/1152366776/drv_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1152366776/drv_tmr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1152366776/drv_tmr.o.d" -o ${OBJECTDIR}/_ext/1152366776/drv_tmr.o ../../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/711155467/sys_int_pic32.o: ../../../../../../framework/system/int/src/sys_int_pic32.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/3e71d2357cf8429e97b43652fd102792c3ba71d0 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/711155467" 
	@${RM} ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/711155467/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o ../../../../../../framework/system/int/src/sys_int_pic32.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/899838009/sys_random.o: ../../../../../../framework/system/random/src/sys_random.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/7d84001c9ca5b4f550789462de8b65317287b6d3 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/899838009" 
	@${RM} ${OBJECTDIR}/_ext/899838009/sys_random.o.d 
	@${RM} ${OBJECTDIR}/_ext/899838009/sys_random.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/899838009/sys_random.o.d" -o ${OBJECTDIR}/_ext/899838009/sys_random.o ../../../../../../framework/system/random/src/sys_random.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/430974239/sys_tmr.o: ../../../../../../framework/system/tmr/src/sys_tmr.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/54cedc1669ff5d82e61934f0bcbf3b368bc0d69 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/430974239" 
	@${RM} ${OBJECTDIR}/_ext/430974239/sys_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/430974239/sys_tmr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/430974239/sys_tmr.o.d" -o ${OBJECTDIR}/_ext/430974239/sys_tmr.o ../../../../../../framework/system/tmr/src/sys_tmr.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/593738990/helpers.o: ../../../../../../framework/tcpip/src/common/helpers.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/19f6bfe0bda56965d1885b10974b385865ed8f35 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/593738990" 
	@${RM} ${OBJECTDIR}/_ext/593738990/helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/593738990/helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/593738990/helpers.o.d" -o ${OBJECTDIR}/_ext/593738990/helpers.o ../../../../../../framework/tcpip/src/common/helpers.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/ipv4.o: ../../../../../../framework/tcpip/src/ipv4.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/7678953def41183237b5cbe1ce1241410da6212b .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/ipv4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/ipv4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/ipv4.o.d" -o ${OBJECTDIR}/_ext/1833714580/ipv4.o ../../../../../../framework/tcpip/src/ipv4.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/udp.o: ../../../../../../framework/tcpip/src/udp.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/acf20f6bc69c686c4f8bc9b18dc19b5383d55e7c .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/udp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/udp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/udp.o.d" -o ${OBJECTDIR}/_ext/1833714580/udp.o ../../../../../../framework/tcpip/src/udp.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/tcpip_heap_alloc.o: ../../../../../../framework/tcpip/src/tcpip_heap_alloc.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/5ca68b3b131c71206e95c06717b3fc96b44a5232 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_heap_alloc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_heap_alloc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/tcpip_heap_alloc.o.d" -o ${OBJECTDIR}/_ext/1833714580/tcpip_heap_alloc.o ../../../../../../framework/tcpip/src/tcpip_heap_alloc.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/tcpip_heap_internal.o: ../../../../../../framework/tcpip/src/tcpip_heap_internal.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/a6fe133a0952da794e73cb61d83cf80e1d54025 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_heap_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_heap_internal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/tcpip_heap_internal.o.d" -o ${OBJECTDIR}/_ext/1833714580/tcpip_heap_internal.o ../../../../../../framework/tcpip/src/tcpip_heap_internal.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/arp.o: ../../../../../../framework/tcpip/src/arp.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/2084a62f1df7199025e56bbec060eea8cff08d7f .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/arp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/arp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/arp.o.d" -o ${OBJECTDIR}/_ext/1833714580/arp.o ../../../../../../framework/tcpip/src/arp.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/dhcp.o: ../../../../../../framework/tcpip/src/dhcp.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/254718530e9874b411e2b6d94cb3daf97d8a17df .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/dhcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/dhcp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/dhcp.o.d" -o ${OBJECTDIR}/_ext/1833714580/dhcp.o ../../../../../../framework/tcpip/src/dhcp.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/dns.o: ../../../../../../framework/tcpip/src/dns.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/409c3422b77f3051a214549fbb6e121997dbbe43 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/dns.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/dns.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/dns.o.d" -o ${OBJECTDIR}/_ext/1833714580/dns.o ../../../../../../framework/tcpip/src/dns.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/hash_fnv.o: ../../../../../../framework/tcpip/src/hash_fnv.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/2fd2fff5db419e08fa3dc8bc20942f65bbd5428f .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/hash_fnv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/hash_fnv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/hash_fnv.o.d" -o ${OBJECTDIR}/_ext/1833714580/hash_fnv.o ../../../../../../framework/tcpip/src/hash_fnv.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/oahash.o: ../../../../../../framework/tcpip/src/oahash.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/dc22ebef297a39813ced9fdc7bbf713a4ccd5c9a .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/oahash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/oahash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/oahash.o.d" -o ${OBJECTDIR}/_ext/1833714580/oahash.o ../../../../../../framework/tcpip/src/oahash.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/tcpip_helpers.o: ../../../../../../framework/tcpip/src/tcpip_helpers.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/a43cfa81463561e0005732f75ae211f45237c3c6 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/tcpip_helpers.o.d" -o ${OBJECTDIR}/_ext/1833714580/tcpip_helpers.o ../../../../../../framework/tcpip/src/tcpip_helpers.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/tcpip_manager.o: ../../../../../../framework/tcpip/src/tcpip_manager.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/724f69b7b077881be7f2dffbeaae3ca98d880a05 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/tcpip_manager.o.d" -o ${OBJECTDIR}/_ext/1833714580/tcpip_manager.o ../../../../../../framework/tcpip/src/tcpip_manager.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/tcpip_notify.o: ../../../../../../framework/tcpip/src/tcpip_notify.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/2e6e05d89aff2852182dc3e2b49b6a3ea16fa2ba .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_notify.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_notify.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/tcpip_notify.o.d" -o ${OBJECTDIR}/_ext/1833714580/tcpip_notify.o ../../../../../../framework/tcpip/src/tcpip_notify.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/tcpip_packet.o: ../../../../../../framework/tcpip/src/tcpip_packet.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/db9a1058aa5375b695083eec60a3277467d22bdf .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_packet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_packet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/tcpip_packet.o.d" -o ${OBJECTDIR}/_ext/1833714580/tcpip_packet.o ../../../../../../framework/tcpip/src/tcpip_packet.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/588727395/drv_extphy_ksz8061.o: ../../../../../../framework/driver/ethphy/src/dynamic/drv_extphy_ksz8061.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/6451e714bb69332a4b06da6de09c5f4a091ca961 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/588727395" 
	@${RM} ${OBJECTDIR}/_ext/588727395/drv_extphy_ksz8061.o.d 
	@${RM} ${OBJECTDIR}/_ext/588727395/drv_extphy_ksz8061.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/588727395/drv_extphy_ksz8061.o.d" -o ${OBJECTDIR}/_ext/588727395/drv_extphy_ksz8061.o ../../../../../../framework/driver/ethphy/src/dynamic/drv_extphy_ksz8061.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/572279899/drv_miim.o: ../../../../../../framework/driver/miim/src/dynamic/drv_miim.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/77ae9327cb6e2f0b37ba4144ac62c71b431a7e6d .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/572279899" 
	@${RM} ${OBJECTDIR}/_ext/572279899/drv_miim.o.d 
	@${RM} ${OBJECTDIR}/_ext/572279899/drv_miim.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/572279899/drv_miim.o.d" -o ${OBJECTDIR}/_ext/572279899/drv_miim.o ../../../../../../framework/driver/miim/src/dynamic/drv_miim.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/169017583/sys_buffer.o: ../../../../../../framework/system/common/src/sys_buffer.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/a4455ca5b35a5b1a73781578e94c4b6cf6e6dd77 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/169017583" 
	@${RM} ${OBJECTDIR}/_ext/169017583/sys_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/169017583/sys_buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/169017583/sys_buffer.o.d" -o ${OBJECTDIR}/_ext/169017583/sys_buffer.o ../../../../../../framework/system/common/src/sys_buffer.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/169017583/sys_queue.o: ../../../../../../framework/system/common/src/sys_queue.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/a34ec279180ec6e8e8ebdbda082da5be000d28bf .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/169017583" 
	@${RM} ${OBJECTDIR}/_ext/169017583/sys_queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/169017583/sys_queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/169017583/sys_queue.o.d" -o ${OBJECTDIR}/_ext/169017583/sys_queue.o ../../../../../../framework/system/common/src/sys_queue.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/912498863/sys_devcon.o: ../../../../../../framework/system/devcon/src/sys_devcon.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/6392ce4a68e63672d62c8dbd9fa4e6d70e5073f8 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/912498863" 
	@${RM} ${OBJECTDIR}/_ext/912498863/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/912498863/sys_devcon.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/912498863/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/912498863/sys_devcon.o ../../../../../../framework/system/devcon/src/sys_devcon.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mz.o: ../../../../../../framework/system/devcon/src/sys_devcon_pic32mz.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/d6fce38b6426e9dc5a86934aacc10076db1352fe .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/912498863" 
	@${RM} ${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mz.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mz.o.d" -o ${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mz.o ../../../../../../framework/system/devcon/src/sys_devcon_pic32mz.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1451350481/sys_command.o: ../../../../../../framework/system/command/src/sys_command.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/55999397fc1f12b545210db8f3cd483a6eb79e4e .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1451350481" 
	@${RM} ${OBJECTDIR}/_ext/1451350481/sys_command.o.d 
	@${RM} ${OBJECTDIR}/_ext/1451350481/sys_command.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1451350481/sys_command.o.d" -o ${OBJECTDIR}/_ext/1451350481/sys_command.o ../../../../../../framework/system/command/src/sys_command.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/994638301/sys_console.o: ../../../../../../framework/system/console/src/sys_console.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/1f5e752e916b197dc9a8e38d0e4b3b18fdf0de1 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/994638301" 
	@${RM} ${OBJECTDIR}/_ext/994638301/sys_console.o.d 
	@${RM} ${OBJECTDIR}/_ext/994638301/sys_console.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/994638301/sys_console.o.d" -o ${OBJECTDIR}/_ext/994638301/sys_console.o ../../../../../../framework/system/console/src/sys_console.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/994638301/sys_console_usb_cdc.o: ../../../../../../framework/system/console/src/sys_console_usb_cdc.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/2c028fe3066b9cef093451516b258862182f015f .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/994638301" 
	@${RM} ${OBJECTDIR}/_ext/994638301/sys_console_usb_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/994638301/sys_console_usb_cdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/994638301/sys_console_usb_cdc.o.d" -o ${OBJECTDIR}/_ext/994638301/sys_console_usb_cdc.o ../../../../../../framework/system/console/src/sys_console_usb_cdc.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/322127129/sys_debug.o: ../../../../../../framework/system/debug/src/sys_debug.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/69111c221a813b8a009bdc3b8e2679894685e0ab .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/322127129" 
	@${RM} ${OBJECTDIR}/_ext/322127129/sys_debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/322127129/sys_debug.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/322127129/sys_debug.o.d" -o ${OBJECTDIR}/_ext/322127129/sys_debug.o ../../../../../../framework/system/debug/src/sys_debug.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1698770803/drv_usbhs.o: ../../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/5a599cc05be49ec02a6319a77dde0702f3f01f86 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1698770803" 
	@${RM} ${OBJECTDIR}/_ext/1698770803/drv_usbhs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1698770803/drv_usbhs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1698770803/drv_usbhs.o.d" -o ${OBJECTDIR}/_ext/1698770803/drv_usbhs.o ../../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/692885480/usb_device.o: ../../../../../../framework/usb/src/dynamic/usb_device.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/8e9390ff25ff46b4af7f651a6fb96434c1ce8b52 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/692885480" 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/692885480/usb_device.o.d" -o ${OBJECTDIR}/_ext/692885480/usb_device.o ../../../../../../framework/usb/src/dynamic/usb_device.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1698770803/drv_usbhs_device.o: ../../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs_device.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/38bfecf7b35475fe510af45fd9a02bf5e0d006cc .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1698770803" 
	@${RM} ${OBJECTDIR}/_ext/1698770803/drv_usbhs_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1698770803/drv_usbhs_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1698770803/drv_usbhs_device.o.d" -o ${OBJECTDIR}/_ext/1698770803/drv_usbhs_device.o ../../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs_device.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/692885480/usb_device_cdc.o: ../../../../../../framework/usb/src/dynamic/usb_device_cdc.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/2a135707e9b097ccb0d1ee2e95210e19977c2533 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/692885480" 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device_cdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/692885480/usb_device_cdc.o.d" -o ${OBJECTDIR}/_ext/692885480/usb_device_cdc.o ../../../../../../framework/usb/src/dynamic/usb_device_cdc.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/692885480/usb_device_cdc_acm.o: ../../../../../../framework/usb/src/dynamic/usb_device_cdc_acm.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/2e8250e3dc0241efea2f941ff9c3b241cd969f1e .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/692885480" 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device_cdc_acm.o.d 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device_cdc_acm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/692885480/usb_device_cdc_acm.o.d" -o ${OBJECTDIR}/_ext/692885480/usb_device_cdc_acm.o ../../../../../../framework/usb/src/dynamic/usb_device_cdc_acm.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1428938804/sys_clk_pic32mz.o: ../src/system_config/pic32mz_curiosity_v2_udp_led3/framework/system/clk/src/sys_clk_pic32mz.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/5024b7016955d457cf299a9c356991dc01ce3288 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1428938804" 
	@${RM} ${OBJECTDIR}/_ext/1428938804/sys_clk_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/1428938804/sys_clk_pic32mz.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1428938804/sys_clk_pic32mz.o.d" -o ${OBJECTDIR}/_ext/1428938804/sys_clk_pic32mz.o ../src/system_config/pic32mz_curiosity_v2_udp_led3/framework/system/clk/src/sys_clk_pic32mz.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/313238148/sys_ports_static.o: ../src/system_config/pic32mz_curiosity_v2_udp_led3/framework/system/ports/src/sys_ports_static.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/3b69a77ef2fd708dba4a278af90265bf33753940 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/313238148" 
	@${RM} ${OBJECTDIR}/_ext/313238148/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/313238148/sys_ports_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/313238148/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/313238148/sys_ports_static.o ../src/system_config/pic32mz_curiosity_v2_udp_led3/framework/system/ports/src/sys_ports_static.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/577575993/sys_reset.o: ../src/system_config/pic32mz_curiosity_v2_udp_led3/framework/system/reset/src/sys_reset.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/ae6eca2229b5df9130f1ef4788944e8fe329992d .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/577575993" 
	@${RM} ${OBJECTDIR}/_ext/577575993/sys_reset.o.d 
	@${RM} ${OBJECTDIR}/_ext/577575993/sys_reset.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/577575993/sys_reset.o.d" -o ${OBJECTDIR}/_ext/577575993/sys_reset.o ../src/system_config/pic32mz_curiosity_v2_udp_led3/framework/system/reset/src/sys_reset.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1428765765/bsp.o: ../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp/bsp.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/4b6ae660fc9cdb02db72999f50b12cbd91aa9a24 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1428765765" 
	@${RM} ${OBJECTDIR}/_ext/1428765765/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1428765765/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1428765765/bsp.o.d" -o ${OBJECTDIR}/_ext/1428765765/bsp.o ../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp/bsp.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2138285451/system_init.o: ../src/system_config/pic32mz_curiosity_v2_udp_led3/system_init.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/2bc54d0e951643ec515e3df53913c1246fa5a815 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/2138285451" 
	@${RM} ${OBJECTDIR}/_ext/2138285451/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/2138285451/system_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2138285451/system_init.o.d" -o ${OBJECTDIR}/_ext/2138285451/system_init.o ../src/system_config/pic32mz_curiosity_v2_udp_led3/system_init.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2138285451/system_interrupt.o: ../src/system_config/pic32mz_curiosity_v2_udp_led3/system_interrupt.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/3ee03dbf41fc574b8978f82642c555ca0c34a927 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/2138285451" 
	@${RM} ${OBJECTDIR}/_ext/2138285451/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/2138285451/system_interrupt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2138285451/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/2138285451/system_interrupt.o ../src/system_config/pic32mz_curiosity_v2_udp_led3/system_interrupt.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2138285451/system_exceptions.o: ../src/system_config/pic32mz_curiosity_v2_udp_led3/system_exceptions.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/a370c1dd32ef769df17ca6ac5b3f5a9b1cd4535b .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/2138285451" 
	@${RM} ${OBJECTDIR}/_ext/2138285451/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/2138285451/system_exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2138285451/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/2138285451/system_exceptions.o ../src/system_config/pic32mz_curiosity_v2_udp_led3/system_exceptions.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2138285451/system_tasks.o: ../src/system_config/pic32mz_curiosity_v2_udp_led3/system_tasks.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/9fe5a0f18e25e90fe8de723f16014c736d574c78 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/2138285451" 
	@${RM} ${OBJECTDIR}/_ext/2138285451/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/2138285451/system_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2138285451/system_tasks.o.d" -o ${OBJECTDIR}/_ext/2138285451/system_tasks.o ../src/system_config/pic32mz_curiosity_v2_udp_led3/system_tasks.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/LiveUpdate_App.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../../../bin/framework/peripheral/PIC32MZ2048EFM144_peripherals.a  ../src/system_config/pic32mz_curiosity_v2_udp_led3/app_mz.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/LiveUpdate_App.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\..\..\..\..\..\bin\framework\peripheral\PIC32MZ2048EFM144_peripherals.a      -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x37F   -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=69960,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/LiveUpdate_App.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../../../bin/framework/peripheral/PIC32MZ2048EFM144_peripherals.a ../src/system_config/pic32mz_curiosity_v2_udp_led3/app_mz.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/LiveUpdate_App.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\..\..\..\..\..\bin\framework\peripheral\PIC32MZ2048EFM144_peripherals.a      -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=69960,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
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
