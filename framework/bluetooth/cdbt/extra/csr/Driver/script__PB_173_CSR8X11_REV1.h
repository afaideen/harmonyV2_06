//-------------------------------------------------------------------
// DO NOT MODIFY THIS FILE!
// This file was machine generated by the make_patch_script.pl script
//-------------------------------------------------------------------

#ifndef __BTX_CSR_PATCH_SCRIPT_INCLUDED__
#define __BTX_CSR_PATCH_SCRIPT_INCLUDED__

// =============================================================================
// 
// CSR tracking information, report this in case of problems:
//   $Revision: #2 $
//   Built Thu Nov 27 10:10:56 2014 GMT
//   Checked-in $DateTime: 2014/11/27 10:15:04 $
//   $File: //depot/bc/gemini-a12/dev/patches/10520/pb-173.psr $
// 
// Patch is for build 10520 gem_5hci_rom_bt4.1_gemA12_1407301204_dspm_encr128
// 
// Issues patched: B-158094, B-171616, B-174812
// 
// Documentation from pb-173.pb
// ----------------------------
// 
// This is patch bundle for Gemini A12.
// 
// Documentation from disable_to_air_shunt.pb
// ------------------------------------------
// 
// Issues patched: B-174812
// 
// By default, To-air shunt will be disabled for all users of this
// device regardless of package or application.
// 
// Documentation from patch_ulp_adv_avg_to_calc.xap
// ------------------------------------------------
// 
// Issues patched: B-171616
// 
// Bluecore firmware does not send LE ADVERTISING REPORT with
// rssi value -127 even when it does not receive any advertising
// packet from PEER for average rssi supervision timeout.
// 
// Documentation from patch_ble_scan_deaf.xap
// ------------------------------------------
// 
// Issues patched: B-158094
// 
// When BlueCore is asked to do BLE scanning, it scans for a window
// approximately 2.5% shorter than asked for. Generally, this does
// not cause noticeable effects; sometimes BLE adverts can be missed
// making connection initialisation between two BLE devices take
// somewhat longer than expected. In pathological cases, especially
// if the scan window is long, connections may fail to be made entirely.
// 
// Version information for input files
// -----------------------------------
// 
// Created by patchmaker.pl Revision: #1  Date: 2014/06/13 
// 
// Input file: pb-173.pb
// Depot file: //depot/bc/gemini-a12/dev/patches/10520/pb-173.pb
// File revision: 2
// 
// Input file: disable_to_air_shunt.pb
// Depot file: //depot/bc/gemini-a12/dev/patches/10520/disable_to_air_shunt.pb
// File revision: 3
// 
// Input file: patch_ulp_adv_avg_to_calc.xap
// Depot file: //depot/bc/gemini-a12/dev/patches/10520/patch_ulp_adv_avg_to_calc.xap
// File revision: 3
// 
// Input file: ../patch_utils.inc
// Depot file: //depot/bc/gemini-a12/dev/patches/patch_utils.inc
// File revision: 1
// 
// Input file: patch_ble_scan_deaf.xap
// Depot file: //depot/bc/gemini-a12/dev/patches/10520/patch_ble_scan_deaf.xap
// File revision: 3
// patch_hardware_1, PSKEY_PATCH51 (0x212d, 8493), 21 words
static const bt_byte packet1[] = {
    H(0x212d, 21, 1), 
    W(0x0002), W(0x968a), W(0x0863), W(0xf925), W(0xf821), W(0x0757), W(0x0663), W(0xe099), W(0x02ec), W(0x05e0), W(0xf915), W(0x0727), W(0xf815), W(0x0627), W(0x0218), W(0xff2b), W(0xff0e), W(0x9700), W(0x8d18), W(0x00e2), W(0x7e34), 

};

// patch_hardware_2, PSKEY_PATCH52 (0x212e, 8494), 16 words
static const bt_byte packet2[] = {
    H(0x212e, 16, 2), 
    W(0x0002), W(0x0b5a), W(0x0100), W(0x7834), W(0x0040), W(0x0327), W(0x0223), W(0xf815), W(0xe311), W(0x0218), W(0xff2b), W(0xff0e), W(0x0b00), W(0x5e18), W(0x00e2), W(0x59c1), 

};

// explicit, PSKEY_DISABLE_TO_AIR_SHUNT (0x25f6, 9718), 1 words
static const bt_byte packet3[] = {
    H(0x25f6, 1, 3), 
    W(0x0001), 

};

static const bt_byte* const packets[] = {
    packet1,
    packet2,
    packet3
};

#define PACKET_COUNT 3

#endif // __BTX_CSR_PATCH_SCRIPT_INCLUDED__

//-------------------------------------------------------------------
// END OF GENERATED FILE
//-------------------------------------------------------------------
