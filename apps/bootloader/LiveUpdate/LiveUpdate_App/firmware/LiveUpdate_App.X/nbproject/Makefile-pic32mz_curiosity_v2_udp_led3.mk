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
SOURCEFILES_QUOTED_IF_SPACED=../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp/bsp.c ../src/system_config/pic32mz_curiosity_v2_udp_led3/framework/driver/flash/src/drv_flash_static.c ../src/system_config/pic32mz_curiosity_v2_udp_led3/framework/system/clk/src/sys_clk_pic32mz.c ../src/system_config/pic32mz_curiosity_v2_udp_led3/framework/system/ports/src/sys_ports_static.c ../src/system_config/pic32mz_curiosity_v2_udp_led3/framework/system/reset/src/sys_reset.c ../src/system_config/pic32mz_curiosity_v2_udp_led3/system_init.c ../src/system_config/pic32mz_curiosity_v2_udp_led3/system_interrupt.c ../src/system_config/pic32mz_curiosity_v2_udp_led3/system_exceptions.c ../src/system_config/pic32mz_curiosity_v2_udp_led3/system_tasks.c ../src/app.c ../src/main.c ../src/app_helper.c ../../../../../../framework/bootloader/src/datastream/datastream.c ../../../../../../framework/bootloader/src/datastream/datastream_udp.c ../../../../../../framework/bootloader/src/bootloader.c ../../../../../../framework/bootloader/src/nvm.c ../../../../../../framework/driver/ethmac/src/dynamic/drv_ethmac.c ../../../../../../framework/driver/ethmac/src/dynamic/drv_ethmac_lib.c ../../../../../../framework/driver/ethphy/src/dynamic/drv_ethphy.c ../../../../../../framework/driver/ethphy/src/dynamic/drv_extphy_ksz8061.c ../../../../../../framework/driver/miim/src/dynamic/drv_miim.c ../../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c ../../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs.c ../../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs_device.c ../../../../../../framework/system/command/src/sys_command.c ../../../../../../framework/system/common/src/sys_buffer.c ../../../../../../framework/system/common/src/sys_queue.c ../../../../../../framework/system/console/src/sys_console.c ../../../../../../framework/system/console/src/sys_console_usb_cdc.c ../../../../../../framework/system/debug/src/sys_debug.c ../../../../../../framework/system/devcon/src/sys_devcon.c ../../../../../../framework/system/devcon/src/sys_devcon_pic32mz.c ../../../../../../framework/system/devcon/src/sys_devcon_cache_pic32mz.S ../../../../../../framework/system/int/src/sys_int_pic32.c ../../../../../../framework/system/random/src/sys_random.c ../../../../../../framework/system/tmr/src/sys_tmr.c ../../../../../../framework/tcpip/src/common/helpers.c ../../../../../../framework/tcpip/src/ipv4.c ../../../../../../framework/tcpip/src/udp.c ../../../../../../framework/tcpip/src/tcpip_heap_alloc.c ../../../../../../framework/tcpip/src/tcpip_heap_internal.c ../../../../../../framework/tcpip/src/arp.c ../../../../../../framework/tcpip/src/dhcp.c ../../../../../../framework/tcpip/src/dns.c ../../../../../../framework/tcpip/src/hash_fnv.c ../../../../../../framework/tcpip/src/oahash.c ../../../../../../framework/tcpip/src/tcpip_helpers.c ../../../../../../framework/tcpip/src/tcpip_helper_c32.S ../../../../../../framework/tcpip/src/tcpip_manager.c ../../../../../../framework/tcpip/src/tcpip_notify.c ../../../../../../framework/tcpip/src/tcpip_packet.c ../../../../../../framework/usb/src/dynamic/usb_device.c ../../../../../../framework/usb/src/dynamic/usb_device_cdc.c ../../../../../../framework/usb/src/dynamic/usb_device_cdc_acm.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1428765765/bsp.o ${OBJECTDIR}/_ext/1414366957/drv_flash_static.o ${OBJECTDIR}/_ext/1428938804/sys_clk_pic32mz.o ${OBJECTDIR}/_ext/313238148/sys_ports_static.o ${OBJECTDIR}/_ext/577575993/sys_reset.o ${OBJECTDIR}/_ext/2138285451/system_init.o ${OBJECTDIR}/_ext/2138285451/system_interrupt.o ${OBJECTDIR}/_ext/2138285451/system_exceptions.o ${OBJECTDIR}/_ext/2138285451/system_tasks.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app_helper.o ${OBJECTDIR}/_ext/682638542/datastream.o ${OBJECTDIR}/_ext/682638542/datastream_udp.o ${OBJECTDIR}/_ext/1854679915/bootloader.o ${OBJECTDIR}/_ext/1854679915/nvm.o ${OBJECTDIR}/_ext/1764881201/drv_ethmac.o ${OBJECTDIR}/_ext/1764881201/drv_ethmac_lib.o ${OBJECTDIR}/_ext/588727395/drv_ethphy.o ${OBJECTDIR}/_ext/588727395/drv_extphy_ksz8061.o ${OBJECTDIR}/_ext/572279899/drv_miim.o ${OBJECTDIR}/_ext/1152366776/drv_tmr.o ${OBJECTDIR}/_ext/1698770803/drv_usbhs.o ${OBJECTDIR}/_ext/1698770803/drv_usbhs_device.o ${OBJECTDIR}/_ext/1451350481/sys_command.o ${OBJECTDIR}/_ext/169017583/sys_buffer.o ${OBJECTDIR}/_ext/169017583/sys_queue.o ${OBJECTDIR}/_ext/994638301/sys_console.o ${OBJECTDIR}/_ext/994638301/sys_console_usb_cdc.o ${OBJECTDIR}/_ext/322127129/sys_debug.o ${OBJECTDIR}/_ext/912498863/sys_devcon.o ${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mz.o ${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o ${OBJECTDIR}/_ext/899838009/sys_random.o ${OBJECTDIR}/_ext/430974239/sys_tmr.o ${OBJECTDIR}/_ext/593738990/helpers.o ${OBJECTDIR}/_ext/1833714580/ipv4.o ${OBJECTDIR}/_ext/1833714580/udp.o ${OBJECTDIR}/_ext/1833714580/tcpip_heap_alloc.o ${OBJECTDIR}/_ext/1833714580/tcpip_heap_internal.o ${OBJECTDIR}/_ext/1833714580/arp.o ${OBJECTDIR}/_ext/1833714580/dhcp.o ${OBJECTDIR}/_ext/1833714580/dns.o ${OBJECTDIR}/_ext/1833714580/hash_fnv.o ${OBJECTDIR}/_ext/1833714580/oahash.o ${OBJECTDIR}/_ext/1833714580/tcpip_helpers.o ${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o ${OBJECTDIR}/_ext/1833714580/tcpip_manager.o ${OBJECTDIR}/_ext/1833714580/tcpip_notify.o ${OBJECTDIR}/_ext/1833714580/tcpip_packet.o ${OBJECTDIR}/_ext/692885480/usb_device.o ${OBJECTDIR}/_ext/692885480/usb_device_cdc.o ${OBJECTDIR}/_ext/692885480/usb_device_cdc_acm.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1428765765/bsp.o.d ${OBJECTDIR}/_ext/1414366957/drv_flash_static.o.d ${OBJECTDIR}/_ext/1428938804/sys_clk_pic32mz.o.d ${OBJECTDIR}/_ext/313238148/sys_ports_static.o.d ${OBJECTDIR}/_ext/577575993/sys_reset.o.d ${OBJECTDIR}/_ext/2138285451/system_init.o.d ${OBJECTDIR}/_ext/2138285451/system_interrupt.o.d ${OBJECTDIR}/_ext/2138285451/system_exceptions.o.d ${OBJECTDIR}/_ext/2138285451/system_tasks.o.d ${OBJECTDIR}/_ext/1360937237/app.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/app_helper.o.d ${OBJECTDIR}/_ext/682638542/datastream.o.d ${OBJECTDIR}/_ext/682638542/datastream_udp.o.d ${OBJECTDIR}/_ext/1854679915/bootloader.o.d ${OBJECTDIR}/_ext/1854679915/nvm.o.d ${OBJECTDIR}/_ext/1764881201/drv_ethmac.o.d ${OBJECTDIR}/_ext/1764881201/drv_ethmac_lib.o.d ${OBJECTDIR}/_ext/588727395/drv_ethphy.o.d ${OBJECTDIR}/_ext/588727395/drv_extphy_ksz8061.o.d ${OBJECTDIR}/_ext/572279899/drv_miim.o.d ${OBJECTDIR}/_ext/1152366776/drv_tmr.o.d ${OBJECTDIR}/_ext/1698770803/drv_usbhs.o.d ${OBJECTDIR}/_ext/1698770803/drv_usbhs_device.o.d ${OBJECTDIR}/_ext/1451350481/sys_command.o.d ${OBJECTDIR}/_ext/169017583/sys_buffer.o.d ${OBJECTDIR}/_ext/169017583/sys_queue.o.d ${OBJECTDIR}/_ext/994638301/sys_console.o.d ${OBJECTDIR}/_ext/994638301/sys_console_usb_cdc.o.d ${OBJECTDIR}/_ext/322127129/sys_debug.o.d ${OBJECTDIR}/_ext/912498863/sys_devcon.o.d ${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mz.o.d ${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o.d ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o.d ${OBJECTDIR}/_ext/899838009/sys_random.o.d ${OBJECTDIR}/_ext/430974239/sys_tmr.o.d ${OBJECTDIR}/_ext/593738990/helpers.o.d ${OBJECTDIR}/_ext/1833714580/ipv4.o.d ${OBJECTDIR}/_ext/1833714580/udp.o.d ${OBJECTDIR}/_ext/1833714580/tcpip_heap_alloc.o.d ${OBJECTDIR}/_ext/1833714580/tcpip_heap_internal.o.d ${OBJECTDIR}/_ext/1833714580/arp.o.d ${OBJECTDIR}/_ext/1833714580/dhcp.o.d ${OBJECTDIR}/_ext/1833714580/dns.o.d ${OBJECTDIR}/_ext/1833714580/hash_fnv.o.d ${OBJECTDIR}/_ext/1833714580/oahash.o.d ${OBJECTDIR}/_ext/1833714580/tcpip_helpers.o.d ${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o.d ${OBJECTDIR}/_ext/1833714580/tcpip_manager.o.d ${OBJECTDIR}/_ext/1833714580/tcpip_notify.o.d ${OBJECTDIR}/_ext/1833714580/tcpip_packet.o.d ${OBJECTDIR}/_ext/692885480/usb_device.o.d ${OBJECTDIR}/_ext/692885480/usb_device_cdc.o.d ${OBJECTDIR}/_ext/692885480/usb_device_cdc_acm.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1428765765/bsp.o ${OBJECTDIR}/_ext/1414366957/drv_flash_static.o ${OBJECTDIR}/_ext/1428938804/sys_clk_pic32mz.o ${OBJECTDIR}/_ext/313238148/sys_ports_static.o ${OBJECTDIR}/_ext/577575993/sys_reset.o ${OBJECTDIR}/_ext/2138285451/system_init.o ${OBJECTDIR}/_ext/2138285451/system_interrupt.o ${OBJECTDIR}/_ext/2138285451/system_exceptions.o ${OBJECTDIR}/_ext/2138285451/system_tasks.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app_helper.o ${OBJECTDIR}/_ext/682638542/datastream.o ${OBJECTDIR}/_ext/682638542/datastream_udp.o ${OBJECTDIR}/_ext/1854679915/bootloader.o ${OBJECTDIR}/_ext/1854679915/nvm.o ${OBJECTDIR}/_ext/1764881201/drv_ethmac.o ${OBJECTDIR}/_ext/1764881201/drv_ethmac_lib.o ${OBJECTDIR}/_ext/588727395/drv_ethphy.o ${OBJECTDIR}/_ext/588727395/drv_extphy_ksz8061.o ${OBJECTDIR}/_ext/572279899/drv_miim.o ${OBJECTDIR}/_ext/1152366776/drv_tmr.o ${OBJECTDIR}/_ext/1698770803/drv_usbhs.o ${OBJECTDIR}/_ext/1698770803/drv_usbhs_device.o ${OBJECTDIR}/_ext/1451350481/sys_command.o ${OBJECTDIR}/_ext/169017583/sys_buffer.o ${OBJECTDIR}/_ext/169017583/sys_queue.o ${OBJECTDIR}/_ext/994638301/sys_console.o ${OBJECTDIR}/_ext/994638301/sys_console_usb_cdc.o ${OBJECTDIR}/_ext/322127129/sys_debug.o ${OBJECTDIR}/_ext/912498863/sys_devcon.o ${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mz.o ${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o ${OBJECTDIR}/_ext/899838009/sys_random.o ${OBJECTDIR}/_ext/430974239/sys_tmr.o ${OBJECTDIR}/_ext/593738990/helpers.o ${OBJECTDIR}/_ext/1833714580/ipv4.o ${OBJECTDIR}/_ext/1833714580/udp.o ${OBJECTDIR}/_ext/1833714580/tcpip_heap_alloc.o ${OBJECTDIR}/_ext/1833714580/tcpip_heap_internal.o ${OBJECTDIR}/_ext/1833714580/arp.o ${OBJECTDIR}/_ext/1833714580/dhcp.o ${OBJECTDIR}/_ext/1833714580/dns.o ${OBJECTDIR}/_ext/1833714580/hash_fnv.o ${OBJECTDIR}/_ext/1833714580/oahash.o ${OBJECTDIR}/_ext/1833714580/tcpip_helpers.o ${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o ${OBJECTDIR}/_ext/1833714580/tcpip_manager.o ${OBJECTDIR}/_ext/1833714580/tcpip_notify.o ${OBJECTDIR}/_ext/1833714580/tcpip_packet.o ${OBJECTDIR}/_ext/692885480/usb_device.o ${OBJECTDIR}/_ext/692885480/usb_device_cdc.o ${OBJECTDIR}/_ext/692885480/usb_device_cdc_acm.o

# Source Files
SOURCEFILES=../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp/bsp.c ../src/system_config/pic32mz_curiosity_v2_udp_led3/framework/driver/flash/src/drv_flash_static.c ../src/system_config/pic32mz_curiosity_v2_udp_led3/framework/system/clk/src/sys_clk_pic32mz.c ../src/system_config/pic32mz_curiosity_v2_udp_led3/framework/system/ports/src/sys_ports_static.c ../src/system_config/pic32mz_curiosity_v2_udp_led3/framework/system/reset/src/sys_reset.c ../src/system_config/pic32mz_curiosity_v2_udp_led3/system_init.c ../src/system_config/pic32mz_curiosity_v2_udp_led3/system_interrupt.c ../src/system_config/pic32mz_curiosity_v2_udp_led3/system_exceptions.c ../src/system_config/pic32mz_curiosity_v2_udp_led3/system_tasks.c ../src/app.c ../src/main.c ../src/app_helper.c ../../../../../../framework/bootloader/src/datastream/datastream.c ../../../../../../framework/bootloader/src/datastream/datastream_udp.c ../../../../../../framework/bootloader/src/bootloader.c ../../../../../../framework/bootloader/src/nvm.c ../../../../../../framework/driver/ethmac/src/dynamic/drv_ethmac.c ../../../../../../framework/driver/ethmac/src/dynamic/drv_ethmac_lib.c ../../../../../../framework/driver/ethphy/src/dynamic/drv_ethphy.c ../../../../../../framework/driver/ethphy/src/dynamic/drv_extphy_ksz8061.c ../../../../../../framework/driver/miim/src/dynamic/drv_miim.c ../../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c ../../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs.c ../../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs_device.c ../../../../../../framework/system/command/src/sys_command.c ../../../../../../framework/system/common/src/sys_buffer.c ../../../../../../framework/system/common/src/sys_queue.c ../../../../../../framework/system/console/src/sys_console.c ../../../../../../framework/system/console/src/sys_console_usb_cdc.c ../../../../../../framework/system/debug/src/sys_debug.c ../../../../../../framework/system/devcon/src/sys_devcon.c ../../../../../../framework/system/devcon/src/sys_devcon_pic32mz.c ../../../../../../framework/system/devcon/src/sys_devcon_cache_pic32mz.S ../../../../../../framework/system/int/src/sys_int_pic32.c ../../../../../../framework/system/random/src/sys_random.c ../../../../../../framework/system/tmr/src/sys_tmr.c ../../../../../../framework/tcpip/src/common/helpers.c ../../../../../../framework/tcpip/src/ipv4.c ../../../../../../framework/tcpip/src/udp.c ../../../../../../framework/tcpip/src/tcpip_heap_alloc.c ../../../../../../framework/tcpip/src/tcpip_heap_internal.c ../../../../../../framework/tcpip/src/arp.c ../../../../../../framework/tcpip/src/dhcp.c ../../../../../../framework/tcpip/src/dns.c ../../../../../../framework/tcpip/src/hash_fnv.c ../../../../../../framework/tcpip/src/oahash.c ../../../../../../framework/tcpip/src/tcpip_helpers.c ../../../../../../framework/tcpip/src/tcpip_helper_c32.S ../../../../../../framework/tcpip/src/tcpip_manager.c ../../../../../../framework/tcpip/src/tcpip_notify.c ../../../../../../framework/tcpip/src/tcpip_packet.c ../../../../../../framework/usb/src/dynamic/usb_device.c ../../../../../../framework/usb/src/dynamic/usb_device_cdc.c ../../../../../../framework/usb/src/dynamic/usb_device_cdc_acm.c



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
${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o: ../../../../../../framework/system/devcon/src/sys_devcon_cache_pic32mz.S  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/7fffb902743e0a9440f8b62b9d964c0687eb6112 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/912498863" 
	@${RM} ${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o 
	@${RM} ${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o.ok ${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o.d"  -o ${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o ../../../../../../framework/system/devcon/src/sys_devcon_cache_pic32mz.S  -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o.d" "${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o: ../../../../../../framework/tcpip/src/tcpip_helper_c32.S  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/ec33b2276f7c292fbadbd6fea01f4a19bee875c8 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o.ok ${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o.d"  -o ${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o ../../../../../../framework/tcpip/src/tcpip_helper_c32.S  -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o.d" "${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o: ../../../../../../framework/system/devcon/src/sys_devcon_cache_pic32mz.S  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/e7e054c5d3690eb3975d279a6d8dcf4f06ddb88f .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/912498863" 
	@${RM} ${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o 
	@${RM} ${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o.ok ${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o.d"  -o ${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o ../../../../../../framework/system/devcon/src/sys_devcon_cache_pic32mz.S  -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o.asm.d",--gdwarf-2 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o.d" "${OBJECTDIR}/_ext/912498863/sys_devcon_cache_pic32mz.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o: ../../../../../../framework/tcpip/src/tcpip_helper_c32.S  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/a5fc43c861b9d65c87a75741e5ce3c3706fe1033 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o.ok ${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o.d"  -o ${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o ../../../../../../framework/tcpip/src/tcpip_helper_c32.S  -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o.asm.d",--gdwarf-2 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o.d" "${OBJECTDIR}/_ext/1833714580/tcpip_helper_c32.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1428765765/bsp.o: ../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp/bsp.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/a40bf3c0e3d5d669f0a405fec7d3a5de3b920566 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1428765765" 
	@${RM} ${OBJECTDIR}/_ext/1428765765/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1428765765/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1428765765/bsp.o.d" -o ${OBJECTDIR}/_ext/1428765765/bsp.o ../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp/bsp.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1414366957/drv_flash_static.o: ../src/system_config/pic32mz_curiosity_v2_udp_led3/framework/driver/flash/src/drv_flash_static.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/62d007cd3df758aaa9d2dc877ee326c205f07299 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1414366957" 
	@${RM} ${OBJECTDIR}/_ext/1414366957/drv_flash_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/1414366957/drv_flash_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1414366957/drv_flash_static.o.d" -o ${OBJECTDIR}/_ext/1414366957/drv_flash_static.o ../src/system_config/pic32mz_curiosity_v2_udp_led3/framework/driver/flash/src/drv_flash_static.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1428938804/sys_clk_pic32mz.o: ../src/system_config/pic32mz_curiosity_v2_udp_led3/framework/system/clk/src/sys_clk_pic32mz.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/a55c4a68d12dc414e395c324b262b3e7fad3b1b2 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1428938804" 
	@${RM} ${OBJECTDIR}/_ext/1428938804/sys_clk_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/1428938804/sys_clk_pic32mz.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1428938804/sys_clk_pic32mz.o.d" -o ${OBJECTDIR}/_ext/1428938804/sys_clk_pic32mz.o ../src/system_config/pic32mz_curiosity_v2_udp_led3/framework/system/clk/src/sys_clk_pic32mz.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/313238148/sys_ports_static.o: ../src/system_config/pic32mz_curiosity_v2_udp_led3/framework/system/ports/src/sys_ports_static.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/653feb460577c98160e0e37c06e401754d3255e3 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/313238148" 
	@${RM} ${OBJECTDIR}/_ext/313238148/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/313238148/sys_ports_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/313238148/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/313238148/sys_ports_static.o ../src/system_config/pic32mz_curiosity_v2_udp_led3/framework/system/ports/src/sys_ports_static.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/577575993/sys_reset.o: ../src/system_config/pic32mz_curiosity_v2_udp_led3/framework/system/reset/src/sys_reset.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/943e2c24a39c8a8b8a023cafb543afbb5d36e1f7 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/577575993" 
	@${RM} ${OBJECTDIR}/_ext/577575993/sys_reset.o.d 
	@${RM} ${OBJECTDIR}/_ext/577575993/sys_reset.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/577575993/sys_reset.o.d" -o ${OBJECTDIR}/_ext/577575993/sys_reset.o ../src/system_config/pic32mz_curiosity_v2_udp_led3/framework/system/reset/src/sys_reset.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2138285451/system_init.o: ../src/system_config/pic32mz_curiosity_v2_udp_led3/system_init.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/1134dfc866747594e3e684ccc7b97accf8793ebd .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/2138285451" 
	@${RM} ${OBJECTDIR}/_ext/2138285451/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/2138285451/system_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2138285451/system_init.o.d" -o ${OBJECTDIR}/_ext/2138285451/system_init.o ../src/system_config/pic32mz_curiosity_v2_udp_led3/system_init.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2138285451/system_interrupt.o: ../src/system_config/pic32mz_curiosity_v2_udp_led3/system_interrupt.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/b548f006cd18f6060de5f5aa39e1342dc412e4 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/2138285451" 
	@${RM} ${OBJECTDIR}/_ext/2138285451/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/2138285451/system_interrupt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2138285451/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/2138285451/system_interrupt.o ../src/system_config/pic32mz_curiosity_v2_udp_led3/system_interrupt.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2138285451/system_exceptions.o: ../src/system_config/pic32mz_curiosity_v2_udp_led3/system_exceptions.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/2d444c2e4bef93b68b48e5d568ccfb134d306c6 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/2138285451" 
	@${RM} ${OBJECTDIR}/_ext/2138285451/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/2138285451/system_exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2138285451/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/2138285451/system_exceptions.o ../src/system_config/pic32mz_curiosity_v2_udp_led3/system_exceptions.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2138285451/system_tasks.o: ../src/system_config/pic32mz_curiosity_v2_udp_led3/system_tasks.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/a37f6ef8d87a5f86940f5258d59a4c30eb788d78 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/2138285451" 
	@${RM} ${OBJECTDIR}/_ext/2138285451/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/2138285451/system_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2138285451/system_tasks.o.d" -o ${OBJECTDIR}/_ext/2138285451/system_tasks.o ../src/system_config/pic32mz_curiosity_v2_udp_led3/system_tasks.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/d5a116e96175910c6d5aebe87cdbcf976972797c .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/9bc9a7e7954e0eabc9ac006ce85e608f9b40f2fe .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app_helper.o: ../src/app_helper.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/a972ab0d359df60cd45447ba83f1be6dd7f7e716 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_helper.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_helper.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_helper.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_helper.o ../src/app_helper.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/682638542/datastream.o: ../../../../../../framework/bootloader/src/datastream/datastream.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/fdff58c9a536012c739f01c0add7290f7c48da01 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/682638542" 
	@${RM} ${OBJECTDIR}/_ext/682638542/datastream.o.d 
	@${RM} ${OBJECTDIR}/_ext/682638542/datastream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/682638542/datastream.o.d" -o ${OBJECTDIR}/_ext/682638542/datastream.o ../../../../../../framework/bootloader/src/datastream/datastream.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/682638542/datastream_udp.o: ../../../../../../framework/bootloader/src/datastream/datastream_udp.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/69dad6fa69df90ba9971d780c11ffb8971043edf .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/682638542" 
	@${RM} ${OBJECTDIR}/_ext/682638542/datastream_udp.o.d 
	@${RM} ${OBJECTDIR}/_ext/682638542/datastream_udp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/682638542/datastream_udp.o.d" -o ${OBJECTDIR}/_ext/682638542/datastream_udp.o ../../../../../../framework/bootloader/src/datastream/datastream_udp.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854679915/bootloader.o: ../../../../../../framework/bootloader/src/bootloader.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/cbc340691e3982db71d5b3c70f93da1aea857591 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1854679915" 
	@${RM} ${OBJECTDIR}/_ext/1854679915/bootloader.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854679915/bootloader.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1854679915/bootloader.o.d" -o ${OBJECTDIR}/_ext/1854679915/bootloader.o ../../../../../../framework/bootloader/src/bootloader.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854679915/nvm.o: ../../../../../../framework/bootloader/src/nvm.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/1e1fb6a20873abab225fbc8cc9e4a6810f79fc68 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1854679915" 
	@${RM} ${OBJECTDIR}/_ext/1854679915/nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854679915/nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1854679915/nvm.o.d" -o ${OBJECTDIR}/_ext/1854679915/nvm.o ../../../../../../framework/bootloader/src/nvm.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1764881201/drv_ethmac.o: ../../../../../../framework/driver/ethmac/src/dynamic/drv_ethmac.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/35438e221a01be5ec6d6b9a7a0584f8a11242514 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1764881201" 
	@${RM} ${OBJECTDIR}/_ext/1764881201/drv_ethmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1764881201/drv_ethmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1764881201/drv_ethmac.o.d" -o ${OBJECTDIR}/_ext/1764881201/drv_ethmac.o ../../../../../../framework/driver/ethmac/src/dynamic/drv_ethmac.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1764881201/drv_ethmac_lib.o: ../../../../../../framework/driver/ethmac/src/dynamic/drv_ethmac_lib.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/2a2a779257f48750730e3a2964e016edfebb2326 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1764881201" 
	@${RM} ${OBJECTDIR}/_ext/1764881201/drv_ethmac_lib.o.d 
	@${RM} ${OBJECTDIR}/_ext/1764881201/drv_ethmac_lib.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1764881201/drv_ethmac_lib.o.d" -o ${OBJECTDIR}/_ext/1764881201/drv_ethmac_lib.o ../../../../../../framework/driver/ethmac/src/dynamic/drv_ethmac_lib.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/588727395/drv_ethphy.o: ../../../../../../framework/driver/ethphy/src/dynamic/drv_ethphy.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/acef05db43c62d4541daf7afd739a0f6161b49ff .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/588727395" 
	@${RM} ${OBJECTDIR}/_ext/588727395/drv_ethphy.o.d 
	@${RM} ${OBJECTDIR}/_ext/588727395/drv_ethphy.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/588727395/drv_ethphy.o.d" -o ${OBJECTDIR}/_ext/588727395/drv_ethphy.o ../../../../../../framework/driver/ethphy/src/dynamic/drv_ethphy.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/588727395/drv_extphy_ksz8061.o: ../../../../../../framework/driver/ethphy/src/dynamic/drv_extphy_ksz8061.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/1eaa5b1c9fca9b2f3235377f0f5be00a853bf18f .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/588727395" 
	@${RM} ${OBJECTDIR}/_ext/588727395/drv_extphy_ksz8061.o.d 
	@${RM} ${OBJECTDIR}/_ext/588727395/drv_extphy_ksz8061.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/588727395/drv_extphy_ksz8061.o.d" -o ${OBJECTDIR}/_ext/588727395/drv_extphy_ksz8061.o ../../../../../../framework/driver/ethphy/src/dynamic/drv_extphy_ksz8061.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/572279899/drv_miim.o: ../../../../../../framework/driver/miim/src/dynamic/drv_miim.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/94c2f6741af0c26924c7ab1d4c091703ebbcd345 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/572279899" 
	@${RM} ${OBJECTDIR}/_ext/572279899/drv_miim.o.d 
	@${RM} ${OBJECTDIR}/_ext/572279899/drv_miim.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/572279899/drv_miim.o.d" -o ${OBJECTDIR}/_ext/572279899/drv_miim.o ../../../../../../framework/driver/miim/src/dynamic/drv_miim.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1152366776/drv_tmr.o: ../../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/414c5841a4a13eb4b06b4aebd93436e45541c968 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1152366776" 
	@${RM} ${OBJECTDIR}/_ext/1152366776/drv_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1152366776/drv_tmr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1152366776/drv_tmr.o.d" -o ${OBJECTDIR}/_ext/1152366776/drv_tmr.o ../../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1698770803/drv_usbhs.o: ../../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/2b1d08b69d089b8d39660b907a868552a43b72a8 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1698770803" 
	@${RM} ${OBJECTDIR}/_ext/1698770803/drv_usbhs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1698770803/drv_usbhs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1698770803/drv_usbhs.o.d" -o ${OBJECTDIR}/_ext/1698770803/drv_usbhs.o ../../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1698770803/drv_usbhs_device.o: ../../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs_device.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/a17a652e95219cac3ab525713e1edaa1d052462a .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1698770803" 
	@${RM} ${OBJECTDIR}/_ext/1698770803/drv_usbhs_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1698770803/drv_usbhs_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1698770803/drv_usbhs_device.o.d" -o ${OBJECTDIR}/_ext/1698770803/drv_usbhs_device.o ../../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs_device.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1451350481/sys_command.o: ../../../../../../framework/system/command/src/sys_command.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/3d45d512934a32fbc9e9c3cb59696260dfaa5ffe .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1451350481" 
	@${RM} ${OBJECTDIR}/_ext/1451350481/sys_command.o.d 
	@${RM} ${OBJECTDIR}/_ext/1451350481/sys_command.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1451350481/sys_command.o.d" -o ${OBJECTDIR}/_ext/1451350481/sys_command.o ../../../../../../framework/system/command/src/sys_command.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/169017583/sys_buffer.o: ../../../../../../framework/system/common/src/sys_buffer.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/361fb34e3929b7dd20e3397167a53f181a9731d9 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/169017583" 
	@${RM} ${OBJECTDIR}/_ext/169017583/sys_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/169017583/sys_buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/169017583/sys_buffer.o.d" -o ${OBJECTDIR}/_ext/169017583/sys_buffer.o ../../../../../../framework/system/common/src/sys_buffer.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/169017583/sys_queue.o: ../../../../../../framework/system/common/src/sys_queue.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/22f11107d1725f0e9138beff737860c9b4fd620a .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/169017583" 
	@${RM} ${OBJECTDIR}/_ext/169017583/sys_queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/169017583/sys_queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/169017583/sys_queue.o.d" -o ${OBJECTDIR}/_ext/169017583/sys_queue.o ../../../../../../framework/system/common/src/sys_queue.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/994638301/sys_console.o: ../../../../../../framework/system/console/src/sys_console.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/9a7c08a0ab979de835e2f82edf40009105586b05 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/994638301" 
	@${RM} ${OBJECTDIR}/_ext/994638301/sys_console.o.d 
	@${RM} ${OBJECTDIR}/_ext/994638301/sys_console.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/994638301/sys_console.o.d" -o ${OBJECTDIR}/_ext/994638301/sys_console.o ../../../../../../framework/system/console/src/sys_console.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/994638301/sys_console_usb_cdc.o: ../../../../../../framework/system/console/src/sys_console_usb_cdc.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/bb6e62dedf963d8cd1421d48e52b00817420bcd0 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/994638301" 
	@${RM} ${OBJECTDIR}/_ext/994638301/sys_console_usb_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/994638301/sys_console_usb_cdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/994638301/sys_console_usb_cdc.o.d" -o ${OBJECTDIR}/_ext/994638301/sys_console_usb_cdc.o ../../../../../../framework/system/console/src/sys_console_usb_cdc.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/322127129/sys_debug.o: ../../../../../../framework/system/debug/src/sys_debug.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/d6e77cabd1b72ccf73397bc6226758e5f9cac71a .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/322127129" 
	@${RM} ${OBJECTDIR}/_ext/322127129/sys_debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/322127129/sys_debug.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/322127129/sys_debug.o.d" -o ${OBJECTDIR}/_ext/322127129/sys_debug.o ../../../../../../framework/system/debug/src/sys_debug.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/912498863/sys_devcon.o: ../../../../../../framework/system/devcon/src/sys_devcon.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/427bda0e897f329fd7ba4d361dec4499a32c555a .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/912498863" 
	@${RM} ${OBJECTDIR}/_ext/912498863/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/912498863/sys_devcon.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/912498863/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/912498863/sys_devcon.o ../../../../../../framework/system/devcon/src/sys_devcon.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mz.o: ../../../../../../framework/system/devcon/src/sys_devcon_pic32mz.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/4066fe0a75930c33f3c619de5c4ee383eb89da98 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/912498863" 
	@${RM} ${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mz.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mz.o.d" -o ${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mz.o ../../../../../../framework/system/devcon/src/sys_devcon_pic32mz.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/711155467/sys_int_pic32.o: ../../../../../../framework/system/int/src/sys_int_pic32.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/e682acdf8dbc1c69a8ae131bda873edc4b0ccbfe .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/711155467" 
	@${RM} ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/711155467/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o ../../../../../../framework/system/int/src/sys_int_pic32.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/899838009/sys_random.o: ../../../../../../framework/system/random/src/sys_random.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/c1f3eddb67a8f33e136b9c1b556aae9c3e59b76 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/899838009" 
	@${RM} ${OBJECTDIR}/_ext/899838009/sys_random.o.d 
	@${RM} ${OBJECTDIR}/_ext/899838009/sys_random.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/899838009/sys_random.o.d" -o ${OBJECTDIR}/_ext/899838009/sys_random.o ../../../../../../framework/system/random/src/sys_random.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/430974239/sys_tmr.o: ../../../../../../framework/system/tmr/src/sys_tmr.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/5eaf960f24b053dad16e5687eab0b4b9b10610c9 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/430974239" 
	@${RM} ${OBJECTDIR}/_ext/430974239/sys_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/430974239/sys_tmr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/430974239/sys_tmr.o.d" -o ${OBJECTDIR}/_ext/430974239/sys_tmr.o ../../../../../../framework/system/tmr/src/sys_tmr.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/593738990/helpers.o: ../../../../../../framework/tcpip/src/common/helpers.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/1cd9848ec5e0a4b6f7eea4d28284a74d9da6ba17 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/593738990" 
	@${RM} ${OBJECTDIR}/_ext/593738990/helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/593738990/helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/593738990/helpers.o.d" -o ${OBJECTDIR}/_ext/593738990/helpers.o ../../../../../../framework/tcpip/src/common/helpers.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/ipv4.o: ../../../../../../framework/tcpip/src/ipv4.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/609accbfe838440da559608f501384a1ff5f345e .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/ipv4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/ipv4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/ipv4.o.d" -o ${OBJECTDIR}/_ext/1833714580/ipv4.o ../../../../../../framework/tcpip/src/ipv4.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/udp.o: ../../../../../../framework/tcpip/src/udp.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/51a170a3881d4618fb1e671d5bcf002dde837c16 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/udp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/udp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/udp.o.d" -o ${OBJECTDIR}/_ext/1833714580/udp.o ../../../../../../framework/tcpip/src/udp.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/tcpip_heap_alloc.o: ../../../../../../framework/tcpip/src/tcpip_heap_alloc.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/57b7d11142901307b7603547a38f4b30be5c233c .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_heap_alloc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_heap_alloc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/tcpip_heap_alloc.o.d" -o ${OBJECTDIR}/_ext/1833714580/tcpip_heap_alloc.o ../../../../../../framework/tcpip/src/tcpip_heap_alloc.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/tcpip_heap_internal.o: ../../../../../../framework/tcpip/src/tcpip_heap_internal.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/6c5d42c7bb4ef63d4432544d4b6db5396889bf1 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_heap_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_heap_internal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/tcpip_heap_internal.o.d" -o ${OBJECTDIR}/_ext/1833714580/tcpip_heap_internal.o ../../../../../../framework/tcpip/src/tcpip_heap_internal.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/arp.o: ../../../../../../framework/tcpip/src/arp.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/6adae1fcd3a08c35c70f11c1e2cc7f25c37d4860 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/arp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/arp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/arp.o.d" -o ${OBJECTDIR}/_ext/1833714580/arp.o ../../../../../../framework/tcpip/src/arp.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/dhcp.o: ../../../../../../framework/tcpip/src/dhcp.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/865660af6ae353cfc99e7d31360934e608c24229 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/dhcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/dhcp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/dhcp.o.d" -o ${OBJECTDIR}/_ext/1833714580/dhcp.o ../../../../../../framework/tcpip/src/dhcp.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/dns.o: ../../../../../../framework/tcpip/src/dns.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/a136a09315eccb0417bddefed52d918aa51954b0 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/dns.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/dns.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/dns.o.d" -o ${OBJECTDIR}/_ext/1833714580/dns.o ../../../../../../framework/tcpip/src/dns.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/hash_fnv.o: ../../../../../../framework/tcpip/src/hash_fnv.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/395bb4d1b95ad4bbcf6e4ae3966af8bd52132b9b .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/hash_fnv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/hash_fnv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/hash_fnv.o.d" -o ${OBJECTDIR}/_ext/1833714580/hash_fnv.o ../../../../../../framework/tcpip/src/hash_fnv.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/oahash.o: ../../../../../../framework/tcpip/src/oahash.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/6f7f006fd4fd33a14fd68ac91b22852f1fc8028f .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/oahash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/oahash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/oahash.o.d" -o ${OBJECTDIR}/_ext/1833714580/oahash.o ../../../../../../framework/tcpip/src/oahash.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/tcpip_helpers.o: ../../../../../../framework/tcpip/src/tcpip_helpers.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/3c4c1c2738d87cffbda49df72c3e1cc26fb05552 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/tcpip_helpers.o.d" -o ${OBJECTDIR}/_ext/1833714580/tcpip_helpers.o ../../../../../../framework/tcpip/src/tcpip_helpers.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/tcpip_manager.o: ../../../../../../framework/tcpip/src/tcpip_manager.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/15912dd16baa2b5672fc49bf0e3a91f8d92451e9 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/tcpip_manager.o.d" -o ${OBJECTDIR}/_ext/1833714580/tcpip_manager.o ../../../../../../framework/tcpip/src/tcpip_manager.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/tcpip_notify.o: ../../../../../../framework/tcpip/src/tcpip_notify.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/8f242a3b1bac86120871ca9922eba97e55cb38c8 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_notify.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_notify.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/tcpip_notify.o.d" -o ${OBJECTDIR}/_ext/1833714580/tcpip_notify.o ../../../../../../framework/tcpip/src/tcpip_notify.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/tcpip_packet.o: ../../../../../../framework/tcpip/src/tcpip_packet.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/b8e6c2796ace35512ff60079bbc0d335b29604a .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_packet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_packet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/tcpip_packet.o.d" -o ${OBJECTDIR}/_ext/1833714580/tcpip_packet.o ../../../../../../framework/tcpip/src/tcpip_packet.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/692885480/usb_device.o: ../../../../../../framework/usb/src/dynamic/usb_device.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/37cc340a4e018f66c64d3e11bc9fc6ef7dbc83f6 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/692885480" 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/692885480/usb_device.o.d" -o ${OBJECTDIR}/_ext/692885480/usb_device.o ../../../../../../framework/usb/src/dynamic/usb_device.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/692885480/usb_device_cdc.o: ../../../../../../framework/usb/src/dynamic/usb_device_cdc.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/9f040e3950f394708f18b5277c0b1f7e292d6fa4 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/692885480" 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device_cdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/692885480/usb_device_cdc.o.d" -o ${OBJECTDIR}/_ext/692885480/usb_device_cdc.o ../../../../../../framework/usb/src/dynamic/usb_device_cdc.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/692885480/usb_device_cdc_acm.o: ../../../../../../framework/usb/src/dynamic/usb_device_cdc_acm.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/db3478edafac39262dc638c3635978150d7e2831 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/692885480" 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device_cdc_acm.o.d 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device_cdc_acm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/692885480/usb_device_cdc_acm.o.d" -o ${OBJECTDIR}/_ext/692885480/usb_device_cdc_acm.o ../../../../../../framework/usb/src/dynamic/usb_device_cdc_acm.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/1428765765/bsp.o: ../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp/bsp.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/6077ff187bf98b4077cb93cbbc52d5cb06f86d97 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1428765765" 
	@${RM} ${OBJECTDIR}/_ext/1428765765/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1428765765/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1428765765/bsp.o.d" -o ${OBJECTDIR}/_ext/1428765765/bsp.o ../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp/bsp.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1414366957/drv_flash_static.o: ../src/system_config/pic32mz_curiosity_v2_udp_led3/framework/driver/flash/src/drv_flash_static.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/f20de85b28637183b3acda0471e133b4d5d07b5a .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1414366957" 
	@${RM} ${OBJECTDIR}/_ext/1414366957/drv_flash_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/1414366957/drv_flash_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1414366957/drv_flash_static.o.d" -o ${OBJECTDIR}/_ext/1414366957/drv_flash_static.o ../src/system_config/pic32mz_curiosity_v2_udp_led3/framework/driver/flash/src/drv_flash_static.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1428938804/sys_clk_pic32mz.o: ../src/system_config/pic32mz_curiosity_v2_udp_led3/framework/system/clk/src/sys_clk_pic32mz.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/428e9dc777d60891c2575604cc2cf89b3322669e .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1428938804" 
	@${RM} ${OBJECTDIR}/_ext/1428938804/sys_clk_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/1428938804/sys_clk_pic32mz.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1428938804/sys_clk_pic32mz.o.d" -o ${OBJECTDIR}/_ext/1428938804/sys_clk_pic32mz.o ../src/system_config/pic32mz_curiosity_v2_udp_led3/framework/system/clk/src/sys_clk_pic32mz.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/313238148/sys_ports_static.o: ../src/system_config/pic32mz_curiosity_v2_udp_led3/framework/system/ports/src/sys_ports_static.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/233f16bcc08ea026705a9f4fa3555eaeb1386d28 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/313238148" 
	@${RM} ${OBJECTDIR}/_ext/313238148/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/313238148/sys_ports_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/313238148/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/313238148/sys_ports_static.o ../src/system_config/pic32mz_curiosity_v2_udp_led3/framework/system/ports/src/sys_ports_static.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/577575993/sys_reset.o: ../src/system_config/pic32mz_curiosity_v2_udp_led3/framework/system/reset/src/sys_reset.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/bdca53cfa581f5502224321696d85375f8458098 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/577575993" 
	@${RM} ${OBJECTDIR}/_ext/577575993/sys_reset.o.d 
	@${RM} ${OBJECTDIR}/_ext/577575993/sys_reset.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/577575993/sys_reset.o.d" -o ${OBJECTDIR}/_ext/577575993/sys_reset.o ../src/system_config/pic32mz_curiosity_v2_udp_led3/framework/system/reset/src/sys_reset.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2138285451/system_init.o: ../src/system_config/pic32mz_curiosity_v2_udp_led3/system_init.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/ec1060ff4a7247cc74089c412065391f0266c26b .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/2138285451" 
	@${RM} ${OBJECTDIR}/_ext/2138285451/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/2138285451/system_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2138285451/system_init.o.d" -o ${OBJECTDIR}/_ext/2138285451/system_init.o ../src/system_config/pic32mz_curiosity_v2_udp_led3/system_init.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2138285451/system_interrupt.o: ../src/system_config/pic32mz_curiosity_v2_udp_led3/system_interrupt.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/32101263e3e004a42465f4a0b55a58be087e26cf .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/2138285451" 
	@${RM} ${OBJECTDIR}/_ext/2138285451/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/2138285451/system_interrupt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2138285451/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/2138285451/system_interrupt.o ../src/system_config/pic32mz_curiosity_v2_udp_led3/system_interrupt.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2138285451/system_exceptions.o: ../src/system_config/pic32mz_curiosity_v2_udp_led3/system_exceptions.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/2ce4d709e2e95fc9a0c5a4c6ae2b92fc28c2e21b .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/2138285451" 
	@${RM} ${OBJECTDIR}/_ext/2138285451/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/2138285451/system_exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2138285451/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/2138285451/system_exceptions.o ../src/system_config/pic32mz_curiosity_v2_udp_led3/system_exceptions.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2138285451/system_tasks.o: ../src/system_config/pic32mz_curiosity_v2_udp_led3/system_tasks.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/e55ef3926d3b37458b334bfb08859200e5a44724 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/2138285451" 
	@${RM} ${OBJECTDIR}/_ext/2138285451/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/2138285451/system_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2138285451/system_tasks.o.d" -o ${OBJECTDIR}/_ext/2138285451/system_tasks.o ../src/system_config/pic32mz_curiosity_v2_udp_led3/system_tasks.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/914b23da936f925f60ae453d4b0eaa2d732fee13 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/115f79b3604729cdf24a64971158b7d7a8f4c73c .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app_helper.o: ../src/app_helper.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/b552ca4d457e61d7e0b9fb5b8ef451c2882be8f6 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_helper.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_helper.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_helper.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_helper.o ../src/app_helper.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/682638542/datastream.o: ../../../../../../framework/bootloader/src/datastream/datastream.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/3d283dd632ef453c89be259040c572c51bd8005f .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/682638542" 
	@${RM} ${OBJECTDIR}/_ext/682638542/datastream.o.d 
	@${RM} ${OBJECTDIR}/_ext/682638542/datastream.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/682638542/datastream.o.d" -o ${OBJECTDIR}/_ext/682638542/datastream.o ../../../../../../framework/bootloader/src/datastream/datastream.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/682638542/datastream_udp.o: ../../../../../../framework/bootloader/src/datastream/datastream_udp.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/633705a4f4c5e59d8b90dcd4fa0459962d68d375 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/682638542" 
	@${RM} ${OBJECTDIR}/_ext/682638542/datastream_udp.o.d 
	@${RM} ${OBJECTDIR}/_ext/682638542/datastream_udp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/682638542/datastream_udp.o.d" -o ${OBJECTDIR}/_ext/682638542/datastream_udp.o ../../../../../../framework/bootloader/src/datastream/datastream_udp.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854679915/bootloader.o: ../../../../../../framework/bootloader/src/bootloader.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/3d6df05215a403c2e63e9c614ff870eb4ad4a140 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1854679915" 
	@${RM} ${OBJECTDIR}/_ext/1854679915/bootloader.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854679915/bootloader.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1854679915/bootloader.o.d" -o ${OBJECTDIR}/_ext/1854679915/bootloader.o ../../../../../../framework/bootloader/src/bootloader.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1854679915/nvm.o: ../../../../../../framework/bootloader/src/nvm.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/b5e710d266d59989f9197b974ac4dc6758710e0c .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1854679915" 
	@${RM} ${OBJECTDIR}/_ext/1854679915/nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1854679915/nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1854679915/nvm.o.d" -o ${OBJECTDIR}/_ext/1854679915/nvm.o ../../../../../../framework/bootloader/src/nvm.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1764881201/drv_ethmac.o: ../../../../../../framework/driver/ethmac/src/dynamic/drv_ethmac.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/f00fc64e8c66daf71ccb32de2b43ddd83875cc18 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1764881201" 
	@${RM} ${OBJECTDIR}/_ext/1764881201/drv_ethmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1764881201/drv_ethmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1764881201/drv_ethmac.o.d" -o ${OBJECTDIR}/_ext/1764881201/drv_ethmac.o ../../../../../../framework/driver/ethmac/src/dynamic/drv_ethmac.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1764881201/drv_ethmac_lib.o: ../../../../../../framework/driver/ethmac/src/dynamic/drv_ethmac_lib.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/e9d435f7e1465aca6976442e3f0ca07f30e56a9e .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1764881201" 
	@${RM} ${OBJECTDIR}/_ext/1764881201/drv_ethmac_lib.o.d 
	@${RM} ${OBJECTDIR}/_ext/1764881201/drv_ethmac_lib.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1764881201/drv_ethmac_lib.o.d" -o ${OBJECTDIR}/_ext/1764881201/drv_ethmac_lib.o ../../../../../../framework/driver/ethmac/src/dynamic/drv_ethmac_lib.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/588727395/drv_ethphy.o: ../../../../../../framework/driver/ethphy/src/dynamic/drv_ethphy.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/a3e7e9865048cb650834dc406155aee1fe9255a7 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/588727395" 
	@${RM} ${OBJECTDIR}/_ext/588727395/drv_ethphy.o.d 
	@${RM} ${OBJECTDIR}/_ext/588727395/drv_ethphy.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/588727395/drv_ethphy.o.d" -o ${OBJECTDIR}/_ext/588727395/drv_ethphy.o ../../../../../../framework/driver/ethphy/src/dynamic/drv_ethphy.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/588727395/drv_extphy_ksz8061.o: ../../../../../../framework/driver/ethphy/src/dynamic/drv_extphy_ksz8061.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/1b19b8e095e583d2f5ab3fdcfa46c572f2cb0660 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/588727395" 
	@${RM} ${OBJECTDIR}/_ext/588727395/drv_extphy_ksz8061.o.d 
	@${RM} ${OBJECTDIR}/_ext/588727395/drv_extphy_ksz8061.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/588727395/drv_extphy_ksz8061.o.d" -o ${OBJECTDIR}/_ext/588727395/drv_extphy_ksz8061.o ../../../../../../framework/driver/ethphy/src/dynamic/drv_extphy_ksz8061.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/572279899/drv_miim.o: ../../../../../../framework/driver/miim/src/dynamic/drv_miim.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/adba69ebb445653c55f1fe9f639a5d181cf5558 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/572279899" 
	@${RM} ${OBJECTDIR}/_ext/572279899/drv_miim.o.d 
	@${RM} ${OBJECTDIR}/_ext/572279899/drv_miim.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/572279899/drv_miim.o.d" -o ${OBJECTDIR}/_ext/572279899/drv_miim.o ../../../../../../framework/driver/miim/src/dynamic/drv_miim.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1152366776/drv_tmr.o: ../../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/9faf32f9180a6944265be913d9b277bcfd493ddc .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1152366776" 
	@${RM} ${OBJECTDIR}/_ext/1152366776/drv_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1152366776/drv_tmr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1152366776/drv_tmr.o.d" -o ${OBJECTDIR}/_ext/1152366776/drv_tmr.o ../../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1698770803/drv_usbhs.o: ../../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/9d20461e45abc7cd0fd4ace3b519fc1bb7086d69 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1698770803" 
	@${RM} ${OBJECTDIR}/_ext/1698770803/drv_usbhs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1698770803/drv_usbhs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1698770803/drv_usbhs.o.d" -o ${OBJECTDIR}/_ext/1698770803/drv_usbhs.o ../../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1698770803/drv_usbhs_device.o: ../../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs_device.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/2e687ecfbac36b5fe98d5257e8465b7998124bb7 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1698770803" 
	@${RM} ${OBJECTDIR}/_ext/1698770803/drv_usbhs_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1698770803/drv_usbhs_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1698770803/drv_usbhs_device.o.d" -o ${OBJECTDIR}/_ext/1698770803/drv_usbhs_device.o ../../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs_device.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1451350481/sys_command.o: ../../../../../../framework/system/command/src/sys_command.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/4b9feb7a55cae56a14ac09b736734a1190d31e2 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1451350481" 
	@${RM} ${OBJECTDIR}/_ext/1451350481/sys_command.o.d 
	@${RM} ${OBJECTDIR}/_ext/1451350481/sys_command.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1451350481/sys_command.o.d" -o ${OBJECTDIR}/_ext/1451350481/sys_command.o ../../../../../../framework/system/command/src/sys_command.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/169017583/sys_buffer.o: ../../../../../../framework/system/common/src/sys_buffer.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/6004909158ca1d98a2739f476bc44f0729610bac .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/169017583" 
	@${RM} ${OBJECTDIR}/_ext/169017583/sys_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/169017583/sys_buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/169017583/sys_buffer.o.d" -o ${OBJECTDIR}/_ext/169017583/sys_buffer.o ../../../../../../framework/system/common/src/sys_buffer.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/169017583/sys_queue.o: ../../../../../../framework/system/common/src/sys_queue.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/1c2a721c95b95b40259ce7d83098dd2ce64568ef .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/169017583" 
	@${RM} ${OBJECTDIR}/_ext/169017583/sys_queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/169017583/sys_queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/169017583/sys_queue.o.d" -o ${OBJECTDIR}/_ext/169017583/sys_queue.o ../../../../../../framework/system/common/src/sys_queue.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/994638301/sys_console.o: ../../../../../../framework/system/console/src/sys_console.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/9e00008ea36f74f081cbfcd5fdd429f2740acf4c .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/994638301" 
	@${RM} ${OBJECTDIR}/_ext/994638301/sys_console.o.d 
	@${RM} ${OBJECTDIR}/_ext/994638301/sys_console.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/994638301/sys_console.o.d" -o ${OBJECTDIR}/_ext/994638301/sys_console.o ../../../../../../framework/system/console/src/sys_console.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/994638301/sys_console_usb_cdc.o: ../../../../../../framework/system/console/src/sys_console_usb_cdc.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/19785882aed0f3d35a610e0ae08c9d2d1a839ad5 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/994638301" 
	@${RM} ${OBJECTDIR}/_ext/994638301/sys_console_usb_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/994638301/sys_console_usb_cdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/994638301/sys_console_usb_cdc.o.d" -o ${OBJECTDIR}/_ext/994638301/sys_console_usb_cdc.o ../../../../../../framework/system/console/src/sys_console_usb_cdc.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/322127129/sys_debug.o: ../../../../../../framework/system/debug/src/sys_debug.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/3a53d260fe08ea3e258728cbdde77b27e9c03d5e .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/322127129" 
	@${RM} ${OBJECTDIR}/_ext/322127129/sys_debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/322127129/sys_debug.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/322127129/sys_debug.o.d" -o ${OBJECTDIR}/_ext/322127129/sys_debug.o ../../../../../../framework/system/debug/src/sys_debug.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/912498863/sys_devcon.o: ../../../../../../framework/system/devcon/src/sys_devcon.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/cfbcfe4129771baddb08df609ef4a6e991d195ed .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/912498863" 
	@${RM} ${OBJECTDIR}/_ext/912498863/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/912498863/sys_devcon.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/912498863/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/912498863/sys_devcon.o ../../../../../../framework/system/devcon/src/sys_devcon.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mz.o: ../../../../../../framework/system/devcon/src/sys_devcon_pic32mz.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/6d06195377bc84c6515c32b492c3888a7f173cb3 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/912498863" 
	@${RM} ${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mz.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mz.o.d" -o ${OBJECTDIR}/_ext/912498863/sys_devcon_pic32mz.o ../../../../../../framework/system/devcon/src/sys_devcon_pic32mz.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/711155467/sys_int_pic32.o: ../../../../../../framework/system/int/src/sys_int_pic32.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/f6a8a2f8b921e01297a3693087ba9294315dca9 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/711155467" 
	@${RM} ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/711155467/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o ../../../../../../framework/system/int/src/sys_int_pic32.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/899838009/sys_random.o: ../../../../../../framework/system/random/src/sys_random.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/6546a7fe1e71bf71ccd2385145a0eae96832a3f2 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/899838009" 
	@${RM} ${OBJECTDIR}/_ext/899838009/sys_random.o.d 
	@${RM} ${OBJECTDIR}/_ext/899838009/sys_random.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/899838009/sys_random.o.d" -o ${OBJECTDIR}/_ext/899838009/sys_random.o ../../../../../../framework/system/random/src/sys_random.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/430974239/sys_tmr.o: ../../../../../../framework/system/tmr/src/sys_tmr.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/5e61c6a42621588afcc6d519ffaed182e035ec16 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/430974239" 
	@${RM} ${OBJECTDIR}/_ext/430974239/sys_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/430974239/sys_tmr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/430974239/sys_tmr.o.d" -o ${OBJECTDIR}/_ext/430974239/sys_tmr.o ../../../../../../framework/system/tmr/src/sys_tmr.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/593738990/helpers.o: ../../../../../../framework/tcpip/src/common/helpers.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/5d2958ad1eb7ff778f3185fcacb385fdca645f19 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/593738990" 
	@${RM} ${OBJECTDIR}/_ext/593738990/helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/593738990/helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/593738990/helpers.o.d" -o ${OBJECTDIR}/_ext/593738990/helpers.o ../../../../../../framework/tcpip/src/common/helpers.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/ipv4.o: ../../../../../../framework/tcpip/src/ipv4.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/88952a736c8a72065ad71c14b084d1c0eb146307 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/ipv4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/ipv4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/ipv4.o.d" -o ${OBJECTDIR}/_ext/1833714580/ipv4.o ../../../../../../framework/tcpip/src/ipv4.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/udp.o: ../../../../../../framework/tcpip/src/udp.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/83075219a1ee144434fa20852b963050e9280579 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/udp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/udp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/udp.o.d" -o ${OBJECTDIR}/_ext/1833714580/udp.o ../../../../../../framework/tcpip/src/udp.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/tcpip_heap_alloc.o: ../../../../../../framework/tcpip/src/tcpip_heap_alloc.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/210609a73d21f13446c224fee9488b668b173167 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_heap_alloc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_heap_alloc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/tcpip_heap_alloc.o.d" -o ${OBJECTDIR}/_ext/1833714580/tcpip_heap_alloc.o ../../../../../../framework/tcpip/src/tcpip_heap_alloc.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/tcpip_heap_internal.o: ../../../../../../framework/tcpip/src/tcpip_heap_internal.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/2e596d1aab773ed48636d03560a96cd05f7059d3 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_heap_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_heap_internal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/tcpip_heap_internal.o.d" -o ${OBJECTDIR}/_ext/1833714580/tcpip_heap_internal.o ../../../../../../framework/tcpip/src/tcpip_heap_internal.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/arp.o: ../../../../../../framework/tcpip/src/arp.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/d9eb0b0eb1a22fadbf0f007806de7204aee199f0 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/arp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/arp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/arp.o.d" -o ${OBJECTDIR}/_ext/1833714580/arp.o ../../../../../../framework/tcpip/src/arp.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/dhcp.o: ../../../../../../framework/tcpip/src/dhcp.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/8e96dbe182bc6682d8515fcfe5e2be004d3ed93 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/dhcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/dhcp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/dhcp.o.d" -o ${OBJECTDIR}/_ext/1833714580/dhcp.o ../../../../../../framework/tcpip/src/dhcp.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/dns.o: ../../../../../../framework/tcpip/src/dns.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/1bf7e8899d813bd529782522cb3c7a19923194f9 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/dns.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/dns.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/dns.o.d" -o ${OBJECTDIR}/_ext/1833714580/dns.o ../../../../../../framework/tcpip/src/dns.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/hash_fnv.o: ../../../../../../framework/tcpip/src/hash_fnv.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/e1a10fb36118e806b000164fa248b7843bb10cca .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/hash_fnv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/hash_fnv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/hash_fnv.o.d" -o ${OBJECTDIR}/_ext/1833714580/hash_fnv.o ../../../../../../framework/tcpip/src/hash_fnv.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/oahash.o: ../../../../../../framework/tcpip/src/oahash.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/ad10e8bf0bf4f0f2db7fbfd848a1a4892e5360ec .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/oahash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/oahash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/oahash.o.d" -o ${OBJECTDIR}/_ext/1833714580/oahash.o ../../../../../../framework/tcpip/src/oahash.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/tcpip_helpers.o: ../../../../../../framework/tcpip/src/tcpip_helpers.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/522684ab132121fefb89b69a7a0dded104ba4f70 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/tcpip_helpers.o.d" -o ${OBJECTDIR}/_ext/1833714580/tcpip_helpers.o ../../../../../../framework/tcpip/src/tcpip_helpers.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/tcpip_manager.o: ../../../../../../framework/tcpip/src/tcpip_manager.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/db4762f0ec3a30d3eda92199638781ed82405d3 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/tcpip_manager.o.d" -o ${OBJECTDIR}/_ext/1833714580/tcpip_manager.o ../../../../../../framework/tcpip/src/tcpip_manager.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/tcpip_notify.o: ../../../../../../framework/tcpip/src/tcpip_notify.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/79a8a1eb0e721d20f6eba676e2a17517f8273f15 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_notify.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_notify.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/tcpip_notify.o.d" -o ${OBJECTDIR}/_ext/1833714580/tcpip_notify.o ../../../../../../framework/tcpip/src/tcpip_notify.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1833714580/tcpip_packet.o: ../../../../../../framework/tcpip/src/tcpip_packet.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/1f6b9464c7b3b602b80a789a2032ca20ce1b5d4 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/1833714580" 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_packet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1833714580/tcpip_packet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1833714580/tcpip_packet.o.d" -o ${OBJECTDIR}/_ext/1833714580/tcpip_packet.o ../../../../../../framework/tcpip/src/tcpip_packet.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/692885480/usb_device.o: ../../../../../../framework/usb/src/dynamic/usb_device.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/1ab61a7b9ab281ce51b82243b32e3bf642c5ef12 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/692885480" 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/692885480/usb_device.o.d" -o ${OBJECTDIR}/_ext/692885480/usb_device.o ../../../../../../framework/usb/src/dynamic/usb_device.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/692885480/usb_device_cdc.o: ../../../../../../framework/usb/src/dynamic/usb_device_cdc.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/b80a65e15a18a47958452c42dee0b6d0f1ccc01 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/692885480" 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device_cdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/692885480/usb_device_cdc.o.d" -o ${OBJECTDIR}/_ext/692885480/usb_device_cdc.o ../../../../../../framework/usb/src/dynamic/usb_device_cdc.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/692885480/usb_device_cdc_acm.o: ../../../../../../framework/usb/src/dynamic/usb_device_cdc_acm.c  .generated_files/flags/pic32mz_curiosity_v2_udp_led3/a8e92ceb295992707bd5e508992754e83a1617e3 .generated_files/flags/pic32mz_curiosity_v2_udp_led3/52a56d43e5361242acb1485a17d792daa15724df
	@${MKDIR} "${OBJECTDIR}/_ext/692885480" 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device_cdc_acm.o.d 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device_cdc_acm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -I"../src" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3" -I"../src/pic32mz_curiosity_v2_udp_led3" -I"../../../../../../framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/framework" -I"../src/system_config/pic32mz_curiosity_v2_udp_led3/bsp" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/692885480/usb_device_cdc_acm.o.d" -o ${OBJECTDIR}/_ext/692885480/usb_device_cdc_acm.o ../../../../../../framework/usb/src/dynamic/usb_device_cdc_acm.c    -DXPRJ_pic32mz_curiosity_v2_udp_led3=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
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
