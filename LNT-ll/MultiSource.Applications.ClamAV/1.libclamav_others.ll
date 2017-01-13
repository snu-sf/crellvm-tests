; ModuleID = './MultiSource.Applications.ClamAV/1.libclamav_others.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.cli_md5_ctx = type { i32, i32, i32, i32, i32, i32, [64 x i8], [16 x i32] }
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }
%struct.__dirstream = type opaque
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.bitset_tag = type { i8*, i64 }

@cli_debug_flag = global i8 0, align 1
@cli_leavetemps_flag = global i8 0, align 1
@.str = private unnamed_addr constant [20 x i8] c"LibClamAV Warning: \00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"LibClamAV Error: \00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"devel-20071218\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"No viruses detected\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"Virus(es) detected\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Recursion limit exceeded\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"File size limit exceeded\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"Files number limit exceeded\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"RAR module failure\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"Zip module failure\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"GZip module failure\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"MS Expand module failure\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"MS CAB module failure\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"OLE2 module failure\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"Unable to create temporary file\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"Unable to create temporary directory\00", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c"Unable to synchronize file <-> disk\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"Unable to allocate memory\00", align 1
@.str.18 = private unnamed_addr constant [33 x i8] c"Unable to open file or directory\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"Malformed database\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"Too short pattern detected\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"Broken or not a CVD file\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"CVD extraction failure\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"MD5 verification error\00", align 1
@.str.24 = private unnamed_addr constant [37 x i8] c"Digital signature verification error\00", align 1
@.str.25 = private unnamed_addr constant [51 x i8] c"Null argument passed while initialized is required\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"Input/Output error\00", align 1
@.str.27 = private unnamed_addr constant [26 x i8] c"Bad format or broken data\00", align 1
@.str.28 = private unnamed_addr constant [26 x i8] c"Not supported data format\00", align 1
@.str.29 = private unnamed_addr constant [34 x i8] c"Unable to lock database directory\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"ARJ module failure\00", align 1
@.str.31 = private unnamed_addr constant [19 x i8] c"Unknown error code\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.34 = private unnamed_addr constant [35 x i8] c"cli_md5file(): Can't read file %s\0A\00", align 1
@.str.35 = private unnamed_addr constant [85 x i8] c"cli_malloc(): Attempt to allocate %u bytes. Please report to http://bugs.clamav.net\0A\00", align 1
@.str.36 = private unnamed_addr constant [49 x i8] c"cli_malloc(): Can't allocate memory (%u bytes).\0A\00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"malloc_problem\00", align 1
@.str.38 = private unnamed_addr constant [85 x i8] c"cli_calloc(): Attempt to allocate %u bytes. Please report to http://bugs.clamav.net\0A\00", align 1
@.str.39 = private unnamed_addr constant [49 x i8] c"cli_calloc(): Can't allocate memory (%u bytes).\0A\00", align 1
@.str.40 = private unnamed_addr constant [15 x i8] c"calloc_problem\00", align 1
@.str.41 = private unnamed_addr constant [86 x i8] c"cli_realloc(): Attempt to allocate %u bytes. Please report to http://bugs.clamav.net\0A\00", align 1
@.str.42 = private unnamed_addr constant [54 x i8] c"cli_realloc(): Can't re-allocate memory to %u bytes.\0A\00", align 1
@.str.43 = private unnamed_addr constant [16 x i8] c"realloc_problem\00", align 1
@.str.44 = private unnamed_addr constant [87 x i8] c"cli_realloc2(): Attempt to allocate %u bytes. Please report to http://bugs.clamav.net\0A\00", align 1
@.str.45 = private unnamed_addr constant [55 x i8] c"cli_realloc2(): Can't re-allocate memory to %u bytes.\0A\00", align 1
@.str.46 = private unnamed_addr constant [66 x i8] c"cli_strdup(): s == NULL. Please report to http://bugs.clamav.net\0A\00", align 1
@.str.47 = private unnamed_addr constant [49 x i8] c"cli_strdup(): Can't allocate memory (%u bytes).\0A\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"strdup_problem\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"TMPDIR=%s\00", align 1
@.str.50 = private unnamed_addr constant [42 x i8] c"Setting %s as global temporary directory\0A\00", align 1
@.str.51 = private unnamed_addr constant [68 x i8] c"Can't set TMPDIR variable - insufficient space in the environment.\0A\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"TMPDIR\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"/tmp\00", align 1
@.str.54 = private unnamed_addr constant [34 x i8] c"cli_gentemp('%s'): out of memory\0A\00", align 1
@name_salt = internal global [16 x i8] c"\10&a\0C\08\04H\C4\D9\90!|\12\0B\11\FD", align 16
@.str.55 = private unnamed_addr constant [11 x i8] c"%s/clamav-\00", align 1
@.str.56 = private unnamed_addr constant [51 x i8] c"cli_gentempfd: Can't create temporary file %s: %s\0A\00", align 1
@.str.57 = private unnamed_addr constant [53 x i8] c"cli_rmdirs: Can't remove temporary directory %s: %s\0A\00", align 1
@.str.58 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.59 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.61 = private unnamed_addr constant [76 x i8] c"cli_rmdirs: Can't remove some temporary directories due to access problem.\0A\00", align 1
@.str.62 = private unnamed_addr constant [46 x i8] c"cli_rmdirs: Can't remove nested directory %s\0A\00", align 1
@.str.63 = private unnamed_addr constant [36 x i8] c"cli_rmdirs: Couldn't remove %s: %s\0A\00", align 1
@.str.64 = private unnamed_addr constant [27 x i8] c"cli_readn: read error: %s\0A\00", align 1
@.str.65 = private unnamed_addr constant [29 x i8] c"cli_writen: write error: %s\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @cli_warnmsg(i8* %str, ...) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %len = alloca i32, align 4
  %buff = alloca [8192 x i8], align 16
  store i8* %str, i8** %str.addr, align 8
  store i32 19, i32* %len, align 4
  %arraydecay = getelementptr inbounds [8192 x i8], [8192 x i8]* %buff, i32 0, i32 0
  %0 = load i32, i32* %len, align 4
  %conv = sext i32 %0 to i64
  %call = call i8* @strncpy(i8* %arraydecay, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i64 %conv) #2
  %arraydecay1 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay12 = bitcast %struct.__va_list_tag* %arraydecay1 to i8*
  call void @llvm.va_start(i8* %arraydecay12)
  %arraydecay3 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buff, i32 0, i32 0
  %1 = load i32, i32* %len, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay3, i64 %idx.ext
  %2 = load i32, i32* %len, align 4
  %conv4 = sext i32 %2 to i64
  %sub = sub i64 8192, %conv4
  %3 = load i8*, i8** %str.addr, align 8
  %arraydecay5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %call6 = call i32 @vsnprintf(i8* %add.ptr, i64 %sub, i8* %3, %struct.__va_list_tag* %arraydecay5) #2
  %arrayidx = getelementptr inbounds [8192 x i8], [8192 x i8]* %buff, i32 0, i64 8191
  store i8 0, i8* %arrayidx, align 1
  %arraydecay7 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buff, i32 0, i32 0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call8 = call i32 @fputs(i8* %arraydecay7, %struct._IO_FILE* %4)
  %arraydecay9 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay910 = bitcast %struct.__va_list_tag* %arraydecay9 to i8*
  call void @llvm.va_end(i8* %arraydecay910)
  ret void
}

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

; Function Attrs: nounwind
declare i32 @vsnprintf(i8*, i64, i8*, %struct.__va_list_tag*) #1

declare i32 @fputs(i8*, %struct._IO_FILE*) #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

; Function Attrs: nounwind uwtable
define void @cli_errmsg(i8* %str, ...) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %len = alloca i32, align 4
  %buff = alloca [8192 x i8], align 16
  store i8* %str, i8** %str.addr, align 8
  store i32 17, i32* %len, align 4
  %arraydecay = getelementptr inbounds [8192 x i8], [8192 x i8]* %buff, i32 0, i32 0
  %0 = load i32, i32* %len, align 4
  %conv = sext i32 %0 to i64
  %call = call i8* @strncpy(i8* %arraydecay, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i64 %conv) #2
  %arraydecay1 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay12 = bitcast %struct.__va_list_tag* %arraydecay1 to i8*
  call void @llvm.va_start(i8* %arraydecay12)
  %arraydecay3 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buff, i32 0, i32 0
  %1 = load i32, i32* %len, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay3, i64 %idx.ext
  %2 = load i32, i32* %len, align 4
  %conv4 = sext i32 %2 to i64
  %sub = sub i64 8192, %conv4
  %3 = load i8*, i8** %str.addr, align 8
  %arraydecay5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %call6 = call i32 @vsnprintf(i8* %add.ptr, i64 %sub, i8* %3, %struct.__va_list_tag* %arraydecay5) #2
  %arrayidx = getelementptr inbounds [8192 x i8], [8192 x i8]* %buff, i32 0, i64 8191
  store i8 0, i8* %arrayidx, align 1
  %arraydecay7 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buff, i32 0, i32 0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call8 = call i32 @fputs(i8* %arraydecay7, %struct._IO_FILE* %4)
  %arraydecay9 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay910 = bitcast %struct.__va_list_tag* %arraydecay9 to i8*
  call void @llvm.va_end(i8* %arraydecay910)
  ret void
}

; Function Attrs: nounwind uwtable
define void @cli_dbgmsg(i8* %str, ...) #0 {
entry:
  %str.addr = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8, i8* @cli_debug_flag, align 1
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %str.addr, align 8
  %call = call i32 @puts(i8* %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @puts(i8*) #3

; Function Attrs: nounwind uwtable
define void @cl_debug() #0 {
entry:
  store i8 1, i8* @cli_debug_flag, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @cl_retflevel() #0 {
entry:
  ret i32 25
}

; Function Attrs: nounwind uwtable
define i8* @cl_retver() #0 {
entry:
  ret i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0)
}

; Function Attrs: nounwind uwtable
define i8* @cl_strerror(i32 %clerror) #0 {
entry:
  %retval = alloca i8*, align 8
  %clerror.addr = alloca i32, align 4
  store i32 %clerror, i32* %clerror.addr, align 4
  %0 = load i32, i32* %clerror.addr, align 4
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 -100, label %sw.bb.2
    i32 -101, label %sw.bb.3
    i32 -102, label %sw.bb.4
    i32 -103, label %sw.bb.5
    i32 -104, label %sw.bb.6
    i32 -105, label %sw.bb.7
    i32 -108, label %sw.bb.8
    i32 -109, label %sw.bb.9
    i32 -107, label %sw.bb.10
    i32 -112, label %sw.bb.11
    i32 -118, label %sw.bb.12
    i32 -113, label %sw.bb.13
    i32 -114, label %sw.bb.14
    i32 -115, label %sw.bb.15
    i32 -116, label %sw.bb.16
    i32 -117, label %sw.bb.17
    i32 -119, label %sw.bb.18
    i32 -120, label %sw.bb.19
    i32 -121, label %sw.bb.20
    i32 -122, label %sw.bb.21
    i32 -111, label %sw.bb.22
    i32 -123, label %sw.bb.23
    i32 -124, label %sw.bb.24
    i32 -125, label %sw.bb.25
    i32 -126, label %sw.bb.26
    i32 -127, label %sw.bb.27
  ]

sw.bb:                                            ; preds = %entry
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.4:                                          ; preds = %entry
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.5:                                          ; preds = %entry
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.6:                                          ; preds = %entry
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.7:                                          ; preds = %entry
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.8:                                          ; preds = %entry
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.9:                                          ; preds = %entry
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.10:                                         ; preds = %entry
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.11:                                         ; preds = %entry
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.12:                                         ; preds = %entry
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.13:                                         ; preds = %entry
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.16, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.14:                                         ; preds = %entry
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.15:                                         ; preds = %entry
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.18, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.16:                                         ; preds = %entry
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.17:                                         ; preds = %entry
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.20, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.18:                                         ; preds = %entry
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.19:                                         ; preds = %entry
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.20:                                         ; preds = %entry
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.21:                                         ; preds = %entry
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.24, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.22:                                         ; preds = %entry
  store i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.25, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.23:                                         ; preds = %entry
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.24:                                         ; preds = %entry
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.27, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.25:                                         ; preds = %entry
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.28, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.26:                                         ; preds = %entry
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.29, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.27:                                         ; preds = %entry
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.30, i32 0, i32 0), i8** %retval
  br label %return

sw.default:                                       ; preds = %entry
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.31, i32 0, i32 0), i8** %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.27, %sw.bb.26, %sw.bb.25, %sw.bb.24, %sw.bb.23, %sw.bb.22, %sw.bb.21, %sw.bb.20, %sw.bb.19, %sw.bb.18, %sw.bb.17, %sw.bb.16, %sw.bb.15, %sw.bb.14, %sw.bb.13, %sw.bb.12, %sw.bb.11, %sw.bb.10, %sw.bb.9, %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  %1 = load i8*, i8** %retval
  ret i8* %1
}

; Function Attrs: nounwind uwtable
define i8* @cli_md5digest(i32 %desc) #0 {
entry:
  %retval = alloca i8*, align 8
  %desc.addr = alloca i32, align 4
  %digest = alloca i8*, align 8
  %buff = alloca [8192 x i8], align 16
  %ctx = alloca %struct.cli_md5_ctx, align 4
  %bytes = alloca i32, align 4
  store i32 %desc, i32* %desc.addr, align 4
  %call = call i8* @cli_malloc(i64 16)
  store i8* %call, i8** %digest, align 8
  %tobool = icmp ne i8* %call, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  call void @cli_md5_init(%struct.cli_md5_ctx* %ctx)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %0 = load i32, i32* %desc.addr, align 4
  %arraydecay = getelementptr inbounds [8192 x i8], [8192 x i8]* %buff, i32 0, i32 0
  %call1 = call i32 @cli_readn(i32 %0, i8* %arraydecay, i32 8192)
  store i32 %call1, i32* %bytes, align 4
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay3 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buff, i32 0, i32 0
  %1 = load i32, i32* %bytes, align 4
  %conv = sext i32 %1 to i64
  call void @cli_md5_update(%struct.cli_md5_ctx* %ctx, i8* %arraydecay3, i64 %conv)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %2 = load i8*, i8** %digest, align 8
  call void @cli_md5_final(i8* %2, %struct.cli_md5_ctx* %ctx)
  %3 = load i8*, i8** %digest, align 8
  store i8* %3, i8** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %4 = load i8*, i8** %retval
  ret i8* %4
}

; Function Attrs: nounwind uwtable
define i8* @cli_malloc(i64 %size) #0 {
entry:
  %retval = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %alloc = alloca i8*, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i64, i64* %size.addr, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, i64* %size.addr, align 8
  %cmp = icmp ugt i64 %1, 184549376
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load i64, i64* %size.addr, align 8
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.35, i32 0, i32 0), i64 %2)
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i64, i64* %size.addr, align 8
  %call = call noalias i8* @malloc(i64 %3) #2
  store i8* %call, i8** %alloc, align 8
  %4 = load i8*, i8** %alloc, align 8
  %tobool1 = icmp ne i8* %4, null
  br i1 %tobool1, label %if.else, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %5 = load i64, i64* %size.addr, align 8
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.36, i32 0, i32 0), i64 %5)
  call void @perror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.37, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.else:                                          ; preds = %if.end
  %6 = load i8*, i8** %alloc, align 8
  store i8* %6, i8** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.2, %if.then
  %7 = load i8*, i8** %retval
  ret i8* %7
}

declare void @cli_md5_init(%struct.cli_md5_ctx*) #3

; Function Attrs: nounwind uwtable
define i32 @cli_readn(i32 %fd, i8* %buff, i32 %count) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %buff.addr = alloca i8*, align 8
  %count.addr = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %todo = alloca i32, align 4
  %current = alloca i8*, align 8
  store i32 %fd, i32* %fd.addr, align 4
  store i8* %buff, i8** %buff.addr, align 8
  store i32 %count, i32* %count.addr, align 4
  %0 = load i32, i32* %count.addr, align 4
  store i32 %0, i32* %todo, align 4
  %1 = load i8*, i8** %buff.addr, align 8
  store i8* %1, i8** %current, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %2 = load i32, i32* %fd.addr, align 4
  %3 = load i8*, i8** %current, align 8
  %4 = load i32, i32* %todo, align 4
  %conv = zext i32 %4 to i64
  %call = call i64 @read(i32 %2, i8* %3, i64 %conv)
  %conv2 = trunc i64 %call to i32
  store i32 %conv2, i32* %retval1, align 4
  %5 = load i32, i32* %retval1, align 4
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %6 = load i32, i32* %count.addr, align 4
  %7 = load i32, i32* %todo, align 4
  %sub = sub i32 %6, %7
  store i32 %sub, i32* %retval
  br label %return

if.end:                                           ; preds = %do.body
  %8 = load i32, i32* %retval1, align 4
  %cmp4 = icmp slt i32 %8, 0
  br i1 %cmp4, label %if.then.6, label %if.end.14

if.then.6:                                        ; preds = %if.end
  %call7 = call i32* @__errno_location() #6
  %9 = load i32, i32* %call7, align 4
  %cmp8 = icmp eq i32 %9, 4
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.then.6
  br label %do.cond

if.end.11:                                        ; preds = %if.then.6
  %call12 = call i32* @__errno_location() #6
  %10 = load i32, i32* %call12, align 4
  %call13 = call i8* @strerror(i32 %10) #2
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.64, i32 0, i32 0), i8* %call13)
  store i32 -1, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.end
  %11 = load i32, i32* %retval1, align 4
  %12 = load i32, i32* %todo, align 4
  %sub15 = sub i32 %12, %11
  store i32 %sub15, i32* %todo, align 4
  %13 = load i32, i32* %retval1, align 4
  %14 = load i8*, i8** %current, align 8
  %idx.ext = sext i32 %13 to i64
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 %idx.ext
  store i8* %add.ptr, i8** %current, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end.14, %if.then.10
  %15 = load i32, i32* %todo, align 4
  %cmp16 = icmp ugt i32 %15, 0
  br i1 %cmp16, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %16 = load i32, i32* %count.addr, align 4
  store i32 %16, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.end.11, %if.then
  %17 = load i32, i32* %retval
  ret i32 %17
}

declare void @cli_md5_update(%struct.cli_md5_ctx*, i8*, i64) #3

declare void @cli_md5_final(i8*, %struct.cli_md5_ctx*) #3

; Function Attrs: nounwind uwtable
define i8* @cli_md5stream(%struct._IO_FILE* %fs, i8* %digcpy) #0 {
entry:
  %retval = alloca i8*, align 8
  %fs.addr = alloca %struct._IO_FILE*, align 8
  %digcpy.addr = alloca i8*, align 8
  %digest = alloca [16 x i8], align 16
  %buff = alloca [8192 x i8], align 16
  %ctx = alloca %struct.cli_md5_ctx, align 4
  %md5str = alloca i8*, align 8
  %pt = alloca i8*, align 8
  %i = alloca i32, align 4
  %bytes = alloca i32, align 4
  store %struct._IO_FILE* %fs, %struct._IO_FILE** %fs.addr, align 8
  store i8* %digcpy, i8** %digcpy.addr, align 8
  call void @cli_md5_init(%struct.cli_md5_ctx* %ctx)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %arraydecay = getelementptr inbounds [8192 x i8], [8192 x i8]* %buff, i32 0, i32 0
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fs.addr, align 8
  %call = call i64 @fread(i8* %arraydecay, i64 1, i64 8192, %struct._IO_FILE* %0)
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %bytes, align 4
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay1 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buff, i32 0, i32 0
  %1 = load i32, i32* %bytes, align 4
  %conv2 = sext i32 %1 to i64
  call void @cli_md5_update(%struct.cli_md5_ctx* %ctx, i8* %arraydecay1, i64 %conv2)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %arraydecay3 = getelementptr inbounds [16 x i8], [16 x i8]* %digest, i32 0, i32 0
  call void @cli_md5_final(i8* %arraydecay3, %struct.cli_md5_ctx* %ctx)
  %call4 = call i8* @cli_calloc(i64 33, i64 1)
  store i8* %call4, i8** %md5str, align 8
  %tobool5 = icmp ne i8* %call4, null
  br i1 %tobool5, label %if.end, label %if.then

if.then:                                          ; preds = %while.end
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %while.end
  %2 = load i8*, i8** %md5str, align 8
  store i8* %2, i8** %pt, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %3, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i8*, i8** %pt, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [16 x i8], [16 x i8]* %digest, i32 0, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %conv7 = zext i8 %6 to i32
  %call8 = call i32 (i8*, i8*, ...) @sprintf(i8* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i32 %conv7) #2
  %7 = load i8*, i8** %pt, align 8
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 2
  store i8* %add.ptr, i8** %pt, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load i8*, i8** %digcpy.addr, align 8
  %tobool9 = icmp ne i8* %9, null
  br i1 %tobool9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %for.end
  %10 = load i8*, i8** %digcpy.addr, align 8
  %11 = bitcast [16 x i8]* %digest to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 16, i32 1, i1 false)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %for.end
  %12 = load i8*, i8** %md5str, align 8
  store i8* %12, i8** %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then
  %13 = load i8*, i8** %retval
  ret i8* %13
}

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #3

; Function Attrs: nounwind uwtable
define i8* @cli_calloc(i64 %nmemb, i64 %size) #0 {
entry:
  %retval = alloca i8*, align 8
  %nmemb.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %alloc = alloca i8*, align 8
  store i64 %nmemb, i64* %nmemb.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i64, i64* %size.addr, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, i64* %size.addr, align 8
  %cmp = icmp ugt i64 %1, 184549376
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load i64, i64* %size.addr, align 8
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.38, i32 0, i32 0), i64 %2)
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i64, i64* %nmemb.addr, align 8
  %4 = load i64, i64* %size.addr, align 8
  %call = call noalias i8* @calloc(i64 %3, i64 %4) #2
  store i8* %call, i8** %alloc, align 8
  %5 = load i8*, i8** %alloc, align 8
  %tobool1 = icmp ne i8* %5, null
  br i1 %tobool1, label %if.else, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %6 = load i64, i64* %nmemb.addr, align 8
  %7 = load i64, i64* %size.addr, align 8
  %mul = mul i64 %6, %7
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.39, i32 0, i32 0), i64 %mul)
  call void @perror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.else:                                          ; preds = %if.end
  %8 = load i8*, i8** %alloc, align 8
  store i8* %8, i8** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.2, %if.then
  %9 = load i8*, i8** %retval
  ret i8* %9
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define i8* @cli_md5file(i8* %filename) #0 {
entry:
  %retval = alloca i8*, align 8
  %filename.addr = alloca i8*, align 8
  %fs = alloca %struct._IO_FILE*, align 8
  %md5str = alloca i8*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fs, align 8
  %cmp = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %filename.addr, align 8
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.34, i32 0, i32 0), i8* %1)
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fs, align 8
  %call1 = call i8* @cli_md5stream(%struct._IO_FILE* %2, i8* null)
  store i8* %call1, i8** %md5str, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fs, align 8
  %call2 = call i32 @fclose(%struct._IO_FILE* %3)
  %4 = load i8*, i8** %md5str, align 8
  store i8* %4, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval
  ret i8* %5
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #3

declare i32 @fclose(%struct._IO_FILE*) #3

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare void @perror(i8*) #3

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

; Function Attrs: nounwind uwtable
define i8* @cli_realloc(i8* %ptr, i64 %size) #0 {
entry:
  %retval = alloca i8*, align 8
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %alloc = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i64, i64* %size.addr, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, i64* %size.addr, align 8
  %cmp = icmp ugt i64 %1, 184549376
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load i64, i64* %size.addr, align 8
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.41, i32 0, i32 0), i64 %2)
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i8*, i8** %ptr.addr, align 8
  %4 = load i64, i64* %size.addr, align 8
  %call = call i8* @realloc(i8* %3, i64 %4) #2
  store i8* %call, i8** %alloc, align 8
  %5 = load i8*, i8** %alloc, align 8
  %tobool1 = icmp ne i8* %5, null
  br i1 %tobool1, label %if.else, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %6 = load i64, i64* %size.addr, align 8
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.42, i32 0, i32 0), i64 %6)
  call void @perror(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.43, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.else:                                          ; preds = %if.end
  %7 = load i8*, i8** %alloc, align 8
  store i8* %7, i8** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.2, %if.then
  %8 = load i8*, i8** %retval
  ret i8* %8
}

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #1

; Function Attrs: nounwind uwtable
define i8* @cli_realloc2(i8* %ptr, i64 %size) #0 {
entry:
  %retval = alloca i8*, align 8
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %alloc = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i64, i64* %size.addr, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, i64* %size.addr, align 8
  %cmp = icmp ugt i64 %1, 184549376
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load i64, i64* %size.addr, align 8
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.44, i32 0, i32 0), i64 %2)
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i8*, i8** %ptr.addr, align 8
  %4 = load i64, i64* %size.addr, align 8
  %call = call i8* @realloc(i8* %3, i64 %4) #2
  store i8* %call, i8** %alloc, align 8
  %5 = load i8*, i8** %alloc, align 8
  %tobool1 = icmp ne i8* %5, null
  br i1 %tobool1, label %if.else, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %6 = load i64, i64* %size.addr, align 8
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.45, i32 0, i32 0), i64 %6)
  call void @perror(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.43, i32 0, i32 0))
  %7 = load i8*, i8** %ptr.addr, align 8
  %tobool3 = icmp ne i8* %7, null
  br i1 %tobool3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.then.2
  %8 = load i8*, i8** %ptr.addr, align 8
  call void @free(i8* %8) #2
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.then.2
  store i8* null, i8** %retval
  br label %return

if.else:                                          ; preds = %if.end
  %9 = load i8*, i8** %alloc, align 8
  store i8* %9, i8** %retval
  br label %return

return:                                           ; preds = %if.else, %if.end.5, %if.then
  %10 = load i8*, i8** %retval
  ret i8* %10
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define i8* @cli_strdup(i8* %s) #0 {
entry:
  %retval = alloca i8*, align 8
  %s.addr = alloca i8*, align 8
  %alloc = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.46, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %s.addr, align 8
  %call = call noalias i8* @strdup(i8* %1) #2
  store i8* %call, i8** %alloc, align 8
  %2 = load i8*, i8** %alloc, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.end.3, label %if.then.1

if.then.1:                                        ; preds = %if.end
  %3 = load i8*, i8** %s.addr, align 8
  %call2 = call i64 @strlen(i8* %3) #7
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.47, i32 0, i32 0), i64 %call2)
  call void @perror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %4 = load i8*, i8** %alloc, align 8
  store i8* %4, i8** %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.1, %if.then
  %5 = load i8*, i8** %retval
  ret i8* %5
}

; Function Attrs: nounwind
declare noalias i8* @strdup(i8*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind uwtable
define i32 @cli_rndnum(i32 %max) #0 {
entry:
  %max.addr = alloca i32, align 4
  %tv = alloca %struct.timeval, align 8
  store i32 %max, i32* %max.addr, align 4
  %call = call i32 @gettimeofday(%struct.timeval* %tv, %struct.timezone* null) #2
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i32 0, i32 1
  %0 = load i64, i64* %tv_usec, align 8
  %call1 = call i64 @clock() #2
  %add = add nsw i64 %0, %call1
  %conv = trunc i64 %add to i32
  call void @srand(i32 %conv) #2
  %call2 = call i32 @rand() #2
  %1 = load i32, i32* %max.addr, align 4
  %rem = urem i32 %call2, %1
  ret i32 %rem
}

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #1

; Function Attrs: nounwind
declare void @srand(i32) #1

; Function Attrs: nounwind
declare i64 @clock() #1

; Function Attrs: nounwind
declare i32 @rand() #1

; Function Attrs: nounwind uwtable
define void @cl_settempdir(i8* %dir, i16 signext %leavetemps) #0 {
entry:
  %dir.addr = alloca i8*, align 8
  %leavetemps.addr = alloca i16, align 2
  %var = alloca i8*, align 8
  store i8* %dir, i8** %dir.addr, align 8
  store i16 %leavetemps, i16* %leavetemps.addr, align 2
  %0 = load i8*, i8** %dir.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %dir.addr, align 8
  %call = call i64 @strlen(i8* %1) #7
  %add = add i64 8, %call
  %call1 = call i8* @cli_malloc(i64 %add)
  store i8* %call1, i8** %var, align 8
  %2 = load i8*, i8** %var, align 8
  %3 = load i8*, i8** %dir.addr, align 8
  %call2 = call i32 (i8*, i8*, ...) @sprintf(i8* %2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i32 0, i32 0), i8* %3) #2
  %4 = load i8*, i8** %var, align 8
  %call3 = call i32 @putenv(i8* %4) #2
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.else, label %if.then.5

if.then.5:                                        ; preds = %if.then
  %5 = load i8*, i8** %dir.addr, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.50, i32 0, i32 0), i8* %5)
  br label %if.end

if.else:                                          ; preds = %if.then
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.51, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.5
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  %6 = load i16, i16* %leavetemps.addr, align 2
  %conv = trunc i16 %6 to i8
  store i8 %conv, i8* @cli_leavetemps_flag, align 1
  ret void
}

; Function Attrs: nounwind
declare i32 @putenv(i8*) #1

; Function Attrs: nounwind uwtable
define i8* @cli_gentemp(i8* %dir) #0 {
entry:
  %retval = alloca i8*, align 8
  %dir.addr = alloca i8*, align 8
  %name = alloca i8*, align 8
  %tmp = alloca i8*, align 8
  %mdir = alloca i8*, align 8
  %salt = alloca [48 x i8], align 16
  %i = alloca i32, align 4
  store i8* %dir, i8** %dir.addr, align 8
  %0 = load i8*, i8** %dir.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i32 0, i32 0)) #2
  store i8* %call, i8** %mdir, align 8
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i32 0, i32 0), i8** %mdir, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  br label %if.end.5

if.else:                                          ; preds = %entry
  %1 = load i8*, i8** %dir.addr, align 8
  store i8* %1, i8** %mdir, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.end
  %2 = load i8*, i8** %mdir, align 8
  %call6 = call i64 @strlen(i8* %2) #7
  %add = add i64 %call6, 1
  %add7 = add i64 %add, 32
  %add8 = add i64 %add7, 1
  %add9 = add i64 %add8, 7
  %call10 = call i8* @cli_calloc(i64 %add9, i64 1)
  store i8* %call10, i8** %name, align 8
  %3 = load i8*, i8** %name, align 8
  %tobool11 = icmp ne i8* %3, null
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %if.end.5
  %4 = load i8*, i8** %mdir, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.54, i32 0, i32 0), i8* %4)
  store i8* null, i8** %retval
  br label %return

if.end.13:                                        ; preds = %if.end.5
  %5 = bitcast [48 x i8]* %salt to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @name_salt, i32 0, i32 0), i64 16, i32 16, i1 false)
  store i32 16, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.13
  %6 = load i32, i32* %i, align 4
  %cmp14 = icmp slt i32 %6, 48
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call15 = call i32 @cli_rndnum(i32 256)
  %conv = trunc i32 %call15 to i8
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [48 x i8], [48 x i8]* %salt, i32 0, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [48 x i8], [48 x i8]* %salt, i32 0, i32 0
  %call16 = call i8* @cli_md5buff(i8* %arraydecay, i32 48, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @name_salt, i32 0, i32 0))
  store i8* %call16, i8** %tmp, align 8
  %9 = load i8*, i8** %tmp, align 8
  %tobool17 = icmp ne i8* %9, null
  br i1 %tobool17, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %for.end
  %10 = load i8*, i8** %name, align 8
  call void @free(i8* %10) #2
  %11 = load i8*, i8** %mdir, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.54, i32 0, i32 0), i8* %11)
  store i8* null, i8** %retval
  br label %return

if.end.19:                                        ; preds = %for.end
  %12 = load i8*, i8** %name, align 8
  %13 = load i8*, i8** %mdir, align 8
  %call20 = call i32 (i8*, i8*, ...) @sprintf(i8* %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.55, i32 0, i32 0), i8* %13) #2
  %14 = load i8*, i8** %name, align 8
  %15 = load i8*, i8** %tmp, align 8
  %call21 = call i8* @strncat(i8* %14, i8* %15, i64 32) #2
  %16 = load i8*, i8** %tmp, align 8
  call void @free(i8* %16) #2
  %17 = load i8*, i8** %name, align 8
  store i8* %17, i8** %retval
  br label %return

return:                                           ; preds = %if.end.19, %if.then.18, %if.then.12
  %18 = load i8*, i8** %retval
  ret i8* %18
}

; Function Attrs: nounwind
declare i8* @getenv(i8*) #1

; Function Attrs: nounwind uwtable
define internal i8* @cli_md5buff(i8* %buffer, i32 %len, i8* %dig) #0 {
entry:
  %retval = alloca i8*, align 8
  %buffer.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %dig.addr = alloca i8*, align 8
  %digest = alloca [16 x i8], align 16
  %md5str = alloca i8*, align 8
  %pt = alloca i8*, align 8
  %ctx = alloca %struct.cli_md5_ctx, align 4
  %i = alloca i32, align 4
  store i8* %buffer, i8** %buffer.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i8* %dig, i8** %dig.addr, align 8
  call void @cli_md5_init(%struct.cli_md5_ctx* %ctx)
  %0 = load i8*, i8** %buffer.addr, align 8
  %1 = load i32, i32* %len.addr, align 4
  %conv = zext i32 %1 to i64
  call void @cli_md5_update(%struct.cli_md5_ctx* %ctx, i8* %0, i64 %conv)
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %digest, i32 0, i32 0
  call void @cli_md5_final(i8* %arraydecay, %struct.cli_md5_ctx* %ctx)
  %2 = load i8*, i8** %dig.addr, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %dig.addr, align 8
  %4 = bitcast [16 x i8]* %digest to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 16, i32 1, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call = call i8* @cli_calloc(i64 33, i64 1)
  store i8* %call, i8** %md5str, align 8
  %tobool1 = icmp ne i8* %call, null
  br i1 %tobool1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  store i8* null, i8** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %5 = load i8*, i8** %md5str, align 8
  store i8* %5, i8** %pt, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.3
  %6 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %6, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i8*, i8** %pt, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [16 x i8], [16 x i8]* %digest, i32 0, i64 %idxprom
  %9 = load i8, i8* %arrayidx, align 1
  %conv5 = zext i8 %9 to i32
  %call6 = call i32 (i8*, i8*, ...) @sprintf(i8* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i32 %conv5) #2
  %10 = load i8*, i8** %pt, align 8
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 2
  store i8* %add.ptr, i8** %pt, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i8*, i8** %md5str, align 8
  store i8* %12, i8** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.2
  %13 = load i8*, i8** %retval
  ret i8* %13
}

; Function Attrs: nounwind
declare i8* @strncat(i8*, i8*, i64) #1

; Function Attrs: nounwind uwtable
define i32 @cli_gentempfd(i8* %dir, i8** %name, i32* %fd) #0 {
entry:
  %retval = alloca i32, align 4
  %dir.addr = alloca i8*, align 8
  %name.addr = alloca i8**, align 8
  %fd.addr = alloca i32*, align 8
  store i8* %dir, i8** %dir.addr, align 8
  store i8** %name, i8*** %name.addr, align 8
  store i32* %fd, i32** %fd.addr, align 8
  %0 = load i8*, i8** %dir.addr, align 8
  %call = call i8* @cli_gentemp(i8* %0)
  %1 = load i8**, i8*** %name.addr, align 8
  store i8* %call, i8** %1, align 8
  %2 = load i8**, i8*** %name.addr, align 8
  %3 = load i8*, i8** %2, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -114, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i8**, i8*** %name.addr, align 8
  %5 = load i8*, i8** %4, align 8
  %call1 = call i32 (i8*, i32, ...) @open(i8* %5, i32 578, i32 448)
  %6 = load i32*, i32** %fd.addr, align 8
  store i32 %call1, i32* %6, align 4
  %7 = load i32*, i32** %fd.addr, align 8
  %8 = load i32, i32* %7, align 4
  %cmp = icmp eq i32 %8, -1
  br i1 %cmp, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %if.end
  %9 = load i8**, i8*** %name.addr, align 8
  %10 = load i8*, i8** %9, align 8
  %call3 = call i32* @__errno_location() #6
  %11 = load i32, i32* %call3, align 4
  %call4 = call i8* @strerror(i32 %11) #2
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.56, i32 0, i32 0), i8* %10, i8* %call4)
  %12 = load i8**, i8*** %name.addr, align 8
  %13 = load i8*, i8** %12, align 8
  call void @free(i8* %13) #2
  store i32 -123, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.2, %if.then
  %14 = load i32, i32* %retval
  ret i32 %14
}

declare i32 @open(i8*, i32, ...) #3

; Function Attrs: nounwind
declare i8* @strerror(i32) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

; Function Attrs: nounwind uwtable
define i32 @cli_rmdirs(i8* %dirname) #0 {
entry:
  %retval = alloca i32, align 4
  %dirname.addr = alloca i8*, align 8
  %dd = alloca %struct.__dirstream*, align 8
  %dent = alloca %struct.dirent*, align 8
  %maind = alloca %struct.stat, align 8
  %statbuf = alloca %struct.stat, align 8
  %path = alloca i8*, align 8
  store i8* %dirname, i8** %dirname.addr, align 8
  %0 = load i8*, i8** %dirname.addr, align 8
  %call = call i32 @chmod(i8* %0, i32 448) #2
  %1 = load i8*, i8** %dirname.addr, align 8
  %call1 = call %struct.__dirstream* @opendir(i8* %1)
  store %struct.__dirstream* %call1, %struct.__dirstream** %dd, align 8
  %cmp = icmp ne %struct.__dirstream* %call1, null
  br i1 %cmp, label %if.then, label %if.else.80

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.end, %if.then
  %2 = load i8*, i8** %dirname.addr, align 8
  %call2 = call i32 @stat(i8* %2, %struct.stat* %maind) #2
  %cmp3 = icmp ne i32 %call2, -1
  br i1 %cmp3, label %while.body, label %while.end.79

while.body:                                       ; preds = %while.cond
  %3 = load i8*, i8** %dirname.addr, align 8
  %call4 = call i32 @rmdir(i8* %3) #2
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.end, label %if.then.5

if.then.5:                                        ; preds = %while.body
  br label %while.end.79

if.end:                                           ; preds = %while.body
  %call6 = call i32* @__errno_location() #6
  %4 = load i32, i32* %call6, align 4
  %cmp7 = icmp ne i32 %4, 39
  br i1 %cmp7, label %land.lhs.true, label %if.end.17

land.lhs.true:                                    ; preds = %if.end
  %call8 = call i32* @__errno_location() #6
  %5 = load i32, i32* %call8, align 4
  %cmp9 = icmp ne i32 %5, 17
  br i1 %cmp9, label %land.lhs.true.10, label %if.end.17

land.lhs.true.10:                                 ; preds = %land.lhs.true
  %call11 = call i32* @__errno_location() #6
  %6 = load i32, i32* %call11, align 4
  %cmp12 = icmp ne i32 %6, 9
  br i1 %cmp12, label %if.then.13, label %if.end.17

if.then.13:                                       ; preds = %land.lhs.true.10
  %7 = load i8*, i8** %dirname.addr, align 8
  %call14 = call i32* @__errno_location() #6
  %8 = load i32, i32* %call14, align 4
  %call15 = call i8* @strerror(i32 %8) #2
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.57, i32 0, i32 0), i8* %7, i8* %call15)
  %9 = load %struct.__dirstream*, %struct.__dirstream** %dd, align 8
  %call16 = call i32 @closedir(%struct.__dirstream* %9)
  store i32 -1, i32* %retval
  br label %return

if.end.17:                                        ; preds = %land.lhs.true.10, %land.lhs.true, %if.end
  br label %while.cond.18

while.cond.18:                                    ; preds = %if.end.78, %if.end.17
  %10 = load %struct.__dirstream*, %struct.__dirstream** %dd, align 8
  %call19 = call %struct.dirent* @readdir(%struct.__dirstream* %10)
  store %struct.dirent* %call19, %struct.dirent** %dent, align 8
  %tobool20 = icmp ne %struct.dirent* %call19, null
  br i1 %tobool20, label %while.body.21, label %while.end

while.body.21:                                    ; preds = %while.cond.18
  %11 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_ino = getelementptr inbounds %struct.dirent, %struct.dirent* %11, i32 0, i32 0
  %12 = load i64, i64* %d_ino, align 8
  %tobool22 = icmp ne i64 %12, 0
  br i1 %tobool22, label %if.then.23, label %if.end.78

if.then.23:                                       ; preds = %while.body.21
  %13 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name = getelementptr inbounds %struct.dirent, %struct.dirent* %13, i32 0, i32 4
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %d_name, i32 0, i32 0
  %call24 = call i32 @strcmp(i8* %arraydecay, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i32 0, i32 0)) #7
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %land.lhs.true.26, label %if.end.77

land.lhs.true.26:                                 ; preds = %if.then.23
  %14 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name27 = getelementptr inbounds %struct.dirent, %struct.dirent* %14, i32 0, i32 4
  %arraydecay28 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name27, i32 0, i32 0
  %call29 = call i32 @strcmp(i8* %arraydecay28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.59, i32 0, i32 0)) #7
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.then.31, label %if.end.77

if.then.31:                                       ; preds = %land.lhs.true.26
  %15 = load i8*, i8** %dirname.addr, align 8
  %call32 = call i64 @strlen(i8* %15) #7
  %16 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name33 = getelementptr inbounds %struct.dirent, %struct.dirent* %16, i32 0, i32 4
  %arraydecay34 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name33, i32 0, i32 0
  %call35 = call i64 @strlen(i8* %arraydecay34) #7
  %add = add i64 %call32, %call35
  %add36 = add i64 %add, 2
  %call37 = call i8* @cli_malloc(i64 %add36)
  store i8* %call37, i8** %path, align 8
  %17 = load i8*, i8** %path, align 8
  %tobool38 = icmp ne i8* %17, null
  br i1 %tobool38, label %if.end.41, label %if.then.39

if.then.39:                                       ; preds = %if.then.31
  %18 = load %struct.__dirstream*, %struct.__dirstream** %dd, align 8
  %call40 = call i32 @closedir(%struct.__dirstream* %18)
  store i32 -1, i32* %retval
  br label %return

if.end.41:                                        ; preds = %if.then.31
  %19 = load i8*, i8** %path, align 8
  %20 = load i8*, i8** %dirname.addr, align 8
  %21 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name42 = getelementptr inbounds %struct.dirent, %struct.dirent* %21, i32 0, i32 4
  %arraydecay43 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name42, i32 0, i32 0
  %call44 = call i32 (i8*, i8*, ...) @sprintf(i8* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.60, i32 0, i32 0), i8* %20, i8* %arraydecay43) #2
  %22 = load i8*, i8** %path, align 8
  %call45 = call i32 @lstat(i8* %22, %struct.stat* %statbuf) #2
  %cmp46 = icmp ne i32 %call45, -1
  br i1 %cmp46, label %if.then.47, label %if.end.76

if.then.47:                                       ; preds = %if.end.41
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 3
  %23 = load i32, i32* %st_mode, align 4
  %and = and i32 %23, 61440
  %cmp48 = icmp eq i32 %and, 16384
  br i1 %cmp48, label %land.lhs.true.49, label %if.else

land.lhs.true.49:                                 ; preds = %if.then.47
  %st_mode50 = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 3
  %24 = load i32, i32* %st_mode50, align 4
  %and51 = and i32 %24, 61440
  %cmp52 = icmp eq i32 %and51, 40960
  br i1 %cmp52, label %if.else, label %if.then.53

if.then.53:                                       ; preds = %land.lhs.true.49
  %25 = load i8*, i8** %path, align 8
  %call54 = call i32 @rmdir(i8* %25) #2
  %cmp55 = icmp eq i32 %call54, -1
  br i1 %cmp55, label %if.then.56, label %if.end.67

if.then.56:                                       ; preds = %if.then.53
  %call57 = call i32* @__errno_location() #6
  %26 = load i32, i32* %call57, align 4
  %cmp58 = icmp eq i32 %26, 13
  br i1 %cmp58, label %if.then.59, label %if.end.61

if.then.59:                                       ; preds = %if.then.56
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.61, i32 0, i32 0))
  %27 = load %struct.__dirstream*, %struct.__dirstream** %dd, align 8
  %call60 = call i32 @closedir(%struct.__dirstream* %27)
  %28 = load i8*, i8** %path, align 8
  call void @free(i8* %28) #2
  store i32 -1, i32* %retval
  br label %return

if.end.61:                                        ; preds = %if.then.56
  %29 = load i8*, i8** %path, align 8
  %call62 = call i32 @cli_rmdirs(i8* %29)
  %tobool63 = icmp ne i32 %call62, 0
  br i1 %tobool63, label %if.then.64, label %if.end.66

if.then.64:                                       ; preds = %if.end.61
  %30 = load i8*, i8** %path, align 8
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.62, i32 0, i32 0), i8* %30)
  %31 = load i8*, i8** %path, align 8
  call void @free(i8* %31) #2
  %32 = load %struct.__dirstream*, %struct.__dirstream** %dd, align 8
  %call65 = call i32 @closedir(%struct.__dirstream* %32)
  store i32 -1, i32* %retval
  br label %return

if.end.66:                                        ; preds = %if.end.61
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %if.then.53
  br label %if.end.75

if.else:                                          ; preds = %land.lhs.true.49, %if.then.47
  %33 = load i8*, i8** %path, align 8
  %call68 = call i32 @unlink(i8* %33) #2
  %cmp69 = icmp slt i32 %call68, 0
  br i1 %cmp69, label %if.then.70, label %if.end.74

if.then.70:                                       ; preds = %if.else
  %34 = load i8*, i8** %path, align 8
  %call71 = call i32* @__errno_location() #6
  %35 = load i32, i32* %call71, align 4
  %call72 = call i8* @strerror(i32 %35) #2
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.63, i32 0, i32 0), i8* %34, i8* %call72)
  %36 = load i8*, i8** %path, align 8
  call void @free(i8* %36) #2
  %37 = load %struct.__dirstream*, %struct.__dirstream** %dd, align 8
  %call73 = call i32 @closedir(%struct.__dirstream* %37)
  store i32 -1, i32* %retval
  br label %return

if.end.74:                                        ; preds = %if.else
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %if.end.67
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %if.end.41
  %38 = load i8*, i8** %path, align 8
  call void @free(i8* %38) #2
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %land.lhs.true.26, %if.then.23
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %while.body.21
  br label %while.cond.18

while.end:                                        ; preds = %while.cond.18
  %39 = load %struct.__dirstream*, %struct.__dirstream** %dd, align 8
  call void @rewinddir(%struct.__dirstream* %39) #2
  br label %while.cond

while.end.79:                                     ; preds = %if.then.5, %while.cond
  br label %if.end.81

if.else.80:                                       ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end.81:                                        ; preds = %while.end.79
  %40 = load %struct.__dirstream*, %struct.__dirstream** %dd, align 8
  %call82 = call i32 @closedir(%struct.__dirstream* %40)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.81, %if.else.80, %if.then.70, %if.then.64, %if.then.59, %if.then.39, %if.then.13
  %41 = load i32, i32* %retval
  ret i32 %41
}

; Function Attrs: nounwind
declare i32 @chmod(i8*, i32) #1

declare %struct.__dirstream* @opendir(i8*) #3

; Function Attrs: nounwind
declare i32 @stat(i8*, %struct.stat*) #1

; Function Attrs: nounwind
declare i32 @rmdir(i8*) #1

declare i32 @closedir(%struct.__dirstream*) #3

declare %struct.dirent* @readdir(%struct.__dirstream*) #3

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind
declare i32 @lstat(i8*, %struct.stat*) #1

; Function Attrs: nounwind
declare i32 @unlink(i8*) #1

; Function Attrs: nounwind
declare void @rewinddir(%struct.__dirstream*) #1

declare i64 @read(i32, i8*, i64) #3

; Function Attrs: nounwind uwtable
define i32 @cli_writen(i32 %fd, i8* %buff, i32 %count) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %buff.addr = alloca i8*, align 8
  %count.addr = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %todo = alloca i32, align 4
  %current = alloca i8*, align 8
  store i32 %fd, i32* %fd.addr, align 4
  store i8* %buff, i8** %buff.addr, align 8
  store i32 %count, i32* %count.addr, align 4
  %0 = load i32, i32* %count.addr, align 4
  store i32 %0, i32* %todo, align 4
  %1 = load i8*, i8** %buff.addr, align 8
  store i8* %1, i8** %current, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %2 = load i32, i32* %fd.addr, align 4
  %3 = load i8*, i8** %current, align 8
  %4 = load i32, i32* %todo, align 4
  %conv = zext i32 %4 to i64
  %call = call i64 @write(i32 %2, i8* %3, i64 %conv)
  %conv2 = trunc i64 %call to i32
  store i32 %conv2, i32* %retval1, align 4
  %5 = load i32, i32* %retval1, align 4
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end.10

if.then:                                          ; preds = %do.body
  %call4 = call i32* @__errno_location() #6
  %6 = load i32, i32* %call4, align 4
  %cmp5 = icmp eq i32 %6, 4
  br i1 %cmp5, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  br label %do.cond

if.end:                                           ; preds = %if.then
  %call8 = call i32* @__errno_location() #6
  %7 = load i32, i32* %call8, align 4
  %call9 = call i8* @strerror(i32 %7) #2
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.65, i32 0, i32 0), i8* %call9)
  store i32 -1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %do.body
  %8 = load i32, i32* %retval1, align 4
  %9 = load i32, i32* %todo, align 4
  %sub = sub i32 %9, %8
  store i32 %sub, i32* %todo, align 4
  %10 = load i32, i32* %retval1, align 4
  %11 = load i8*, i8** %current, align 8
  %idx.ext = sext i32 %10 to i64
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 %idx.ext
  store i8* %add.ptr, i8** %current, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end.10, %if.then.7
  %12 = load i32, i32* %todo, align 4
  %cmp11 = icmp ugt i32 %12, 0
  br i1 %cmp11, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %13 = load i32, i32* %count.addr, align 4
  store i32 %13, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.end
  %14 = load i32, i32* %retval
  ret i32 %14
}

declare i64 @write(i32, i8*, i64) #3

; Function Attrs: nounwind uwtable
define i32 @cli_filecopy(i8* %src, i8* %dest) #0 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca i8*, align 8
  %dest.addr = alloca i8*, align 8
  %buffer = alloca i8*, align 8
  %s = alloca i32, align 4
  %d = alloca i32, align 4
  %bytes = alloca i32, align 4
  store i8* %src, i8** %src.addr, align 8
  store i8* %dest, i8** %dest.addr, align 8
  %0 = load i8*, i8** %src.addr, align 8
  %call = call i32 (i8*, i32, ...) @open(i8* %0, i32 0)
  store i32 %call, i32* %s, align 4
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %dest.addr, align 8
  %call1 = call i32 (i8*, i32, ...) @open(i8* %1, i32 577, i32 448)
  store i32 %call1, i32* %d, align 4
  %cmp2 = icmp eq i32 %call1, -1
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %2 = load i32, i32* %s, align 4
  %call4 = call i32 @close(i32 %2)
  store i32 -1, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %call6 = call i8* @cli_malloc(i64 8192)
  store i8* %call6, i8** %buffer, align 8
  %tobool = icmp ne i8* %call6, null
  br i1 %tobool, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end.5
  store i32 -1, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.end.5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.8
  %3 = load i32, i32* %s, align 4
  %4 = load i8*, i8** %buffer, align 8
  %call9 = call i32 @cli_readn(i32 %3, i8* %4, i32 8192)
  store i32 %call9, i32* %bytes, align 4
  %cmp10 = icmp sgt i32 %call9, 0
  br i1 %cmp10, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i32, i32* %d, align 4
  %6 = load i8*, i8** %buffer, align 8
  %7 = load i32, i32* %bytes, align 4
  %call11 = call i32 @cli_writen(i32 %5, i8* %6, i32 %7)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %8 = load i8*, i8** %buffer, align 8
  call void @free(i8* %8) #2
  %9 = load i32, i32* %s, align 4
  %call12 = call i32 @close(i32 %9)
  %10 = load i32, i32* %d, align 4
  %call13 = call i32 @close(i32 %10)
  store i32 %call13, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.7, %if.then.3, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

declare i32 @close(i32) #3

; Function Attrs: nounwind uwtable
define %struct.bitset_tag* @cli_bitset_init() #0 {
entry:
  %retval = alloca %struct.bitset_tag*, align 8
  %bs = alloca %struct.bitset_tag*, align 8
  %call = call i8* @cli_malloc(i64 16)
  %0 = bitcast i8* %call to %struct.bitset_tag*
  store %struct.bitset_tag* %0, %struct.bitset_tag** %bs, align 8
  %1 = load %struct.bitset_tag*, %struct.bitset_tag** %bs, align 8
  %tobool = icmp ne %struct.bitset_tag* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.bitset_tag* null, %struct.bitset_tag** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.bitset_tag*, %struct.bitset_tag** %bs, align 8
  %length = getelementptr inbounds %struct.bitset_tag, %struct.bitset_tag* %2, i32 0, i32 1
  store i64 1024, i64* %length, align 8
  %call1 = call i8* @cli_calloc(i64 1024, i64 1)
  %3 = load %struct.bitset_tag*, %struct.bitset_tag** %bs, align 8
  %bitset = getelementptr inbounds %struct.bitset_tag, %struct.bitset_tag* %3, i32 0, i32 0
  store i8* %call1, i8** %bitset, align 8
  %4 = load %struct.bitset_tag*, %struct.bitset_tag** %bs, align 8
  store %struct.bitset_tag* %4, %struct.bitset_tag** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct.bitset_tag*, %struct.bitset_tag** %retval
  ret %struct.bitset_tag* %5
}

; Function Attrs: nounwind uwtable
define void @cli_bitset_free(%struct.bitset_tag* %bs) #0 {
entry:
  %bs.addr = alloca %struct.bitset_tag*, align 8
  store %struct.bitset_tag* %bs, %struct.bitset_tag** %bs.addr, align 8
  %0 = load %struct.bitset_tag*, %struct.bitset_tag** %bs.addr, align 8
  %tobool = icmp ne %struct.bitset_tag* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.bitset_tag*, %struct.bitset_tag** %bs.addr, align 8
  %bitset = getelementptr inbounds %struct.bitset_tag, %struct.bitset_tag* %1, i32 0, i32 0
  %2 = load i8*, i8** %bitset, align 8
  %tobool1 = icmp ne i8* %2, null
  br i1 %tobool1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %3 = load %struct.bitset_tag*, %struct.bitset_tag** %bs.addr, align 8
  %bitset3 = getelementptr inbounds %struct.bitset_tag, %struct.bitset_tag* %3, i32 0, i32 0
  %4 = load i8*, i8** %bitset3, align 8
  call void @free(i8* %4) #2
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  %5 = load %struct.bitset_tag*, %struct.bitset_tag** %bs.addr, align 8
  %6 = bitcast %struct.bitset_tag* %5 to i8*
  call void @free(i8* %6) #2
  br label %return

return:                                           ; preds = %if.end.4, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @cli_bitset_set(%struct.bitset_tag* %bs, i64 %bit_offset) #0 {
entry:
  %retval = alloca i32, align 4
  %bs.addr = alloca %struct.bitset_tag*, align 8
  %bit_offset.addr = alloca i64, align 8
  %char_offset = alloca i64, align 8
  store %struct.bitset_tag* %bs, %struct.bitset_tag** %bs.addr, align 8
  store i64 %bit_offset, i64* %bit_offset.addr, align 8
  %0 = load i64, i64* %bit_offset.addr, align 8
  %div = udiv i64 %0, 8
  store i64 %div, i64* %char_offset, align 8
  %1 = load i64, i64* %bit_offset.addr, align 8
  %rem = urem i64 %1, 8
  store i64 %rem, i64* %bit_offset.addr, align 8
  %2 = load i64, i64* %char_offset, align 8
  %3 = load %struct.bitset_tag*, %struct.bitset_tag** %bs.addr, align 8
  %length = getelementptr inbounds %struct.bitset_tag, %struct.bitset_tag* %3, i32 0, i32 1
  %4 = load i64, i64* %length, align 8
  %cmp = icmp uge i64 %2, %4
  br i1 %cmp, label %if.then, label %if.end.2

if.then:                                          ; preds = %entry
  %5 = load %struct.bitset_tag*, %struct.bitset_tag** %bs.addr, align 8
  %6 = load i64, i64* %char_offset, align 8
  %add = add i64 %6, 1
  %call = call %struct.bitset_tag* @bitset_realloc(%struct.bitset_tag* %5, i64 %add)
  store %struct.bitset_tag* %call, %struct.bitset_tag** %bs.addr, align 8
  %7 = load %struct.bitset_tag*, %struct.bitset_tag** %bs.addr, align 8
  %tobool = icmp ne %struct.bitset_tag* %7, null
  br i1 %tobool, label %if.end, label %if.then.1

if.then.1:                                        ; preds = %if.then
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.2

if.end.2:                                         ; preds = %if.end, %entry
  %8 = load i64, i64* %bit_offset.addr, align 8
  %sh_prom = trunc i64 %8 to i32
  %shl = shl i32 1, %sh_prom
  %9 = load i64, i64* %char_offset, align 8
  %10 = load %struct.bitset_tag*, %struct.bitset_tag** %bs.addr, align 8
  %bitset = getelementptr inbounds %struct.bitset_tag, %struct.bitset_tag* %10, i32 0, i32 0
  %11 = load i8*, i8** %bitset, align 8
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 %9
  %12 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %12 to i32
  %or = or i32 %conv, %shl
  %conv3 = trunc i32 %or to i8
  store i8 %conv3, i8* %arrayidx, align 1
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.2, %if.then.1
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal %struct.bitset_tag* @bitset_realloc(%struct.bitset_tag* %bs, i64 %min_size) #0 {
entry:
  %retval = alloca %struct.bitset_tag*, align 8
  %bs.addr = alloca %struct.bitset_tag*, align 8
  %min_size.addr = alloca i64, align 8
  %new_length = alloca i64, align 8
  %new_bitset = alloca i8*, align 8
  store %struct.bitset_tag* %bs, %struct.bitset_tag** %bs.addr, align 8
  store i64 %min_size, i64* %min_size.addr, align 8
  %0 = load i64, i64* %min_size.addr, align 8
  %call = call i64 @nearest_power(i64 %0)
  store i64 %call, i64* %new_length, align 8
  %1 = load %struct.bitset_tag*, %struct.bitset_tag** %bs.addr, align 8
  %bitset = getelementptr inbounds %struct.bitset_tag, %struct.bitset_tag* %1, i32 0, i32 0
  %2 = load i8*, i8** %bitset, align 8
  %3 = load i64, i64* %new_length, align 8
  %call1 = call i8* @cli_realloc(i8* %2, i64 %3)
  store i8* %call1, i8** %new_bitset, align 8
  %4 = load i8*, i8** %new_bitset, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.bitset_tag* null, %struct.bitset_tag** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i8*, i8** %new_bitset, align 8
  %6 = load %struct.bitset_tag*, %struct.bitset_tag** %bs.addr, align 8
  %bitset2 = getelementptr inbounds %struct.bitset_tag, %struct.bitset_tag* %6, i32 0, i32 0
  store i8* %5, i8** %bitset2, align 8
  %7 = load %struct.bitset_tag*, %struct.bitset_tag** %bs.addr, align 8
  %bitset3 = getelementptr inbounds %struct.bitset_tag, %struct.bitset_tag* %7, i32 0, i32 0
  %8 = load i8*, i8** %bitset3, align 8
  %9 = load %struct.bitset_tag*, %struct.bitset_tag** %bs.addr, align 8
  %length = getelementptr inbounds %struct.bitset_tag, %struct.bitset_tag* %9, i32 0, i32 1
  %10 = load i64, i64* %length, align 8
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %10
  %11 = load i64, i64* %new_length, align 8
  %12 = load %struct.bitset_tag*, %struct.bitset_tag** %bs.addr, align 8
  %length4 = getelementptr inbounds %struct.bitset_tag, %struct.bitset_tag* %12, i32 0, i32 1
  %13 = load i64, i64* %length4, align 8
  %sub = sub i64 %11, %13
  call void @llvm.memset.p0i8.i64(i8* %add.ptr, i8 0, i64 %sub, i32 1, i1 false)
  %14 = load i64, i64* %new_length, align 8
  %15 = load %struct.bitset_tag*, %struct.bitset_tag** %bs.addr, align 8
  %length5 = getelementptr inbounds %struct.bitset_tag, %struct.bitset_tag* %15, i32 0, i32 1
  store i64 %14, i64* %length5, align 8
  %16 = load %struct.bitset_tag*, %struct.bitset_tag** %bs.addr, align 8
  store %struct.bitset_tag* %16, %struct.bitset_tag** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %17 = load %struct.bitset_tag*, %struct.bitset_tag** %retval
  ret %struct.bitset_tag* %17
}

; Function Attrs: nounwind uwtable
define i32 @cli_bitset_test(%struct.bitset_tag* %bs, i64 %bit_offset) #0 {
entry:
  %retval = alloca i32, align 4
  %bs.addr = alloca %struct.bitset_tag*, align 8
  %bit_offset.addr = alloca i64, align 8
  %char_offset = alloca i64, align 8
  store %struct.bitset_tag* %bs, %struct.bitset_tag** %bs.addr, align 8
  store i64 %bit_offset, i64* %bit_offset.addr, align 8
  %0 = load i64, i64* %bit_offset.addr, align 8
  %div = udiv i64 %0, 8
  store i64 %div, i64* %char_offset, align 8
  %1 = load i64, i64* %bit_offset.addr, align 8
  %rem = urem i64 %1, 8
  store i64 %rem, i64* %bit_offset.addr, align 8
  %2 = load i64, i64* %char_offset, align 8
  %3 = load %struct.bitset_tag*, %struct.bitset_tag** %bs.addr, align 8
  %length = getelementptr inbounds %struct.bitset_tag, %struct.bitset_tag* %3, i32 0, i32 1
  %4 = load i64, i64* %length, align 8
  %cmp = icmp uge i64 %2, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i64, i64* %char_offset, align 8
  %6 = load %struct.bitset_tag*, %struct.bitset_tag** %bs.addr, align 8
  %bitset = getelementptr inbounds %struct.bitset_tag, %struct.bitset_tag* %6, i32 0, i32 0
  %7 = load i8*, i8** %bitset, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %5
  %8 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %8 to i32
  %9 = load i64, i64* %bit_offset.addr, align 8
  %sh_prom = trunc i64 %9 to i32
  %shl = shl i32 1, %sh_prom
  %and = and i32 %conv, %shl
  store i32 %and, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal i64 @nearest_power(i64 %num) #0 {
entry:
  %retval = alloca i64, align 8
  %num.addr = alloca i64, align 8
  %n = alloca i64, align 8
  store i64 %num, i64* %num.addr, align 8
  store i64 1024, i64* %n, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i64, i64* %n, align 8
  %1 = load i64, i64* %num.addr, align 8
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i64, i64* %n, align 8
  %shl = shl i64 %2, 1
  store i64 %shl, i64* %n, align 8
  %3 = load i64, i64* %n, align 8
  %cmp1 = icmp eq i64 %3, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %4 = load i64, i64* %num.addr, align 8
  store i64 %4, i64* %retval
  br label %return

if.end:                                           ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = load i64, i64* %n, align 8
  store i64 %5, i64* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %6 = load i64, i64* %retval
  ret i64 %6
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
