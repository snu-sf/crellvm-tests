; ModuleID = './MultiSource.Applications.ClamAV/66.libclamav_pe.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cli_ctx = type { i8**, i64*, %struct.cli_matcher*, %struct.cl_engine*, %struct.cl_limits*, i32, i32, i32, i32, %struct.cli_dconf* }
%struct.cli_matcher = type { i16, i8, i8*, %struct.cli_bm_patt**, i32*, i32, i8, i8, %struct.cli_ac_node*, %struct.cli_ac_node**, %struct.cli_ac_patt**, i32, i32, i32 }
%struct.cli_bm_patt = type { i8*, i8*, i16, i16, i8*, i8*, i8, %struct.cli_bm_patt*, i16 }
%struct.cli_ac_node = type { i8, i8, %struct.cli_ac_patt*, %struct.cli_ac_node**, %struct.cli_ac_node* }
%struct.cli_ac_patt = type { i16*, i16*, i16, i16, i8, i32, i32, i8*, i8*, i32, i16, i16, i16, i16, %struct.cli_ac_alt**, i8, i16, %struct.cli_ac_patt*, %struct.cli_ac_patt* }
%struct.cli_ac_alt = type { i8, i8*, i16, i16, %struct.cli_ac_alt* }
%struct.cl_engine = type { i32, i16, i32, i8**, i8**, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.cl_limits = type { i32, i32, i32, i32, i16, i64 }
%struct.cli_dconf = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.pe_image_file_hdr = type { i32, i16, i16, i32, i32, i32, i16, i16 }
%union.anon = type { %struct.pe_image_optional_hdr64 }
%struct.pe_image_optional_hdr64 = type { i16, i8, i8, i32, i32, i32, i32, i32, i64, i32, i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i16, i16, i64, i64, i64, i64, i32, i32, [16 x %struct.pe_image_data_dir] }
%struct.pe_image_data_dir = type { i32, i32 }
%struct.pe_image_section_hdr = type { [8 x i8], i32, i32, i32, i32, i32, i32, i16, i16, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.cli_exe_section = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pe_image_optional_hdr32 = type { i16, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, [16 x %struct.pe_image_data_dir] }
%struct.cli_md5_ctx = type { i32, i32, i32, i32, i32, i32, [64 x i8], [16 x i32] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.cli_exe_info = type { i32, i16, i64, %struct.cli_exe_section* }
%union.anon.0 = type { %struct.pe_image_optional_hdr64 }

@.str = private unnamed_addr constant [25 x i8] c"cli_scanpe: ctx == NULL\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Can't read DOS signature\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Invalid DOS signature\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Can't read new header address\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"Broken.Executable\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"e_lfanew == %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"Not a PE file\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"Can't lseek to e_lfanew\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"Can't read file header\0A\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"Invalid PE signature (probably NE file)\0A\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"File type: DLL\0A\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"File type: Executable\0A\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"Machine type: Unknown\0A\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"Machine type: 80386\0A\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"Machine type: 80486\0A\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"Machine type: 80586\0A\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"Machine type: R30000 (big-endian)\0A\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"Machine type: R3000\0A\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"Machine type: R4000\0A\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"Machine type: R10000\0A\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"Machine type: DEC Alpha AXP\0A\00", align 1
@.str.21 = private unnamed_addr constant [35 x i8] c"Machine type: DEC Alpha AXP 64bit\0A\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"Machine type: PowerPC\0A\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"Machine type: IA64\0A\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"Machine type: M68k\0A\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"Machine type: MIPS16\0A\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"Machine type: MIPS+FPU\0A\00", align 1
@.str.27 = private unnamed_addr constant [26 x i8] c"Machine type: MIPS16+FPU\0A\00", align 1
@.str.28 = private unnamed_addr constant [27 x i8] c"Machine type: Hitachi SH3\0A\00", align 1
@.str.29 = private unnamed_addr constant [31 x i8] c"Machine type: Hitachi SH3-DSP\0A\00", align 1
@.str.30 = private unnamed_addr constant [29 x i8] c"Machine type: Hitachi SH3-E\0A\00", align 1
@.str.31 = private unnamed_addr constant [27 x i8] c"Machine type: Hitachi SH4\0A\00", align 1
@.str.32 = private unnamed_addr constant [27 x i8] c"Machine type: Hitachi SH5\0A\00", align 1
@.str.33 = private unnamed_addr constant [19 x i8] c"Machine type: ARM\0A\00", align 1
@.str.34 = private unnamed_addr constant [21 x i8] c"Machine type: THUMB\0A\00", align 1
@.str.35 = private unnamed_addr constant [20 x i8] c"Machine type: AM33\0A\00", align 1
@.str.36 = private unnamed_addr constant [32 x i8] c"Machine type: Infineon TriCore\0A\00", align 1
@.str.37 = private unnamed_addr constant [19 x i8] c"Machine type: CEF\0A\00", align 1
@.str.38 = private unnamed_addr constant [29 x i8] c"Machine type: EFI Byte Code\0A\00", align 1
@.str.39 = private unnamed_addr constant [20 x i8] c"Machine type: M32R\0A\00", align 1
@.str.40 = private unnamed_addr constant [19 x i8] c"Machine type: CEE\0A\00", align 1
@.str.41 = private unnamed_addr constant [21 x i8] c"Machine type: AMD64\0A\00", align 1
@.str.42 = private unnamed_addr constant [42 x i8] c"Unknown machine type in PE header (0x%x)\0A\00", align 1
@.str.43 = private unnamed_addr constant [30 x i8] c"PE file contains %d sections\0A\00", align 1
@.str.44 = private unnamed_addr constant [30 x i8] c"PE file contains no sections\0A\00", align 1
@.str.45 = private unnamed_addr constant [22 x i8] c"NumberOfSections: %d\0A\00", align 1
@.str.46 = private unnamed_addr constant [18 x i8] c"TimeDateStamp: %s\00", align 1
@.str.47 = private unnamed_addr constant [26 x i8] c"SizeOfOptionalHeader: %x\0A\00", align 1
@.str.48 = private unnamed_addr constant [32 x i8] c"SizeOfOptionalHeader too small\0A\00", align 1
@.str.49 = private unnamed_addr constant [33 x i8] c"Can't read optional file header\0A\00", align 1
@.str.50 = private unnamed_addr constant [42 x i8] c"Incorrect SizeOfOptionalHeader for PE32+\0A\00", align 1
@.str.51 = private unnamed_addr constant [43 x i8] c"Incorrect magic number in optional header\0A\00", align 1
@.str.52 = private unnamed_addr constant [23 x i8] c"9x compatibility mode\0A\00", align 1
@.str.53 = private unnamed_addr constant [17 x i8] c"File format: PE\0A\00", align 1
@.str.54 = private unnamed_addr constant [24 x i8] c"MajorLinkerVersion: %d\0A\00", align 1
@.str.55 = private unnamed_addr constant [24 x i8] c"MinorLinkerVersion: %d\0A\00", align 1
@.str.56 = private unnamed_addr constant [18 x i8] c"SizeOfCode: 0x%x\0A\00", align 1
@.str.57 = private unnamed_addr constant [29 x i8] c"SizeOfInitializedData: 0x%x\0A\00", align 1
@.str.58 = private unnamed_addr constant [31 x i8] c"SizeOfUninitializedData: 0x%x\0A\00", align 1
@.str.59 = private unnamed_addr constant [27 x i8] c"AddressOfEntryPoint: 0x%x\0A\00", align 1
@.str.60 = private unnamed_addr constant [18 x i8] c"BaseOfCode: 0x%x\0A\00", align 1
@.str.61 = private unnamed_addr constant [24 x i8] c"SectionAlignment: 0x%x\0A\00", align 1
@.str.62 = private unnamed_addr constant [21 x i8] c"FileAlignment: 0x%x\0A\00", align 1
@.str.63 = private unnamed_addr constant [27 x i8] c"MajorSubsystemVersion: %d\0A\00", align 1
@.str.64 = private unnamed_addr constant [27 x i8] c"MinorSubsystemVersion: %d\0A\00", align 1
@.str.65 = private unnamed_addr constant [19 x i8] c"SizeOfImage: 0x%x\0A\00", align 1
@.str.66 = private unnamed_addr constant [21 x i8] c"SizeOfHeaders: 0x%x\0A\00", align 1
@.str.67 = private unnamed_addr constant [25 x i8] c"NumberOfRvaAndSizes: %d\0A\00", align 1
@.str.68 = private unnamed_addr constant [20 x i8] c"File format: PE32+\0A\00", align 1
@.str.69 = private unnamed_addr constant [20 x i8] c"Subsystem: Unknown\0A\00", align 1
@.str.70 = private unnamed_addr constant [25 x i8] c"Subsystem: Native (svc)\0A\00", align 1
@.str.71 = private unnamed_addr constant [22 x i8] c"Subsystem: Win32 GUI\0A\00", align 1
@.str.72 = private unnamed_addr constant [26 x i8] c"Subsystem: Win32 console\0A\00", align 1
@.str.73 = private unnamed_addr constant [25 x i8] c"Subsystem: OS/2 console\0A\00", align 1
@.str.74 = private unnamed_addr constant [26 x i8] c"Subsystem: POSIX console\0A\00", align 1
@.str.75 = private unnamed_addr constant [32 x i8] c"Subsystem: Native Win9x driver\0A\00", align 1
@.str.76 = private unnamed_addr constant [22 x i8] c"Subsystem: WinCE GUI\0A\00", align 1
@.str.77 = private unnamed_addr constant [28 x i8] c"Subsystem: EFI application\0A\00", align 1
@.str.78 = private unnamed_addr constant [23 x i8] c"Subsystem: EFI driver\0A\00", align 1
@.str.79 = private unnamed_addr constant [31 x i8] c"Subsystem: EFI runtime driver\0A\00", align 1
@.str.80 = private unnamed_addr constant [39 x i8] c"Unknown subsystem in PE header (0x%x)\0A\00", align 1
@.str.81 = private unnamed_addr constant [38 x i8] c"------------------------------------\0A\00", align 1
@.str.82 = private unnamed_addr constant [23 x i8] c"Bad virtual alignemnt\0A\00", align 1
@.str.83 = private unnamed_addr constant [20 x i8] c"Bad file alignemnt\0A\00", align 1
@.str.84 = private unnamed_addr constant [14 x i8] c"fstat failed\0A\00", align 1
@.str.85 = private unnamed_addr constant [43 x i8] c"Can't allocate memory for section headers\0A\00", align 1
@.str.86 = private unnamed_addr constant [27 x i8] c"Can't read section header\0A\00", align 1
@.str.87 = private unnamed_addr constant [25 x i8] c"Possibly broken PE file\0A\00", align 1
@.str.88 = private unnamed_addr constant [39 x i8] c"Found misaligned section, using 0x200\0A\00", align 1
@.str.89 = private unnamed_addr constant [12 x i8] c"Section %d\0A\00", align 1
@.str.90 = private unnamed_addr constant [18 x i8] c"Section name: %s\0A\00", align 1
@.str.91 = private unnamed_addr constant [41 x i8] c"Section data (from headers - in memory)\0A\00", align 1
@.str.92 = private unnamed_addr constant [24 x i8] c"VirtualSize: 0x%x 0x%x\0A\00", align 1
@.str.93 = private unnamed_addr constant [27 x i8] c"VirtualAddress: 0x%x 0x%x\0A\00", align 1
@.str.94 = private unnamed_addr constant [26 x i8] c"SizeOfRawData: 0x%x 0x%x\0A\00", align 1
@.str.95 = private unnamed_addr constant [29 x i8] c"PointerToRawData: 0x%x 0x%x\0A\00", align 1
@.str.96 = private unnamed_addr constant [34 x i8] c"Section contains executable code\0A\00", align 1
@.str.97 = private unnamed_addr constant [29 x i8] c"Section contains free space\0A\00", align 1
@.str.98 = private unnamed_addr constant [32 x i8] c"Section's memory is executable\0A\00", align 1
@.str.99 = private unnamed_addr constant [31 x i8] c"Section's memory is writeable\0A\00", align 1
@.str.100 = private unnamed_addr constant [30 x i8] c"VirtualAddress is misaligned\0A\00", align 1
@.str.101 = private unnamed_addr constant [91 x i8] c"Broken PE file - Section %d starts beyond the end of file (Offset@ %d, Total filesize %d)\0A\00", align 1
@.str.102 = private unnamed_addr constant [37 x i8] c"First section is in the wrong place\0A\00", align 1
@.str.103 = private unnamed_addr constant [72 x i8] c"Virtually misplaced section (wrong order, overlapping, non contiguous)\0A\00", align 1
@.str.104 = private unnamed_addr constant [24 x i8] c"EntryPoint out of file\0A\00", align 1
@.str.105 = private unnamed_addr constant [30 x i8] c"EntryPoint offset: 0x%x (%d)\0A\00", align 1
@.str.106 = private unnamed_addr constant [16 x i8] c"GetProcAddress\00\00", align 1
@.str.107 = private unnamed_addr constant [13 x i8] c"W32.Parite.B\00", align 1
@cli_scanpe.kzs = private unnamed_addr constant [12 x i8] c"\00\01\02\03\00\04\05\00\06\00\07\08", align 1
@.str.108 = private unnamed_addr constant [9 x i8] c"in kriz\0A\00", align 1
@.str.109 = private unnamed_addr constant [33 x i8] c"kriz: using #%d as size counter\0A\00", align 1
@.str.110 = private unnamed_addr constant [28 x i8] c"kriz: using #%d as pointer\0A\00", align 1
@.str.111 = private unnamed_addr constant [9 x i8] c"W32.Kriz\00", align 1
@.str.112 = private unnamed_addr constant [45 x i8] c"kriz: loop out of bounds, corrupted sample?\0A\00", align 1
@.str.113 = private unnamed_addr constant [6 x i8] c"\E8,a\00\00\00", align 1
@.str.114 = private unnamed_addr constant [18 x i8] c"W32.Magistr.A.dam\00", align 1
@.str.115 = private unnamed_addr constant [14 x i8] c"W32.Magistr.A\00", align 1
@.str.116 = private unnamed_addr constant [6 x i8] c"\E8\04r\00\00\00", align 1
@.str.117 = private unnamed_addr constant [18 x i8] c"W32.Magistr.B.dam\00", align 1
@.str.118 = private unnamed_addr constant [14 x i8] c"W32.Magistr.B\00", align 1
@.str.119 = private unnamed_addr constant [36 x i8] c"Polipos: Checking %d xsect jump(s)\0A\00", align 1
@.str.120 = private unnamed_addr constant [14 x i8] c"W32.Polipos.A\00", align 1
@.str.121 = private unnamed_addr constant [57 x i8] c"UPX/FSG/MEW: empty section found - assuming compression\0A\00", align 1
@.str.122 = private unnamed_addr constant [55 x i8] c"MEW: found MEW characteristics %08X + %08X + 5 = %08X\0A\00", align 1
@.str.123 = private unnamed_addr constant [21 x i8] c"MEW: lseek() failed\0A\00", align 1
@.str.124 = private unnamed_addr constant [44 x i8] c"MEW: Can't read 0xb0 bytes at 0x%x (%d) %d\0A\00", align 1
@.str.125 = private unnamed_addr constant [35 x i8] c"MEW: Win9x compatibility was set!\0A\00", align 1
@.str.126 = private unnamed_addr constant [39 x i8] c"MEW: Win9x compatibility was NOT set!\0A\00", align 1
@.str.127 = private unnamed_addr constant [35 x i8] c"MEW: ESI is not in proper section\0A\00", align 1
@.str.128 = private unnamed_addr constant [42 x i8] c"MEW: ssize %08x dsize %08x offdiff: %08x\0A\00", align 1
@.str.129 = private unnamed_addr constant [33 x i8] c"MEW: Sizes exceeded (%lu > %lu)\0A\00", align 1
@.str.130 = private unnamed_addr constant [24 x i8] c"PE.MEW.ExceededFileSize\00", align 1
@.str.131 = private unnamed_addr constant [26 x i8] c"MEW: Size mismatch: %08x\0A\00", align 1
@.str.132 = private unnamed_addr constant [37 x i8] c"MEW: Can't read %d bytes [read: %d]\0A\00", align 1
@.str.133 = private unnamed_addr constant [27 x i8] c"MEW: %d (%08x) bytes read\0A\00", align 1
@.str.134 = private unnamed_addr constant [31 x i8] c"MEW: lzma proc out of bounds!\0A\00", align 1
@.str.135 = private unnamed_addr constant [27 x i8] c"MEW: Can't create file %s\0A\00", align 1
@cli_leavetemps_flag = external global i8, align 1
@.str.136 = private unnamed_addr constant [50 x i8] c"MEW: Unpacked and rebuilt executable saved in %s\0A\00", align 1
@.str.137 = private unnamed_addr constant [38 x i8] c"MEW: Unpacked and rebuilt executable\0A\00", align 1
@.str.138 = private unnamed_addr constant [38 x i8] c"***** Scanning rebuilt PE file *****\0A\00", align 1
@.str.139 = private unnamed_addr constant [23 x i8] c"MEW: Unpacking failed\0A\00", align 1
@.str.140 = private unnamed_addr constant [30 x i8] c"Upack characteristics found.\0A\00", align 1
@.str.141 = private unnamed_addr constant [16 x i8] c"Upack: var set\0A\00", align 1
@.str.142 = private unnamed_addr constant [20 x i8] c"Upack: var NOT set\0A\00", align 1
@.str.143 = private unnamed_addr constant [35 x i8] c"Upack: Sizes exceeded (%lu > %lu)\0A\00", align 1
@.str.144 = private unnamed_addr constant [26 x i8] c"PE.Upack.ExceededFileSize\00", align 1
@.str.145 = private unnamed_addr constant [64 x i8] c"Upack: probably malformed pe-header, skipping to next unpacker\0A\00", align 1
@.str.146 = private unnamed_addr constant [41 x i8] c"Upack: Can't read raw data of section 0\0A\00", align 1
@.str.147 = private unnamed_addr constant [41 x i8] c"Upack: Can't read raw data of section 1\0A\00", align 1
@.str.148 = private unnamed_addr constant [29 x i8] c"Upack: Can't create file %s\0A\00", align 1
@.str.149 = private unnamed_addr constant [52 x i8] c"Upack: Unpacked and rebuilt executable saved in %s\0A\00", align 1
@.str.150 = private unnamed_addr constant [40 x i8] c"Upack: Unpacked and rebuilt executable\0A\00", align 1
@.str.151 = private unnamed_addr constant [25 x i8] c"Upack: Unpacking failed\0A\00", align 1
@.str.152 = private unnamed_addr constant [33 x i8] c"FSG: Sizes exceeded (%lu > %lu)\0A\00", align 1
@.str.153 = private unnamed_addr constant [24 x i8] c"PE.FSG.ExceededFileSize\00", align 1
@.str.154 = private unnamed_addr constant [43 x i8] c"FSG: Size mismatch (ssize: %d, dsize: %d)\0A\00", align 1
@.str.155 = private unnamed_addr constant [41 x i8] c"FSG: xchg out of bounds (%x), giving up\0A\00", align 1
@.str.156 = private unnamed_addr constant [35 x i8] c"Can't read raw data of section %d\0A\00", align 1
@.str.157 = private unnamed_addr constant [28 x i8] c"FSG: New ESP out of bounds\0A\00", align 1
@.str.158 = private unnamed_addr constant [28 x i8] c"FSG: New ESP (%x) is wrong\0A\00", align 1
@.str.159 = private unnamed_addr constant [30 x i8] c"FSG: New stack out of bounds\0A\00", align 1
@.str.160 = private unnamed_addr constant [54 x i8] c"FSG: Bad destination buffer (edi is %x should be %x)\0A\00", align 1
@.str.161 = private unnamed_addr constant [42 x i8] c"FSG: Source buffer out of section bounds\0A\00", align 1
@.str.162 = private unnamed_addr constant [39 x i8] c"FSG: Array of functions out of bounds\0A\00", align 1
@.str.163 = private unnamed_addr constant [23 x i8] c"FSG: found old EP @%x\0A\00", align 1
@.str.164 = private unnamed_addr constant [27 x i8] c"FSG: Can't create file %s\0A\00", align 1
@.str.165 = private unnamed_addr constant [50 x i8] c"FSG: Unpacked and rebuilt executable saved in %s\0A\00", align 1
@.str.166 = private unnamed_addr constant [38 x i8] c"FSG: Unpacked and rebuilt executable\0A\00", align 1
@.str.167 = private unnamed_addr constant [32 x i8] c"FSG: Successfully decompressed\0A\00", align 1
@.str.168 = private unnamed_addr constant [23 x i8] c"FSG: Unpacking failed\0A\00", align 1
@.str.169 = private unnamed_addr constant [39 x i8] c"FSG: Support data out of padding area\0A\00", align 1
@.str.170 = private unnamed_addr constant [39 x i8] c"Can't read %d bytes from padding area\0A\00", align 1
@.str.171 = private unnamed_addr constant [43 x i8] c"FSG: Bad destination (is %x should be %x)\0A\00", align 1
@.str.172 = private unnamed_addr constant [40 x i8] c"FSG: Original section %d is misaligned\0A\00", align 1
@.str.173 = private unnamed_addr constant [43 x i8] c"FSG: Original section %d is out of bounds\0A\00", align 1
@.str.174 = private unnamed_addr constant [40 x i8] c"FSG: Can't read raw data of section %d\0A\00", align 1
@.str.175 = private unnamed_addr constant [33 x i8] c"UPX: Sizes exceeded (%lu > %lu)\0A\00", align 1
@.str.176 = private unnamed_addr constant [24 x i8] c"PE.UPX.ExceededFileSize\00", align 1
@.str.177 = private unnamed_addr constant [60 x i8] c"UPX: Size mismatch or dsize too big (ssize: %d, dsize: %d)\0A\00", align 1
@.str.178 = private unnamed_addr constant [40 x i8] c"UPX: Can't read raw data of section %d\0A\00", align 1
@.str.179 = private unnamed_addr constant [25 x i8] c"\11\DB\11\C9\01\DBu\07\8B\1E\83\EE\FC\11\DB\11\C9\11\C9u A\01\DB\00", align 1
@.str.180 = private unnamed_addr constant [47 x i8] c"UPX: Looks like a NRV2B decompression routine\0A\00", align 1
@.str.181 = private unnamed_addr constant [25 x i8] c"\83\F0\FFtx\D1\F8\89\C5\EB\0B\01\DBu\07\8B\1E\83\EE\FC\11\DB\11\C9\00", align 1
@.str.182 = private unnamed_addr constant [47 x i8] c"UPX: Looks like a NRV2D decompression routine\0A\00", align 1
@.str.183 = private unnamed_addr constant [25 x i8] c"\EBR1\C9\83\E8\03r\11\C1\E0\08\8A\06F\83\F0\FFtu\D1\F8\89\C5\00", align 1
@.str.184 = private unnamed_addr constant [47 x i8] c"UPX: Looks like a NRV2E decompression routine\0A\00", align 1
@.str.185 = private unnamed_addr constant [36 x i8] c"UPX: UPX1 seems skewed by %d bytes\0A\00", align 1
@.str.186 = private unnamed_addr constant [32 x i8] c"UPX: Successfully decompressed\0A\00", align 1
@.str.187 = private unnamed_addr constant [36 x i8] c"UPX: Preferred decompressor failed\0A\00", align 1
@.str.188 = private unnamed_addr constant [32 x i8] c"UPX: NRV2B decompressor failed\0A\00", align 1
@.str.189 = private unnamed_addr constant [43 x i8] c"UPX: Successfully decompressed with NRV2B\0A\00", align 1
@.str.190 = private unnamed_addr constant [32 x i8] c"UPX: NRV2D decompressor failed\0A\00", align 1
@.str.191 = private unnamed_addr constant [43 x i8] c"UPX: Successfully decompressed with NRV2D\0A\00", align 1
@.str.192 = private unnamed_addr constant [32 x i8] c"UPX: NRV2E decompressor failed\0A\00", align 1
@.str.193 = private unnamed_addr constant [43 x i8] c"UPX: Successfully decompressed with NRV2E\0A\00", align 1
@.str.194 = private unnamed_addr constant [31 x i8] c"UPX: All decompressors failed\0A\00", align 1
@.str.195 = private unnamed_addr constant [31 x i8] c"UPX/FSG: Can't create file %s\0A\00", align 1
@.str.196 = private unnamed_addr constant [31 x i8] c"UPX/FSG: Can't write %d bytes\0A\00", align 1
@.str.197 = private unnamed_addr constant [40 x i8] c"UPX/FSG: Decompressed data saved in %s\0A\00", align 1
@.str.198 = private unnamed_addr constant [40 x i8] c"***** Scanning decompressed file *****\0A\00", align 1
@.str.199 = private unnamed_addr constant [36 x i8] c"Petite: v2.%d compression detected\0A\00", align 1
@.str.200 = private unnamed_addr constant [53 x i8] c"Petite: level zero compression is not supported yet\0A\00", align 1
@.str.201 = private unnamed_addr constant [36 x i8] c"Petite: Sizes exceeded (%lu > %lu)\0A\00", align 1
@.str.202 = private unnamed_addr constant [27 x i8] c"PE.Petite.ExceededFileSize\00", align 1
@.str.203 = private unnamed_addr constant [33 x i8] c"Petite: Can't allocate %d bytes\0A\00", align 1
@.str.204 = private unnamed_addr constant [30 x i8] c"Petite: Can't create file %s\0A\00", align 1
@.str.205 = private unnamed_addr constant [53 x i8] c"Petite: Unpacked and rebuilt executable saved in %s\0A\00", align 1
@.str.206 = private unnamed_addr constant [41 x i8] c"Petite: Unpacked and rebuilt executable\0A\00", align 1
@.str.207 = private unnamed_addr constant [26 x i8] c"Petite: Unpacking failed\0A\00", align 1
@.str.208 = private unnamed_addr constant [11 x i8] c"\E8\00\00\00\00\8B\1C$\83\C3\00", align 1
@.str.209 = private unnamed_addr constant [36 x i8] c"PEspin: Sizes exceeded (%lu > %lu)\0A\00", align 1
@.str.210 = private unnamed_addr constant [27 x i8] c"PE.PEspin.ExceededFileSize\00", align 1
@.str.211 = private unnamed_addr constant [29 x i8] c"PESpin: Can't read %d bytes\0A\00", align 1
@.str.212 = private unnamed_addr constant [30 x i8] c"PESpin: Can't create file %s\0A\00", align 1
@.str.213 = private unnamed_addr constant [53 x i8] c"PEspin: Unpacked and rebuilt executable saved in %s\0A\00", align 1
@.str.214 = private unnamed_addr constant [41 x i8] c"PEspin: Unpacked and rebuilt executable\0A\00", align 1
@.str.215 = private unnamed_addr constant [23 x i8] c"PESpin: Size exceeded\0A\00", align 1
@.str.216 = private unnamed_addr constant [27 x i8] c"PE.Pespin.ExceededFileSize\00", align 1
@.str.217 = private unnamed_addr constant [26 x i8] c"PEspin: Unpacking failed\0A\00", align 1
@.str.218 = private unnamed_addr constant [52 x i8] c"U\8B\ECSVW`\E8\00\00\00\00]\81\EDl(@\00\B9]4@\00\81\E9\C6(@\00\8B\D5\81\C2\C6(@\00\8D:\8B\F73\C0\EB\04\90\EB\01\C2\AC\00", align 1
@.str.219 = private unnamed_addr constant [25 x i8] c"yC: Can't read %d bytes\0A\00", align 1
@.str.220 = private unnamed_addr constant [26 x i8] c"yC: Can't create file %s\0A\00", align 1
@.str.221 = private unnamed_addr constant [49 x i8] c"yC: Unpacked and rebuilt executable saved in %s\0A\00", align 1
@.str.222 = private unnamed_addr constant [37 x i8] c"yC: Unpacked and rebuilt executable\0A\00", align 1
@.str.223 = private unnamed_addr constant [22 x i8] c"yC: Unpacking failed\0A\00", align 1
@.str.224 = private unnamed_addr constant [8 x i8] c"SU\8B\E83\DB\EB\00", align 1
@.str.225 = private unnamed_addr constant [20 x i8] c"\E8\00\00\00\00X-m\00\00\00P`3\C9PXPP\00", align 1
@.str.226 = private unnamed_addr constant [36 x i8] c"WWPack: Sizes exceeded (%lu > %lu)\0A\00", align 1
@.str.227 = private unnamed_addr constant [27 x i8] c"PE.WWPack.ExceededFileSize\00", align 1
@.str.228 = private unnamed_addr constant [33 x i8] c"WWPack: Can't allocate %d bytes\0A\00", align 1
@.str.229 = private unnamed_addr constant [42 x i8] c"WWPack: Can't read %d bytes from headers\0A\00", align 1
@.str.230 = private unnamed_addr constant [46 x i8] c"WWPack: Can't read %d bytes from wwpack sect\0A\00", align 1
@.str.231 = private unnamed_addr constant [30 x i8] c"WWPack: Can't create file %s\0A\00", align 1
@.str.232 = private unnamed_addr constant [30 x i8] c"WWPack: Can't write %d bytes\0A\00", align 1
@.str.233 = private unnamed_addr constant [53 x i8] c"WWPack: Unpacked and rebuilt executable saved in %s\0A\00", align 1
@.str.234 = private unnamed_addr constant [41 x i8] c"WWPack: Unpacked and rebuilt executable\0A\00", align 1
@.str.235 = private unnamed_addr constant [31 x i8] c"WWPpack: Decompression failed\0A\00", align 1
@.str.236 = private unnamed_addr constant [9 x i8] c"`\E8\03\00\00\00\E9\EB\00", align 1
@.str.237 = private unnamed_addr constant [7 x i8] c"h\00\00\00\00\C3\00", align 1
@.str.238 = private unnamed_addr constant [36 x i8] c"Aspack: Sizes exceeded (%lu > %lu)\0A\00", align 1
@.str.239 = private unnamed_addr constant [27 x i8] c"PE.Aspack.ExceededFileSize\00", align 1
@.str.240 = private unnamed_addr constant [46 x i8] c"Aspack: Probably hacked/damaged Aspack file.\0A\00", align 1
@.str.241 = private unnamed_addr constant [30 x i8] c"Aspack: Can't create file %s\0A\00", align 1
@.str.242 = private unnamed_addr constant [53 x i8] c"Aspack: Unpacked and rebuilt executable saved in %s\0A\00", align 1
@.str.243 = private unnamed_addr constant [41 x i8] c"Aspack: Unpacked and rebuilt executable\0A\00", align 1
@.str.244 = private unnamed_addr constant [26 x i8] c"Aspack: Unpacking failed\0A\00", align 1
@.str.245 = private unnamed_addr constant [14 x i8] c"\9C`\E8\00\00\00\00]\B8\07\00\00\00\00", align 1
@.str.246 = private unnamed_addr constant [41 x i8] c"NsPack: Found *start_of_stuff @delta-%x\0A\00", align 1
@.str.247 = private unnamed_addr constant [36 x i8] c"NsPack: Sizes exceeded (%lu > %lu)\0A\00", align 1
@.str.248 = private unnamed_addr constant [27 x i8] c"PE.NsPack.ExceededFileSize\00", align 1
@.str.249 = private unnamed_addr constant [20 x i8] c"NsPack: OEP = %08x\0A\00", align 1
@.str.250 = private unnamed_addr constant [30 x i8] c"NsPack: Can't create file %s\0A\00", align 1
@.str.251 = private unnamed_addr constant [53 x i8] c"NsPack: Unpacked and rebuilt executable saved in %s\0A\00", align 1
@.str.252 = private unnamed_addr constant [41 x i8] c"NsPack: Unpacked and rebuilt executable\0A\00", align 1
@.str.253 = private unnamed_addr constant [26 x i8] c"NsPack: Unpacking failed\0A\00", align 1
@.str.254 = private unnamed_addr constant [17 x i8] c"in cli_peheader\0A\00", align 1
@.str.255 = private unnamed_addr constant [16 x i8] c"Broken PE file\0A\00", align 1
@.str.256 = private unnamed_addr constant [59 x i8] c"cli_md5sect: skipping md5 calculation for too big section\0A\00", align 1
@.str.257 = private unnamed_addr constant [28 x i8] c"cli_md5sect: out of memory\0A\00", align 1
@.str.258 = private unnamed_addr constant [42 x i8] c"cli_md5sect: unable to read section data\0A\00", align 1
@.str.259 = private unnamed_addr constant [30 x i8] c"cli_seeksect: lseek() failed\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @cli_scanpe(i32 %desc, %struct.cli_ctx* %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %desc.addr = alloca i32, align 4
  %ctx.addr = alloca %struct.cli_ctx*, align 8
  %e_magic = alloca i16, align 2
  %nsections = alloca i16, align 2
  %e_lfanew = alloca i32, align 4
  %ep = alloca i32, align 4
  %vep = alloca i32, align 4
  %polipos = alloca i8, align 1
  %timestamp = alloca i64, align 8
  %file_hdr = alloca %struct.pe_image_file_hdr, align 4
  %pe_opt = alloca %union.anon, align 8
  %section_hdr = alloca %struct.pe_image_section_hdr*, align 8
  %sb = alloca %struct.stat, align 8
  %sname = alloca [9 x i8], align 1
  %buff = alloca [4096 x i8], align 16
  %epbuff = alloca [4096 x i8], align 16
  %tempfile = alloca i8*, align 8
  %epsize = alloca i32, align 4
  %bytes = alloca i64, align 8
  %i = alloca i32, align 4
  %found = alloca i32, align 4
  %upx_success = alloca i32, align 4
  %min = alloca i32, align 4
  %max = alloca i32, align 4
  %err = alloca i32, align 4
  %ssize = alloca i32, align 4
  %dsize = alloca i32, align 4
  %dll = alloca i32, align 4
  %pe_plus = alloca i32, align 4
  %upxfn = alloca i32 (i8*, i32, i8*, i32*, i32, i32, i32)*, align 8
  %src = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %ndesc = alloca i32, align 4
  %ret = alloca i32, align 4
  %upack = alloca i32, align 4
  %native = alloca i32, align 4
  %fsize = alloca i64, align 8
  %valign = alloca i32, align 4
  %falign = alloca i32, align 4
  %hdr_size = alloca i32, align 4
  %j = alloca i32, align 4
  %exe_sections = alloca %struct.cli_exe_section*, align 8
  %md5_sect = alloca %struct.cli_matcher*, align 8
  %md5_dig = alloca [16 x i8], align 16
  %pt = alloca i8*, align 8
  %kzs = alloca [12 x i8], align 1
  %kzstate = alloca i8*, align 8
  %kzcode = alloca i8*, align 8
  %kzdptr = alloca i8, align 1
  %kzdsize = alloca i8, align 1
  %kzlen = alloca i32, align 4
  %kzinitlen = alloca i32, align 4
  %kzxorlen = alloca i32, align 4
  %op = alloca i8, align 1
  %opsz = alloca i32, align 4
  %rsize = alloca i32, align 4
  %vsize = alloca i32, align 4
  %dam = alloca i32, align 4
  %bw = alloca i32, align 4
  %bw1317 = alloca i32, align 4
  %jump = alloca i32, align 4
  %jold = alloca i32, align 4
  %jumps = alloca i32*, align 8
  %code = alloca i8*, align 8
  %xsjs = alloca i32, align 4
  %fileoffset = alloca i32, align 4
  %offdiff = alloca i32, align 4
  %uselzma = alloca i32, align 4
  %vma = alloca i32, align 4
  %off = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %newesi = alloca i32, align 4
  %newedi = alloca i32, align 4
  %newebx = alloca i32, align 4
  %newedx = alloca i32, align 4
  %sectcnt = alloca i32, align 4
  %support = alloca i8*, align 8
  %newesi2711 = alloca i32, align 4
  %newedi2712 = alloca i32, align 4
  %oldep = alloca i32, align 4
  %gp = alloca i32, align 4
  %t = alloca i32, align 4
  %sections = alloca %struct.cli_exe_section*, align 8
  %rva2855 = alloca i32, align 4
  %sectcnt3064 = alloca i32, align 4
  %t3065 = alloca i32, align 4
  %gp3066 = alloca i32, align 4
  %support3073 = alloca i8*, align 8
  %newesi3074 = alloca i32, align 4
  %newedi3080 = alloca i32, align 4
  %oldep3086 = alloca i32, align 4
  %sections3092 = alloca %struct.cli_exe_section*, align 8
  %rva3219 = alloca i32, align 4
  %skew = alloca i32, align 4
  %spinned = alloca i8*, align 8
  %spinned4078 = alloca i8*, align 8
  %headsize = alloca i32, align 4
  %dest4187 = alloca i8*, align 8
  %wwp = alloca i8*, align 8
  %eprva = alloca i32, align 4
  %start_of_stuff = alloca i32, align 4
  %ssize4615 = alloca i32, align 4
  %dsize4616 = alloca i32, align 4
  %rep = alloca i32, align 4
  %nowinldr = alloca i32, align 4
  %nbuff = alloca [24 x i8], align 16
  %src4617 = alloca i8*, align 8
  %dest4619 = alloca i8*, align 8
  store i32 %desc, i32* %desc.addr, align 4
  store %struct.cli_ctx* %ctx, %struct.cli_ctx** %ctx.addr, align 8
  store i8 0, i8* %polipos, align 1
  store i32 0, i32* %upx_success, align 4
  store i32 0, i32* %min, align 4
  store i32 0, i32* %max, align 4
  store i32 0, i32* %ssize, align 4
  store i32 0, i32* %dsize, align 4
  store i32 0, i32* %dll, align 4
  store i32 0, i32* %pe_plus, align 4
  store i32 (i8*, i32, i8*, i32*, i32, i32, i32)* null, i32 (i8*, i32, i8*, i32*, i32, i32, i32)** %upxfn, align 8
  store i8* null, i8** %src, align 8
  store i8* null, i8** %dest, align 8
  store i32 0, i32* %ret, align 4
  store i32 0, i32* %upack, align 4
  store i32 0, i32* %native, align 4
  %0 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %tobool = icmp ne %struct.cli_ctx* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0))
  store i32 -111, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %desc.addr, align 4
  %2 = bitcast i16* %e_magic to i8*
  %call = call i32 @cli_readn(i32 %1, i8* %2, i32 2)
  %conv = sext i32 %call to i64
  %cmp = icmp ne i64 %conv, 2
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %3 = load i16, i16* %e_magic, align 2
  %conv4 = zext i16 %3 to i32
  %cmp5 = icmp ne i32 %conv4, 23117
  br i1 %cmp5, label %land.lhs.true, label %if.end.11

land.lhs.true:                                    ; preds = %if.end.3
  %4 = load i16, i16* %e_magic, align 2
  %conv7 = zext i16 %4 to i32
  %cmp8 = icmp ne i32 %conv7, 19802
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %land.lhs.true
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.11:                                        ; preds = %land.lhs.true, %if.end.3
  %5 = load i32, i32* %desc.addr, align 4
  %call12 = call i64 @lseek(i32 %5, i64 58, i32 1) #3
  %6 = load i32, i32* %desc.addr, align 4
  %7 = bitcast i32* %e_lfanew to i8*
  %call13 = call i32 @cli_readn(i32 %6, i8* %7, i32 4)
  %conv14 = sext i32 %call13 to i64
  %cmp15 = icmp ne i64 %conv14, 4
  br i1 %cmp15, label %if.then.17, label %if.end.25

if.then.17:                                       ; preds = %if.end.11
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0))
  %8 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %8, i32 0, i32 5
  %9 = load i32, i32* %options, align 4
  %and = and i32 %9, 64
  %tobool18 = icmp ne i32 %and, 0
  br i1 %tobool18, label %if.then.19, label %if.end.24

if.then.19:                                       ; preds = %if.then.17
  %10 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %10, i32 0, i32 0
  %11 = load i8**, i8*** %virname, align 8
  %tobool20 = icmp ne i8** %11, null
  br i1 %tobool20, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %if.then.19
  %12 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname22 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %12, i32 0, i32 0
  %13 = load i8**, i8*** %virname22, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i8** %13, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %if.then.19
  store i32 1, i32* %retval
  br label %return

if.end.24:                                        ; preds = %if.then.17
  store i32 0, i32* %retval
  br label %return

if.end.25:                                        ; preds = %if.end.11
  %14 = load i32, i32* %e_lfanew, align 4
  store i32 %14, i32* %e_lfanew, align 4
  %15 = load i32, i32* %e_lfanew, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0), i32 %15)
  %16 = load i32, i32* %e_lfanew, align 4
  %tobool26 = icmp ne i32 %16, 0
  br i1 %tobool26, label %if.end.28, label %if.then.27

if.then.27:                                       ; preds = %if.end.25
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.28:                                        ; preds = %if.end.25
  %17 = load i32, i32* %desc.addr, align 4
  %18 = load i32, i32* %e_lfanew, align 4
  %conv29 = zext i32 %18 to i64
  %call30 = call i64 @lseek(i32 %17, i64 %conv29, i32 0) #3
  %cmp31 = icmp slt i64 %call30, 0
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.28
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.34:                                        ; preds = %if.end.28
  %19 = load i32, i32* %desc.addr, align 4
  %20 = bitcast %struct.pe_image_file_hdr* %file_hdr to i8*
  %call35 = call i32 @cli_readn(i32 %19, i8* %20, i32 24)
  %conv36 = sext i32 %call35 to i64
  %cmp37 = icmp ne i64 %conv36, 24
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.end.34
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.40:                                        ; preds = %if.end.34
  %Magic = getelementptr inbounds %struct.pe_image_file_hdr, %struct.pe_image_file_hdr* %file_hdr, i32 0, i32 0
  %21 = load i32, i32* %Magic, align 4
  %cmp41 = icmp ne i32 %21, 17744
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.end.40
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.44:                                        ; preds = %if.end.40
  %Characteristics = getelementptr inbounds %struct.pe_image_file_hdr, %struct.pe_image_file_hdr* %file_hdr, i32 0, i32 7
  %22 = load i16, i16* %Characteristics, align 2
  %conv45 = zext i16 %22 to i32
  %and46 = and i32 %conv45, 8192
  %tobool47 = icmp ne i32 %and46, 0
  br i1 %tobool47, label %if.then.48, label %if.else

if.then.48:                                       ; preds = %if.end.44
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0))
  store i32 1, i32* %dll, align 4
  br label %if.end.55

if.else:                                          ; preds = %if.end.44
  %Characteristics49 = getelementptr inbounds %struct.pe_image_file_hdr, %struct.pe_image_file_hdr* %file_hdr, i32 0, i32 7
  %23 = load i16, i16* %Characteristics49, align 2
  %conv50 = zext i16 %23 to i32
  %and51 = and i32 %conv50, 1
  %tobool52 = icmp ne i32 %and51, 0
  br i1 %tobool52, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.else
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.53, %if.else
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %if.then.48
  %Machine = getelementptr inbounds %struct.pe_image_file_hdr, %struct.pe_image_file_hdr* %file_hdr, i32 0, i32 1
  %24 = load i16, i16* %Machine, align 2
  %conv56 = zext i16 %24 to i32
  switch i32 %conv56, label %sw.default [
    i32 0, label %sw.bb
    i32 332, label %sw.bb.57
    i32 333, label %sw.bb.58
    i32 334, label %sw.bb.59
    i32 352, label %sw.bb.60
    i32 354, label %sw.bb.61
    i32 358, label %sw.bb.62
    i32 360, label %sw.bb.63
    i32 388, label %sw.bb.64
    i32 644, label %sw.bb.65
    i32 496, label %sw.bb.66
    i32 512, label %sw.bb.67
    i32 616, label %sw.bb.68
    i32 614, label %sw.bb.69
    i32 870, label %sw.bb.70
    i32 1126, label %sw.bb.71
    i32 418, label %sw.bb.72
    i32 419, label %sw.bb.73
    i32 420, label %sw.bb.74
    i32 422, label %sw.bb.75
    i32 424, label %sw.bb.76
    i32 448, label %sw.bb.77
    i32 450, label %sw.bb.78
    i32 467, label %sw.bb.79
    i32 1312, label %sw.bb.80
    i32 3311, label %sw.bb.81
    i32 3772, label %sw.bb.82
    i32 36929, label %sw.bb.83
    i32 49390, label %sw.bb.84
    i32 34404, label %sw.bb.85
  ]

sw.bb:                                            ; preds = %if.end.55
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i32 0, i32 0))
  br label %sw.epilog

sw.bb.57:                                         ; preds = %if.end.55
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i32 0, i32 0))
  br label %sw.epilog

sw.bb.58:                                         ; preds = %if.end.55
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i32 0, i32 0))
  br label %sw.epilog

sw.bb.59:                                         ; preds = %if.end.55
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i32 0, i32 0))
  br label %sw.epilog

sw.bb.60:                                         ; preds = %if.end.55
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.16, i32 0, i32 0))
  br label %sw.epilog

sw.bb.61:                                         ; preds = %if.end.55
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i32 0, i32 0))
  br label %sw.epilog

sw.bb.62:                                         ; preds = %if.end.55
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i32 0, i32 0))
  br label %sw.epilog

sw.bb.63:                                         ; preds = %if.end.55
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i32 0, i32 0))
  br label %sw.epilog

sw.bb.64:                                         ; preds = %if.end.55
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i32 0, i32 0))
  br label %sw.epilog

sw.bb.65:                                         ; preds = %if.end.55
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.21, i32 0, i32 0))
  br label %sw.epilog

sw.bb.66:                                         ; preds = %if.end.55
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i32 0, i32 0))
  br label %sw.epilog

sw.bb.67:                                         ; preds = %if.end.55
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i32 0, i32 0))
  br label %sw.epilog

sw.bb.68:                                         ; preds = %if.end.55
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i32 0, i32 0))
  br label %sw.epilog

sw.bb.69:                                         ; preds = %if.end.55
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i32 0, i32 0))
  br label %sw.epilog

sw.bb.70:                                         ; preds = %if.end.55
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i32 0, i32 0))
  br label %sw.epilog

sw.bb.71:                                         ; preds = %if.end.55
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.27, i32 0, i32 0))
  br label %sw.epilog

sw.bb.72:                                         ; preds = %if.end.55
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.28, i32 0, i32 0))
  br label %sw.epilog

sw.bb.73:                                         ; preds = %if.end.55
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.29, i32 0, i32 0))
  br label %sw.epilog

sw.bb.74:                                         ; preds = %if.end.55
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.30, i32 0, i32 0))
  br label %sw.epilog

sw.bb.75:                                         ; preds = %if.end.55
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.31, i32 0, i32 0))
  br label %sw.epilog

sw.bb.76:                                         ; preds = %if.end.55
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i32 0, i32 0))
  br label %sw.epilog

sw.bb.77:                                         ; preds = %if.end.55
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.33, i32 0, i32 0))
  br label %sw.epilog

sw.bb.78:                                         ; preds = %if.end.55
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.34, i32 0, i32 0))
  br label %sw.epilog

sw.bb.79:                                         ; preds = %if.end.55
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.35, i32 0, i32 0))
  br label %sw.epilog

sw.bb.80:                                         ; preds = %if.end.55
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.36, i32 0, i32 0))
  br label %sw.epilog

sw.bb.81:                                         ; preds = %if.end.55
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.37, i32 0, i32 0))
  br label %sw.epilog

sw.bb.82:                                         ; preds = %if.end.55
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.38, i32 0, i32 0))
  br label %sw.epilog

sw.bb.83:                                         ; preds = %if.end.55
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.39, i32 0, i32 0))
  br label %sw.epilog

sw.bb.84:                                         ; preds = %if.end.55
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.40, i32 0, i32 0))
  br label %sw.epilog

sw.bb.85:                                         ; preds = %if.end.55
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.41, i32 0, i32 0))
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.55
  %Machine86 = getelementptr inbounds %struct.pe_image_file_hdr, %struct.pe_image_file_hdr* %file_hdr, i32 0, i32 1
  %25 = load i16, i16* %Machine86, align 2
  %conv87 = zext i16 %25 to i32
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.42, i32 0, i32 0), i32 %conv87)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.85, %sw.bb.84, %sw.bb.83, %sw.bb.82, %sw.bb.81, %sw.bb.80, %sw.bb.79, %sw.bb.78, %sw.bb.77, %sw.bb.76, %sw.bb.75, %sw.bb.74, %sw.bb.73, %sw.bb.72, %sw.bb.71, %sw.bb.70, %sw.bb.69, %sw.bb.68, %sw.bb.67, %sw.bb.66, %sw.bb.65, %sw.bb.64, %sw.bb.63, %sw.bb.62, %sw.bb.61, %sw.bb.60, %sw.bb.59, %sw.bb.58, %sw.bb.57, %sw.bb
  %NumberOfSections = getelementptr inbounds %struct.pe_image_file_hdr, %struct.pe_image_file_hdr* %file_hdr, i32 0, i32 2
  %26 = load i16, i16* %NumberOfSections, align 2
  store i16 %26, i16* %nsections, align 2
  %27 = load i16, i16* %nsections, align 2
  %conv88 = zext i16 %27 to i32
  %cmp89 = icmp slt i32 %conv88, 1
  br i1 %cmp89, label %if.then.94, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.epilog
  %28 = load i16, i16* %nsections, align 2
  %conv91 = zext i16 %28 to i32
  %cmp92 = icmp sgt i32 %conv91, 96
  br i1 %cmp92, label %if.then.94, label %if.end.110

if.then.94:                                       ; preds = %lor.lhs.false, %sw.epilog
  %29 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options95 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %29, i32 0, i32 5
  %30 = load i32, i32* %options95, align 4
  %and96 = and i32 %30, 64
  %tobool97 = icmp ne i32 %and96, 0
  br i1 %tobool97, label %if.then.98, label %if.end.104

if.then.98:                                       ; preds = %if.then.94
  %31 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname99 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %31, i32 0, i32 0
  %32 = load i8**, i8*** %virname99, align 8
  %tobool100 = icmp ne i8** %32, null
  br i1 %tobool100, label %if.then.101, label %if.end.103

if.then.101:                                      ; preds = %if.then.98
  %33 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname102 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %33, i32 0, i32 0
  %34 = load i8**, i8*** %virname102, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i8** %34, align 8
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.101, %if.then.98
  store i32 1, i32* %retval
  br label %return

if.end.104:                                       ; preds = %if.then.94
  %35 = load i16, i16* %nsections, align 2
  %tobool105 = icmp ne i16 %35, 0
  br i1 %tobool105, label %if.then.106, label %if.else.108

if.then.106:                                      ; preds = %if.end.104
  %36 = load i16, i16* %nsections, align 2
  %conv107 = zext i16 %36 to i32
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.43, i32 0, i32 0), i32 %conv107)
  br label %if.end.109

if.else.108:                                      ; preds = %if.end.104
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.44, i32 0, i32 0))
  br label %if.end.109

if.end.109:                                       ; preds = %if.else.108, %if.then.106
  store i32 0, i32* %retval
  br label %return

if.end.110:                                       ; preds = %lor.lhs.false
  %37 = load i16, i16* %nsections, align 2
  %conv111 = zext i16 %37 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.45, i32 0, i32 0), i32 %conv111)
  %TimeDateStamp = getelementptr inbounds %struct.pe_image_file_hdr, %struct.pe_image_file_hdr* %file_hdr, i32 0, i32 3
  %38 = load i32, i32* %TimeDateStamp, align 4
  %conv112 = zext i32 %38 to i64
  store i64 %conv112, i64* %timestamp, align 8
  %call113 = call i8* @ctime(i64* %timestamp) #3
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.46, i32 0, i32 0), i8* %call113)
  %SizeOfOptionalHeader = getelementptr inbounds %struct.pe_image_file_hdr, %struct.pe_image_file_hdr* %file_hdr, i32 0, i32 6
  %39 = load i16, i16* %SizeOfOptionalHeader, align 2
  %conv114 = zext i16 %39 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.47, i32 0, i32 0), i32 %conv114)
  %SizeOfOptionalHeader115 = getelementptr inbounds %struct.pe_image_file_hdr, %struct.pe_image_file_hdr* %file_hdr, i32 0, i32 6
  %40 = load i16, i16* %SizeOfOptionalHeader115, align 2
  %conv116 = zext i16 %40 to i64
  %cmp117 = icmp ult i64 %conv116, 224
  br i1 %cmp117, label %if.then.119, label %if.end.130

if.then.119:                                      ; preds = %if.end.110
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.48, i32 0, i32 0))
  %41 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options120 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %41, i32 0, i32 5
  %42 = load i32, i32* %options120, align 4
  %and121 = and i32 %42, 64
  %tobool122 = icmp ne i32 %and121, 0
  br i1 %tobool122, label %if.then.123, label %if.end.129

if.then.123:                                      ; preds = %if.then.119
  %43 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname124 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %43, i32 0, i32 0
  %44 = load i8**, i8*** %virname124, align 8
  %tobool125 = icmp ne i8** %44, null
  br i1 %tobool125, label %if.then.126, label %if.end.128

if.then.126:                                      ; preds = %if.then.123
  %45 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname127 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %45, i32 0, i32 0
  %46 = load i8**, i8*** %virname127, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i8** %46, align 8
  br label %if.end.128

if.end.128:                                       ; preds = %if.then.126, %if.then.123
  store i32 1, i32* %retval
  br label %return

if.end.129:                                       ; preds = %if.then.119
  store i32 0, i32* %retval
  br label %return

if.end.130:                                       ; preds = %if.end.110
  %47 = load i32, i32* %desc.addr, align 4
  %opt32 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr32*
  %48 = bitcast %struct.pe_image_optional_hdr32* %opt32 to i8*
  %call131 = call i32 @cli_readn(i32 %47, i8* %48, i32 224)
  %conv132 = sext i32 %call131 to i64
  %cmp133 = icmp ne i64 %conv132, 224
  br i1 %cmp133, label %if.then.135, label %if.end.146

if.then.135:                                      ; preds = %if.end.130
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.49, i32 0, i32 0))
  %49 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options136 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %49, i32 0, i32 5
  %50 = load i32, i32* %options136, align 4
  %and137 = and i32 %50, 64
  %tobool138 = icmp ne i32 %and137, 0
  br i1 %tobool138, label %if.then.139, label %if.end.145

if.then.139:                                      ; preds = %if.then.135
  %51 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname140 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %51, i32 0, i32 0
  %52 = load i8**, i8*** %virname140, align 8
  %tobool141 = icmp ne i8** %52, null
  br i1 %tobool141, label %if.then.142, label %if.end.144

if.then.142:                                      ; preds = %if.then.139
  %53 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname143 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %53, i32 0, i32 0
  %54 = load i8**, i8*** %virname143, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i8** %54, align 8
  br label %if.end.144

if.end.144:                                       ; preds = %if.then.142, %if.then.139
  store i32 1, i32* %retval
  br label %return

if.end.145:                                       ; preds = %if.then.135
  store i32 0, i32* %retval
  br label %return

if.end.146:                                       ; preds = %if.end.130
  %opt64 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr64*
  %Magic147 = getelementptr inbounds %struct.pe_image_optional_hdr64, %struct.pe_image_optional_hdr64* %opt64, i32 0, i32 0
  %55 = load i16, i16* %Magic147, align 2
  %conv148 = zext i16 %55 to i32
  %cmp149 = icmp eq i32 %conv148, 523
  br i1 %cmp149, label %if.then.151, label %if.else.168

if.then.151:                                      ; preds = %if.end.146
  %SizeOfOptionalHeader152 = getelementptr inbounds %struct.pe_image_file_hdr, %struct.pe_image_file_hdr* %file_hdr, i32 0, i32 6
  %56 = load i16, i16* %SizeOfOptionalHeader152, align 2
  %conv153 = zext i16 %56 to i64
  %cmp154 = icmp ne i64 %conv153, 240
  br i1 %cmp154, label %if.then.156, label %if.end.167

if.then.156:                                      ; preds = %if.then.151
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.50, i32 0, i32 0))
  %57 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options157 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %57, i32 0, i32 5
  %58 = load i32, i32* %options157, align 4
  %and158 = and i32 %58, 64
  %tobool159 = icmp ne i32 %and158, 0
  br i1 %tobool159, label %if.then.160, label %if.end.166

if.then.160:                                      ; preds = %if.then.156
  %59 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname161 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %59, i32 0, i32 0
  %60 = load i8**, i8*** %virname161, align 8
  %tobool162 = icmp ne i8** %60, null
  br i1 %tobool162, label %if.then.163, label %if.end.165

if.then.163:                                      ; preds = %if.then.160
  %61 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname164 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %61, i32 0, i32 0
  %62 = load i8**, i8*** %virname164, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i8** %62, align 8
  br label %if.end.165

if.end.165:                                       ; preds = %if.then.163, %if.then.160
  store i32 1, i32* %retval
  br label %return

if.end.166:                                       ; preds = %if.then.156
  store i32 0, i32* %retval
  br label %return

if.end.167:                                       ; preds = %if.then.151
  store i32 1, i32* %pe_plus, align 4
  br label %if.end.186

if.else.168:                                      ; preds = %if.end.146
  %opt32169 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr32*
  %Magic170 = getelementptr inbounds %struct.pe_image_optional_hdr32, %struct.pe_image_optional_hdr32* %opt32169, i32 0, i32 0
  %63 = load i16, i16* %Magic170, align 2
  %conv171 = zext i16 %63 to i32
  %cmp172 = icmp ne i32 %conv171, 267
  br i1 %cmp172, label %if.then.174, label %if.end.185

if.then.174:                                      ; preds = %if.else.168
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.51, i32 0, i32 0))
  %64 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options175 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %64, i32 0, i32 5
  %65 = load i32, i32* %options175, align 4
  %and176 = and i32 %65, 64
  %tobool177 = icmp ne i32 %and176, 0
  br i1 %tobool177, label %if.then.178, label %if.end.184

if.then.178:                                      ; preds = %if.then.174
  %66 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname179 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %66, i32 0, i32 0
  %67 = load i8**, i8*** %virname179, align 8
  %tobool180 = icmp ne i8** %67, null
  br i1 %tobool180, label %if.then.181, label %if.end.183

if.then.181:                                      ; preds = %if.then.178
  %68 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname182 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %68, i32 0, i32 0
  %69 = load i8**, i8*** %virname182, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i8** %69, align 8
  br label %if.end.183

if.end.183:                                       ; preds = %if.then.181, %if.then.178
  store i32 1, i32* %retval
  br label %return

if.end.184:                                       ; preds = %if.then.174
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.52, i32 0, i32 0))
  br label %if.end.185

if.end.185:                                       ; preds = %if.end.184, %if.else.168
  br label %if.end.186

if.end.186:                                       ; preds = %if.end.185, %if.end.167
  %70 = load i32, i32* %pe_plus, align 4
  %tobool187 = icmp ne i32 %70, 0
  br i1 %tobool187, label %if.else.224, label %if.then.188

if.then.188:                                      ; preds = %if.end.186
  %SizeOfOptionalHeader189 = getelementptr inbounds %struct.pe_image_file_hdr, %struct.pe_image_file_hdr* %file_hdr, i32 0, i32 6
  %71 = load i16, i16* %SizeOfOptionalHeader189, align 2
  %conv190 = zext i16 %71 to i64
  %cmp191 = icmp ne i64 %conv190, 224
  br i1 %cmp191, label %if.then.193, label %if.end.197

if.then.193:                                      ; preds = %if.then.188
  %72 = load i32, i32* %desc.addr, align 4
  %SizeOfOptionalHeader194 = getelementptr inbounds %struct.pe_image_file_hdr, %struct.pe_image_file_hdr* %file_hdr, i32 0, i32 6
  %73 = load i16, i16* %SizeOfOptionalHeader194, align 2
  %conv195 = zext i16 %73 to i64
  %sub = sub i64 %conv195, 224
  %call196 = call i64 @lseek(i32 %72, i64 %sub, i32 1) #3
  br label %if.end.197

if.end.197:                                       ; preds = %if.then.193, %if.then.188
  %74 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %dconf = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %74, i32 0, i32 9
  %75 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf, align 8
  %pe = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %75, i32 0, i32 0
  %76 = load i32, i32* %pe, align 4
  %and198 = and i32 %76, 16384
  %tobool199 = icmp ne i32 %and198, 0
  br i1 %tobool199, label %if.then.200, label %if.end.205

if.then.200:                                      ; preds = %if.end.197
  %SizeOfOptionalHeader201 = getelementptr inbounds %struct.pe_image_file_hdr, %struct.pe_image_file_hdr* %file_hdr, i32 0, i32 6
  %77 = load i16, i16* %SizeOfOptionalHeader201, align 2
  %conv202 = zext i16 %77 to i32
  %cmp203 = icmp eq i32 %conv202, 328
  %conv204 = zext i1 %cmp203 to i32
  store i32 %conv204, i32* %upack, align 4
  br label %if.end.205

if.end.205:                                       ; preds = %if.then.200, %if.end.197
  %opt32206 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr32*
  %AddressOfEntryPoint = getelementptr inbounds %struct.pe_image_optional_hdr32, %struct.pe_image_optional_hdr32* %opt32206, i32 0, i32 6
  %78 = load i32, i32* %AddressOfEntryPoint, align 4
  store i32 %78, i32* %vep, align 4
  %opt32207 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr32*
  %SizeOfHeaders = getelementptr inbounds %struct.pe_image_optional_hdr32, %struct.pe_image_optional_hdr32* %opt32207, i32 0, i32 20
  %79 = load i32, i32* %SizeOfHeaders, align 4
  store i32 %79, i32* %hdr_size, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.53, i32 0, i32 0))
  %opt32208 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr32*
  %MajorLinkerVersion = getelementptr inbounds %struct.pe_image_optional_hdr32, %struct.pe_image_optional_hdr32* %opt32208, i32 0, i32 1
  %80 = load i8, i8* %MajorLinkerVersion, align 1
  %conv209 = zext i8 %80 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.54, i32 0, i32 0), i32 %conv209)
  %opt32210 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr32*
  %MinorLinkerVersion = getelementptr inbounds %struct.pe_image_optional_hdr32, %struct.pe_image_optional_hdr32* %opt32210, i32 0, i32 2
  %81 = load i8, i8* %MinorLinkerVersion, align 1
  %conv211 = zext i8 %81 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.55, i32 0, i32 0), i32 %conv211)
  %opt32212 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr32*
  %SizeOfCode = getelementptr inbounds %struct.pe_image_optional_hdr32, %struct.pe_image_optional_hdr32* %opt32212, i32 0, i32 3
  %82 = load i32, i32* %SizeOfCode, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.56, i32 0, i32 0), i32 %82)
  %opt32213 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr32*
  %SizeOfInitializedData = getelementptr inbounds %struct.pe_image_optional_hdr32, %struct.pe_image_optional_hdr32* %opt32213, i32 0, i32 4
  %83 = load i32, i32* %SizeOfInitializedData, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.57, i32 0, i32 0), i32 %83)
  %opt32214 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr32*
  %SizeOfUninitializedData = getelementptr inbounds %struct.pe_image_optional_hdr32, %struct.pe_image_optional_hdr32* %opt32214, i32 0, i32 5
  %84 = load i32, i32* %SizeOfUninitializedData, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.58, i32 0, i32 0), i32 %84)
  %85 = load i32, i32* %vep, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.59, i32 0, i32 0), i32 %85)
  %opt32215 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr32*
  %BaseOfCode = getelementptr inbounds %struct.pe_image_optional_hdr32, %struct.pe_image_optional_hdr32* %opt32215, i32 0, i32 7
  %86 = load i32, i32* %BaseOfCode, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.60, i32 0, i32 0), i32 %86)
  %opt32216 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr32*
  %SectionAlignment = getelementptr inbounds %struct.pe_image_optional_hdr32, %struct.pe_image_optional_hdr32* %opt32216, i32 0, i32 10
  %87 = load i32, i32* %SectionAlignment, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.61, i32 0, i32 0), i32 %87)
  %opt32217 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr32*
  %FileAlignment = getelementptr inbounds %struct.pe_image_optional_hdr32, %struct.pe_image_optional_hdr32* %opt32217, i32 0, i32 11
  %88 = load i32, i32* %FileAlignment, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.62, i32 0, i32 0), i32 %88)
  %opt32218 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr32*
  %MajorSubsystemVersion = getelementptr inbounds %struct.pe_image_optional_hdr32, %struct.pe_image_optional_hdr32* %opt32218, i32 0, i32 16
  %89 = load i16, i16* %MajorSubsystemVersion, align 2
  %conv219 = zext i16 %89 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.63, i32 0, i32 0), i32 %conv219)
  %opt32220 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr32*
  %MinorSubsystemVersion = getelementptr inbounds %struct.pe_image_optional_hdr32, %struct.pe_image_optional_hdr32* %opt32220, i32 0, i32 17
  %90 = load i16, i16* %MinorSubsystemVersion, align 2
  %conv221 = zext i16 %90 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.64, i32 0, i32 0), i32 %conv221)
  %opt32222 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr32*
  %SizeOfImage = getelementptr inbounds %struct.pe_image_optional_hdr32, %struct.pe_image_optional_hdr32* %opt32222, i32 0, i32 19
  %91 = load i32, i32* %SizeOfImage, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.65, i32 0, i32 0), i32 %91)
  %92 = load i32, i32* %hdr_size, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.66, i32 0, i32 0), i32 %92)
  %opt32223 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr32*
  %NumberOfRvaAndSizes = getelementptr inbounds %struct.pe_image_optional_hdr32, %struct.pe_image_optional_hdr32* %opt32223, i32 0, i32 29
  %93 = load i32, i32* %NumberOfRvaAndSizes, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.67, i32 0, i32 0), i32 %93)
  br label %if.end.274

if.else.224:                                      ; preds = %if.end.186
  %94 = load i32, i32* %desc.addr, align 4
  %opt32225 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr32*
  %add.ptr = getelementptr inbounds %struct.pe_image_optional_hdr32, %struct.pe_image_optional_hdr32* %opt32225, i64 1
  %95 = bitcast %struct.pe_image_optional_hdr32* %add.ptr to i8*
  %call226 = call i32 @cli_readn(i32 %94, i8* %95, i32 16)
  %conv227 = sext i32 %call226 to i64
  %cmp228 = icmp ne i64 %conv227, 16
  br i1 %cmp228, label %if.then.230, label %if.end.241

if.then.230:                                      ; preds = %if.else.224
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.49, i32 0, i32 0))
  %96 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options231 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %96, i32 0, i32 5
  %97 = load i32, i32* %options231, align 4
  %and232 = and i32 %97, 64
  %tobool233 = icmp ne i32 %and232, 0
  br i1 %tobool233, label %if.then.234, label %if.end.240

if.then.234:                                      ; preds = %if.then.230
  %98 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname235 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %98, i32 0, i32 0
  %99 = load i8**, i8*** %virname235, align 8
  %tobool236 = icmp ne i8** %99, null
  br i1 %tobool236, label %if.then.237, label %if.end.239

if.then.237:                                      ; preds = %if.then.234
  %100 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname238 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %100, i32 0, i32 0
  %101 = load i8**, i8*** %virname238, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i8** %101, align 8
  br label %if.end.239

if.end.239:                                       ; preds = %if.then.237, %if.then.234
  store i32 1, i32* %retval
  br label %return

if.end.240:                                       ; preds = %if.then.230
  store i32 0, i32* %retval
  br label %return

if.end.241:                                       ; preds = %if.else.224
  %opt64242 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr64*
  %AddressOfEntryPoint243 = getelementptr inbounds %struct.pe_image_optional_hdr64, %struct.pe_image_optional_hdr64* %opt64242, i32 0, i32 6
  %102 = load i32, i32* %AddressOfEntryPoint243, align 4
  store i32 %102, i32* %vep, align 4
  %opt64244 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr64*
  %SizeOfHeaders245 = getelementptr inbounds %struct.pe_image_optional_hdr64, %struct.pe_image_optional_hdr64* %opt64244, i32 0, i32 19
  %103 = load i32, i32* %SizeOfHeaders245, align 4
  store i32 %103, i32* %hdr_size, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.68, i32 0, i32 0))
  %opt64246 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr64*
  %MajorLinkerVersion247 = getelementptr inbounds %struct.pe_image_optional_hdr64, %struct.pe_image_optional_hdr64* %opt64246, i32 0, i32 1
  %104 = load i8, i8* %MajorLinkerVersion247, align 1
  %conv248 = zext i8 %104 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.54, i32 0, i32 0), i32 %conv248)
  %opt64249 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr64*
  %MinorLinkerVersion250 = getelementptr inbounds %struct.pe_image_optional_hdr64, %struct.pe_image_optional_hdr64* %opt64249, i32 0, i32 2
  %105 = load i8, i8* %MinorLinkerVersion250, align 1
  %conv251 = zext i8 %105 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.55, i32 0, i32 0), i32 %conv251)
  %opt64252 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr64*
  %SizeOfCode253 = getelementptr inbounds %struct.pe_image_optional_hdr64, %struct.pe_image_optional_hdr64* %opt64252, i32 0, i32 3
  %106 = load i32, i32* %SizeOfCode253, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.56, i32 0, i32 0), i32 %106)
  %opt64254 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr64*
  %SizeOfInitializedData255 = getelementptr inbounds %struct.pe_image_optional_hdr64, %struct.pe_image_optional_hdr64* %opt64254, i32 0, i32 4
  %107 = load i32, i32* %SizeOfInitializedData255, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.57, i32 0, i32 0), i32 %107)
  %opt64256 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr64*
  %SizeOfUninitializedData257 = getelementptr inbounds %struct.pe_image_optional_hdr64, %struct.pe_image_optional_hdr64* %opt64256, i32 0, i32 5
  %108 = load i32, i32* %SizeOfUninitializedData257, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.58, i32 0, i32 0), i32 %108)
  %109 = load i32, i32* %vep, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.59, i32 0, i32 0), i32 %109)
  %opt64258 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr64*
  %BaseOfCode259 = getelementptr inbounds %struct.pe_image_optional_hdr64, %struct.pe_image_optional_hdr64* %opt64258, i32 0, i32 7
  %110 = load i32, i32* %BaseOfCode259, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.60, i32 0, i32 0), i32 %110)
  %opt64260 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr64*
  %SectionAlignment261 = getelementptr inbounds %struct.pe_image_optional_hdr64, %struct.pe_image_optional_hdr64* %opt64260, i32 0, i32 9
  %111 = load i32, i32* %SectionAlignment261, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.61, i32 0, i32 0), i32 %111)
  %opt64262 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr64*
  %FileAlignment263 = getelementptr inbounds %struct.pe_image_optional_hdr64, %struct.pe_image_optional_hdr64* %opt64262, i32 0, i32 10
  %112 = load i32, i32* %FileAlignment263, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.62, i32 0, i32 0), i32 %112)
  %opt64264 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr64*
  %MajorSubsystemVersion265 = getelementptr inbounds %struct.pe_image_optional_hdr64, %struct.pe_image_optional_hdr64* %opt64264, i32 0, i32 15
  %113 = load i16, i16* %MajorSubsystemVersion265, align 2
  %conv266 = zext i16 %113 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.63, i32 0, i32 0), i32 %conv266)
  %opt64267 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr64*
  %MinorSubsystemVersion268 = getelementptr inbounds %struct.pe_image_optional_hdr64, %struct.pe_image_optional_hdr64* %opt64267, i32 0, i32 16
  %114 = load i16, i16* %MinorSubsystemVersion268, align 2
  %conv269 = zext i16 %114 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.64, i32 0, i32 0), i32 %conv269)
  %opt64270 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr64*
  %SizeOfImage271 = getelementptr inbounds %struct.pe_image_optional_hdr64, %struct.pe_image_optional_hdr64* %opt64270, i32 0, i32 18
  %115 = load i32, i32* %SizeOfImage271, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.65, i32 0, i32 0), i32 %115)
  %116 = load i32, i32* %hdr_size, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.66, i32 0, i32 0), i32 %116)
  %opt64272 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr64*
  %NumberOfRvaAndSizes273 = getelementptr inbounds %struct.pe_image_optional_hdr64, %struct.pe_image_optional_hdr64* %opt64272, i32 0, i32 28
  %117 = load i32, i32* %NumberOfRvaAndSizes273, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.67, i32 0, i32 0), i32 %117)
  br label %if.end.274

if.end.274:                                       ; preds = %if.end.241, %if.end.205
  %118 = load i32, i32* %pe_plus, align 4
  %tobool275 = icmp ne i32 %118, 0
  br i1 %tobool275, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.274
  %opt64276 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr64*
  %Subsystem = getelementptr inbounds %struct.pe_image_optional_hdr64, %struct.pe_image_optional_hdr64* %opt64276, i32 0, i32 21
  %119 = load i16, i16* %Subsystem, align 2
  %conv277 = zext i16 %119 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.end.274
  %opt32278 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr32*
  %Subsystem279 = getelementptr inbounds %struct.pe_image_optional_hdr32, %struct.pe_image_optional_hdr32* %opt32278, i32 0, i32 22
  %120 = load i16, i16* %Subsystem279, align 2
  %conv280 = zext i16 %120 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv277, %cond.true ], [ %conv280, %cond.false ]
  switch i32 %cond, label %sw.default.292 [
    i32 0, label %sw.bb.281
    i32 1, label %sw.bb.282
    i32 2, label %sw.bb.283
    i32 3, label %sw.bb.284
    i32 5, label %sw.bb.285
    i32 7, label %sw.bb.286
    i32 8, label %sw.bb.287
    i32 9, label %sw.bb.288
    i32 10, label %sw.bb.289
    i32 11, label %sw.bb.290
    i32 12, label %sw.bb.291
  ]

sw.bb.281:                                        ; preds = %cond.end
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.69, i32 0, i32 0))
  br label %sw.epilog.304

sw.bb.282:                                        ; preds = %cond.end
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.70, i32 0, i32 0))
  store i32 1, i32* %native, align 4
  br label %sw.epilog.304

sw.bb.283:                                        ; preds = %cond.end
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.71, i32 0, i32 0))
  br label %sw.epilog.304

sw.bb.284:                                        ; preds = %cond.end
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.72, i32 0, i32 0))
  br label %sw.epilog.304

sw.bb.285:                                        ; preds = %cond.end
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.73, i32 0, i32 0))
  br label %sw.epilog.304

sw.bb.286:                                        ; preds = %cond.end
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.74, i32 0, i32 0))
  br label %sw.epilog.304

sw.bb.287:                                        ; preds = %cond.end
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.75, i32 0, i32 0))
  br label %sw.epilog.304

sw.bb.288:                                        ; preds = %cond.end
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.76, i32 0, i32 0))
  br label %sw.epilog.304

sw.bb.289:                                        ; preds = %cond.end
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.77, i32 0, i32 0))
  br label %sw.epilog.304

sw.bb.290:                                        ; preds = %cond.end
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.78, i32 0, i32 0))
  br label %sw.epilog.304

sw.bb.291:                                        ; preds = %cond.end
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.79, i32 0, i32 0))
  br label %sw.epilog.304

sw.default.292:                                   ; preds = %cond.end
  %121 = load i32, i32* %pe_plus, align 4
  %tobool293 = icmp ne i32 %121, 0
  br i1 %tobool293, label %cond.true.294, label %cond.false.298

cond.true.294:                                    ; preds = %sw.default.292
  %opt64295 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr64*
  %Subsystem296 = getelementptr inbounds %struct.pe_image_optional_hdr64, %struct.pe_image_optional_hdr64* %opt64295, i32 0, i32 21
  %122 = load i16, i16* %Subsystem296, align 2
  %conv297 = zext i16 %122 to i32
  br label %cond.end.302

cond.false.298:                                   ; preds = %sw.default.292
  %opt32299 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr32*
  %Subsystem300 = getelementptr inbounds %struct.pe_image_optional_hdr32, %struct.pe_image_optional_hdr32* %opt32299, i32 0, i32 22
  %123 = load i16, i16* %Subsystem300, align 2
  %conv301 = zext i16 %123 to i32
  br label %cond.end.302

cond.end.302:                                     ; preds = %cond.false.298, %cond.true.294
  %cond303 = phi i32 [ %conv297, %cond.true.294 ], [ %conv301, %cond.false.298 ]
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.80, i32 0, i32 0), i32 %cond303)
  br label %sw.epilog.304

sw.epilog.304:                                    ; preds = %cond.end.302, %sw.bb.291, %sw.bb.290, %sw.bb.289, %sw.bb.288, %sw.bb.287, %sw.bb.286, %sw.bb.285, %sw.bb.284, %sw.bb.283, %sw.bb.282, %sw.bb.281
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.81, i32 0, i32 0))
  %124 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options305 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %124, i32 0, i32 5
  %125 = load i32, i32* %options305, align 4
  %and306 = and i32 %125, 64
  %tobool307 = icmp ne i32 %and306, 0
  br i1 %tobool307, label %land.lhs.true.308, label %if.end.337

land.lhs.true.308:                                ; preds = %sw.epilog.304
  %126 = load i32, i32* %native, align 4
  %tobool309 = icmp ne i32 %126, 0
  br i1 %tobool309, label %if.end.337, label %land.lhs.true.310

land.lhs.true.310:                                ; preds = %land.lhs.true.308
  %127 = load i32, i32* %pe_plus, align 4
  %tobool311 = icmp ne i32 %127, 0
  br i1 %tobool311, label %cond.true.312, label %cond.false.316

cond.true.312:                                    ; preds = %land.lhs.true.310
  %opt64313 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr64*
  %SectionAlignment314 = getelementptr inbounds %struct.pe_image_optional_hdr64, %struct.pe_image_optional_hdr64* %opt64313, i32 0, i32 9
  %128 = load i32, i32* %SectionAlignment314, align 4
  %tobool315 = icmp ne i32 %128, 0
  br i1 %tobool315, label %lor.lhs.false.320, label %if.then.331

cond.false.316:                                   ; preds = %land.lhs.true.310
  %opt32317 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr32*
  %SectionAlignment318 = getelementptr inbounds %struct.pe_image_optional_hdr32, %struct.pe_image_optional_hdr32* %opt32317, i32 0, i32 10
  %129 = load i32, i32* %SectionAlignment318, align 4
  %tobool319 = icmp ne i32 %129, 0
  br i1 %tobool319, label %lor.lhs.false.320, label %if.then.331

lor.lhs.false.320:                                ; preds = %cond.false.316, %cond.true.312
  %130 = load i32, i32* %pe_plus, align 4
  %tobool321 = icmp ne i32 %130, 0
  br i1 %tobool321, label %cond.true.322, label %cond.false.325

cond.true.322:                                    ; preds = %lor.lhs.false.320
  %opt64323 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr64*
  %SectionAlignment324 = getelementptr inbounds %struct.pe_image_optional_hdr64, %struct.pe_image_optional_hdr64* %opt64323, i32 0, i32 9
  %131 = load i32, i32* %SectionAlignment324, align 4
  br label %cond.end.328

cond.false.325:                                   ; preds = %lor.lhs.false.320
  %opt32326 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr32*
  %SectionAlignment327 = getelementptr inbounds %struct.pe_image_optional_hdr32, %struct.pe_image_optional_hdr32* %opt32326, i32 0, i32 10
  %132 = load i32, i32* %SectionAlignment327, align 4
  br label %cond.end.328

cond.end.328:                                     ; preds = %cond.false.325, %cond.true.322
  %cond329 = phi i32 [ %131, %cond.true.322 ], [ %132, %cond.false.325 ]
  %rem = urem i32 %cond329, 4096
  %tobool330 = icmp ne i32 %rem, 0
  br i1 %tobool330, label %if.then.331, label %if.end.337

if.then.331:                                      ; preds = %cond.end.328, %cond.false.316, %cond.true.312
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.82, i32 0, i32 0))
  %133 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname332 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %133, i32 0, i32 0
  %134 = load i8**, i8*** %virname332, align 8
  %tobool333 = icmp ne i8** %134, null
  br i1 %tobool333, label %if.then.334, label %if.end.336

if.then.334:                                      ; preds = %if.then.331
  %135 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname335 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %135, i32 0, i32 0
  %136 = load i8**, i8*** %virname335, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i8** %136, align 8
  br label %if.end.336

if.end.336:                                       ; preds = %if.then.334, %if.then.331
  store i32 1, i32* %retval
  br label %return

if.end.337:                                       ; preds = %cond.end.328, %land.lhs.true.308, %sw.epilog.304
  %137 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options338 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %137, i32 0, i32 5
  %138 = load i32, i32* %options338, align 4
  %and339 = and i32 %138, 64
  %tobool340 = icmp ne i32 %and339, 0
  br i1 %tobool340, label %land.lhs.true.341, label %if.end.371

land.lhs.true.341:                                ; preds = %if.end.337
  %139 = load i32, i32* %native, align 4
  %tobool342 = icmp ne i32 %139, 0
  br i1 %tobool342, label %if.end.371, label %land.lhs.true.343

land.lhs.true.343:                                ; preds = %land.lhs.true.341
  %140 = load i32, i32* %pe_plus, align 4
  %tobool344 = icmp ne i32 %140, 0
  br i1 %tobool344, label %cond.true.345, label %cond.false.349

cond.true.345:                                    ; preds = %land.lhs.true.343
  %opt64346 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr64*
  %FileAlignment347 = getelementptr inbounds %struct.pe_image_optional_hdr64, %struct.pe_image_optional_hdr64* %opt64346, i32 0, i32 10
  %141 = load i32, i32* %FileAlignment347, align 4
  %tobool348 = icmp ne i32 %141, 0
  br i1 %tobool348, label %lor.lhs.false.353, label %if.then.365

cond.false.349:                                   ; preds = %land.lhs.true.343
  %opt32350 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr32*
  %FileAlignment351 = getelementptr inbounds %struct.pe_image_optional_hdr32, %struct.pe_image_optional_hdr32* %opt32350, i32 0, i32 11
  %142 = load i32, i32* %FileAlignment351, align 4
  %tobool352 = icmp ne i32 %142, 0
  br i1 %tobool352, label %lor.lhs.false.353, label %if.then.365

lor.lhs.false.353:                                ; preds = %cond.false.349, %cond.true.345
  %143 = load i32, i32* %pe_plus, align 4
  %tobool354 = icmp ne i32 %143, 0
  br i1 %tobool354, label %cond.true.355, label %cond.false.358

cond.true.355:                                    ; preds = %lor.lhs.false.353
  %opt64356 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr64*
  %FileAlignment357 = getelementptr inbounds %struct.pe_image_optional_hdr64, %struct.pe_image_optional_hdr64* %opt64356, i32 0, i32 10
  %144 = load i32, i32* %FileAlignment357, align 4
  br label %cond.end.361

cond.false.358:                                   ; preds = %lor.lhs.false.353
  %opt32359 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr32*
  %FileAlignment360 = getelementptr inbounds %struct.pe_image_optional_hdr32, %struct.pe_image_optional_hdr32* %opt32359, i32 0, i32 11
  %145 = load i32, i32* %FileAlignment360, align 4
  br label %cond.end.361

cond.end.361:                                     ; preds = %cond.false.358, %cond.true.355
  %cond362 = phi i32 [ %144, %cond.true.355 ], [ %145, %cond.false.358 ]
  %rem363 = urem i32 %cond362, 512
  %tobool364 = icmp ne i32 %rem363, 0
  br i1 %tobool364, label %if.then.365, label %if.end.371

if.then.365:                                      ; preds = %cond.end.361, %cond.false.349, %cond.true.345
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.83, i32 0, i32 0))
  %146 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname366 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %146, i32 0, i32 0
  %147 = load i8**, i8*** %virname366, align 8
  %tobool367 = icmp ne i8** %147, null
  br i1 %tobool367, label %if.then.368, label %if.end.370

if.then.368:                                      ; preds = %if.then.365
  %148 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname369 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %148, i32 0, i32 0
  %149 = load i8**, i8*** %virname369, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i8** %149, align 8
  br label %if.end.370

if.end.370:                                       ; preds = %if.then.368, %if.then.365
  store i32 1, i32* %retval
  br label %return

if.end.371:                                       ; preds = %cond.end.361, %land.lhs.true.341, %if.end.337
  %150 = load i32, i32* %desc.addr, align 4
  %call372 = call i32 @fstat(i32 %150, %struct.stat* %sb) #3
  %cmp373 = icmp eq i32 %call372, -1
  br i1 %cmp373, label %if.then.375, label %if.end.376

if.then.375:                                      ; preds = %if.end.371
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.84, i32 0, i32 0))
  store i32 -123, i32* %retval
  br label %return

if.end.376:                                       ; preds = %if.end.371
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %sb, i32 0, i32 8
  %151 = load i64, i64* %st_size, align 8
  store i64 %151, i64* %fsize, align 8
  %152 = load i16, i16* %nsections, align 2
  %conv377 = zext i16 %152 to i64
  %call378 = call i8* @cli_calloc(i64 %conv377, i64 40)
  %153 = bitcast i8* %call378 to %struct.pe_image_section_hdr*
  store %struct.pe_image_section_hdr* %153, %struct.pe_image_section_hdr** %section_hdr, align 8
  %154 = load %struct.pe_image_section_hdr*, %struct.pe_image_section_hdr** %section_hdr, align 8
  %tobool379 = icmp ne %struct.pe_image_section_hdr* %154, null
  br i1 %tobool379, label %if.end.381, label %if.then.380

if.then.380:                                      ; preds = %if.end.376
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.85, i32 0, i32 0))
  store i32 -114, i32* %retval
  br label %return

if.end.381:                                       ; preds = %if.end.376
  %155 = load i16, i16* %nsections, align 2
  %conv382 = zext i16 %155 to i64
  %call383 = call i8* @cli_calloc(i64 %conv382, i64 36)
  %156 = bitcast i8* %call383 to %struct.cli_exe_section*
  store %struct.cli_exe_section* %156, %struct.cli_exe_section** %exe_sections, align 8
  %157 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %tobool384 = icmp ne %struct.cli_exe_section* %157, null
  br i1 %tobool384, label %if.end.386, label %if.then.385

if.then.385:                                      ; preds = %if.end.381
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.85, i32 0, i32 0))
  %158 = load %struct.pe_image_section_hdr*, %struct.pe_image_section_hdr** %section_hdr, align 8
  %159 = bitcast %struct.pe_image_section_hdr* %158 to i8*
  call void @free(i8* %159) #3
  store i32 -114, i32* %retval
  br label %return

if.end.386:                                       ; preds = %if.end.381
  %160 = load i32, i32* %pe_plus, align 4
  %tobool387 = icmp ne i32 %160, 0
  br i1 %tobool387, label %cond.true.388, label %cond.false.391

cond.true.388:                                    ; preds = %if.end.386
  %opt64389 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr64*
  %SectionAlignment390 = getelementptr inbounds %struct.pe_image_optional_hdr64, %struct.pe_image_optional_hdr64* %opt64389, i32 0, i32 9
  %161 = load i32, i32* %SectionAlignment390, align 4
  br label %cond.end.394

cond.false.391:                                   ; preds = %if.end.386
  %opt32392 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr32*
  %SectionAlignment393 = getelementptr inbounds %struct.pe_image_optional_hdr32, %struct.pe_image_optional_hdr32* %opt32392, i32 0, i32 10
  %162 = load i32, i32* %SectionAlignment393, align 4
  br label %cond.end.394

cond.end.394:                                     ; preds = %cond.false.391, %cond.true.388
  %cond395 = phi i32 [ %161, %cond.true.388 ], [ %162, %cond.false.391 ]
  store i32 %cond395, i32* %valign, align 4
  %163 = load i32, i32* %pe_plus, align 4
  %tobool396 = icmp ne i32 %163, 0
  br i1 %tobool396, label %cond.true.397, label %cond.false.400

cond.true.397:                                    ; preds = %cond.end.394
  %opt64398 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr64*
  %FileAlignment399 = getelementptr inbounds %struct.pe_image_optional_hdr64, %struct.pe_image_optional_hdr64* %opt64398, i32 0, i32 10
  %164 = load i32, i32* %FileAlignment399, align 4
  br label %cond.end.403

cond.false.400:                                   ; preds = %cond.end.394
  %opt32401 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr32*
  %FileAlignment402 = getelementptr inbounds %struct.pe_image_optional_hdr32, %struct.pe_image_optional_hdr32* %opt32401, i32 0, i32 11
  %165 = load i32, i32* %FileAlignment402, align 4
  br label %cond.end.403

cond.end.403:                                     ; preds = %cond.false.400, %cond.true.397
  %cond404 = phi i32 [ %164, %cond.true.397 ], [ %165, %cond.false.400 ]
  store i32 %cond404, i32* %falign, align 4
  %166 = load i32, i32* %desc.addr, align 4
  %167 = load %struct.pe_image_section_hdr*, %struct.pe_image_section_hdr** %section_hdr, align 8
  %168 = bitcast %struct.pe_image_section_hdr* %167 to i8*
  %169 = load i16, i16* %nsections, align 2
  %conv405 = zext i16 %169 to i64
  %mul = mul i64 40, %conv405
  %conv406 = trunc i64 %mul to i32
  %call407 = call i32 @cli_readn(i32 %166, i8* %168, i32 %conv406)
  %170 = load i16, i16* %nsections, align 2
  %conv408 = zext i16 %170 to i64
  %mul409 = mul i64 %conv408, 40
  %conv410 = trunc i64 %mul409 to i32
  %cmp411 = icmp ne i32 %call407, %conv410
  br i1 %cmp411, label %if.then.413, label %if.end.424

if.then.413:                                      ; preds = %cond.end.403
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.86, i32 0, i32 0))
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.87, i32 0, i32 0))
  %171 = load %struct.pe_image_section_hdr*, %struct.pe_image_section_hdr** %section_hdr, align 8
  %172 = bitcast %struct.pe_image_section_hdr* %171 to i8*
  call void @free(i8* %172) #3
  %173 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %174 = bitcast %struct.cli_exe_section* %173 to i8*
  call void @free(i8* %174) #3
  %175 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options414 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %175, i32 0, i32 5
  %176 = load i32, i32* %options414, align 4
  %and415 = and i32 %176, 64
  %tobool416 = icmp ne i32 %and415, 0
  br i1 %tobool416, label %if.then.417, label %if.end.423

if.then.417:                                      ; preds = %if.then.413
  %177 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname418 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %177, i32 0, i32 0
  %178 = load i8**, i8*** %virname418, align 8
  %tobool419 = icmp ne i8** %178, null
  br i1 %tobool419, label %if.then.420, label %if.end.422

if.then.420:                                      ; preds = %if.then.417
  %179 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname421 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %179, i32 0, i32 0
  %180 = load i8**, i8*** %virname421, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i8** %180, align 8
  br label %if.end.422

if.end.422:                                       ; preds = %if.then.420, %if.then.417
  store i32 1, i32* %retval
  br label %return

if.end.423:                                       ; preds = %if.then.413
  store i32 0, i32* %retval
  br label %return

if.end.424:                                       ; preds = %cond.end.403
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.424
  %181 = load i32, i32* %falign, align 4
  %cmp425 = icmp ne i32 %181, 512
  br i1 %cmp425, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %182 = load i32, i32* %i, align 4
  %183 = load i16, i16* %nsections, align 2
  %conv427 = zext i16 %183 to i32
  %cmp428 = icmp ult i32 %182, %conv427
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %184 = phi i1 [ false, %for.cond ], [ %cmp428, %land.rhs ]
  br i1 %184, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %185 = load i32, i32* %falign, align 4
  %tobool430 = icmp ne i32 %185, 0
  br i1 %tobool430, label %land.lhs.true.431, label %if.end.445

land.lhs.true.431:                                ; preds = %for.body
  %186 = load i32, i32* %i, align 4
  %idxprom = zext i32 %186 to i64
  %187 = load %struct.pe_image_section_hdr*, %struct.pe_image_section_hdr** %section_hdr, align 8
  %arrayidx = getelementptr inbounds %struct.pe_image_section_hdr, %struct.pe_image_section_hdr* %187, i64 %idxprom
  %SizeOfRawData = getelementptr inbounds %struct.pe_image_section_hdr, %struct.pe_image_section_hdr* %arrayidx, i32 0, i32 3
  %188 = load i32, i32* %SizeOfRawData, align 4
  %tobool432 = icmp ne i32 %188, 0
  br i1 %tobool432, label %land.lhs.true.433, label %if.end.445

land.lhs.true.433:                                ; preds = %land.lhs.true.431
  %189 = load i32, i32* %i, align 4
  %idxprom434 = zext i32 %189 to i64
  %190 = load %struct.pe_image_section_hdr*, %struct.pe_image_section_hdr** %section_hdr, align 8
  %arrayidx435 = getelementptr inbounds %struct.pe_image_section_hdr, %struct.pe_image_section_hdr* %190, i64 %idxprom434
  %PointerToRawData = getelementptr inbounds %struct.pe_image_section_hdr, %struct.pe_image_section_hdr* %arrayidx435, i32 0, i32 4
  %191 = load i32, i32* %PointerToRawData, align 4
  %192 = load i32, i32* %falign, align 4
  %rem436 = urem i32 %191, %192
  %tobool437 = icmp ne i32 %rem436, 0
  br i1 %tobool437, label %land.lhs.true.438, label %if.end.445

land.lhs.true.438:                                ; preds = %land.lhs.true.433
  %193 = load i32, i32* %i, align 4
  %idxprom439 = zext i32 %193 to i64
  %194 = load %struct.pe_image_section_hdr*, %struct.pe_image_section_hdr** %section_hdr, align 8
  %arrayidx440 = getelementptr inbounds %struct.pe_image_section_hdr, %struct.pe_image_section_hdr* %194, i64 %idxprom439
  %PointerToRawData441 = getelementptr inbounds %struct.pe_image_section_hdr, %struct.pe_image_section_hdr* %arrayidx440, i32 0, i32 4
  %195 = load i32, i32* %PointerToRawData441, align 4
  %rem442 = urem i32 %195, 512
  %tobool443 = icmp ne i32 %rem442, 0
  br i1 %tobool443, label %if.end.445, label %if.then.444

if.then.444:                                      ; preds = %land.lhs.true.438
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.88, i32 0, i32 0))
  store i32 512, i32* %falign, align 4
  br label %if.end.445

if.end.445:                                       ; preds = %if.then.444, %land.lhs.true.438, %land.lhs.true.433, %land.lhs.true.431, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.445
  %196 = load i32, i32* %i, align 4
  %inc = add i32 %196, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %197 = load i32, i32* %valign, align 4
  %tobool446 = icmp ne i32 %197, 0
  br i1 %tobool446, label %cond.true.447, label %cond.false.452

cond.true.447:                                    ; preds = %for.end
  %198 = load i32, i32* %hdr_size, align 4
  %199 = load i32, i32* %valign, align 4
  %div = udiv i32 %198, %199
  %200 = load i32, i32* %hdr_size, align 4
  %201 = load i32, i32* %valign, align 4
  %rem448 = urem i32 %200, %201
  %cmp449 = icmp ne i32 %rem448, 0
  %conv450 = zext i1 %cmp449 to i32
  %add = add i32 %div, %conv450
  %202 = load i32, i32* %valign, align 4
  %mul451 = mul i32 %add, %202
  br label %cond.end.453

cond.false.452:                                   ; preds = %for.end
  %203 = load i32, i32* %hdr_size, align 4
  br label %cond.end.453

cond.end.453:                                     ; preds = %cond.false.452, %cond.true.447
  %cond454 = phi i32 [ %mul451, %cond.true.447 ], [ %203, %cond.false.452 ]
  store i32 %cond454, i32* %hdr_size, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.455

for.cond.455:                                     ; preds = %for.inc.927, %cond.end.453
  %204 = load i32, i32* %i, align 4
  %205 = load i16, i16* %nsections, align 2
  %conv456 = zext i16 %205 to i32
  %cmp457 = icmp ult i32 %204, %conv456
  br i1 %cmp457, label %for.body.459, label %for.end.929

for.body.459:                                     ; preds = %for.cond.455
  %arraydecay = getelementptr inbounds [9 x i8], [9 x i8]* %sname, i32 0, i32 0
  %206 = load i32, i32* %i, align 4
  %idxprom460 = zext i32 %206 to i64
  %207 = load %struct.pe_image_section_hdr*, %struct.pe_image_section_hdr** %section_hdr, align 8
  %arrayidx461 = getelementptr inbounds %struct.pe_image_section_hdr, %struct.pe_image_section_hdr* %207, i64 %idxprom460
  %Name = getelementptr inbounds %struct.pe_image_section_hdr, %struct.pe_image_section_hdr* %arrayidx461, i32 0, i32 0
  %arraydecay462 = getelementptr inbounds [8 x i8], [8 x i8]* %Name, i32 0, i32 0
  %call463 = call i8* @strncpy(i8* %arraydecay, i8* %arraydecay462, i64 8) #3
  %arrayidx464 = getelementptr inbounds [9 x i8], [9 x i8]* %sname, i32 0, i64 8
  store i8 0, i8* %arrayidx464, align 1
  %208 = load i32, i32* %valign, align 4
  %tobool465 = icmp ne i32 %208, 0
  br i1 %tobool465, label %cond.true.466, label %cond.false.471

cond.true.466:                                    ; preds = %for.body.459
  %209 = load i32, i32* %i, align 4
  %idxprom467 = zext i32 %209 to i64
  %210 = load %struct.pe_image_section_hdr*, %struct.pe_image_section_hdr** %section_hdr, align 8
  %arrayidx468 = getelementptr inbounds %struct.pe_image_section_hdr, %struct.pe_image_section_hdr* %210, i64 %idxprom467
  %VirtualAddress = getelementptr inbounds %struct.pe_image_section_hdr, %struct.pe_image_section_hdr* %arrayidx468, i32 0, i32 2
  %211 = load i32, i32* %VirtualAddress, align 4
  %212 = load i32, i32* %valign, align 4
  %div469 = udiv i32 %211, %212
  %213 = load i32, i32* %valign, align 4
  %mul470 = mul i32 %div469, %213
  br label %cond.end.475

cond.false.471:                                   ; preds = %for.body.459
  %214 = load i32, i32* %i, align 4
  %idxprom472 = zext i32 %214 to i64
  %215 = load %struct.pe_image_section_hdr*, %struct.pe_image_section_hdr** %section_hdr, align 8
  %arrayidx473 = getelementptr inbounds %struct.pe_image_section_hdr, %struct.pe_image_section_hdr* %215, i64 %idxprom472
  %VirtualAddress474 = getelementptr inbounds %struct.pe_image_section_hdr, %struct.pe_image_section_hdr* %arrayidx473, i32 0, i32 2
  %216 = load i32, i32* %VirtualAddress474, align 4
  br label %cond.end.475

cond.end.475:                                     ; preds = %cond.false.471, %cond.true.466
  %cond476 = phi i32 [ %mul470, %cond.true.466 ], [ %216, %cond.false.471 ]
  %217 = load i32, i32* %i, align 4
  %idxprom477 = zext i32 %217 to i64
  %218 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx478 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %218, i64 %idxprom477
  %rva = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx478, i32 0, i32 0
  store i32 %cond476, i32* %rva, align 4
  %219 = load i32, i32* %valign, align 4
  %tobool479 = icmp ne i32 %219, 0
  br i1 %tobool479, label %cond.true.480, label %cond.false.492

cond.true.480:                                    ; preds = %cond.end.475
  %220 = load i32, i32* %i, align 4
  %idxprom481 = zext i32 %220 to i64
  %221 = load %struct.pe_image_section_hdr*, %struct.pe_image_section_hdr** %section_hdr, align 8
  %arrayidx482 = getelementptr inbounds %struct.pe_image_section_hdr, %struct.pe_image_section_hdr* %221, i64 %idxprom481
  %VirtualSize = getelementptr inbounds %struct.pe_image_section_hdr, %struct.pe_image_section_hdr* %arrayidx482, i32 0, i32 1
  %222 = load i32, i32* %VirtualSize, align 4
  %223 = load i32, i32* %valign, align 4
  %div483 = udiv i32 %222, %223
  %224 = load i32, i32* %i, align 4
  %idxprom484 = zext i32 %224 to i64
  %225 = load %struct.pe_image_section_hdr*, %struct.pe_image_section_hdr** %section_hdr, align 8
  %arrayidx485 = getelementptr inbounds %struct.pe_image_section_hdr, %struct.pe_image_section_hdr* %225, i64 %idxprom484
  %VirtualSize486 = getelementptr inbounds %struct.pe_image_section_hdr, %struct.pe_image_section_hdr* %arrayidx485, i32 0, i32 1
  %226 = load i32, i32* %VirtualSize486, align 4
  %227 = load i32, i32* %valign, align 4
  %rem487 = urem i32 %226, %227
  %cmp488 = icmp ne i32 %rem487, 0
  %conv489 = zext i1 %cmp488 to i32
  %add490 = add i32 %div483, %conv489
  %228 = load i32, i32* %valign, align 4
  %mul491 = mul i32 %add490, %228
  br label %cond.end.496

cond.false.492:                                   ; preds = %cond.end.475
  %229 = load i32, i32* %i, align 4
  %idxprom493 = zext i32 %229 to i64
  %230 = load %struct.pe_image_section_hdr*, %struct.pe_image_section_hdr** %section_hdr, align 8
  %arrayidx494 = getelementptr inbounds %struct.pe_image_section_hdr, %struct.pe_image_section_hdr* %230, i64 %idxprom493
  %VirtualSize495 = getelementptr inbounds %struct.pe_image_section_hdr, %struct.pe_image_section_hdr* %arrayidx494, i32 0, i32 1
  %231 = load i32, i32* %VirtualSize495, align 4
  br label %cond.end.496

cond.end.496:                                     ; preds = %cond.false.492, %cond.true.480
  %cond497 = phi i32 [ %mul491, %cond.true.480 ], [ %231, %cond.false.492 ]
  %232 = load i32, i32* %i, align 4
  %idxprom498 = zext i32 %232 to i64
  %233 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx499 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %233, i64 %idxprom498
  %vsz = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx499, i32 0, i32 1
  store i32 %cond497, i32* %vsz, align 4
  %234 = load i32, i32* %falign, align 4
  %tobool500 = icmp ne i32 %234, 0
  br i1 %tobool500, label %cond.true.501, label %cond.false.507

cond.true.501:                                    ; preds = %cond.end.496
  %235 = load i32, i32* %i, align 4
  %idxprom502 = zext i32 %235 to i64
  %236 = load %struct.pe_image_section_hdr*, %struct.pe_image_section_hdr** %section_hdr, align 8
  %arrayidx503 = getelementptr inbounds %struct.pe_image_section_hdr, %struct.pe_image_section_hdr* %236, i64 %idxprom502
  %PointerToRawData504 = getelementptr inbounds %struct.pe_image_section_hdr, %struct.pe_image_section_hdr* %arrayidx503, i32 0, i32 4
  %237 = load i32, i32* %PointerToRawData504, align 4
  %238 = load i32, i32* %falign, align 4
  %div505 = udiv i32 %237, %238
  %239 = load i32, i32* %falign, align 4
  %mul506 = mul i32 %div505, %239
  br label %cond.end.511

cond.false.507:                                   ; preds = %cond.end.496
  %240 = load i32, i32* %i, align 4
  %idxprom508 = zext i32 %240 to i64
  %241 = load %struct.pe_image_section_hdr*, %struct.pe_image_section_hdr** %section_hdr, align 8
  %arrayidx509 = getelementptr inbounds %struct.pe_image_section_hdr, %struct.pe_image_section_hdr* %241, i64 %idxprom508
  %PointerToRawData510 = getelementptr inbounds %struct.pe_image_section_hdr, %struct.pe_image_section_hdr* %arrayidx509, i32 0, i32 4
  %242 = load i32, i32* %PointerToRawData510, align 4
  br label %cond.end.511

cond.end.511:                                     ; preds = %cond.false.507, %cond.true.501
  %cond512 = phi i32 [ %mul506, %cond.true.501 ], [ %242, %cond.false.507 ]
  %243 = load i32, i32* %i, align 4
  %idxprom513 = zext i32 %243 to i64
  %244 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx514 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %244, i64 %idxprom513
  %raw = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx514, i32 0, i32 2
  store i32 %cond512, i32* %raw, align 4
  %245 = load i32, i32* %falign, align 4
  %tobool515 = icmp ne i32 %245, 0
  br i1 %tobool515, label %cond.true.516, label %cond.false.529

cond.true.516:                                    ; preds = %cond.end.511
  %246 = load i32, i32* %i, align 4
  %idxprom517 = zext i32 %246 to i64
  %247 = load %struct.pe_image_section_hdr*, %struct.pe_image_section_hdr** %section_hdr, align 8
  %arrayidx518 = getelementptr inbounds %struct.pe_image_section_hdr, %struct.pe_image_section_hdr* %247, i64 %idxprom517
  %SizeOfRawData519 = getelementptr inbounds %struct.pe_image_section_hdr, %struct.pe_image_section_hdr* %arrayidx518, i32 0, i32 3
  %248 = load i32, i32* %SizeOfRawData519, align 4
  %249 = load i32, i32* %falign, align 4
  %div520 = udiv i32 %248, %249
  %250 = load i32, i32* %i, align 4
  %idxprom521 = zext i32 %250 to i64
  %251 = load %struct.pe_image_section_hdr*, %struct.pe_image_section_hdr** %section_hdr, align 8
  %arrayidx522 = getelementptr inbounds %struct.pe_image_section_hdr, %struct.pe_image_section_hdr* %251, i64 %idxprom521
  %SizeOfRawData523 = getelementptr inbounds %struct.pe_image_section_hdr, %struct.pe_image_section_hdr* %arrayidx522, i32 0, i32 3
  %252 = load i32, i32* %SizeOfRawData523, align 4
  %253 = load i32, i32* %falign, align 4
  %rem524 = urem i32 %252, %253
  %cmp525 = icmp ne i32 %rem524, 0
  %conv526 = zext i1 %cmp525 to i32
  %add527 = add i32 %div520, %conv526
  %254 = load i32, i32* %falign, align 4
  %mul528 = mul i32 %add527, %254
  br label %cond.end.533

cond.false.529:                                   ; preds = %cond.end.511
  %255 = load i32, i32* %i, align 4
  %idxprom530 = zext i32 %255 to i64
  %256 = load %struct.pe_image_section_hdr*, %struct.pe_image_section_hdr** %section_hdr, align 8
  %arrayidx531 = getelementptr inbounds %struct.pe_image_section_hdr, %struct.pe_image_section_hdr* %256, i64 %idxprom530
  %SizeOfRawData532 = getelementptr inbounds %struct.pe_image_section_hdr, %struct.pe_image_section_hdr* %arrayidx531, i32 0, i32 3
  %257 = load i32, i32* %SizeOfRawData532, align 4
  br label %cond.end.533

cond.end.533:                                     ; preds = %cond.false.529, %cond.true.516
  %cond534 = phi i32 [ %mul528, %cond.true.516 ], [ %257, %cond.false.529 ]
  %258 = load i32, i32* %i, align 4
  %idxprom535 = zext i32 %258 to i64
  %259 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx536 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %259, i64 %idxprom535
  %rsz = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx536, i32 0, i32 3
  store i32 %cond534, i32* %rsz, align 4
  %260 = load i32, i32* %i, align 4
  %idxprom537 = zext i32 %260 to i64
  %261 = load %struct.pe_image_section_hdr*, %struct.pe_image_section_hdr** %section_hdr, align 8
  %arrayidx538 = getelementptr inbounds %struct.pe_image_section_hdr, %struct.pe_image_section_hdr* %261, i64 %idxprom537
  %Characteristics539 = getelementptr inbounds %struct.pe_image_section_hdr, %struct.pe_image_section_hdr* %arrayidx538, i32 0, i32 9
  %262 = load i32, i32* %Characteristics539, align 4
  %263 = load i32, i32* %i, align 4
  %idxprom540 = zext i32 %263 to i64
  %264 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx541 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %264, i64 %idxprom540
  %chr = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx541, i32 0, i32 4
  store i32 %262, i32* %chr, align 4
  %265 = load i32, i32* %i, align 4
  %idxprom542 = zext i32 %265 to i64
  %266 = load %struct.pe_image_section_hdr*, %struct.pe_image_section_hdr** %section_hdr, align 8
  %arrayidx543 = getelementptr inbounds %struct.pe_image_section_hdr, %struct.pe_image_section_hdr* %266, i64 %idxprom542
  %VirtualAddress544 = getelementptr inbounds %struct.pe_image_section_hdr, %struct.pe_image_section_hdr* %arrayidx543, i32 0, i32 2
  %267 = load i32, i32* %VirtualAddress544, align 4
  %268 = load i32, i32* %i, align 4
  %idxprom545 = zext i32 %268 to i64
  %269 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx546 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %269, i64 %idxprom545
  %urva = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx546, i32 0, i32 5
  store i32 %267, i32* %urva, align 4
  %270 = load i32, i32* %i, align 4
  %idxprom547 = zext i32 %270 to i64
  %271 = load %struct.pe_image_section_hdr*, %struct.pe_image_section_hdr** %section_hdr, align 8
  %arrayidx548 = getelementptr inbounds %struct.pe_image_section_hdr, %struct.pe_image_section_hdr* %271, i64 %idxprom547
  %VirtualSize549 = getelementptr inbounds %struct.pe_image_section_hdr, %struct.pe_image_section_hdr* %arrayidx548, i32 0, i32 1
  %272 = load i32, i32* %VirtualSize549, align 4
  %273 = load i32, i32* %i, align 4
  %idxprom550 = zext i32 %273 to i64
  %274 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx551 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %274, i64 %idxprom550
  %uvsz = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx551, i32 0, i32 6
  store i32 %272, i32* %uvsz, align 4
  %275 = load i32, i32* %i, align 4
  %idxprom552 = zext i32 %275 to i64
  %276 = load %struct.pe_image_section_hdr*, %struct.pe_image_section_hdr** %section_hdr, align 8
  %arrayidx553 = getelementptr inbounds %struct.pe_image_section_hdr, %struct.pe_image_section_hdr* %276, i64 %idxprom552
  %PointerToRawData554 = getelementptr inbounds %struct.pe_image_section_hdr, %struct.pe_image_section_hdr* %arrayidx553, i32 0, i32 4
  %277 = load i32, i32* %PointerToRawData554, align 4
  %278 = load i32, i32* %i, align 4
  %idxprom555 = zext i32 %278 to i64
  %279 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx556 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %279, i64 %idxprom555
  %uraw = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx556, i32 0, i32 7
  store i32 %277, i32* %uraw, align 4
  %280 = load i32, i32* %i, align 4
  %idxprom557 = zext i32 %280 to i64
  %281 = load %struct.pe_image_section_hdr*, %struct.pe_image_section_hdr** %section_hdr, align 8
  %arrayidx558 = getelementptr inbounds %struct.pe_image_section_hdr, %struct.pe_image_section_hdr* %281, i64 %idxprom557
  %SizeOfRawData559 = getelementptr inbounds %struct.pe_image_section_hdr, %struct.pe_image_section_hdr* %arrayidx558, i32 0, i32 3
  %282 = load i32, i32* %SizeOfRawData559, align 4
  %283 = load i32, i32* %i, align 4
  %idxprom560 = zext i32 %283 to i64
  %284 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx561 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %284, i64 %idxprom560
  %ursz = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx561, i32 0, i32 8
  store i32 %282, i32* %ursz, align 4
  %285 = load i32, i32* %i, align 4
  %idxprom562 = zext i32 %285 to i64
  %286 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx563 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %286, i64 %idxprom562
  %vsz564 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx563, i32 0, i32 1
  %287 = load i32, i32* %vsz564, align 4
  %tobool565 = icmp ne i32 %287, 0
  br i1 %tobool565, label %if.end.595, label %land.lhs.true.566

land.lhs.true.566:                                ; preds = %cond.end.533
  %288 = load i32, i32* %i, align 4
  %idxprom567 = zext i32 %288 to i64
  %289 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx568 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %289, i64 %idxprom567
  %rsz569 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx568, i32 0, i32 3
  %290 = load i32, i32* %rsz569, align 4
  %tobool570 = icmp ne i32 %290, 0
  br i1 %tobool570, label %if.then.571, label %if.end.595

if.then.571:                                      ; preds = %land.lhs.true.566
  %291 = load i32, i32* %valign, align 4
  %tobool572 = icmp ne i32 %291, 0
  br i1 %tobool572, label %cond.true.573, label %cond.false.586

cond.true.573:                                    ; preds = %if.then.571
  %292 = load i32, i32* %i, align 4
  %idxprom574 = zext i32 %292 to i64
  %293 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx575 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %293, i64 %idxprom574
  %ursz576 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx575, i32 0, i32 8
  %294 = load i32, i32* %ursz576, align 4
  %295 = load i32, i32* %valign, align 4
  %div577 = udiv i32 %294, %295
  %296 = load i32, i32* %i, align 4
  %idxprom578 = zext i32 %296 to i64
  %297 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx579 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %297, i64 %idxprom578
  %ursz580 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx579, i32 0, i32 8
  %298 = load i32, i32* %ursz580, align 4
  %299 = load i32, i32* %valign, align 4
  %rem581 = urem i32 %298, %299
  %cmp582 = icmp ne i32 %rem581, 0
  %conv583 = zext i1 %cmp582 to i32
  %add584 = add i32 %div577, %conv583
  %300 = load i32, i32* %valign, align 4
  %mul585 = mul i32 %add584, %300
  br label %cond.end.590

cond.false.586:                                   ; preds = %if.then.571
  %301 = load i32, i32* %i, align 4
  %idxprom587 = zext i32 %301 to i64
  %302 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx588 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %302, i64 %idxprom587
  %ursz589 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx588, i32 0, i32 8
  %303 = load i32, i32* %ursz589, align 4
  br label %cond.end.590

cond.end.590:                                     ; preds = %cond.false.586, %cond.true.573
  %cond591 = phi i32 [ %mul585, %cond.true.573 ], [ %303, %cond.false.586 ]
  %304 = load i32, i32* %i, align 4
  %idxprom592 = zext i32 %304 to i64
  %305 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx593 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %305, i64 %idxprom592
  %vsz594 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx593, i32 0, i32 1
  store i32 %cond591, i32* %vsz594, align 4
  br label %if.end.595

if.end.595:                                       ; preds = %cond.end.590, %land.lhs.true.566, %cond.end.533
  %306 = load i32, i32* %i, align 4
  %idxprom596 = zext i32 %306 to i64
  %307 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx597 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %307, i64 %idxprom596
  %rsz598 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx597, i32 0, i32 3
  %308 = load i32, i32* %rsz598, align 4
  %tobool599 = icmp ne i32 %308, 0
  br i1 %tobool599, label %land.lhs.true.600, label %if.end.662

land.lhs.true.600:                                ; preds = %if.end.595
  %309 = load i64, i64* %fsize, align 8
  %310 = load i32, i32* %i, align 4
  %idxprom601 = zext i32 %310 to i64
  %311 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx602 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %311, i64 %idxprom601
  %raw603 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx602, i32 0, i32 2
  %312 = load i32, i32* %raw603, align 4
  %conv604 = zext i32 %312 to i64
  %cmp605 = icmp ugt i64 %309, %conv604
  br i1 %cmp605, label %land.lhs.true.607, label %if.end.662

land.lhs.true.607:                                ; preds = %land.lhs.true.600
  %313 = load i64, i64* %fsize, align 8
  %conv608 = trunc i64 %313 to i32
  %cmp609 = icmp ugt i32 %conv608, 0
  br i1 %cmp609, label %land.lhs.true.611, label %if.then.652

land.lhs.true.611:                                ; preds = %land.lhs.true.607
  %314 = load i32, i32* %i, align 4
  %idxprom612 = zext i32 %314 to i64
  %315 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx613 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %315, i64 %idxprom612
  %rsz614 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx613, i32 0, i32 3
  %316 = load i32, i32* %rsz614, align 4
  %cmp615 = icmp ugt i32 %316, 0
  br i1 %cmp615, label %land.lhs.true.617, label %if.then.652

land.lhs.true.617:                                ; preds = %land.lhs.true.611
  %317 = load i32, i32* %i, align 4
  %idxprom618 = zext i32 %317 to i64
  %318 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx619 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %318, i64 %idxprom618
  %rsz620 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx619, i32 0, i32 3
  %319 = load i32, i32* %rsz620, align 4
  %320 = load i64, i64* %fsize, align 8
  %conv621 = trunc i64 %320 to i32
  %cmp622 = icmp ule i32 %319, %conv621
  br i1 %cmp622, label %land.lhs.true.624, label %if.then.652

land.lhs.true.624:                                ; preds = %land.lhs.true.617
  %321 = load i32, i32* %i, align 4
  %idxprom625 = zext i32 %321 to i64
  %322 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx626 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %322, i64 %idxprom625
  %raw627 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx626, i32 0, i32 2
  %323 = load i32, i32* %raw627, align 4
  %cmp628 = icmp uge i32 %323, 0
  br i1 %cmp628, label %land.lhs.true.630, label %if.then.652

land.lhs.true.630:                                ; preds = %land.lhs.true.624
  %324 = load i32, i32* %i, align 4
  %idxprom631 = zext i32 %324 to i64
  %325 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx632 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %325, i64 %idxprom631
  %raw633 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx632, i32 0, i32 2
  %326 = load i32, i32* %raw633, align 4
  %327 = load i32, i32* %i, align 4
  %idxprom634 = zext i32 %327 to i64
  %328 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx635 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %328, i64 %idxprom634
  %rsz636 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx635, i32 0, i32 3
  %329 = load i32, i32* %rsz636, align 4
  %add637 = add i32 %326, %329
  %330 = load i64, i64* %fsize, align 8
  %conv638 = trunc i64 %330 to i32
  %add639 = add i32 0, %conv638
  %cmp640 = icmp ule i32 %add637, %add639
  br i1 %cmp640, label %land.lhs.true.642, label %if.then.652

land.lhs.true.642:                                ; preds = %land.lhs.true.630
  %331 = load i32, i32* %i, align 4
  %idxprom643 = zext i32 %331 to i64
  %332 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx644 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %332, i64 %idxprom643
  %raw645 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx644, i32 0, i32 2
  %333 = load i32, i32* %raw645, align 4
  %334 = load i32, i32* %i, align 4
  %idxprom646 = zext i32 %334 to i64
  %335 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx647 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %335, i64 %idxprom646
  %rsz648 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx647, i32 0, i32 3
  %336 = load i32, i32* %rsz648, align 4
  %add649 = add i32 %333, %336
  %cmp650 = icmp ugt i32 %add649, 0
  br i1 %cmp650, label %if.end.662, label %if.then.652

if.then.652:                                      ; preds = %land.lhs.true.642, %land.lhs.true.630, %land.lhs.true.624, %land.lhs.true.617, %land.lhs.true.611, %land.lhs.true.607
  %337 = load i64, i64* %fsize, align 8
  %338 = load i32, i32* %i, align 4
  %idxprom653 = zext i32 %338 to i64
  %339 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx654 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %339, i64 %idxprom653
  %raw655 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx654, i32 0, i32 2
  %340 = load i32, i32* %raw655, align 4
  %conv656 = zext i32 %340 to i64
  %sub657 = sub i64 %337, %conv656
  %conv658 = trunc i64 %sub657 to i32
  %341 = load i32, i32* %i, align 4
  %idxprom659 = zext i32 %341 to i64
  %342 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx660 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %342, i64 %idxprom659
  %rsz661 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx660, i32 0, i32 3
  store i32 %conv658, i32* %rsz661, align 4
  br label %if.end.662

if.end.662:                                       ; preds = %if.then.652, %land.lhs.true.642, %land.lhs.true.600, %if.end.595
  %343 = load i32, i32* %i, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.89, i32 0, i32 0), i32 %343)
  %arraydecay663 = getelementptr inbounds [9 x i8], [9 x i8]* %sname, i32 0, i32 0
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.90, i32 0, i32 0), i8* %arraydecay663)
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.91, i32 0, i32 0))
  %344 = load i32, i32* %i, align 4
  %idxprom664 = zext i32 %344 to i64
  %345 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx665 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %345, i64 %idxprom664
  %uvsz666 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx665, i32 0, i32 6
  %346 = load i32, i32* %uvsz666, align 4
  %347 = load i32, i32* %i, align 4
  %idxprom667 = zext i32 %347 to i64
  %348 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx668 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %348, i64 %idxprom667
  %vsz669 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx668, i32 0, i32 1
  %349 = load i32, i32* %vsz669, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.92, i32 0, i32 0), i32 %346, i32 %349)
  %350 = load i32, i32* %i, align 4
  %idxprom670 = zext i32 %350 to i64
  %351 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx671 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %351, i64 %idxprom670
  %urva672 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx671, i32 0, i32 5
  %352 = load i32, i32* %urva672, align 4
  %353 = load i32, i32* %i, align 4
  %idxprom673 = zext i32 %353 to i64
  %354 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx674 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %354, i64 %idxprom673
  %rva675 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx674, i32 0, i32 0
  %355 = load i32, i32* %rva675, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.93, i32 0, i32 0), i32 %352, i32 %355)
  %356 = load i32, i32* %i, align 4
  %idxprom676 = zext i32 %356 to i64
  %357 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx677 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %357, i64 %idxprom676
  %ursz678 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx677, i32 0, i32 8
  %358 = load i32, i32* %ursz678, align 4
  %359 = load i32, i32* %i, align 4
  %idxprom679 = zext i32 %359 to i64
  %360 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx680 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %360, i64 %idxprom679
  %rsz681 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx680, i32 0, i32 3
  %361 = load i32, i32* %rsz681, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.94, i32 0, i32 0), i32 %358, i32 %361)
  %362 = load i32, i32* %i, align 4
  %idxprom682 = zext i32 %362 to i64
  %363 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx683 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %363, i64 %idxprom682
  %uraw684 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx683, i32 0, i32 7
  %364 = load i32, i32* %uraw684, align 4
  %365 = load i32, i32* %i, align 4
  %idxprom685 = zext i32 %365 to i64
  %366 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx686 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %366, i64 %idxprom685
  %raw687 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx686, i32 0, i32 2
  %367 = load i32, i32* %raw687, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.95, i32 0, i32 0), i32 %364, i32 %367)
  %368 = load i32, i32* %i, align 4
  %idxprom688 = zext i32 %368 to i64
  %369 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx689 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %369, i64 %idxprom688
  %chr690 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx689, i32 0, i32 4
  %370 = load i32, i32* %chr690, align 4
  %and691 = and i32 %370, 32
  %tobool692 = icmp ne i32 %and691, 0
  br i1 %tobool692, label %if.then.693, label %if.end.704

if.then.693:                                      ; preds = %if.end.662
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.96, i32 0, i32 0))
  %371 = load i32, i32* %i, align 4
  %idxprom694 = zext i32 %371 to i64
  %372 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx695 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %372, i64 %idxprom694
  %vsz696 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx695, i32 0, i32 1
  %373 = load i32, i32* %vsz696, align 4
  %374 = load i32, i32* %i, align 4
  %idxprom697 = zext i32 %374 to i64
  %375 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx698 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %375, i64 %idxprom697
  %rsz699 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx698, i32 0, i32 3
  %376 = load i32, i32* %rsz699, align 4
  %cmp700 = icmp ult i32 %373, %376
  br i1 %cmp700, label %if.then.702, label %if.end.703

if.then.702:                                      ; preds = %if.then.693
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.97, i32 0, i32 0))
  br label %if.end.703

if.end.703:                                       ; preds = %if.then.702, %if.then.693
  br label %if.end.704

if.end.704:                                       ; preds = %if.end.703, %if.end.662
  %377 = load i32, i32* %i, align 4
  %idxprom705 = zext i32 %377 to i64
  %378 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx706 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %378, i64 %idxprom705
  %chr707 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx706, i32 0, i32 4
  %379 = load i32, i32* %chr707, align 4
  %and708 = and i32 %379, 536870912
  %tobool709 = icmp ne i32 %and708, 0
  br i1 %tobool709, label %if.then.710, label %if.end.711

if.then.710:                                      ; preds = %if.end.704
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.98, i32 0, i32 0))
  br label %if.end.711

if.end.711:                                       ; preds = %if.then.710, %if.end.704
  %380 = load i32, i32* %i, align 4
  %idxprom712 = zext i32 %380 to i64
  %381 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx713 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %381, i64 %idxprom712
  %chr714 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx713, i32 0, i32 4
  %382 = load i32, i32* %chr714, align 4
  %and715 = and i32 %382, -2147483648
  %tobool716 = icmp ne i32 %and715, 0
  br i1 %tobool716, label %if.then.717, label %if.end.718

if.then.717:                                      ; preds = %if.end.711
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.99, i32 0, i32 0))
  br label %if.end.718

if.end.718:                                       ; preds = %if.then.717, %if.end.711
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.81, i32 0, i32 0))
  %383 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options719 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %383, i32 0, i32 5
  %384 = load i32, i32* %options719, align 4
  %and720 = and i32 %384, 64
  %tobool721 = icmp ne i32 %and720, 0
  br i1 %tobool721, label %land.lhs.true.722, label %if.end.734

land.lhs.true.722:                                ; preds = %if.end.718
  %385 = load i32, i32* %i, align 4
  %idxprom723 = zext i32 %385 to i64
  %386 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx724 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %386, i64 %idxprom723
  %urva725 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx724, i32 0, i32 5
  %387 = load i32, i32* %urva725, align 4
  %388 = load i32, i32* %valign, align 4
  %rem726 = urem i32 %387, %388
  %tobool727 = icmp ne i32 %rem726, 0
  br i1 %tobool727, label %if.then.728, label %if.end.734

if.then.728:                                      ; preds = %land.lhs.true.722
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.100, i32 0, i32 0))
  %389 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname729 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %389, i32 0, i32 0
  %390 = load i8**, i8*** %virname729, align 8
  %tobool730 = icmp ne i8** %390, null
  br i1 %tobool730, label %if.then.731, label %if.end.733

if.then.731:                                      ; preds = %if.then.728
  %391 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname732 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %391, i32 0, i32 0
  %392 = load i8**, i8*** %virname732, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i8** %392, align 8
  br label %if.end.733

if.end.733:                                       ; preds = %if.then.731, %if.then.728
  %393 = load %struct.pe_image_section_hdr*, %struct.pe_image_section_hdr** %section_hdr, align 8
  %394 = bitcast %struct.pe_image_section_hdr* %393 to i8*
  call void @free(i8* %394) #3
  %395 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %396 = bitcast %struct.cli_exe_section* %395 to i8*
  call void @free(i8* %396) #3
  store i32 1, i32* %retval
  br label %return

if.end.734:                                       ; preds = %land.lhs.true.722, %if.end.718
  %397 = load i32, i32* %i, align 4
  %idxprom735 = zext i32 %397 to i64
  %398 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx736 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %398, i64 %idxprom735
  %rsz737 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx736, i32 0, i32 3
  %399 = load i32, i32* %rsz737, align 4
  %tobool738 = icmp ne i32 %399, 0
  br i1 %tobool738, label %if.then.739, label %if.end.843

if.then.739:                                      ; preds = %if.end.734
  %400 = load i32, i32* %i, align 4
  %idxprom740 = zext i32 %400 to i64
  %401 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx741 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %401, i64 %idxprom740
  %raw742 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx741, i32 0, i32 2
  %402 = load i32, i32* %raw742, align 4
  %conv743 = zext i32 %402 to i64
  %403 = load i64, i64* %fsize, align 8
  %cmp744 = icmp uge i64 %conv743, %403
  br i1 %cmp744, label %if.then.746, label %if.end.760

if.then.746:                                      ; preds = %if.then.739
  %404 = load i32, i32* %i, align 4
  %405 = load i32, i32* %i, align 4
  %idxprom747 = zext i32 %405 to i64
  %406 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx748 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %406, i64 %idxprom747
  %raw749 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx748, i32 0, i32 2
  %407 = load i32, i32* %raw749, align 4
  %408 = load i64, i64* %fsize, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.101, i32 0, i32 0), i32 %404, i32 %407, i64 %408)
  %409 = load %struct.pe_image_section_hdr*, %struct.pe_image_section_hdr** %section_hdr, align 8
  %410 = bitcast %struct.pe_image_section_hdr* %409 to i8*
  call void @free(i8* %410) #3
  %411 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %412 = bitcast %struct.cli_exe_section* %411 to i8*
  call void @free(i8* %412) #3
  %413 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options750 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %413, i32 0, i32 5
  %414 = load i32, i32* %options750, align 4
  %and751 = and i32 %414, 64
  %tobool752 = icmp ne i32 %and751, 0
  br i1 %tobool752, label %if.then.753, label %if.end.759

if.then.753:                                      ; preds = %if.then.746
  %415 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname754 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %415, i32 0, i32 0
  %416 = load i8**, i8*** %virname754, align 8
  %tobool755 = icmp ne i8** %416, null
  br i1 %tobool755, label %if.then.756, label %if.end.758

if.then.756:                                      ; preds = %if.then.753
  %417 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname757 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %417, i32 0, i32 0
  %418 = load i8**, i8*** %virname757, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i8** %418, align 8
  br label %if.end.758

if.end.758:                                       ; preds = %if.then.756, %if.then.753
  store i32 1, i32* %retval
  br label %return

if.end.759:                                       ; preds = %if.then.746
  store i32 0, i32* %retval
  br label %return

if.end.760:                                       ; preds = %if.then.739
  %419 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options761 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %419, i32 0, i32 5
  %420 = load i32, i32* %options761, align 4
  %and762 = and i32 %420, 512
  %tobool763 = icmp ne i32 %and762, 0
  br i1 %tobool763, label %land.lhs.true.764, label %if.end.792

land.lhs.true.764:                                ; preds = %if.end.760
  %421 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %dconf765 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %421, i32 0, i32 9
  %422 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf765, align 8
  %pe766 = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %422, i32 0, i32 0
  %423 = load i32, i32* %pe766, align 4
  %and767 = and i32 %423, 8
  %tobool768 = icmp ne i32 %and767, 0
  br i1 %tobool768, label %land.lhs.true.769, label %if.end.792

land.lhs.true.769:                                ; preds = %land.lhs.true.764
  %arraydecay770 = getelementptr inbounds [9 x i8], [9 x i8]* %sname, i32 0, i32 0
  %424 = load i8, i8* %arraydecay770, align 1
  %tobool771 = icmp ne i8 %424, 0
  br i1 %tobool771, label %if.end.792, label %land.lhs.true.772

land.lhs.true.772:                                ; preds = %land.lhs.true.769
  %425 = load i32, i32* %i, align 4
  %idxprom773 = zext i32 %425 to i64
  %426 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx774 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %426, i64 %idxprom773
  %vsz775 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx774, i32 0, i32 1
  %427 = load i32, i32* %vsz775, align 4
  %cmp776 = icmp ugt i32 %427, 40000
  br i1 %cmp776, label %land.lhs.true.778, label %if.end.792

land.lhs.true.778:                                ; preds = %land.lhs.true.772
  %428 = load i32, i32* %i, align 4
  %idxprom779 = zext i32 %428 to i64
  %429 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx780 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %429, i64 %idxprom779
  %vsz781 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx780, i32 0, i32 1
  %430 = load i32, i32* %vsz781, align 4
  %cmp782 = icmp ult i32 %430, 70000
  br i1 %cmp782, label %land.lhs.true.784, label %if.end.792

land.lhs.true.784:                                ; preds = %land.lhs.true.778
  %431 = load i32, i32* %i, align 4
  %idxprom785 = zext i32 %431 to i64
  %432 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx786 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %432, i64 %idxprom785
  %chr787 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx786, i32 0, i32 4
  %433 = load i32, i32* %chr787, align 4
  %cmp788 = icmp eq i32 %433, -536870816
  br i1 %cmp788, label %if.then.790, label %if.end.792

if.then.790:                                      ; preds = %land.lhs.true.784
  %434 = load i32, i32* %i, align 4
  %conv791 = trunc i32 %434 to i8
  store i8 %conv791, i8* %polipos, align 1
  br label %if.end.792

if.end.792:                                       ; preds = %if.then.790, %land.lhs.true.784, %land.lhs.true.778, %land.lhs.true.772, %land.lhs.true.769, %land.lhs.true.764, %if.end.760
  %435 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %engine = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %435, i32 0, i32 3
  %436 = load %struct.cl_engine*, %struct.cl_engine** %engine, align 8
  %md5_sect793 = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %436, i32 0, i32 5
  %437 = load i8*, i8** %md5_sect793, align 8
  %438 = bitcast i8* %437 to %struct.cli_matcher*
  store %struct.cli_matcher* %438, %struct.cli_matcher** %md5_sect, align 8
  %439 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %dconf794 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %439, i32 0, i32 9
  %440 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf794, align 8
  %pe795 = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %440, i32 0, i32 0
  %441 = load i32, i32* %pe795, align 4
  %and796 = and i32 %441, 16
  %tobool797 = icmp ne i32 %and796, 0
  br i1 %tobool797, label %land.lhs.true.798, label %if.end.842

land.lhs.true.798:                                ; preds = %if.end.792
  %442 = load %struct.cli_matcher*, %struct.cli_matcher** %md5_sect, align 8
  %tobool799 = icmp ne %struct.cli_matcher* %442, null
  br i1 %tobool799, label %if.then.800, label %if.end.842

if.then.800:                                      ; preds = %land.lhs.true.798
  store i32 0, i32* %found, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.801

for.cond.801:                                     ; preds = %for.inc.839, %if.then.800
  %443 = load i32, i32* %j, align 4
  %444 = load %struct.cli_matcher*, %struct.cli_matcher** %md5_sect, align 8
  %soff_len = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %444, i32 0, i32 5
  %445 = load i32, i32* %soff_len, align 4
  %cmp802 = icmp ult i32 %443, %445
  br i1 %cmp802, label %land.rhs.804, label %land.end.812

land.rhs.804:                                     ; preds = %for.cond.801
  %446 = load i32, i32* %j, align 4
  %idxprom805 = zext i32 %446 to i64
  %447 = load %struct.cli_matcher*, %struct.cli_matcher** %md5_sect, align 8
  %soff = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %447, i32 0, i32 4
  %448 = load i32*, i32** %soff, align 8
  %arrayidx806 = getelementptr inbounds i32, i32* %448, i64 %idxprom805
  %449 = load i32, i32* %arrayidx806, align 4
  %450 = load i32, i32* %i, align 4
  %idxprom807 = zext i32 %450 to i64
  %451 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx808 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %451, i64 %idxprom807
  %rsz809 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx808, i32 0, i32 3
  %452 = load i32, i32* %rsz809, align 4
  %cmp810 = icmp ule i32 %449, %452
  br label %land.end.812

land.end.812:                                     ; preds = %land.rhs.804, %for.cond.801
  %453 = phi i1 [ false, %for.cond.801 ], [ %cmp810, %land.rhs.804 ]
  br i1 %453, label %for.body.813, label %for.end.841

for.body.813:                                     ; preds = %land.end.812
  %454 = load i32, i32* %j, align 4
  %idxprom814 = zext i32 %454 to i64
  %455 = load %struct.cli_matcher*, %struct.cli_matcher** %md5_sect, align 8
  %soff815 = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %455, i32 0, i32 4
  %456 = load i32*, i32** %soff815, align 8
  %arrayidx816 = getelementptr inbounds i32, i32* %456, i64 %idxprom814
  %457 = load i32, i32* %arrayidx816, align 4
  %458 = load i32, i32* %i, align 4
  %idxprom817 = zext i32 %458 to i64
  %459 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx818 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %459, i64 %idxprom817
  %rsz819 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx818, i32 0, i32 3
  %460 = load i32, i32* %rsz819, align 4
  %cmp820 = icmp eq i32 %457, %460
  br i1 %cmp820, label %if.then.822, label %if.end.838

if.then.822:                                      ; preds = %for.body.813
  %461 = load i32, i32* %desc.addr, align 4
  %462 = load i32, i32* %i, align 4
  %idxprom823 = zext i32 %462 to i64
  %463 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx824 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %463, i64 %idxprom823
  %arraydecay825 = getelementptr inbounds [16 x i8], [16 x i8]* %md5_dig, i32 0, i32 0
  %call826 = call i32 @cli_md5sect(i32 %461, %struct.cli_exe_section* %arrayidx824, i8* %arraydecay825)
  %tobool827 = icmp ne i32 %call826, 0
  br i1 %tobool827, label %land.lhs.true.828, label %if.end.837

land.lhs.true.828:                                ; preds = %if.then.822
  %arraydecay829 = getelementptr inbounds [16 x i8], [16 x i8]* %md5_dig, i32 0, i32 0
  %464 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname830 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %464, i32 0, i32 0
  %465 = load i8**, i8*** %virname830, align 8
  %466 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %engine831 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %466, i32 0, i32 3
  %467 = load %struct.cl_engine*, %struct.cl_engine** %engine831, align 8
  %md5_sect832 = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %467, i32 0, i32 5
  %468 = load i8*, i8** %md5_sect832, align 8
  %469 = bitcast i8* %468 to %struct.cli_matcher*
  %call833 = call i32 @cli_bm_scanbuff(i8* %arraydecay829, i32 16, i8** %465, %struct.cli_matcher* %469, i32 0, i32 0, i32 -1)
  %cmp834 = icmp eq i32 %call833, 1
  br i1 %cmp834, label %if.then.836, label %if.end.837

if.then.836:                                      ; preds = %land.lhs.true.828
  %470 = load %struct.pe_image_section_hdr*, %struct.pe_image_section_hdr** %section_hdr, align 8
  %471 = bitcast %struct.pe_image_section_hdr* %470 to i8*
  call void @free(i8* %471) #3
  %472 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %473 = bitcast %struct.cli_exe_section* %472 to i8*
  call void @free(i8* %473) #3
  store i32 1, i32* %retval
  br label %return

if.end.837:                                       ; preds = %land.lhs.true.828, %if.then.822
  br label %for.end.841

if.end.838:                                       ; preds = %for.body.813
  br label %for.inc.839

for.inc.839:                                      ; preds = %if.end.838
  %474 = load i32, i32* %j, align 4
  %inc840 = add i32 %474, 1
  store i32 %inc840, i32* %j, align 4
  br label %for.cond.801

for.end.841:                                      ; preds = %if.end.837, %land.end.812
  br label %if.end.842

if.end.842:                                       ; preds = %for.end.841, %land.lhs.true.798, %if.end.792
  br label %if.end.843

if.end.843:                                       ; preds = %if.end.842, %if.end.734
  %475 = load i32, i32* %i, align 4
  %tobool844 = icmp ne i32 %475, 0
  br i1 %tobool844, label %if.else.872, label %if.then.845

if.then.845:                                      ; preds = %if.end.843
  %476 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options846 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %476, i32 0, i32 5
  %477 = load i32, i32* %options846, align 4
  %and847 = and i32 %477, 64
  %tobool848 = icmp ne i32 %and847, 0
  br i1 %tobool848, label %land.lhs.true.849, label %if.end.861

land.lhs.true.849:                                ; preds = %if.then.845
  %478 = load i32, i32* %i, align 4
  %idxprom850 = zext i32 %478 to i64
  %479 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx851 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %479, i64 %idxprom850
  %urva852 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx851, i32 0, i32 5
  %480 = load i32, i32* %urva852, align 4
  %481 = load i32, i32* %hdr_size, align 4
  %cmp853 = icmp ne i32 %480, %481
  br i1 %cmp853, label %if.then.855, label %if.end.861

if.then.855:                                      ; preds = %land.lhs.true.849
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.102, i32 0, i32 0))
  %482 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname856 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %482, i32 0, i32 0
  %483 = load i8**, i8*** %virname856, align 8
  %tobool857 = icmp ne i8** %483, null
  br i1 %tobool857, label %if.then.858, label %if.end.860

if.then.858:                                      ; preds = %if.then.855
  %484 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname859 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %484, i32 0, i32 0
  %485 = load i8**, i8*** %virname859, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i8** %485, align 8
  br label %if.end.860

if.end.860:                                       ; preds = %if.then.858, %if.then.855
  %486 = load %struct.pe_image_section_hdr*, %struct.pe_image_section_hdr** %section_hdr, align 8
  %487 = bitcast %struct.pe_image_section_hdr* %486 to i8*
  call void @free(i8* %487) #3
  %488 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %489 = bitcast %struct.cli_exe_section* %488 to i8*
  call void @free(i8* %489) #3
  store i32 1, i32* %retval
  br label %return

if.end.861:                                       ; preds = %land.lhs.true.849, %if.then.845
  %490 = load i32, i32* %i, align 4
  %idxprom862 = zext i32 %490 to i64
  %491 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx863 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %491, i64 %idxprom862
  %rva864 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx863, i32 0, i32 0
  %492 = load i32, i32* %rva864, align 4
  store i32 %492, i32* %min, align 4
  %493 = load i32, i32* %i, align 4
  %idxprom865 = zext i32 %493 to i64
  %494 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx866 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %494, i64 %idxprom865
  %rva867 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx866, i32 0, i32 0
  %495 = load i32, i32* %rva867, align 4
  %496 = load i32, i32* %i, align 4
  %idxprom868 = zext i32 %496 to i64
  %497 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx869 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %497, i64 %idxprom868
  %rsz870 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx869, i32 0, i32 3
  %498 = load i32, i32* %rsz870, align 4
  %add871 = add i32 %495, %498
  store i32 %add871, i32* %max, align 4
  br label %if.end.926

if.else.872:                                      ; preds = %if.end.843
  %499 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options873 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %499, i32 0, i32 5
  %500 = load i32, i32* %options873, align 4
  %and874 = and i32 %500, 64
  %tobool875 = icmp ne i32 %and874, 0
  br i1 %tobool875, label %land.lhs.true.876, label %if.end.897

land.lhs.true.876:                                ; preds = %if.else.872
  %501 = load i32, i32* %i, align 4
  %idxprom877 = zext i32 %501 to i64
  %502 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx878 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %502, i64 %idxprom877
  %urva879 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx878, i32 0, i32 5
  %503 = load i32, i32* %urva879, align 4
  %504 = load i32, i32* %i, align 4
  %sub880 = sub i32 %504, 1
  %idxprom881 = zext i32 %sub880 to i64
  %505 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx882 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %505, i64 %idxprom881
  %urva883 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx882, i32 0, i32 5
  %506 = load i32, i32* %urva883, align 4
  %sub884 = sub i32 %503, %506
  %507 = load i32, i32* %i, align 4
  %sub885 = sub i32 %507, 1
  %idxprom886 = zext i32 %sub885 to i64
  %508 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx887 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %508, i64 %idxprom886
  %vsz888 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx887, i32 0, i32 1
  %509 = load i32, i32* %vsz888, align 4
  %cmp889 = icmp ne i32 %sub884, %509
  br i1 %cmp889, label %if.then.891, label %if.end.897

if.then.891:                                      ; preds = %land.lhs.true.876
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.103, i32 0, i32 0))
  %510 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname892 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %510, i32 0, i32 0
  %511 = load i8**, i8*** %virname892, align 8
  %tobool893 = icmp ne i8** %511, null
  br i1 %tobool893, label %if.then.894, label %if.end.896

if.then.894:                                      ; preds = %if.then.891
  %512 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname895 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %512, i32 0, i32 0
  %513 = load i8**, i8*** %virname895, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i8** %513, align 8
  br label %if.end.896

if.end.896:                                       ; preds = %if.then.894, %if.then.891
  %514 = load %struct.pe_image_section_hdr*, %struct.pe_image_section_hdr** %section_hdr, align 8
  %515 = bitcast %struct.pe_image_section_hdr* %514 to i8*
  call void @free(i8* %515) #3
  %516 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %517 = bitcast %struct.cli_exe_section* %516 to i8*
  call void @free(i8* %517) #3
  store i32 1, i32* %retval
  br label %return

if.end.897:                                       ; preds = %land.lhs.true.876, %if.else.872
  %518 = load i32, i32* %i, align 4
  %idxprom898 = zext i32 %518 to i64
  %519 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx899 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %519, i64 %idxprom898
  %rva900 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx899, i32 0, i32 0
  %520 = load i32, i32* %rva900, align 4
  %521 = load i32, i32* %min, align 4
  %cmp901 = icmp ult i32 %520, %521
  br i1 %cmp901, label %if.then.903, label %if.end.907

if.then.903:                                      ; preds = %if.end.897
  %522 = load i32, i32* %i, align 4
  %idxprom904 = zext i32 %522 to i64
  %523 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx905 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %523, i64 %idxprom904
  %rva906 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx905, i32 0, i32 0
  %524 = load i32, i32* %rva906, align 4
  store i32 %524, i32* %min, align 4
  br label %if.end.907

if.end.907:                                       ; preds = %if.then.903, %if.end.897
  %525 = load i32, i32* %i, align 4
  %idxprom908 = zext i32 %525 to i64
  %526 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx909 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %526, i64 %idxprom908
  %rva910 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx909, i32 0, i32 0
  %527 = load i32, i32* %rva910, align 4
  %528 = load i32, i32* %i, align 4
  %idxprom911 = zext i32 %528 to i64
  %529 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx912 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %529, i64 %idxprom911
  %rsz913 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx912, i32 0, i32 3
  %530 = load i32, i32* %rsz913, align 4
  %add914 = add i32 %527, %530
  %531 = load i32, i32* %max, align 4
  %cmp915 = icmp ugt i32 %add914, %531
  br i1 %cmp915, label %if.then.917, label %if.end.925

if.then.917:                                      ; preds = %if.end.907
  %532 = load i32, i32* %i, align 4
  %idxprom918 = zext i32 %532 to i64
  %533 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx919 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %533, i64 %idxprom918
  %rva920 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx919, i32 0, i32 0
  %534 = load i32, i32* %rva920, align 4
  %535 = load i32, i32* %i, align 4
  %idxprom921 = zext i32 %535 to i64
  %536 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx922 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %536, i64 %idxprom921
  %rsz923 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx922, i32 0, i32 3
  %537 = load i32, i32* %rsz923, align 4
  %add924 = add i32 %534, %537
  store i32 %add924, i32* %max, align 4
  br label %if.end.925

if.end.925:                                       ; preds = %if.then.917, %if.end.907
  br label %if.end.926

if.end.926:                                       ; preds = %if.end.925, %if.end.861
  br label %for.inc.927

for.inc.927:                                      ; preds = %if.end.926
  %538 = load i32, i32* %i, align 4
  %inc928 = add i32 %538, 1
  store i32 %inc928, i32* %i, align 4
  br label %for.cond.455

for.end.929:                                      ; preds = %for.cond.455
  %539 = load %struct.pe_image_section_hdr*, %struct.pe_image_section_hdr** %section_hdr, align 8
  %540 = bitcast %struct.pe_image_section_hdr* %539 to i8*
  call void @free(i8* %540) #3
  %541 = load i32, i32* %vep, align 4
  %542 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %543 = load i16, i16* %nsections, align 2
  %544 = load i64, i64* %fsize, align 8
  %545 = load i32, i32* %hdr_size, align 4
  %call930 = call i32 @cli_rawaddr(i32 %541, %struct.cli_exe_section* %542, i16 zeroext %543, i32* %err, i64 %544, i32 %545)
  store i32 %call930, i32* %ep, align 4
  %tobool931 = icmp ne i32 %call930, 0
  br i1 %tobool931, label %if.end.945, label %land.lhs.true.932

land.lhs.true.932:                                ; preds = %for.end.929
  %546 = load i32, i32* %err, align 4
  %tobool933 = icmp ne i32 %546, 0
  br i1 %tobool933, label %if.then.934, label %if.end.945

if.then.934:                                      ; preds = %land.lhs.true.932
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.104, i32 0, i32 0))
  %547 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %548 = bitcast %struct.cli_exe_section* %547 to i8*
  call void @free(i8* %548) #3
  %549 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options935 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %549, i32 0, i32 5
  %550 = load i32, i32* %options935, align 4
  %and936 = and i32 %550, 64
  %tobool937 = icmp ne i32 %and936, 0
  br i1 %tobool937, label %if.then.938, label %if.end.944

if.then.938:                                      ; preds = %if.then.934
  %551 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname939 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %551, i32 0, i32 0
  %552 = load i8**, i8*** %virname939, align 8
  %tobool940 = icmp ne i8** %552, null
  br i1 %tobool940, label %if.then.941, label %if.end.943

if.then.941:                                      ; preds = %if.then.938
  %553 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname942 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %553, i32 0, i32 0
  %554 = load i8**, i8*** %virname942, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i8** %554, align 8
  br label %if.end.943

if.end.943:                                       ; preds = %if.then.941, %if.then.938
  store i32 1, i32* %retval
  br label %return

if.end.944:                                       ; preds = %if.then.934
  store i32 0, i32* %retval
  br label %return

if.end.945:                                       ; preds = %land.lhs.true.932, %for.end.929
  %555 = load i32, i32* %ep, align 4
  %556 = load i32, i32* %ep, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.105, i32 0, i32 0), i32 %555, i32 %556)
  %557 = load i32, i32* %pe_plus, align 4
  %tobool946 = icmp ne i32 %557, 0
  br i1 %tobool946, label %if.then.947, label %if.end.948

if.then.947:                                      ; preds = %if.end.945
  %558 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %559 = bitcast %struct.cli_exe_section* %558 to i8*
  call void @free(i8* %559) #3
  store i32 0, i32* %retval
  br label %return

if.end.948:                                       ; preds = %if.end.945
  %560 = load i32, i32* %desc.addr, align 4
  %561 = load i32, i32* %ep, align 4
  %conv949 = zext i32 %561 to i64
  %call950 = call i64 @lseek(i32 %560, i64 %conv949, i32 0) #3
  %562 = load i32, i32* %desc.addr, align 4
  %arraydecay951 = getelementptr inbounds [4096 x i8], [4096 x i8]* %epbuff, i32 0, i32 0
  %call952 = call i32 @cli_readn(i32 %562, i8* %arraydecay951, i32 4096)
  store i32 %call952, i32* %epsize, align 4
  %563 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options953 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %563, i32 0, i32 5
  %564 = load i32, i32* %options953, align 4
  %and954 = and i32 %564, 512
  %tobool955 = icmp ne i32 %and954, 0
  br i1 %tobool955, label %land.lhs.true.956, label %if.end.999

land.lhs.true.956:                                ; preds = %if.end.948
  %565 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %dconf957 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %565, i32 0, i32 9
  %566 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf957, align 8
  %pe958 = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %566, i32 0, i32 0
  %567 = load i32, i32* %pe958, align 4
  %and959 = and i32 %567, 1
  %tobool960 = icmp ne i32 %and959, 0
  br i1 %tobool960, label %land.lhs.true.961, label %if.end.999

land.lhs.true.961:                                ; preds = %land.lhs.true.956
  %568 = load i32, i32* %dll, align 4
  %tobool962 = icmp ne i32 %568, 0
  br i1 %tobool962, label %if.end.999, label %land.lhs.true.963

land.lhs.true.963:                                ; preds = %land.lhs.true.961
  %569 = load i32, i32* %epsize, align 4
  %cmp964 = icmp eq i32 %569, 4096
  br i1 %cmp964, label %land.lhs.true.966, label %if.end.999

land.lhs.true.966:                                ; preds = %land.lhs.true.963
  %570 = load i32, i32* %ep, align 4
  %571 = load i16, i16* %nsections, align 2
  %conv967 = zext i16 %571 to i32
  %sub968 = sub nsw i32 %conv967, 1
  %idxprom969 = sext i32 %sub968 to i64
  %572 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx970 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %572, i64 %idxprom969
  %raw971 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx970, i32 0, i32 2
  %573 = load i32, i32* %raw971, align 4
  %cmp972 = icmp eq i32 %570, %573
  br i1 %cmp972, label %if.then.974, label %if.end.999

if.then.974:                                      ; preds = %land.lhs.true.966
  %arraydecay975 = getelementptr inbounds [4096 x i8], [4096 x i8]* %epbuff, i32 0, i32 0
  %call976 = call i8* @cli_memstr(i8* %arraydecay975, i32 4040, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.106, i32 0, i32 0), i32 15)
  store i8* %call976, i8** %pt, align 8
  %574 = load i8*, i8** %pt, align 8
  %tobool977 = icmp ne i8* %574, null
  br i1 %tobool977, label %if.then.978, label %if.end.998

if.then.978:                                      ; preds = %if.then.974
  %575 = load i8*, i8** %pt, align 8
  %add.ptr979 = getelementptr inbounds i8, i8* %575, i64 15
  store i8* %add.ptr979, i8** %pt, align 8
  %576 = load i8*, i8** %pt, align 8
  %577 = bitcast i8* %576 to i32*
  %578 = load i32, i32* %577, align 4
  %579 = load i8*, i8** %pt, align 8
  %add.ptr980 = getelementptr inbounds i8, i8* %579, i64 4
  %580 = bitcast i8* %add.ptr980 to i32*
  %581 = load i32, i32* %580, align 4
  %xor = xor i32 %578, %581
  %cmp981 = icmp eq i32 %xor, 5265999
  br i1 %cmp981, label %land.lhs.true.983, label %if.end.997

land.lhs.true.983:                                ; preds = %if.then.978
  %582 = load i8*, i8** %pt, align 8
  %add.ptr984 = getelementptr inbounds i8, i8* %582, i64 8
  %583 = bitcast i8* %add.ptr984 to i32*
  %584 = load i32, i32* %583, align 4
  %585 = load i8*, i8** %pt, align 8
  %add.ptr985 = getelementptr inbounds i8, i8* %585, i64 12
  %586 = bitcast i8* %add.ptr985 to i32*
  %587 = load i32, i32* %586, align 4
  %xor986 = xor i32 %584, %587
  %cmp987 = icmp eq i32 %xor986, 1048571
  br i1 %cmp987, label %land.lhs.true.989, label %if.end.997

land.lhs.true.989:                                ; preds = %land.lhs.true.983
  %588 = load i8*, i8** %pt, align 8
  %add.ptr990 = getelementptr inbounds i8, i8* %588, i64 16
  %589 = bitcast i8* %add.ptr990 to i32*
  %590 = load i32, i32* %589, align 4
  %591 = load i8*, i8** %pt, align 8
  %add.ptr991 = getelementptr inbounds i8, i8* %591, i64 20
  %592 = bitcast i8* %add.ptr991 to i32*
  %593 = load i32, i32* %592, align 4
  %xor992 = xor i32 %590, %593
  %cmp993 = icmp eq i32 %xor992, 184
  br i1 %cmp993, label %if.then.995, label %if.end.997

if.then.995:                                      ; preds = %land.lhs.true.989
  %594 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname996 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %594, i32 0, i32 0
  %595 = load i8**, i8*** %virname996, align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.107, i32 0, i32 0), i8** %595, align 8
  %596 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %597 = bitcast %struct.cli_exe_section* %596 to i8*
  call void @free(i8* %597) #3
  store i32 1, i32* %retval
  br label %return

if.end.997:                                       ; preds = %land.lhs.true.989, %land.lhs.true.983, %if.then.978
  br label %if.end.998

if.end.998:                                       ; preds = %if.end.997, %if.then.974
  br label %if.end.999

if.end.999:                                       ; preds = %if.end.998, %land.lhs.true.966, %land.lhs.true.963, %land.lhs.true.961, %land.lhs.true.956, %if.end.948
  %598 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options1000 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %598, i32 0, i32 5
  %599 = load i32, i32* %options1000, align 4
  %and1001 = and i32 %599, 512
  %tobool1002 = icmp ne i32 %and1001, 0
  br i1 %tobool1002, label %land.lhs.true.1003, label %if.end.1219

land.lhs.true.1003:                               ; preds = %if.end.999
  %600 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %dconf1004 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %600, i32 0, i32 9
  %601 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf1004, align 8
  %pe1005 = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %601, i32 0, i32 0
  %602 = load i32, i32* %pe1005, align 4
  %and1006 = and i32 %602, 2
  %tobool1007 = icmp ne i32 %and1006, 0
  br i1 %tobool1007, label %land.lhs.true.1008, label %if.end.1219

land.lhs.true.1008:                               ; preds = %land.lhs.true.1003
  %603 = load i32, i32* %epsize, align 4
  %cmp1009 = icmp uge i32 %603, 200
  br i1 %cmp1009, label %land.lhs.true.1011, label %if.end.1219

land.lhs.true.1011:                               ; preds = %land.lhs.true.1008
  %604 = load i16, i16* %nsections, align 2
  %conv1012 = zext i16 %604 to i32
  %sub1013 = sub nsw i32 %conv1012, 1
  %idxprom1014 = sext i32 %sub1013 to i64
  %605 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx1015 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %605, i64 %idxprom1014
  %rsz1016 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx1015, i32 0, i32 3
  %606 = load i32, i32* %rsz1016, align 4
  %cmp1017 = icmp ugt i32 %606, 0
  br i1 %cmp1017, label %land.lhs.true.1019, label %if.end.1219

land.lhs.true.1019:                               ; preds = %land.lhs.true.1011
  %607 = load i16, i16* %nsections, align 2
  %conv1020 = zext i16 %607 to i32
  %sub1021 = sub nsw i32 %conv1020, 1
  %idxprom1022 = sext i32 %sub1021 to i64
  %608 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx1023 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %608, i64 %idxprom1022
  %rsz1024 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx1023, i32 0, i32 3
  %609 = load i32, i32* %rsz1024, align 4
  %cmp1025 = icmp ule i32 4050, %609
  br i1 %cmp1025, label %land.lhs.true.1027, label %if.end.1219

land.lhs.true.1027:                               ; preds = %land.lhs.true.1019
  %610 = load i32, i32* %ep, align 4
  %611 = load i16, i16* %nsections, align 2
  %conv1028 = zext i16 %611 to i32
  %sub1029 = sub nsw i32 %conv1028, 1
  %idxprom1030 = sext i32 %sub1029 to i64
  %612 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx1031 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %612, i64 %idxprom1030
  %raw1032 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx1031, i32 0, i32 2
  %613 = load i32, i32* %raw1032, align 4
  %cmp1033 = icmp uge i32 %610, %613
  br i1 %cmp1033, label %land.lhs.true.1035, label %if.end.1219

land.lhs.true.1035:                               ; preds = %land.lhs.true.1027
  %614 = load i32, i32* %ep, align 4
  %add1036 = add i32 %614, 4050
  %615 = load i16, i16* %nsections, align 2
  %conv1037 = zext i16 %615 to i32
  %sub1038 = sub nsw i32 %conv1037, 1
  %idxprom1039 = sext i32 %sub1038 to i64
  %616 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx1040 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %616, i64 %idxprom1039
  %raw1041 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx1040, i32 0, i32 2
  %617 = load i32, i32* %raw1041, align 4
  %618 = load i16, i16* %nsections, align 2
  %conv1042 = zext i16 %618 to i32
  %sub1043 = sub nsw i32 %conv1042, 1
  %idxprom1044 = sext i32 %sub1043 to i64
  %619 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx1045 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %619, i64 %idxprom1044
  %rsz1046 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx1045, i32 0, i32 3
  %620 = load i32, i32* %rsz1046, align 4
  %add1047 = add i32 %617, %620
  %cmp1048 = icmp ule i32 %add1036, %add1047
  br i1 %cmp1048, label %land.lhs.true.1050, label %if.end.1219

land.lhs.true.1050:                               ; preds = %land.lhs.true.1035
  %621 = load i32, i32* %ep, align 4
  %add1051 = add i32 %621, 4050
  %622 = load i16, i16* %nsections, align 2
  %conv1052 = zext i16 %622 to i32
  %sub1053 = sub nsw i32 %conv1052, 1
  %idxprom1054 = sext i32 %sub1053 to i64
  %623 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx1055 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %623, i64 %idxprom1054
  %raw1056 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx1055, i32 0, i32 2
  %624 = load i32, i32* %raw1056, align 4
  %cmp1057 = icmp ugt i32 %add1051, %624
  br i1 %cmp1057, label %land.lhs.true.1059, label %if.end.1219

land.lhs.true.1059:                               ; preds = %land.lhs.true.1050
  %arrayidx1060 = getelementptr inbounds [4096 x i8], [4096 x i8]* %epbuff, i32 0, i64 1
  %625 = load i8, i8* %arrayidx1060, align 1
  %conv1061 = sext i8 %625 to i32
  %cmp1062 = icmp eq i32 %conv1061, -100
  br i1 %cmp1062, label %land.lhs.true.1064, label %if.end.1219

land.lhs.true.1064:                               ; preds = %land.lhs.true.1059
  %arrayidx1065 = getelementptr inbounds [4096 x i8], [4096 x i8]* %epbuff, i32 0, i64 2
  %626 = load i8, i8* %arrayidx1065, align 1
  %conv1066 = sext i8 %626 to i32
  %cmp1067 = icmp eq i32 %conv1066, 96
  br i1 %cmp1067, label %if.then.1069, label %if.end.1219

if.then.1069:                                     ; preds = %land.lhs.true.1064
  %627 = bitcast [12 x i8]* %kzs to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %627, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @cli_scanpe.kzs, i32 0, i32 0), i64 12, i32 1, i1 false)
  %arraydecay1070 = getelementptr inbounds [12 x i8], [12 x i8]* %kzs, i32 0, i32 0
  store i8* %arraydecay1070, i8** %kzstate, align 8
  %arraydecay1071 = getelementptr inbounds [4096 x i8], [4096 x i8]* %epbuff, i32 0, i32 0
  %add.ptr1072 = getelementptr inbounds i8, i8* %arraydecay1071, i64 3
  store i8* %add.ptr1072, i8** %kzcode, align 8
  store i8 -1, i8* %kzdptr, align 1
  store i8 -1, i8* %kzdsize, align 1
  store i32 197, i32* %kzlen, align 4
  store i32 65535, i32* %kzinitlen, align 4
  store i32 -1, i32* %kzxorlen, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.108, i32 0, i32 0))
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog.1218, %if.then.1069
  %628 = load i8*, i8** %kzstate, align 8
  %629 = load i8, i8* %628, align 1
  %conv1073 = zext i8 %629 to i32
  %cmp1074 = icmp ne i32 %conv1073, 8
  br i1 %cmp1074, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %630 = load i32, i32* %kzlen, align 4
  %cmp1076 = icmp sle i32 %630, 6
  br i1 %cmp1076, label %if.then.1078, label %if.end.1079

if.then.1078:                                     ; preds = %while.body
  br label %while.end

if.end.1079:                                      ; preds = %while.body
  %631 = load i8*, i8** %kzcode, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %631, i32 1
  store i8* %incdec.ptr, i8** %kzcode, align 8
  %632 = load i8, i8* %631, align 1
  store i8 %632, i8* %op, align 1
  %633 = load i32, i32* %kzlen, align 4
  %dec = add nsw i32 %633, -1
  store i32 %dec, i32* %kzlen, align 4
  %634 = load i8*, i8** %kzstate, align 8
  %635 = load i8, i8* %634, align 1
  %conv1080 = zext i8 %635 to i32
  switch i32 %conv1080, label %sw.epilog.1218 [
    i32 0, label %sw.bb.1081
    i32 3, label %sw.bb.1081
    i32 1, label %sw.bb.1123
    i32 2, label %sw.bb.1141
    i32 4, label %sw.bb.1158
    i32 5, label %sw.bb.1165
    i32 6, label %sw.bb.1181
    i32 7, label %sw.bb.1191
  ]

sw.bb.1081:                                       ; preds = %if.end.1079, %if.end.1079
  store i32 0, i32* %opsz, align 4
  %636 = load i8, i8* %op, align 1
  %conv1082 = zext i8 %636 to i32
  switch i32 %conv1082, label %sw.default.1118 [
    i32 129, label %sw.bb.1083
    i32 184, label %sw.bb.1086
    i32 185, label %sw.bb.1086
    i32 186, label %sw.bb.1086
    i32 187, label %sw.bb.1086
    i32 189, label %sw.bb.1086
    i32 190, label %sw.bb.1086
    i32 191, label %sw.bb.1086
    i32 72, label %sw.bb.1101
    i32 73, label %sw.bb.1101
    i32 74, label %sw.bb.1101
    i32 75, label %sw.bb.1101
    i32 77, label %sw.bb.1101
    i32 78, label %sw.bb.1101
    i32 79, label %sw.bb.1101
  ]

sw.bb.1083:                                       ; preds = %sw.bb.1081
  %637 = load i8*, i8** %kzcode, align 8
  %add.ptr1084 = getelementptr inbounds i8, i8* %637, i64 5
  store i8* %add.ptr1084, i8** %kzcode, align 8
  %638 = load i32, i32* %kzlen, align 4
  %sub1085 = sub nsw i32 %638, 5
  store i32 %sub1085, i32* %kzlen, align 4
  br label %sw.epilog.1122

sw.bb.1086:                                       ; preds = %sw.bb.1081, %sw.bb.1081, %sw.bb.1081, %sw.bb.1081, %sw.bb.1081, %sw.bb.1081, %sw.bb.1081
  %639 = load i8*, i8** %kzstate, align 8
  %640 = load i8, i8* %639, align 1
  %conv1087 = zext i8 %640 to i32
  %cmp1088 = icmp eq i32 %conv1087, 3
  br i1 %cmp1088, label %land.lhs.true.1090, label %if.end.1100

land.lhs.true.1090:                               ; preds = %sw.bb.1086
  %641 = load i8*, i8** %kzcode, align 8
  %642 = bitcast i8* %641 to i32*
  %643 = load i32, i32* %642, align 4
  %cmp1091 = icmp eq i32 %643, 4050
  br i1 %cmp1091, label %if.then.1093, label %if.end.1100

if.then.1093:                                     ; preds = %land.lhs.true.1090
  %644 = load i32, i32* %kzlen, align 4
  %sub1094 = sub nsw i32 %644, 5
  store i32 %sub1094, i32* %kzinitlen, align 4
  %645 = load i8, i8* %op, align 1
  %conv1095 = zext i8 %645 to i32
  %sub1096 = sub nsw i32 %conv1095, 184
  %conv1097 = trunc i32 %sub1096 to i8
  store i8 %conv1097, i8* %kzdsize, align 1
  %646 = load i8*, i8** %kzstate, align 8
  %incdec.ptr1098 = getelementptr inbounds i8, i8* %646, i32 1
  store i8* %incdec.ptr1098, i8** %kzstate, align 8
  store i8 4, i8* %op, align 1
  %647 = load i8, i8* %kzdsize, align 1
  %conv1099 = zext i8 %647 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.109, i32 0, i32 0), i32 %conv1099)
  br label %if.end.1100

if.end.1100:                                      ; preds = %if.then.1093, %land.lhs.true.1090, %sw.bb.1086
  store i32 4, i32* %opsz, align 4
  br label %sw.bb.1101

sw.bb.1101:                                       ; preds = %sw.bb.1081, %sw.bb.1081, %sw.bb.1081, %sw.bb.1081, %sw.bb.1081, %sw.bb.1081, %sw.bb.1081, %if.end.1100
  %648 = load i8, i8* %op, align 1
  %conv1102 = zext i8 %648 to i32
  %and1103 = and i32 %conv1102, 7
  %conv1104 = trunc i32 %and1103 to i8
  store i8 %conv1104, i8* %op, align 1
  %649 = load i8, i8* %op, align 1
  %conv1105 = zext i8 %649 to i32
  %650 = load i8, i8* %kzdptr, align 1
  %conv1106 = zext i8 %650 to i32
  %cmp1107 = icmp ne i32 %conv1105, %conv1106
  br i1 %cmp1107, label %land.lhs.true.1109, label %if.end.1117

land.lhs.true.1109:                               ; preds = %sw.bb.1101
  %651 = load i8, i8* %op, align 1
  %conv1110 = zext i8 %651 to i32
  %652 = load i8, i8* %kzdsize, align 1
  %conv1111 = zext i8 %652 to i32
  %cmp1112 = icmp ne i32 %conv1110, %conv1111
  br i1 %cmp1112, label %if.then.1114, label %if.end.1117

if.then.1114:                                     ; preds = %land.lhs.true.1109
  %653 = load i32, i32* %opsz, align 4
  %654 = load i8*, i8** %kzcode, align 8
  %idx.ext = sext i32 %653 to i64
  %add.ptr1115 = getelementptr inbounds i8, i8* %654, i64 %idx.ext
  store i8* %add.ptr1115, i8** %kzcode, align 8
  %655 = load i32, i32* %opsz, align 4
  %656 = load i32, i32* %kzlen, align 4
  %sub1116 = sub nsw i32 %656, %655
  store i32 %sub1116, i32* %kzlen, align 4
  br label %sw.epilog.1122

if.end.1117:                                      ; preds = %land.lhs.true.1109, %sw.bb.1101
  br label %sw.default.1118

sw.default.1118:                                  ; preds = %sw.bb.1081, %if.end.1117
  %657 = load i8*, i8** %kzcode, align 8
  %incdec.ptr1119 = getelementptr inbounds i8, i8* %657, i32 -1
  store i8* %incdec.ptr1119, i8** %kzcode, align 8
  %658 = load i32, i32* %kzlen, align 4
  %inc1120 = add nsw i32 %658, 1
  store i32 %inc1120, i32* %kzlen, align 4
  %659 = load i8*, i8** %kzstate, align 8
  %incdec.ptr1121 = getelementptr inbounds i8, i8* %659, i32 1
  store i8* %incdec.ptr1121, i8** %kzstate, align 8
  br label %sw.epilog.1122

sw.epilog.1122:                                   ; preds = %sw.default.1118, %if.then.1114, %sw.bb.1083
  br label %sw.epilog.1218

sw.bb.1123:                                       ; preds = %if.end.1079
  %660 = load i8, i8* %op, align 1
  %conv1124 = zext i8 %660 to i32
  %cmp1125 = icmp eq i32 %conv1124, 232
  br i1 %cmp1125, label %land.lhs.true.1127, label %if.else.1139

land.lhs.true.1127:                               ; preds = %sw.bb.1123
  %661 = load i8*, i8** %kzcode, align 8
  %662 = bitcast i8* %661 to i32*
  %663 = load i32, i32* %662, align 4
  %cmp1128 = icmp ult i32 %663, 255
  br i1 %cmp1128, label %if.then.1130, label %if.else.1139

if.then.1130:                                     ; preds = %land.lhs.true.1127
  %664 = load i8*, i8** %kzcode, align 8
  %665 = load i8, i8* %664, align 1
  %conv1131 = zext i8 %665 to i32
  %add1132 = add nsw i32 %conv1131, 4
  %666 = load i32, i32* %kzlen, align 4
  %sub1133 = sub nsw i32 %666, %add1132
  store i32 %sub1133, i32* %kzlen, align 4
  %667 = load i8*, i8** %kzcode, align 8
  %668 = load i8, i8* %667, align 1
  %conv1134 = zext i8 %668 to i32
  %add1135 = add nsw i32 %conv1134, 4
  %669 = load i8*, i8** %kzcode, align 8
  %idx.ext1136 = sext i32 %add1135 to i64
  %add.ptr1137 = getelementptr inbounds i8, i8* %669, i64 %idx.ext1136
  store i8* %add.ptr1137, i8** %kzcode, align 8
  %670 = load i8*, i8** %kzstate, align 8
  %incdec.ptr1138 = getelementptr inbounds i8, i8* %670, i32 1
  store i8* %incdec.ptr1138, i8** %kzstate, align 8
  br label %if.end.1140

if.else.1139:                                     ; preds = %land.lhs.true.1127, %sw.bb.1123
  %671 = load i8*, i8** %kzstate, align 8
  store i8 8, i8* %671, align 1
  br label %if.end.1140

if.end.1140:                                      ; preds = %if.else.1139, %if.then.1130
  br label %sw.epilog.1218

sw.bb.1141:                                       ; preds = %if.end.1079
  %672 = load i8, i8* %op, align 1
  %conv1142 = zext i8 %672 to i32
  %and1143 = and i32 %conv1142, 248
  %cmp1144 = icmp eq i32 %and1143, 88
  br i1 %cmp1144, label %land.lhs.true.1146, label %if.else.1156

land.lhs.true.1146:                               ; preds = %sw.bb.1141
  %673 = load i8, i8* %op, align 1
  %conv1147 = zext i8 %673 to i32
  %sub1148 = sub nsw i32 %conv1147, 88
  %conv1149 = trunc i32 %sub1148 to i8
  store i8 %conv1149, i8* %kzdptr, align 1
  %conv1150 = zext i8 %conv1149 to i32
  %cmp1151 = icmp ne i32 %conv1150, 4
  br i1 %cmp1151, label %if.then.1153, label %if.else.1156

if.then.1153:                                     ; preds = %land.lhs.true.1146
  %674 = load i8*, i8** %kzstate, align 8
  %incdec.ptr1154 = getelementptr inbounds i8, i8* %674, i32 1
  store i8* %incdec.ptr1154, i8** %kzstate, align 8
  %675 = load i8, i8* %kzdptr, align 1
  %conv1155 = zext i8 %675 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.110, i32 0, i32 0), i32 %conv1155)
  br label %if.end.1157

if.else.1156:                                     ; preds = %land.lhs.true.1146, %sw.bb.1141
  %676 = load i8*, i8** %kzstate, align 8
  store i8 8, i8* %676, align 1
  br label %if.end.1157

if.end.1157:                                      ; preds = %if.else.1156, %if.then.1153
  br label %sw.epilog.1218

sw.bb.1158:                                       ; preds = %if.end.1079
  %677 = load i8*, i8** %kzstate, align 8
  %incdec.ptr1159 = getelementptr inbounds i8, i8* %677, i32 1
  store i8* %incdec.ptr1159, i8** %kzstate, align 8
  %678 = load i8, i8* %op, align 1
  %conv1160 = zext i8 %678 to i32
  %cmp1161 = icmp eq i32 %conv1160, 62
  br i1 %cmp1161, label %if.then.1163, label %if.end.1164

if.then.1163:                                     ; preds = %sw.bb.1158
  br label %sw.epilog.1218

if.end.1164:                                      ; preds = %sw.bb.1158
  br label %sw.bb.1165

sw.bb.1165:                                       ; preds = %if.end.1079, %if.end.1164
  %679 = load i8, i8* %op, align 1
  %conv1166 = zext i8 %679 to i32
  %cmp1167 = icmp eq i32 %conv1166, 128
  br i1 %cmp1167, label %land.lhs.true.1169, label %if.else.1179

land.lhs.true.1169:                               ; preds = %sw.bb.1165
  %680 = load i8*, i8** %kzcode, align 8
  %681 = load i8, i8* %680, align 1
  %conv1170 = zext i8 %681 to i32
  %682 = load i8, i8* %kzdptr, align 1
  %conv1171 = zext i8 %682 to i32
  %add1172 = add nsw i32 %conv1171, 176
  %cmp1173 = icmp eq i32 %conv1170, %add1172
  br i1 %cmp1173, label %if.then.1175, label %if.else.1179

if.then.1175:                                     ; preds = %land.lhs.true.1169
  %683 = load i32, i32* %kzlen, align 4
  store i32 %683, i32* %kzxorlen, align 4
  %684 = load i8*, i8** %kzcode, align 8
  %add.ptr1176 = getelementptr inbounds i8, i8* %684, i64 6
  store i8* %add.ptr1176, i8** %kzcode, align 8
  %685 = load i32, i32* %kzlen, align 4
  %sub1177 = sub nsw i32 %685, 6
  store i32 %sub1177, i32* %kzlen, align 4
  %686 = load i8*, i8** %kzstate, align 8
  %incdec.ptr1178 = getelementptr inbounds i8, i8* %686, i32 1
  store i8* %incdec.ptr1178, i8** %kzstate, align 8
  br label %if.end.1180

if.else.1179:                                     ; preds = %land.lhs.true.1169, %sw.bb.1165
  %687 = load i8*, i8** %kzstate, align 8
  store i8 8, i8* %687, align 1
  br label %if.end.1180

if.end.1180:                                      ; preds = %if.else.1179, %if.then.1175
  br label %sw.epilog.1218

sw.bb.1181:                                       ; preds = %if.end.1079
  %688 = load i8, i8* %op, align 1
  %conv1182 = zext i8 %688 to i32
  %689 = load i8, i8* %kzdptr, align 1
  %conv1183 = zext i8 %689 to i32
  %add1184 = add nsw i32 %conv1183, 72
  %cmp1185 = icmp eq i32 %conv1182, %add1184
  br i1 %cmp1185, label %if.then.1187, label %if.else.1189

if.then.1187:                                     ; preds = %sw.bb.1181
  %690 = load i8*, i8** %kzstate, align 8
  %incdec.ptr1188 = getelementptr inbounds i8, i8* %690, i32 1
  store i8* %incdec.ptr1188, i8** %kzstate, align 8
  br label %if.end.1190

if.else.1189:                                     ; preds = %sw.bb.1181
  %691 = load i8*, i8** %kzstate, align 8
  store i8 8, i8* %691, align 1
  br label %if.end.1190

if.end.1190:                                      ; preds = %if.else.1189, %if.then.1187
  br label %sw.epilog.1218

sw.bb.1191:                                       ; preds = %if.end.1079
  %692 = load i8, i8* %op, align 1
  %conv1192 = zext i8 %692 to i32
  %693 = load i8, i8* %kzdsize, align 1
  %conv1193 = zext i8 %693 to i32
  %add1194 = add nsw i32 %conv1193, 72
  %cmp1195 = icmp eq i32 %conv1192, %add1194
  br i1 %cmp1195, label %land.lhs.true.1197, label %if.end.1216

land.lhs.true.1197:                               ; preds = %sw.bb.1191
  %694 = load i8*, i8** %kzcode, align 8
  %695 = load i8, i8* %694, align 1
  %conv1198 = zext i8 %695 to i32
  %cmp1199 = icmp eq i32 %conv1198, 117
  br i1 %cmp1199, label %land.lhs.true.1201, label %if.end.1216

land.lhs.true.1201:                               ; preds = %land.lhs.true.1197
  %696 = load i32, i32* %kzlen, align 4
  %697 = load i8*, i8** %kzcode, align 8
  %arrayidx1202 = getelementptr inbounds i8, i8* %697, i64 1
  %698 = load i8, i8* %arrayidx1202, align 1
  %conv1203 = sext i8 %698 to i32
  %sub1204 = sub nsw i32 %696, %conv1203
  %sub1205 = sub nsw i32 %sub1204, 3
  %699 = load i32, i32* %kzinitlen, align 4
  %cmp1206 = icmp sle i32 %sub1205, %699
  br i1 %cmp1206, label %land.lhs.true.1208, label %if.end.1216

land.lhs.true.1208:                               ; preds = %land.lhs.true.1201
  %700 = load i32, i32* %kzlen, align 4
  %701 = load i8*, i8** %kzcode, align 8
  %arrayidx1209 = getelementptr inbounds i8, i8* %701, i64 1
  %702 = load i8, i8* %arrayidx1209, align 1
  %conv1210 = sext i8 %702 to i32
  %sub1211 = sub nsw i32 %700, %conv1210
  %703 = load i32, i32* %kzxorlen, align 4
  %cmp1212 = icmp sge i32 %sub1211, %703
  br i1 %cmp1212, label %if.then.1214, label %if.end.1216

if.then.1214:                                     ; preds = %land.lhs.true.1208
  %704 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname1215 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %704, i32 0, i32 0
  %705 = load i8**, i8*** %virname1215, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.111, i32 0, i32 0), i8** %705, align 8
  %706 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %707 = bitcast %struct.cli_exe_section* %706 to i8*
  call void @free(i8* %707) #3
  store i32 1, i32* %retval
  br label %return

if.end.1216:                                      ; preds = %land.lhs.true.1208, %land.lhs.true.1201, %land.lhs.true.1197, %sw.bb.1191
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.112, i32 0, i32 0))
  %708 = load i8*, i8** %kzstate, align 8
  %incdec.ptr1217 = getelementptr inbounds i8, i8* %708, i32 1
  store i8* %incdec.ptr1217, i8** %kzstate, align 8
  br label %sw.epilog.1218

sw.epilog.1218:                                   ; preds = %if.end.1216, %if.end.1079, %if.end.1190, %if.end.1180, %if.then.1163, %if.end.1157, %if.end.1140, %sw.epilog.1122
  br label %while.cond

while.end:                                        ; preds = %if.then.1078, %while.cond
  br label %if.end.1219

if.end.1219:                                      ; preds = %while.end, %land.lhs.true.1064, %land.lhs.true.1059, %land.lhs.true.1050, %land.lhs.true.1035, %land.lhs.true.1027, %land.lhs.true.1019, %land.lhs.true.1011, %land.lhs.true.1008, %land.lhs.true.1003, %if.end.999
  %709 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options1220 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %709, i32 0, i32 5
  %710 = load i32, i32* %options1220, align 4
  %and1221 = and i32 %710, 512
  %tobool1222 = icmp ne i32 %and1221, 0
  br i1 %tobool1222, label %land.lhs.true.1223, label %if.end.1349

land.lhs.true.1223:                               ; preds = %if.end.1219
  %711 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %dconf1224 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %711, i32 0, i32 9
  %712 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf1224, align 8
  %pe1225 = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %712, i32 0, i32 0
  %713 = load i32, i32* %pe1225, align 4
  %and1226 = and i32 %713, 4
  %tobool1227 = icmp ne i32 %and1226, 0
  br i1 %tobool1227, label %land.lhs.true.1228, label %if.end.1349

land.lhs.true.1228:                               ; preds = %land.lhs.true.1223
  %714 = load i32, i32* %dll, align 4
  %tobool1229 = icmp ne i32 %714, 0
  br i1 %tobool1229, label %if.end.1349, label %land.lhs.true.1230

land.lhs.true.1230:                               ; preds = %land.lhs.true.1228
  %715 = load i16, i16* %nsections, align 2
  %conv1231 = zext i16 %715 to i32
  %cmp1232 = icmp sgt i32 %conv1231, 1
  br i1 %cmp1232, label %land.lhs.true.1234, label %if.end.1349

land.lhs.true.1234:                               ; preds = %land.lhs.true.1230
  %716 = load i16, i16* %nsections, align 2
  %conv1235 = zext i16 %716 to i32
  %sub1236 = sub nsw i32 %conv1235, 1
  %idxprom1237 = sext i32 %sub1236 to i64
  %717 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx1238 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %717, i64 %idxprom1237
  %chr1239 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx1238, i32 0, i32 4
  %718 = load i32, i32* %chr1239, align 4
  %and1240 = and i32 %718, -2147483648
  %tobool1241 = icmp ne i32 %and1240, 0
  br i1 %tobool1241, label %if.then.1242, label %if.end.1349

if.then.1242:                                     ; preds = %land.lhs.true.1234
  store i32 0, i32* %dam, align 4
  %719 = load i16, i16* %nsections, align 2
  %conv1243 = zext i16 %719 to i32
  %sub1244 = sub nsw i32 %conv1243, 1
  %idxprom1245 = sext i32 %sub1244 to i64
  %720 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx1246 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %720, i64 %idxprom1245
  %uvsz1247 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx1246, i32 0, i32 6
  %721 = load i32, i32* %uvsz1247, align 4
  store i32 %721, i32* %vsize, align 4
  %722 = load i16, i16* %nsections, align 2
  %conv1248 = zext i16 %722 to i32
  %sub1249 = sub nsw i32 %conv1248, 1
  %idxprom1250 = sext i32 %sub1249 to i64
  %723 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx1251 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %723, i64 %idxprom1250
  %rsz1252 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx1251, i32 0, i32 3
  %724 = load i32, i32* %rsz1252, align 4
  store i32 %724, i32* %rsize, align 4
  %725 = load i32, i32* %rsize, align 4
  %726 = load i16, i16* %nsections, align 2
  %conv1253 = zext i16 %726 to i32
  %sub1254 = sub nsw i32 %conv1253, 1
  %idxprom1255 = sext i32 %sub1254 to i64
  %727 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx1256 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %727, i64 %idxprom1255
  %ursz1257 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx1256, i32 0, i32 8
  %728 = load i32, i32* %ursz1257, align 4
  %cmp1258 = icmp ult i32 %725, %728
  br i1 %cmp1258, label %if.then.1260, label %if.end.1266

if.then.1260:                                     ; preds = %if.then.1242
  %729 = load i16, i16* %nsections, align 2
  %conv1261 = zext i16 %729 to i32
  %sub1262 = sub nsw i32 %conv1261, 1
  %idxprom1263 = sext i32 %sub1262 to i64
  %730 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx1264 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %730, i64 %idxprom1263
  %ursz1265 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx1264, i32 0, i32 8
  %731 = load i32, i32* %ursz1265, align 4
  store i32 %731, i32* %rsize, align 4
  store i32 1, i32* %dam, align 4
  br label %if.end.1266

if.end.1266:                                      ; preds = %if.then.1260, %if.then.1242
  %732 = load i32, i32* %vsize, align 4
  %cmp1267 = icmp uge i32 %732, 24876
  br i1 %cmp1267, label %land.lhs.true.1269, label %if.else.1306

land.lhs.true.1269:                               ; preds = %if.end.1266
  %733 = load i32, i32* %rsize, align 4
  %cmp1270 = icmp uge i32 %733, 24876
  br i1 %cmp1270, label %land.lhs.true.1272, label %if.else.1306

land.lhs.true.1272:                               ; preds = %land.lhs.true.1269
  %734 = load i32, i32* %vsize, align 4
  %and1273 = and i32 %734, 255
  %cmp1274 = icmp eq i32 %and1273, 236
  br i1 %cmp1274, label %if.then.1276, label %if.else.1306

if.then.1276:                                     ; preds = %land.lhs.true.1272
  %735 = load i32, i32* %rsize, align 4
  %cmp1277 = icmp ult i32 %735, 28672
  br i1 %cmp1277, label %cond.true.1279, label %cond.false.1280

cond.true.1279:                                   ; preds = %if.then.1276
  %736 = load i32, i32* %rsize, align 4
  br label %cond.end.1281

cond.false.1280:                                  ; preds = %if.then.1276
  br label %cond.end.1281

cond.end.1281:                                    ; preds = %cond.false.1280, %cond.true.1279
  %cond1282 = phi i32 [ %736, %cond.true.1279 ], [ 28672, %cond.false.1280 ]
  store i32 %cond1282, i32* %bw, align 4
  %737 = load i32, i32* %desc.addr, align 4
  %738 = load i16, i16* %nsections, align 2
  %conv1283 = zext i16 %738 to i32
  %sub1284 = sub nsw i32 %conv1283, 1
  %idxprom1285 = sext i32 %sub1284 to i64
  %739 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx1286 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %739, i64 %idxprom1285
  %raw1287 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx1286, i32 0, i32 2
  %740 = load i32, i32* %raw1287, align 4
  %741 = load i32, i32* %rsize, align 4
  %add1288 = add i32 %740, %741
  %742 = load i32, i32* %bw, align 4
  %sub1289 = sub i32 %add1288, %742
  %conv1290 = zext i32 %sub1289 to i64
  %call1291 = call i64 @lseek(i32 %737, i64 %conv1290, i32 0) #3
  %743 = load i32, i32* %desc.addr, align 4
  %arraydecay1292 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buff, i32 0, i32 0
  %call1293 = call i32 @cli_readn(i32 %743, i8* %arraydecay1292, i32 4096)
  %cmp1294 = icmp eq i32 %call1293, 4096
  br i1 %cmp1294, label %if.then.1296, label %if.end.1305

if.then.1296:                                     ; preds = %cond.end.1281
  %arraydecay1297 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buff, i32 0, i32 0
  %call1298 = call i8* @cli_memstr(i8* %arraydecay1297, i32 4091, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.113, i32 0, i32 0), i32 5)
  %tobool1299 = icmp ne i8* %call1298, null
  br i1 %tobool1299, label %if.then.1300, label %if.end.1304

if.then.1300:                                     ; preds = %if.then.1296
  %744 = load i32, i32* %dam, align 4
  %tobool1301 = icmp ne i32 %744, 0
  %cond1302 = select i1 %tobool1301, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.114, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.115, i32 0, i32 0)
  %745 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname1303 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %745, i32 0, i32 0
  %746 = load i8**, i8*** %virname1303, align 8
  store i8* %cond1302, i8** %746, align 8
  %747 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %748 = bitcast %struct.cli_exe_section* %747 to i8*
  call void @free(i8* %748) #3
  store i32 1, i32* %retval
  br label %return

if.end.1304:                                      ; preds = %if.then.1296
  br label %if.end.1305

if.end.1305:                                      ; preds = %if.end.1304, %cond.end.1281
  br label %if.end.1348

if.else.1306:                                     ; preds = %land.lhs.true.1272, %land.lhs.true.1269, %if.end.1266
  %749 = load i32, i32* %rsize, align 4
  %cmp1307 = icmp uge i32 %749, 28672
  br i1 %cmp1307, label %land.lhs.true.1309, label %if.end.1347

land.lhs.true.1309:                               ; preds = %if.else.1306
  %750 = load i32, i32* %vsize, align 4
  %cmp1310 = icmp uge i32 %750, 28672
  br i1 %cmp1310, label %land.lhs.true.1312, label %if.end.1347

land.lhs.true.1312:                               ; preds = %land.lhs.true.1309
  %751 = load i32, i32* %vsize, align 4
  %and1313 = and i32 %751, 255
  %cmp1314 = icmp eq i32 %and1313, 237
  br i1 %cmp1314, label %if.then.1316, label %if.end.1347

if.then.1316:                                     ; preds = %land.lhs.true.1312
  %752 = load i32, i32* %rsize, align 4
  %cmp1318 = icmp ult i32 %752, 32768
  br i1 %cmp1318, label %cond.true.1320, label %cond.false.1321

cond.true.1320:                                   ; preds = %if.then.1316
  %753 = load i32, i32* %rsize, align 4
  br label %cond.end.1322

cond.false.1321:                                  ; preds = %if.then.1316
  br label %cond.end.1322

cond.end.1322:                                    ; preds = %cond.false.1321, %cond.true.1320
  %cond1323 = phi i32 [ %753, %cond.true.1320 ], [ 32768, %cond.false.1321 ]
  store i32 %cond1323, i32* %bw1317, align 4
  %754 = load i32, i32* %desc.addr, align 4
  %755 = load i16, i16* %nsections, align 2
  %conv1324 = zext i16 %755 to i32
  %sub1325 = sub nsw i32 %conv1324, 1
  %idxprom1326 = sext i32 %sub1325 to i64
  %756 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx1327 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %756, i64 %idxprom1326
  %raw1328 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx1327, i32 0, i32 2
  %757 = load i32, i32* %raw1328, align 4
  %758 = load i32, i32* %rsize, align 4
  %add1329 = add i32 %757, %758
  %759 = load i32, i32* %bw1317, align 4
  %sub1330 = sub i32 %add1329, %759
  %conv1331 = zext i32 %sub1330 to i64
  %call1332 = call i64 @lseek(i32 %754, i64 %conv1331, i32 0) #3
  %760 = load i32, i32* %desc.addr, align 4
  %arraydecay1333 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buff, i32 0, i32 0
  %call1334 = call i32 @cli_readn(i32 %760, i8* %arraydecay1333, i32 4096)
  %cmp1335 = icmp eq i32 %call1334, 4096
  br i1 %cmp1335, label %if.then.1337, label %if.end.1346

if.then.1337:                                     ; preds = %cond.end.1322
  %arraydecay1338 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buff, i32 0, i32 0
  %call1339 = call i8* @cli_memstr(i8* %arraydecay1338, i32 4091, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.116, i32 0, i32 0), i32 5)
  %tobool1340 = icmp ne i8* %call1339, null
  br i1 %tobool1340, label %if.then.1341, label %if.end.1345

if.then.1341:                                     ; preds = %if.then.1337
  %761 = load i32, i32* %dam, align 4
  %tobool1342 = icmp ne i32 %761, 0
  %cond1343 = select i1 %tobool1342, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.117, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.118, i32 0, i32 0)
  %762 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname1344 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %762, i32 0, i32 0
  %763 = load i8**, i8*** %virname1344, align 8
  store i8* %cond1343, i8** %763, align 8
  %764 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %765 = bitcast %struct.cli_exe_section* %764 to i8*
  call void @free(i8* %765) #3
  store i32 1, i32* %retval
  br label %return

if.end.1345:                                      ; preds = %if.then.1337
  br label %if.end.1346

if.end.1346:                                      ; preds = %if.end.1345, %cond.end.1322
  br label %if.end.1347

if.end.1347:                                      ; preds = %if.end.1346, %land.lhs.true.1312, %land.lhs.true.1309, %if.else.1306
  br label %if.end.1348

if.end.1348:                                      ; preds = %if.end.1347, %if.end.1305
  br label %if.end.1349

if.end.1349:                                      ; preds = %if.end.1348, %land.lhs.true.1234, %land.lhs.true.1230, %land.lhs.true.1228, %land.lhs.true.1223, %if.end.1219
  br label %while.cond.1350

while.cond.1350:                                  ; preds = %if.end.1349
  %766 = load i8, i8* %polipos, align 1
  %conv1351 = zext i8 %766 to i32
  %tobool1352 = icmp ne i32 %conv1351, 0
  br i1 %tobool1352, label %land.lhs.true.1353, label %land.end.1387

land.lhs.true.1353:                               ; preds = %while.cond.1350
  %767 = load i32, i32* %dll, align 4
  %tobool1354 = icmp ne i32 %767, 0
  br i1 %tobool1354, label %land.end.1387, label %land.lhs.true.1355

land.lhs.true.1355:                               ; preds = %land.lhs.true.1353
  %768 = load i16, i16* %nsections, align 2
  %conv1356 = zext i16 %768 to i32
  %cmp1357 = icmp sgt i32 %conv1356, 2
  br i1 %cmp1357, label %land.lhs.true.1359, label %land.end.1387

land.lhs.true.1359:                               ; preds = %land.lhs.true.1355
  %769 = load i16, i16* %nsections, align 2
  %conv1360 = zext i16 %769 to i32
  %cmp1361 = icmp slt i32 %conv1360, 13
  br i1 %cmp1361, label %land.lhs.true.1363, label %land.end.1387

land.lhs.true.1363:                               ; preds = %land.lhs.true.1359
  %770 = load i32, i32* %e_lfanew, align 4
  %cmp1364 = icmp ule i32 %770, 2048
  br i1 %cmp1364, label %land.lhs.true.1366, label %land.end.1387

land.lhs.true.1366:                               ; preds = %land.lhs.true.1363
  %opt321367 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr32*
  %Subsystem1368 = getelementptr inbounds %struct.pe_image_optional_hdr32, %struct.pe_image_optional_hdr32* %opt321367, i32 0, i32 22
  %771 = load i16, i16* %Subsystem1368, align 2
  %conv1369 = zext i16 %771 to i32
  %cmp1370 = icmp eq i32 %conv1369, 2
  br i1 %cmp1370, label %land.lhs.true.1378, label %lor.lhs.false.1372

lor.lhs.false.1372:                               ; preds = %land.lhs.true.1366
  %opt321373 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr32*
  %Subsystem1374 = getelementptr inbounds %struct.pe_image_optional_hdr32, %struct.pe_image_optional_hdr32* %opt321373, i32 0, i32 22
  %772 = load i16, i16* %Subsystem1374, align 2
  %conv1375 = zext i16 %772 to i32
  %cmp1376 = icmp eq i32 %conv1375, 3
  br i1 %cmp1376, label %land.lhs.true.1378, label %land.end.1387

land.lhs.true.1378:                               ; preds = %lor.lhs.false.1372, %land.lhs.true.1366
  %Machine1379 = getelementptr inbounds %struct.pe_image_file_hdr, %struct.pe_image_file_hdr* %file_hdr, i32 0, i32 1
  %773 = load i16, i16* %Machine1379, align 2
  %conv1380 = zext i16 %773 to i32
  %cmp1381 = icmp eq i32 %conv1380, 332
  br i1 %cmp1381, label %land.rhs.1383, label %land.end.1387

land.rhs.1383:                                    ; preds = %land.lhs.true.1378
  %opt321384 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr32*
  %SizeOfStackReserve = getelementptr inbounds %struct.pe_image_optional_hdr32, %struct.pe_image_optional_hdr32* %opt321384, i32 0, i32 24
  %774 = load i32, i32* %SizeOfStackReserve, align 4
  %cmp1385 = icmp uge i32 %774, 524288
  br label %land.end.1387

land.end.1387:                                    ; preds = %land.rhs.1383, %land.lhs.true.1378, %lor.lhs.false.1372, %land.lhs.true.1363, %land.lhs.true.1359, %land.lhs.true.1355, %land.lhs.true.1353, %while.cond.1350
  %775 = phi i1 [ false, %land.lhs.true.1378 ], [ false, %lor.lhs.false.1372 ], [ false, %land.lhs.true.1363 ], [ false, %land.lhs.true.1359 ], [ false, %land.lhs.true.1355 ], [ false, %land.lhs.true.1353 ], [ false, %while.cond.1350 ], [ %cmp1385, %land.rhs.1383 ]
  br i1 %775, label %while.body.1388, label %while.end.1575

while.body.1388:                                  ; preds = %land.end.1387
  store i32* null, i32** %jumps, align 8
  store i32 0, i32* %xsjs, align 4
  %776 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx1389 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %776, i64 0
  %rsz1390 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx1389, i32 0, i32 3
  %777 = load i32, i32* %rsz1390, align 4
  %cmp1391 = icmp ugt i32 %777, 184549376
  br i1 %cmp1391, label %if.then.1393, label %if.end.1394

if.then.1393:                                     ; preds = %while.body.1388
  br label %while.end.1575

if.end.1394:                                      ; preds = %while.body.1388
  %778 = load i32, i32* %desc.addr, align 4
  %779 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx1395 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %779, i64 0
  %call1396 = call i64 @cli_seeksect(i32 %778, %struct.cli_exe_section* %arrayidx1395)
  %tobool1397 = icmp ne i64 %call1396, 0
  br i1 %tobool1397, label %if.end.1399, label %if.then.1398

if.then.1398:                                     ; preds = %if.end.1394
  br label %while.end.1575

if.end.1399:                                      ; preds = %if.end.1394
  %780 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx1400 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %780, i64 0
  %rsz1401 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx1400, i32 0, i32 3
  %781 = load i32, i32* %rsz1401, align 4
  %conv1402 = zext i32 %781 to i64
  %call1403 = call i8* @cli_malloc(i64 %conv1402)
  store i8* %call1403, i8** %code, align 8
  %tobool1404 = icmp ne i8* %call1403, null
  br i1 %tobool1404, label %if.end.1406, label %if.then.1405

if.then.1405:                                     ; preds = %if.end.1399
  %782 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %783 = bitcast %struct.cli_exe_section* %782 to i8*
  call void @free(i8* %783) #3
  store i32 -114, i32* %retval
  br label %return

if.end.1406:                                      ; preds = %if.end.1399
  %784 = load i32, i32* %desc.addr, align 4
  %785 = load i8*, i8** %code, align 8
  %786 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx1407 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %786, i64 0
  %rsz1408 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx1407, i32 0, i32 3
  %787 = load i32, i32* %rsz1408, align 4
  %call1409 = call i32 @cli_readn(i32 %784, i8* %785, i32 %787)
  %788 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx1410 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %788, i64 0
  %rsz1411 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx1410, i32 0, i32 3
  %789 = load i32, i32* %rsz1411, align 4
  %cmp1412 = icmp ne i32 %call1409, %789
  br i1 %cmp1412, label %if.then.1414, label %if.end.1415

if.then.1414:                                     ; preds = %if.end.1406
  %790 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %791 = bitcast %struct.cli_exe_section* %790 to i8*
  call void @free(i8* %791) #3
  store i32 -123, i32* %retval
  br label %return

if.end.1415:                                      ; preds = %if.end.1406
  store i32 0, i32* %i, align 4
  br label %for.cond.1416

for.cond.1416:                                    ; preds = %for.inc.1524, %if.end.1415
  %792 = load i32, i32* %i, align 4
  %793 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx1417 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %793, i64 0
  %rsz1418 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx1417, i32 0, i32 3
  %794 = load i32, i32* %rsz1418, align 4
  %sub1419 = sub i32 %794, 5
  %cmp1420 = icmp ult i32 %792, %sub1419
  br i1 %cmp1420, label %for.body.1422, label %for.end.1526

for.body.1422:                                    ; preds = %for.cond.1416
  %795 = load i32, i32* %i, align 4
  %idxprom1423 = zext i32 %795 to i64
  %796 = load i8*, i8** %code, align 8
  %arrayidx1424 = getelementptr inbounds i8, i8* %796, i64 %idxprom1423
  %797 = load i8, i8* %arrayidx1424, align 1
  %conv1425 = zext i8 %797 to i32
  %sub1426 = sub nsw i32 %conv1425, 232
  %conv1427 = trunc i32 %sub1426 to i8
  %conv1428 = zext i8 %conv1427 to i32
  %cmp1429 = icmp sgt i32 %conv1428, 1
  br i1 %cmp1429, label %if.then.1431, label %if.end.1432

if.then.1431:                                     ; preds = %for.body.1422
  br label %for.inc.1524

if.end.1432:                                      ; preds = %for.body.1422
  %798 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx1433 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %798, i64 0
  %rva1434 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx1433, i32 0, i32 0
  %799 = load i32, i32* %rva1434, align 4
  %800 = load i32, i32* %i, align 4
  %add1435 = add i32 %799, %800
  %add1436 = add i32 %add1435, 5
  %801 = load i32, i32* %i, align 4
  %add1437 = add i32 %801, 1
  %idxprom1438 = zext i32 %add1437 to i64
  %802 = load i8*, i8** %code, align 8
  %arrayidx1439 = getelementptr inbounds i8, i8* %802, i64 %idxprom1438
  %803 = bitcast i8* %arrayidx1439 to i32*
  %804 = load i32, i32* %803, align 4
  %add1440 = add i32 %add1436, %804
  %805 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %806 = load i16, i16* %nsections, align 2
  %807 = load i64, i64* %fsize, align 8
  %808 = load i32, i32* %hdr_size, align 4
  %call1441 = call i32 @cli_rawaddr(i32 %add1440, %struct.cli_exe_section* %805, i16 zeroext %806, i32* %err, i64 %807, i32 %808)
  store i32 %call1441, i32* %jump, align 4
  %809 = load i32, i32* %err, align 4
  %tobool1442 = icmp ne i32 %809, 0
  br i1 %tobool1442, label %if.then.1479, label %lor.lhs.false.1443

lor.lhs.false.1443:                               ; preds = %if.end.1432
  %810 = load i8, i8* %polipos, align 1
  %idxprom1444 = zext i8 %810 to i64
  %811 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx1445 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %811, i64 %idxprom1444
  %rsz1446 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx1445, i32 0, i32 3
  %812 = load i32, i32* %rsz1446, align 4
  %cmp1447 = icmp ugt i32 %812, 0
  br i1 %cmp1447, label %land.lhs.true.1449, label %if.then.1479

land.lhs.true.1449:                               ; preds = %lor.lhs.false.1443
  %813 = load i8, i8* %polipos, align 1
  %idxprom1450 = zext i8 %813 to i64
  %814 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx1451 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %814, i64 %idxprom1450
  %rsz1452 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx1451, i32 0, i32 3
  %815 = load i32, i32* %rsz1452, align 4
  %cmp1453 = icmp ule i32 9, %815
  br i1 %cmp1453, label %land.lhs.true.1455, label %if.then.1479

land.lhs.true.1455:                               ; preds = %land.lhs.true.1449
  %816 = load i32, i32* %jump, align 4
  %817 = load i8, i8* %polipos, align 1
  %idxprom1456 = zext i8 %817 to i64
  %818 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx1457 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %818, i64 %idxprom1456
  %raw1458 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx1457, i32 0, i32 2
  %819 = load i32, i32* %raw1458, align 4
  %cmp1459 = icmp uge i32 %816, %819
  br i1 %cmp1459, label %land.lhs.true.1461, label %if.then.1479

land.lhs.true.1461:                               ; preds = %land.lhs.true.1455
  %820 = load i32, i32* %jump, align 4
  %add1462 = add i32 %820, 9
  %821 = load i8, i8* %polipos, align 1
  %idxprom1463 = zext i8 %821 to i64
  %822 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx1464 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %822, i64 %idxprom1463
  %raw1465 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx1464, i32 0, i32 2
  %823 = load i32, i32* %raw1465, align 4
  %824 = load i8, i8* %polipos, align 1
  %idxprom1466 = zext i8 %824 to i64
  %825 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx1467 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %825, i64 %idxprom1466
  %rsz1468 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx1467, i32 0, i32 3
  %826 = load i32, i32* %rsz1468, align 4
  %add1469 = add i32 %823, %826
  %cmp1470 = icmp ule i32 %add1462, %add1469
  br i1 %cmp1470, label %land.lhs.true.1472, label %if.then.1479

land.lhs.true.1472:                               ; preds = %land.lhs.true.1461
  %827 = load i32, i32* %jump, align 4
  %add1473 = add i32 %827, 9
  %828 = load i8, i8* %polipos, align 1
  %idxprom1474 = zext i8 %828 to i64
  %829 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx1475 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %829, i64 %idxprom1474
  %raw1476 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx1475, i32 0, i32 2
  %830 = load i32, i32* %raw1476, align 4
  %cmp1477 = icmp ugt i32 %add1473, %830
  br i1 %cmp1477, label %if.end.1480, label %if.then.1479

if.then.1479:                                     ; preds = %land.lhs.true.1472, %land.lhs.true.1461, %land.lhs.true.1455, %land.lhs.true.1449, %lor.lhs.false.1443, %if.end.1432
  br label %for.inc.1524

if.end.1480:                                      ; preds = %land.lhs.true.1472
  %831 = load i32, i32* %xsjs, align 4
  %rem1481 = urem i32 %831, 128
  %cmp1482 = icmp eq i32 %rem1481, 0
  br i1 %cmp1482, label %if.then.1484, label %if.end.1496

if.then.1484:                                     ; preds = %if.end.1480
  %832 = load i32, i32* %xsjs, align 4
  %cmp1485 = icmp eq i32 %832, 1280
  br i1 %cmp1485, label %if.then.1487, label %if.end.1488

if.then.1487:                                     ; preds = %if.then.1484
  br label %for.end.1526

if.end.1488:                                      ; preds = %if.then.1484
  %833 = load i32*, i32** %jumps, align 8
  %834 = bitcast i32* %833 to i8*
  %835 = load i32, i32* %xsjs, align 4
  %add1489 = add i32 %835, 128
  %conv1490 = zext i32 %add1489 to i64
  %mul1491 = mul i64 %conv1490, 4
  %call1492 = call i8* @cli_realloc2(i8* %834, i64 %mul1491)
  %836 = bitcast i8* %call1492 to i32*
  store i32* %836, i32** %jumps, align 8
  %tobool1493 = icmp ne i32* %836, null
  br i1 %tobool1493, label %if.end.1495, label %if.then.1494

if.then.1494:                                     ; preds = %if.end.1488
  %837 = load i8*, i8** %code, align 8
  call void @free(i8* %837) #3
  %838 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %839 = bitcast %struct.cli_exe_section* %838 to i8*
  call void @free(i8* %839) #3
  store i32 -114, i32* %retval
  br label %return

if.end.1495:                                      ; preds = %if.end.1488
  br label %if.end.1496

if.end.1496:                                      ; preds = %if.end.1495, %if.end.1480
  store i32 0, i32* %j, align 4
  br label %for.cond.1497

for.cond.1497:                                    ; preds = %for.inc.1518, %if.end.1496
  %840 = load i32, i32* %j, align 4
  %841 = load i32, i32* %xsjs, align 4
  %cmp1498 = icmp ult i32 %840, %841
  br i1 %cmp1498, label %for.body.1500, label %for.end.1520

for.body.1500:                                    ; preds = %for.cond.1497
  %842 = load i32, i32* %j, align 4
  %idxprom1501 = zext i32 %842 to i64
  %843 = load i32*, i32** %jumps, align 8
  %arrayidx1502 = getelementptr inbounds i32, i32* %843, i64 %idxprom1501
  %844 = load i32, i32* %arrayidx1502, align 4
  %845 = load i32, i32* %jump, align 4
  %cmp1503 = icmp ult i32 %844, %845
  br i1 %cmp1503, label %if.then.1505, label %if.end.1506

if.then.1505:                                     ; preds = %for.body.1500
  br label %for.inc.1518

if.end.1506:                                      ; preds = %for.body.1500
  %846 = load i32, i32* %j, align 4
  %idxprom1507 = zext i32 %846 to i64
  %847 = load i32*, i32** %jumps, align 8
  %arrayidx1508 = getelementptr inbounds i32, i32* %847, i64 %idxprom1507
  %848 = load i32, i32* %arrayidx1508, align 4
  %849 = load i32, i32* %jump, align 4
  %cmp1509 = icmp eq i32 %848, %849
  br i1 %cmp1509, label %if.then.1511, label %if.end.1513

if.then.1511:                                     ; preds = %if.end.1506
  %850 = load i32, i32* %xsjs, align 4
  %dec1512 = add i32 %850, -1
  store i32 %dec1512, i32* %xsjs, align 4
  br label %for.end.1520

if.end.1513:                                      ; preds = %if.end.1506
  %851 = load i32, i32* %j, align 4
  %idxprom1514 = zext i32 %851 to i64
  %852 = load i32*, i32** %jumps, align 8
  %arrayidx1515 = getelementptr inbounds i32, i32* %852, i64 %idxprom1514
  %853 = load i32, i32* %arrayidx1515, align 4
  store i32 %853, i32* %jold, align 4
  %854 = load i32, i32* %jump, align 4
  %855 = load i32, i32* %j, align 4
  %idxprom1516 = zext i32 %855 to i64
  %856 = load i32*, i32** %jumps, align 8
  %arrayidx1517 = getelementptr inbounds i32, i32* %856, i64 %idxprom1516
  store i32 %854, i32* %arrayidx1517, align 4
  %857 = load i32, i32* %jold, align 4
  store i32 %857, i32* %jump, align 4
  br label %for.inc.1518

for.inc.1518:                                     ; preds = %if.end.1513, %if.then.1505
  %858 = load i32, i32* %j, align 4
  %inc1519 = add i32 %858, 1
  store i32 %inc1519, i32* %j, align 4
  br label %for.cond.1497

for.end.1520:                                     ; preds = %if.then.1511, %for.cond.1497
  %859 = load i32, i32* %jump, align 4
  %860 = load i32, i32* %j, align 4
  %idxprom1521 = zext i32 %860 to i64
  %861 = load i32*, i32** %jumps, align 8
  %arrayidx1522 = getelementptr inbounds i32, i32* %861, i64 %idxprom1521
  store i32 %859, i32* %arrayidx1522, align 4
  %862 = load i32, i32* %xsjs, align 4
  %inc1523 = add i32 %862, 1
  store i32 %inc1523, i32* %xsjs, align 4
  br label %for.inc.1524

for.inc.1524:                                     ; preds = %for.end.1520, %if.then.1479, %if.then.1431
  %863 = load i32, i32* %i, align 4
  %inc1525 = add i32 %863, 1
  store i32 %inc1525, i32* %i, align 4
  br label %for.cond.1416

for.end.1526:                                     ; preds = %if.then.1487, %for.cond.1416
  %864 = load i8*, i8** %code, align 8
  call void @free(i8* %864) #3
  %865 = load i32, i32* %xsjs, align 4
  %tobool1527 = icmp ne i32 %865, 0
  br i1 %tobool1527, label %if.end.1529, label %if.then.1528

if.then.1528:                                     ; preds = %for.end.1526
  br label %while.end.1575

if.end.1529:                                      ; preds = %for.end.1526
  %866 = load i32, i32* %xsjs, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.119, i32 0, i32 0), i32 %866)
  store i32 0, i32* %i, align 4
  br label %for.cond.1530

for.cond.1530:                                    ; preds = %for.inc.1572, %if.end.1529
  %867 = load i32, i32* %i, align 4
  %868 = load i32, i32* %xsjs, align 4
  %cmp1531 = icmp ult i32 %867, %868
  br i1 %cmp1531, label %for.body.1533, label %for.end.1574

for.body.1533:                                    ; preds = %for.cond.1530
  %869 = load i32, i32* %desc.addr, align 4
  %870 = load i32, i32* %i, align 4
  %idxprom1534 = zext i32 %870 to i64
  %871 = load i32*, i32** %jumps, align 8
  %arrayidx1535 = getelementptr inbounds i32, i32* %871, i64 %idxprom1534
  %872 = load i32, i32* %arrayidx1535, align 4
  %conv1536 = zext i32 %872 to i64
  %call1537 = call i64 @lseek(i32 %869, i64 %conv1536, i32 0) #3
  %873 = load i32, i32* %desc.addr, align 4
  %arraydecay1538 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buff, i32 0, i32 0
  %call1539 = call i32 @cli_readn(i32 %873, i8* %arraydecay1538, i32 9)
  %cmp1540 = icmp ne i32 %call1539, 9
  br i1 %cmp1540, label %if.then.1542, label %if.end.1543

if.then.1542:                                     ; preds = %for.body.1533
  br label %for.inc.1572

if.end.1543:                                      ; preds = %for.body.1533
  %arraydecay1544 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buff, i32 0, i32 0
  %874 = bitcast i8* %arraydecay1544 to i32*
  %875 = load i32, i32* %874, align 4
  store i32 %875, i32* %jump, align 4
  %cmp1545 = icmp eq i32 %875, 1626114901
  br i1 %cmp1545, label %if.then.1569, label %lor.lhs.false.1547

lor.lhs.false.1547:                               ; preds = %if.end.1543
  %arrayidx1548 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buff, i32 0, i64 4
  %876 = load i8, i8* %arrayidx1548, align 1
  %conv1549 = sext i8 %876 to i32
  %cmp1550 = icmp eq i32 %conv1549, -20
  br i1 %cmp1550, label %land.lhs.true.1552, label %if.end.1571

land.lhs.true.1552:                               ; preds = %lor.lhs.false.1547
  %877 = load i32, i32* %jump, align 4
  %cmp1553 = icmp eq i32 %877, -2081649835
  br i1 %cmp1553, label %land.lhs.true.1555, label %lor.lhs.false.1560

land.lhs.true.1555:                               ; preds = %land.lhs.true.1552
  %arrayidx1556 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buff, i32 0, i64 6
  %878 = load i8, i8* %arrayidx1556, align 1
  %conv1557 = sext i8 %878 to i32
  %cmp1558 = icmp eq i32 %conv1557, 96
  br i1 %cmp1558, label %if.then.1569, label %lor.lhs.false.1560

lor.lhs.false.1560:                               ; preds = %land.lhs.true.1555, %land.lhs.true.1552
  %879 = load i32, i32* %jump, align 4
  %cmp1561 = icmp eq i32 %879, -2115204267
  br i1 %cmp1561, label %land.lhs.true.1563, label %if.end.1571

land.lhs.true.1563:                               ; preds = %lor.lhs.false.1560
  %arrayidx1564 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buff, i32 0, i64 7
  %880 = load i8, i8* %arrayidx1564, align 1
  %tobool1565 = icmp ne i8 %880, 0
  br i1 %tobool1565, label %if.end.1571, label %land.lhs.true.1566

land.lhs.true.1566:                               ; preds = %land.lhs.true.1563
  %arrayidx1567 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buff, i32 0, i64 8
  %881 = load i8, i8* %arrayidx1567, align 1
  %tobool1568 = icmp ne i8 %881, 0
  br i1 %tobool1568, label %if.end.1571, label %if.then.1569

if.then.1569:                                     ; preds = %land.lhs.true.1566, %land.lhs.true.1555, %if.end.1543
  %882 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname1570 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %882, i32 0, i32 0
  %883 = load i8**, i8*** %virname1570, align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.120, i32 0, i32 0), i8** %883, align 8
  %884 = load i32*, i32** %jumps, align 8
  %885 = bitcast i32* %884 to i8*
  call void @free(i8* %885) #3
  %886 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %887 = bitcast %struct.cli_exe_section* %886 to i8*
  call void @free(i8* %887) #3
  store i32 1, i32* %retval
  br label %return

if.end.1571:                                      ; preds = %land.lhs.true.1566, %land.lhs.true.1563, %lor.lhs.false.1560, %lor.lhs.false.1547
  br label %for.inc.1572

for.inc.1572:                                     ; preds = %if.end.1571, %if.then.1542
  %888 = load i32, i32* %i, align 4
  %inc1573 = add i32 %888, 1
  store i32 %inc1573, i32* %i, align 4
  br label %for.cond.1530

for.end.1574:                                     ; preds = %for.cond.1530
  %889 = load i32*, i32** %jumps, align 8
  %890 = bitcast i32* %889 to i8*
  call void @free(i8* %890) #3
  br label %while.end.1575

while.end.1575:                                   ; preds = %for.end.1574, %if.then.1528, %if.then.1398, %if.then.1393, %land.end.1387
  store i32 0, i32* %found, align 4
  %891 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %dconf1576 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %891, i32 0, i32 9
  %892 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf1576, align 8
  %pe1577 = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %892, i32 0, i32 0
  %893 = load i32, i32* %pe1577, align 4
  %and1578 = and i32 %893, 8288
  %tobool1579 = icmp ne i32 %and1578, 0
  br i1 %tobool1579, label %if.then.1580, label %if.end.1613

if.then.1580:                                     ; preds = %while.end.1575
  store i32 0, i32* %i, align 4
  br label %for.cond.1581

for.cond.1581:                                    ; preds = %for.inc.1610, %if.then.1580
  %894 = load i32, i32* %i, align 4
  %895 = load i16, i16* %nsections, align 2
  %conv1582 = zext i16 %895 to i32
  %sub1583 = sub i32 %conv1582, 1
  %cmp1584 = icmp ult i32 %894, %sub1583
  br i1 %cmp1584, label %for.body.1586, label %for.end.1612

for.body.1586:                                    ; preds = %for.cond.1581
  %896 = load i32, i32* %i, align 4
  %idxprom1587 = zext i32 %896 to i64
  %897 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx1588 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %897, i64 %idxprom1587
  %rsz1589 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx1588, i32 0, i32 3
  %898 = load i32, i32* %rsz1589, align 4
  %tobool1590 = icmp ne i32 %898, 0
  br i1 %tobool1590, label %if.end.1609, label %land.lhs.true.1591

land.lhs.true.1591:                               ; preds = %for.body.1586
  %899 = load i32, i32* %i, align 4
  %idxprom1592 = zext i32 %899 to i64
  %900 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx1593 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %900, i64 %idxprom1592
  %vsz1594 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx1593, i32 0, i32 1
  %901 = load i32, i32* %vsz1594, align 4
  %tobool1595 = icmp ne i32 %901, 0
  br i1 %tobool1595, label %land.lhs.true.1596, label %if.end.1609

land.lhs.true.1596:                               ; preds = %land.lhs.true.1591
  %902 = load i32, i32* %i, align 4
  %add1597 = add i32 %902, 1
  %idxprom1598 = zext i32 %add1597 to i64
  %903 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx1599 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %903, i64 %idxprom1598
  %rsz1600 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx1599, i32 0, i32 3
  %904 = load i32, i32* %rsz1600, align 4
  %tobool1601 = icmp ne i32 %904, 0
  br i1 %tobool1601, label %land.lhs.true.1602, label %if.end.1609

land.lhs.true.1602:                               ; preds = %land.lhs.true.1596
  %905 = load i32, i32* %i, align 4
  %add1603 = add i32 %905, 1
  %idxprom1604 = zext i32 %add1603 to i64
  %906 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx1605 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %906, i64 %idxprom1604
  %vsz1606 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx1605, i32 0, i32 1
  %907 = load i32, i32* %vsz1606, align 4
  %tobool1607 = icmp ne i32 %907, 0
  br i1 %tobool1607, label %if.then.1608, label %if.end.1609

if.then.1608:                                     ; preds = %land.lhs.true.1602
  store i32 1, i32* %found, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.121, i32 0, i32 0))
  br label %for.end.1612

if.end.1609:                                      ; preds = %land.lhs.true.1602, %land.lhs.true.1596, %land.lhs.true.1591, %for.body.1586
  br label %for.inc.1610

for.inc.1610:                                     ; preds = %if.end.1609
  %908 = load i32, i32* %i, align 4
  %inc1611 = add i32 %908, 1
  store i32 %inc1611, i32* %i, align 4
  br label %for.cond.1581

for.end.1612:                                     ; preds = %if.then.1608, %for.cond.1581
  br label %if.end.1613

if.end.1613:                                      ; preds = %for.end.1612, %while.end.1575
  %909 = load i32, i32* %found, align 4
  %tobool1614 = icmp ne i32 %909, 0
  br i1 %tobool1614, label %land.lhs.true.1615, label %if.end.1937

land.lhs.true.1615:                               ; preds = %if.end.1613
  %910 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %dconf1616 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %910, i32 0, i32 9
  %911 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf1616, align 8
  %pe1617 = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %911, i32 0, i32 0
  %912 = load i32, i32* %pe1617, align 4
  %and1618 = and i32 %912, 8192
  %tobool1619 = icmp ne i32 %and1618, 0
  br i1 %tobool1619, label %land.lhs.true.1620, label %if.end.1937

land.lhs.true.1620:                               ; preds = %land.lhs.true.1615
  %913 = load i32, i32* %epsize, align 4
  %cmp1621 = icmp uge i32 %913, 16
  br i1 %cmp1621, label %land.lhs.true.1623, label %if.end.1937

land.lhs.true.1623:                               ; preds = %land.lhs.true.1620
  %arrayidx1624 = getelementptr inbounds [4096 x i8], [4096 x i8]* %epbuff, i32 0, i64 0
  %914 = load i8, i8* %arrayidx1624, align 1
  %conv1625 = sext i8 %914 to i32
  %cmp1626 = icmp eq i32 %conv1625, -23
  br i1 %cmp1626, label %if.then.1628, label %if.end.1937

if.then.1628:                                     ; preds = %land.lhs.true.1623
  %915 = load i32, i32* %vep, align 4
  %arraydecay1629 = getelementptr inbounds [4096 x i8], [4096 x i8]* %epbuff, i32 0, i32 0
  %add.ptr1630 = getelementptr inbounds i8, i8* %arraydecay1629, i64 1
  %916 = bitcast i8* %add.ptr1630 to i32*
  %917 = load i32, i32* %916, align 4
  %add1631 = add i32 %915, %917
  %add1632 = add i32 %add1631, 5
  store i32 %add1632, i32* %fileoffset, align 4
  br label %while.cond.1633

while.cond.1633:                                  ; preds = %if.then.1628
  %918 = load i32, i32* %fileoffset, align 4
  %cmp1634 = icmp eq i32 %918, 340
  br i1 %cmp1634, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond.1633
  %919 = load i32, i32* %fileoffset, align 4
  %cmp1636 = icmp eq i32 %919, 344
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond.1633
  %920 = phi i1 [ true, %while.cond.1633 ], [ %cmp1636, %lor.rhs ]
  br i1 %920, label %while.body.1638, label %while.end.1936

while.body.1638:                                  ; preds = %lor.end
  %arraydecay1639 = getelementptr inbounds [4096 x i8], [4096 x i8]* %epbuff, i32 0, i32 0
  %add.ptr1640 = getelementptr inbounds i8, i8* %arraydecay1639, i64 1
  %921 = bitcast i8* %add.ptr1640 to i32*
  %922 = load i32, i32* %921, align 4
  %923 = load i32, i32* %vep, align 4
  %arraydecay1641 = getelementptr inbounds [4096 x i8], [4096 x i8]* %epbuff, i32 0, i32 0
  %add.ptr1642 = getelementptr inbounds i8, i8* %arraydecay1641, i64 1
  %924 = bitcast i8* %add.ptr1642 to i32*
  %925 = load i32, i32* %924, align 4
  %926 = load i32, i32* %vep, align 4
  %add1643 = add i32 %925, %926
  %add1644 = add i32 %add1643, 5
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.122, i32 0, i32 0), i32 %922, i32 %923, i32 %add1644)
  %927 = load i32, i32* %desc.addr, align 4
  %928 = load i32, i32* %fileoffset, align 4
  %conv1645 = zext i32 %928 to i64
  %call1646 = call i64 @lseek(i32 %927, i64 %conv1645, i32 0) #3
  %cmp1647 = icmp eq i64 %call1646, -1
  br i1 %cmp1647, label %if.then.1649, label %if.end.1650

if.then.1649:                                     ; preds = %while.body.1638
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.123, i32 0, i32 0))
  %929 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %930 = bitcast %struct.cli_exe_section* %929 to i8*
  call void @free(i8* %930) #3
  store i32 -123, i32* %retval
  br label %return

if.end.1650:                                      ; preds = %while.body.1638
  %931 = load i32, i32* %desc.addr, align 4
  %arraydecay1651 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buff, i32 0, i32 0
  %call1652 = call i64 @read(i32 %931, i8* %arraydecay1651, i64 176)
  store i64 %call1652, i64* %bytes, align 8
  %cmp1653 = icmp ne i64 %call1652, 176
  br i1 %cmp1653, label %if.then.1655, label %if.end.1656

if.then.1655:                                     ; preds = %if.end.1650
  %932 = load i32, i32* %fileoffset, align 4
  %933 = load i32, i32* %fileoffset, align 4
  %934 = load i64, i64* %bytes, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.124, i32 0, i32 0), i32 %932, i32 %933, i64 %934)
  br label %while.end.1936

if.end.1656:                                      ; preds = %if.end.1650
  %935 = load i32, i32* %fileoffset, align 4
  %cmp1657 = icmp eq i32 %935, 340
  br i1 %cmp1657, label %if.then.1659, label %if.else.1660

if.then.1659:                                     ; preds = %if.end.1656
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.125, i32 0, i32 0))
  br label %if.end.1661

if.else.1660:                                     ; preds = %if.end.1656
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.126, i32 0, i32 0))
  br label %if.end.1661

if.end.1661:                                      ; preds = %if.else.1660, %if.then.1659
  %arraydecay1662 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buff, i32 0, i32 0
  %add.ptr1663 = getelementptr inbounds i8, i8* %arraydecay1662, i64 1
  %936 = bitcast i8* %add.ptr1663 to i32*
  %937 = load i32, i32* %936, align 4
  %opt321664 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr32*
  %ImageBase = getelementptr inbounds %struct.pe_image_optional_hdr32, %struct.pe_image_optional_hdr32* %opt321664, i32 0, i32 9
  %938 = load i32, i32* %ImageBase, align 4
  %sub1665 = sub i32 %937, %938
  store i32 %sub1665, i32* %offdiff, align 4
  %939 = load i32, i32* %i, align 4
  %add1666 = add i32 %939, 1
  %idxprom1667 = zext i32 %add1666 to i64
  %940 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx1668 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %940, i64 %idxprom1667
  %rva1669 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx1668, i32 0, i32 0
  %941 = load i32, i32* %rva1669, align 4
  %cmp1670 = icmp ule i32 %sub1665, %941
  br i1 %cmp1670, label %if.then.1685, label %lor.lhs.false.1672

lor.lhs.false.1672:                               ; preds = %if.end.1661
  %942 = load i32, i32* %offdiff, align 4
  %943 = load i32, i32* %i, align 4
  %add1673 = add i32 %943, 1
  %idxprom1674 = zext i32 %add1673 to i64
  %944 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx1675 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %944, i64 %idxprom1674
  %rva1676 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx1675, i32 0, i32 0
  %945 = load i32, i32* %rva1676, align 4
  %946 = load i32, i32* %i, align 4
  %add1677 = add i32 %946, 1
  %idxprom1678 = zext i32 %add1677 to i64
  %947 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx1679 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %947, i64 %idxprom1678
  %raw1680 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx1679, i32 0, i32 2
  %948 = load i32, i32* %raw1680, align 4
  %add1681 = add i32 %945, %948
  %sub1682 = sub i32 %add1681, 4
  %cmp1683 = icmp uge i32 %942, %sub1682
  br i1 %cmp1683, label %if.then.1685, label %if.end.1686

if.then.1685:                                     ; preds = %lor.lhs.false.1672, %if.end.1661
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.127, i32 0, i32 0))
  br label %while.end.1936

if.end.1686:                                      ; preds = %lor.lhs.false.1672
  %949 = load i32, i32* %i, align 4
  %add1687 = add i32 %949, 1
  %idxprom1688 = zext i32 %add1687 to i64
  %950 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx1689 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %950, i64 %idxprom1688
  %rva1690 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx1689, i32 0, i32 0
  %951 = load i32, i32* %rva1690, align 4
  %952 = load i32, i32* %offdiff, align 4
  %sub1691 = sub i32 %952, %951
  store i32 %sub1691, i32* %offdiff, align 4
  %953 = load i32, i32* %desc.addr, align 4
  %954 = load i32, i32* %i, align 4
  %add1692 = add i32 %954, 1
  %idxprom1693 = zext i32 %add1692 to i64
  %955 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx1694 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %955, i64 %idxprom1693
  %call1695 = call i64 @cli_seeksect(i32 %953, %struct.cli_exe_section* %arrayidx1694)
  %tobool1696 = icmp ne i64 %call1695, 0
  br i1 %tobool1696, label %if.end.1698, label %if.then.1697

if.then.1697:                                     ; preds = %if.end.1686
  %956 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %957 = bitcast %struct.cli_exe_section* %956 to i8*
  call void @free(i8* %957) #3
  store i32 -123, i32* %retval
  br label %return

if.end.1698:                                      ; preds = %if.end.1686
  %958 = load i32, i32* %i, align 4
  %add1699 = add i32 %958, 1
  %idxprom1700 = zext i32 %add1699 to i64
  %959 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx1701 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %959, i64 %idxprom1700
  %vsz1702 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx1701, i32 0, i32 1
  %960 = load i32, i32* %vsz1702, align 4
  store i32 %960, i32* %ssize, align 4
  %961 = load i32, i32* %i, align 4
  %idxprom1703 = zext i32 %961 to i64
  %962 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx1704 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %962, i64 %idxprom1703
  %vsz1705 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx1704, i32 0, i32 1
  %963 = load i32, i32* %vsz1705, align 4
  store i32 %963, i32* %dsize, align 4
  %964 = load i32, i32* %ssize, align 4
  %965 = load i32, i32* %dsize, align 4
  %966 = load i32, i32* %offdiff, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.128, i32 0, i32 0), i32 %964, i32 %965, i32 %966)
  %967 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %967, i32 0, i32 4
  %968 = load %struct.cl_limits*, %struct.cl_limits** %limits, align 8
  %tobool1706 = icmp ne %struct.cl_limits* %968, null
  br i1 %tobool1706, label %land.lhs.true.1707, label %if.end.1737

land.lhs.true.1707:                               ; preds = %if.end.1698
  %969 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits1708 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %969, i32 0, i32 4
  %970 = load %struct.cl_limits*, %struct.cl_limits** %limits1708, align 8
  %maxfilesize = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %970, i32 0, i32 5
  %971 = load i64, i64* %maxfilesize, align 8
  %tobool1709 = icmp ne i64 %971, 0
  br i1 %tobool1709, label %land.lhs.true.1710, label %if.end.1737

land.lhs.true.1710:                               ; preds = %land.lhs.true.1707
  %972 = load i32, i32* %ssize, align 4
  %973 = load i32, i32* %dsize, align 4
  %cmp1711 = icmp ugt i32 %972, %973
  br i1 %cmp1711, label %cond.true.1713, label %cond.false.1714

cond.true.1713:                                   ; preds = %land.lhs.true.1710
  %974 = load i32, i32* %ssize, align 4
  br label %cond.end.1715

cond.false.1714:                                  ; preds = %land.lhs.true.1710
  %975 = load i32, i32* %dsize, align 4
  br label %cond.end.1715

cond.end.1715:                                    ; preds = %cond.false.1714, %cond.true.1713
  %cond1716 = phi i32 [ %974, %cond.true.1713 ], [ %975, %cond.false.1714 ]
  %conv1717 = zext i32 %cond1716 to i64
  %976 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits1718 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %976, i32 0, i32 4
  %977 = load %struct.cl_limits*, %struct.cl_limits** %limits1718, align 8
  %maxfilesize1719 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %977, i32 0, i32 5
  %978 = load i64, i64* %maxfilesize1719, align 8
  %cmp1720 = icmp ugt i64 %conv1717, %978
  br i1 %cmp1720, label %if.then.1722, label %if.end.1737

if.then.1722:                                     ; preds = %cond.end.1715
  %979 = load i32, i32* %ssize, align 4
  %980 = load i32, i32* %dsize, align 4
  %cmp1723 = icmp ugt i32 %979, %980
  br i1 %cmp1723, label %cond.true.1725, label %cond.false.1726

cond.true.1725:                                   ; preds = %if.then.1722
  %981 = load i32, i32* %ssize, align 4
  br label %cond.end.1727

cond.false.1726:                                  ; preds = %if.then.1722
  %982 = load i32, i32* %dsize, align 4
  br label %cond.end.1727

cond.end.1727:                                    ; preds = %cond.false.1726, %cond.true.1725
  %cond1728 = phi i32 [ %981, %cond.true.1725 ], [ %982, %cond.false.1726 ]
  %983 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits1729 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %983, i32 0, i32 4
  %984 = load %struct.cl_limits*, %struct.cl_limits** %limits1729, align 8
  %maxfilesize1730 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %984, i32 0, i32 5
  %985 = load i64, i64* %maxfilesize1730, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.129, i32 0, i32 0), i32 %cond1728, i64 %985)
  %986 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %987 = bitcast %struct.cli_exe_section* %986 to i8*
  call void @free(i8* %987) #3
  %988 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options1731 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %988, i32 0, i32 5
  %989 = load i32, i32* %options1731, align 4
  %and1732 = and i32 %989, 256
  %tobool1733 = icmp ne i32 %and1732, 0
  br i1 %tobool1733, label %if.then.1734, label %if.else.1736

if.then.1734:                                     ; preds = %cond.end.1727
  %990 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname1735 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %990, i32 0, i32 0
  %991 = load i8**, i8*** %virname1735, align 8
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.130, i32 0, i32 0), i8** %991, align 8
  store i32 1, i32* %retval
  br label %return

if.else.1736:                                     ; preds = %cond.end.1727
  store i32 0, i32* %retval
  br label %return

if.end.1737:                                      ; preds = %cond.end.1715, %land.lhs.true.1707, %if.end.1698
  %992 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits1738 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %992, i32 0, i32 4
  %993 = load %struct.cl_limits*, %struct.cl_limits** %limits1738, align 8
  %tobool1739 = icmp ne %struct.cl_limits* %993, null
  br i1 %tobool1739, label %land.lhs.true.1740, label %if.end.1791

land.lhs.true.1740:                               ; preds = %if.end.1737
  %994 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits1741 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %994, i32 0, i32 4
  %995 = load %struct.cl_limits*, %struct.cl_limits** %limits1741, align 8
  %maxfilesize1742 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %995, i32 0, i32 5
  %996 = load i64, i64* %maxfilesize1742, align 8
  %tobool1743 = icmp ne i64 %996, 0
  br i1 %tobool1743, label %land.lhs.true.1744, label %if.end.1791

land.lhs.true.1744:                               ; preds = %land.lhs.true.1740
  %997 = load i32, i32* %ssize, align 4
  %998 = load i32, i32* %dsize, align 4
  %add1745 = add i32 %997, %998
  %999 = load i32, i32* %i, align 4
  %add1746 = add i32 %999, 1
  %idxprom1747 = zext i32 %add1746 to i64
  %1000 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx1748 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1000, i64 %idxprom1747
  %rsz1749 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx1748, i32 0, i32 3
  %1001 = load i32, i32* %rsz1749, align 4
  %cmp1750 = icmp ugt i32 %add1745, %1001
  br i1 %cmp1750, label %cond.true.1752, label %cond.false.1754

cond.true.1752:                                   ; preds = %land.lhs.true.1744
  %1002 = load i32, i32* %ssize, align 4
  %1003 = load i32, i32* %dsize, align 4
  %add1753 = add i32 %1002, %1003
  br label %cond.end.1759

cond.false.1754:                                  ; preds = %land.lhs.true.1744
  %1004 = load i32, i32* %i, align 4
  %add1755 = add i32 %1004, 1
  %idxprom1756 = zext i32 %add1755 to i64
  %1005 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx1757 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1005, i64 %idxprom1756
  %rsz1758 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx1757, i32 0, i32 3
  %1006 = load i32, i32* %rsz1758, align 4
  br label %cond.end.1759

cond.end.1759:                                    ; preds = %cond.false.1754, %cond.true.1752
  %cond1760 = phi i32 [ %add1753, %cond.true.1752 ], [ %1006, %cond.false.1754 ]
  %conv1761 = zext i32 %cond1760 to i64
  %1007 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits1762 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %1007, i32 0, i32 4
  %1008 = load %struct.cl_limits*, %struct.cl_limits** %limits1762, align 8
  %maxfilesize1763 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %1008, i32 0, i32 5
  %1009 = load i64, i64* %maxfilesize1763, align 8
  %cmp1764 = icmp ugt i64 %conv1761, %1009
  br i1 %cmp1764, label %if.then.1766, label %if.end.1791

if.then.1766:                                     ; preds = %cond.end.1759
  %1010 = load i32, i32* %ssize, align 4
  %1011 = load i32, i32* %dsize, align 4
  %add1767 = add i32 %1010, %1011
  %1012 = load i32, i32* %i, align 4
  %add1768 = add i32 %1012, 1
  %idxprom1769 = zext i32 %add1768 to i64
  %1013 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx1770 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1013, i64 %idxprom1769
  %rsz1771 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx1770, i32 0, i32 3
  %1014 = load i32, i32* %rsz1771, align 4
  %cmp1772 = icmp ugt i32 %add1767, %1014
  br i1 %cmp1772, label %cond.true.1774, label %cond.false.1776

cond.true.1774:                                   ; preds = %if.then.1766
  %1015 = load i32, i32* %ssize, align 4
  %1016 = load i32, i32* %dsize, align 4
  %add1775 = add i32 %1015, %1016
  br label %cond.end.1781

cond.false.1776:                                  ; preds = %if.then.1766
  %1017 = load i32, i32* %i, align 4
  %add1777 = add i32 %1017, 1
  %idxprom1778 = zext i32 %add1777 to i64
  %1018 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx1779 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1018, i64 %idxprom1778
  %rsz1780 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx1779, i32 0, i32 3
  %1019 = load i32, i32* %rsz1780, align 4
  br label %cond.end.1781

cond.end.1781:                                    ; preds = %cond.false.1776, %cond.true.1774
  %cond1782 = phi i32 [ %add1775, %cond.true.1774 ], [ %1019, %cond.false.1776 ]
  %1020 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits1783 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %1020, i32 0, i32 4
  %1021 = load %struct.cl_limits*, %struct.cl_limits** %limits1783, align 8
  %maxfilesize1784 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %1021, i32 0, i32 5
  %1022 = load i64, i64* %maxfilesize1784, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.129, i32 0, i32 0), i32 %cond1782, i64 %1022)
  %1023 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %1024 = bitcast %struct.cli_exe_section* %1023 to i8*
  call void @free(i8* %1024) #3
  %1025 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options1785 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %1025, i32 0, i32 5
  %1026 = load i32, i32* %options1785, align 4
  %and1786 = and i32 %1026, 256
  %tobool1787 = icmp ne i32 %and1786, 0
  br i1 %tobool1787, label %if.then.1788, label %if.else.1790

if.then.1788:                                     ; preds = %cond.end.1781
  %1027 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname1789 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %1027, i32 0, i32 0
  %1028 = load i8**, i8*** %virname1789, align 8
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.130, i32 0, i32 0), i8** %1028, align 8
  store i32 1, i32* %retval
  br label %return

if.else.1790:                                     ; preds = %cond.end.1781
  store i32 0, i32* %retval
  br label %return

if.end.1791:                                      ; preds = %cond.end.1759, %land.lhs.true.1740, %if.end.1737
  %1029 = load i32, i32* %ssize, align 4
  %1030 = load i32, i32* %dsize, align 4
  %add1792 = add i32 %1029, %1030
  %conv1793 = zext i32 %add1792 to i64
  %call1794 = call i8* @cli_calloc(i64 %conv1793, i64 1)
  store i8* %call1794, i8** %src, align 8
  %tobool1795 = icmp ne i8* %call1794, null
  br i1 %tobool1795, label %if.end.1797, label %if.then.1796

if.then.1796:                                     ; preds = %if.end.1791
  %1031 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %1032 = bitcast %struct.cli_exe_section* %1031 to i8*
  call void @free(i8* %1032) #3
  store i32 -114, i32* %retval
  br label %return

if.end.1797:                                      ; preds = %if.end.1791
  %1033 = load i32, i32* %i, align 4
  %add1798 = add i32 %1033, 1
  %idxprom1799 = zext i32 %add1798 to i64
  %1034 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx1800 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1034, i64 %idxprom1799
  %rsz1801 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx1800, i32 0, i32 3
  %1035 = load i32, i32* %rsz1801, align 4
  %1036 = load i32, i32* %offdiff, align 4
  %add1802 = add i32 %1036, 12
  %cmp1803 = icmp ult i32 %1035, %add1802
  br i1 %cmp1803, label %if.then.1812, label %lor.lhs.false.1805

lor.lhs.false.1805:                               ; preds = %if.end.1797
  %1037 = load i32, i32* %i, align 4
  %add1806 = add i32 %1037, 1
  %idxprom1807 = zext i32 %add1806 to i64
  %1038 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx1808 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1038, i64 %idxprom1807
  %rsz1809 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx1808, i32 0, i32 3
  %1039 = load i32, i32* %rsz1809, align 4
  %1040 = load i32, i32* %ssize, align 4
  %cmp1810 = icmp ugt i32 %1039, %1040
  br i1 %cmp1810, label %if.then.1812, label %if.end.1817

if.then.1812:                                     ; preds = %lor.lhs.false.1805, %if.end.1797
  %1041 = load i32, i32* %i, align 4
  %add1813 = add i32 %1041, 1
  %idxprom1814 = zext i32 %add1813 to i64
  %1042 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx1815 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1042, i64 %idxprom1814
  %rsz1816 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx1815, i32 0, i32 3
  %1043 = load i32, i32* %rsz1816, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.131, i32 0, i32 0), i32 %1043)
  %1044 = load i8*, i8** %src, align 8
  call void @free(i8* %1044) #3
  br label %while.end.1936

if.end.1817:                                      ; preds = %lor.lhs.false.1805
  %1045 = load i32, i32* %desc.addr, align 4
  %1046 = load i8*, i8** %src, align 8
  %1047 = load i32, i32* %dsize, align 4
  %idx.ext1818 = zext i32 %1047 to i64
  %add.ptr1819 = getelementptr inbounds i8, i8* %1046, i64 %idx.ext1818
  %1048 = load i32, i32* %i, align 4
  %add1820 = add i32 %1048, 1
  %idxprom1821 = zext i32 %add1820 to i64
  %1049 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx1822 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1049, i64 %idxprom1821
  %rsz1823 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx1822, i32 0, i32 3
  %1050 = load i32, i32* %rsz1823, align 4
  %conv1824 = zext i32 %1050 to i64
  %call1825 = call i64 @read(i32 %1045, i8* %add.ptr1819, i64 %conv1824)
  store i64 %call1825, i64* %bytes, align 8
  %1051 = load i32, i32* %i, align 4
  %add1826 = add i32 %1051, 1
  %idxprom1827 = zext i32 %add1826 to i64
  %1052 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx1828 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1052, i64 %idxprom1827
  %rsz1829 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx1828, i32 0, i32 3
  %1053 = load i32, i32* %rsz1829, align 4
  %conv1830 = zext i32 %1053 to i64
  %cmp1831 = icmp ne i64 %call1825, %conv1830
  br i1 %cmp1831, label %if.then.1833, label %if.end.1838

if.then.1833:                                     ; preds = %if.end.1817
  %1054 = load i32, i32* %i, align 4
  %add1834 = add i32 %1054, 1
  %idxprom1835 = zext i32 %add1834 to i64
  %1055 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx1836 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1055, i64 %idxprom1835
  %rsz1837 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx1836, i32 0, i32 3
  %1056 = load i32, i32* %rsz1837, align 4
  %1057 = load i64, i64* %bytes, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.132, i32 0, i32 0), i32 %1056, i64 %1057)
  %1058 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %1059 = bitcast %struct.cli_exe_section* %1058 to i8*
  call void @free(i8* %1059) #3
  %1060 = load i8*, i8** %src, align 8
  call void @free(i8* %1060) #3
  store i32 -123, i32* %retval
  br label %return

if.end.1838:                                      ; preds = %if.end.1817
  %1061 = load i64, i64* %bytes, align 8
  %1062 = load i64, i64* %bytes, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.133, i32 0, i32 0), i64 %1061, i64 %1062)
  %arrayidx1839 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buff, i32 0, i64 123
  %1063 = load i8, i8* %arrayidx1839, align 1
  %conv1840 = sext i8 %1063 to i32
  %cmp1841 = icmp eq i32 %conv1840, -24
  br i1 %cmp1841, label %if.then.1843, label %if.else.1894

if.then.1843:                                     ; preds = %if.end.1838
  %1064 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx1844 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1064, i64 1
  %vsz1845 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx1844, i32 0, i32 1
  %1065 = load i32, i32* %vsz1845, align 4
  %cmp1846 = icmp ugt i32 %1065, 0
  br i1 %cmp1846, label %land.lhs.true.1848, label %if.then.1885

land.lhs.true.1848:                               ; preds = %if.then.1843
  %1066 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx1849 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1066, i64 1
  %vsz1850 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx1849, i32 0, i32 1
  %1067 = load i32, i32* %vsz1850, align 4
  %cmp1851 = icmp ule i32 4, %1067
  br i1 %cmp1851, label %land.lhs.true.1853, label %if.then.1885

land.lhs.true.1853:                               ; preds = %land.lhs.true.1848
  %arraydecay1854 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buff, i32 0, i32 0
  %add.ptr1855 = getelementptr inbounds i8, i8* %arraydecay1854, i64 124
  %1068 = bitcast i8* %add.ptr1855 to i32*
  %1069 = load i32, i32* %1068, align 4
  %1070 = load i32, i32* %fileoffset, align 4
  %add1856 = add i32 %1069, %1070
  %add1857 = add i32 %add1856, 128
  %1071 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx1858 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1071, i64 1
  %rva1859 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx1858, i32 0, i32 0
  %1072 = load i32, i32* %rva1859, align 4
  %cmp1860 = icmp uge i32 %add1857, %1072
  br i1 %cmp1860, label %land.lhs.true.1862, label %if.then.1885

land.lhs.true.1862:                               ; preds = %land.lhs.true.1853
  %arraydecay1863 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buff, i32 0, i32 0
  %add.ptr1864 = getelementptr inbounds i8, i8* %arraydecay1863, i64 124
  %1073 = bitcast i8* %add.ptr1864 to i32*
  %1074 = load i32, i32* %1073, align 4
  %1075 = load i32, i32* %fileoffset, align 4
  %add1865 = add i32 %1074, %1075
  %add1866 = add i32 %add1865, 128
  %add1867 = add i32 %add1866, 4
  %1076 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx1868 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1076, i64 1
  %rva1869 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx1868, i32 0, i32 0
  %1077 = load i32, i32* %rva1869, align 4
  %1078 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx1870 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1078, i64 1
  %vsz1871 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx1870, i32 0, i32 1
  %1079 = load i32, i32* %vsz1871, align 4
  %add1872 = add i32 %1077, %1079
  %cmp1873 = icmp ule i32 %add1867, %add1872
  br i1 %cmp1873, label %land.lhs.true.1875, label %if.then.1885

land.lhs.true.1875:                               ; preds = %land.lhs.true.1862
  %arraydecay1876 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buff, i32 0, i32 0
  %add.ptr1877 = getelementptr inbounds i8, i8* %arraydecay1876, i64 124
  %1080 = bitcast i8* %add.ptr1877 to i32*
  %1081 = load i32, i32* %1080, align 4
  %1082 = load i32, i32* %fileoffset, align 4
  %add1878 = add i32 %1081, %1082
  %add1879 = add i32 %add1878, 128
  %add1880 = add i32 %add1879, 4
  %1083 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx1881 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1083, i64 1
  %rva1882 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx1881, i32 0, i32 0
  %1084 = load i32, i32* %rva1882, align 4
  %cmp1883 = icmp ugt i32 %add1880, %1084
  br i1 %cmp1883, label %if.end.1886, label %if.then.1885

if.then.1885:                                     ; preds = %land.lhs.true.1875, %land.lhs.true.1862, %land.lhs.true.1853, %land.lhs.true.1848, %if.then.1843
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.134, i32 0, i32 0))
  %1085 = load i8*, i8** %src, align 8
  call void @free(i8* %1085) #3
  br label %while.end.1936

if.end.1886:                                      ; preds = %land.lhs.true.1875
  %arraydecay1887 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buff, i32 0, i32 0
  %add.ptr1888 = getelementptr inbounds i8, i8* %arraydecay1887, i64 124
  %1086 = bitcast i8* %add.ptr1888 to i32*
  %1087 = load i32, i32* %1086, align 4
  %1088 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx1889 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1088, i64 0
  %rva1890 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx1889, i32 0, i32 0
  %1089 = load i32, i32* %rva1890, align 4
  %1090 = load i32, i32* %fileoffset, align 4
  %sub1891 = sub i32 %1089, %1090
  %sub1892 = sub i32 %sub1891, 128
  %sub1893 = sub i32 %1087, %sub1892
  store i32 %sub1893, i32* %uselzma, align 4
  br label %if.end.1895

if.else.1894:                                     ; preds = %if.end.1838
  store i32 0, i32* %uselzma, align 4
  br label %if.end.1895

if.end.1895:                                      ; preds = %if.else.1894, %if.end.1886
  %call1896 = call i8* @cli_gentemp(i8* null)
  store i8* %call1896, i8** %tempfile, align 8
  %tobool1897 = icmp ne i8* %call1896, null
  br i1 %tobool1897, label %if.end.1899, label %if.then.1898

if.then.1898:                                     ; preds = %if.end.1895
  %1091 = load i8*, i8** %src, align 8
  %1092 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  call void (i8*, ...) @cli_multifree(i8* %1091, %struct.cli_exe_section* %1092, i32 0)
  store i32 -114, i32* %retval
  br label %return

if.end.1899:                                      ; preds = %if.end.1895
  %1093 = load i8*, i8** %tempfile, align 8
  %call1900 = call i32 (i8*, i32, ...) @open(i8* %1093, i32 578, i32 448)
  store i32 %call1900, i32* %ndesc, align 4
  %cmp1901 = icmp slt i32 %call1900, 0
  br i1 %cmp1901, label %if.then.1903, label %if.end.1904

if.then.1903:                                     ; preds = %if.end.1899
  %1094 = load i8*, i8** %tempfile, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.135, i32 0, i32 0), i8* %1094)
  %1095 = load i8*, i8** %tempfile, align 8
  call void @free(i8* %1095) #3
  %1096 = load i8*, i8** %src, align 8
  %1097 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  call void (i8*, ...) @cli_multifree(i8* %1096, %struct.cli_exe_section* %1097, i32 0)
  store i32 -123, i32* %retval
  br label %return

if.end.1904:                                      ; preds = %if.end.1899
  %1098 = load i32, i32* %i, align 4
  %1099 = load i8*, i8** %src, align 8
  %1100 = load i32, i32* %offdiff, align 4
  %1101 = load i32, i32* %ssize, align 4
  %1102 = load i32, i32* %dsize, align 4
  %opt321905 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr32*
  %ImageBase1906 = getelementptr inbounds %struct.pe_image_optional_hdr32, %struct.pe_image_optional_hdr32* %opt321905, i32 0, i32 9
  %1103 = load i32, i32* %ImageBase1906, align 4
  %1104 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx1907 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1104, i64 0
  %rva1908 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx1907, i32 0, i32 0
  %1105 = load i32, i32* %rva1908, align 4
  %1106 = load i32, i32* %uselzma, align 4
  %1107 = load i32, i32* %ndesc, align 4
  %call1909 = call i32 @unmew11(i32 %1098, i8* %1099, i32 %1100, i32 %1101, i32 %1102, i32 %1103, i32 %1105, i32 %1106, i8** null, i8** null, i32 %1107)
  switch i32 %call1909, label %sw.default.1932 [
    i32 1, label %sw.bb.1910
  ]

sw.bb.1910:                                       ; preds = %if.end.1904
  %1108 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool1911 = icmp ne i8 %1108, 0
  br i1 %tobool1911, label %if.then.1912, label %if.else.1913

if.then.1912:                                     ; preds = %sw.bb.1910
  %1109 = load i8*, i8** %tempfile, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.136, i32 0, i32 0), i8* %1109)
  br label %if.end.1914

if.else.1913:                                     ; preds = %sw.bb.1910
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.137, i32 0, i32 0))
  br label %if.end.1914

if.end.1914:                                      ; preds = %if.else.1913, %if.then.1912
  %1110 = load i8*, i8** %src, align 8
  call void (i8*, ...) @cli_multifree(i8* %1110, i32 0)
  %1111 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %1112 = bitcast %struct.cli_exe_section* %1111 to i8*
  call void @free(i8* %1112) #3
  %1113 = load i32, i32* %ndesc, align 4
  %call1915 = call i32 @fsync(i32 %1113)
  %1114 = load i32, i32* %ndesc, align 4
  %call1916 = call i64 @lseek(i32 %1114, i64 0, i32 0) #3
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.138, i32 0, i32 0))
  %1115 = load i32, i32* %ndesc, align 4
  %1116 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call1917 = call i32 @cli_magic_scandesc(i32 %1115, %struct.cli_ctx* %1116)
  %cmp1918 = icmp eq i32 %call1917, 1
  br i1 %cmp1918, label %if.then.1920, label %if.end.1926

if.then.1920:                                     ; preds = %if.end.1914
  %1117 = load i32, i32* %ndesc, align 4
  %call1921 = call i32 @close(i32 %1117)
  %1118 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool1922 = icmp ne i8 %1118, 0
  br i1 %tobool1922, label %if.end.1925, label %if.then.1923

if.then.1923:                                     ; preds = %if.then.1920
  %1119 = load i8*, i8** %tempfile, align 8
  %call1924 = call i32 @unlink(i8* %1119) #3
  br label %if.end.1925

if.end.1925:                                      ; preds = %if.then.1923, %if.then.1920
  %1120 = load i8*, i8** %tempfile, align 8
  call void @free(i8* %1120) #3
  store i32 1, i32* %retval
  br label %return

if.end.1926:                                      ; preds = %if.end.1914
  %1121 = load i32, i32* %ndesc, align 4
  %call1927 = call i32 @close(i32 %1121)
  %1122 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool1928 = icmp ne i8 %1122, 0
  br i1 %tobool1928, label %if.end.1931, label %if.then.1929

if.then.1929:                                     ; preds = %if.end.1926
  %1123 = load i8*, i8** %tempfile, align 8
  %call1930 = call i32 @unlink(i8* %1123) #3
  br label %if.end.1931

if.end.1931:                                      ; preds = %if.then.1929, %if.end.1926
  %1124 = load i8*, i8** %tempfile, align 8
  call void @free(i8* %1124) #3
  store i32 0, i32* %retval
  br label %return

sw.default.1932:                                  ; preds = %if.end.1904
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.139, i32 0, i32 0))
  %1125 = load i32, i32* %ndesc, align 4
  %call1933 = call i32 @close(i32 %1125)
  %1126 = load i8*, i8** %tempfile, align 8
  %call1934 = call i32 @unlink(i8* %1126) #3
  %1127 = load i8*, i8** %src, align 8
  call void (i8*, ...) @cli_multifree(i8* %1127, i32 0)
  %1128 = load i8*, i8** %tempfile, align 8
  call void @free(i8* %1128) #3
  br label %sw.epilog.1935

sw.epilog.1935:                                   ; preds = %sw.default.1932
  br label %while.end.1936

while.end.1936:                                   ; preds = %sw.epilog.1935, %if.then.1885, %if.then.1812, %if.then.1685, %if.then.1655, %lor.end
  br label %if.end.1937

if.end.1937:                                      ; preds = %while.end.1936, %land.lhs.true.1623, %land.lhs.true.1620, %land.lhs.true.1615, %if.end.1613
  %1129 = load i32, i32* %epsize, align 4
  %cmp1938 = icmp ult i32 %1129, 168
  br i1 %cmp1938, label %if.then.1940, label %if.end.1941

if.then.1940:                                     ; preds = %if.end.1937
  %1130 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %1131 = bitcast %struct.cli_exe_section* %1130 to i8*
  call void @free(i8* %1131) #3
  store i32 0, i32* %retval
  br label %return

if.end.1941:                                      ; preds = %if.end.1937
  %1132 = load i32, i32* %found, align 4
  %tobool1942 = icmp ne i32 %1132, 0
  br i1 %tobool1942, label %if.then.1945, label %lor.lhs.false.1943

lor.lhs.false.1943:                               ; preds = %if.end.1941
  %1133 = load i32, i32* %upack, align 4
  %tobool1944 = icmp ne i32 %1133, 0
  br i1 %tobool1944, label %if.then.1945, label %if.end.2287

if.then.1945:                                     ; preds = %lor.lhs.false.1943, %if.end.1941
  br label %while.cond.1946

while.cond.1946:                                  ; preds = %if.then.1945
  %1134 = load i32, i32* %upack, align 4
  %tobool1947 = icmp ne i32 %1134, 0
  br i1 %tobool1947, label %land.lhs.true.1948, label %lor.rhs.1998

land.lhs.true.1948:                               ; preds = %while.cond.1946
  %1135 = load i16, i16* %nsections, align 2
  %conv1949 = zext i16 %1135 to i32
  %cmp1950 = icmp eq i32 %conv1949, 3
  br i1 %cmp1950, label %land.lhs.true.1952, label %lor.rhs.1998

land.lhs.true.1952:                               ; preds = %land.lhs.true.1948
  %arrayidx1953 = getelementptr inbounds [4096 x i8], [4096 x i8]* %epbuff, i32 0, i64 0
  %1136 = load i8, i8* %arrayidx1953, align 1
  %conv1954 = sext i8 %1136 to i32
  %cmp1955 = icmp eq i32 %conv1954, -66
  br i1 %cmp1955, label %land.lhs.true.1957, label %lor.lhs.false.1975

land.lhs.true.1957:                               ; preds = %land.lhs.true.1952
  %arraydecay1958 = getelementptr inbounds [4096 x i8], [4096 x i8]* %epbuff, i32 0, i32 0
  %add.ptr1959 = getelementptr inbounds i8, i8* %arraydecay1958, i64 1
  %1137 = bitcast i8* %add.ptr1959 to i32*
  %1138 = load i32, i32* %1137, align 4
  %opt321960 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr32*
  %ImageBase1961 = getelementptr inbounds %struct.pe_image_optional_hdr32, %struct.pe_image_optional_hdr32* %opt321960, i32 0, i32 9
  %1139 = load i32, i32* %ImageBase1961, align 4
  %sub1962 = sub i32 %1138, %1139
  %1140 = load i32, i32* %min, align 4
  %cmp1963 = icmp ugt i32 %sub1962, %1140
  br i1 %cmp1963, label %land.lhs.true.1965, label %lor.lhs.false.1975

land.lhs.true.1965:                               ; preds = %land.lhs.true.1957
  %arrayidx1966 = getelementptr inbounds [4096 x i8], [4096 x i8]* %epbuff, i32 0, i64 5
  %1141 = load i8, i8* %arrayidx1966, align 1
  %conv1967 = sext i8 %1141 to i32
  %cmp1968 = icmp eq i32 %conv1967, -83
  br i1 %cmp1968, label %land.lhs.true.1970, label %lor.lhs.false.1975

land.lhs.true.1970:                               ; preds = %land.lhs.true.1965
  %arrayidx1971 = getelementptr inbounds [4096 x i8], [4096 x i8]* %epbuff, i32 0, i64 6
  %1142 = load i8, i8* %arrayidx1971, align 1
  %conv1972 = sext i8 %1142 to i32
  %cmp1973 = icmp eq i32 %conv1972, 80
  br i1 %cmp1973, label %lor.end.2058, label %lor.lhs.false.1975

lor.lhs.false.1975:                               ; preds = %land.lhs.true.1970, %land.lhs.true.1965, %land.lhs.true.1957, %land.lhs.true.1952
  %arrayidx1976 = getelementptr inbounds [4096 x i8], [4096 x i8]* %epbuff, i32 0, i64 0
  %1143 = load i8, i8* %arrayidx1976, align 1
  %conv1977 = sext i8 %1143 to i32
  %cmp1978 = icmp eq i32 %conv1977, -66
  br i1 %cmp1978, label %land.lhs.true.1980, label %lor.rhs.1998

land.lhs.true.1980:                               ; preds = %lor.lhs.false.1975
  %arraydecay1981 = getelementptr inbounds [4096 x i8], [4096 x i8]* %epbuff, i32 0, i32 0
  %add.ptr1982 = getelementptr inbounds i8, i8* %arraydecay1981, i64 1
  %1144 = bitcast i8* %add.ptr1982 to i32*
  %1145 = load i32, i32* %1144, align 4
  %opt321983 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr32*
  %ImageBase1984 = getelementptr inbounds %struct.pe_image_optional_hdr32, %struct.pe_image_optional_hdr32* %opt321983, i32 0, i32 9
  %1146 = load i32, i32* %ImageBase1984, align 4
  %sub1985 = sub i32 %1145, %1146
  %1147 = load i32, i32* %min, align 4
  %cmp1986 = icmp ugt i32 %sub1985, %1147
  br i1 %cmp1986, label %land.lhs.true.1988, label %lor.rhs.1998

land.lhs.true.1988:                               ; preds = %land.lhs.true.1980
  %arrayidx1989 = getelementptr inbounds [4096 x i8], [4096 x i8]* %epbuff, i32 0, i64 5
  %1148 = load i8, i8* %arrayidx1989, align 1
  %conv1990 = sext i8 %1148 to i32
  %cmp1991 = icmp eq i32 %conv1990, -1
  br i1 %cmp1991, label %land.lhs.true.1993, label %lor.rhs.1998

land.lhs.true.1993:                               ; preds = %land.lhs.true.1988
  %arrayidx1994 = getelementptr inbounds [4096 x i8], [4096 x i8]* %epbuff, i32 0, i64 6
  %1149 = load i8, i8* %arrayidx1994, align 1
  %conv1995 = sext i8 %1149 to i32
  %cmp1996 = icmp eq i32 %conv1995, 54
  br i1 %cmp1996, label %lor.end.2058, label %lor.rhs.1998

lor.rhs.1998:                                     ; preds = %land.lhs.true.1993, %land.lhs.true.1988, %land.lhs.true.1980, %lor.lhs.false.1975, %land.lhs.true.1948, %while.cond.1946
  %1150 = load i32, i32* %upack, align 4
  %tobool1999 = icmp ne i32 %1150, 0
  br i1 %tobool1999, label %land.end.2057, label %land.lhs.true.2000

land.lhs.true.2000:                               ; preds = %lor.rhs.1998
  %1151 = load i16, i16* %nsections, align 2
  %conv2001 = zext i16 %1151 to i32
  %cmp2002 = icmp eq i32 %conv2001, 2
  br i1 %cmp2002, label %land.rhs.2004, label %land.end.2057

land.rhs.2004:                                    ; preds = %land.lhs.true.2000
  %arrayidx2005 = getelementptr inbounds [4096 x i8], [4096 x i8]* %epbuff, i32 0, i64 0
  %1152 = load i8, i8* %arrayidx2005, align 1
  %conv2006 = sext i8 %1152 to i32
  %cmp2007 = icmp eq i32 %conv2006, 96
  br i1 %cmp2007, label %land.lhs.true.2009, label %lor.rhs.2019

land.lhs.true.2009:                               ; preds = %land.rhs.2004
  %arrayidx2010 = getelementptr inbounds [4096 x i8], [4096 x i8]* %epbuff, i32 0, i64 1
  %1153 = load i8, i8* %arrayidx2010, align 1
  %conv2011 = sext i8 %1153 to i32
  %cmp2012 = icmp eq i32 %conv2011, -24
  br i1 %cmp2012, label %land.lhs.true.2014, label %lor.rhs.2019

land.lhs.true.2014:                               ; preds = %land.lhs.true.2009
  %arraydecay2015 = getelementptr inbounds [4096 x i8], [4096 x i8]* %epbuff, i32 0, i32 0
  %add.ptr2016 = getelementptr inbounds i8, i8* %arraydecay2015, i64 2
  %1154 = bitcast i8* %add.ptr2016 to i32*
  %1155 = load i32, i32* %1154, align 4
  %cmp2017 = icmp eq i32 %1155, 9
  br i1 %cmp2017, label %lor.end.2056, label %lor.rhs.2019

lor.rhs.2019:                                     ; preds = %land.lhs.true.2014, %land.lhs.true.2009, %land.rhs.2004
  %arrayidx2020 = getelementptr inbounds [4096 x i8], [4096 x i8]* %epbuff, i32 0, i64 0
  %1156 = load i8, i8* %arrayidx2020, align 1
  %conv2021 = sext i8 %1156 to i32
  %cmp2022 = icmp eq i32 %conv2021, -66
  br i1 %cmp2022, label %land.lhs.true.2024, label %land.end.2055

land.lhs.true.2024:                               ; preds = %lor.rhs.2019
  %arraydecay2025 = getelementptr inbounds [4096 x i8], [4096 x i8]* %epbuff, i32 0, i32 0
  %add.ptr2026 = getelementptr inbounds i8, i8* %arraydecay2025, i64 1
  %1157 = bitcast i8* %add.ptr2026 to i32*
  %1158 = load i32, i32* %1157, align 4
  %opt322027 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr32*
  %ImageBase2028 = getelementptr inbounds %struct.pe_image_optional_hdr32, %struct.pe_image_optional_hdr32* %opt322027, i32 0, i32 9
  %1159 = load i32, i32* %ImageBase2028, align 4
  %sub2029 = sub i32 %1158, %1159
  %1160 = load i32, i32* %min, align 4
  %cmp2030 = icmp ult i32 %sub2029, %1160
  br i1 %cmp2030, label %land.lhs.true.2032, label %land.end.2055

land.lhs.true.2032:                               ; preds = %land.lhs.true.2024
  %arraydecay2033 = getelementptr inbounds [4096 x i8], [4096 x i8]* %epbuff, i32 0, i32 0
  %add.ptr2034 = getelementptr inbounds i8, i8* %arraydecay2033, i64 1
  %1161 = bitcast i8* %add.ptr2034 to i32*
  %1162 = load i32, i32* %1161, align 4
  %opt322035 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr32*
  %ImageBase2036 = getelementptr inbounds %struct.pe_image_optional_hdr32, %struct.pe_image_optional_hdr32* %opt322035, i32 0, i32 9
  %1163 = load i32, i32* %ImageBase2036, align 4
  %sub2037 = sub i32 %1162, %1163
  %cmp2038 = icmp ugt i32 %sub2037, 0
  br i1 %cmp2038, label %land.lhs.true.2040, label %land.end.2055

land.lhs.true.2040:                               ; preds = %land.lhs.true.2032
  %arrayidx2041 = getelementptr inbounds [4096 x i8], [4096 x i8]* %epbuff, i32 0, i64 5
  %1164 = load i8, i8* %arrayidx2041, align 1
  %conv2042 = sext i8 %1164 to i32
  %cmp2043 = icmp eq i32 %conv2042, -83
  br i1 %cmp2043, label %land.lhs.true.2045, label %land.end.2055

land.lhs.true.2045:                               ; preds = %land.lhs.true.2040
  %arrayidx2046 = getelementptr inbounds [4096 x i8], [4096 x i8]* %epbuff, i32 0, i64 6
  %1165 = load i8, i8* %arrayidx2046, align 1
  %conv2047 = sext i8 %1165 to i32
  %cmp2048 = icmp eq i32 %conv2047, -117
  br i1 %cmp2048, label %land.rhs.2050, label %land.end.2055

land.rhs.2050:                                    ; preds = %land.lhs.true.2045
  %arrayidx2051 = getelementptr inbounds [4096 x i8], [4096 x i8]* %epbuff, i32 0, i64 7
  %1166 = load i8, i8* %arrayidx2051, align 1
  %conv2052 = sext i8 %1166 to i32
  %cmp2053 = icmp eq i32 %conv2052, -8
  br label %land.end.2055

land.end.2055:                                    ; preds = %land.rhs.2050, %land.lhs.true.2045, %land.lhs.true.2040, %land.lhs.true.2032, %land.lhs.true.2024, %lor.rhs.2019
  %1167 = phi i1 [ false, %land.lhs.true.2045 ], [ false, %land.lhs.true.2040 ], [ false, %land.lhs.true.2032 ], [ false, %land.lhs.true.2024 ], [ false, %lor.rhs.2019 ], [ %cmp2053, %land.rhs.2050 ]
  br label %lor.end.2056

lor.end.2056:                                     ; preds = %land.end.2055, %land.lhs.true.2014
  %1168 = phi i1 [ true, %land.lhs.true.2014 ], [ %1167, %land.end.2055 ]
  br label %land.end.2057

land.end.2057:                                    ; preds = %lor.end.2056, %land.lhs.true.2000, %lor.rhs.1998
  %1169 = phi i1 [ false, %land.lhs.true.2000 ], [ false, %lor.rhs.1998 ], [ %1168, %lor.end.2056 ]
  br label %lor.end.2058

lor.end.2058:                                     ; preds = %land.end.2057, %land.lhs.true.1993, %land.lhs.true.1970
  %1170 = phi i1 [ true, %land.lhs.true.1993 ], [ true, %land.lhs.true.1970 ], [ %1169, %land.end.2057 ]
  br i1 %1170, label %while.body.2059, label %while.end.2286

while.body.2059:                                  ; preds = %lor.end.2058
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.140, i32 0, i32 0))
  %1171 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx2060 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1171, i64 0
  %vsz2061 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx2060, i32 0, i32 1
  %1172 = load i32, i32* %vsz2061, align 4
  store i32 %1172, i32* %a, align 4
  %1173 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx2062 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1173, i64 1
  %vsz2063 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx2062, i32 0, i32 1
  %1174 = load i32, i32* %vsz2063, align 4
  store i32 %1174, i32* %b, align 4
  %1175 = load i32, i32* %upack, align 4
  %tobool2064 = icmp ne i32 %1175, 0
  br i1 %tobool2064, label %if.then.2065, label %if.else.2080

if.then.2065:                                     ; preds = %while.body.2059
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.141, i32 0, i32 0))
  %1176 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx2066 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1176, i64 2
  %vsz2067 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx2066, i32 0, i32 1
  %1177 = load i32, i32* %vsz2067, align 4
  store i32 %1177, i32* %c, align 4
  %1178 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx2068 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1178, i64 0
  %ursz2069 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx2068, i32 0, i32 8
  %1179 = load i32, i32* %ursz2069, align 4
  %1180 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx2070 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1180, i64 0
  %uraw2071 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx2070, i32 0, i32 7
  %1181 = load i32, i32* %uraw2071, align 4
  %add2072 = add i32 %1179, %1181
  store i32 %add2072, i32* %ssize, align 4
  %1182 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx2073 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1182, i64 0
  %rva2074 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx2073, i32 0, i32 0
  %1183 = load i32, i32* %rva2074, align 4
  store i32 %1183, i32* %off, align 4
  %opt322075 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr32*
  %ImageBase2076 = getelementptr inbounds %struct.pe_image_optional_hdr32, %struct.pe_image_optional_hdr32* %opt322075, i32 0, i32 9
  %1184 = load i32, i32* %ImageBase2076, align 4
  %1185 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx2077 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1185, i64 0
  %rva2078 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx2077, i32 0, i32 0
  %1186 = load i32, i32* %rva2078, align 4
  %add2079 = add i32 %1184, %1186
  store i32 %add2079, i32* %vma, align 4
  br label %if.end.2090

if.else.2080:                                     ; preds = %while.body.2059
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.142, i32 0, i32 0))
  %1187 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx2081 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1187, i64 1
  %rva2082 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx2081, i32 0, i32 0
  %1188 = load i32, i32* %rva2082, align 4
  store i32 %1188, i32* %c, align 4
  %1189 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx2083 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1189, i64 1
  %uraw2084 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx2083, i32 0, i32 7
  %1190 = load i32, i32* %uraw2084, align 4
  store i32 %1190, i32* %ssize, align 4
  store i32 0, i32* %off, align 4
  %1191 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx2085 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1191, i64 1
  %rva2086 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx2085, i32 0, i32 0
  %1192 = load i32, i32* %rva2086, align 4
  %1193 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx2087 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1193, i64 1
  %uraw2088 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx2087, i32 0, i32 7
  %1194 = load i32, i32* %uraw2088, align 4
  %sub2089 = sub i32 %1192, %1194
  store i32 %sub2089, i32* %vma, align 4
  br label %if.end.2090

if.end.2090:                                      ; preds = %if.else.2080, %if.then.2065
  %1195 = load i32, i32* %a, align 4
  %1196 = load i32, i32* %b, align 4
  %add2091 = add nsw i32 %1195, %1196
  %1197 = load i32, i32* %c, align 4
  %add2092 = add nsw i32 %add2091, %1197
  store i32 %add2092, i32* %dsize, align 4
  %1198 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits2093 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %1198, i32 0, i32 4
  %1199 = load %struct.cl_limits*, %struct.cl_limits** %limits2093, align 8
  %tobool2094 = icmp ne %struct.cl_limits* %1199, null
  br i1 %tobool2094, label %land.lhs.true.2095, label %if.end.2158

land.lhs.true.2095:                               ; preds = %if.end.2090
  %1200 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits2096 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %1200, i32 0, i32 4
  %1201 = load %struct.cl_limits*, %struct.cl_limits** %limits2096, align 8
  %maxfilesize2097 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %1201, i32 0, i32 5
  %1202 = load i64, i64* %maxfilesize2097, align 8
  %tobool2098 = icmp ne i64 %1202, 0
  br i1 %tobool2098, label %land.lhs.true.2099, label %if.end.2158

land.lhs.true.2099:                               ; preds = %land.lhs.true.2095
  %1203 = load i32, i32* %dsize, align 4
  %1204 = load i32, i32* %ssize, align 4
  %cmp2100 = icmp ugt i32 %1203, %1204
  br i1 %cmp2100, label %cond.true.2102, label %cond.false.2103

cond.true.2102:                                   ; preds = %land.lhs.true.2099
  %1205 = load i32, i32* %dsize, align 4
  br label %cond.end.2104

cond.false.2103:                                  ; preds = %land.lhs.true.2099
  %1206 = load i32, i32* %ssize, align 4
  br label %cond.end.2104

cond.end.2104:                                    ; preds = %cond.false.2103, %cond.true.2102
  %cond2105 = phi i32 [ %1205, %cond.true.2102 ], [ %1206, %cond.false.2103 ]
  %1207 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx2106 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1207, i64 1
  %ursz2107 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx2106, i32 0, i32 8
  %1208 = load i32, i32* %ursz2107, align 4
  %cmp2108 = icmp ugt i32 %cond2105, %1208
  br i1 %cmp2108, label %cond.true.2110, label %cond.false.2117

cond.true.2110:                                   ; preds = %cond.end.2104
  %1209 = load i32, i32* %dsize, align 4
  %1210 = load i32, i32* %ssize, align 4
  %cmp2111 = icmp ugt i32 %1209, %1210
  br i1 %cmp2111, label %cond.true.2113, label %cond.false.2114

cond.true.2113:                                   ; preds = %cond.true.2110
  %1211 = load i32, i32* %dsize, align 4
  br label %cond.end.2115

cond.false.2114:                                  ; preds = %cond.true.2110
  %1212 = load i32, i32* %ssize, align 4
  br label %cond.end.2115

cond.end.2115:                                    ; preds = %cond.false.2114, %cond.true.2113
  %cond2116 = phi i32 [ %1211, %cond.true.2113 ], [ %1212, %cond.false.2114 ]
  br label %cond.end.2120

cond.false.2117:                                  ; preds = %cond.end.2104
  %1213 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx2118 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1213, i64 1
  %ursz2119 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx2118, i32 0, i32 8
  %1214 = load i32, i32* %ursz2119, align 4
  br label %cond.end.2120

cond.end.2120:                                    ; preds = %cond.false.2117, %cond.end.2115
  %cond2121 = phi i32 [ %cond2116, %cond.end.2115 ], [ %1214, %cond.false.2117 ]
  %conv2122 = zext i32 %cond2121 to i64
  %1215 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits2123 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %1215, i32 0, i32 4
  %1216 = load %struct.cl_limits*, %struct.cl_limits** %limits2123, align 8
  %maxfilesize2124 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %1216, i32 0, i32 5
  %1217 = load i64, i64* %maxfilesize2124, align 8
  %cmp2125 = icmp ugt i64 %conv2122, %1217
  br i1 %cmp2125, label %if.then.2127, label %if.end.2158

if.then.2127:                                     ; preds = %cond.end.2120
  %1218 = load i32, i32* %dsize, align 4
  %1219 = load i32, i32* %ssize, align 4
  %cmp2128 = icmp ugt i32 %1218, %1219
  br i1 %cmp2128, label %cond.true.2130, label %cond.false.2131

cond.true.2130:                                   ; preds = %if.then.2127
  %1220 = load i32, i32* %dsize, align 4
  br label %cond.end.2132

cond.false.2131:                                  ; preds = %if.then.2127
  %1221 = load i32, i32* %ssize, align 4
  br label %cond.end.2132

cond.end.2132:                                    ; preds = %cond.false.2131, %cond.true.2130
  %cond2133 = phi i32 [ %1220, %cond.true.2130 ], [ %1221, %cond.false.2131 ]
  %1222 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx2134 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1222, i64 1
  %ursz2135 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx2134, i32 0, i32 8
  %1223 = load i32, i32* %ursz2135, align 4
  %cmp2136 = icmp ugt i32 %cond2133, %1223
  br i1 %cmp2136, label %cond.true.2138, label %cond.false.2145

cond.true.2138:                                   ; preds = %cond.end.2132
  %1224 = load i32, i32* %dsize, align 4
  %1225 = load i32, i32* %ssize, align 4
  %cmp2139 = icmp ugt i32 %1224, %1225
  br i1 %cmp2139, label %cond.true.2141, label %cond.false.2142

cond.true.2141:                                   ; preds = %cond.true.2138
  %1226 = load i32, i32* %dsize, align 4
  br label %cond.end.2143

cond.false.2142:                                  ; preds = %cond.true.2138
  %1227 = load i32, i32* %ssize, align 4
  br label %cond.end.2143

cond.end.2143:                                    ; preds = %cond.false.2142, %cond.true.2141
  %cond2144 = phi i32 [ %1226, %cond.true.2141 ], [ %1227, %cond.false.2142 ]
  br label %cond.end.2148

cond.false.2145:                                  ; preds = %cond.end.2132
  %1228 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx2146 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1228, i64 1
  %ursz2147 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx2146, i32 0, i32 8
  %1229 = load i32, i32* %ursz2147, align 4
  br label %cond.end.2148

cond.end.2148:                                    ; preds = %cond.false.2145, %cond.end.2143
  %cond2149 = phi i32 [ %cond2144, %cond.end.2143 ], [ %1229, %cond.false.2145 ]
  %1230 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits2150 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %1230, i32 0, i32 4
  %1231 = load %struct.cl_limits*, %struct.cl_limits** %limits2150, align 8
  %maxfilesize2151 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %1231, i32 0, i32 5
  %1232 = load i64, i64* %maxfilesize2151, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.143, i32 0, i32 0), i32 %cond2149, i64 %1232)
  %1233 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %1234 = bitcast %struct.cli_exe_section* %1233 to i8*
  call void @free(i8* %1234) #3
  %1235 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options2152 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %1235, i32 0, i32 5
  %1236 = load i32, i32* %options2152, align 4
  %and2153 = and i32 %1236, 256
  %tobool2154 = icmp ne i32 %and2153, 0
  br i1 %tobool2154, label %if.then.2155, label %if.else.2157

if.then.2155:                                     ; preds = %cond.end.2148
  %1237 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname2156 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %1237, i32 0, i32 0
  %1238 = load i8**, i8*** %virname2156, align 8
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.144, i32 0, i32 0), i8** %1238, align 8
  store i32 1, i32* %retval
  br label %return

if.else.2157:                                     ; preds = %cond.end.2148
  store i32 0, i32* %retval
  br label %return

if.end.2158:                                      ; preds = %cond.end.2120, %land.lhs.true.2095, %if.end.2090
  %1239 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx2159 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1239, i64 1
  %rva2160 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx2159, i32 0, i32 0
  %1240 = load i32, i32* %rva2160, align 4
  %1241 = load i32, i32* %off, align 4
  %sub2161 = sub i32 %1240, %1241
  %1242 = load i32, i32* %dsize, align 4
  %cmp2162 = icmp ugt i32 %sub2161, %1242
  br i1 %cmp2162, label %if.then.2195, label %lor.lhs.false.2164

lor.lhs.false.2164:                               ; preds = %if.end.2158
  %1243 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx2165 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1243, i64 1
  %rva2166 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx2165, i32 0, i32 0
  %1244 = load i32, i32* %rva2166, align 4
  %1245 = load i32, i32* %off, align 4
  %sub2167 = sub i32 %1244, %1245
  %1246 = load i32, i32* %dsize, align 4
  %1247 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx2168 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1247, i64 1
  %ursz2169 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx2168, i32 0, i32 8
  %1248 = load i32, i32* %ursz2169, align 4
  %sub2170 = sub i32 %1246, %1248
  %cmp2171 = icmp ugt i32 %sub2167, %sub2170
  br i1 %cmp2171, label %if.then.2195, label %lor.lhs.false.2173

lor.lhs.false.2173:                               ; preds = %lor.lhs.false.2164
  %1249 = load i32, i32* %upack, align 4
  %tobool2174 = icmp ne i32 %1249, 0
  br i1 %tobool2174, label %land.lhs.true.2175, label %lor.lhs.false.2192

land.lhs.true.2175:                               ; preds = %lor.lhs.false.2173
  %1250 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx2176 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1250, i64 2
  %rva2177 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx2176, i32 0, i32 0
  %1251 = load i32, i32* %rva2177, align 4
  %1252 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx2178 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1252, i64 0
  %rva2179 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx2178, i32 0, i32 0
  %1253 = load i32, i32* %rva2179, align 4
  %sub2180 = sub i32 %1251, %1253
  %1254 = load i32, i32* %dsize, align 4
  %cmp2181 = icmp ugt i32 %sub2180, %1254
  br i1 %cmp2181, label %if.then.2195, label %lor.lhs.false.2183

lor.lhs.false.2183:                               ; preds = %land.lhs.true.2175
  %1255 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx2184 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1255, i64 2
  %rva2185 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx2184, i32 0, i32 0
  %1256 = load i32, i32* %rva2185, align 4
  %1257 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx2186 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1257, i64 0
  %rva2187 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx2186, i32 0, i32 0
  %1258 = load i32, i32* %rva2187, align 4
  %sub2188 = sub i32 %1256, %1258
  %1259 = load i32, i32* %dsize, align 4
  %1260 = load i32, i32* %ssize, align 4
  %sub2189 = sub i32 %1259, %1260
  %cmp2190 = icmp ugt i32 %sub2188, %sub2189
  br i1 %cmp2190, label %if.then.2195, label %lor.lhs.false.2192

lor.lhs.false.2192:                               ; preds = %lor.lhs.false.2183, %lor.lhs.false.2173
  %1261 = load i32, i32* %ssize, align 4
  %1262 = load i32, i32* %dsize, align 4
  %cmp2193 = icmp ugt i32 %1261, %1262
  br i1 %cmp2193, label %if.then.2195, label %if.end.2196

if.then.2195:                                     ; preds = %lor.lhs.false.2192, %lor.lhs.false.2183, %land.lhs.true.2175, %lor.lhs.false.2164, %if.end.2158
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.145, i32 0, i32 0))
  br label %while.end.2286

if.end.2196:                                      ; preds = %lor.lhs.false.2192
  %1263 = load i32, i32* %dsize, align 4
  %conv2197 = zext i32 %1263 to i64
  %call2198 = call i8* @cli_calloc(i64 %conv2197, i64 1)
  store i8* %call2198, i8** %dest, align 8
  %cmp2199 = icmp eq i8* %call2198, null
  br i1 %cmp2199, label %if.then.2201, label %if.end.2202

if.then.2201:                                     ; preds = %if.end.2196
  %1264 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %1265 = bitcast %struct.cli_exe_section* %1264 to i8*
  call void @free(i8* %1265) #3
  store i32 -114, i32* %retval
  br label %return

if.end.2202:                                      ; preds = %if.end.2196
  %1266 = load i32, i32* %desc.addr, align 4
  %call2203 = call i64 @lseek(i32 %1266, i64 0, i32 0) #3
  %1267 = load i32, i32* %desc.addr, align 4
  %1268 = load i8*, i8** %dest, align 8
  %1269 = load i32, i32* %ssize, align 4
  %conv2204 = zext i32 %1269 to i64
  %call2205 = call i64 @read(i32 %1267, i8* %1268, i64 %conv2204)
  %1270 = load i32, i32* %ssize, align 4
  %conv2206 = zext i32 %1270 to i64
  %cmp2207 = icmp ne i64 %call2205, %conv2206
  br i1 %cmp2207, label %if.then.2209, label %if.end.2210

if.then.2209:                                     ; preds = %if.end.2202
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.146, i32 0, i32 0))
  %1271 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %1272 = bitcast %struct.cli_exe_section* %1271 to i8*
  call void @free(i8* %1272) #3
  %1273 = load i8*, i8** %dest, align 8
  call void @free(i8* %1273) #3
  store i32 -123, i32* %retval
  br label %return

if.end.2210:                                      ; preds = %if.end.2202
  %1274 = load i32, i32* %upack, align 4
  %tobool2211 = icmp ne i32 %1274, 0
  br i1 %tobool2211, label %if.then.2212, label %if.end.2222

if.then.2212:                                     ; preds = %if.end.2210
  %1275 = load i8*, i8** %dest, align 8
  %1276 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx2213 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1276, i64 2
  %rva2214 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx2213, i32 0, i32 0
  %1277 = load i32, i32* %rva2214, align 4
  %idx.ext2215 = zext i32 %1277 to i64
  %add.ptr2216 = getelementptr inbounds i8, i8* %1275, i64 %idx.ext2215
  %1278 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx2217 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1278, i64 0
  %rva2218 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx2217, i32 0, i32 0
  %1279 = load i32, i32* %rva2218, align 4
  %idx.ext2219 = zext i32 %1279 to i64
  %idx.neg = sub i64 0, %idx.ext2219
  %add.ptr2220 = getelementptr inbounds i8, i8* %add.ptr2216, i64 %idx.neg
  %1280 = load i8*, i8** %dest, align 8
  %1281 = load i32, i32* %ssize, align 4
  %conv2221 = zext i32 %1281 to i64
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %add.ptr2220, i8* %1280, i64 %conv2221, i32 1, i1 false)
  br label %if.end.2222

if.end.2222:                                      ; preds = %if.then.2212, %if.end.2210
  %1282 = load i32, i32* %desc.addr, align 4
  %1283 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx2223 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1283, i64 1
  %uraw2224 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx2223, i32 0, i32 7
  %1284 = load i32, i32* %uraw2224, align 4
  %conv2225 = zext i32 %1284 to i64
  %call2226 = call i64 @lseek(i32 %1282, i64 %conv2225, i32 0) #3
  %1285 = load i32, i32* %desc.addr, align 4
  %1286 = load i8*, i8** %dest, align 8
  %1287 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx2227 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1287, i64 1
  %rva2228 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx2227, i32 0, i32 0
  %1288 = load i32, i32* %rva2228, align 4
  %idx.ext2229 = zext i32 %1288 to i64
  %add.ptr2230 = getelementptr inbounds i8, i8* %1286, i64 %idx.ext2229
  %1289 = load i32, i32* %off, align 4
  %idx.ext2231 = zext i32 %1289 to i64
  %idx.neg2232 = sub i64 0, %idx.ext2231
  %add.ptr2233 = getelementptr inbounds i8, i8* %add.ptr2230, i64 %idx.neg2232
  %1290 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx2234 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1290, i64 1
  %ursz2235 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx2234, i32 0, i32 8
  %1291 = load i32, i32* %ursz2235, align 4
  %conv2236 = zext i32 %1291 to i64
  %call2237 = call i64 @read(i32 %1285, i8* %add.ptr2233, i64 %conv2236)
  %1292 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx2238 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1292, i64 1
  %ursz2239 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx2238, i32 0, i32 8
  %1293 = load i32, i32* %ursz2239, align 4
  %conv2240 = zext i32 %1293 to i64
  %cmp2241 = icmp ne i64 %call2237, %conv2240
  br i1 %cmp2241, label %if.then.2243, label %if.end.2244

if.then.2243:                                     ; preds = %if.end.2222
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.147, i32 0, i32 0))
  %1294 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %1295 = bitcast %struct.cli_exe_section* %1294 to i8*
  call void @free(i8* %1295) #3
  %1296 = load i8*, i8** %dest, align 8
  call void @free(i8* %1296) #3
  store i32 -123, i32* %retval
  br label %return

if.end.2244:                                      ; preds = %if.end.2222
  %call2245 = call i8* @cli_gentemp(i8* null)
  store i8* %call2245, i8** %tempfile, align 8
  %tobool2246 = icmp ne i8* %call2245, null
  br i1 %tobool2246, label %if.end.2248, label %if.then.2247

if.then.2247:                                     ; preds = %if.end.2244
  %1297 = load i8*, i8** %dest, align 8
  %1298 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  call void (i8*, ...) @cli_multifree(i8* %1297, %struct.cli_exe_section* %1298, i32 0)
  store i32 -114, i32* %retval
  br label %return

if.end.2248:                                      ; preds = %if.end.2244
  %1299 = load i8*, i8** %tempfile, align 8
  %call2249 = call i32 (i8*, i32, ...) @open(i8* %1299, i32 578, i32 448)
  store i32 %call2249, i32* %ndesc, align 4
  %cmp2250 = icmp slt i32 %call2249, 0
  br i1 %cmp2250, label %if.then.2252, label %if.end.2253

if.then.2252:                                     ; preds = %if.end.2248
  %1300 = load i8*, i8** %tempfile, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.148, i32 0, i32 0), i8* %1300)
  %1301 = load i8*, i8** %tempfile, align 8
  call void @free(i8* %1301) #3
  %1302 = load i8*, i8** %dest, align 8
  %1303 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  call void (i8*, ...) @cli_multifree(i8* %1302, %struct.cli_exe_section* %1303, i32 0)
  store i32 -123, i32* %retval
  br label %return

if.end.2253:                                      ; preds = %if.end.2248
  %1304 = load i32, i32* %upack, align 4
  %1305 = load i8*, i8** %dest, align 8
  %1306 = load i32, i32* %dsize, align 4
  %arraydecay2254 = getelementptr inbounds [4096 x i8], [4096 x i8]* %epbuff, i32 0, i32 0
  %1307 = load i32, i32* %vma, align 4
  %1308 = load i32, i32* %ep, align 4
  %opt322255 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr32*
  %ImageBase2256 = getelementptr inbounds %struct.pe_image_optional_hdr32, %struct.pe_image_optional_hdr32* %opt322255, i32 0, i32 9
  %1309 = load i32, i32* %ImageBase2256, align 4
  %1310 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx2257 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1310, i64 0
  %rva2258 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx2257, i32 0, i32 0
  %1311 = load i32, i32* %rva2258, align 4
  %1312 = load i32, i32* %ndesc, align 4
  %call2259 = call i32 @unupack(i32 %1304, i8* %1305, i32 %1306, i8* %arraydecay2254, i32 %1307, i32 %1308, i32 %1309, i32 %1311, i32 %1312)
  switch i32 %call2259, label %sw.default.2282 [
    i32 1, label %sw.bb.2260
  ]

sw.bb.2260:                                       ; preds = %if.end.2253
  %1313 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool2261 = icmp ne i8 %1313, 0
  br i1 %tobool2261, label %if.then.2262, label %if.else.2263

if.then.2262:                                     ; preds = %sw.bb.2260
  %1314 = load i8*, i8** %tempfile, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.149, i32 0, i32 0), i8* %1314)
  br label %if.end.2264

if.else.2263:                                     ; preds = %sw.bb.2260
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.150, i32 0, i32 0))
  br label %if.end.2264

if.end.2264:                                      ; preds = %if.else.2263, %if.then.2262
  %1315 = load i8*, i8** %dest, align 8
  call void (i8*, ...) @cli_multifree(i8* %1315, i32 0)
  %1316 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %1317 = bitcast %struct.cli_exe_section* %1316 to i8*
  call void @free(i8* %1317) #3
  %1318 = load i32, i32* %ndesc, align 4
  %call2265 = call i32 @fsync(i32 %1318)
  %1319 = load i32, i32* %ndesc, align 4
  %call2266 = call i64 @lseek(i32 %1319, i64 0, i32 0) #3
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.138, i32 0, i32 0))
  %1320 = load i32, i32* %ndesc, align 4
  %1321 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call2267 = call i32 @cli_magic_scandesc(i32 %1320, %struct.cli_ctx* %1321)
  %cmp2268 = icmp eq i32 %call2267, 1
  br i1 %cmp2268, label %if.then.2270, label %if.end.2276

if.then.2270:                                     ; preds = %if.end.2264
  %1322 = load i32, i32* %ndesc, align 4
  %call2271 = call i32 @close(i32 %1322)
  %1323 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool2272 = icmp ne i8 %1323, 0
  br i1 %tobool2272, label %if.end.2275, label %if.then.2273

if.then.2273:                                     ; preds = %if.then.2270
  %1324 = load i8*, i8** %tempfile, align 8
  %call2274 = call i32 @unlink(i8* %1324) #3
  br label %if.end.2275

if.end.2275:                                      ; preds = %if.then.2273, %if.then.2270
  %1325 = load i8*, i8** %tempfile, align 8
  call void @free(i8* %1325) #3
  store i32 1, i32* %retval
  br label %return

if.end.2276:                                      ; preds = %if.end.2264
  %1326 = load i32, i32* %ndesc, align 4
  %call2277 = call i32 @close(i32 %1326)
  %1327 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool2278 = icmp ne i8 %1327, 0
  br i1 %tobool2278, label %if.end.2281, label %if.then.2279

if.then.2279:                                     ; preds = %if.end.2276
  %1328 = load i8*, i8** %tempfile, align 8
  %call2280 = call i32 @unlink(i8* %1328) #3
  br label %if.end.2281

if.end.2281:                                      ; preds = %if.then.2279, %if.end.2276
  %1329 = load i8*, i8** %tempfile, align 8
  call void @free(i8* %1329) #3
  store i32 0, i32* %retval
  br label %return

sw.default.2282:                                  ; preds = %if.end.2253
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.151, i32 0, i32 0))
  %1330 = load i32, i32* %ndesc, align 4
  %call2283 = call i32 @close(i32 %1330)
  %1331 = load i8*, i8** %tempfile, align 8
  %call2284 = call i32 @unlink(i8* %1331) #3
  %1332 = load i8*, i8** %dest, align 8
  call void (i8*, ...) @cli_multifree(i8* %1332, i32 0)
  %1333 = load i8*, i8** %tempfile, align 8
  call void @free(i8* %1333) #3
  br label %sw.epilog.2285

sw.epilog.2285:                                   ; preds = %sw.default.2282
  br label %while.end.2286

while.end.2286:                                   ; preds = %sw.epilog.2285, %if.then.2195, %lor.end.2058
  br label %if.end.2287

if.end.2287:                                      ; preds = %while.end.2286, %lor.lhs.false.1943
  br label %while.cond.2288

while.cond.2288:                                  ; preds = %if.end.2287
  %1334 = load i32, i32* %found, align 4
  %tobool2289 = icmp ne i32 %1334, 0
  br i1 %tobool2289, label %land.lhs.true.2290, label %land.end.2305

land.lhs.true.2290:                               ; preds = %while.cond.2288
  %1335 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %dconf2291 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %1335, i32 0, i32 9
  %1336 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf2291, align 8
  %pe2292 = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %1336, i32 0, i32 0
  %1337 = load i32, i32* %pe2292, align 4
  %and2293 = and i32 %1337, 64
  %tobool2294 = icmp ne i32 %and2293, 0
  br i1 %tobool2294, label %land.lhs.true.2295, label %land.end.2305

land.lhs.true.2295:                               ; preds = %land.lhs.true.2290
  %arrayidx2296 = getelementptr inbounds [4096 x i8], [4096 x i8]* %epbuff, i32 0, i64 0
  %1338 = load i8, i8* %arrayidx2296, align 1
  %conv2297 = sext i8 %1338 to i32
  %cmp2298 = icmp eq i32 %conv2297, -121
  br i1 %cmp2298, label %land.rhs.2300, label %land.end.2305

land.rhs.2300:                                    ; preds = %land.lhs.true.2295
  %arrayidx2301 = getelementptr inbounds [4096 x i8], [4096 x i8]* %epbuff, i32 0, i64 1
  %1339 = load i8, i8* %arrayidx2301, align 1
  %conv2302 = sext i8 %1339 to i32
  %cmp2303 = icmp eq i32 %conv2302, 37
  br label %land.end.2305

land.end.2305:                                    ; preds = %land.rhs.2300, %land.lhs.true.2295, %land.lhs.true.2290, %while.cond.2288
  %1340 = phi i1 [ false, %land.lhs.true.2295 ], [ false, %land.lhs.true.2290 ], [ false, %while.cond.2288 ], [ %cmp2303, %land.rhs.2300 ]
  br i1 %1340, label %while.body.2306, label %while.end.2688

while.body.2306:                                  ; preds = %land.end.2305
  %1341 = load i32, i32* %i, align 4
  %add2307 = add i32 %1341, 1
  %idxprom2308 = zext i32 %add2307 to i64
  %1342 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx2309 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1342, i64 %idxprom2308
  %rsz2310 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx2309, i32 0, i32 3
  %1343 = load i32, i32* %rsz2310, align 4
  store i32 %1343, i32* %ssize, align 4
  %1344 = load i32, i32* %i, align 4
  %idxprom2311 = zext i32 %1344 to i64
  %1345 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx2312 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1345, i64 %idxprom2311
  %vsz2313 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx2312, i32 0, i32 1
  %1346 = load i32, i32* %vsz2313, align 4
  store i32 %1346, i32* %dsize, align 4
  %1347 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits2314 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %1347, i32 0, i32 4
  %1348 = load %struct.cl_limits*, %struct.cl_limits** %limits2314, align 8
  %tobool2315 = icmp ne %struct.cl_limits* %1348, null
  br i1 %tobool2315, label %land.lhs.true.2316, label %if.end.2347

land.lhs.true.2316:                               ; preds = %while.body.2306
  %1349 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits2317 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %1349, i32 0, i32 4
  %1350 = load %struct.cl_limits*, %struct.cl_limits** %limits2317, align 8
  %maxfilesize2318 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %1350, i32 0, i32 5
  %1351 = load i64, i64* %maxfilesize2318, align 8
  %tobool2319 = icmp ne i64 %1351, 0
  br i1 %tobool2319, label %land.lhs.true.2320, label %if.end.2347

land.lhs.true.2320:                               ; preds = %land.lhs.true.2316
  %1352 = load i32, i32* %dsize, align 4
  %1353 = load i32, i32* %ssize, align 4
  %cmp2321 = icmp ugt i32 %1352, %1353
  br i1 %cmp2321, label %cond.true.2323, label %cond.false.2324

cond.true.2323:                                   ; preds = %land.lhs.true.2320
  %1354 = load i32, i32* %dsize, align 4
  br label %cond.end.2325

cond.false.2324:                                  ; preds = %land.lhs.true.2320
  %1355 = load i32, i32* %ssize, align 4
  br label %cond.end.2325

cond.end.2325:                                    ; preds = %cond.false.2324, %cond.true.2323
  %cond2326 = phi i32 [ %1354, %cond.true.2323 ], [ %1355, %cond.false.2324 ]
  %conv2327 = zext i32 %cond2326 to i64
  %1356 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits2328 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %1356, i32 0, i32 4
  %1357 = load %struct.cl_limits*, %struct.cl_limits** %limits2328, align 8
  %maxfilesize2329 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %1357, i32 0, i32 5
  %1358 = load i64, i64* %maxfilesize2329, align 8
  %cmp2330 = icmp ugt i64 %conv2327, %1358
  br i1 %cmp2330, label %if.then.2332, label %if.end.2347

if.then.2332:                                     ; preds = %cond.end.2325
  %1359 = load i32, i32* %dsize, align 4
  %1360 = load i32, i32* %ssize, align 4
  %cmp2333 = icmp ugt i32 %1359, %1360
  br i1 %cmp2333, label %cond.true.2335, label %cond.false.2336

cond.true.2335:                                   ; preds = %if.then.2332
  %1361 = load i32, i32* %dsize, align 4
  br label %cond.end.2337

cond.false.2336:                                  ; preds = %if.then.2332
  %1362 = load i32, i32* %ssize, align 4
  br label %cond.end.2337

cond.end.2337:                                    ; preds = %cond.false.2336, %cond.true.2335
  %cond2338 = phi i32 [ %1361, %cond.true.2335 ], [ %1362, %cond.false.2336 ]
  %1363 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits2339 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %1363, i32 0, i32 4
  %1364 = load %struct.cl_limits*, %struct.cl_limits** %limits2339, align 8
  %maxfilesize2340 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %1364, i32 0, i32 5
  %1365 = load i64, i64* %maxfilesize2340, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.152, i32 0, i32 0), i32 %cond2338, i64 %1365)
  %1366 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %1367 = bitcast %struct.cli_exe_section* %1366 to i8*
  call void @free(i8* %1367) #3
  %1368 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options2341 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %1368, i32 0, i32 5
  %1369 = load i32, i32* %options2341, align 4
  %and2342 = and i32 %1369, 256
  %tobool2343 = icmp ne i32 %and2342, 0
  br i1 %tobool2343, label %if.then.2344, label %if.else.2346

if.then.2344:                                     ; preds = %cond.end.2337
  %1370 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname2345 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %1370, i32 0, i32 0
  %1371 = load i8**, i8*** %virname2345, align 8
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.153, i32 0, i32 0), i8** %1371, align 8
  store i32 1, i32* %retval
  br label %return

if.else.2346:                                     ; preds = %cond.end.2337
  store i32 0, i32* %retval
  br label %return

if.end.2347:                                      ; preds = %cond.end.2325, %land.lhs.true.2316, %while.body.2306
  %1372 = load i32, i32* %ssize, align 4
  %cmp2348 = icmp ule i32 %1372, 25
  br i1 %cmp2348, label %if.then.2353, label %lor.lhs.false.2350

lor.lhs.false.2350:                               ; preds = %if.end.2347
  %1373 = load i32, i32* %dsize, align 4
  %1374 = load i32, i32* %ssize, align 4
  %cmp2351 = icmp ule i32 %1373, %1374
  br i1 %cmp2351, label %if.then.2353, label %if.end.2354

if.then.2353:                                     ; preds = %lor.lhs.false.2350, %if.end.2347
  %1375 = load i32, i32* %ssize, align 4
  %1376 = load i32, i32* %dsize, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.154, i32 0, i32 0), i32 %1375, i32 %1376)
  %1377 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %1378 = bitcast %struct.cli_exe_section* %1377 to i8*
  call void @free(i8* %1378) #3
  store i32 0, i32* %retval
  br label %return

if.end.2354:                                      ; preds = %lor.lhs.false.2350
  %arraydecay2355 = getelementptr inbounds [4096 x i8], [4096 x i8]* %epbuff, i32 0, i32 0
  %add.ptr2356 = getelementptr inbounds i8, i8* %arraydecay2355, i64 2
  %1379 = bitcast i8* %add.ptr2356 to i32*
  %1380 = load i32, i32* %1379, align 4
  %opt322357 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr32*
  %ImageBase2358 = getelementptr inbounds %struct.pe_image_optional_hdr32, %struct.pe_image_optional_hdr32* %opt322357, i32 0, i32 9
  %1381 = load i32, i32* %ImageBase2358, align 4
  %sub2359 = sub i32 %1380, %1381
  store i32 %sub2359, i32* %newedx, align 4
  %1382 = load i32, i32* %i, align 4
  %add2360 = add i32 %1382, 1
  %idxprom2361 = zext i32 %add2360 to i64
  %1383 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx2362 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1383, i64 %idxprom2361
  %rsz2363 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx2362, i32 0, i32 3
  %1384 = load i32, i32* %rsz2363, align 4
  %cmp2364 = icmp ugt i32 %1384, 0
  br i1 %cmp2364, label %land.lhs.true.2366, label %if.then.2401

land.lhs.true.2366:                               ; preds = %if.end.2354
  %1385 = load i32, i32* %i, align 4
  %add2367 = add i32 %1385, 1
  %idxprom2368 = zext i32 %add2367 to i64
  %1386 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx2369 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1386, i64 %idxprom2368
  %rsz2370 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx2369, i32 0, i32 3
  %1387 = load i32, i32* %rsz2370, align 4
  %cmp2371 = icmp ule i32 4, %1387
  br i1 %cmp2371, label %land.lhs.true.2373, label %if.then.2401

land.lhs.true.2373:                               ; preds = %land.lhs.true.2366
  %1388 = load i32, i32* %newedx, align 4
  %1389 = load i32, i32* %i, align 4
  %add2374 = add i32 %1389, 1
  %idxprom2375 = zext i32 %add2374 to i64
  %1390 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx2376 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1390, i64 %idxprom2375
  %rva2377 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx2376, i32 0, i32 0
  %1391 = load i32, i32* %rva2377, align 4
  %cmp2378 = icmp uge i32 %1388, %1391
  br i1 %cmp2378, label %land.lhs.true.2380, label %if.then.2401

land.lhs.true.2380:                               ; preds = %land.lhs.true.2373
  %1392 = load i32, i32* %newedx, align 4
  %add2381 = add i32 %1392, 4
  %1393 = load i32, i32* %i, align 4
  %add2382 = add i32 %1393, 1
  %idxprom2383 = zext i32 %add2382 to i64
  %1394 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx2384 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1394, i64 %idxprom2383
  %rva2385 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx2384, i32 0, i32 0
  %1395 = load i32, i32* %rva2385, align 4
  %1396 = load i32, i32* %i, align 4
  %add2386 = add i32 %1396, 1
  %idxprom2387 = zext i32 %add2386 to i64
  %1397 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx2388 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1397, i64 %idxprom2387
  %rsz2389 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx2388, i32 0, i32 3
  %1398 = load i32, i32* %rsz2389, align 4
  %add2390 = add i32 %1395, %1398
  %cmp2391 = icmp ule i32 %add2381, %add2390
  br i1 %cmp2391, label %land.lhs.true.2393, label %if.then.2401

land.lhs.true.2393:                               ; preds = %land.lhs.true.2380
  %1399 = load i32, i32* %newedx, align 4
  %add2394 = add i32 %1399, 4
  %1400 = load i32, i32* %i, align 4
  %add2395 = add i32 %1400, 1
  %idxprom2396 = zext i32 %add2395 to i64
  %1401 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx2397 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1401, i64 %idxprom2396
  %rva2398 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx2397, i32 0, i32 0
  %1402 = load i32, i32* %rva2398, align 4
  %cmp2399 = icmp ugt i32 %add2394, %1402
  br i1 %cmp2399, label %if.end.2402, label %if.then.2401

if.then.2401:                                     ; preds = %land.lhs.true.2393, %land.lhs.true.2380, %land.lhs.true.2373, %land.lhs.true.2366, %if.end.2354
  %1403 = load i32, i32* %newedx, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.155, i32 0, i32 0), i32 %1403)
  br label %while.end.2688

if.end.2402:                                      ; preds = %land.lhs.true.2393
  %1404 = load i32, i32* %ssize, align 4
  %conv2403 = zext i32 %1404 to i64
  %call2404 = call i8* @cli_malloc(i64 %conv2403)
  store i8* %call2404, i8** %src, align 8
  %cmp2405 = icmp eq i8* %call2404, null
  br i1 %cmp2405, label %if.then.2407, label %if.end.2408

if.then.2407:                                     ; preds = %if.end.2402
  %1405 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %1406 = bitcast %struct.cli_exe_section* %1405 to i8*
  call void @free(i8* %1406) #3
  store i32 -114, i32* %retval
  br label %return

if.end.2408:                                      ; preds = %if.end.2402
  %1407 = load i32, i32* %desc.addr, align 4
  %1408 = load i32, i32* %i, align 4
  %add2409 = add i32 %1408, 1
  %idxprom2410 = zext i32 %add2409 to i64
  %1409 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx2411 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1409, i64 %idxprom2410
  %call2412 = call i64 @cli_seeksect(i32 %1407, %struct.cli_exe_section* %arrayidx2411)
  %tobool2413 = icmp ne i64 %call2412, 0
  br i1 %tobool2413, label %lor.lhs.false.2414, label %if.then.2418

lor.lhs.false.2414:                               ; preds = %if.end.2408
  %1410 = load i32, i32* %desc.addr, align 4
  %1411 = load i8*, i8** %src, align 8
  %1412 = load i32, i32* %ssize, align 4
  %call2415 = call i32 @cli_readn(i32 %1410, i8* %1411, i32 %1412)
  %1413 = load i32, i32* %ssize, align 4
  %cmp2416 = icmp ne i32 %call2415, %1413
  br i1 %cmp2416, label %if.then.2418, label %if.end.2420

if.then.2418:                                     ; preds = %lor.lhs.false.2414, %if.end.2408
  %1414 = load i32, i32* %i, align 4
  %add2419 = add i32 %1414, 1
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.156, i32 0, i32 0), i32 %add2419)
  %1415 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %1416 = bitcast %struct.cli_exe_section* %1415 to i8*
  call void @free(i8* %1416) #3
  %1417 = load i8*, i8** %src, align 8
  call void @free(i8* %1417) #3
  store i32 -123, i32* %retval
  br label %return

if.end.2420:                                      ; preds = %lor.lhs.false.2414
  %1418 = load i8*, i8** %src, align 8
  %1419 = load i32, i32* %newedx, align 4
  %idx.ext2421 = zext i32 %1419 to i64
  %add.ptr2422 = getelementptr inbounds i8, i8* %1418, i64 %idx.ext2421
  %1420 = load i32, i32* %i, align 4
  %add2423 = add i32 %1420, 1
  %idxprom2424 = zext i32 %add2423 to i64
  %1421 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx2425 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1421, i64 %idxprom2424
  %rva2426 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx2425, i32 0, i32 0
  %1422 = load i32, i32* %rva2426, align 4
  %idx.ext2427 = zext i32 %1422 to i64
  %idx.neg2428 = sub i64 0, %idx.ext2427
  %add.ptr2429 = getelementptr inbounds i8, i8* %add.ptr2422, i64 %idx.neg2428
  store i8* %add.ptr2429, i8** %dest, align 8
  %1423 = load i32, i32* %newedx, align 4
  %1424 = load i32, i32* %i, align 4
  %add2430 = add i32 %1424, 1
  %idxprom2431 = zext i32 %add2430 to i64
  %1425 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx2432 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1425, i64 %idxprom2431
  %rva2433 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx2432, i32 0, i32 0
  %1426 = load i32, i32* %rva2433, align 4
  %cmp2434 = icmp ult i32 %1423, %1426
  br i1 %cmp2434, label %if.then.2455, label %lor.lhs.false.2436

lor.lhs.false.2436:                               ; preds = %if.end.2420
  %1427 = load i32, i32* %ssize, align 4
  %cmp2437 = icmp ugt i32 %1427, 0
  br i1 %cmp2437, label %land.lhs.true.2439, label %if.then.2455

land.lhs.true.2439:                               ; preds = %lor.lhs.false.2436
  %1428 = load i32, i32* %ssize, align 4
  %cmp2440 = icmp ule i32 4, %1428
  br i1 %cmp2440, label %land.lhs.true.2442, label %if.then.2455

land.lhs.true.2442:                               ; preds = %land.lhs.true.2439
  %1429 = load i8*, i8** %dest, align 8
  %1430 = load i8*, i8** %src, align 8
  %cmp2443 = icmp uge i8* %1429, %1430
  br i1 %cmp2443, label %land.lhs.true.2445, label %if.then.2455

land.lhs.true.2445:                               ; preds = %land.lhs.true.2442
  %1431 = load i8*, i8** %dest, align 8
  %add.ptr2446 = getelementptr inbounds i8, i8* %1431, i64 4
  %1432 = load i8*, i8** %src, align 8
  %1433 = load i32, i32* %ssize, align 4
  %idx.ext2447 = zext i32 %1433 to i64
  %add.ptr2448 = getelementptr inbounds i8, i8* %1432, i64 %idx.ext2447
  %cmp2449 = icmp ule i8* %add.ptr2446, %add.ptr2448
  br i1 %cmp2449, label %land.lhs.true.2451, label %if.then.2455

land.lhs.true.2451:                               ; preds = %land.lhs.true.2445
  %1434 = load i8*, i8** %dest, align 8
  %add.ptr2452 = getelementptr inbounds i8, i8* %1434, i64 4
  %1435 = load i8*, i8** %src, align 8
  %cmp2453 = icmp ugt i8* %add.ptr2452, %1435
  br i1 %cmp2453, label %if.end.2456, label %if.then.2455

if.then.2455:                                     ; preds = %land.lhs.true.2451, %land.lhs.true.2445, %land.lhs.true.2442, %land.lhs.true.2439, %lor.lhs.false.2436, %if.end.2420
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.157, i32 0, i32 0))
  %1436 = load i8*, i8** %src, align 8
  call void @free(i8* %1436) #3
  br label %while.end.2688

if.end.2456:                                      ; preds = %land.lhs.true.2451
  %1437 = load i8*, i8** %dest, align 8
  %1438 = bitcast i8* %1437 to i32*
  %1439 = load i32, i32* %1438, align 4
  %opt322457 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr32*
  %ImageBase2458 = getelementptr inbounds %struct.pe_image_optional_hdr32, %struct.pe_image_optional_hdr32* %opt322457, i32 0, i32 9
  %1440 = load i32, i32* %ImageBase2458, align 4
  %sub2459 = sub i32 %1439, %1440
  store i32 %sub2459, i32* %newedx, align 4
  %1441 = load i32, i32* %i, align 4
  %add2460 = add i32 %1441, 1
  %idxprom2461 = zext i32 %add2460 to i64
  %1442 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx2462 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1442, i64 %idxprom2461
  %rsz2463 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx2462, i32 0, i32 3
  %1443 = load i32, i32* %rsz2463, align 4
  %cmp2464 = icmp ugt i32 %1443, 0
  br i1 %cmp2464, label %land.lhs.true.2466, label %if.then.2501

land.lhs.true.2466:                               ; preds = %if.end.2456
  %1444 = load i32, i32* %i, align 4
  %add2467 = add i32 %1444, 1
  %idxprom2468 = zext i32 %add2467 to i64
  %1445 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx2469 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1445, i64 %idxprom2468
  %rsz2470 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx2469, i32 0, i32 3
  %1446 = load i32, i32* %rsz2470, align 4
  %cmp2471 = icmp ule i32 4, %1446
  br i1 %cmp2471, label %land.lhs.true.2473, label %if.then.2501

land.lhs.true.2473:                               ; preds = %land.lhs.true.2466
  %1447 = load i32, i32* %newedx, align 4
  %1448 = load i32, i32* %i, align 4
  %add2474 = add i32 %1448, 1
  %idxprom2475 = zext i32 %add2474 to i64
  %1449 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx2476 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1449, i64 %idxprom2475
  %rva2477 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx2476, i32 0, i32 0
  %1450 = load i32, i32* %rva2477, align 4
  %cmp2478 = icmp uge i32 %1447, %1450
  br i1 %cmp2478, label %land.lhs.true.2480, label %if.then.2501

land.lhs.true.2480:                               ; preds = %land.lhs.true.2473
  %1451 = load i32, i32* %newedx, align 4
  %add2481 = add i32 %1451, 4
  %1452 = load i32, i32* %i, align 4
  %add2482 = add i32 %1452, 1
  %idxprom2483 = zext i32 %add2482 to i64
  %1453 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx2484 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1453, i64 %idxprom2483
  %rva2485 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx2484, i32 0, i32 0
  %1454 = load i32, i32* %rva2485, align 4
  %1455 = load i32, i32* %i, align 4
  %add2486 = add i32 %1455, 1
  %idxprom2487 = zext i32 %add2486 to i64
  %1456 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx2488 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1456, i64 %idxprom2487
  %rsz2489 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx2488, i32 0, i32 3
  %1457 = load i32, i32* %rsz2489, align 4
  %add2490 = add i32 %1454, %1457
  %cmp2491 = icmp ule i32 %add2481, %add2490
  br i1 %cmp2491, label %land.lhs.true.2493, label %if.then.2501

land.lhs.true.2493:                               ; preds = %land.lhs.true.2480
  %1458 = load i32, i32* %newedx, align 4
  %add2494 = add i32 %1458, 4
  %1459 = load i32, i32* %i, align 4
  %add2495 = add i32 %1459, 1
  %idxprom2496 = zext i32 %add2495 to i64
  %1460 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx2497 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1460, i64 %idxprom2496
  %rva2498 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx2497, i32 0, i32 0
  %1461 = load i32, i32* %rva2498, align 4
  %cmp2499 = icmp ugt i32 %add2494, %1461
  br i1 %cmp2499, label %if.end.2502, label %if.then.2501

if.then.2501:                                     ; preds = %land.lhs.true.2493, %land.lhs.true.2480, %land.lhs.true.2473, %land.lhs.true.2466, %if.end.2456
  %1462 = load i32, i32* %newedx, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.158, i32 0, i32 0), i32 %1462)
  %1463 = load i8*, i8** %src, align 8
  call void @free(i8* %1463) #3
  br label %while.end.2688

if.end.2502:                                      ; preds = %land.lhs.true.2493
  %1464 = load i8*, i8** %src, align 8
  %1465 = load i32, i32* %newedx, align 4
  %idx.ext2503 = zext i32 %1465 to i64
  %add.ptr2504 = getelementptr inbounds i8, i8* %1464, i64 %idx.ext2503
  %1466 = load i32, i32* %i, align 4
  %add2505 = add i32 %1466, 1
  %idxprom2506 = zext i32 %add2505 to i64
  %1467 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx2507 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1467, i64 %idxprom2506
  %rva2508 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx2507, i32 0, i32 0
  %1468 = load i32, i32* %rva2508, align 4
  %idx.ext2509 = zext i32 %1468 to i64
  %idx.neg2510 = sub i64 0, %idx.ext2509
  %add.ptr2511 = getelementptr inbounds i8, i8* %add.ptr2504, i64 %idx.neg2510
  store i8* %add.ptr2511, i8** %dest, align 8
  %1469 = load i32, i32* %ssize, align 4
  %cmp2512 = icmp ugt i32 %1469, 0
  br i1 %cmp2512, label %land.lhs.true.2514, label %if.then.2530

land.lhs.true.2514:                               ; preds = %if.end.2502
  %1470 = load i32, i32* %ssize, align 4
  %cmp2515 = icmp ule i32 32, %1470
  br i1 %cmp2515, label %land.lhs.true.2517, label %if.then.2530

land.lhs.true.2517:                               ; preds = %land.lhs.true.2514
  %1471 = load i8*, i8** %dest, align 8
  %1472 = load i8*, i8** %src, align 8
  %cmp2518 = icmp uge i8* %1471, %1472
  br i1 %cmp2518, label %land.lhs.true.2520, label %if.then.2530

land.lhs.true.2520:                               ; preds = %land.lhs.true.2517
  %1473 = load i8*, i8** %dest, align 8
  %add.ptr2521 = getelementptr inbounds i8, i8* %1473, i64 32
  %1474 = load i8*, i8** %src, align 8
  %1475 = load i32, i32* %ssize, align 4
  %idx.ext2522 = zext i32 %1475 to i64
  %add.ptr2523 = getelementptr inbounds i8, i8* %1474, i64 %idx.ext2522
  %cmp2524 = icmp ule i8* %add.ptr2521, %add.ptr2523
  br i1 %cmp2524, label %land.lhs.true.2526, label %if.then.2530

land.lhs.true.2526:                               ; preds = %land.lhs.true.2520
  %1476 = load i8*, i8** %dest, align 8
  %add.ptr2527 = getelementptr inbounds i8, i8* %1476, i64 32
  %1477 = load i8*, i8** %src, align 8
  %cmp2528 = icmp ugt i8* %add.ptr2527, %1477
  br i1 %cmp2528, label %if.end.2531, label %if.then.2530

if.then.2530:                                     ; preds = %land.lhs.true.2526, %land.lhs.true.2520, %land.lhs.true.2517, %land.lhs.true.2514, %if.end.2502
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.159, i32 0, i32 0))
  %1478 = load i8*, i8** %src, align 8
  call void @free(i8* %1478) #3
  br label %while.end.2688

if.end.2531:                                      ; preds = %land.lhs.true.2526
  %1479 = load i8*, i8** %dest, align 8
  %1480 = bitcast i8* %1479 to i32*
  %1481 = load i32, i32* %1480, align 4
  %opt322532 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr32*
  %ImageBase2533 = getelementptr inbounds %struct.pe_image_optional_hdr32, %struct.pe_image_optional_hdr32* %opt322532, i32 0, i32 9
  %1482 = load i32, i32* %ImageBase2533, align 4
  %sub2534 = sub i32 %1481, %1482
  store i32 %sub2534, i32* %newedi, align 4
  %1483 = load i8*, i8** %dest, align 8
  %add.ptr2535 = getelementptr inbounds i8, i8* %1483, i64 4
  %1484 = bitcast i8* %add.ptr2535 to i32*
  %1485 = load i32, i32* %1484, align 4
  %opt322536 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr32*
  %ImageBase2537 = getelementptr inbounds %struct.pe_image_optional_hdr32, %struct.pe_image_optional_hdr32* %opt322536, i32 0, i32 9
  %1486 = load i32, i32* %ImageBase2537, align 4
  %sub2538 = sub i32 %1485, %1486
  store i32 %sub2538, i32* %newesi, align 4
  %1487 = load i8*, i8** %dest, align 8
  %add.ptr2539 = getelementptr inbounds i8, i8* %1487, i64 16
  %1488 = bitcast i8* %add.ptr2539 to i32*
  %1489 = load i32, i32* %1488, align 4
  %opt322540 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr32*
  %ImageBase2541 = getelementptr inbounds %struct.pe_image_optional_hdr32, %struct.pe_image_optional_hdr32* %opt322540, i32 0, i32 9
  %1490 = load i32, i32* %ImageBase2541, align 4
  %sub2542 = sub i32 %1489, %1490
  store i32 %sub2542, i32* %newebx, align 4
  %1491 = load i8*, i8** %dest, align 8
  %add.ptr2543 = getelementptr inbounds i8, i8* %1491, i64 20
  %1492 = bitcast i8* %add.ptr2543 to i32*
  %1493 = load i32, i32* %1492, align 4
  store i32 %1493, i32* %newedx, align 4
  %1494 = load i32, i32* %newedi, align 4
  %1495 = load i32, i32* %i, align 4
  %idxprom2544 = zext i32 %1495 to i64
  %1496 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx2545 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1496, i64 %idxprom2544
  %rva2546 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx2545, i32 0, i32 0
  %1497 = load i32, i32* %rva2546, align 4
  %cmp2547 = icmp ne i32 %1494, %1497
  br i1 %cmp2547, label %if.then.2549, label %if.end.2553

if.then.2549:                                     ; preds = %if.end.2531
  %1498 = load i32, i32* %newedi, align 4
  %1499 = load i32, i32* %i, align 4
  %idxprom2550 = zext i32 %1499 to i64
  %1500 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx2551 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1500, i64 %idxprom2550
  %rva2552 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx2551, i32 0, i32 0
  %1501 = load i32, i32* %rva2552, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.160, i32 0, i32 0), i32 %1498, i32 %1501)
  %1502 = load i8*, i8** %src, align 8
  call void @free(i8* %1502) #3
  br label %while.end.2688

if.end.2553:                                      ; preds = %if.end.2531
  %1503 = load i32, i32* %newesi, align 4
  %1504 = load i32, i32* %i, align 4
  %add2554 = add i32 %1504, 1
  %idxprom2555 = zext i32 %add2554 to i64
  %1505 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx2556 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1505, i64 %idxprom2555
  %rva2557 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx2556, i32 0, i32 0
  %1506 = load i32, i32* %rva2557, align 4
  %cmp2558 = icmp ult i32 %1503, %1506
  br i1 %cmp2558, label %if.then.2572, label %lor.lhs.false.2560

lor.lhs.false.2560:                               ; preds = %if.end.2553
  %1507 = load i32, i32* %newesi, align 4
  %1508 = load i32, i32* %i, align 4
  %add2561 = add i32 %1508, 1
  %idxprom2562 = zext i32 %add2561 to i64
  %1509 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx2563 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1509, i64 %idxprom2562
  %rva2564 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx2563, i32 0, i32 0
  %1510 = load i32, i32* %rva2564, align 4
  %sub2565 = sub i32 %1507, %1510
  %1511 = load i32, i32* %i, align 4
  %add2566 = add i32 %1511, 1
  %idxprom2567 = zext i32 %add2566 to i64
  %1512 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx2568 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1512, i64 %idxprom2567
  %rsz2569 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx2568, i32 0, i32 3
  %1513 = load i32, i32* %rsz2569, align 4
  %cmp2570 = icmp uge i32 %sub2565, %1513
  br i1 %cmp2570, label %if.then.2572, label %if.end.2573

if.then.2572:                                     ; preds = %lor.lhs.false.2560, %if.end.2553
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.161, i32 0, i32 0))
  %1514 = load i8*, i8** %src, align 8
  call void @free(i8* %1514) #3
  br label %while.end.2688

if.end.2573:                                      ; preds = %lor.lhs.false.2560
  %1515 = load i32, i32* %i, align 4
  %add2574 = add i32 %1515, 1
  %idxprom2575 = zext i32 %add2574 to i64
  %1516 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx2576 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1516, i64 %idxprom2575
  %rsz2577 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx2576, i32 0, i32 3
  %1517 = load i32, i32* %rsz2577, align 4
  %cmp2578 = icmp ugt i32 %1517, 0
  br i1 %cmp2578, label %land.lhs.true.2580, label %if.then.2615

land.lhs.true.2580:                               ; preds = %if.end.2573
  %1518 = load i32, i32* %i, align 4
  %add2581 = add i32 %1518, 1
  %idxprom2582 = zext i32 %add2581 to i64
  %1519 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx2583 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1519, i64 %idxprom2582
  %rsz2584 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx2583, i32 0, i32 3
  %1520 = load i32, i32* %rsz2584, align 4
  %cmp2585 = icmp ule i32 16, %1520
  br i1 %cmp2585, label %land.lhs.true.2587, label %if.then.2615

land.lhs.true.2587:                               ; preds = %land.lhs.true.2580
  %1521 = load i32, i32* %newebx, align 4
  %1522 = load i32, i32* %i, align 4
  %add2588 = add i32 %1522, 1
  %idxprom2589 = zext i32 %add2588 to i64
  %1523 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx2590 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1523, i64 %idxprom2589
  %rva2591 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx2590, i32 0, i32 0
  %1524 = load i32, i32* %rva2591, align 4
  %cmp2592 = icmp uge i32 %1521, %1524
  br i1 %cmp2592, label %land.lhs.true.2594, label %if.then.2615

land.lhs.true.2594:                               ; preds = %land.lhs.true.2587
  %1525 = load i32, i32* %newebx, align 4
  %add2595 = add i32 %1525, 16
  %1526 = load i32, i32* %i, align 4
  %add2596 = add i32 %1526, 1
  %idxprom2597 = zext i32 %add2596 to i64
  %1527 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx2598 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1527, i64 %idxprom2597
  %rva2599 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx2598, i32 0, i32 0
  %1528 = load i32, i32* %rva2599, align 4
  %1529 = load i32, i32* %i, align 4
  %add2600 = add i32 %1529, 1
  %idxprom2601 = zext i32 %add2600 to i64
  %1530 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx2602 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1530, i64 %idxprom2601
  %rsz2603 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx2602, i32 0, i32 3
  %1531 = load i32, i32* %rsz2603, align 4
  %add2604 = add i32 %1528, %1531
  %cmp2605 = icmp ule i32 %add2595, %add2604
  br i1 %cmp2605, label %land.lhs.true.2607, label %if.then.2615

land.lhs.true.2607:                               ; preds = %land.lhs.true.2594
  %1532 = load i32, i32* %newebx, align 4
  %add2608 = add i32 %1532, 16
  %1533 = load i32, i32* %i, align 4
  %add2609 = add i32 %1533, 1
  %idxprom2610 = zext i32 %add2609 to i64
  %1534 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx2611 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1534, i64 %idxprom2610
  %rva2612 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx2611, i32 0, i32 0
  %1535 = load i32, i32* %rva2612, align 4
  %cmp2613 = icmp ugt i32 %add2608, %1535
  br i1 %cmp2613, label %if.end.2616, label %if.then.2615

if.then.2615:                                     ; preds = %land.lhs.true.2607, %land.lhs.true.2594, %land.lhs.true.2587, %land.lhs.true.2580, %if.end.2573
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.162, i32 0, i32 0))
  %1536 = load i8*, i8** %src, align 8
  call void @free(i8* %1536) #3
  br label %while.end.2688

if.end.2616:                                      ; preds = %land.lhs.true.2607
  %1537 = load i32, i32* %newebx, align 4
  %add2617 = add i32 %1537, 12
  %1538 = load i32, i32* %i, align 4
  %add2618 = add i32 %1538, 1
  %idxprom2619 = zext i32 %add2618 to i64
  %1539 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx2620 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1539, i64 %idxprom2619
  %rva2621 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx2620, i32 0, i32 0
  %1540 = load i32, i32* %rva2621, align 4
  %sub2622 = sub i32 %add2617, %1540
  %1541 = load i8*, i8** %src, align 8
  %idx.ext2623 = zext i32 %sub2622 to i64
  %add.ptr2624 = getelementptr inbounds i8, i8* %1541, i64 %idx.ext2623
  %1542 = bitcast i8* %add.ptr2624 to i32*
  %1543 = load i32, i32* %1542, align 4
  %opt322625 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr32*
  %ImageBase2626 = getelementptr inbounds %struct.pe_image_optional_hdr32, %struct.pe_image_optional_hdr32* %opt322625, i32 0, i32 9
  %1544 = load i32, i32* %ImageBase2626, align 4
  %sub2627 = sub i32 %1543, %1544
  store i32 %sub2627, i32* %newedx, align 4
  %1545 = load i32, i32* %newedx, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.163, i32 0, i32 0), i32 %1545)
  %1546 = load i32, i32* %dsize, align 4
  %conv2628 = zext i32 %1546 to i64
  %call2629 = call i8* @cli_calloc(i64 %conv2628, i64 1)
  store i8* %call2629, i8** %dest, align 8
  %cmp2630 = icmp eq i8* %call2629, null
  br i1 %cmp2630, label %if.then.2632, label %if.end.2633

if.then.2632:                                     ; preds = %if.end.2616
  %1547 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %1548 = bitcast %struct.cli_exe_section* %1547 to i8*
  call void @free(i8* %1548) #3
  %1549 = load i8*, i8** %src, align 8
  call void @free(i8* %1549) #3
  store i32 -114, i32* %retval
  br label %return

if.end.2633:                                      ; preds = %if.end.2616
  %call2634 = call i8* @cli_gentemp(i8* null)
  store i8* %call2634, i8** %tempfile, align 8
  %tobool2635 = icmp ne i8* %call2634, null
  br i1 %tobool2635, label %if.end.2637, label %if.then.2636

if.then.2636:                                     ; preds = %if.end.2633
  %1550 = load i8*, i8** %src, align 8
  %1551 = load i8*, i8** %dest, align 8
  %1552 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  call void (i8*, ...) @cli_multifree(i8* %1550, i8* %1551, %struct.cli_exe_section* %1552, i32 0)
  store i32 -114, i32* %retval
  br label %return

if.end.2637:                                      ; preds = %if.end.2633
  %1553 = load i8*, i8** %tempfile, align 8
  %call2638 = call i32 (i8*, i32, ...) @open(i8* %1553, i32 578, i32 448)
  store i32 %call2638, i32* %ndesc, align 4
  %cmp2639 = icmp slt i32 %call2638, 0
  br i1 %cmp2639, label %if.then.2641, label %if.end.2642

if.then.2641:                                     ; preds = %if.end.2637
  %1554 = load i8*, i8** %tempfile, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.164, i32 0, i32 0), i8* %1554)
  %1555 = load i8*, i8** %tempfile, align 8
  call void @free(i8* %1555) #3
  %1556 = load i8*, i8** %src, align 8
  %1557 = load i8*, i8** %dest, align 8
  %1558 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  call void (i8*, ...) @cli_multifree(i8* %1556, i8* %1557, %struct.cli_exe_section* %1558, i32 0)
  store i32 -123, i32* %retval
  br label %return

if.end.2642:                                      ; preds = %if.end.2637
  %1559 = load i32, i32* %newesi, align 4
  %1560 = load i32, i32* %i, align 4
  %add2643 = add i32 %1560, 1
  %idxprom2644 = zext i32 %add2643 to i64
  %1561 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx2645 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1561, i64 %idxprom2644
  %rva2646 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx2645, i32 0, i32 0
  %1562 = load i32, i32* %rva2646, align 4
  %sub2647 = sub i32 %1559, %1562
  %1563 = load i8*, i8** %src, align 8
  %idx.ext2648 = zext i32 %sub2647 to i64
  %add.ptr2649 = getelementptr inbounds i8, i8* %1563, i64 %idx.ext2648
  %1564 = load i8*, i8** %dest, align 8
  %1565 = load i32, i32* %ssize, align 4
  %1566 = load i32, i32* %i, align 4
  %add2650 = add i32 %1566, 1
  %idxprom2651 = zext i32 %add2650 to i64
  %1567 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx2652 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1567, i64 %idxprom2651
  %rva2653 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx2652, i32 0, i32 0
  %1568 = load i32, i32* %rva2653, align 4
  %add2654 = add i32 %1565, %1568
  %1569 = load i32, i32* %newesi, align 4
  %sub2655 = sub i32 %add2654, %1569
  %1570 = load i32, i32* %dsize, align 4
  %1571 = load i32, i32* %newedi, align 4
  %opt322656 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr32*
  %ImageBase2657 = getelementptr inbounds %struct.pe_image_optional_hdr32, %struct.pe_image_optional_hdr32* %opt322656, i32 0, i32 9
  %1572 = load i32, i32* %ImageBase2657, align 4
  %1573 = load i32, i32* %newedx, align 4
  %1574 = load i32, i32* %ndesc, align 4
  %call2658 = call i32 @unfsg_200(i8* %add.ptr2649, i8* %1564, i32 %sub2655, i32 %1570, i32 %1571, i32 %1572, i32 %1573, i32 %1574)
  switch i32 %call2658, label %sw.default.2684 [
    i32 1, label %sw.bb.2659
    i32 0, label %sw.bb.2681
  ]

sw.bb.2659:                                       ; preds = %if.end.2642
  %1575 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool2660 = icmp ne i8 %1575, 0
  br i1 %tobool2660, label %if.then.2661, label %if.else.2662

if.then.2661:                                     ; preds = %sw.bb.2659
  %1576 = load i8*, i8** %tempfile, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.165, i32 0, i32 0), i8* %1576)
  br label %if.end.2663

if.else.2662:                                     ; preds = %sw.bb.2659
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.166, i32 0, i32 0))
  br label %if.end.2663

if.end.2663:                                      ; preds = %if.else.2662, %if.then.2661
  %1577 = load i8*, i8** %src, align 8
  %1578 = load i8*, i8** %dest, align 8
  call void (i8*, ...) @cli_multifree(i8* %1577, i8* %1578, i32 0)
  %1579 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %1580 = bitcast %struct.cli_exe_section* %1579 to i8*
  call void @free(i8* %1580) #3
  %1581 = load i32, i32* %ndesc, align 4
  %call2664 = call i32 @fsync(i32 %1581)
  %1582 = load i32, i32* %ndesc, align 4
  %call2665 = call i64 @lseek(i32 %1582, i64 0, i32 0) #3
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.138, i32 0, i32 0))
  %1583 = load i32, i32* %ndesc, align 4
  %1584 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call2666 = call i32 @cli_magic_scandesc(i32 %1583, %struct.cli_ctx* %1584)
  %cmp2667 = icmp eq i32 %call2666, 1
  br i1 %cmp2667, label %if.then.2669, label %if.end.2675

if.then.2669:                                     ; preds = %if.end.2663
  %1585 = load i32, i32* %ndesc, align 4
  %call2670 = call i32 @close(i32 %1585)
  %1586 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool2671 = icmp ne i8 %1586, 0
  br i1 %tobool2671, label %if.end.2674, label %if.then.2672

if.then.2672:                                     ; preds = %if.then.2669
  %1587 = load i8*, i8** %tempfile, align 8
  %call2673 = call i32 @unlink(i8* %1587) #3
  br label %if.end.2674

if.end.2674:                                      ; preds = %if.then.2672, %if.then.2669
  %1588 = load i8*, i8** %tempfile, align 8
  call void @free(i8* %1588) #3
  store i32 1, i32* %retval
  br label %return

if.end.2675:                                      ; preds = %if.end.2663
  %1589 = load i32, i32* %ndesc, align 4
  %call2676 = call i32 @close(i32 %1589)
  %1590 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool2677 = icmp ne i8 %1590, 0
  br i1 %tobool2677, label %if.end.2680, label %if.then.2678

if.then.2678:                                     ; preds = %if.end.2675
  %1591 = load i8*, i8** %tempfile, align 8
  %call2679 = call i32 @unlink(i8* %1591) #3
  br label %if.end.2680

if.end.2680:                                      ; preds = %if.then.2678, %if.end.2675
  %1592 = load i8*, i8** %tempfile, align 8
  call void @free(i8* %1592) #3
  store i32 0, i32* %retval
  br label %return

sw.bb.2681:                                       ; preds = %if.end.2642
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.167, i32 0, i32 0))
  %1593 = load i32, i32* %ndesc, align 4
  %call2682 = call i32 @close(i32 %1593)
  %1594 = load i8*, i8** %tempfile, align 8
  %call2683 = call i32 @unlink(i8* %1594) #3
  %1595 = load i8*, i8** %tempfile, align 8
  call void @free(i8* %1595) #3
  store i32 0, i32* %found, align 4
  store i32 1, i32* %upx_success, align 4
  br label %sw.epilog.2687

sw.default.2684:                                  ; preds = %if.end.2642
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.168, i32 0, i32 0))
  %1596 = load i32, i32* %ndesc, align 4
  %call2685 = call i32 @close(i32 %1596)
  %1597 = load i8*, i8** %tempfile, align 8
  %call2686 = call i32 @unlink(i8* %1597) #3
  %1598 = load i8*, i8** %src, align 8
  %1599 = load i8*, i8** %dest, align 8
  call void (i8*, ...) @cli_multifree(i8* %1598, i8* %1599, i32 0)
  %1600 = load i8*, i8** %tempfile, align 8
  call void @free(i8* %1600) #3
  br label %sw.epilog.2687

sw.epilog.2687:                                   ; preds = %sw.default.2684, %sw.bb.2681
  br label %while.end.2688

while.end.2688:                                   ; preds = %sw.epilog.2687, %if.then.2615, %if.then.2572, %if.then.2549, %if.then.2530, %if.then.2501, %if.then.2455, %if.then.2401, %land.end.2305
  br label %while.cond.2689

while.cond.2689:                                  ; preds = %while.end.2688
  %1601 = load i32, i32* %found, align 4
  %tobool2690 = icmp ne i32 %1601, 0
  br i1 %tobool2690, label %land.lhs.true.2691, label %land.end.2709

land.lhs.true.2691:                               ; preds = %while.cond.2689
  %1602 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %dconf2692 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %1602, i32 0, i32 9
  %1603 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf2692, align 8
  %pe2693 = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %1603, i32 0, i32 0
  %1604 = load i32, i32* %pe2693, align 4
  %and2694 = and i32 %1604, 64
  %tobool2695 = icmp ne i32 %and2694, 0
  br i1 %tobool2695, label %land.lhs.true.2696, label %land.end.2709

land.lhs.true.2696:                               ; preds = %land.lhs.true.2691
  %arrayidx2697 = getelementptr inbounds [4096 x i8], [4096 x i8]* %epbuff, i32 0, i64 0
  %1605 = load i8, i8* %arrayidx2697, align 1
  %conv2698 = sext i8 %1605 to i32
  %cmp2699 = icmp eq i32 %conv2698, -66
  br i1 %cmp2699, label %land.rhs.2701, label %land.end.2709

land.rhs.2701:                                    ; preds = %land.lhs.true.2696
  %arraydecay2702 = getelementptr inbounds [4096 x i8], [4096 x i8]* %epbuff, i32 0, i32 0
  %add.ptr2703 = getelementptr inbounds i8, i8* %arraydecay2702, i64 1
  %1606 = bitcast i8* %add.ptr2703 to i32*
  %1607 = load i32, i32* %1606, align 4
  %opt322704 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr32*
  %ImageBase2705 = getelementptr inbounds %struct.pe_image_optional_hdr32, %struct.pe_image_optional_hdr32* %opt322704, i32 0, i32 9
  %1608 = load i32, i32* %ImageBase2705, align 4
  %sub2706 = sub i32 %1607, %1608
  %1609 = load i32, i32* %min, align 4
  %cmp2707 = icmp ult i32 %sub2706, %1609
  br label %land.end.2709

land.end.2709:                                    ; preds = %land.rhs.2701, %land.lhs.true.2696, %land.lhs.true.2691, %while.cond.2689
  %1610 = phi i1 [ false, %land.lhs.true.2696 ], [ false, %land.lhs.true.2691 ], [ false, %while.cond.2689 ], [ %cmp2707, %land.rhs.2701 ]
  br i1 %1610, label %while.body.2710, label %while.end.3011

while.body.2710:                                  ; preds = %land.end.2709
  store i32 0, i32* %sectcnt, align 4
  %1611 = load i32, i32* %i, align 4
  %add2713 = add i32 %1611, 1
  %idxprom2714 = zext i32 %add2713 to i64
  %1612 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx2715 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1612, i64 %idxprom2714
  %rsz2716 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx2715, i32 0, i32 3
  %1613 = load i32, i32* %rsz2716, align 4
  store i32 %1613, i32* %ssize, align 4
  %1614 = load i32, i32* %i, align 4
  %idxprom2717 = zext i32 %1614 to i64
  %1615 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx2718 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1615, i64 %idxprom2717
  %vsz2719 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx2718, i32 0, i32 1
  %1616 = load i32, i32* %vsz2719, align 4
  store i32 %1616, i32* %dsize, align 4
  %1617 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits2720 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %1617, i32 0, i32 4
  %1618 = load %struct.cl_limits*, %struct.cl_limits** %limits2720, align 8
  %tobool2721 = icmp ne %struct.cl_limits* %1618, null
  br i1 %tobool2721, label %land.lhs.true.2722, label %if.end.2753

land.lhs.true.2722:                               ; preds = %while.body.2710
  %1619 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits2723 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %1619, i32 0, i32 4
  %1620 = load %struct.cl_limits*, %struct.cl_limits** %limits2723, align 8
  %maxfilesize2724 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %1620, i32 0, i32 5
  %1621 = load i64, i64* %maxfilesize2724, align 8
  %tobool2725 = icmp ne i64 %1621, 0
  br i1 %tobool2725, label %land.lhs.true.2726, label %if.end.2753

land.lhs.true.2726:                               ; preds = %land.lhs.true.2722
  %1622 = load i32, i32* %dsize, align 4
  %1623 = load i32, i32* %ssize, align 4
  %cmp2727 = icmp ugt i32 %1622, %1623
  br i1 %cmp2727, label %cond.true.2729, label %cond.false.2730

cond.true.2729:                                   ; preds = %land.lhs.true.2726
  %1624 = load i32, i32* %dsize, align 4
  br label %cond.end.2731

cond.false.2730:                                  ; preds = %land.lhs.true.2726
  %1625 = load i32, i32* %ssize, align 4
  br label %cond.end.2731

cond.end.2731:                                    ; preds = %cond.false.2730, %cond.true.2729
  %cond2732 = phi i32 [ %1624, %cond.true.2729 ], [ %1625, %cond.false.2730 ]
  %conv2733 = zext i32 %cond2732 to i64
  %1626 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits2734 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %1626, i32 0, i32 4
  %1627 = load %struct.cl_limits*, %struct.cl_limits** %limits2734, align 8
  %maxfilesize2735 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %1627, i32 0, i32 5
  %1628 = load i64, i64* %maxfilesize2735, align 8
  %cmp2736 = icmp ugt i64 %conv2733, %1628
  br i1 %cmp2736, label %if.then.2738, label %if.end.2753

if.then.2738:                                     ; preds = %cond.end.2731
  %1629 = load i32, i32* %dsize, align 4
  %1630 = load i32, i32* %ssize, align 4
  %cmp2739 = icmp ugt i32 %1629, %1630
  br i1 %cmp2739, label %cond.true.2741, label %cond.false.2742

cond.true.2741:                                   ; preds = %if.then.2738
  %1631 = load i32, i32* %dsize, align 4
  br label %cond.end.2743

cond.false.2742:                                  ; preds = %if.then.2738
  %1632 = load i32, i32* %ssize, align 4
  br label %cond.end.2743

cond.end.2743:                                    ; preds = %cond.false.2742, %cond.true.2741
  %cond2744 = phi i32 [ %1631, %cond.true.2741 ], [ %1632, %cond.false.2742 ]
  %1633 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits2745 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %1633, i32 0, i32 4
  %1634 = load %struct.cl_limits*, %struct.cl_limits** %limits2745, align 8
  %maxfilesize2746 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %1634, i32 0, i32 5
  %1635 = load i64, i64* %maxfilesize2746, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.152, i32 0, i32 0), i32 %cond2744, i64 %1635)
  %1636 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %1637 = bitcast %struct.cli_exe_section* %1636 to i8*
  call void @free(i8* %1637) #3
  %1638 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options2747 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %1638, i32 0, i32 5
  %1639 = load i32, i32* %options2747, align 4
  %and2748 = and i32 %1639, 256
  %tobool2749 = icmp ne i32 %and2748, 0
  br i1 %tobool2749, label %if.then.2750, label %if.else.2752

if.then.2750:                                     ; preds = %cond.end.2743
  %1640 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname2751 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %1640, i32 0, i32 0
  %1641 = load i8**, i8*** %virname2751, align 8
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.153, i32 0, i32 0), i8** %1641, align 8
  store i32 1, i32* %retval
  br label %return

if.else.2752:                                     ; preds = %cond.end.2743
  store i32 0, i32* %retval
  br label %return

if.end.2753:                                      ; preds = %cond.end.2731, %land.lhs.true.2722, %while.body.2710
  %1642 = load i32, i32* %ssize, align 4
  %cmp2754 = icmp ule i32 %1642, 25
  br i1 %cmp2754, label %if.then.2759, label %lor.lhs.false.2756

lor.lhs.false.2756:                               ; preds = %if.end.2753
  %1643 = load i32, i32* %dsize, align 4
  %1644 = load i32, i32* %ssize, align 4
  %cmp2757 = icmp ule i32 %1643, %1644
  br i1 %cmp2757, label %if.then.2759, label %if.end.2760

if.then.2759:                                     ; preds = %lor.lhs.false.2756, %if.end.2753
  %1645 = load i32, i32* %ssize, align 4
  %1646 = load i32, i32* %dsize, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.154, i32 0, i32 0), i32 %1645, i32 %1646)
  %1647 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %1648 = bitcast %struct.cli_exe_section* %1647 to i8*
  call void @free(i8* %1648) #3
  store i32 0, i32* %retval
  br label %return

if.end.2760:                                      ; preds = %lor.lhs.false.2756
  %arraydecay2761 = getelementptr inbounds [4096 x i8], [4096 x i8]* %epbuff, i32 0, i32 0
  %add.ptr2762 = getelementptr inbounds i8, i8* %arraydecay2761, i64 1
  %1649 = bitcast i8* %add.ptr2762 to i32*
  %1650 = load i32, i32* %1649, align 4
  %opt322763 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr32*
  %ImageBase2764 = getelementptr inbounds %struct.pe_image_optional_hdr32, %struct.pe_image_optional_hdr32* %opt322763, i32 0, i32 9
  %1651 = load i32, i32* %ImageBase2764, align 4
  %sub2765 = sub i32 %1650, %1651
  %1652 = load i64, i64* %fsize, align 8
  %1653 = load i32, i32* %hdr_size, align 4
  %call2766 = call i32 @cli_rawaddr(i32 %sub2765, %struct.cli_exe_section* null, i16 zeroext 0, i32* %err, i64 %1652, i32 %1653)
  store i32 %call2766, i32* %gp, align 4
  %tobool2767 = icmp ne i32 %call2766, 0
  br i1 %tobool2767, label %if.end.2771, label %land.lhs.true.2768

land.lhs.true.2768:                               ; preds = %if.end.2760
  %1654 = load i32, i32* %err, align 4
  %tobool2769 = icmp ne i32 %1654, 0
  br i1 %tobool2769, label %if.then.2770, label %if.end.2771

if.then.2770:                                     ; preds = %land.lhs.true.2768
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.169, i32 0, i32 0))
  br label %while.end.3011

if.end.2771:                                      ; preds = %land.lhs.true.2768, %if.end.2760
  %1655 = load i32, i32* %desc.addr, align 4
  %1656 = load i32, i32* %gp, align 4
  %conv2772 = zext i32 %1656 to i64
  %call2773 = call i64 @lseek(i32 %1655, i64 %conv2772, i32 0) #3
  %1657 = load i32, i32* %i, align 4
  %add2774 = add i32 %1657, 1
  %idxprom2775 = zext i32 %add2774 to i64
  %1658 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx2776 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1658, i64 %idxprom2775
  %raw2777 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx2776, i32 0, i32 2
  %1659 = load i32, i32* %raw2777, align 4
  %1660 = load i32, i32* %gp, align 4
  %sub2778 = sub i32 %1659, %1660
  store i32 %sub2778, i32* %gp, align 4
  %1661 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits2779 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %1661, i32 0, i32 4
  %1662 = load %struct.cl_limits*, %struct.cl_limits** %limits2779, align 8
  %tobool2780 = icmp ne %struct.cl_limits* %1662, null
  br i1 %tobool2780, label %land.lhs.true.2781, label %if.end.2800

land.lhs.true.2781:                               ; preds = %if.end.2771
  %1663 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits2782 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %1663, i32 0, i32 4
  %1664 = load %struct.cl_limits*, %struct.cl_limits** %limits2782, align 8
  %maxfilesize2783 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %1664, i32 0, i32 5
  %1665 = load i64, i64* %maxfilesize2783, align 8
  %tobool2784 = icmp ne i64 %1665, 0
  br i1 %tobool2784, label %land.lhs.true.2785, label %if.end.2800

land.lhs.true.2785:                               ; preds = %land.lhs.true.2781
  %1666 = load i32, i32* %gp, align 4
  %conv2786 = zext i32 %1666 to i64
  %1667 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits2787 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %1667, i32 0, i32 4
  %1668 = load %struct.cl_limits*, %struct.cl_limits** %limits2787, align 8
  %maxfilesize2788 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %1668, i32 0, i32 5
  %1669 = load i64, i64* %maxfilesize2788, align 8
  %cmp2789 = icmp ugt i64 %conv2786, %1669
  br i1 %cmp2789, label %if.then.2791, label %if.end.2800

if.then.2791:                                     ; preds = %land.lhs.true.2785
  %1670 = load i32, i32* %gp, align 4
  %1671 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits2792 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %1671, i32 0, i32 4
  %1672 = load %struct.cl_limits*, %struct.cl_limits** %limits2792, align 8
  %maxfilesize2793 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %1672, i32 0, i32 5
  %1673 = load i64, i64* %maxfilesize2793, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.152, i32 0, i32 0), i32 %1670, i64 %1673)
  %1674 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %1675 = bitcast %struct.cli_exe_section* %1674 to i8*
  call void @free(i8* %1675) #3
  %1676 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options2794 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %1676, i32 0, i32 5
  %1677 = load i32, i32* %options2794, align 4
  %and2795 = and i32 %1677, 256
  %tobool2796 = icmp ne i32 %and2795, 0
  br i1 %tobool2796, label %if.then.2797, label %if.else.2799

if.then.2797:                                     ; preds = %if.then.2791
  %1678 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname2798 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %1678, i32 0, i32 0
  %1679 = load i8**, i8*** %virname2798, align 8
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.153, i32 0, i32 0), i8** %1679, align 8
  store i32 1, i32* %retval
  br label %return

if.else.2799:                                     ; preds = %if.then.2791
  store i32 0, i32* %retval
  br label %return

if.end.2800:                                      ; preds = %land.lhs.true.2785, %land.lhs.true.2781, %if.end.2771
  %1680 = load i32, i32* %gp, align 4
  %conv2801 = zext i32 %1680 to i64
  %call2802 = call i8* @cli_malloc(i64 %conv2801)
  store i8* %call2802, i8** %support, align 8
  %cmp2803 = icmp eq i8* %call2802, null
  br i1 %cmp2803, label %if.then.2805, label %if.end.2806

if.then.2805:                                     ; preds = %if.end.2800
  %1681 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %1682 = bitcast %struct.cli_exe_section* %1681 to i8*
  call void @free(i8* %1682) #3
  store i32 -114, i32* %retval
  br label %return

if.end.2806:                                      ; preds = %if.end.2800
  %1683 = load i32, i32* %desc.addr, align 4
  %1684 = load i8*, i8** %support, align 8
  %1685 = load i32, i32* %gp, align 4
  %call2807 = call i32 @cli_readn(i32 %1683, i8* %1684, i32 %1685)
  %1686 = load i32, i32* %gp, align 4
  %cmp2808 = icmp ne i32 %call2807, %1686
  br i1 %cmp2808, label %if.then.2810, label %if.end.2811

if.then.2810:                                     ; preds = %if.end.2806
  %1687 = load i32, i32* %gp, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.170, i32 0, i32 0), i32 %1687)
  %1688 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %1689 = bitcast %struct.cli_exe_section* %1688 to i8*
  call void @free(i8* %1689) #3
  %1690 = load i8*, i8** %support, align 8
  call void @free(i8* %1690) #3
  store i32 -123, i32* %retval
  br label %return

if.end.2811:                                      ; preds = %if.end.2806
  %1691 = load i8*, i8** %support, align 8
  %add.ptr2812 = getelementptr inbounds i8, i8* %1691, i64 4
  %1692 = bitcast i8* %add.ptr2812 to i32*
  %1693 = load i32, i32* %1692, align 4
  %opt322813 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr32*
  %ImageBase2814 = getelementptr inbounds %struct.pe_image_optional_hdr32, %struct.pe_image_optional_hdr32* %opt322813, i32 0, i32 9
  %1694 = load i32, i32* %ImageBase2814, align 4
  %sub2815 = sub i32 %1693, %1694
  store i32 %sub2815, i32* %newedi2712, align 4
  %1695 = load i8*, i8** %support, align 8
  %add.ptr2816 = getelementptr inbounds i8, i8* %1695, i64 8
  %1696 = bitcast i8* %add.ptr2816 to i32*
  %1697 = load i32, i32* %1696, align 4
  %opt322817 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr32*
  %ImageBase2818 = getelementptr inbounds %struct.pe_image_optional_hdr32, %struct.pe_image_optional_hdr32* %opt322817, i32 0, i32 9
  %1698 = load i32, i32* %ImageBase2818, align 4
  %sub2819 = sub i32 %1697, %1698
  store i32 %sub2819, i32* %newesi2711, align 4
  %1699 = load i32, i32* %newesi2711, align 4
  %1700 = load i32, i32* %i, align 4
  %add2820 = add i32 %1700, 1
  %idxprom2821 = zext i32 %add2820 to i64
  %1701 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx2822 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1701, i64 %idxprom2821
  %rva2823 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx2822, i32 0, i32 0
  %1702 = load i32, i32* %rva2823, align 4
  %cmp2824 = icmp ult i32 %1699, %1702
  br i1 %cmp2824, label %if.then.2838, label %lor.lhs.false.2826

lor.lhs.false.2826:                               ; preds = %if.end.2811
  %1703 = load i32, i32* %newesi2711, align 4
  %1704 = load i32, i32* %i, align 4
  %add2827 = add i32 %1704, 1
  %idxprom2828 = zext i32 %add2827 to i64
  %1705 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx2829 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1705, i64 %idxprom2828
  %rva2830 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx2829, i32 0, i32 0
  %1706 = load i32, i32* %rva2830, align 4
  %sub2831 = sub i32 %1703, %1706
  %1707 = load i32, i32* %i, align 4
  %add2832 = add i32 %1707, 1
  %idxprom2833 = zext i32 %add2832 to i64
  %1708 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx2834 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1708, i64 %idxprom2833
  %rsz2835 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx2834, i32 0, i32 3
  %1709 = load i32, i32* %rsz2835, align 4
  %cmp2836 = icmp uge i32 %sub2831, %1709
  br i1 %cmp2836, label %if.then.2838, label %if.end.2839

if.then.2838:                                     ; preds = %lor.lhs.false.2826, %if.end.2811
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.161, i32 0, i32 0))
  %1710 = load i8*, i8** %support, align 8
  call void @free(i8* %1710) #3
  br label %while.end.3011

if.end.2839:                                      ; preds = %lor.lhs.false.2826
  %1711 = load i32, i32* %newedi2712, align 4
  %1712 = load i32, i32* %i, align 4
  %idxprom2840 = zext i32 %1712 to i64
  %1713 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx2841 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1713, i64 %idxprom2840
  %rva2842 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx2841, i32 0, i32 0
  %1714 = load i32, i32* %rva2842, align 4
  %cmp2843 = icmp ne i32 %1711, %1714
  br i1 %cmp2843, label %if.then.2845, label %if.end.2849

if.then.2845:                                     ; preds = %if.end.2839
  %1715 = load i32, i32* %newedi2712, align 4
  %1716 = load i32, i32* %i, align 4
  %idxprom2846 = zext i32 %1716 to i64
  %1717 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx2847 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1717, i64 %idxprom2846
  %rva2848 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx2847, i32 0, i32 0
  %1718 = load i32, i32* %rva2848, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.171, i32 0, i32 0), i32 %1715, i32 %1718)
  %1719 = load i8*, i8** %support, align 8
  call void @free(i8* %1719) #3
  br label %while.end.3011

if.end.2849:                                      ; preds = %if.end.2839
  store i32 12, i32* %t, align 4
  br label %for.cond.2850

for.cond.2850:                                    ; preds = %for.inc.2887, %if.end.2849
  %1720 = load i32, i32* %t, align 4
  %1721 = load i32, i32* %gp, align 4
  %sub2851 = sub i32 %1721, 4
  %cmp2852 = icmp ult i32 %1720, %sub2851
  br i1 %cmp2852, label %for.body.2854, label %for.end.2889

for.body.2854:                                    ; preds = %for.cond.2850
  %1722 = load i8*, i8** %support, align 8
  %1723 = load i32, i32* %t, align 4
  %idx.ext2856 = zext i32 %1723 to i64
  %add.ptr2857 = getelementptr inbounds i8, i8* %1722, i64 %idx.ext2856
  %1724 = bitcast i8* %add.ptr2857 to i32*
  %1725 = load i32, i32* %1724, align 4
  store i32 %1725, i32* %rva2855, align 4
  %1726 = load i32, i32* %rva2855, align 4
  %tobool2858 = icmp ne i32 %1726, 0
  br i1 %tobool2858, label %if.end.2860, label %if.then.2859

if.then.2859:                                     ; preds = %for.body.2854
  br label %for.end.2889

if.end.2860:                                      ; preds = %for.body.2854
  %opt322861 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr32*
  %ImageBase2862 = getelementptr inbounds %struct.pe_image_optional_hdr32, %struct.pe_image_optional_hdr32* %opt322861, i32 0, i32 9
  %1727 = load i32, i32* %ImageBase2862, align 4
  %add2863 = add i32 %1727, 1
  %1728 = load i32, i32* %rva2855, align 4
  %sub2864 = sub i32 %1728, %add2863
  store i32 %sub2864, i32* %rva2855, align 4
  %1729 = load i32, i32* %sectcnt, align 4
  %inc2865 = add nsw i32 %1729, 1
  store i32 %inc2865, i32* %sectcnt, align 4
  %1730 = load i32, i32* %rva2855, align 4
  %rem2866 = urem i32 %1730, 4096
  %tobool2867 = icmp ne i32 %rem2866, 0
  br i1 %tobool2867, label %if.then.2868, label %if.end.2869

if.then.2868:                                     ; preds = %if.end.2860
  %1731 = load i32, i32* %sectcnt, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.172, i32 0, i32 0), i32 %1731)
  br label %if.end.2869

if.end.2869:                                      ; preds = %if.then.2868, %if.end.2860
  %1732 = load i32, i32* %rva2855, align 4
  %1733 = load i32, i32* %i, align 4
  %idxprom2870 = zext i32 %1733 to i64
  %1734 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx2871 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1734, i64 %idxprom2870
  %rva2872 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx2871, i32 0, i32 0
  %1735 = load i32, i32* %rva2872, align 4
  %cmp2873 = icmp ult i32 %1732, %1735
  br i1 %cmp2873, label %if.then.2885, label %lor.lhs.false.2875

lor.lhs.false.2875:                               ; preds = %if.end.2869
  %1736 = load i32, i32* %rva2855, align 4
  %1737 = load i32, i32* %i, align 4
  %idxprom2876 = zext i32 %1737 to i64
  %1738 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx2877 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1738, i64 %idxprom2876
  %rva2878 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx2877, i32 0, i32 0
  %1739 = load i32, i32* %rva2878, align 4
  %sub2879 = sub i32 %1736, %1739
  %1740 = load i32, i32* %i, align 4
  %idxprom2880 = zext i32 %1740 to i64
  %1741 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx2881 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1741, i64 %idxprom2880
  %vsz2882 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx2881, i32 0, i32 1
  %1742 = load i32, i32* %vsz2882, align 4
  %cmp2883 = icmp uge i32 %sub2879, %1742
  br i1 %cmp2883, label %if.then.2885, label %if.end.2886

if.then.2885:                                     ; preds = %lor.lhs.false.2875, %if.end.2869
  %1743 = load i32, i32* %sectcnt, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.173, i32 0, i32 0), i32 %1743)
  br label %for.end.2889

if.end.2886:                                      ; preds = %lor.lhs.false.2875
  br label %for.inc.2887

for.inc.2887:                                     ; preds = %if.end.2886
  %1744 = load i32, i32* %t, align 4
  %add2888 = add i32 %1744, 4
  store i32 %add2888, i32* %t, align 4
  br label %for.cond.2850

for.end.2889:                                     ; preds = %if.then.2885, %if.then.2859, %for.cond.2850
  %1745 = load i32, i32* %t, align 4
  %1746 = load i32, i32* %gp, align 4
  %sub2890 = sub i32 %1746, 4
  %cmp2891 = icmp uge i32 %1745, %sub2890
  br i1 %cmp2891, label %if.then.2897, label %lor.lhs.false.2893

lor.lhs.false.2893:                               ; preds = %for.end.2889
  %1747 = load i8*, i8** %support, align 8
  %1748 = load i32, i32* %t, align 4
  %idx.ext2894 = zext i32 %1748 to i64
  %add.ptr2895 = getelementptr inbounds i8, i8* %1747, i64 %idx.ext2894
  %1749 = bitcast i8* %add.ptr2895 to i32*
  %1750 = load i32, i32* %1749, align 4
  %tobool2896 = icmp ne i32 %1750, 0
  br i1 %tobool2896, label %if.then.2897, label %if.end.2898

if.then.2897:                                     ; preds = %lor.lhs.false.2893, %for.end.2889
  %1751 = load i8*, i8** %support, align 8
  call void @free(i8* %1751) #3
  br label %while.end.3011

if.end.2898:                                      ; preds = %lor.lhs.false.2893
  %1752 = load i32, i32* %sectcnt, align 4
  %add2899 = add nsw i32 %1752, 1
  %conv2900 = sext i32 %add2899 to i64
  %mul2901 = mul i64 %conv2900, 36
  %call2902 = call i8* @cli_malloc(i64 %mul2901)
  %1753 = bitcast i8* %call2902 to %struct.cli_exe_section*
  store %struct.cli_exe_section* %1753, %struct.cli_exe_section** %sections, align 8
  %cmp2903 = icmp eq %struct.cli_exe_section* %1753, null
  br i1 %cmp2903, label %if.then.2905, label %if.end.2906

if.then.2905:                                     ; preds = %if.end.2898
  %1754 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %1755 = bitcast %struct.cli_exe_section* %1754 to i8*
  call void @free(i8* %1755) #3
  %1756 = load i8*, i8** %support, align 8
  call void @free(i8* %1756) #3
  store i32 -114, i32* %retval
  br label %return

if.end.2906:                                      ; preds = %if.end.2898
  %1757 = load i32, i32* %newedi2712, align 4
  %1758 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections, align 8
  %arrayidx2907 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1758, i64 0
  %rva2908 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx2907, i32 0, i32 0
  store i32 %1757, i32* %rva2908, align 4
  store i32 1, i32* %t, align 4
  br label %for.cond.2909

for.cond.2909:                                    ; preds = %for.inc.2924, %if.end.2906
  %1759 = load i32, i32* %t, align 4
  %1760 = load i32, i32* %sectcnt, align 4
  %cmp2910 = icmp ule i32 %1759, %1760
  br i1 %cmp2910, label %for.body.2912, label %for.end.2926

for.body.2912:                                    ; preds = %for.cond.2909
  %1761 = load i8*, i8** %support, align 8
  %add.ptr2913 = getelementptr inbounds i8, i8* %1761, i64 8
  %1762 = load i32, i32* %t, align 4
  %mul2914 = mul i32 %1762, 4
  %idx.ext2915 = zext i32 %mul2914 to i64
  %add.ptr2916 = getelementptr inbounds i8, i8* %add.ptr2913, i64 %idx.ext2915
  %1763 = bitcast i8* %add.ptr2916 to i32*
  %1764 = load i32, i32* %1763, align 4
  %sub2917 = sub nsw i32 %1764, 1
  %opt322918 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr32*
  %ImageBase2919 = getelementptr inbounds %struct.pe_image_optional_hdr32, %struct.pe_image_optional_hdr32* %opt322918, i32 0, i32 9
  %1765 = load i32, i32* %ImageBase2919, align 4
  %sub2920 = sub i32 %sub2917, %1765
  %1766 = load i32, i32* %t, align 4
  %idxprom2921 = zext i32 %1766 to i64
  %1767 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections, align 8
  %arrayidx2922 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1767, i64 %idxprom2921
  %rva2923 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx2922, i32 0, i32 0
  store i32 %sub2920, i32* %rva2923, align 4
  br label %for.inc.2924

for.inc.2924:                                     ; preds = %for.body.2912
  %1768 = load i32, i32* %t, align 4
  %inc2925 = add i32 %1768, 1
  store i32 %inc2925, i32* %t, align 4
  br label %for.cond.2909

for.end.2926:                                     ; preds = %for.cond.2909
  %1769 = load i8*, i8** %support, align 8
  call void @free(i8* %1769) #3
  %1770 = load i32, i32* %ssize, align 4
  %conv2927 = zext i32 %1770 to i64
  %call2928 = call i8* @cli_malloc(i64 %conv2927)
  store i8* %call2928, i8** %src, align 8
  %cmp2929 = icmp eq i8* %call2928, null
  br i1 %cmp2929, label %if.then.2931, label %if.end.2932

if.then.2931:                                     ; preds = %for.end.2926
  %1771 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %1772 = bitcast %struct.cli_exe_section* %1771 to i8*
  call void @free(i8* %1772) #3
  %1773 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections, align 8
  %1774 = bitcast %struct.cli_exe_section* %1773 to i8*
  call void @free(i8* %1774) #3
  store i32 -114, i32* %retval
  br label %return

if.end.2932:                                      ; preds = %for.end.2926
  %1775 = load i32, i32* %desc.addr, align 4
  %1776 = load i32, i32* %i, align 4
  %add2933 = add i32 %1776, 1
  %idxprom2934 = zext i32 %add2933 to i64
  %1777 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx2935 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1777, i64 %idxprom2934
  %call2936 = call i64 @cli_seeksect(i32 %1775, %struct.cli_exe_section* %arrayidx2935)
  %tobool2937 = icmp ne i64 %call2936, 0
  br i1 %tobool2937, label %lor.lhs.false.2938, label %if.then.2942

lor.lhs.false.2938:                               ; preds = %if.end.2932
  %1778 = load i32, i32* %desc.addr, align 4
  %1779 = load i8*, i8** %src, align 8
  %1780 = load i32, i32* %ssize, align 4
  %call2939 = call i32 @cli_readn(i32 %1778, i8* %1779, i32 %1780)
  %1781 = load i32, i32* %ssize, align 4
  %cmp2940 = icmp ne i32 %call2939, %1781
  br i1 %cmp2940, label %if.then.2942, label %if.end.2943

if.then.2942:                                     ; preds = %lor.lhs.false.2938, %if.end.2932
  %1782 = load i32, i32* %i, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.156, i32 0, i32 0), i32 %1782)
  %1783 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %1784 = bitcast %struct.cli_exe_section* %1783 to i8*
  call void @free(i8* %1784) #3
  %1785 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections, align 8
  %1786 = bitcast %struct.cli_exe_section* %1785 to i8*
  call void @free(i8* %1786) #3
  %1787 = load i8*, i8** %src, align 8
  call void @free(i8* %1787) #3
  store i32 -123, i32* %retval
  br label %return

if.end.2943:                                      ; preds = %lor.lhs.false.2938
  %1788 = load i32, i32* %dsize, align 4
  %conv2944 = zext i32 %1788 to i64
  %call2945 = call i8* @cli_calloc(i64 %conv2944, i64 1)
  store i8* %call2945, i8** %dest, align 8
  %cmp2946 = icmp eq i8* %call2945, null
  br i1 %cmp2946, label %if.then.2948, label %if.end.2949

if.then.2948:                                     ; preds = %if.end.2943
  %1789 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %1790 = bitcast %struct.cli_exe_section* %1789 to i8*
  call void @free(i8* %1790) #3
  %1791 = load i8*, i8** %src, align 8
  call void @free(i8* %1791) #3
  %1792 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections, align 8
  %1793 = bitcast %struct.cli_exe_section* %1792 to i8*
  call void @free(i8* %1793) #3
  store i32 -114, i32* %retval
  br label %return

if.end.2949:                                      ; preds = %if.end.2943
  %1794 = load i32, i32* %vep, align 4
  %add2950 = add i32 %1794, 161
  %add2951 = add i32 %add2950, 6
  %arraydecay2952 = getelementptr inbounds [4096 x i8], [4096 x i8]* %epbuff, i32 0, i32 0
  %add.ptr2953 = getelementptr inbounds i8, i8* %arraydecay2952, i64 163
  %1795 = bitcast i8* %add.ptr2953 to i32*
  %1796 = load i32, i32* %1795, align 4
  %add2954 = add i32 %add2951, %1796
  store i32 %add2954, i32* %oldep, align 4
  %1797 = load i32, i32* %oldep, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.163, i32 0, i32 0), i32 %1797)
  %call2955 = call i8* @cli_gentemp(i8* null)
  store i8* %call2955, i8** %tempfile, align 8
  %tobool2956 = icmp ne i8* %call2955, null
  br i1 %tobool2956, label %if.end.2958, label %if.then.2957

if.then.2957:                                     ; preds = %if.end.2949
  %1798 = load i8*, i8** %src, align 8
  %1799 = load i8*, i8** %dest, align 8
  %1800 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections, align 8
  %1801 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  call void (i8*, ...) @cli_multifree(i8* %1798, i8* %1799, %struct.cli_exe_section* %1800, %struct.cli_exe_section* %1801, i32 0)
  store i32 -114, i32* %retval
  br label %return

if.end.2958:                                      ; preds = %if.end.2949
  %1802 = load i8*, i8** %tempfile, align 8
  %call2959 = call i32 (i8*, i32, ...) @open(i8* %1802, i32 578, i32 448)
  store i32 %call2959, i32* %ndesc, align 4
  %cmp2960 = icmp slt i32 %call2959, 0
  br i1 %cmp2960, label %if.then.2962, label %if.end.2963

if.then.2962:                                     ; preds = %if.end.2958
  %1803 = load i8*, i8** %tempfile, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.164, i32 0, i32 0), i8* %1803)
  %1804 = load i8*, i8** %tempfile, align 8
  call void @free(i8* %1804) #3
  %1805 = load i8*, i8** %src, align 8
  %1806 = load i8*, i8** %dest, align 8
  %1807 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections, align 8
  %1808 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  call void (i8*, ...) @cli_multifree(i8* %1805, i8* %1806, %struct.cli_exe_section* %1807, %struct.cli_exe_section* %1808, i32 0)
  store i32 -123, i32* %retval
  br label %return

if.end.2963:                                      ; preds = %if.end.2958
  %1809 = load i8*, i8** %src, align 8
  %1810 = load i32, i32* %newesi2711, align 4
  %idx.ext2964 = zext i32 %1810 to i64
  %add.ptr2965 = getelementptr inbounds i8, i8* %1809, i64 %idx.ext2964
  %1811 = load i32, i32* %i, align 4
  %add2966 = add i32 %1811, 1
  %idxprom2967 = zext i32 %add2966 to i64
  %1812 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx2968 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1812, i64 %idxprom2967
  %rva2969 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx2968, i32 0, i32 0
  %1813 = load i32, i32* %rva2969, align 4
  %idx.ext2970 = zext i32 %1813 to i64
  %idx.neg2971 = sub i64 0, %idx.ext2970
  %add.ptr2972 = getelementptr inbounds i8, i8* %add.ptr2965, i64 %idx.neg2971
  %1814 = load i8*, i8** %dest, align 8
  %1815 = load i32, i32* %ssize, align 4
  %1816 = load i32, i32* %i, align 4
  %add2973 = add i32 %1816, 1
  %idxprom2974 = zext i32 %add2973 to i64
  %1817 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx2975 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1817, i64 %idxprom2974
  %rva2976 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx2975, i32 0, i32 0
  %1818 = load i32, i32* %rva2976, align 4
  %add2977 = add i32 %1815, %1818
  %1819 = load i32, i32* %newesi2711, align 4
  %sub2978 = sub i32 %add2977, %1819
  %1820 = load i32, i32* %dsize, align 4
  %1821 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections, align 8
  %1822 = load i32, i32* %sectcnt, align 4
  %opt322979 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr32*
  %ImageBase2980 = getelementptr inbounds %struct.pe_image_optional_hdr32, %struct.pe_image_optional_hdr32* %opt322979, i32 0, i32 9
  %1823 = load i32, i32* %ImageBase2980, align 4
  %1824 = load i32, i32* %oldep, align 4
  %1825 = load i32, i32* %ndesc, align 4
  %call2981 = call i32 @unfsg_133(i8* %add.ptr2972, i8* %1814, i32 %sub2978, i32 %1820, %struct.cli_exe_section* %1821, i32 %1822, i32 %1823, i32 %1824, i32 %1825)
  switch i32 %call2981, label %sw.default.3007 [
    i32 1, label %sw.bb.2982
    i32 0, label %sw.bb.3004
  ]

sw.bb.2982:                                       ; preds = %if.end.2963
  %1826 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool2983 = icmp ne i8 %1826, 0
  br i1 %tobool2983, label %if.then.2984, label %if.else.2985

if.then.2984:                                     ; preds = %sw.bb.2982
  %1827 = load i8*, i8** %tempfile, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.165, i32 0, i32 0), i8* %1827)
  br label %if.end.2986

if.else.2985:                                     ; preds = %sw.bb.2982
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.166, i32 0, i32 0))
  br label %if.end.2986

if.end.2986:                                      ; preds = %if.else.2985, %if.then.2984
  %1828 = load i8*, i8** %src, align 8
  %1829 = load i8*, i8** %dest, align 8
  %1830 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections, align 8
  call void (i8*, ...) @cli_multifree(i8* %1828, i8* %1829, %struct.cli_exe_section* %1830, i32 0)
  %1831 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %1832 = bitcast %struct.cli_exe_section* %1831 to i8*
  call void @free(i8* %1832) #3
  %1833 = load i32, i32* %ndesc, align 4
  %call2987 = call i32 @fsync(i32 %1833)
  %1834 = load i32, i32* %ndesc, align 4
  %call2988 = call i64 @lseek(i32 %1834, i64 0, i32 0) #3
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.138, i32 0, i32 0))
  %1835 = load i32, i32* %ndesc, align 4
  %1836 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call2989 = call i32 @cli_magic_scandesc(i32 %1835, %struct.cli_ctx* %1836)
  %cmp2990 = icmp eq i32 %call2989, 1
  br i1 %cmp2990, label %if.then.2992, label %if.end.2998

if.then.2992:                                     ; preds = %if.end.2986
  %1837 = load i32, i32* %ndesc, align 4
  %call2993 = call i32 @close(i32 %1837)
  %1838 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool2994 = icmp ne i8 %1838, 0
  br i1 %tobool2994, label %if.end.2997, label %if.then.2995

if.then.2995:                                     ; preds = %if.then.2992
  %1839 = load i8*, i8** %tempfile, align 8
  %call2996 = call i32 @unlink(i8* %1839) #3
  br label %if.end.2997

if.end.2997:                                      ; preds = %if.then.2995, %if.then.2992
  %1840 = load i8*, i8** %tempfile, align 8
  call void @free(i8* %1840) #3
  store i32 1, i32* %retval
  br label %return

if.end.2998:                                      ; preds = %if.end.2986
  %1841 = load i32, i32* %ndesc, align 4
  %call2999 = call i32 @close(i32 %1841)
  %1842 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool3000 = icmp ne i8 %1842, 0
  br i1 %tobool3000, label %if.end.3003, label %if.then.3001

if.then.3001:                                     ; preds = %if.end.2998
  %1843 = load i8*, i8** %tempfile, align 8
  %call3002 = call i32 @unlink(i8* %1843) #3
  br label %if.end.3003

if.end.3003:                                      ; preds = %if.then.3001, %if.end.2998
  %1844 = load i8*, i8** %tempfile, align 8
  call void @free(i8* %1844) #3
  store i32 0, i32* %retval
  br label %return

sw.bb.3004:                                       ; preds = %if.end.2963
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.167, i32 0, i32 0))
  %1845 = load i32, i32* %ndesc, align 4
  %call3005 = call i32 @close(i32 %1845)
  %1846 = load i8*, i8** %tempfile, align 8
  %call3006 = call i32 @unlink(i8* %1846) #3
  %1847 = load i8*, i8** %tempfile, align 8
  call void @free(i8* %1847) #3
  %1848 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections, align 8
  %1849 = bitcast %struct.cli_exe_section* %1848 to i8*
  call void @free(i8* %1849) #3
  store i32 0, i32* %found, align 4
  store i32 1, i32* %upx_success, align 4
  br label %sw.epilog.3010

sw.default.3007:                                  ; preds = %if.end.2963
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.168, i32 0, i32 0))
  %1850 = load i32, i32* %ndesc, align 4
  %call3008 = call i32 @close(i32 %1850)
  %1851 = load i8*, i8** %tempfile, align 8
  %call3009 = call i32 @unlink(i8* %1851) #3
  %1852 = load i8*, i8** %src, align 8
  %1853 = load i8*, i8** %dest, align 8
  %1854 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections, align 8
  call void (i8*, ...) @cli_multifree(i8* %1852, i8* %1853, %struct.cli_exe_section* %1854, i32 0)
  %1855 = load i8*, i8** %tempfile, align 8
  call void @free(i8* %1855) #3
  br label %sw.epilog.3010

sw.epilog.3010:                                   ; preds = %sw.default.3007, %sw.bb.3004
  br label %while.end.3011

while.end.3011:                                   ; preds = %sw.epilog.3010, %if.then.2897, %if.then.2845, %if.then.2838, %if.then.2770, %land.end.2709
  br label %while.cond.3012

while.cond.3012:                                  ; preds = %while.end.3011
  %1856 = load i32, i32* %found, align 4
  %tobool3013 = icmp ne i32 %1856, 0
  br i1 %tobool3013, label %land.lhs.true.3014, label %land.end.3062

land.lhs.true.3014:                               ; preds = %while.cond.3012
  %1857 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %dconf3015 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %1857, i32 0, i32 9
  %1858 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf3015, align 8
  %pe3016 = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %1858, i32 0, i32 0
  %1859 = load i32, i32* %pe3016, align 4
  %and3017 = and i32 %1859, 64
  %tobool3018 = icmp ne i32 %and3017, 0
  br i1 %tobool3018, label %land.lhs.true.3019, label %land.end.3062

land.lhs.true.3019:                               ; preds = %land.lhs.true.3014
  %arrayidx3020 = getelementptr inbounds [4096 x i8], [4096 x i8]* %epbuff, i32 0, i64 0
  %1860 = load i8, i8* %arrayidx3020, align 1
  %conv3021 = sext i8 %1860 to i32
  %cmp3022 = icmp eq i32 %conv3021, -69
  br i1 %cmp3022, label %land.lhs.true.3024, label %land.end.3062

land.lhs.true.3024:                               ; preds = %land.lhs.true.3019
  %arraydecay3025 = getelementptr inbounds [4096 x i8], [4096 x i8]* %epbuff, i32 0, i32 0
  %add.ptr3026 = getelementptr inbounds i8, i8* %arraydecay3025, i64 1
  %1861 = bitcast i8* %add.ptr3026 to i32*
  %1862 = load i32, i32* %1861, align 4
  %opt323027 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr32*
  %ImageBase3028 = getelementptr inbounds %struct.pe_image_optional_hdr32, %struct.pe_image_optional_hdr32* %opt323027, i32 0, i32 9
  %1863 = load i32, i32* %ImageBase3028, align 4
  %sub3029 = sub i32 %1862, %1863
  %1864 = load i32, i32* %min, align 4
  %cmp3030 = icmp ult i32 %sub3029, %1864
  br i1 %cmp3030, label %land.lhs.true.3032, label %land.end.3062

land.lhs.true.3032:                               ; preds = %land.lhs.true.3024
  %arrayidx3033 = getelementptr inbounds [4096 x i8], [4096 x i8]* %epbuff, i32 0, i64 5
  %1865 = load i8, i8* %arrayidx3033, align 1
  %conv3034 = sext i8 %1865 to i32
  %cmp3035 = icmp eq i32 %conv3034, -65
  br i1 %cmp3035, label %land.lhs.true.3037, label %land.end.3062

land.lhs.true.3037:                               ; preds = %land.lhs.true.3032
  %arrayidx3038 = getelementptr inbounds [4096 x i8], [4096 x i8]* %epbuff, i32 0, i64 10
  %1866 = load i8, i8* %arrayidx3038, align 1
  %conv3039 = sext i8 %1866 to i32
  %cmp3040 = icmp eq i32 %conv3039, -66
  br i1 %cmp3040, label %land.lhs.true.3042, label %land.end.3062

land.lhs.true.3042:                               ; preds = %land.lhs.true.3037
  %1867 = load i32, i32* %vep, align 4
  %1868 = load i32, i32* %i, align 4
  %add3043 = add i32 %1868, 1
  %idxprom3044 = zext i32 %add3043 to i64
  %1869 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx3045 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1869, i64 %idxprom3044
  %rva3046 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx3045, i32 0, i32 0
  %1870 = load i32, i32* %rva3046, align 4
  %cmp3047 = icmp uge i32 %1867, %1870
  br i1 %cmp3047, label %land.rhs.3049, label %land.end.3062

land.rhs.3049:                                    ; preds = %land.lhs.true.3042
  %1871 = load i32, i32* %vep, align 4
  %1872 = load i32, i32* %i, align 4
  %add3050 = add i32 %1872, 1
  %idxprom3051 = zext i32 %add3050 to i64
  %1873 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx3052 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1873, i64 %idxprom3051
  %rva3053 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx3052, i32 0, i32 0
  %1874 = load i32, i32* %rva3053, align 4
  %sub3054 = sub i32 %1871, %1874
  %1875 = load i32, i32* %i, align 4
  %add3055 = add i32 %1875, 1
  %idxprom3056 = zext i32 %add3055 to i64
  %1876 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx3057 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1876, i64 %idxprom3056
  %rva3058 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx3057, i32 0, i32 0
  %1877 = load i32, i32* %rva3058, align 4
  %sub3059 = sub i32 %1877, 224
  %cmp3060 = icmp ugt i32 %sub3054, %sub3059
  br label %land.end.3062

land.end.3062:                                    ; preds = %land.rhs.3049, %land.lhs.true.3042, %land.lhs.true.3037, %land.lhs.true.3032, %land.lhs.true.3024, %land.lhs.true.3019, %land.lhs.true.3014, %while.cond.3012
  %1878 = phi i1 [ false, %land.lhs.true.3042 ], [ false, %land.lhs.true.3037 ], [ false, %land.lhs.true.3032 ], [ false, %land.lhs.true.3024 ], [ false, %land.lhs.true.3019 ], [ false, %land.lhs.true.3014 ], [ false, %while.cond.3012 ], [ %cmp3060, %land.rhs.3049 ]
  br i1 %1878, label %while.body.3063, label %while.end.3402

while.body.3063:                                  ; preds = %land.end.3062
  store i32 0, i32* %sectcnt3064, align 4
  %arraydecay3067 = getelementptr inbounds [4096 x i8], [4096 x i8]* %epbuff, i32 0, i32 0
  %add.ptr3068 = getelementptr inbounds i8, i8* %arraydecay3067, i64 1
  %1879 = bitcast i8* %add.ptr3068 to i32*
  %1880 = load i32, i32* %1879, align 4
  %opt323069 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr32*
  %ImageBase3070 = getelementptr inbounds %struct.pe_image_optional_hdr32, %struct.pe_image_optional_hdr32* %opt323069, i32 0, i32 9
  %1881 = load i32, i32* %ImageBase3070, align 4
  %sub3071 = sub i32 %1880, %1881
  %1882 = load i64, i64* %fsize, align 8
  %1883 = load i32, i32* %hdr_size, align 4
  %call3072 = call i32 @cli_rawaddr(i32 %sub3071, %struct.cli_exe_section* null, i16 zeroext 0, i32* %err, i64 %1882, i32 %1883)
  store i32 %call3072, i32* %gp3066, align 4
  %arraydecay3075 = getelementptr inbounds [4096 x i8], [4096 x i8]* %epbuff, i32 0, i32 0
  %add.ptr3076 = getelementptr inbounds i8, i8* %arraydecay3075, i64 11
  %1884 = bitcast i8* %add.ptr3076 to i32*
  %1885 = load i32, i32* %1884, align 4
  %opt323077 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr32*
  %ImageBase3078 = getelementptr inbounds %struct.pe_image_optional_hdr32, %struct.pe_image_optional_hdr32* %opt323077, i32 0, i32 9
  %1886 = load i32, i32* %ImageBase3078, align 4
  %sub3079 = sub i32 %1885, %1886
  store i32 %sub3079, i32* %newesi3074, align 4
  %arraydecay3081 = getelementptr inbounds [4096 x i8], [4096 x i8]* %epbuff, i32 0, i32 0
  %add.ptr3082 = getelementptr inbounds i8, i8* %arraydecay3081, i64 6
  %1887 = bitcast i8* %add.ptr3082 to i32*
  %1888 = load i32, i32* %1887, align 4
  %opt323083 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr32*
  %ImageBase3084 = getelementptr inbounds %struct.pe_image_optional_hdr32, %struct.pe_image_optional_hdr32* %opt323083, i32 0, i32 9
  %1889 = load i32, i32* %ImageBase3084, align 4
  %sub3085 = sub i32 %1888, %1889
  store i32 %sub3085, i32* %newedi3080, align 4
  %1890 = load i32, i32* %vep, align 4
  %1891 = load i32, i32* %i, align 4
  %add3087 = add i32 %1891, 1
  %idxprom3088 = zext i32 %add3087 to i64
  %1892 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx3089 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1892, i64 %idxprom3088
  %rva3090 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx3089, i32 0, i32 0
  %1893 = load i32, i32* %rva3090, align 4
  %sub3091 = sub i32 %1890, %1893
  store i32 %sub3091, i32* %oldep3086, align 4
  %1894 = load i32, i32* %i, align 4
  %add3093 = add i32 %1894, 1
  %idxprom3094 = zext i32 %add3093 to i64
  %1895 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx3095 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1895, i64 %idxprom3094
  %rsz3096 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx3095, i32 0, i32 3
  %1896 = load i32, i32* %rsz3096, align 4
  store i32 %1896, i32* %ssize, align 4
  %1897 = load i32, i32* %i, align 4
  %idxprom3097 = zext i32 %1897 to i64
  %1898 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx3098 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1898, i64 %idxprom3097
  %vsz3099 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx3098, i32 0, i32 1
  %1899 = load i32, i32* %vsz3099, align 4
  store i32 %1899, i32* %dsize, align 4
  %1900 = load i32, i32* %err, align 4
  %tobool3100 = icmp ne i32 %1900, 0
  br i1 %tobool3100, label %if.then.3101, label %if.end.3102

if.then.3101:                                     ; preds = %while.body.3063
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.169, i32 0, i32 0))
  br label %while.end.3402

if.end.3102:                                      ; preds = %while.body.3063
  %1901 = load i32, i32* %newesi3074, align 4
  %1902 = load i32, i32* %i, align 4
  %add3103 = add i32 %1902, 1
  %idxprom3104 = zext i32 %add3103 to i64
  %1903 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx3105 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1903, i64 %idxprom3104
  %rva3106 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx3105, i32 0, i32 0
  %1904 = load i32, i32* %rva3106, align 4
  %cmp3107 = icmp ult i32 %1901, %1904
  br i1 %cmp3107, label %if.then.3121, label %lor.lhs.false.3109

lor.lhs.false.3109:                               ; preds = %if.end.3102
  %1905 = load i32, i32* %newesi3074, align 4
  %1906 = load i32, i32* %i, align 4
  %add3110 = add i32 %1906, 1
  %idxprom3111 = zext i32 %add3110 to i64
  %1907 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx3112 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1907, i64 %idxprom3111
  %rva3113 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx3112, i32 0, i32 0
  %1908 = load i32, i32* %rva3113, align 4
  %sub3114 = sub i32 %1905, %1908
  %1909 = load i32, i32* %i, align 4
  %add3115 = add i32 %1909, 1
  %idxprom3116 = zext i32 %add3115 to i64
  %1910 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx3117 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1910, i64 %idxprom3116
  %raw3118 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx3117, i32 0, i32 2
  %1911 = load i32, i32* %raw3118, align 4
  %cmp3119 = icmp uge i32 %sub3114, %1911
  br i1 %cmp3119, label %if.then.3121, label %if.end.3122

if.then.3121:                                     ; preds = %lor.lhs.false.3109, %if.end.3102
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.161, i32 0, i32 0))
  br label %while.end.3402

if.end.3122:                                      ; preds = %lor.lhs.false.3109
  %1912 = load i32, i32* %newedi3080, align 4
  %1913 = load i32, i32* %i, align 4
  %idxprom3123 = zext i32 %1913 to i64
  %1914 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx3124 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1914, i64 %idxprom3123
  %rva3125 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx3124, i32 0, i32 0
  %1915 = load i32, i32* %rva3125, align 4
  %cmp3126 = icmp ne i32 %1912, %1915
  br i1 %cmp3126, label %if.then.3128, label %if.end.3132

if.then.3128:                                     ; preds = %if.end.3122
  %1916 = load i32, i32* %newedi3080, align 4
  %1917 = load i32, i32* %i, align 4
  %idxprom3129 = zext i32 %1917 to i64
  %1918 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx3130 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1918, i64 %idxprom3129
  %rva3131 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx3130, i32 0, i32 0
  %1919 = load i32, i32* %rva3131, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.171, i32 0, i32 0), i32 %1916, i32 %1919)
  br label %while.end.3402

if.end.3132:                                      ; preds = %if.end.3122
  %1920 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits3133 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %1920, i32 0, i32 4
  %1921 = load %struct.cl_limits*, %struct.cl_limits** %limits3133, align 8
  %tobool3134 = icmp ne %struct.cl_limits* %1921, null
  br i1 %tobool3134, label %land.lhs.true.3135, label %if.end.3166

land.lhs.true.3135:                               ; preds = %if.end.3132
  %1922 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits3136 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %1922, i32 0, i32 4
  %1923 = load %struct.cl_limits*, %struct.cl_limits** %limits3136, align 8
  %maxfilesize3137 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %1923, i32 0, i32 5
  %1924 = load i64, i64* %maxfilesize3137, align 8
  %tobool3138 = icmp ne i64 %1924, 0
  br i1 %tobool3138, label %land.lhs.true.3139, label %if.end.3166

land.lhs.true.3139:                               ; preds = %land.lhs.true.3135
  %1925 = load i32, i32* %dsize, align 4
  %1926 = load i32, i32* %ssize, align 4
  %cmp3140 = icmp ugt i32 %1925, %1926
  br i1 %cmp3140, label %cond.true.3142, label %cond.false.3143

cond.true.3142:                                   ; preds = %land.lhs.true.3139
  %1927 = load i32, i32* %dsize, align 4
  br label %cond.end.3144

cond.false.3143:                                  ; preds = %land.lhs.true.3139
  %1928 = load i32, i32* %ssize, align 4
  br label %cond.end.3144

cond.end.3144:                                    ; preds = %cond.false.3143, %cond.true.3142
  %cond3145 = phi i32 [ %1927, %cond.true.3142 ], [ %1928, %cond.false.3143 ]
  %conv3146 = zext i32 %cond3145 to i64
  %1929 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits3147 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %1929, i32 0, i32 4
  %1930 = load %struct.cl_limits*, %struct.cl_limits** %limits3147, align 8
  %maxfilesize3148 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %1930, i32 0, i32 5
  %1931 = load i64, i64* %maxfilesize3148, align 8
  %cmp3149 = icmp ugt i64 %conv3146, %1931
  br i1 %cmp3149, label %if.then.3151, label %if.end.3166

if.then.3151:                                     ; preds = %cond.end.3144
  %1932 = load i32, i32* %dsize, align 4
  %1933 = load i32, i32* %ssize, align 4
  %cmp3152 = icmp ugt i32 %1932, %1933
  br i1 %cmp3152, label %cond.true.3154, label %cond.false.3155

cond.true.3154:                                   ; preds = %if.then.3151
  %1934 = load i32, i32* %dsize, align 4
  br label %cond.end.3156

cond.false.3155:                                  ; preds = %if.then.3151
  %1935 = load i32, i32* %ssize, align 4
  br label %cond.end.3156

cond.end.3156:                                    ; preds = %cond.false.3155, %cond.true.3154
  %cond3157 = phi i32 [ %1934, %cond.true.3154 ], [ %1935, %cond.false.3155 ]
  %1936 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits3158 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %1936, i32 0, i32 4
  %1937 = load %struct.cl_limits*, %struct.cl_limits** %limits3158, align 8
  %maxfilesize3159 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %1937, i32 0, i32 5
  %1938 = load i64, i64* %maxfilesize3159, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.152, i32 0, i32 0), i32 %cond3157, i64 %1938)
  %1939 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %1940 = bitcast %struct.cli_exe_section* %1939 to i8*
  call void @free(i8* %1940) #3
  %1941 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options3160 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %1941, i32 0, i32 5
  %1942 = load i32, i32* %options3160, align 4
  %and3161 = and i32 %1942, 256
  %tobool3162 = icmp ne i32 %and3161, 0
  br i1 %tobool3162, label %if.then.3163, label %if.else.3165

if.then.3163:                                     ; preds = %cond.end.3156
  %1943 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname3164 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %1943, i32 0, i32 0
  %1944 = load i8**, i8*** %virname3164, align 8
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.153, i32 0, i32 0), i8** %1944, align 8
  store i32 1, i32* %retval
  br label %return

if.else.3165:                                     ; preds = %cond.end.3156
  store i32 0, i32* %retval
  br label %return

if.end.3166:                                      ; preds = %cond.end.3144, %land.lhs.true.3135, %if.end.3132
  %1945 = load i32, i32* %ssize, align 4
  %cmp3167 = icmp ule i32 %1945, 25
  br i1 %cmp3167, label %if.then.3172, label %lor.lhs.false.3169

lor.lhs.false.3169:                               ; preds = %if.end.3166
  %1946 = load i32, i32* %dsize, align 4
  %1947 = load i32, i32* %ssize, align 4
  %cmp3170 = icmp ule i32 %1946, %1947
  br i1 %cmp3170, label %if.then.3172, label %if.end.3173

if.then.3172:                                     ; preds = %lor.lhs.false.3169, %if.end.3166
  %1948 = load i32, i32* %ssize, align 4
  %1949 = load i32, i32* %dsize, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.154, i32 0, i32 0), i32 %1948, i32 %1949)
  %1950 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %1951 = bitcast %struct.cli_exe_section* %1950 to i8*
  call void @free(i8* %1951) #3
  store i32 0, i32* %retval
  br label %return

if.end.3173:                                      ; preds = %lor.lhs.false.3169
  %1952 = load i32, i32* %desc.addr, align 4
  %1953 = load i32, i32* %gp3066, align 4
  %conv3174 = zext i32 %1953 to i64
  %call3175 = call i64 @lseek(i32 %1952, i64 %conv3174, i32 0) #3
  %1954 = load i32, i32* %i, align 4
  %add3176 = add i32 %1954, 1
  %idxprom3177 = zext i32 %add3176 to i64
  %1955 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx3178 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %1955, i64 %idxprom3177
  %raw3179 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx3178, i32 0, i32 2
  %1956 = load i32, i32* %raw3179, align 4
  %1957 = load i32, i32* %gp3066, align 4
  %sub3180 = sub i32 %1956, %1957
  store i32 %sub3180, i32* %gp3066, align 4
  %1958 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits3181 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %1958, i32 0, i32 4
  %1959 = load %struct.cl_limits*, %struct.cl_limits** %limits3181, align 8
  %tobool3182 = icmp ne %struct.cl_limits* %1959, null
  br i1 %tobool3182, label %land.lhs.true.3183, label %if.end.3202

land.lhs.true.3183:                               ; preds = %if.end.3173
  %1960 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits3184 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %1960, i32 0, i32 4
  %1961 = load %struct.cl_limits*, %struct.cl_limits** %limits3184, align 8
  %maxfilesize3185 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %1961, i32 0, i32 5
  %1962 = load i64, i64* %maxfilesize3185, align 8
  %tobool3186 = icmp ne i64 %1962, 0
  br i1 %tobool3186, label %land.lhs.true.3187, label %if.end.3202

land.lhs.true.3187:                               ; preds = %land.lhs.true.3183
  %1963 = load i32, i32* %gp3066, align 4
  %conv3188 = zext i32 %1963 to i64
  %1964 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits3189 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %1964, i32 0, i32 4
  %1965 = load %struct.cl_limits*, %struct.cl_limits** %limits3189, align 8
  %maxfilesize3190 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %1965, i32 0, i32 5
  %1966 = load i64, i64* %maxfilesize3190, align 8
  %cmp3191 = icmp ugt i64 %conv3188, %1966
  br i1 %cmp3191, label %if.then.3193, label %if.end.3202

if.then.3193:                                     ; preds = %land.lhs.true.3187
  %1967 = load i32, i32* %gp3066, align 4
  %1968 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits3194 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %1968, i32 0, i32 4
  %1969 = load %struct.cl_limits*, %struct.cl_limits** %limits3194, align 8
  %maxfilesize3195 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %1969, i32 0, i32 5
  %1970 = load i64, i64* %maxfilesize3195, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.152, i32 0, i32 0), i32 %1967, i64 %1970)
  %1971 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %1972 = bitcast %struct.cli_exe_section* %1971 to i8*
  call void @free(i8* %1972) #3
  %1973 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options3196 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %1973, i32 0, i32 5
  %1974 = load i32, i32* %options3196, align 4
  %and3197 = and i32 %1974, 256
  %tobool3198 = icmp ne i32 %and3197, 0
  br i1 %tobool3198, label %if.then.3199, label %if.else.3201

if.then.3199:                                     ; preds = %if.then.3193
  %1975 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname3200 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %1975, i32 0, i32 0
  %1976 = load i8**, i8*** %virname3200, align 8
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.153, i32 0, i32 0), i8** %1976, align 8
  store i32 1, i32* %retval
  br label %return

if.else.3201:                                     ; preds = %if.then.3193
  store i32 0, i32* %retval
  br label %return

if.end.3202:                                      ; preds = %land.lhs.true.3187, %land.lhs.true.3183, %if.end.3173
  %1977 = load i32, i32* %gp3066, align 4
  %conv3203 = zext i32 %1977 to i64
  %call3204 = call i8* @cli_malloc(i64 %conv3203)
  store i8* %call3204, i8** %support3073, align 8
  %cmp3205 = icmp eq i8* %call3204, null
  br i1 %cmp3205, label %if.then.3207, label %if.end.3208

if.then.3207:                                     ; preds = %if.end.3202
  %1978 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %1979 = bitcast %struct.cli_exe_section* %1978 to i8*
  call void @free(i8* %1979) #3
  store i32 -114, i32* %retval
  br label %return

if.end.3208:                                      ; preds = %if.end.3202
  %1980 = load i32, i32* %desc.addr, align 4
  %1981 = load i8*, i8** %support3073, align 8
  %1982 = load i32, i32* %gp3066, align 4
  %call3209 = call i32 @cli_readn(i32 %1980, i8* %1981, i32 %1982)
  %1983 = load i32, i32* %gp3066, align 4
  %cmp3210 = icmp ne i32 %call3209, %1983
  br i1 %cmp3210, label %if.then.3212, label %if.end.3213

if.then.3212:                                     ; preds = %if.end.3208
  %1984 = load i32, i32* %gp3066, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.170, i32 0, i32 0), i32 %1984)
  %1985 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %1986 = bitcast %struct.cli_exe_section* %1985 to i8*
  call void @free(i8* %1986) #3
  %1987 = load i8*, i8** %support3073, align 8
  call void @free(i8* %1987) #3
  store i32 -123, i32* %retval
  br label %return

if.end.3213:                                      ; preds = %if.end.3208
  store i32 0, i32* %t3065, align 4
  br label %for.cond.3214

for.cond.3214:                                    ; preds = %for.inc.3257, %if.end.3213
  %1988 = load i32, i32* %t3065, align 4
  %1989 = load i32, i32* %gp3066, align 4
  %sub3215 = sub i32 %1989, 2
  %cmp3216 = icmp ult i32 %1988, %sub3215
  br i1 %cmp3216, label %for.body.3218, label %for.end.3259

for.body.3218:                                    ; preds = %for.cond.3214
  %1990 = load i32, i32* %t3065, align 4
  %idxprom3220 = zext i32 %1990 to i64
  %1991 = load i8*, i8** %support3073, align 8
  %arrayidx3221 = getelementptr inbounds i8, i8* %1991, i64 %idxprom3220
  %1992 = load i8, i8* %arrayidx3221, align 1
  %conv3222 = sext i8 %1992 to i32
  %1993 = load i32, i32* %t3065, align 4
  %add3223 = add i32 %1993, 1
  %idxprom3224 = zext i32 %add3223 to i64
  %1994 = load i8*, i8** %support3073, align 8
  %arrayidx3225 = getelementptr inbounds i8, i8* %1994, i64 %idxprom3224
  %1995 = load i8, i8* %arrayidx3225, align 1
  %conv3226 = sext i8 %1995 to i32
  %shl = shl i32 %conv3226, 8
  %or = or i32 %conv3222, %shl
  store i32 %or, i32* %rva3219, align 4
  %1996 = load i32, i32* %rva3219, align 4
  %cmp3227 = icmp eq i32 %1996, 2
  br i1 %cmp3227, label %if.then.3232, label %lor.lhs.false.3229

lor.lhs.false.3229:                               ; preds = %for.body.3218
  %1997 = load i32, i32* %rva3219, align 4
  %cmp3230 = icmp eq i32 %1997, 1
  br i1 %cmp3230, label %if.then.3232, label %if.end.3233

if.then.3232:                                     ; preds = %lor.lhs.false.3229, %for.body.3218
  br label %for.end.3259

if.end.3233:                                      ; preds = %lor.lhs.false.3229
  %1998 = load i32, i32* %rva3219, align 4
  %sub3234 = sub i32 %1998, 2
  %shl3235 = shl i32 %sub3234, 12
  %opt323236 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr32*
  %ImageBase3237 = getelementptr inbounds %struct.pe_image_optional_hdr32, %struct.pe_image_optional_hdr32* %opt323236, i32 0, i32 9
  %1999 = load i32, i32* %ImageBase3237, align 4
  %sub3238 = sub i32 %shl3235, %1999
  store i32 %sub3238, i32* %rva3219, align 4
  %2000 = load i32, i32* %sectcnt3064, align 4
  %inc3239 = add nsw i32 %2000, 1
  store i32 %inc3239, i32* %sectcnt3064, align 4
  %2001 = load i32, i32* %rva3219, align 4
  %2002 = load i32, i32* %i, align 4
  %idxprom3240 = zext i32 %2002 to i64
  %2003 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx3241 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %2003, i64 %idxprom3240
  %rva3242 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx3241, i32 0, i32 0
  %2004 = load i32, i32* %rva3242, align 4
  %cmp3243 = icmp ult i32 %2001, %2004
  br i1 %cmp3243, label %if.then.3255, label %lor.lhs.false.3245

lor.lhs.false.3245:                               ; preds = %if.end.3233
  %2005 = load i32, i32* %rva3219, align 4
  %2006 = load i32, i32* %i, align 4
  %idxprom3246 = zext i32 %2006 to i64
  %2007 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx3247 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %2007, i64 %idxprom3246
  %rva3248 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx3247, i32 0, i32 0
  %2008 = load i32, i32* %rva3248, align 4
  %sub3249 = sub i32 %2005, %2008
  %2009 = load i32, i32* %i, align 4
  %idxprom3250 = zext i32 %2009 to i64
  %2010 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx3251 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %2010, i64 %idxprom3250
  %vsz3252 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx3251, i32 0, i32 1
  %2011 = load i32, i32* %vsz3252, align 4
  %cmp3253 = icmp uge i32 %sub3249, %2011
  br i1 %cmp3253, label %if.then.3255, label %if.end.3256

if.then.3255:                                     ; preds = %lor.lhs.false.3245, %if.end.3233
  %2012 = load i32, i32* %sectcnt3064, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.173, i32 0, i32 0), i32 %2012)
  br label %for.end.3259

if.end.3256:                                      ; preds = %lor.lhs.false.3245
  br label %for.inc.3257

for.inc.3257:                                     ; preds = %if.end.3256
  %2013 = load i32, i32* %t3065, align 4
  %add3258 = add i32 %2013, 2
  store i32 %add3258, i32* %t3065, align 4
  br label %for.cond.3214

for.end.3259:                                     ; preds = %if.then.3255, %if.then.3232, %for.cond.3214
  %2014 = load i32, i32* %t3065, align 4
  %2015 = load i32, i32* %gp3066, align 4
  %sub3260 = sub i32 %2015, 10
  %cmp3261 = icmp uge i32 %2014, %sub3260
  br i1 %cmp3261, label %if.then.3269, label %lor.lhs.false.3263

lor.lhs.false.3263:                               ; preds = %for.end.3259
  %2016 = load i8*, i8** %support3073, align 8
  %2017 = load i32, i32* %t3065, align 4
  %idx.ext3264 = zext i32 %2017 to i64
  %add.ptr3265 = getelementptr inbounds i8, i8* %2016, i64 %idx.ext3264
  %add.ptr3266 = getelementptr inbounds i8, i8* %add.ptr3265, i64 6
  %2018 = bitcast i8* %add.ptr3266 to i32*
  %2019 = load i32, i32* %2018, align 4
  %cmp3267 = icmp ne i32 %2019, 2
  br i1 %cmp3267, label %if.then.3269, label %if.end.3270

if.then.3269:                                     ; preds = %lor.lhs.false.3263, %for.end.3259
  %2020 = load i8*, i8** %support3073, align 8
  call void @free(i8* %2020) #3
  br label %while.end.3402

if.end.3270:                                      ; preds = %lor.lhs.false.3263
  %2021 = load i32, i32* %sectcnt3064, align 4
  %add3271 = add nsw i32 %2021, 1
  %conv3272 = sext i32 %add3271 to i64
  %mul3273 = mul i64 %conv3272, 36
  %call3274 = call i8* @cli_malloc(i64 %mul3273)
  %2022 = bitcast i8* %call3274 to %struct.cli_exe_section*
  store %struct.cli_exe_section* %2022, %struct.cli_exe_section** %sections3092, align 8
  %cmp3275 = icmp eq %struct.cli_exe_section* %2022, null
  br i1 %cmp3275, label %if.then.3277, label %if.end.3278

if.then.3277:                                     ; preds = %if.end.3270
  %2023 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %2024 = bitcast %struct.cli_exe_section* %2023 to i8*
  call void @free(i8* %2024) #3
  %2025 = load i8*, i8** %support3073, align 8
  call void @free(i8* %2025) #3
  store i32 -114, i32* %retval
  br label %return

if.end.3278:                                      ; preds = %if.end.3270
  %2026 = load i32, i32* %newedi3080, align 4
  %2027 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections3092, align 8
  %arrayidx3279 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %2027, i64 0
  %rva3280 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx3279, i32 0, i32 0
  store i32 %2026, i32* %rva3280, align 4
  store i32 0, i32* %t3065, align 4
  br label %for.cond.3281

for.cond.3281:                                    ; preds = %for.inc.3306, %if.end.3278
  %2028 = load i32, i32* %t3065, align 4
  %2029 = load i32, i32* %sectcnt3064, align 4
  %sub3282 = sub i32 %2029, 1
  %cmp3283 = icmp ule i32 %2028, %sub3282
  br i1 %cmp3283, label %for.body.3285, label %for.end.3308

for.body.3285:                                    ; preds = %for.cond.3281
  %2030 = load i32, i32* %t3065, align 4
  %mul3286 = mul i32 %2030, 2
  %idxprom3287 = zext i32 %mul3286 to i64
  %2031 = load i8*, i8** %support3073, align 8
  %arrayidx3288 = getelementptr inbounds i8, i8* %2031, i64 %idxprom3287
  %2032 = load i8, i8* %arrayidx3288, align 1
  %conv3289 = sext i8 %2032 to i32
  %2033 = load i32, i32* %t3065, align 4
  %mul3290 = mul i32 %2033, 2
  %add3291 = add i32 %mul3290, 1
  %idxprom3292 = zext i32 %add3291 to i64
  %2034 = load i8*, i8** %support3073, align 8
  %arrayidx3293 = getelementptr inbounds i8, i8* %2034, i64 %idxprom3292
  %2035 = load i8, i8* %arrayidx3293, align 1
  %conv3294 = sext i8 %2035 to i32
  %shl3295 = shl i32 %conv3294, 8
  %or3296 = or i32 %conv3289, %shl3295
  %sub3297 = sub nsw i32 %or3296, 2
  %shl3298 = shl i32 %sub3297, 12
  %opt323299 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr32*
  %ImageBase3300 = getelementptr inbounds %struct.pe_image_optional_hdr32, %struct.pe_image_optional_hdr32* %opt323299, i32 0, i32 9
  %2036 = load i32, i32* %ImageBase3300, align 4
  %sub3301 = sub i32 %shl3298, %2036
  %2037 = load i32, i32* %t3065, align 4
  %add3302 = add i32 %2037, 1
  %idxprom3303 = zext i32 %add3302 to i64
  %2038 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections3092, align 8
  %arrayidx3304 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %2038, i64 %idxprom3303
  %rva3305 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx3304, i32 0, i32 0
  store i32 %sub3301, i32* %rva3305, align 4
  br label %for.inc.3306

for.inc.3306:                                     ; preds = %for.body.3285
  %2039 = load i32, i32* %t3065, align 4
  %inc3307 = add i32 %2039, 1
  store i32 %inc3307, i32* %t3065, align 4
  br label %for.cond.3281

for.end.3308:                                     ; preds = %for.cond.3281
  %2040 = load i8*, i8** %support3073, align 8
  call void @free(i8* %2040) #3
  %2041 = load i32, i32* %ssize, align 4
  %conv3309 = zext i32 %2041 to i64
  %call3310 = call i8* @cli_malloc(i64 %conv3309)
  store i8* %call3310, i8** %src, align 8
  %cmp3311 = icmp eq i8* %call3310, null
  br i1 %cmp3311, label %if.then.3313, label %if.end.3314

if.then.3313:                                     ; preds = %for.end.3308
  %2042 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %2043 = bitcast %struct.cli_exe_section* %2042 to i8*
  call void @free(i8* %2043) #3
  %2044 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections3092, align 8
  %2045 = bitcast %struct.cli_exe_section* %2044 to i8*
  call void @free(i8* %2045) #3
  store i32 -114, i32* %retval
  br label %return

if.end.3314:                                      ; preds = %for.end.3308
  %2046 = load i32, i32* %desc.addr, align 4
  %2047 = load i32, i32* %i, align 4
  %add3315 = add i32 %2047, 1
  %idxprom3316 = zext i32 %add3315 to i64
  %2048 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx3317 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %2048, i64 %idxprom3316
  %call3318 = call i64 @cli_seeksect(i32 %2046, %struct.cli_exe_section* %arrayidx3317)
  %tobool3319 = icmp ne i64 %call3318, 0
  br i1 %tobool3319, label %lor.lhs.false.3320, label %if.then.3324

lor.lhs.false.3320:                               ; preds = %if.end.3314
  %2049 = load i32, i32* %desc.addr, align 4
  %2050 = load i8*, i8** %src, align 8
  %2051 = load i32, i32* %ssize, align 4
  %call3321 = call i32 @cli_readn(i32 %2049, i8* %2050, i32 %2051)
  %2052 = load i32, i32* %ssize, align 4
  %cmp3322 = icmp ne i32 %call3321, %2052
  br i1 %cmp3322, label %if.then.3324, label %if.end.3325

if.then.3324:                                     ; preds = %lor.lhs.false.3320, %if.end.3314
  %2053 = load i32, i32* %i, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.174, i32 0, i32 0), i32 %2053)
  %2054 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %2055 = bitcast %struct.cli_exe_section* %2054 to i8*
  call void @free(i8* %2055) #3
  %2056 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections3092, align 8
  %2057 = bitcast %struct.cli_exe_section* %2056 to i8*
  call void @free(i8* %2057) #3
  %2058 = load i8*, i8** %src, align 8
  call void @free(i8* %2058) #3
  store i32 -123, i32* %retval
  br label %return

if.end.3325:                                      ; preds = %lor.lhs.false.3320
  %2059 = load i32, i32* %dsize, align 4
  %conv3326 = zext i32 %2059 to i64
  %call3327 = call i8* @cli_calloc(i64 %conv3326, i64 1)
  store i8* %call3327, i8** %dest, align 8
  %cmp3328 = icmp eq i8* %call3327, null
  br i1 %cmp3328, label %if.then.3330, label %if.end.3331

if.then.3330:                                     ; preds = %if.end.3325
  %2060 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %2061 = bitcast %struct.cli_exe_section* %2060 to i8*
  call void @free(i8* %2061) #3
  %2062 = load i8*, i8** %src, align 8
  call void @free(i8* %2062) #3
  %2063 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections3092, align 8
  %2064 = bitcast %struct.cli_exe_section* %2063 to i8*
  call void @free(i8* %2064) #3
  store i32 -114, i32* %retval
  br label %return

if.end.3331:                                      ; preds = %if.end.3325
  %arrayidx3332 = getelementptr inbounds [4096 x i8], [4096 x i8]* %epbuff, i32 0, i64 16
  %2065 = load i8, i8* %arrayidx3332, align 1
  %conv3333 = sext i8 %2065 to i32
  %cmp3334 = icmp eq i32 %conv3333, -24
  %conv3335 = zext i1 %cmp3334 to i32
  %mul3336 = mul nsw i32 6, %conv3335
  %add3337 = add nsw i32 218, %mul3336
  store i32 %add3337, i32* %gp3066, align 4
  %2066 = load i32, i32* %vep, align 4
  %2067 = load i32, i32* %gp3066, align 4
  %add3338 = add i32 %2066, %2067
  %add3339 = add i32 %add3338, 6
  %2068 = load i8*, i8** %src, align 8
  %2069 = load i32, i32* %gp3066, align 4
  %idx.ext3340 = zext i32 %2069 to i64
  %add.ptr3341 = getelementptr inbounds i8, i8* %2068, i64 %idx.ext3340
  %add.ptr3342 = getelementptr inbounds i8, i8* %add.ptr3341, i64 2
  %2070 = load i32, i32* %oldep3086, align 4
  %idx.ext3343 = zext i32 %2070 to i64
  %add.ptr3344 = getelementptr inbounds i8, i8* %add.ptr3342, i64 %idx.ext3343
  %2071 = bitcast i8* %add.ptr3344 to i32*
  %2072 = load i32, i32* %2071, align 4
  %add3345 = add i32 %add3339, %2072
  store i32 %add3345, i32* %oldep3086, align 4
  %2073 = load i32, i32* %oldep3086, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.163, i32 0, i32 0), i32 %2073)
  %call3346 = call i8* @cli_gentemp(i8* null)
  store i8* %call3346, i8** %tempfile, align 8
  %tobool3347 = icmp ne i8* %call3346, null
  br i1 %tobool3347, label %if.end.3349, label %if.then.3348

if.then.3348:                                     ; preds = %if.end.3331
  %2074 = load i8*, i8** %src, align 8
  %2075 = load i8*, i8** %dest, align 8
  %2076 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections3092, align 8
  %2077 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  call void (i8*, ...) @cli_multifree(i8* %2074, i8* %2075, %struct.cli_exe_section* %2076, %struct.cli_exe_section* %2077, i32 0)
  store i32 -114, i32* %retval
  br label %return

if.end.3349:                                      ; preds = %if.end.3331
  %2078 = load i8*, i8** %tempfile, align 8
  %call3350 = call i32 (i8*, i32, ...) @open(i8* %2078, i32 578, i32 448)
  store i32 %call3350, i32* %ndesc, align 4
  %cmp3351 = icmp slt i32 %call3350, 0
  br i1 %cmp3351, label %if.then.3353, label %if.end.3354

if.then.3353:                                     ; preds = %if.end.3349
  %2079 = load i8*, i8** %tempfile, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.164, i32 0, i32 0), i8* %2079)
  %2080 = load i8*, i8** %tempfile, align 8
  call void @free(i8* %2080) #3
  %2081 = load i8*, i8** %src, align 8
  %2082 = load i8*, i8** %dest, align 8
  %2083 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections3092, align 8
  %2084 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  call void (i8*, ...) @cli_multifree(i8* %2081, i8* %2082, %struct.cli_exe_section* %2083, %struct.cli_exe_section* %2084, i32 0)
  store i32 -123, i32* %retval
  br label %return

if.end.3354:                                      ; preds = %if.end.3349
  %2085 = load i8*, i8** %src, align 8
  %2086 = load i32, i32* %newesi3074, align 4
  %idx.ext3355 = zext i32 %2086 to i64
  %add.ptr3356 = getelementptr inbounds i8, i8* %2085, i64 %idx.ext3355
  %2087 = load i32, i32* %i, align 4
  %add3357 = add i32 %2087, 1
  %idxprom3358 = zext i32 %add3357 to i64
  %2088 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx3359 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %2088, i64 %idxprom3358
  %rva3360 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx3359, i32 0, i32 0
  %2089 = load i32, i32* %rva3360, align 4
  %idx.ext3361 = zext i32 %2089 to i64
  %idx.neg3362 = sub i64 0, %idx.ext3361
  %add.ptr3363 = getelementptr inbounds i8, i8* %add.ptr3356, i64 %idx.neg3362
  %2090 = load i8*, i8** %dest, align 8
  %2091 = load i32, i32* %ssize, align 4
  %2092 = load i32, i32* %i, align 4
  %add3364 = add i32 %2092, 1
  %idxprom3365 = zext i32 %add3364 to i64
  %2093 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx3366 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %2093, i64 %idxprom3365
  %rva3367 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx3366, i32 0, i32 0
  %2094 = load i32, i32* %rva3367, align 4
  %add3368 = add i32 %2091, %2094
  %2095 = load i32, i32* %newesi3074, align 4
  %sub3369 = sub i32 %add3368, %2095
  %2096 = load i32, i32* %dsize, align 4
  %2097 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections3092, align 8
  %2098 = load i32, i32* %sectcnt3064, align 4
  %opt323370 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr32*
  %ImageBase3371 = getelementptr inbounds %struct.pe_image_optional_hdr32, %struct.pe_image_optional_hdr32* %opt323370, i32 0, i32 9
  %2099 = load i32, i32* %ImageBase3371, align 4
  %2100 = load i32, i32* %oldep3086, align 4
  %2101 = load i32, i32* %ndesc, align 4
  %call3372 = call i32 @unfsg_133(i8* %add.ptr3363, i8* %2090, i32 %sub3369, i32 %2096, %struct.cli_exe_section* %2097, i32 %2098, i32 %2099, i32 %2100, i32 %2101)
  switch i32 %call3372, label %sw.default.3398 [
    i32 1, label %sw.bb.3373
    i32 0, label %sw.bb.3395
  ]

sw.bb.3373:                                       ; preds = %if.end.3354
  %2102 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool3374 = icmp ne i8 %2102, 0
  br i1 %tobool3374, label %if.then.3375, label %if.else.3376

if.then.3375:                                     ; preds = %sw.bb.3373
  %2103 = load i8*, i8** %tempfile, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.165, i32 0, i32 0), i8* %2103)
  br label %if.end.3377

if.else.3376:                                     ; preds = %sw.bb.3373
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.166, i32 0, i32 0))
  br label %if.end.3377

if.end.3377:                                      ; preds = %if.else.3376, %if.then.3375
  %2104 = load i8*, i8** %src, align 8
  %2105 = load i8*, i8** %dest, align 8
  %2106 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections3092, align 8
  call void (i8*, ...) @cli_multifree(i8* %2104, i8* %2105, %struct.cli_exe_section* %2106, i32 0)
  %2107 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %2108 = bitcast %struct.cli_exe_section* %2107 to i8*
  call void @free(i8* %2108) #3
  %2109 = load i32, i32* %ndesc, align 4
  %call3378 = call i32 @fsync(i32 %2109)
  %2110 = load i32, i32* %ndesc, align 4
  %call3379 = call i64 @lseek(i32 %2110, i64 0, i32 0) #3
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.138, i32 0, i32 0))
  %2111 = load i32, i32* %ndesc, align 4
  %2112 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call3380 = call i32 @cli_magic_scandesc(i32 %2111, %struct.cli_ctx* %2112)
  %cmp3381 = icmp eq i32 %call3380, 1
  br i1 %cmp3381, label %if.then.3383, label %if.end.3389

if.then.3383:                                     ; preds = %if.end.3377
  %2113 = load i32, i32* %ndesc, align 4
  %call3384 = call i32 @close(i32 %2113)
  %2114 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool3385 = icmp ne i8 %2114, 0
  br i1 %tobool3385, label %if.end.3388, label %if.then.3386

if.then.3386:                                     ; preds = %if.then.3383
  %2115 = load i8*, i8** %tempfile, align 8
  %call3387 = call i32 @unlink(i8* %2115) #3
  br label %if.end.3388

if.end.3388:                                      ; preds = %if.then.3386, %if.then.3383
  %2116 = load i8*, i8** %tempfile, align 8
  call void @free(i8* %2116) #3
  store i32 1, i32* %retval
  br label %return

if.end.3389:                                      ; preds = %if.end.3377
  %2117 = load i32, i32* %ndesc, align 4
  %call3390 = call i32 @close(i32 %2117)
  %2118 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool3391 = icmp ne i8 %2118, 0
  br i1 %tobool3391, label %if.end.3394, label %if.then.3392

if.then.3392:                                     ; preds = %if.end.3389
  %2119 = load i8*, i8** %tempfile, align 8
  %call3393 = call i32 @unlink(i8* %2119) #3
  br label %if.end.3394

if.end.3394:                                      ; preds = %if.then.3392, %if.end.3389
  %2120 = load i8*, i8** %tempfile, align 8
  call void @free(i8* %2120) #3
  store i32 0, i32* %retval
  br label %return

sw.bb.3395:                                       ; preds = %if.end.3354
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.167, i32 0, i32 0))
  %2121 = load i32, i32* %ndesc, align 4
  %call3396 = call i32 @close(i32 %2121)
  %2122 = load i8*, i8** %tempfile, align 8
  %call3397 = call i32 @unlink(i8* %2122) #3
  %2123 = load i8*, i8** %tempfile, align 8
  call void @free(i8* %2123) #3
  %2124 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections3092, align 8
  %2125 = bitcast %struct.cli_exe_section* %2124 to i8*
  call void @free(i8* %2125) #3
  store i32 0, i32* %found, align 4
  store i32 1, i32* %upx_success, align 4
  br label %sw.epilog.3401

sw.default.3398:                                  ; preds = %if.end.3354
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.168, i32 0, i32 0))
  %2126 = load i32, i32* %ndesc, align 4
  %call3399 = call i32 @close(i32 %2126)
  %2127 = load i8*, i8** %tempfile, align 8
  %call3400 = call i32 @unlink(i8* %2127) #3
  %2128 = load i8*, i8** %src, align 8
  %2129 = load i8*, i8** %dest, align 8
  %2130 = load %struct.cli_exe_section*, %struct.cli_exe_section** %sections3092, align 8
  call void (i8*, ...) @cli_multifree(i8* %2128, i8* %2129, %struct.cli_exe_section* %2130, i32 0)
  %2131 = load i8*, i8** %tempfile, align 8
  call void @free(i8* %2131) #3
  br label %sw.epilog.3401

sw.epilog.3401:                                   ; preds = %sw.default.3398, %sw.bb.3395
  br label %while.end.3402

while.end.3402:                                   ; preds = %sw.epilog.3401, %if.then.3269, %if.then.3128, %if.then.3121, %if.then.3101, %land.end.3062
  %2132 = load i32, i32* %found, align 4
  %tobool3403 = icmp ne i32 %2132, 0
  br i1 %tobool3403, label %land.lhs.true.3404, label %if.end.3700

land.lhs.true.3404:                               ; preds = %while.end.3402
  %2133 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %dconf3405 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %2133, i32 0, i32 9
  %2134 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf3405, align 8
  %pe3406 = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %2134, i32 0, i32 0
  %2135 = load i32, i32* %pe3406, align 4
  %and3407 = and i32 %2135, 32
  %tobool3408 = icmp ne i32 %and3407, 0
  br i1 %tobool3408, label %if.then.3409, label %if.end.3700

if.then.3409:                                     ; preds = %land.lhs.true.3404
  %2136 = load i32, i32* %i, align 4
  %add3410 = add i32 %2136, 1
  %idxprom3411 = zext i32 %add3410 to i64
  %2137 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx3412 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %2137, i64 %idxprom3411
  %rsz3413 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx3412, i32 0, i32 3
  %2138 = load i32, i32* %rsz3413, align 4
  store i32 %2138, i32* %ssize, align 4
  %2139 = load i32, i32* %i, align 4
  %idxprom3414 = zext i32 %2139 to i64
  %2140 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx3415 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %2140, i64 %idxprom3414
  %vsz3416 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx3415, i32 0, i32 1
  %2141 = load i32, i32* %vsz3416, align 4
  %2142 = load i32, i32* %i, align 4
  %add3417 = add i32 %2142, 1
  %idxprom3418 = zext i32 %add3417 to i64
  %2143 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx3419 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %2143, i64 %idxprom3418
  %vsz3420 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx3419, i32 0, i32 1
  %2144 = load i32, i32* %vsz3420, align 4
  %add3421 = add i32 %2141, %2144
  store i32 %add3421, i32* %dsize, align 4
  %2145 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits3422 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %2145, i32 0, i32 4
  %2146 = load %struct.cl_limits*, %struct.cl_limits** %limits3422, align 8
  %tobool3423 = icmp ne %struct.cl_limits* %2146, null
  br i1 %tobool3423, label %land.lhs.true.3424, label %if.end.3455

land.lhs.true.3424:                               ; preds = %if.then.3409
  %2147 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits3425 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %2147, i32 0, i32 4
  %2148 = load %struct.cl_limits*, %struct.cl_limits** %limits3425, align 8
  %maxfilesize3426 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %2148, i32 0, i32 5
  %2149 = load i64, i64* %maxfilesize3426, align 8
  %tobool3427 = icmp ne i64 %2149, 0
  br i1 %tobool3427, label %land.lhs.true.3428, label %if.end.3455

land.lhs.true.3428:                               ; preds = %land.lhs.true.3424
  %2150 = load i32, i32* %dsize, align 4
  %2151 = load i32, i32* %ssize, align 4
  %cmp3429 = icmp ugt i32 %2150, %2151
  br i1 %cmp3429, label %cond.true.3431, label %cond.false.3432

cond.true.3431:                                   ; preds = %land.lhs.true.3428
  %2152 = load i32, i32* %dsize, align 4
  br label %cond.end.3433

cond.false.3432:                                  ; preds = %land.lhs.true.3428
  %2153 = load i32, i32* %ssize, align 4
  br label %cond.end.3433

cond.end.3433:                                    ; preds = %cond.false.3432, %cond.true.3431
  %cond3434 = phi i32 [ %2152, %cond.true.3431 ], [ %2153, %cond.false.3432 ]
  %conv3435 = zext i32 %cond3434 to i64
  %2154 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits3436 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %2154, i32 0, i32 4
  %2155 = load %struct.cl_limits*, %struct.cl_limits** %limits3436, align 8
  %maxfilesize3437 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %2155, i32 0, i32 5
  %2156 = load i64, i64* %maxfilesize3437, align 8
  %cmp3438 = icmp ugt i64 %conv3435, %2156
  br i1 %cmp3438, label %if.then.3440, label %if.end.3455

if.then.3440:                                     ; preds = %cond.end.3433
  %2157 = load i32, i32* %dsize, align 4
  %2158 = load i32, i32* %ssize, align 4
  %cmp3441 = icmp ugt i32 %2157, %2158
  br i1 %cmp3441, label %cond.true.3443, label %cond.false.3444

cond.true.3443:                                   ; preds = %if.then.3440
  %2159 = load i32, i32* %dsize, align 4
  br label %cond.end.3445

cond.false.3444:                                  ; preds = %if.then.3440
  %2160 = load i32, i32* %ssize, align 4
  br label %cond.end.3445

cond.end.3445:                                    ; preds = %cond.false.3444, %cond.true.3443
  %cond3446 = phi i32 [ %2159, %cond.true.3443 ], [ %2160, %cond.false.3444 ]
  %2161 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits3447 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %2161, i32 0, i32 4
  %2162 = load %struct.cl_limits*, %struct.cl_limits** %limits3447, align 8
  %maxfilesize3448 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %2162, i32 0, i32 5
  %2163 = load i64, i64* %maxfilesize3448, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.175, i32 0, i32 0), i32 %cond3446, i64 %2163)
  %2164 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %2165 = bitcast %struct.cli_exe_section* %2164 to i8*
  call void @free(i8* %2165) #3
  %2166 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options3449 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %2166, i32 0, i32 5
  %2167 = load i32, i32* %options3449, align 4
  %and3450 = and i32 %2167, 256
  %tobool3451 = icmp ne i32 %and3450, 0
  br i1 %tobool3451, label %if.then.3452, label %if.else.3454

if.then.3452:                                     ; preds = %cond.end.3445
  %2168 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname3453 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %2168, i32 0, i32 0
  %2169 = load i8**, i8*** %virname3453, align 8
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.176, i32 0, i32 0), i8** %2169, align 8
  store i32 1, i32* %retval
  br label %return

if.else.3454:                                     ; preds = %cond.end.3445
  store i32 0, i32* %retval
  br label %return

if.end.3455:                                      ; preds = %cond.end.3433, %land.lhs.true.3424, %if.then.3409
  %2170 = load i32, i32* %ssize, align 4
  %cmp3456 = icmp ule i32 %2170, 25
  br i1 %cmp3456, label %if.then.3464, label %lor.lhs.false.3458

lor.lhs.false.3458:                               ; preds = %if.end.3455
  %2171 = load i32, i32* %dsize, align 4
  %2172 = load i32, i32* %ssize, align 4
  %cmp3459 = icmp ule i32 %2171, %2172
  br i1 %cmp3459, label %if.then.3464, label %lor.lhs.false.3461

lor.lhs.false.3461:                               ; preds = %lor.lhs.false.3458
  %2173 = load i32, i32* %dsize, align 4
  %cmp3462 = icmp ugt i32 %2173, 184549376
  br i1 %cmp3462, label %if.then.3464, label %if.end.3465

if.then.3464:                                     ; preds = %lor.lhs.false.3461, %lor.lhs.false.3458, %if.end.3455
  %2174 = load i32, i32* %ssize, align 4
  %2175 = load i32, i32* %dsize, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.177, i32 0, i32 0), i32 %2174, i32 %2175)
  %2176 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %2177 = bitcast %struct.cli_exe_section* %2176 to i8*
  call void @free(i8* %2177) #3
  store i32 0, i32* %retval
  br label %return

if.end.3465:                                      ; preds = %lor.lhs.false.3461
  %2178 = load i32, i32* %ssize, align 4
  %conv3466 = zext i32 %2178 to i64
  %call3467 = call i8* @cli_malloc(i64 %conv3466)
  store i8* %call3467, i8** %src, align 8
  %cmp3468 = icmp eq i8* %call3467, null
  br i1 %cmp3468, label %if.then.3470, label %if.end.3471

if.then.3470:                                     ; preds = %if.end.3465
  %2179 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %2180 = bitcast %struct.cli_exe_section* %2179 to i8*
  call void @free(i8* %2180) #3
  store i32 -114, i32* %retval
  br label %return

if.end.3471:                                      ; preds = %if.end.3465
  %2181 = load i32, i32* %dsize, align 4
  %add3472 = add i32 %2181, 8192
  %conv3473 = zext i32 %add3472 to i64
  %call3474 = call i8* @cli_calloc(i64 %conv3473, i64 1)
  store i8* %call3474, i8** %dest, align 8
  %cmp3475 = icmp eq i8* %call3474, null
  br i1 %cmp3475, label %if.then.3477, label %if.end.3478

if.then.3477:                                     ; preds = %if.end.3471
  %2182 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %2183 = bitcast %struct.cli_exe_section* %2182 to i8*
  call void @free(i8* %2183) #3
  %2184 = load i8*, i8** %src, align 8
  call void @free(i8* %2184) #3
  store i32 -114, i32* %retval
  br label %return

if.end.3478:                                      ; preds = %if.end.3471
  %2185 = load i32, i32* %desc.addr, align 4
  %2186 = load i32, i32* %i, align 4
  %add3479 = add i32 %2186, 1
  %idxprom3480 = zext i32 %add3479 to i64
  %2187 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx3481 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %2187, i64 %idxprom3480
  %call3482 = call i64 @cli_seeksect(i32 %2185, %struct.cli_exe_section* %arrayidx3481)
  %tobool3483 = icmp ne i64 %call3482, 0
  br i1 %tobool3483, label %lor.lhs.false.3484, label %if.then.3488

lor.lhs.false.3484:                               ; preds = %if.end.3478
  %2188 = load i32, i32* %desc.addr, align 4
  %2189 = load i8*, i8** %src, align 8
  %2190 = load i32, i32* %ssize, align 4
  %call3485 = call i32 @cli_readn(i32 %2188, i8* %2189, i32 %2190)
  %2191 = load i32, i32* %ssize, align 4
  %cmp3486 = icmp ne i32 %call3485, %2191
  br i1 %cmp3486, label %if.then.3488, label %if.end.3490

if.then.3488:                                     ; preds = %lor.lhs.false.3484, %if.end.3478
  %2192 = load i32, i32* %i, align 4
  %add3489 = add i32 %2192, 1
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.178, i32 0, i32 0), i32 %add3489)
  %2193 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %2194 = bitcast %struct.cli_exe_section* %2193 to i8*
  call void @free(i8* %2194) #3
  %2195 = load i8*, i8** %src, align 8
  call void @free(i8* %2195) #3
  %2196 = load i8*, i8** %dest, align 8
  call void @free(i8* %2196) #3
  store i32 -123, i32* %retval
  br label %return

if.end.3490:                                      ; preds = %lor.lhs.false.3484
  %arraydecay3491 = getelementptr inbounds [4096 x i8], [4096 x i8]* %epbuff, i32 0, i32 0
  %add.ptr3492 = getelementptr inbounds i8, i8* %arraydecay3491, i64 105
  %call3493 = call i8* @cli_memstr(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.179, i32 0, i32 0), i32 24, i8* %add.ptr3492, i32 13)
  %tobool3494 = icmp ne i8* %call3493, null
  br i1 %tobool3494, label %if.then.3501, label %lor.lhs.false.3495

lor.lhs.false.3495:                               ; preds = %if.end.3490
  %arraydecay3496 = getelementptr inbounds [4096 x i8], [4096 x i8]* %epbuff, i32 0, i32 0
  %add.ptr3497 = getelementptr inbounds i8, i8* %arraydecay3496, i64 105
  %add.ptr3498 = getelementptr inbounds i8, i8* %add.ptr3497, i64 8
  %call3499 = call i8* @cli_memstr(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.179, i32 0, i32 0), i32 24, i8* %add.ptr3498, i32 13)
  %tobool3500 = icmp ne i8* %call3499, null
  br i1 %tobool3500, label %if.then.3501, label %if.else.3502

if.then.3501:                                     ; preds = %lor.lhs.false.3495, %if.end.3490
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.180, i32 0, i32 0))
  store i32 (i8*, i32, i8*, i32*, i32, i32, i32)* @upx_inflate2b, i32 (i8*, i32, i8*, i32*, i32, i32, i32)** %upxfn, align 8
  br label %if.end.3528

if.else.3502:                                     ; preds = %lor.lhs.false.3495
  %arraydecay3503 = getelementptr inbounds [4096 x i8], [4096 x i8]* %epbuff, i32 0, i32 0
  %add.ptr3504 = getelementptr inbounds i8, i8* %arraydecay3503, i64 105
  %call3505 = call i8* @cli_memstr(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.181, i32 0, i32 0), i32 24, i8* %add.ptr3504, i32 13)
  %tobool3506 = icmp ne i8* %call3505, null
  br i1 %tobool3506, label %if.then.3513, label %lor.lhs.false.3507

lor.lhs.false.3507:                               ; preds = %if.else.3502
  %arraydecay3508 = getelementptr inbounds [4096 x i8], [4096 x i8]* %epbuff, i32 0, i32 0
  %add.ptr3509 = getelementptr inbounds i8, i8* %arraydecay3508, i64 105
  %add.ptr3510 = getelementptr inbounds i8, i8* %add.ptr3509, i64 8
  %call3511 = call i8* @cli_memstr(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.181, i32 0, i32 0), i32 24, i8* %add.ptr3510, i32 13)
  %tobool3512 = icmp ne i8* %call3511, null
  br i1 %tobool3512, label %if.then.3513, label %if.else.3514

if.then.3513:                                     ; preds = %lor.lhs.false.3507, %if.else.3502
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.182, i32 0, i32 0))
  store i32 (i8*, i32, i8*, i32*, i32, i32, i32)* @upx_inflate2d, i32 (i8*, i32, i8*, i32*, i32, i32, i32)** %upxfn, align 8
  br label %if.end.3527

if.else.3514:                                     ; preds = %lor.lhs.false.3507
  %arraydecay3515 = getelementptr inbounds [4096 x i8], [4096 x i8]* %epbuff, i32 0, i32 0
  %add.ptr3516 = getelementptr inbounds i8, i8* %arraydecay3515, i64 105
  %call3517 = call i8* @cli_memstr(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.183, i32 0, i32 0), i32 24, i8* %add.ptr3516, i32 13)
  %tobool3518 = icmp ne i8* %call3517, null
  br i1 %tobool3518, label %if.then.3525, label %lor.lhs.false.3519

lor.lhs.false.3519:                               ; preds = %if.else.3514
  %arraydecay3520 = getelementptr inbounds [4096 x i8], [4096 x i8]* %epbuff, i32 0, i32 0
  %add.ptr3521 = getelementptr inbounds i8, i8* %arraydecay3520, i64 105
  %add.ptr3522 = getelementptr inbounds i8, i8* %add.ptr3521, i64 8
  %call3523 = call i8* @cli_memstr(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.183, i32 0, i32 0), i32 24, i8* %add.ptr3522, i32 13)
  %tobool3524 = icmp ne i8* %call3523, null
  br i1 %tobool3524, label %if.then.3525, label %if.end.3526

if.then.3525:                                     ; preds = %lor.lhs.false.3519, %if.else.3514
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.184, i32 0, i32 0))
  store i32 (i8*, i32, i8*, i32*, i32, i32, i32)* @upx_inflate2e, i32 (i8*, i32, i8*, i32*, i32, i32, i32)** %upxfn, align 8
  br label %if.end.3526

if.end.3526:                                      ; preds = %if.then.3525, %lor.lhs.false.3519
  br label %if.end.3527

if.end.3527:                                      ; preds = %if.end.3526, %if.then.3513
  br label %if.end.3528

if.end.3528:                                      ; preds = %if.end.3527, %if.then.3501
  %2197 = load i32 (i8*, i32, i8*, i32*, i32, i32, i32)*, i32 (i8*, i32, i8*, i32*, i32, i32, i32)** %upxfn, align 8
  %tobool3529 = icmp ne i32 (i8*, i32, i8*, i32*, i32, i32, i32)* %2197, null
  br i1 %tobool3529, label %if.then.3530, label %if.end.3597

if.then.3530:                                     ; preds = %if.end.3528
  %arraydecay3531 = getelementptr inbounds [4096 x i8], [4096 x i8]* %epbuff, i32 0, i32 0
  %add.ptr3532 = getelementptr inbounds i8, i8* %arraydecay3531, i64 2
  %2198 = bitcast i8* %add.ptr3532 to i32*
  %2199 = load i32, i32* %2198, align 4
  %opt323533 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr32*
  %ImageBase3534 = getelementptr inbounds %struct.pe_image_optional_hdr32, %struct.pe_image_optional_hdr32* %opt323533, i32 0, i32 9
  %2200 = load i32, i32* %ImageBase3534, align 4
  %sub3535 = sub i32 %2199, %2200
  %2201 = load i32, i32* %i, align 4
  %add3536 = add i32 %2201, 1
  %idxprom3537 = zext i32 %add3536 to i64
  %2202 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx3538 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %2202, i64 %idxprom3537
  %rva3539 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx3538, i32 0, i32 0
  %2203 = load i32, i32* %rva3539, align 4
  %sub3540 = sub i32 %sub3535, %2203
  store i32 %sub3540, i32* %skew, align 4
  %arrayidx3541 = getelementptr inbounds [4096 x i8], [4096 x i8]* %epbuff, i32 0, i64 1
  %2204 = load i8, i8* %arrayidx3541, align 1
  %conv3542 = sext i8 %2204 to i32
  %cmp3543 = icmp ne i32 %conv3542, -66
  br i1 %cmp3543, label %if.then.3551, label %lor.lhs.false.3545

lor.lhs.false.3545:                               ; preds = %if.then.3530
  %2205 = load i32, i32* %skew, align 4
  %cmp3546 = icmp sle i32 %2205, 0
  br i1 %cmp3546, label %if.then.3551, label %lor.lhs.false.3548

lor.lhs.false.3548:                               ; preds = %lor.lhs.false.3545
  %2206 = load i32, i32* %skew, align 4
  %cmp3549 = icmp sgt i32 %2206, 4095
  br i1 %cmp3549, label %if.then.3551, label %if.else.3564

if.then.3551:                                     ; preds = %lor.lhs.false.3548, %lor.lhs.false.3545, %if.then.3530
  store i32 0, i32* %skew, align 4
  %2207 = load i32 (i8*, i32, i8*, i32*, i32, i32, i32)*, i32 (i8*, i32, i8*, i32*, i32, i32, i32)** %upxfn, align 8
  %2208 = load i8*, i8** %src, align 8
  %2209 = load i32, i32* %ssize, align 4
  %2210 = load i8*, i8** %dest, align 8
  %2211 = load i32, i32* %i, align 4
  %idxprom3552 = zext i32 %2211 to i64
  %2212 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx3553 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %2212, i64 %idxprom3552
  %rva3554 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx3553, i32 0, i32 0
  %2213 = load i32, i32* %rva3554, align 4
  %2214 = load i32, i32* %i, align 4
  %add3555 = add i32 %2214, 1
  %idxprom3556 = zext i32 %add3555 to i64
  %2215 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx3557 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %2215, i64 %idxprom3556
  %rva3558 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx3557, i32 0, i32 0
  %2216 = load i32, i32* %rva3558, align 4
  %2217 = load i32, i32* %vep, align 4
  %call3559 = call i32 %2207(i8* %2208, i32 %2209, i8* %2210, i32* %dsize, i32 %2213, i32 %2216, i32 %2217)
  %cmp3560 = icmp sge i32 %call3559, 0
  br i1 %cmp3560, label %if.then.3562, label %if.end.3563

if.then.3562:                                     ; preds = %if.then.3551
  store i32 1, i32* %upx_success, align 4
  br label %if.end.3563

if.end.3563:                                      ; preds = %if.then.3562, %if.then.3551
  br label %if.end.3592

if.else.3564:                                     ; preds = %lor.lhs.false.3548
  %2218 = load i32, i32* %skew, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.185, i32 0, i32 0), i32 %2218)
  %2219 = load i32 (i8*, i32, i8*, i32*, i32, i32, i32)*, i32 (i8*, i32, i8*, i32*, i32, i32, i32)** %upxfn, align 8
  %2220 = load i8*, i8** %src, align 8
  %2221 = load i32, i32* %skew, align 4
  %idx.ext3565 = sext i32 %2221 to i64
  %add.ptr3566 = getelementptr inbounds i8, i8* %2220, i64 %idx.ext3565
  %2222 = load i32, i32* %ssize, align 4
  %2223 = load i32, i32* %skew, align 4
  %sub3567 = sub i32 %2222, %2223
  %2224 = load i8*, i8** %dest, align 8
  %2225 = load i32, i32* %i, align 4
  %idxprom3568 = zext i32 %2225 to i64
  %2226 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx3569 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %2226, i64 %idxprom3568
  %rva3570 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx3569, i32 0, i32 0
  %2227 = load i32, i32* %rva3570, align 4
  %2228 = load i32, i32* %i, align 4
  %add3571 = add i32 %2228, 1
  %idxprom3572 = zext i32 %add3571 to i64
  %2229 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx3573 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %2229, i64 %idxprom3572
  %rva3574 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx3573, i32 0, i32 0
  %2230 = load i32, i32* %rva3574, align 4
  %2231 = load i32, i32* %vep, align 4
  %2232 = load i32, i32* %skew, align 4
  %sub3575 = sub i32 %2231, %2232
  %call3576 = call i32 %2219(i8* %add.ptr3566, i32 %sub3567, i8* %2224, i32* %dsize, i32 %2227, i32 %2230, i32 %sub3575)
  %cmp3577 = icmp sge i32 %call3576, 0
  br i1 %cmp3577, label %if.then.3590, label %lor.lhs.false.3579

lor.lhs.false.3579:                               ; preds = %if.else.3564
  %2233 = load i32 (i8*, i32, i8*, i32*, i32, i32, i32)*, i32 (i8*, i32, i8*, i32*, i32, i32, i32)** %upxfn, align 8
  %2234 = load i8*, i8** %src, align 8
  %2235 = load i32, i32* %ssize, align 4
  %2236 = load i8*, i8** %dest, align 8
  %2237 = load i32, i32* %i, align 4
  %idxprom3580 = zext i32 %2237 to i64
  %2238 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx3581 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %2238, i64 %idxprom3580
  %rva3582 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx3581, i32 0, i32 0
  %2239 = load i32, i32* %rva3582, align 4
  %2240 = load i32, i32* %i, align 4
  %add3583 = add i32 %2240, 1
  %idxprom3584 = zext i32 %add3583 to i64
  %2241 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx3585 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %2241, i64 %idxprom3584
  %rva3586 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx3585, i32 0, i32 0
  %2242 = load i32, i32* %rva3586, align 4
  %2243 = load i32, i32* %vep, align 4
  %call3587 = call i32 %2233(i8* %2234, i32 %2235, i8* %2236, i32* %dsize, i32 %2239, i32 %2242, i32 %2243)
  %cmp3588 = icmp sge i32 %call3587, 0
  br i1 %cmp3588, label %if.then.3590, label %if.end.3591

if.then.3590:                                     ; preds = %lor.lhs.false.3579, %if.else.3564
  store i32 1, i32* %upx_success, align 4
  br label %if.end.3591

if.end.3591:                                      ; preds = %if.then.3590, %lor.lhs.false.3579
  br label %if.end.3592

if.end.3592:                                      ; preds = %if.end.3591, %if.end.3563
  %2244 = load i32, i32* %upx_success, align 4
  %tobool3593 = icmp ne i32 %2244, 0
  br i1 %tobool3593, label %if.then.3594, label %if.else.3595

if.then.3594:                                     ; preds = %if.end.3592
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.186, i32 0, i32 0))
  br label %if.end.3596

if.else.3595:                                     ; preds = %if.end.3592
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.187, i32 0, i32 0))
  br label %if.end.3596

if.end.3596:                                      ; preds = %if.else.3595, %if.then.3594
  br label %if.end.3597

if.end.3597:                                      ; preds = %if.end.3596, %if.end.3528
  %2245 = load i32, i32* %upx_success, align 4
  %tobool3598 = icmp ne i32 %2245, 0
  br i1 %tobool3598, label %if.end.3630, label %land.lhs.true.3599

land.lhs.true.3599:                               ; preds = %if.end.3597
  %2246 = load i32 (i8*, i32, i8*, i32*, i32, i32, i32)*, i32 (i8*, i32, i8*, i32*, i32, i32, i32)** %upxfn, align 8
  %cmp3600 = icmp ne i32 (i8*, i32, i8*, i32*, i32, i32, i32)* %2246, @upx_inflate2b
  br i1 %cmp3600, label %if.then.3602, label %if.end.3630

if.then.3602:                                     ; preds = %land.lhs.true.3599
  %2247 = load i8*, i8** %src, align 8
  %2248 = load i32, i32* %ssize, align 4
  %2249 = load i8*, i8** %dest, align 8
  %2250 = load i32, i32* %i, align 4
  %idxprom3603 = zext i32 %2250 to i64
  %2251 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx3604 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %2251, i64 %idxprom3603
  %rva3605 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx3604, i32 0, i32 0
  %2252 = load i32, i32* %rva3605, align 4
  %2253 = load i32, i32* %i, align 4
  %add3606 = add i32 %2253, 1
  %idxprom3607 = zext i32 %add3606 to i64
  %2254 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx3608 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %2254, i64 %idxprom3607
  %rva3609 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx3608, i32 0, i32 0
  %2255 = load i32, i32* %rva3609, align 4
  %2256 = load i32, i32* %vep, align 4
  %call3610 = call i32 @upx_inflate2b(i8* %2247, i32 %2248, i8* %2249, i32* %dsize, i32 %2252, i32 %2255, i32 %2256)
  %cmp3611 = icmp eq i32 %call3610, -1
  br i1 %cmp3611, label %land.lhs.true.3613, label %if.else.3628

land.lhs.true.3613:                               ; preds = %if.then.3602
  %2257 = load i8*, i8** %src, align 8
  %add.ptr3614 = getelementptr inbounds i8, i8* %2257, i64 21
  %2258 = load i32, i32* %ssize, align 4
  %sub3615 = sub i32 %2258, 21
  %2259 = load i8*, i8** %dest, align 8
  %2260 = load i32, i32* %i, align 4
  %idxprom3616 = zext i32 %2260 to i64
  %2261 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx3617 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %2261, i64 %idxprom3616
  %rva3618 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx3617, i32 0, i32 0
  %2262 = load i32, i32* %rva3618, align 4
  %2263 = load i32, i32* %i, align 4
  %add3619 = add i32 %2263, 1
  %idxprom3620 = zext i32 %add3619 to i64
  %2264 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx3621 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %2264, i64 %idxprom3620
  %rva3622 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx3621, i32 0, i32 0
  %2265 = load i32, i32* %rva3622, align 4
  %2266 = load i32, i32* %vep, align 4
  %sub3623 = sub i32 %2266, 21
  %call3624 = call i32 @upx_inflate2b(i8* %add.ptr3614, i32 %sub3615, i8* %2259, i32* %dsize, i32 %2262, i32 %2265, i32 %sub3623)
  %cmp3625 = icmp eq i32 %call3624, -1
  br i1 %cmp3625, label %if.then.3627, label %if.else.3628

if.then.3627:                                     ; preds = %land.lhs.true.3613
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.188, i32 0, i32 0))
  br label %if.end.3629

if.else.3628:                                     ; preds = %land.lhs.true.3613, %if.then.3602
  store i32 1, i32* %upx_success, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.189, i32 0, i32 0))
  br label %if.end.3629

if.end.3629:                                      ; preds = %if.else.3628, %if.then.3627
  br label %if.end.3630

if.end.3630:                                      ; preds = %if.end.3629, %land.lhs.true.3599, %if.end.3597
  %2267 = load i32, i32* %upx_success, align 4
  %tobool3631 = icmp ne i32 %2267, 0
  br i1 %tobool3631, label %if.end.3663, label %land.lhs.true.3632

land.lhs.true.3632:                               ; preds = %if.end.3630
  %2268 = load i32 (i8*, i32, i8*, i32*, i32, i32, i32)*, i32 (i8*, i32, i8*, i32*, i32, i32, i32)** %upxfn, align 8
  %cmp3633 = icmp ne i32 (i8*, i32, i8*, i32*, i32, i32, i32)* %2268, @upx_inflate2d
  br i1 %cmp3633, label %if.then.3635, label %if.end.3663

if.then.3635:                                     ; preds = %land.lhs.true.3632
  %2269 = load i8*, i8** %src, align 8
  %2270 = load i32, i32* %ssize, align 4
  %2271 = load i8*, i8** %dest, align 8
  %2272 = load i32, i32* %i, align 4
  %idxprom3636 = zext i32 %2272 to i64
  %2273 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx3637 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %2273, i64 %idxprom3636
  %rva3638 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx3637, i32 0, i32 0
  %2274 = load i32, i32* %rva3638, align 4
  %2275 = load i32, i32* %i, align 4
  %add3639 = add i32 %2275, 1
  %idxprom3640 = zext i32 %add3639 to i64
  %2276 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx3641 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %2276, i64 %idxprom3640
  %rva3642 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx3641, i32 0, i32 0
  %2277 = load i32, i32* %rva3642, align 4
  %2278 = load i32, i32* %vep, align 4
  %call3643 = call i32 @upx_inflate2d(i8* %2269, i32 %2270, i8* %2271, i32* %dsize, i32 %2274, i32 %2277, i32 %2278)
  %cmp3644 = icmp eq i32 %call3643, -1
  br i1 %cmp3644, label %land.lhs.true.3646, label %if.else.3661

land.lhs.true.3646:                               ; preds = %if.then.3635
  %2279 = load i8*, i8** %src, align 8
  %add.ptr3647 = getelementptr inbounds i8, i8* %2279, i64 21
  %2280 = load i32, i32* %ssize, align 4
  %sub3648 = sub i32 %2280, 21
  %2281 = load i8*, i8** %dest, align 8
  %2282 = load i32, i32* %i, align 4
  %idxprom3649 = zext i32 %2282 to i64
  %2283 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx3650 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %2283, i64 %idxprom3649
  %rva3651 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx3650, i32 0, i32 0
  %2284 = load i32, i32* %rva3651, align 4
  %2285 = load i32, i32* %i, align 4
  %add3652 = add i32 %2285, 1
  %idxprom3653 = zext i32 %add3652 to i64
  %2286 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx3654 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %2286, i64 %idxprom3653
  %rva3655 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx3654, i32 0, i32 0
  %2287 = load i32, i32* %rva3655, align 4
  %2288 = load i32, i32* %vep, align 4
  %sub3656 = sub i32 %2288, 21
  %call3657 = call i32 @upx_inflate2d(i8* %add.ptr3647, i32 %sub3648, i8* %2281, i32* %dsize, i32 %2284, i32 %2287, i32 %sub3656)
  %cmp3658 = icmp eq i32 %call3657, -1
  br i1 %cmp3658, label %if.then.3660, label %if.else.3661

if.then.3660:                                     ; preds = %land.lhs.true.3646
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.190, i32 0, i32 0))
  br label %if.end.3662

if.else.3661:                                     ; preds = %land.lhs.true.3646, %if.then.3635
  store i32 1, i32* %upx_success, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.191, i32 0, i32 0))
  br label %if.end.3662

if.end.3662:                                      ; preds = %if.else.3661, %if.then.3660
  br label %if.end.3663

if.end.3663:                                      ; preds = %if.end.3662, %land.lhs.true.3632, %if.end.3630
  %2289 = load i32, i32* %upx_success, align 4
  %tobool3664 = icmp ne i32 %2289, 0
  br i1 %tobool3664, label %if.end.3696, label %land.lhs.true.3665

land.lhs.true.3665:                               ; preds = %if.end.3663
  %2290 = load i32 (i8*, i32, i8*, i32*, i32, i32, i32)*, i32 (i8*, i32, i8*, i32*, i32, i32, i32)** %upxfn, align 8
  %cmp3666 = icmp ne i32 (i8*, i32, i8*, i32*, i32, i32, i32)* %2290, @upx_inflate2e
  br i1 %cmp3666, label %if.then.3668, label %if.end.3696

if.then.3668:                                     ; preds = %land.lhs.true.3665
  %2291 = load i8*, i8** %src, align 8
  %2292 = load i32, i32* %ssize, align 4
  %2293 = load i8*, i8** %dest, align 8
  %2294 = load i32, i32* %i, align 4
  %idxprom3669 = zext i32 %2294 to i64
  %2295 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx3670 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %2295, i64 %idxprom3669
  %rva3671 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx3670, i32 0, i32 0
  %2296 = load i32, i32* %rva3671, align 4
  %2297 = load i32, i32* %i, align 4
  %add3672 = add i32 %2297, 1
  %idxprom3673 = zext i32 %add3672 to i64
  %2298 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx3674 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %2298, i64 %idxprom3673
  %rva3675 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx3674, i32 0, i32 0
  %2299 = load i32, i32* %rva3675, align 4
  %2300 = load i32, i32* %vep, align 4
  %call3676 = call i32 @upx_inflate2e(i8* %2291, i32 %2292, i8* %2293, i32* %dsize, i32 %2296, i32 %2299, i32 %2300)
  %cmp3677 = icmp eq i32 %call3676, -1
  br i1 %cmp3677, label %land.lhs.true.3679, label %if.else.3694

land.lhs.true.3679:                               ; preds = %if.then.3668
  %2301 = load i8*, i8** %src, align 8
  %add.ptr3680 = getelementptr inbounds i8, i8* %2301, i64 21
  %2302 = load i32, i32* %ssize, align 4
  %sub3681 = sub i32 %2302, 21
  %2303 = load i8*, i8** %dest, align 8
  %2304 = load i32, i32* %i, align 4
  %idxprom3682 = zext i32 %2304 to i64
  %2305 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx3683 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %2305, i64 %idxprom3682
  %rva3684 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx3683, i32 0, i32 0
  %2306 = load i32, i32* %rva3684, align 4
  %2307 = load i32, i32* %i, align 4
  %add3685 = add i32 %2307, 1
  %idxprom3686 = zext i32 %add3685 to i64
  %2308 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx3687 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %2308, i64 %idxprom3686
  %rva3688 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx3687, i32 0, i32 0
  %2309 = load i32, i32* %rva3688, align 4
  %2310 = load i32, i32* %vep, align 4
  %sub3689 = sub i32 %2310, 21
  %call3690 = call i32 @upx_inflate2e(i8* %add.ptr3680, i32 %sub3681, i8* %2303, i32* %dsize, i32 %2306, i32 %2309, i32 %sub3689)
  %cmp3691 = icmp eq i32 %call3690, -1
  br i1 %cmp3691, label %if.then.3693, label %if.else.3694

if.then.3693:                                     ; preds = %land.lhs.true.3679
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.192, i32 0, i32 0))
  br label %if.end.3695

if.else.3694:                                     ; preds = %land.lhs.true.3679, %if.then.3668
  store i32 1, i32* %upx_success, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.193, i32 0, i32 0))
  br label %if.end.3695

if.end.3695:                                      ; preds = %if.else.3694, %if.then.3693
  br label %if.end.3696

if.end.3696:                                      ; preds = %if.end.3695, %land.lhs.true.3665, %if.end.3663
  %2311 = load i32, i32* %upx_success, align 4
  %tobool3697 = icmp ne i32 %2311, 0
  br i1 %tobool3697, label %if.end.3699, label %if.then.3698

if.then.3698:                                     ; preds = %if.end.3696
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.194, i32 0, i32 0))
  %2312 = load i8*, i8** %src, align 8
  call void @free(i8* %2312) #3
  %2313 = load i8*, i8** %dest, align 8
  call void @free(i8* %2313) #3
  br label %if.end.3699

if.end.3699:                                      ; preds = %if.then.3698, %if.end.3696
  br label %if.end.3700

if.end.3700:                                      ; preds = %if.end.3699, %land.lhs.true.3404, %while.end.3402
  %2314 = load i32, i32* %upx_success, align 4
  %tobool3701 = icmp ne i32 %2314, 0
  br i1 %tobool3701, label %if.then.3702, label %if.end.3740

if.then.3702:                                     ; preds = %if.end.3700
  %2315 = load i8*, i8** %src, align 8
  call void @free(i8* %2315) #3
  %2316 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %2317 = bitcast %struct.cli_exe_section* %2316 to i8*
  call void @free(i8* %2317) #3
  %call3703 = call i8* @cli_gentemp(i8* null)
  store i8* %call3703, i8** %tempfile, align 8
  %tobool3704 = icmp ne i8* %call3703, null
  br i1 %tobool3704, label %if.end.3706, label %if.then.3705

if.then.3705:                                     ; preds = %if.then.3702
  %2318 = load i8*, i8** %dest, align 8
  call void (i8*, ...) @cli_multifree(i8* %2318, i32 0)
  store i32 -114, i32* %retval
  br label %return

if.end.3706:                                      ; preds = %if.then.3702
  %2319 = load i8*, i8** %tempfile, align 8
  %call3707 = call i32 (i8*, i32, ...) @open(i8* %2319, i32 578, i32 448)
  store i32 %call3707, i32* %ndesc, align 4
  %cmp3708 = icmp slt i32 %call3707, 0
  br i1 %cmp3708, label %if.then.3710, label %if.end.3711

if.then.3710:                                     ; preds = %if.end.3706
  %2320 = load i8*, i8** %tempfile, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.195, i32 0, i32 0), i8* %2320)
  %2321 = load i8*, i8** %tempfile, align 8
  call void @free(i8* %2321) #3
  %2322 = load i8*, i8** %dest, align 8
  call void (i8*, ...) @cli_multifree(i8* %2322, i32 0)
  store i32 -123, i32* %retval
  br label %return

if.end.3711:                                      ; preds = %if.end.3706
  %2323 = load i32, i32* %ndesc, align 4
  %2324 = load i8*, i8** %dest, align 8
  %2325 = load i32, i32* %dsize, align 4
  %conv3712 = zext i32 %2325 to i64
  %call3713 = call i64 @write(i32 %2323, i8* %2324, i64 %conv3712)
  %conv3714 = trunc i64 %call3713 to i32
  %2326 = load i32, i32* %dsize, align 4
  %cmp3715 = icmp ne i32 %conv3714, %2326
  br i1 %cmp3715, label %if.then.3717, label %if.end.3719

if.then.3717:                                     ; preds = %if.end.3711
  %2327 = load i32, i32* %dsize, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.196, i32 0, i32 0), i32 %2327)
  %2328 = load i8*, i8** %tempfile, align 8
  call void @free(i8* %2328) #3
  %2329 = load i8*, i8** %dest, align 8
  call void @free(i8* %2329) #3
  %2330 = load i32, i32* %ndesc, align 4
  %call3718 = call i32 @close(i32 %2330)
  store i32 -123, i32* %retval
  br label %return

if.end.3719:                                      ; preds = %if.end.3711
  %2331 = load i8*, i8** %dest, align 8
  call void @free(i8* %2331) #3
  %2332 = load i32, i32* %ndesc, align 4
  %call3720 = call i32 @fsync(i32 %2332)
  %2333 = load i32, i32* %ndesc, align 4
  %call3721 = call i64 @lseek(i32 %2333, i64 0, i32 0) #3
  %2334 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool3722 = icmp ne i8 %2334, 0
  br i1 %tobool3722, label %if.then.3723, label %if.end.3724

if.then.3723:                                     ; preds = %if.end.3719
  %2335 = load i8*, i8** %tempfile, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.197, i32 0, i32 0), i8* %2335)
  br label %if.end.3724

if.end.3724:                                      ; preds = %if.then.3723, %if.end.3719
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.198, i32 0, i32 0))
  %2336 = load i32, i32* %ndesc, align 4
  %2337 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call3725 = call i32 @cli_magic_scandesc(i32 %2336, %struct.cli_ctx* %2337)
  store i32 %call3725, i32* %ret, align 4
  %cmp3726 = icmp eq i32 %call3725, 1
  br i1 %cmp3726, label %if.then.3728, label %if.end.3734

if.then.3728:                                     ; preds = %if.end.3724
  %2338 = load i32, i32* %ndesc, align 4
  %call3729 = call i32 @close(i32 %2338)
  %2339 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool3730 = icmp ne i8 %2339, 0
  br i1 %tobool3730, label %if.end.3733, label %if.then.3731

if.then.3731:                                     ; preds = %if.then.3728
  %2340 = load i8*, i8** %tempfile, align 8
  %call3732 = call i32 @unlink(i8* %2340) #3
  br label %if.end.3733

if.end.3733:                                      ; preds = %if.then.3731, %if.then.3728
  %2341 = load i8*, i8** %tempfile, align 8
  call void @free(i8* %2341) #3
  store i32 1, i32* %retval
  br label %return

if.end.3734:                                      ; preds = %if.end.3724
  %2342 = load i32, i32* %ndesc, align 4
  %call3735 = call i32 @close(i32 %2342)
  %2343 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool3736 = icmp ne i8 %2343, 0
  br i1 %tobool3736, label %if.end.3739, label %if.then.3737

if.then.3737:                                     ; preds = %if.end.3734
  %2344 = load i8*, i8** %tempfile, align 8
  %call3738 = call i32 @unlink(i8* %2344) #3
  br label %if.end.3739

if.end.3739:                                      ; preds = %if.then.3737, %if.end.3734
  %2345 = load i8*, i8** %tempfile, align 8
  call void @free(i8* %2345) #3
  %2346 = load i32, i32* %ret, align 4
  store i32 %2346, i32* %retval
  br label %return

if.end.3740:                                      ; preds = %if.end.3700
  %2347 = load i32, i32* %epsize, align 4
  %cmp3741 = icmp ult i32 %2347, 200
  br i1 %cmp3741, label %if.then.3743, label %if.end.3744

if.then.3743:                                     ; preds = %if.end.3740
  %2348 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %2349 = bitcast %struct.cli_exe_section* %2348 to i8*
  call void @free(i8* %2349) #3
  store i32 0, i32* %retval
  br label %return

if.end.3744:                                      ; preds = %if.end.3740
  store i32 2, i32* %found, align 4
  %arrayidx3745 = getelementptr inbounds [4096 x i8], [4096 x i8]* %epbuff, i32 0, i64 0
  %2350 = load i8, i8* %arrayidx3745, align 1
  %conv3746 = sext i8 %2350 to i32
  %cmp3747 = icmp ne i32 %conv3746, -72
  br i1 %cmp3747, label %if.then.3762, label %lor.lhs.false.3749

lor.lhs.false.3749:                               ; preds = %if.end.3744
  %arraydecay3750 = getelementptr inbounds [4096 x i8], [4096 x i8]* %epbuff, i32 0, i32 0
  %add.ptr3751 = getelementptr inbounds i8, i8* %arraydecay3750, i64 1
  %2351 = bitcast i8* %add.ptr3751 to i32*
  %2352 = load i32, i32* %2351, align 4
  %2353 = load i16, i16* %nsections, align 2
  %conv3752 = zext i16 %2353 to i32
  %sub3753 = sub nsw i32 %conv3752, 1
  %idxprom3754 = sext i32 %sub3753 to i64
  %2354 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx3755 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %2354, i64 %idxprom3754
  %rva3756 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx3755, i32 0, i32 0
  %2355 = load i32, i32* %rva3756, align 4
  %opt323757 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr32*
  %ImageBase3758 = getelementptr inbounds %struct.pe_image_optional_hdr32, %struct.pe_image_optional_hdr32* %opt323757, i32 0, i32 9
  %2356 = load i32, i32* %ImageBase3758, align 4
  %add3759 = add i32 %2355, %2356
  %cmp3760 = icmp ne i32 %2352, %add3759
  br i1 %cmp3760, label %if.then.3762, label %if.end.3787

if.then.3762:                                     ; preds = %lor.lhs.false.3749, %if.end.3744
  %2357 = load i16, i16* %nsections, align 2
  %conv3763 = zext i16 %2357 to i32
  %cmp3764 = icmp slt i32 %conv3763, 2
  br i1 %cmp3764, label %if.then.3784, label %lor.lhs.false.3766

lor.lhs.false.3766:                               ; preds = %if.then.3762
  %arrayidx3767 = getelementptr inbounds [4096 x i8], [4096 x i8]* %epbuff, i32 0, i64 0
  %2358 = load i8, i8* %arrayidx3767, align 1
  %conv3768 = sext i8 %2358 to i32
  %cmp3769 = icmp ne i32 %conv3768, -72
  br i1 %cmp3769, label %if.then.3784, label %lor.lhs.false.3771

lor.lhs.false.3771:                               ; preds = %lor.lhs.false.3766
  %arraydecay3772 = getelementptr inbounds [4096 x i8], [4096 x i8]* %epbuff, i32 0, i32 0
  %add.ptr3773 = getelementptr inbounds i8, i8* %arraydecay3772, i64 1
  %2359 = bitcast i8* %add.ptr3773 to i32*
  %2360 = load i32, i32* %2359, align 4
  %2361 = load i16, i16* %nsections, align 2
  %conv3774 = zext i16 %2361 to i32
  %sub3775 = sub nsw i32 %conv3774, 2
  %idxprom3776 = sext i32 %sub3775 to i64
  %2362 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx3777 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %2362, i64 %idxprom3776
  %rva3778 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx3777, i32 0, i32 0
  %2363 = load i32, i32* %rva3778, align 4
  %opt323779 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr32*
  %ImageBase3780 = getelementptr inbounds %struct.pe_image_optional_hdr32, %struct.pe_image_optional_hdr32* %opt323779, i32 0, i32 9
  %2364 = load i32, i32* %ImageBase3780, align 4
  %add3781 = add i32 %2363, %2364
  %cmp3782 = icmp ne i32 %2360, %add3781
  br i1 %cmp3782, label %if.then.3784, label %if.else.3785

if.then.3784:                                     ; preds = %lor.lhs.false.3771, %lor.lhs.false.3766, %if.then.3762
  store i32 0, i32* %found, align 4
  br label %if.end.3786

if.else.3785:                                     ; preds = %lor.lhs.false.3771
  store i32 1, i32* %found, align 4
  br label %if.end.3786

if.end.3786:                                      ; preds = %if.else.3785, %if.then.3784
  br label %if.end.3787

if.end.3787:                                      ; preds = %if.end.3786, %lor.lhs.false.3749
  %2365 = load i32, i32* %found, align 4
  %tobool3788 = icmp ne i32 %2365, 0
  br i1 %tobool3788, label %land.lhs.true.3789, label %if.end.3919

land.lhs.true.3789:                               ; preds = %if.end.3787
  %2366 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %dconf3790 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %2366, i32 0, i32 9
  %2367 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf3790, align 8
  %pe3791 = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %2367, i32 0, i32 0
  %2368 = load i32, i32* %pe3791, align 4
  %and3792 = and i32 %2368, 256
  %tobool3793 = icmp ne i32 %and3792, 0
  br i1 %tobool3793, label %if.then.3794, label %if.end.3919

if.then.3794:                                     ; preds = %land.lhs.true.3789
  %2369 = load i32, i32* %found, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.199, i32 0, i32 0), i32 %2369)
  %arraydecay3795 = getelementptr inbounds [4096 x i8], [4096 x i8]* %epbuff, i32 0, i32 0
  %add.ptr3796 = getelementptr inbounds i8, i8* %arraydecay3795, i64 128
  %2370 = bitcast i8* %add.ptr3796 to i32*
  %2371 = load i32, i32* %2370, align 4
  %cmp3797 = icmp eq i32 %2371, 373069965
  br i1 %cmp3797, label %if.then.3799, label %if.else.3800

if.then.3799:                                     ; preds = %if.then.3794
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.200, i32 0, i32 0))
  br label %if.end.3918

if.else.3800:                                     ; preds = %if.then.3794
  %2372 = load i32, i32* %max, align 4
  %2373 = load i32, i32* %min, align 4
  %sub3801 = sub i32 %2372, %2373
  store i32 %sub3801, i32* %dsize, align 4
  %2374 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits3802 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %2374, i32 0, i32 4
  %2375 = load %struct.cl_limits*, %struct.cl_limits** %limits3802, align 8
  %tobool3803 = icmp ne %struct.cl_limits* %2375, null
  br i1 %tobool3803, label %land.lhs.true.3804, label %if.end.3823

land.lhs.true.3804:                               ; preds = %if.else.3800
  %2376 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits3805 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %2376, i32 0, i32 4
  %2377 = load %struct.cl_limits*, %struct.cl_limits** %limits3805, align 8
  %maxfilesize3806 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %2377, i32 0, i32 5
  %2378 = load i64, i64* %maxfilesize3806, align 8
  %tobool3807 = icmp ne i64 %2378, 0
  br i1 %tobool3807, label %land.lhs.true.3808, label %if.end.3823

land.lhs.true.3808:                               ; preds = %land.lhs.true.3804
  %2379 = load i32, i32* %dsize, align 4
  %conv3809 = zext i32 %2379 to i64
  %2380 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits3810 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %2380, i32 0, i32 4
  %2381 = load %struct.cl_limits*, %struct.cl_limits** %limits3810, align 8
  %maxfilesize3811 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %2381, i32 0, i32 5
  %2382 = load i64, i64* %maxfilesize3811, align 8
  %cmp3812 = icmp ugt i64 %conv3809, %2382
  br i1 %cmp3812, label %if.then.3814, label %if.end.3823

if.then.3814:                                     ; preds = %land.lhs.true.3808
  %2383 = load i32, i32* %dsize, align 4
  %2384 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits3815 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %2384, i32 0, i32 4
  %2385 = load %struct.cl_limits*, %struct.cl_limits** %limits3815, align 8
  %maxfilesize3816 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %2385, i32 0, i32 5
  %2386 = load i64, i64* %maxfilesize3816, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.201, i32 0, i32 0), i32 %2383, i64 %2386)
  %2387 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %2388 = bitcast %struct.cli_exe_section* %2387 to i8*
  call void @free(i8* %2388) #3
  %2389 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options3817 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %2389, i32 0, i32 5
  %2390 = load i32, i32* %options3817, align 4
  %and3818 = and i32 %2390, 256
  %tobool3819 = icmp ne i32 %and3818, 0
  br i1 %tobool3819, label %if.then.3820, label %if.else.3822

if.then.3820:                                     ; preds = %if.then.3814
  %2391 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname3821 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %2391, i32 0, i32 0
  %2392 = load i8**, i8*** %virname3821, align 8
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.202, i32 0, i32 0), i8** %2392, align 8
  store i32 1, i32* %retval
  br label %return

if.else.3822:                                     ; preds = %if.then.3814
  store i32 0, i32* %retval
  br label %return

if.end.3823:                                      ; preds = %land.lhs.true.3808, %land.lhs.true.3804, %if.else.3800
  %2393 = load i32, i32* %dsize, align 4
  %conv3824 = zext i32 %2393 to i64
  %call3825 = call i8* @cli_calloc(i64 %conv3824, i64 1)
  store i8* %call3825, i8** %dest, align 8
  %cmp3826 = icmp eq i8* %call3825, null
  br i1 %cmp3826, label %if.then.3828, label %if.end.3829

if.then.3828:                                     ; preds = %if.end.3823
  %2394 = load i32, i32* %dsize, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.203, i32 0, i32 0), i32 %2394)
  %2395 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %2396 = bitcast %struct.cli_exe_section* %2395 to i8*
  call void @free(i8* %2396) #3
  store i32 -114, i32* %retval
  br label %return

if.end.3829:                                      ; preds = %if.end.3823
  store i32 0, i32* %i, align 4
  br label %for.cond.3830

for.cond.3830:                                    ; preds = %for.inc.3865, %if.end.3829
  %2397 = load i32, i32* %i, align 4
  %2398 = load i16, i16* %nsections, align 2
  %conv3831 = zext i16 %2398 to i32
  %cmp3832 = icmp ult i32 %2397, %conv3831
  br i1 %cmp3832, label %for.body.3834, label %for.end.3867

for.body.3834:                                    ; preds = %for.cond.3830
  %2399 = load i32, i32* %i, align 4
  %idxprom3835 = zext i32 %2399 to i64
  %2400 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx3836 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %2400, i64 %idxprom3835
  %raw3837 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx3836, i32 0, i32 2
  %2401 = load i32, i32* %raw3837, align 4
  %tobool3838 = icmp ne i32 %2401, 0
  br i1 %tobool3838, label %if.then.3839, label %if.end.3864

if.then.3839:                                     ; preds = %for.body.3834
  %2402 = load i32, i32* %desc.addr, align 4
  %2403 = load i32, i32* %i, align 4
  %idxprom3840 = zext i32 %2403 to i64
  %2404 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx3841 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %2404, i64 %idxprom3840
  %call3842 = call i64 @cli_seeksect(i32 %2402, %struct.cli_exe_section* %arrayidx3841)
  %tobool3843 = icmp ne i64 %call3842, 0
  br i1 %tobool3843, label %lor.lhs.false.3844, label %if.then.3862

lor.lhs.false.3844:                               ; preds = %if.then.3839
  %2405 = load i32, i32* %desc.addr, align 4
  %2406 = load i8*, i8** %dest, align 8
  %2407 = load i32, i32* %i, align 4
  %idxprom3845 = zext i32 %2407 to i64
  %2408 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx3846 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %2408, i64 %idxprom3845
  %rva3847 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx3846, i32 0, i32 0
  %2409 = load i32, i32* %rva3847, align 4
  %idx.ext3848 = zext i32 %2409 to i64
  %add.ptr3849 = getelementptr inbounds i8, i8* %2406, i64 %idx.ext3848
  %2410 = load i32, i32* %min, align 4
  %idx.ext3850 = zext i32 %2410 to i64
  %idx.neg3851 = sub i64 0, %idx.ext3850
  %add.ptr3852 = getelementptr inbounds i8, i8* %add.ptr3849, i64 %idx.neg3851
  %2411 = load i32, i32* %i, align 4
  %idxprom3853 = zext i32 %2411 to i64
  %2412 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx3854 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %2412, i64 %idxprom3853
  %ursz3855 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx3854, i32 0, i32 8
  %2413 = load i32, i32* %ursz3855, align 4
  %call3856 = call i32 @cli_readn(i32 %2405, i8* %add.ptr3852, i32 %2413)
  %2414 = load i32, i32* %i, align 4
  %idxprom3857 = zext i32 %2414 to i64
  %2415 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx3858 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %2415, i64 %idxprom3857
  %ursz3859 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx3858, i32 0, i32 8
  %2416 = load i32, i32* %ursz3859, align 4
  %cmp3860 = icmp ne i32 %call3856, %2416
  br i1 %cmp3860, label %if.then.3862, label %if.end.3863

if.then.3862:                                     ; preds = %lor.lhs.false.3844, %if.then.3839
  %2417 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %2418 = bitcast %struct.cli_exe_section* %2417 to i8*
  call void @free(i8* %2418) #3
  %2419 = load i8*, i8** %dest, align 8
  call void @free(i8* %2419) #3
  store i32 -123, i32* %retval
  br label %return

if.end.3863:                                      ; preds = %lor.lhs.false.3844
  br label %if.end.3864

if.end.3864:                                      ; preds = %if.end.3863, %for.body.3834
  br label %for.inc.3865

for.inc.3865:                                     ; preds = %if.end.3864
  %2420 = load i32, i32* %i, align 4
  %inc3866 = add i32 %2420, 1
  store i32 %inc3866, i32* %i, align 4
  br label %for.cond.3830

for.end.3867:                                     ; preds = %for.cond.3830
  %call3868 = call i8* @cli_gentemp(i8* null)
  store i8* %call3868, i8** %tempfile, align 8
  %tobool3869 = icmp ne i8* %call3868, null
  br i1 %tobool3869, label %if.end.3871, label %if.then.3870

if.then.3870:                                     ; preds = %for.end.3867
  %2421 = load i8*, i8** %dest, align 8
  %2422 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  call void (i8*, ...) @cli_multifree(i8* %2421, %struct.cli_exe_section* %2422, i32 0)
  store i32 -114, i32* %retval
  br label %return

if.end.3871:                                      ; preds = %for.end.3867
  %2423 = load i8*, i8** %tempfile, align 8
  %call3872 = call i32 (i8*, i32, ...) @open(i8* %2423, i32 578, i32 448)
  store i32 %call3872, i32* %ndesc, align 4
  %cmp3873 = icmp slt i32 %call3872, 0
  br i1 %cmp3873, label %if.then.3875, label %if.end.3876

if.then.3875:                                     ; preds = %if.end.3871
  %2424 = load i8*, i8** %tempfile, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.204, i32 0, i32 0), i8* %2424)
  %2425 = load i8*, i8** %tempfile, align 8
  call void @free(i8* %2425) #3
  %2426 = load i8*, i8** %dest, align 8
  %2427 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  call void (i8*, ...) @cli_multifree(i8* %2426, %struct.cli_exe_section* %2427, i32 0)
  store i32 -123, i32* %retval
  br label %return

if.end.3876:                                      ; preds = %if.end.3871
  %2428 = load i8*, i8** %dest, align 8
  %2429 = load i32, i32* %min, align 4
  %2430 = load i32, i32* %max, align 4
  %2431 = load i32, i32* %min, align 4
  %sub3877 = sub i32 %2430, %2431
  %2432 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %2433 = load i16, i16* %nsections, align 2
  %conv3878 = zext i16 %2433 to i32
  %2434 = load i32, i32* %found, align 4
  %cmp3879 = icmp eq i32 %2434, 1
  %cond3881 = select i1 %cmp3879, i32 1, i32 0
  %sub3882 = sub nsw i32 %conv3878, %cond3881
  %opt323883 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr32*
  %ImageBase3884 = getelementptr inbounds %struct.pe_image_optional_hdr32, %struct.pe_image_optional_hdr32* %opt323883, i32 0, i32 9
  %2435 = load i32, i32* %ImageBase3884, align 4
  %2436 = load i32, i32* %vep, align 4
  %2437 = load i32, i32* %ndesc, align 4
  %2438 = load i32, i32* %found, align 4
  %opt323885 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr32*
  %DataDirectory = getelementptr inbounds %struct.pe_image_optional_hdr32, %struct.pe_image_optional_hdr32* %opt323885, i32 0, i32 30
  %arrayidx3886 = getelementptr inbounds [16 x %struct.pe_image_data_dir], [16 x %struct.pe_image_data_dir]* %DataDirectory, i32 0, i64 2
  %VirtualAddress3887 = getelementptr inbounds %struct.pe_image_data_dir, %struct.pe_image_data_dir* %arrayidx3886, i32 0, i32 0
  %2439 = load i32, i32* %VirtualAddress3887, align 4
  %opt323888 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr32*
  %DataDirectory3889 = getelementptr inbounds %struct.pe_image_optional_hdr32, %struct.pe_image_optional_hdr32* %opt323888, i32 0, i32 30
  %arrayidx3890 = getelementptr inbounds [16 x %struct.pe_image_data_dir], [16 x %struct.pe_image_data_dir]* %DataDirectory3889, i32 0, i64 2
  %Size = getelementptr inbounds %struct.pe_image_data_dir, %struct.pe_image_data_dir* %arrayidx3890, i32 0, i32 1
  %2440 = load i32, i32* %Size, align 4
  %call3891 = call i32 @petite_inflate2x_1to9(i8* %2428, i32 %2429, i32 %sub3877, %struct.cli_exe_section* %2432, i32 %sub3882, i32 %2435, i32 %2436, i32 %2437, i32 %2438, i32 %2439, i32 %2440)
  switch i32 %call3891, label %sw.default.3914 [
    i32 0, label %sw.bb.3892
  ]

sw.bb.3892:                                       ; preds = %if.end.3876
  %2441 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool3893 = icmp ne i8 %2441, 0
  br i1 %tobool3893, label %if.then.3894, label %if.else.3895

if.then.3894:                                     ; preds = %sw.bb.3892
  %2442 = load i8*, i8** %tempfile, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.205, i32 0, i32 0), i8* %2442)
  br label %if.end.3896

if.else.3895:                                     ; preds = %sw.bb.3892
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.206, i32 0, i32 0))
  br label %if.end.3896

if.end.3896:                                      ; preds = %if.else.3895, %if.then.3894
  %2443 = load i8*, i8** %dest, align 8
  call void (i8*, ...) @cli_multifree(i8* %2443, i32 0)
  %2444 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %2445 = bitcast %struct.cli_exe_section* %2444 to i8*
  call void @free(i8* %2445) #3
  %2446 = load i32, i32* %ndesc, align 4
  %call3897 = call i32 @fsync(i32 %2446)
  %2447 = load i32, i32* %ndesc, align 4
  %call3898 = call i64 @lseek(i32 %2447, i64 0, i32 0) #3
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.138, i32 0, i32 0))
  %2448 = load i32, i32* %ndesc, align 4
  %2449 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call3899 = call i32 @cli_magic_scandesc(i32 %2448, %struct.cli_ctx* %2449)
  %cmp3900 = icmp eq i32 %call3899, 1
  br i1 %cmp3900, label %if.then.3902, label %if.end.3908

if.then.3902:                                     ; preds = %if.end.3896
  %2450 = load i32, i32* %ndesc, align 4
  %call3903 = call i32 @close(i32 %2450)
  %2451 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool3904 = icmp ne i8 %2451, 0
  br i1 %tobool3904, label %if.end.3907, label %if.then.3905

if.then.3905:                                     ; preds = %if.then.3902
  %2452 = load i8*, i8** %tempfile, align 8
  %call3906 = call i32 @unlink(i8* %2452) #3
  br label %if.end.3907

if.end.3907:                                      ; preds = %if.then.3905, %if.then.3902
  %2453 = load i8*, i8** %tempfile, align 8
  call void @free(i8* %2453) #3
  store i32 1, i32* %retval
  br label %return

if.end.3908:                                      ; preds = %if.end.3896
  %2454 = load i32, i32* %ndesc, align 4
  %call3909 = call i32 @close(i32 %2454)
  %2455 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool3910 = icmp ne i8 %2455, 0
  br i1 %tobool3910, label %if.end.3913, label %if.then.3911

if.then.3911:                                     ; preds = %if.end.3908
  %2456 = load i8*, i8** %tempfile, align 8
  %call3912 = call i32 @unlink(i8* %2456) #3
  br label %if.end.3913

if.end.3913:                                      ; preds = %if.then.3911, %if.end.3908
  %2457 = load i8*, i8** %tempfile, align 8
  call void @free(i8* %2457) #3
  store i32 0, i32* %retval
  br label %return

sw.default.3914:                                  ; preds = %if.end.3876
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.207, i32 0, i32 0))
  %2458 = load i32, i32* %ndesc, align 4
  %call3915 = call i32 @close(i32 %2458)
  %2459 = load i8*, i8** %tempfile, align 8
  %call3916 = call i32 @unlink(i8* %2459) #3
  %2460 = load i8*, i8** %dest, align 8
  call void (i8*, ...) @cli_multifree(i8* %2460, i32 0)
  %2461 = load i8*, i8** %tempfile, align 8
  call void @free(i8* %2461) #3
  br label %sw.epilog.3917

sw.epilog.3917:                                   ; preds = %sw.default.3914
  br label %if.end.3918

if.end.3918:                                      ; preds = %sw.epilog.3917, %if.then.3799
  br label %if.end.3919

if.end.3919:                                      ; preds = %if.end.3918, %land.lhs.true.3789, %if.end.3787
  %2462 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %dconf3920 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %2462, i32 0, i32 9
  %2463 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf3920, align 8
  %pe3921 = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %2463, i32 0, i32 0
  %2464 = load i32, i32* %pe3921, align 4
  %and3922 = and i32 %2464, 512
  %tobool3923 = icmp ne i32 %and3922, 0
  br i1 %tobool3923, label %land.lhs.true.3924, label %if.end.4041

land.lhs.true.3924:                               ; preds = %if.end.3919
  %2465 = load i16, i16* %nsections, align 2
  %conv3925 = zext i16 %2465 to i32
  %cmp3926 = icmp sgt i32 %conv3925, 1
  br i1 %cmp3926, label %land.lhs.true.3928, label %if.end.4041

land.lhs.true.3928:                               ; preds = %land.lhs.true.3924
  %2466 = load i32, i32* %vep, align 4
  %2467 = load i16, i16* %nsections, align 2
  %conv3929 = zext i16 %2467 to i32
  %sub3930 = sub nsw i32 %conv3929, 1
  %idxprom3931 = sext i32 %sub3930 to i64
  %2468 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx3932 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %2468, i64 %idxprom3931
  %rva3933 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx3932, i32 0, i32 0
  %2469 = load i32, i32* %rva3933, align 4
  %cmp3934 = icmp uge i32 %2466, %2469
  br i1 %cmp3934, label %land.lhs.true.3936, label %if.end.4041

land.lhs.true.3936:                               ; preds = %land.lhs.true.3928
  %2470 = load i32, i32* %vep, align 4
  %2471 = load i16, i16* %nsections, align 2
  %conv3937 = zext i16 %2471 to i32
  %sub3938 = sub nsw i32 %conv3937, 1
  %idxprom3939 = sext i32 %sub3938 to i64
  %2472 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx3940 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %2472, i64 %idxprom3939
  %rva3941 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx3940, i32 0, i32 0
  %2473 = load i32, i32* %rva3941, align 4
  %2474 = load i16, i16* %nsections, align 2
  %conv3942 = zext i16 %2474 to i32
  %sub3943 = sub nsw i32 %conv3942, 1
  %idxprom3944 = sext i32 %sub3943 to i64
  %2475 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx3945 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %2475, i64 %idxprom3944
  %rsz3946 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx3945, i32 0, i32 3
  %2476 = load i32, i32* %rsz3946, align 4
  %add3947 = add i32 %2473, %2476
  %sub3948 = sub i32 %add3947, 12823
  %sub3949 = sub i32 %sub3948, 4
  %cmp3950 = icmp ult i32 %2470, %sub3949
  br i1 %cmp3950, label %land.lhs.true.3952, label %if.end.4041

land.lhs.true.3952:                               ; preds = %land.lhs.true.3936
  %arraydecay3953 = getelementptr inbounds [4096 x i8], [4096 x i8]* %epbuff, i32 0, i32 0
  %add.ptr3954 = getelementptr inbounds i8, i8* %arraydecay3953, i64 4
  %call3955 = call i32 @memcmp(i8* %add.ptr3954, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.208, i32 0, i32 0), i64 10) #5
  %cmp3956 = icmp eq i32 %call3955, 0
  br i1 %cmp3956, label %if.then.3958, label %if.end.4041

if.then.3958:                                     ; preds = %land.lhs.true.3952
  %2477 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits3959 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %2477, i32 0, i32 4
  %2478 = load %struct.cl_limits*, %struct.cl_limits** %limits3959, align 8
  %tobool3960 = icmp ne %struct.cl_limits* %2478, null
  br i1 %tobool3960, label %land.lhs.true.3961, label %if.end.3979

land.lhs.true.3961:                               ; preds = %if.then.3958
  %2479 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits3962 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %2479, i32 0, i32 4
  %2480 = load %struct.cl_limits*, %struct.cl_limits** %limits3962, align 8
  %maxfilesize3963 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %2480, i32 0, i32 5
  %2481 = load i64, i64* %maxfilesize3963, align 8
  %tobool3964 = icmp ne i64 %2481, 0
  br i1 %tobool3964, label %land.lhs.true.3965, label %if.end.3979

land.lhs.true.3965:                               ; preds = %land.lhs.true.3961
  %2482 = load i64, i64* %fsize, align 8
  %2483 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits3966 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %2483, i32 0, i32 4
  %2484 = load %struct.cl_limits*, %struct.cl_limits** %limits3966, align 8
  %maxfilesize3967 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %2484, i32 0, i32 5
  %2485 = load i64, i64* %maxfilesize3967, align 8
  %cmp3968 = icmp ugt i64 %2482, %2485
  br i1 %cmp3968, label %if.then.3970, label %if.end.3979

if.then.3970:                                     ; preds = %land.lhs.true.3965
  %2486 = load i64, i64* %fsize, align 8
  %2487 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits3971 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %2487, i32 0, i32 4
  %2488 = load %struct.cl_limits*, %struct.cl_limits** %limits3971, align 8
  %maxfilesize3972 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %2488, i32 0, i32 5
  %2489 = load i64, i64* %maxfilesize3972, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.209, i32 0, i32 0), i64 %2486, i64 %2489)
  %2490 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %2491 = bitcast %struct.cli_exe_section* %2490 to i8*
  call void @free(i8* %2491) #3
  %2492 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options3973 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %2492, i32 0, i32 5
  %2493 = load i32, i32* %options3973, align 4
  %and3974 = and i32 %2493, 256
  %tobool3975 = icmp ne i32 %and3974, 0
  br i1 %tobool3975, label %if.then.3976, label %if.else.3978

if.then.3976:                                     ; preds = %if.then.3970
  %2494 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname3977 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %2494, i32 0, i32 0
  %2495 = load i8**, i8*** %virname3977, align 8
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.210, i32 0, i32 0), i8** %2495, align 8
  store i32 1, i32* %retval
  br label %return

if.else.3978:                                     ; preds = %if.then.3970
  store i32 0, i32* %retval
  br label %return

if.end.3979:                                      ; preds = %land.lhs.true.3965, %land.lhs.true.3961, %if.then.3958
  %2496 = load i64, i64* %fsize, align 8
  %call3980 = call i8* @cli_malloc(i64 %2496)
  store i8* %call3980, i8** %spinned, align 8
  %cmp3981 = icmp eq i8* %call3980, null
  br i1 %cmp3981, label %if.then.3983, label %if.end.3984

if.then.3983:                                     ; preds = %if.end.3979
  %2497 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %2498 = bitcast %struct.cli_exe_section* %2497 to i8*
  call void @free(i8* %2498) #3
  store i32 -114, i32* %retval
  br label %return

if.end.3984:                                      ; preds = %if.end.3979
  %2499 = load i32, i32* %desc.addr, align 4
  %call3985 = call i64 @lseek(i32 %2499, i64 0, i32 0) #3
  %2500 = load i32, i32* %desc.addr, align 4
  %2501 = load i8*, i8** %spinned, align 8
  %2502 = load i64, i64* %fsize, align 8
  %conv3986 = trunc i64 %2502 to i32
  %call3987 = call i32 @cli_readn(i32 %2500, i8* %2501, i32 %conv3986)
  %conv3988 = sext i32 %call3987 to i64
  %2503 = load i64, i64* %fsize, align 8
  %cmp3989 = icmp ne i64 %conv3988, %2503
  br i1 %cmp3989, label %if.then.3991, label %if.end.3992

if.then.3991:                                     ; preds = %if.end.3984
  %2504 = load i64, i64* %fsize, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.211, i32 0, i32 0), i64 %2504)
  %2505 = load i8*, i8** %spinned, align 8
  call void @free(i8* %2505) #3
  %2506 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %2507 = bitcast %struct.cli_exe_section* %2506 to i8*
  call void @free(i8* %2507) #3
  store i32 -123, i32* %retval
  br label %return

if.end.3992:                                      ; preds = %if.end.3984
  %call3993 = call i8* @cli_gentemp(i8* null)
  store i8* %call3993, i8** %tempfile, align 8
  %tobool3994 = icmp ne i8* %call3993, null
  br i1 %tobool3994, label %if.end.3996, label %if.then.3995

if.then.3995:                                     ; preds = %if.end.3992
  %2508 = load i8*, i8** %spinned, align 8
  %2509 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  call void (i8*, ...) @cli_multifree(i8* %2508, %struct.cli_exe_section* %2509, i32 0)
  store i32 -114, i32* %retval
  br label %return

if.end.3996:                                      ; preds = %if.end.3992
  %2510 = load i8*, i8** %tempfile, align 8
  %call3997 = call i32 (i8*, i32, ...) @open(i8* %2510, i32 578, i32 448)
  store i32 %call3997, i32* %ndesc, align 4
  %cmp3998 = icmp slt i32 %call3997, 0
  br i1 %cmp3998, label %if.then.4000, label %if.end.4001

if.then.4000:                                     ; preds = %if.end.3996
  %2511 = load i8*, i8** %tempfile, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.212, i32 0, i32 0), i8* %2511)
  %2512 = load i8*, i8** %tempfile, align 8
  call void @free(i8* %2512) #3
  %2513 = load i8*, i8** %spinned, align 8
  %2514 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  call void (i8*, ...) @cli_multifree(i8* %2513, %struct.cli_exe_section* %2514, i32 0)
  store i32 -123, i32* %retval
  br label %return

if.end.4001:                                      ; preds = %if.end.3996
  %2515 = load i8*, i8** %spinned, align 8
  %2516 = load i64, i64* %fsize, align 8
  %conv4002 = trunc i64 %2516 to i32
  %2517 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %2518 = load i16, i16* %nsections, align 2
  %conv4003 = zext i16 %2518 to i32
  %sub4004 = sub nsw i32 %conv4003, 1
  %2519 = load i32, i32* %vep, align 4
  %2520 = load i32, i32* %ndesc, align 4
  %2521 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call4005 = call i32 @unspin(i8* %2515, i32 %conv4002, %struct.cli_exe_section* %2517, i32 %sub4004, i32 %2519, i32 %2520, %struct.cli_ctx* %2521)
  switch i32 %call4005, label %sw.default.4037 [
    i32 0, label %sw.bb.4006
    i32 2, label %sw.bb.4028
  ]

sw.bb.4006:                                       ; preds = %if.end.4001
  %2522 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool4007 = icmp ne i8 %2522, 0
  br i1 %tobool4007, label %if.then.4008, label %if.else.4009

if.then.4008:                                     ; preds = %sw.bb.4006
  %2523 = load i8*, i8** %tempfile, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.213, i32 0, i32 0), i8* %2523)
  br label %if.end.4010

if.else.4009:                                     ; preds = %sw.bb.4006
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.214, i32 0, i32 0))
  br label %if.end.4010

if.end.4010:                                      ; preds = %if.else.4009, %if.then.4008
  %2524 = load i8*, i8** %spinned, align 8
  call void (i8*, ...) @cli_multifree(i8* %2524, i32 0)
  %2525 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %2526 = bitcast %struct.cli_exe_section* %2525 to i8*
  call void @free(i8* %2526) #3
  %2527 = load i32, i32* %ndesc, align 4
  %call4011 = call i32 @fsync(i32 %2527)
  %2528 = load i32, i32* %ndesc, align 4
  %call4012 = call i64 @lseek(i32 %2528, i64 0, i32 0) #3
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.138, i32 0, i32 0))
  %2529 = load i32, i32* %ndesc, align 4
  %2530 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call4013 = call i32 @cli_magic_scandesc(i32 %2529, %struct.cli_ctx* %2530)
  %cmp4014 = icmp eq i32 %call4013, 1
  br i1 %cmp4014, label %if.then.4016, label %if.end.4022

if.then.4016:                                     ; preds = %if.end.4010
  %2531 = load i32, i32* %ndesc, align 4
  %call4017 = call i32 @close(i32 %2531)
  %2532 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool4018 = icmp ne i8 %2532, 0
  br i1 %tobool4018, label %if.end.4021, label %if.then.4019

if.then.4019:                                     ; preds = %if.then.4016
  %2533 = load i8*, i8** %tempfile, align 8
  %call4020 = call i32 @unlink(i8* %2533) #3
  br label %if.end.4021

if.end.4021:                                      ; preds = %if.then.4019, %if.then.4016
  %2534 = load i8*, i8** %tempfile, align 8
  call void @free(i8* %2534) #3
  store i32 1, i32* %retval
  br label %return

if.end.4022:                                      ; preds = %if.end.4010
  %2535 = load i32, i32* %ndesc, align 4
  %call4023 = call i32 @close(i32 %2535)
  %2536 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool4024 = icmp ne i8 %2536, 0
  br i1 %tobool4024, label %if.end.4027, label %if.then.4025

if.then.4025:                                     ; preds = %if.end.4022
  %2537 = load i8*, i8** %tempfile, align 8
  %call4026 = call i32 @unlink(i8* %2537) #3
  br label %if.end.4027

if.end.4027:                                      ; preds = %if.then.4025, %if.end.4022
  %2538 = load i8*, i8** %tempfile, align 8
  call void @free(i8* %2538) #3
  store i32 0, i32* %retval
  br label %return

sw.bb.4028:                                       ; preds = %if.end.4001
  %2539 = load i8*, i8** %spinned, align 8
  call void @free(i8* %2539) #3
  %2540 = load i32, i32* %ndesc, align 4
  %call4029 = call i32 @close(i32 %2540)
  %2541 = load i8*, i8** %tempfile, align 8
  %call4030 = call i32 @unlink(i8* %2541) #3
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.215, i32 0, i32 0))
  %2542 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options4031 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %2542, i32 0, i32 5
  %2543 = load i32, i32* %options4031, align 4
  %and4032 = and i32 %2543, 256
  %tobool4033 = icmp ne i32 %and4032, 0
  br i1 %tobool4033, label %if.then.4034, label %if.end.4036

if.then.4034:                                     ; preds = %sw.bb.4028
  %2544 = load i8*, i8** %tempfile, align 8
  call void @free(i8* %2544) #3
  %2545 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %2546 = bitcast %struct.cli_exe_section* %2545 to i8*
  call void @free(i8* %2546) #3
  %2547 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname4035 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %2547, i32 0, i32 0
  %2548 = load i8**, i8*** %virname4035, align 8
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.216, i32 0, i32 0), i8** %2548, align 8
  store i32 1, i32* %retval
  br label %return

if.end.4036:                                      ; preds = %sw.bb.4028
  %2549 = load i8*, i8** %tempfile, align 8
  call void @free(i8* %2549) #3
  br label %sw.epilog.4040

sw.default.4037:                                  ; preds = %if.end.4001
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.217, i32 0, i32 0))
  %2550 = load i32, i32* %ndesc, align 4
  %call4038 = call i32 @close(i32 %2550)
  %2551 = load i8*, i8** %tempfile, align 8
  %call4039 = call i32 @unlink(i8* %2551) #3
  %2552 = load i8*, i8** %spinned, align 8
  call void (i8*, ...) @cli_multifree(i8* %2552, i32 0)
  %2553 = load i8*, i8** %tempfile, align 8
  call void @free(i8* %2553) #3
  br label %sw.epilog.4040

sw.epilog.4040:                                   ; preds = %sw.default.4037, %if.end.4036
  br label %if.end.4041

if.end.4041:                                      ; preds = %sw.epilog.4040, %land.lhs.true.3952, %land.lhs.true.3936, %land.lhs.true.3928, %land.lhs.true.3924, %if.end.3919
  %2554 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %dconf4042 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %2554, i32 0, i32 9
  %2555 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf4042, align 8
  %pe4043 = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %2555, i32 0, i32 0
  %2556 = load i32, i32* %pe4043, align 4
  %and4044 = and i32 %2556, 1024
  %tobool4045 = icmp ne i32 %and4044, 0
  br i1 %tobool4045, label %land.lhs.true.4046, label %if.end.4131

land.lhs.true.4046:                               ; preds = %if.end.4041
  %2557 = load i16, i16* %nsections, align 2
  %conv4047 = zext i16 %2557 to i32
  %cmp4048 = icmp sgt i32 %conv4047, 1
  br i1 %cmp4048, label %land.lhs.true.4050, label %if.end.4131

land.lhs.true.4050:                               ; preds = %land.lhs.true.4046
  %opt324051 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr32*
  %AddressOfEntryPoint4052 = getelementptr inbounds %struct.pe_image_optional_hdr32, %struct.pe_image_optional_hdr32* %opt324051, i32 0, i32 6
  %2558 = load i32, i32* %AddressOfEntryPoint4052, align 4
  %2559 = load i16, i16* %nsections, align 2
  %conv4053 = zext i16 %2559 to i32
  %sub4054 = sub nsw i32 %conv4053, 1
  %idxprom4055 = sext i32 %sub4054 to i64
  %2560 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx4056 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %2560, i64 %idxprom4055
  %rva4057 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx4056, i32 0, i32 0
  %2561 = load i32, i32* %rva4057, align 4
  %add4058 = add i32 %2561, 96
  %cmp4059 = icmp eq i32 %2558, %add4058
  br i1 %cmp4059, label %land.lhs.true.4061, label %if.end.4131

land.lhs.true.4061:                               ; preds = %land.lhs.true.4050
  %arraydecay4062 = getelementptr inbounds [4096 x i8], [4096 x i8]* %epbuff, i32 0, i32 0
  %call4063 = call i32 @memcmp(i8* %arraydecay4062, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.218, i32 0, i32 0), i64 51) #5
  %cmp4064 = icmp eq i32 %call4063, 0
  br i1 %cmp4064, label %land.lhs.true.4066, label %if.end.4131

land.lhs.true.4066:                               ; preds = %land.lhs.true.4061
  %2562 = load i64, i64* %fsize, align 8
  %2563 = load i16, i16* %nsections, align 2
  %conv4067 = zext i16 %2563 to i32
  %sub4068 = sub nsw i32 %conv4067, 1
  %idxprom4069 = sext i32 %sub4068 to i64
  %2564 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx4070 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %2564, i64 %idxprom4069
  %raw4071 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx4070, i32 0, i32 2
  %2565 = load i32, i32* %raw4071, align 4
  %add4072 = add i32 %2565, 198
  %add4073 = add i32 %add4072, 2967
  %conv4074 = zext i32 %add4073 to i64
  %cmp4075 = icmp uge i64 %2562, %conv4074
  br i1 %cmp4075, label %if.then.4077, label %if.end.4131

if.then.4077:                                     ; preds = %land.lhs.true.4066
  %2566 = load i64, i64* %fsize, align 8
  %call4079 = call i8* @cli_malloc(i64 %2566)
  store i8* %call4079, i8** %spinned4078, align 8
  %cmp4080 = icmp eq i8* %call4079, null
  br i1 %cmp4080, label %if.then.4082, label %if.end.4083

if.then.4082:                                     ; preds = %if.then.4077
  %2567 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %2568 = bitcast %struct.cli_exe_section* %2567 to i8*
  call void @free(i8* %2568) #3
  store i32 -114, i32* %retval
  br label %return

if.end.4083:                                      ; preds = %if.then.4077
  %2569 = load i32, i32* %desc.addr, align 4
  %call4084 = call i64 @lseek(i32 %2569, i64 0, i32 0) #3
  %2570 = load i32, i32* %desc.addr, align 4
  %2571 = load i8*, i8** %spinned4078, align 8
  %2572 = load i64, i64* %fsize, align 8
  %conv4085 = trunc i64 %2572 to i32
  %call4086 = call i32 @cli_readn(i32 %2570, i8* %2571, i32 %conv4085)
  %conv4087 = sext i32 %call4086 to i64
  %2573 = load i64, i64* %fsize, align 8
  %cmp4088 = icmp ne i64 %conv4087, %2573
  br i1 %cmp4088, label %if.then.4090, label %if.end.4091

if.then.4090:                                     ; preds = %if.end.4083
  %2574 = load i64, i64* %fsize, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.219, i32 0, i32 0), i64 %2574)
  %2575 = load i8*, i8** %spinned4078, align 8
  call void @free(i8* %2575) #3
  %2576 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %2577 = bitcast %struct.cli_exe_section* %2576 to i8*
  call void @free(i8* %2577) #3
  store i32 -123, i32* %retval
  br label %return

if.end.4091:                                      ; preds = %if.end.4083
  %call4092 = call i8* @cli_gentemp(i8* null)
  store i8* %call4092, i8** %tempfile, align 8
  %tobool4093 = icmp ne i8* %call4092, null
  br i1 %tobool4093, label %if.end.4095, label %if.then.4094

if.then.4094:                                     ; preds = %if.end.4091
  %2578 = load i8*, i8** %spinned4078, align 8
  %2579 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  call void (i8*, ...) @cli_multifree(i8* %2578, %struct.cli_exe_section* %2579, i32 0)
  store i32 -114, i32* %retval
  br label %return

if.end.4095:                                      ; preds = %if.end.4091
  %2580 = load i8*, i8** %tempfile, align 8
  %call4096 = call i32 (i8*, i32, ...) @open(i8* %2580, i32 578, i32 448)
  store i32 %call4096, i32* %ndesc, align 4
  %cmp4097 = icmp slt i32 %call4096, 0
  br i1 %cmp4097, label %if.then.4099, label %if.end.4100

if.then.4099:                                     ; preds = %if.end.4095
  %2581 = load i8*, i8** %tempfile, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.220, i32 0, i32 0), i8* %2581)
  %2582 = load i8*, i8** %tempfile, align 8
  call void @free(i8* %2582) #3
  %2583 = load i8*, i8** %spinned4078, align 8
  %2584 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  call void (i8*, ...) @cli_multifree(i8* %2583, %struct.cli_exe_section* %2584, i32 0)
  store i32 -123, i32* %retval
  br label %return

if.end.4100:                                      ; preds = %if.end.4095
  %2585 = load i8*, i8** %spinned4078, align 8
  %2586 = load i64, i64* %fsize, align 8
  %conv4101 = trunc i64 %2586 to i32
  %2587 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %2588 = load i16, i16* %nsections, align 2
  %conv4102 = zext i16 %2588 to i32
  %sub4103 = sub nsw i32 %conv4102, 1
  %2589 = load i32, i32* %e_lfanew, align 4
  %2590 = load i32, i32* %ndesc, align 4
  %call4104 = call i32 @yc_decrypt(i8* %2585, i32 %conv4101, %struct.cli_exe_section* %2587, i32 %sub4103, i32 %2589, i32 %2590)
  switch i32 %call4104, label %sw.default.4127 [
    i32 0, label %sw.bb.4105
  ]

sw.bb.4105:                                       ; preds = %if.end.4100
  %2591 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool4106 = icmp ne i8 %2591, 0
  br i1 %tobool4106, label %if.then.4107, label %if.else.4108

if.then.4107:                                     ; preds = %sw.bb.4105
  %2592 = load i8*, i8** %tempfile, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.221, i32 0, i32 0), i8* %2592)
  br label %if.end.4109

if.else.4108:                                     ; preds = %sw.bb.4105
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.222, i32 0, i32 0))
  br label %if.end.4109

if.end.4109:                                      ; preds = %if.else.4108, %if.then.4107
  %2593 = load i8*, i8** %spinned4078, align 8
  call void (i8*, ...) @cli_multifree(i8* %2593, i32 0)
  %2594 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %2595 = bitcast %struct.cli_exe_section* %2594 to i8*
  call void @free(i8* %2595) #3
  %2596 = load i32, i32* %ndesc, align 4
  %call4110 = call i32 @fsync(i32 %2596)
  %2597 = load i32, i32* %ndesc, align 4
  %call4111 = call i64 @lseek(i32 %2597, i64 0, i32 0) #3
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.138, i32 0, i32 0))
  %2598 = load i32, i32* %ndesc, align 4
  %2599 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call4112 = call i32 @cli_magic_scandesc(i32 %2598, %struct.cli_ctx* %2599)
  %cmp4113 = icmp eq i32 %call4112, 1
  br i1 %cmp4113, label %if.then.4115, label %if.end.4121

if.then.4115:                                     ; preds = %if.end.4109
  %2600 = load i32, i32* %ndesc, align 4
  %call4116 = call i32 @close(i32 %2600)
  %2601 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool4117 = icmp ne i8 %2601, 0
  br i1 %tobool4117, label %if.end.4120, label %if.then.4118

if.then.4118:                                     ; preds = %if.then.4115
  %2602 = load i8*, i8** %tempfile, align 8
  %call4119 = call i32 @unlink(i8* %2602) #3
  br label %if.end.4120

if.end.4120:                                      ; preds = %if.then.4118, %if.then.4115
  %2603 = load i8*, i8** %tempfile, align 8
  call void @free(i8* %2603) #3
  store i32 1, i32* %retval
  br label %return

if.end.4121:                                      ; preds = %if.end.4109
  %2604 = load i32, i32* %ndesc, align 4
  %call4122 = call i32 @close(i32 %2604)
  %2605 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool4123 = icmp ne i8 %2605, 0
  br i1 %tobool4123, label %if.end.4126, label %if.then.4124

if.then.4124:                                     ; preds = %if.end.4121
  %2606 = load i8*, i8** %tempfile, align 8
  %call4125 = call i32 @unlink(i8* %2606) #3
  br label %if.end.4126

if.end.4126:                                      ; preds = %if.then.4124, %if.end.4121
  %2607 = load i8*, i8** %tempfile, align 8
  call void @free(i8* %2607) #3
  store i32 0, i32* %retval
  br label %return

sw.default.4127:                                  ; preds = %if.end.4100
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.223, i32 0, i32 0))
  %2608 = load i32, i32* %ndesc, align 4
  %call4128 = call i32 @close(i32 %2608)
  %2609 = load i8*, i8** %tempfile, align 8
  %call4129 = call i32 @unlink(i8* %2609) #3
  %2610 = load i8*, i8** %spinned4078, align 8
  call void (i8*, ...) @cli_multifree(i8* %2610, i32 0)
  %2611 = load i8*, i8** %tempfile, align 8
  call void @free(i8* %2611) #3
  br label %sw.epilog.4130

sw.epilog.4130:                                   ; preds = %sw.default.4127
  br label %if.end.4131

if.end.4131:                                      ; preds = %sw.epilog.4130, %land.lhs.true.4066, %land.lhs.true.4061, %land.lhs.true.4050, %land.lhs.true.4046, %if.end.4041
  %2612 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %dconf4132 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %2612, i32 0, i32 9
  %2613 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf4132, align 8
  %pe4133 = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %2613, i32 0, i32 0
  %2614 = load i32, i32* %pe4133, align 4
  %and4134 = and i32 %2614, 2048
  %tobool4135 = icmp ne i32 %and4134, 0
  br i1 %tobool4135, label %land.lhs.true.4136, label %if.end.4393

land.lhs.true.4136:                               ; preds = %if.end.4131
  %2615 = load i16, i16* %nsections, align 2
  %conv4137 = zext i16 %2615 to i32
  %cmp4138 = icmp sgt i32 %conv4137, 1
  br i1 %cmp4138, label %land.lhs.true.4140, label %if.end.4393

land.lhs.true.4140:                               ; preds = %land.lhs.true.4136
  %2616 = load i16, i16* %nsections, align 2
  %conv4141 = zext i16 %2616 to i32
  %sub4142 = sub nsw i32 %conv4141, 1
  %idxprom4143 = sext i32 %sub4142 to i64
  %2617 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx4144 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %2617, i64 %idxprom4143
  %raw4145 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx4144, i32 0, i32 2
  %2618 = load i32, i32* %raw4145, align 4
  %cmp4146 = icmp ugt i32 %2618, 689
  br i1 %cmp4146, label %land.lhs.true.4148, label %if.end.4393

land.lhs.true.4148:                               ; preds = %land.lhs.true.4140
  %2619 = load i32, i32* %vep, align 4
  %2620 = load i16, i16* %nsections, align 2
  %conv4149 = zext i16 %2620 to i32
  %sub4150 = sub nsw i32 %conv4149, 1
  %idxprom4151 = sext i32 %sub4150 to i64
  %2621 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx4152 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %2621, i64 %idxprom4151
  %rva4153 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx4152, i32 0, i32 0
  %2622 = load i32, i32* %rva4153, align 4
  %cmp4154 = icmp eq i32 %2619, %2622
  br i1 %cmp4154, label %land.lhs.true.4156, label %if.end.4393

land.lhs.true.4156:                               ; preds = %land.lhs.true.4148
  %2623 = load i16, i16* %nsections, align 2
  %conv4157 = zext i16 %2623 to i32
  %sub4158 = sub nsw i32 %conv4157, 1
  %idxprom4159 = sext i32 %sub4158 to i64
  %2624 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx4160 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %2624, i64 %idxprom4159
  %rva4161 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx4160, i32 0, i32 0
  %2625 = load i32, i32* %rva4161, align 4
  %2626 = load i16, i16* %nsections, align 2
  %conv4162 = zext i16 %2626 to i32
  %sub4163 = sub nsw i32 %conv4162, 1
  %idxprom4164 = sext i32 %sub4163 to i64
  %2627 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx4165 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %2627, i64 %idxprom4164
  %rsz4166 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx4165, i32 0, i32 3
  %2628 = load i32, i32* %rsz4166, align 4
  %add4167 = add i32 %2625, %2628
  %2629 = load i32, i32* %max, align 4
  %cmp4168 = icmp eq i32 %add4167, %2629
  br i1 %cmp4168, label %land.lhs.true.4170, label %if.end.4393

land.lhs.true.4170:                               ; preds = %land.lhs.true.4156
  %arraydecay4171 = getelementptr inbounds [4096 x i8], [4096 x i8]* %epbuff, i32 0, i32 0
  %call4172 = call i32 @memcmp(i8* %arraydecay4171, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.224, i32 0, i32 0), i64 7) #5
  %cmp4173 = icmp eq i32 %call4172, 0
  br i1 %cmp4173, label %land.lhs.true.4175, label %if.end.4393

land.lhs.true.4175:                               ; preds = %land.lhs.true.4170
  %arraydecay4176 = getelementptr inbounds [4096 x i8], [4096 x i8]* %epbuff, i32 0, i32 0
  %add.ptr4177 = getelementptr inbounds i8, i8* %arraydecay4176, i64 104
  %call4178 = call i32 @memcmp(i8* %add.ptr4177, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.225, i32 0, i32 0), i64 19) #5
  %cmp4179 = icmp eq i32 %call4178, 0
  br i1 %cmp4179, label %if.then.4181, label %if.end.4393

if.then.4181:                                     ; preds = %land.lhs.true.4175
  %2630 = load i16, i16* %nsections, align 2
  %conv4182 = zext i16 %2630 to i32
  %sub4183 = sub nsw i32 %conv4182, 1
  %idxprom4184 = sext i32 %sub4183 to i64
  %2631 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx4185 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %2631, i64 %idxprom4184
  %raw4186 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx4185, i32 0, i32 2
  %2632 = load i32, i32* %raw4186, align 4
  store i32 %2632, i32* %headsize, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.4188

for.cond.4188:                                    ; preds = %for.inc.4204, %if.then.4181
  %2633 = load i32, i32* %i, align 4
  %2634 = load i16, i16* %nsections, align 2
  %conv4189 = zext i16 %2634 to i32
  %sub4190 = sub i32 %conv4189, 1
  %cmp4191 = icmp ult i32 %2633, %sub4190
  br i1 %cmp4191, label %for.body.4193, label %for.end.4206

for.body.4193:                                    ; preds = %for.cond.4188
  %2635 = load i32, i32* %i, align 4
  %idxprom4194 = zext i32 %2635 to i64
  %2636 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx4195 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %2636, i64 %idxprom4194
  %raw4196 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx4195, i32 0, i32 2
  %2637 = load i32, i32* %raw4196, align 4
  %2638 = load i32, i32* %headsize, align 4
  %cmp4197 = icmp ult i32 %2637, %2638
  br i1 %cmp4197, label %if.then.4199, label %if.end.4203

if.then.4199:                                     ; preds = %for.body.4193
  %2639 = load i32, i32* %i, align 4
  %idxprom4200 = zext i32 %2639 to i64
  %2640 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx4201 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %2640, i64 %idxprom4200
  %raw4202 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx4201, i32 0, i32 2
  %2641 = load i32, i32* %raw4202, align 4
  store i32 %2641, i32* %headsize, align 4
  br label %if.end.4203

if.end.4203:                                      ; preds = %if.then.4199, %for.body.4193
  br label %for.inc.4204

for.inc.4204:                                     ; preds = %if.end.4203
  %2642 = load i32, i32* %i, align 4
  %inc4205 = add i32 %2642, 1
  store i32 %inc4205, i32* %i, align 4
  br label %for.cond.4188

for.end.4206:                                     ; preds = %for.cond.4188
  %2643 = load i32, i32* %max, align 4
  %2644 = load i32, i32* %min, align 4
  %sub4207 = sub i32 %2643, %2644
  %2645 = load i32, i32* %headsize, align 4
  %add4208 = add i32 %sub4207, %2645
  %2646 = load i16, i16* %nsections, align 2
  %conv4209 = zext i16 %2646 to i32
  %sub4210 = sub nsw i32 %conv4209, 1
  %idxprom4211 = sext i32 %sub4210 to i64
  %2647 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx4212 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %2647, i64 %idxprom4211
  %rsz4213 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx4212, i32 0, i32 3
  %2648 = load i32, i32* %rsz4213, align 4
  %sub4214 = sub i32 %add4208, %2648
  store i32 %sub4214, i32* %dsize, align 4
  %2649 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits4215 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %2649, i32 0, i32 4
  %2650 = load %struct.cl_limits*, %struct.cl_limits** %limits4215, align 8
  %tobool4216 = icmp ne %struct.cl_limits* %2650, null
  br i1 %tobool4216, label %land.lhs.true.4217, label %if.end.4236

land.lhs.true.4217:                               ; preds = %for.end.4206
  %2651 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits4218 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %2651, i32 0, i32 4
  %2652 = load %struct.cl_limits*, %struct.cl_limits** %limits4218, align 8
  %maxfilesize4219 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %2652, i32 0, i32 5
  %2653 = load i64, i64* %maxfilesize4219, align 8
  %tobool4220 = icmp ne i64 %2653, 0
  br i1 %tobool4220, label %land.lhs.true.4221, label %if.end.4236

land.lhs.true.4221:                               ; preds = %land.lhs.true.4217
  %2654 = load i32, i32* %dsize, align 4
  %conv4222 = zext i32 %2654 to i64
  %2655 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits4223 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %2655, i32 0, i32 4
  %2656 = load %struct.cl_limits*, %struct.cl_limits** %limits4223, align 8
  %maxfilesize4224 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %2656, i32 0, i32 5
  %2657 = load i64, i64* %maxfilesize4224, align 8
  %cmp4225 = icmp ugt i64 %conv4222, %2657
  br i1 %cmp4225, label %if.then.4227, label %if.end.4236

if.then.4227:                                     ; preds = %land.lhs.true.4221
  %2658 = load i32, i32* %dsize, align 4
  %2659 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits4228 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %2659, i32 0, i32 4
  %2660 = load %struct.cl_limits*, %struct.cl_limits** %limits4228, align 8
  %maxfilesize4229 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %2660, i32 0, i32 5
  %2661 = load i64, i64* %maxfilesize4229, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.226, i32 0, i32 0), i32 %2658, i64 %2661)
  %2662 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %2663 = bitcast %struct.cli_exe_section* %2662 to i8*
  call void @free(i8* %2663) #3
  %2664 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options4230 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %2664, i32 0, i32 5
  %2665 = load i32, i32* %options4230, align 4
  %and4231 = and i32 %2665, 256
  %tobool4232 = icmp ne i32 %and4231, 0
  br i1 %tobool4232, label %if.then.4233, label %if.else.4235

if.then.4233:                                     ; preds = %if.then.4227
  %2666 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname4234 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %2666, i32 0, i32 0
  %2667 = load i8**, i8*** %virname4234, align 8
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.227, i32 0, i32 0), i8** %2667, align 8
  store i32 1, i32* %retval
  br label %return

if.else.4235:                                     ; preds = %if.then.4227
  store i32 0, i32* %retval
  br label %return

if.end.4236:                                      ; preds = %land.lhs.true.4221, %land.lhs.true.4217, %for.end.4206
  %2668 = load i32, i32* %dsize, align 4
  %conv4237 = zext i32 %2668 to i64
  %call4238 = call i8* @cli_calloc(i64 %conv4237, i64 1)
  store i8* %call4238, i8** %dest4187, align 8
  %cmp4239 = icmp eq i8* %call4238, null
  br i1 %cmp4239, label %if.then.4241, label %if.end.4242

if.then.4241:                                     ; preds = %if.end.4236
  %2669 = load i32, i32* %dsize, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.228, i32 0, i32 0), i32 %2669)
  %2670 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %2671 = bitcast %struct.cli_exe_section* %2670 to i8*
  call void @free(i8* %2671) #3
  store i32 -114, i32* %retval
  br label %return

if.end.4242:                                      ; preds = %if.end.4236
  %2672 = load i32, i32* %desc.addr, align 4
  %call4243 = call i64 @lseek(i32 %2672, i64 0, i32 0) #3
  %2673 = load i32, i32* %desc.addr, align 4
  %2674 = load i8*, i8** %dest4187, align 8
  %2675 = load i32, i32* %headsize, align 4
  %call4244 = call i32 @cli_readn(i32 %2673, i8* %2674, i32 %2675)
  %conv4245 = sext i32 %call4244 to i64
  %2676 = load i32, i32* %headsize, align 4
  %conv4246 = zext i32 %2676 to i64
  %cmp4247 = icmp ne i64 %conv4245, %conv4246
  br i1 %cmp4247, label %if.then.4249, label %if.end.4250

if.then.4249:                                     ; preds = %if.end.4242
  %2677 = load i32, i32* %headsize, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.229, i32 0, i32 0), i32 %2677)
  %2678 = load i8*, i8** %dest4187, align 8
  call void @free(i8* %2678) #3
  %2679 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %2680 = bitcast %struct.cli_exe_section* %2679 to i8*
  call void @free(i8* %2680) #3
  store i32 -123, i32* %retval
  br label %return

if.end.4250:                                      ; preds = %if.end.4242
  store i32 0, i32* %i, align 4
  br label %for.cond.4251

for.cond.4251:                                    ; preds = %for.inc.4289, %if.end.4250
  %2681 = load i32, i32* %i, align 4
  %2682 = load i16, i16* %nsections, align 2
  %conv4252 = zext i16 %2682 to i32
  %sub4253 = sub i32 %conv4252, 1
  %cmp4254 = icmp ult i32 %2681, %sub4253
  br i1 %cmp4254, label %for.body.4256, label %for.end.4291

for.body.4256:                                    ; preds = %for.cond.4251
  %2683 = load i32, i32* %i, align 4
  %idxprom4257 = zext i32 %2683 to i64
  %2684 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx4258 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %2684, i64 %idxprom4257
  %rsz4259 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx4258, i32 0, i32 3
  %2685 = load i32, i32* %rsz4259, align 4
  %tobool4260 = icmp ne i32 %2685, 0
  br i1 %tobool4260, label %if.then.4261, label %if.end.4288

if.then.4261:                                     ; preds = %for.body.4256
  %2686 = load i32, i32* %desc.addr, align 4
  %2687 = load i32, i32* %i, align 4
  %idxprom4262 = zext i32 %2687 to i64
  %2688 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx4263 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %2688, i64 %idxprom4262
  %call4264 = call i64 @cli_seeksect(i32 %2686, %struct.cli_exe_section* %arrayidx4263)
  %tobool4265 = icmp ne i64 %call4264, 0
  br i1 %tobool4265, label %lor.lhs.false.4266, label %if.then.4286

lor.lhs.false.4266:                               ; preds = %if.then.4261
  %2689 = load i32, i32* %desc.addr, align 4
  %2690 = load i8*, i8** %dest4187, align 8
  %2691 = load i32, i32* %headsize, align 4
  %idx.ext4267 = zext i32 %2691 to i64
  %add.ptr4268 = getelementptr inbounds i8, i8* %2690, i64 %idx.ext4267
  %2692 = load i32, i32* %i, align 4
  %idxprom4269 = zext i32 %2692 to i64
  %2693 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx4270 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %2693, i64 %idxprom4269
  %rva4271 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx4270, i32 0, i32 0
  %2694 = load i32, i32* %rva4271, align 4
  %idx.ext4272 = zext i32 %2694 to i64
  %add.ptr4273 = getelementptr inbounds i8, i8* %add.ptr4268, i64 %idx.ext4272
  %2695 = load i32, i32* %min, align 4
  %idx.ext4274 = zext i32 %2695 to i64
  %idx.neg4275 = sub i64 0, %idx.ext4274
  %add.ptr4276 = getelementptr inbounds i8, i8* %add.ptr4273, i64 %idx.neg4275
  %2696 = load i32, i32* %i, align 4
  %idxprom4277 = zext i32 %2696 to i64
  %2697 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx4278 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %2697, i64 %idxprom4277
  %rsz4279 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx4278, i32 0, i32 3
  %2698 = load i32, i32* %rsz4279, align 4
  %call4280 = call i32 @cli_readn(i32 %2689, i8* %add.ptr4276, i32 %2698)
  %2699 = load i32, i32* %i, align 4
  %idxprom4281 = zext i32 %2699 to i64
  %2700 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx4282 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %2700, i64 %idxprom4281
  %rsz4283 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx4282, i32 0, i32 3
  %2701 = load i32, i32* %rsz4283, align 4
  %cmp4284 = icmp ne i32 %call4280, %2701
  br i1 %cmp4284, label %if.then.4286, label %if.end.4287

if.then.4286:                                     ; preds = %lor.lhs.false.4266, %if.then.4261
  %2702 = load i8*, i8** %dest4187, align 8
  call void @free(i8* %2702) #3
  %2703 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %2704 = bitcast %struct.cli_exe_section* %2703 to i8*
  call void @free(i8* %2704) #3
  store i32 -123, i32* %retval
  br label %return

if.end.4287:                                      ; preds = %lor.lhs.false.4266
  br label %if.end.4288

if.end.4288:                                      ; preds = %if.end.4287, %for.body.4256
  br label %for.inc.4289

for.inc.4289:                                     ; preds = %if.end.4288
  %2705 = load i32, i32* %i, align 4
  %inc4290 = add i32 %2705, 1
  store i32 %inc4290, i32* %i, align 4
  br label %for.cond.4251

for.end.4291:                                     ; preds = %for.cond.4251
  %2706 = load i16, i16* %nsections, align 2
  %conv4292 = zext i16 %2706 to i32
  %sub4293 = sub nsw i32 %conv4292, 1
  %idxprom4294 = sext i32 %sub4293 to i64
  %2707 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx4295 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %2707, i64 %idxprom4294
  %rsz4296 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx4295, i32 0, i32 3
  %2708 = load i32, i32* %rsz4296, align 4
  %conv4297 = zext i32 %2708 to i64
  %call4298 = call i8* @cli_calloc(i64 %conv4297, i64 1)
  store i8* %call4298, i8** %wwp, align 8
  %cmp4299 = icmp eq i8* %call4298, null
  br i1 %cmp4299, label %if.then.4301, label %if.end.4307

if.then.4301:                                     ; preds = %for.end.4291
  %2709 = load i16, i16* %nsections, align 2
  %conv4302 = zext i16 %2709 to i32
  %sub4303 = sub nsw i32 %conv4302, 1
  %idxprom4304 = sext i32 %sub4303 to i64
  %2710 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx4305 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %2710, i64 %idxprom4304
  %rsz4306 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx4305, i32 0, i32 3
  %2711 = load i32, i32* %rsz4306, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.228, i32 0, i32 0), i32 %2711)
  %2712 = load i8*, i8** %dest4187, align 8
  call void @free(i8* %2712) #3
  %2713 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %2714 = bitcast %struct.cli_exe_section* %2713 to i8*
  call void @free(i8* %2714) #3
  store i32 -114, i32* %retval
  br label %return

if.end.4307:                                      ; preds = %for.end.4291
  %2715 = load i32, i32* %desc.addr, align 4
  %2716 = load i16, i16* %nsections, align 2
  %conv4308 = zext i16 %2716 to i32
  %sub4309 = sub nsw i32 %conv4308, 1
  %idxprom4310 = sext i32 %sub4309 to i64
  %2717 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx4311 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %2717, i64 %idxprom4310
  %call4312 = call i64 @cli_seeksect(i32 %2715, %struct.cli_exe_section* %arrayidx4311)
  %tobool4313 = icmp ne i64 %call4312, 0
  br i1 %tobool4313, label %lor.lhs.false.4314, label %if.then.4330

lor.lhs.false.4314:                               ; preds = %if.end.4307
  %2718 = load i32, i32* %desc.addr, align 4
  %2719 = load i8*, i8** %wwp, align 8
  %2720 = load i16, i16* %nsections, align 2
  %conv4315 = zext i16 %2720 to i32
  %sub4316 = sub nsw i32 %conv4315, 1
  %idxprom4317 = sext i32 %sub4316 to i64
  %2721 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx4318 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %2721, i64 %idxprom4317
  %rsz4319 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx4318, i32 0, i32 3
  %2722 = load i32, i32* %rsz4319, align 4
  %call4320 = call i32 @cli_readn(i32 %2718, i8* %2719, i32 %2722)
  %conv4321 = sext i32 %call4320 to i64
  %2723 = load i16, i16* %nsections, align 2
  %conv4322 = zext i16 %2723 to i32
  %sub4323 = sub nsw i32 %conv4322, 1
  %idxprom4324 = sext i32 %sub4323 to i64
  %2724 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx4325 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %2724, i64 %idxprom4324
  %rsz4326 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx4325, i32 0, i32 3
  %2725 = load i32, i32* %rsz4326, align 4
  %conv4327 = zext i32 %2725 to i64
  %cmp4328 = icmp ne i64 %conv4321, %conv4327
  br i1 %cmp4328, label %if.then.4330, label %if.end.4336

if.then.4330:                                     ; preds = %lor.lhs.false.4314, %if.end.4307
  %2726 = load i16, i16* %nsections, align 2
  %conv4331 = zext i16 %2726 to i32
  %sub4332 = sub nsw i32 %conv4331, 1
  %idxprom4333 = sext i32 %sub4332 to i64
  %2727 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx4334 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %2727, i64 %idxprom4333
  %rsz4335 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx4334, i32 0, i32 3
  %2728 = load i32, i32* %rsz4335, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.230, i32 0, i32 0), i32 %2728)
  %2729 = load i8*, i8** %dest4187, align 8
  call void @free(i8* %2729) #3
  %2730 = load i8*, i8** %wwp, align 8
  call void @free(i8* %2730) #3
  %2731 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %2732 = bitcast %struct.cli_exe_section* %2731 to i8*
  call void @free(i8* %2732) #3
  store i32 -123, i32* %retval
  br label %return

if.end.4336:                                      ; preds = %lor.lhs.false.4314
  %2733 = load i8*, i8** %dest4187, align 8
  %2734 = load i32, i32* %dsize, align 4
  %2735 = load i32, i32* %headsize, align 4
  %2736 = load i32, i32* %min, align 4
  %2737 = load i16, i16* %nsections, align 2
  %conv4337 = zext i16 %2737 to i32
  %sub4338 = sub nsw i32 %conv4337, 1
  %idxprom4339 = sext i32 %sub4338 to i64
  %2738 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx4340 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %2738, i64 %idxprom4339
  %rva4341 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx4340, i32 0, i32 0
  %2739 = load i32, i32* %rva4341, align 4
  %2740 = load i32, i32* %e_lfanew, align 4
  %2741 = load i8*, i8** %wwp, align 8
  %2742 = load i16, i16* %nsections, align 2
  %conv4342 = zext i16 %2742 to i32
  %sub4343 = sub nsw i32 %conv4342, 1
  %idxprom4344 = sext i32 %sub4343 to i64
  %2743 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx4345 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %2743, i64 %idxprom4344
  %rsz4346 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx4345, i32 0, i32 3
  %2744 = load i32, i32* %rsz4346, align 4
  %2745 = load i16, i16* %nsections, align 2
  %conv4347 = zext i16 %2745 to i32
  %sub4348 = sub nsw i32 %conv4347, 1
  %conv4349 = trunc i32 %sub4348 to i16
  %call4350 = call i32 @wwunpack(i8* %2733, i32 %2734, i32 %2735, i32 %2736, i32 %2739, i32 %2740, i8* %2741, i32 %2744, i16 zeroext %conv4349)
  %tobool4351 = icmp ne i32 %call4350, 0
  br i1 %tobool4351, label %if.else.4391, label %if.then.4352

if.then.4352:                                     ; preds = %if.end.4336
  %2746 = load i8*, i8** %wwp, align 8
  call void @free(i8* %2746) #3
  %call4353 = call i8* @cli_gentemp(i8* null)
  store i8* %call4353, i8** %tempfile, align 8
  %tobool4354 = icmp ne i8* %call4353, null
  br i1 %tobool4354, label %if.end.4356, label %if.then.4355

if.then.4355:                                     ; preds = %if.then.4352
  %2747 = load i8*, i8** %dest4187, align 8
  %2748 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  call void (i8*, ...) @cli_multifree(i8* %2747, %struct.cli_exe_section* %2748, i32 0)
  store i32 -114, i32* %retval
  br label %return

if.end.4356:                                      ; preds = %if.then.4352
  %2749 = load i8*, i8** %tempfile, align 8
  %call4357 = call i32 (i8*, i32, ...) @open(i8* %2749, i32 578, i32 448)
  store i32 %call4357, i32* %ndesc, align 4
  %cmp4358 = icmp slt i32 %call4357, 0
  br i1 %cmp4358, label %if.then.4360, label %if.end.4361

if.then.4360:                                     ; preds = %if.end.4356
  %2750 = load i8*, i8** %tempfile, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.231, i32 0, i32 0), i8* %2750)
  %2751 = load i8*, i8** %tempfile, align 8
  call void @free(i8* %2751) #3
  %2752 = load i8*, i8** %dest4187, align 8
  %2753 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  call void (i8*, ...) @cli_multifree(i8* %2752, %struct.cli_exe_section* %2753, i32 0)
  store i32 -123, i32* %retval
  br label %return

if.end.4361:                                      ; preds = %if.end.4356
  %2754 = load i32, i32* %ndesc, align 4
  %2755 = load i8*, i8** %dest4187, align 8
  %2756 = load i32, i32* %dsize, align 4
  %conv4362 = zext i32 %2756 to i64
  %call4363 = call i64 @write(i32 %2754, i8* %2755, i64 %conv4362)
  %conv4364 = trunc i64 %call4363 to i32
  %2757 = load i32, i32* %dsize, align 4
  %cmp4365 = icmp ne i32 %conv4364, %2757
  br i1 %cmp4365, label %if.then.4367, label %if.end.4369

if.then.4367:                                     ; preds = %if.end.4361
  %2758 = load i32, i32* %dsize, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.232, i32 0, i32 0), i32 %2758)
  %2759 = load i32, i32* %ndesc, align 4
  %call4368 = call i32 @close(i32 %2759)
  %2760 = load i8*, i8** %tempfile, align 8
  call void @free(i8* %2760) #3
  %2761 = load i8*, i8** %dest4187, align 8
  call void @free(i8* %2761) #3
  %2762 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %2763 = bitcast %struct.cli_exe_section* %2762 to i8*
  call void @free(i8* %2763) #3
  store i32 -123, i32* %retval
  br label %return

if.end.4369:                                      ; preds = %if.end.4361
  %2764 = load i8*, i8** %dest4187, align 8
  call void @free(i8* %2764) #3
  %2765 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool4370 = icmp ne i8 %2765, 0
  br i1 %tobool4370, label %if.then.4371, label %if.else.4372

if.then.4371:                                     ; preds = %if.end.4369
  %2766 = load i8*, i8** %tempfile, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.233, i32 0, i32 0), i8* %2766)
  br label %if.end.4373

if.else.4372:                                     ; preds = %if.end.4369
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.234, i32 0, i32 0))
  br label %if.end.4373

if.end.4373:                                      ; preds = %if.else.4372, %if.then.4371
  %2767 = load i32, i32* %ndesc, align 4
  %call4374 = call i32 @fsync(i32 %2767)
  %2768 = load i32, i32* %ndesc, align 4
  %call4375 = call i64 @lseek(i32 %2768, i64 0, i32 0) #3
  %2769 = load i32, i32* %ndesc, align 4
  %2770 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call4376 = call i32 @cli_magic_scandesc(i32 %2769, %struct.cli_ctx* %2770)
  %cmp4377 = icmp eq i32 %call4376, 1
  br i1 %cmp4377, label %if.then.4379, label %if.end.4385

if.then.4379:                                     ; preds = %if.end.4373
  %2771 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %2772 = bitcast %struct.cli_exe_section* %2771 to i8*
  call void @free(i8* %2772) #3
  %2773 = load i32, i32* %ndesc, align 4
  %call4380 = call i32 @close(i32 %2773)
  %2774 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool4381 = icmp ne i8 %2774, 0
  br i1 %tobool4381, label %if.end.4384, label %if.then.4382

if.then.4382:                                     ; preds = %if.then.4379
  %2775 = load i8*, i8** %tempfile, align 8
  %call4383 = call i32 @unlink(i8* %2775) #3
  br label %if.end.4384

if.end.4384:                                      ; preds = %if.then.4382, %if.then.4379
  %2776 = load i8*, i8** %tempfile, align 8
  call void @free(i8* %2776) #3
  store i32 1, i32* %retval
  br label %return

if.end.4385:                                      ; preds = %if.end.4373
  %2777 = load i32, i32* %ndesc, align 4
  %call4386 = call i32 @close(i32 %2777)
  %2778 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool4387 = icmp ne i8 %2778, 0
  br i1 %tobool4387, label %if.end.4390, label %if.then.4388

if.then.4388:                                     ; preds = %if.end.4385
  %2779 = load i8*, i8** %tempfile, align 8
  %call4389 = call i32 @unlink(i8* %2779) #3
  br label %if.end.4390

if.end.4390:                                      ; preds = %if.then.4388, %if.end.4385
  %2780 = load i8*, i8** %tempfile, align 8
  call void @free(i8* %2780) #3
  br label %if.end.4392

if.else.4391:                                     ; preds = %if.end.4336
  %2781 = load i8*, i8** %wwp, align 8
  call void @free(i8* %2781) #3
  %2782 = load i8*, i8** %dest4187, align 8
  call void @free(i8* %2782) #3
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.235, i32 0, i32 0))
  br label %if.end.4392

if.end.4392:                                      ; preds = %if.else.4391, %if.end.4390
  br label %if.end.4393

if.end.4393:                                      ; preds = %if.end.4392, %land.lhs.true.4175, %land.lhs.true.4170, %land.lhs.true.4156, %land.lhs.true.4148, %land.lhs.true.4140, %land.lhs.true.4136, %if.end.4131
  br label %while.cond.4394

while.cond.4394:                                  ; preds = %if.end.4393
  %2783 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %dconf4395 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %2783, i32 0, i32 9
  %2784 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf4395, align 8
  %pe4396 = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %2784, i32 0, i32 0
  %2785 = load i32, i32* %pe4396, align 4
  %and4397 = and i32 %2785, 32768
  %tobool4398 = icmp ne i32 %and4397, 0
  br i1 %tobool4398, label %land.lhs.true.4399, label %land.end.4409

land.lhs.true.4399:                               ; preds = %while.cond.4394
  %2786 = load i32, i32* %ep, align 4
  %add4400 = add i32 %2786, 58
  %add4401 = add i32 %add4400, 1806
  %conv4402 = zext i32 %add4401 to i64
  %2787 = load i64, i64* %fsize, align 8
  %cmp4403 = icmp ult i64 %conv4402, %2787
  br i1 %cmp4403, label %land.rhs.4405, label %land.end.4409

land.rhs.4405:                                    ; preds = %land.lhs.true.4399
  %arraydecay4406 = getelementptr inbounds [4096 x i8], [4096 x i8]* %epbuff, i32 0, i32 0
  %call4407 = call i32 @memcmp(i8* %arraydecay4406, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.236, i32 0, i32 0), i64 8) #5
  %tobool4408 = icmp ne i32 %call4407, 0
  %lnot = xor i1 %tobool4408, true
  br label %land.end.4409

land.end.4409:                                    ; preds = %land.rhs.4405, %land.lhs.true.4399, %while.cond.4394
  %2788 = phi i1 [ false, %land.lhs.true.4399 ], [ false, %while.cond.4394 ], [ %lnot, %land.rhs.4405 ]
  br i1 %2788, label %while.body.4410, label %while.end.4608

while.body.4410:                                  ; preds = %land.end.4409
  %2789 = load i32, i32* %epsize, align 4
  %cmp4411 = icmp ult i32 %2789, 959
  br i1 %cmp4411, label %if.then.4418, label %lor.lhs.false.4413

lor.lhs.false.4413:                               ; preds = %while.body.4410
  %arraydecay4414 = getelementptr inbounds [4096 x i8], [4096 x i8]* %epbuff, i32 0, i32 0
  %add.ptr4415 = getelementptr inbounds i8, i8* %arraydecay4414, i64 953
  %call4416 = call i32 @memcmp(i8* %add.ptr4415, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.237, i32 0, i32 0), i64 6) #5
  %tobool4417 = icmp ne i32 %call4416, 0
  br i1 %tobool4417, label %if.then.4418, label %if.end.4419

if.then.4418:                                     ; preds = %lor.lhs.false.4413, %while.body.4410
  br label %while.end.4608

if.end.4419:                                      ; preds = %lor.lhs.false.4413
  store i32 0, i32* %ssize, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.4420

for.cond.4420:                                    ; preds = %for.inc.4443, %if.end.4419
  %2790 = load i32, i32* %i, align 4
  %2791 = load i16, i16* %nsections, align 2
  %conv4421 = zext i16 %2791 to i32
  %cmp4422 = icmp ult i32 %2790, %conv4421
  br i1 %cmp4422, label %for.body.4424, label %for.end.4445

for.body.4424:                                    ; preds = %for.cond.4420
  %2792 = load i32, i32* %ssize, align 4
  %2793 = load i32, i32* %i, align 4
  %idxprom4425 = zext i32 %2793 to i64
  %2794 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx4426 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %2794, i64 %idxprom4425
  %rva4427 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx4426, i32 0, i32 0
  %2795 = load i32, i32* %rva4427, align 4
  %2796 = load i32, i32* %i, align 4
  %idxprom4428 = zext i32 %2796 to i64
  %2797 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx4429 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %2797, i64 %idxprom4428
  %vsz4430 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx4429, i32 0, i32 1
  %2798 = load i32, i32* %vsz4430, align 4
  %add4431 = add i32 %2795, %2798
  %cmp4432 = icmp ult i32 %2792, %add4431
  br i1 %cmp4432, label %if.then.4434, label %if.end.4442

if.then.4434:                                     ; preds = %for.body.4424
  %2799 = load i32, i32* %i, align 4
  %idxprom4435 = zext i32 %2799 to i64
  %2800 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx4436 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %2800, i64 %idxprom4435
  %rva4437 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx4436, i32 0, i32 0
  %2801 = load i32, i32* %rva4437, align 4
  %2802 = load i32, i32* %i, align 4
  %idxprom4438 = zext i32 %2802 to i64
  %2803 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx4439 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %2803, i64 %idxprom4438
  %vsz4440 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx4439, i32 0, i32 1
  %2804 = load i32, i32* %vsz4440, align 4
  %add4441 = add i32 %2801, %2804
  store i32 %add4441, i32* %ssize, align 4
  br label %if.end.4442

if.end.4442:                                      ; preds = %if.then.4434, %for.body.4424
  br label %for.inc.4443

for.inc.4443:                                     ; preds = %if.end.4442
  %2805 = load i32, i32* %i, align 4
  %inc4444 = add i32 %2805, 1
  store i32 %inc4444, i32* %i, align 4
  br label %for.cond.4420

for.end.4445:                                     ; preds = %for.cond.4420
  %2806 = load i32, i32* %ssize, align 4
  %tobool4446 = icmp ne i32 %2806, 0
  br i1 %tobool4446, label %if.end.4448, label %if.then.4447

if.then.4447:                                     ; preds = %for.end.4445
  br label %while.end.4608

if.end.4448:                                      ; preds = %for.end.4445
  %2807 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits4449 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %2807, i32 0, i32 4
  %2808 = load %struct.cl_limits*, %struct.cl_limits** %limits4449, align 8
  %tobool4450 = icmp ne %struct.cl_limits* %2808, null
  br i1 %tobool4450, label %land.lhs.true.4451, label %if.end.4470

land.lhs.true.4451:                               ; preds = %if.end.4448
  %2809 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits4452 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %2809, i32 0, i32 4
  %2810 = load %struct.cl_limits*, %struct.cl_limits** %limits4452, align 8
  %maxfilesize4453 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %2810, i32 0, i32 5
  %2811 = load i64, i64* %maxfilesize4453, align 8
  %tobool4454 = icmp ne i64 %2811, 0
  br i1 %tobool4454, label %land.lhs.true.4455, label %if.end.4470

land.lhs.true.4455:                               ; preds = %land.lhs.true.4451
  %2812 = load i32, i32* %ssize, align 4
  %conv4456 = zext i32 %2812 to i64
  %2813 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits4457 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %2813, i32 0, i32 4
  %2814 = load %struct.cl_limits*, %struct.cl_limits** %limits4457, align 8
  %maxfilesize4458 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %2814, i32 0, i32 5
  %2815 = load i64, i64* %maxfilesize4458, align 8
  %cmp4459 = icmp ugt i64 %conv4456, %2815
  br i1 %cmp4459, label %if.then.4461, label %if.end.4470

if.then.4461:                                     ; preds = %land.lhs.true.4455
  %2816 = load i32, i32* %ssize, align 4
  %2817 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits4462 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %2817, i32 0, i32 4
  %2818 = load %struct.cl_limits*, %struct.cl_limits** %limits4462, align 8
  %maxfilesize4463 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %2818, i32 0, i32 5
  %2819 = load i64, i64* %maxfilesize4463, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.238, i32 0, i32 0), i32 %2816, i64 %2819)
  %2820 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %2821 = bitcast %struct.cli_exe_section* %2820 to i8*
  call void @free(i8* %2821) #3
  %2822 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options4464 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %2822, i32 0, i32 5
  %2823 = load i32, i32* %options4464, align 4
  %and4465 = and i32 %2823, 256
  %tobool4466 = icmp ne i32 %and4465, 0
  br i1 %tobool4466, label %if.then.4467, label %if.else.4469

if.then.4467:                                     ; preds = %if.then.4461
  %2824 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname4468 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %2824, i32 0, i32 0
  %2825 = load i8**, i8*** %virname4468, align 8
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.239, i32 0, i32 0), i8** %2825, align 8
  store i32 1, i32* %retval
  br label %return

if.else.4469:                                     ; preds = %if.then.4461
  store i32 0, i32* %retval
  br label %return

if.end.4470:                                      ; preds = %land.lhs.true.4455, %land.lhs.true.4451, %if.end.4448
  %2826 = load i32, i32* %ssize, align 4
  %conv4471 = zext i32 %2826 to i64
  %call4472 = call i8* @cli_calloc(i64 %conv4471, i64 1)
  store i8* %call4472, i8** %src, align 8
  %tobool4473 = icmp ne i8* %call4472, null
  br i1 %tobool4473, label %if.end.4475, label %if.then.4474

if.then.4474:                                     ; preds = %if.end.4470
  %2827 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %2828 = bitcast %struct.cli_exe_section* %2827 to i8*
  call void @free(i8* %2828) #3
  store i32 -114, i32* %retval
  br label %return

if.end.4475:                                      ; preds = %if.end.4470
  store i32 0, i32* %i, align 4
  br label %for.cond.4476

for.cond.4476:                                    ; preds = %for.inc.4561, %if.end.4475
  %2829 = load i32, i32* %i, align 4
  %2830 = load i16, i16* %nsections, align 2
  %conv4477 = zext i16 %2830 to i32
  %cmp4478 = icmp ult i32 %2829, %conv4477
  br i1 %cmp4478, label %for.body.4480, label %for.end.4563

for.body.4480:                                    ; preds = %for.cond.4476
  %2831 = load i32, i32* %i, align 4
  %idxprom4481 = zext i32 %2831 to i64
  %2832 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx4482 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %2832, i64 %idxprom4481
  %rsz4483 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx4482, i32 0, i32 3
  %2833 = load i32, i32* %rsz4483, align 4
  %tobool4484 = icmp ne i32 %2833, 0
  br i1 %tobool4484, label %if.end.4486, label %if.then.4485

if.then.4485:                                     ; preds = %for.body.4480
  br label %for.inc.4561

if.end.4486:                                      ; preds = %for.body.4480
  %2834 = load i32, i32* %desc.addr, align 4
  %2835 = load i32, i32* %i, align 4
  %idxprom4487 = zext i32 %2835 to i64
  %2836 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx4488 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %2836, i64 %idxprom4487
  %call4489 = call i64 @cli_seeksect(i32 %2834, %struct.cli_exe_section* %arrayidx4488)
  %tobool4490 = icmp ne i64 %call4489, 0
  br i1 %tobool4490, label %if.end.4492, label %if.then.4491

if.then.4491:                                     ; preds = %if.end.4486
  br label %for.end.4563

if.end.4492:                                      ; preds = %if.end.4486
  %2837 = load i32, i32* %ssize, align 4
  %cmp4493 = icmp ugt i32 %2837, 0
  br i1 %cmp4493, label %land.lhs.true.4495, label %if.then.4543

land.lhs.true.4495:                               ; preds = %if.end.4492
  %2838 = load i32, i32* %i, align 4
  %idxprom4496 = zext i32 %2838 to i64
  %2839 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx4497 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %2839, i64 %idxprom4496
  %rsz4498 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx4497, i32 0, i32 3
  %2840 = load i32, i32* %rsz4498, align 4
  %cmp4499 = icmp ugt i32 %2840, 0
  br i1 %cmp4499, label %land.lhs.true.4501, label %if.then.4543

land.lhs.true.4501:                               ; preds = %land.lhs.true.4495
  %2841 = load i32, i32* %i, align 4
  %idxprom4502 = zext i32 %2841 to i64
  %2842 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx4503 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %2842, i64 %idxprom4502
  %rsz4504 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx4503, i32 0, i32 3
  %2843 = load i32, i32* %rsz4504, align 4
  %2844 = load i32, i32* %ssize, align 4
  %cmp4505 = icmp ule i32 %2843, %2844
  br i1 %cmp4505, label %land.lhs.true.4507, label %if.then.4543

land.lhs.true.4507:                               ; preds = %land.lhs.true.4501
  %2845 = load i8*, i8** %src, align 8
  %2846 = load i32, i32* %i, align 4
  %idxprom4508 = zext i32 %2846 to i64
  %2847 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx4509 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %2847, i64 %idxprom4508
  %rva4510 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx4509, i32 0, i32 0
  %2848 = load i32, i32* %rva4510, align 4
  %idx.ext4511 = zext i32 %2848 to i64
  %add.ptr4512 = getelementptr inbounds i8, i8* %2845, i64 %idx.ext4511
  %2849 = load i8*, i8** %src, align 8
  %cmp4513 = icmp uge i8* %add.ptr4512, %2849
  br i1 %cmp4513, label %land.lhs.true.4515, label %if.then.4543

land.lhs.true.4515:                               ; preds = %land.lhs.true.4507
  %2850 = load i8*, i8** %src, align 8
  %2851 = load i32, i32* %i, align 4
  %idxprom4516 = zext i32 %2851 to i64
  %2852 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx4517 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %2852, i64 %idxprom4516
  %rva4518 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx4517, i32 0, i32 0
  %2853 = load i32, i32* %rva4518, align 4
  %idx.ext4519 = zext i32 %2853 to i64
  %add.ptr4520 = getelementptr inbounds i8, i8* %2850, i64 %idx.ext4519
  %2854 = load i32, i32* %i, align 4
  %idxprom4521 = zext i32 %2854 to i64
  %2855 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx4522 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %2855, i64 %idxprom4521
  %rsz4523 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx4522, i32 0, i32 3
  %2856 = load i32, i32* %rsz4523, align 4
  %idx.ext4524 = zext i32 %2856 to i64
  %add.ptr4525 = getelementptr inbounds i8, i8* %add.ptr4520, i64 %idx.ext4524
  %2857 = load i8*, i8** %src, align 8
  %2858 = load i32, i32* %ssize, align 4
  %idx.ext4526 = zext i32 %2858 to i64
  %add.ptr4527 = getelementptr inbounds i8, i8* %2857, i64 %idx.ext4526
  %cmp4528 = icmp ule i8* %add.ptr4525, %add.ptr4527
  br i1 %cmp4528, label %land.lhs.true.4530, label %if.then.4543

land.lhs.true.4530:                               ; preds = %land.lhs.true.4515
  %2859 = load i8*, i8** %src, align 8
  %2860 = load i32, i32* %i, align 4
  %idxprom4531 = zext i32 %2860 to i64
  %2861 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx4532 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %2861, i64 %idxprom4531
  %rva4533 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx4532, i32 0, i32 0
  %2862 = load i32, i32* %rva4533, align 4
  %idx.ext4534 = zext i32 %2862 to i64
  %add.ptr4535 = getelementptr inbounds i8, i8* %2859, i64 %idx.ext4534
  %2863 = load i32, i32* %i, align 4
  %idxprom4536 = zext i32 %2863 to i64
  %2864 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx4537 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %2864, i64 %idxprom4536
  %rsz4538 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx4537, i32 0, i32 3
  %2865 = load i32, i32* %rsz4538, align 4
  %idx.ext4539 = zext i32 %2865 to i64
  %add.ptr4540 = getelementptr inbounds i8, i8* %add.ptr4535, i64 %idx.ext4539
  %2866 = load i8*, i8** %src, align 8
  %cmp4541 = icmp ugt i8* %add.ptr4540, %2866
  br i1 %cmp4541, label %if.end.4544, label %if.then.4543

if.then.4543:                                     ; preds = %land.lhs.true.4530, %land.lhs.true.4515, %land.lhs.true.4507, %land.lhs.true.4501, %land.lhs.true.4495, %if.end.4492
  br label %for.end.4563

if.end.4544:                                      ; preds = %land.lhs.true.4530
  %2867 = load i32, i32* %desc.addr, align 4
  %2868 = load i8*, i8** %src, align 8
  %2869 = load i32, i32* %i, align 4
  %idxprom4545 = zext i32 %2869 to i64
  %2870 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx4546 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %2870, i64 %idxprom4545
  %rva4547 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx4546, i32 0, i32 0
  %2871 = load i32, i32* %rva4547, align 4
  %idx.ext4548 = zext i32 %2871 to i64
  %add.ptr4549 = getelementptr inbounds i8, i8* %2868, i64 %idx.ext4548
  %2872 = load i32, i32* %i, align 4
  %idxprom4550 = zext i32 %2872 to i64
  %2873 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx4551 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %2873, i64 %idxprom4550
  %rsz4552 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx4551, i32 0, i32 3
  %2874 = load i32, i32* %rsz4552, align 4
  %call4553 = call i32 @cli_readn(i32 %2867, i8* %add.ptr4549, i32 %2874)
  %2875 = load i32, i32* %i, align 4
  %idxprom4554 = zext i32 %2875 to i64
  %2876 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx4555 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %2876, i64 %idxprom4554
  %rsz4556 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx4555, i32 0, i32 3
  %2877 = load i32, i32* %rsz4556, align 4
  %cmp4557 = icmp ne i32 %call4553, %2877
  br i1 %cmp4557, label %if.then.4559, label %if.end.4560

if.then.4559:                                     ; preds = %if.end.4544
  br label %for.end.4563

if.end.4560:                                      ; preds = %if.end.4544
  br label %for.inc.4561

for.inc.4561:                                     ; preds = %if.end.4560, %if.then.4485
  %2878 = load i32, i32* %i, align 4
  %inc4562 = add i32 %2878, 1
  store i32 %inc4562, i32* %i, align 4
  br label %for.cond.4476

for.end.4563:                                     ; preds = %if.then.4559, %if.then.4543, %if.then.4491, %for.cond.4476
  %2879 = load i32, i32* %i, align 4
  %2880 = load i16, i16* %nsections, align 2
  %conv4564 = zext i16 %2880 to i32
  %cmp4565 = icmp ne i32 %2879, %conv4564
  br i1 %cmp4565, label %if.then.4567, label %if.end.4568

if.then.4567:                                     ; preds = %for.end.4563
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.240, i32 0, i32 0))
  %2881 = load i8*, i8** %src, align 8
  call void @free(i8* %2881) #3
  br label %while.end.4608

if.end.4568:                                      ; preds = %for.end.4563
  %call4569 = call i8* @cli_gentemp(i8* null)
  store i8* %call4569, i8** %tempfile, align 8
  %tobool4570 = icmp ne i8* %call4569, null
  br i1 %tobool4570, label %if.end.4572, label %if.then.4571

if.then.4571:                                     ; preds = %if.end.4568
  %2882 = load i8*, i8** %src, align 8
  %2883 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  call void (i8*, ...) @cli_multifree(i8* %2882, %struct.cli_exe_section* %2883, i32 0)
  store i32 -114, i32* %retval
  br label %return

if.end.4572:                                      ; preds = %if.end.4568
  %2884 = load i8*, i8** %tempfile, align 8
  %call4573 = call i32 (i8*, i32, ...) @open(i8* %2884, i32 578, i32 448)
  store i32 %call4573, i32* %ndesc, align 4
  %cmp4574 = icmp slt i32 %call4573, 0
  br i1 %cmp4574, label %if.then.4576, label %if.end.4577

if.then.4576:                                     ; preds = %if.end.4572
  %2885 = load i8*, i8** %tempfile, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.241, i32 0, i32 0), i8* %2885)
  %2886 = load i8*, i8** %tempfile, align 8
  call void @free(i8* %2886) #3
  %2887 = load i8*, i8** %src, align 8
  %2888 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  call void (i8*, ...) @cli_multifree(i8* %2887, %struct.cli_exe_section* %2888, i32 0)
  store i32 -123, i32* %retval
  br label %return

if.end.4577:                                      ; preds = %if.end.4572
  %2889 = load i8*, i8** %src, align 8
  %2890 = load i32, i32* %ssize, align 4
  %2891 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %2892 = load i16, i16* %nsections, align 2
  %2893 = load i32, i32* %vep, align 4
  %sub4578 = sub i32 %2893, 1
  %opt324579 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr32*
  %ImageBase4580 = getelementptr inbounds %struct.pe_image_optional_hdr32, %struct.pe_image_optional_hdr32* %opt324579, i32 0, i32 9
  %2894 = load i32, i32* %ImageBase4580, align 4
  %2895 = load i32, i32* %ndesc, align 4
  %call4581 = call i32 @unaspack212(i8* %2889, i32 %2890, %struct.cli_exe_section* %2891, i16 zeroext %2892, i32 %sub4578, i32 %2894, i32 %2895)
  switch i32 %call4581, label %sw.default.4604 [
    i32 1, label %sw.bb.4582
  ]

sw.bb.4582:                                       ; preds = %if.end.4577
  %2896 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool4583 = icmp ne i8 %2896, 0
  br i1 %tobool4583, label %if.then.4584, label %if.else.4585

if.then.4584:                                     ; preds = %sw.bb.4582
  %2897 = load i8*, i8** %tempfile, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.242, i32 0, i32 0), i8* %2897)
  br label %if.end.4586

if.else.4585:                                     ; preds = %sw.bb.4582
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.243, i32 0, i32 0))
  br label %if.end.4586

if.end.4586:                                      ; preds = %if.else.4585, %if.then.4584
  %2898 = load i8*, i8** %src, align 8
  call void (i8*, ...) @cli_multifree(i8* %2898, i32 0)
  %2899 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %2900 = bitcast %struct.cli_exe_section* %2899 to i8*
  call void @free(i8* %2900) #3
  %2901 = load i32, i32* %ndesc, align 4
  %call4587 = call i32 @fsync(i32 %2901)
  %2902 = load i32, i32* %ndesc, align 4
  %call4588 = call i64 @lseek(i32 %2902, i64 0, i32 0) #3
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.138, i32 0, i32 0))
  %2903 = load i32, i32* %ndesc, align 4
  %2904 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call4589 = call i32 @cli_magic_scandesc(i32 %2903, %struct.cli_ctx* %2904)
  %cmp4590 = icmp eq i32 %call4589, 1
  br i1 %cmp4590, label %if.then.4592, label %if.end.4598

if.then.4592:                                     ; preds = %if.end.4586
  %2905 = load i32, i32* %ndesc, align 4
  %call4593 = call i32 @close(i32 %2905)
  %2906 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool4594 = icmp ne i8 %2906, 0
  br i1 %tobool4594, label %if.end.4597, label %if.then.4595

if.then.4595:                                     ; preds = %if.then.4592
  %2907 = load i8*, i8** %tempfile, align 8
  %call4596 = call i32 @unlink(i8* %2907) #3
  br label %if.end.4597

if.end.4597:                                      ; preds = %if.then.4595, %if.then.4592
  %2908 = load i8*, i8** %tempfile, align 8
  call void @free(i8* %2908) #3
  store i32 1, i32* %retval
  br label %return

if.end.4598:                                      ; preds = %if.end.4586
  %2909 = load i32, i32* %ndesc, align 4
  %call4599 = call i32 @close(i32 %2909)
  %2910 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool4600 = icmp ne i8 %2910, 0
  br i1 %tobool4600, label %if.end.4603, label %if.then.4601

if.then.4601:                                     ; preds = %if.end.4598
  %2911 = load i8*, i8** %tempfile, align 8
  %call4602 = call i32 @unlink(i8* %2911) #3
  br label %if.end.4603

if.end.4603:                                      ; preds = %if.then.4601, %if.end.4598
  %2912 = load i8*, i8** %tempfile, align 8
  call void @free(i8* %2912) #3
  store i32 0, i32* %retval
  br label %return

sw.default.4604:                                  ; preds = %if.end.4577
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.244, i32 0, i32 0))
  %2913 = load i32, i32* %ndesc, align 4
  %call4605 = call i32 @close(i32 %2913)
  %2914 = load i8*, i8** %tempfile, align 8
  %call4606 = call i32 @unlink(i8* %2914) #3
  %2915 = load i8*, i8** %src, align 8
  call void (i8*, ...) @cli_multifree(i8* %2915, i32 0)
  %2916 = load i8*, i8** %tempfile, align 8
  call void @free(i8* %2916) #3
  br label %sw.epilog.4607

sw.epilog.4607:                                   ; preds = %sw.default.4604
  br label %while.end.4608

while.end.4608:                                   ; preds = %sw.epilog.4607, %if.then.4567, %if.then.4447, %if.then.4418, %land.end.4409
  br label %while.cond.4609

while.cond.4609:                                  ; preds = %while.end.4608
  %2917 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %dconf4610 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %2917, i32 0, i32 9
  %2918 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf4610, align 8
  %pe4611 = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %2918, i32 0, i32 0
  %2919 = load i32, i32* %pe4611, align 4
  %and4612 = and i32 %2919, 4096
  %tobool4613 = icmp ne i32 %and4612, 0
  br i1 %tobool4613, label %while.body.4614, label %while.end.4816

while.body.4614:                                  ; preds = %while.cond.4609
  %2920 = load i32, i32* %vep, align 4
  store i32 %2920, i32* %eprva, align 4
  %2921 = load i32, i32* %ep, align 4
  store i32 %2921, i32* %rep, align 4
  %arraydecay4618 = getelementptr inbounds [4096 x i8], [4096 x i8]* %epbuff, i32 0, i32 0
  store i8* %arraydecay4618, i8** %src4617, align 8
  %arraydecay4620 = getelementptr inbounds [4096 x i8], [4096 x i8]* %epbuff, i32 0, i32 0
  %2922 = load i8, i8* %arraydecay4620, align 1
  %conv4621 = sext i8 %2922 to i32
  %cmp4622 = icmp eq i32 %conv4621, -23
  br i1 %cmp4622, label %if.then.4624, label %if.end.4648

if.then.4624:                                     ; preds = %while.body.4614
  %arraydecay4625 = getelementptr inbounds [4096 x i8], [4096 x i8]* %epbuff, i32 0, i32 0
  %add.ptr4626 = getelementptr inbounds i8, i8* %arraydecay4625, i64 1
  %2923 = bitcast i8* %add.ptr4626 to i32*
  %2924 = load i32, i32* %2923, align 4
  %2925 = load i32, i32* %vep, align 4
  %add4627 = add i32 %2924, %2925
  %add4628 = add i32 %add4627, 5
  store i32 %add4628, i32* %eprva, align 4
  %2926 = load i32, i32* %eprva, align 4
  %2927 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %2928 = load i16, i16* %nsections, align 2
  %2929 = load i64, i64* %fsize, align 8
  %2930 = load i32, i32* %hdr_size, align 4
  %call4629 = call i32 @cli_rawaddr(i32 %2926, %struct.cli_exe_section* %2927, i16 zeroext %2928, i32* %err, i64 %2929, i32 %2930)
  store i32 %call4629, i32* %rep, align 4
  %tobool4630 = icmp ne i32 %call4629, 0
  br i1 %tobool4630, label %if.end.4634, label %land.lhs.true.4631

land.lhs.true.4631:                               ; preds = %if.then.4624
  %2931 = load i32, i32* %err, align 4
  %tobool4632 = icmp ne i32 %2931, 0
  br i1 %tobool4632, label %if.then.4633, label %if.end.4634

if.then.4633:                                     ; preds = %land.lhs.true.4631
  br label %while.end.4816

if.end.4634:                                      ; preds = %land.lhs.true.4631, %if.then.4624
  %2932 = load i32, i32* %desc.addr, align 4
  %2933 = load i32, i32* %rep, align 4
  %conv4635 = zext i32 %2933 to i64
  %call4636 = call i64 @lseek(i32 %2932, i64 %conv4635, i32 0) #3
  %cmp4637 = icmp eq i64 %call4636, -1
  br i1 %cmp4637, label %if.then.4639, label %if.end.4640

if.then.4639:                                     ; preds = %if.end.4634
  br label %while.end.4816

if.end.4640:                                      ; preds = %if.end.4634
  %2934 = load i32, i32* %desc.addr, align 4
  %arraydecay4641 = getelementptr inbounds [24 x i8], [24 x i8]* %nbuff, i32 0, i32 0
  %call4642 = call i32 @cli_readn(i32 %2934, i8* %arraydecay4641, i32 24)
  %cmp4643 = icmp ne i32 %call4642, 24
  br i1 %cmp4643, label %if.then.4645, label %if.end.4646

if.then.4645:                                     ; preds = %if.end.4640
  br label %while.end.4816

if.end.4646:                                      ; preds = %if.end.4640
  %arraydecay4647 = getelementptr inbounds [24 x i8], [24 x i8]* %nbuff, i32 0, i32 0
  store i8* %arraydecay4647, i8** %src4617, align 8
  br label %if.end.4648

if.end.4648:                                      ; preds = %if.end.4646, %while.body.4614
  %2935 = load i8*, i8** %src4617, align 8
  %call4649 = call i32 @memcmp(i8* %2935, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.245, i32 0, i32 0), i64 13) #5
  %tobool4650 = icmp ne i32 %call4649, 0
  br i1 %tobool4650, label %if.then.4651, label %if.end.4652

if.then.4651:                                     ; preds = %if.end.4648
  br label %while.end.4816

if.end.4652:                                      ; preds = %if.end.4648
  %2936 = load i8*, i8** %src4617, align 8
  %add.ptr4653 = getelementptr inbounds i8, i8* %2936, i64 17
  %2937 = bitcast i8* %add.ptr4653 to i32*
  %2938 = load i32, i32* %2937, align 4
  %sub4654 = sub nsw i32 84, %2938
  store i32 %sub4654, i32* %nowinldr, align 4
  %2939 = load i32, i32* %nowinldr, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.246, i32 0, i32 0), i32 %2939)
  %2940 = load i32, i32* %desc.addr, align 4
  %2941 = load i32, i32* %rep, align 4
  %2942 = load i32, i32* %nowinldr, align 4
  %sub4655 = sub i32 %2941, %2942
  %conv4656 = zext i32 %sub4655 to i64
  %call4657 = call i64 @lseek(i32 %2940, i64 %conv4656, i32 0) #3
  %cmp4658 = icmp eq i64 %call4657, -1
  br i1 %cmp4658, label %if.then.4660, label %if.end.4661

if.then.4660:                                     ; preds = %if.end.4652
  br label %while.end.4816

if.end.4661:                                      ; preds = %if.end.4652
  %2943 = load i32, i32* %desc.addr, align 4
  %arraydecay4662 = getelementptr inbounds [24 x i8], [24 x i8]* %nbuff, i32 0, i32 0
  %call4663 = call i32 @cli_readn(i32 %2943, i8* %arraydecay4662, i32 4)
  %cmp4664 = icmp ne i32 %call4663, 4
  br i1 %cmp4664, label %if.then.4666, label %if.end.4667

if.then.4666:                                     ; preds = %if.end.4661
  br label %while.end.4816

if.end.4667:                                      ; preds = %if.end.4661
  %2944 = load i32, i32* %rep, align 4
  %arraydecay4668 = getelementptr inbounds [24 x i8], [24 x i8]* %nbuff, i32 0, i32 0
  %2945 = bitcast i8* %arraydecay4668 to i32*
  %2946 = load i32, i32* %2945, align 4
  %add4669 = add i32 %2944, %2946
  store i32 %add4669, i32* %start_of_stuff, align 4
  %2947 = load i32, i32* %desc.addr, align 4
  %2948 = load i32, i32* %start_of_stuff, align 4
  %conv4670 = zext i32 %2948 to i64
  %call4671 = call i64 @lseek(i32 %2947, i64 %conv4670, i32 0) #3
  %cmp4672 = icmp eq i64 %call4671, -1
  br i1 %cmp4672, label %if.then.4674, label %if.end.4675

if.then.4674:                                     ; preds = %if.end.4667
  br label %while.end.4816

if.end.4675:                                      ; preds = %if.end.4667
  %2949 = load i32, i32* %desc.addr, align 4
  %arraydecay4676 = getelementptr inbounds [24 x i8], [24 x i8]* %nbuff, i32 0, i32 0
  %call4677 = call i32 @cli_readn(i32 %2949, i8* %arraydecay4676, i32 20)
  %cmp4678 = icmp ne i32 %call4677, 20
  br i1 %cmp4678, label %if.then.4680, label %if.end.4681

if.then.4680:                                     ; preds = %if.end.4675
  br label %while.end.4816

if.end.4681:                                      ; preds = %if.end.4675
  %arraydecay4682 = getelementptr inbounds [24 x i8], [24 x i8]* %nbuff, i32 0, i32 0
  store i8* %arraydecay4682, i8** %src4617, align 8
  %arraydecay4683 = getelementptr inbounds [24 x i8], [24 x i8]* %nbuff, i32 0, i32 0
  %2950 = bitcast i8* %arraydecay4683 to i32*
  %2951 = load i32, i32* %2950, align 4
  %tobool4684 = icmp ne i32 %2951, 0
  br i1 %tobool4684, label %if.end.4688, label %if.then.4685

if.then.4685:                                     ; preds = %if.end.4681
  %2952 = load i32, i32* %start_of_stuff, align 4
  %add4686 = add i32 %2952, 4
  store i32 %add4686, i32* %start_of_stuff, align 4
  %2953 = load i8*, i8** %src4617, align 8
  %add.ptr4687 = getelementptr inbounds i8, i8* %2953, i64 4
  store i8* %add.ptr4687, i8** %src4617, align 8
  br label %if.end.4688

if.end.4688:                                      ; preds = %if.then.4685, %if.end.4681
  %2954 = load i8*, i8** %src4617, align 8
  %add.ptr4689 = getelementptr inbounds i8, i8* %2954, i64 5
  %2955 = bitcast i8* %add.ptr4689 to i32*
  %2956 = load i32, i32* %2955, align 4
  %or4690 = or i32 %2956, 255
  store i32 %or4690, i32* %ssize4615, align 4
  %2957 = load i8*, i8** %src4617, align 8
  %add.ptr4691 = getelementptr inbounds i8, i8* %2957, i64 9
  %2958 = bitcast i8* %add.ptr4691 to i32*
  %2959 = load i32, i32* %2958, align 4
  store i32 %2959, i32* %dsize4616, align 4
  %2960 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits4692 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %2960, i32 0, i32 4
  %2961 = load %struct.cl_limits*, %struct.cl_limits** %limits4692, align 8
  %tobool4693 = icmp ne %struct.cl_limits* %2961, null
  br i1 %tobool4693, label %land.lhs.true.4694, label %if.end.4725

land.lhs.true.4694:                               ; preds = %if.end.4688
  %2962 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits4695 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %2962, i32 0, i32 4
  %2963 = load %struct.cl_limits*, %struct.cl_limits** %limits4695, align 8
  %maxfilesize4696 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %2963, i32 0, i32 5
  %2964 = load i64, i64* %maxfilesize4696, align 8
  %tobool4697 = icmp ne i64 %2964, 0
  br i1 %tobool4697, label %land.lhs.true.4698, label %if.end.4725

land.lhs.true.4698:                               ; preds = %land.lhs.true.4694
  %2965 = load i32, i32* %ssize4615, align 4
  %2966 = load i32, i32* %dsize4616, align 4
  %cmp4699 = icmp ugt i32 %2965, %2966
  br i1 %cmp4699, label %cond.true.4701, label %cond.false.4702

cond.true.4701:                                   ; preds = %land.lhs.true.4698
  %2967 = load i32, i32* %ssize4615, align 4
  br label %cond.end.4703

cond.false.4702:                                  ; preds = %land.lhs.true.4698
  %2968 = load i32, i32* %dsize4616, align 4
  br label %cond.end.4703

cond.end.4703:                                    ; preds = %cond.false.4702, %cond.true.4701
  %cond4704 = phi i32 [ %2967, %cond.true.4701 ], [ %2968, %cond.false.4702 ]
  %conv4705 = zext i32 %cond4704 to i64
  %2969 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits4706 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %2969, i32 0, i32 4
  %2970 = load %struct.cl_limits*, %struct.cl_limits** %limits4706, align 8
  %maxfilesize4707 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %2970, i32 0, i32 5
  %2971 = load i64, i64* %maxfilesize4707, align 8
  %cmp4708 = icmp ugt i64 %conv4705, %2971
  br i1 %cmp4708, label %if.then.4710, label %if.end.4725

if.then.4710:                                     ; preds = %cond.end.4703
  %2972 = load i32, i32* %ssize4615, align 4
  %2973 = load i32, i32* %dsize4616, align 4
  %cmp4711 = icmp ugt i32 %2972, %2973
  br i1 %cmp4711, label %cond.true.4713, label %cond.false.4714

cond.true.4713:                                   ; preds = %if.then.4710
  %2974 = load i32, i32* %ssize4615, align 4
  br label %cond.end.4715

cond.false.4714:                                  ; preds = %if.then.4710
  %2975 = load i32, i32* %dsize4616, align 4
  br label %cond.end.4715

cond.end.4715:                                    ; preds = %cond.false.4714, %cond.true.4713
  %cond4716 = phi i32 [ %2974, %cond.true.4713 ], [ %2975, %cond.false.4714 ]
  %2976 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits4717 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %2976, i32 0, i32 4
  %2977 = load %struct.cl_limits*, %struct.cl_limits** %limits4717, align 8
  %maxfilesize4718 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %2977, i32 0, i32 5
  %2978 = load i64, i64* %maxfilesize4718, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.247, i32 0, i32 0), i32 %cond4716, i64 %2978)
  %2979 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %2980 = bitcast %struct.cli_exe_section* %2979 to i8*
  call void @free(i8* %2980) #3
  %2981 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options4719 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %2981, i32 0, i32 5
  %2982 = load i32, i32* %options4719, align 4
  %and4720 = and i32 %2982, 256
  %tobool4721 = icmp ne i32 %and4720, 0
  br i1 %tobool4721, label %if.then.4722, label %if.else.4724

if.then.4722:                                     ; preds = %cond.end.4715
  %2983 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname4723 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %2983, i32 0, i32 0
  %2984 = load i8**, i8*** %virname4723, align 8
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.248, i32 0, i32 0), i8** %2984, align 8
  store i32 1, i32* %retval
  br label %return

if.else.4724:                                     ; preds = %cond.end.4715
  store i32 0, i32* %retval
  br label %return

if.end.4725:                                      ; preds = %cond.end.4703, %land.lhs.true.4694, %if.end.4688
  %2985 = load i32, i32* %ssize4615, align 4
  %tobool4726 = icmp ne i32 %2985, 0
  br i1 %tobool4726, label %lor.lhs.false.4727, label %if.then.4734

lor.lhs.false.4727:                               ; preds = %if.end.4725
  %2986 = load i32, i32* %dsize4616, align 4
  %tobool4728 = icmp ne i32 %2986, 0
  br i1 %tobool4728, label %lor.lhs.false.4729, label %if.then.4734

lor.lhs.false.4729:                               ; preds = %lor.lhs.false.4727
  %2987 = load i32, i32* %dsize4616, align 4
  %2988 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx4730 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %2988, i64 0
  %vsz4731 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx4730, i32 0, i32 1
  %2989 = load i32, i32* %vsz4731, align 4
  %cmp4732 = icmp ne i32 %2987, %2989
  br i1 %cmp4732, label %if.then.4734, label %if.end.4735

if.then.4734:                                     ; preds = %lor.lhs.false.4729, %lor.lhs.false.4727, %if.end.4725
  br label %while.end.4816

if.end.4735:                                      ; preds = %lor.lhs.false.4729
  %2990 = load i32, i32* %desc.addr, align 4
  %2991 = load i32, i32* %start_of_stuff, align 4
  %conv4736 = zext i32 %2991 to i64
  %call4737 = call i64 @lseek(i32 %2990, i64 %conv4736, i32 0) #3
  %cmp4738 = icmp eq i64 %call4737, -1
  br i1 %cmp4738, label %if.then.4740, label %if.end.4741

if.then.4740:                                     ; preds = %if.end.4735
  br label %while.end.4816

if.end.4741:                                      ; preds = %if.end.4735
  %2992 = load i32, i32* %dsize4616, align 4
  %conv4742 = zext i32 %2992 to i64
  %call4743 = call i8* @cli_malloc(i64 %conv4742)
  store i8* %call4743, i8** %dest4619, align 8
  %tobool4744 = icmp ne i8* %call4743, null
  br i1 %tobool4744, label %if.end.4746, label %if.then.4745

if.then.4745:                                     ; preds = %if.end.4741
  br label %while.end.4816

if.end.4746:                                      ; preds = %if.end.4741
  %2993 = load i32, i32* %ssize4615, align 4
  %conv4747 = zext i32 %2993 to i64
  %call4748 = call i8* @cli_malloc(i64 %conv4747)
  store i8* %call4748, i8** %src4617, align 8
  %tobool4749 = icmp ne i8* %call4748, null
  br i1 %tobool4749, label %if.end.4751, label %if.then.4750

if.then.4750:                                     ; preds = %if.end.4746
  %2994 = load i8*, i8** %dest4619, align 8
  call void @free(i8* %2994) #3
  br label %while.end.4816

if.end.4751:                                      ; preds = %if.end.4746
  %2995 = load i32, i32* %desc.addr, align 4
  %2996 = load i8*, i8** %src4617, align 8
  %2997 = load i32, i32* %ssize4615, align 4
  %call4752 = call i32 @cli_readn(i32 %2995, i8* %2996, i32 %2997)
  %2998 = load i32, i32* %eprva, align 4
  %add4753 = add i32 %2998, 634
  store i32 %add4753, i32* %eprva, align 4
  %2999 = load i32, i32* %eprva, align 4
  %3000 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %3001 = load i16, i16* %nsections, align 2
  %3002 = load i64, i64* %fsize, align 8
  %3003 = load i32, i32* %hdr_size, align 4
  %call4754 = call i32 @cli_rawaddr(i32 %2999, %struct.cli_exe_section* %3000, i16 zeroext %3001, i32* %err, i64 %3002, i32 %3003)
  store i32 %call4754, i32* %rep, align 4
  %tobool4755 = icmp ne i32 %call4754, 0
  br i1 %tobool4755, label %if.end.4759, label %land.lhs.true.4756

land.lhs.true.4756:                               ; preds = %if.end.4751
  %3004 = load i32, i32* %err, align 4
  %tobool4757 = icmp ne i32 %3004, 0
  br i1 %tobool4757, label %if.then.4758, label %if.end.4759

if.then.4758:                                     ; preds = %land.lhs.true.4756
  %3005 = load i8*, i8** %dest4619, align 8
  call void @free(i8* %3005) #3
  %3006 = load i8*, i8** %src4617, align 8
  call void @free(i8* %3006) #3
  br label %while.end.4816

if.end.4759:                                      ; preds = %land.lhs.true.4756, %if.end.4751
  %3007 = load i32, i32* %desc.addr, align 4
  %3008 = load i32, i32* %rep, align 4
  %conv4760 = zext i32 %3008 to i64
  %call4761 = call i64 @lseek(i32 %3007, i64 %conv4760, i32 0) #3
  %cmp4762 = icmp eq i64 %call4761, -1
  br i1 %cmp4762, label %if.then.4764, label %if.end.4765

if.then.4764:                                     ; preds = %if.end.4759
  %3009 = load i8*, i8** %dest4619, align 8
  call void @free(i8* %3009) #3
  %3010 = load i8*, i8** %src4617, align 8
  call void @free(i8* %3010) #3
  br label %while.end.4816

if.end.4765:                                      ; preds = %if.end.4759
  %3011 = load i32, i32* %desc.addr, align 4
  %arraydecay4766 = getelementptr inbounds [24 x i8], [24 x i8]* %nbuff, i32 0, i32 0
  %call4767 = call i32 @cli_readn(i32 %3011, i8* %arraydecay4766, i32 5)
  %cmp4768 = icmp ne i32 %call4767, 5
  br i1 %cmp4768, label %if.then.4770, label %if.end.4771

if.then.4770:                                     ; preds = %if.end.4765
  %3012 = load i8*, i8** %dest4619, align 8
  call void @free(i8* %3012) #3
  %3013 = load i8*, i8** %src4617, align 8
  call void @free(i8* %3013) #3
  br label %while.end.4816

if.end.4771:                                      ; preds = %if.end.4765
  %3014 = load i32, i32* %eprva, align 4
  %add4772 = add i32 %3014, 5
  %arraydecay4773 = getelementptr inbounds [24 x i8], [24 x i8]* %nbuff, i32 0, i32 0
  %add.ptr4774 = getelementptr inbounds i8, i8* %arraydecay4773, i64 1
  %3015 = bitcast i8* %add.ptr4774 to i32*
  %3016 = load i32, i32* %3015, align 4
  %add4775 = add i32 %add4772, %3016
  store i32 %add4775, i32* %eprva, align 4
  %3017 = load i32, i32* %eprva, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.249, i32 0, i32 0), i32 %3017)
  %call4776 = call i8* @cli_gentemp(i8* null)
  store i8* %call4776, i8** %tempfile, align 8
  %tobool4777 = icmp ne i8* %call4776, null
  br i1 %tobool4777, label %if.end.4779, label %if.then.4778

if.then.4778:                                     ; preds = %if.end.4771
  %3018 = load i8*, i8** %src4617, align 8
  %3019 = load i8*, i8** %dest4619, align 8
  %3020 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  call void (i8*, ...) @cli_multifree(i8* %3018, i8* %3019, %struct.cli_exe_section* %3020, i32 0)
  store i32 -114, i32* %retval
  br label %return

if.end.4779:                                      ; preds = %if.end.4771
  %3021 = load i8*, i8** %tempfile, align 8
  %call4780 = call i32 (i8*, i32, ...) @open(i8* %3021, i32 578, i32 448)
  store i32 %call4780, i32* %ndesc, align 4
  %cmp4781 = icmp slt i32 %call4780, 0
  br i1 %cmp4781, label %if.then.4783, label %if.end.4784

if.then.4783:                                     ; preds = %if.end.4779
  %3022 = load i8*, i8** %tempfile, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.250, i32 0, i32 0), i8* %3022)
  %3023 = load i8*, i8** %tempfile, align 8
  call void @free(i8* %3023) #3
  %3024 = load i8*, i8** %src4617, align 8
  %3025 = load i8*, i8** %dest4619, align 8
  %3026 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  call void (i8*, ...) @cli_multifree(i8* %3024, i8* %3025, %struct.cli_exe_section* %3026, i32 0)
  store i32 -123, i32* %retval
  br label %return

if.end.4784:                                      ; preds = %if.end.4779
  %3027 = load i8*, i8** %src4617, align 8
  %3028 = load i8*, i8** %dest4619, align 8
  %3029 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %3030 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %arrayidx4785 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %3030, i64 0
  %rva4786 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx4785, i32 0, i32 0
  %3031 = load i32, i32* %rva4786, align 4
  %opt324787 = bitcast %union.anon* %pe_opt to %struct.pe_image_optional_hdr32*
  %ImageBase4788 = getelementptr inbounds %struct.pe_image_optional_hdr32, %struct.pe_image_optional_hdr32* %opt324787, i32 0, i32 9
  %3032 = load i32, i32* %ImageBase4788, align 4
  %3033 = load i32, i32* %eprva, align 4
  %3034 = load i32, i32* %ndesc, align 4
  %call4789 = call i32 @unspack(i8* %3027, i8* %3028, %struct.cli_ctx* %3029, i32 %3031, i32 %3032, i32 %3033, i32 %3034)
  switch i32 %call4789, label %sw.default.4812 [
    i32 0, label %sw.bb.4790
  ]

sw.bb.4790:                                       ; preds = %if.end.4784
  %3035 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool4791 = icmp ne i8 %3035, 0
  br i1 %tobool4791, label %if.then.4792, label %if.else.4793

if.then.4792:                                     ; preds = %sw.bb.4790
  %3036 = load i8*, i8** %tempfile, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.251, i32 0, i32 0), i8* %3036)
  br label %if.end.4794

if.else.4793:                                     ; preds = %sw.bb.4790
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.252, i32 0, i32 0))
  br label %if.end.4794

if.end.4794:                                      ; preds = %if.else.4793, %if.then.4792
  %3037 = load i8*, i8** %src4617, align 8
  %3038 = load i8*, i8** %dest4619, align 8
  call void (i8*, ...) @cli_multifree(i8* %3037, i8* %3038, i32 0)
  %3039 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %3040 = bitcast %struct.cli_exe_section* %3039 to i8*
  call void @free(i8* %3040) #3
  %3041 = load i32, i32* %ndesc, align 4
  %call4795 = call i32 @fsync(i32 %3041)
  %3042 = load i32, i32* %ndesc, align 4
  %call4796 = call i64 @lseek(i32 %3042, i64 0, i32 0) #3
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.138, i32 0, i32 0))
  %3043 = load i32, i32* %ndesc, align 4
  %3044 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call4797 = call i32 @cli_magic_scandesc(i32 %3043, %struct.cli_ctx* %3044)
  %cmp4798 = icmp eq i32 %call4797, 1
  br i1 %cmp4798, label %if.then.4800, label %if.end.4806

if.then.4800:                                     ; preds = %if.end.4794
  %3045 = load i32, i32* %ndesc, align 4
  %call4801 = call i32 @close(i32 %3045)
  %3046 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool4802 = icmp ne i8 %3046, 0
  br i1 %tobool4802, label %if.end.4805, label %if.then.4803

if.then.4803:                                     ; preds = %if.then.4800
  %3047 = load i8*, i8** %tempfile, align 8
  %call4804 = call i32 @unlink(i8* %3047) #3
  br label %if.end.4805

if.end.4805:                                      ; preds = %if.then.4803, %if.then.4800
  %3048 = load i8*, i8** %tempfile, align 8
  call void @free(i8* %3048) #3
  store i32 1, i32* %retval
  br label %return

if.end.4806:                                      ; preds = %if.end.4794
  %3049 = load i32, i32* %ndesc, align 4
  %call4807 = call i32 @close(i32 %3049)
  %3050 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool4808 = icmp ne i8 %3050, 0
  br i1 %tobool4808, label %if.end.4811, label %if.then.4809

if.then.4809:                                     ; preds = %if.end.4806
  %3051 = load i8*, i8** %tempfile, align 8
  %call4810 = call i32 @unlink(i8* %3051) #3
  br label %if.end.4811

if.end.4811:                                      ; preds = %if.then.4809, %if.end.4806
  %3052 = load i8*, i8** %tempfile, align 8
  call void @free(i8* %3052) #3
  store i32 0, i32* %retval
  br label %return

sw.default.4812:                                  ; preds = %if.end.4784
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.253, i32 0, i32 0))
  %3053 = load i32, i32* %ndesc, align 4
  %call4813 = call i32 @close(i32 %3053)
  %3054 = load i8*, i8** %tempfile, align 8
  %call4814 = call i32 @unlink(i8* %3054) #3
  %3055 = load i8*, i8** %src4617, align 8
  %3056 = load i8*, i8** %dest4619, align 8
  call void (i8*, ...) @cli_multifree(i8* %3055, i8* %3056, i32 0)
  %3057 = load i8*, i8** %tempfile, align 8
  call void @free(i8* %3057) #3
  br label %sw.epilog.4815

sw.epilog.4815:                                   ; preds = %sw.default.4812
  br label %while.end.4816

while.end.4816:                                   ; preds = %sw.epilog.4815, %if.then.4770, %if.then.4764, %if.then.4758, %if.then.4750, %if.then.4745, %if.then.4740, %if.then.4734, %if.then.4680, %if.then.4674, %if.then.4666, %if.then.4660, %if.then.4651, %if.then.4645, %if.then.4639, %if.then.4633, %while.cond.4609
  %3058 = load %struct.cli_exe_section*, %struct.cli_exe_section** %exe_sections, align 8
  %3059 = bitcast %struct.cli_exe_section* %3058 to i8*
  call void @free(i8* %3059) #3
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end.4816, %if.end.4811, %if.end.4805, %if.then.4783, %if.then.4778, %if.else.4724, %if.then.4722, %if.end.4603, %if.end.4597, %if.then.4576, %if.then.4571, %if.then.4474, %if.else.4469, %if.then.4467, %if.end.4384, %if.then.4367, %if.then.4360, %if.then.4355, %if.then.4330, %if.then.4301, %if.then.4286, %if.then.4249, %if.then.4241, %if.else.4235, %if.then.4233, %if.end.4126, %if.end.4120, %if.then.4099, %if.then.4094, %if.then.4090, %if.then.4082, %if.then.4034, %if.end.4027, %if.end.4021, %if.then.4000, %if.then.3995, %if.then.3991, %if.then.3983, %if.else.3978, %if.then.3976, %if.end.3913, %if.end.3907, %if.then.3875, %if.then.3870, %if.then.3862, %if.then.3828, %if.else.3822, %if.then.3820, %if.then.3743, %if.end.3739, %if.end.3733, %if.then.3717, %if.then.3710, %if.then.3705, %if.then.3488, %if.then.3477, %if.then.3470, %if.then.3464, %if.else.3454, %if.then.3452, %if.end.3394, %if.end.3388, %if.then.3353, %if.then.3348, %if.then.3330, %if.then.3324, %if.then.3313, %if.then.3277, %if.then.3212, %if.then.3207, %if.else.3201, %if.then.3199, %if.then.3172, %if.else.3165, %if.then.3163, %if.end.3003, %if.end.2997, %if.then.2962, %if.then.2957, %if.then.2948, %if.then.2942, %if.then.2931, %if.then.2905, %if.then.2810, %if.then.2805, %if.else.2799, %if.then.2797, %if.then.2759, %if.else.2752, %if.then.2750, %if.end.2680, %if.end.2674, %if.then.2641, %if.then.2636, %if.then.2632, %if.then.2418, %if.then.2407, %if.then.2353, %if.else.2346, %if.then.2344, %if.end.2281, %if.end.2275, %if.then.2252, %if.then.2247, %if.then.2243, %if.then.2209, %if.then.2201, %if.else.2157, %if.then.2155, %if.then.1940, %if.end.1931, %if.end.1925, %if.then.1903, %if.then.1898, %if.then.1833, %if.then.1796, %if.else.1790, %if.then.1788, %if.else.1736, %if.then.1734, %if.then.1697, %if.then.1649, %if.then.1569, %if.then.1494, %if.then.1414, %if.then.1405, %if.then.1341, %if.then.1300, %if.then.1214, %if.then.995, %if.then.947, %if.end.944, %if.end.943, %if.end.896, %if.end.860, %if.then.836, %if.end.759, %if.end.758, %if.end.733, %if.end.423, %if.end.422, %if.then.385, %if.then.380, %if.then.375, %if.end.370, %if.end.336, %if.end.240, %if.end.239, %if.end.183, %if.end.166, %if.end.165, %if.end.145, %if.end.144, %if.end.129, %if.end.128, %if.end.109, %if.end.103, %if.then.43, %if.then.39, %if.then.33, %if.then.27, %if.end.24, %if.end.23, %if.then.10, %if.then.2, %if.then
  %3060 = load i32, i32* %retval
  ret i32 %3060
}

declare void @cli_errmsg(i8*, ...) #1

declare i32 @cli_readn(i32, i8*, i32) #1

declare void @cli_dbgmsg(i8*, ...) #1

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) #2

declare void @cli_warnmsg(i8*, ...) #1

; Function Attrs: nounwind
declare i8* @ctime(i64*) #2

; Function Attrs: nounwind
declare i32 @fstat(i32, %struct.stat*) #2

declare i8* @cli_calloc(i64, i64) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define internal i32 @cli_md5sect(i32 %fd, %struct.cli_exe_section* %s, i8* %digest) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %s.addr = alloca %struct.cli_exe_section*, align 8
  %digest.addr = alloca i8*, align 8
  %hashme = alloca i8*, align 8
  %md5 = alloca %struct.cli_md5_ctx, align 4
  store i32 %fd, i32* %fd.addr, align 4
  store %struct.cli_exe_section* %s, %struct.cli_exe_section** %s.addr, align 8
  store i8* %digest, i8** %digest.addr, align 8
  %0 = load %struct.cli_exe_section*, %struct.cli_exe_section** %s.addr, align 8
  %rsz = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %0, i32 0, i32 3
  %1 = load i32, i32* %rsz, align 4
  %cmp = icmp ugt i32 %1, 184549376
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.256, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %fd.addr, align 4
  %3 = load %struct.cli_exe_section*, %struct.cli_exe_section** %s.addr, align 8
  %call = call i64 @cli_seeksect(i32 %2, %struct.cli_exe_section* %3)
  %tobool = icmp ne i64 %call, 0
  br i1 %tobool, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %4 = load %struct.cli_exe_section*, %struct.cli_exe_section** %s.addr, align 8
  %rsz3 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %4, i32 0, i32 3
  %5 = load i32, i32* %rsz3, align 4
  %conv = zext i32 %5 to i64
  %call4 = call i8* @cli_malloc(i64 %conv)
  store i8* %call4, i8** %hashme, align 8
  %tobool5 = icmp ne i8* %call4, null
  br i1 %tobool5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %if.end.2
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.257, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end.2
  %6 = load i32, i32* %fd.addr, align 4
  %7 = load i8*, i8** %hashme, align 8
  %8 = load %struct.cli_exe_section*, %struct.cli_exe_section** %s.addr, align 8
  %rsz8 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %8, i32 0, i32 3
  %9 = load i32, i32* %rsz8, align 4
  %call9 = call i32 @cli_readn(i32 %6, i8* %7, i32 %9)
  %10 = load %struct.cli_exe_section*, %struct.cli_exe_section** %s.addr, align 8
  %rsz10 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %10, i32 0, i32 3
  %11 = load i32, i32* %rsz10, align 4
  %cmp11 = icmp ne i32 %call9, %11
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.7
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.258, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.end.7
  call void @cli_md5_init(%struct.cli_md5_ctx* %md5)
  %12 = load i8*, i8** %hashme, align 8
  %13 = load %struct.cli_exe_section*, %struct.cli_exe_section** %s.addr, align 8
  %rsz15 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %13, i32 0, i32 3
  %14 = load i32, i32* %rsz15, align 4
  %conv16 = zext i32 %14 to i64
  call void @cli_md5_update(%struct.cli_md5_ctx* %md5, i8* %12, i64 %conv16)
  %15 = load i8*, i8** %hashme, align 8
  call void @free(i8* %15) #3
  %16 = load i8*, i8** %digest.addr, align 8
  call void @cli_md5_final(i8* %16, %struct.cli_md5_ctx* %md5)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then.13, %if.then.6, %if.then.1, %if.then
  %17 = load i32, i32* %retval
  ret i32 %17
}

declare i32 @cli_bm_scanbuff(i8*, i32, i8**, %struct.cli_matcher*, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @cli_rawaddr(i32 %rva, %struct.cli_exe_section* %shp, i16 zeroext %nos, i32* %err, i64 %fsize, i32 %hdr_size) #0 {
entry:
  %retval = alloca i32, align 4
  %rva.addr = alloca i32, align 4
  %shp.addr = alloca %struct.cli_exe_section*, align 8
  %nos.addr = alloca i16, align 2
  %err.addr = alloca i32*, align 8
  %fsize.addr = alloca i64, align 8
  %hdr_size.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %found = alloca i32, align 4
  %ret = alloca i32, align 4
  store i32 %rva, i32* %rva.addr, align 4
  store %struct.cli_exe_section* %shp, %struct.cli_exe_section** %shp.addr, align 8
  store i16 %nos, i16* %nos.addr, align 2
  store i32* %err, i32** %err.addr, align 8
  store i64 %fsize, i64* %fsize.addr, align 8
  store i32 %hdr_size, i32* %hdr_size.addr, align 4
  store i32 0, i32* %found, align 4
  %0 = load i32, i32* %rva.addr, align 4
  %1 = load i32, i32* %hdr_size.addr, align 4
  %cmp = icmp ult i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %rva.addr, align 4
  %conv = zext i32 %2 to i64
  %3 = load i64, i64* %fsize.addr, align 8
  %cmp1 = icmp uge i64 %conv, %3
  br i1 %cmp1, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %4 = load i32*, i32** %err.addr, align 8
  store i32 1, i32* %4, align 4
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %5 = load i32*, i32** %err.addr, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %rva.addr, align 4
  store i32 %6, i32* %retval
  br label %return

if.end.4:                                         ; preds = %entry
  %7 = load i16, i16* %nos.addr, align 2
  %conv5 = zext i16 %7 to i32
  %sub = sub nsw i32 %conv5, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.4
  %8 = load i32, i32* %i, align 4
  %cmp6 = icmp sge i32 %8, 0
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.cli_exe_section*, %struct.cli_exe_section** %shp.addr, align 8
  %arrayidx = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %10, i64 %idxprom
  %rsz = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx, i32 0, i32 3
  %11 = load i32, i32* %rsz, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.24

land.lhs.true:                                    ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %12 to i64
  %13 = load %struct.cli_exe_section*, %struct.cli_exe_section** %shp.addr, align 8
  %arrayidx9 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %13, i64 %idxprom8
  %rva10 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx9, i32 0, i32 0
  %14 = load i32, i32* %rva10, align 4
  %15 = load i32, i32* %rva.addr, align 4
  %cmp11 = icmp ule i32 %14, %15
  br i1 %cmp11, label %land.lhs.true.13, label %if.end.24

land.lhs.true.13:                                 ; preds = %land.lhs.true
  %16 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %16 to i64
  %17 = load %struct.cli_exe_section*, %struct.cli_exe_section** %shp.addr, align 8
  %arrayidx15 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %17, i64 %idxprom14
  %rsz16 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx15, i32 0, i32 3
  %18 = load i32, i32* %rsz16, align 4
  %19 = load i32, i32* %rva.addr, align 4
  %20 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %20 to i64
  %21 = load %struct.cli_exe_section*, %struct.cli_exe_section** %shp.addr, align 8
  %arrayidx18 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %21, i64 %idxprom17
  %rva19 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx18, i32 0, i32 0
  %22 = load i32, i32* %rva19, align 4
  %sub20 = sub i32 %19, %22
  %cmp21 = icmp ugt i32 %18, %sub20
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %land.lhs.true.13
  store i32 1, i32* %found, align 4
  br label %for.end

if.end.24:                                        ; preds = %land.lhs.true.13, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.24
  %23 = load i32, i32* %i, align 4
  %dec = add nsw i32 %23, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.23, %for.cond
  %24 = load i32, i32* %found, align 4
  %tobool25 = icmp ne i32 %24, 0
  br i1 %tobool25, label %if.end.27, label %if.then.26

if.then.26:                                       ; preds = %for.end
  %25 = load i32*, i32** %err.addr, align 8
  store i32 1, i32* %25, align 4
  store i32 0, i32* %retval
  br label %return

if.end.27:                                        ; preds = %for.end
  %26 = load i32, i32* %rva.addr, align 4
  %27 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %27 to i64
  %28 = load %struct.cli_exe_section*, %struct.cli_exe_section** %shp.addr, align 8
  %arrayidx29 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %28, i64 %idxprom28
  %rva30 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx29, i32 0, i32 0
  %29 = load i32, i32* %rva30, align 4
  %sub31 = sub i32 %26, %29
  %30 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %30 to i64
  %31 = load %struct.cli_exe_section*, %struct.cli_exe_section** %shp.addr, align 8
  %arrayidx33 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %31, i64 %idxprom32
  %raw = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx33, i32 0, i32 2
  %32 = load i32, i32* %raw, align 4
  %add = add i32 %sub31, %32
  store i32 %add, i32* %ret, align 4
  %33 = load i32*, i32** %err.addr, align 8
  store i32 0, i32* %33, align 4
  %34 = load i32, i32* %ret, align 4
  store i32 %34, i32* %retval
  br label %return

return:                                           ; preds = %if.end.27, %if.then.26, %if.end, %if.then.3
  %35 = load i32, i32* %retval
  ret i32 %35
}

declare i8* @cli_memstr(i8*, i32, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define internal i64 @cli_seeksect(i32 %fd, %struct.cli_exe_section* %s) #0 {
entry:
  %retval = alloca i64, align 8
  %fd.addr = alloca i32, align 4
  %s.addr = alloca %struct.cli_exe_section*, align 8
  %ret = alloca i64, align 8
  store i32 %fd, i32* %fd.addr, align 4
  store %struct.cli_exe_section* %s, %struct.cli_exe_section** %s.addr, align 8
  %0 = load %struct.cli_exe_section*, %struct.cli_exe_section** %s.addr, align 8
  %rsz = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %0, i32 0, i32 3
  %1 = load i32, i32* %rsz, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i64 0, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %fd.addr, align 4
  %3 = load %struct.cli_exe_section*, %struct.cli_exe_section** %s.addr, align 8
  %raw = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %3, i32 0, i32 2
  %4 = load i32, i32* %raw, align 4
  %conv = zext i32 %4 to i64
  %call = call i64 @lseek(i32 %2, i64 %conv, i32 0) #3
  store i64 %call, i64* %ret, align 8
  %cmp = icmp eq i64 %call, -1
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.259, i32 0, i32 0))
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %5 = load i64, i64* %ret, align 8
  %add = add nsw i64 %5, 1
  store i64 %add, i64* %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then
  %6 = load i64, i64* %retval
  ret i64 %6
}

declare i8* @cli_malloc(i64) #1

declare i8* @cli_realloc2(i8*, i64) #1

declare i64 @read(i32, i8*, i64) #1

declare i8* @cli_gentemp(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @cli_multifree(i8* %f, ...) #0 {
entry:
  %f.addr = alloca i8*, align 8
  %ff = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %f, i8** %f.addr, align 8
  %0 = load i8*, i8** %f.addr, align 8
  call void @free(i8* %0) #3
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 0
  %gp_offset = load i32, i32* %gp_offset_p
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %while.cond
  %1 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 3
  %reg_save_area = load i8*, i8** %1
  %2 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset
  %3 = bitcast i8* %2 to i8**
  %4 = add i32 %gp_offset, 8
  store i32 %4, i32* %gp_offset_p
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %while.cond
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p
  %5 = bitcast i8* %overflow_arg_area to i8**
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi i8** [ %3, %vaarg.in_reg ], [ %5, %vaarg.in_mem ]
  %6 = load i8*, i8** %vaarg.addr
  store i8* %6, i8** %ff, align 8
  %tobool = icmp ne i8* %6, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %vaarg.end
  %7 = load i8*, i8** %ff, align 8
  call void @free(i8* %7) #3
  br label %while.cond

while.end:                                        ; preds = %vaarg.end
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i32 @open(i8*, i32, ...) #1

declare i32 @unmew11(i32, i8*, i32, i32, i32, i32, i32, i32, i8**, i8**, i32) #1

declare i32 @fsync(i32) #1

declare i32 @cli_magic_scandesc(i32, %struct.cli_ctx*) #1

declare i32 @close(i32) #1

; Function Attrs: nounwind
declare i32 @unlink(i8*) #2

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

declare i32 @unupack(i32, i8*, i32, i8*, i32, i32, i32, i32, i32) #1

declare i32 @unfsg_200(i8*, i8*, i32, i32, i32, i32, i32, i32) #1

declare i32 @unfsg_133(i8*, i8*, i32, i32, %struct.cli_exe_section*, i32, i32, i32, i32) #1

declare i32 @upx_inflate2b(i8*, i32, i8*, i32*, i32, i32, i32) #1

declare i32 @upx_inflate2d(i8*, i32, i8*, i32*, i32, i32, i32) #1

declare i32 @upx_inflate2e(i8*, i32, i8*, i32*, i32, i32, i32) #1

declare i64 @write(i32, i8*, i64) #1

declare i32 @petite_inflate2x_1to9(i8*, i32, i32, %struct.cli_exe_section*, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #4

declare i32 @unspin(i8*, i32, %struct.cli_exe_section*, i32, i32, i32, %struct.cli_ctx*) #1

declare i32 @yc_decrypt(i8*, i32, %struct.cli_exe_section*, i32, i32, i32) #1

declare i32 @wwunpack(i8*, i32, i32, i32, i32, i32, i8*, i32, i16 zeroext) #1

declare i32 @unaspack212(i8*, i32, %struct.cli_exe_section*, i16 zeroext, i32, i32, i32) #1

declare i32 @unspack(i8*, i8*, %struct.cli_ctx*, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define i32 @cli_peheader(i32 %desc, %struct.cli_exe_info* %peinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %desc.addr = alloca i32, align 4
  %peinfo.addr = alloca %struct.cli_exe_info*, align 8
  %e_magic = alloca i16, align 2
  %e_lfanew = alloca i32, align 4
  %file_hdr = alloca %struct.pe_image_file_hdr, align 4
  %pe_opt = alloca %union.anon.0, align 8
  %section_hdr = alloca %struct.pe_image_section_hdr*, align 8
  %sb = alloca %struct.stat, align 8
  %i = alloca i32, align 4
  %err = alloca i32, align 4
  %pe_plus = alloca i32, align 4
  %valign = alloca i32, align 4
  %falign = alloca i32, align 4
  %hdr_size = alloca i32, align 4
  %fsize = alloca i64, align 8
  store i32 %desc, i32* %desc.addr, align 4
  store %struct.cli_exe_info* %peinfo, %struct.cli_exe_info** %peinfo.addr, align 8
  store i32 0, i32* %pe_plus, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.254, i32 0, i32 0))
  %0 = load i32, i32* %desc.addr, align 4
  %call = call i32 @fstat(i32 %0, %struct.stat* %sb) #3
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.84, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %sb, i32 0, i32 8
  %1 = load i64, i64* %st_size, align 8
  %2 = load %struct.cli_exe_info*, %struct.cli_exe_info** %peinfo.addr, align 8
  %offset = getelementptr inbounds %struct.cli_exe_info, %struct.cli_exe_info* %2, i32 0, i32 2
  %3 = load i64, i64* %offset, align 8
  %sub = sub nsw i64 %1, %3
  store i64 %sub, i64* %fsize, align 8
  %4 = load i32, i32* %desc.addr, align 4
  %5 = bitcast i16* %e_magic to i8*
  %call1 = call i32 @cli_readn(i32 %4, i8* %5, i32 2)
  %conv = sext i32 %call1 to i64
  %cmp2 = icmp ne i64 %conv, 2
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %6 = load i16, i16* %e_magic, align 2
  %conv6 = zext i16 %6 to i32
  %cmp7 = icmp ne i32 %conv6, 23117
  br i1 %cmp7, label %land.lhs.true, label %if.end.13

land.lhs.true:                                    ; preds = %if.end.5
  %7 = load i16, i16* %e_magic, align 2
  %conv9 = zext i16 %7 to i32
  %cmp10 = icmp ne i32 %conv9, 19802
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %land.lhs.true
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.13:                                        ; preds = %land.lhs.true, %if.end.5
  %8 = load i32, i32* %desc.addr, align 4
  %call14 = call i64 @lseek(i32 %8, i64 58, i32 1) #3
  %9 = load i32, i32* %desc.addr, align 4
  %10 = bitcast i32* %e_lfanew to i8*
  %call15 = call i32 @cli_readn(i32 %9, i8* %10, i32 4)
  %conv16 = sext i32 %call15 to i64
  %cmp17 = icmp ne i64 %conv16, 4
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.13
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.20:                                        ; preds = %if.end.13
  %11 = load i32, i32* %e_lfanew, align 4
  store i32 %11, i32* %e_lfanew, align 4
  %12 = load i32, i32* %e_lfanew, align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.end.22, label %if.then.21

if.then.21:                                       ; preds = %if.end.20
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.22:                                        ; preds = %if.end.20
  %13 = load i32, i32* %desc.addr, align 4
  %14 = load %struct.cli_exe_info*, %struct.cli_exe_info** %peinfo.addr, align 8
  %offset23 = getelementptr inbounds %struct.cli_exe_info, %struct.cli_exe_info* %14, i32 0, i32 2
  %15 = load i64, i64* %offset23, align 8
  %16 = load i32, i32* %e_lfanew, align 4
  %conv24 = zext i32 %16 to i64
  %add = add nsw i64 %15, %conv24
  %call25 = call i64 @lseek(i32 %13, i64 %add, i32 0) #3
  %cmp26 = icmp slt i64 %call25, 0
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.22
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.29:                                        ; preds = %if.end.22
  %17 = load i32, i32* %desc.addr, align 4
  %18 = bitcast %struct.pe_image_file_hdr* %file_hdr to i8*
  %call30 = call i32 @cli_readn(i32 %17, i8* %18, i32 24)
  %conv31 = sext i32 %call30 to i64
  %cmp32 = icmp ne i64 %conv31, 24
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.end.29
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.35:                                        ; preds = %if.end.29
  %Magic = getelementptr inbounds %struct.pe_image_file_hdr, %struct.pe_image_file_hdr* %file_hdr, i32 0, i32 0
  %19 = load i32, i32* %Magic, align 4
  %cmp36 = icmp ne i32 %19, 17744
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.end.35
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.39:                                        ; preds = %if.end.35
  %NumberOfSections = getelementptr inbounds %struct.pe_image_file_hdr, %struct.pe_image_file_hdr* %file_hdr, i32 0, i32 2
  %20 = load i16, i16* %NumberOfSections, align 2
  %21 = load %struct.cli_exe_info*, %struct.cli_exe_info** %peinfo.addr, align 8
  %nsections = getelementptr inbounds %struct.cli_exe_info, %struct.cli_exe_info* %21, i32 0, i32 1
  store i16 %20, i16* %nsections, align 2
  %conv40 = zext i16 %20 to i32
  %cmp41 = icmp slt i32 %conv40, 1
  br i1 %cmp41, label %if.then.47, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.39
  %22 = load %struct.cli_exe_info*, %struct.cli_exe_info** %peinfo.addr, align 8
  %nsections43 = getelementptr inbounds %struct.cli_exe_info, %struct.cli_exe_info* %22, i32 0, i32 1
  %23 = load i16, i16* %nsections43, align 2
  %conv44 = zext i16 %23 to i32
  %cmp45 = icmp sgt i32 %conv44, 96
  br i1 %cmp45, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %lor.lhs.false, %if.end.39
  store i32 -1, i32* %retval
  br label %return

if.end.48:                                        ; preds = %lor.lhs.false
  %SizeOfOptionalHeader = getelementptr inbounds %struct.pe_image_file_hdr, %struct.pe_image_file_hdr* %file_hdr, i32 0, i32 6
  %24 = load i16, i16* %SizeOfOptionalHeader, align 2
  %conv49 = zext i16 %24 to i64
  %cmp50 = icmp ult i64 %conv49, 224
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.end.48
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.48, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.53:                                        ; preds = %if.end.48
  %25 = load i32, i32* %desc.addr, align 4
  %opt32 = bitcast %union.anon.0* %pe_opt to %struct.pe_image_optional_hdr32*
  %26 = bitcast %struct.pe_image_optional_hdr32* %opt32 to i8*
  %call54 = call i32 @cli_readn(i32 %25, i8* %26, i32 224)
  %conv55 = sext i32 %call54 to i64
  %cmp56 = icmp ne i64 %conv55, 224
  br i1 %cmp56, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.end.53
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.49, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.59:                                        ; preds = %if.end.53
  %opt64 = bitcast %union.anon.0* %pe_opt to %struct.pe_image_optional_hdr64*
  %Magic60 = getelementptr inbounds %struct.pe_image_optional_hdr64, %struct.pe_image_optional_hdr64* %opt64, i32 0, i32 0
  %27 = load i16, i16* %Magic60, align 2
  %conv61 = zext i16 %27 to i32
  %cmp62 = icmp eq i32 %conv61, 523
  br i1 %cmp62, label %if.then.64, label %if.else

if.then.64:                                       ; preds = %if.end.59
  %SizeOfOptionalHeader65 = getelementptr inbounds %struct.pe_image_file_hdr, %struct.pe_image_file_hdr* %file_hdr, i32 0, i32 6
  %28 = load i16, i16* %SizeOfOptionalHeader65, align 2
  %conv66 = zext i16 %28 to i64
  %cmp67 = icmp ne i64 %conv66, 240
  br i1 %cmp67, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %if.then.64
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.50, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.70:                                        ; preds = %if.then.64
  %29 = load i32, i32* %desc.addr, align 4
  %opt3271 = bitcast %union.anon.0* %pe_opt to %struct.pe_image_optional_hdr32*
  %add.ptr = getelementptr inbounds %struct.pe_image_optional_hdr32, %struct.pe_image_optional_hdr32* %opt3271, i64 1
  %30 = bitcast %struct.pe_image_optional_hdr32* %add.ptr to i8*
  %call72 = call i32 @cli_readn(i32 %29, i8* %30, i32 16)
  %conv73 = sext i32 %call72 to i64
  %cmp74 = icmp ne i64 %conv73, 16
  br i1 %cmp74, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %if.end.70
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.49, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.77:                                        ; preds = %if.end.70
  %opt6478 = bitcast %union.anon.0* %pe_opt to %struct.pe_image_optional_hdr64*
  %SizeOfHeaders = getelementptr inbounds %struct.pe_image_optional_hdr64, %struct.pe_image_optional_hdr64* %opt6478, i32 0, i32 19
  %31 = load i32, i32* %SizeOfHeaders, align 4
  store i32 %31, i32* %hdr_size, align 4
  store i32 1, i32* %pe_plus, align 4
  br label %if.end.91

if.else:                                          ; preds = %if.end.59
  %SizeOfOptionalHeader79 = getelementptr inbounds %struct.pe_image_file_hdr, %struct.pe_image_file_hdr* %file_hdr, i32 0, i32 6
  %32 = load i16, i16* %SizeOfOptionalHeader79, align 2
  %conv80 = zext i16 %32 to i64
  %cmp81 = icmp ne i64 %conv80, 224
  br i1 %cmp81, label %if.then.83, label %if.end.88

if.then.83:                                       ; preds = %if.else
  %33 = load i32, i32* %desc.addr, align 4
  %SizeOfOptionalHeader84 = getelementptr inbounds %struct.pe_image_file_hdr, %struct.pe_image_file_hdr* %file_hdr, i32 0, i32 6
  %34 = load i16, i16* %SizeOfOptionalHeader84, align 2
  %conv85 = zext i16 %34 to i64
  %sub86 = sub i64 %conv85, 224
  %call87 = call i64 @lseek(i32 %33, i64 %sub86, i32 1) #3
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.83, %if.else
  %opt3289 = bitcast %union.anon.0* %pe_opt to %struct.pe_image_optional_hdr32*
  %SizeOfHeaders90 = getelementptr inbounds %struct.pe_image_optional_hdr32, %struct.pe_image_optional_hdr32* %opt3289, i32 0, i32 20
  %35 = load i32, i32* %SizeOfHeaders90, align 4
  store i32 %35, i32* %hdr_size, align 4
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.88, %if.end.77
  %36 = load i32, i32* %pe_plus, align 4
  %tobool92 = icmp ne i32 %36, 0
  br i1 %tobool92, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.91
  %opt6493 = bitcast %union.anon.0* %pe_opt to %struct.pe_image_optional_hdr64*
  %SectionAlignment = getelementptr inbounds %struct.pe_image_optional_hdr64, %struct.pe_image_optional_hdr64* %opt6493, i32 0, i32 9
  %37 = load i32, i32* %SectionAlignment, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.91
  %opt3294 = bitcast %union.anon.0* %pe_opt to %struct.pe_image_optional_hdr32*
  %SectionAlignment95 = getelementptr inbounds %struct.pe_image_optional_hdr32, %struct.pe_image_optional_hdr32* %opt3294, i32 0, i32 10
  %38 = load i32, i32* %SectionAlignment95, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %37, %cond.true ], [ %38, %cond.false ]
  store i32 %cond, i32* %valign, align 4
  %39 = load i32, i32* %pe_plus, align 4
  %tobool96 = icmp ne i32 %39, 0
  br i1 %tobool96, label %cond.true.97, label %cond.false.99

cond.true.97:                                     ; preds = %cond.end
  %opt6498 = bitcast %union.anon.0* %pe_opt to %struct.pe_image_optional_hdr64*
  %FileAlignment = getelementptr inbounds %struct.pe_image_optional_hdr64, %struct.pe_image_optional_hdr64* %opt6498, i32 0, i32 10
  %40 = load i32, i32* %FileAlignment, align 4
  br label %cond.end.102

cond.false.99:                                    ; preds = %cond.end
  %opt32100 = bitcast %union.anon.0* %pe_opt to %struct.pe_image_optional_hdr32*
  %FileAlignment101 = getelementptr inbounds %struct.pe_image_optional_hdr32, %struct.pe_image_optional_hdr32* %opt32100, i32 0, i32 11
  %41 = load i32, i32* %FileAlignment101, align 4
  br label %cond.end.102

cond.end.102:                                     ; preds = %cond.false.99, %cond.true.97
  %cond103 = phi i32 [ %40, %cond.true.97 ], [ %41, %cond.false.99 ]
  store i32 %cond103, i32* %falign, align 4
  %42 = load i32, i32* %valign, align 4
  %tobool104 = icmp ne i32 %42, 0
  br i1 %tobool104, label %cond.true.105, label %cond.false.109

cond.true.105:                                    ; preds = %cond.end.102
  %43 = load i32, i32* %hdr_size, align 4
  %44 = load i32, i32* %valign, align 4
  %div = udiv i32 %43, %44
  %45 = load i32, i32* %hdr_size, align 4
  %46 = load i32, i32* %valign, align 4
  %rem = urem i32 %45, %46
  %cmp106 = icmp ne i32 %rem, 0
  %conv107 = zext i1 %cmp106 to i32
  %add108 = add i32 %div, %conv107
  %47 = load i32, i32* %valign, align 4
  %mul = mul i32 %add108, %47
  br label %cond.end.110

cond.false.109:                                   ; preds = %cond.end.102
  %48 = load i32, i32* %hdr_size, align 4
  br label %cond.end.110

cond.end.110:                                     ; preds = %cond.false.109, %cond.true.105
  %cond111 = phi i32 [ %mul, %cond.true.105 ], [ %48, %cond.false.109 ]
  store i32 %cond111, i32* %hdr_size, align 4
  %49 = load %struct.cli_exe_info*, %struct.cli_exe_info** %peinfo.addr, align 8
  %nsections112 = getelementptr inbounds %struct.cli_exe_info, %struct.cli_exe_info* %49, i32 0, i32 1
  %50 = load i16, i16* %nsections112, align 2
  %conv113 = zext i16 %50 to i64
  %call114 = call i8* @cli_calloc(i64 %conv113, i64 36)
  %51 = bitcast i8* %call114 to %struct.cli_exe_section*
  %52 = load %struct.cli_exe_info*, %struct.cli_exe_info** %peinfo.addr, align 8
  %section = getelementptr inbounds %struct.cli_exe_info, %struct.cli_exe_info* %52, i32 0, i32 3
  store %struct.cli_exe_section* %51, %struct.cli_exe_section** %section, align 8
  %53 = load %struct.cli_exe_info*, %struct.cli_exe_info** %peinfo.addr, align 8
  %section115 = getelementptr inbounds %struct.cli_exe_info, %struct.cli_exe_info* %53, i32 0, i32 3
  %54 = load %struct.cli_exe_section*, %struct.cli_exe_section** %section115, align 8
  %tobool116 = icmp ne %struct.cli_exe_section* %54, null
  br i1 %tobool116, label %if.end.118, label %if.then.117

if.then.117:                                      ; preds = %cond.end.110
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.85, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.118:                                       ; preds = %cond.end.110
  %55 = load %struct.cli_exe_info*, %struct.cli_exe_info** %peinfo.addr, align 8
  %nsections119 = getelementptr inbounds %struct.cli_exe_info, %struct.cli_exe_info* %55, i32 0, i32 1
  %56 = load i16, i16* %nsections119, align 2
  %conv120 = zext i16 %56 to i64
  %call121 = call i8* @cli_calloc(i64 %conv120, i64 40)
  %57 = bitcast i8* %call121 to %struct.pe_image_section_hdr*
  store %struct.pe_image_section_hdr* %57, %struct.pe_image_section_hdr** %section_hdr, align 8
  %58 = load %struct.pe_image_section_hdr*, %struct.pe_image_section_hdr** %section_hdr, align 8
  %tobool122 = icmp ne %struct.pe_image_section_hdr* %58, null
  br i1 %tobool122, label %if.end.126, label %if.then.123

if.then.123:                                      ; preds = %if.end.118
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.85, i32 0, i32 0))
  %59 = load %struct.cli_exe_info*, %struct.cli_exe_info** %peinfo.addr, align 8
  %section124 = getelementptr inbounds %struct.cli_exe_info, %struct.cli_exe_info* %59, i32 0, i32 3
  %60 = load %struct.cli_exe_section*, %struct.cli_exe_section** %section124, align 8
  %61 = bitcast %struct.cli_exe_section* %60 to i8*
  call void @free(i8* %61) #3
  %62 = load %struct.cli_exe_info*, %struct.cli_exe_info** %peinfo.addr, align 8
  %section125 = getelementptr inbounds %struct.cli_exe_info, %struct.cli_exe_info* %62, i32 0, i32 3
  store %struct.cli_exe_section* null, %struct.cli_exe_section** %section125, align 8
  store i32 -1, i32* %retval
  br label %return

if.end.126:                                       ; preds = %if.end.118
  %63 = load i32, i32* %desc.addr, align 4
  %64 = load %struct.pe_image_section_hdr*, %struct.pe_image_section_hdr** %section_hdr, align 8
  %65 = bitcast %struct.pe_image_section_hdr* %64 to i8*
  %66 = load %struct.cli_exe_info*, %struct.cli_exe_info** %peinfo.addr, align 8
  %nsections127 = getelementptr inbounds %struct.cli_exe_info, %struct.cli_exe_info* %66, i32 0, i32 1
  %67 = load i16, i16* %nsections127, align 2
  %conv128 = zext i16 %67 to i64
  %mul129 = mul i64 %conv128, 40
  %conv130 = trunc i64 %mul129 to i32
  %call131 = call i32 @cli_readn(i32 %63, i8* %65, i32 %conv130)
  %conv132 = sext i32 %call131 to i64
  %68 = load %struct.cli_exe_info*, %struct.cli_exe_info** %peinfo.addr, align 8
  %nsections133 = getelementptr inbounds %struct.cli_exe_info, %struct.cli_exe_info* %68, i32 0, i32 1
  %69 = load i16, i16* %nsections133, align 2
  %conv134 = zext i16 %69 to i64
  %mul135 = mul i64 %conv134, 40
  %cmp136 = icmp ne i64 %conv132, %mul135
  br i1 %cmp136, label %if.then.138, label %if.end.141

if.then.138:                                      ; preds = %if.end.126
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.86, i32 0, i32 0))
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.87, i32 0, i32 0))
  %70 = load %struct.pe_image_section_hdr*, %struct.pe_image_section_hdr** %section_hdr, align 8
  %71 = bitcast %struct.pe_image_section_hdr* %70 to i8*
  call void @free(i8* %71) #3
  %72 = load %struct.cli_exe_info*, %struct.cli_exe_info** %peinfo.addr, align 8
  %section139 = getelementptr inbounds %struct.cli_exe_info, %struct.cli_exe_info* %72, i32 0, i32 3
  %73 = load %struct.cli_exe_section*, %struct.cli_exe_section** %section139, align 8
  %74 = bitcast %struct.cli_exe_section* %73 to i8*
  call void @free(i8* %74) #3
  %75 = load %struct.cli_exe_info*, %struct.cli_exe_info** %peinfo.addr, align 8
  %section140 = getelementptr inbounds %struct.cli_exe_info, %struct.cli_exe_info* %75, i32 0, i32 3
  store %struct.cli_exe_section* null, %struct.cli_exe_section** %section140, align 8
  store i32 -1, i32* %retval
  br label %return

if.end.141:                                       ; preds = %if.end.126
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.141
  %76 = load i32, i32* %falign, align 4
  %cmp142 = icmp ne i32 %76, 512
  br i1 %cmp142, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %77 = load i32, i32* %i, align 4
  %78 = load %struct.cli_exe_info*, %struct.cli_exe_info** %peinfo.addr, align 8
  %nsections144 = getelementptr inbounds %struct.cli_exe_info, %struct.cli_exe_info* %78, i32 0, i32 1
  %79 = load i16, i16* %nsections144, align 2
  %conv145 = zext i16 %79 to i32
  %cmp146 = icmp slt i32 %77, %conv145
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %80 = phi i1 [ false, %for.cond ], [ %cmp146, %land.rhs ]
  br i1 %80, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %81 = load i32, i32* %falign, align 4
  %tobool148 = icmp ne i32 %81, 0
  br i1 %tobool148, label %land.lhs.true.149, label %if.end.163

land.lhs.true.149:                                ; preds = %for.body
  %82 = load i32, i32* %i, align 4
  %idxprom = sext i32 %82 to i64
  %83 = load %struct.pe_image_section_hdr*, %struct.pe_image_section_hdr** %section_hdr, align 8
  %arrayidx = getelementptr inbounds %struct.pe_image_section_hdr, %struct.pe_image_section_hdr* %83, i64 %idxprom
  %SizeOfRawData = getelementptr inbounds %struct.pe_image_section_hdr, %struct.pe_image_section_hdr* %arrayidx, i32 0, i32 3
  %84 = load i32, i32* %SizeOfRawData, align 4
  %tobool150 = icmp ne i32 %84, 0
  br i1 %tobool150, label %land.lhs.true.151, label %if.end.163

land.lhs.true.151:                                ; preds = %land.lhs.true.149
  %85 = load i32, i32* %i, align 4
  %idxprom152 = sext i32 %85 to i64
  %86 = load %struct.pe_image_section_hdr*, %struct.pe_image_section_hdr** %section_hdr, align 8
  %arrayidx153 = getelementptr inbounds %struct.pe_image_section_hdr, %struct.pe_image_section_hdr* %86, i64 %idxprom152
  %PointerToRawData = getelementptr inbounds %struct.pe_image_section_hdr, %struct.pe_image_section_hdr* %arrayidx153, i32 0, i32 4
  %87 = load i32, i32* %PointerToRawData, align 4
  %88 = load i32, i32* %falign, align 4
  %rem154 = urem i32 %87, %88
  %tobool155 = icmp ne i32 %rem154, 0
  br i1 %tobool155, label %land.lhs.true.156, label %if.end.163

land.lhs.true.156:                                ; preds = %land.lhs.true.151
  %89 = load i32, i32* %i, align 4
  %idxprom157 = sext i32 %89 to i64
  %90 = load %struct.pe_image_section_hdr*, %struct.pe_image_section_hdr** %section_hdr, align 8
  %arrayidx158 = getelementptr inbounds %struct.pe_image_section_hdr, %struct.pe_image_section_hdr* %90, i64 %idxprom157
  %PointerToRawData159 = getelementptr inbounds %struct.pe_image_section_hdr, %struct.pe_image_section_hdr* %arrayidx158, i32 0, i32 4
  %91 = load i32, i32* %PointerToRawData159, align 4
  %rem160 = urem i32 %91, 512
  %tobool161 = icmp ne i32 %rem160, 0
  br i1 %tobool161, label %if.end.163, label %if.then.162

if.then.162:                                      ; preds = %land.lhs.true.156
  store i32 512, i32* %falign, align 4
  br label %if.end.163

if.end.163:                                       ; preds = %if.then.162, %land.lhs.true.156, %land.lhs.true.151, %land.lhs.true.149, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.163
  %92 = load i32, i32* %i, align 4
  %inc = add nsw i32 %92, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  store i32 0, i32* %i, align 4
  br label %for.cond.164

for.cond.164:                                     ; preds = %for.inc.362, %for.end
  %93 = load i32, i32* %i, align 4
  %94 = load %struct.cli_exe_info*, %struct.cli_exe_info** %peinfo.addr, align 8
  %nsections165 = getelementptr inbounds %struct.cli_exe_info, %struct.cli_exe_info* %94, i32 0, i32 1
  %95 = load i16, i16* %nsections165, align 2
  %conv166 = zext i16 %95 to i32
  %cmp167 = icmp slt i32 %93, %conv166
  br i1 %cmp167, label %for.body.169, label %for.end.364

for.body.169:                                     ; preds = %for.cond.164
  %96 = load i32, i32* %valign, align 4
  %tobool170 = icmp ne i32 %96, 0
  br i1 %tobool170, label %cond.true.171, label %cond.false.176

cond.true.171:                                    ; preds = %for.body.169
  %97 = load i32, i32* %i, align 4
  %idxprom172 = sext i32 %97 to i64
  %98 = load %struct.pe_image_section_hdr*, %struct.pe_image_section_hdr** %section_hdr, align 8
  %arrayidx173 = getelementptr inbounds %struct.pe_image_section_hdr, %struct.pe_image_section_hdr* %98, i64 %idxprom172
  %VirtualAddress = getelementptr inbounds %struct.pe_image_section_hdr, %struct.pe_image_section_hdr* %arrayidx173, i32 0, i32 2
  %99 = load i32, i32* %VirtualAddress, align 4
  %100 = load i32, i32* %valign, align 4
  %div174 = udiv i32 %99, %100
  %101 = load i32, i32* %valign, align 4
  %mul175 = mul i32 %div174, %101
  br label %cond.end.180

cond.false.176:                                   ; preds = %for.body.169
  %102 = load i32, i32* %i, align 4
  %idxprom177 = sext i32 %102 to i64
  %103 = load %struct.pe_image_section_hdr*, %struct.pe_image_section_hdr** %section_hdr, align 8
  %arrayidx178 = getelementptr inbounds %struct.pe_image_section_hdr, %struct.pe_image_section_hdr* %103, i64 %idxprom177
  %VirtualAddress179 = getelementptr inbounds %struct.pe_image_section_hdr, %struct.pe_image_section_hdr* %arrayidx178, i32 0, i32 2
  %104 = load i32, i32* %VirtualAddress179, align 4
  br label %cond.end.180

cond.end.180:                                     ; preds = %cond.false.176, %cond.true.171
  %cond181 = phi i32 [ %mul175, %cond.true.171 ], [ %104, %cond.false.176 ]
  %105 = load i32, i32* %i, align 4
  %idxprom182 = sext i32 %105 to i64
  %106 = load %struct.cli_exe_info*, %struct.cli_exe_info** %peinfo.addr, align 8
  %section183 = getelementptr inbounds %struct.cli_exe_info, %struct.cli_exe_info* %106, i32 0, i32 3
  %107 = load %struct.cli_exe_section*, %struct.cli_exe_section** %section183, align 8
  %arrayidx184 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %107, i64 %idxprom182
  %rva = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx184, i32 0, i32 0
  store i32 %cond181, i32* %rva, align 4
  %108 = load i32, i32* %valign, align 4
  %tobool185 = icmp ne i32 %108, 0
  br i1 %tobool185, label %cond.true.186, label %cond.false.198

cond.true.186:                                    ; preds = %cond.end.180
  %109 = load i32, i32* %i, align 4
  %idxprom187 = sext i32 %109 to i64
  %110 = load %struct.pe_image_section_hdr*, %struct.pe_image_section_hdr** %section_hdr, align 8
  %arrayidx188 = getelementptr inbounds %struct.pe_image_section_hdr, %struct.pe_image_section_hdr* %110, i64 %idxprom187
  %VirtualSize = getelementptr inbounds %struct.pe_image_section_hdr, %struct.pe_image_section_hdr* %arrayidx188, i32 0, i32 1
  %111 = load i32, i32* %VirtualSize, align 4
  %112 = load i32, i32* %valign, align 4
  %div189 = udiv i32 %111, %112
  %113 = load i32, i32* %i, align 4
  %idxprom190 = sext i32 %113 to i64
  %114 = load %struct.pe_image_section_hdr*, %struct.pe_image_section_hdr** %section_hdr, align 8
  %arrayidx191 = getelementptr inbounds %struct.pe_image_section_hdr, %struct.pe_image_section_hdr* %114, i64 %idxprom190
  %VirtualSize192 = getelementptr inbounds %struct.pe_image_section_hdr, %struct.pe_image_section_hdr* %arrayidx191, i32 0, i32 1
  %115 = load i32, i32* %VirtualSize192, align 4
  %116 = load i32, i32* %valign, align 4
  %rem193 = urem i32 %115, %116
  %cmp194 = icmp ne i32 %rem193, 0
  %conv195 = zext i1 %cmp194 to i32
  %add196 = add i32 %div189, %conv195
  %117 = load i32, i32* %valign, align 4
  %mul197 = mul i32 %add196, %117
  br label %cond.end.202

cond.false.198:                                   ; preds = %cond.end.180
  %118 = load i32, i32* %i, align 4
  %idxprom199 = sext i32 %118 to i64
  %119 = load %struct.pe_image_section_hdr*, %struct.pe_image_section_hdr** %section_hdr, align 8
  %arrayidx200 = getelementptr inbounds %struct.pe_image_section_hdr, %struct.pe_image_section_hdr* %119, i64 %idxprom199
  %VirtualSize201 = getelementptr inbounds %struct.pe_image_section_hdr, %struct.pe_image_section_hdr* %arrayidx200, i32 0, i32 1
  %120 = load i32, i32* %VirtualSize201, align 4
  br label %cond.end.202

cond.end.202:                                     ; preds = %cond.false.198, %cond.true.186
  %cond203 = phi i32 [ %mul197, %cond.true.186 ], [ %120, %cond.false.198 ]
  %121 = load i32, i32* %i, align 4
  %idxprom204 = sext i32 %121 to i64
  %122 = load %struct.cli_exe_info*, %struct.cli_exe_info** %peinfo.addr, align 8
  %section205 = getelementptr inbounds %struct.cli_exe_info, %struct.cli_exe_info* %122, i32 0, i32 3
  %123 = load %struct.cli_exe_section*, %struct.cli_exe_section** %section205, align 8
  %arrayidx206 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %123, i64 %idxprom204
  %vsz = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx206, i32 0, i32 1
  store i32 %cond203, i32* %vsz, align 4
  %124 = load i32, i32* %falign, align 4
  %tobool207 = icmp ne i32 %124, 0
  br i1 %tobool207, label %cond.true.208, label %cond.false.214

cond.true.208:                                    ; preds = %cond.end.202
  %125 = load i32, i32* %i, align 4
  %idxprom209 = sext i32 %125 to i64
  %126 = load %struct.pe_image_section_hdr*, %struct.pe_image_section_hdr** %section_hdr, align 8
  %arrayidx210 = getelementptr inbounds %struct.pe_image_section_hdr, %struct.pe_image_section_hdr* %126, i64 %idxprom209
  %PointerToRawData211 = getelementptr inbounds %struct.pe_image_section_hdr, %struct.pe_image_section_hdr* %arrayidx210, i32 0, i32 4
  %127 = load i32, i32* %PointerToRawData211, align 4
  %128 = load i32, i32* %falign, align 4
  %div212 = udiv i32 %127, %128
  %129 = load i32, i32* %falign, align 4
  %mul213 = mul i32 %div212, %129
  br label %cond.end.218

cond.false.214:                                   ; preds = %cond.end.202
  %130 = load i32, i32* %i, align 4
  %idxprom215 = sext i32 %130 to i64
  %131 = load %struct.pe_image_section_hdr*, %struct.pe_image_section_hdr** %section_hdr, align 8
  %arrayidx216 = getelementptr inbounds %struct.pe_image_section_hdr, %struct.pe_image_section_hdr* %131, i64 %idxprom215
  %PointerToRawData217 = getelementptr inbounds %struct.pe_image_section_hdr, %struct.pe_image_section_hdr* %arrayidx216, i32 0, i32 4
  %132 = load i32, i32* %PointerToRawData217, align 4
  br label %cond.end.218

cond.end.218:                                     ; preds = %cond.false.214, %cond.true.208
  %cond219 = phi i32 [ %mul213, %cond.true.208 ], [ %132, %cond.false.214 ]
  %133 = load i32, i32* %i, align 4
  %idxprom220 = sext i32 %133 to i64
  %134 = load %struct.cli_exe_info*, %struct.cli_exe_info** %peinfo.addr, align 8
  %section221 = getelementptr inbounds %struct.cli_exe_info, %struct.cli_exe_info* %134, i32 0, i32 3
  %135 = load %struct.cli_exe_section*, %struct.cli_exe_section** %section221, align 8
  %arrayidx222 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %135, i64 %idxprom220
  %raw = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx222, i32 0, i32 2
  store i32 %cond219, i32* %raw, align 4
  %136 = load i32, i32* %falign, align 4
  %tobool223 = icmp ne i32 %136, 0
  br i1 %tobool223, label %cond.true.224, label %cond.false.237

cond.true.224:                                    ; preds = %cond.end.218
  %137 = load i32, i32* %i, align 4
  %idxprom225 = sext i32 %137 to i64
  %138 = load %struct.pe_image_section_hdr*, %struct.pe_image_section_hdr** %section_hdr, align 8
  %arrayidx226 = getelementptr inbounds %struct.pe_image_section_hdr, %struct.pe_image_section_hdr* %138, i64 %idxprom225
  %SizeOfRawData227 = getelementptr inbounds %struct.pe_image_section_hdr, %struct.pe_image_section_hdr* %arrayidx226, i32 0, i32 3
  %139 = load i32, i32* %SizeOfRawData227, align 4
  %140 = load i32, i32* %falign, align 4
  %div228 = udiv i32 %139, %140
  %141 = load i32, i32* %i, align 4
  %idxprom229 = sext i32 %141 to i64
  %142 = load %struct.pe_image_section_hdr*, %struct.pe_image_section_hdr** %section_hdr, align 8
  %arrayidx230 = getelementptr inbounds %struct.pe_image_section_hdr, %struct.pe_image_section_hdr* %142, i64 %idxprom229
  %SizeOfRawData231 = getelementptr inbounds %struct.pe_image_section_hdr, %struct.pe_image_section_hdr* %arrayidx230, i32 0, i32 3
  %143 = load i32, i32* %SizeOfRawData231, align 4
  %144 = load i32, i32* %falign, align 4
  %rem232 = urem i32 %143, %144
  %cmp233 = icmp ne i32 %rem232, 0
  %conv234 = zext i1 %cmp233 to i32
  %add235 = add i32 %div228, %conv234
  %145 = load i32, i32* %falign, align 4
  %mul236 = mul i32 %add235, %145
  br label %cond.end.241

cond.false.237:                                   ; preds = %cond.end.218
  %146 = load i32, i32* %i, align 4
  %idxprom238 = sext i32 %146 to i64
  %147 = load %struct.pe_image_section_hdr*, %struct.pe_image_section_hdr** %section_hdr, align 8
  %arrayidx239 = getelementptr inbounds %struct.pe_image_section_hdr, %struct.pe_image_section_hdr* %147, i64 %idxprom238
  %SizeOfRawData240 = getelementptr inbounds %struct.pe_image_section_hdr, %struct.pe_image_section_hdr* %arrayidx239, i32 0, i32 3
  %148 = load i32, i32* %SizeOfRawData240, align 4
  br label %cond.end.241

cond.end.241:                                     ; preds = %cond.false.237, %cond.true.224
  %cond242 = phi i32 [ %mul236, %cond.true.224 ], [ %148, %cond.false.237 ]
  %149 = load i32, i32* %i, align 4
  %idxprom243 = sext i32 %149 to i64
  %150 = load %struct.cli_exe_info*, %struct.cli_exe_info** %peinfo.addr, align 8
  %section244 = getelementptr inbounds %struct.cli_exe_info, %struct.cli_exe_info* %150, i32 0, i32 3
  %151 = load %struct.cli_exe_section*, %struct.cli_exe_section** %section244, align 8
  %arrayidx245 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %151, i64 %idxprom243
  %rsz = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx245, i32 0, i32 3
  store i32 %cond242, i32* %rsz, align 4
  %152 = load i32, i32* %i, align 4
  %idxprom246 = sext i32 %152 to i64
  %153 = load %struct.cli_exe_info*, %struct.cli_exe_info** %peinfo.addr, align 8
  %section247 = getelementptr inbounds %struct.cli_exe_info, %struct.cli_exe_info* %153, i32 0, i32 3
  %154 = load %struct.cli_exe_section*, %struct.cli_exe_section** %section247, align 8
  %arrayidx248 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %154, i64 %idxprom246
  %vsz249 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx248, i32 0, i32 1
  %155 = load i32, i32* %vsz249, align 4
  %tobool250 = icmp ne i32 %155, 0
  br i1 %tobool250, label %if.end.282, label %land.lhs.true.251

land.lhs.true.251:                                ; preds = %cond.end.241
  %156 = load i32, i32* %i, align 4
  %idxprom252 = sext i32 %156 to i64
  %157 = load %struct.cli_exe_info*, %struct.cli_exe_info** %peinfo.addr, align 8
  %section253 = getelementptr inbounds %struct.cli_exe_info, %struct.cli_exe_info* %157, i32 0, i32 3
  %158 = load %struct.cli_exe_section*, %struct.cli_exe_section** %section253, align 8
  %arrayidx254 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %158, i64 %idxprom252
  %rsz255 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx254, i32 0, i32 3
  %159 = load i32, i32* %rsz255, align 4
  %tobool256 = icmp ne i32 %159, 0
  br i1 %tobool256, label %if.then.257, label %if.end.282

if.then.257:                                      ; preds = %land.lhs.true.251
  %160 = load i32, i32* %valign, align 4
  %tobool258 = icmp ne i32 %160, 0
  br i1 %tobool258, label %cond.true.259, label %cond.false.272

cond.true.259:                                    ; preds = %if.then.257
  %161 = load i32, i32* %i, align 4
  %idxprom260 = sext i32 %161 to i64
  %162 = load %struct.pe_image_section_hdr*, %struct.pe_image_section_hdr** %section_hdr, align 8
  %arrayidx261 = getelementptr inbounds %struct.pe_image_section_hdr, %struct.pe_image_section_hdr* %162, i64 %idxprom260
  %SizeOfRawData262 = getelementptr inbounds %struct.pe_image_section_hdr, %struct.pe_image_section_hdr* %arrayidx261, i32 0, i32 3
  %163 = load i32, i32* %SizeOfRawData262, align 4
  %164 = load i32, i32* %valign, align 4
  %div263 = udiv i32 %163, %164
  %165 = load i32, i32* %i, align 4
  %idxprom264 = sext i32 %165 to i64
  %166 = load %struct.pe_image_section_hdr*, %struct.pe_image_section_hdr** %section_hdr, align 8
  %arrayidx265 = getelementptr inbounds %struct.pe_image_section_hdr, %struct.pe_image_section_hdr* %166, i64 %idxprom264
  %SizeOfRawData266 = getelementptr inbounds %struct.pe_image_section_hdr, %struct.pe_image_section_hdr* %arrayidx265, i32 0, i32 3
  %167 = load i32, i32* %SizeOfRawData266, align 4
  %168 = load i32, i32* %valign, align 4
  %rem267 = urem i32 %167, %168
  %cmp268 = icmp ne i32 %rem267, 0
  %conv269 = zext i1 %cmp268 to i32
  %add270 = add i32 %div263, %conv269
  %169 = load i32, i32* %valign, align 4
  %mul271 = mul i32 %add270, %169
  br label %cond.end.276

cond.false.272:                                   ; preds = %if.then.257
  %170 = load i32, i32* %i, align 4
  %idxprom273 = sext i32 %170 to i64
  %171 = load %struct.pe_image_section_hdr*, %struct.pe_image_section_hdr** %section_hdr, align 8
  %arrayidx274 = getelementptr inbounds %struct.pe_image_section_hdr, %struct.pe_image_section_hdr* %171, i64 %idxprom273
  %SizeOfRawData275 = getelementptr inbounds %struct.pe_image_section_hdr, %struct.pe_image_section_hdr* %arrayidx274, i32 0, i32 3
  %172 = load i32, i32* %SizeOfRawData275, align 4
  br label %cond.end.276

cond.end.276:                                     ; preds = %cond.false.272, %cond.true.259
  %cond277 = phi i32 [ %mul271, %cond.true.259 ], [ %172, %cond.false.272 ]
  %173 = load i32, i32* %i, align 4
  %idxprom278 = sext i32 %173 to i64
  %174 = load %struct.cli_exe_info*, %struct.cli_exe_info** %peinfo.addr, align 8
  %section279 = getelementptr inbounds %struct.cli_exe_info, %struct.cli_exe_info* %174, i32 0, i32 3
  %175 = load %struct.cli_exe_section*, %struct.cli_exe_section** %section279, align 8
  %arrayidx280 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %175, i64 %idxprom278
  %vsz281 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx280, i32 0, i32 1
  store i32 %cond277, i32* %vsz281, align 4
  br label %if.end.282

if.end.282:                                       ; preds = %cond.end.276, %land.lhs.true.251, %cond.end.241
  %176 = load i32, i32* %i, align 4
  %idxprom283 = sext i32 %176 to i64
  %177 = load %struct.cli_exe_info*, %struct.cli_exe_info** %peinfo.addr, align 8
  %section284 = getelementptr inbounds %struct.cli_exe_info, %struct.cli_exe_info* %177, i32 0, i32 3
  %178 = load %struct.cli_exe_section*, %struct.cli_exe_section** %section284, align 8
  %arrayidx285 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %178, i64 %idxprom283
  %rsz286 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx285, i32 0, i32 3
  %179 = load i32, i32* %rsz286, align 4
  %tobool287 = icmp ne i32 %179, 0
  br i1 %tobool287, label %land.lhs.true.288, label %if.end.361

land.lhs.true.288:                                ; preds = %if.end.282
  %180 = load i64, i64* %fsize, align 8
  %conv289 = trunc i64 %180 to i32
  %cmp290 = icmp ugt i32 %conv289, 0
  br i1 %cmp290, label %land.lhs.true.292, label %if.then.340

land.lhs.true.292:                                ; preds = %land.lhs.true.288
  %181 = load i32, i32* %i, align 4
  %idxprom293 = sext i32 %181 to i64
  %182 = load %struct.cli_exe_info*, %struct.cli_exe_info** %peinfo.addr, align 8
  %section294 = getelementptr inbounds %struct.cli_exe_info, %struct.cli_exe_info* %182, i32 0, i32 3
  %183 = load %struct.cli_exe_section*, %struct.cli_exe_section** %section294, align 8
  %arrayidx295 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %183, i64 %idxprom293
  %rsz296 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx295, i32 0, i32 3
  %184 = load i32, i32* %rsz296, align 4
  %cmp297 = icmp ugt i32 %184, 0
  br i1 %cmp297, label %land.lhs.true.299, label %if.then.340

land.lhs.true.299:                                ; preds = %land.lhs.true.292
  %185 = load i32, i32* %i, align 4
  %idxprom300 = sext i32 %185 to i64
  %186 = load %struct.cli_exe_info*, %struct.cli_exe_info** %peinfo.addr, align 8
  %section301 = getelementptr inbounds %struct.cli_exe_info, %struct.cli_exe_info* %186, i32 0, i32 3
  %187 = load %struct.cli_exe_section*, %struct.cli_exe_section** %section301, align 8
  %arrayidx302 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %187, i64 %idxprom300
  %rsz303 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx302, i32 0, i32 3
  %188 = load i32, i32* %rsz303, align 4
  %189 = load i64, i64* %fsize, align 8
  %conv304 = trunc i64 %189 to i32
  %cmp305 = icmp ule i32 %188, %conv304
  br i1 %cmp305, label %land.lhs.true.307, label %if.then.340

land.lhs.true.307:                                ; preds = %land.lhs.true.299
  %190 = load i32, i32* %i, align 4
  %idxprom308 = sext i32 %190 to i64
  %191 = load %struct.cli_exe_info*, %struct.cli_exe_info** %peinfo.addr, align 8
  %section309 = getelementptr inbounds %struct.cli_exe_info, %struct.cli_exe_info* %191, i32 0, i32 3
  %192 = load %struct.cli_exe_section*, %struct.cli_exe_section** %section309, align 8
  %arrayidx310 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %192, i64 %idxprom308
  %raw311 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx310, i32 0, i32 2
  %193 = load i32, i32* %raw311, align 4
  %cmp312 = icmp uge i32 %193, 0
  br i1 %cmp312, label %land.lhs.true.314, label %if.then.340

land.lhs.true.314:                                ; preds = %land.lhs.true.307
  %194 = load i32, i32* %i, align 4
  %idxprom315 = sext i32 %194 to i64
  %195 = load %struct.cli_exe_info*, %struct.cli_exe_info** %peinfo.addr, align 8
  %section316 = getelementptr inbounds %struct.cli_exe_info, %struct.cli_exe_info* %195, i32 0, i32 3
  %196 = load %struct.cli_exe_section*, %struct.cli_exe_section** %section316, align 8
  %arrayidx317 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %196, i64 %idxprom315
  %raw318 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx317, i32 0, i32 2
  %197 = load i32, i32* %raw318, align 4
  %198 = load i32, i32* %i, align 4
  %idxprom319 = sext i32 %198 to i64
  %199 = load %struct.cli_exe_info*, %struct.cli_exe_info** %peinfo.addr, align 8
  %section320 = getelementptr inbounds %struct.cli_exe_info, %struct.cli_exe_info* %199, i32 0, i32 3
  %200 = load %struct.cli_exe_section*, %struct.cli_exe_section** %section320, align 8
  %arrayidx321 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %200, i64 %idxprom319
  %rsz322 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx321, i32 0, i32 3
  %201 = load i32, i32* %rsz322, align 4
  %add323 = add i32 %197, %201
  %202 = load i64, i64* %fsize, align 8
  %conv324 = trunc i64 %202 to i32
  %add325 = add i32 0, %conv324
  %cmp326 = icmp ule i32 %add323, %add325
  br i1 %cmp326, label %land.lhs.true.328, label %if.then.340

land.lhs.true.328:                                ; preds = %land.lhs.true.314
  %203 = load i32, i32* %i, align 4
  %idxprom329 = sext i32 %203 to i64
  %204 = load %struct.cli_exe_info*, %struct.cli_exe_info** %peinfo.addr, align 8
  %section330 = getelementptr inbounds %struct.cli_exe_info, %struct.cli_exe_info* %204, i32 0, i32 3
  %205 = load %struct.cli_exe_section*, %struct.cli_exe_section** %section330, align 8
  %arrayidx331 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %205, i64 %idxprom329
  %raw332 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx331, i32 0, i32 2
  %206 = load i32, i32* %raw332, align 4
  %207 = load i32, i32* %i, align 4
  %idxprom333 = sext i32 %207 to i64
  %208 = load %struct.cli_exe_info*, %struct.cli_exe_info** %peinfo.addr, align 8
  %section334 = getelementptr inbounds %struct.cli_exe_info, %struct.cli_exe_info* %208, i32 0, i32 3
  %209 = load %struct.cli_exe_section*, %struct.cli_exe_section** %section334, align 8
  %arrayidx335 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %209, i64 %idxprom333
  %rsz336 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx335, i32 0, i32 3
  %210 = load i32, i32* %rsz336, align 4
  %add337 = add i32 %206, %210
  %cmp338 = icmp ugt i32 %add337, 0
  br i1 %cmp338, label %if.end.361, label %if.then.340

if.then.340:                                      ; preds = %land.lhs.true.328, %land.lhs.true.314, %land.lhs.true.307, %land.lhs.true.299, %land.lhs.true.292, %land.lhs.true.288
  %211 = load i64, i64* %fsize, align 8
  %212 = load i32, i32* %i, align 4
  %idxprom341 = sext i32 %212 to i64
  %213 = load %struct.cli_exe_info*, %struct.cli_exe_info** %peinfo.addr, align 8
  %section342 = getelementptr inbounds %struct.cli_exe_info, %struct.cli_exe_info* %213, i32 0, i32 3
  %214 = load %struct.cli_exe_section*, %struct.cli_exe_section** %section342, align 8
  %arrayidx343 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %214, i64 %idxprom341
  %raw344 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx343, i32 0, i32 2
  %215 = load i32, i32* %raw344, align 4
  %conv345 = zext i32 %215 to i64
  %sub346 = sub i64 %211, %conv345
  %216 = load i64, i64* %fsize, align 8
  %217 = load i32, i32* %i, align 4
  %idxprom347 = sext i32 %217 to i64
  %218 = load %struct.cli_exe_info*, %struct.cli_exe_info** %peinfo.addr, align 8
  %section348 = getelementptr inbounds %struct.cli_exe_info, %struct.cli_exe_info* %218, i32 0, i32 3
  %219 = load %struct.cli_exe_section*, %struct.cli_exe_section** %section348, align 8
  %arrayidx349 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %219, i64 %idxprom347
  %raw350 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx349, i32 0, i32 2
  %220 = load i32, i32* %raw350, align 4
  %conv351 = zext i32 %220 to i64
  %cmp352 = icmp ugt i64 %216, %conv351
  %conv353 = zext i1 %cmp352 to i32
  %conv354 = sext i32 %conv353 to i64
  %mul355 = mul i64 %sub346, %conv354
  %conv356 = trunc i64 %mul355 to i32
  %221 = load i32, i32* %i, align 4
  %idxprom357 = sext i32 %221 to i64
  %222 = load %struct.cli_exe_info*, %struct.cli_exe_info** %peinfo.addr, align 8
  %section358 = getelementptr inbounds %struct.cli_exe_info, %struct.cli_exe_info* %222, i32 0, i32 3
  %223 = load %struct.cli_exe_section*, %struct.cli_exe_section** %section358, align 8
  %arrayidx359 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %223, i64 %idxprom357
  %rsz360 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx359, i32 0, i32 3
  store i32 %conv356, i32* %rsz360, align 4
  br label %if.end.361

if.end.361:                                       ; preds = %if.then.340, %land.lhs.true.328, %if.end.282
  br label %for.inc.362

for.inc.362:                                      ; preds = %if.end.361
  %224 = load i32, i32* %i, align 4
  %inc363 = add nsw i32 %224, 1
  store i32 %inc363, i32* %i, align 4
  br label %for.cond.164

for.end.364:                                      ; preds = %for.cond.164
  %225 = load i32, i32* %pe_plus, align 4
  %tobool365 = icmp ne i32 %225, 0
  br i1 %tobool365, label %if.then.366, label %if.else.368

if.then.366:                                      ; preds = %for.end.364
  %opt64367 = bitcast %union.anon.0* %pe_opt to %struct.pe_image_optional_hdr64*
  %AddressOfEntryPoint = getelementptr inbounds %struct.pe_image_optional_hdr64, %struct.pe_image_optional_hdr64* %opt64367, i32 0, i32 6
  %226 = load i32, i32* %AddressOfEntryPoint, align 4
  %227 = load %struct.cli_exe_info*, %struct.cli_exe_info** %peinfo.addr, align 8
  %ep = getelementptr inbounds %struct.cli_exe_info, %struct.cli_exe_info* %227, i32 0, i32 0
  store i32 %226, i32* %ep, align 4
  br label %if.end.372

if.else.368:                                      ; preds = %for.end.364
  %opt32369 = bitcast %union.anon.0* %pe_opt to %struct.pe_image_optional_hdr32*
  %AddressOfEntryPoint370 = getelementptr inbounds %struct.pe_image_optional_hdr32, %struct.pe_image_optional_hdr32* %opt32369, i32 0, i32 6
  %228 = load i32, i32* %AddressOfEntryPoint370, align 4
  %229 = load %struct.cli_exe_info*, %struct.cli_exe_info** %peinfo.addr, align 8
  %ep371 = getelementptr inbounds %struct.cli_exe_info, %struct.cli_exe_info* %229, i32 0, i32 0
  store i32 %228, i32* %ep371, align 4
  br label %if.end.372

if.end.372:                                       ; preds = %if.else.368, %if.then.366
  %230 = load %struct.cli_exe_info*, %struct.cli_exe_info** %peinfo.addr, align 8
  %ep373 = getelementptr inbounds %struct.cli_exe_info, %struct.cli_exe_info* %230, i32 0, i32 0
  %231 = load i32, i32* %ep373, align 4
  %232 = load %struct.cli_exe_info*, %struct.cli_exe_info** %peinfo.addr, align 8
  %section374 = getelementptr inbounds %struct.cli_exe_info, %struct.cli_exe_info* %232, i32 0, i32 3
  %233 = load %struct.cli_exe_section*, %struct.cli_exe_section** %section374, align 8
  %234 = load %struct.cli_exe_info*, %struct.cli_exe_info** %peinfo.addr, align 8
  %nsections375 = getelementptr inbounds %struct.cli_exe_info, %struct.cli_exe_info* %234, i32 0, i32 1
  %235 = load i16, i16* %nsections375, align 2
  %236 = load i64, i64* %fsize, align 8
  %237 = load i32, i32* %hdr_size, align 4
  %call376 = call i32 @cli_rawaddr(i32 %231, %struct.cli_exe_section* %233, i16 zeroext %235, i32* %err, i64 %236, i32 %237)
  %238 = load %struct.cli_exe_info*, %struct.cli_exe_info** %peinfo.addr, align 8
  %ep377 = getelementptr inbounds %struct.cli_exe_info, %struct.cli_exe_info* %238, i32 0, i32 0
  store i32 %call376, i32* %ep377, align 4
  %tobool378 = icmp ne i32 %call376, 0
  br i1 %tobool378, label %if.end.384, label %land.lhs.true.379

land.lhs.true.379:                                ; preds = %if.end.372
  %239 = load i32, i32* %err, align 4
  %tobool380 = icmp ne i32 %239, 0
  br i1 %tobool380, label %if.then.381, label %if.end.384

if.then.381:                                      ; preds = %land.lhs.true.379
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.255, i32 0, i32 0))
  %240 = load %struct.pe_image_section_hdr*, %struct.pe_image_section_hdr** %section_hdr, align 8
  %241 = bitcast %struct.pe_image_section_hdr* %240 to i8*
  call void @free(i8* %241) #3
  %242 = load %struct.cli_exe_info*, %struct.cli_exe_info** %peinfo.addr, align 8
  %section382 = getelementptr inbounds %struct.cli_exe_info, %struct.cli_exe_info* %242, i32 0, i32 3
  %243 = load %struct.cli_exe_section*, %struct.cli_exe_section** %section382, align 8
  %244 = bitcast %struct.cli_exe_section* %243 to i8*
  call void @free(i8* %244) #3
  %245 = load %struct.cli_exe_info*, %struct.cli_exe_info** %peinfo.addr, align 8
  %section383 = getelementptr inbounds %struct.cli_exe_info, %struct.cli_exe_info* %245, i32 0, i32 3
  store %struct.cli_exe_section* null, %struct.cli_exe_section** %section383, align 8
  store i32 -1, i32* %retval
  br label %return

if.end.384:                                       ; preds = %land.lhs.true.379, %if.end.372
  %246 = load %struct.pe_image_section_hdr*, %struct.pe_image_section_hdr** %section_hdr, align 8
  %247 = bitcast %struct.pe_image_section_hdr* %246 to i8*
  call void @free(i8* %247) #3
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.384, %if.then.381, %if.then.138, %if.then.123, %if.then.117, %if.then.76, %if.then.69, %if.then.58, %if.then.52, %if.then.47, %if.then.38, %if.then.34, %if.then.28, %if.then.21, %if.then.19, %if.then.12, %if.then.4, %if.then
  %248 = load i32, i32* %retval
  ret i32 %248
}

declare void @cli_md5_init(%struct.cli_md5_ctx*) #1

declare void @cli_md5_update(%struct.cli_md5_ctx*, i8*, i64) #1

declare void @cli_md5_final(i8*, %struct.cli_md5_ctx*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
