; ModuleID = './MultiSource.Applications.ClamAV/24.libclamav_scanners.bc'
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
%struct.__dirstream = type opaque
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.cli_matched_type = type { i32, i64, i16, %struct.cli_matched_type* }
%struct.cli_exe_info = type { i32, i16, i64, %struct.cli_exe_section* }
%struct.cli_exe_section = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.__zip_dir = type { i32, i32, %struct.anon, %struct.__zip_dir_hdr*, %struct.__zip_dir_hdr*, %struct.__zip_dirent }
%struct.anon = type { %struct.__zip_file*, i8* }
%struct.__zip_file = type { %struct.__zip_dir*, i16, i16*, i64, i64, i64, i64, i8*, %struct.z_stream_s }
%struct.z_stream_s = type { i8*, i32, i64, i8*, i32, i64, i8*, %struct.internal_state*, i8* (i8*, i32, i32)*, void (i8*, i8*)*, i8*, i32, i64, i64 }
%struct.internal_state = type { i32 }
%struct.__zip_dir_hdr = type { i32, i32, i32, i32, i16, i16, i16, [2 x i16], i16, [1 x i8] }
%struct.__zip_dirent = type { i16, i32, i32, i16, i8*, i32, i32 }
%struct.cli_meta_node = type { i32, i32, i32, i32, i32, i32, i32, i8*, i8*, %struct.cli_meta_node* }
%struct.gzFile_s = type { i32, i8*, i64 }
%struct.arj_metadata_tag = type { i32, i32, i8, i8*, i32, i32 }
%struct.cab_archive = type { i32, i16, i16, i16, i16, i8, %struct.cab_folder*, %struct.cab_file* }
%struct.cab_folder = type { i16, i16, %struct.cab_archive*, i64, %struct.cab_folder* }
%struct.cab_file = type { i32, i16, i64, i8*, i32, i32, i32, %struct.cab_folder*, %struct.cab_file*, %struct.cab_archive*, %struct.cab_state* }
%struct.cab_state = type { i8*, i8*, [38912 x i8], i16, i16, i8*, i16 }
%struct.tag_arguments_tag = type { i32, i32, i8**, i8**, %struct.blob** }
%struct.blob = type { i8*, i8*, i64, i64, i32 }
%struct.vba_project_tag = type { i32, i8**, i32*, i32*, i8*, i8* }

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"ScanDir: Can't open directory %s.\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Can't fstat descriptor %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Small data (%u bytes)\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"CRITICAL: engine == NULL\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"Raw mode: No support for special files\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"%s found in descriptor %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"Archive recursion limit exceeded (arec == %u).\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"Archive.ExceededRecursionLimit\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"Mail recursion level exceeded (mrec == %u).\0A\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"RAR code not compiled-in\0A\00", align 1
@.str.13 = private unnamed_addr constant [69 x i8] c"cli_magic_scandesc: Not checking for embedded PEs (zip file > 1 MB)\0A\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"Descriptor[%d]: %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"cli_scanraw: lseek() failed\0A\00", align 1
@.str.16 = private unnamed_addr constant [54 x i8] c"%s found in descriptor %d when scanning file type %u\0A\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"ZIP-SFX signature found at %u\0A\00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"CAB-SFX signature found at %u\0A\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"ARJ-SFX signature found at %u\0A\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"NSIS signature found at %u\0A\00", align 1
@.str.21 = private unnamed_addr constant [30 x i8] c"AUTOIT signature found at %u\0A\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c"PE signature found at %u\0A\00", align 1
@.str.23 = private unnamed_addr constant [35 x i8] c"*** Detected embedded PE file ***\0A\00", align 1
@.str.24 = private unnamed_addr constant [46 x i8] c"cli_scanraw: Type %u not handled in fpt loop\0A\00", align 1
@.str.25 = private unnamed_addr constant [37 x i8] c"cli_scanembpe: Can't create file %s\0A\00", align 1
@.str.26 = private unnamed_addr constant [57 x i8] c"cli_scanembpe: Size exceeded (stopped at %lu, max: %lu)\0A\00", align 1
@.str.27 = private unnamed_addr constant [46 x i8] c"cli_scanembpe: Can't write to temporary file\0A\00", align 1
@cli_leavetemps_flag = external global i8, align 1
@.str.28 = private unnamed_addr constant [48 x i8] c"cli_scanembpe: Can't synchronise descriptor %d\0A\00", align 1
@.str.29 = private unnamed_addr constant [33 x i8] c"cli_scanembpe: Infected with %s\0A\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"in scanzip()\0A\00", align 1
@.str.31 = private unnamed_addr constant [37 x i8] c"Zip: zip_dir_open() return code: %d\0A\00", align 1
@.str.32 = private unnamed_addr constant [27 x i8] c"Zip: unable to malloc(%u)\0A\00", align 1
@.str.33 = private unnamed_addr constant [29 x i8] c"Zip: zdirent.d_name == NULL\0A\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"Suspect.Zip\00", align 1
@.str.35 = private unnamed_addr constant [110 x i8] c"Zip: %s, crc32: 0x%x, offset: %u, encrypted: %u, compressed: %u, normal: %u, method: %u, ratio: %u (max: %u)\0A\00", align 1
@.str.36 = private unnamed_addr constant [74 x i8] c"Zip: Broken file or modified information in local header part of archive\0A\00", align 1
@.str.37 = private unnamed_addr constant [28 x i8] c"Exploit.Zip.ModifiedHeaders\00", align 1
@.str.38 = private unnamed_addr constant [40 x i8] c"Zip: Directory entry with st_size != 0\0A\00", align 1
@.str.39 = private unnamed_addr constant [53 x i8] c"Zip: Malformed file (d_csize == 0 but st_size != 0)\0A\00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"Oversized.Zip\00", align 1
@.str.41 = private unnamed_addr constant [40 x i8] c"Zip: Encrypted files found in archive.\0A\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"Encrypted.Zip\00", align 1
@.str.43 = private unnamed_addr constant [39 x i8] c"Zip: %s: Size exceeded (%u, max: %lu)\0A\00", align 1
@.str.44 = private unnamed_addr constant [21 x i8] c"Zip.ExceededFileSize\00", align 1
@.str.45 = private unnamed_addr constant [36 x i8] c"Zip: Files limit reached (max: %u)\0A\00", align 1
@.str.46 = private unnamed_addr constant [23 x i8] c"Zip.ExceededFilesLimit\00", align 1
@.str.47 = private unnamed_addr constant [55 x i8] c"Not supported compression method in one or more files\0A\00", align 1
@.str.48 = private unnamed_addr constant [25 x i8] c"Zip: Can't open file %s\0A\00", align 1
@.str.49 = private unnamed_addr constant [27 x i8] c"Zip: Can't write to file.\0A\00", align 1
@.str.50 = private unnamed_addr constant [44 x i8] c"Zip: Incorrectly decompressed (%lu != %lu)\0A\00", align 1
@.str.51 = private unnamed_addr constant [30 x i8] c"Zip: File decompressed to %s\0A\00", align 1
@.str.52 = private unnamed_addr constant [21 x i8] c"Zip: fsync() failed\0A\00", align 1
@.str.53 = private unnamed_addr constant [23 x i8] c"Zip: Infected with %s\0A\00", align 1
@.str.54 = private unnamed_addr constant [56 x i8] c"Zip: Brute force mode - checking compression method %u\0A\00", align 1
@.str.55 = private unnamed_addr constant [45 x i8] c"Zip: All attempts to decompress file failed\0A\00", align 1
@.str.56 = private unnamed_addr constant [19 x i8] c"in cli_scangzip()\0A\00", align 1
@.str.57 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.58 = private unnamed_addr constant [32 x i8] c"GZip: Can't open descriptor %d\0A\00", align 1
@.str.59 = private unnamed_addr constant [38 x i8] c"GZip: Can't generate temporary file.\0A\00", align 1
@.str.60 = private unnamed_addr constant [34 x i8] c"GZip: Unable to malloc %u bytes.\0A\00", align 1
@.str.61 = private unnamed_addr constant [48 x i8] c"GZip: Size exceeded (stopped at %ld, max: %ld)\0A\00", align 1
@.str.62 = private unnamed_addr constant [22 x i8] c"GZip.ExceededFileSize\00", align 1
@.str.63 = private unnamed_addr constant [28 x i8] c"GZip: Can't write to file.\0A\00", align 1
@.str.64 = private unnamed_addr constant [39 x i8] c"GZip: Can't synchronise descriptor %d\0A\00", align 1
@.str.65 = private unnamed_addr constant [24 x i8] c"GZip: Infected with %s\0A\00", align 1
@.str.66 = private unnamed_addr constant [18 x i8] c"in cli_scanarj()\0A\00", align 1
@.str.67 = private unnamed_addr constant [42 x i8] c"RAR: Can't create temporary directory %s\0A\00", align 1
@.str.68 = private unnamed_addr constant [16 x i8] c"ARJ: Error: %s\0A\00", align 1
@.str.69 = private unnamed_addr constant [23 x i8] c"ARJ: infected with %s\0A\00", align 1
@.str.70 = private unnamed_addr constant [20 x i8] c"ARJ: Exit code: %d\0A\00", align 1
@.str.71 = private unnamed_addr constant [40 x i8] c"ARJ: %s: Size exceeded (%lu, max: %lu)\0A\00", align 1
@.str.72 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@.str.73 = private unnamed_addr constant [21 x i8] c"ARJ.ExceededFileSize\00", align 1
@.str.74 = private unnamed_addr constant [38 x i8] c"ARJ: Max ratio reached (%u, max: %u)\0A\00", align 1
@.str.75 = private unnamed_addr constant [58 x i8] c"ARJ: Ignoring ratio limit (file size doesn't hit limits)\0A\00", align 1
@.str.76 = private unnamed_addr constant [14 x i8] c"Oversized.ARJ\00", align 1
@.str.77 = private unnamed_addr constant [36 x i8] c"ARJ: Files limit reached (max: %u)\0A\00", align 1
@.str.78 = private unnamed_addr constant [23 x i8] c"ARJ.ExceededFilesLimit\00", align 1
@.str.79 = private unnamed_addr constant [20 x i8] c"in cli_scanmscab()\0A\00", align 1
@.str.80 = private unnamed_addr constant [39 x i8] c"CAB: %s: Size exceeded (%u, max: %lu)\0A\00", align 1
@.str.81 = private unnamed_addr constant [21 x i8] c"CAB.ExceededFileSize\00", align 1
@.str.82 = private unnamed_addr constant [36 x i8] c"CAB: Files limit reached (max: %u)\0A\00", align 1
@.str.83 = private unnamed_addr constant [23 x i8] c"CAB.ExceededFilesLimit\00", align 1
@.str.84 = private unnamed_addr constant [40 x i8] c"CAB: Extracting file %s to %s, size %u\0A\00", align 1
@.str.85 = private unnamed_addr constant [33 x i8] c"CAB: Failed to extract file: %s\0A\00", align 1
@.str.86 = private unnamed_addr constant [19 x i8] c"in cli_scanhtml()\0A\00", align 1
@.str.87 = private unnamed_addr constant [48 x i8] c"cli_scanhtml: fstat() failed for descriptor %d\0A\00", align 1
@.str.88 = private unnamed_addr constant [48 x i8] c"cli_scanhtml: exiting (file larger than 10 MB)\0A\00", align 1
@.str.89 = private unnamed_addr constant [51 x i8] c"cli_scanhtml: Can't create temporary directory %s\0A\00", align 1
@.str.90 = private unnamed_addr constant [16 x i8] c"%s/comment.html\00", align 1
@.str.91 = private unnamed_addr constant [18 x i8] c"%s/nocomment.html\00", align 1
@.str.92 = private unnamed_addr constant [15 x i8] c"%s/script.html\00", align 1
@.str.93 = private unnamed_addr constant [11 x i8] c"%s/rfc2397\00", align 1
@.str.94 = private unnamed_addr constant [25 x i8] c"in cli_scanhtml_utf16()\0A\00", align 1
@.str.95 = private unnamed_addr constant [42 x i8] c"cli_scanhtml_utf16: Can't create file %s\0A\00", align 1
@.str.96 = private unnamed_addr constant [44 x i8] c"cli_scanhtml_utf16: Can't write to file %s\0A\00", align 1
@.str.97 = private unnamed_addr constant [51 x i8] c"cli_scanhtml_utf16: Decoded HTML data saved in %s\0A\00", align 1
@.str.98 = private unnamed_addr constant [49 x i8] c"Starting cli_scanmail(), mrec == %u, arec == %u\0A\00", align 1
@.str.99 = private unnamed_addr constant [43 x i8] c"Mail: Can't create temporary directory %s\0A\00", align 1
@.str.100 = private unnamed_addr constant [51 x i8] c"Can't create temporary directory for tnef file %s\0A\00", align 1
@.str.101 = private unnamed_addr constant [56 x i8] c"Can't create temporary directory for uuencoded file %s\0A\00", align 1
@.str.102 = private unnamed_addr constant [50 x i8] c"Can't create temporary directory for PST file %s\0A\00", align 1
@.str.103 = private unnamed_addr constant [20 x i8] c"in cli_scanmschm()\0A\00", align 1
@.str.104 = private unnamed_addr constant [42 x i8] c"CHM: Can't create temporary directory %s\0A\00", align 1
@.str.105 = private unnamed_addr constant [19 x i8] c"in cli_scanole2()\0A\00", align 1
@.str.106 = private unnamed_addr constant [43 x i8] c"OLE2: Can't create temporary directory %s\0A\00", align 1
@.str.107 = private unnamed_addr constant [10 x i8] c"OLE2: %s\0A\00", align 1
@.str.108 = private unnamed_addr constant [12 x i8] c"VBADir: %s\0A\00", align 1
@.str.109 = private unnamed_addr constant [28 x i8] c"VBADir: Can't open file %s\0A\00", align 1
@.str.110 = private unnamed_addr constant [37 x i8] c"VBADir: Decompress VBA project '%s'\0A\00", align 1
@.str.111 = private unnamed_addr constant [56 x i8] c"VBADir: WARNING: VBA project '%s' decompressed to NULL\0A\00", align 1
@.str.112 = private unnamed_addr constant [62 x i8] c"VBADir: Decompress WM project '%s' macro:%d key:%d length:%d\0A\00", align 1
@.str.113 = private unnamed_addr constant [61 x i8] c"VBADir: WARNING: WM project '%s' macro %d decrypted to NULL\0A\00", align 1
@.str.114 = private unnamed_addr constant [18 x i8] c"%s/_1_Ole10Native\00", align 1
@.str.115 = private unnamed_addr constant [34 x i8] c"VBADir: Can't open directory %s.\0A\00", align 1
@.str.116 = private unnamed_addr constant [18 x i8] c"in cli_scantar()\0A\00", align 1
@.str.117 = private unnamed_addr constant [42 x i8] c"Tar: Can't create temporary directory %s\0A\00", align 1
@.str.118 = private unnamed_addr constant [9 x i8] c"Tar: %s\0A\00", align 1
@.str.119 = private unnamed_addr constant [21 x i8] c"in cli_scanbinhex()\0A\00", align 1
@.str.120 = private unnamed_addr constant [45 x i8] c"Binhex: Can't create temporary directory %s\0A\00", align 1
@.str.121 = private unnamed_addr constant [12 x i8] c"Binhex: %s\0A\00", align 1
@.str.122 = private unnamed_addr constant [21 x i8] c"in cli_scanscrenc()\0A\00", align 1
@.str.123 = private unnamed_addr constant [21 x i8] c"Exploit.W32.MS05-002\00", align 1
@.str.124 = private unnamed_addr constant [21 x i8] c"Exploit.W32.MS04-028\00", align 1
@.str.125 = private unnamed_addr constant [50 x i8] c"Can't create temporary directory for PDF file %s\0A\00", align 1
@.str.126 = private unnamed_addr constant [36 x i8] c"CryptFF: Can't fstat descriptor %d\0A\00", align 1
@.str.127 = private unnamed_addr constant [36 x i8] c"CryptFF: Can't lseek descriptor %d\0A\00", align 1
@.str.128 = private unnamed_addr constant [32 x i8] c"CryptFF: Can't allocate memory\0A\00", align 1
@.str.129 = private unnamed_addr constant [40 x i8] c"CryptFF: Can't read from descriptor %d\0A\00", align 1
@.str.130 = private unnamed_addr constant [31 x i8] c"CryptFF: Can't create file %s\0A\00", align 1
@.str.131 = private unnamed_addr constant [39 x i8] c"CryptFF: Can't write to descriptor %d\0A\00", align 1
@.str.132 = private unnamed_addr constant [36 x i8] c"CryptFF: Can't fsync descriptor %d\0A\00", align 1
@.str.133 = private unnamed_addr constant [34 x i8] c"CryptFF: Scanning decrypted data\0A\00", align 1
@.str.134 = private unnamed_addr constant [27 x i8] c"CryptFF: Infected with %s\0A\00", align 1
@.str.135 = private unnamed_addr constant [40 x i8] c"CryptFF: Decompressed data saved in %s\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @cli_scandir(i8* %dirname, %struct.cli_ctx* %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %dirname.addr = alloca i8*, align 8
  %ctx.addr = alloca %struct.cli_ctx*, align 8
  %dd = alloca %struct.__dirstream*, align 8
  %dent = alloca %struct.dirent*, align 8
  %statbuf = alloca %struct.stat, align 8
  %fname = alloca i8*, align 8
  store i8* %dirname, i8** %dirname.addr, align 8
  store %struct.cli_ctx* %ctx, %struct.cli_ctx** %ctx.addr, align 8
  %0 = load i8*, i8** %dirname.addr, align 8
  %call = call %struct.__dirstream* @opendir(i8* %0)
  store %struct.__dirstream* %call, %struct.__dirstream** %dd, align 8
  %cmp = icmp ne %struct.__dirstream* %call, null
  br i1 %cmp, label %if.then, label %if.else.51

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.50, %if.then
  %1 = load %struct.__dirstream*, %struct.__dirstream** %dd, align 8
  %call1 = call %struct.dirent* @readdir(%struct.__dirstream* %1)
  store %struct.dirent* %call1, %struct.dirent** %dent, align 8
  %tobool = icmp ne %struct.dirent* %call1, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_ino = getelementptr inbounds %struct.dirent, %struct.dirent* %2, i32 0, i32 0
  %3 = load i64, i64* %d_ino, align 8
  %tobool2 = icmp ne i64 %3, 0
  br i1 %tobool2, label %if.then.3, label %if.end.50

if.then.3:                                        ; preds = %while.body
  %4 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name = getelementptr inbounds %struct.dirent, %struct.dirent* %4, i32 0, i32 4
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %d_name, i32 0, i32 0
  %call4 = call i32 @strcmp(i8* %arraydecay, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0)) #5
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %land.lhs.true, label %if.end.49

land.lhs.true:                                    ; preds = %if.then.3
  %5 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name6 = getelementptr inbounds %struct.dirent, %struct.dirent* %5, i32 0, i32 4
  %arraydecay7 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name6, i32 0, i32 0
  %call8 = call i32 @strcmp(i8* %arraydecay7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0)) #5
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then.10, label %if.end.49

if.then.10:                                       ; preds = %land.lhs.true
  %6 = load i8*, i8** %dirname.addr, align 8
  %call11 = call i64 @strlen(i8* %6) #5
  %7 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name12 = getelementptr inbounds %struct.dirent, %struct.dirent* %7, i32 0, i32 4
  %arraydecay13 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name12, i32 0, i32 0
  %call14 = call i64 @strlen(i8* %arraydecay13) #5
  %add = add i64 %call11, %call14
  %add15 = add i64 %add, 2
  %call16 = call i8* @cli_malloc(i64 %add15)
  store i8* %call16, i8** %fname, align 8
  %8 = load i8*, i8** %fname, align 8
  %tobool17 = icmp ne i8* %8, null
  br i1 %tobool17, label %if.end, label %if.then.18

if.then.18:                                       ; preds = %if.then.10
  %9 = load %struct.__dirstream*, %struct.__dirstream** %dd, align 8
  %call19 = call i32 @closedir(%struct.__dirstream* %9)
  store i32 -114, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.10
  %10 = load i8*, i8** %fname, align 8
  %11 = load i8*, i8** %dirname.addr, align 8
  %12 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name20 = getelementptr inbounds %struct.dirent, %struct.dirent* %12, i32 0, i32 4
  %arraydecay21 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name20, i32 0, i32 0
  %call22 = call i32 (i8*, i8*, ...) @sprintf(i8* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* %11, i8* %arraydecay21) #4
  %13 = load i8*, i8** %fname, align 8
  %call23 = call i32 @lstat(i8* %13, %struct.stat* %statbuf) #4
  %cmp24 = icmp ne i32 %call23, -1
  br i1 %cmp24, label %if.then.25, label %if.end.48

if.then.25:                                       ; preds = %if.end
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 3
  %14 = load i32, i32* %st_mode, align 4
  %and = and i32 %14, 61440
  %cmp26 = icmp eq i32 %and, 16384
  br i1 %cmp26, label %land.lhs.true.27, label %if.else

land.lhs.true.27:                                 ; preds = %if.then.25
  %st_mode28 = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 3
  %15 = load i32, i32* %st_mode28, align 4
  %and29 = and i32 %15, 61440
  %cmp30 = icmp eq i32 %and29, 40960
  br i1 %cmp30, label %if.else, label %if.then.31

if.then.31:                                       ; preds = %land.lhs.true.27
  %16 = load i8*, i8** %fname, align 8
  %17 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call32 = call i32 @cli_scandir(i8* %16, %struct.cli_ctx* %17)
  %cmp33 = icmp eq i32 %call32, 1
  br i1 %cmp33, label %if.then.34, label %if.end.36

if.then.34:                                       ; preds = %if.then.31
  %18 = load i8*, i8** %fname, align 8
  call void @free(i8* %18) #4
  %19 = load %struct.__dirstream*, %struct.__dirstream** %dd, align 8
  %call35 = call i32 @closedir(%struct.__dirstream* %19)
  store i32 1, i32* %retval
  br label %return

if.end.36:                                        ; preds = %if.then.31
  br label %if.end.47

if.else:                                          ; preds = %land.lhs.true.27, %if.then.25
  %st_mode37 = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 3
  %20 = load i32, i32* %st_mode37, align 4
  %and38 = and i32 %20, 61440
  %cmp39 = icmp eq i32 %and38, 32768
  br i1 %cmp39, label %if.then.40, label %if.end.46

if.then.40:                                       ; preds = %if.else
  %21 = load i8*, i8** %fname, align 8
  %22 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call41 = call i32 @cli_scanfile(i8* %21, %struct.cli_ctx* %22)
  %cmp42 = icmp eq i32 %call41, 1
  br i1 %cmp42, label %if.then.43, label %if.end.45

if.then.43:                                       ; preds = %if.then.40
  %23 = load i8*, i8** %fname, align 8
  call void @free(i8* %23) #4
  %24 = load %struct.__dirstream*, %struct.__dirstream** %dd, align 8
  %call44 = call i32 @closedir(%struct.__dirstream* %24)
  store i32 1, i32* %retval
  br label %return

if.end.45:                                        ; preds = %if.then.40
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.else
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.end.36
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.end
  %25 = load i8*, i8** %fname, align 8
  call void @free(i8* %25) #4
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %land.lhs.true, %if.then.3
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.52

if.else.51:                                       ; preds = %entry
  %26 = load i8*, i8** %dirname.addr, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i32 0, i32 0), i8* %26)
  store i32 -115, i32* %retval
  br label %return

if.end.52:                                        ; preds = %while.end
  %27 = load %struct.__dirstream*, %struct.__dirstream** %dd, align 8
  %call53 = call i32 @closedir(%struct.__dirstream* %27)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.52, %if.else.51, %if.then.43, %if.then.34, %if.then.18
  %28 = load i32, i32* %retval
  ret i32 %28
}

declare %struct.__dirstream* @opendir(i8*) #1

declare %struct.dirent* @readdir(%struct.__dirstream*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

declare i8* @cli_malloc(i64) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare i32 @closedir(%struct.__dirstream*) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #3

; Function Attrs: nounwind
declare i32 @lstat(i8*, %struct.stat*) #3

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @cli_scanfile(i8* %filename, %struct.cli_ctx* %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %ctx.addr = alloca %struct.cli_ctx*, align 8
  %fd = alloca i32, align 4
  %ret = alloca i32, align 4
  store i8* %filename, i8** %filename.addr, align 8
  store %struct.cli_ctx* %ctx, %struct.cli_ctx** %ctx.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call i32 (i8*, i32, ...) @open(i8* %0, i32 0)
  store i32 %call, i32* %fd, align 4
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -115, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %fd, align 4
  %2 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call1 = call i32 @cli_magic_scandesc(i32 %1, %struct.cli_ctx* %2)
  store i32 %call1, i32* %ret, align 4
  %3 = load i32, i32* %fd, align 4
  %call2 = call i32 @close(i32 %3)
  %4 = load i32, i32* %ret, align 4
  store i32 %4, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

declare void @cli_dbgmsg(i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @cli_magic_scandesc(i32 %desc, %struct.cli_ctx* %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %desc.addr = alloca i32, align 4
  %ctx.addr = alloca %struct.cli_ctx*, align 8
  %ret = alloca i32, align 4
  %type = alloca i32, align 4
  %sb = alloca %struct.stat, align 8
  %typercg = alloca i8, align 1
  %s = alloca %struct.stat, align 8
  store i32 %desc, i32* %desc.addr, align 4
  store %struct.cli_ctx* %ctx, %struct.cli_ctx** %ctx.addr, align 8
  store i32 0, i32* %ret, align 4
  store i8 1, i8* %typercg, align 1
  %0 = load i32, i32* %desc.addr, align 4
  %call = call i32 @fstat(i32 %0, %struct.stat* %sb) #4
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %desc.addr, align 4
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0), i32 %1)
  store i32 -123, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %sb, i32 0, i32 8
  %2 = load i64, i64* %st_size, align 8
  %cmp1 = icmp sle i64 %2, 5
  br i1 %cmp1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %st_size3 = getelementptr inbounds %struct.stat, %struct.stat* %sb, i32 0, i32 8
  %3 = load i64, i64* %st_size3, align 8
  %conv = trunc i64 %3 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i32 0, i32 0), i32 %conv)
  store i32 0, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %engine = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %4, i32 0, i32 3
  %5 = load %struct.cl_engine*, %struct.cl_engine** %engine, align 8
  %tobool = icmp ne %struct.cl_engine* %5, null
  br i1 %tobool, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end.4
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0))
  store i32 -116, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end.4
  %6 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %6, i32 0, i32 5
  %7 = load i32, i32* %options, align 4
  %tobool7 = icmp ne i32 %7, 0
  br i1 %tobool7, label %if.end.14, label %if.then.8

if.then.8:                                        ; preds = %if.end.6
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i32 0, i32 0))
  %8 = load i32, i32* %desc.addr, align 4
  %9 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call9 = call i32 @cli_scandesc(i32 %8, %struct.cli_ctx* %9, i8 zeroext 0, i32 0, i8 zeroext 0, %struct.cli_matched_type** null)
  store i32 %call9, i32* %ret, align 4
  %cmp10 = icmp eq i32 %call9, 1
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.8
  %10 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %10, i32 0, i32 0
  %11 = load i8**, i8*** %virname, align 8
  %12 = load i8*, i8** %11, align 8
  %13 = load i32, i32* %desc.addr, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i32 0, i32 0), i8* %12, i32 %13)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.then.8
  %14 = load i32, i32* %ret, align 4
  store i32 %14, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.end.6
  %15 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options15 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %15, i32 0, i32 5
  %16 = load i32, i32* %options15, align 4
  %and = and i32 %16, 1
  %tobool16 = icmp ne i32 %and, 0
  br i1 %tobool16, label %land.lhs.true, label %if.end.35

land.lhs.true:                                    ; preds = %if.end.14
  %17 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %17, i32 0, i32 4
  %18 = load %struct.cl_limits*, %struct.cl_limits** %limits, align 8
  %tobool17 = icmp ne %struct.cl_limits* %18, null
  br i1 %tobool17, label %land.lhs.true.18, label %if.end.35

land.lhs.true.18:                                 ; preds = %land.lhs.true
  %19 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits19 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %19, i32 0, i32 4
  %20 = load %struct.cl_limits*, %struct.cl_limits** %limits19, align 8
  %maxreclevel = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %20, i32 0, i32 0
  %21 = load i32, i32* %maxreclevel, align 4
  %tobool20 = icmp ne i32 %21, 0
  br i1 %tobool20, label %if.then.21, label %if.end.35

if.then.21:                                       ; preds = %land.lhs.true.18
  %22 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %arec = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %22, i32 0, i32 6
  %23 = load i32, i32* %arec, align 4
  %24 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits22 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %24, i32 0, i32 4
  %25 = load %struct.cl_limits*, %struct.cl_limits** %limits22, align 8
  %maxreclevel23 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %25, i32 0, i32 0
  %26 = load i32, i32* %maxreclevel23, align 4
  %cmp24 = icmp ugt i32 %23, %26
  br i1 %cmp24, label %if.then.26, label %if.end.34

if.then.26:                                       ; preds = %if.then.21
  %27 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %arec27 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %27, i32 0, i32 6
  %28 = load i32, i32* %arec27, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i32 0, i32 0), i32 %28)
  %29 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options28 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %29, i32 0, i32 5
  %30 = load i32, i32* %options28, align 4
  %and29 = and i32 %30, 256
  %tobool30 = icmp ne i32 %and29, 0
  br i1 %tobool30, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %if.then.26
  %31 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname32 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %31, i32 0, i32 0
  %32 = load i8**, i8*** %virname32, align 8
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i32 0, i32 0), i8** %32, align 8
  store i32 1, i32* %retval
  br label %return

if.end.33:                                        ; preds = %if.then.26
  store i32 0, i32* %retval
  br label %return

if.end.34:                                        ; preds = %if.then.21
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %land.lhs.true.18, %land.lhs.true, %if.end.14
  %33 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options36 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %33, i32 0, i32 5
  %34 = load i32, i32* %options36, align 4
  %and37 = and i32 %34, 2
  %tobool38 = icmp ne i32 %and37, 0
  br i1 %tobool38, label %if.then.39, label %if.end.45

if.then.39:                                       ; preds = %if.end.35
  %35 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %mrec = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %35, i32 0, i32 7
  %36 = load i32, i32* %mrec, align 4
  %cmp40 = icmp ugt i32 %36, 15
  br i1 %cmp40, label %if.then.42, label %if.end.44

if.then.42:                                       ; preds = %if.then.39
  %37 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %mrec43 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %37, i32 0, i32 7
  %38 = load i32, i32* %mrec43, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i32 0, i32 0), i32 %38)
  store i32 0, i32* %retval
  br label %return

if.end.44:                                        ; preds = %if.then.39
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.end.35
  %39 = load i32, i32* %desc.addr, align 4
  %call46 = call i64 @lseek(i32 %39, i64 0, i32 0) #4
  %40 = load i32, i32* %desc.addr, align 4
  %41 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %engine47 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %41, i32 0, i32 3
  %42 = load %struct.cl_engine*, %struct.cl_engine** %engine47, align 8
  %call48 = call i32 @cli_filetype2(i32 %40, %struct.cl_engine* %42)
  store i32 %call48, i32* %type, align 4
  %43 = load i32, i32* %desc.addr, align 4
  %call49 = call i64 @lseek(i32 %43, i64 0, i32 0) #4
  %44 = load i32, i32* %type, align 4
  %cmp50 = icmp ne i32 %44, 504
  br i1 %cmp50, label %land.lhs.true.52, label %if.end.63

land.lhs.true.52:                                 ; preds = %if.end.45
  %45 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %engine53 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %45, i32 0, i32 3
  %46 = load %struct.cl_engine*, %struct.cl_engine** %engine53, align 8
  %sdb = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %46, i32 0, i32 1
  %47 = load i16, i16* %sdb, align 2
  %conv54 = zext i16 %47 to i32
  %tobool55 = icmp ne i32 %conv54, 0
  br i1 %tobool55, label %if.then.56, label %if.end.63

if.then.56:                                       ; preds = %land.lhs.true.52
  %48 = load i32, i32* %desc.addr, align 4
  %49 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %50 = load i32, i32* %type, align 4
  %call57 = call i32 @cli_scanraw(i32 %48, %struct.cli_ctx* %49, i32 %50, i8 zeroext 0)
  store i32 %call57, i32* %ret, align 4
  %cmp58 = icmp eq i32 %call57, 1
  br i1 %cmp58, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %if.then.56
  store i32 1, i32* %retval
  br label %return

if.end.61:                                        ; preds = %if.then.56
  %51 = load i32, i32* %desc.addr, align 4
  %call62 = call i64 @lseek(i32 %51, i64 0, i32 0) #4
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.61, %land.lhs.true.52, %if.end.45
  %52 = load i32, i32* %type, align 4
  %cmp64 = icmp eq i32 %52, 529
  br i1 %cmp64, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.63
  %53 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %mrec66 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %53, i32 0, i32 7
  %54 = load i32, i32* %mrec66, align 4
  %inc = add i32 %54, 1
  store i32 %inc, i32* %mrec66, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.63
  %55 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %arec67 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %55, i32 0, i32 6
  %56 = load i32, i32* %arec67, align 4
  %inc68 = add i32 %56, 1
  store i32 %inc68, i32* %arec67, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %54, %cond.true ], [ %56, %cond.false ]
  %57 = load i32, i32* %type, align 4
  switch i32 %57, label %sw.default [
    i32 510, label %sw.bb
    i32 508, label %sw.bb.69
    i32 507, label %sw.bb.79
    i32 509, label %sw.bb.91
    i32 511, label %sw.bb.92
    i32 535, label %sw.bb.104
    i32 536, label %sw.bb.111
    i32 514, label %sw.bb.123
    i32 528, label %sw.bb.135
    i32 526, label %sw.bb.146
    i32 527, label %sw.bb.158
    i32 529, label %sw.bb.166
    i32 521, label %sw.bb.177
    i32 524, label %sw.bb.189
    i32 525, label %sw.bb.196
    i32 515, label %sw.bb.208
    i32 513, label %sw.bb.220
    i32 505, label %sw.bb.232
    i32 506, label %sw.bb.244
    i32 520, label %sw.bb.256
    i32 517, label %sw.bb.268
    i32 519, label %sw.bb.276
    i32 518, label %sw.bb.289
    i32 523, label %sw.bb.302
    i32 522, label %sw.bb.314
    i32 503, label %sw.bb.322
    i32 516, label %sw.bb.332
    i32 504, label %sw.bb.344
    i32 501, label %sw.bb.358
  ]

sw.bb:                                            ; preds = %cond.end
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i32 0, i32 0))
  br label %sw.epilog

sw.bb.69:                                         ; preds = %cond.end
  %58 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options70 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %58, i32 0, i32 5
  %59 = load i32, i32* %options70, align 4
  %and71 = and i32 %59, 1
  %tobool72 = icmp ne i32 %and71, 0
  br i1 %tobool72, label %land.lhs.true.73, label %if.end.78

land.lhs.true.73:                                 ; preds = %sw.bb.69
  %60 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %dconf = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %60, i32 0, i32 9
  %61 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf, align 8
  %archive = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %61, i32 0, i32 2
  %62 = load i32, i32* %archive, align 4
  %and74 = and i32 %62, 2
  %tobool75 = icmp ne i32 %and74, 0
  br i1 %tobool75, label %if.then.76, label %if.end.78

if.then.76:                                       ; preds = %land.lhs.true.73
  %63 = load i32, i32* %desc.addr, align 4
  %64 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call77 = call i32 @cli_scanzip(i32 %63, %struct.cli_ctx* %64, i64 0, i32* null)
  store i32 %call77, i32* %ret, align 4
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.76, %land.lhs.true.73, %sw.bb.69
  br label %sw.epilog

sw.bb.79:                                         ; preds = %cond.end
  %65 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options80 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %65, i32 0, i32 5
  %66 = load i32, i32* %options80, align 4
  %and81 = and i32 %66, 1
  %tobool82 = icmp ne i32 %and81, 0
  br i1 %tobool82, label %land.lhs.true.83, label %if.end.90

land.lhs.true.83:                                 ; preds = %sw.bb.79
  %67 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %dconf84 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %67, i32 0, i32 9
  %68 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf84, align 8
  %archive85 = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %68, i32 0, i32 2
  %69 = load i32, i32* %archive85, align 4
  %and86 = and i32 %69, 4
  %tobool87 = icmp ne i32 %and86, 0
  br i1 %tobool87, label %if.then.88, label %if.end.90

if.then.88:                                       ; preds = %land.lhs.true.83
  %70 = load i32, i32* %desc.addr, align 4
  %71 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call89 = call i32 @cli_scangzip(i32 %70, %struct.cli_ctx* %71)
  store i32 %call89, i32* %ret, align 4
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.88, %land.lhs.true.83, %sw.bb.79
  br label %sw.epilog

sw.bb.91:                                         ; preds = %cond.end
  br label %sw.epilog

sw.bb.92:                                         ; preds = %cond.end
  %72 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options93 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %72, i32 0, i32 5
  %73 = load i32, i32* %options93, align 4
  %and94 = and i32 %73, 1
  %tobool95 = icmp ne i32 %and94, 0
  br i1 %tobool95, label %land.lhs.true.96, label %if.end.103

land.lhs.true.96:                                 ; preds = %sw.bb.92
  %74 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %dconf97 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %74, i32 0, i32 9
  %75 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf97, align 8
  %archive98 = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %75, i32 0, i32 2
  %76 = load i32, i32* %archive98, align 4
  %and99 = and i32 %76, 4096
  %tobool100 = icmp ne i32 %and99, 0
  br i1 %tobool100, label %if.then.101, label %if.end.103

if.then.101:                                      ; preds = %land.lhs.true.96
  %77 = load i32, i32* %desc.addr, align 4
  %78 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call102 = call i32 @cli_scanarj(i32 %77, %struct.cli_ctx* %78, i64 0, i32* null)
  store i32 %call102, i32* %ret, align 4
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.101, %land.lhs.true.96, %sw.bb.92
  br label %sw.epilog

sw.bb.104:                                        ; preds = %cond.end
  %79 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options105 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %79, i32 0, i32 5
  %80 = load i32, i32* %options105, align 4
  %and106 = and i32 %80, 1
  %tobool107 = icmp ne i32 %and106, 0
  br i1 %tobool107, label %if.then.108, label %if.end.110

if.then.108:                                      ; preds = %sw.bb.104
  %81 = load i32, i32* %desc.addr, align 4
  %82 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call109 = call i32 @cli_scannulsft(i32 %81, %struct.cli_ctx* %82, i64 0)
  store i32 %call109, i32* %ret, align 4
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.108, %sw.bb.104
  br label %sw.epilog

sw.bb.111:                                        ; preds = %cond.end
  %83 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options112 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %83, i32 0, i32 5
  %84 = load i32, i32* %options112, align 4
  %and113 = and i32 %84, 1
  %tobool114 = icmp ne i32 %and113, 0
  br i1 %tobool114, label %land.lhs.true.115, label %if.end.122

land.lhs.true.115:                                ; preds = %sw.bb.111
  %85 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %dconf116 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %85, i32 0, i32 9
  %86 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf116, align 8
  %archive117 = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %86, i32 0, i32 2
  %87 = load i32, i32* %archive117, align 4
  %and118 = and i32 %87, 8192
  %tobool119 = icmp ne i32 %and118, 0
  br i1 %tobool119, label %if.then.120, label %if.end.122

if.then.120:                                      ; preds = %land.lhs.true.115
  %88 = load i32, i32* %desc.addr, align 4
  %89 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call121 = call i32 @cli_scanautoit(i32 %88, %struct.cli_ctx* %89, i64 23)
  store i32 %call121, i32* %ret, align 4
  br label %if.end.122

if.end.122:                                       ; preds = %if.then.120, %land.lhs.true.115, %sw.bb.111
  br label %sw.epilog

sw.bb.123:                                        ; preds = %cond.end
  %90 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options124 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %90, i32 0, i32 5
  %91 = load i32, i32* %options124, align 4
  %and125 = and i32 %91, 1
  %tobool126 = icmp ne i32 %and125, 0
  br i1 %tobool126, label %land.lhs.true.127, label %if.end.134

land.lhs.true.127:                                ; preds = %sw.bb.123
  %92 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %dconf128 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %92, i32 0, i32 9
  %93 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf128, align 8
  %archive129 = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %93, i32 0, i32 2
  %94 = load i32, i32* %archive129, align 4
  %and130 = and i32 %94, 32
  %tobool131 = icmp ne i32 %and130, 0
  br i1 %tobool131, label %if.then.132, label %if.end.134

if.then.132:                                      ; preds = %land.lhs.true.127
  %95 = load i32, i32* %desc.addr, align 4
  %96 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call133 = call i32 @cli_scanmscab(i32 %95, %struct.cli_ctx* %96, i64 0)
  store i32 %call133, i32* %ret, align 4
  br label %if.end.134

if.end.134:                                       ; preds = %if.then.132, %land.lhs.true.127, %sw.bb.123
  br label %sw.epilog

sw.bb.135:                                        ; preds = %cond.end
  %97 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options136 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %97, i32 0, i32 5
  %98 = load i32, i32* %options136, align 4
  %and137 = and i32 %98, 16
  %tobool138 = icmp ne i32 %and137, 0
  br i1 %tobool138, label %land.lhs.true.139, label %if.end.145

land.lhs.true.139:                                ; preds = %sw.bb.135
  %99 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %dconf140 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %99, i32 0, i32 9
  %100 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf140, align 8
  %doc = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %100, i32 0, i32 3
  %101 = load i32, i32* %doc, align 4
  %and141 = and i32 %101, 1
  %tobool142 = icmp ne i32 %and141, 0
  br i1 %tobool142, label %if.then.143, label %if.end.145

if.then.143:                                      ; preds = %land.lhs.true.139
  %102 = load i32, i32* %desc.addr, align 4
  %103 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call144 = call i32 @cli_scanhtml(i32 %102, %struct.cli_ctx* %103)
  store i32 %call144, i32* %ret, align 4
  br label %if.end.145

if.end.145:                                       ; preds = %if.then.143, %land.lhs.true.139, %sw.bb.135
  br label %sw.epilog

sw.bb.146:                                        ; preds = %cond.end
  %104 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options147 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %104, i32 0, i32 5
  %105 = load i32, i32* %options147, align 4
  %and148 = and i32 %105, 16
  %tobool149 = icmp ne i32 %and148, 0
  br i1 %tobool149, label %land.lhs.true.150, label %if.end.157

land.lhs.true.150:                                ; preds = %sw.bb.146
  %106 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %dconf151 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %106, i32 0, i32 9
  %107 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf151, align 8
  %doc152 = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %107, i32 0, i32 3
  %108 = load i32, i32* %doc152, align 4
  %and153 = and i32 %108, 1
  %tobool154 = icmp ne i32 %and153, 0
  br i1 %tobool154, label %if.then.155, label %if.end.157

if.then.155:                                      ; preds = %land.lhs.true.150
  %109 = load i32, i32* %desc.addr, align 4
  %110 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call156 = call i32 @cli_scanhtml_utf16(i32 %109, %struct.cli_ctx* %110)
  store i32 %call156, i32* %ret, align 4
  br label %if.end.157

if.end.157:                                       ; preds = %if.then.155, %land.lhs.true.150, %sw.bb.146
  br label %sw.epilog

sw.bb.158:                                        ; preds = %cond.end
  %111 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %dconf159 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %111, i32 0, i32 9
  %112 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf159, align 8
  %doc160 = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %112, i32 0, i32 3
  %113 = load i32, i32* %doc160, align 4
  %and161 = and i32 %113, 2
  %tobool162 = icmp ne i32 %and161, 0
  br i1 %tobool162, label %if.then.163, label %if.end.165

if.then.163:                                      ; preds = %sw.bb.158
  %114 = load i32, i32* %desc.addr, align 4
  %115 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call164 = call i32 @cli_scanrtf(i32 %114, %struct.cli_ctx* %115)
  store i32 %call164, i32* %ret, align 4
  br label %if.end.165

if.end.165:                                       ; preds = %if.then.163, %sw.bb.158
  br label %sw.epilog

sw.bb.166:                                        ; preds = %cond.end
  %116 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options167 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %116, i32 0, i32 5
  %117 = load i32, i32* %options167, align 4
  %and168 = and i32 %117, 2
  %tobool169 = icmp ne i32 %and168, 0
  br i1 %tobool169, label %land.lhs.true.170, label %if.end.176

land.lhs.true.170:                                ; preds = %sw.bb.166
  %118 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %dconf171 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %118, i32 0, i32 9
  %119 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf171, align 8
  %mail = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %119, i32 0, i32 4
  %120 = load i32, i32* %mail, align 4
  %and172 = and i32 %120, 1
  %tobool173 = icmp ne i32 %and172, 0
  br i1 %tobool173, label %if.then.174, label %if.end.176

if.then.174:                                      ; preds = %land.lhs.true.170
  %121 = load i32, i32* %desc.addr, align 4
  %122 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call175 = call i32 @cli_scanmail(i32 %121, %struct.cli_ctx* %122)
  store i32 %call175, i32* %ret, align 4
  br label %if.end.176

if.end.176:                                       ; preds = %if.then.174, %land.lhs.true.170, %sw.bb.166
  br label %sw.epilog

sw.bb.177:                                        ; preds = %cond.end
  %123 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options178 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %123, i32 0, i32 5
  %124 = load i32, i32* %options178, align 4
  %and179 = and i32 %124, 2
  %tobool180 = icmp ne i32 %and179, 0
  br i1 %tobool180, label %land.lhs.true.181, label %if.end.188

land.lhs.true.181:                                ; preds = %sw.bb.177
  %125 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %dconf182 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %125, i32 0, i32 9
  %126 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf182, align 8
  %mail183 = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %126, i32 0, i32 4
  %127 = load i32, i32* %mail183, align 4
  %and184 = and i32 %127, 2
  %tobool185 = icmp ne i32 %and184, 0
  br i1 %tobool185, label %if.then.186, label %if.end.188

if.then.186:                                      ; preds = %land.lhs.true.181
  %128 = load i32, i32* %desc.addr, align 4
  %129 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call187 = call i32 @cli_scantnef(i32 %128, %struct.cli_ctx* %129)
  store i32 %call187, i32* %ret, align 4
  br label %if.end.188

if.end.188:                                       ; preds = %if.then.186, %land.lhs.true.181, %sw.bb.177
  br label %sw.epilog

sw.bb.189:                                        ; preds = %cond.end
  %130 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %dconf190 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %130, i32 0, i32 9
  %131 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf190, align 8
  %other = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %131, i32 0, i32 5
  %132 = load i32, i32* %other, align 4
  %and191 = and i32 %132, 1
  %tobool192 = icmp ne i32 %and191, 0
  br i1 %tobool192, label %if.then.193, label %if.end.195

if.then.193:                                      ; preds = %sw.bb.189
  %133 = load i32, i32* %desc.addr, align 4
  %134 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call194 = call i32 @cli_scanuuencoded(i32 %133, %struct.cli_ctx* %134)
  store i32 %call194, i32* %ret, align 4
  br label %if.end.195

if.end.195:                                       ; preds = %if.then.193, %sw.bb.189
  br label %sw.epilog

sw.bb.196:                                        ; preds = %cond.end
  %135 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options197 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %135, i32 0, i32 5
  %136 = load i32, i32* %options197, align 4
  %and198 = and i32 %136, 2
  %tobool199 = icmp ne i32 %and198, 0
  br i1 %tobool199, label %land.lhs.true.200, label %if.end.207

land.lhs.true.200:                                ; preds = %sw.bb.196
  %137 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %dconf201 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %137, i32 0, i32 9
  %138 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf201, align 8
  %mail202 = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %138, i32 0, i32 4
  %139 = load i32, i32* %mail202, align 4
  %and203 = and i32 %139, 4
  %tobool204 = icmp ne i32 %and203, 0
  br i1 %tobool204, label %if.then.205, label %if.end.207

if.then.205:                                      ; preds = %land.lhs.true.200
  %140 = load i32, i32* %desc.addr, align 4
  %141 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call206 = call i32 @cli_scanpst(i32 %140, %struct.cli_ctx* %141)
  store i32 %call206, i32* %ret, align 4
  br label %if.end.207

if.end.207:                                       ; preds = %if.then.205, %land.lhs.true.200, %sw.bb.196
  br label %sw.epilog

sw.bb.208:                                        ; preds = %cond.end
  %142 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options209 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %142, i32 0, i32 5
  %143 = load i32, i32* %options209, align 4
  %and210 = and i32 %143, 1
  %tobool211 = icmp ne i32 %and210, 0
  br i1 %tobool211, label %land.lhs.true.212, label %if.end.219

land.lhs.true.212:                                ; preds = %sw.bb.208
  %144 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %dconf213 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %144, i32 0, i32 9
  %145 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf213, align 8
  %archive214 = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %145, i32 0, i32 2
  %146 = load i32, i32* %archive214, align 4
  %and215 = and i32 %146, 64
  %tobool216 = icmp ne i32 %and215, 0
  br i1 %tobool216, label %if.then.217, label %if.end.219

if.then.217:                                      ; preds = %land.lhs.true.212
  %147 = load i32, i32* %desc.addr, align 4
  %148 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call218 = call i32 @cli_scanmschm(i32 %147, %struct.cli_ctx* %148)
  store i32 %call218, i32* %ret, align 4
  br label %if.end.219

if.end.219:                                       ; preds = %if.then.217, %land.lhs.true.212, %sw.bb.208
  br label %sw.epilog

sw.bb.220:                                        ; preds = %cond.end
  %149 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options221 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %149, i32 0, i32 5
  %150 = load i32, i32* %options221, align 4
  %and222 = and i32 %150, 4
  %tobool223 = icmp ne i32 %and222, 0
  br i1 %tobool223, label %land.lhs.true.224, label %if.end.231

land.lhs.true.224:                                ; preds = %sw.bb.220
  %151 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %dconf225 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %151, i32 0, i32 9
  %152 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf225, align 8
  %archive226 = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %152, i32 0, i32 2
  %153 = load i32, i32* %archive226, align 4
  %and227 = and i32 %153, 128
  %tobool228 = icmp ne i32 %and227, 0
  br i1 %tobool228, label %if.then.229, label %if.end.231

if.then.229:                                      ; preds = %land.lhs.true.224
  %154 = load i32, i32* %desc.addr, align 4
  %155 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call230 = call i32 @cli_scanole2(i32 %154, %struct.cli_ctx* %155)
  store i32 %call230, i32* %ret, align 4
  br label %if.end.231

if.end.231:                                       ; preds = %if.then.229, %land.lhs.true.224, %sw.bb.220
  br label %sw.epilog

sw.bb.232:                                        ; preds = %cond.end
  %156 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options233 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %156, i32 0, i32 5
  %157 = load i32, i32* %options233, align 4
  %and234 = and i32 %157, 1
  %tobool235 = icmp ne i32 %and234, 0
  br i1 %tobool235, label %land.lhs.true.236, label %if.end.243

land.lhs.true.236:                                ; preds = %sw.bb.232
  %158 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %dconf237 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %158, i32 0, i32 9
  %159 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf237, align 8
  %archive238 = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %159, i32 0, i32 2
  %160 = load i32, i32* %archive238, align 4
  %and239 = and i32 %160, 256
  %tobool240 = icmp ne i32 %and239, 0
  br i1 %tobool240, label %if.then.241, label %if.end.243

if.then.241:                                      ; preds = %land.lhs.true.236
  %161 = load i32, i32* %desc.addr, align 4
  %162 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call242 = call i32 @cli_scantar(i32 %161, %struct.cli_ctx* %162, i32 1)
  store i32 %call242, i32* %ret, align 4
  br label %if.end.243

if.end.243:                                       ; preds = %if.then.241, %land.lhs.true.236, %sw.bb.232
  br label %sw.epilog

sw.bb.244:                                        ; preds = %cond.end
  %163 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options245 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %163, i32 0, i32 5
  %164 = load i32, i32* %options245, align 4
  %and246 = and i32 %164, 1
  %tobool247 = icmp ne i32 %and246, 0
  br i1 %tobool247, label %land.lhs.true.248, label %if.end.255

land.lhs.true.248:                                ; preds = %sw.bb.244
  %165 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %dconf249 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %165, i32 0, i32 9
  %166 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf249, align 8
  %archive250 = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %166, i32 0, i32 2
  %167 = load i32, i32* %archive250, align 4
  %and251 = and i32 %167, 256
  %tobool252 = icmp ne i32 %and251, 0
  br i1 %tobool252, label %if.then.253, label %if.end.255

if.then.253:                                      ; preds = %land.lhs.true.248
  %168 = load i32, i32* %desc.addr, align 4
  %169 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call254 = call i32 @cli_scantar(i32 %168, %struct.cli_ctx* %169, i32 0)
  store i32 %call254, i32* %ret, align 4
  br label %if.end.255

if.end.255:                                       ; preds = %if.then.253, %land.lhs.true.248, %sw.bb.244
  br label %sw.epilog

sw.bb.256:                                        ; preds = %cond.end
  %170 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options257 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %170, i32 0, i32 5
  %171 = load i32, i32* %options257, align 4
  %and258 = and i32 %171, 1
  %tobool259 = icmp ne i32 %and258, 0
  br i1 %tobool259, label %land.lhs.true.260, label %if.end.267

land.lhs.true.260:                                ; preds = %sw.bb.256
  %172 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %dconf261 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %172, i32 0, i32 9
  %173 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf261, align 8
  %archive262 = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %173, i32 0, i32 2
  %174 = load i32, i32* %archive262, align 4
  %and263 = and i32 %174, 512
  %tobool264 = icmp ne i32 %and263, 0
  br i1 %tobool264, label %if.then.265, label %if.end.267

if.then.265:                                      ; preds = %land.lhs.true.260
  %175 = load i32, i32* %desc.addr, align 4
  %176 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call266 = call i32 @cli_scanbinhex(i32 %175, %struct.cli_ctx* %176)
  store i32 %call266, i32* %ret, align 4
  br label %if.end.267

if.end.267:                                       ; preds = %if.then.265, %land.lhs.true.260, %sw.bb.256
  br label %sw.epilog

sw.bb.268:                                        ; preds = %cond.end
  %177 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %dconf269 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %177, i32 0, i32 9
  %178 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf269, align 8
  %other270 = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %178, i32 0, i32 5
  %179 = load i32, i32* %other270, align 4
  %and271 = and i32 %179, 2
  %tobool272 = icmp ne i32 %and271, 0
  br i1 %tobool272, label %if.then.273, label %if.end.275

if.then.273:                                      ; preds = %sw.bb.268
  %180 = load i32, i32* %desc.addr, align 4
  %181 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call274 = call i32 @cli_scanscrenc(i32 %180, %struct.cli_ctx* %181)
  store i32 %call274, i32* %ret, align 4
  br label %if.end.275

if.end.275:                                       ; preds = %if.then.273, %sw.bb.268
  br label %sw.epilog

sw.bb.276:                                        ; preds = %cond.end
  %182 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options277 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %182, i32 0, i32 5
  %183 = load i32, i32* %options277, align 4
  %and278 = and i32 %183, 512
  %tobool279 = icmp ne i32 %and278, 0
  br i1 %tobool279, label %land.lhs.true.280, label %if.end.288

land.lhs.true.280:                                ; preds = %sw.bb.276
  %184 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %dconf281 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %184, i32 0, i32 9
  %185 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf281, align 8
  %other282 = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %185, i32 0, i32 5
  %186 = load i32, i32* %other282, align 4
  %and283 = and i32 %186, 4
  %tobool284 = icmp ne i32 %and283, 0
  br i1 %tobool284, label %if.then.285, label %if.end.288

if.then.285:                                      ; preds = %land.lhs.true.280
  %187 = load i32, i32* %desc.addr, align 4
  %188 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname286 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %188, i32 0, i32 0
  %189 = load i8**, i8*** %virname286, align 8
  %call287 = call i32 @cli_scanriff(i32 %187, i8** %189)
  store i32 %call287, i32* %ret, align 4
  br label %if.end.288

if.end.288:                                       ; preds = %if.then.285, %land.lhs.true.280, %sw.bb.276
  br label %sw.epilog

sw.bb.289:                                        ; preds = %cond.end
  %190 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options290 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %190, i32 0, i32 5
  %191 = load i32, i32* %options290, align 4
  %and291 = and i32 %191, 512
  %tobool292 = icmp ne i32 %and291, 0
  br i1 %tobool292, label %land.lhs.true.293, label %if.end.301

land.lhs.true.293:                                ; preds = %sw.bb.289
  %192 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %dconf294 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %192, i32 0, i32 9
  %193 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf294, align 8
  %other295 = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %193, i32 0, i32 5
  %194 = load i32, i32* %other295, align 4
  %and296 = and i32 %194, 8
  %tobool297 = icmp ne i32 %and296, 0
  br i1 %tobool297, label %if.then.298, label %if.end.301

if.then.298:                                      ; preds = %land.lhs.true.293
  %195 = load i32, i32* %desc.addr, align 4
  %196 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname299 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %196, i32 0, i32 0
  %197 = load i8**, i8*** %virname299, align 8
  %call300 = call i32 @cli_scanjpeg(i32 %195, i8** %197)
  store i32 %call300, i32* %ret, align 4
  br label %if.end.301

if.end.301:                                       ; preds = %if.then.298, %land.lhs.true.293, %sw.bb.289
  br label %sw.epilog

sw.bb.302:                                        ; preds = %cond.end
  %198 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options303 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %198, i32 0, i32 5
  %199 = load i32, i32* %options303, align 4
  %and304 = and i32 %199, 16384
  %tobool305 = icmp ne i32 %and304, 0
  br i1 %tobool305, label %land.lhs.true.306, label %if.end.313

land.lhs.true.306:                                ; preds = %sw.bb.302
  %200 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %dconf307 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %200, i32 0, i32 9
  %201 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf307, align 8
  %doc308 = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %201, i32 0, i32 3
  %202 = load i32, i32* %doc308, align 4
  %and309 = and i32 %202, 4
  %tobool310 = icmp ne i32 %and309, 0
  br i1 %tobool310, label %if.then.311, label %if.end.313

if.then.311:                                      ; preds = %land.lhs.true.306
  %203 = load i32, i32* %desc.addr, align 4
  %204 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call312 = call i32 @cli_scanpdf(i32 %203, %struct.cli_ctx* %204)
  store i32 %call312, i32* %ret, align 4
  br label %if.end.313

if.end.313:                                       ; preds = %if.then.311, %land.lhs.true.306, %sw.bb.302
  br label %sw.epilog

sw.bb.314:                                        ; preds = %cond.end
  %205 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %dconf315 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %205, i32 0, i32 9
  %206 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf315, align 8
  %other316 = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %206, i32 0, i32 5
  %207 = load i32, i32* %other316, align 4
  %and317 = and i32 %207, 16
  %tobool318 = icmp ne i32 %and317, 0
  br i1 %tobool318, label %if.then.319, label %if.end.321

if.then.319:                                      ; preds = %sw.bb.314
  %208 = load i32, i32* %desc.addr, align 4
  %209 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call320 = call i32 @cli_scancryptff(i32 %208, %struct.cli_ctx* %209)
  store i32 %call320, i32* %ret, align 4
  br label %if.end.321

if.end.321:                                       ; preds = %if.then.319, %sw.bb.314
  br label %sw.epilog

sw.bb.322:                                        ; preds = %cond.end
  %210 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options323 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %210, i32 0, i32 5
  %211 = load i32, i32* %options323, align 4
  %and324 = and i32 %211, 8192
  %tobool325 = icmp ne i32 %and324, 0
  br i1 %tobool325, label %land.lhs.true.326, label %if.end.331

land.lhs.true.326:                                ; preds = %sw.bb.322
  %212 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %dconf327 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %212, i32 0, i32 9
  %213 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf327, align 8
  %elf = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %213, i32 0, i32 1
  %214 = load i32, i32* %elf, align 4
  %tobool328 = icmp ne i32 %214, 0
  br i1 %tobool328, label %if.then.329, label %if.end.331

if.then.329:                                      ; preds = %land.lhs.true.326
  %215 = load i32, i32* %desc.addr, align 4
  %216 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call330 = call i32 @cli_scanelf(i32 %215, %struct.cli_ctx* %216)
  store i32 %call330, i32* %ret, align 4
  br label %if.end.331

if.end.331:                                       ; preds = %if.then.329, %land.lhs.true.326, %sw.bb.322
  br label %sw.epilog

sw.bb.332:                                        ; preds = %cond.end
  %217 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options333 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %217, i32 0, i32 5
  %218 = load i32, i32* %options333, align 4
  %and334 = and i32 %218, 1
  %tobool335 = icmp ne i32 %and334, 0
  br i1 %tobool335, label %land.lhs.true.336, label %if.end.343

land.lhs.true.336:                                ; preds = %sw.bb.332
  %219 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %dconf337 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %219, i32 0, i32 9
  %220 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf337, align 8
  %archive338 = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %220, i32 0, i32 2
  %221 = load i32, i32* %archive338, align 4
  %and339 = and i32 %221, 1024
  %tobool340 = icmp ne i32 %and339, 0
  br i1 %tobool340, label %if.then.341, label %if.end.343

if.then.341:                                      ; preds = %land.lhs.true.336
  %222 = load i32, i32* %desc.addr, align 4
  %223 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call342 = call i32 @cli_scansis(i32 %222, %struct.cli_ctx* %223)
  store i32 %call342, i32* %ret, align 4
  br label %if.end.343

if.end.343:                                       ; preds = %if.then.341, %land.lhs.true.336, %sw.bb.332
  br label %sw.epilog

sw.bb.344:                                        ; preds = %cond.end
  %224 = load i32, i32* %desc.addr, align 4
  %call345 = call i32 @fstat(i32 %224, %struct.stat* %s) #4
  %cmp346 = icmp eq i32 %call345, 0
  br i1 %cmp346, label %land.lhs.true.348, label %if.end.357

land.lhs.true.348:                                ; preds = %sw.bb.344
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %s, i32 0, i32 3
  %225 = load i32, i32* %st_mode, align 4
  %and349 = and i32 %225, 61440
  %cmp350 = icmp eq i32 %and349, 32768
  br i1 %cmp350, label %land.lhs.true.352, label %if.end.357

land.lhs.true.352:                                ; preds = %land.lhs.true.348
  %st_size353 = getelementptr inbounds %struct.stat, %struct.stat* %s, i32 0, i32 8
  %226 = load i64, i64* %st_size353, align 8
  %cmp354 = icmp slt i64 %226, 65536
  br i1 %cmp354, label %if.then.356, label %if.end.357

if.then.356:                                      ; preds = %land.lhs.true.352
  store i32 501, i32* %type, align 4
  br label %if.end.357

if.end.357:                                       ; preds = %if.then.356, %land.lhs.true.352, %land.lhs.true.348, %sw.bb.344
  br label %sw.bb.358

sw.bb.358:                                        ; preds = %cond.end, %if.end.357
  %227 = load i32, i32* %desc.addr, align 4
  %228 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname359 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %228, i32 0, i32 0
  %229 = load i8**, i8*** %virname359, align 8
  %call360 = call i32 @cli_check_mydoom_log(i32 %227, i8** %229)
  store i32 %call360, i32* %ret, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %cond.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.358, %if.end.343, %if.end.331, %if.end.321, %if.end.313, %if.end.301, %if.end.288, %if.end.275, %if.end.267, %if.end.255, %if.end.243, %if.end.231, %if.end.219, %if.end.207, %if.end.195, %if.end.188, %if.end.176, %if.end.165, %if.end.157, %if.end.145, %if.end.134, %if.end.122, %if.end.110, %if.end.103, %sw.bb.91, %if.end.90, %if.end.78, %sw.bb
  %230 = load i32, i32* %type, align 4
  %cmp361 = icmp eq i32 %230, 529
  br i1 %cmp361, label %cond.true.363, label %cond.false.365

cond.true.363:                                    ; preds = %sw.epilog
  %231 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %mrec364 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %231, i32 0, i32 7
  %232 = load i32, i32* %mrec364, align 4
  %dec = add i32 %232, -1
  store i32 %dec, i32* %mrec364, align 4
  br label %cond.end.368

cond.false.365:                                   ; preds = %sw.epilog
  %233 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %arec366 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %233, i32 0, i32 6
  %234 = load i32, i32* %arec366, align 4
  %dec367 = add i32 %234, -1
  store i32 %dec367, i32* %arec366, align 4
  br label %cond.end.368

cond.end.368:                                     ; preds = %cond.false.365, %cond.true.363
  %cond369 = phi i32 [ %232, %cond.true.363 ], [ %234, %cond.false.365 ]
  %235 = load i32, i32* %type, align 4
  %cmp370 = icmp eq i32 %235, 508
  br i1 %cmp370, label %land.lhs.true.372, label %if.end.387

land.lhs.true.372:                                ; preds = %cond.end.368
  %236 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options373 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %236, i32 0, i32 5
  %237 = load i32, i32* %options373, align 4
  %and374 = and i32 %237, 1
  %tobool375 = icmp ne i32 %and374, 0
  br i1 %tobool375, label %land.lhs.true.376, label %if.end.387

land.lhs.true.376:                                ; preds = %land.lhs.true.372
  %238 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %dconf377 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %238, i32 0, i32 9
  %239 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf377, align 8
  %archive378 = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %239, i32 0, i32 2
  %240 = load i32, i32* %archive378, align 4
  %and379 = and i32 %240, 2
  %tobool380 = icmp ne i32 %and379, 0
  br i1 %tobool380, label %if.then.381, label %if.end.387

if.then.381:                                      ; preds = %land.lhs.true.376
  %st_size382 = getelementptr inbounds %struct.stat, %struct.stat* %sb, i32 0, i32 8
  %241 = load i64, i64* %st_size382, align 8
  %cmp383 = icmp sgt i64 %241, 1048576
  br i1 %cmp383, label %if.then.385, label %if.end.386

if.then.385:                                      ; preds = %if.then.381
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.13, i32 0, i32 0))
  store i8 0, i8* %typercg, align 1
  br label %if.end.386

if.end.386:                                       ; preds = %if.then.385, %if.then.381
  br label %if.end.387

if.end.387:                                       ; preds = %if.end.386, %land.lhs.true.376, %land.lhs.true.372, %cond.end.368
  %242 = load i32, i32* %type, align 4
  %cmp388 = icmp ne i32 %242, 504
  br i1 %cmp388, label %land.lhs.true.390, label %if.end.403

land.lhs.true.390:                                ; preds = %if.end.387
  %243 = load i32, i32* %ret, align 4
  %cmp391 = icmp ne i32 %243, 1
  br i1 %cmp391, label %land.lhs.true.393, label %if.end.403

land.lhs.true.393:                                ; preds = %land.lhs.true.390
  %244 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %engine394 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %244, i32 0, i32 3
  %245 = load %struct.cl_engine*, %struct.cl_engine** %engine394, align 8
  %sdb395 = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %245, i32 0, i32 1
  %246 = load i16, i16* %sdb395, align 2
  %tobool396 = icmp ne i16 %246, 0
  br i1 %tobool396, label %if.end.403, label %if.then.397

if.then.397:                                      ; preds = %land.lhs.true.393
  %247 = load i32, i32* %desc.addr, align 4
  %248 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %249 = load i32, i32* %type, align 4
  %250 = load i8, i8* %typercg, align 1
  %call398 = call i32 @cli_scanraw(i32 %247, %struct.cli_ctx* %248, i32 %249, i8 zeroext %250)
  %cmp399 = icmp eq i32 %call398, 1
  br i1 %cmp399, label %if.then.401, label %if.end.402

if.then.401:                                      ; preds = %if.then.397
  store i32 1, i32* %retval
  br label %return

if.end.402:                                       ; preds = %if.then.397
  br label %if.end.403

if.end.403:                                       ; preds = %if.end.402, %land.lhs.true.393, %land.lhs.true.390, %if.end.387
  %251 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %arec404 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %251, i32 0, i32 6
  %252 = load i32, i32* %arec404, align 4
  %inc405 = add i32 %252, 1
  store i32 %inc405, i32* %arec404, align 4
  %253 = load i32, i32* %desc.addr, align 4
  %call406 = call i64 @lseek(i32 %253, i64 0, i32 0) #4
  %254 = load i32, i32* %type, align 4
  switch i32 %254, label %sw.default.417 [
    i32 502, label %sw.bb.407
  ]

sw.bb.407:                                        ; preds = %if.end.403
  %255 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options408 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %255, i32 0, i32 5
  %256 = load i32, i32* %options408, align 4
  %and409 = and i32 %256, 32
  %tobool410 = icmp ne i32 %and409, 0
  br i1 %tobool410, label %land.lhs.true.411, label %if.end.416

land.lhs.true.411:                                ; preds = %sw.bb.407
  %257 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %dconf412 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %257, i32 0, i32 9
  %258 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf412, align 8
  %pe = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %258, i32 0, i32 0
  %259 = load i32, i32* %pe, align 4
  %tobool413 = icmp ne i32 %259, 0
  br i1 %tobool413, label %if.then.414, label %if.end.416

if.then.414:                                      ; preds = %land.lhs.true.411
  %260 = load i32, i32* %desc.addr, align 4
  %261 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call415 = call i32 @cli_scanpe(i32 %260, %struct.cli_ctx* %261)
  store i32 %call415, i32* %ret, align 4
  br label %if.end.416

if.end.416:                                       ; preds = %if.then.414, %land.lhs.true.411, %sw.bb.407
  br label %sw.epilog.418

sw.default.417:                                   ; preds = %if.end.403
  br label %sw.epilog.418

sw.epilog.418:                                    ; preds = %sw.default.417, %if.end.416
  %262 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %arec419 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %262, i32 0, i32 6
  %263 = load i32, i32* %arec419, align 4
  %dec420 = add i32 %263, -1
  store i32 %dec420, i32* %arec419, align 4
  %264 = load i32, i32* %ret, align 4
  %cmp421 = icmp eq i32 %264, -124
  br i1 %cmp421, label %if.then.423, label %if.else

if.then.423:                                      ; preds = %sw.epilog.418
  %265 = load i32, i32* %desc.addr, align 4
  %call424 = call i8* @cl_strerror(i32 -124)
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0), i32 %265, i8* %call424)
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %sw.epilog.418
  %266 = load i32, i32* %ret, align 4
  store i32 %266, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.423, %if.then.401, %if.then.60, %if.then.42, %if.end.33, %if.then.31, %if.end.13, %if.then.5, %if.then.2, %if.then
  %267 = load i32, i32* %retval
  ret i32 %267
}

; Function Attrs: nounwind
declare i32 @fstat(i32, %struct.stat*) #3

declare void @cli_errmsg(i8*, ...) #1

declare i32 @cli_scandesc(i32, %struct.cli_ctx*, i8 zeroext, i32, i8 zeroext, %struct.cli_matched_type**) #1

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) #3

declare i32 @cli_filetype2(i32, %struct.cl_engine*) #1

; Function Attrs: nounwind uwtable
define internal i32 @cli_scanraw(i32 %desc, %struct.cli_ctx* %ctx, i32 %type, i8 zeroext %typercg) #0 {
entry:
  %retval = alloca i32, align 4
  %desc.addr = alloca i32, align 4
  %ctx.addr = alloca %struct.cli_ctx*, align 8
  %type.addr = alloca i32, align 4
  %typercg.addr = alloca i8, align 1
  %ret = alloca i32, align 4
  %nret = alloca i32, align 4
  %ftrec = alloca i8, align 1
  %break_loop = alloca i8, align 1
  %ftoffset = alloca %struct.cli_matched_type*, align 8
  %fpt = alloca %struct.cli_matched_type*, align 8
  %lastzip = alloca i32, align 4
  %lastrar = alloca i32, align 4
  %peinfo = alloca %struct.cli_exe_info, align 8
  store i32 %desc, i32* %desc.addr, align 4
  store %struct.cli_ctx* %ctx, %struct.cli_ctx** %ctx.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  store i8 %typercg, i8* %typercg.addr, align 1
  store i32 0, i32* %ret, align 4
  store i32 0, i32* %nret, align 4
  store i8 0, i8* %ftrec, align 1
  store i8 0, i8* %break_loop, align 1
  store %struct.cli_matched_type* null, %struct.cli_matched_type** %ftoffset, align 8
  %0 = load i8, i8* %typercg.addr, align 1
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %type.addr, align 4
  switch i32 %1, label %sw.default [
    i32 500, label %sw.bb
    i32 502, label %sw.bb
    i32 508, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.then, %if.then, %if.then
  store i8 1, i8* %ftrec, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %if.then
  store i8 0, i8* %ftrec, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %entry
  %2 = load i32, i32* %desc.addr, align 4
  %call = call i64 @lseek(i32 %2, i64 0, i32 0) #4
  %cmp = icmp slt i64 %call, 0
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i32 0, i32 0))
  store i32 -123, i32* %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %3 = load i32, i32* %desc.addr, align 4
  %4 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %5 = load i8, i8* %ftrec, align 1
  %6 = load i32, i32* %type.addr, align 4
  %call3 = call i32 @cli_scandesc(i32 %3, %struct.cli_ctx* %4, i8 zeroext %5, i32 %6, i8 zeroext 0, %struct.cli_matched_type** %ftoffset)
  store i32 %call3, i32* %ret, align 4
  %7 = load i32, i32* %ret, align 4
  %cmp4 = icmp sge i32 %7, 500
  br i1 %cmp4, label %if.then.5, label %if.end.199

if.then.5:                                        ; preds = %if.end.2
  %8 = load i32, i32* %type.addr, align 4
  %cmp6 = icmp eq i32 %8, 500
  br i1 %cmp6, label %if.then.7, label %if.end.13

if.then.7:                                        ; preds = %if.then.5
  %9 = load i32, i32* %desc.addr, align 4
  %call8 = call i64 @lseek(i32 %9, i64 0, i32 0) #4
  %10 = load i32, i32* %desc.addr, align 4
  %11 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %12 = load i32, i32* %ret, align 4
  %call9 = call i32 @cli_scandesc(i32 %10, %struct.cli_ctx* %11, i8 zeroext 0, i32 %12, i8 zeroext 1, %struct.cli_matched_type** null)
  store i32 %call9, i32* %nret, align 4
  %13 = load i32, i32* %nret, align 4
  %cmp10 = icmp eq i32 %13, 1
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.then.7
  %14 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %14, i32 0, i32 0
  %15 = load i8**, i8*** %virname, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = load i32, i32* %desc.addr, align 4
  %18 = load i32, i32* %ret, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.16, i32 0, i32 0), i8* %16, i32 %17, i32 %18)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.then.7
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.then.5
  %19 = load i32, i32* %nret, align 4
  %cmp14 = icmp ne i32 %19, 1
  br i1 %cmp14, label %land.lhs.true, label %if.end.152

land.lhs.true:                                    ; preds = %if.end.13
  %20 = load i32, i32* %type.addr, align 4
  %cmp15 = icmp eq i32 %20, 502
  br i1 %cmp15, label %if.then.17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %21 = load i32, i32* %type.addr, align 4
  %cmp16 = icmp eq i32 %21, 508
  br i1 %cmp16, label %if.then.17, label %if.end.152

if.then.17:                                       ; preds = %lor.lhs.false, %land.lhs.true
  store i32 -559038737, i32* %lastrar, align 4
  store i32 -559038737, i32* %lastzip, align 4
  %22 = load %struct.cli_matched_type*, %struct.cli_matched_type** %ftoffset, align 8
  store %struct.cli_matched_type* %22, %struct.cli_matched_type** %fpt, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.151, %if.then.17
  %23 = load %struct.cli_matched_type*, %struct.cli_matched_type** %fpt, align 8
  %tobool18 = icmp ne %struct.cli_matched_type* %23, null
  br i1 %tobool18, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %24 = load %struct.cli_matched_type*, %struct.cli_matched_type** %fpt, align 8
  %type19 = getelementptr inbounds %struct.cli_matched_type, %struct.cli_matched_type* %24, i32 0, i32 0
  %25 = load i32, i32* %type19, align 4
  switch i32 %25, label %sw.default.142 [
    i32 532, label %sw.bb.20
    i32 531, label %sw.bb.21
    i32 533, label %sw.bb.35
    i32 534, label %sw.bb.53
    i32 535, label %sw.bb.71
    i32 536, label %sw.bb.94
    i32 502, label %sw.bb.112
  ]

sw.bb.20:                                         ; preds = %while.body
  br label %sw.epilog.144

sw.bb.21:                                         ; preds = %while.body
  %26 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %26, i32 0, i32 5
  %27 = load i32, i32* %options, align 4
  %and = and i32 %27, 1
  %tobool22 = icmp ne i32 %and, 0
  br i1 %tobool22, label %land.lhs.true.23, label %if.end.34

land.lhs.true.23:                                 ; preds = %sw.bb.21
  %28 = load i32, i32* %type.addr, align 4
  %cmp24 = icmp eq i32 %28, 502
  br i1 %cmp24, label %land.lhs.true.25, label %if.end.34

land.lhs.true.25:                                 ; preds = %land.lhs.true.23
  %29 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %dconf = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %29, i32 0, i32 9
  %30 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf, align 8
  %archive = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %30, i32 0, i32 2
  %31 = load i32, i32* %archive, align 4
  %and26 = and i32 %31, 2
  %tobool27 = icmp ne i32 %and26, 0
  br i1 %tobool27, label %land.lhs.true.28, label %if.end.34

land.lhs.true.28:                                 ; preds = %land.lhs.true.25
  %32 = load %struct.cli_matched_type*, %struct.cli_matched_type** %fpt, align 8
  %offset = getelementptr inbounds %struct.cli_matched_type, %struct.cli_matched_type* %32, i32 0, i32 1
  %33 = load i64, i64* %offset, align 8
  %tobool29 = icmp ne i64 %33, 0
  br i1 %tobool29, label %if.then.30, label %if.end.34

if.then.30:                                       ; preds = %land.lhs.true.28
  %34 = load %struct.cli_matched_type*, %struct.cli_matched_type** %fpt, align 8
  %offset31 = getelementptr inbounds %struct.cli_matched_type, %struct.cli_matched_type* %34, i32 0, i32 1
  %35 = load i64, i64* %offset31, align 8
  %conv = trunc i64 %35 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i32 0, i32 0), i32 %conv)
  %36 = load i32, i32* %desc.addr, align 4
  %37 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %38 = load %struct.cli_matched_type*, %struct.cli_matched_type** %fpt, align 8
  %offset32 = getelementptr inbounds %struct.cli_matched_type, %struct.cli_matched_type* %38, i32 0, i32 1
  %39 = load i64, i64* %offset32, align 8
  %call33 = call i32 @cli_scanzip(i32 %36, %struct.cli_ctx* %37, i64 %39, i32* %lastzip)
  store i32 %call33, i32* %nret, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.30, %land.lhs.true.28, %land.lhs.true.25, %land.lhs.true.23, %sw.bb.21
  br label %sw.epilog.144

sw.bb.35:                                         ; preds = %while.body
  %40 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options36 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %40, i32 0, i32 5
  %41 = load i32, i32* %options36, align 4
  %and37 = and i32 %41, 1
  %tobool38 = icmp ne i32 %and37, 0
  br i1 %tobool38, label %land.lhs.true.39, label %if.end.52

land.lhs.true.39:                                 ; preds = %sw.bb.35
  %42 = load i32, i32* %type.addr, align 4
  %cmp40 = icmp eq i32 %42, 502
  br i1 %cmp40, label %land.lhs.true.42, label %if.end.52

land.lhs.true.42:                                 ; preds = %land.lhs.true.39
  %43 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %dconf43 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %43, i32 0, i32 9
  %44 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf43, align 8
  %archive44 = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %44, i32 0, i32 2
  %45 = load i32, i32* %archive44, align 4
  %and45 = and i32 %45, 32
  %tobool46 = icmp ne i32 %and45, 0
  br i1 %tobool46, label %if.then.47, label %if.end.52

if.then.47:                                       ; preds = %land.lhs.true.42
  %46 = load %struct.cli_matched_type*, %struct.cli_matched_type** %fpt, align 8
  %offset48 = getelementptr inbounds %struct.cli_matched_type, %struct.cli_matched_type* %46, i32 0, i32 1
  %47 = load i64, i64* %offset48, align 8
  %conv49 = trunc i64 %47 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i32 0, i32 0), i32 %conv49)
  %48 = load i32, i32* %desc.addr, align 4
  %49 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %50 = load %struct.cli_matched_type*, %struct.cli_matched_type** %fpt, align 8
  %offset50 = getelementptr inbounds %struct.cli_matched_type, %struct.cli_matched_type* %50, i32 0, i32 1
  %51 = load i64, i64* %offset50, align 8
  %call51 = call i32 @cli_scanmscab(i32 %48, %struct.cli_ctx* %49, i64 %51)
  store i32 %call51, i32* %nret, align 4
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.47, %land.lhs.true.42, %land.lhs.true.39, %sw.bb.35
  br label %sw.epilog.144

sw.bb.53:                                         ; preds = %while.body
  %52 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options54 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %52, i32 0, i32 5
  %53 = load i32, i32* %options54, align 4
  %and55 = and i32 %53, 1
  %tobool56 = icmp ne i32 %and55, 0
  br i1 %tobool56, label %land.lhs.true.57, label %if.end.70

land.lhs.true.57:                                 ; preds = %sw.bb.53
  %54 = load i32, i32* %type.addr, align 4
  %cmp58 = icmp eq i32 %54, 502
  br i1 %cmp58, label %land.lhs.true.60, label %if.end.70

land.lhs.true.60:                                 ; preds = %land.lhs.true.57
  %55 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %dconf61 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %55, i32 0, i32 9
  %56 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf61, align 8
  %archive62 = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %56, i32 0, i32 2
  %57 = load i32, i32* %archive62, align 4
  %and63 = and i32 %57, 4096
  %tobool64 = icmp ne i32 %and63, 0
  br i1 %tobool64, label %if.then.65, label %if.end.70

if.then.65:                                       ; preds = %land.lhs.true.60
  %58 = load %struct.cli_matched_type*, %struct.cli_matched_type** %fpt, align 8
  %offset66 = getelementptr inbounds %struct.cli_matched_type, %struct.cli_matched_type* %58, i32 0, i32 1
  %59 = load i64, i64* %offset66, align 8
  %conv67 = trunc i64 %59 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.19, i32 0, i32 0), i32 %conv67)
  %60 = load i32, i32* %desc.addr, align 4
  %61 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %62 = load %struct.cli_matched_type*, %struct.cli_matched_type** %fpt, align 8
  %offset68 = getelementptr inbounds %struct.cli_matched_type, %struct.cli_matched_type* %62, i32 0, i32 1
  %63 = load i64, i64* %offset68, align 8
  %call69 = call i32 @cli_scanarj(i32 %60, %struct.cli_ctx* %61, i64 %63, i32* %lastrar)
  store i32 %call69, i32* %nret, align 4
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.65, %land.lhs.true.60, %land.lhs.true.57, %sw.bb.53
  br label %sw.epilog.144

sw.bb.71:                                         ; preds = %while.body
  %64 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options72 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %64, i32 0, i32 5
  %65 = load i32, i32* %options72, align 4
  %and73 = and i32 %65, 1
  %tobool74 = icmp ne i32 %and73, 0
  br i1 %tobool74, label %land.lhs.true.75, label %if.end.93

land.lhs.true.75:                                 ; preds = %sw.bb.71
  %66 = load i32, i32* %type.addr, align 4
  %cmp76 = icmp eq i32 %66, 502
  br i1 %cmp76, label %land.lhs.true.78, label %if.end.93

land.lhs.true.78:                                 ; preds = %land.lhs.true.75
  %67 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %dconf79 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %67, i32 0, i32 9
  %68 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf79, align 8
  %archive80 = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %68, i32 0, i32 2
  %69 = load i32, i32* %archive80, align 4
  %and81 = and i32 %69, 2048
  %tobool82 = icmp ne i32 %and81, 0
  br i1 %tobool82, label %land.lhs.true.83, label %if.end.93

land.lhs.true.83:                                 ; preds = %land.lhs.true.78
  %70 = load %struct.cli_matched_type*, %struct.cli_matched_type** %fpt, align 8
  %offset84 = getelementptr inbounds %struct.cli_matched_type, %struct.cli_matched_type* %70, i32 0, i32 1
  %71 = load i64, i64* %offset84, align 8
  %cmp85 = icmp sgt i64 %71, 4
  br i1 %cmp85, label %if.then.87, label %if.end.93

if.then.87:                                       ; preds = %land.lhs.true.83
  %72 = load %struct.cli_matched_type*, %struct.cli_matched_type** %fpt, align 8
  %offset88 = getelementptr inbounds %struct.cli_matched_type, %struct.cli_matched_type* %72, i32 0, i32 1
  %73 = load i64, i64* %offset88, align 8
  %conv89 = trunc i64 %73 to i32
  %sub = sub i32 %conv89, 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.20, i32 0, i32 0), i32 %sub)
  %74 = load i32, i32* %desc.addr, align 4
  %75 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %76 = load %struct.cli_matched_type*, %struct.cli_matched_type** %fpt, align 8
  %offset90 = getelementptr inbounds %struct.cli_matched_type, %struct.cli_matched_type* %76, i32 0, i32 1
  %77 = load i64, i64* %offset90, align 8
  %sub91 = sub nsw i64 %77, 4
  %call92 = call i32 @cli_scannulsft(i32 %74, %struct.cli_ctx* %75, i64 %sub91)
  store i32 %call92, i32* %nret, align 4
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.87, %land.lhs.true.83, %land.lhs.true.78, %land.lhs.true.75, %sw.bb.71
  br label %sw.epilog.144

sw.bb.94:                                         ; preds = %while.body
  %78 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options95 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %78, i32 0, i32 5
  %79 = load i32, i32* %options95, align 4
  %and96 = and i32 %79, 1
  %tobool97 = icmp ne i32 %and96, 0
  br i1 %tobool97, label %land.lhs.true.98, label %if.end.111

land.lhs.true.98:                                 ; preds = %sw.bb.94
  %80 = load i32, i32* %type.addr, align 4
  %cmp99 = icmp eq i32 %80, 502
  br i1 %cmp99, label %land.lhs.true.101, label %if.end.111

land.lhs.true.101:                                ; preds = %land.lhs.true.98
  %81 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %dconf102 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %81, i32 0, i32 9
  %82 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf102, align 8
  %archive103 = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %82, i32 0, i32 2
  %83 = load i32, i32* %archive103, align 4
  %and104 = and i32 %83, 8192
  %tobool105 = icmp ne i32 %and104, 0
  br i1 %tobool105, label %if.then.106, label %if.end.111

if.then.106:                                      ; preds = %land.lhs.true.101
  %84 = load %struct.cli_matched_type*, %struct.cli_matched_type** %fpt, align 8
  %offset107 = getelementptr inbounds %struct.cli_matched_type, %struct.cli_matched_type* %84, i32 0, i32 1
  %85 = load i64, i64* %offset107, align 8
  %conv108 = trunc i64 %85 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.21, i32 0, i32 0), i32 %conv108)
  %86 = load i32, i32* %desc.addr, align 4
  %87 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %88 = load %struct.cli_matched_type*, %struct.cli_matched_type** %fpt, align 8
  %offset109 = getelementptr inbounds %struct.cli_matched_type, %struct.cli_matched_type* %88, i32 0, i32 1
  %89 = load i64, i64* %offset109, align 8
  %add = add nsw i64 %89, 23
  %call110 = call i32 @cli_scanautoit(i32 %86, %struct.cli_ctx* %87, i64 %add)
  store i32 %call110, i32* %nret, align 4
  br label %if.end.111

if.end.111:                                       ; preds = %if.then.106, %land.lhs.true.101, %land.lhs.true.98, %sw.bb.94
  br label %sw.epilog.144

sw.bb.112:                                        ; preds = %while.body
  %90 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options113 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %90, i32 0, i32 5
  %91 = load i32, i32* %options113, align 4
  %and114 = and i32 %91, 32
  %tobool115 = icmp ne i32 %and114, 0
  br i1 %tobool115, label %land.lhs.true.116, label %if.end.141

land.lhs.true.116:                                ; preds = %sw.bb.112
  %92 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %dconf117 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %92, i32 0, i32 9
  %93 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf117, align 8
  %pe = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %93, i32 0, i32 0
  %94 = load i32, i32* %pe, align 4
  %tobool118 = icmp ne i32 %94, 0
  br i1 %tobool118, label %land.lhs.true.119, label %if.end.141

land.lhs.true.119:                                ; preds = %land.lhs.true.116
  %95 = load %struct.cli_matched_type*, %struct.cli_matched_type** %fpt, align 8
  %offset120 = getelementptr inbounds %struct.cli_matched_type, %struct.cli_matched_type* %95, i32 0, i32 1
  %96 = load i64, i64* %offset120, align 8
  %tobool121 = icmp ne i64 %96, 0
  br i1 %tobool121, label %if.then.122, label %if.end.141

if.then.122:                                      ; preds = %land.lhs.true.119
  %97 = load %struct.cli_matched_type*, %struct.cli_matched_type** %fpt, align 8
  %offset123 = getelementptr inbounds %struct.cli_matched_type, %struct.cli_matched_type* %97, i32 0, i32 1
  %98 = load i64, i64* %offset123, align 8
  %conv124 = trunc i64 %98 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.22, i32 0, i32 0), i32 %conv124)
  %99 = bitcast %struct.cli_exe_info* %peinfo to i8*
  call void @llvm.memset.p0i8.i64(i8* %99, i8 0, i64 24, i32 8, i1 false)
  %100 = load %struct.cli_matched_type*, %struct.cli_matched_type** %fpt, align 8
  %offset125 = getelementptr inbounds %struct.cli_matched_type, %struct.cli_matched_type* %100, i32 0, i32 1
  %101 = load i64, i64* %offset125, align 8
  %offset126 = getelementptr inbounds %struct.cli_exe_info, %struct.cli_exe_info* %peinfo, i32 0, i32 2
  store i64 %101, i64* %offset126, align 8
  %102 = load i32, i32* %desc.addr, align 4
  %103 = load %struct.cli_matched_type*, %struct.cli_matched_type** %fpt, align 8
  %offset127 = getelementptr inbounds %struct.cli_matched_type, %struct.cli_matched_type* %103, i32 0, i32 1
  %104 = load i64, i64* %offset127, align 8
  %call128 = call i64 @lseek(i32 %102, i64 %104, i32 0) #4
  %105 = load i32, i32* %desc.addr, align 4
  %call129 = call i32 @cli_peheader(i32 %105, %struct.cli_exe_info* %peinfo)
  %cmp130 = icmp eq i32 %call129, 0
  br i1 %cmp130, label %if.then.132, label %if.end.140

if.then.132:                                      ; preds = %if.then.122
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.23, i32 0, i32 0))
  %section = getelementptr inbounds %struct.cli_exe_info, %struct.cli_exe_info* %peinfo, i32 0, i32 3
  %106 = load %struct.cli_exe_section*, %struct.cli_exe_section** %section, align 8
  %tobool133 = icmp ne %struct.cli_exe_section* %106, null
  br i1 %tobool133, label %if.then.134, label %if.end.136

if.then.134:                                      ; preds = %if.then.132
  %section135 = getelementptr inbounds %struct.cli_exe_info, %struct.cli_exe_info* %peinfo, i32 0, i32 3
  %107 = load %struct.cli_exe_section*, %struct.cli_exe_section** %section135, align 8
  %108 = bitcast %struct.cli_exe_section* %107 to i8*
  call void @free(i8* %108) #4
  br label %if.end.136

if.end.136:                                       ; preds = %if.then.134, %if.then.132
  %109 = load i32, i32* %desc.addr, align 4
  %110 = load %struct.cli_matched_type*, %struct.cli_matched_type** %fpt, align 8
  %offset137 = getelementptr inbounds %struct.cli_matched_type, %struct.cli_matched_type* %110, i32 0, i32 1
  %111 = load i64, i64* %offset137, align 8
  %call138 = call i64 @lseek(i32 %109, i64 %111, i32 0) #4
  %112 = load i32, i32* %desc.addr, align 4
  %113 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call139 = call i32 @cli_scanembpe(i32 %112, %struct.cli_ctx* %113)
  store i32 %call139, i32* %nret, align 4
  store i8 1, i8* %break_loop, align 1
  br label %if.end.140

if.end.140:                                       ; preds = %if.end.136, %if.then.122
  br label %if.end.141

if.end.141:                                       ; preds = %if.end.140, %land.lhs.true.119, %land.lhs.true.116, %sw.bb.112
  br label %sw.epilog.144

sw.default.142:                                   ; preds = %while.body
  %114 = load %struct.cli_matched_type*, %struct.cli_matched_type** %fpt, align 8
  %type143 = getelementptr inbounds %struct.cli_matched_type, %struct.cli_matched_type* %114, i32 0, i32 0
  %115 = load i32, i32* %type143, align 4
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.24, i32 0, i32 0), i32 %115)
  br label %sw.epilog.144

sw.epilog.144:                                    ; preds = %sw.default.142, %if.end.141, %if.end.111, %if.end.93, %if.end.70, %if.end.52, %if.end.34, %sw.bb.20
  %116 = load i32, i32* %nret, align 4
  %cmp145 = icmp eq i32 %116, 1
  br i1 %cmp145, label %if.then.150, label %lor.lhs.false.147

lor.lhs.false.147:                                ; preds = %sw.epilog.144
  %117 = load i8, i8* %break_loop, align 1
  %conv148 = zext i8 %117 to i32
  %tobool149 = icmp ne i32 %conv148, 0
  br i1 %tobool149, label %if.then.150, label %if.end.151

if.then.150:                                      ; preds = %lor.lhs.false.147, %sw.epilog.144
  br label %while.end

if.end.151:                                       ; preds = %lor.lhs.false.147
  %118 = load %struct.cli_matched_type*, %struct.cli_matched_type** %fpt, align 8
  %next = getelementptr inbounds %struct.cli_matched_type, %struct.cli_matched_type* %118, i32 0, i32 3
  %119 = load %struct.cli_matched_type*, %struct.cli_matched_type** %next, align 8
  store %struct.cli_matched_type* %119, %struct.cli_matched_type** %fpt, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then.150, %while.cond
  br label %if.end.152

if.end.152:                                       ; preds = %while.end, %lor.lhs.false, %if.end.13
  %120 = load i32, i32* %ret, align 4
  %cmp153 = icmp eq i32 %120, 529
  br i1 %cmp153, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.152
  %121 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %mrec = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %121, i32 0, i32 7
  %122 = load i32, i32* %mrec, align 4
  %inc = add i32 %122, 1
  store i32 %inc, i32* %mrec, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.152
  %123 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %arec = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %123, i32 0, i32 6
  %124 = load i32, i32* %arec, align 4
  %inc155 = add i32 %124, 1
  store i32 %inc155, i32* %arec, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %122, %cond.true ], [ %124, %cond.false ]
  %125 = load i32, i32* %nret, align 4
  %cmp156 = icmp ne i32 %125, 1
  br i1 %cmp156, label %if.then.158, label %if.end.189

if.then.158:                                      ; preds = %cond.end
  %126 = load i32, i32* %ret, align 4
  switch i32 %126, label %sw.default.187 [
    i32 528, label %sw.bb.159
    i32 529, label %sw.bb.173
  ]

sw.bb.159:                                        ; preds = %if.then.158
  %127 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options160 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %127, i32 0, i32 5
  %128 = load i32, i32* %options160, align 4
  %and161 = and i32 %128, 16
  %tobool162 = icmp ne i32 %and161, 0
  br i1 %tobool162, label %land.lhs.true.163, label %if.end.172

land.lhs.true.163:                                ; preds = %sw.bb.159
  %129 = load i32, i32* %type.addr, align 4
  %cmp164 = icmp eq i32 %129, 500
  br i1 %cmp164, label %land.lhs.true.166, label %if.end.172

land.lhs.true.166:                                ; preds = %land.lhs.true.163
  %130 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %dconf167 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %130, i32 0, i32 9
  %131 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf167, align 8
  %doc = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %131, i32 0, i32 3
  %132 = load i32, i32* %doc, align 4
  %and168 = and i32 %132, 1
  %tobool169 = icmp ne i32 %and168, 0
  br i1 %tobool169, label %if.then.170, label %if.end.172

if.then.170:                                      ; preds = %land.lhs.true.166
  %133 = load i32, i32* %desc.addr, align 4
  %134 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call171 = call i32 @cli_scanhtml(i32 %133, %struct.cli_ctx* %134)
  store i32 %call171, i32* %nret, align 4
  br label %if.end.172

if.end.172:                                       ; preds = %if.then.170, %land.lhs.true.166, %land.lhs.true.163, %sw.bb.159
  br label %sw.epilog.188

sw.bb.173:                                        ; preds = %if.then.158
  %135 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options174 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %135, i32 0, i32 5
  %136 = load i32, i32* %options174, align 4
  %and175 = and i32 %136, 2
  %tobool176 = icmp ne i32 %and175, 0
  br i1 %tobool176, label %land.lhs.true.177, label %if.end.186

land.lhs.true.177:                                ; preds = %sw.bb.173
  %137 = load i32, i32* %type.addr, align 4
  %cmp178 = icmp eq i32 %137, 500
  br i1 %cmp178, label %land.lhs.true.180, label %if.end.186

land.lhs.true.180:                                ; preds = %land.lhs.true.177
  %138 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %dconf181 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %138, i32 0, i32 9
  %139 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf181, align 8
  %mail = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %139, i32 0, i32 4
  %140 = load i32, i32* %mail, align 4
  %and182 = and i32 %140, 1
  %tobool183 = icmp ne i32 %and182, 0
  br i1 %tobool183, label %if.then.184, label %if.end.186

if.then.184:                                      ; preds = %land.lhs.true.180
  %141 = load i32, i32* %desc.addr, align 4
  %142 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call185 = call i32 @cli_scanmail(i32 %141, %struct.cli_ctx* %142)
  store i32 %call185, i32* %nret, align 4
  br label %if.end.186

if.end.186:                                       ; preds = %if.then.184, %land.lhs.true.180, %land.lhs.true.177, %sw.bb.173
  br label %sw.epilog.188

sw.default.187:                                   ; preds = %if.then.158
  br label %sw.epilog.188

sw.epilog.188:                                    ; preds = %sw.default.187, %if.end.186, %if.end.172
  br label %if.end.189

if.end.189:                                       ; preds = %sw.epilog.188, %cond.end
  %143 = load i32, i32* %ret, align 4
  %cmp190 = icmp eq i32 %143, 529
  br i1 %cmp190, label %cond.true.192, label %cond.false.194

cond.true.192:                                    ; preds = %if.end.189
  %144 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %mrec193 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %144, i32 0, i32 7
  %145 = load i32, i32* %mrec193, align 4
  %dec = add i32 %145, -1
  store i32 %dec, i32* %mrec193, align 4
  br label %cond.end.197

cond.false.194:                                   ; preds = %if.end.189
  %146 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %arec195 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %146, i32 0, i32 6
  %147 = load i32, i32* %arec195, align 4
  %dec196 = add i32 %147, -1
  store i32 %dec196, i32* %arec195, align 4
  br label %cond.end.197

cond.end.197:                                     ; preds = %cond.false.194, %cond.true.192
  %cond198 = phi i32 [ %145, %cond.true.192 ], [ %147, %cond.false.194 ]
  %148 = load i32, i32* %nret, align 4
  store i32 %148, i32* %ret, align 4
  br label %if.end.199

if.end.199:                                       ; preds = %cond.end.197, %if.end.2
  br label %while.cond.200

while.cond.200:                                   ; preds = %while.body.202, %if.end.199
  %149 = load %struct.cli_matched_type*, %struct.cli_matched_type** %ftoffset, align 8
  %tobool201 = icmp ne %struct.cli_matched_type* %149, null
  br i1 %tobool201, label %while.body.202, label %while.end.204

while.body.202:                                   ; preds = %while.cond.200
  %150 = load %struct.cli_matched_type*, %struct.cli_matched_type** %ftoffset, align 8
  store %struct.cli_matched_type* %150, %struct.cli_matched_type** %fpt, align 8
  %151 = load %struct.cli_matched_type*, %struct.cli_matched_type** %ftoffset, align 8
  %next203 = getelementptr inbounds %struct.cli_matched_type, %struct.cli_matched_type* %151, i32 0, i32 3
  %152 = load %struct.cli_matched_type*, %struct.cli_matched_type** %next203, align 8
  store %struct.cli_matched_type* %152, %struct.cli_matched_type** %ftoffset, align 8
  %153 = load %struct.cli_matched_type*, %struct.cli_matched_type** %fpt, align 8
  %154 = bitcast %struct.cli_matched_type* %153 to i8*
  call void @free(i8* %154) #4
  br label %while.cond.200

while.end.204:                                    ; preds = %while.cond.200
  %155 = load i32, i32* %ret, align 4
  %cmp205 = icmp eq i32 %155, 1
  br i1 %cmp205, label %if.then.207, label %if.end.209

if.then.207:                                      ; preds = %while.end.204
  %156 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname208 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %156, i32 0, i32 0
  %157 = load i8**, i8*** %virname208, align 8
  %158 = load i8*, i8** %157, align 8
  %159 = load i32, i32* %desc.addr, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i32 0, i32 0), i8* %158, i32 %159)
  br label %if.end.209

if.end.209:                                       ; preds = %if.then.207, %while.end.204
  %160 = load i32, i32* %ret, align 4
  store i32 %160, i32* %retval
  br label %return

return:                                           ; preds = %if.end.209, %if.then.1
  %161 = load i32, i32* %retval
  ret i32 %161
}

declare void @cli_warnmsg(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @cli_scanzip(i32 %desc, %struct.cli_ctx* %ctx, i64 %sfx_offset, i32* %sfx_check) #0 {
entry:
  %retval = alloca i32, align 4
  %desc.addr = alloca i32, align 4
  %ctx.addr = alloca %struct.cli_ctx*, align 8
  %sfx_offset.addr = alloca i64, align 8
  %sfx_check.addr = alloca i32*, align 8
  %zdir = alloca %struct.__zip_dir*, align 8
  %zdirent = alloca %struct.__zip_dirent, align 8
  %zfp = alloca %struct.__zip_file*, align 8
  %tmpname = alloca i8*, align 8
  %buff = alloca i8*, align 8
  %fd = alloca i32, align 4
  %bytes = alloca i32, align 4
  %ret = alloca i32, align 4
  %size = alloca i64, align 8
  %files = alloca i32, align 4
  %encrypted = alloca i32, align 4
  %bfcnt = alloca i32, align 4
  %source = alloca %struct.stat, align 8
  %mdata = alloca %struct.cli_meta_node*, align 8
  %err = alloca i32, align 4
  %swarning = alloca i8, align 1
  %fail = alloca i8, align 1
  %success = alloca i8, align 1
  store i32 %desc, i32* %desc.addr, align 4
  store %struct.cli_ctx* %ctx, %struct.cli_ctx** %ctx.addr, align 8
  store i64 %sfx_offset, i64* %sfx_offset.addr, align 8
  store i32* %sfx_check, i32** %sfx_check.addr, align 8
  store i8* null, i8** %tmpname, align 8
  store i32 -1, i32* %fd, align 4
  store i32 0, i32* %ret, align 4
  store i64 0, i64* %size, align 8
  store i32 0, i32* %files, align 4
  store i8 0, i8* %swarning, align 1
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i32 0, i32 0))
  %0 = load i32, i32* %desc.addr, align 4
  %1 = load i64, i64* %sfx_offset.addr, align 8
  %call = call %struct.__zip_dir* @zip_dir_open(i32 %0, i64 %1, i32* %err)
  store %struct.__zip_dir* %call, %struct.__zip_dir** %zdir, align 8
  %cmp = icmp eq %struct.__zip_dir* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %err, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.31, i32 0, i32 0), i32 %2)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %desc.addr, align 4
  %call1 = call i32 @fstat(i32 %3, %struct.stat* %source) #4
  %call2 = call i8* @cli_malloc(i64 8192)
  store i8* %call2, i8** %buff, align 8
  %tobool = icmp ne i8* %call2, null
  br i1 %tobool, label %if.end.5, label %if.then.3

if.then.3:                                        ; preds = %if.end
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i32 0, i32 0), i32 8192)
  %4 = load %struct.__zip_dir*, %struct.__zip_dir** %zdir, align 8
  %call4 = call i32 @zip_dir_close(%struct.__zip_dir* %4)
  store i32 -114, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end.307, %if.end.221, %if.end.190, %if.else.166, %if.then.124, %if.end.41, %if.end.5
  %5 = load %struct.__zip_dir*, %struct.__zip_dir** %zdir, align 8
  %call6 = call i32 @zip_dir_read(%struct.__zip_dir* %5, %struct.__zip_dirent* %zdirent)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %while.body, label %while.end.308

while.body:                                       ; preds = %while.cond
  %6 = load i32, i32* %files, align 4
  %inc = add i32 %6, 1
  store i32 %inc, i32* %files, align 4
  %7 = load i32, i32* %files, align 4
  %cmp8 = icmp eq i32 %7, 1
  br i1 %cmp8, label %land.lhs.true, label %if.end.15

land.lhs.true:                                    ; preds = %while.body
  %8 = load i32*, i32** %sfx_check.addr, align 8
  %tobool9 = icmp ne i32* %8, null
  br i1 %tobool9, label %if.then.10, label %if.end.15

if.then.10:                                       ; preds = %land.lhs.true
  %9 = load i32*, i32** %sfx_check.addr, align 8
  %10 = load i32, i32* %9, align 4
  %d_crc32 = getelementptr inbounds %struct.__zip_dirent, %struct.__zip_dirent* %zdirent, i32 0, i32 5
  %11 = load i32, i32* %d_crc32, align 4
  %cmp11 = icmp eq i32 %10, %11
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.then.10
  br label %while.end.308

if.else:                                          ; preds = %if.then.10
  %d_crc3213 = getelementptr inbounds %struct.__zip_dirent, %struct.__zip_dirent* %zdirent, i32 0, i32 5
  %12 = load i32, i32* %d_crc3213, align 4
  %13 = load i32*, i32** %sfx_check.addr, align 8
  store i32 %12, i32* %13, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.else
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %land.lhs.true, %while.body
  %d_name = getelementptr inbounds %struct.__zip_dirent, %struct.__zip_dirent* %zdirent, i32 0, i32 4
  %14 = load i8*, i8** %d_name, align 8
  %tobool16 = icmp ne i8* %14, null
  br i1 %tobool16, label %if.end.18, label %if.then.17

if.then.17:                                       ; preds = %if.end.15
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.33, i32 0, i32 0))
  %15 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %15, i32 0, i32 0
  %16 = load i8**, i8*** %virname, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i32 0, i32 0), i8** %16, align 8
  store i32 1, i32* %ret, align 4
  br label %while.end.308

if.end.18:                                        ; preds = %if.end.15
  %d_flags = getelementptr inbounds %struct.__zip_dirent, %struct.__zip_dirent* %zdirent, i32 0, i32 3
  %17 = load i16, i16* %d_flags, align 2
  %conv = zext i16 %17 to i32
  %and = and i32 %conv, 8257
  %cmp19 = icmp ne i32 %and, 0
  %conv20 = zext i1 %cmp19 to i32
  store i32 %conv20, i32* %encrypted, align 4
  %d_name21 = getelementptr inbounds %struct.__zip_dirent, %struct.__zip_dirent* %zdirent, i32 0, i32 4
  %18 = load i8*, i8** %d_name21, align 8
  %d_crc3222 = getelementptr inbounds %struct.__zip_dirent, %struct.__zip_dirent* %zdirent, i32 0, i32 5
  %19 = load i32, i32* %d_crc3222, align 4
  %d_off = getelementptr inbounds %struct.__zip_dirent, %struct.__zip_dirent* %zdirent, i32 0, i32 6
  %20 = load i32, i32* %d_off, align 4
  %21 = load i32, i32* %encrypted, align 4
  %d_csize = getelementptr inbounds %struct.__zip_dirent, %struct.__zip_dirent* %zdirent, i32 0, i32 1
  %22 = load i32, i32* %d_csize, align 4
  %st_size = getelementptr inbounds %struct.__zip_dirent, %struct.__zip_dirent* %zdirent, i32 0, i32 2
  %23 = load i32, i32* %st_size, align 4
  %d_compr = getelementptr inbounds %struct.__zip_dirent, %struct.__zip_dirent* %zdirent, i32 0, i32 0
  %24 = load i16, i16* %d_compr, align 2
  %conv23 = zext i16 %24 to i32
  %d_csize24 = getelementptr inbounds %struct.__zip_dirent, %struct.__zip_dirent* %zdirent, i32 0, i32 1
  %25 = load i32, i32* %d_csize24, align 4
  %tobool25 = icmp ne i32 %25, 0
  br i1 %tobool25, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.18
  %st_size26 = getelementptr inbounds %struct.__zip_dirent, %struct.__zip_dirent* %zdirent, i32 0, i32 2
  %26 = load i32, i32* %st_size26, align 4
  %d_csize27 = getelementptr inbounds %struct.__zip_dirent, %struct.__zip_dirent* %zdirent, i32 0, i32 1
  %27 = load i32, i32* %d_csize27, align 4
  %div = udiv i32 %26, %27
  br label %cond.end

cond.false:                                       ; preds = %if.end.18
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %div, %cond.true ], [ 0, %cond.false ]
  %28 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %28, i32 0, i32 4
  %29 = load %struct.cl_limits*, %struct.cl_limits** %limits, align 8
  %tobool28 = icmp ne %struct.cl_limits* %29, null
  br i1 %tobool28, label %cond.true.29, label %cond.false.31

cond.true.29:                                     ; preds = %cond.end
  %30 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits30 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %30, i32 0, i32 4
  %31 = load %struct.cl_limits*, %struct.cl_limits** %limits30, align 8
  %maxratio = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %31, i32 0, i32 3
  %32 = load i32, i32* %maxratio, align 4
  br label %cond.end.32

cond.false.31:                                    ; preds = %cond.end
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.false.31, %cond.true.29
  %cond33 = phi i32 [ %32, %cond.true.29 ], [ 0, %cond.false.31 ]
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.35, i32 0, i32 0), i8* %18, i32 %19, i32 %20, i32 %21, i32 %22, i32 %23, i32 %conv23, i32 %cond, i32 %cond33)
  %st_size34 = getelementptr inbounds %struct.__zip_dirent, %struct.__zip_dirent* %zdirent, i32 0, i32 2
  %33 = load i32, i32* %st_size34, align 4
  %tobool35 = icmp ne i32 %33, 0
  br i1 %tobool35, label %if.end.42, label %if.then.36

if.then.36:                                       ; preds = %cond.end.32
  %d_crc3237 = getelementptr inbounds %struct.__zip_dirent, %struct.__zip_dirent* %zdirent, i32 0, i32 5
  %34 = load i32, i32* %d_crc3237, align 4
  %tobool38 = icmp ne i32 %34, 0
  br i1 %tobool38, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %if.then.36
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.36, i32 0, i32 0))
  %35 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname40 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %35, i32 0, i32 0
  %36 = load i8**, i8*** %virname40, align 8
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.37, i32 0, i32 0), i8** %36, align 8
  store i32 1, i32* %ret, align 4
  br label %while.end.308

if.end.41:                                        ; preds = %if.then.36
  br label %while.cond

if.end.42:                                        ; preds = %cond.end.32
  %37 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %engine = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %37, i32 0, i32 3
  %38 = load %struct.cl_engine*, %struct.cl_engine** %engine, align 8
  %zip_mlist = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %38, i32 0, i32 6
  %39 = load i8*, i8** %zip_mlist, align 8
  %40 = bitcast i8* %39 to %struct.cli_meta_node*
  store %struct.cli_meta_node* %40, %struct.cli_meta_node** %mdata, align 8
  %41 = load %struct.cli_meta_node*, %struct.cli_meta_node** %mdata, align 8
  %tobool43 = icmp ne %struct.cli_meta_node* %41, null
  br i1 %tobool43, label %if.then.44, label %if.end.112

if.then.44:                                       ; preds = %if.end.42
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then.44
  %42 = load %struct.cli_meta_node*, %struct.cli_meta_node** %mdata, align 8
  %encrypted45 = getelementptr inbounds %struct.cli_meta_node, %struct.cli_meta_node* %42, i32 0, i32 5
  %43 = load i32, i32* %encrypted45, align 4
  %44 = load i32, i32* %encrypted, align 4
  %cmp46 = icmp ne i32 %43, %44
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %do.body
  br label %do.cond

if.end.49:                                        ; preds = %do.body
  %45 = load %struct.cli_meta_node*, %struct.cli_meta_node** %mdata, align 8
  %crc32 = getelementptr inbounds %struct.cli_meta_node, %struct.cli_meta_node* %45, i32 0, i32 3
  %46 = load i32, i32* %crc32, align 4
  %tobool50 = icmp ne i32 %46, 0
  br i1 %tobool50, label %land.lhs.true.51, label %if.end.57

land.lhs.true.51:                                 ; preds = %if.end.49
  %47 = load %struct.cli_meta_node*, %struct.cli_meta_node** %mdata, align 8
  %crc3252 = getelementptr inbounds %struct.cli_meta_node, %struct.cli_meta_node* %47, i32 0, i32 3
  %48 = load i32, i32* %crc3252, align 4
  %d_crc3253 = getelementptr inbounds %struct.__zip_dirent, %struct.__zip_dirent* %zdirent, i32 0, i32 5
  %49 = load i32, i32* %d_crc3253, align 4
  %cmp54 = icmp ne i32 %48, %49
  br i1 %cmp54, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %land.lhs.true.51
  br label %do.cond

if.end.57:                                        ; preds = %land.lhs.true.51, %if.end.49
  %50 = load %struct.cli_meta_node*, %struct.cli_meta_node** %mdata, align 8
  %csize = getelementptr inbounds %struct.cli_meta_node, %struct.cli_meta_node* %50, i32 0, i32 0
  %51 = load i32, i32* %csize, align 4
  %cmp58 = icmp sgt i32 %51, 0
  br i1 %cmp58, label %land.lhs.true.60, label %if.end.66

land.lhs.true.60:                                 ; preds = %if.end.57
  %52 = load %struct.cli_meta_node*, %struct.cli_meta_node** %mdata, align 8
  %csize61 = getelementptr inbounds %struct.cli_meta_node, %struct.cli_meta_node* %52, i32 0, i32 0
  %53 = load i32, i32* %csize61, align 4
  %d_csize62 = getelementptr inbounds %struct.__zip_dirent, %struct.__zip_dirent* %zdirent, i32 0, i32 1
  %54 = load i32, i32* %d_csize62, align 4
  %cmp63 = icmp ne i32 %53, %54
  br i1 %cmp63, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %land.lhs.true.60
  br label %do.cond

if.end.66:                                        ; preds = %land.lhs.true.60, %if.end.57
  %55 = load %struct.cli_meta_node*, %struct.cli_meta_node** %mdata, align 8
  %size67 = getelementptr inbounds %struct.cli_meta_node, %struct.cli_meta_node* %55, i32 0, i32 1
  %56 = load i32, i32* %size67, align 4
  %cmp68 = icmp sge i32 %56, 0
  br i1 %cmp68, label %land.lhs.true.70, label %if.end.76

land.lhs.true.70:                                 ; preds = %if.end.66
  %57 = load %struct.cli_meta_node*, %struct.cli_meta_node** %mdata, align 8
  %size71 = getelementptr inbounds %struct.cli_meta_node, %struct.cli_meta_node* %57, i32 0, i32 1
  %58 = load i32, i32* %size71, align 4
  %st_size72 = getelementptr inbounds %struct.__zip_dirent, %struct.__zip_dirent* %zdirent, i32 0, i32 2
  %59 = load i32, i32* %st_size72, align 4
  %cmp73 = icmp ne i32 %58, %59
  br i1 %cmp73, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %land.lhs.true.70
  br label %do.cond

if.end.76:                                        ; preds = %land.lhs.true.70, %if.end.66
  %60 = load %struct.cli_meta_node*, %struct.cli_meta_node** %mdata, align 8
  %method = getelementptr inbounds %struct.cli_meta_node, %struct.cli_meta_node* %60, i32 0, i32 2
  %61 = load i32, i32* %method, align 4
  %cmp77 = icmp sge i32 %61, 0
  br i1 %cmp77, label %land.lhs.true.79, label %if.end.88

land.lhs.true.79:                                 ; preds = %if.end.76
  %62 = load %struct.cli_meta_node*, %struct.cli_meta_node** %mdata, align 8
  %method80 = getelementptr inbounds %struct.cli_meta_node, %struct.cli_meta_node* %62, i32 0, i32 2
  %63 = load i32, i32* %method80, align 4
  %conv81 = trunc i32 %63 to i16
  %conv82 = zext i16 %conv81 to i32
  %d_compr83 = getelementptr inbounds %struct.__zip_dirent, %struct.__zip_dirent* %zdirent, i32 0, i32 0
  %64 = load i16, i16* %d_compr83, align 2
  %conv84 = zext i16 %64 to i32
  %cmp85 = icmp ne i32 %conv82, %conv84
  br i1 %cmp85, label %if.then.87, label %if.end.88

if.then.87:                                       ; preds = %land.lhs.true.79
  br label %do.cond

if.end.88:                                        ; preds = %land.lhs.true.79, %if.end.76
  %65 = load %struct.cli_meta_node*, %struct.cli_meta_node** %mdata, align 8
  %fileno = getelementptr inbounds %struct.cli_meta_node, %struct.cli_meta_node* %65, i32 0, i32 4
  %66 = load i32, i32* %fileno, align 4
  %tobool89 = icmp ne i32 %66, 0
  br i1 %tobool89, label %land.lhs.true.90, label %if.end.95

land.lhs.true.90:                                 ; preds = %if.end.88
  %67 = load %struct.cli_meta_node*, %struct.cli_meta_node** %mdata, align 8
  %fileno91 = getelementptr inbounds %struct.cli_meta_node, %struct.cli_meta_node* %67, i32 0, i32 4
  %68 = load i32, i32* %fileno91, align 4
  %69 = load i32, i32* %files, align 4
  %cmp92 = icmp ne i32 %68, %69
  br i1 %cmp92, label %if.then.94, label %if.end.95

if.then.94:                                       ; preds = %land.lhs.true.90
  br label %do.cond

if.end.95:                                        ; preds = %land.lhs.true.90, %if.end.88
  %70 = load %struct.cli_meta_node*, %struct.cli_meta_node** %mdata, align 8
  %maxdepth = getelementptr inbounds %struct.cli_meta_node, %struct.cli_meta_node* %70, i32 0, i32 6
  %71 = load i32, i32* %maxdepth, align 4
  %tobool96 = icmp ne i32 %71, 0
  br i1 %tobool96, label %land.lhs.true.97, label %if.end.102

land.lhs.true.97:                                 ; preds = %if.end.95
  %72 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %arec = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %72, i32 0, i32 6
  %73 = load i32, i32* %arec, align 4
  %74 = load %struct.cli_meta_node*, %struct.cli_meta_node** %mdata, align 8
  %maxdepth98 = getelementptr inbounds %struct.cli_meta_node, %struct.cli_meta_node* %74, i32 0, i32 6
  %75 = load i32, i32* %maxdepth98, align 4
  %cmp99 = icmp ugt i32 %73, %75
  br i1 %cmp99, label %if.then.101, label %if.end.102

if.then.101:                                      ; preds = %land.lhs.true.97
  br label %do.cond

if.end.102:                                       ; preds = %land.lhs.true.97, %if.end.95
  %76 = load %struct.cli_meta_node*, %struct.cli_meta_node** %mdata, align 8
  %filename = getelementptr inbounds %struct.cli_meta_node, %struct.cli_meta_node* %76, i32 0, i32 7
  %77 = load i8*, i8** %filename, align 8
  %tobool103 = icmp ne i8* %77, null
  br i1 %tobool103, label %land.lhs.true.104, label %if.end.110

land.lhs.true.104:                                ; preds = %if.end.102
  %d_name105 = getelementptr inbounds %struct.__zip_dirent, %struct.__zip_dirent* %zdirent, i32 0, i32 4
  %78 = load i8*, i8** %d_name105, align 8
  %79 = load %struct.cli_meta_node*, %struct.cli_meta_node** %mdata, align 8
  %filename106 = getelementptr inbounds %struct.cli_meta_node, %struct.cli_meta_node* %79, i32 0, i32 7
  %80 = load i8*, i8** %filename106, align 8
  %call107 = call i32 @strcmp(i8* %78, i8* %80) #5
  %tobool108 = icmp ne i32 %call107, 0
  br i1 %tobool108, label %if.then.109, label %if.end.110

if.then.109:                                      ; preds = %land.lhs.true.104
  br label %do.cond

if.end.110:                                       ; preds = %land.lhs.true.104, %if.end.102
  br label %do.end

do.cond:                                          ; preds = %if.then.109, %if.then.101, %if.then.94, %if.then.87, %if.then.75, %if.then.65, %if.then.56, %if.then.48
  %81 = load %struct.cli_meta_node*, %struct.cli_meta_node** %mdata, align 8
  %next = getelementptr inbounds %struct.cli_meta_node, %struct.cli_meta_node* %81, i32 0, i32 9
  %82 = load %struct.cli_meta_node*, %struct.cli_meta_node** %next, align 8
  store %struct.cli_meta_node* %82, %struct.cli_meta_node** %mdata, align 8
  %tobool111 = icmp ne %struct.cli_meta_node* %82, null
  br i1 %tobool111, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.end.110
  br label %if.end.112

if.end.112:                                       ; preds = %do.end, %if.end.42
  %83 = load %struct.cli_meta_node*, %struct.cli_meta_node** %mdata, align 8
  %tobool113 = icmp ne %struct.cli_meta_node* %83, null
  br i1 %tobool113, label %if.then.114, label %if.end.117

if.then.114:                                      ; preds = %if.end.112
  %84 = load %struct.cli_meta_node*, %struct.cli_meta_node** %mdata, align 8
  %virname115 = getelementptr inbounds %struct.cli_meta_node, %struct.cli_meta_node* %84, i32 0, i32 8
  %85 = load i8*, i8** %virname115, align 8
  %86 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname116 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %86, i32 0, i32 0
  %87 = load i8**, i8*** %virname116, align 8
  store i8* %85, i8** %87, align 8
  store i32 1, i32* %ret, align 4
  br label %while.end.308

if.end.117:                                       ; preds = %if.end.112
  %d_name118 = getelementptr inbounds %struct.__zip_dirent, %struct.__zip_dirent* %zdirent, i32 0, i32 4
  %88 = load i8*, i8** %d_name118, align 8
  %call119 = call i64 @strlen(i8* %88) #5
  %sub = sub i64 %call119, 1
  %d_name120 = getelementptr inbounds %struct.__zip_dirent, %struct.__zip_dirent* %zdirent, i32 0, i32 4
  %89 = load i8*, i8** %d_name120, align 8
  %arrayidx = getelementptr inbounds i8, i8* %89, i64 %sub
  %90 = load i8, i8* %arrayidx, align 1
  %conv121 = sext i8 %90 to i32
  %cmp122 = icmp eq i32 %conv121, 47
  br i1 %cmp122, label %if.then.124, label %if.end.125

if.then.124:                                      ; preds = %if.end.117
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.38, i32 0, i32 0))
  br label %while.cond

if.end.125:                                       ; preds = %if.end.117
  %d_csize126 = getelementptr inbounds %struct.__zip_dirent, %struct.__zip_dirent* %zdirent, i32 0, i32 1
  %91 = load i32, i32* %d_csize126, align 4
  %tobool127 = icmp ne i32 %91, 0
  br i1 %tobool127, label %if.end.130, label %if.then.128

if.then.128:                                      ; preds = %if.end.125
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.39, i32 0, i32 0))
  %92 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname129 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %92, i32 0, i32 0
  %93 = load i8**, i8*** %virname129, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i32 0, i32 0), i8** %93, align 8
  store i32 1, i32* %ret, align 4
  br label %while.end.308

if.end.130:                                       ; preds = %if.end.125
  %94 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits131 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %94, i32 0, i32 4
  %95 = load %struct.cl_limits*, %struct.cl_limits** %limits131, align 8
  %tobool132 = icmp ne %struct.cl_limits* %95, null
  br i1 %tobool132, label %land.lhs.true.133, label %if.end.148

land.lhs.true.133:                                ; preds = %if.end.130
  %96 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits134 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %96, i32 0, i32 4
  %97 = load %struct.cl_limits*, %struct.cl_limits** %limits134, align 8
  %maxratio135 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %97, i32 0, i32 3
  %98 = load i32, i32* %maxratio135, align 4
  %cmp136 = icmp ugt i32 %98, 0
  br i1 %cmp136, label %land.lhs.true.138, label %if.end.148

land.lhs.true.138:                                ; preds = %land.lhs.true.133
  %st_size139 = getelementptr inbounds %struct.__zip_dirent, %struct.__zip_dirent* %zdirent, i32 0, i32 2
  %99 = load i32, i32* %st_size139, align 4
  %d_csize140 = getelementptr inbounds %struct.__zip_dirent, %struct.__zip_dirent* %zdirent, i32 0, i32 1
  %100 = load i32, i32* %d_csize140, align 4
  %div141 = udiv i32 %99, %100
  %101 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits142 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %101, i32 0, i32 4
  %102 = load %struct.cl_limits*, %struct.cl_limits** %limits142, align 8
  %maxratio143 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %102, i32 0, i32 3
  %103 = load i32, i32* %maxratio143, align 4
  %cmp144 = icmp uge i32 %div141, %103
  br i1 %cmp144, label %if.then.146, label %if.end.148

if.then.146:                                      ; preds = %land.lhs.true.138
  %104 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname147 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %104, i32 0, i32 0
  %105 = load i8**, i8*** %virname147, align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i32 0, i32 0), i8** %105, align 8
  store i32 1, i32* %ret, align 4
  br label %while.end.308

if.end.148:                                       ; preds = %land.lhs.true.138, %land.lhs.true.133, %if.end.130
  %106 = load i32, i32* %encrypted, align 4
  %tobool149 = icmp ne i32 %106, 0
  br i1 %tobool149, label %if.then.150, label %if.end.167

if.then.150:                                      ; preds = %if.end.148
  %107 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %107, i32 0, i32 5
  %108 = load i32, i32* %options, align 4
  %and151 = and i32 %108, 8
  %tobool152 = icmp ne i32 %and151, 0
  br i1 %tobool152, label %if.then.153, label %if.else.166

if.then.153:                                      ; preds = %if.then.150
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.41, i32 0, i32 0))
  %109 = load i32, i32* %desc.addr, align 4
  %call154 = call i64 @lseek(i32 %109, i64 0, i32 0) #4
  %110 = load i32, i32* %desc.addr, align 4
  %111 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call155 = call i32 @cli_scandesc(i32 %110, %struct.cli_ctx* %111, i8 zeroext 0, i32 0, i8 zeroext 0, %struct.cli_matched_type** null)
  store i32 %call155, i32* %ret, align 4
  %112 = load i32, i32* %ret, align 4
  %cmp156 = icmp slt i32 %112, 0
  br i1 %cmp156, label %if.then.158, label %if.else.159

if.then.158:                                      ; preds = %if.then.153
  br label %while.end.308

if.else.159:                                      ; preds = %if.then.153
  %113 = load i32, i32* %ret, align 4
  %cmp160 = icmp ne i32 %113, 1
  br i1 %cmp160, label %if.then.162, label %if.end.164

if.then.162:                                      ; preds = %if.else.159
  %114 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname163 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %114, i32 0, i32 0
  %115 = load i8**, i8*** %virname163, align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i32 0, i32 0), i8** %115, align 8
  store i32 1, i32* %ret, align 4
  br label %if.end.164

if.end.164:                                       ; preds = %if.then.162, %if.else.159
  br label %if.end.165

if.end.165:                                       ; preds = %if.end.164
  br label %while.end.308

if.else.166:                                      ; preds = %if.then.150
  br label %while.cond

if.end.167:                                       ; preds = %if.end.148
  %116 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits168 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %116, i32 0, i32 4
  %117 = load %struct.cl_limits*, %struct.cl_limits** %limits168, align 8
  %tobool169 = icmp ne %struct.cl_limits* %117, null
  br i1 %tobool169, label %if.then.170, label %if.end.209

if.then.170:                                      ; preds = %if.end.167
  %118 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits171 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %118, i32 0, i32 4
  %119 = load %struct.cl_limits*, %struct.cl_limits** %limits171, align 8
  %maxfilesize = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %119, i32 0, i32 5
  %120 = load i64, i64* %maxfilesize, align 8
  %tobool172 = icmp ne i64 %120, 0
  br i1 %tobool172, label %land.lhs.true.173, label %if.end.191

land.lhs.true.173:                                ; preds = %if.then.170
  %st_size174 = getelementptr inbounds %struct.__zip_dirent, %struct.__zip_dirent* %zdirent, i32 0, i32 2
  %121 = load i32, i32* %st_size174, align 4
  %conv175 = zext i32 %121 to i64
  %122 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits176 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %122, i32 0, i32 4
  %123 = load %struct.cl_limits*, %struct.cl_limits** %limits176, align 8
  %maxfilesize177 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %123, i32 0, i32 5
  %124 = load i64, i64* %maxfilesize177, align 8
  %cmp178 = icmp ugt i64 %conv175, %124
  br i1 %cmp178, label %if.then.180, label %if.end.191

if.then.180:                                      ; preds = %land.lhs.true.173
  %d_name181 = getelementptr inbounds %struct.__zip_dirent, %struct.__zip_dirent* %zdirent, i32 0, i32 4
  %125 = load i8*, i8** %d_name181, align 8
  %st_size182 = getelementptr inbounds %struct.__zip_dirent, %struct.__zip_dirent* %zdirent, i32 0, i32 2
  %126 = load i32, i32* %st_size182, align 4
  %127 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits183 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %127, i32 0, i32 4
  %128 = load %struct.cl_limits*, %struct.cl_limits** %limits183, align 8
  %maxfilesize184 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %128, i32 0, i32 5
  %129 = load i64, i64* %maxfilesize184, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.43, i32 0, i32 0), i8* %125, i32 %126, i64 %129)
  %130 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options185 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %130, i32 0, i32 5
  %131 = load i32, i32* %options185, align 4
  %and186 = and i32 %131, 256
  %tobool187 = icmp ne i32 %and186, 0
  br i1 %tobool187, label %if.then.188, label %if.end.190

if.then.188:                                      ; preds = %if.then.180
  %132 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname189 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %132, i32 0, i32 0
  %133 = load i8**, i8*** %virname189, align 8
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.44, i32 0, i32 0), i8** %133, align 8
  store i32 1, i32* %ret, align 4
  br label %while.end.308

if.end.190:                                       ; preds = %if.then.180
  br label %while.cond

if.end.191:                                       ; preds = %land.lhs.true.173, %if.then.170
  %134 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits192 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %134, i32 0, i32 4
  %135 = load %struct.cl_limits*, %struct.cl_limits** %limits192, align 8
  %maxfiles = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %135, i32 0, i32 1
  %136 = load i32, i32* %maxfiles, align 4
  %tobool193 = icmp ne i32 %136, 0
  br i1 %tobool193, label %land.lhs.true.194, label %if.end.208

land.lhs.true.194:                                ; preds = %if.end.191
  %137 = load i32, i32* %files, align 4
  %138 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits195 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %138, i32 0, i32 4
  %139 = load %struct.cl_limits*, %struct.cl_limits** %limits195, align 8
  %maxfiles196 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %139, i32 0, i32 1
  %140 = load i32, i32* %maxfiles196, align 4
  %cmp197 = icmp ugt i32 %137, %140
  br i1 %cmp197, label %if.then.199, label %if.end.208

if.then.199:                                      ; preds = %land.lhs.true.194
  %141 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits200 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %141, i32 0, i32 4
  %142 = load %struct.cl_limits*, %struct.cl_limits** %limits200, align 8
  %maxfiles201 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %142, i32 0, i32 1
  %143 = load i32, i32* %maxfiles201, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.45, i32 0, i32 0), i32 %143)
  %144 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options202 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %144, i32 0, i32 5
  %145 = load i32, i32* %options202, align 4
  %and203 = and i32 %145, 256
  %tobool204 = icmp ne i32 %and203, 0
  br i1 %tobool204, label %if.then.205, label %if.end.207

if.then.205:                                      ; preds = %if.then.199
  %146 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname206 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %146, i32 0, i32 0
  %147 = load i8**, i8*** %virname206, align 8
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.46, i32 0, i32 0), i8** %147, align 8
  store i32 1, i32* %ret, align 4
  br label %while.end.308

if.end.207:                                       ; preds = %if.then.199
  br label %while.end.308

if.end.208:                                       ; preds = %land.lhs.true.194, %if.end.191
  br label %if.end.209

if.end.209:                                       ; preds = %if.end.208, %if.end.167
  %148 = load %struct.__zip_dir*, %struct.__zip_dir** %zdir, align 8
  %d_name210 = getelementptr inbounds %struct.__zip_dirent, %struct.__zip_dirent* %zdirent, i32 0, i32 4
  %149 = load i8*, i8** %d_name210, align 8
  %d_off211 = getelementptr inbounds %struct.__zip_dirent, %struct.__zip_dirent* %zdirent, i32 0, i32 6
  %150 = load i32, i32* %d_off211, align 4
  %call212 = call %struct.__zip_file* @zip_file_open(%struct.__zip_dir* %148, i8* %149, i32 %150)
  store %struct.__zip_file* %call212, %struct.__zip_file** %zfp, align 8
  %cmp213 = icmp eq %struct.__zip_file* %call212, null
  br i1 %cmp213, label %if.then.215, label %if.end.224

if.then.215:                                      ; preds = %if.end.209
  %151 = load %struct.__zip_dir*, %struct.__zip_dir** %zdir, align 8
  %errcode = getelementptr inbounds %struct.__zip_dir, %struct.__zip_dir* %151, i32 0, i32 1
  %152 = load i32, i32* %errcode, align 4
  %cmp216 = icmp eq i32 %152, -125
  br i1 %cmp216, label %if.then.218, label %if.else.222

if.then.218:                                      ; preds = %if.then.215
  store i32 -125, i32* %ret, align 4
  %153 = load i8, i8* %swarning, align 1
  %tobool219 = icmp ne i8 %153, 0
  br i1 %tobool219, label %if.end.221, label %if.then.220

if.then.220:                                      ; preds = %if.then.218
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.47, i32 0, i32 0))
  store i8 1, i8* %swarning, align 1
  br label %if.end.221

if.end.221:                                       ; preds = %if.then.220, %if.then.218
  br label %while.cond

if.else.222:                                      ; preds = %if.then.215
  %d_name223 = getelementptr inbounds %struct.__zip_dirent, %struct.__zip_dirent* %zdirent, i32 0, i32 4
  %154 = load i8*, i8** %d_name223, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.48, i32 0, i32 0), i8* %154)
  store i32 -104, i32* %ret, align 4
  br label %while.end.308

if.end.224:                                       ; preds = %if.end.209
  store i32 0, i32* %bfcnt, align 4
  store i8 0, i8* %success, align 1
  br label %while.body.226

while.body.226:                                   ; preds = %if.end.224, %if.end.288
  store i8 0, i8* %fail, align 1
  %call227 = call i32 @cli_gentempfd(i8* null, i8** %tmpname, i32* %fd)
  store i32 %call227, i32* %ret, align 4
  %tobool228 = icmp ne i32 %call227, 0
  br i1 %tobool228, label %if.then.229, label %if.end.230

if.then.229:                                      ; preds = %while.body.226
  br label %while.end.296

if.end.230:                                       ; preds = %while.body.226
  store i64 0, i64* %size, align 8
  br label %while.cond.231

while.cond.231:                                   ; preds = %if.end.242, %if.end.230
  %155 = load %struct.__zip_file*, %struct.__zip_file** %zfp, align 8
  %156 = load i8*, i8** %buff, align 8
  %call232 = call i64 @zip_file_read(%struct.__zip_file* %155, i8* %156, i64 8192)
  %conv233 = trunc i64 %call232 to i32
  store i32 %conv233, i32* %bytes, align 4
  %cmp234 = icmp sgt i32 %conv233, 0
  br i1 %cmp234, label %while.body.236, label %while.end

while.body.236:                                   ; preds = %while.cond.231
  %157 = load i32, i32* %bytes, align 4
  %conv237 = sext i32 %157 to i64
  %158 = load i64, i64* %size, align 8
  %add = add i64 %158, %conv237
  store i64 %add, i64* %size, align 8
  %159 = load i32, i32* %fd, align 4
  %160 = load i8*, i8** %buff, align 8
  %161 = load i32, i32* %bytes, align 4
  %call238 = call i32 @cli_writen(i32 %159, i8* %160, i32 %161)
  %162 = load i32, i32* %bytes, align 4
  %cmp239 = icmp ne i32 %call238, %162
  br i1 %cmp239, label %if.then.241, label %if.end.242

if.then.241:                                      ; preds = %while.body.236
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.49, i32 0, i32 0))
  store i32 -123, i32* %ret, align 4
  br label %while.end

if.end.242:                                       ; preds = %while.body.236
  br label %while.cond.231

while.end:                                        ; preds = %if.then.241, %while.cond.231
  %163 = load i32, i32* %encrypted, align 4
  %tobool243 = icmp ne i32 %163, 0
  br i1 %tobool243, label %if.end.261, label %if.then.244

if.then.244:                                      ; preds = %while.end
  %164 = load i64, i64* %size, align 8
  %st_size245 = getelementptr inbounds %struct.__zip_dirent, %struct.__zip_dirent* %zdirent, i32 0, i32 2
  %165 = load i32, i32* %st_size245, align 4
  %conv246 = zext i32 %165 to i64
  %cmp247 = icmp ne i64 %164, %conv246
  br i1 %cmp247, label %if.then.249, label %if.else.259

if.then.249:                                      ; preds = %if.then.244
  %166 = load i64, i64* %size, align 8
  %st_size250 = getelementptr inbounds %struct.__zip_dirent, %struct.__zip_dirent* %zdirent, i32 0, i32 2
  %167 = load i32, i32* %st_size250, align 4
  %conv251 = zext i32 %167 to i64
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.50, i32 0, i32 0), i64 %166, i64 %conv251)
  %168 = load %struct.__zip_file*, %struct.__zip_file** %zfp, align 8
  %bf = getelementptr inbounds %struct.__zip_file, %struct.__zip_file* %168, i32 0, i32 2
  %169 = load i16*, i16** %bf, align 8
  %arrayidx252 = getelementptr inbounds i16, i16* %169, i64 0
  %170 = load i16, i16* %arrayidx252, align 2
  %conv253 = sext i16 %170 to i32
  %cmp254 = icmp eq i32 %conv253, -1
  br i1 %cmp254, label %if.then.256, label %if.else.257

if.then.256:                                      ; preds = %if.then.249
  store i32 -104, i32* %ret, align 4
  br label %while.end.296

if.else.257:                                      ; preds = %if.then.249
  store i8 1, i8* %fail, align 1
  br label %if.end.258

if.end.258:                                       ; preds = %if.else.257
  br label %if.end.260

if.else.259:                                      ; preds = %if.then.244
  %171 = load i8*, i8** %tmpname, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.51, i32 0, i32 0), i8* %171)
  store i8 1, i8* %success, align 1
  br label %if.end.260

if.end.260:                                       ; preds = %if.else.259, %if.end.258
  br label %if.end.261

if.end.261:                                       ; preds = %if.end.260, %while.end
  %172 = load i8, i8* %fail, align 1
  %tobool262 = icmp ne i8 %172, 0
  br i1 %tobool262, label %if.end.276, label %if.then.263

if.then.263:                                      ; preds = %if.end.261
  %173 = load i32, i32* %fd, align 4
  %call264 = call i32 @fsync(i32 %173)
  %cmp265 = icmp eq i32 %call264, -1
  br i1 %cmp265, label %if.then.267, label %if.end.268

if.then.267:                                      ; preds = %if.then.263
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i32 0, i32 0))
  store i32 -113, i32* %ret, align 4
  br label %while.end.296

if.end.268:                                       ; preds = %if.then.263
  %174 = load i32, i32* %fd, align 4
  %call269 = call i64 @lseek(i32 %174, i64 0, i32 0) #4
  %175 = load i32, i32* %fd, align 4
  %176 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call270 = call i32 @cli_magic_scandesc(i32 %175, %struct.cli_ctx* %176)
  store i32 %call270, i32* %ret, align 4
  %cmp271 = icmp eq i32 %call270, 1
  br i1 %cmp271, label %if.then.273, label %if.end.275

if.then.273:                                      ; preds = %if.end.268
  %177 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname274 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %177, i32 0, i32 0
  %178 = load i8**, i8*** %virname274, align 8
  %179 = load i8*, i8** %178, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.53, i32 0, i32 0), i8* %179)
  store i32 1, i32* %ret, align 4
  br label %while.end.296

if.end.275:                                       ; preds = %if.end.268
  br label %if.end.276

if.end.276:                                       ; preds = %if.end.275, %if.end.261
  %180 = load i32, i32* %fd, align 4
  %call277 = call i32 @close(i32 %180)
  %181 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool278 = icmp ne i8 %181, 0
  br i1 %tobool278, label %if.end.281, label %if.then.279

if.then.279:                                      ; preds = %if.end.276
  %182 = load i8*, i8** %tmpname, align 8
  %call280 = call i32 @unlink(i8* %182) #4
  br label %if.end.281

if.end.281:                                       ; preds = %if.then.279, %if.end.276
  %183 = load i8*, i8** %tmpname, align 8
  call void @free(i8* %183) #4
  store i32 -1, i32* %fd, align 4
  %184 = load i32, i32* %bfcnt, align 4
  %idxprom = zext i32 %184 to i64
  %185 = load %struct.__zip_file*, %struct.__zip_file** %zfp, align 8
  %bf282 = getelementptr inbounds %struct.__zip_file, %struct.__zip_file* %185, i32 0, i32 2
  %186 = load i16*, i16** %bf282, align 8
  %arrayidx283 = getelementptr inbounds i16, i16* %186, i64 %idxprom
  %187 = load i16, i16* %arrayidx283, align 2
  %conv284 = sext i16 %187 to i32
  %cmp285 = icmp eq i32 %conv284, -1
  br i1 %cmp285, label %if.then.287, label %if.end.288

if.then.287:                                      ; preds = %if.end.281
  br label %while.end.296

if.end.288:                                       ; preds = %if.end.281
  %188 = load i32, i32* %bfcnt, align 4
  %idxprom289 = zext i32 %188 to i64
  %189 = load %struct.__zip_file*, %struct.__zip_file** %zfp, align 8
  %bf290 = getelementptr inbounds %struct.__zip_file, %struct.__zip_file* %189, i32 0, i32 2
  %190 = load i16*, i16** %bf290, align 8
  %arrayidx291 = getelementptr inbounds i16, i16* %190, i64 %idxprom289
  %191 = load i16, i16* %arrayidx291, align 2
  %192 = load %struct.__zip_file*, %struct.__zip_file** %zfp, align 8
  %method292 = getelementptr inbounds %struct.__zip_file, %struct.__zip_file* %192, i32 0, i32 1
  store i16 %191, i16* %method292, align 2
  %193 = load %struct.__zip_file*, %struct.__zip_file** %zfp, align 8
  %method293 = getelementptr inbounds %struct.__zip_file, %struct.__zip_file* %193, i32 0, i32 1
  %194 = load i16, i16* %method293, align 2
  %conv294 = zext i16 %194 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.54, i32 0, i32 0), i32 %conv294)
  %195 = load i32, i32* %bfcnt, align 4
  %inc295 = add i32 %195, 1
  store i32 %inc295, i32* %bfcnt, align 4
  br label %while.body.226

while.end.296:                                    ; preds = %if.then.287, %if.then.273, %if.then.267, %if.then.256, %if.then.229
  %196 = load %struct.__zip_file*, %struct.__zip_file** %zfp, align 8
  %call297 = call i32 @zip_file_close(%struct.__zip_file* %196)
  %197 = load i32, i32* %ret, align 4
  %tobool298 = icmp ne i32 %197, 0
  br i1 %tobool298, label %if.end.304, label %land.lhs.true.299

land.lhs.true.299:                                ; preds = %while.end.296
  %198 = load i32, i32* %encrypted, align 4
  %tobool300 = icmp ne i32 %198, 0
  br i1 %tobool300, label %if.end.304, label %land.lhs.true.301

land.lhs.true.301:                                ; preds = %land.lhs.true.299
  %199 = load i8, i8* %success, align 1
  %tobool302 = icmp ne i8 %199, 0
  br i1 %tobool302, label %if.end.304, label %if.then.303

if.then.303:                                      ; preds = %land.lhs.true.301
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.55, i32 0, i32 0))
  store i32 -104, i32* %ret, align 4
  br label %if.end.304

if.end.304:                                       ; preds = %if.then.303, %land.lhs.true.301, %land.lhs.true.299, %while.end.296
  %200 = load i32, i32* %ret, align 4
  %tobool305 = icmp ne i32 %200, 0
  br i1 %tobool305, label %if.then.306, label %if.end.307

if.then.306:                                      ; preds = %if.end.304
  br label %while.end.308

if.end.307:                                       ; preds = %if.end.304
  br label %while.cond

while.end.308:                                    ; preds = %if.then.306, %if.else.222, %if.end.207, %if.then.205, %if.then.188, %if.end.165, %if.then.158, %if.then.146, %if.then.128, %if.then.114, %if.then.39, %if.then.17, %if.then.12, %while.cond
  %201 = load %struct.__zip_dir*, %struct.__zip_dir** %zdir, align 8
  %call309 = call i32 @zip_dir_close(%struct.__zip_dir* %201)
  %202 = load i32, i32* %fd, align 4
  %cmp310 = icmp ne i32 %202, -1
  br i1 %cmp310, label %if.then.312, label %if.end.318

if.then.312:                                      ; preds = %while.end.308
  %203 = load i32, i32* %fd, align 4
  %call313 = call i32 @close(i32 %203)
  %204 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool314 = icmp ne i8 %204, 0
  br i1 %tobool314, label %if.end.317, label %if.then.315

if.then.315:                                      ; preds = %if.then.312
  %205 = load i8*, i8** %tmpname, align 8
  %call316 = call i32 @unlink(i8* %205) #4
  br label %if.end.317

if.end.317:                                       ; preds = %if.then.315, %if.then.312
  %206 = load i8*, i8** %tmpname, align 8
  call void @free(i8* %206) #4
  br label %if.end.318

if.end.318:                                       ; preds = %if.end.317, %while.end.308
  %207 = load i8*, i8** %buff, align 8
  call void @free(i8* %207) #4
  %208 = load i32, i32* %ret, align 4
  store i32 %208, i32* %retval
  br label %return

return:                                           ; preds = %if.end.318, %if.then.3, %if.then
  %209 = load i32, i32* %retval
  ret i32 %209
}

; Function Attrs: nounwind uwtable
define internal i32 @cli_scangzip(i32 %desc, %struct.cli_ctx* %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %desc.addr = alloca i32, align 4
  %ctx.addr = alloca %struct.cli_ctx*, align 8
  %fd = alloca i32, align 4
  %bytes = alloca i32, align 4
  %ret = alloca i32, align 4
  %size = alloca i64, align 8
  %buff = alloca i8*, align 8
  %tmpname = alloca i8*, align 8
  %gd = alloca %struct.gzFile_s*, align 8
  store i32 %desc, i32* %desc.addr, align 4
  store %struct.cli_ctx* %ctx, %struct.cli_ctx** %ctx.addr, align 8
  store i32 0, i32* %ret, align 4
  store i64 0, i64* %size, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.56, i32 0, i32 0))
  %0 = load i32, i32* %desc.addr, align 4
  %call = call i32 @dup(i32 %0) #4
  %call1 = call %struct.gzFile_s* @gzdopen(i32 %call, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.57, i32 0, i32 0))
  store %struct.gzFile_s* %call1, %struct.gzFile_s** %gd, align 8
  %cmp = icmp eq %struct.gzFile_s* %call1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %desc.addr, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.58, i32 0, i32 0), i32 %1)
  store i32 -105, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call i32 @cli_gentempfd(i8* null, i8** %tmpname, i32* %fd)
  store i32 %call2, i32* %ret, align 4
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.59, i32 0, i32 0))
  %2 = load %struct.gzFile_s*, %struct.gzFile_s** %gd, align 8
  %call4 = call i32 @gzclose(%struct.gzFile_s* %2)
  %3 = load i32, i32* %ret, align 4
  store i32 %3, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %call6 = call i8* @cli_malloc(i64 8192)
  store i8* %call6, i8** %buff, align 8
  %tobool7 = icmp ne i8* %call6, null
  br i1 %tobool7, label %if.end.15, label %if.then.8

if.then.8:                                        ; preds = %if.end.5
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.60, i32 0, i32 0), i32 8192)
  %4 = load %struct.gzFile_s*, %struct.gzFile_s** %gd, align 8
  %call9 = call i32 @gzclose(%struct.gzFile_s* %4)
  %5 = load i32, i32* %fd, align 4
  %call10 = call i32 @close(i32 %5)
  %6 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool11 = icmp ne i8 %6, 0
  br i1 %tobool11, label %if.end.14, label %if.then.12

if.then.12:                                       ; preds = %if.then.8
  %7 = load i8*, i8** %tmpname, align 8
  %call13 = call i32 @unlink(i8* %7) #4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %if.then.8
  %8 = load i8*, i8** %tmpname, align 8
  call void @free(i8* %8) #4
  store i32 -114, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.end.5
  br label %while.cond

while.cond:                                       ; preds = %if.end.45, %if.end.15
  %9 = load %struct.gzFile_s*, %struct.gzFile_s** %gd, align 8
  %10 = load i8*, i8** %buff, align 8
  %call16 = call i32 @gzread(%struct.gzFile_s* %9, i8* %10, i32 8192)
  store i32 %call16, i32* %bytes, align 4
  %cmp17 = icmp sgt i32 %call16, 0
  br i1 %cmp17, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load i32, i32* %bytes, align 4
  %conv = sext i32 %11 to i64
  %12 = load i64, i64* %size, align 8
  %add = add i64 %12, %conv
  store i64 %add, i64* %size, align 8
  %13 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %13, i32 0, i32 4
  %14 = load %struct.cl_limits*, %struct.cl_limits** %limits, align 8
  %tobool18 = icmp ne %struct.cl_limits* %14, null
  br i1 %tobool18, label %if.then.19, label %if.end.34

if.then.19:                                       ; preds = %while.body
  %15 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits20 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %15, i32 0, i32 4
  %16 = load %struct.cl_limits*, %struct.cl_limits** %limits20, align 8
  %maxfilesize = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %16, i32 0, i32 5
  %17 = load i64, i64* %maxfilesize, align 8
  %tobool21 = icmp ne i64 %17, 0
  br i1 %tobool21, label %land.lhs.true, label %if.end.33

land.lhs.true:                                    ; preds = %if.then.19
  %18 = load i64, i64* %size, align 8
  %add22 = add i64 %18, 8192
  %19 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits23 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %19, i32 0, i32 4
  %20 = load %struct.cl_limits*, %struct.cl_limits** %limits23, align 8
  %maxfilesize24 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %20, i32 0, i32 5
  %21 = load i64, i64* %maxfilesize24, align 8
  %cmp25 = icmp ugt i64 %add22, %21
  br i1 %cmp25, label %if.then.27, label %if.end.33

if.then.27:                                       ; preds = %land.lhs.true
  %22 = load i64, i64* %size, align 8
  %23 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits28 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %23, i32 0, i32 4
  %24 = load %struct.cl_limits*, %struct.cl_limits** %limits28, align 8
  %maxfilesize29 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %24, i32 0, i32 5
  %25 = load i64, i64* %maxfilesize29, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.61, i32 0, i32 0), i64 %22, i64 %25)
  %26 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %26, i32 0, i32 5
  %27 = load i32, i32* %options, align 4
  %and = and i32 %27, 256
  %tobool30 = icmp ne i32 %and, 0
  br i1 %tobool30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.then.27
  %28 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %28, i32 0, i32 0
  %29 = load i8**, i8*** %virname, align 8
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.62, i32 0, i32 0), i8** %29, align 8
  store i32 1, i32* %ret, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %if.then.27
  br label %while.end

if.end.33:                                        ; preds = %land.lhs.true, %if.then.19
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %while.body
  %30 = load i32, i32* %fd, align 4
  %31 = load i8*, i8** %buff, align 8
  %32 = load i32, i32* %bytes, align 4
  %call35 = call i32 @cli_writen(i32 %30, i8* %31, i32 %32)
  %33 = load i32, i32* %bytes, align 4
  %cmp36 = icmp ne i32 %call35, %33
  br i1 %cmp36, label %if.then.38, label %if.end.45

if.then.38:                                       ; preds = %if.end.34
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.63, i32 0, i32 0))
  %34 = load i32, i32* %fd, align 4
  %call39 = call i32 @close(i32 %34)
  %35 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool40 = icmp ne i8 %35, 0
  br i1 %tobool40, label %if.end.43, label %if.then.41

if.then.41:                                       ; preds = %if.then.38
  %36 = load i8*, i8** %tmpname, align 8
  %call42 = call i32 @unlink(i8* %36) #4
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.41, %if.then.38
  %37 = load i8*, i8** %tmpname, align 8
  call void @free(i8* %37) #4
  %38 = load %struct.gzFile_s*, %struct.gzFile_s** %gd, align 8
  %call44 = call i32 @gzclose(%struct.gzFile_s* %38)
  %39 = load i8*, i8** %buff, align 8
  call void @free(i8* %39) #4
  store i32 -105, i32* %retval
  br label %return

if.end.45:                                        ; preds = %if.end.34
  br label %while.cond

while.end:                                        ; preds = %if.end.32, %while.cond
  %40 = load i8*, i8** %buff, align 8
  call void @free(i8* %40) #4
  %41 = load %struct.gzFile_s*, %struct.gzFile_s** %gd, align 8
  %call46 = call i32 @gzclose(%struct.gzFile_s* %41)
  %42 = load i32, i32* %ret, align 4
  %cmp47 = icmp eq i32 %42, 1
  br i1 %cmp47, label %if.then.49, label %if.end.55

if.then.49:                                       ; preds = %while.end
  %43 = load i32, i32* %fd, align 4
  %call50 = call i32 @close(i32 %43)
  %44 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool51 = icmp ne i8 %44, 0
  br i1 %tobool51, label %if.end.54, label %if.then.52

if.then.52:                                       ; preds = %if.then.49
  %45 = load i8*, i8** %tmpname, align 8
  %call53 = call i32 @unlink(i8* %45) #4
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.52, %if.then.49
  %46 = load i8*, i8** %tmpname, align 8
  call void @free(i8* %46) #4
  %47 = load i32, i32* %ret, align 4
  store i32 %47, i32* %retval
  br label %return

if.end.55:                                        ; preds = %while.end
  %48 = load i32, i32* %fd, align 4
  %call56 = call i32 @fsync(i32 %48)
  %cmp57 = icmp eq i32 %call56, -1
  br i1 %cmp57, label %if.then.59, label %if.end.65

if.then.59:                                       ; preds = %if.end.55
  %49 = load i32, i32* %fd, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.64, i32 0, i32 0), i32 %49)
  %50 = load i32, i32* %fd, align 4
  %call60 = call i32 @close(i32 %50)
  %51 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool61 = icmp ne i8 %51, 0
  br i1 %tobool61, label %if.end.64, label %if.then.62

if.then.62:                                       ; preds = %if.then.59
  %52 = load i8*, i8** %tmpname, align 8
  %call63 = call i32 @unlink(i8* %52) #4
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.62, %if.then.59
  %53 = load i8*, i8** %tmpname, align 8
  call void @free(i8* %53) #4
  store i32 -113, i32* %retval
  br label %return

if.end.65:                                        ; preds = %if.end.55
  %54 = load i32, i32* %fd, align 4
  %call66 = call i64 @lseek(i32 %54, i64 0, i32 0) #4
  %55 = load i32, i32* %fd, align 4
  %56 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call67 = call i32 @cli_magic_scandesc(i32 %55, %struct.cli_ctx* %56)
  store i32 %call67, i32* %ret, align 4
  %cmp68 = icmp eq i32 %call67, 1
  br i1 %cmp68, label %if.then.70, label %if.end.77

if.then.70:                                       ; preds = %if.end.65
  %57 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname71 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %57, i32 0, i32 0
  %58 = load i8**, i8*** %virname71, align 8
  %59 = load i8*, i8** %58, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.65, i32 0, i32 0), i8* %59)
  %60 = load i32, i32* %fd, align 4
  %call72 = call i32 @close(i32 %60)
  %61 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool73 = icmp ne i8 %61, 0
  br i1 %tobool73, label %if.end.76, label %if.then.74

if.then.74:                                       ; preds = %if.then.70
  %62 = load i8*, i8** %tmpname, align 8
  %call75 = call i32 @unlink(i8* %62) #4
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.74, %if.then.70
  %63 = load i8*, i8** %tmpname, align 8
  call void @free(i8* %63) #4
  store i32 1, i32* %retval
  br label %return

if.end.77:                                        ; preds = %if.end.65
  %64 = load i32, i32* %fd, align 4
  %call78 = call i32 @close(i32 %64)
  %65 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool79 = icmp ne i8 %65, 0
  br i1 %tobool79, label %if.end.82, label %if.then.80

if.then.80:                                       ; preds = %if.end.77
  %66 = load i8*, i8** %tmpname, align 8
  %call81 = call i32 @unlink(i8* %66) #4
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.80, %if.end.77
  %67 = load i8*, i8** %tmpname, align 8
  call void @free(i8* %67) #4
  %68 = load i32, i32* %ret, align 4
  store i32 %68, i32* %retval
  br label %return

return:                                           ; preds = %if.end.82, %if.end.76, %if.end.64, %if.end.54, %if.end.43, %if.end.14, %if.then.3, %if.then
  %69 = load i32, i32* %retval
  ret i32 %69
}

; Function Attrs: nounwind uwtable
define internal i32 @cli_scanarj(i32 %desc, %struct.cli_ctx* %ctx, i64 %sfx_offset, i32* %sfx_check) #0 {
entry:
  %retval = alloca i32, align 4
  %desc.addr = alloca i32, align 4
  %ctx.addr = alloca %struct.cli_ctx*, align 8
  %sfx_offset.addr = alloca i64, align 8
  %sfx_check.addr = alloca i32*, align 8
  %ret = alloca i32, align 4
  %rc = alloca i32, align 4
  %metadata = alloca %struct.arj_metadata_tag, align 8
  %dir = alloca i8*, align 8
  %file_count = alloca i32, align 4
  store i32 %desc, i32* %desc.addr, align 4
  store %struct.cli_ctx* %ctx, %struct.cli_ctx** %ctx.addr, align 8
  store i64 %sfx_offset, i64* %sfx_offset.addr, align 8
  store i32* %sfx_check, i32** %sfx_check.addr, align 8
  store i32 0, i32* %ret, align 4
  store i32 1, i32* %file_count, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.66, i32 0, i32 0))
  %call = call i8* @cli_gentemp(i8* null)
  store i8* %call, i8** %dir, align 8
  %0 = load i8*, i8** %dir, align 8
  %call1 = call i32 @mkdir(i8* %0, i32 448) #4
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %dir, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.67, i32 0, i32 0), i8* %1)
  %2 = load i8*, i8** %dir, align 8
  call void @free(i8* %2) #4
  store i32 -118, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i64, i64* %sfx_offset.addr, align 8
  %tobool2 = icmp ne i64 %3, 0
  br i1 %tobool2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %4 = load i32, i32* %desc.addr, align 4
  %5 = load i64, i64* %sfx_offset.addr, align 8
  %call4 = call i64 @lseek(i32 %4, i64 %5, i32 0) #4
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  %6 = load i32, i32* %desc.addr, align 4
  %7 = load i8*, i8** %dir, align 8
  %call6 = call i32 @cli_unarj_open(i32 %6, i8* %7)
  store i32 %call6, i32* %ret, align 4
  %8 = load i32, i32* %ret, align 4
  %cmp = icmp ne i32 %8, 0
  br i1 %cmp, label %if.then.7, label %if.end.13

if.then.7:                                        ; preds = %if.end.5
  %9 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool8 = icmp ne i8 %9, 0
  br i1 %tobool8, label %if.end.11, label %if.then.9

if.then.9:                                        ; preds = %if.then.7
  %10 = load i8*, i8** %dir, align 8
  %call10 = call i32 @cli_rmdirs(i8* %10)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.then.7
  %11 = load i8*, i8** %dir, align 8
  call void @free(i8* %11) #4
  %12 = load i32, i32* %ret, align 4
  %call12 = call i8* @cl_strerror(i32 %12)
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.68, i32 0, i32 0), i8* %call12)
  %13 = load i32, i32* %ret, align 4
  store i32 %13, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.end.5
  %filename = getelementptr inbounds %struct.arj_metadata_tag, %struct.arj_metadata_tag* %metadata, i32 0, i32 3
  store i8* null, i8** %filename, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.13
  %14 = load i32, i32* %desc.addr, align 4
  %15 = load i8*, i8** %dir, align 8
  %call14 = call i32 @cli_unarj_prepare_file(i32 %14, i8* %15, %struct.arj_metadata_tag* %metadata)
  store i32 %call14, i32* %ret, align 4
  %16 = load i32, i32* %ret, align 4
  %cmp15 = icmp ne i32 %16, 0
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %do.body
  br label %do.end

if.end.17:                                        ; preds = %do.body
  %17 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %18 = load i32, i32* %file_count, align 4
  %call18 = call i32 @cli_unarj_checklimits(%struct.cli_ctx* %17, %struct.arj_metadata_tag* %metadata, i32 %18)
  store i32 %call18, i32* %ret, align 4
  %19 = load i32, i32* %ret, align 4
  %cmp19 = icmp eq i32 %19, 1
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.17
  br label %do.end

if.end.21:                                        ; preds = %if.end.17
  %20 = load i32, i32* %desc.addr, align 4
  %21 = load i8*, i8** %dir, align 8
  %call22 = call i32 @cli_unarj_extract_file(i32 %20, i8* %21, %struct.arj_metadata_tag* %metadata)
  store i32 %call22, i32* %ret, align 4
  %ofd = getelementptr inbounds %struct.arj_metadata_tag, %struct.arj_metadata_tag* %metadata, i32 0, i32 5
  %22 = load i32, i32* %ofd, align 4
  %cmp23 = icmp sge i32 %22, 0
  br i1 %cmp23, label %if.then.24, label %if.end.34

if.then.24:                                       ; preds = %if.end.21
  %ofd25 = getelementptr inbounds %struct.arj_metadata_tag, %struct.arj_metadata_tag* %metadata, i32 0, i32 5
  %23 = load i32, i32* %ofd25, align 4
  %call26 = call i64 @lseek(i32 %23, i64 0, i32 0) #4
  %ofd27 = getelementptr inbounds %struct.arj_metadata_tag, %struct.arj_metadata_tag* %metadata, i32 0, i32 5
  %24 = load i32, i32* %ofd27, align 4
  %25 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call28 = call i32 @cli_magic_scandesc(i32 %24, %struct.cli_ctx* %25)
  store i32 %call28, i32* %rc, align 4
  %ofd29 = getelementptr inbounds %struct.arj_metadata_tag, %struct.arj_metadata_tag* %metadata, i32 0, i32 5
  %26 = load i32, i32* %ofd29, align 4
  %call30 = call i32 @close(i32 %26)
  %27 = load i32, i32* %rc, align 4
  %cmp31 = icmp eq i32 %27, 1
  br i1 %cmp31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.then.24
  %28 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %28, i32 0, i32 0
  %29 = load i8**, i8*** %virname, align 8
  %30 = load i8*, i8** %29, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.69, i32 0, i32 0), i8* %30)
  store i32 1, i32* %ret, align 4
  br label %do.end

if.end.33:                                        ; preds = %if.then.24
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.end.21
  %filename35 = getelementptr inbounds %struct.arj_metadata_tag, %struct.arj_metadata_tag* %metadata, i32 0, i32 3
  %31 = load i8*, i8** %filename35, align 8
  %tobool36 = icmp ne i8* %31, null
  br i1 %tobool36, label %if.then.37, label %if.end.40

if.then.37:                                       ; preds = %if.end.34
  %filename38 = getelementptr inbounds %struct.arj_metadata_tag, %struct.arj_metadata_tag* %metadata, i32 0, i32 3
  %32 = load i8*, i8** %filename38, align 8
  call void @free(i8* %32) #4
  %filename39 = getelementptr inbounds %struct.arj_metadata_tag, %struct.arj_metadata_tag* %metadata, i32 0, i32 3
  store i8* null, i8** %filename39, align 8
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.37, %if.end.34
  br label %do.cond

do.cond:                                          ; preds = %if.end.40
  %33 = load i32, i32* %ret, align 4
  %cmp41 = icmp eq i32 %33, 0
  br i1 %cmp41, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then.32, %if.then.20, %if.then.16
  %34 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool42 = icmp ne i8 %34, 0
  br i1 %tobool42, label %if.end.45, label %if.then.43

if.then.43:                                       ; preds = %do.end
  %35 = load i8*, i8** %dir, align 8
  %call44 = call i32 @cli_rmdirs(i8* %35)
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.43, %do.end
  %36 = load i8*, i8** %dir, align 8
  call void @free(i8* %36) #4
  %filename46 = getelementptr inbounds %struct.arj_metadata_tag, %struct.arj_metadata_tag* %metadata, i32 0, i32 3
  %37 = load i8*, i8** %filename46, align 8
  %tobool47 = icmp ne i8* %37, null
  br i1 %tobool47, label %if.then.48, label %if.end.50

if.then.48:                                       ; preds = %if.end.45
  %filename49 = getelementptr inbounds %struct.arj_metadata_tag, %struct.arj_metadata_tag* %metadata, i32 0, i32 3
  %38 = load i8*, i8** %filename49, align 8
  call void @free(i8* %38) #4
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.48, %if.end.45
  %39 = load i32, i32* %ret, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.70, i32 0, i32 0), i32 %39)
  %40 = load i32, i32* %ret, align 4
  %cmp51 = icmp eq i32 %40, 2
  br i1 %cmp51, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.end.50
  store i32 0, i32* %ret, align 4
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.52, %if.end.50
  %41 = load i32, i32* %ret, align 4
  store i32 %41, i32* %retval
  br label %return

return:                                           ; preds = %if.end.53, %if.end.11, %if.then
  %42 = load i32, i32* %retval
  ret i32 %42
}

declare i32 @cli_scannulsft(i32, %struct.cli_ctx*, i64) #1

declare i32 @cli_scanautoit(i32, %struct.cli_ctx*, i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @cli_scanmscab(i32 %desc, %struct.cli_ctx* %ctx, i64 %sfx_offset) #0 {
entry:
  %retval = alloca i32, align 4
  %desc.addr = alloca i32, align 4
  %ctx.addr = alloca %struct.cli_ctx*, align 8
  %sfx_offset.addr = alloca i64, align 8
  %tempname = alloca i8*, align 8
  %ret = alloca i32, align 4
  %files = alloca i32, align 4
  %cab = alloca %struct.cab_archive, align 8
  %file = alloca %struct.cab_file*, align 8
  store i32 %desc, i32* %desc.addr, align 4
  store %struct.cli_ctx* %ctx, %struct.cli_ctx** %ctx.addr, align 8
  store i64 %sfx_offset, i64* %sfx_offset.addr, align 8
  store i32 0, i32* %files, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.79, i32 0, i32 0))
  %0 = load i32, i32* %desc.addr, align 4
  %1 = load i64, i64* %sfx_offset.addr, align 8
  %call = call i32 @cab_open(i32 %0, i64 %1, %struct.cab_archive* %cab)
  store i32 %call, i32* %ret, align 4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %ret, align 4
  store i32 %2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %files1 = getelementptr inbounds %struct.cab_archive, %struct.cab_archive* %cab, i32 0, i32 7
  %3 = load %struct.cab_file*, %struct.cab_file** %files1, align 8
  store %struct.cab_file* %3, %struct.cab_file** %file, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load %struct.cab_file*, %struct.cab_file** %file, align 8
  %tobool2 = icmp ne %struct.cab_file* %4, null
  br i1 %tobool2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %files, align 4
  %inc = add i32 %5, 1
  store i32 %inc, i32* %files, align 4
  %6 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %6, i32 0, i32 4
  %7 = load %struct.cl_limits*, %struct.cl_limits** %limits, align 8
  %tobool3 = icmp ne %struct.cl_limits* %7, null
  br i1 %tobool3, label %land.lhs.true, label %if.end.17

land.lhs.true:                                    ; preds = %for.body
  %8 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits4 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %8, i32 0, i32 4
  %9 = load %struct.cl_limits*, %struct.cl_limits** %limits4, align 8
  %maxfilesize = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %9, i32 0, i32 5
  %10 = load i64, i64* %maxfilesize, align 8
  %tobool5 = icmp ne i64 %10, 0
  br i1 %tobool5, label %land.lhs.true.6, label %if.end.17

land.lhs.true.6:                                  ; preds = %land.lhs.true
  %11 = load %struct.cab_file*, %struct.cab_file** %file, align 8
  %length = getelementptr inbounds %struct.cab_file, %struct.cab_file* %11, i32 0, i32 0
  %12 = load i32, i32* %length, align 4
  %conv = zext i32 %12 to i64
  %13 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits7 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %13, i32 0, i32 4
  %14 = load %struct.cl_limits*, %struct.cl_limits** %limits7, align 8
  %maxfilesize8 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %14, i32 0, i32 5
  %15 = load i64, i64* %maxfilesize8, align 8
  %cmp = icmp ugt i64 %conv, %15
  br i1 %cmp, label %if.then.10, label %if.end.17

if.then.10:                                       ; preds = %land.lhs.true.6
  %16 = load %struct.cab_file*, %struct.cab_file** %file, align 8
  %name = getelementptr inbounds %struct.cab_file, %struct.cab_file* %16, i32 0, i32 3
  %17 = load i8*, i8** %name, align 8
  %18 = load %struct.cab_file*, %struct.cab_file** %file, align 8
  %length11 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %18, i32 0, i32 0
  %19 = load i32, i32* %length11, align 4
  %20 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits12 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %20, i32 0, i32 4
  %21 = load %struct.cl_limits*, %struct.cl_limits** %limits12, align 8
  %maxfilesize13 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %21, i32 0, i32 5
  %22 = load i64, i64* %maxfilesize13, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.80, i32 0, i32 0), i8* %17, i32 %19, i64 %22)
  %23 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %23, i32 0, i32 5
  %24 = load i32, i32* %options, align 4
  %and = and i32 %24, 256
  %tobool14 = icmp ne i32 %and, 0
  br i1 %tobool14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.then.10
  %25 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %25, i32 0, i32 0
  %26 = load i8**, i8*** %virname, align 8
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.81, i32 0, i32 0), i8** %26, align 8
  call void @cab_free(%struct.cab_archive* %cab)
  store i32 1, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.then.10
  br label %for.inc

if.end.17:                                        ; preds = %land.lhs.true.6, %land.lhs.true, %for.body
  %27 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits18 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %27, i32 0, i32 4
  %28 = load %struct.cl_limits*, %struct.cl_limits** %limits18, align 8
  %tobool19 = icmp ne %struct.cl_limits* %28, null
  br i1 %tobool19, label %land.lhs.true.20, label %if.end.37

land.lhs.true.20:                                 ; preds = %if.end.17
  %29 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits21 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %29, i32 0, i32 4
  %30 = load %struct.cl_limits*, %struct.cl_limits** %limits21, align 8
  %maxfiles = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %30, i32 0, i32 1
  %31 = load i32, i32* %maxfiles, align 4
  %tobool22 = icmp ne i32 %31, 0
  br i1 %tobool22, label %land.lhs.true.23, label %if.end.37

land.lhs.true.23:                                 ; preds = %land.lhs.true.20
  %32 = load i32, i32* %files, align 4
  %33 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits24 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %33, i32 0, i32 4
  %34 = load %struct.cl_limits*, %struct.cl_limits** %limits24, align 8
  %maxfiles25 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %34, i32 0, i32 1
  %35 = load i32, i32* %maxfiles25, align 4
  %cmp26 = icmp ugt i32 %32, %35
  br i1 %cmp26, label %if.then.28, label %if.end.37

if.then.28:                                       ; preds = %land.lhs.true.23
  %36 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits29 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %36, i32 0, i32 4
  %37 = load %struct.cl_limits*, %struct.cl_limits** %limits29, align 8
  %maxfiles30 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %37, i32 0, i32 1
  %38 = load i32, i32* %maxfiles30, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.82, i32 0, i32 0), i32 %38)
  call void @cab_free(%struct.cab_archive* %cab)
  %39 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options31 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %39, i32 0, i32 5
  %40 = load i32, i32* %options31, align 4
  %and32 = and i32 %40, 256
  %tobool33 = icmp ne i32 %and32, 0
  br i1 %tobool33, label %if.then.34, label %if.end.36

if.then.34:                                       ; preds = %if.then.28
  %41 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname35 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %41, i32 0, i32 0
  %42 = load i8**, i8*** %virname35, align 8
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.83, i32 0, i32 0), i8** %42, align 8
  store i32 1, i32* %retval
  br label %return

if.end.36:                                        ; preds = %if.then.28
  store i32 0, i32* %retval
  br label %return

if.end.37:                                        ; preds = %land.lhs.true.23, %land.lhs.true.20, %if.end.17
  %call38 = call i8* @cli_gentemp(i8* null)
  store i8* %call38, i8** %tempname, align 8
  %43 = load %struct.cab_file*, %struct.cab_file** %file, align 8
  %name39 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %43, i32 0, i32 3
  %44 = load i8*, i8** %name39, align 8
  %45 = load i8*, i8** %tempname, align 8
  %46 = load %struct.cab_file*, %struct.cab_file** %file, align 8
  %length40 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %46, i32 0, i32 0
  %47 = load i32, i32* %length40, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.84, i32 0, i32 0), i8* %44, i8* %45, i32 %47)
  %48 = load %struct.cab_file*, %struct.cab_file** %file, align 8
  %49 = load i8*, i8** %tempname, align 8
  %call41 = call i32 @cab_extract(%struct.cab_file* %48, i8* %49)
  store i32 %call41, i32* %ret, align 4
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.then.43, label %if.else

if.then.43:                                       ; preds = %if.end.37
  %50 = load i32, i32* %ret, align 4
  %call44 = call i8* @cl_strerror(i32 %50)
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.85, i32 0, i32 0), i8* %call44)
  br label %if.end.46

if.else:                                          ; preds = %if.end.37
  %51 = load i8*, i8** %tempname, align 8
  %52 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call45 = call i32 @cli_scanfile(i8* %51, %struct.cli_ctx* %52)
  store i32 %call45, i32* %ret, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.else, %if.then.43
  %53 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool47 = icmp ne i8 %53, 0
  br i1 %tobool47, label %if.end.50, label %if.then.48

if.then.48:                                       ; preds = %if.end.46
  %54 = load i8*, i8** %tempname, align 8
  %call49 = call i32 @unlink(i8* %54) #4
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.48, %if.end.46
  %55 = load i8*, i8** %tempname, align 8
  call void @free(i8* %55) #4
  %56 = load i32, i32* %ret, align 4
  %cmp51 = icmp eq i32 %56, 1
  br i1 %cmp51, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.end.50
  br label %for.end

if.end.54:                                        ; preds = %if.end.50
  br label %for.inc

for.inc:                                          ; preds = %if.end.54, %if.end.16
  %57 = load %struct.cab_file*, %struct.cab_file** %file, align 8
  %next = getelementptr inbounds %struct.cab_file, %struct.cab_file* %57, i32 0, i32 8
  %58 = load %struct.cab_file*, %struct.cab_file** %next, align 8
  store %struct.cab_file* %58, %struct.cab_file** %file, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.53, %for.cond
  call void @cab_free(%struct.cab_archive* %cab)
  %59 = load i32, i32* %ret, align 4
  store i32 %59, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.end.36, %if.then.34, %if.then.15, %if.then
  %60 = load i32, i32* %retval
  ret i32 %60
}

; Function Attrs: nounwind uwtable
define internal i32 @cli_scanhtml(i32 %desc, %struct.cli_ctx* %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %desc.addr = alloca i32, align 4
  %ctx.addr = alloca %struct.cli_ctx*, align 8
  %tempname = alloca i8*, align 8
  %fullname = alloca [1024 x i8], align 16
  %ret = alloca i32, align 4
  %fd = alloca i32, align 4
  %sb = alloca %struct.stat, align 8
  store i32 %desc, i32* %desc.addr, align 4
  store %struct.cli_ctx* %ctx, %struct.cli_ctx** %ctx.addr, align 8
  store i32 0, i32* %ret, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.86, i32 0, i32 0))
  %0 = load i32, i32* %desc.addr, align 4
  %call = call i32 @fstat(i32 %0, %struct.stat* %sb) #4
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %desc.addr, align 4
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.87, i32 0, i32 0), i32 %1)
  store i32 -123, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %sb, i32 0, i32 8
  %2 = load i64, i64* %st_size, align 8
  %cmp1 = icmp sgt i64 %2, 10485760
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.88, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %call4 = call i8* @cli_gentemp(i8* null)
  store i8* %call4, i8** %tempname, align 8
  %3 = load i8*, i8** %tempname, align 8
  %call5 = call i32 @mkdir(i8* %3, i32 448) #4
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.3
  %4 = load i8*, i8** %tempname, align 8
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.89, i32 0, i32 0), i8* %4)
  %5 = load i8*, i8** %tempname, align 8
  call void @free(i8* %5) #4
  store i32 -118, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end.3
  %6 = load i32, i32* %desc.addr, align 4
  %7 = load i8*, i8** %tempname, align 8
  %8 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %dconf = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %8, i32 0, i32 9
  %9 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf, align 8
  %call8 = call i32 @html_normalise_fd(i32 %6, i8* %7, %struct.tag_arguments_tag* null, %struct.cli_dconf* %9)
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %fullname, i32 0, i32 0
  %10 = load i8*, i8** %tempname, align 8
  %call9 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay, i64 1024, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.90, i32 0, i32 0), i8* %10) #4
  %arraydecay10 = getelementptr inbounds [1024 x i8], [1024 x i8]* %fullname, i32 0, i32 0
  %call11 = call i32 (i8*, i32, ...) @open(i8* %arraydecay10, i32 0)
  store i32 %call11, i32* %fd, align 4
  %11 = load i32, i32* %fd, align 4
  %cmp12 = icmp sge i32 %11, 0
  br i1 %cmp12, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %if.end.7
  %12 = load i32, i32* %fd, align 4
  %13 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call14 = call i32 @cli_scandesc(i32 %12, %struct.cli_ctx* %13, i8 zeroext 0, i32 528, i8 zeroext 0, %struct.cli_matched_type** null)
  store i32 %call14, i32* %ret, align 4
  %14 = load i32, i32* %fd, align 4
  %call15 = call i32 @close(i32 %14)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.13, %if.end.7
  %15 = load i32, i32* %ret, align 4
  %cmp17 = icmp slt i32 %15, 0
  br i1 %cmp17, label %if.then.19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.16
  %16 = load i32, i32* %ret, align 4
  %cmp18 = icmp eq i32 %16, 1
  br i1 %cmp18, label %if.then.19, label %if.end.24

if.then.19:                                       ; preds = %lor.lhs.false, %if.end.16
  %17 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool20 = icmp ne i8 %17, 0
  br i1 %tobool20, label %if.end.23, label %if.then.21

if.then.21:                                       ; preds = %if.then.19
  %18 = load i8*, i8** %tempname, align 8
  %call22 = call i32 @cli_rmdirs(i8* %18)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %if.then.19
  %19 = load i8*, i8** %tempname, align 8
  call void @free(i8* %19) #4
  %20 = load i32, i32* %ret, align 4
  store i32 %20, i32* %retval
  br label %return

if.end.24:                                        ; preds = %lor.lhs.false
  %21 = load i32, i32* %ret, align 4
  %cmp25 = icmp eq i32 %21, 0
  br i1 %cmp25, label %if.then.26, label %if.end.36

if.then.26:                                       ; preds = %if.end.24
  %arraydecay27 = getelementptr inbounds [1024 x i8], [1024 x i8]* %fullname, i32 0, i32 0
  %22 = load i8*, i8** %tempname, align 8
  %call28 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay27, i64 1024, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.91, i32 0, i32 0), i8* %22) #4
  %arraydecay29 = getelementptr inbounds [1024 x i8], [1024 x i8]* %fullname, i32 0, i32 0
  %call30 = call i32 (i8*, i32, ...) @open(i8* %arraydecay29, i32 0)
  store i32 %call30, i32* %fd, align 4
  %23 = load i32, i32* %fd, align 4
  %cmp31 = icmp sge i32 %23, 0
  br i1 %cmp31, label %if.then.32, label %if.end.35

if.then.32:                                       ; preds = %if.then.26
  %24 = load i32, i32* %fd, align 4
  %25 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call33 = call i32 @cli_scandesc(i32 %24, %struct.cli_ctx* %25, i8 zeroext 0, i32 528, i8 zeroext 0, %struct.cli_matched_type** null)
  store i32 %call33, i32* %ret, align 4
  %26 = load i32, i32* %fd, align 4
  %call34 = call i32 @close(i32 %26)
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.32, %if.then.26
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.end.24
  %27 = load i32, i32* %ret, align 4
  %cmp37 = icmp slt i32 %27, 0
  br i1 %cmp37, label %if.then.40, label %lor.lhs.false.38

lor.lhs.false.38:                                 ; preds = %if.end.36
  %28 = load i32, i32* %ret, align 4
  %cmp39 = icmp eq i32 %28, 1
  br i1 %cmp39, label %if.then.40, label %if.end.45

if.then.40:                                       ; preds = %lor.lhs.false.38, %if.end.36
  %29 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool41 = icmp ne i8 %29, 0
  br i1 %tobool41, label %if.end.44, label %if.then.42

if.then.42:                                       ; preds = %if.then.40
  %30 = load i8*, i8** %tempname, align 8
  %call43 = call i32 @cli_rmdirs(i8* %30)
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.42, %if.then.40
  %31 = load i8*, i8** %tempname, align 8
  call void @free(i8* %31) #4
  %32 = load i32, i32* %ret, align 4
  store i32 %32, i32* %retval
  br label %return

if.end.45:                                        ; preds = %lor.lhs.false.38
  %33 = load i32, i32* %ret, align 4
  %cmp46 = icmp eq i32 %33, 0
  br i1 %cmp46, label %if.then.47, label %if.end.57

if.then.47:                                       ; preds = %if.end.45
  %arraydecay48 = getelementptr inbounds [1024 x i8], [1024 x i8]* %fullname, i32 0, i32 0
  %34 = load i8*, i8** %tempname, align 8
  %call49 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay48, i64 1024, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.92, i32 0, i32 0), i8* %34) #4
  %arraydecay50 = getelementptr inbounds [1024 x i8], [1024 x i8]* %fullname, i32 0, i32 0
  %call51 = call i32 (i8*, i32, ...) @open(i8* %arraydecay50, i32 0)
  store i32 %call51, i32* %fd, align 4
  %35 = load i32, i32* %fd, align 4
  %cmp52 = icmp sge i32 %35, 0
  br i1 %cmp52, label %if.then.53, label %if.end.56

if.then.53:                                       ; preds = %if.then.47
  %36 = load i32, i32* %fd, align 4
  %37 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call54 = call i32 @cli_scandesc(i32 %36, %struct.cli_ctx* %37, i8 zeroext 0, i32 528, i8 zeroext 0, %struct.cli_matched_type** null)
  store i32 %call54, i32* %ret, align 4
  %38 = load i32, i32* %fd, align 4
  %call55 = call i32 @close(i32 %38)
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.53, %if.then.47
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.end.45
  %39 = load i32, i32* %ret, align 4
  %cmp58 = icmp slt i32 %39, 0
  br i1 %cmp58, label %if.then.61, label %lor.lhs.false.59

lor.lhs.false.59:                                 ; preds = %if.end.57
  %40 = load i32, i32* %ret, align 4
  %cmp60 = icmp eq i32 %40, 1
  br i1 %cmp60, label %if.then.61, label %if.end.66

if.then.61:                                       ; preds = %lor.lhs.false.59, %if.end.57
  %41 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool62 = icmp ne i8 %41, 0
  br i1 %tobool62, label %if.end.65, label %if.then.63

if.then.63:                                       ; preds = %if.then.61
  %42 = load i8*, i8** %tempname, align 8
  %call64 = call i32 @cli_rmdirs(i8* %42)
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.63, %if.then.61
  %43 = load i8*, i8** %tempname, align 8
  call void @free(i8* %43) #4
  %44 = load i32, i32* %ret, align 4
  store i32 %44, i32* %retval
  br label %return

if.end.66:                                        ; preds = %lor.lhs.false.59
  %45 = load i32, i32* %ret, align 4
  %cmp67 = icmp eq i32 %45, 0
  br i1 %cmp67, label %if.then.68, label %if.end.73

if.then.68:                                       ; preds = %if.end.66
  %arraydecay69 = getelementptr inbounds [1024 x i8], [1024 x i8]* %fullname, i32 0, i32 0
  %46 = load i8*, i8** %tempname, align 8
  %call70 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay69, i64 1024, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.93, i32 0, i32 0), i8* %46) #4
  %arraydecay71 = getelementptr inbounds [1024 x i8], [1024 x i8]* %fullname, i32 0, i32 0
  %47 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call72 = call i32 @cli_scandir(i8* %arraydecay71, %struct.cli_ctx* %47)
  store i32 %call72, i32* %ret, align 4
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.68, %if.end.66
  %48 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool74 = icmp ne i8 %48, 0
  br i1 %tobool74, label %if.end.77, label %if.then.75

if.then.75:                                       ; preds = %if.end.73
  %49 = load i8*, i8** %tempname, align 8
  %call76 = call i32 @cli_rmdirs(i8* %49)
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.75, %if.end.73
  %50 = load i8*, i8** %tempname, align 8
  call void @free(i8* %50) #4
  %51 = load i32, i32* %ret, align 4
  store i32 %51, i32* %retval
  br label %return

return:                                           ; preds = %if.end.77, %if.end.65, %if.end.44, %if.end.23, %if.then.6, %if.then.2, %if.then
  %52 = load i32, i32* %retval
  ret i32 %52
}

; Function Attrs: nounwind uwtable
define internal i32 @cli_scanhtml_utf16(i32 %desc, %struct.cli_ctx* %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %desc.addr = alloca i32, align 4
  %ctx.addr = alloca %struct.cli_ctx*, align 8
  %tempname = alloca i8*, align 8
  %buff = alloca [512 x i8], align 16
  %decoded = alloca i8*, align 8
  %ret = alloca i32, align 4
  %fd = alloca i32, align 4
  %bytes = alloca i32, align 4
  store i32 %desc, i32* %desc.addr, align 4
  store %struct.cli_ctx* %ctx, %struct.cli_ctx** %ctx.addr, align 8
  store i32 0, i32* %ret, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.94, i32 0, i32 0))
  %call = call i8* @cli_gentemp(i8* null)
  store i8* %call, i8** %tempname, align 8
  %0 = load i8*, i8** %tempname, align 8
  %call1 = call i32 (i8*, i32, ...) @open(i8* %0, i32 578, i32 448)
  store i32 %call1, i32* %fd, align 4
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %tempname, align 8
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.95, i32 0, i32 0), i8* %1)
  %2 = load i8*, i8** %tempname, align 8
  call void @free(i8* %2) #4
  store i32 -123, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.16, %if.end
  %3 = load i32, i32* %desc.addr, align 4
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %call2 = call i64 @read(i32 %3, i8* %arraydecay, i64 512)
  %conv = trunc i64 %call2 to i32
  store i32 %conv, i32* %bytes, align 4
  %cmp3 = icmp sgt i32 %conv, 0
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay5 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %4 = load i32, i32* %bytes, align 4
  %call6 = call i8* @cli_utf16toascii(i8* %arraydecay5, i32 %4)
  store i8* %call6, i8** %decoded, align 8
  %5 = load i8*, i8** %decoded, align 8
  %tobool = icmp ne i8* %5, null
  br i1 %tobool, label %if.then.7, label %if.end.16

if.then.7:                                        ; preds = %while.body
  %6 = load i32, i32* %fd, align 4
  %7 = load i8*, i8** %decoded, align 8
  %8 = load i8*, i8** %decoded, align 8
  %call8 = call i64 @strlen(i8* %8) #5
  %call9 = call i64 @write(i32 %6, i8* %7, i64 %call8)
  %cmp10 = icmp eq i64 %call9, -1
  br i1 %cmp10, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %if.then.7
  %9 = load i8*, i8** %tempname, align 8
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.96, i32 0, i32 0), i8* %9)
  %10 = load i8*, i8** %decoded, align 8
  call void @free(i8* %10) #4
  %11 = load i8*, i8** %tempname, align 8
  %call13 = call i32 @unlink(i8* %11) #4
  %12 = load i8*, i8** %tempname, align 8
  call void @free(i8* %12) #4
  %13 = load i32, i32* %fd, align 4
  %call14 = call i32 @close(i32 %13)
  store i32 -123, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.7
  %14 = load i8*, i8** %decoded, align 8
  call void @free(i8* %14) #4
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %15 = load i32, i32* %fd, align 4
  %call17 = call i32 @fsync(i32 %15)
  %16 = load i32, i32* %fd, align 4
  %call18 = call i64 @lseek(i32 %16, i64 0, i32 0) #4
  %17 = load i32, i32* %fd, align 4
  %18 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call19 = call i32 @cli_scanhtml(i32 %17, %struct.cli_ctx* %18)
  store i32 %call19, i32* %ret, align 4
  %19 = load i32, i32* %fd, align 4
  %call20 = call i32 @close(i32 %19)
  %20 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool21 = icmp ne i8 %20, 0
  br i1 %tobool21, label %if.else, label %if.then.22

if.then.22:                                       ; preds = %while.end
  %21 = load i8*, i8** %tempname, align 8
  %call23 = call i32 @unlink(i8* %21) #4
  br label %if.end.24

if.else:                                          ; preds = %while.end
  %22 = load i8*, i8** %tempname, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.97, i32 0, i32 0), i8* %22)
  br label %if.end.24

if.end.24:                                        ; preds = %if.else, %if.then.22
  %23 = load i8*, i8** %tempname, align 8
  call void @free(i8* %23) #4
  %24 = load i32, i32* %ret, align 4
  store i32 %24, i32* %retval
  br label %return

return:                                           ; preds = %if.end.24, %if.then.12, %if.then
  %25 = load i32, i32* %retval
  ret i32 %25
}

declare i32 @cli_scanrtf(i32, %struct.cli_ctx*) #1

; Function Attrs: nounwind uwtable
define internal i32 @cli_scanmail(i32 %desc, %struct.cli_ctx* %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %desc.addr = alloca i32, align 4
  %ctx.addr = alloca %struct.cli_ctx*, align 8
  %dir = alloca i8*, align 8
  %ret = alloca i32, align 4
  store i32 %desc, i32* %desc.addr, align 4
  store %struct.cli_ctx* %ctx, %struct.cli_ctx** %ctx.addr, align 8
  %0 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %mrec = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %0, i32 0, i32 7
  %1 = load i32, i32* %mrec, align 4
  %2 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %arec = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %2, i32 0, i32 6
  %3 = load i32, i32* %arec, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.98, i32 0, i32 0), i32 %1, i32 %3)
  %call = call i8* @cli_gentemp(i8* null)
  store i8* %call, i8** %dir, align 8
  %4 = load i8*, i8** %dir, align 8
  %call1 = call i32 @mkdir(i8* %4, i32 448) #4
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** %dir, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.99, i32 0, i32 0), i8* %5)
  %6 = load i8*, i8** %dir, align 8
  call void @free(i8* %6) #4
  store i32 -118, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load i8*, i8** %dir, align 8
  %8 = load i32, i32* %desc.addr, align 4
  %9 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call2 = call i32 @cli_mbox(i8* %7, i32 %8, %struct.cli_ctx* %9)
  store i32 %call2, i32* %ret, align 4
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then.4, label %if.end.9

if.then.4:                                        ; preds = %if.end
  %10 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool5 = icmp ne i8 %10, 0
  br i1 %tobool5, label %if.end.8, label %if.then.6

if.then.6:                                        ; preds = %if.then.4
  %11 = load i8*, i8** %dir, align 8
  %call7 = call i32 @cli_rmdirs(i8* %11)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.then.4
  %12 = load i8*, i8** %dir, align 8
  call void @free(i8* %12) #4
  %13 = load i32, i32* %ret, align 4
  store i32 %13, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end
  %14 = load i8*, i8** %dir, align 8
  %15 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call10 = call i32 @cli_scandir(i8* %14, %struct.cli_ctx* %15)
  store i32 %call10, i32* %ret, align 4
  %16 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool11 = icmp ne i8 %16, 0
  br i1 %tobool11, label %if.end.14, label %if.then.12

if.then.12:                                       ; preds = %if.end.9
  %17 = load i8*, i8** %dir, align 8
  %call13 = call i32 @cli_rmdirs(i8* %17)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %if.end.9
  %18 = load i8*, i8** %dir, align 8
  call void @free(i8* %18) #4
  %19 = load i32, i32* %ret, align 4
  store i32 %19, i32* %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.end.8, %if.then
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal i32 @cli_scantnef(i32 %desc, %struct.cli_ctx* %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %desc.addr = alloca i32, align 4
  %ctx.addr = alloca %struct.cli_ctx*, align 8
  %ret = alloca i32, align 4
  %dir = alloca i8*, align 8
  store i32 %desc, i32* %desc.addr, align 4
  store %struct.cli_ctx* %ctx, %struct.cli_ctx** %ctx.addr, align 8
  %call = call i8* @cli_gentemp(i8* null)
  store i8* %call, i8** %dir, align 8
  %0 = load i8*, i8** %dir, align 8
  %call1 = call i32 @mkdir(i8* %0, i32 448) #4
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %dir, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.100, i32 0, i32 0), i8* %1)
  %2 = load i8*, i8** %dir, align 8
  call void @free(i8* %2) #4
  store i32 -118, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %dir, align 8
  %4 = load i32, i32* %desc.addr, align 4
  %call2 = call i32 @cli_tnef(i8* %3, i32 %4)
  store i32 %call2, i32* %ret, align 4
  %5 = load i32, i32* %ret, align 4
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %6 = load i8*, i8** %dir, align 8
  %7 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call4 = call i32 @cli_scandir(i8* %6, %struct.cli_ctx* %7)
  store i32 %call4, i32* %ret, align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  %8 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool6 = icmp ne i8 %8, 0
  br i1 %tobool6, label %if.end.9, label %if.then.7

if.then.7:                                        ; preds = %if.end.5
  %9 = load i8*, i8** %dir, align 8
  %call8 = call i32 @cli_rmdirs(i8* %9)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.end.5
  %10 = load i8*, i8** %dir, align 8
  call void @free(i8* %10) #4
  %11 = load i32, i32* %ret, align 4
  store i32 %11, i32* %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal i32 @cli_scanuuencoded(i32 %desc, %struct.cli_ctx* %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %desc.addr = alloca i32, align 4
  %ctx.addr = alloca %struct.cli_ctx*, align 8
  %ret = alloca i32, align 4
  %dir = alloca i8*, align 8
  store i32 %desc, i32* %desc.addr, align 4
  store %struct.cli_ctx* %ctx, %struct.cli_ctx** %ctx.addr, align 8
  %call = call i8* @cli_gentemp(i8* null)
  store i8* %call, i8** %dir, align 8
  %0 = load i8*, i8** %dir, align 8
  %call1 = call i32 @mkdir(i8* %0, i32 448) #4
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %dir, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.101, i32 0, i32 0), i8* %1)
  %2 = load i8*, i8** %dir, align 8
  call void @free(i8* %2) #4
  store i32 -118, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %dir, align 8
  %4 = load i32, i32* %desc.addr, align 4
  %call2 = call i32 @cli_uuencode(i8* %3, i32 %4)
  store i32 %call2, i32* %ret, align 4
  %5 = load i32, i32* %ret, align 4
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %6 = load i8*, i8** %dir, align 8
  %7 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call4 = call i32 @cli_scandir(i8* %6, %struct.cli_ctx* %7)
  store i32 %call4, i32* %ret, align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  %8 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool6 = icmp ne i8 %8, 0
  br i1 %tobool6, label %if.end.9, label %if.then.7

if.then.7:                                        ; preds = %if.end.5
  %9 = load i8*, i8** %dir, align 8
  %call8 = call i32 @cli_rmdirs(i8* %9)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.end.5
  %10 = load i8*, i8** %dir, align 8
  call void @free(i8* %10) #4
  %11 = load i32, i32* %ret, align 4
  store i32 %11, i32* %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal i32 @cli_scanpst(i32 %desc, %struct.cli_ctx* %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %desc.addr = alloca i32, align 4
  %ctx.addr = alloca %struct.cli_ctx*, align 8
  %ret = alloca i32, align 4
  %dir = alloca i8*, align 8
  store i32 %desc, i32* %desc.addr, align 4
  store %struct.cli_ctx* %ctx, %struct.cli_ctx** %ctx.addr, align 8
  %call = call i8* @cli_gentemp(i8* null)
  store i8* %call, i8** %dir, align 8
  %0 = load i8*, i8** %dir, align 8
  %call1 = call i32 @mkdir(i8* %0, i32 448) #4
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %dir, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.102, i32 0, i32 0), i8* %1)
  %2 = load i8*, i8** %dir, align 8
  call void @free(i8* %2) #4
  store i32 -118, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %dir, align 8
  %4 = load i32, i32* %desc.addr, align 4
  %call2 = call i32 @cli_pst(i8* %3, i32 %4)
  store i32 %call2, i32* %ret, align 4
  %5 = load i32, i32* %ret, align 4
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %6 = load i8*, i8** %dir, align 8
  %7 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call4 = call i32 @cli_scandir(i8* %6, %struct.cli_ctx* %7)
  store i32 %call4, i32* %ret, align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  %8 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool6 = icmp ne i8 %8, 0
  br i1 %tobool6, label %if.end.9, label %if.then.7

if.then.7:                                        ; preds = %if.end.5
  %9 = load i8*, i8** %dir, align 8
  %call8 = call i32 @cli_rmdirs(i8* %9)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.end.5
  %10 = load i8*, i8** %dir, align 8
  call void @free(i8* %10) #4
  %11 = load i32, i32* %ret, align 4
  store i32 %11, i32* %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal i32 @cli_scanmschm(i32 %desc, %struct.cli_ctx* %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %desc.addr = alloca i32, align 4
  %ctx.addr = alloca %struct.cli_ctx*, align 8
  %tempname = alloca i8*, align 8
  %ret = alloca i32, align 4
  store i32 %desc, i32* %desc.addr, align 4
  store %struct.cli_ctx* %ctx, %struct.cli_ctx** %ctx.addr, align 8
  store i32 0, i32* %ret, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.103, i32 0, i32 0))
  %call = call i8* @cli_gentemp(i8* null)
  store i8* %call, i8** %tempname, align 8
  %0 = load i8*, i8** %tempname, align 8
  %call1 = call i32 @mkdir(i8* %0, i32 448) #4
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %tempname, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.104, i32 0, i32 0), i8* %1)
  %2 = load i8*, i8** %tempname, align 8
  call void @free(i8* %2) #4
  store i32 -118, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %desc.addr, align 4
  %4 = load i8*, i8** %tempname, align 8
  %call2 = call i32 @chm_unpack(i32 %3, i8* %4)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %5 = load i8*, i8** %tempname, align 8
  %6 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call5 = call i32 @cli_scandir(i8* %5, %struct.cli_ctx* %6)
  store i32 %call5, i32* %ret, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end
  %7 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool7 = icmp ne i8 %7, 0
  br i1 %tobool7, label %if.end.10, label %if.then.8

if.then.8:                                        ; preds = %if.end.6
  %8 = load i8*, i8** %tempname, align 8
  %call9 = call i32 @cli_rmdirs(i8* %8)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.end.6
  %9 = load i8*, i8** %tempname, align 8
  call void @free(i8* %9) #4
  %10 = load i32, i32* %ret, align 4
  store i32 %10, i32* %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal i32 @cli_scanole2(i32 %desc, %struct.cli_ctx* %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %desc.addr = alloca i32, align 4
  %ctx.addr = alloca %struct.cli_ctx*, align 8
  %dir = alloca i8*, align 8
  %ret = alloca i32, align 4
  store i32 %desc, i32* %desc.addr, align 4
  store %struct.cli_ctx* %ctx, %struct.cli_ctx** %ctx.addr, align 8
  store i32 0, i32* %ret, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.105, i32 0, i32 0))
  %call = call i8* @cli_gentemp(i8* null)
  store i8* %call, i8** %dir, align 8
  %0 = load i8*, i8** %dir, align 8
  %call1 = call i32 @mkdir(i8* %0, i32 448) #4
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %dir, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.106, i32 0, i32 0), i8* %1)
  %2 = load i8*, i8** %dir, align 8
  call void @free(i8* %2) #4
  store i32 -118, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %desc.addr, align 4
  %4 = load i8*, i8** %dir, align 8
  %5 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %5, i32 0, i32 4
  %6 = load %struct.cl_limits*, %struct.cl_limits** %limits, align 8
  %call2 = call i32 @cli_ole2_extract(i32 %3, i8* %4, %struct.cl_limits* %6)
  store i32 %call2, i32* %ret, align 4
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then.4, label %if.end.10

if.then.4:                                        ; preds = %if.end
  %7 = load i32, i32* %ret, align 4
  %call5 = call i8* @cl_strerror(i32 %7)
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.107, i32 0, i32 0), i8* %call5)
  %8 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool6 = icmp ne i8 %8, 0
  br i1 %tobool6, label %if.end.9, label %if.then.7

if.then.7:                                        ; preds = %if.then.4
  %9 = load i8*, i8** %dir, align 8
  %call8 = call i32 @cli_rmdirs(i8* %9)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.then.4
  %10 = load i8*, i8** %dir, align 8
  call void @free(i8* %10) #4
  %11 = load i32, i32* %ret, align 4
  store i32 %11, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end
  %12 = load i8*, i8** %dir, align 8
  %13 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call11 = call i32 @cli_vba_scandir(i8* %12, %struct.cli_ctx* %13)
  store i32 %call11, i32* %ret, align 4
  %cmp = icmp ne i32 %call11, 1
  br i1 %cmp, label %if.then.12, label %if.end.17

if.then.12:                                       ; preds = %if.end.10
  %14 = load i8*, i8** %dir, align 8
  %15 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call13 = call i32 @cli_scandir(i8* %14, %struct.cli_ctx* %15)
  %cmp14 = icmp eq i32 %call13, 1
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.then.12
  store i32 1, i32* %ret, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.then.12
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.end.10
  %16 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool18 = icmp ne i8 %16, 0
  br i1 %tobool18, label %if.end.21, label %if.then.19

if.then.19:                                       ; preds = %if.end.17
  %17 = load i8*, i8** %dir, align 8
  %call20 = call i32 @cli_rmdirs(i8* %17)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %if.end.17
  %18 = load i8*, i8** %dir, align 8
  call void @free(i8* %18) #4
  %19 = load i32, i32* %ret, align 4
  store i32 %19, i32* %retval
  br label %return

return:                                           ; preds = %if.end.21, %if.end.9, %if.then
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal i32 @cli_scantar(i32 %desc, %struct.cli_ctx* %ctx, i32 %posix) #0 {
entry:
  %retval = alloca i32, align 4
  %desc.addr = alloca i32, align 4
  %ctx.addr = alloca %struct.cli_ctx*, align 8
  %posix.addr = alloca i32, align 4
  %dir = alloca i8*, align 8
  %ret = alloca i32, align 4
  store i32 %desc, i32* %desc.addr, align 4
  store %struct.cli_ctx* %ctx, %struct.cli_ctx** %ctx.addr, align 8
  store i32 %posix, i32* %posix.addr, align 4
  store i32 0, i32* %ret, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.116, i32 0, i32 0))
  %call = call i8* @cli_gentemp(i8* null)
  store i8* %call, i8** %dir, align 8
  %0 = load i8*, i8** %dir, align 8
  %call1 = call i32 @mkdir(i8* %0, i32 448) #4
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %dir, align 8
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.117, i32 0, i32 0), i8* %1)
  %2 = load i8*, i8** %dir, align 8
  call void @free(i8* %2) #4
  store i32 -118, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %dir, align 8
  %4 = load i32, i32* %desc.addr, align 4
  %5 = load i32, i32* %posix.addr, align 4
  %6 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %6, i32 0, i32 4
  %7 = load %struct.cl_limits*, %struct.cl_limits** %limits, align 8
  %call2 = call i32 @cli_untar(i8* %3, i32 %4, i32 %5, %struct.cl_limits* %7)
  store i32 %call2, i32* %ret, align 4
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  %8 = load i32, i32* %ret, align 4
  %call5 = call i8* @cl_strerror(i32 %8)
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.118, i32 0, i32 0), i8* %call5)
  br label %if.end.7

if.else:                                          ; preds = %if.end
  %9 = load i8*, i8** %dir, align 8
  %10 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call6 = call i32 @cli_scandir(i8* %9, %struct.cli_ctx* %10)
  store i32 %call6, i32* %ret, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.4
  %11 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool8 = icmp ne i8 %11, 0
  br i1 %tobool8, label %if.end.11, label %if.then.9

if.then.9:                                        ; preds = %if.end.7
  %12 = load i8*, i8** %dir, align 8
  %call10 = call i32 @cli_rmdirs(i8* %12)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.end.7
  %13 = load i8*, i8** %dir, align 8
  call void @free(i8* %13) #4
  %14 = load i32, i32* %ret, align 4
  store i32 %14, i32* %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal i32 @cli_scanbinhex(i32 %desc, %struct.cli_ctx* %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %desc.addr = alloca i32, align 4
  %ctx.addr = alloca %struct.cli_ctx*, align 8
  %dir = alloca i8*, align 8
  %ret = alloca i32, align 4
  store i32 %desc, i32* %desc.addr, align 4
  store %struct.cli_ctx* %ctx, %struct.cli_ctx** %ctx.addr, align 8
  store i32 0, i32* %ret, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.119, i32 0, i32 0))
  %call = call i8* @cli_gentemp(i8* null)
  store i8* %call, i8** %dir, align 8
  %0 = load i8*, i8** %dir, align 8
  %call1 = call i32 @mkdir(i8* %0, i32 448) #4
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %dir, align 8
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.120, i32 0, i32 0), i8* %1)
  %2 = load i8*, i8** %dir, align 8
  call void @free(i8* %2) #4
  store i32 -118, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %dir, align 8
  %4 = load i32, i32* %desc.addr, align 4
  %call2 = call i32 @cli_binhex(i8* %3, i32 %4)
  store i32 %call2, i32* %ret, align 4
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  %5 = load i32, i32* %ret, align 4
  %call5 = call i8* @cl_strerror(i32 %5)
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.121, i32 0, i32 0), i8* %call5)
  br label %if.end.7

if.else:                                          ; preds = %if.end
  %6 = load i8*, i8** %dir, align 8
  %7 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call6 = call i32 @cli_scandir(i8* %6, %struct.cli_ctx* %7)
  store i32 %call6, i32* %ret, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.4
  %8 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool8 = icmp ne i8 %8, 0
  br i1 %tobool8, label %if.end.11, label %if.then.9

if.then.9:                                        ; preds = %if.end.7
  %9 = load i8*, i8** %dir, align 8
  %call10 = call i32 @cli_rmdirs(i8* %9)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.end.7
  %10 = load i8*, i8** %dir, align 8
  call void @free(i8* %10) #4
  %11 = load i32, i32* %ret, align 4
  store i32 %11, i32* %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal i32 @cli_scanscrenc(i32 %desc, %struct.cli_ctx* %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %desc.addr = alloca i32, align 4
  %ctx.addr = alloca %struct.cli_ctx*, align 8
  %tempname = alloca i8*, align 8
  %ret = alloca i32, align 4
  store i32 %desc, i32* %desc.addr, align 4
  store %struct.cli_ctx* %ctx, %struct.cli_ctx** %ctx.addr, align 8
  store i32 0, i32* %ret, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.122, i32 0, i32 0))
  %call = call i8* @cli_gentemp(i8* null)
  store i8* %call, i8** %tempname, align 8
  %0 = load i8*, i8** %tempname, align 8
  %call1 = call i32 @mkdir(i8* %0, i32 448) #4
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %tempname, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.104, i32 0, i32 0), i8* %1)
  %2 = load i8*, i8** %tempname, align 8
  call void @free(i8* %2) #4
  store i32 -118, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %desc.addr, align 4
  %4 = load i8*, i8** %tempname, align 8
  %call2 = call i32 @html_screnc_decode(i32 %3, i8* %4)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %5 = load i8*, i8** %tempname, align 8
  %6 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call5 = call i32 @cli_scandir(i8* %5, %struct.cli_ctx* %6)
  store i32 %call5, i32* %ret, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end
  %7 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool7 = icmp ne i8 %7, 0
  br i1 %tobool7, label %if.end.10, label %if.then.8

if.then.8:                                        ; preds = %if.end.6
  %8 = load i8*, i8** %tempname, align 8
  %call9 = call i32 @cli_rmdirs(i8* %8)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.end.6
  %9 = load i8*, i8** %tempname, align 8
  call void @free(i8* %9) #4
  %10 = load i32, i32* %ret, align 4
  store i32 %10, i32* %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal i32 @cli_scanriff(i32 %desc, i8** %virname) #0 {
entry:
  %desc.addr = alloca i32, align 4
  %virname.addr = alloca i8**, align 8
  %ret = alloca i32, align 4
  store i32 %desc, i32* %desc.addr, align 4
  store i8** %virname, i8*** %virname.addr, align 8
  store i32 0, i32* %ret, align 4
  %0 = load i32, i32* %desc.addr, align 4
  %call = call i32 @cli_check_riff_exploit(i32 %0)
  %cmp = icmp eq i32 %call, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %ret, align 4
  %1 = load i8**, i8*** %virname.addr, align 8
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.123, i32 0, i32 0), i8** %1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* %ret, align 4
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define internal i32 @cli_scanjpeg(i32 %desc, i8** %virname) #0 {
entry:
  %desc.addr = alloca i32, align 4
  %virname.addr = alloca i8**, align 8
  %ret = alloca i32, align 4
  store i32 %desc, i32* %desc.addr, align 4
  store i8** %virname, i8*** %virname.addr, align 8
  store i32 0, i32* %ret, align 4
  %0 = load i32, i32* %desc.addr, align 4
  %call = call i32 @cli_check_jpeg_exploit(i32 %0)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %ret, align 4
  %1 = load i8**, i8*** %virname.addr, align 8
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.124, i32 0, i32 0), i8** %1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* %ret, align 4
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define internal i32 @cli_scanpdf(i32 %desc, %struct.cli_ctx* %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %desc.addr = alloca i32, align 4
  %ctx.addr = alloca %struct.cli_ctx*, align 8
  %ret = alloca i32, align 4
  %dir = alloca i8*, align 8
  store i32 %desc, i32* %desc.addr, align 4
  store %struct.cli_ctx* %ctx, %struct.cli_ctx** %ctx.addr, align 8
  %call = call i8* @cli_gentemp(i8* null)
  store i8* %call, i8** %dir, align 8
  %0 = load i8*, i8** %dir, align 8
  %call1 = call i32 @mkdir(i8* %0, i32 448) #4
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %dir, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.125, i32 0, i32 0), i8* %1)
  %2 = load i8*, i8** %dir, align 8
  call void @free(i8* %2) #4
  store i32 -118, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %dir, align 8
  %4 = load i32, i32* %desc.addr, align 4
  %5 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call2 = call i32 @cli_pdf(i8* %3, i32 %4, %struct.cli_ctx* %5)
  store i32 %call2, i32* %ret, align 4
  %6 = load i32, i32* %ret, align 4
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %7 = load i8*, i8** %dir, align 8
  %8 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call4 = call i32 @cli_scandir(i8* %7, %struct.cli_ctx* %8)
  store i32 %call4, i32* %ret, align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  %9 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool6 = icmp ne i8 %9, 0
  br i1 %tobool6, label %if.end.9, label %if.then.7

if.then.7:                                        ; preds = %if.end.5
  %10 = load i8*, i8** %dir, align 8
  %call8 = call i32 @cli_rmdirs(i8* %10)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.end.5
  %11 = load i8*, i8** %dir, align 8
  call void @free(i8* %11) #4
  %12 = load i32, i32* %ret, align 4
  store i32 %12, i32* %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal i32 @cli_scancryptff(i32 %desc, %struct.cli_ctx* %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %desc.addr = alloca i32, align 4
  %ctx.addr = alloca %struct.cli_ctx*, align 8
  %ret = alloca i32, align 4
  %ndesc = alloca i32, align 4
  %length = alloca i32, align 4
  %i = alloca i32, align 4
  %src = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %tempfile = alloca i8*, align 8
  %sb = alloca %struct.stat, align 8
  store i32 %desc, i32* %desc.addr, align 4
  store %struct.cli_ctx* %ctx, %struct.cli_ctx** %ctx.addr, align 8
  store i32 0, i32* %ret, align 4
  store i8* null, i8** %src, align 8
  store i8* null, i8** %dest, align 8
  %0 = load i32, i32* %desc.addr, align 4
  %call = call i32 @fstat(i32 %0, %struct.stat* %sb) #4
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %desc.addr, align 4
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.126, i32 0, i32 0), i32 %1)
  store i32 -123, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %desc.addr, align 4
  %call1 = call i64 @lseek(i32 %2, i64 16, i32 0) #4
  %cmp2 = icmp slt i64 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %3 = load i32, i32* %desc.addr, align 4
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.127, i32 0, i32 0), i32 %3)
  %4 = load i32, i32* %ret, align 4
  store i32 %4, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %sb, i32 0, i32 8
  %5 = load i64, i64* %st_size, align 8
  %sub = sub nsw i64 %5, 16
  %conv = trunc i64 %sub to i32
  store i32 %conv, i32* %length, align 4
  %6 = load i32, i32* %length, align 4
  %conv5 = zext i32 %6 to i64
  %call6 = call i8* @cli_malloc(i64 %conv5)
  store i8* %call6, i8** %dest, align 8
  %cmp7 = icmp eq i8* %call6, null
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.128, i32 0, i32 0))
  store i32 -114, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end.4
  %7 = load i32, i32* %length, align 4
  %conv11 = zext i32 %7 to i64
  %call12 = call i8* @cli_malloc(i64 %conv11)
  store i8* %call12, i8** %src, align 8
  %cmp13 = icmp eq i8* %call12, null
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.10
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.128, i32 0, i32 0))
  %8 = load i8*, i8** %dest, align 8
  call void @free(i8* %8) #4
  store i32 -114, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.end.10
  %9 = load i32, i32* %desc.addr, align 4
  %10 = load i8*, i8** %src, align 8
  %11 = load i32, i32* %length, align 4
  %conv17 = zext i32 %11 to i64
  %call18 = call i64 @read(i32 %9, i8* %10, i64 %conv17)
  %conv19 = trunc i64 %call18 to i32
  %12 = load i32, i32* %length, align 4
  %cmp20 = icmp ne i32 %conv19, %12
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.16
  %13 = load i32, i32* %desc.addr, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.129, i32 0, i32 0), i32 %13)
  %14 = load i8*, i8** %dest, align 8
  call void @free(i8* %14) #4
  %15 = load i8*, i8** %src, align 8
  call void @free(i8* %15) #4
  store i32 -123, i32* %retval
  br label %return

if.end.23:                                        ; preds = %if.end.16
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.23
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* %length, align 4
  %cmp24 = icmp ult i32 %16, %17
  br i1 %cmp24, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i32, i32* %i, align 4
  %idxprom = zext i32 %18 to i64
  %19 = load i8*, i8** %src, align 8
  %arrayidx = getelementptr inbounds i8, i8* %19, i64 %idxprom
  %20 = load i8, i8* %arrayidx, align 1
  %conv26 = zext i8 %20 to i32
  %xor = xor i32 %conv26, 255
  %conv27 = trunc i32 %xor to i8
  %21 = load i32, i32* %i, align 4
  %idxprom28 = zext i32 %21 to i64
  %22 = load i8*, i8** %dest, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %22, i64 %idxprom28
  store i8 %conv27, i8* %arrayidx29, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %i, align 4
  %inc = add i32 %23, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %24 = load i8*, i8** %src, align 8
  call void @free(i8* %24) #4
  %call30 = call i8* @cli_gentemp(i8* null)
  store i8* %call30, i8** %tempfile, align 8
  %25 = load i8*, i8** %tempfile, align 8
  %call31 = call i32 (i8*, i32, ...) @open(i8* %25, i32 578, i32 448)
  store i32 %call31, i32* %ndesc, align 4
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %for.end
  %26 = load i8*, i8** %tempfile, align 8
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.130, i32 0, i32 0), i8* %26)
  %27 = load i8*, i8** %dest, align 8
  call void @free(i8* %27) #4
  %28 = load i8*, i8** %tempfile, align 8
  call void @free(i8* %28) #4
  store i32 -123, i32* %retval
  br label %return

if.end.35:                                        ; preds = %for.end
  %29 = load i32, i32* %ndesc, align 4
  %30 = load i8*, i8** %dest, align 8
  %31 = load i32, i32* %length, align 4
  %conv36 = zext i32 %31 to i64
  %call37 = call i64 @write(i32 %29, i8* %30, i64 %conv36)
  %cmp38 = icmp eq i64 %call37, -1
  br i1 %cmp38, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %if.end.35
  %32 = load i32, i32* %ndesc, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.131, i32 0, i32 0), i32 %32)
  %33 = load i8*, i8** %dest, align 8
  call void @free(i8* %33) #4
  %34 = load i32, i32* %ndesc, align 4
  %call41 = call i32 @close(i32 %34)
  %35 = load i8*, i8** %tempfile, align 8
  call void @free(i8* %35) #4
  store i32 -123, i32* %retval
  br label %return

if.end.42:                                        ; preds = %if.end.35
  %36 = load i8*, i8** %dest, align 8
  call void @free(i8* %36) #4
  %37 = load i32, i32* %ndesc, align 4
  %call43 = call i32 @fsync(i32 %37)
  %cmp44 = icmp eq i32 %call43, -1
  br i1 %cmp44, label %if.then.46, label %if.end.48

if.then.46:                                       ; preds = %if.end.42
  %38 = load i32, i32* %ndesc, align 4
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.132, i32 0, i32 0), i32 %38)
  %39 = load i32, i32* %ndesc, align 4
  %call47 = call i32 @close(i32 %39)
  %40 = load i8*, i8** %tempfile, align 8
  call void @free(i8* %40) #4
  store i32 -123, i32* %retval
  br label %return

if.end.48:                                        ; preds = %if.end.42
  %41 = load i32, i32* %ndesc, align 4
  %call49 = call i64 @lseek(i32 %41, i64 0, i32 0) #4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.133, i32 0, i32 0))
  %42 = load i32, i32* %ndesc, align 4
  %43 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call50 = call i32 @cli_magic_scandesc(i32 %42, %struct.cli_ctx* %43)
  store i32 %call50, i32* %ret, align 4
  %cmp51 = icmp eq i32 %call50, 1
  br i1 %cmp51, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.end.48
  %44 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %44, i32 0, i32 0
  %45 = load i8**, i8*** %virname, align 8
  %46 = load i8*, i8** %45, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.134, i32 0, i32 0), i8* %46)
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.53, %if.end.48
  %47 = load i32, i32* %ndesc, align 4
  %call55 = call i32 @close(i32 %47)
  %48 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool = icmp ne i8 %48, 0
  br i1 %tobool, label %if.then.56, label %if.else

if.then.56:                                       ; preds = %if.end.54
  %49 = load i8*, i8** %tempfile, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.135, i32 0, i32 0), i8* %49)
  br label %if.end.58

if.else:                                          ; preds = %if.end.54
  %50 = load i8*, i8** %tempfile, align 8
  %call57 = call i32 @unlink(i8* %50) #4
  br label %if.end.58

if.end.58:                                        ; preds = %if.else, %if.then.56
  %51 = load i8*, i8** %tempfile, align 8
  call void @free(i8* %51) #4
  %52 = load i32, i32* %ret, align 4
  store i32 %52, i32* %retval
  br label %return

return:                                           ; preds = %if.end.58, %if.then.46, %if.then.40, %if.then.34, %if.then.22, %if.then.15, %if.then.9, %if.then.3, %if.then
  %53 = load i32, i32* %retval
  ret i32 %53
}

declare i32 @cli_scanelf(i32, %struct.cli_ctx*) #1

declare i32 @cli_scansis(i32, %struct.cli_ctx*) #1

declare i32 @cli_check_mydoom_log(i32, i8**) #1

declare i32 @cli_scanpe(i32, %struct.cli_ctx*) #1

declare i8* @cl_strerror(i32) #1

; Function Attrs: nounwind uwtable
define i32 @cl_scandesc(i32 %desc, i8** %virname, i64* %scanned, %struct.cl_engine* %engine, %struct.cl_limits* %limits, i32 %options) #0 {
entry:
  %desc.addr = alloca i32, align 4
  %virname.addr = alloca i8**, align 8
  %scanned.addr = alloca i64*, align 8
  %engine.addr = alloca %struct.cl_engine*, align 8
  %limits.addr = alloca %struct.cl_limits*, align 8
  %options.addr = alloca i32, align 4
  %ctx = alloca %struct.cli_ctx, align 8
  %rc = alloca i32, align 4
  store i32 %desc, i32* %desc.addr, align 4
  store i8** %virname, i8*** %virname.addr, align 8
  store i64* %scanned, i64** %scanned.addr, align 8
  store %struct.cl_engine* %engine, %struct.cl_engine** %engine.addr, align 8
  store %struct.cl_limits* %limits, %struct.cl_limits** %limits.addr, align 8
  store i32 %options, i32* %options.addr, align 4
  %0 = bitcast %struct.cli_ctx* %ctx to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 64, i32 8, i1 false)
  %1 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %engine1 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %ctx, i32 0, i32 3
  store %struct.cl_engine* %1, %struct.cl_engine** %engine1, align 8
  %2 = load i8**, i8*** %virname.addr, align 8
  %virname2 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %ctx, i32 0, i32 0
  store i8** %2, i8*** %virname2, align 8
  %3 = load %struct.cl_limits*, %struct.cl_limits** %limits.addr, align 8
  %limits3 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %ctx, i32 0, i32 4
  store %struct.cl_limits* %3, %struct.cl_limits** %limits3, align 8
  %4 = load i64*, i64** %scanned.addr, align 8
  %scanned4 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %ctx, i32 0, i32 1
  store i64* %4, i64** %scanned4, align 8
  %5 = load i32, i32* %options.addr, align 4
  %options5 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %ctx, i32 0, i32 5
  store i32 %5, i32* %options5, align 4
  %found_possibly_unwanted = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %ctx, i32 0, i32 8
  store i32 0, i32* %found_possibly_unwanted, align 4
  %6 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %dconf = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %6, i32 0, i32 11
  %7 = load i8*, i8** %dconf, align 8
  %8 = bitcast i8* %7 to %struct.cli_dconf*
  %dconf6 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %ctx, i32 0, i32 9
  store %struct.cli_dconf* %8, %struct.cli_dconf** %dconf6, align 8
  %9 = load i32, i32* %desc.addr, align 4
  %call = call i32 @cli_magic_scandesc(i32 %9, %struct.cli_ctx* %ctx)
  store i32 %call, i32* %rc, align 4
  %10 = load i32, i32* %rc, align 4
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %found_possibly_unwanted7 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %ctx, i32 0, i32 8
  %11 = load i32, i32* %found_possibly_unwanted7, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %12 = load i32, i32* %rc, align 4
  ret i32 %12
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define i32 @cl_scanfile(i8* %filename, i8** %virname, i64* %scanned, %struct.cl_engine* %engine, %struct.cl_limits* %limits, i32 %options) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %virname.addr = alloca i8**, align 8
  %scanned.addr = alloca i64*, align 8
  %engine.addr = alloca %struct.cl_engine*, align 8
  %limits.addr = alloca %struct.cl_limits*, align 8
  %options.addr = alloca i32, align 4
  %fd = alloca i32, align 4
  %ret = alloca i32, align 4
  store i8* %filename, i8** %filename.addr, align 8
  store i8** %virname, i8*** %virname.addr, align 8
  store i64* %scanned, i64** %scanned.addr, align 8
  store %struct.cl_engine* %engine, %struct.cl_engine** %engine.addr, align 8
  store %struct.cl_limits* %limits, %struct.cl_limits** %limits.addr, align 8
  store i32 %options, i32* %options.addr, align 4
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call i32 (i8*, i32, ...) @open(i8* %0, i32 0)
  store i32 %call, i32* %fd, align 4
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -115, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %fd, align 4
  %2 = load i8**, i8*** %virname.addr, align 8
  %3 = load i64*, i64** %scanned.addr, align 8
  %4 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %5 = load %struct.cl_limits*, %struct.cl_limits** %limits.addr, align 8
  %6 = load i32, i32* %options.addr, align 4
  %call1 = call i32 @cl_scandesc(i32 %1, i8** %2, i64* %3, %struct.cl_engine* %4, %struct.cl_limits* %5, i32 %6)
  store i32 %call1, i32* %ret, align 4
  %7 = load i32, i32* %fd, align 4
  %call2 = call i32 @close(i32 %7)
  %8 = load i32, i32* %ret, align 4
  store i32 %8, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

declare i32 @open(i8*, i32, ...) #1

declare i32 @close(i32) #1

declare i32 @cli_peheader(i32, %struct.cli_exe_info*) #1

; Function Attrs: nounwind uwtable
define internal i32 @cli_scanembpe(i32 %desc, %struct.cli_ctx* %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %desc.addr = alloca i32, align 4
  %ctx.addr = alloca %struct.cli_ctx*, align 8
  %fd = alloca i32, align 4
  %bytes = alloca i32, align 4
  %ret = alloca i32, align 4
  %size = alloca i64, align 8
  %buff = alloca [512 x i8], align 16
  %tmpname = alloca i8*, align 8
  store i32 %desc, i32* %desc.addr, align 4
  store %struct.cli_ctx* %ctx, %struct.cli_ctx** %ctx.addr, align 8
  store i32 0, i32* %ret, align 4
  store i64 0, i64* %size, align 8
  %call = call i8* @cli_gentemp(i8* null)
  store i8* %call, i8** %tmpname, align 8
  %0 = load i8*, i8** %tmpname, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -114, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %tmpname, align 8
  %call1 = call i32 (i8*, i32, ...) @open(i8* %1, i32 578, i32 448)
  store i32 %call1, i32* %fd, align 4
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %2 = load i8*, i8** %tmpname, align 8
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.25, i32 0, i32 0), i8* %2)
  %3 = load i8*, i8** %tmpname, align 8
  call void @free(i8* %3) #4
  store i32 -123, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end.31, %if.end.3
  %4 = load i32, i32* %desc.addr, align 4
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %call4 = call i64 @read(i32 %4, i8* %arraydecay, i64 512)
  %conv = trunc i64 %call4 to i32
  store i32 %conv, i32* %bytes, align 4
  %cmp5 = icmp sgt i32 %conv, 0
  br i1 %cmp5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i32, i32* %bytes, align 4
  %conv7 = sext i32 %5 to i64
  %6 = load i64, i64* %size, align 8
  %add = add i64 %6, %conv7
  store i64 %add, i64* %size, align 8
  %7 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %7, i32 0, i32 4
  %8 = load %struct.cl_limits*, %struct.cl_limits** %limits, align 8
  %tobool8 = icmp ne %struct.cl_limits* %8, null
  br i1 %tobool8, label %land.lhs.true, label %if.end.20

land.lhs.true:                                    ; preds = %while.body
  %9 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits9 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %9, i32 0, i32 4
  %10 = load %struct.cl_limits*, %struct.cl_limits** %limits9, align 8
  %maxfilesize = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %10, i32 0, i32 5
  %11 = load i64, i64* %maxfilesize, align 8
  %tobool10 = icmp ne i64 %11, 0
  br i1 %tobool10, label %land.lhs.true.11, label %if.end.20

land.lhs.true.11:                                 ; preds = %land.lhs.true
  %12 = load i64, i64* %size, align 8
  %add12 = add i64 %12, 512
  %13 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits13 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %13, i32 0, i32 4
  %14 = load %struct.cl_limits*, %struct.cl_limits** %limits13, align 8
  %maxfilesize14 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %14, i32 0, i32 5
  %15 = load i64, i64* %maxfilesize14, align 8
  %cmp15 = icmp ugt i64 %add12, %15
  br i1 %cmp15, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %land.lhs.true.11
  %16 = load i64, i64* %size, align 8
  %17 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits18 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %17, i32 0, i32 4
  %18 = load %struct.cl_limits*, %struct.cl_limits** %limits18, align 8
  %maxfilesize19 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %18, i32 0, i32 5
  %19 = load i64, i64* %maxfilesize19, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.26, i32 0, i32 0), i64 %16, i64 %19)
  br label %while.end

if.end.20:                                        ; preds = %land.lhs.true.11, %land.lhs.true, %while.body
  %20 = load i32, i32* %fd, align 4
  %arraydecay21 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %21 = load i32, i32* %bytes, align 4
  %call22 = call i32 @cli_writen(i32 %20, i8* %arraydecay21, i32 %21)
  %22 = load i32, i32* %bytes, align 4
  %cmp23 = icmp ne i32 %call22, %22
  br i1 %cmp23, label %if.then.25, label %if.end.31

if.then.25:                                       ; preds = %if.end.20
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.27, i32 0, i32 0))
  %23 = load i32, i32* %fd, align 4
  %call26 = call i32 @close(i32 %23)
  %24 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool27 = icmp ne i8 %24, 0
  br i1 %tobool27, label %if.end.30, label %if.then.28

if.then.28:                                       ; preds = %if.then.25
  %25 = load i8*, i8** %tmpname, align 8
  %call29 = call i32 @unlink(i8* %25) #4
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.28, %if.then.25
  %26 = load i8*, i8** %tmpname, align 8
  call void @free(i8* %26) #4
  store i32 -123, i32* %retval
  br label %return

if.end.31:                                        ; preds = %if.end.20
  br label %while.cond

while.end:                                        ; preds = %if.then.17, %while.cond
  %27 = load i32, i32* %fd, align 4
  %call32 = call i32 @fsync(i32 %27)
  %cmp33 = icmp eq i32 %call32, -1
  br i1 %cmp33, label %if.then.35, label %if.end.41

if.then.35:                                       ; preds = %while.end
  %28 = load i32, i32* %fd, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.28, i32 0, i32 0), i32 %28)
  %29 = load i32, i32* %fd, align 4
  %call36 = call i32 @close(i32 %29)
  %30 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool37 = icmp ne i8 %30, 0
  br i1 %tobool37, label %if.end.40, label %if.then.38

if.then.38:                                       ; preds = %if.then.35
  %31 = load i8*, i8** %tmpname, align 8
  %call39 = call i32 @unlink(i8* %31) #4
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.38, %if.then.35
  %32 = load i8*, i8** %tmpname, align 8
  call void @free(i8* %32) #4
  store i32 -113, i32* %retval
  br label %return

if.end.41:                                        ; preds = %while.end
  %33 = load i32, i32* %fd, align 4
  %call42 = call i64 @lseek(i32 %33, i64 0, i32 0) #4
  %34 = load i32, i32* %fd, align 4
  %35 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call43 = call i32 @cli_magic_scandesc(i32 %34, %struct.cli_ctx* %35)
  store i32 %call43, i32* %ret, align 4
  %cmp44 = icmp eq i32 %call43, 1
  br i1 %cmp44, label %if.then.46, label %if.end.52

if.then.46:                                       ; preds = %if.end.41
  %36 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %36, i32 0, i32 0
  %37 = load i8**, i8*** %virname, align 8
  %38 = load i8*, i8** %37, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.29, i32 0, i32 0), i8* %38)
  %39 = load i32, i32* %fd, align 4
  %call47 = call i32 @close(i32 %39)
  %40 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool48 = icmp ne i8 %40, 0
  br i1 %tobool48, label %if.end.51, label %if.then.49

if.then.49:                                       ; preds = %if.then.46
  %41 = load i8*, i8** %tmpname, align 8
  %call50 = call i32 @unlink(i8* %41) #4
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.49, %if.then.46
  %42 = load i8*, i8** %tmpname, align 8
  call void @free(i8* %42) #4
  store i32 1, i32* %retval
  br label %return

if.end.52:                                        ; preds = %if.end.41
  %43 = load i32, i32* %fd, align 4
  %call53 = call i32 @close(i32 %43)
  %44 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool54 = icmp ne i8 %44, 0
  br i1 %tobool54, label %if.end.57, label %if.then.55

if.then.55:                                       ; preds = %if.end.52
  %45 = load i8*, i8** %tmpname, align 8
  %call56 = call i32 @unlink(i8* %45) #4
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.55, %if.end.52
  %46 = load i8*, i8** %tmpname, align 8
  call void @free(i8* %46) #4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.57, %if.end.51, %if.end.40, %if.end.30, %if.then.2, %if.then
  %47 = load i32, i32* %retval
  ret i32 %47
}

declare i8* @cli_gentemp(i8*) #1

declare i64 @read(i32, i8*, i64) #1

declare i32 @cli_writen(i32, i8*, i32) #1

; Function Attrs: nounwind
declare i32 @unlink(i8*) #3

declare i32 @fsync(i32) #1

declare %struct.__zip_dir* @zip_dir_open(i32, i64, i32*) #1

declare i32 @zip_dir_close(%struct.__zip_dir*) #1

declare i32 @zip_dir_read(%struct.__zip_dir*, %struct.__zip_dirent*) #1

declare %struct.__zip_file* @zip_file_open(%struct.__zip_dir*, i8*, i32) #1

declare i32 @cli_gentempfd(i8*, i8**, i32*) #1

declare i64 @zip_file_read(%struct.__zip_file*, i8*, i64) #1

declare i32 @zip_file_close(%struct.__zip_file*) #1

declare %struct.gzFile_s* @gzdopen(i32, i8*) #1

; Function Attrs: nounwind
declare i32 @dup(i32) #3

declare i32 @gzclose(%struct.gzFile_s*) #1

declare i32 @gzread(%struct.gzFile_s*, i8*, i32) #1

; Function Attrs: nounwind
declare i32 @mkdir(i8*, i32) #3

declare i32 @cli_unarj_open(i32, i8*) #1

declare i32 @cli_rmdirs(i8*) #1

declare i32 @cli_unarj_prepare_file(i32, i8*, %struct.arj_metadata_tag*) #1

; Function Attrs: nounwind uwtable
define internal i32 @cli_unarj_checklimits(%struct.cli_ctx* %ctx, %struct.arj_metadata_tag* %metadata, i32 %files) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.cli_ctx*, align 8
  %metadata.addr = alloca %struct.arj_metadata_tag*, align 8
  %files.addr = alloca i32, align 4
  store %struct.cli_ctx* %ctx, %struct.cli_ctx** %ctx.addr, align 8
  store %struct.arj_metadata_tag* %metadata, %struct.arj_metadata_tag** %metadata.addr, align 8
  store i32 %files, i32* %files.addr, align 4
  %0 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %0, i32 0, i32 4
  %1 = load %struct.cl_limits*, %struct.cl_limits** %limits, align 8
  %tobool = icmp ne %struct.cl_limits* %1, null
  br i1 %tobool, label %if.then, label %if.end.73

if.then:                                          ; preds = %entry
  %2 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits1 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %2, i32 0, i32 4
  %3 = load %struct.cl_limits*, %struct.cl_limits** %limits1, align 8
  %maxfilesize = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %3, i32 0, i32 5
  %4 = load i64, i64* %maxfilesize, align 8
  %tobool2 = icmp ne i64 %4, 0
  br i1 %tobool2, label %land.lhs.true, label %if.end.15

land.lhs.true:                                    ; preds = %if.then
  %5 = load %struct.arj_metadata_tag*, %struct.arj_metadata_tag** %metadata.addr, align 8
  %orig_size = getelementptr inbounds %struct.arj_metadata_tag, %struct.arj_metadata_tag* %5, i32 0, i32 1
  %6 = load i32, i32* %orig_size, align 4
  %conv = zext i32 %6 to i64
  %7 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits3 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %7, i32 0, i32 4
  %8 = load %struct.cl_limits*, %struct.cl_limits** %limits3, align 8
  %maxfilesize4 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %8, i32 0, i32 5
  %9 = load i64, i64* %maxfilesize4, align 8
  %cmp = icmp ugt i64 %conv, %9
  br i1 %cmp, label %if.then.6, label %if.end.15

if.then.6:                                        ; preds = %land.lhs.true
  %10 = load %struct.arj_metadata_tag*, %struct.arj_metadata_tag** %metadata.addr, align 8
  %filename = getelementptr inbounds %struct.arj_metadata_tag, %struct.arj_metadata_tag* %10, i32 0, i32 3
  %11 = load i8*, i8** %filename, align 8
  %tobool7 = icmp ne i8* %11, null
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.6
  %12 = load %struct.arj_metadata_tag*, %struct.arj_metadata_tag** %metadata.addr, align 8
  %filename8 = getelementptr inbounds %struct.arj_metadata_tag, %struct.arj_metadata_tag* %12, i32 0, i32 3
  %13 = load i8*, i8** %filename8, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %13, %cond.true ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.72, i32 0, i32 0), %cond.false ]
  %14 = load %struct.arj_metadata_tag*, %struct.arj_metadata_tag** %metadata.addr, align 8
  %orig_size9 = getelementptr inbounds %struct.arj_metadata_tag, %struct.arj_metadata_tag* %14, i32 0, i32 1
  %15 = load i32, i32* %orig_size9, align 4
  %conv10 = zext i32 %15 to i64
  %16 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits11 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %16, i32 0, i32 4
  %17 = load %struct.cl_limits*, %struct.cl_limits** %limits11, align 8
  %maxfilesize12 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %17, i32 0, i32 5
  %18 = load i64, i64* %maxfilesize12, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.71, i32 0, i32 0), i8* %cond, i64 %conv10, i64 %18)
  %19 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %19, i32 0, i32 5
  %20 = load i32, i32* %options, align 4
  %and = and i32 %20, 256
  %tobool13 = icmp ne i32 %and, 0
  br i1 %tobool13, label %if.then.14, label %if.end

if.then.14:                                       ; preds = %cond.end
  %21 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %21, i32 0, i32 0
  %22 = load i8**, i8*** %virname, align 8
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.73, i32 0, i32 0), i8** %22, align 8
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %cond.end
  store i32 -101, i32* %retval
  br label %return

if.end.15:                                        ; preds = %land.lhs.true, %if.then
  %23 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits16 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %23, i32 0, i32 4
  %24 = load %struct.cl_limits*, %struct.cl_limits** %limits16, align 8
  %maxratio = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %24, i32 0, i32 3
  %25 = load i32, i32* %maxratio, align 4
  %tobool17 = icmp ne i32 %25, 0
  br i1 %tobool17, label %land.lhs.true.18, label %if.end.55

land.lhs.true.18:                                 ; preds = %if.end.15
  %26 = load %struct.arj_metadata_tag*, %struct.arj_metadata_tag** %metadata.addr, align 8
  %orig_size19 = getelementptr inbounds %struct.arj_metadata_tag, %struct.arj_metadata_tag* %26, i32 0, i32 1
  %27 = load i32, i32* %orig_size19, align 4
  %tobool20 = icmp ne i32 %27, 0
  br i1 %tobool20, label %land.lhs.true.21, label %if.end.55

land.lhs.true.21:                                 ; preds = %land.lhs.true.18
  %28 = load %struct.arj_metadata_tag*, %struct.arj_metadata_tag** %metadata.addr, align 8
  %comp_size = getelementptr inbounds %struct.arj_metadata_tag, %struct.arj_metadata_tag* %28, i32 0, i32 0
  %29 = load i32, i32* %comp_size, align 4
  %tobool22 = icmp ne i32 %29, 0
  br i1 %tobool22, label %if.then.23, label %if.end.55

if.then.23:                                       ; preds = %land.lhs.true.21
  %30 = load %struct.arj_metadata_tag*, %struct.arj_metadata_tag** %metadata.addr, align 8
  %orig_size24 = getelementptr inbounds %struct.arj_metadata_tag, %struct.arj_metadata_tag* %30, i32 0, i32 1
  %31 = load i32, i32* %orig_size24, align 4
  %32 = load %struct.arj_metadata_tag*, %struct.arj_metadata_tag** %metadata.addr, align 8
  %comp_size25 = getelementptr inbounds %struct.arj_metadata_tag, %struct.arj_metadata_tag* %32, i32 0, i32 0
  %33 = load i32, i32* %comp_size25, align 4
  %div = udiv i32 %31, %33
  %34 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits26 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %34, i32 0, i32 4
  %35 = load %struct.cl_limits*, %struct.cl_limits** %limits26, align 8
  %maxratio27 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %35, i32 0, i32 3
  %36 = load i32, i32* %maxratio27, align 4
  %cmp28 = icmp uge i32 %div, %36
  br i1 %cmp28, label %if.then.30, label %if.end.54

if.then.30:                                       ; preds = %if.then.23
  %37 = load %struct.arj_metadata_tag*, %struct.arj_metadata_tag** %metadata.addr, align 8
  %orig_size31 = getelementptr inbounds %struct.arj_metadata_tag, %struct.arj_metadata_tag* %37, i32 0, i32 1
  %38 = load i32, i32* %orig_size31, align 4
  %39 = load %struct.arj_metadata_tag*, %struct.arj_metadata_tag** %metadata.addr, align 8
  %comp_size32 = getelementptr inbounds %struct.arj_metadata_tag, %struct.arj_metadata_tag* %39, i32 0, i32 0
  %40 = load i32, i32* %comp_size32, align 4
  %div33 = udiv i32 %38, %40
  %41 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits34 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %41, i32 0, i32 4
  %42 = load %struct.cl_limits*, %struct.cl_limits** %limits34, align 8
  %maxratio35 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %42, i32 0, i32 3
  %43 = load i32, i32* %maxratio35, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.74, i32 0, i32 0), i32 %div33, i32 %43)
  %44 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits36 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %44, i32 0, i32 4
  %45 = load %struct.cl_limits*, %struct.cl_limits** %limits36, align 8
  %maxfilesize37 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %45, i32 0, i32 5
  %46 = load i64, i64* %maxfilesize37, align 8
  %tobool38 = icmp ne i64 %46, 0
  br i1 %tobool38, label %land.lhs.true.39, label %if.else

land.lhs.true.39:                                 ; preds = %if.then.30
  %47 = load %struct.arj_metadata_tag*, %struct.arj_metadata_tag** %metadata.addr, align 8
  %orig_size40 = getelementptr inbounds %struct.arj_metadata_tag, %struct.arj_metadata_tag* %47, i32 0, i32 1
  %48 = load i32, i32* %orig_size40, align 4
  %conv41 = zext i32 %48 to i64
  %49 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits42 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %49, i32 0, i32 4
  %50 = load %struct.cl_limits*, %struct.cl_limits** %limits42, align 8
  %maxfilesize43 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %50, i32 0, i32 5
  %51 = load i64, i64* %maxfilesize43, align 8
  %cmp44 = icmp ule i64 %conv41, %51
  br i1 %cmp44, label %if.then.46, label %if.else

if.then.46:                                       ; preds = %land.lhs.true.39
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.75, i32 0, i32 0))
  br label %if.end.53

if.else:                                          ; preds = %land.lhs.true.39, %if.then.30
  %52 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options47 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %52, i32 0, i32 5
  %53 = load i32, i32* %options47, align 4
  %and48 = and i32 %53, 256
  %tobool49 = icmp ne i32 %and48, 0
  br i1 %tobool49, label %if.then.50, label %if.end.52

if.then.50:                                       ; preds = %if.else
  %54 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname51 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %54, i32 0, i32 0
  %55 = load i8**, i8*** %virname51, align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.76, i32 0, i32 0), i8** %55, align 8
  store i32 1, i32* %retval
  br label %return

if.end.52:                                        ; preds = %if.else
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %if.then.46
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %if.then.23
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %land.lhs.true.21, %land.lhs.true.18, %if.end.15
  %56 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits56 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %56, i32 0, i32 4
  %57 = load %struct.cl_limits*, %struct.cl_limits** %limits56, align 8
  %maxfiles = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %57, i32 0, i32 1
  %58 = load i32, i32* %maxfiles, align 4
  %tobool57 = icmp ne i32 %58, 0
  br i1 %tobool57, label %land.lhs.true.58, label %if.end.72

land.lhs.true.58:                                 ; preds = %if.end.55
  %59 = load i32, i32* %files.addr, align 4
  %60 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits59 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %60, i32 0, i32 4
  %61 = load %struct.cl_limits*, %struct.cl_limits** %limits59, align 8
  %maxfiles60 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %61, i32 0, i32 1
  %62 = load i32, i32* %maxfiles60, align 4
  %cmp61 = icmp ugt i32 %59, %62
  br i1 %cmp61, label %if.then.63, label %if.end.72

if.then.63:                                       ; preds = %land.lhs.true.58
  %63 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %limits64 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %63, i32 0, i32 4
  %64 = load %struct.cl_limits*, %struct.cl_limits** %limits64, align 8
  %maxfiles65 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %64, i32 0, i32 1
  %65 = load i32, i32* %maxfiles65, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.77, i32 0, i32 0), i32 %65)
  %66 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options66 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %66, i32 0, i32 5
  %67 = load i32, i32* %options66, align 4
  %and67 = and i32 %67, 256
  %tobool68 = icmp ne i32 %and67, 0
  br i1 %tobool68, label %if.then.69, label %if.end.71

if.then.69:                                       ; preds = %if.then.63
  %68 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname70 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %68, i32 0, i32 0
  %69 = load i8**, i8*** %virname70, align 8
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.78, i32 0, i32 0), i8** %69, align 8
  store i32 1, i32* %retval
  br label %return

if.end.71:                                        ; preds = %if.then.63
  store i32 -102, i32* %retval
  br label %return

if.end.72:                                        ; preds = %land.lhs.true.58, %if.end.55
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.73, %if.end.71, %if.then.69, %if.then.50, %if.end, %if.then.14
  %70 = load i32, i32* %retval
  ret i32 %70
}

declare i32 @cli_unarj_extract_file(i32, i8*, %struct.arj_metadata_tag*) #1

declare i32 @cab_open(i32, i64, %struct.cab_archive*) #1

declare void @cab_free(%struct.cab_archive*) #1

declare i32 @cab_extract(%struct.cab_file*, i8*) #1

declare i32 @html_normalise_fd(i32, i8*, %struct.tag_arguments_tag*, %struct.cli_dconf*) #1

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #3

declare i8* @cli_utf16toascii(i8*, i32) #1

declare i64 @write(i32, i8*, i64) #1

declare i32 @cli_mbox(i8*, i32, %struct.cli_ctx*) #1

declare i32 @cli_tnef(i8*, i32) #1

declare i32 @cli_uuencode(i8*, i32) #1

declare i32 @cli_pst(i8*, i32) #1

declare i32 @chm_unpack(i32, i8*) #1

declare i32 @cli_ole2_extract(i32, i8*, %struct.cl_limits*) #1

; Function Attrs: nounwind uwtable
define internal i32 @cli_vba_scandir(i8* %dirname, %struct.cli_ctx* %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %dirname.addr = alloca i8*, align 8
  %ctx.addr = alloca %struct.cli_ctx*, align 8
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  %fd = alloca i32, align 4
  %ofd = alloca i32, align 4
  %data_len = alloca i32, align 4
  %vba_project = alloca %struct.vba_project_tag*, align 8
  %dd = alloca %struct.__dirstream*, align 8
  %dent = alloca %struct.dirent*, align 8
  %statbuf = alloca %struct.stat, align 8
  %fname = alloca i8*, align 8
  %fullname = alloca i8*, align 8
  %data = alloca i8*, align 8
  store i8* %dirname, i8** %dirname.addr, align 8
  store %struct.cli_ctx* %ctx, %struct.cli_ctx** %ctx.addr, align 8
  store i32 0, i32* %ret, align 4
  %0 = load i8*, i8** %dirname.addr, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.108, i32 0, i32 0), i8* %0)
  %1 = load i8*, i8** %dirname.addr, align 8
  %call = call %struct.vba_project_tag* @vba56_dir_read(i8* %1)
  store %struct.vba_project_tag* %call, %struct.vba_project_tag** %vba_project, align 8
  %tobool = icmp ne %struct.vba_project_tag* %call, null
  br i1 %tobool, label %if.then, label %if.else.53

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %i, align 4
  %3 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %count = getelementptr inbounds %struct.vba_project_tag, %struct.vba_project_tag* %3, i32 0, i32 0
  %4 = load i32, i32* %count, align 4
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %dir = getelementptr inbounds %struct.vba_project_tag, %struct.vba_project_tag* %5, i32 0, i32 5
  %6 = load i8*, i8** %dir, align 8
  %call1 = call i64 @strlen(i8* %6) #5
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %name = getelementptr inbounds %struct.vba_project_tag, %struct.vba_project_tag* %8, i32 0, i32 1
  %9 = load i8**, i8*** %name, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %9, i64 %idxprom
  %10 = load i8*, i8** %arrayidx, align 8
  %call2 = call i64 @strlen(i8* %10) #5
  %add = add i64 %call1, %call2
  %add3 = add i64 %add, 2
  %call4 = call i8* @cli_malloc(i64 %add3)
  store i8* %call4, i8** %fullname, align 8
  %11 = load i8*, i8** %fullname, align 8
  %tobool5 = icmp ne i8* %11, null
  br i1 %tobool5, label %if.end, label %if.then.6

if.then.6:                                        ; preds = %for.body
  store i32 -114, i32* %ret, align 4
  br label %for.end

if.end:                                           ; preds = %for.body
  %12 = load i8*, i8** %fullname, align 8
  %13 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %dir7 = getelementptr inbounds %struct.vba_project_tag, %struct.vba_project_tag* %13, i32 0, i32 5
  %14 = load i8*, i8** %dir7, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %15 to i64
  %16 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %name9 = getelementptr inbounds %struct.vba_project_tag, %struct.vba_project_tag* %16, i32 0, i32 1
  %17 = load i8**, i8*** %name9, align 8
  %arrayidx10 = getelementptr inbounds i8*, i8** %17, i64 %idxprom8
  %18 = load i8*, i8** %arrayidx10, align 8
  %call11 = call i32 (i8*, i8*, ...) @sprintf(i8* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* %14, i8* %18) #4
  %19 = load i8*, i8** %fullname, align 8
  %call12 = call i32 (i8*, i32, ...) @open(i8* %19, i32 0)
  store i32 %call12, i32* %fd, align 4
  %20 = load i32, i32* %fd, align 4
  %cmp13 = icmp eq i32 %20, -1
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end
  %21 = load i8*, i8** %fullname, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.109, i32 0, i32 0), i8* %21)
  %22 = load i8*, i8** %fullname, align 8
  call void @free(i8* %22) #4
  store i32 -115, i32* %ret, align 4
  br label %for.end

if.end.15:                                        ; preds = %if.end
  %23 = load i8*, i8** %fullname, align 8
  call void @free(i8* %23) #4
  %24 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %24 to i64
  %25 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %name17 = getelementptr inbounds %struct.vba_project_tag, %struct.vba_project_tag* %25, i32 0, i32 1
  %26 = load i8**, i8*** %name17, align 8
  %arrayidx18 = getelementptr inbounds i8*, i8** %26, i64 %idxprom16
  %27 = load i8*, i8** %arrayidx18, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.110, i32 0, i32 0), i8* %27)
  %28 = load i32, i32* %fd, align 4
  %29 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %29 to i64
  %30 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %offset = getelementptr inbounds %struct.vba_project_tag, %struct.vba_project_tag* %30, i32 0, i32 2
  %31 = load i32*, i32** %offset, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %31, i64 %idxprom19
  %32 = load i32, i32* %arrayidx20, align 4
  %call21 = call i8* @vba_decompress(i32 %28, i32 %32, i32* %data_len)
  store i8* %call21, i8** %data, align 8
  %33 = load i32, i32* %fd, align 4
  %call22 = call i32 @close(i32 %33)
  %34 = load i8*, i8** %data, align 8
  %tobool23 = icmp ne i8* %34, null
  br i1 %tobool23, label %if.else, label %if.then.24

if.then.24:                                       ; preds = %if.end.15
  %35 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %35 to i64
  %36 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %name26 = getelementptr inbounds %struct.vba_project_tag, %struct.vba_project_tag* %36, i32 0, i32 1
  %37 = load i8**, i8*** %name26, align 8
  %arrayidx27 = getelementptr inbounds i8*, i8** %37, i64 %idxprom25
  %38 = load i8*, i8** %arrayidx27, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.111, i32 0, i32 0), i8* %38)
  br label %if.end.38

if.else:                                          ; preds = %if.end.15
  %39 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %scanned = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %39, i32 0, i32 1
  %40 = load i64*, i64** %scanned, align 8
  %tobool28 = icmp ne i64* %40, null
  br i1 %tobool28, label %if.then.29, label %if.end.32

if.then.29:                                       ; preds = %if.else
  %41 = load i32, i32* %data_len, align 4
  %div = sdiv i32 %41, 4096
  %conv = sext i32 %div to i64
  %42 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %scanned30 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %42, i32 0, i32 1
  %43 = load i64*, i64** %scanned30, align 8
  %44 = load i64, i64* %43, align 8
  %add31 = add i64 %44, %conv
  store i64 %add31, i64* %43, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.29, %if.else
  %45 = load i8*, i8** %data, align 8
  %46 = load i32, i32* %data_len, align 4
  %47 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %47, i32 0, i32 0
  %48 = load i8**, i8*** %virname, align 8
  %49 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %engine = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %49, i32 0, i32 3
  %50 = load %struct.cl_engine*, %struct.cl_engine** %engine, align 8
  %call33 = call i32 @cli_scanbuff(i8* %45, i32 %46, i8** %48, %struct.cl_engine* %50, i32 513)
  %cmp34 = icmp eq i32 %call33, 1
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.32
  %51 = load i8*, i8** %data, align 8
  call void @free(i8* %51) #4
  store i32 1, i32* %ret, align 4
  br label %for.end

if.end.37:                                        ; preds = %if.end.32
  %52 = load i8*, i8** %data, align 8
  call void @free(i8* %52) #4
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.then.24
  br label %for.inc

for.inc:                                          ; preds = %if.end.38
  %53 = load i32, i32* %i, align 4
  %inc = add nsw i32 %53, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.36, %if.then.14, %if.then.6, %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.39

for.cond.39:                                      ; preds = %for.inc.47, %for.end
  %54 = load i32, i32* %i, align 4
  %55 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %count40 = getelementptr inbounds %struct.vba_project_tag, %struct.vba_project_tag* %55, i32 0, i32 0
  %56 = load i32, i32* %count40, align 4
  %cmp41 = icmp slt i32 %54, %56
  br i1 %cmp41, label %for.body.43, label %for.end.49

for.body.43:                                      ; preds = %for.cond.39
  %57 = load i32, i32* %i, align 4
  %idxprom44 = sext i32 %57 to i64
  %58 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %name45 = getelementptr inbounds %struct.vba_project_tag, %struct.vba_project_tag* %58, i32 0, i32 1
  %59 = load i8**, i8*** %name45, align 8
  %arrayidx46 = getelementptr inbounds i8*, i8** %59, i64 %idxprom44
  %60 = load i8*, i8** %arrayidx46, align 8
  call void @free(i8* %60) #4
  br label %for.inc.47

for.inc.47:                                       ; preds = %for.body.43
  %61 = load i32, i32* %i, align 4
  %inc48 = add nsw i32 %61, 1
  store i32 %inc48, i32* %i, align 4
  br label %for.cond.39

for.end.49:                                       ; preds = %for.cond.39
  %62 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %name50 = getelementptr inbounds %struct.vba_project_tag, %struct.vba_project_tag* %62, i32 0, i32 1
  %63 = load i8**, i8*** %name50, align 8
  %64 = bitcast i8** %63 to i8*
  call void @free(i8* %64) #4
  %65 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %dir51 = getelementptr inbounds %struct.vba_project_tag, %struct.vba_project_tag* %65, i32 0, i32 5
  %66 = load i8*, i8** %dir51, align 8
  call void @free(i8* %66) #4
  %67 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %offset52 = getelementptr inbounds %struct.vba_project_tag, %struct.vba_project_tag* %67, i32 0, i32 2
  %68 = load i32*, i32** %offset52, align 8
  %69 = bitcast i32* %68 to i8*
  call void @free(i8* %69) #4
  %70 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %71 = bitcast %struct.vba_project_tag* %70 to i8*
  call void @free(i8* %71) #4
  br label %if.end.172

if.else.53:                                       ; preds = %entry
  %72 = load i8*, i8** %dirname.addr, align 8
  %call54 = call i8* @ppt_vba_read(i8* %72)
  store i8* %call54, i8** %fullname, align 8
  %tobool55 = icmp ne i8* %call54, null
  br i1 %tobool55, label %if.then.56, label %if.else.66

if.then.56:                                       ; preds = %if.else.53
  %73 = load i8*, i8** %fullname, align 8
  %74 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call57 = call i32 @cli_scandir(i8* %73, %struct.cli_ctx* %74)
  %cmp58 = icmp eq i32 %call57, 1
  br i1 %cmp58, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %if.then.56
  store i32 1, i32* %ret, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.60, %if.then.56
  %75 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool62 = icmp ne i8 %75, 0
  br i1 %tobool62, label %if.end.65, label %if.then.63

if.then.63:                                       ; preds = %if.end.61
  %76 = load i8*, i8** %fullname, align 8
  %call64 = call i32 @cli_rmdirs(i8* %76)
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.63, %if.end.61
  %77 = load i8*, i8** %fullname, align 8
  call void @free(i8* %77) #4
  br label %if.end.171

if.else.66:                                       ; preds = %if.else.53
  %78 = load i8*, i8** %dirname.addr, align 8
  %call67 = call %struct.vba_project_tag* @wm_dir_read(i8* %78)
  store %struct.vba_project_tag* %call67, %struct.vba_project_tag** %vba_project, align 8
  %tobool68 = icmp ne %struct.vba_project_tag* %call67, null
  br i1 %tobool68, label %if.then.69, label %if.end.170

if.then.69:                                       ; preds = %if.else.66
  store i32 0, i32* %i, align 4
  br label %for.cond.70

for.cond.70:                                      ; preds = %for.inc.151, %if.then.69
  %79 = load i32, i32* %i, align 4
  %80 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %count71 = getelementptr inbounds %struct.vba_project_tag, %struct.vba_project_tag* %80, i32 0, i32 0
  %81 = load i32, i32* %count71, align 4
  %cmp72 = icmp slt i32 %79, %81
  br i1 %cmp72, label %for.body.74, label %for.end.153

for.body.74:                                      ; preds = %for.cond.70
  %82 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %dir75 = getelementptr inbounds %struct.vba_project_tag, %struct.vba_project_tag* %82, i32 0, i32 5
  %83 = load i8*, i8** %dir75, align 8
  %call76 = call i64 @strlen(i8* %83) #5
  %84 = load i32, i32* %i, align 4
  %idxprom77 = sext i32 %84 to i64
  %85 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %name78 = getelementptr inbounds %struct.vba_project_tag, %struct.vba_project_tag* %85, i32 0, i32 1
  %86 = load i8**, i8*** %name78, align 8
  %arrayidx79 = getelementptr inbounds i8*, i8** %86, i64 %idxprom77
  %87 = load i8*, i8** %arrayidx79, align 8
  %call80 = call i64 @strlen(i8* %87) #5
  %add81 = add i64 %call76, %call80
  %add82 = add i64 %add81, 2
  %call83 = call i8* @cli_malloc(i64 %add82)
  store i8* %call83, i8** %fullname, align 8
  %88 = load i8*, i8** %fullname, align 8
  %tobool84 = icmp ne i8* %88, null
  br i1 %tobool84, label %if.end.86, label %if.then.85

if.then.85:                                       ; preds = %for.body.74
  store i32 -114, i32* %ret, align 4
  br label %for.end.153

if.end.86:                                        ; preds = %for.body.74
  %89 = load i8*, i8** %fullname, align 8
  %90 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %dir87 = getelementptr inbounds %struct.vba_project_tag, %struct.vba_project_tag* %90, i32 0, i32 5
  %91 = load i8*, i8** %dir87, align 8
  %92 = load i32, i32* %i, align 4
  %idxprom88 = sext i32 %92 to i64
  %93 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %name89 = getelementptr inbounds %struct.vba_project_tag, %struct.vba_project_tag* %93, i32 0, i32 1
  %94 = load i8**, i8*** %name89, align 8
  %arrayidx90 = getelementptr inbounds i8*, i8** %94, i64 %idxprom88
  %95 = load i8*, i8** %arrayidx90, align 8
  %call91 = call i32 (i8*, i8*, ...) @sprintf(i8* %89, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* %91, i8* %95) #4
  %96 = load i8*, i8** %fullname, align 8
  %call92 = call i32 (i8*, i32, ...) @open(i8* %96, i32 0)
  store i32 %call92, i32* %fd, align 4
  %97 = load i32, i32* %fd, align 4
  %cmp93 = icmp eq i32 %97, -1
  br i1 %cmp93, label %if.then.95, label %if.end.96

if.then.95:                                       ; preds = %if.end.86
  %98 = load i8*, i8** %fullname, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.109, i32 0, i32 0), i8* %98)
  %99 = load i8*, i8** %fullname, align 8
  call void @free(i8* %99) #4
  store i32 -115, i32* %ret, align 4
  br label %for.end.153

if.end.96:                                        ; preds = %if.end.86
  %100 = load i8*, i8** %fullname, align 8
  call void @free(i8* %100) #4
  %101 = load i32, i32* %i, align 4
  %idxprom97 = sext i32 %101 to i64
  %102 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %name98 = getelementptr inbounds %struct.vba_project_tag, %struct.vba_project_tag* %102, i32 0, i32 1
  %103 = load i8**, i8*** %name98, align 8
  %arrayidx99 = getelementptr inbounds i8*, i8** %103, i64 %idxprom97
  %104 = load i8*, i8** %arrayidx99, align 8
  %105 = load i32, i32* %i, align 4
  %106 = load i32, i32* %i, align 4
  %idxprom100 = sext i32 %106 to i64
  %107 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %key = getelementptr inbounds %struct.vba_project_tag, %struct.vba_project_tag* %107, i32 0, i32 4
  %108 = load i8*, i8** %key, align 8
  %arrayidx101 = getelementptr inbounds i8, i8* %108, i64 %idxprom100
  %109 = load i8, i8* %arrayidx101, align 1
  %conv102 = zext i8 %109 to i32
  %110 = load i32, i32* %i, align 4
  %idxprom103 = sext i32 %110 to i64
  %111 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %length = getelementptr inbounds %struct.vba_project_tag, %struct.vba_project_tag* %111, i32 0, i32 3
  %112 = load i32*, i32** %length, align 8
  %arrayidx104 = getelementptr inbounds i32, i32* %112, i64 %idxprom103
  %113 = load i32, i32* %arrayidx104, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.112, i32 0, i32 0), i8* %104, i32 %105, i32 %conv102, i32 %113)
  %114 = load i32, i32* %i, align 4
  %idxprom105 = sext i32 %114 to i64
  %115 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %length106 = getelementptr inbounds %struct.vba_project_tag, %struct.vba_project_tag* %115, i32 0, i32 3
  %116 = load i32*, i32** %length106, align 8
  %arrayidx107 = getelementptr inbounds i32, i32* %116, i64 %idxprom105
  %117 = load i32, i32* %arrayidx107, align 4
  %tobool108 = icmp ne i32 %117, 0
  br i1 %tobool108, label %if.then.109, label %if.else.120

if.then.109:                                      ; preds = %if.end.96
  %118 = load i32, i32* %fd, align 4
  %119 = load i32, i32* %i, align 4
  %idxprom110 = sext i32 %119 to i64
  %120 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %offset111 = getelementptr inbounds %struct.vba_project_tag, %struct.vba_project_tag* %120, i32 0, i32 2
  %121 = load i32*, i32** %offset111, align 8
  %arrayidx112 = getelementptr inbounds i32, i32* %121, i64 %idxprom110
  %122 = load i32, i32* %arrayidx112, align 4
  %123 = load i32, i32* %i, align 4
  %idxprom113 = sext i32 %123 to i64
  %124 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %length114 = getelementptr inbounds %struct.vba_project_tag, %struct.vba_project_tag* %124, i32 0, i32 3
  %125 = load i32*, i32** %length114, align 8
  %arrayidx115 = getelementptr inbounds i32, i32* %125, i64 %idxprom113
  %126 = load i32, i32* %arrayidx115, align 4
  %127 = load i32, i32* %i, align 4
  %idxprom116 = sext i32 %127 to i64
  %128 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %key117 = getelementptr inbounds %struct.vba_project_tag, %struct.vba_project_tag* %128, i32 0, i32 4
  %129 = load i8*, i8** %key117, align 8
  %arrayidx118 = getelementptr inbounds i8, i8* %129, i64 %idxprom116
  %130 = load i8, i8* %arrayidx118, align 1
  %call119 = call i8* @wm_decrypt_macro(i32 %118, i32 %122, i32 %126, i8 zeroext %130)
  store i8* %call119, i8** %data, align 8
  br label %if.end.121

if.else.120:                                      ; preds = %if.end.96
  store i8* null, i8** %data, align 8
  br label %if.end.121

if.end.121:                                       ; preds = %if.else.120, %if.then.109
  %131 = load i32, i32* %fd, align 4
  %call122 = call i32 @close(i32 %131)
  %132 = load i8*, i8** %data, align 8
  %tobool123 = icmp ne i8* %132, null
  br i1 %tobool123, label %if.else.128, label %if.then.124

if.then.124:                                      ; preds = %if.end.121
  %133 = load i32, i32* %i, align 4
  %idxprom125 = sext i32 %133 to i64
  %134 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %name126 = getelementptr inbounds %struct.vba_project_tag, %struct.vba_project_tag* %134, i32 0, i32 1
  %135 = load i8**, i8*** %name126, align 8
  %arrayidx127 = getelementptr inbounds i8*, i8** %135, i64 %idxprom125
  %136 = load i8*, i8** %arrayidx127, align 8
  %137 = load i32, i32* %i, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.113, i32 0, i32 0), i8* %136, i32 %137)
  br label %if.end.150

if.else.128:                                      ; preds = %if.end.121
  %138 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %scanned129 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %138, i32 0, i32 1
  %139 = load i64*, i64** %scanned129, align 8
  %tobool130 = icmp ne i64* %139, null
  br i1 %tobool130, label %if.then.131, label %if.end.139

if.then.131:                                      ; preds = %if.else.128
  %140 = load i32, i32* %i, align 4
  %idxprom132 = sext i32 %140 to i64
  %141 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %length133 = getelementptr inbounds %struct.vba_project_tag, %struct.vba_project_tag* %141, i32 0, i32 3
  %142 = load i32*, i32** %length133, align 8
  %arrayidx134 = getelementptr inbounds i32, i32* %142, i64 %idxprom132
  %143 = load i32, i32* %arrayidx134, align 4
  %div135 = udiv i32 %143, 4096
  %conv136 = zext i32 %div135 to i64
  %144 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %scanned137 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %144, i32 0, i32 1
  %145 = load i64*, i64** %scanned137, align 8
  %146 = load i64, i64* %145, align 8
  %add138 = add i64 %146, %conv136
  store i64 %add138, i64* %145, align 8
  br label %if.end.139

if.end.139:                                       ; preds = %if.then.131, %if.else.128
  %147 = load i8*, i8** %data, align 8
  %148 = load i32, i32* %i, align 4
  %idxprom140 = sext i32 %148 to i64
  %149 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %length141 = getelementptr inbounds %struct.vba_project_tag, %struct.vba_project_tag* %149, i32 0, i32 3
  %150 = load i32*, i32** %length141, align 8
  %arrayidx142 = getelementptr inbounds i32, i32* %150, i64 %idxprom140
  %151 = load i32, i32* %arrayidx142, align 4
  %152 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname143 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %152, i32 0, i32 0
  %153 = load i8**, i8*** %virname143, align 8
  %154 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %engine144 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %154, i32 0, i32 3
  %155 = load %struct.cl_engine*, %struct.cl_engine** %engine144, align 8
  %call145 = call i32 @cli_scanbuff(i8* %147, i32 %151, i8** %153, %struct.cl_engine* %155, i32 513)
  %cmp146 = icmp eq i32 %call145, 1
  br i1 %cmp146, label %if.then.148, label %if.end.149

if.then.148:                                      ; preds = %if.end.139
  %156 = load i8*, i8** %data, align 8
  call void @free(i8* %156) #4
  store i32 1, i32* %ret, align 4
  br label %for.end.153

if.end.149:                                       ; preds = %if.end.139
  %157 = load i8*, i8** %data, align 8
  call void @free(i8* %157) #4
  br label %if.end.150

if.end.150:                                       ; preds = %if.end.149, %if.then.124
  br label %for.inc.151

for.inc.151:                                      ; preds = %if.end.150
  %158 = load i32, i32* %i, align 4
  %inc152 = add nsw i32 %158, 1
  store i32 %inc152, i32* %i, align 4
  br label %for.cond.70

for.end.153:                                      ; preds = %if.then.148, %if.then.95, %if.then.85, %for.cond.70
  store i32 0, i32* %i, align 4
  br label %for.cond.154

for.cond.154:                                     ; preds = %for.inc.162, %for.end.153
  %159 = load i32, i32* %i, align 4
  %160 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %count155 = getelementptr inbounds %struct.vba_project_tag, %struct.vba_project_tag* %160, i32 0, i32 0
  %161 = load i32, i32* %count155, align 4
  %cmp156 = icmp slt i32 %159, %161
  br i1 %cmp156, label %for.body.158, label %for.end.164

for.body.158:                                     ; preds = %for.cond.154
  %162 = load i32, i32* %i, align 4
  %idxprom159 = sext i32 %162 to i64
  %163 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %name160 = getelementptr inbounds %struct.vba_project_tag, %struct.vba_project_tag* %163, i32 0, i32 1
  %164 = load i8**, i8*** %name160, align 8
  %arrayidx161 = getelementptr inbounds i8*, i8** %164, i64 %idxprom159
  %165 = load i8*, i8** %arrayidx161, align 8
  call void @free(i8* %165) #4
  br label %for.inc.162

for.inc.162:                                      ; preds = %for.body.158
  %166 = load i32, i32* %i, align 4
  %inc163 = add nsw i32 %166, 1
  store i32 %inc163, i32* %i, align 4
  br label %for.cond.154

for.end.164:                                      ; preds = %for.cond.154
  %167 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %key165 = getelementptr inbounds %struct.vba_project_tag, %struct.vba_project_tag* %167, i32 0, i32 4
  %168 = load i8*, i8** %key165, align 8
  call void @free(i8* %168) #4
  %169 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %length166 = getelementptr inbounds %struct.vba_project_tag, %struct.vba_project_tag* %169, i32 0, i32 3
  %170 = load i32*, i32** %length166, align 8
  %171 = bitcast i32* %170 to i8*
  call void @free(i8* %171) #4
  %172 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %offset167 = getelementptr inbounds %struct.vba_project_tag, %struct.vba_project_tag* %172, i32 0, i32 2
  %173 = load i32*, i32** %offset167, align 8
  %174 = bitcast i32* %173 to i8*
  call void @free(i8* %174) #4
  %175 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %name168 = getelementptr inbounds %struct.vba_project_tag, %struct.vba_project_tag* %175, i32 0, i32 1
  %176 = load i8**, i8*** %name168, align 8
  %177 = bitcast i8** %176 to i8*
  call void @free(i8* %177) #4
  %178 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %dir169 = getelementptr inbounds %struct.vba_project_tag, %struct.vba_project_tag* %178, i32 0, i32 5
  %179 = load i8*, i8** %dir169, align 8
  call void @free(i8* %179) #4
  %180 = load %struct.vba_project_tag*, %struct.vba_project_tag** %vba_project, align 8
  %181 = bitcast %struct.vba_project_tag* %180 to i8*
  call void @free(i8* %181) #4
  br label %if.end.170

if.end.170:                                       ; preds = %for.end.164, %if.else.66
  br label %if.end.171

if.end.171:                                       ; preds = %if.end.170, %if.end.65
  br label %if.end.172

if.end.172:                                       ; preds = %if.end.171, %for.end.49
  %182 = load i32, i32* %ret, align 4
  %cmp173 = icmp ne i32 %182, 0
  br i1 %cmp173, label %if.then.175, label %if.end.176

if.then.175:                                      ; preds = %if.end.172
  %183 = load i32, i32* %ret, align 4
  store i32 %183, i32* %retval
  br label %return

if.end.176:                                       ; preds = %if.end.172
  %184 = load i8*, i8** %dirname.addr, align 8
  %call177 = call i64 @strlen(i8* %184) #5
  %add178 = add i64 %call177, 16
  %call179 = call i8* @cli_malloc(i64 %add178)
  store i8* %call179, i8** %fullname, align 8
  %185 = load i8*, i8** %fullname, align 8
  %tobool180 = icmp ne i8* %185, null
  br i1 %tobool180, label %if.end.182, label %if.then.181

if.then.181:                                      ; preds = %if.end.176
  store i32 -114, i32* %retval
  br label %return

if.end.182:                                       ; preds = %if.end.176
  %186 = load i8*, i8** %fullname, align 8
  %187 = load i8*, i8** %dirname.addr, align 8
  %call183 = call i32 (i8*, i8*, ...) @sprintf(i8* %186, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.114, i32 0, i32 0), i8* %187) #4
  %188 = load i8*, i8** %fullname, align 8
  %call184 = call i32 (i8*, i32, ...) @open(i8* %188, i32 0)
  store i32 %call184, i32* %fd, align 4
  %189 = load i8*, i8** %fullname, align 8
  call void @free(i8* %189) #4
  %190 = load i32, i32* %fd, align 4
  %cmp185 = icmp sge i32 %190, 0
  br i1 %cmp185, label %if.then.187, label %if.end.200

if.then.187:                                      ; preds = %if.end.182
  %191 = load i32, i32* %fd, align 4
  %192 = load i8*, i8** %dirname.addr, align 8
  %call188 = call i32 @cli_decode_ole_object(i32 %191, i8* %192)
  store i32 %call188, i32* %ofd, align 4
  %193 = load i32, i32* %ofd, align 4
  %cmp189 = icmp sge i32 %193, 0
  br i1 %cmp189, label %if.then.191, label %if.end.194

if.then.191:                                      ; preds = %if.then.187
  %194 = load i32, i32* %ofd, align 4
  %195 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call192 = call i32 @cli_scandesc(i32 %194, %struct.cli_ctx* %195, i8 zeroext 0, i32 0, i8 zeroext 0, %struct.cli_matched_type** null)
  store i32 %call192, i32* %ret, align 4
  %196 = load i32, i32* %ofd, align 4
  %call193 = call i32 @close(i32 %196)
  br label %if.end.194

if.end.194:                                       ; preds = %if.then.191, %if.then.187
  %197 = load i32, i32* %fd, align 4
  %call195 = call i32 @close(i32 %197)
  %198 = load i32, i32* %ret, align 4
  %cmp196 = icmp ne i32 %198, 0
  br i1 %cmp196, label %if.then.198, label %if.end.199

if.then.198:                                      ; preds = %if.end.194
  %199 = load i32, i32* %ret, align 4
  store i32 %199, i32* %retval
  br label %return

if.end.199:                                       ; preds = %if.end.194
  br label %if.end.200

if.end.200:                                       ; preds = %if.end.199, %if.end.182
  %200 = load i8*, i8** %dirname.addr, align 8
  %call201 = call %struct.__dirstream* @opendir(i8* %200)
  store %struct.__dirstream* %call201, %struct.__dirstream** %dd, align 8
  %cmp202 = icmp ne %struct.__dirstream* %call201, null
  br i1 %cmp202, label %if.then.204, label %if.else.250

if.then.204:                                      ; preds = %if.end.200
  br label %while.cond

while.cond:                                       ; preds = %if.end.249, %if.then.204
  %201 = load %struct.__dirstream*, %struct.__dirstream** %dd, align 8
  %call205 = call %struct.dirent* @readdir(%struct.__dirstream* %201)
  store %struct.dirent* %call205, %struct.dirent** %dent, align 8
  %tobool206 = icmp ne %struct.dirent* %call205, null
  br i1 %tobool206, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %202 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_ino = getelementptr inbounds %struct.dirent, %struct.dirent* %202, i32 0, i32 0
  %203 = load i64, i64* %d_ino, align 8
  %tobool207 = icmp ne i64 %203, 0
  br i1 %tobool207, label %if.then.208, label %if.end.249

if.then.208:                                      ; preds = %while.body
  %204 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name = getelementptr inbounds %struct.dirent, %struct.dirent* %204, i32 0, i32 4
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %d_name, i32 0, i32 0
  %call209 = call i32 @strcmp(i8* %arraydecay, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0)) #5
  %tobool210 = icmp ne i32 %call209, 0
  br i1 %tobool210, label %land.lhs.true, label %if.end.248

land.lhs.true:                                    ; preds = %if.then.208
  %205 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name211 = getelementptr inbounds %struct.dirent, %struct.dirent* %205, i32 0, i32 4
  %arraydecay212 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name211, i32 0, i32 0
  %call213 = call i32 @strcmp(i8* %arraydecay212, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0)) #5
  %tobool214 = icmp ne i32 %call213, 0
  br i1 %tobool214, label %if.then.215, label %if.end.248

if.then.215:                                      ; preds = %land.lhs.true
  %206 = load i8*, i8** %dirname.addr, align 8
  %call216 = call i64 @strlen(i8* %206) #5
  %207 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name217 = getelementptr inbounds %struct.dirent, %struct.dirent* %207, i32 0, i32 4
  %arraydecay218 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name217, i32 0, i32 0
  %call219 = call i64 @strlen(i8* %arraydecay218) #5
  %add220 = add i64 %call216, %call219
  %add221 = add i64 %add220, 2
  %call222 = call i8* @cli_malloc(i64 %add221)
  store i8* %call222, i8** %fname, align 8
  %208 = load i8*, i8** %fname, align 8
  %tobool223 = icmp ne i8* %208, null
  br i1 %tobool223, label %if.end.225, label %if.then.224

if.then.224:                                      ; preds = %if.then.215
  store i32 -114, i32* %ret, align 4
  br label %while.end

if.end.225:                                       ; preds = %if.then.215
  %209 = load i8*, i8** %fname, align 8
  %210 = load i8*, i8** %dirname.addr, align 8
  %211 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name226 = getelementptr inbounds %struct.dirent, %struct.dirent* %211, i32 0, i32 4
  %arraydecay227 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name226, i32 0, i32 0
  %call228 = call i32 (i8*, i8*, ...) @sprintf(i8* %209, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* %210, i8* %arraydecay227) #4
  %212 = load i8*, i8** %fname, align 8
  %call229 = call i32 @lstat(i8* %212, %struct.stat* %statbuf) #4
  %cmp230 = icmp ne i32 %call229, -1
  br i1 %cmp230, label %if.then.232, label %if.end.247

if.then.232:                                      ; preds = %if.end.225
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 3
  %213 = load i32, i32* %st_mode, align 4
  %and = and i32 %213, 61440
  %cmp233 = icmp eq i32 %and, 16384
  br i1 %cmp233, label %land.lhs.true.235, label %if.end.246

land.lhs.true.235:                                ; preds = %if.then.232
  %st_mode236 = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 3
  %214 = load i32, i32* %st_mode236, align 4
  %and237 = and i32 %214, 61440
  %cmp238 = icmp eq i32 %and237, 40960
  br i1 %cmp238, label %if.end.246, label %if.then.240

if.then.240:                                      ; preds = %land.lhs.true.235
  %215 = load i8*, i8** %fname, align 8
  %216 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call241 = call i32 @cli_vba_scandir(i8* %215, %struct.cli_ctx* %216)
  %cmp242 = icmp eq i32 %call241, 1
  br i1 %cmp242, label %if.then.244, label %if.end.245

if.then.244:                                      ; preds = %if.then.240
  store i32 1, i32* %ret, align 4
  %217 = load i8*, i8** %fname, align 8
  call void @free(i8* %217) #4
  br label %while.end

if.end.245:                                       ; preds = %if.then.240
  br label %if.end.246

if.end.246:                                       ; preds = %if.end.245, %land.lhs.true.235, %if.then.232
  br label %if.end.247

if.end.247:                                       ; preds = %if.end.246, %if.end.225
  %218 = load i8*, i8** %fname, align 8
  call void @free(i8* %218) #4
  br label %if.end.248

if.end.248:                                       ; preds = %if.end.247, %land.lhs.true, %if.then.208
  br label %if.end.249

if.end.249:                                       ; preds = %if.end.248, %while.body
  br label %while.cond

while.end:                                        ; preds = %if.then.244, %if.then.224, %while.cond
  br label %if.end.251

if.else.250:                                      ; preds = %if.end.200
  %219 = load i8*, i8** %dirname.addr, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.115, i32 0, i32 0), i8* %219)
  store i32 -115, i32* %retval
  br label %return

if.end.251:                                       ; preds = %while.end
  %220 = load %struct.__dirstream*, %struct.__dirstream** %dd, align 8
  %call252 = call i32 @closedir(%struct.__dirstream* %220)
  %221 = load i32, i32* %ret, align 4
  store i32 %221, i32* %retval
  br label %return

return:                                           ; preds = %if.end.251, %if.else.250, %if.then.198, %if.then.181, %if.then.175
  %222 = load i32, i32* %retval
  ret i32 %222
}

declare %struct.vba_project_tag* @vba56_dir_read(i8*) #1

declare i8* @vba_decompress(i32, i32, i32*) #1

declare i32 @cli_scanbuff(i8*, i32, i8**, %struct.cl_engine*, i32) #1

declare i8* @ppt_vba_read(i8*) #1

declare %struct.vba_project_tag* @wm_dir_read(i8*) #1

declare i8* @wm_decrypt_macro(i32, i32, i32, i8 zeroext) #1

declare i32 @cli_decode_ole_object(i32, i8*) #1

declare i32 @cli_untar(i8*, i32, i32, %struct.cl_limits*) #1

declare i32 @cli_binhex(i8*, i32) #1

declare i32 @html_screnc_decode(i32, i8*) #1

declare i32 @cli_check_riff_exploit(i32) #1

declare i32 @cli_check_jpeg_exploit(i32) #1

declare i32 @cli_pdf(i8*, i32, %struct.cli_ctx*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
