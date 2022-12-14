#include "cdbt/bt/bt_std.h"
#include "cdbt/bt/bt_private.h"
#include "cdbt/extra/ti/ti.h"

//--------------------------------------------------------------------------------
// Description : Orca L PG 2.0 ROM Initialization Script
//
// Compatibility: Orca, 7.0.16 ROM
//
// Last Updated: 01-Jun-2014  15:57:37.02
//
// Version     : TI_P7_16.12
//
//
//
//
// Notes       : Use this script on Orca L PG 2.0, 7.0.16 ROM device only (FW v7.0.16)
//--------------------------------------------------------------------------------
//################################################################
//# START of CC256x Add-On
//################################################################
//# Change UART baudrate
//const unsigned char packet01[] = {0x01,0x36,0xff,0x04,0x00,0xc2,0x01,0x00};
//################################################################
//# END of CC256x Add-On
//################################################################
static const unsigned char packet02[] = {0x01,0x37,0xfe,0x02,0x07,0x10};
static const unsigned char packet03[] = {0x01,0x05,0xff,0xff,0xd0,0x62,0x08,0x00,0xfa,0x07,0x10,0x47,0x0c,0x00,0x00,0x00,
                               0x00,0x00,0x00,0x00,0x00,0xf0,0xb5,0x88,0xb0,0x02,0x90,0x47,0x68,0xff,0x20,0x26,
                               0x30,0xc0,0x5d,0x00,0x28,0x26,0xd0,0x01,0x38,0x1d,0xd0,0x01,0x38,0x2a,0xd1,0xff,
                               0x24,0x95,0x34,0xe5,0x19,0x29,0x88,0x08,0x20,0x01,0x26,0xb6,0x46,0x39,0x4a,0xfe,
                               0x44,0x10,0x47,0x00,0x29,0x01,0xd1,0x02,0x20,0x07,0xe0,0xe5,0x19,0x29,0x88,0x08,
                               0x20,0xb6,0x46,0x34,0x4a,0xfe,0x44,0x10,0x47,0x48,0x1c,0xe9,0x88,0x0c,0x1c,0x44,
                               0x43,0x60,0x2c,0x0f,0xd9,0x0f,0xe0,0xff,0x20,0x99,0x30,0xc0,0x5b,0x5e,0x28,0x09,
                               0xdb,0xc4,0x1c,0x08,0xe0,0xff,0x20,0xed,0x30,0xc4,0x5b,0x10,0x2c,0x02,0xdd,0x06,
                               0x20,0x44,0x43,0x00,0xe0,0x60,0x24,0x41,0x20,0x00,0x21,0x01,0x22,0x96,0x46,0x26,
                               0x4a,0xfe,0x44,0x10,0x47,0x03,0x90,0x61,0x08,0x40,0x18,0x01,0x30,0x80,0x01,0x80,
                               0x09,0x04,0x90,0x22,0x48,0x05,0x90,0x00,0x26,0x05,0x9d,0xa8,0x7b,0x00,0x28,0x2d,
                               0xd0,0x28,0x7c,0x39,0x78,0x81,0x42,0x29,0xd1,0x1d,0x48,0x00,0x2e,0x00,0xd0,0x14,
                               0x30,0x00,0x68,0x80,0x06,0x80,0x0e,0x03,0x99,0x08,0x18,0x80,0x01,0x80,0x09,0x06,
                               0x90,0x04,0x99,0x01,0x22,0x96,0x46,0x17,0x4a,0xfe,0x44,0x10,0x47,0x07,0x90,0x2d,
                               0x7b,0x29,0x1c,0x01,0x22,0x96,0x46,0x14,0x4a,0xfe,0x44,0x10,0x47,0x02,0x28,0x0d,
                               0xda,0x2c,0x19,0x06,0x98,0x00,0x90,0x07,0x98,0x01,0x90,0x03,0x20,0x0f,0x49,0x04,
                               0x9a,0x23,0x1c};
static const unsigned char packet04[] = {0x01,0x05,0xff,0xff,0xca,0x63,0x08,0x00,0xfa,0x01,0x25,0xae,0x46,0x0e,0x4d,0xfe,
                               0x44,0x28,0x47,0x05,0x98,0x28,0x30,0x05,0x90,0x01,0x36,0x02,0x2e,0xc7,0xd3,0x02,
                               0x98,0x44,0x60,0x09,0x48,0x33,0x30,0x08,0xb0,0xf0,0xbd,0xad,0x45,0x05,0x00,0x93,
                               0xe4,0x04,0x00,0x38,0x1d,0x08,0x00,0x0c,0x05,0x1a,0x00,0x39,0x7a,0x04,0x00,0xad,
                               0x45,0x05,0x00,0x69,0x07,0x00,0x00,0x9b,0x88,0x04,0x00,0x7b,0xbf,0x02,0x00,0x00,
                               0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
                               0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
                               0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
                               0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x70,
                               0xb5,0x37,0x4d,0xae,0x7f,0x01,0x24,0xa6,0x46,0x33,0x48,0xfe,0x44,0x00,0x47,0xb0,
                               0x42,0xf8,0xd1,0x03,0x20,0x17,0x21,0x89,0x01,0xa6,0x46,0x2f,0x4a,0xfe,0x44,0x10,
                               0x47,0xad,0x7f,0xa6,0x46,0x2c,0x48,0xfe,0x44,0x00,0x47,0xa8,0x42,0xf9,0xd1,0xfe,
                               0xe7,0x30,0xb5,0x2b,0x49,0x08,0x1f,0x2b,0x4a,0x10,0x60,0x04,0x23,0x3c,0x48,0x03,
                               0x70,0x34,0x48,0x02,0x1c,0x70,0x3a,0x21,0x25,0x01,0x24,0xac,0x54,0x27,0x4c,0x0c,
                               0x60,0x02,0x24,0x54,0x71,0x26,0x4c,0x4c,0x60,0x03,0x24,0x14,0x70,0x25,0x4c,0x8c,
                               0x60,0x13,0x71,0x24,0x4b,0xcb,0x60,0x16,0x23,0x9b,0x18,0x05,0x24,0x1c,0x70,0x22,
                               0x4c,0x0c,0x61};
static const unsigned char packet05[] = {0x01,0x05,0xff,0xff,0xc4,0x64,0x08,0x00,0xfa,0x06,0x24,0xd4,0x74,0x21,0x4c,0x4c,
                               0x61,0x07,0x24,0x94,0x71,0x20,0x4c,0x8c,0x61,0x08,0x24,0x9c,0x77,0x1f,0x4b,0xcb,
                               0x61,0x09,0x23,0x93,0x76,0x1e,0x4b,0x0b,0x62,0x0a,0x23,0x13,0x77,0x1d,0x4a,0x4a,
                               0x62,0x0b,0x22,0x02,0x70,0x1d,0x4a,0x8a,0x62,0x0c,0x22,0x42,0x70,0x1c,0x4a,0xca,
                               0x62,0x0d,0x22,0xc2,0x73,0x1b,0x4a,0x0a,0x63,0x01,0x38,0x0e,0x22,0x02,0x70,0x1a,
                               0x4a,0x4a,0x63,0x0f,0x22,0x02,0x71,0x19,0x48,0x88,0x63,0x00,0x20,0x1a,0x49,0x08,
                               0x60,0x19,0x20,0x40,0x01,0x16,0x49,0x08,0x80,0x30,0xbd,0xc0,0x46,0xc5,0x83,0x04,
                               0x00,0x65,0x88,0x04,0x00,0x3c,0x4e,0x08,0x00,0x10,0x64,0x08,0x00,0x70,0x52,0x08,
                               0x00,0x67,0x6f,0x08,0x00,0x71,0x6f,0x08,0x00,0x7b,0x6f,0x08,0x00,0x85,0x6f,0x08,
                               0x00,0xa3,0x6f,0x08,0x00,0xad,0x6f,0x08,0x00,0x8f,0x6f,0x08,0x00,0x99,0x6f,0x08,
                               0x00,0x49,0x6f,0x08,0x00,0x3f,0x6f,0x08,0x00,0xe4,0x52,0x08,0x00,0x5d,0x6f,0x08,
                               0x00,0x35,0x6f,0x08,0x00,0x2b,0x6f,0x08,0x00,0x21,0x6f,0x08,0x00,0x53,0x6f,0x08,
                               0x00,0x98,0x23,0x08,0x00,0xf2,0x4f,0x08,0x00,0xd4,0x62,0x08,0x00,0xf7,0x46,0x30,
                               0xb5,0x05,0x1c,0xbf,0x4c,0xa0,0x78,0x03,0x28,0x0f,0xd1,0x20,0x88,0x00,0x28,0x0c,
                               0xd1,0xe8,0x69,0x02,0x28,0x09,0xd1,0x01,0x20,0x86,0x46,0xe1,0x48,0xfe,0x44,0x00,
                               0x47,0x02,0x20,0xa0,0x70,0xdf,0x48,0xca,0x30,0x28,0x62,0x30,0xbd,0xf0,0xb5,0x05,
                               0x1c,0xae,0x69};
static const unsigned char packet06[] = {0x01,0x05,0xff,0xff,0xbe,0x65,0x08,0x00,0xfa,0xaf,0x8a,0xdc,0x48,0x87,0x42,0x15,
                               0xd1,0x21,0x20,0x81,0x5d,0x00,0x29,0x11,0xd0,0xff,0x29,0x0f,0xd0,0x30,0x1c,0x01,
                               0x24,0xa6,0x46,0xd7,0x4a,0xfe,0x44,0x10,0x47,0x30,0x1c,0x39,0x1c,0x00,0x22,0xa6,
                               0x46,0xd5,0x4b,0xfe,0x44,0x18,0x47,0xd4,0x48,0x9e,0x30,0x28,0x62,0xf0,0xbd,0x70,
                               0xb5,0x85,0x69,0x00,0x7d,0x53,0x21,0x40,0x1a,0x0c,0xd0,0x28,0x38,0x21,0xd1,0x28,
                               0x78,0x03,0x28,0x1e,0xd1,0x3b,0x20,0xc0,0x43,0x05,0x21,0x49,0x57,0x81,0x42,0x18,
                               0xdd,0x68,0x71,0x70,0xbd,0x28,0x78,0x00,0x28,0x13,0xd1,0xdb,0x4e,0x30,0x1c,0x01,
                               0x24,0xa6,0x46,0xda,0x49,0xfe,0x44,0x08,0x47,0xa8,0x70,0xe8,0x1c,0x31,0x1c,0x0a,
                               0x22,0xa6,0x46,0xd7,0x4b,0xfe,0x44,0x18,0x47,0x28,0x1c,0xa6,0x46,0xd6,0x49,0xfe,
                               0x44,0x08,0x47,0x70,0xbd,0x30,0xb5,0x45,0x69,0x01,0x7f,0x00,0x69,0x01,0x22,0xff,
                               0x23,0x79,0x33,0x5b,0x5d,0x00,0x2b,0x04,0xd0,0xec,0x78,0x00,0x2c,0x05,0xd1,0x00,
                               0x2b,0x02,0xd1,0xeb,0x78,0x00,0x2b,0x00,0xd0,0x00,0x22,0x2b,0x23,0xc9,0x1a,0x26,
                               0xd0,0x54,0x39,0x2b,0xd1,0xff,0x21,0x7d,0x31,0x49,0x5d,0x0c,0x23,0xc9,0x1a,0x1e,
                               0xd0,0x01,0x39,0x23,0xd1,0x01,0x78,0x28,0x1c,0x01,0x24,0xa6,0x46,0xe8,0x4a,0xfe,
                               0x44,0x10,0x47,0x01,0x1c,0x1a,0xd0,0x08,0x68,0xa8,0x42,0x17,0xd1,0xe5,0x48,0x00,
                               0x78,0x01,0x28,0x13,0xd0,0x08,0x79,0x00,0x28,0x10,0xd0,0xe9,0x4d,0x2c,0x70,0x4d,
                               0x20,0xa6,0x46};
static const unsigned char packet07[] = {0x01,0x05,0xff,0xff,0xb8,0x66,0x08,0x00,0xfa,0xe8,0x4a,0xfe,0x44,0x10,0x47,0x00,
                               0x20,0x28,0x70,0x30,0xbd,0x01,0x78,0x28,0x1c,0x01,0x23,0x9e,0x46,0xe4,0x4b,0xfe,
                               0x44,0x18,0x47,0x30,0xbd,0x70,0xb5,0x05,0x1c,0x2c,0x69,0xa2,0x8e,0x23,0x8f,0x93,
                               0x42,0x32,0xdd,0xe0,0x48,0x01,0x78,0x60,0x8d,0x01,0x30,0x41,0x43,0x08,0x04,0x00,
                               0x0c,0x82,0x42,0x29,0xda,0xc6,0x26,0x31,0x5d,0xc9,0x09,0x25,0xd1,0x10,0x1a,0xe5,
                               0x49,0x08,0x18,0x83,0x42,0x20,0xdd,0xc5,0x20,0x00,0x5d,0x01,0x28,0x01,0xd0,0x03,
                               0x28,0x1a,0xd1,0x30,0x5d,0x01,0x28,0x05,0xd1,0xce,0x21,0x09,0x5d,0x10,0x29,0x04,
                               0xd0,0x11,0x29,0x02,0xd0,0x02,0x28,0x0a,0xd0,0x70,0xbd,0xb5,0x20,0x00,0x5d,0x00,
                               0x21,0x01,0x22,0x96,0x46,0xd8,0x4a,0xfe,0x44,0x10,0x47,0x02,0x20,0x30,0x55,0xd7,
                               0x49,0x97,0x20,0xc0,0x00,0x40,0x18,0x28,0x62,0x70,0xbd,0x70,0xb5,0x02,0x69,0xd4,
                               0x8e,0x15,0x8f,0xa5,0x42,0x19,0xdd,0xc8,0x21,0x8b,0x5c,0x40,0x21,0x19,0x40,0xde,
                               0x11,0xf6,0x01,0x31,0x43,0x11,0xd1,0x2c,0x1b,0xcd,0x49,0x09,0x78,0x09,0x02,0x8c,
                               0x42,0x0b,0xdd,0x02,0x2b,0x09,0xd1,0xc7,0x21,0x89,0x5c,0x01,0x29,0x01,0xd0,0x03,
                               0x29,0x03,0xd1,0xc9,0x49,0xc7,0x4a,0x51,0x18,0x01,0x62,0x70,0xbd,0x30,0xb5,0xc7,
                               0x49,0xc7,0x4a,0x13,0x32,0x1f,0x20,0x00,0x23,0x01,0x24,0xa6,0x46,0xe9,0x4d,0xfe,
                               0x44,0x28,0x47,0xea,0x48,0x00,0x88,0x40,0x0a,0x00,0xd2,0x00,0x24,0xe6,0x48,0x04,
                               0x70,0x30,0xbd};
static const unsigned char packet08[] = {0x01,0x05,0xff,0xff,0xb2,0x67,0x08,0x00,0xfa,0x10,0xb5,0xe6,0x49,0xe7,0x4a,0x5d,
                               0x32,0x1f,0x20,0x00,0x23,0x01,0x24,0xa6,0x46,0xe0,0x4c,0xfe,0x44,0x20,0x47,0x10,
                               0xbd,0x38,0xb5,0xa5,0x4b,0x1b,0x78,0x40,0x8d,0x01,0x30,0x43,0x43,0x1b,0x04,0x1b,
                               0x0c,0xae,0x48,0x91,0x42,0x07,0xdb,0x8c,0x1a,0xc0,0x1a,0x84,0x42,0x0c,0xdd,0x01,
                               0x20,0x00,0x04,0x24,0x1a,0x08,0xe0,0x99,0x42,0x02,0xda,0xc4,0x1a,0xa2,0x42,0x01,
                               0xdc,0x8c,0x1a,0x01,0xe0,0x8c,0x1a,0x04,0x19,0x00,0x93,0x23,0x1c,0xa4,0x20,0x01,
                               0x25,0xae,0x46,0xd2,0x4d,0xfe,0x44,0x28,0x47,0x20,0x1c,0x38,0xbd,0x70,0xb5,0x0d,
                               0x1c,0x06,0x1c,0x01,0x24,0xa6,0x46,0xce,0x49,0xfe,0x44,0x08,0x47,0x30,0x1c,0x03,
                               0x21,0xa6,0x46,0xcc,0x4a,0xfe,0x44,0x10,0x47,0x06,0x1c,0xcb,0x48,0x01,0x1c,0x04,
                               0x39,0x0d,0x80,0x02,0x21,0xa6,0x46,0xc9,0x4a,0xfe,0x44,0x10,0x47,0x00,0x28,0x08,
                               0xd1,0x30,0x1c,0x68,0x43,0x94,0x49,0x86,0x39,0x08,0x60,0xa6,0x46,0xc5,0x49,0xfe,
                               0x44,0x08,0x47,0x70,0xbd,0x40,0x69,0x41,0x7c,0x10,0x29,0x11,0xd1,0x02,0x7c,0xc1,
                               0x49,0x06,0x2a,0x0b,0xd0,0x0b,0x68,0x01,0x2b,0x0a,0xd1,0x01,0x2a,0x01,0xd0,0x00,
                               0x20,0x05,0xe0,0x00,0x22,0x0a,0x60,0x03,0x21,0x01,0x74,0xf7,0x46,0x01,0x20,0x08,
                               0x60,0xf7,0x46,0xaa,0x24,0x08,0x00,0xf0,0xb5,0x07,0x1c,0xb9,0x69,0x48,0x78,0xfe,
                               0x69,0x02,0x1f,0x3c,0xd0,0x21,0x3a,0x42,0xd1,0x04,0x22,0xb2,0x80,0x0c,0x22,0x95,
                               0x19,0x40,0x00};
static const unsigned char packet09[] = {0x01,0x05,0xff,0xff,0xac,0x68,0x08,0x00,0xfa,0x09,0x78,0x01,0x43,0x29,0x70,0x01,
                               0x35,0x7a,0x48,0xc1,0x38,0x00,0x78,0x00,0x28,0x01,0xd1,0x06,0x20,0x00,0xe0,0x07,
                               0x20,0x28,0x70,0x01,0x35,0x28,0x1c,0x0d,0x21,0x01,0x24,0xa6,0x46,0xa8,0x4a,0xfe,
                               0x44,0x10,0x47,0x05,0x1c,0xa6,0x46,0xa8,0x48,0xfe,0x44,0x00,0x47,0xc0,0x06,0xc0,
                               0x0e,0x81,0x02,0xa4,0x48,0x00,0x78,0x40,0x06,0x40,0x0e,0x08,0x43,0x07,0x21,0xc9,
                               0x01,0x01,0x43,0x09,0x04,0x09,0x0c,0x28,0x1c,0xa6,0x46,0x9d,0x4a,0xfe,0x44,0x10,
                               0x47,0x06,0x20,0x70,0x80,0x03,0x20,0x30,0x80,0x9c,0x49,0x65,0x48,0x48,0x30,0x40,
                               0x18,0x38,0x62,0xf0,0xbd,0x08,0x79,0x27,0x28,0x04,0xd1,0x48,0x79,0x1e,0x28,0x01,
                               0xd1,0x23,0x20,0x48,0x71,0xf0,0xbd,0xc0,0x46,0x3f,0x83,0x02,0x00,0x11,0x24,0x03,
                               0x00,0x06,0xfd,0x00,0x00,0x17,0x68,0x08,0x00,0xa9,0x25,0x05,0x00,0x7d,0x5e,0x00,
                               0x00,0x10,0xb5,0x04,0x1c,0xe0,0x69,0x01,0x88,0x25,0x22,0x12,0x02,0x0b,0x04,0x1b,
                               0x0e,0x1b,0x02,0x93,0x42,0x19,0xd1,0x0a,0x06,0x12,0x0e,0xa8,0x21,0x51,0x43,0x88,
                               0x4b,0x59,0x5c,0x00,0x29,0x11,0xd0,0x87,0x49,0x09,0x78,0x00,0x29,0x0d,0xd1,0x86,
                               0x49,0x89,0x5c,0x07,0x29,0x09,0xdb,0x01,0x21,0x8e,0x46,0x84,0x49,0xfe,0x44,0x08,
                               0x47,0x83,0x49,0x47,0x48,0xc0,0x30,0x40,0x18,0x20,0x62,0x10,0xbd,0x60,0x12,0x08,
                               0x00,0xed,0x2f,0x01,0x00,0x09,0x59,0x05,0x00,0x51,0xbc,0x04,0x00,0x30,0xb5,0x01,
                               0x69,0x7c,0x4a};
static const unsigned char packet10[] = {0x01,0x05,0xff,0xff,0xa6,0x69,0x08,0x00,0xfa,0xc8,0x68,0x90,0x42,0x24,0xd1,0x7b,
                               0x48,0x00,0x78,0x80,0x08,0x20,0xd2,0x7a,0x48,0x42,0x7f,0x05,0x2a,0x1c,0xd1,0x02,
                               0x22,0x42,0x77,0x78,0x48,0x00,0x78,0xc8,0x70,0x70,0x48,0x01,0x38,0x00,0x78,0xff,
                               0x28,0x06,0xd1,0x75,0x48,0x03,0x21,0x01,0x22,0x96,0x46,0x74,0x4a,0xfe,0x44,0x10,
                               0x47,0x01,0x24,0x73,0x4d,0x2c,0x80,0xa6,0x46,0x73,0x48,0xfe,0x44,0x00,0x47,0x2c,
                               0x80,0xa6,0x46,0x70,0x48,0xfe,0x44,0x00,0x47,0x30,0xbd,0x30,0xb5,0x45,0x69,0x28,
                               0x1c,0x01,0x24,0xa6,0x46,0x6d,0x49,0xfe,0x44,0x08,0x47,0x00,0x28,0x0a,0xd0,0x12,
                               0x20,0x41,0x19,0x28,0x1c,0xa6,0x46,0x69,0x4a,0xfe,0x44,0x10,0x47,0x00,0x28,0x08,
                               0xd1,0x1c,0x20,0x00,0xe0,0x1d,0x20,0x29,0x68,0x10,0x31,0xa6,0x46,0x65,0x4a,0xfe,
                               0x44,0x10,0x47,0x30,0xbd,0xc0,0x46,0x69,0x7d,0x02,0x00,0xce,0x0f,0x08,0x00,0x00,
                               0xb5,0x80,0x69,0x01,0x68,0xff,0x20,0x25,0x30,0x40,0x5c,0x10,0x31,0x01,0x22,0x96,
                               0x46,0x5c,0x4a,0xfe,0x44,0x10,0x47,0x00,0xbd,0xc0,0x46,0xda,0x62,0x08,0x00,0x93,
                               0xe4,0x04,0x00,0xb5,0x6a,0x08,0x00,0x2e,0x2e,0x08,0x00,0x70,0xb5,0x0e,0x1c,0x05,
                               0x1c,0x0c,0x48,0x90,0x38,0x00,0x78,0x40,0x08,0x0c,0xd3,0x01,0x24,0xa6,0x46,0x51,
                               0x48,0xfe,0x44,0x00,0x47,0x00,0x28,0x05,0xd0,0x29,0x1c,0x32,0x1c,0xa6,0x46,0x4e,
                               0x4b,0xfe,0x44,0x18,0x47,0x70,0xbd,0xff,0xff,0x00,0x00,0xcb,0xa3,0x00,0x00,0xed,
                               0x92,0x00,0x00};
static const unsigned char packet11[] = {0x01,0x05,0xff,0xff,0xa0,0x6a,0x08,0x00,0xfa,0xf2,0x4f,0x08,0x00,0x82,0x04,0x00,
                               0x00,0x45,0x9f,0x00,0x00,0x0b,0x6c,0x08,0x00,0xa9,0x86,0x00,0x00,0xf8,0xb5,0x16,
                               0x1c,0x00,0x92,0x05,0x1c,0x01,0x24,0xa6,0x46,0x45,0x4a,0xfe,0x44,0x10,0x47,0x07,
                               0x1c,0x00,0x2e,0x01,0xd0,0x3a,0x20,0x00,0xe0,0x39,0x20,0x40,0x5d,0x00,0x26,0x00,
                               0x28,0x15,0xd1,0xe8,0x78,0x00,0x28,0x08,0xd0,0x39,0x20,0x40,0x5d,0x1c,0x21,0x22,
                               0x1c,0xa6,0x46,0x38,0x4b,0xfe,0x44,0x18,0x47,0x06,0x1c,0x00,0x2f,0x1b,0xd1,0xa6,
                               0x46,0x35,0x48,0xfe,0x44,0x00,0x47,0xff,0x28,0x15,0xd1,0x0a,0x26,0x15,0xe0,0x00,
                               0x2f,0x11,0xd1,0x00,0x98,0x00,0x28,0x0a,0xd1,0xe8,0x78,0x00,0x28,0x07,0xd1,0x28,
                               0x1c,0x00,0x99,0x22,0x1c,0xa6,0x46,0x2d,0x4b,0xfe,0x44,0x18,0x47,0x07,0x1c,0x00,
                               0x2f,0x01,0xd1,0x1e,0x26,0x01,0xe0,0x00,0x2e,0x06,0xd0,0x10,0x20,0x41,0x19,0x30,
                               0x1c,0xa6,0x46,0x21,0x4a,0xfe,0x44,0x10,0x47,0xf8,0xbd,0xc0,0x46,0xdd,0x6b,0x08,
                               0x00,0x55,0x31,0x19,0x00,0x3e,0xa6,0x1b,0x00,0x9b,0x6c,0x08,0x00,0xad,0x99,0x00,
                               0x00,0xa1,0x8b,0x04,0x00,0xb1,0x2f,0x00,0x00,0x65,0x2a,0x00,0x00,0x04,0x50,0x1a,
                               0x00,0x6b,0xf7,0x04,0x00,0xcd,0x16,0x03,0x00,0xd4,0x62,0x08,0x00,0xe7,0x2a,0x00,
                               0x00,0xfb,0x4f,0x08,0x00,0x89,0x91,0x04,0x00,0x61,0xde,0x00,0x00,0xc8,0x18,0x08,
                               0x00,0x71,0x4e,0x08,0x00,0x50,0x15,0x08,0x00,0x8d,0x08,0x04,0x00,0xd9,0xa3,0x02,
                               0x00,0x7b,0x86};
static const unsigned char packet12[] = {0x01,0x05,0xff,0xff,0x9a,0x6b,0x08,0x00,0xfa,0x03,0x00,0x11,0x22,0x08,0x00,0x50,
                               0x17,0x08,0x00,0x4a,0x56,0x08,0x00,0x00,0x04,0x1a,0x00,0xb5,0xf5,0x04,0x00,0x82,
                               0x07,0x1a,0x00,0xf9,0x8e,0x03,0x00,0xeb,0x63,0x01,0x00,0xc5,0x64,0x01,0x00,0x69,
                               0x6a,0x08,0x00,0x05,0xf0,0x04,0x00,0x35,0x04,0x03,0x00,0x71,0x65,0x01,0x00,0xe5,
                               0x7c,0x02,0x00,0x2f,0x7d,0x02,0x00,0x69,0x7d,0x02,0x00,0x40,0x1e,0x80,0x00,0xa6,
                               0x4b,0x19,0x50,0xa4,0x49,0x0a,0x50,0xf7,0x46,0x00,0xb5,0xa4,0x4a,0x01,0x8b,0x91,
                               0x42,0x07,0xd0,0x40,0x69,0x40,0x30,0x2c,0x21,0x01,0x22,0x96,0x46,0xa1,0x4a,0xfe,
                               0x44,0x10,0x47,0xa0,0x48,0x2b,0x30,0x00,0xbd,0xfc,0xb5,0x07,0x1c,0x7d,0x69,0xb8,
                               0x20,0x41,0x5d,0x9d,0x4a,0x01,0x29,0x05,0xd1,0xc7,0x26,0x71,0x5d,0x01,0x29,0x05,
                               0xd0,0x03,0x29,0x03,0xd0,0x78,0x60,0x10,0x1c,0x15,0x30,0xfc,0xbd,0x00,0x24,0xc0,
                               0x20,0x44,0x55,0x70,0x5d,0x01,0x90,0x74,0x55,0x28,0x1c,0x01,0x21,0x8e,0x46,0x93,
                               0x49,0xfe,0x44,0x08,0x47,0x01,0x98,0x70,0x55,0xbf,0x26,0x70,0x5d,0x01,0x28,0x1f,
                               0xd1,0xe9,0x8e,0x2a,0x8f,0x28,0x1c,0x01,0x23,0x9e,0x46,0x8d,0x4b,0xfe,0x44,0x18,
                               0x47,0x03,0x04,0x1b,0x0c,0x04,0x2b,0x06,0xdd,0x6c,0x8d,0xd8,0x1e,0x84,0x42,0x06,
                               0xdb,0x04,0x04,0x24,0x0c,0x03,0xe0,0x03,0x21,0xc0,0x20,0x41,0x55,0x74,0x55,0x00,
                               0x94,0xe9,0x8e,0x2a,0x8f,0xa7,0x20,0x01,0x25,0xae,0x46,0x82,0x4d,0xfe,0x44,0x28,
                               0x47,0xbc,0x61};
static const unsigned char packet13[] = {0x01,0x05,0xff,0xff,0x94,0x6c,0x08,0x00,0xfa,0x7d,0x48,0x2b,0x30,0xfc,0xbd,0x01,
                               0x1c,0x0a,0x7b,0x7f,0x48,0x00,0x2a,0x02,0xd0,0xc9,0x69,0x02,0x29,0x01,0xd1,0x63,
                               0x30,0xf7,0x46,0x7c,0x49,0x43,0x39,0x08,0x18,0xf7,0x46,0x10,0xb5,0x01,0x6a,0x7a,
                               0x4a,0x12,0x68,0x92,0x88,0x12,0x13,0x92,0x07,0x93,0x0f,0x78,0x4a,0x02,0x2b,0x01,
                               0xd0,0x13,0x88,0x00,0xe0,0x03,0x8b,0x44,0x68,0x0c,0x19,0x44,0x60,0x83,0x61,0x48,
                               0x88,0x18,0x1a,0x10,0x80,0x72,0x48,0xe7,0x30,0x10,0xbd,0x70,0xb5,0x05,0x1c,0x68,
                               0x68,0x00,0x28,0x1a,0xd1,0x6f,0x4e,0x35,0x20,0x00,0x01,0x84,0x19,0x20,0x68,0x01,
                               0x21,0x8e,0x46,0x6d,0x49,0xfe,0x44,0x08,0x47,0x20,0x7f,0x00,0x28,0x0d,0xd0,0x6b,
                               0x48,0x00,0x78,0x02,0x28,0x09,0xd0,0xe0,0x7f,0x50,0x21,0x41,0x43,0x71,0x18,0x48,
                               0x8e,0x01,0x30,0x48,0x86,0x60,0x8a,0x01,0x38,0x60,0x82,0x00,0x20,0x5e,0x49,0x08,
                               0x60,0x01,0x20,0x86,0x46,0x62,0x48,0xfe,0x44,0x00,0x47,0x68,0x60,0x61,0x48,0x65,
                               0x30,0x70,0xbd,0x61,0x48,0xd5,0x30,0xf7,0x46,0x00,0xb5,0x40,0x69,0x01,0x21,0x8e,
                               0x46,0x5e,0x49,0xfe,0x44,0x08,0x47,0x5e,0x48,0x35,0x30,0x00,0xbd,0x41,0x69,0x09,
                               0x7c,0x06,0x29,0x02,0xd1,0x01,0x21,0x5b,0x4a,0x11,0x60,0x0f,0x21,0x81,0x60,0x5a,
                               0x48,0x53,0x30,0xf7,0x46,0xc1,0x68,0x43,0x68,0x0a,0x78,0x0c,0x2a,0x08,0xd1,0x58,
                               0x4a,0x31,0x3a,0x12,0x78,0x00,0x2a,0x01,0xd1,0x06,0x22,0x00,0xe0,0x07,0x22,0x4a,
                               0x70,0x43,0x61};
static const unsigned char packet14[] = {0x01,0x05,0xff,0xff,0x8e,0x6d,0x08,0x00,0xfa,0x52,0x48,0x09,0x30,0xf7,0x46,0x10,
                               0xb5,0x80,0x69,0x50,0x49,0x31,0x39,0x09,0x78,0x00,0x29,0x09,0xd1,0x06,0x24,0x04,
                               0x70,0x01,0x30,0x00,0x21,0x01,0x22,0x96,0x46,0x4c,0x4a,0xfe,0x44,0x10,0x47,0x08,
                               0xe0,0x07,0x24,0x04,0x70,0x01,0x30,0x00,0x21,0x01,0x22,0x96,0x46,0x47,0x4a,0xfe,
                               0x44,0x10,0x47,0x04,0x70,0x01,0x30,0x0d,0x21,0x01,0x24,0xa6,0x46,0x43,0x4a,0xfe,
                               0x44,0x10,0x47,0x42,0x49,0xa6,0x46,0x40,0x4a,0xfe,0x44,0x10,0x47,0x41,0x48,0x5d,
                               0x30,0x10,0xbd,0x01,0x1c,0x41,0x48,0x02,0x78,0x3f,0x48,0x00,0x2a,0x01,0xd0,0x5d,
                               0x30,0xf7,0x46,0x28,0x22,0x8a,0x60,0xc0,0x1c,0xf7,0x46,0x3c,0x49,0x09,0x78,0x05,
                               0x29,0x02,0xd1,0x01,0x21,0x3b,0x4a,0x11,0x70,0x23,0x21,0x81,0x60,0x3a,0x48,0x27,
                               0x30,0xf7,0x46,0x10,0xb5,0x01,0x7e,0x00,0x7d,0x08,0x43,0x39,0x4c,0x0a,0xd0,0x00,
                               0x20,0x36,0x49,0x08,0x70,0x01,0x20,0x86,0x46,0x35,0x48,0xfe,0x44,0x00,0x47,0x20,
                               0x1c,0x79,0x30,0x10,0xbd,0x20,0x1c,0x71,0x30,0x10,0xbd,0x81,0x69,0x4a,0x78,0xc2,
                               0x60,0x49,0x78,0x18,0x29,0x01,0xdb,0x17,0x21,0xc1,0x60,0x2e,0x48,0x39,0x30,0xf7,
                               0x46,0x10,0xb5,0x2d,0x4c,0xa0,0x88,0x01,0x21,0x8e,0x46,0x2c,0x49,0xfe,0x44,0x08,
                               0x47,0x00,0x28,0x01,0xd1,0x2b,0x48,0xa0,0x80,0x2b,0x48,0xff,0x30,0x6e,0x30,0x10,
                               0xbd,0xc0,0x46,0x04,0xf3,0x1a,0x00,0x80,0x7b,0x08,0x00,0xd9,0xfc,0x00,0x00,0x99,
                               0x94,0x03,0x00};
static const unsigned char packet15[] = {0x01,0x05,0xff,0xff,0x88,0x6e,0x08,0x00,0xfa,0xf9,0x8c,0x00,0x00,0xa9,0x86,0x00,
                               0x00,0x15,0x86,0x00,0x00,0xcb,0x67,0x08,0x00,0xa1,0x8b,0x04,0x00,0xad,0x99,0x00,
                               0x00,0xc6,0x05,0x00,0x00,0xd4,0x48,0x08,0x00,0xd8,0x62,0x08,0x00,0x55,0xde,0x02,
                               0x00,0x84,0x45,0x08,0x00,0xa3,0x56,0x05,0x00,0xce,0x0f,0x08,0x00,0x29,0x19,0x02,
                               0x00,0x0f,0x1a,0x02,0x00,0x81,0x26,0x01,0x00,0xdb,0xef,0x04,0x00,0xb9,0x28,0x05,
                               0x00,0xd4,0x62,0x08,0x00,0xdb,0x22,0x03,0x00,0x5d,0x86,0x02,0x00,0x62,0x4f,0x08,
                               0x00,0xe7,0x2a,0x00,0x00,0x8c,0x1b,0x00,0x00,0x5d,0x15,0x00,0x00,0xa5,0xe0,0x01,
                               0x00,0xda,0x62,0x08,0x00,0x6d,0x17,0x08,0x00,0x29,0x22,0x08,0x00,0x2f,0x85,0x03,
                               0x00,0x1e,0x17,0x08,0x00,0xf1,0xca,0x03,0x00,0xc1,0xcb,0x03,0x00,0x91,0x90,0x03,
                               0x00,0x14,0x24,0x08,0x00,0x19,0x90,0x01,0x00,0xff,0xff,0x00,0x00,0x89,0x8d,0x01,
                               0x00,0xff,0xb5,0x68,0x46,0xff,0xf7,0x45,0xfc,0xff,0xbd,0xff,0xb5,0x68,0x46,0xff,
                               0xf7,0x2d,0xfc,0xff,0xbd,0xff,0xb5,0x68,0x46,0xff,0xf7,0x07,0xfc,0xff,0xbd,0xff,
                               0xb5,0x68,0x46,0xff,0xf7,0x7b,0xfd,0xff,0xbd,0xff,0xb5,0x68,0x46,0xff,0xf7,0x54,
                               0xfd,0xff,0xbd,0xff,0xb5,0x68,0x46,0xff,0xf7,0x18,0xfb,0xff,0xbd,0xff,0xb5,0x68,
                               0x46,0xff,0xf7,0xb8,0xfb,0xff,0xbd,0xff,0xb5,0x68,0x46,0xff,0xf7,0x6e,0xfb,0xff,
                               0xbd,0xff,0xb5,0x68,0x46,0xff,0xf7,0x3e,0xfb,0xff,0xbd,0xff,0xb5,0x68,0x46,0xff,
                               0xf7,0x03,0xfb};
static const unsigned char packet16[] = {0x01,0x05,0xff,0x39,0x82,0x6f,0x08,0x00,0x34,0xff,0xbd,0xff,0xb5,0x68,0x46,0xff,
                               0xf7,0x16,0xfb,0xff,0xbd,0xff,0xb5,0x68,0x46,0xff,0xf7,0xd7,0xfc,0xff,0xbd,0xff,
                               0xb5,0x68,0x46,0xff,0xf7,0x00,0xfd,0xff,0xbd,0xff,0xb5,0x68,0x46,0xff,0xf7,0x5a,
                               0xfc,0xff,0xbd,0xff,0xb5,0x68,0x46,0xff,0xf7,0x6e,0xfc,0xff,0xbd};
static const unsigned char packet17[] = {0x01,0x05,0xff,0x8d,0x78,0x7b,0x08,0x00,0x88,0x00,0xb5,0xf8,0xf0,0x41,0xfa,0x00,
                               0xbd,0xeb,0x6b,0x08,0x00,0xb7,0x6c,0x08,0x00,0xe7,0x6c,0x08,0x00,0x71,0x6d,0x08,
                               0x00,0x95,0x6d,0x08,0x00,0x59,0x6d,0x08,0x00,0x45,0x6d,0x08,0x00,0xe9,0x6d,0x08,
                               0x00,0x01,0x6e,0x08,0x00,0x3f,0x6d,0x08,0x00,0xdd,0x62,0x08,0x00,0x00,0x00,0x00,
                               0x00,0x19,0x6e,0x08,0x00,0x41,0x6e,0x08,0x00,0x57,0x6e,0x08,0x00,0x00,0x00,0x00,
                               0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
                               0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
                               0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
                               0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x0b,0x6c,0x08,0x00,0x00,0x00,0x00,
                               0x00};
static const unsigned char packet18[] = {0x01,0x05,0xff,0x85,0x04,0xf3,0x1a,0x00,0x80,0x1e,0x8d,0x00,0x00,0x3a,0xdf,0x02,
                               0x00,0x3a,0x1a,0x02,0x00,0x64,0x86,0x02,0x00,0x7e,0x15,0x00,0x00,0x2c,0x23,0x03,
                               0x00,0xe8,0x28,0x05,0x00,0xa6,0xe0,0x01,0x00,0x54,0x85,0x03,0x00,0x52,0x27,0x01,
                               0x00,0x7c,0xbf,0x02,0x00,0xff,0xff,0xff,0xff,0x2e,0xcc,0x03,0x00,0xc8,0x90,0x03,
                               0x00,0xf0,0x8e,0x01,0x00,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,
                               0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,
                               0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,
                               0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,
                               0xff,0xbc,0x86,0x00,0x00,0xff,0xff,0xff,0xff};
static const unsigned char packet19[] = {0x01,0x05,0xff,0xed,0x00,0x00,0x18,0x00,0xe8,0xf0,0xb5,0x2c,0x4e,0x07,0x22,0x32,
                               0x70,0x10,0x23,0x73,0x70,0x47,0x20,0xb0,0x70,0x0c,0x25,0xf5,0x70,0x03,0x20,0x29,
                               0x49,0x01,0x39,0x01,0x24,0xa6,0x46,0x26,0x4f,0xfe,0x44,0x38,0x47,0xb2,0x78,0xf3,
                               0x78,0x03,0x20,0x24,0x49,0xa6,0x46,0x22,0x4e,0xfe,0x44,0x30,0x47,0x03,0x20,0x21,
                               0x49,0x01,0x31,0xa6,0x46,0x20,0x4a,0xfe,0x44,0x10,0x47,0xa6,0x46,0x1f,0x48,0xfe,
                               0x44,0x00,0x47,0x1f,0x4b,0x00,0x21,0x08,0x1c,0x1a,0x68,0x00,0x2a,0x04,0xd0,0x02,
                               0x07,0x16,0x0f,0x22,0x1c,0xb2,0x40,0x11,0x43,0x02,0x07,0x12,0x0f,0x0f,0x2a,0x05,
                               0xd1,0xc6,0x08,0x06,0x22,0x32,0x40,0x17,0x4e,0xb1,0x52,0x00,0x21,0x04,0x33,0x01,
                               0x30,0x20,0x28,0xe9,0xd3,0x3f,0x20,0x14,0x49,0x08,0x70,0x14,0x48,0x3c,0x21,0x01,
                               0x70,0x28,0x21,0x41,0x70,0x14,0x21,0x81,0x70,0x08,0x20,0x11,0x49,0x08,0x70,0x11,
                               0x48,0x05,0x73,0x0b,0x21,0x81,0x73,0x0d,0x21,0x41,0x73,0x10,0x48,0x01,0x1c,0x5a,
                               0x31,0x0c,0x60,0x00,0x21,0x0c,0x4a,0x11,0x70,0x04,0x70,0xf0,0xbd,0xf8,0x4f,0x08,
                               0x00,0x7b,0x88,0x04,0x00,0xc6,0x05,0x00,0x00,0x65,0x88,0x04,0x00,0x83,0x64,0x08,
                               0x00,0x80,0x7b,0x08,0x00,0x84,0xf3,0x1a,0x00,0xbf,0x11,0x08,0x00,0x10,0x31,0x19,
                               0x00,0x15,0x13,0x08,0x00,0xd8,0x11,0x08,0x00,0xda,0x62,0x08,0x00,0x62,0x4f,0x08,
                               0x00};
static const unsigned char packet20[] = {0x01,0x83,0xff,0x14,0x79,0x7b,0x08,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
                               0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00};
static const unsigned char packet21[] = {0x01,0x0c,0xfd,0x09,0x01,0x00,0xff,0xff,0xff,0xff,0xff,0x64,0x00};
static const unsigned char packet22[] = {0x01,0x09,0xfd,0x08,0x58,0x60,0x1a,0x00,0x00,0x10,0x00,0x10};
static const unsigned char packet23[] = {0x01,0x09,0xfd,0x08,0x10,0x60,0x1a,0x00,0x10,0x00,0x10,0x00};
static const unsigned char packet24[] = {0x01,0x76,0xfd,0x31,0x01,0x21,0x54,0x00,0x00,0x61,0x57,0x00,0x00,0x14,0x05,0x0a,
                               0x05,0x00,0x07,0x06,0x0a,0x04,0x05,0x08,0x09,0x0b,0x0c,0x0d,0x0e,0x10,0x10,0x10,
                               0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,
                               0x10,0x00,0x00,0x00,0x00};
static const unsigned char packet25[] = {0x01,0x80,0xfd,0x06,0x00,0x01,0x00,0x00,0x00,0x01};
static const unsigned char packet26[] = {0x01,0x80,0xfd,0x06,0x3c,0xf0,0x5f,0x00,0x00,0x00};
static const unsigned char packet27[] = {0x01,0x1c,0xfd,0x14,0xff,0x88,0x13,0x00,0x00,0xff,0x00,0x00,0x00,0xff,0xff,0xff,
                               0xff,0xfa,0x00,0x00,0x00,0xff,0xff,0x00};
static const unsigned char packet28[] = {0x01,0x38,0xfe,0x00};
//--------------------------------------------------------------------------------
// Description:   BLE FW Initialization Script
//
// Compatibility: BL6450B
//
// Last Updated:  26-Jun-2013   9:55:40.13
//
// Version:       0.1
//
//--------------------------------------------------------------------------------
//LE Enable
static const unsigned char packet29[] = {0x01,0x5b,0xfd,0x02,0x01,0x01};
static const unsigned char packet30[] = {0x01,0xdd,0xfd,0x01,0x01};
//################################################################
//# START of CC2564 Adds-On
//################################################################
//# Enable fast clock XTAL support
//const unsigned char packet31[] = {0x01,0x1c,0xfd,0x14,0x01,0x88,0x13,0x00,0x00,0xd0,0x07,0x00,0x00,0xff,0xff,0x04,
//                               0xff,0xff,0xff,0xfa,0x00,0x00,0x00,0x00};
//# Enable eHCILL
//const unsigned char packet32[] = {0x01,0x2b,0xfd,0x05,0x10,0x00,0x50,0x00,0x96};
//const unsigned char packet33[] = {0x01,0x0c,0xfd,0x09,0x01,0x01,0x00,0xff,0xff,0xff,0xff,0x64,0x00};
//################################################################
//# END of CC2564 Adds-On
//################################################################

static const unsigned char*  packets[] = {/*packet01,*/packet02,packet03,packet04,packet05,packet06,packet07,packet08,packet09,packet10,packet11,packet12,packet13,packet14,packet15,
                               packet16,packet17,packet18,packet19,packet20,packet21,packet22,packet23,packet24,packet25,packet26,packet27,packet28,packet29,packet30/*,packet31,packet32,packet33*/};

#define PACKET_COUNT (sizeof(packets) / sizeof(packets[0]))

static const btx_ti_script_t script =
{
	packets,
	PACKET_COUNT,
	7, 16         // compatible FW version 7016
};

const btx_ti_script_t* btx_ti_get_script__CC2564B_BT_Service_Pack_1_0(void)
{
	return &script;
}

