/*
 * firmware_symbols.h.S -- PS3 Jailbreak payload macros : firmware specific
 * function symbols offsets
 *
 * Copyright (C) Youness Alaoui (KaKaRoTo)
 * Copyright (C) Aaron Lindsay (Aaron')
 * Copyright (C) (subdub)
 *
 * This software is distributed under the terms of the GNU General Public
 * License ("GPL") version 3, as published by the Free Software Foundation.
 *
 */

#ifndef __FIRMWARE_SYMBOLS_H_S__
#define __FIRMWARE_SYMBOLS_H_S__

#ifdef FIRMWARE_3_41

/* Common Symbols */
#define memcpy 			0x7c01c
#define memset 			0x4d144
#define strcpy 			0x4d2f0
#define strncmp	 		0x4d344
#define strlen			0x4d318
#define pathdup_from_user	0x1b3b3c // FIXME: unsure of the name!
#define copy_from_user		0xE26C
#define copy_to_user		0xE050
#define alloc 			0x62088
#define free 			0x624c8
#define USBRegisterDriver 	0xd22d8
#define syscall_table		0x2eb128
#define USBGetDeviceDescriptor	0xd2998 // FIXME: unsure of the name!
#define USBOpenEndpoint		0xd29c4 // FIXME
#define USBControlTransfer	0xd292c // FIXME
#define memory_patch_func	0x4e81c
#define patch_func1		0x0490AC
#define patch_func1_offset	0x34
#define patch_func2		0x04F07C
#define patch_func2_offset	0x2C
#define patch_func3		0x2aafc8
#define patch_func3_offset	0x24
#define patch_func4		0x04ed18
#define patch_func4_offset	0x0
#define patch_func5		0x0505d0
#define patch_func5_offset	0x0
#define patch_func6		0x0234d0
#define patch_func6_offset	0x0
#define patch_func7		0x0e83d4
#define patch_func7_offset	0x0
#define patch_func8		0x057214 //lv2open update patch
#define patch_func8_offset1	0xA4 //lv2open update patch
#define patch_func8_offset2	0x208 //lv2open update patch
#define patch_func9		0x4F840 // must upgrade error
#define patch_func9_offset	0x3EC
#define patch_data1		0x3ba890
#define rtoc_entry_1		0xf08
#define rtoc_entry_2		-0x6a00

// Payload bases
#define MEM_BASE2 		(0x50B3C)
	
#define RESIDENT_PAYLOAD_MAXSIZE   (1296)

#ifdef KIOSK
#define HASH_TABLE_1            0xA0577BB4002C8B20
#define HASH_TABLE_2            0x6B7028FE00020041
#define HASH_TABLE_3            0x8c0a948c000d93D3
#define HASH_TABLE_4            0xA2BC0C1E0004C6E2

#define elf1_func1              0x5F223C
#define elf1_func1_offset       0x00
#define elf1_func2              0x304F54
#define elf1_func2_offset       0x14
#define elf2_func1              0x2EB44
#define elf2_func1_offset       0x374

#define elf3_data               0x0022A758
#define elf4_data               0x000c86c8

#else /* KIOSK */

#define HASH_TABLE_1		0xa0556f3d002cb8fd
#define HASH_TABLE_2		0x6b70280200020017
#define HASH_TABLE_3		0x8c0a948c000d99b1
#define HASH_TABLE_4		0xa2bc1a5600052adc

#define elf1_func1		0x5f3fc0
#define elf1_func1_offset	0x00
#define elf1_func2		0x305354
#define elf1_func2_offset	0x14
#define elf2_func1		0x2eb7c
#define elf2_func1_offset	0x374
	
#define elf3_data		0x0022b888
#define elf4_data		0x000d68b8
#endif /* KIOSK */

#elif defined(FIRMWARE_3_40)

/* Common Symbols */
#define memcpy 			0x7c018
#define memset 			0x4d140
#define strcpy 			0x4d2ec
#define strncmp	 		0x4d340
#define strlen			0x4d314
#define pathdup_from_user	0x1b3b34
#define alloc 			0x62084
#define free 			0x624c4
#define USBRegisterDriver 	0xd22d0
#define syscall_table		0x2eb128
#define USBGetDeviceDescriptor	0xd2990
#define USBOpenEndpoint		0xd29bc
#define USBControlTransfer		0xd2924
#define memory_patch_func	0x4e818
#define patch_func1		0x490a8
#define patch_func1_offset	0x34
#define patch_func2		0x4f078
#define patch_func2_offset	0x2c
#define patch_func3		0x2aafbc
#define patch_func3_offset	0x24
#define patch_func4		0x4ed14
#define patch_func4_offset	0x0
#define patch_func5		0x505cc
#define patch_func5_offset	0x0
#define patch_func6		0x234cc
#define patch_func6_offset	0x0
#define patch_func7		0xe83cc
#define patch_func7_offset	0x0
#define patch_func8		0x57210
#define patch_func8_offset1	0xa4
#define patch_func8_offset2	0x208
#define patch_func9		0x4fc28
#define patch_func9_offset	0x0
#define patch_data1		0x3ba890
#define rtoc_entry_1		0xf08
#define rtoc_entry_2		-0x6a00

// Payload bases
#define MEM_BASE2 		0x50b38
	
#define RESIDENT_PAYLOAD_MAXSIZE   (1296)


#define HASH_TABLE_1		0xa0556fed002cb89b
#define HASH_TABLE_2		0x6b70280200020017
#define HASH_TABLE_3		0x8c0a948c000d99b1
#define HASH_TABLE_4		0xa2bc1a5600052adc

#define elf1_func1		0x5f3f6c
#define elf1_func1_offset	0x0
#define elf1_func2		0x305350
#define elf1_func2_offset	0x14
#define elf2_func1		0x2e998
#define elf2_func1_offset	0x374

#define elf3_data		0x0022b888
#define elf4_data		0x000d68b8

#elif defined(FIRMWARE_3_30)

// TOC at 0x33dbc0
// Shell code addr 0x003dde70

/* Common Symbols */
#define memcpy 			0x0007c014
#define memset 			0x0004d13c
#define strcpy 			0x0004d2e8
#define strncmp	 		0x0004d33c
#define strlen			0x0004d310
#define pathdup_from_user	0x001b35e0
#define copy_from_user		0x0000e268
#define copy_to_user		0x0000e04c
#define alloc 			0x00062080
#define free 			0x000624c0
#define USBRegisterDriver 	0
#define syscall_table		0x002ea728
#define USBGetDeviceDescriptor	0x000d28e8
#define USBOpenEndpoint		0x000d2904
#define USBControlTransfer	0x000d287c
#define memory_patch_func	0x0004e814
#define patch_func1		0x000490a4
#define patch_func1_offset	0x34
#define patch_func2		0x0004f074
#define patch_func2_offset	0x2c
#define patch_func3		0x002aa678 // hooked_open
#define patch_func3_offset	0x24
#define patch_func4		0x0004ed10
#define patch_func4_offset	0x0
#define patch_func5		0x000505c8
#define patch_func5_offset	0x0
#define patch_func6		0x0002308c
#define patch_func6_offset	0x0
#define patch_func7		0x000e8280 // syscall_512
#define patch_func7_offset	0x0
#define patch_func8		0x00057248 // lv2_open
#define patch_func8_offset1	0x68 	   // lv2open update patch
#define patch_func8_offset2	0x1cc  	   // lv2open update patch
#define patch_func9		0x0004f838 // must upgrade error
#define patch_func9_offset	0x3ec
#define patch_syscall_func 	0x0028f234
#define patch_data1		0x003b9d10
#define rtoc_entry_1		 0x0ee0
#define rtoc_entry_2		-0x6a00

#define MEM_BASE2		(0x050b34)

#define RESIDENT_PAYLOAD_MAXSIZE (1296)

#define HASH_TABLE_1		0xA0694B50002C638E // vsh elf
#define HASH_TABLE_2		0x6B70281A0001E3AA // pkg loader elf
#define HASH_TABLE_3		0x8C0A948C000CC7E9 // xmb elf
#define HASH_TABLE_4		0xA2BC087A0005224C // ingame xmb elf

#define elf1_func1		0x005e9fe4
#define elf1_func1_offset	0x00
#define elf1_func2		0x002ff224
#define elf1_func2_offset	0x78 // 0x14?
#define elf2_func1		0x0002ded0 // run pkg function
#define elf2_func1_offset	0x374 // patch to run pkg (ignore error 0x80029567)

#define elf3_data		0x0020b258 // xmb 'game' submenu xml conf offset.
#define elf4_data		0x000d5728 // ingame xmb 'game' submenu xml conf offset.

#elif defined(FIRMWARE_3_21)

/* Common Symbols */
#define memcpy 			0x0007be9c
#define memset 			0x0004cc00
#define strcpy 			0x0004cdac
#define strncmp	 		0x0004ce00
#define strlen			0x0004cdd4
#define pathdup_from_user	0x001b3d24
#define copy_from_user		0x0000e300
#define copy_to_user		0x0000e0fc
#define alloc 			0x00061cf0
#define free 			0x00062138
#define USBRegisterDriver 	0
#define syscall_table		0x002ea8a0
#define USBGetDeviceDescriptor	0x000d3474
#define USBOpenEndpoint		0x000d34ac
#define USBControlTransfer	0x000d3408
#define memory_patch_func	0x0004e310
#define patch_func1		0x00048a64
#define patch_func1_offset	0x34
#define patch_func2		0x0004eb48
#define patch_func2_offset	0x2c
#define patch_func3		0x002aac08 // hooked_open
#define patch_func3_offset	0x24
#define patch_func4		0x0004e7e4
#define patch_func4_offset	0x0
#define patch_func5		0x0005009c
#define patch_func5_offset	0x0
#define patch_func6		0x00023380
#define patch_func6_offset	0x0
#define patch_func7		0x000e8e6c // syscall_512
#define patch_func7_offset	0x0
#define patch_func8		0x00056c3c // lv2_open
#define patch_func8_offset1	0x68 	   // lv2open update patch
#define patch_func8_offset2	0x1cc 	   // lv2open update patch
#define patch_func9		0x0004f30c // must upgrade error
#define patch_func9_offset	0x3ec
#define patch_syscall_func 	0x0028f67c
#define patch_data1		0x003b9a10
#define rtoc_entry_1		 0x0d60
#define rtoc_entry_2		-0x6b08

#define MEM_BASE2		(0x050608)

#define RESIDENT_PAYLOAD_MAXSIZE (1296)

#define HASH_TABLE_1		0xA0683FF8002C346B // vsh elf
#define HASH_TABLE_2		0x6B7028220001E56B // pkg loader elf
#define HASH_TABLE_3		0x8C0A948C000C7B8F // xmb elf
#define HASH_TABLE_4		0x7FE3F5CF00050992 // ingame xmb elf

#define elf1_func1		0x005e48cc
#define elf1_func1_offset	0x00
#define elf1_func2		0x002fadc8
#define elf1_func2_offset	0x14
#define elf2_func1		0x0000e518 // run pkg function
#define elf2_func1_offset	0x374 // patch to run pkg (ignore error 0x80029567)
	
#define elf3_data		0x00204238 // xmb 'game' submenu xml conf offset.
#define elf4_data		0x00004008 // ingame xmb 'game' submenu xml conf offset.

#elif defined(FIRMWARE_3_15)

/* Common Symbols */
#define memcpy			0x7be9c
#define memset			0x4cc00
#define strcpy			0x4cdac
#define strncmp			0x4ce00
#define strlen			0x4cdd4
#define pathdup_from_user	0x1b3d08 // FIXME: unsure of the name!
#define copy_from_user		0xE300
#define copy_to_user		0xE0FC
#define alloc_and_copy_from_user 0x0x1b3EC8
#define strdup_from_user	0x1B8C38
#define strlen_from_user	0x285BE4
#define alloc			0x61cf0
#define free			0x62138
#define USBRegisterDriver	0xd2978	// DONE
#define syscall_table		0x2ea820
#define USBGetDeviceDescriptor	0xD3474 // DONE
#define USBOpenEndpoint		0xD34AC // DONE
#define USBControlTransfer	0xD3408 // DONE
#define memory_patch_func	0x4e310
#define patch_func1		0x048a64
#define patch_func1_offset	0x34
#define patch_func2		0x04eb48
#define patch_func2_offset	0x2C
#define patch_func3		0x2aabec
#define patch_func3_offset	0x24
#define patch_func4		0x04e7e4
#define patch_func4_offset	0x0
#define patch_func5		0x05009c
#define patch_func5_offset	0x0
#define patch_func6		0x237E0
#define patch_func6_offset	0x0
#define patch_func7		0xE8E98
#define patch_func7_offset	0x0
#define patch_func8		0x56C3C
#define patch_func8_offset1	0x68
#define patch_func8_offset2	0x1CC
#define patch_func9		0x4F30C // must upgrade error
#define patch_func9_offset	0x3EC
#define patch_data1		0x3B9910
#define rtoc_entry_1		0xd58
#define rtoc_entry_2		-0x6b08

// Payload bases
#define MEM_BASE2 		(0x50608)

#define RESIDENT_PAYLOAD_MAXSIZE   (1296)

#define HASH_TABLE_1		0xA06FF29B002C284A
#define HASH_TABLE_2		0x6B7028220001E53E
#define HASH_TABLE_3		0x8C0A948C000C7AA6
#define HASH_TABLE_4		0x7FE3F53F000508D5

#define elf1_func1		0x5e3aec
#define elf1_func1_offset	0x00
#define elf1_func2		0x2fb05c
#define elf1_func2_offset	0x14
#define elf2_func1		0xe518
#define elf2_func1_offset	0x374

#define elf3_data		0x00204048
#define elf4_data		0x000d3e10

#elif defined(FIRMWARE_3_10)

#define memcpy 			0x7BE98
#define memset 			0x4CBFC
#define strcpy 			0x4CDA8
#define strncmp	 		0x4CDFC
#define strlen			0x4CDD0
#define pathdup_from_user	0x1b3d14 // FIXME: unsure of the name!
#define alloc 			0x61CEC
#define free 			0x62134
#define syscall_table		0x2EA820
#define memory_patch_func	0x4E30C

#define patch_func1		0x48A60
#define patch_func1_offset	0x34
#define patch_func2		0x4EB44
#define patch_func2_offset	0x2C
#define patch_func3		0x2AABF4
#define patch_func3_offset	0x24
#define patch_func4		0x4E7E0
#define patch_func4_offset	0x0
#define patch_func5		0x50098
#define patch_func5_offset	0x0
#define patch_func6		0
#define patch_func6_offset	0
#define patch_func7		0
#define patch_func7_offset	0
#define patch_func8		0
#define patch_func8_offset	0
#define patch_func9		0
#define patch_func9_offset	0
#define patch_data1		0x3B9990
#define rtoc_entry_1		0xD60
#define rtoc_entry_2		-0x6B08

#define MEM_BASE2 		(0x50604)

#define RESIDENT_PAYLOAD_MAXSIZE   (1296)

#define HASH_TABLE_1		0xA06F35DB002C221E
#define HASH_TABLE_2		0x6B7028220001E535
#define HASH_TABLE_3		0x8C0A948C000C79E5
#define HASH_TABLE_4		0x7FE3F5CF000508A4

#define elf1_func1		0x5E2C7C
#define elf1_func1_offset	0x00
#define elf1_func2		0x2FAA14
#define elf1_func2_offset	0x14
#define elf2_func1		0xe518
#define elf2_func1_offset	0x374

#define elf3_data	0x203e90
#define elf4_data	0xd3e28


#elif defined(FIRMWARE_3_01)

#define memcpy 			0x77E84
#define memset 			0x4A95C
#define strcpy 			0x4AAC4	
#define strncmp	 		0x4AB18
#define strlen			0x4AAEC
#define pathdup_from_user	0x1ACAF4 // FIXME: unsure of the name!
#define alloc 			0x5DF4C
#define free 			0x5E38C
#define USBRegisterDriver 	
#define syscall_table		0x2CFB40
#define USBGetDeviceDescriptor	 // FIXME: unsure of the name!
#define USBOpenEndpoint		 // FIXME
#define USBControlTransfer	 // FIXME
#define memory_patch_func	0x4BFF0

#define patch_func1		0x468C4
#define patch_func1_offset	0x34
#define patch_func2		0x04C824
#define patch_func2_offset	0x2C
#define patch_func3		0x291DEC
#define patch_func3_offset	0x24
#define patch_func4		0x4C4C0
#define patch_func4_offset	0x0
#define patch_func5		0x04DCA8
#define patch_func5_offset	0x0
#define patch_func6		0
#define patch_func6_offset	0
#define patch_func7		0
#define patch_func7_offset	0
#define patch_func8		0
#define patch_func8_offset	0
#define patch_func9		0
#define patch_func9_offset	0
#define patch_data1		0x39C010
#define rtoc_entry_1		0xD00
#define rtoc_entry_2		-0x6B30
	
#define MEM_BASE2 		(0x04E214)
	
#define RESIDENT_PAYLOAD_MAXSIZE   (1296)

#define HASH_TABLE_1		0xA00A6748002B0669
#define HASH_TABLE_2		0x6331A81B0001F7AC
#define HASH_TABLE_3		0x6A05EE84000BEBFC
#define HASH_TABLE_4		0xBF5574E70004FDD5

#define elf1_func1		0x5B009C
#define elf1_func1_offset	0x00
#define elf1_func2		0x219B44
#define elf1_func2_offset	0x14
#define elf2_func1		0xe578
#define elf2_func1_offset	0x374
	
#define elf3_data		0x001EAE98
#define elf4_data		0x000D1D00

#elif defined(FIRMWARE_2_76)

#define memcpy 			0x0007395C
#define memset 			0x00046850
#define strcpy 			0x000469B8
#define strncmp	 		0x00046A0C
#define strlen			0x000469E0
#define pathdup_from_user	0x001A2270
#define alloc 			0x00059D54
#define free 			0x0005A194
#define USBRegisterDriver 	0x000CC6A0
#define syscall_table		0x002C4318
#define USBGetDeviceDescriptor	0x000CCD2C
#define USBOpenEndpoint		0x000CCD58
#define USBControlTransfer	0x000CCCC0
#define memory_patch_func	0x00047EE4
#define patch_func1		0x00043828
#define patch_func1_offset	0x34
#define patch_func2		0x00048718
#define patch_func2_offset	0x2C
#define patch_func3		0x00286BDC
#define patch_func3_offset	0x0
#define patch_func4		0x000483B4
#define patch_func4_offset	0x0
#define patch_func5		0x00049AF0
#define patch_func5_offset	0x0
#define patch_func6		0x00022EE0
#define patch_func6_offset	0x80
#define patch_func7		0x000E1F04
#define patch_func7_offset	0x2C
#define patch_func8		0x000504BC // lv2open update patch
#define patch_func8_offset1	0x68
#define patch_func8_offset2	0x1CC
#define patch_func9		0x00048EDC // must upgrade patch
#define patch_func9_offset	0x3EC
#define patch_data1		0x0038E3E0
#define rtoc_entry_1		0x988
#define rtoc_entry_2		-0x6C50

// Payload bases
#define MEM_BASE2 		(0x4A05C)

#define RESIDENT_PAYLOAD_MAXSIZE   (1296)

#define HASH_TABLE_1		0xB35FF0D7002B53FF
#define HASH_TABLE_2		0xF662A7ED0001A3F8
#define HASH_TABLE_3		0x78D617A6000A25AB
#define HASH_TABLE_4		0x6CD46E1000044996

#define elf1_func1		0x5992D8
#define elf1_func1_offset	0x00
#define elf1_func2		0x160BC0
#define elf1_func2_offset	0x14
#define elf2_func1		0xc600
#define elf2_func1_offset	0x378

#define elf3_data		0x001AA2C8
#define elf4_data		0x000B6BC0

#endif

#endif /* __FIRMWARE_SYMBOLS_H_S__ */
