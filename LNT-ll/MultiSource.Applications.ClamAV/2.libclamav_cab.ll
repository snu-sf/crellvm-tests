; ModuleID = './MultiSource.Applications.ClamAV/2.libclamav_cab.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cab_archive = type { i32, i16, i16, i16, i16, i8, %struct.cab_folder*, %struct.cab_file* }
%struct.cab_folder = type { i16, i16, %struct.cab_archive*, i64, %struct.cab_folder* }
%struct.cab_file = type { i32, i16, i64, i8*, i32, i32, i32, %struct.cab_folder*, %struct.cab_file*, %struct.cab_archive*, %struct.cab_state* }
%struct.cab_state = type { i8*, i8*, [38912 x i8], i16, i16, i8*, i16 }
%struct.cab_hdr = type { i32, i32, i32, i32, i32, i32, i8, i8, i16, i16, i16, i16, i16 }
%struct.cab_hdr_opt = type { i16, i8, i8 }
%struct.cab_folder_hdr = type { i32, i16, i16 }
%struct.cab_file_hdr = type { i32, i32, i16, i16, i16, i16 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.mszip_stream = type { i32, i32, i8, i32, i32 (%struct.mszip_stream*, i32)*, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, [288 x i8], [32 x i8], [1152 x i16], [128 x i16], [32768 x i8], %struct.cab_file*, i32 (%struct.cab_file*, i8*, i32)* }
%struct.qtm_stream = type { i32, i32, i8, i8*, i32, i32, i32, i16, i16, i16, i8, i32, i8*, i8*, i8*, i8*, i8*, i32, i32, i8, [42 x i32], [42 x i8], [27 x i8], [27 x i8], %struct.qtm_model, %struct.qtm_model, %struct.qtm_model, %struct.qtm_model, %struct.qtm_model, %struct.qtm_model, %struct.qtm_model, %struct.qtm_model, %struct.qtm_model, [65 x %struct.qtm_modelsym], [65 x %struct.qtm_modelsym], [65 x %struct.qtm_modelsym], [65 x %struct.qtm_modelsym], [25 x %struct.qtm_modelsym], [37 x %struct.qtm_modelsym], [43 x %struct.qtm_modelsym], [28 x %struct.qtm_modelsym], [8 x %struct.qtm_modelsym], %struct.cab_file*, i32 (%struct.cab_file*, i8*, i32)* }
%struct.qtm_model = type { i32, i32, %struct.qtm_modelsym* }
%struct.qtm_modelsym = type { i16, i16 }
%struct.lzx_stream = type { i32, i32, i8, i64, i64, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, [84 x i8], [720 x i8], [314 x i8], [72 x i8], [104 x i16], [5408 x i16], [4596 x i16], [144 x i16], [51 x i32], [51 x i8], [32768 x i8], %struct.cab_file*, i32 (%struct.cab_file*, i8*, i32)* }
%struct.cab_block_hdr = type { i32, i16, i16 }

@.str = private unnamed_addr constant [38 x i8] c"cab_open: Can't lseek to %u (offset)\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"cab_open: Can't read cabinet header\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"cab_open: Incorrect CAB signature\0A\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"CAB: -------------- Cabinet file ----------------\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"cab_open: Can't fstat descriptor %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"CAB: Cabinet length: %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"cab_open: No folders in cabinet (fake cab?)\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"CAB: Folders: %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"CAB: *** Number of folders limited to %u ***\0A\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"cab_open: No files in cabinet (fake cab?)\0A\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"CAB: Files: %u\0A\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"CAB: *** Number of files limited to %u ***\0A\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"CAB: File format version: %u.%u\0A\00", align 1
@.str.13 = private unnamed_addr constant [46 x i8] c"cab_open: Can't read file header (fake cab?)\0A\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"cab_open: Can't lseek to %u (fake cab?)\0A\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"CAB: Preceeding cabinet name: %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"CAB: Preceeding cabinet info: %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"CAB: Next cabinet name: %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"CAB: Next cabinet info: %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [47 x i8] c"CAB: bscore == %u, most likely a fake cabinet\0A\00", align 1
@.str.20 = private unnamed_addr constant [43 x i8] c"cab_open: Can't read header for folder %u\0A\00", align 1
@.str.21 = private unnamed_addr constant [39 x i8] c"cab_open: Can't lseek to %u (resfold)\0A\00", align 1
@.str.22 = private unnamed_addr constant [44 x i8] c"cab_open: Can't allocate memory for folder\0A\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"CAB: Folder record %u\0A\00", align 1
@.str.24 = private unnamed_addr constant [24 x i8] c"CAB: Folder offset: %u\0A\00", align 1
@.str.25 = private unnamed_addr constant [36 x i8] c"CAB: Folder compression method: %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [37 x i8] c"cab_open: Can't read file %u header\0A\00", align 1
@.str.27 = private unnamed_addr constant [42 x i8] c"cab_open: Can't allocate memory for file\0A\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"CAB: File record %u\0A\00", align 1
@.str.29 = private unnamed_addr constant [20 x i8] c"CAB: File name: %s\0A\00", align 1
@.str.30 = private unnamed_addr constant [22 x i8] c"CAB: File offset: %u\0A\00", align 1
@.str.31 = private unnamed_addr constant [28 x i8] c"CAB: File folder index: %u\0A\00", align 1
@.str.32 = private unnamed_addr constant [25 x i8] c"CAB: File attribs: 0x%x\0A\00", align 1
@.str.33 = private unnamed_addr constant [28 x i8] c"CAB:   * file is read-only\0A\00", align 1
@.str.34 = private unnamed_addr constant [25 x i8] c"CAB:   * file is hidden\0A\00", align 1
@.str.35 = private unnamed_addr constant [32 x i8] c"CAB:   * file is a system file\0A\00", align 1
@.str.36 = private unnamed_addr constant [42 x i8] c"CAB:   * file modified since last backup\0A\00", align 1
@.str.37 = private unnamed_addr constant [42 x i8] c"CAB:   * file to be run after extraction\0A\00", align 1
@.str.38 = private unnamed_addr constant [33 x i8] c"CAB:   * file name contains UTF\0A\00", align 1
@.str.39 = private unnamed_addr constant [53 x i8] c"cab_open: File %s is not associated with any folder\0A\00", align 1
@.str.40 = private unnamed_addr constant [40 x i8] c"cab_open: Folder not found for file %s\0A\00", align 1
@.str.41 = private unnamed_addr constant [31 x i8] c"CAB: File is split *skipping*\0A\00", align 1
@.str.42 = private unnamed_addr constant [29 x i8] c"cab_extract: !file || !name\0A\00", align 1
@.str.43 = private unnamed_addr constant [35 x i8] c"cab_extract: file->folder == NULL\0A\00", align 1
@.str.44 = private unnamed_addr constant [32 x i8] c"cab_extract: Can't lseek to %u\0A\00", align 1
@.str.45 = private unnamed_addr constant [55 x i8] c"cab_extract: Can't allocate memory for internal state\0A\00", align 1
@.str.46 = private unnamed_addr constant [47 x i8] c"cab_extract: Can't open file %s in write mode\0A\00", align 1
@.str.47 = private unnamed_addr constant [32 x i8] c"CAB: Compression method: MSZIP\0A\00", align 1
@.str.48 = private unnamed_addr constant [34 x i8] c"CAB: Compression method: QUANTUM\0A\00", align 1
@.str.49 = private unnamed_addr constant [30 x i8] c"CAB: Compression method: LZX\0A\00", align 1
@.str.50 = private unnamed_addr constant [45 x i8] c"CAB: Not supported compression method: 0x%x\0A\00", align 1
@.str.51 = private unnamed_addr constant [16 x i8] c"%/*?|\5C\22+=<>;:\09 \00", align 1
@.str.52 = private unnamed_addr constant [55 x i8] c"cab_chkname: File name contains disallowed characters\0A\00", align 1
@.str.53 = private unnamed_addr constant [24 x i8] c"cab_unstore: bytes < 0\0A\00", align 1
@.str.54 = private unnamed_addr constant [48 x i8] c"cab_unstore: cab_read failed for descriptor %d\0A\00", align 1
@.str.55 = private unnamed_addr constant [43 x i8] c"cab_unstore: Can't write to descriptor %d\0A\00", align 1
@.str.56 = private unnamed_addr constant [39 x i8] c"cab_read: WARNING: partial data block\0A\00", align 1
@.str.57 = private unnamed_addr constant [41 x i8] c"cab_read_block: Can't read block header\0A\00", align 1
@.str.58 = private unnamed_addr constant [30 x i8] c"cab_read_block: lseek failed\0A\00", align 1
@.str.59 = private unnamed_addr constant [43 x i8] c"cab_read_block: block size > CAB_INPUTMAX\0A\00", align 1
@.str.60 = private unnamed_addr constant [44 x i8] c"cab_read_block: output size > CAB_BLOCKMAX\0A\00", align 1
@.str.61 = private unnamed_addr constant [39 x i8] c"cab_read_block: Can't read block data\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @cab_free(%struct.cab_archive* %cab) #0 {
entry:
  %cab.addr = alloca %struct.cab_archive*, align 8
  %folder = alloca %struct.cab_folder*, align 8
  %file = alloca %struct.cab_file*, align 8
  store %struct.cab_archive* %cab, %struct.cab_archive** %cab.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.cab_archive*, %struct.cab_archive** %cab.addr, align 8
  %folders = getelementptr inbounds %struct.cab_archive, %struct.cab_archive* %0, i32 0, i32 6
  %1 = load %struct.cab_folder*, %struct.cab_folder** %folders, align 8
  %tobool = icmp ne %struct.cab_folder* %1, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.cab_archive*, %struct.cab_archive** %cab.addr, align 8
  %folders1 = getelementptr inbounds %struct.cab_archive, %struct.cab_archive* %2, i32 0, i32 6
  %3 = load %struct.cab_folder*, %struct.cab_folder** %folders1, align 8
  store %struct.cab_folder* %3, %struct.cab_folder** %folder, align 8
  %4 = load %struct.cab_archive*, %struct.cab_archive** %cab.addr, align 8
  %folders2 = getelementptr inbounds %struct.cab_archive, %struct.cab_archive* %4, i32 0, i32 6
  %5 = load %struct.cab_folder*, %struct.cab_folder** %folders2, align 8
  %next = getelementptr inbounds %struct.cab_folder, %struct.cab_folder* %5, i32 0, i32 4
  %6 = load %struct.cab_folder*, %struct.cab_folder** %next, align 8
  %7 = load %struct.cab_archive*, %struct.cab_archive** %cab.addr, align 8
  %folders3 = getelementptr inbounds %struct.cab_archive, %struct.cab_archive* %7, i32 0, i32 6
  store %struct.cab_folder* %6, %struct.cab_folder** %folders3, align 8
  %8 = load %struct.cab_folder*, %struct.cab_folder** %folder, align 8
  %9 = bitcast %struct.cab_folder* %8 to i8*
  call void @free(i8* %9) #3
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond.4

while.cond.4:                                     ; preds = %while.body.6, %while.end
  %10 = load %struct.cab_archive*, %struct.cab_archive** %cab.addr, align 8
  %files = getelementptr inbounds %struct.cab_archive, %struct.cab_archive* %10, i32 0, i32 7
  %11 = load %struct.cab_file*, %struct.cab_file** %files, align 8
  %tobool5 = icmp ne %struct.cab_file* %11, null
  br i1 %tobool5, label %while.body.6, label %while.end.11

while.body.6:                                     ; preds = %while.cond.4
  %12 = load %struct.cab_archive*, %struct.cab_archive** %cab.addr, align 8
  %files7 = getelementptr inbounds %struct.cab_archive, %struct.cab_archive* %12, i32 0, i32 7
  %13 = load %struct.cab_file*, %struct.cab_file** %files7, align 8
  store %struct.cab_file* %13, %struct.cab_file** %file, align 8
  %14 = load %struct.cab_archive*, %struct.cab_archive** %cab.addr, align 8
  %files8 = getelementptr inbounds %struct.cab_archive, %struct.cab_archive* %14, i32 0, i32 7
  %15 = load %struct.cab_file*, %struct.cab_file** %files8, align 8
  %next9 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %15, i32 0, i32 8
  %16 = load %struct.cab_file*, %struct.cab_file** %next9, align 8
  %17 = load %struct.cab_archive*, %struct.cab_archive** %cab.addr, align 8
  %files10 = getelementptr inbounds %struct.cab_archive, %struct.cab_archive* %17, i32 0, i32 7
  store %struct.cab_file* %16, %struct.cab_file** %files10, align 8
  %18 = load %struct.cab_file*, %struct.cab_file** %file, align 8
  %name = getelementptr inbounds %struct.cab_file, %struct.cab_file* %18, i32 0, i32 3
  %19 = load i8*, i8** %name, align 8
  call void @free(i8* %19) #3
  %20 = load %struct.cab_file*, %struct.cab_file** %file, align 8
  %21 = bitcast %struct.cab_file* %20 to i8*
  call void @free(i8* %21) #3
  br label %while.cond.4

while.end.11:                                     ; preds = %while.cond.4
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @cab_open(i32 %fd, i64 %offset, %struct.cab_archive* %cab) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %offset.addr = alloca i64, align 8
  %cab.addr = alloca %struct.cab_archive*, align 8
  %i = alloca i32, align 4
  %bscore = alloca i32, align 4
  %badname = alloca i32, align 4
  %file = alloca %struct.cab_file*, align 8
  %lfile = alloca %struct.cab_file*, align 8
  %folder = alloca %struct.cab_folder*, align 8
  %lfolder = alloca %struct.cab_folder*, align 8
  %hdr = alloca %struct.cab_hdr, align 4
  %hdr_opt = alloca %struct.cab_hdr_opt, align 2
  %folder_hdr = alloca %struct.cab_folder_hdr, align 4
  %file_hdr = alloca %struct.cab_file_hdr, align 4
  %sb = alloca %struct.stat, align 8
  %fidx = alloca i16, align 2
  %pt = alloca i8*, align 8
  %ret = alloca i32, align 4
  %resfold = alloca i64, align 8
  %rsize = alloca i64, align 8
  store i32 %fd, i32* %fd.addr, align 4
  store i64 %offset, i64* %offset.addr, align 8
  store %struct.cab_archive* %cab, %struct.cab_archive** %cab.addr, align 8
  store i32 0, i32* %bscore, align 4
  store i32 0, i32* %badname, align 4
  store %struct.cab_file* null, %struct.cab_file** %lfile, align 8
  store %struct.cab_folder* null, %struct.cab_folder** %lfolder, align 8
  store i64 0, i64* %resfold, align 8
  %0 = load i32, i32* %fd.addr, align 4
  %1 = load i64, i64* %offset.addr, align 8
  %call = call i64 @lseek(i32 %0, i64 %1, i32 0) #3
  %cmp = icmp eq i64 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %offset.addr, align 8
  %conv = trunc i64 %2 to i32
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i32 0, i32 0), i32 %conv)
  store i32 -123, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %fd.addr, align 4
  %4 = bitcast %struct.cab_hdr* %hdr to i8*
  %call1 = call i32 @cli_readn(i32 %3, i8* %4, i32 36)
  %conv2 = sext i32 %call1 to i64
  %cmp3 = icmp ne i64 %conv2, 36
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0))
  store i32 -123, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %signature = getelementptr inbounds %struct.cab_hdr, %struct.cab_hdr* %hdr, i32 0, i32 0
  %5 = load i32, i32* %signature, align 4
  %cmp7 = icmp ne i32 %5, 1178817357
  br i1 %cmp7, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.end.6
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i32 0, i32 0))
  store i32 -124, i32* %retval
  br label %return

if.else:                                          ; preds = %if.end.6
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.10

if.end.10:                                        ; preds = %if.else
  %6 = load i32, i32* %fd.addr, align 4
  %call11 = call i32 @fstat(i32 %6, %struct.stat* %sb) #3
  %cmp12 = icmp eq i32 %call11, -1
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.10
  %7 = load i32, i32* %fd.addr, align 4
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i32 0, i32 0), i32 %7)
  store i32 -123, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.end.10
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %sb, i32 0, i32 8
  %8 = load i64, i64* %st_size, align 8
  store i64 %8, i64* %rsize, align 8
  %9 = load %struct.cab_archive*, %struct.cab_archive** %cab.addr, align 8
  %10 = bitcast %struct.cab_archive* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* %10, i8 0, i64 32, i32 8, i1 false)
  %cbCabinet = getelementptr inbounds %struct.cab_hdr, %struct.cab_hdr* %hdr, i32 0, i32 2
  %11 = load i32, i32* %cbCabinet, align 4
  %12 = load %struct.cab_archive*, %struct.cab_archive** %cab.addr, align 8
  %length = getelementptr inbounds %struct.cab_archive, %struct.cab_archive* %12, i32 0, i32 0
  store i32 %11, i32* %length, align 4
  %13 = load %struct.cab_archive*, %struct.cab_archive** %cab.addr, align 8
  %length16 = getelementptr inbounds %struct.cab_archive, %struct.cab_archive* %13, i32 0, i32 0
  %14 = load i32, i32* %length16, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0), i32 %14)
  %15 = load %struct.cab_archive*, %struct.cab_archive** %cab.addr, align 8
  %length17 = getelementptr inbounds %struct.cab_archive, %struct.cab_archive* %15, i32 0, i32 0
  %16 = load i32, i32* %length17, align 4
  %conv18 = zext i32 %16 to i64
  %17 = load i64, i64* %rsize, align 8
  %cmp19 = icmp sgt i64 %conv18, %17
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.15
  %18 = load i32, i32* %bscore, align 4
  %inc = add i32 %18, 1
  store i32 %inc, i32* %bscore, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %if.end.15
  %cFolders = getelementptr inbounds %struct.cab_hdr, %struct.cab_hdr* %hdr, i32 0, i32 8
  %19 = load i16, i16* %cFolders, align 2
  %20 = load %struct.cab_archive*, %struct.cab_archive** %cab.addr, align 8
  %nfolders = getelementptr inbounds %struct.cab_archive, %struct.cab_archive* %20, i32 0, i32 1
  store i16 %19, i16* %nfolders, align 2
  %21 = load %struct.cab_archive*, %struct.cab_archive** %cab.addr, align 8
  %nfolders23 = getelementptr inbounds %struct.cab_archive, %struct.cab_archive* %21, i32 0, i32 1
  %22 = load i16, i16* %nfolders23, align 2
  %tobool = icmp ne i16 %22, 0
  br i1 %tobool, label %if.else.25, label %if.then.24

if.then.24:                                       ; preds = %if.end.22
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i32 0, i32 0))
  store i32 -124, i32* %retval
  br label %return

if.else.25:                                       ; preds = %if.end.22
  %23 = load %struct.cab_archive*, %struct.cab_archive** %cab.addr, align 8
  %nfolders26 = getelementptr inbounds %struct.cab_archive, %struct.cab_archive* %23, i32 0, i32 1
  %24 = load i16, i16* %nfolders26, align 2
  %conv27 = zext i16 %24 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0), i32 %conv27)
  %25 = load %struct.cab_archive*, %struct.cab_archive** %cab.addr, align 8
  %nfolders28 = getelementptr inbounds %struct.cab_archive, %struct.cab_archive* %25, i32 0, i32 1
  %26 = load i16, i16* %nfolders28, align 2
  %conv29 = zext i16 %26 to i32
  %cmp30 = icmp sgt i32 %conv29, 5000
  br i1 %cmp30, label %if.then.32, label %if.end.37

if.then.32:                                       ; preds = %if.else.25
  %27 = load %struct.cab_archive*, %struct.cab_archive** %cab.addr, align 8
  %nfolders33 = getelementptr inbounds %struct.cab_archive, %struct.cab_archive* %27, i32 0, i32 1
  store i16 5000, i16* %nfolders33, align 2
  %28 = load %struct.cab_archive*, %struct.cab_archive** %cab.addr, align 8
  %nfolders34 = getelementptr inbounds %struct.cab_archive, %struct.cab_archive* %28, i32 0, i32 1
  %29 = load i16, i16* %nfolders34, align 2
  %conv35 = zext i16 %29 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i32 0, i32 0), i32 %conv35)
  %30 = load i32, i32* %bscore, align 4
  %inc36 = add i32 %30, 1
  store i32 %inc36, i32* %bscore, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.32, %if.else.25
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37
  %cFiles = getelementptr inbounds %struct.cab_hdr, %struct.cab_hdr* %hdr, i32 0, i32 9
  %31 = load i16, i16* %cFiles, align 2
  %32 = load %struct.cab_archive*, %struct.cab_archive** %cab.addr, align 8
  %nfiles = getelementptr inbounds %struct.cab_archive, %struct.cab_archive* %32, i32 0, i32 2
  store i16 %31, i16* %nfiles, align 2
  %33 = load %struct.cab_archive*, %struct.cab_archive** %cab.addr, align 8
  %nfiles39 = getelementptr inbounds %struct.cab_archive, %struct.cab_archive* %33, i32 0, i32 2
  %34 = load i16, i16* %nfiles39, align 2
  %tobool40 = icmp ne i16 %34, 0
  br i1 %tobool40, label %if.else.42, label %if.then.41

if.then.41:                                       ; preds = %if.end.38
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i32 0, i32 0))
  store i32 -124, i32* %retval
  br label %return

if.else.42:                                       ; preds = %if.end.38
  %35 = load %struct.cab_archive*, %struct.cab_archive** %cab.addr, align 8
  %nfiles43 = getelementptr inbounds %struct.cab_archive, %struct.cab_archive* %35, i32 0, i32 2
  %36 = load i16, i16* %nfiles43, align 2
  %conv44 = zext i16 %36 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0), i32 %conv44)
  %37 = load %struct.cab_archive*, %struct.cab_archive** %cab.addr, align 8
  %nfiles45 = getelementptr inbounds %struct.cab_archive, %struct.cab_archive* %37, i32 0, i32 2
  %38 = load i16, i16* %nfiles45, align 2
  %conv46 = zext i16 %38 to i32
  %cmp47 = icmp sgt i32 %conv46, 5000
  br i1 %cmp47, label %if.then.49, label %if.end.54

if.then.49:                                       ; preds = %if.else.42
  %39 = load %struct.cab_archive*, %struct.cab_archive** %cab.addr, align 8
  %nfiles50 = getelementptr inbounds %struct.cab_archive, %struct.cab_archive* %39, i32 0, i32 2
  store i16 5000, i16* %nfiles50, align 2
  %40 = load %struct.cab_archive*, %struct.cab_archive** %cab.addr, align 8
  %nfiles51 = getelementptr inbounds %struct.cab_archive, %struct.cab_archive* %40, i32 0, i32 2
  %41 = load i16, i16* %nfiles51, align 2
  %conv52 = zext i16 %41 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i32 0, i32 0), i32 %conv52)
  %42 = load i32, i32* %bscore, align 4
  %inc53 = add i32 %42, 1
  store i32 %inc53, i32* %bscore, align 4
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.49, %if.else.42
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54
  %versionMajor = getelementptr inbounds %struct.cab_hdr, %struct.cab_hdr* %hdr, i32 0, i32 7
  %43 = load i8, i8* %versionMajor, align 1
  %conv56 = zext i8 %43 to i32
  %versionMinor = getelementptr inbounds %struct.cab_hdr, %struct.cab_hdr* %hdr, i32 0, i32 6
  %44 = load i8, i8* %versionMinor, align 1
  %conv57 = zext i8 %44 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i32 0, i32 0), i32 %conv56, i32 %conv57)
  %versionMajor58 = getelementptr inbounds %struct.cab_hdr, %struct.cab_hdr* %hdr, i32 0, i32 7
  %45 = load i8, i8* %versionMajor58, align 1
  %conv59 = zext i8 %45 to i32
  %cmp60 = icmp ne i32 %conv59, 1
  br i1 %cmp60, label %if.then.66, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.55
  %versionMinor62 = getelementptr inbounds %struct.cab_hdr, %struct.cab_hdr* %hdr, i32 0, i32 6
  %46 = load i8, i8* %versionMinor62, align 1
  %conv63 = zext i8 %46 to i32
  %cmp64 = icmp ne i32 %conv63, 3
  br i1 %cmp64, label %if.then.66, label %if.end.68

if.then.66:                                       ; preds = %lor.lhs.false, %if.end.55
  %47 = load i32, i32* %bscore, align 4
  %inc67 = add i32 %47, 1
  store i32 %inc67, i32* %bscore, align 4
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.66, %lor.lhs.false
  %flags = getelementptr inbounds %struct.cab_hdr, %struct.cab_hdr* %hdr, i32 0, i32 10
  %48 = load i16, i16* %flags, align 2
  %49 = load %struct.cab_archive*, %struct.cab_archive** %cab.addr, align 8
  %flags69 = getelementptr inbounds %struct.cab_archive, %struct.cab_archive* %49, i32 0, i32 3
  store i16 %48, i16* %flags69, align 2
  %50 = load %struct.cab_archive*, %struct.cab_archive** %cab.addr, align 8
  %flags70 = getelementptr inbounds %struct.cab_archive, %struct.cab_archive* %50, i32 0, i32 3
  %51 = load i16, i16* %flags70, align 2
  %conv71 = zext i16 %51 to i32
  %and = and i32 %conv71, 4
  %tobool72 = icmp ne i32 %and, 0
  br i1 %tobool72, label %if.then.73, label %if.end.94

if.then.73:                                       ; preds = %if.end.68
  %52 = load i32, i32* %fd.addr, align 4
  %53 = bitcast %struct.cab_hdr_opt* %hdr_opt to i8*
  %call74 = call i32 @cli_readn(i32 %52, i8* %53, i32 4)
  %conv75 = sext i32 %call74 to i64
  %cmp76 = icmp ne i64 %conv75, 4
  br i1 %cmp76, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %if.then.73
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.13, i32 0, i32 0))
  store i32 -123, i32* %retval
  br label %return

if.end.79:                                        ; preds = %if.then.73
  %cbCFHeader = getelementptr inbounds %struct.cab_hdr_opt, %struct.cab_hdr_opt* %hdr_opt, i32 0, i32 0
  %54 = load i16, i16* %cbCFHeader, align 2
  %55 = load %struct.cab_archive*, %struct.cab_archive** %cab.addr, align 8
  %reshdr = getelementptr inbounds %struct.cab_archive, %struct.cab_archive* %55, i32 0, i32 4
  store i16 %54, i16* %reshdr, align 2
  %cbCFFolder = getelementptr inbounds %struct.cab_hdr_opt, %struct.cab_hdr_opt* %hdr_opt, i32 0, i32 1
  %56 = load i8, i8* %cbCFFolder, align 1
  %conv80 = zext i8 %56 to i64
  store i64 %conv80, i64* %resfold, align 8
  %cbCFData = getelementptr inbounds %struct.cab_hdr_opt, %struct.cab_hdr_opt* %hdr_opt, i32 0, i32 2
  %57 = load i8, i8* %cbCFData, align 1
  %58 = load %struct.cab_archive*, %struct.cab_archive** %cab.addr, align 8
  %resdata = getelementptr inbounds %struct.cab_archive, %struct.cab_archive* %58, i32 0, i32 5
  store i8 %57, i8* %resdata, align 1
  %59 = load %struct.cab_archive*, %struct.cab_archive** %cab.addr, align 8
  %reshdr81 = getelementptr inbounds %struct.cab_archive, %struct.cab_archive* %59, i32 0, i32 4
  %60 = load i16, i16* %reshdr81, align 2
  %tobool82 = icmp ne i16 %60, 0
  br i1 %tobool82, label %if.then.83, label %if.end.93

if.then.83:                                       ; preds = %if.end.79
  %61 = load i32, i32* %fd.addr, align 4
  %62 = load %struct.cab_archive*, %struct.cab_archive** %cab.addr, align 8
  %reshdr84 = getelementptr inbounds %struct.cab_archive, %struct.cab_archive* %62, i32 0, i32 4
  %63 = load i16, i16* %reshdr84, align 2
  %conv85 = zext i16 %63 to i64
  %call86 = call i64 @lseek(i32 %61, i64 %conv85, i32 1) #3
  %cmp87 = icmp eq i64 %call86, -1
  br i1 %cmp87, label %if.then.89, label %if.end.92

if.then.89:                                       ; preds = %if.then.83
  %64 = load %struct.cab_archive*, %struct.cab_archive** %cab.addr, align 8
  %reshdr90 = getelementptr inbounds %struct.cab_archive, %struct.cab_archive* %64, i32 0, i32 4
  %65 = load i16, i16* %reshdr90, align 2
  %conv91 = zext i16 %65 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i32 0, i32 0), i32 %conv91)
  store i32 -123, i32* %retval
  br label %return

if.end.92:                                        ; preds = %if.then.83
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %if.end.79
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %if.end.68
  %66 = load %struct.cab_archive*, %struct.cab_archive** %cab.addr, align 8
  %flags95 = getelementptr inbounds %struct.cab_archive, %struct.cab_archive* %66, i32 0, i32 3
  %67 = load i16, i16* %flags95, align 2
  %conv96 = zext i16 %67 to i32
  %and97 = and i32 %conv96, 1
  %tobool98 = icmp ne i32 %and97, 0
  br i1 %tobool98, label %if.then.99, label %if.end.118

if.then.99:                                       ; preds = %if.end.94
  %68 = load i32, i32* %fd.addr, align 4
  %call100 = call i8* @cab_readstr(i32 %68, i32* %ret)
  store i8* %call100, i8** %pt, align 8
  %69 = load i32, i32* %ret, align 4
  %tobool101 = icmp ne i32 %69, 0
  br i1 %tobool101, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %if.then.99
  %70 = load i32, i32* %ret, align 4
  store i32 %70, i32* %retval
  br label %return

if.end.103:                                       ; preds = %if.then.99
  %71 = load i8*, i8** %pt, align 8
  %call104 = call i32 @cab_chkname(i8* %71)
  %tobool105 = icmp ne i32 %call104, 0
  br i1 %tobool105, label %if.then.106, label %if.else.107

if.then.106:                                      ; preds = %if.end.103
  store i32 1, i32* %badname, align 4
  br label %if.end.108

if.else.107:                                      ; preds = %if.end.103
  %72 = load i8*, i8** %pt, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i32 0, i32 0), i8* %72)
  br label %if.end.108

if.end.108:                                       ; preds = %if.else.107, %if.then.106
  %73 = load i8*, i8** %pt, align 8
  call void @free(i8* %73) #3
  %74 = load i32, i32* %fd.addr, align 4
  %call109 = call i8* @cab_readstr(i32 %74, i32* %ret)
  store i8* %call109, i8** %pt, align 8
  %75 = load i32, i32* %ret, align 4
  %tobool110 = icmp ne i32 %75, 0
  br i1 %tobool110, label %if.then.111, label %if.end.112

if.then.111:                                      ; preds = %if.end.108
  %76 = load i32, i32* %ret, align 4
  store i32 %76, i32* %retval
  br label %return

if.end.112:                                       ; preds = %if.end.108
  %77 = load i8*, i8** %pt, align 8
  %call113 = call i32 @cab_chkname(i8* %77)
  %tobool114 = icmp ne i32 %call113, 0
  br i1 %tobool114, label %if.then.115, label %if.else.116

if.then.115:                                      ; preds = %if.end.112
  store i32 1, i32* %badname, align 4
  br label %if.end.117

if.else.116:                                      ; preds = %if.end.112
  %78 = load i8*, i8** %pt, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i32 0, i32 0), i8* %78)
  br label %if.end.117

if.end.117:                                       ; preds = %if.else.116, %if.then.115
  %79 = load i8*, i8** %pt, align 8
  call void @free(i8* %79) #3
  br label %if.end.118

if.end.118:                                       ; preds = %if.end.117, %if.end.94
  %80 = load %struct.cab_archive*, %struct.cab_archive** %cab.addr, align 8
  %flags119 = getelementptr inbounds %struct.cab_archive, %struct.cab_archive* %80, i32 0, i32 3
  %81 = load i16, i16* %flags119, align 2
  %conv120 = zext i16 %81 to i32
  %and121 = and i32 %conv120, 2
  %tobool122 = icmp ne i32 %and121, 0
  br i1 %tobool122, label %if.then.123, label %if.end.142

if.then.123:                                      ; preds = %if.end.118
  %82 = load i32, i32* %fd.addr, align 4
  %call124 = call i8* @cab_readstr(i32 %82, i32* %ret)
  store i8* %call124, i8** %pt, align 8
  %83 = load i32, i32* %ret, align 4
  %tobool125 = icmp ne i32 %83, 0
  br i1 %tobool125, label %if.then.126, label %if.end.127

if.then.126:                                      ; preds = %if.then.123
  %84 = load i32, i32* %ret, align 4
  store i32 %84, i32* %retval
  br label %return

if.end.127:                                       ; preds = %if.then.123
  %85 = load i8*, i8** %pt, align 8
  %call128 = call i32 @cab_chkname(i8* %85)
  %tobool129 = icmp ne i32 %call128, 0
  br i1 %tobool129, label %if.then.130, label %if.else.131

if.then.130:                                      ; preds = %if.end.127
  store i32 1, i32* %badname, align 4
  br label %if.end.132

if.else.131:                                      ; preds = %if.end.127
  %86 = load i8*, i8** %pt, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i32 0, i32 0), i8* %86)
  br label %if.end.132

if.end.132:                                       ; preds = %if.else.131, %if.then.130
  %87 = load i8*, i8** %pt, align 8
  call void @free(i8* %87) #3
  %88 = load i32, i32* %fd.addr, align 4
  %call133 = call i8* @cab_readstr(i32 %88, i32* %ret)
  store i8* %call133, i8** %pt, align 8
  %89 = load i32, i32* %ret, align 4
  %tobool134 = icmp ne i32 %89, 0
  br i1 %tobool134, label %if.then.135, label %if.end.136

if.then.135:                                      ; preds = %if.end.132
  %90 = load i32, i32* %ret, align 4
  store i32 %90, i32* %retval
  br label %return

if.end.136:                                       ; preds = %if.end.132
  %91 = load i8*, i8** %pt, align 8
  %call137 = call i32 @cab_chkname(i8* %91)
  %tobool138 = icmp ne i32 %call137, 0
  br i1 %tobool138, label %if.then.139, label %if.else.140

if.then.139:                                      ; preds = %if.end.136
  store i32 1, i32* %badname, align 4
  br label %if.end.141

if.else.140:                                      ; preds = %if.end.136
  %92 = load i8*, i8** %pt, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i32 0, i32 0), i8* %92)
  br label %if.end.141

if.end.141:                                       ; preds = %if.else.140, %if.then.139
  %93 = load i8*, i8** %pt, align 8
  call void @free(i8* %93) #3
  br label %if.end.142

if.end.142:                                       ; preds = %if.end.141, %if.end.118
  %94 = load i32, i32* %badname, align 4
  %95 = load i32, i32* %bscore, align 4
  %add = add i32 %95, %94
  store i32 %add, i32* %bscore, align 4
  %96 = load i32, i32* %bscore, align 4
  %cmp143 = icmp uge i32 %96, 4
  br i1 %cmp143, label %if.then.145, label %if.end.146

if.then.145:                                      ; preds = %if.end.142
  %97 = load i32, i32* %bscore, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.19, i32 0, i32 0), i32 %97)
  store i32 -124, i32* %retval
  br label %return

if.end.146:                                       ; preds = %if.end.142
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.146
  %98 = load i32, i32* %i, align 4
  %99 = load %struct.cab_archive*, %struct.cab_archive** %cab.addr, align 8
  %nfolders147 = getelementptr inbounds %struct.cab_archive, %struct.cab_archive* %99, i32 0, i32 1
  %100 = load i16, i16* %nfolders147, align 2
  %conv148 = zext i16 %100 to i32
  %cmp149 = icmp ult i32 %98, %conv148
  br i1 %cmp149, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %101 = load i32, i32* %fd.addr, align 4
  %102 = bitcast %struct.cab_folder_hdr* %folder_hdr to i8*
  %call151 = call i32 @cli_readn(i32 %101, i8* %102, i32 8)
  %conv152 = sext i32 %call151 to i64
  %cmp153 = icmp ne i64 %conv152, 8
  br i1 %cmp153, label %if.then.155, label %if.end.156

if.then.155:                                      ; preds = %for.body
  %103 = load i32, i32* %i, align 4
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.20, i32 0, i32 0), i32 %103)
  %104 = load %struct.cab_archive*, %struct.cab_archive** %cab.addr, align 8
  call void @cab_free(%struct.cab_archive* %104)
  store i32 -123, i32* %retval
  br label %return

if.end.156:                                       ; preds = %for.body
  %105 = load i64, i64* %resfold, align 8
  %tobool157 = icmp ne i64 %105, 0
  br i1 %tobool157, label %if.then.158, label %if.end.165

if.then.158:                                      ; preds = %if.end.156
  %106 = load i32, i32* %fd.addr, align 4
  %107 = load i64, i64* %resfold, align 8
  %call159 = call i64 @lseek(i32 %106, i64 %107, i32 1) #3
  %cmp160 = icmp eq i64 %call159, -1
  br i1 %cmp160, label %if.then.162, label %if.end.164

if.then.162:                                      ; preds = %if.then.158
  %108 = load i64, i64* %resfold, align 8
  %conv163 = trunc i64 %108 to i32
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21, i32 0, i32 0), i32 %conv163)
  %109 = load %struct.cab_archive*, %struct.cab_archive** %cab.addr, align 8
  call void @cab_free(%struct.cab_archive* %109)
  store i32 -123, i32* %retval
  br label %return

if.end.164:                                       ; preds = %if.then.158
  br label %if.end.165

if.end.165:                                       ; preds = %if.end.164, %if.end.156
  %call166 = call i8* @cli_calloc(i64 1, i64 32)
  %110 = bitcast i8* %call166 to %struct.cab_folder*
  store %struct.cab_folder* %110, %struct.cab_folder** %folder, align 8
  %111 = load %struct.cab_folder*, %struct.cab_folder** %folder, align 8
  %tobool167 = icmp ne %struct.cab_folder* %111, null
  br i1 %tobool167, label %if.end.169, label %if.then.168

if.then.168:                                      ; preds = %if.end.165
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.22, i32 0, i32 0))
  %112 = load %struct.cab_archive*, %struct.cab_archive** %cab.addr, align 8
  call void @cab_free(%struct.cab_archive* %112)
  store i32 -114, i32* %retval
  br label %return

if.end.169:                                       ; preds = %if.end.165
  %113 = load %struct.cab_archive*, %struct.cab_archive** %cab.addr, align 8
  %114 = load %struct.cab_folder*, %struct.cab_folder** %folder, align 8
  %cab170 = getelementptr inbounds %struct.cab_folder, %struct.cab_folder* %114, i32 0, i32 2
  store %struct.cab_archive* %113, %struct.cab_archive** %cab170, align 8
  %coffCabStart = getelementptr inbounds %struct.cab_folder_hdr, %struct.cab_folder_hdr* %folder_hdr, i32 0, i32 0
  %115 = load i32, i32* %coffCabStart, align 4
  %conv171 = zext i32 %115 to i64
  %116 = load i64, i64* %offset.addr, align 8
  %add172 = add nsw i64 %conv171, %116
  %117 = load %struct.cab_folder*, %struct.cab_folder** %folder, align 8
  %offset173 = getelementptr inbounds %struct.cab_folder, %struct.cab_folder* %117, i32 0, i32 3
  store i64 %add172, i64* %offset173, align 8
  %118 = load %struct.cab_folder*, %struct.cab_folder** %folder, align 8
  %offset174 = getelementptr inbounds %struct.cab_folder, %struct.cab_folder* %118, i32 0, i32 3
  %119 = load i64, i64* %offset174, align 8
  %120 = load i64, i64* %rsize, align 8
  %cmp175 = icmp sgt i64 %119, %120
  br i1 %cmp175, label %if.then.177, label %if.end.179

if.then.177:                                      ; preds = %if.end.169
  %121 = load i32, i32* %bscore, align 4
  %inc178 = add i32 %121, 1
  store i32 %inc178, i32* %bscore, align 4
  br label %if.end.179

if.end.179:                                       ; preds = %if.then.177, %if.end.169
  %cCFData = getelementptr inbounds %struct.cab_folder_hdr, %struct.cab_folder_hdr* %folder_hdr, i32 0, i32 1
  %122 = load i16, i16* %cCFData, align 2
  %123 = load %struct.cab_folder*, %struct.cab_folder** %folder, align 8
  %nblocks = getelementptr inbounds %struct.cab_folder, %struct.cab_folder* %123, i32 0, i32 1
  store i16 %122, i16* %nblocks, align 2
  %typeCompress = getelementptr inbounds %struct.cab_folder_hdr, %struct.cab_folder_hdr* %folder_hdr, i32 0, i32 2
  %124 = load i16, i16* %typeCompress, align 2
  %125 = load %struct.cab_folder*, %struct.cab_folder** %folder, align 8
  %cmethod = getelementptr inbounds %struct.cab_folder, %struct.cab_folder* %125, i32 0, i32 0
  store i16 %124, i16* %cmethod, align 2
  %126 = load i32, i32* %i, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i32 0, i32 0), i32 %126)
  %127 = load %struct.cab_folder*, %struct.cab_folder** %folder, align 8
  %offset180 = getelementptr inbounds %struct.cab_folder, %struct.cab_folder* %127, i32 0, i32 3
  %128 = load i64, i64* %offset180, align 8
  %conv181 = trunc i64 %128 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.24, i32 0, i32 0), i32 %conv181)
  %129 = load %struct.cab_folder*, %struct.cab_folder** %folder, align 8
  %cmethod182 = getelementptr inbounds %struct.cab_folder, %struct.cab_folder* %129, i32 0, i32 0
  %130 = load i16, i16* %cmethod182, align 2
  %conv183 = zext i16 %130 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.25, i32 0, i32 0), i32 %conv183)
  %131 = load %struct.cab_folder*, %struct.cab_folder** %folder, align 8
  %cmethod184 = getelementptr inbounds %struct.cab_folder, %struct.cab_folder* %131, i32 0, i32 0
  %132 = load i16, i16* %cmethod184, align 2
  %conv185 = zext i16 %132 to i32
  %and186 = and i32 %conv185, 15
  %cmp187 = icmp sgt i32 %and186, 3
  br i1 %cmp187, label %if.then.189, label %if.end.191

if.then.189:                                      ; preds = %if.end.179
  %133 = load i32, i32* %bscore, align 4
  %inc190 = add i32 %133, 1
  store i32 %inc190, i32* %bscore, align 4
  br label %if.end.191

if.end.191:                                       ; preds = %if.then.189, %if.end.179
  %134 = load %struct.cab_folder*, %struct.cab_folder** %lfolder, align 8
  %tobool192 = icmp ne %struct.cab_folder* %134, null
  br i1 %tobool192, label %if.else.194, label %if.then.193

if.then.193:                                      ; preds = %if.end.191
  %135 = load %struct.cab_folder*, %struct.cab_folder** %folder, align 8
  %136 = load %struct.cab_archive*, %struct.cab_archive** %cab.addr, align 8
  %folders = getelementptr inbounds %struct.cab_archive, %struct.cab_archive* %136, i32 0, i32 6
  store %struct.cab_folder* %135, %struct.cab_folder** %folders, align 8
  br label %if.end.195

if.else.194:                                      ; preds = %if.end.191
  %137 = load %struct.cab_folder*, %struct.cab_folder** %folder, align 8
  %138 = load %struct.cab_folder*, %struct.cab_folder** %lfolder, align 8
  %next = getelementptr inbounds %struct.cab_folder, %struct.cab_folder* %138, i32 0, i32 4
  store %struct.cab_folder* %137, %struct.cab_folder** %next, align 8
  br label %if.end.195

if.end.195:                                       ; preds = %if.else.194, %if.then.193
  %139 = load %struct.cab_folder*, %struct.cab_folder** %folder, align 8
  store %struct.cab_folder* %139, %struct.cab_folder** %lfolder, align 8
  %140 = load i32, i32* %bscore, align 4
  %cmp196 = icmp ugt i32 %140, 10
  br i1 %cmp196, label %if.then.198, label %if.end.199

if.then.198:                                      ; preds = %if.end.195
  %141 = load %struct.cab_archive*, %struct.cab_archive** %cab.addr, align 8
  call void @cab_free(%struct.cab_archive* %141)
  %142 = load i32, i32* %bscore, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.19, i32 0, i32 0), i32 %142)
  store i32 -124, i32* %retval
  br label %return

if.end.199:                                       ; preds = %if.end.195
  br label %for.inc

for.inc:                                          ; preds = %if.end.199
  %143 = load i32, i32* %i, align 4
  %inc200 = add i32 %143, 1
  store i32 %inc200, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.201

for.cond.201:                                     ; preds = %for.inc.314, %for.end
  %144 = load i32, i32* %i, align 4
  %145 = load %struct.cab_archive*, %struct.cab_archive** %cab.addr, align 8
  %nfiles202 = getelementptr inbounds %struct.cab_archive, %struct.cab_archive* %145, i32 0, i32 2
  %146 = load i16, i16* %nfiles202, align 2
  %conv203 = zext i16 %146 to i32
  %cmp204 = icmp ult i32 %144, %conv203
  br i1 %cmp204, label %for.body.206, label %for.end.316

for.body.206:                                     ; preds = %for.cond.201
  %147 = load i32, i32* %bscore, align 4
  %cmp207 = icmp ugt i32 %147, 10
  br i1 %cmp207, label %if.then.209, label %if.end.210

if.then.209:                                      ; preds = %for.body.206
  %148 = load %struct.cab_archive*, %struct.cab_archive** %cab.addr, align 8
  call void @cab_free(%struct.cab_archive* %148)
  %149 = load i32, i32* %bscore, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.19, i32 0, i32 0), i32 %149)
  store i32 -124, i32* %retval
  br label %return

if.end.210:                                       ; preds = %for.body.206
  %150 = load i32, i32* %fd.addr, align 4
  %151 = bitcast %struct.cab_file_hdr* %file_hdr to i8*
  %call211 = call i32 @cli_readn(i32 %150, i8* %151, i32 16)
  %conv212 = sext i32 %call211 to i64
  %cmp213 = icmp ne i64 %conv212, 16
  br i1 %cmp213, label %if.then.215, label %if.end.216

if.then.215:                                      ; preds = %if.end.210
  %152 = load i32, i32* %i, align 4
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.26, i32 0, i32 0), i32 %152)
  %153 = load %struct.cab_archive*, %struct.cab_archive** %cab.addr, align 8
  call void @cab_free(%struct.cab_archive* %153)
  store i32 -123, i32* %retval
  br label %return

if.end.216:                                       ; preds = %if.end.210
  %call217 = call i8* @cli_calloc(i64 1, i64 72)
  %154 = bitcast i8* %call217 to %struct.cab_file*
  store %struct.cab_file* %154, %struct.cab_file** %file, align 8
  %155 = load %struct.cab_file*, %struct.cab_file** %file, align 8
  %tobool218 = icmp ne %struct.cab_file* %155, null
  br i1 %tobool218, label %if.end.220, label %if.then.219

if.then.219:                                      ; preds = %if.end.216
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.27, i32 0, i32 0))
  %156 = load %struct.cab_archive*, %struct.cab_archive** %cab.addr, align 8
  call void @cab_free(%struct.cab_archive* %156)
  store i32 -114, i32* %retval
  br label %return

if.end.220:                                       ; preds = %if.end.216
  %157 = load %struct.cab_archive*, %struct.cab_archive** %cab.addr, align 8
  %158 = load %struct.cab_file*, %struct.cab_file** %file, align 8
  %cab221 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %158, i32 0, i32 9
  store %struct.cab_archive* %157, %struct.cab_archive** %cab221, align 8
  %159 = load i32, i32* %fd.addr, align 4
  %160 = load %struct.cab_file*, %struct.cab_file** %file, align 8
  %fd222 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %160, i32 0, i32 5
  store i32 %159, i32* %fd222, align 4
  %cbFile = getelementptr inbounds %struct.cab_file_hdr, %struct.cab_file_hdr* %file_hdr, i32 0, i32 0
  %161 = load i32, i32* %cbFile, align 4
  %162 = load %struct.cab_file*, %struct.cab_file** %file, align 8
  %length223 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %162, i32 0, i32 0
  store i32 %161, i32* %length223, align 4
  %uoffFolderStart = getelementptr inbounds %struct.cab_file_hdr, %struct.cab_file_hdr* %file_hdr, i32 0, i32 1
  %163 = load i32, i32* %uoffFolderStart, align 4
  %conv224 = zext i32 %163 to i64
  %164 = load %struct.cab_file*, %struct.cab_file** %file, align 8
  %offset225 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %164, i32 0, i32 2
  store i64 %conv224, i64* %offset225, align 8
  %attribs = getelementptr inbounds %struct.cab_file_hdr, %struct.cab_file_hdr* %file_hdr, i32 0, i32 5
  %165 = load i16, i16* %attribs, align 2
  %166 = load %struct.cab_file*, %struct.cab_file** %file, align 8
  %attribs226 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %166, i32 0, i32 1
  store i16 %165, i16* %attribs226, align 2
  %iFolder = getelementptr inbounds %struct.cab_file_hdr, %struct.cab_file_hdr* %file_hdr, i32 0, i32 2
  %167 = load i16, i16* %iFolder, align 2
  store i16 %167, i16* %fidx, align 2
  %168 = load i32, i32* %fd.addr, align 4
  %call227 = call i8* @cab_readstr(i32 %168, i32* %ret)
  %169 = load %struct.cab_file*, %struct.cab_file** %file, align 8
  %name = getelementptr inbounds %struct.cab_file, %struct.cab_file* %169, i32 0, i32 3
  store i8* %call227, i8** %name, align 8
  %170 = load i32, i32* %ret, align 4
  %tobool228 = icmp ne i32 %170, 0
  br i1 %tobool228, label %if.then.229, label %if.end.230

if.then.229:                                      ; preds = %if.end.220
  %171 = load %struct.cab_file*, %struct.cab_file** %file, align 8
  %172 = bitcast %struct.cab_file* %171 to i8*
  call void @free(i8* %172) #3
  %173 = load %struct.cab_archive*, %struct.cab_archive** %cab.addr, align 8
  call void @cab_free(%struct.cab_archive* %173)
  %174 = load i32, i32* %ret, align 4
  store i32 %174, i32* %retval
  br label %return

if.end.230:                                       ; preds = %if.end.220
  %175 = load i32, i32* %i, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.28, i32 0, i32 0), i32 %175)
  %176 = load %struct.cab_file*, %struct.cab_file** %file, align 8
  %name231 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %176, i32 0, i32 3
  %177 = load i8*, i8** %name231, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.29, i32 0, i32 0), i8* %177)
  %178 = load %struct.cab_file*, %struct.cab_file** %file, align 8
  %offset232 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %178, i32 0, i32 2
  %179 = load i64, i64* %offset232, align 8
  %conv233 = trunc i64 %179 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.30, i32 0, i32 0), i32 %conv233)
  %180 = load i16, i16* %fidx, align 2
  %conv234 = zext i16 %180 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.31, i32 0, i32 0), i32 %conv234)
  %181 = load %struct.cab_file*, %struct.cab_file** %file, align 8
  %attribs235 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %181, i32 0, i32 1
  %182 = load i16, i16* %attribs235, align 2
  %conv236 = zext i16 %182 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.32, i32 0, i32 0), i32 %conv236)
  %183 = load %struct.cab_file*, %struct.cab_file** %file, align 8
  %attribs237 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %183, i32 0, i32 1
  %184 = load i16, i16* %attribs237, align 2
  %conv238 = zext i16 %184 to i32
  %and239 = and i32 %conv238, 1
  %tobool240 = icmp ne i32 %and239, 0
  br i1 %tobool240, label %if.then.241, label %if.end.242

if.then.241:                                      ; preds = %if.end.230
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.33, i32 0, i32 0))
  br label %if.end.242

if.end.242:                                       ; preds = %if.then.241, %if.end.230
  %185 = load %struct.cab_file*, %struct.cab_file** %file, align 8
  %attribs243 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %185, i32 0, i32 1
  %186 = load i16, i16* %attribs243, align 2
  %conv244 = zext i16 %186 to i32
  %and245 = and i32 %conv244, 2
  %tobool246 = icmp ne i32 %and245, 0
  br i1 %tobool246, label %if.then.247, label %if.end.248

if.then.247:                                      ; preds = %if.end.242
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.34, i32 0, i32 0))
  br label %if.end.248

if.end.248:                                       ; preds = %if.then.247, %if.end.242
  %187 = load %struct.cab_file*, %struct.cab_file** %file, align 8
  %attribs249 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %187, i32 0, i32 1
  %188 = load i16, i16* %attribs249, align 2
  %conv250 = zext i16 %188 to i32
  %and251 = and i32 %conv250, 4
  %tobool252 = icmp ne i32 %and251, 0
  br i1 %tobool252, label %if.then.253, label %if.end.254

if.then.253:                                      ; preds = %if.end.248
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.35, i32 0, i32 0))
  br label %if.end.254

if.end.254:                                       ; preds = %if.then.253, %if.end.248
  %189 = load %struct.cab_file*, %struct.cab_file** %file, align 8
  %attribs255 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %189, i32 0, i32 1
  %190 = load i16, i16* %attribs255, align 2
  %conv256 = zext i16 %190 to i32
  %and257 = and i32 %conv256, 32
  %tobool258 = icmp ne i32 %and257, 0
  br i1 %tobool258, label %if.then.259, label %if.end.260

if.then.259:                                      ; preds = %if.end.254
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.36, i32 0, i32 0))
  br label %if.end.260

if.end.260:                                       ; preds = %if.then.259, %if.end.254
  %191 = load %struct.cab_file*, %struct.cab_file** %file, align 8
  %attribs261 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %191, i32 0, i32 1
  %192 = load i16, i16* %attribs261, align 2
  %conv262 = zext i16 %192 to i32
  %and263 = and i32 %conv262, 64
  %tobool264 = icmp ne i32 %and263, 0
  br i1 %tobool264, label %if.then.265, label %if.end.266

if.then.265:                                      ; preds = %if.end.260
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.37, i32 0, i32 0))
  br label %if.end.266

if.end.266:                                       ; preds = %if.then.265, %if.end.260
  %193 = load %struct.cab_file*, %struct.cab_file** %file, align 8
  %attribs267 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %193, i32 0, i32 1
  %194 = load i16, i16* %attribs267, align 2
  %conv268 = zext i16 %194 to i32
  %and269 = and i32 %conv268, 128
  %tobool270 = icmp ne i32 %and269, 0
  br i1 %tobool270, label %if.then.271, label %if.end.272

if.then.271:                                      ; preds = %if.end.266
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.38, i32 0, i32 0))
  br label %if.end.272

if.end.272:                                       ; preds = %if.then.271, %if.end.266
  %195 = load i16, i16* %fidx, align 2
  %conv273 = zext i16 %195 to i32
  %cmp274 = icmp slt i32 %conv273, 65533
  br i1 %cmp274, label %if.then.276, label %if.else.306

if.then.276:                                      ; preds = %if.end.272
  %196 = load i16, i16* %fidx, align 2
  %conv277 = zext i16 %196 to i32
  %197 = load %struct.cab_archive*, %struct.cab_archive** %cab.addr, align 8
  %nfolders278 = getelementptr inbounds %struct.cab_archive, %struct.cab_archive* %197, i32 0, i32 1
  %198 = load i16, i16* %nfolders278, align 2
  %conv279 = zext i16 %198 to i32
  %cmp280 = icmp sgt i32 %conv277, %conv279
  br i1 %cmp280, label %if.then.282, label %if.end.290

if.then.282:                                      ; preds = %if.then.276
  %199 = load i32, i32* %bscore, align 4
  %cmp283 = icmp ult i32 %199, 3
  br i1 %cmp283, label %if.then.285, label %if.end.287

if.then.285:                                      ; preds = %if.then.282
  %200 = load %struct.cab_file*, %struct.cab_file** %file, align 8
  %name286 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %200, i32 0, i32 3
  %201 = load i8*, i8** %name286, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.39, i32 0, i32 0), i8* %201)
  br label %if.end.287

if.end.287:                                       ; preds = %if.then.285, %if.then.282
  %202 = load i32, i32* %bscore, align 4
  %inc288 = add i32 %202, 1
  store i32 %inc288, i32* %bscore, align 4
  %203 = load %struct.cab_file*, %struct.cab_file** %file, align 8
  %name289 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %203, i32 0, i32 3
  %204 = load i8*, i8** %name289, align 8
  call void @free(i8* %204) #3
  %205 = load %struct.cab_file*, %struct.cab_file** %file, align 8
  %206 = bitcast %struct.cab_file* %205 to i8*
  call void @free(i8* %206) #3
  br label %for.inc.314

if.end.290:                                       ; preds = %if.then.276
  %207 = load %struct.cab_archive*, %struct.cab_archive** %cab.addr, align 8
  %folders291 = getelementptr inbounds %struct.cab_archive, %struct.cab_archive* %207, i32 0, i32 6
  %208 = load %struct.cab_folder*, %struct.cab_folder** %folders291, align 8
  %209 = load %struct.cab_file*, %struct.cab_file** %file, align 8
  %folder292 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %209, i32 0, i32 7
  store %struct.cab_folder* %208, %struct.cab_folder** %folder292, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.290
  %210 = load %struct.cab_file*, %struct.cab_file** %file, align 8
  %folder293 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %210, i32 0, i32 7
  %211 = load %struct.cab_folder*, %struct.cab_folder** %folder293, align 8
  %tobool294 = icmp ne %struct.cab_folder* %211, null
  br i1 %tobool294, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %212 = load i16, i16* %fidx, align 2
  %dec = add i16 %212, -1
  store i16 %dec, i16* %fidx, align 2
  %conv295 = zext i16 %212 to i32
  %tobool296 = icmp ne i32 %conv295, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %213 = phi i1 [ false, %while.cond ], [ %tobool296, %land.rhs ]
  br i1 %213, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %214 = load %struct.cab_file*, %struct.cab_file** %file, align 8
  %folder297 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %214, i32 0, i32 7
  %215 = load %struct.cab_folder*, %struct.cab_folder** %folder297, align 8
  %next298 = getelementptr inbounds %struct.cab_folder, %struct.cab_folder* %215, i32 0, i32 4
  %216 = load %struct.cab_folder*, %struct.cab_folder** %next298, align 8
  %217 = load %struct.cab_file*, %struct.cab_file** %file, align 8
  %folder299 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %217, i32 0, i32 7
  store %struct.cab_folder* %216, %struct.cab_folder** %folder299, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %218 = load %struct.cab_file*, %struct.cab_file** %file, align 8
  %folder300 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %218, i32 0, i32 7
  %219 = load %struct.cab_folder*, %struct.cab_folder** %folder300, align 8
  %tobool301 = icmp ne %struct.cab_folder* %219, null
  br i1 %tobool301, label %if.end.305, label %if.then.302

if.then.302:                                      ; preds = %while.end
  %220 = load %struct.cab_file*, %struct.cab_file** %file, align 8
  %name303 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %220, i32 0, i32 3
  %221 = load i8*, i8** %name303, align 8
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.40, i32 0, i32 0), i8* %221)
  %222 = load %struct.cab_file*, %struct.cab_file** %file, align 8
  %name304 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %222, i32 0, i32 3
  %223 = load i8*, i8** %name304, align 8
  call void @free(i8* %223) #3
  %224 = load %struct.cab_file*, %struct.cab_file** %file, align 8
  %225 = bitcast %struct.cab_file* %224 to i8*
  call void @free(i8* %225) #3
  %226 = load %struct.cab_archive*, %struct.cab_archive** %cab.addr, align 8
  call void @cab_free(%struct.cab_archive* %226)
  store i32 -124, i32* %retval
  br label %return

if.end.305:                                       ; preds = %while.end
  br label %if.end.308

if.else.306:                                      ; preds = %if.end.272
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.41, i32 0, i32 0))
  %227 = load %struct.cab_file*, %struct.cab_file** %file, align 8
  %name307 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %227, i32 0, i32 3
  %228 = load i8*, i8** %name307, align 8
  call void @free(i8* %228) #3
  %229 = load %struct.cab_file*, %struct.cab_file** %file, align 8
  %230 = bitcast %struct.cab_file* %229 to i8*
  call void @free(i8* %230) #3
  br label %for.inc.314

if.end.308:                                       ; preds = %if.end.305
  %231 = load %struct.cab_file*, %struct.cab_file** %lfile, align 8
  %tobool309 = icmp ne %struct.cab_file* %231, null
  br i1 %tobool309, label %if.else.311, label %if.then.310

if.then.310:                                      ; preds = %if.end.308
  %232 = load %struct.cab_file*, %struct.cab_file** %file, align 8
  %233 = load %struct.cab_archive*, %struct.cab_archive** %cab.addr, align 8
  %files = getelementptr inbounds %struct.cab_archive, %struct.cab_archive* %233, i32 0, i32 7
  store %struct.cab_file* %232, %struct.cab_file** %files, align 8
  br label %if.end.313

if.else.311:                                      ; preds = %if.end.308
  %234 = load %struct.cab_file*, %struct.cab_file** %file, align 8
  %235 = load %struct.cab_file*, %struct.cab_file** %lfile, align 8
  %next312 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %235, i32 0, i32 8
  store %struct.cab_file* %234, %struct.cab_file** %next312, align 8
  br label %if.end.313

if.end.313:                                       ; preds = %if.else.311, %if.then.310
  %236 = load %struct.cab_file*, %struct.cab_file** %file, align 8
  store %struct.cab_file* %236, %struct.cab_file** %lfile, align 8
  br label %for.inc.314

for.inc.314:                                      ; preds = %if.end.313, %if.else.306, %if.end.287
  %237 = load i32, i32* %i, align 4
  %inc315 = add i32 %237, 1
  store i32 %inc315, i32* %i, align 4
  br label %for.cond.201

for.end.316:                                      ; preds = %for.cond.201
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.316, %if.then.302, %if.then.229, %if.then.219, %if.then.215, %if.then.209, %if.then.198, %if.then.168, %if.then.162, %if.then.155, %if.then.145, %if.then.135, %if.then.126, %if.then.111, %if.then.102, %if.then.89, %if.then.78, %if.then.41, %if.then.24, %if.then.14, %if.then.9, %if.then.5, %if.then
  %238 = load i32, i32* %retval
  ret i32 %238
}

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) #1

declare void @cli_errmsg(i8*, ...) #2

declare i32 @cli_readn(i32, i8*, i32) #2

declare void @cli_dbgmsg(i8*, ...) #2

; Function Attrs: nounwind
declare i32 @fstat(i32, %struct.stat*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define internal i8* @cab_readstr(i32 %fd, i32* %ret) #0 {
entry:
  %retval = alloca i8*, align 8
  %fd.addr = alloca i32, align 4
  %ret.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %bread = alloca i32, align 4
  %found = alloca i32, align 4
  %buff = alloca [256 x i8], align 16
  %str = alloca i8*, align 8
  %pos = alloca i64, align 8
  store i32 %fd, i32* %fd.addr, align 4
  store i32* %ret, i32** %ret.addr, align 8
  store i32 0, i32* %found, align 4
  %0 = load i32, i32* %fd.addr, align 4
  %call = call i64 @lseek(i32 %0, i64 0, i32 1) #3
  store i64 %call, i64* %pos, align 8
  %cmp = icmp eq i64 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %ret.addr, align 8
  store i32 -123, i32* %1, align 4
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %fd.addr, align 4
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %buff, i32 0, i32 0
  %call1 = call i64 @read(i32 %2, i8* %arraydecay, i64 256)
  %conv = trunc i64 %call1 to i32
  store i32 %conv, i32* %bread, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %bread, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %buff, i32 0, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %tobool = icmp ne i8 %6, 0
  br i1 %tobool, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %for.body
  store i32 1, i32* %found, align 4
  br label %for.end

if.end.5:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.5
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.4, %for.cond
  %8 = load i32, i32* %found, align 4
  %tobool6 = icmp ne i32 %8, 0
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %for.end
  %9 = load i32*, i32** %ret.addr, align 8
  store i32 -124, i32* %9, align 4
  store i8* null, i8** %retval
  br label %return

if.end.8:                                         ; preds = %for.end
  %10 = load i32, i32* %fd.addr, align 4
  %11 = load i64, i64* %pos, align 8
  %12 = load i32, i32* %i, align 4
  %conv9 = sext i32 %12 to i64
  %add = add nsw i64 %11, %conv9
  %add10 = add nsw i64 %add, 1
  %call11 = call i64 @lseek(i32 %10, i64 %add10, i32 0) #3
  %cmp12 = icmp eq i64 %call11, -1
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.8
  %13 = load i32*, i32** %ret.addr, align 8
  store i32 -123, i32* %13, align 4
  store i8* null, i8** %retval
  br label %return

if.end.15:                                        ; preds = %if.end.8
  %arraydecay16 = getelementptr inbounds [256 x i8], [256 x i8]* %buff, i32 0, i32 0
  %call17 = call i8* @cli_strdup(i8* %arraydecay16)
  store i8* %call17, i8** %str, align 8
  %tobool18 = icmp ne i8* %call17, null
  br i1 %tobool18, label %if.end.20, label %if.then.19

if.then.19:                                       ; preds = %if.end.15
  %14 = load i32*, i32** %ret.addr, align 8
  store i32 -114, i32* %14, align 4
  store i8* null, i8** %retval
  br label %return

if.end.20:                                        ; preds = %if.end.15
  %15 = load i32*, i32** %ret.addr, align 8
  store i32 0, i32* %15, align 4
  %16 = load i8*, i8** %str, align 8
  store i8* %16, i8** %retval
  br label %return

return:                                           ; preds = %if.end.20, %if.then.19, %if.then.14, %if.then.7, %if.then
  %17 = load i8*, i8** %retval
  ret i8* %17
}

; Function Attrs: nounwind uwtable
define internal i32 @cab_chkname(i8* %name) #0 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %i = alloca i64, align 8
  %len = alloca i64, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %call = call i64 @strlen(i8* %0) #5
  store i64 %call, i64* %len, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %i, align 8
  %2 = load i64, i64* %len, align 8
  %cmp = icmp ult i64 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i64, i64* %i, align 8
  %4 = load i8*, i8** %name.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %3
  %5 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %5 to i32
  %call1 = call i8* @strchr(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.51, i32 0, i32 0), i32 %conv) #5
  %tobool = icmp ne i8* %call1, null
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %6 = load i64, i64* %i, align 8
  %7 = load i8*, i8** %name.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %7, i64 %6
  %8 = load i8, i8* %arrayidx2, align 1
  %conv3 = sext i8 %8 to i32
  %and = and i32 %conv3, -128
  %cmp4 = icmp eq i32 %and, 0
  br i1 %cmp4, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %for.body
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.52, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i64, i64* %i, align 8
  %inc = add i64 %9, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

declare i8* @cli_calloc(i64, i64) #2

; Function Attrs: nounwind uwtable
define i32 @cab_extract(%struct.cab_file* %file, i8* %name) #0 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca %struct.cab_file*, align 8
  %name.addr = alloca i8*, align 8
  %folder = alloca %struct.cab_folder*, align 8
  %ret = alloca i32, align 4
  store %struct.cab_file* %file, %struct.cab_file** %file.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %tobool = icmp ne %struct.cab_file* %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %name.addr, align 8
  %tobool1 = icmp ne i8* %1, null
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.42, i32 0, i32 0))
  store i32 -111, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %folder2 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %2, i32 0, i32 7
  %3 = load %struct.cab_folder*, %struct.cab_folder** %folder2, align 8
  store %struct.cab_folder* %3, %struct.cab_folder** %folder, align 8
  %tobool3 = icmp ne %struct.cab_folder* %3, null
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.43, i32 0, i32 0))
  store i32 -111, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %4 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %fd = getelementptr inbounds %struct.cab_file, %struct.cab_file* %4, i32 0, i32 5
  %5 = load i32, i32* %fd, align 4
  %6 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %folder6 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %6, i32 0, i32 7
  %7 = load %struct.cab_folder*, %struct.cab_folder** %folder6, align 8
  %offset = getelementptr inbounds %struct.cab_folder, %struct.cab_folder* %7, i32 0, i32 3
  %8 = load i64, i64* %offset, align 8
  %call = call i64 @lseek(i32 %5, i64 %8, i32 0) #3
  %cmp = icmp eq i64 %call, -1
  br i1 %cmp, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %if.end.5
  %9 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %folder8 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %9, i32 0, i32 7
  %10 = load %struct.cab_folder*, %struct.cab_folder** %folder8, align 8
  %offset9 = getelementptr inbounds %struct.cab_folder, %struct.cab_folder* %10, i32 0, i32 3
  %11 = load i64, i64* %offset9, align 8
  %conv = trunc i64 %11 to i32
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.44, i32 0, i32 0), i32 %conv)
  store i32 -123, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end.5
  %call11 = call i8* @cli_calloc(i64 1, i64 38952)
  %12 = bitcast i8* %call11 to %struct.cab_state*
  %13 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %state = getelementptr inbounds %struct.cab_file, %struct.cab_file* %13, i32 0, i32 10
  store %struct.cab_state* %12, %struct.cab_state** %state, align 8
  %14 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %state12 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %14, i32 0, i32 10
  %15 = load %struct.cab_state*, %struct.cab_state** %state12, align 8
  %tobool13 = icmp ne %struct.cab_state* %15, null
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %if.end.10
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.45, i32 0, i32 0))
  store i32 -123, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.end.10
  %16 = load i8*, i8** %name.addr, align 8
  %call16 = call i32 (i8*, i32, ...) @open(i8* %16, i32 577, i32 448)
  %17 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %ofd = getelementptr inbounds %struct.cab_file, %struct.cab_file* %17, i32 0, i32 6
  store i32 %call16, i32* %ofd, align 4
  %18 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %ofd17 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %18, i32 0, i32 6
  %19 = load i32, i32* %ofd17, align 4
  %cmp18 = icmp eq i32 %19, -1
  br i1 %cmp18, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %if.end.15
  %20 = load i8*, i8** %name.addr, align 8
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.46, i32 0, i32 0), i8* %20)
  %21 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %state21 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %21, i32 0, i32 10
  %22 = load %struct.cab_state*, %struct.cab_state** %state21, align 8
  %23 = bitcast %struct.cab_state* %22 to i8*
  call void @free(i8* %23) #3
  store i32 -123, i32* %retval
  br label %return

if.end.22:                                        ; preds = %if.end.15
  %24 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %folder23 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %24, i32 0, i32 7
  %25 = load %struct.cab_folder*, %struct.cab_folder** %folder23, align 8
  %cmethod = getelementptr inbounds %struct.cab_folder, %struct.cab_folder* %25, i32 0, i32 0
  %26 = load i16, i16* %cmethod, align 2
  %conv24 = zext i16 %26 to i32
  %and = and i32 %conv24, 15
  switch i32 %and, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.34
    i32 2, label %sw.bb.92
    i32 3, label %sw.bb.132
  ]

sw.bb:                                            ; preds = %if.end.22
  %27 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %offset25 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %27, i32 0, i32 2
  %28 = load i64, i64* %offset25, align 8
  %cmp26 = icmp sgt i64 %28, 0
  br i1 %cmp26, label %if.then.28, label %if.end.32

if.then.28:                                       ; preds = %sw.bb
  %29 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %30 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %offset29 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %30, i32 0, i32 2
  %31 = load i64, i64* %offset29, align 8
  %conv30 = trunc i64 %31 to i32
  %call31 = call i32 @cab_unstore(%struct.cab_file* %29, i32 %conv30, i8 zeroext 0)
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.28, %sw.bb
  %32 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %33 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %length = getelementptr inbounds %struct.cab_file, %struct.cab_file* %33, i32 0, i32 0
  %34 = load i32, i32* %length, align 4
  %call33 = call i32 @cab_unstore(%struct.cab_file* %32, i32 %34, i8 zeroext 1)
  store i32 %call33, i32* %ret, align 4
  br label %sw.epilog

sw.bb.34:                                         ; preds = %if.end.22
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.47, i32 0, i32 0))
  %35 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %fd35 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %35, i32 0, i32 5
  %36 = load i32, i32* %fd35, align 4
  %37 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %ofd36 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %37, i32 0, i32 6
  %38 = load i32, i32* %ofd36, align 4
  %39 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %call37 = call %struct.mszip_stream* @mszip_init(i32 %36, i32 %38, i32 4096, i32 1, %struct.cab_file* %39, i32 (%struct.cab_file*, i8*, i32)* @cab_read)
  %40 = bitcast %struct.mszip_stream* %call37 to i8*
  %41 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %state38 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %41, i32 0, i32 10
  %42 = load %struct.cab_state*, %struct.cab_state** %state38, align 8
  %stream = getelementptr inbounds %struct.cab_state, %struct.cab_state* %42, i32 0, i32 5
  store i8* %40, i8** %stream, align 8
  %43 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %state39 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %43, i32 0, i32 10
  %44 = load %struct.cab_state*, %struct.cab_state** %state39, align 8
  %stream40 = getelementptr inbounds %struct.cab_state, %struct.cab_state* %44, i32 0, i32 5
  %45 = load i8*, i8** %stream40, align 8
  %tobool41 = icmp ne i8* %45, null
  br i1 %tobool41, label %if.end.46, label %if.then.42

if.then.42:                                       ; preds = %sw.bb.34
  %46 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %state43 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %46, i32 0, i32 10
  %47 = load %struct.cab_state*, %struct.cab_state** %state43, align 8
  %48 = bitcast %struct.cab_state* %47 to i8*
  call void @free(i8* %48) #3
  %49 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %ofd44 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %49, i32 0, i32 6
  %50 = load i32, i32* %ofd44, align 4
  %call45 = call i32 @close(i32 %50)
  store i32 -109, i32* %retval
  br label %return

if.end.46:                                        ; preds = %sw.bb.34
  %51 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %offset47 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %51, i32 0, i32 2
  %52 = load i64, i64* %offset47, align 8
  %cmp48 = icmp sgt i64 %52, 0
  br i1 %cmp48, label %if.then.50, label %if.end.84

if.then.50:                                       ; preds = %if.end.46
  %53 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %state51 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %53, i32 0, i32 10
  %54 = load %struct.cab_state*, %struct.cab_state** %state51, align 8
  %stream52 = getelementptr inbounds %struct.cab_state, %struct.cab_state* %54, i32 0, i32 5
  %55 = load i8*, i8** %stream52, align 8
  %56 = bitcast i8* %55 to %struct.mszip_stream*
  %wflag = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %56, i32 0, i32 2
  store i8 0, i8* %wflag, align 1
  %57 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %state53 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %57, i32 0, i32 10
  %58 = load %struct.cab_state*, %struct.cab_state** %state53, align 8
  %stream54 = getelementptr inbounds %struct.cab_state, %struct.cab_state* %58, i32 0, i32 5
  %59 = load i8*, i8** %stream54, align 8
  %60 = bitcast i8* %59 to %struct.mszip_stream*
  %61 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %offset55 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %61, i32 0, i32 2
  %62 = load i64, i64* %offset55, align 8
  %call56 = call i32 @mszip_decompress(%struct.mszip_stream* %60, i64 %62)
  store i32 %call56, i32* %ret, align 4
  %63 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %state57 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %63, i32 0, i32 10
  %64 = load %struct.cab_state*, %struct.cab_state** %state57, align 8
  %stream58 = getelementptr inbounds %struct.cab_state, %struct.cab_state* %64, i32 0, i32 5
  %65 = load i8*, i8** %stream58, align 8
  %66 = bitcast i8* %65 to %struct.mszip_stream*
  %wflag59 = getelementptr inbounds %struct.mszip_stream, %struct.mszip_stream* %66, i32 0, i32 2
  store i8 1, i8* %wflag59, align 1
  %67 = load i32, i32* %ret, align 4
  %cmp60 = icmp slt i32 %67, 0
  br i1 %cmp60, label %if.then.62, label %if.end.83

if.then.62:                                       ; preds = %if.then.50
  %68 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %state63 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %68, i32 0, i32 10
  %69 = load %struct.cab_state*, %struct.cab_state** %state63, align 8
  %stream64 = getelementptr inbounds %struct.cab_state, %struct.cab_state* %69, i32 0, i32 5
  %70 = load i8*, i8** %stream64, align 8
  %71 = bitcast i8* %70 to %struct.mszip_stream*
  call void @mszip_free(%struct.mszip_stream* %71)
  %72 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %state65 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %72, i32 0, i32 10
  %73 = load %struct.cab_state*, %struct.cab_state** %state65, align 8
  %74 = bitcast %struct.cab_state* %73 to i8*
  call void @llvm.memset.p0i8.i64(i8* %74, i8 0, i64 38952, i32 8, i1 false)
  %75 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %fd66 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %75, i32 0, i32 5
  %76 = load i32, i32* %fd66, align 4
  %77 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %ofd67 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %77, i32 0, i32 6
  %78 = load i32, i32* %ofd67, align 4
  %79 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %call68 = call %struct.mszip_stream* @mszip_init(i32 %76, i32 %78, i32 4096, i32 1, %struct.cab_file* %79, i32 (%struct.cab_file*, i8*, i32)* @cab_read)
  %80 = bitcast %struct.mszip_stream* %call68 to i8*
  %81 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %state69 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %81, i32 0, i32 10
  %82 = load %struct.cab_state*, %struct.cab_state** %state69, align 8
  %stream70 = getelementptr inbounds %struct.cab_state, %struct.cab_state* %82, i32 0, i32 5
  store i8* %80, i8** %stream70, align 8
  %83 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %state71 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %83, i32 0, i32 10
  %84 = load %struct.cab_state*, %struct.cab_state** %state71, align 8
  %stream72 = getelementptr inbounds %struct.cab_state, %struct.cab_state* %84, i32 0, i32 5
  %85 = load i8*, i8** %stream72, align 8
  %tobool73 = icmp ne i8* %85, null
  br i1 %tobool73, label %if.end.78, label %if.then.74

if.then.74:                                       ; preds = %if.then.62
  %86 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %state75 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %86, i32 0, i32 10
  %87 = load %struct.cab_state*, %struct.cab_state** %state75, align 8
  %88 = bitcast %struct.cab_state* %87 to i8*
  call void @free(i8* %88) #3
  %89 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %ofd76 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %89, i32 0, i32 6
  %90 = load i32, i32* %ofd76, align 4
  %call77 = call i32 @close(i32 %90)
  store i32 -109, i32* %retval
  br label %return

if.end.78:                                        ; preds = %if.then.62
  %91 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %fd79 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %91, i32 0, i32 5
  %92 = load i32, i32* %fd79, align 4
  %93 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %folder80 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %93, i32 0, i32 7
  %94 = load %struct.cab_folder*, %struct.cab_folder** %folder80, align 8
  %offset81 = getelementptr inbounds %struct.cab_folder, %struct.cab_folder* %94, i32 0, i32 3
  %95 = load i64, i64* %offset81, align 8
  %call82 = call i64 @lseek(i32 %92, i64 %95, i32 0) #3
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.78, %if.then.50
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.end.46
  %96 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %state85 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %96, i32 0, i32 10
  %97 = load %struct.cab_state*, %struct.cab_state** %state85, align 8
  %stream86 = getelementptr inbounds %struct.cab_state, %struct.cab_state* %97, i32 0, i32 5
  %98 = load i8*, i8** %stream86, align 8
  %99 = bitcast i8* %98 to %struct.mszip_stream*
  %100 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %length87 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %100, i32 0, i32 0
  %101 = load i32, i32* %length87, align 4
  %conv88 = zext i32 %101 to i64
  %call89 = call i32 @mszip_decompress(%struct.mszip_stream* %99, i64 %conv88)
  store i32 %call89, i32* %ret, align 4
  %102 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %state90 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %102, i32 0, i32 10
  %103 = load %struct.cab_state*, %struct.cab_state** %state90, align 8
  %stream91 = getelementptr inbounds %struct.cab_state, %struct.cab_state* %103, i32 0, i32 5
  %104 = load i8*, i8** %stream91, align 8
  %105 = bitcast i8* %104 to %struct.mszip_stream*
  call void @mszip_free(%struct.mszip_stream* %105)
  br label %sw.epilog

sw.bb.92:                                         ; preds = %if.end.22
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.48, i32 0, i32 0))
  %106 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %fd93 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %106, i32 0, i32 5
  %107 = load i32, i32* %fd93, align 4
  %108 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %ofd94 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %108, i32 0, i32 6
  %109 = load i32, i32* %ofd94, align 4
  %110 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %folder95 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %110, i32 0, i32 7
  %111 = load %struct.cab_folder*, %struct.cab_folder** %folder95, align 8
  %cmethod96 = getelementptr inbounds %struct.cab_folder, %struct.cab_folder* %111, i32 0, i32 0
  %112 = load i16, i16* %cmethod96, align 2
  %conv97 = zext i16 %112 to i32
  %shr = ashr i32 %conv97, 8
  %and98 = and i32 %shr, 31
  %113 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %call99 = call %struct.qtm_stream* @qtm_init(i32 %107, i32 %109, i32 %and98, i32 4096, %struct.cab_file* %113, i32 (%struct.cab_file*, i8*, i32)* @cab_read)
  %114 = bitcast %struct.qtm_stream* %call99 to i8*
  %115 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %state100 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %115, i32 0, i32 10
  %116 = load %struct.cab_state*, %struct.cab_state** %state100, align 8
  %stream101 = getelementptr inbounds %struct.cab_state, %struct.cab_state* %116, i32 0, i32 5
  store i8* %114, i8** %stream101, align 8
  %117 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %state102 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %117, i32 0, i32 10
  %118 = load %struct.cab_state*, %struct.cab_state** %state102, align 8
  %stream103 = getelementptr inbounds %struct.cab_state, %struct.cab_state* %118, i32 0, i32 5
  %119 = load i8*, i8** %stream103, align 8
  %tobool104 = icmp ne i8* %119, null
  br i1 %tobool104, label %if.end.109, label %if.then.105

if.then.105:                                      ; preds = %sw.bb.92
  %120 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %state106 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %120, i32 0, i32 10
  %121 = load %struct.cab_state*, %struct.cab_state** %state106, align 8
  %122 = bitcast %struct.cab_state* %121 to i8*
  call void @free(i8* %122) #3
  %123 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %ofd107 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %123, i32 0, i32 6
  %124 = load i32, i32* %ofd107, align 4
  %call108 = call i32 @close(i32 %124)
  store i32 -109, i32* %retval
  br label %return

if.end.109:                                       ; preds = %sw.bb.92
  %125 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %offset110 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %125, i32 0, i32 2
  %126 = load i64, i64* %offset110, align 8
  %cmp111 = icmp sgt i64 %126, 0
  br i1 %cmp111, label %if.then.113, label %if.end.124

if.then.113:                                      ; preds = %if.end.109
  %127 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %state114 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %127, i32 0, i32 10
  %128 = load %struct.cab_state*, %struct.cab_state** %state114, align 8
  %stream115 = getelementptr inbounds %struct.cab_state, %struct.cab_state* %128, i32 0, i32 5
  %129 = load i8*, i8** %stream115, align 8
  %130 = bitcast i8* %129 to %struct.qtm_stream*
  %wflag116 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %130, i32 0, i32 2
  store i8 0, i8* %wflag116, align 1
  %131 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %state117 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %131, i32 0, i32 10
  %132 = load %struct.cab_state*, %struct.cab_state** %state117, align 8
  %stream118 = getelementptr inbounds %struct.cab_state, %struct.cab_state* %132, i32 0, i32 5
  %133 = load i8*, i8** %stream118, align 8
  %134 = bitcast i8* %133 to %struct.qtm_stream*
  %135 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %offset119 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %135, i32 0, i32 2
  %136 = load i64, i64* %offset119, align 8
  %call120 = call i32 @qtm_decompress(%struct.qtm_stream* %134, i64 %136)
  %137 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %state121 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %137, i32 0, i32 10
  %138 = load %struct.cab_state*, %struct.cab_state** %state121, align 8
  %stream122 = getelementptr inbounds %struct.cab_state, %struct.cab_state* %138, i32 0, i32 5
  %139 = load i8*, i8** %stream122, align 8
  %140 = bitcast i8* %139 to %struct.qtm_stream*
  %wflag123 = getelementptr inbounds %struct.qtm_stream, %struct.qtm_stream* %140, i32 0, i32 2
  store i8 1, i8* %wflag123, align 1
  br label %if.end.124

if.end.124:                                       ; preds = %if.then.113, %if.end.109
  %141 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %state125 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %141, i32 0, i32 10
  %142 = load %struct.cab_state*, %struct.cab_state** %state125, align 8
  %stream126 = getelementptr inbounds %struct.cab_state, %struct.cab_state* %142, i32 0, i32 5
  %143 = load i8*, i8** %stream126, align 8
  %144 = bitcast i8* %143 to %struct.qtm_stream*
  %145 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %length127 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %145, i32 0, i32 0
  %146 = load i32, i32* %length127, align 4
  %conv128 = zext i32 %146 to i64
  %call129 = call i32 @qtm_decompress(%struct.qtm_stream* %144, i64 %conv128)
  store i32 %call129, i32* %ret, align 4
  %147 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %state130 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %147, i32 0, i32 10
  %148 = load %struct.cab_state*, %struct.cab_state** %state130, align 8
  %stream131 = getelementptr inbounds %struct.cab_state, %struct.cab_state* %148, i32 0, i32 5
  %149 = load i8*, i8** %stream131, align 8
  %150 = bitcast i8* %149 to %struct.qtm_stream*
  call void @qtm_free(%struct.qtm_stream* %150)
  br label %sw.epilog

sw.bb.132:                                        ; preds = %if.end.22
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.49, i32 0, i32 0))
  %151 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %fd133 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %151, i32 0, i32 5
  %152 = load i32, i32* %fd133, align 4
  %153 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %ofd134 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %153, i32 0, i32 6
  %154 = load i32, i32* %ofd134, align 4
  %155 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %folder135 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %155, i32 0, i32 7
  %156 = load %struct.cab_folder*, %struct.cab_folder** %folder135, align 8
  %cmethod136 = getelementptr inbounds %struct.cab_folder, %struct.cab_folder* %156, i32 0, i32 0
  %157 = load i16, i16* %cmethod136, align 2
  %conv137 = zext i16 %157 to i32
  %shr138 = ashr i32 %conv137, 8
  %and139 = and i32 %shr138, 31
  %158 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %call140 = call %struct.lzx_stream* @lzx_init(i32 %152, i32 %154, i32 %and139, i32 0, i32 4096, i64 0, %struct.cab_file* %158, i32 (%struct.cab_file*, i8*, i32)* @cab_read)
  %159 = bitcast %struct.lzx_stream* %call140 to i8*
  %160 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %state141 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %160, i32 0, i32 10
  %161 = load %struct.cab_state*, %struct.cab_state** %state141, align 8
  %stream142 = getelementptr inbounds %struct.cab_state, %struct.cab_state* %161, i32 0, i32 5
  store i8* %159, i8** %stream142, align 8
  %162 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %state143 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %162, i32 0, i32 10
  %163 = load %struct.cab_state*, %struct.cab_state** %state143, align 8
  %stream144 = getelementptr inbounds %struct.cab_state, %struct.cab_state* %163, i32 0, i32 5
  %164 = load i8*, i8** %stream144, align 8
  %tobool145 = icmp ne i8* %164, null
  br i1 %tobool145, label %if.end.150, label %if.then.146

if.then.146:                                      ; preds = %sw.bb.132
  %165 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %state147 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %165, i32 0, i32 10
  %166 = load %struct.cab_state*, %struct.cab_state** %state147, align 8
  %167 = bitcast %struct.cab_state* %166 to i8*
  call void @free(i8* %167) #3
  %168 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %ofd148 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %168, i32 0, i32 6
  %169 = load i32, i32* %ofd148, align 4
  %call149 = call i32 @close(i32 %169)
  store i32 -109, i32* %retval
  br label %return

if.end.150:                                       ; preds = %sw.bb.132
  %170 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %offset151 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %170, i32 0, i32 2
  %171 = load i64, i64* %offset151, align 8
  %cmp152 = icmp sgt i64 %171, 0
  br i1 %cmp152, label %if.then.154, label %if.end.194

if.then.154:                                      ; preds = %if.end.150
  %172 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %state155 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %172, i32 0, i32 10
  %173 = load %struct.cab_state*, %struct.cab_state** %state155, align 8
  %stream156 = getelementptr inbounds %struct.cab_state, %struct.cab_state* %173, i32 0, i32 5
  %174 = load i8*, i8** %stream156, align 8
  %175 = bitcast i8* %174 to %struct.lzx_stream*
  %wflag157 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %175, i32 0, i32 2
  store i8 0, i8* %wflag157, align 1
  %176 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %state158 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %176, i32 0, i32 10
  %177 = load %struct.cab_state*, %struct.cab_state** %state158, align 8
  %stream159 = getelementptr inbounds %struct.cab_state, %struct.cab_state* %177, i32 0, i32 5
  %178 = load i8*, i8** %stream159, align 8
  %179 = bitcast i8* %178 to %struct.lzx_stream*
  %180 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %offset160 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %180, i32 0, i32 2
  %181 = load i64, i64* %offset160, align 8
  %call161 = call i32 @lzx_decompress(%struct.lzx_stream* %179, i64 %181)
  store i32 %call161, i32* %ret, align 4
  %182 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %state162 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %182, i32 0, i32 10
  %183 = load %struct.cab_state*, %struct.cab_state** %state162, align 8
  %stream163 = getelementptr inbounds %struct.cab_state, %struct.cab_state* %183, i32 0, i32 5
  %184 = load i8*, i8** %stream163, align 8
  %185 = bitcast i8* %184 to %struct.lzx_stream*
  %wflag164 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %185, i32 0, i32 2
  store i8 1, i8* %wflag164, align 1
  %186 = load i32, i32* %ret, align 4
  %cmp165 = icmp slt i32 %186, 0
  br i1 %cmp165, label %if.then.167, label %if.end.193

if.then.167:                                      ; preds = %if.then.154
  %187 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %state168 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %187, i32 0, i32 10
  %188 = load %struct.cab_state*, %struct.cab_state** %state168, align 8
  %stream169 = getelementptr inbounds %struct.cab_state, %struct.cab_state* %188, i32 0, i32 5
  %189 = load i8*, i8** %stream169, align 8
  %190 = bitcast i8* %189 to %struct.lzx_stream*
  call void @lzx_free(%struct.lzx_stream* %190)
  %191 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %state170 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %191, i32 0, i32 10
  %192 = load %struct.cab_state*, %struct.cab_state** %state170, align 8
  %193 = bitcast %struct.cab_state* %192 to i8*
  call void @llvm.memset.p0i8.i64(i8* %193, i8 0, i64 38952, i32 8, i1 false)
  %194 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %fd171 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %194, i32 0, i32 5
  %195 = load i32, i32* %fd171, align 4
  %196 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %ofd172 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %196, i32 0, i32 6
  %197 = load i32, i32* %ofd172, align 4
  %198 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %folder173 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %198, i32 0, i32 7
  %199 = load %struct.cab_folder*, %struct.cab_folder** %folder173, align 8
  %cmethod174 = getelementptr inbounds %struct.cab_folder, %struct.cab_folder* %199, i32 0, i32 0
  %200 = load i16, i16* %cmethod174, align 2
  %conv175 = zext i16 %200 to i32
  %shr176 = ashr i32 %conv175, 8
  %and177 = and i32 %shr176, 31
  %201 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %call178 = call %struct.lzx_stream* @lzx_init(i32 %195, i32 %197, i32 %and177, i32 0, i32 4096, i64 0, %struct.cab_file* %201, i32 (%struct.cab_file*, i8*, i32)* @cab_read)
  %202 = bitcast %struct.lzx_stream* %call178 to i8*
  %203 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %state179 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %203, i32 0, i32 10
  %204 = load %struct.cab_state*, %struct.cab_state** %state179, align 8
  %stream180 = getelementptr inbounds %struct.cab_state, %struct.cab_state* %204, i32 0, i32 5
  store i8* %202, i8** %stream180, align 8
  %205 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %state181 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %205, i32 0, i32 10
  %206 = load %struct.cab_state*, %struct.cab_state** %state181, align 8
  %stream182 = getelementptr inbounds %struct.cab_state, %struct.cab_state* %206, i32 0, i32 5
  %207 = load i8*, i8** %stream182, align 8
  %tobool183 = icmp ne i8* %207, null
  br i1 %tobool183, label %if.end.188, label %if.then.184

if.then.184:                                      ; preds = %if.then.167
  %208 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %state185 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %208, i32 0, i32 10
  %209 = load %struct.cab_state*, %struct.cab_state** %state185, align 8
  %210 = bitcast %struct.cab_state* %209 to i8*
  call void @free(i8* %210) #3
  %211 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %ofd186 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %211, i32 0, i32 6
  %212 = load i32, i32* %ofd186, align 4
  %call187 = call i32 @close(i32 %212)
  store i32 -109, i32* %retval
  br label %return

if.end.188:                                       ; preds = %if.then.167
  %213 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %fd189 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %213, i32 0, i32 5
  %214 = load i32, i32* %fd189, align 4
  %215 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %folder190 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %215, i32 0, i32 7
  %216 = load %struct.cab_folder*, %struct.cab_folder** %folder190, align 8
  %offset191 = getelementptr inbounds %struct.cab_folder, %struct.cab_folder* %216, i32 0, i32 3
  %217 = load i64, i64* %offset191, align 8
  %call192 = call i64 @lseek(i32 %214, i64 %217, i32 0) #3
  br label %if.end.193

if.end.193:                                       ; preds = %if.end.188, %if.then.154
  br label %if.end.194

if.end.194:                                       ; preds = %if.end.193, %if.end.150
  %218 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %state195 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %218, i32 0, i32 10
  %219 = load %struct.cab_state*, %struct.cab_state** %state195, align 8
  %stream196 = getelementptr inbounds %struct.cab_state, %struct.cab_state* %219, i32 0, i32 5
  %220 = load i8*, i8** %stream196, align 8
  %221 = bitcast i8* %220 to %struct.lzx_stream*
  %222 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %length197 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %222, i32 0, i32 0
  %223 = load i32, i32* %length197, align 4
  %conv198 = zext i32 %223 to i64
  %call199 = call i32 @lzx_decompress(%struct.lzx_stream* %221, i64 %conv198)
  store i32 %call199, i32* %ret, align 4
  %224 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %state200 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %224, i32 0, i32 10
  %225 = load %struct.cab_state*, %struct.cab_state** %state200, align 8
  %stream201 = getelementptr inbounds %struct.cab_state, %struct.cab_state* %225, i32 0, i32 5
  %226 = load i8*, i8** %stream201, align 8
  %227 = bitcast i8* %226 to %struct.lzx_stream*
  call void @lzx_free(%struct.lzx_stream* %227)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.22
  %228 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %folder202 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %228, i32 0, i32 7
  %229 = load %struct.cab_folder*, %struct.cab_folder** %folder202, align 8
  %cmethod203 = getelementptr inbounds %struct.cab_folder, %struct.cab_folder* %229, i32 0, i32 0
  %230 = load i16, i16* %cmethod203, align 2
  %conv204 = zext i16 %230 to i32
  %and205 = and i32 %conv204, 15
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.50, i32 0, i32 0), i32 %and205)
  store i32 -124, i32* %ret, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.194, %if.end.124, %if.end.84, %if.end.32
  %231 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %state206 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %231, i32 0, i32 10
  %232 = load %struct.cab_state*, %struct.cab_state** %state206, align 8
  %233 = bitcast %struct.cab_state* %232 to i8*
  call void @free(i8* %233) #3
  %234 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %ofd207 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %234, i32 0, i32 6
  %235 = load i32, i32* %ofd207, align 4
  %call208 = call i32 @close(i32 %235)
  %236 = load i32, i32* %ret, align 4
  store i32 %236, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.then.184, %if.then.146, %if.then.105, %if.then.74, %if.then.42, %if.then.20, %if.then.14, %if.then.7, %if.then.4, %if.then
  %237 = load i32, i32* %retval
  ret i32 %237
}

declare i32 @open(i8*, i32, ...) #2

; Function Attrs: nounwind uwtable
define internal i32 @cab_unstore(%struct.cab_file* %file, i32 %bytes, i8 zeroext %wflag) #0 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca %struct.cab_file*, align 8
  %bytes.addr = alloca i32, align 4
  %wflag.addr = alloca i8, align 1
  %todo = alloca i32, align 4
  %buff = alloca [4096 x i8], align 16
  store %struct.cab_file* %file, %struct.cab_file** %file.addr, align 8
  store i32 %bytes, i32* %bytes.addr, align 4
  store i8 %wflag, i8* %wflag.addr, align 1
  %0 = load i32, i32* %bytes.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.53, i32 0, i32 0))
  store i32 -124, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %bytes.addr, align 4
  store i32 %1, i32* %todo, align 4
  br label %while.body

while.body:                                       ; preds = %if.end, %if.end.38
  %2 = load i32, i32* %todo, align 4
  %conv = zext i32 %2 to i64
  %cmp1 = icmp ule i64 %conv, 4096
  br i1 %cmp1, label %if.then.3, label %if.else.16

if.then.3:                                        ; preds = %while.body
  %3 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %buff, i32 0, i32 0
  %4 = load i32, i32* %todo, align 4
  %call = call i32 @cab_read(%struct.cab_file* %3, i8* %arraydecay, i32 %4)
  %cmp4 = icmp eq i32 %call, -1
  br i1 %cmp4, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then.3
  %5 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %fd = getelementptr inbounds %struct.cab_file, %struct.cab_file* %5, i32 0, i32 5
  %6 = load i32, i32* %fd, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.54, i32 0, i32 0), i32 %6)
  store i32 -123, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then.3
  %7 = load i8, i8* %wflag.addr, align 1
  %conv7 = zext i8 %7 to i32
  %tobool = icmp ne i32 %conv7, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.14

land.lhs.true:                                    ; preds = %if.else
  %8 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %ofd = getelementptr inbounds %struct.cab_file, %struct.cab_file* %8, i32 0, i32 6
  %9 = load i32, i32* %ofd, align 4
  %arraydecay8 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buff, i32 0, i32 0
  %10 = load i32, i32* %todo, align 4
  %call9 = call i32 @cli_writen(i32 %9, i8* %arraydecay8, i32 %10)
  %cmp10 = icmp eq i32 %call9, -1
  br i1 %cmp10, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %land.lhs.true
  %11 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %ofd13 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %11, i32 0, i32 6
  %12 = load i32, i32* %ofd13, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.55, i32 0, i32 0), i32 %12)
  store i32 -123, i32* %retval
  br label %return

if.end.14:                                        ; preds = %land.lhs.true, %if.else
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14
  br label %while.end

if.else.16:                                       ; preds = %while.body
  %13 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %arraydecay17 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buff, i32 0, i32 0
  %call18 = call i32 @cab_read(%struct.cab_file* %13, i8* %arraydecay17, i32 4096)
  %cmp19 = icmp eq i32 %call18, -1
  br i1 %cmp19, label %if.then.21, label %if.else.23

if.then.21:                                       ; preds = %if.else.16
  %14 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %fd22 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %14, i32 0, i32 5
  %15 = load i32, i32* %fd22, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.54, i32 0, i32 0), i32 %15)
  store i32 -123, i32* %retval
  br label %return

if.else.23:                                       ; preds = %if.else.16
  %16 = load i8, i8* %wflag.addr, align 1
  %conv24 = zext i8 %16 to i32
  %tobool25 = icmp ne i32 %conv24, 0
  br i1 %tobool25, label %land.lhs.true.26, label %if.end.34

land.lhs.true.26:                                 ; preds = %if.else.23
  %17 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %ofd27 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %17, i32 0, i32 6
  %18 = load i32, i32* %ofd27, align 4
  %arraydecay28 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buff, i32 0, i32 0
  %call29 = call i32 @cli_writen(i32 %18, i8* %arraydecay28, i32 4096)
  %cmp30 = icmp eq i32 %call29, -1
  br i1 %cmp30, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %land.lhs.true.26
  %19 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %ofd33 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %19, i32 0, i32 6
  %20 = load i32, i32* %ofd33, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.55, i32 0, i32 0), i32 %20)
  store i32 -123, i32* %retval
  br label %return

if.end.34:                                        ; preds = %land.lhs.true.26, %if.else.23
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34
  %21 = load i32, i32* %todo, align 4
  %conv36 = sext i32 %21 to i64
  %sub = sub i64 %conv36, 4096
  %conv37 = trunc i64 %sub to i32
  store i32 %conv37, i32* %todo, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.35
  br label %while.body

while.end:                                        ; preds = %if.end.15
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.32, %if.then.21, %if.then.12, %if.then.6, %if.then
  %22 = load i32, i32* %retval
  ret i32 %22
}

declare %struct.mszip_stream* @mszip_init(i32, i32, i32, i32, %struct.cab_file*, i32 (%struct.cab_file*, i8*, i32)*) #2

; Function Attrs: nounwind uwtable
define internal i32 @cab_read(%struct.cab_file* %file, i8* %buffer, i32 %bytes) #0 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca %struct.cab_file*, align 8
  %buffer.addr = alloca i8*, align 8
  %bytes.addr = alloca i32, align 4
  %todo = alloca i16, align 2
  %left = alloca i16, align 2
  store %struct.cab_file* %file, %struct.cab_file** %file.addr, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  store i32 %bytes, i32* %bytes.addr, align 4
  %0 = load i32, i32* %bytes.addr, align 4
  %conv = trunc i32 %0 to i16
  store i16 %conv, i16* %todo, align 2
  br label %while.cond

while.cond:                                       ; preds = %if.end.78, %entry
  %1 = load i16, i16* %todo, align 2
  %conv1 = zext i16 %1 to i32
  %cmp = icmp sgt i32 %conv1, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %state = getelementptr inbounds %struct.cab_file, %struct.cab_file* %2, i32 0, i32 10
  %3 = load %struct.cab_state*, %struct.cab_state** %state, align 8
  %end = getelementptr inbounds %struct.cab_state, %struct.cab_state* %3, i32 0, i32 1
  %4 = load i8*, i8** %end, align 8
  %5 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %state3 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %5, i32 0, i32 10
  %6 = load %struct.cab_state*, %struct.cab_state** %state3, align 8
  %pt = getelementptr inbounds %struct.cab_state, %struct.cab_state* %6, i32 0, i32 0
  %7 = load i8*, i8** %pt, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %7 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv4 = trunc i64 %sub.ptr.sub to i16
  store i16 %conv4, i16* %left, align 2
  %8 = load i16, i16* %left, align 2
  %tobool = icmp ne i16 %8, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %9 = load i16, i16* %left, align 2
  %conv5 = zext i16 %9 to i32
  %10 = load i16, i16* %todo, align 2
  %conv6 = zext i16 %10 to i32
  %cmp7 = icmp sgt i32 %conv5, %conv6
  br i1 %cmp7, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then
  %11 = load i16, i16* %todo, align 2
  store i16 %11, i16* %left, align 2
  br label %if.end

if.end:                                           ; preds = %if.then.9, %if.then
  %12 = load i8*, i8** %buffer.addr, align 8
  %13 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %state10 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %13, i32 0, i32 10
  %14 = load %struct.cab_state*, %struct.cab_state** %state10, align 8
  %pt11 = getelementptr inbounds %struct.cab_state, %struct.cab_state* %14, i32 0, i32 0
  %15 = load i8*, i8** %pt11, align 8
  %16 = load i16, i16* %left, align 2
  %conv12 = zext i16 %16 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %15, i64 %conv12, i32 1, i1 false)
  %17 = load i16, i16* %left, align 2
  %conv13 = zext i16 %17 to i32
  %18 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %state14 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %18, i32 0, i32 10
  %19 = load %struct.cab_state*, %struct.cab_state** %state14, align 8
  %pt15 = getelementptr inbounds %struct.cab_state, %struct.cab_state* %19, i32 0, i32 0
  %20 = load i8*, i8** %pt15, align 8
  %idx.ext = sext i32 %conv13 to i64
  %add.ptr = getelementptr inbounds i8, i8* %20, i64 %idx.ext
  store i8* %add.ptr, i8** %pt15, align 8
  %21 = load i16, i16* %left, align 2
  %conv16 = zext i16 %21 to i32
  %22 = load i8*, i8** %buffer.addr, align 8
  %idx.ext17 = sext i32 %conv16 to i64
  %add.ptr18 = getelementptr inbounds i8, i8* %22, i64 %idx.ext17
  store i8* %add.ptr18, i8** %buffer.addr, align 8
  %23 = load i16, i16* %left, align 2
  %conv19 = zext i16 %23 to i32
  %24 = load i16, i16* %todo, align 2
  %conv20 = zext i16 %24 to i32
  %sub = sub nsw i32 %conv20, %conv19
  %conv21 = trunc i32 %sub to i16
  store i16 %conv21, i16* %todo, align 2
  br label %if.end.78

if.else:                                          ; preds = %while.body
  %25 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %state22 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %25, i32 0, i32 10
  %26 = load %struct.cab_state*, %struct.cab_state** %state22, align 8
  %blknum = getelementptr inbounds %struct.cab_state, %struct.cab_state* %26, i32 0, i32 6
  %27 = load i16, i16* %blknum, align 2
  %inc = add i16 %27, 1
  store i16 %inc, i16* %blknum, align 2
  %conv23 = zext i16 %27 to i32
  %28 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %folder = getelementptr inbounds %struct.cab_file, %struct.cab_file* %28, i32 0, i32 7
  %29 = load %struct.cab_folder*, %struct.cab_folder** %folder, align 8
  %nblocks = getelementptr inbounds %struct.cab_folder, %struct.cab_folder* %29, i32 0, i32 1
  %30 = load i16, i16* %nblocks, align 2
  %conv24 = zext i16 %30 to i32
  %cmp25 = icmp sge i32 %conv23, %conv24
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.else
  %31 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %error = getelementptr inbounds %struct.cab_file, %struct.cab_file* %31, i32 0, i32 4
  store i32 -124, i32* %error, align 4
  br label %while.end

if.end.28:                                        ; preds = %if.else
  %32 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %fd = getelementptr inbounds %struct.cab_file, %struct.cab_file* %32, i32 0, i32 5
  %33 = load i32, i32* %fd, align 4
  %34 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %state29 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %34, i32 0, i32 10
  %35 = load %struct.cab_state*, %struct.cab_state** %state29, align 8
  %36 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %cab = getelementptr inbounds %struct.cab_file, %struct.cab_file* %36, i32 0, i32 9
  %37 = load %struct.cab_archive*, %struct.cab_archive** %cab, align 8
  %resdata = getelementptr inbounds %struct.cab_archive, %struct.cab_archive* %37, i32 0, i32 5
  %38 = load i8, i8* %resdata, align 1
  %conv30 = zext i8 %38 to i16
  %call = call i32 @cab_read_block(i32 %33, %struct.cab_state* %35, i16 zeroext %conv30)
  %39 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %error31 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %39, i32 0, i32 4
  store i32 %call, i32* %error31, align 4
  %40 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %error32 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %40, i32 0, i32 4
  %41 = load i32, i32* %error32, align 4
  %tobool33 = icmp ne i32 %41, 0
  br i1 %tobool33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.end.28
  store i32 -1, i32* %retval
  br label %return

if.end.35:                                        ; preds = %if.end.28
  %42 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %folder36 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %42, i32 0, i32 7
  %43 = load %struct.cab_folder*, %struct.cab_folder** %folder36, align 8
  %cmethod = getelementptr inbounds %struct.cab_folder, %struct.cab_folder* %43, i32 0, i32 0
  %44 = load i16, i16* %cmethod, align 2
  %conv37 = zext i16 %44 to i32
  %and = and i32 %conv37, 15
  %cmp38 = icmp eq i32 %and, 2
  br i1 %cmp38, label %if.then.40, label %if.end.43

if.then.40:                                       ; preds = %if.end.35
  %45 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %state41 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %45, i32 0, i32 10
  %46 = load %struct.cab_state*, %struct.cab_state** %state41, align 8
  %end42 = getelementptr inbounds %struct.cab_state, %struct.cab_state* %46, i32 0, i32 1
  %47 = load i8*, i8** %end42, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %incdec.ptr, i8** %end42, align 8
  store i8 -1, i8* %47, align 1
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.40, %if.end.35
  %48 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %state44 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %48, i32 0, i32 10
  %49 = load %struct.cab_state*, %struct.cab_state** %state44, align 8
  %blknum45 = getelementptr inbounds %struct.cab_state, %struct.cab_state* %49, i32 0, i32 6
  %50 = load i16, i16* %blknum45, align 2
  %conv46 = zext i16 %50 to i32
  %51 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %folder47 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %51, i32 0, i32 7
  %52 = load %struct.cab_folder*, %struct.cab_folder** %folder47, align 8
  %nblocks48 = getelementptr inbounds %struct.cab_folder, %struct.cab_folder* %52, i32 0, i32 1
  %53 = load i16, i16* %nblocks48, align 2
  %conv49 = zext i16 %53 to i32
  %cmp50 = icmp sge i32 %conv46, %conv49
  br i1 %cmp50, label %if.then.52, label %if.else.69

if.then.52:                                       ; preds = %if.end.43
  %54 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %folder53 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %54, i32 0, i32 7
  %55 = load %struct.cab_folder*, %struct.cab_folder** %folder53, align 8
  %cmethod54 = getelementptr inbounds %struct.cab_folder, %struct.cab_folder* %55, i32 0, i32 0
  %56 = load i16, i16* %cmethod54, align 2
  %conv55 = zext i16 %56 to i32
  %and56 = and i32 %conv55, 15
  %cmp57 = icmp eq i32 %and56, 3
  br i1 %cmp57, label %if.then.59, label %if.end.68

if.then.59:                                       ; preds = %if.then.52
  %57 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %state60 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %57, i32 0, i32 10
  %58 = load %struct.cab_state*, %struct.cab_state** %state60, align 8
  %stream = getelementptr inbounds %struct.cab_state, %struct.cab_state* %58, i32 0, i32 5
  %59 = load i8*, i8** %stream, align 8
  %60 = bitcast i8* %59 to %struct.lzx_stream*
  %61 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %state61 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %61, i32 0, i32 10
  %62 = load %struct.cab_state*, %struct.cab_state** %state61, align 8
  %blknum62 = getelementptr inbounds %struct.cab_state, %struct.cab_state* %62, i32 0, i32 6
  %63 = load i16, i16* %blknum62, align 2
  %conv63 = zext i16 %63 to i32
  %sub64 = sub nsw i32 %conv63, 1
  %mul = mul nsw i32 %sub64, 32768
  %64 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %state65 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %64, i32 0, i32 10
  %65 = load %struct.cab_state*, %struct.cab_state** %state65, align 8
  %outlen = getelementptr inbounds %struct.cab_state, %struct.cab_state* %65, i32 0, i32 4
  %66 = load i16, i16* %outlen, align 2
  %conv66 = zext i16 %66 to i32
  %add = add nsw i32 %mul, %conv66
  %conv67 = sext i32 %add to i64
  call void @lzx_set_output_length(%struct.lzx_stream* %60, i64 %conv67)
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.59, %if.then.52
  br label %if.end.77

if.else.69:                                       ; preds = %if.end.43
  %67 = load %struct.cab_file*, %struct.cab_file** %file.addr, align 8
  %state70 = getelementptr inbounds %struct.cab_file, %struct.cab_file* %67, i32 0, i32 10
  %68 = load %struct.cab_state*, %struct.cab_state** %state70, align 8
  %outlen71 = getelementptr inbounds %struct.cab_state, %struct.cab_state* %68, i32 0, i32 4
  %69 = load i16, i16* %outlen71, align 2
  %conv72 = zext i16 %69 to i32
  %cmp73 = icmp ne i32 %conv72, 32768
  br i1 %cmp73, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %if.else.69
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.56, i32 0, i32 0))
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.75, %if.else.69
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %if.end.68
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %if.end
  br label %while.cond

while.end:                                        ; preds = %if.then.27, %while.cond
  %70 = load i32, i32* %bytes.addr, align 4
  %71 = load i16, i16* %todo, align 2
  %conv79 = zext i16 %71 to i32
  %sub80 = sub nsw i32 %70, %conv79
  store i32 %sub80, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.34
  %72 = load i32, i32* %retval
  ret i32 %72
}

declare i32 @close(i32) #2

declare i32 @mszip_decompress(%struct.mszip_stream*, i64) #2

declare void @mszip_free(%struct.mszip_stream*) #2

declare %struct.qtm_stream* @qtm_init(i32, i32, i32, i32, %struct.cab_file*, i32 (%struct.cab_file*, i8*, i32)*) #2

declare i32 @qtm_decompress(%struct.qtm_stream*, i64) #2

declare void @qtm_free(%struct.qtm_stream*) #2

declare %struct.lzx_stream* @lzx_init(i32, i32, i32, i32, i32, i64, %struct.cab_file*, i32 (%struct.cab_file*, i8*, i32)*) #2

declare i32 @lzx_decompress(%struct.lzx_stream*, i64) #2

declare void @lzx_free(%struct.lzx_stream*) #2

declare void @cli_warnmsg(i8*, ...) #2

declare i64 @read(i32, i8*, i64) #2

declare i8* @cli_strdup(i8*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #4

declare i32 @cli_writen(i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define internal i32 @cab_read_block(i32 %fd, %struct.cab_state* %state, i16 zeroext %resdata) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %state.addr = alloca %struct.cab_state*, align 8
  %resdata.addr = alloca i16, align 2
  %block_hdr = alloca %struct.cab_block_hdr, align 4
  store i32 %fd, i32* %fd.addr, align 4
  store %struct.cab_state* %state, %struct.cab_state** %state.addr, align 8
  store i16 %resdata, i16* %resdata.addr, align 2
  %0 = load i32, i32* %fd.addr, align 4
  %1 = bitcast %struct.cab_block_hdr* %block_hdr to i8*
  %call = call i32 @cli_readn(i32 %0, i8* %1, i32 8)
  %conv = sext i32 %call to i64
  %cmp = icmp ne i64 %conv, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.57, i32 0, i32 0))
  store i32 -123, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i16, i16* %resdata.addr, align 2
  %conv2 = zext i16 %2 to i32
  %tobool = icmp ne i32 %conv2, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.8

land.lhs.true:                                    ; preds = %if.end
  %3 = load i32, i32* %fd.addr, align 4
  %4 = load i16, i16* %resdata.addr, align 2
  %conv3 = zext i16 %4 to i64
  %call4 = call i64 @lseek(i32 %3, i64 %conv3, i32 1) #3
  %cmp5 = icmp eq i64 %call4, -1
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %land.lhs.true
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.58, i32 0, i32 0))
  store i32 -123, i32* %retval
  br label %return

if.end.8:                                         ; preds = %land.lhs.true, %if.end
  %cbData = getelementptr inbounds %struct.cab_block_hdr, %struct.cab_block_hdr* %block_hdr, i32 0, i32 1
  %5 = load i16, i16* %cbData, align 2
  %6 = load %struct.cab_state*, %struct.cab_state** %state.addr, align 8
  %blklen = getelementptr inbounds %struct.cab_state, %struct.cab_state* %6, i32 0, i32 3
  store i16 %5, i16* %blklen, align 2
  %7 = load %struct.cab_state*, %struct.cab_state** %state.addr, align 8
  %blklen9 = getelementptr inbounds %struct.cab_state, %struct.cab_state* %7, i32 0, i32 3
  %8 = load i16, i16* %blklen9, align 2
  %conv10 = zext i16 %8 to i32
  %cmp11 = icmp sgt i32 %conv10, 38912
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.59, i32 0, i32 0))
  store i32 -124, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.end.8
  %cbUncomp = getelementptr inbounds %struct.cab_block_hdr, %struct.cab_block_hdr* %block_hdr, i32 0, i32 2
  %9 = load i16, i16* %cbUncomp, align 2
  %10 = load %struct.cab_state*, %struct.cab_state** %state.addr, align 8
  %outlen = getelementptr inbounds %struct.cab_state, %struct.cab_state* %10, i32 0, i32 4
  store i16 %9, i16* %outlen, align 2
  %11 = load %struct.cab_state*, %struct.cab_state** %state.addr, align 8
  %outlen15 = getelementptr inbounds %struct.cab_state, %struct.cab_state* %11, i32 0, i32 4
  %12 = load i16, i16* %outlen15, align 2
  %conv16 = zext i16 %12 to i32
  %cmp17 = icmp sgt i32 %conv16, 32768
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.14
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.60, i32 0, i32 0))
  store i32 -124, i32* %retval
  br label %return

if.end.20:                                        ; preds = %if.end.14
  %13 = load i32, i32* %fd.addr, align 4
  %14 = load %struct.cab_state*, %struct.cab_state** %state.addr, align 8
  %block = getelementptr inbounds %struct.cab_state, %struct.cab_state* %14, i32 0, i32 2
  %arraydecay = getelementptr inbounds [38912 x i8], [38912 x i8]* %block, i32 0, i32 0
  %15 = load %struct.cab_state*, %struct.cab_state** %state.addr, align 8
  %blklen21 = getelementptr inbounds %struct.cab_state, %struct.cab_state* %15, i32 0, i32 3
  %16 = load i16, i16* %blklen21, align 2
  %conv22 = zext i16 %16 to i32
  %call23 = call i32 @cli_readn(i32 %13, i8* %arraydecay, i32 %conv22)
  %17 = load %struct.cab_state*, %struct.cab_state** %state.addr, align 8
  %blklen24 = getelementptr inbounds %struct.cab_state, %struct.cab_state* %17, i32 0, i32 3
  %18 = load i16, i16* %blklen24, align 2
  %conv25 = zext i16 %18 to i32
  %cmp26 = icmp ne i32 %call23, %conv25
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.20
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.61, i32 0, i32 0))
  store i32 -123, i32* %retval
  br label %return

if.end.29:                                        ; preds = %if.end.20
  %19 = load %struct.cab_state*, %struct.cab_state** %state.addr, align 8
  %block30 = getelementptr inbounds %struct.cab_state, %struct.cab_state* %19, i32 0, i32 2
  %arraydecay31 = getelementptr inbounds [38912 x i8], [38912 x i8]* %block30, i32 0, i32 0
  %20 = load %struct.cab_state*, %struct.cab_state** %state.addr, align 8
  %end = getelementptr inbounds %struct.cab_state, %struct.cab_state* %20, i32 0, i32 1
  store i8* %arraydecay31, i8** %end, align 8
  %21 = load %struct.cab_state*, %struct.cab_state** %state.addr, align 8
  %pt = getelementptr inbounds %struct.cab_state, %struct.cab_state* %21, i32 0, i32 0
  store i8* %arraydecay31, i8** %pt, align 8
  %22 = load %struct.cab_state*, %struct.cab_state** %state.addr, align 8
  %blklen32 = getelementptr inbounds %struct.cab_state, %struct.cab_state* %22, i32 0, i32 3
  %23 = load i16, i16* %blklen32, align 2
  %conv33 = zext i16 %23 to i32
  %24 = load %struct.cab_state*, %struct.cab_state** %state.addr, align 8
  %end34 = getelementptr inbounds %struct.cab_state, %struct.cab_state* %24, i32 0, i32 1
  %25 = load i8*, i8** %end34, align 8
  %idx.ext = sext i32 %conv33 to i64
  %add.ptr = getelementptr inbounds i8, i8* %25, i64 %idx.ext
  store i8* %add.ptr, i8** %end34, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.29, %if.then.28, %if.then.19, %if.then.13, %if.then.7, %if.then
  %26 = load i32, i32* %retval
  ret i32 %26
}

declare void @lzx_set_output_length(%struct.lzx_stream*, i64) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
