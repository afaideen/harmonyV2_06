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
${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o: ../../../../../../framework/tcpip/src/tcpip_helper_c32.S  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/ec33b2276f7c292fbadbd6fea01f4a19bee875c8 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o.ok ${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o.d"  -o ${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o ../../../../../../framework/tcpip/src/tcpip_helper_c32.S  -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o.d" "${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o: ../../../../../../framework/system/devcon/src/sys_devcon_cache_pic32mz.S  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/7fffb902743e0a9440f8b62b9d964c0687eb6112 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/912498863" 
	@${RM} ${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o 
	@${RM} ${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o.ok ${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o.d"  -o ${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o ../../../../../../framework/system/devcon/src/sys_devcon_cache_pic32mz.S  -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o.d" "${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o: ../../../../../../framework/tcpip/src/tcpip_helper_c32.S  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/a5fc43c861b9d65c87a75741e5ce3c3706fe1033 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o.ok ${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o.d"  -o ${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o ../../../../../../framework/tcpip/src/tcpip_helper_c32.S  -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o.asm.d",--gdwarf-2 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o.d" "${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o: ../../../../../../framework/system/devcon/src/sys_devcon_cache_pic32mz.S  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/e7e054c5d3690eb3975d279a6d8dcf4f06ddb88f .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
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
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/e13836e33c694114f7dd7889fb60413b2ea53ad0 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/ea86dfa24eb5fb2900ec36bf57d81b77222e4e92 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1467197364/app_helper.o: D:/Microchip/harmony/v2_06/apps/bootloader/LiveUpdate/LiveUpdate_App/firmware/src/app_helper.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/2911ad4ade19484724529e00c6c32678f33a1e8a .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1467197364" 
	@${RM} ${OBJECTDIR}/_ext/1467197364/app_helper.o.d 
	@${RM} ${OBJECTDIR}/_ext/1467197364/app_helper.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1467197364/app_helper.o.d" -o ${OBJECTDIR}/_ext/1467197364/app_helper.o D:/Microchip/harmony/v2_06/apps/bootloader/LiveUpdate/LiveUpdate_App/firmware/src/app_helper.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/682638542/datastream.o: ../../../../../../framework/bootloader/src/datastream/datastream.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/85ad5c510940477a25d9f8af64e4406dce7b6556 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/682638542" 
	@${RM} ${OBJECTDIR}/_ext/682638542/datastream.o.d 
	@${RM} ${OBJECTDIR}/_ext/682638542/datastream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/682638542/datastream.o.d" -o ${OBJECTDIR}/_ext/682638542/datastream.o ../../../../../../framework/bootloader/src/datastream/datastream.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/682638542/datastream_udp.o: ../../../../../../framework/bootloader/src/datastream/datastream_udp.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/8ca17060ca1026588d4f58621cfedd2724ae98fe .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/682638542" 
	@${RM} ${OBJECTDIR}/_ext/682638542/datastream_udp.o.d 
	@${RM} ${OBJECTDIR}/_ext/682638542/datastream_udp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/682638542/datastream_udp.o.d" -o ${OBJECTDIR}/_ext/682638542/datastream_udp.o ../../../../../../framework/bootloader/src/datastream/datastream_udp.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854679915/bootloader.o: ../../../../../../framework/bootloader/src/bootloader.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/ad6126faeded0fb2ece1f17fa00c73fcd98f1ec2 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1854679915" 
	@${RM} ${OBJECTDIR}/_ext/1854679915/bootloader.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854679915/bootloader.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1854679915/bootloader.o.d" -o ${OBJECTDIR}/_ext/1854679915/bootloader.o ../../../../../../framework/bootloader/src/bootloader.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854679915/nvm.o: ../../../../../../framework/bootloader/src/nvm.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/f5c5fd752338132c21f5998a4a0a24a792e603b0 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1854679915" 
	@${RM} ${OBJECTDIR}/_ext/1854679915/nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854679915/nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1854679915/nvm.o.d" -o ${OBJECTDIR}/_ext/1854679915/nvm.o ../../../../../../framework/bootloader/src/nvm.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1764881201/drv_ethmac.o: ../../../../../../framework/driver/ethmac/src/dynamic/drv_ethmac.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/5ea1eebf56da68e8dc0082938801e506bd6f8f72 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1764881201" 
	@${RM} ${OBJECTDIR}/_ext/1764881201/drv_ethmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1764881201/drv_ethmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1764881201/drv_ethmac.o.d" -o ${OBJECTDIR}/_ext/1764881201/drv_ethmac.o ../../../../../../framework/driver/ethmac/src/dynamic/drv_ethmac.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1764881201/drv_ethmac_lib.o: ../../../../../../framework/driver/ethmac/src/dynamic/drv_ethmac_lib.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/dc6142522a1893d7af052110fd8739ad25dd5ea6 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1764881201" 
	@${RM} ${OBJECTDIR}/_ext/1764881201/drv_ethmac_lib.o.d 
	@${RM} ${OBJECTDIR}/_ext/1764881201/drv_ethmac_lib.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1764881201/drv_ethmac_lib.o.d" -o ${OBJECTDIR}/_ext/1764881201/drv_ethmac_lib.o ../../../../../../framework/driver/ethmac/src/dynamic/drv_ethmac_lib.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/588727395/drv_ethphy.o: ../../../../../../framework/driver/ethphy/src/dynamic/drv_ethphy.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/5ff2494f4e53b8e8774217b6c300c4fda0303f81 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/588727395" 
	@${RM} ${OBJECTDIR}/_ext/588727395/drv_ethphy.o.d 
	@${RM} ${OBJECTDIR}/_ext/588727395/drv_ethphy.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/588727395/drv_ethphy.o.d" -o ${OBJECTDIR}/_ext/588727395/drv_ethphy.o ../../../../../../framework/driver/ethphy/src/dynamic/drv_ethphy.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1152366776/drv_tmr.o: ../../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/585319b06dca2c78ab2da83c89e88cb368e9138f .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1152366776" 
	@${RM} ${OBJECTDIR}/_ext/1152366776/drv_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1152366776/drv_tmr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1152366776/drv_tmr.o.d" -o ${OBJECTDIR}/_ext/1152366776/drv_tmr.o ../../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/711155467/sys_int_pic32.o: ../../../../../../framework/system/int/src/sys_int_pic32.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/d84ee8527323a8f7bc457e25744b684350539d58 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/711155467" 
	@${RM} ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/711155467/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o ../../../../../../framework/system/int/src/sys_int_pic32.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/899838009/sys_random.o: ../../../../../../framework/system/random/src/sys_random.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/7bea90660bea237575f2158d222d149a5527d83e .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/899838009" 
	@${RM} ${OBJECTDIR}/_ext/899838009/sys_random.o.d 
	@${RM} ${OBJECTDIR}/_ext/899838009/sys_random.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/899838009/sys_random.o.d" -o ${OBJECTDIR}/_ext/899838009/sys_random.o ../../../../../../framework/system/random/src/sys_random.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/430974239/sys_tmr.o: ../../../../../../framework/system/tmr/src/sys_tmr.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/974cfc02a4d2de0e1515e1d4a1ed2b88a386c493 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/430974239" 
	@${RM} ${OBJECTDIR}/_ext/430974239/sys_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/430974239/sys_tmr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/430974239/sys_tmr.o.d" -o ${OBJECTDIR}/_ext/430974239/sys_tmr.o ../../../../../../framework/system/tmr/src/sys_tmr.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/593738990/helpers.o: ../../../../../../framework/tcpip/src/common/helpers.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/da3c001f8d15fe5cff0eb709981beca8756922a9 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/593738990" 
	@${RM} ${OBJECTDIR}/_ext/593738990/helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/593738990/helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/593738990/helpers.o.d" -o ${OBJECTDIR}/_ext/593738990/helpers.o ../../../../../../framework/tcpip/src/common/helpers.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/ipv4.o: ../../../../../../framework/tcpip/src/ipv4.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/d4547af4881bb3e9bc93cbe5e5a0842727f9b66 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/ipv4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/ipv4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/ipv4.o.d" -o ${OBJECTDIR}/_ext/1833714580/ipv4.o ../../../../../../framework/tcpip/src/ipv4.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/udp.o: ../../../../../../framework/tcpip/src/udp.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/40a6f486df0da034e22ec5c9350fdb5d7f8e917f .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/udp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/udp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/udp.o.d" -o ${OBJECTDIR}/_ext/1833714580/udp.o ../../../../../../framework/tcpip/src/udp.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/tcpip_heap_alloc.o: ../../../../../../framework/tcpip/src/tcpip_heap_alloc.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/38da8ed4a1d7866c4d786d5d2dc5800b6e94e93d .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_heap_alloc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_heap_alloc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/tcpip_heap_alloc.o.d" -o ${OBJECTDIR}/_ext/1833714580/tcpip_heap_alloc.o ../../../../../../framework/tcpip/src/tcpip_heap_alloc.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/tcpip_heap_internal.o: ../../../../../../framework/tcpip/src/tcpip_heap_internal.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/ce6f3c294b35d8e8994a4ef0219c14b9dfbeafe1 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_heap_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_heap_internal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/tcpip_heap_internal.o.d" -o ${OBJECTDIR}/_ext/1833714580/tcpip_heap_internal.o ../../../../../../framework/tcpip/src/tcpip_heap_internal.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/arp.o: ../../../../../../framework/tcpip/src/arp.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/6bc09293ae9eb5fa96dc86f55a6501b029ba8e0a .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/arp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/arp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/arp.o.d" -o ${OBJECTDIR}/_ext/1833714580/arp.o ../../../../../../framework/tcpip/src/arp.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/dhcp.o: ../../../../../../framework/tcpip/src/dhcp.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/af08646ddf55afc4e521ca91adda8024a0184fab .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/dhcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/dhcp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/dhcp.o.d" -o ${OBJECTDIR}/_ext/1833714580/dhcp.o ../../../../../../framework/tcpip/src/dhcp.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/dns.o: ../../../../../../framework/tcpip/src/dns.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/a7a454b87e03d5ef94e0b3f94520e08aeda57eca .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/dns.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/dns.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/dns.o.d" -o ${OBJECTDIR}/_ext/1833714580/dns.o ../../../../../../framework/tcpip/src/dns.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/hash_fnv.o: ../../../../../../framework/tcpip/src/hash_fnv.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/4653a0545ed6ddbb1e280ff683764ecbff788531 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/hash_fnv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/hash_fnv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/hash_fnv.o.d" -o ${OBJECTDIR}/_ext/1833714580/hash_fnv.o ../../../../../../framework/tcpip/src/hash_fnv.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/oahash.o: ../../../../../../framework/tcpip/src/oahash.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/8c1d7747dbc3f782fe9e300514878a6a42e7cacd .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/oahash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/oahash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/oahash.o.d" -o ${OBJECTDIR}/_ext/1833714580/oahash.o ../../../../../../framework/tcpip/src/oahash.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/tcpip_helpers.o: ../../../../../../framework/tcpip/src/tcpip_helpers.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/70cce8bd2c69d6f8460c573335431f5d4f1cb8e7 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/tcpip_helpers.o.d" -o ${OBJECTDIR}/_ext/1833714580/tcpip_helpers.o ../../../../../../framework/tcpip/src/tcpip_helpers.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/tcpip_manager.o: ../../../../../../framework/tcpip/src/tcpip_manager.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/316e106004d5d1037508f5a10ef54510a9df99d1 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/tcpip_manager.o.d" -o ${OBJECTDIR}/_ext/1833714580/tcpip_manager.o ../../../../../../framework/tcpip/src/tcpip_manager.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/tcpip_notify.o: ../../../../../../framework/tcpip/src/tcpip_notify.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/c8291bbe99d9d23e2441acc351e7d296ad42c0f9 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_notify.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_notify.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/tcpip_notify.o.d" -o ${OBJECTDIR}/_ext/1833714580/tcpip_notify.o ../../../../../../framework/tcpip/src/tcpip_notify.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/tcpip_packet.o: ../../../../../../framework/tcpip/src/tcpip_packet.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/d9694222052b84f4c064e25e203aab2bb1e88644 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_packet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_packet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/tcpip_packet.o.d" -o ${OBJECTDIR}/_ext/1833714580/tcpip_packet.o ../../../../../../framework/tcpip/src/tcpip_packet.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/588727395/drv_extphy_ksz8061.o: ../../../../../../framework/driver/ethphy/src/dynamic/drv_extphy_ksz8061.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/eee0256fe7cbe1da1c47ad1bdafcc1b98eccbefb .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/588727395" 
	@${RM} ${OBJECTDIR}/_ext/588727395/drv_extphy_ksz8061.o.d 
	@${RM} ${OBJECTDIR}/_ext/588727395/drv_extphy_ksz8061.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/588727395/drv_extphy_ksz8061.o.d" -o ${OBJECTDIR}/_ext/588727395/drv_extphy_ksz8061.o ../../../../../../framework/driver/ethphy/src/dynamic/drv_extphy_ksz8061.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/572279899/drv_miim.o: ../../../../../../framework/driver/miim/src/dynamic/drv_miim.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/21c1a2ad50898d5374394c80b34dcbb3c9b60570 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/572279899" 
	@${RM} ${OBJECTDIR}/_ext/572279899/drv_miim.o.d 
	@${RM} ${OBJECTDIR}/_ext/572279899/drv_miim.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/572279899/drv_miim.o.d" -o ${OBJECTDIR}/_ext/572279899/drv_miim.o ../../../../../../framework/driver/miim/src/dynamic/drv_miim.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/169017583/sys_buffer.o: ../../../../../../framework/system/common/src/sys_buffer.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/23c9662f69048ea8620a2e3d170b33455bdb84e8 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/169017583" 
	@${RM} ${OBJECTDIR}/_ext/169017583/sys_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/169017583/sys_buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/169017583/sys_buffer.o.d" -o ${OBJECTDIR}/_ext/169017583/sys_buffer.o ../../../../../../framework/system/common/src/sys_buffer.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/169017583/sys_queue.o: ../../../../../../framework/system/common/src/sys_queue.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/c4612c79ae737b69bd4c8bdc022c6b74bde366fb .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/169017583" 
	@${RM} ${OBJECTDIR}/_ext/169017583/sys_queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/169017583/sys_queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/169017583/sys_queue.o.d" -o ${OBJECTDIR}/_ext/169017583/sys_queue.o ../../../../../../framework/system/common/src/sys_queue.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/912498863/sys_devcon.o: ../../../../../../framework/system/devcon/src/sys_devcon.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/f9a84e4494a34734b04498a55a33b6c70cb682d5 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/912498863" 
	@${RM} ${OBJECTDIR}/_ext/912498863/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/912498863/sys_devcon.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/912498863/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/912498863/sys_devcon.o ../../../../../../framework/system/devcon/src/sys_devcon.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mz.o: ../../../../../../framework/system/devcon/src/sys_devcon_pic32mz.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/a30caf8635d1df2d699c32f90c6c5e1bdf14ddb9 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/912498863" 
	@${RM} ${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mz.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mz.o.d" -o ${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mz.o ../../../../../../framework/system/devcon/src/sys_devcon_pic32mz.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1451350481/sys_command.o: ../../../../../../framework/system/command/src/sys_command.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/f2b1e441d862b6804b855c53868d3aa61a25886b .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1451350481" 
	@${RM} ${OBJECTDIR}/_ext/1451350481/sys_command.o.d 
	@${RM} ${OBJECTDIR}/_ext/1451350481/sys_command.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1451350481/sys_command.o.d" -o ${OBJECTDIR}/_ext/1451350481/sys_command.o ../../../../../../framework/system/command/src/sys_command.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/994638301/sys_console.o: ../../../../../../framework/system/console/src/sys_console.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/5bf8f4fc69e9f4be744e3054ed7490fd8c39d9b4 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/994638301" 
	@${RM} ${OBJECTDIR}/_ext/994638301/sys_console.o.d 
	@${RM} ${OBJECTDIR}/_ext/994638301/sys_console.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/994638301/sys_console.o.d" -o ${OBJECTDIR}/_ext/994638301/sys_console.o ../../../../../../framework/system/console/src/sys_console.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/994638301/sys_console_usb_cdc.o: ../../../../../../framework/system/console/src/sys_console_usb_cdc.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/80903c8a30b01fb85ac0d459f8536049a957922c .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/994638301" 
	@${RM} ${OBJECTDIR}/_ext/994638301/sys_console_usb_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/994638301/sys_console_usb_cdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/994638301/sys_console_usb_cdc.o.d" -o ${OBJECTDIR}/_ext/994638301/sys_console_usb_cdc.o ../../../../../../framework/system/console/src/sys_console_usb_cdc.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/322127129/sys_debug.o: ../../../../../../framework/system/debug/src/sys_debug.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/6c4ad4d97fddec3cdc2fc54032e9fce745840306 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/322127129" 
	@${RM} ${OBJECTDIR}/_ext/322127129/sys_debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/322127129/sys_debug.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/322127129/sys_debug.o.d" -o ${OBJECTDIR}/_ext/322127129/sys_debug.o ../../../../../../framework/system/debug/src/sys_debug.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1698770803/drv_usbhs.o: ../../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/21c85a33ec6bb1aac5c0722af6875d23f0d02baa .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1698770803" 
	@${RM} ${OBJECTDIR}/_ext/1698770803/drv_usbhs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1698770803/drv_usbhs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1698770803/drv_usbhs.o.d" -o ${OBJECTDIR}/_ext/1698770803/drv_usbhs.o ../../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/692885480/usb_device.o: ../../../../../../framework/usb/src/dynamic/usb_device.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/65b97fae230cf75f4b205be558ecc46f8252bd4 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/692885480" 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/692885480/usb_device.o.d" -o ${OBJECTDIR}/_ext/692885480/usb_device.o ../../../../../../framework/usb/src/dynamic/usb_device.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1698770803/drv_usbhs_device.o: ../../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs_device.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/5b06779953c6966aa60b54f6f79e5da339658665 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1698770803" 
	@${RM} ${OBJECTDIR}/_ext/1698770803/drv_usbhs_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1698770803/drv_usbhs_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1698770803/drv_usbhs_device.o.d" -o ${OBJECTDIR}/_ext/1698770803/drv_usbhs_device.o ../../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs_device.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/692885480/usb_device_cdc.o: ../../../../../../framework/usb/src/dynamic/usb_device_cdc.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/57567984175030a22d235940858e769292a11505 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/692885480" 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device_cdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/692885480/usb_device_cdc.o.d" -o ${OBJECTDIR}/_ext/692885480/usb_device_cdc.o ../../../../../../framework/usb/src/dynamic/usb_device_cdc.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/692885480/usb_device_cdc_acm.o: ../../../../../../framework/usb/src/dynamic/usb_device_cdc_acm.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/c4d9976baa8b5a6424f6760fb8a92315b4f99bab .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/692885480" 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device_cdc_acm.o.d 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device_cdc_acm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/692885480/usb_device_cdc_acm.o.d" -o ${OBJECTDIR}/_ext/692885480/usb_device_cdc_acm.o ../../../../../../framework/usb/src/dynamic/usb_device_cdc_acm.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1428938804/sys_clk_pic32mz.o: ../src/system_config/pic32mz_curiosity_v2_udp_led3/framework/system/clk/src/sys_clk_pic32mz.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/2f4871f2c1088d67f354ca004724da581f35f808 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1428938804" 
	@${RM} ${OBJECTDIR}/_ext/1428938804/sys_clk_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/1428938804/sys_clk_pic32mz.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1428938804/sys_clk_pic32mz.o.d" -o ${OBJECTDIR}/_ext/1428938804/sys_clk_pic32mz.o ../src/system_config/pic32mz_curiosity_v2_udp_led3/framework/system/clk/src/sys_clk_pic32mz.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/313238148/sys_ports_static.o: ../src/system_config/pic32mz_curiosity_v2_udp_led3/framework/system/ports/src/sys_ports_static.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/4b29ab1c457f49cdde987613bc16ee3c282549d0 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/313238148" 
	@${RM} ${OBJECTDIR}/_ext/313238148/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/313238148/sys_ports_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/313238148/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/313238148/sys_ports_static.o ../src/system_config/pic32mz_curiosity_v2_udp_led3/framework/system/ports/src/sys_ports_static.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/577575993/sys_reset.o: ../src/system_config/pic32mz_curiosity_v2_udp_led3/framework/system/reset/src/sys_reset.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/248cb2f48c52abf8581bb06048d6016586177608 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/577575993" 
	@${RM} ${OBJECTDIR}/_ext/577575993/sys_reset.o.d 
	@${RM} ${OBJECTDIR}/_ext/577575993/sys_reset.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/577575993/sys_reset.o.d" -o ${OBJECTDIR}/_ext/577575993/sys_reset.o ../src/system_config/pic32mz_curiosity_v2_udp_led3/framework/system/reset/src/sys_reset.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1428765765/bsp.o: ../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp/bsp.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/70b69d2db4753ed2fac02185aa486ee072c7e0e5 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1428765765" 
	@${RM} ${OBJECTDIR}/_ext/1428765765/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1428765765/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1428765765/bsp.o.d" -o ${OBJECTDIR}/_ext/1428765765/bsp.o ../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp/bsp.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2138285451/system_init.o: ../src/system_config/pic32mz_curiosity_v2_udp_led3/system_init.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/aacd10773608a7e664b542beeeef999674b09283 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/2138285451" 
	@${RM} ${OBJECTDIR}/_ext/2138285451/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/2138285451/system_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2138285451/system_init.o.d" -o ${OBJECTDIR}/_ext/2138285451/system_init.o ../src/system_config/pic32mz_curiosity_v2_udp_led3/system_init.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2138285451/system_interrupt.o: ../src/system_config/pic32mz_curiosity_v2_udp_led3/system_interrupt.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/d1ef3142fc2b691d8cb600752440d5112292407f .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/2138285451" 
	@${RM} ${OBJECTDIR}/_ext/2138285451/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/2138285451/system_interrupt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2138285451/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/2138285451/system_interrupt.o ../src/system_config/pic32mz_curiosity_v2_udp_led3/system_interrupt.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2138285451/system_exceptions.o: ../src/system_config/pic32mz_curiosity_v2_udp_led3/system_exceptions.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/b202712d8dfa6f3b0d3f112b71e0c449a6132a2c .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/2138285451" 
	@${RM} ${OBJECTDIR}/_ext/2138285451/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/2138285451/system_exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2138285451/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/2138285451/system_exceptions.o ../src/system_config/pic32mz_curiosity_v2_udp_led3/system_exceptions.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2138285451/system_tasks.o: ../src/system_config/pic32mz_curiosity_v2_udp_led3/system_tasks.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/fd8b72c4724ce03089e10e2a1fcd19bb728b76bd .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/2138285451" 
	@${RM} ${OBJECTDIR}/_ext/2138285451/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/2138285451/system_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2138285451/system_tasks.o.d" -o ${OBJECTDIR}/_ext/2138285451/system_tasks.o ../src/system_config/pic32mz_curiosity_v2_udp_led3/system_tasks.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/cbf6760a2c55e0cdd7916d74c35ae2fb68b800db .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/69e3eeaa56c1ba48227b114bb77ef5232a73e584 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1467197364/app_helper.o: D:/Microchip/harmony/v2_06/apps/bootloader/LiveUpdate/LiveUpdate_App/firmware/src/app_helper.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/5e71fa8e928a1e637c5fb7e2280d8207488c9e68 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1467197364" 
	@${RM} ${OBJECTDIR}/_ext/1467197364/app_helper.o.d 
	@${RM} ${OBJECTDIR}/_ext/1467197364/app_helper.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1467197364/app_helper.o.d" -o ${OBJECTDIR}/_ext/1467197364/app_helper.o D:/Microchip/harmony/v2_06/apps/bootloader/LiveUpdate/LiveUpdate_App/firmware/src/app_helper.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/682638542/datastream.o: ../../../../../../framework/bootloader/src/datastream/datastream.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/712da4e10d3fcb28c5dd495c48e097727a5e7509 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/682638542" 
	@${RM} ${OBJECTDIR}/_ext/682638542/datastream.o.d 
	@${RM} ${OBJECTDIR}/_ext/682638542/datastream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/682638542/datastream.o.d" -o ${OBJECTDIR}/_ext/682638542/datastream.o ../../../../../../framework/bootloader/src/datastream/datastream.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/682638542/datastream_udp.o: ../../../../../../framework/bootloader/src/datastream/datastream_udp.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/b933693ae03f9ddcf4435c9d5266b661c4e87d98 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/682638542" 
	@${RM} ${OBJECTDIR}/_ext/682638542/datastream_udp.o.d 
	@${RM} ${OBJECTDIR}/_ext/682638542/datastream_udp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/682638542/datastream_udp.o.d" -o ${OBJECTDIR}/_ext/682638542/datastream_udp.o ../../../../../../framework/bootloader/src/datastream/datastream_udp.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854679915/bootloader.o: ../../../../../../framework/bootloader/src/bootloader.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/7de6b0db6a989eb9c64ae0f523833eb6a22f1986 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1854679915" 
	@${RM} ${OBJECTDIR}/_ext/1854679915/bootloader.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854679915/bootloader.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1854679915/bootloader.o.d" -o ${OBJECTDIR}/_ext/1854679915/bootloader.o ../../../../../../framework/bootloader/src/bootloader.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854679915/nvm.o: ../../../../../../framework/bootloader/src/nvm.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/e4c19cf0c080e1b94f326bad083238c2f8e62e9b .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1854679915" 
	@${RM} ${OBJECTDIR}/_ext/1854679915/nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854679915/nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1854679915/nvm.o.d" -o ${OBJECTDIR}/_ext/1854679915/nvm.o ../../../../../../framework/bootloader/src/nvm.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1764881201/drv_ethmac.o: ../../../../../../framework/driver/ethmac/src/dynamic/drv_ethmac.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/3756d1c67787f2fee0b35c20cebaf70ce123ffe9 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1764881201" 
	@${RM} ${OBJECTDIR}/_ext/1764881201/drv_ethmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1764881201/drv_ethmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1764881201/drv_ethmac.o.d" -o ${OBJECTDIR}/_ext/1764881201/drv_ethmac.o ../../../../../../framework/driver/ethmac/src/dynamic/drv_ethmac.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1764881201/drv_ethmac_lib.o: ../../../../../../framework/driver/ethmac/src/dynamic/drv_ethmac_lib.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/7c85123dfdf2ed3f471cecfb83168125c05608fd .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1764881201" 
	@${RM} ${OBJECTDIR}/_ext/1764881201/drv_ethmac_lib.o.d 
	@${RM} ${OBJECTDIR}/_ext/1764881201/drv_ethmac_lib.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1764881201/drv_ethmac_lib.o.d" -o ${OBJECTDIR}/_ext/1764881201/drv_ethmac_lib.o ../../../../../../framework/driver/ethmac/src/dynamic/drv_ethmac_lib.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/588727395/drv_ethphy.o: ../../../../../../framework/driver/ethphy/src/dynamic/drv_ethphy.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/3b08881f5e977ca0321880dc78ea967808840837 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/588727395" 
	@${RM} ${OBJECTDIR}/_ext/588727395/drv_ethphy.o.d 
	@${RM} ${OBJECTDIR}/_ext/588727395/drv_ethphy.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/588727395/drv_ethphy.o.d" -o ${OBJECTDIR}/_ext/588727395/drv_ethphy.o ../../../../../../framework/driver/ethphy/src/dynamic/drv_ethphy.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1152366776/drv_tmr.o: ../../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/9eed105bcf197eb8afce754ad2b2f2fc24e2ee10 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1152366776" 
	@${RM} ${OBJECTDIR}/_ext/1152366776/drv_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1152366776/drv_tmr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1152366776/drv_tmr.o.d" -o ${OBJECTDIR}/_ext/1152366776/drv_tmr.o ../../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/711155467/sys_int_pic32.o: ../../../../../../framework/system/int/src/sys_int_pic32.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/ababb4ce7c82d0a7cf15a12434e82ed47e76c750 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/711155467" 
	@${RM} ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/711155467/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o ../../../../../../framework/system/int/src/sys_int_pic32.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/899838009/sys_random.o: ../../../../../../framework/system/random/src/sys_random.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/b86b921fa2a07028402c872fe0b2cdb059907981 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/899838009" 
	@${RM} ${OBJECTDIR}/_ext/899838009/sys_random.o.d 
	@${RM} ${OBJECTDIR}/_ext/899838009/sys_random.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/899838009/sys_random.o.d" -o ${OBJECTDIR}/_ext/899838009/sys_random.o ../../../../../../framework/system/random/src/sys_random.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/430974239/sys_tmr.o: ../../../../../../framework/system/tmr/src/sys_tmr.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/f700b8b61a399e746daf4a33333a9975c22d43a8 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/430974239" 
	@${RM} ${OBJECTDIR}/_ext/430974239/sys_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/430974239/sys_tmr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/430974239/sys_tmr.o.d" -o ${OBJECTDIR}/_ext/430974239/sys_tmr.o ../../../../../../framework/system/tmr/src/sys_tmr.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/593738990/helpers.o: ../../../../../../framework/tcpip/src/common/helpers.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/269faaddcd68b593ca79cb459949839e491d470e .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/593738990" 
	@${RM} ${OBJECTDIR}/_ext/593738990/helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/593738990/helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/593738990/helpers.o.d" -o ${OBJECTDIR}/_ext/593738990/helpers.o ../../../../../../framework/tcpip/src/common/helpers.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/ipv4.o: ../../../../../../framework/tcpip/src/ipv4.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/f53c2d3d01a976edebfb21684052007a0c150be2 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/ipv4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/ipv4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/ipv4.o.d" -o ${OBJECTDIR}/_ext/1833714580/ipv4.o ../../../../../../framework/tcpip/src/ipv4.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/udp.o: ../../../../../../framework/tcpip/src/udp.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/3a60e59811fab54827048c3b8a50fc16039f1d9f .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/udp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/udp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/udp.o.d" -o ${OBJECTDIR}/_ext/1833714580/udp.o ../../../../../../framework/tcpip/src/udp.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/tcpip_heap_alloc.o: ../../../../../../framework/tcpip/src/tcpip_heap_alloc.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/7a65b00cf5e4bd6c383a11245d89351129951e76 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_heap_alloc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_heap_alloc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/tcpip_heap_alloc.o.d" -o ${OBJECTDIR}/_ext/1833714580/tcpip_heap_alloc.o ../../../../../../framework/tcpip/src/tcpip_heap_alloc.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/tcpip_heap_internal.o: ../../../../../../framework/tcpip/src/tcpip_heap_internal.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/15d57a5dc80b717b145ba37349f7c5530fc4fe04 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_heap_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_heap_internal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/tcpip_heap_internal.o.d" -o ${OBJECTDIR}/_ext/1833714580/tcpip_heap_internal.o ../../../../../../framework/tcpip/src/tcpip_heap_internal.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/arp.o: ../../../../../../framework/tcpip/src/arp.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/8c9d7d6ee69fb452251191b1f1e5da93587e9db9 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/arp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/arp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/arp.o.d" -o ${OBJECTDIR}/_ext/1833714580/arp.o ../../../../../../framework/tcpip/src/arp.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/dhcp.o: ../../../../../../framework/tcpip/src/dhcp.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/831f126cd4b4cae4a7b0bb7bb2b34a031c6d3435 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/dhcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/dhcp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/dhcp.o.d" -o ${OBJECTDIR}/_ext/1833714580/dhcp.o ../../../../../../framework/tcpip/src/dhcp.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/dns.o: ../../../../../../framework/tcpip/src/dns.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/c7a78d7fa26827f908fd6552b67eed16eeef55bb .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/dns.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/dns.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/dns.o.d" -o ${OBJECTDIR}/_ext/1833714580/dns.o ../../../../../../framework/tcpip/src/dns.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/hash_fnv.o: ../../../../../../framework/tcpip/src/hash_fnv.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/7e81f59383781dd4664f134a0ea9788f545a6824 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/hash_fnv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/hash_fnv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/hash_fnv.o.d" -o ${OBJECTDIR}/_ext/1833714580/hash_fnv.o ../../../../../../framework/tcpip/src/hash_fnv.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/oahash.o: ../../../../../../framework/tcpip/src/oahash.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/c6730f53d2dbd7299be081487c186351fa7c82aa .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/oahash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/oahash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/oahash.o.d" -o ${OBJECTDIR}/_ext/1833714580/oahash.o ../../../../../../framework/tcpip/src/oahash.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/tcpip_helpers.o: ../../../../../../framework/tcpip/src/tcpip_helpers.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/81e6cac596540522acae1816b9974a963d1c5bf1 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/tcpip_helpers.o.d" -o ${OBJECTDIR}/_ext/1833714580/tcpip_helpers.o ../../../../../../framework/tcpip/src/tcpip_helpers.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/tcpip_manager.o: ../../../../../../framework/tcpip/src/tcpip_manager.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/57c7cdc4e347913b987efd3c9aee51f041dad91e .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/tcpip_manager.o.d" -o ${OBJECTDIR}/_ext/1833714580/tcpip_manager.o ../../../../../../framework/tcpip/src/tcpip_manager.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/tcpip_notify.o: ../../../../../../framework/tcpip/src/tcpip_notify.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/5c9ace06cd8245ea065520e0d13518ff5f898dd5 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_notify.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_notify.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/tcpip_notify.o.d" -o ${OBJECTDIR}/_ext/1833714580/tcpip_notify.o ../../../../../../framework/tcpip/src/tcpip_notify.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/tcpip_packet.o: ../../../../../../framework/tcpip/src/tcpip_packet.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/ce1609fc78675b9c7ed6cb489996e22236d32f3e .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_packet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_packet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/tcpip_packet.o.d" -o ${OBJECTDIR}/_ext/1833714580/tcpip_packet.o ../../../../../../framework/tcpip/src/tcpip_packet.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/588727395/drv_extphy_ksz8061.o: ../../../../../../framework/driver/ethphy/src/dynamic/drv_extphy_ksz8061.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/9d781310b83d201c7e361c2c0324fc6a7c146d8c .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/588727395" 
	@${RM} ${OBJECTDIR}/_ext/588727395/drv_extphy_ksz8061.o.d 
	@${RM} ${OBJECTDIR}/_ext/588727395/drv_extphy_ksz8061.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/588727395/drv_extphy_ksz8061.o.d" -o ${OBJECTDIR}/_ext/588727395/drv_extphy_ksz8061.o ../../../../../../framework/driver/ethphy/src/dynamic/drv_extphy_ksz8061.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/572279899/drv_miim.o: ../../../../../../framework/driver/miim/src/dynamic/drv_miim.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/8a790f296f266d98d2081dc33304b63406d794d2 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/572279899" 
	@${RM} ${OBJECTDIR}/_ext/572279899/drv_miim.o.d 
	@${RM} ${OBJECTDIR}/_ext/572279899/drv_miim.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/572279899/drv_miim.o.d" -o ${OBJECTDIR}/_ext/572279899/drv_miim.o ../../../../../../framework/driver/miim/src/dynamic/drv_miim.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/169017583/sys_buffer.o: ../../../../../../framework/system/common/src/sys_buffer.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/2f3b8c3de52c64aaf2be5955f385c0eaea1063a6 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/169017583" 
	@${RM} ${OBJECTDIR}/_ext/169017583/sys_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/169017583/sys_buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/169017583/sys_buffer.o.d" -o ${OBJECTDIR}/_ext/169017583/sys_buffer.o ../../../../../../framework/system/common/src/sys_buffer.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/169017583/sys_queue.o: ../../../../../../framework/system/common/src/sys_queue.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/628ac6876fa4bcb900da75357b1214d411b5ae .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/169017583" 
	@${RM} ${OBJECTDIR}/_ext/169017583/sys_queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/169017583/sys_queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/169017583/sys_queue.o.d" -o ${OBJECTDIR}/_ext/169017583/sys_queue.o ../../../../../../framework/system/common/src/sys_queue.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/912498863/sys_devcon.o: ../../../../../../framework/system/devcon/src/sys_devcon.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/b21d94017231dc21eaedb2ecb14d9ff829df9a29 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/912498863" 
	@${RM} ${OBJECTDIR}/_ext/912498863/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/912498863/sys_devcon.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/912498863/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/912498863/sys_devcon.o ../../../../../../framework/system/devcon/src/sys_devcon.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mz.o: ../../../../../../framework/system/devcon/src/sys_devcon_pic32mz.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/cabce9ab1b32ffd3dca31e4397c425d8cc69d545 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/912498863" 
	@${RM} ${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mz.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mz.o.d" -o ${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mz.o ../../../../../../framework/system/devcon/src/sys_devcon_pic32mz.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1451350481/sys_command.o: ../../../../../../framework/system/command/src/sys_command.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/e6146b53eda7f0048b80045806b547348f2d78be .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1451350481" 
	@${RM} ${OBJECTDIR}/_ext/1451350481/sys_command.o.d 
	@${RM} ${OBJECTDIR}/_ext/1451350481/sys_command.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1451350481/sys_command.o.d" -o ${OBJECTDIR}/_ext/1451350481/sys_command.o ../../../../../../framework/system/command/src/sys_command.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/994638301/sys_console.o: ../../../../../../framework/system/console/src/sys_console.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/64e696806e131a09b02d547e73bf24eb20c6f5ab .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/994638301" 
	@${RM} ${OBJECTDIR}/_ext/994638301/sys_console.o.d 
	@${RM} ${OBJECTDIR}/_ext/994638301/sys_console.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/994638301/sys_console.o.d" -o ${OBJECTDIR}/_ext/994638301/sys_console.o ../../../../../../framework/system/console/src/sys_console.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/994638301/sys_console_usb_cdc.o: ../../../../../../framework/system/console/src/sys_console_usb_cdc.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/c8b93f2cd049dba52f77d2a8ca6f2a866b2ae701 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/994638301" 
	@${RM} ${OBJECTDIR}/_ext/994638301/sys_console_usb_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/994638301/sys_console_usb_cdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/994638301/sys_console_usb_cdc.o.d" -o ${OBJECTDIR}/_ext/994638301/sys_console_usb_cdc.o ../../../../../../framework/system/console/src/sys_console_usb_cdc.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/322127129/sys_debug.o: ../../../../../../framework/system/debug/src/sys_debug.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/3a98857bf70f11a315e044010593983eded5b41f .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/322127129" 
	@${RM} ${OBJECTDIR}/_ext/322127129/sys_debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/322127129/sys_debug.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/322127129/sys_debug.o.d" -o ${OBJECTDIR}/_ext/322127129/sys_debug.o ../../../../../../framework/system/debug/src/sys_debug.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1698770803/drv_usbhs.o: ../../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/fe65f55630adeeefa461a54f5cc81e8fddfff035 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1698770803" 
	@${RM} ${OBJECTDIR}/_ext/1698770803/drv_usbhs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1698770803/drv_usbhs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1698770803/drv_usbhs.o.d" -o ${OBJECTDIR}/_ext/1698770803/drv_usbhs.o ../../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/692885480/usb_device.o: ../../../../../../framework/usb/src/dynamic/usb_device.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/f4e465d314e083c3c1a821ba92c3d732fdd90dc0 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/692885480" 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/692885480/usb_device.o.d" -o ${OBJECTDIR}/_ext/692885480/usb_device.o ../../../../../../framework/usb/src/dynamic/usb_device.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1698770803/drv_usbhs_device.o: ../../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs_device.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/7c8833524976a55635879d5bea44d7551d544755 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1698770803" 
	@${RM} ${OBJECTDIR}/_ext/1698770803/drv_usbhs_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1698770803/drv_usbhs_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1698770803/drv_usbhs_device.o.d" -o ${OBJECTDIR}/_ext/1698770803/drv_usbhs_device.o ../../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs_device.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/692885480/usb_device_cdc.o: ../../../../../../framework/usb/src/dynamic/usb_device_cdc.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/9bee6c526f4af812eb475f6c767f85868a64aab .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/692885480" 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device_cdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/692885480/usb_device_cdc.o.d" -o ${OBJECTDIR}/_ext/692885480/usb_device_cdc.o ../../../../../../framework/usb/src/dynamic/usb_device_cdc.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/692885480/usb_device_cdc_acm.o: ../../../../../../framework/usb/src/dynamic/usb_device_cdc_acm.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/6daec2392ec13b92b97f7def139cdc32effb4b2d .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/692885480" 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device_cdc_acm.o.d 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device_cdc_acm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/692885480/usb_device_cdc_acm.o.d" -o ${OBJECTDIR}/_ext/692885480/usb_device_cdc_acm.o ../../../../../../framework/usb/src/dynamic/usb_device_cdc_acm.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1428938804/sys_clk_pic32mz.o: ../src/system_config/pic32mz_curiosity_v2_udp_led3/framework/system/clk/src/sys_clk_pic32mz.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/abbb817a487c5a09b5c21e5ebbead110e5452d37 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1428938804" 
	@${RM} ${OBJECTDIR}/_ext/1428938804/sys_clk_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/1428938804/sys_clk_pic32mz.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1428938804/sys_clk_pic32mz.o.d" -o ${OBJECTDIR}/_ext/1428938804/sys_clk_pic32mz.o ../src/system_config/pic32mz_curiosity_v2_udp_led3/framework/system/clk/src/sys_clk_pic32mz.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/313238148/sys_ports_static.o: ../src/system_config/pic32mz_curiosity_v2_udp_led3/framework/system/ports/src/sys_ports_static.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/21793f40f1eb03b3408aff748b21d3f89a7d961b .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/313238148" 
	@${RM} ${OBJECTDIR}/_ext/313238148/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/313238148/sys_ports_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/313238148/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/313238148/sys_ports_static.o ../src/system_config/pic32mz_curiosity_v2_udp_led3/framework/system/ports/src/sys_ports_static.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/577575993/sys_reset.o: ../src/system_config/pic32mz_curiosity_v2_udp_led3/framework/system/reset/src/sys_reset.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/ed74bd452e47199c15f30622f429cb65e65c1b06 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/577575993" 
	@${RM} ${OBJECTDIR}/_ext/577575993/sys_reset.o.d 
	@${RM} ${OBJECTDIR}/_ext/577575993/sys_reset.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/577575993/sys_reset.o.d" -o ${OBJECTDIR}/_ext/577575993/sys_reset.o ../src/system_config/pic32mz_curiosity_v2_udp_led3/framework/system/reset/src/sys_reset.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1428765765/bsp.o: ../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp/bsp.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/2e4374c5cb5201b9278f3946c63ee3d8829fb003 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1428765765" 
	@${RM} ${OBJECTDIR}/_ext/1428765765/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1428765765/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1428765765/bsp.o.d" -o ${OBJECTDIR}/_ext/1428765765/bsp.o ../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp/bsp.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2138285451/system_init.o: ../src/system_config/pic32mz_curiosity_v2_udp_led3/system_init.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/d381d2ea13a55a04d064b5d779297cc757fc51c0 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/2138285451" 
	@${RM} ${OBJECTDIR}/_ext/2138285451/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/2138285451/system_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2138285451/system_init.o.d" -o ${OBJECTDIR}/_ext/2138285451/system_init.o ../src/system_config/pic32mz_curiosity_v2_udp_led3/system_init.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2138285451/system_interrupt.o: ../src/system_config/pic32mz_curiosity_v2_udp_led3/system_interrupt.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/9053303886f88be146b16af7b3f7424027c16b29 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/2138285451" 
	@${RM} ${OBJECTDIR}/_ext/2138285451/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/2138285451/system_interrupt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2138285451/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/2138285451/system_interrupt.o ../src/system_config/pic32mz_curiosity_v2_udp_led3/system_interrupt.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2138285451/system_exceptions.o: ../src/system_config/pic32mz_curiosity_v2_udp_led3/system_exceptions.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/9d87994686c72345c7e88e23f1b364bf8cbb1591 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/2138285451" 
	@${RM} ${OBJECTDIR}/_ext/2138285451/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/2138285451/system_exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2138285451/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/2138285451/system_exceptions.o ../src/system_config/pic32mz_curiosity_v2_udp_led3/system_exceptions.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2138285451/system_tasks.o: ../src/system_config/pic32mz_curiosity_v2_udp_led3/system_tasks.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/5f4513065cc0569594e4d9919f6556f0045bbf1f .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
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
