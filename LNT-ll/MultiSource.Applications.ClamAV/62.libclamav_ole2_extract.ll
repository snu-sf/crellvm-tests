; ModuleID = './MultiSource.Applications.ClamAV/62.libclamav_ole2_extract.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cl_limits = type { i32, i32, i32, i32, i16, i64 }
%struct.ole2_header_tag = type { [8 x i8], [16 x i8], i16, i16, i16, i16, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, [109 x i32], i32, i8*, i64, %struct.bitset_tag*, i32 }
%struct.bitset_tag = type { i8*, i64 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.property_tag = type { [64 x i8], i16, i8, i8, i32, i32, i32, [16 x i8], i32, i32, i32, i32, i32, i32, i32, [4 x i8] }

@.str = private unnamed_addr constant [23 x i8] c"in cli_ole2_extract()\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"mmap'ed file\0A\00", align 1
@magic_id = internal global [8 x i8] c"\D0\CF\11\E0\A1\B1\1A\E1", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"OLE2 magic failed!\0A\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"WARNING: not scanned; untested big block size - please report\0A\00", align 1
@.str.4 = private unnamed_addr constant [65 x i8] c"WARNING: not scanned; untested small block size - please report\0A\00", align 1
@.str.5 = private unnamed_addr constant [60 x i8] c"WARNING: not scanned; untested sbat cutoff - please report\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Max block number: %lu\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"\0AMagic:\09\09\090x\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"CLSID:\09\09\09{\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%x \00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"Minor version:\09\090x%x\0A\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"DLL version:\09\090x%x\0A\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"Byte Order:\09\09%d\0A\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"Big Block Size:\09\09%i\0A\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"Small Block Size:\09%i\0A\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"BAT count:\09\09%d\0A\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"Prop start:\09\09%d\0A\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"SBAT cutoff:\09\09%d\0A\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"SBat start:\09\09%d\0A\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"SBat block count:\09%d\0A\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"XBat start:\09\09%d\0A\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"XBat block count:\09%d\0A\0A\00", align 1
@.str.25 = private unnamed_addr constant [36 x i8] c"OLE2: File limit reached (max: %d)\0A\00", align 1
@.str.26 = private unnamed_addr constant [41 x i8] c"OLE2: Recursion limit reached (max: %d)\0A\00", align 1
@.str.27 = private unnamed_addr constant [47 x i8] c"OLE2: Property tree loop detected at index %d\0A\00", align 1
@.str.28 = private unnamed_addr constant [27 x i8] c"ERROR: illegal Root Entry\0A\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"ERROR: handler failed\0A\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"%s/%.6d\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"OLE2 dir entry: %s\0A\00", align 1
@.str.32 = private unnamed_addr constant [36 x i8] c"ERROR: unknown OLE2 entry type: %d\0A\00", align 1
@.str.33 = private unnamed_addr constant [23 x i8] c"bat_array index error\0A\00", align 1
@.str.34 = private unnamed_addr constant [20 x i8] c"[err name len: %d]\0A\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c" [file] \00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c" [dir ] \00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c" [root] \00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c" [%d]\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c" r \00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c" b \00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c" u \00", align 1
@.str.42 = private unnamed_addr constant [16 x i8] c" 0x%.8x 0x%.8x\0A\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"%34s \00", align 1
@.str.44 = private unnamed_addr constant [36 x i8] c"\0AERROR: property name too long: %d\0A\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"%.10ld\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.47 = private unnamed_addr constant [34 x i8] c"ERROR: failed to create file: %s\0A\00", align 1
@.str.48 = private unnamed_addr constant [47 x i8] c"ERROR [handler_writefile]: init bitset failed\0A\00", align 1
@.str.49 = private unnamed_addr constant [51 x i8] c"OLE2: Max block number for file size exceeded: %d\0A\00", align 1
@.str.50 = private unnamed_addr constant [32 x i8] c"OLE2: Block list loop detected\0A\00", align 1
@.str.51 = private unnamed_addr constant [33 x i8] c"ole2_get_sbat_data_block failed\0A\00", align 1
@.str.52 = private unnamed_addr constant [21 x i8] c"No root start block\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @cli_ole2_extract(i32 %fd, i8* %dirname, %struct.cl_limits* %limits) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %dirname.addr = alloca i8*, align 8
  %limits.addr = alloca %struct.cl_limits*, align 8
  %hdr = alloca %struct.ole2_header_tag, align 8
  %hdr_size = alloca i32, align 4
  %statbuf = alloca %struct.stat, align 8
  %file_count = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4
  store i8* %dirname, i8** %dirname.addr, align 8
  store %struct.cl_limits* %limits, %struct.cl_limits** %limits.addr, align 8
  store i32 0, i32* %file_count, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0))
  store i32 520, i32* %hdr_size, align 4
  %m_area = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %hdr, i32 0, i32 18
  store i8* null, i8** %m_area, align 8
  %0 = load i32, i32* %fd.addr, align 4
  %call = call i32 @fstat(i32 %0, %struct.stat* %statbuf) #3
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end.16

if.then:                                          ; preds = %entry
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 8
  %1 = load i64, i64* %st_size, align 8
  %2 = load i32, i32* %hdr_size, align 4
  %conv = sext i32 %2 to i64
  %cmp1 = icmp slt i64 %1, %conv
  br i1 %cmp1, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %st_size4 = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 8
  %3 = load i64, i64* %st_size4, align 8
  %m_length = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %hdr, i32 0, i32 19
  store i64 %3, i64* %m_length, align 8
  %m_length5 = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %hdr, i32 0, i32 19
  %4 = load i64, i64* %m_length5, align 8
  %5 = load i32, i32* %fd.addr, align 4
  %call6 = call i8* @mmap(i8* null, i64 %4, i32 1, i32 2, i32 %5, i64 0) #3
  %m_area7 = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %hdr, i32 0, i32 18
  store i8* %call6, i8** %m_area7, align 8
  %m_area8 = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %hdr, i32 0, i32 18
  %6 = load i8*, i8** %m_area8, align 8
  %cmp9 = icmp eq i8* %6, inttoptr (i64 -1 to i8*)
  br i1 %cmp9, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.end
  %m_area12 = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %hdr, i32 0, i32 18
  store i8* null, i8** %m_area12, align 8
  br label %if.end.15

if.else:                                          ; preds = %if.end
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0))
  %7 = bitcast %struct.ole2_header_tag* %hdr to i8*
  %m_area13 = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %hdr, i32 0, i32 18
  %8 = load i8*, i8** %m_area13, align 8
  %9 = load i32, i32* %hdr_size, align 4
  %conv14 = sext i32 %9 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 %conv14, i32 1, i1 false)
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.11
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %entry
  %m_area17 = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %hdr, i32 0, i32 18
  %10 = load i8*, i8** %m_area17, align 8
  %cmp18 = icmp eq i8* %10, null
  br i1 %cmp18, label %if.then.20, label %if.end.26

if.then.20:                                       ; preds = %if.end.16
  %11 = load i32, i32* %fd.addr, align 4
  %12 = bitcast %struct.ole2_header_tag* %hdr to i8*
  %13 = load i32, i32* %hdr_size, align 4
  %call21 = call i32 @cli_readn(i32 %11, i8* %12, i32 %13)
  %14 = load i32, i32* %hdr_size, align 4
  %cmp22 = icmp ne i32 %call21, %14
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.then.20
  store i32 0, i32* %retval
  br label %return

if.end.25:                                        ; preds = %if.then.20
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.end.16
  %minor_version = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %hdr, i32 0, i32 2
  %15 = load i16, i16* %minor_version, align 1
  %minor_version27 = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %hdr, i32 0, i32 2
  store i16 %15, i16* %minor_version27, align 1
  %dll_version = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %hdr, i32 0, i32 3
  %16 = load i16, i16* %dll_version, align 1
  %dll_version28 = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %hdr, i32 0, i32 3
  store i16 %16, i16* %dll_version28, align 1
  %byte_order = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %hdr, i32 0, i32 4
  %17 = load i16, i16* %byte_order, align 1
  %byte_order29 = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %hdr, i32 0, i32 4
  store i16 %17, i16* %byte_order29, align 1
  %log2_big_block_size = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %hdr, i32 0, i32 5
  %18 = load i16, i16* %log2_big_block_size, align 1
  %log2_big_block_size30 = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %hdr, i32 0, i32 5
  store i16 %18, i16* %log2_big_block_size30, align 1
  %log2_small_block_size = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %hdr, i32 0, i32 6
  %19 = load i32, i32* %log2_small_block_size, align 1
  %log2_small_block_size31 = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %hdr, i32 0, i32 6
  store i32 %19, i32* %log2_small_block_size31, align 1
  %bat_count = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %hdr, i32 0, i32 8
  %20 = load i32, i32* %bat_count, align 1
  %bat_count32 = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %hdr, i32 0, i32 8
  store i32 %20, i32* %bat_count32, align 1
  %prop_start = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %hdr, i32 0, i32 9
  %21 = load i32, i32* %prop_start, align 1
  %prop_start33 = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %hdr, i32 0, i32 9
  store i32 %21, i32* %prop_start33, align 1
  %sbat_cutoff = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %hdr, i32 0, i32 11
  %22 = load i32, i32* %sbat_cutoff, align 1
  %sbat_cutoff34 = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %hdr, i32 0, i32 11
  store i32 %22, i32* %sbat_cutoff34, align 1
  %sbat_start = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %hdr, i32 0, i32 12
  %23 = load i32, i32* %sbat_start, align 1
  %sbat_start35 = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %hdr, i32 0, i32 12
  store i32 %23, i32* %sbat_start35, align 1
  %sbat_block_count = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %hdr, i32 0, i32 13
  %24 = load i32, i32* %sbat_block_count, align 1
  %sbat_block_count36 = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %hdr, i32 0, i32 13
  store i32 %24, i32* %sbat_block_count36, align 1
  %xbat_start = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %hdr, i32 0, i32 14
  %25 = load i32, i32* %xbat_start, align 1
  %xbat_start37 = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %hdr, i32 0, i32 14
  store i32 %25, i32* %xbat_start37, align 1
  %xbat_count = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %hdr, i32 0, i32 15
  %26 = load i32, i32* %xbat_count, align 1
  %xbat_count38 = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %hdr, i32 0, i32 15
  store i32 %26, i32* %xbat_count38, align 1
  %sbat_root_start = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %hdr, i32 0, i32 17
  store i32 -1, i32* %sbat_root_start, align 1
  %call39 = call %struct.bitset_tag* @cli_bitset_init()
  %bitset = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %hdr, i32 0, i32 20
  store %struct.bitset_tag* %call39, %struct.bitset_tag** %bitset, align 8
  %bitset40 = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %hdr, i32 0, i32 20
  %27 = load %struct.bitset_tag*, %struct.bitset_tag** %bitset40, align 8
  %tobool = icmp ne %struct.bitset_tag* %27, null
  br i1 %tobool, label %if.end.42, label %if.then.41

if.then.41:                                       ; preds = %if.end.26
  store i32 -107, i32* %retval
  br label %return

if.end.42:                                        ; preds = %if.end.26
  %magic = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %hdr, i32 0, i32 0
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %magic, i32 0, i32 0
  %call43 = call i32 @memcmp(i8* %arraydecay, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @magic_id, i32 0, i32 0), i64 8) #6
  %cmp44 = icmp ne i32 %call43, 0
  br i1 %cmp44, label %if.then.46, label %if.end.56

if.then.46:                                       ; preds = %if.end.42
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  %m_area47 = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %hdr, i32 0, i32 18
  %28 = load i8*, i8** %m_area47, align 8
  %cmp48 = icmp ne i8* %28, null
  br i1 %cmp48, label %if.then.50, label %if.end.54

if.then.50:                                       ; preds = %if.then.46
  %m_area51 = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %hdr, i32 0, i32 18
  %29 = load i8*, i8** %m_area51, align 8
  %m_length52 = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %hdr, i32 0, i32 19
  %30 = load i64, i64* %m_length52, align 8
  %call53 = call i32 @munmap(i8* %29, i64 %30) #3
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.50, %if.then.46
  %bitset55 = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %hdr, i32 0, i32 20
  %31 = load %struct.bitset_tag*, %struct.bitset_tag** %bitset55, align 8
  call void @cli_bitset_free(%struct.bitset_tag* %31)
  store i32 -107, i32* %retval
  br label %return

if.end.56:                                        ; preds = %if.end.42
  %log2_big_block_size57 = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %hdr, i32 0, i32 5
  %32 = load i16, i16* %log2_big_block_size57, align 1
  %conv58 = zext i16 %32 to i32
  %cmp59 = icmp ne i32 %conv58, 9
  br i1 %cmp59, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %if.end.56
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i32 0, i32 0))
  br label %abort

if.end.62:                                        ; preds = %if.end.56
  %log2_small_block_size63 = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %hdr, i32 0, i32 6
  %33 = load i32, i32* %log2_small_block_size63, align 1
  %cmp64 = icmp ne i32 %33, 6
  br i1 %cmp64, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %if.end.62
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i32 0, i32 0))
  br label %abort

if.end.67:                                        ; preds = %if.end.62
  %sbat_cutoff68 = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %hdr, i32 0, i32 11
  %34 = load i32, i32* %sbat_cutoff68, align 1
  %cmp69 = icmp ne i32 %34, 4096
  br i1 %cmp69, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %if.end.67
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.5, i32 0, i32 0))
  br label %abort

if.end.72:                                        ; preds = %if.end.67
  %st_size73 = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 8
  %35 = load i64, i64* %st_size73, align 8
  %log2_big_block_size74 = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %hdr, i32 0, i32 5
  %36 = load i16, i16* %log2_big_block_size74, align 1
  %conv75 = zext i16 %36 to i64
  %div = sdiv i64 %35, %conv75
  %add = add nsw i64 %div, 1
  %mul = mul nsw i64 %add, 8
  %conv76 = trunc i64 %mul to i32
  %max_block_no = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %hdr, i32 0, i32 21
  store i32 %conv76, i32* %max_block_no, align 4
  call void @print_ole2_header(%struct.ole2_header_tag* %hdr)
  %max_block_no77 = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %hdr, i32 0, i32 21
  %37 = load i32, i32* %max_block_no77, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0), i32 %37)
  %38 = load i32, i32* %fd.addr, align 4
  %39 = load i8*, i8** %dirname.addr, align 8
  %40 = load %struct.cl_limits*, %struct.cl_limits** %limits.addr, align 8
  call void @ole2_walk_property_tree(i32 %38, %struct.ole2_header_tag* %hdr, i8* %39, i32 0, i32 (i32, %struct.ole2_header_tag*, %struct.property_tag*, i8*)* @handler_writefile, i32 0, i32* %file_count, %struct.cl_limits* %40)
  br label %abort

abort:                                            ; preds = %if.end.72, %if.then.71, %if.then.66, %if.then.61
  %m_area78 = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %hdr, i32 0, i32 18
  %41 = load i8*, i8** %m_area78, align 8
  %cmp79 = icmp ne i8* %41, null
  br i1 %cmp79, label %if.then.81, label %if.end.85

if.then.81:                                       ; preds = %abort
  %m_area82 = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %hdr, i32 0, i32 18
  %42 = load i8*, i8** %m_area82, align 8
  %m_length83 = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %hdr, i32 0, i32 19
  %43 = load i64, i64* %m_length83, align 8
  %call84 = call i32 @munmap(i8* %42, i64 %43) #3
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.81, %abort
  %bitset86 = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %hdr, i32 0, i32 20
  %44 = load %struct.bitset_tag*, %struct.bitset_tag** %bitset86, align 8
  call void @cli_bitset_free(%struct.bitset_tag* %44)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.85, %if.end.54, %if.then.41, %if.then.24, %if.then.3
  %45 = load i32, i32* %retval
  ret i32 %45
}

declare void @cli_dbgmsg(i8*, ...) #1

; Function Attrs: nounwind
declare i32 @fstat(i32, %struct.stat*) #2

; Function Attrs: nounwind
declare i8* @mmap(i8*, i64, i32, i32, i32, i64) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

declare i32 @cli_readn(i32, i8*, i32) #1

declare %struct.bitset_tag* @cli_bitset_init() #1

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #4

; Function Attrs: nounwind
declare i32 @munmap(i8*, i64) #2

declare void @cli_bitset_free(%struct.bitset_tag*) #1

declare void @cli_errmsg(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @print_ole2_header(%struct.ole2_header_tag* %hdr) #0 {
entry:
  %hdr.addr = alloca %struct.ole2_header_tag*, align 8
  %i = alloca i32, align 4
  store %struct.ole2_header_tag* %hdr, %struct.ole2_header_tag** %hdr.addr, align 8
  %0 = load %struct.ole2_header_tag*, %struct.ole2_header_tag** %hdr.addr, align 8
  %tobool = icmp ne %struct.ole2_header_tag* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.ole2_header_tag*, %struct.ole2_header_tag** %hdr.addr, align 8
  %magic = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %3, i32 0, i32 0
  %arrayidx = getelementptr inbounds [8 x i8], [8 x i8]* %magic, i32 0, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %4 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i32 %conv)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0))
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.8, %for.end
  %6 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %6, 16
  br i1 %cmp2, label %for.body.4, label %for.end.10

for.body.4:                                       ; preds = %for.cond.1
  %7 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %7 to i64
  %8 = load %struct.ole2_header_tag*, %struct.ole2_header_tag** %hdr.addr, align 8
  %clsid = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %8, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [16 x i8], [16 x i8]* %clsid, i32 0, i64 %idxprom5
  %9 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %9 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i32 %conv7)
  br label %for.inc.8

for.inc.8:                                        ; preds = %for.body.4
  %10 = load i32, i32* %i, align 4
  %inc9 = add nsw i32 %10, 1
  store i32 %inc9, i32* %i, align 4
  br label %for.cond.1

for.end.10:                                       ; preds = %for.cond.1
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0))
  %11 = load %struct.ole2_header_tag*, %struct.ole2_header_tag** %hdr.addr, align 8
  %minor_version = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %11, i32 0, i32 2
  %12 = load i16, i16* %minor_version, align 1
  %conv11 = zext i16 %12 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i32 0, i32 0), i32 %conv11)
  %13 = load %struct.ole2_header_tag*, %struct.ole2_header_tag** %hdr.addr, align 8
  %dll_version = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %13, i32 0, i32 3
  %14 = load i16, i16* %dll_version, align 1
  %conv12 = zext i16 %14 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0), i32 %conv12)
  %15 = load %struct.ole2_header_tag*, %struct.ole2_header_tag** %hdr.addr, align 8
  %byte_order = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %15, i32 0, i32 4
  %16 = load i16, i16* %byte_order, align 1
  %conv13 = sext i16 %16 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 %conv13)
  %17 = load %struct.ole2_header_tag*, %struct.ole2_header_tag** %hdr.addr, align 8
  %log2_big_block_size = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %17, i32 0, i32 5
  %18 = load i16, i16* %log2_big_block_size, align 1
  %conv14 = zext i16 %18 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0), i32 %conv14)
  %19 = load %struct.ole2_header_tag*, %struct.ole2_header_tag** %hdr.addr, align 8
  %log2_small_block_size = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %19, i32 0, i32 6
  %20 = load i32, i32* %log2_small_block_size, align 1
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i32 0, i32 0), i32 %20)
  %21 = load %struct.ole2_header_tag*, %struct.ole2_header_tag** %hdr.addr, align 8
  %bat_count = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %21, i32 0, i32 8
  %22 = load i32, i32* %bat_count, align 1
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i32 0, i32 0), i32 %22)
  %23 = load %struct.ole2_header_tag*, %struct.ole2_header_tag** %hdr.addr, align 8
  %prop_start = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %23, i32 0, i32 9
  %24 = load i32, i32* %prop_start, align 1
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i32 0, i32 0), i32 %24)
  %25 = load %struct.ole2_header_tag*, %struct.ole2_header_tag** %hdr.addr, align 8
  %sbat_cutoff = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %25, i32 0, i32 11
  %26 = load i32, i32* %sbat_cutoff, align 1
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i32 0, i32 0), i32 %26)
  %27 = load %struct.ole2_header_tag*, %struct.ole2_header_tag** %hdr.addr, align 8
  %sbat_start = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %27, i32 0, i32 12
  %28 = load i32, i32* %sbat_start, align 1
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i32 0, i32 0), i32 %28)
  %29 = load %struct.ole2_header_tag*, %struct.ole2_header_tag** %hdr.addr, align 8
  %sbat_block_count = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %29, i32 0, i32 13
  %30 = load i32, i32* %sbat_block_count, align 1
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i32 0, i32 0), i32 %30)
  %31 = load %struct.ole2_header_tag*, %struct.ole2_header_tag** %hdr.addr, align 8
  %xbat_start = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %31, i32 0, i32 14
  %32 = load i32, i32* %xbat_start, align 1
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i32 0, i32 0), i32 %32)
  %33 = load %struct.ole2_header_tag*, %struct.ole2_header_tag** %hdr.addr, align 8
  %xbat_count = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %33, i32 0, i32 15
  %34 = load i32, i32* %xbat_count, align 1
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i32 0, i32 0), i32 %34)
  br label %return

return:                                           ; preds = %for.end.10, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ole2_walk_property_tree(i32 %fd, %struct.ole2_header_tag* %hdr, i8* %dir, i32 %prop_index, i32 (i32, %struct.ole2_header_tag*, %struct.property_tag*, i8*)* %handler, i32 %rec_level, i32* %file_count, %struct.cl_limits* %limits) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %hdr.addr = alloca %struct.ole2_header_tag*, align 8
  %dir.addr = alloca i8*, align 8
  %prop_index.addr = alloca i32, align 4
  %handler.addr = alloca i32 (i32, %struct.ole2_header_tag*, %struct.property_tag*, i8*)*, align 8
  %rec_level.addr = alloca i32, align 4
  %file_count.addr = alloca i32*, align 8
  %limits.addr = alloca %struct.cl_limits*, align 8
  %prop_block = alloca [4 x %struct.property_tag], align 16
  %index = alloca i32, align 4
  %current_block = alloca i32, align 4
  %i = alloca i32, align 4
  %dirname = alloca i8*, align 8
  store i32 %fd, i32* %fd.addr, align 4
  store %struct.ole2_header_tag* %hdr, %struct.ole2_header_tag** %hdr.addr, align 8
  store i8* %dir, i8** %dir.addr, align 8
  store i32 %prop_index, i32* %prop_index.addr, align 4
  store i32 (i32, %struct.ole2_header_tag*, %struct.property_tag*, i8*)* %handler, i32 (i32, %struct.ole2_header_tag*, %struct.property_tag*, i8*)** %handler.addr, align 8
  store i32 %rec_level, i32* %rec_level.addr, align 4
  store i32* %file_count, i32** %file_count.addr, align 8
  store %struct.cl_limits* %limits, %struct.cl_limits** %limits.addr, align 8
  %0 = load %struct.ole2_header_tag*, %struct.ole2_header_tag** %hdr.addr, align 8
  %prop_start = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %0, i32 0, i32 9
  %1 = load i32, i32* %prop_start, align 1
  store i32 %1, i32* %current_block, align 4
  %2 = load i32, i32* %prop_index.addr, align 4
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, i32* %prop_index.addr, align 4
  %4 = load %struct.ole2_header_tag*, %struct.ole2_header_tag** %hdr.addr, align 8
  %max_block_no = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %4, i32 0, i32 21
  %5 = load i32, i32* %max_block_no, align 4
  %cmp1 = icmp ugt i32 %3, %5
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %6 = load i32, i32* %rec_level.addr, align 4
  %cmp3 = icmp ugt i32 %6, 100
  br i1 %cmp3, label %if.then, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false.2
  %7 = load i32*, i32** %file_count.addr, align 8
  %8 = load i32, i32* %7, align 4
  %cmp5 = icmp ugt i32 %8, 100000
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.4, %lor.lhs.false.2, %lor.lhs.false, %entry
  br label %return

if.end:                                           ; preds = %lor.lhs.false.4
  %9 = load %struct.cl_limits*, %struct.cl_limits** %limits.addr, align 8
  %tobool = icmp ne %struct.cl_limits* %9, null
  br i1 %tobool, label %land.lhs.true, label %if.end.12

land.lhs.true:                                    ; preds = %if.end
  %10 = load %struct.cl_limits*, %struct.cl_limits** %limits.addr, align 8
  %maxfiles = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %10, i32 0, i32 1
  %11 = load i32, i32* %maxfiles, align 4
  %tobool6 = icmp ne i32 %11, 0
  br i1 %tobool6, label %land.lhs.true.7, label %if.end.12

land.lhs.true.7:                                  ; preds = %land.lhs.true
  %12 = load i32*, i32** %file_count.addr, align 8
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.cl_limits*, %struct.cl_limits** %limits.addr, align 8
  %maxfiles8 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %14, i32 0, i32 1
  %15 = load i32, i32* %maxfiles8, align 4
  %cmp9 = icmp ugt i32 %13, %15
  br i1 %cmp9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %land.lhs.true.7
  %16 = load %struct.cl_limits*, %struct.cl_limits** %limits.addr, align 8
  %maxfiles11 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %16, i32 0, i32 1
  %17 = load i32, i32* %maxfiles11, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.25, i32 0, i32 0), i32 %17)
  br label %return

if.end.12:                                        ; preds = %land.lhs.true.7, %land.lhs.true, %if.end
  %18 = load %struct.cl_limits*, %struct.cl_limits** %limits.addr, align 8
  %tobool13 = icmp ne %struct.cl_limits* %18, null
  br i1 %tobool13, label %land.lhs.true.14, label %if.end.21

land.lhs.true.14:                                 ; preds = %if.end.12
  %19 = load %struct.cl_limits*, %struct.cl_limits** %limits.addr, align 8
  %maxreclevel = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %19, i32 0, i32 0
  %20 = load i32, i32* %maxreclevel, align 4
  %tobool15 = icmp ne i32 %20, 0
  br i1 %tobool15, label %land.lhs.true.16, label %if.end.21

land.lhs.true.16:                                 ; preds = %land.lhs.true.14
  %21 = load i32, i32* %rec_level.addr, align 4
  %22 = load %struct.cl_limits*, %struct.cl_limits** %limits.addr, align 8
  %maxreclevel17 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %22, i32 0, i32 0
  %23 = load i32, i32* %maxreclevel17, align 4
  %cmp18 = icmp ugt i32 %21, %23
  br i1 %cmp18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %land.lhs.true.16
  %24 = load %struct.cl_limits*, %struct.cl_limits** %limits.addr, align 8
  %maxreclevel20 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %24, i32 0, i32 0
  %25 = load i32, i32* %maxreclevel20, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.26, i32 0, i32 0), i32 %25)
  br label %return

if.end.21:                                        ; preds = %land.lhs.true.16, %land.lhs.true.14, %if.end.12
  %26 = load i32, i32* %prop_index.addr, align 4
  %div = sdiv i32 %26, 4
  store i32 %div, i32* %index, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.21
  %27 = load i32, i32* %i, align 4
  %28 = load i32, i32* %index, align 4
  %cmp22 = icmp slt i32 %27, %28
  br i1 %cmp22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load i32, i32* %fd.addr, align 4
  %30 = load %struct.ole2_header_tag*, %struct.ole2_header_tag** %hdr.addr, align 8
  %31 = load i32, i32* %current_block, align 4
  %call = call i32 @ole2_get_next_block_number(i32 %29, %struct.ole2_header_tag* %30, i32 %31)
  store i32 %call, i32* %current_block, align 4
  %32 = load i32, i32* %current_block, align 4
  %cmp23 = icmp slt i32 %32, 0
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %for.body
  br label %return

if.end.25:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.25
  %33 = load i32, i32* %i, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %34 = load i32, i32* %prop_index.addr, align 4
  %rem = srem i32 %34, 4
  store i32 %rem, i32* %index, align 4
  %35 = load i32, i32* %fd.addr, align 4
  %36 = load %struct.ole2_header_tag*, %struct.ole2_header_tag** %hdr.addr, align 8
  %arraydecay = getelementptr inbounds [4 x %struct.property_tag], [4 x %struct.property_tag]* %prop_block, i32 0, i32 0
  %37 = bitcast %struct.property_tag* %arraydecay to i8*
  %38 = load i32, i32* %current_block, align 4
  %call26 = call i32 @ole2_read_block(i32 %35, %struct.ole2_header_tag* %36, i8* %37, i32 %38)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.end.29, label %if.then.28

if.then.28:                                       ; preds = %for.end
  br label %return

if.end.29:                                        ; preds = %for.end
  %39 = load i32, i32* %index, align 4
  %idxprom = sext i32 %39 to i64
  %arrayidx = getelementptr inbounds [4 x %struct.property_tag], [4 x %struct.property_tag]* %prop_block, i32 0, i64 %idxprom
  %type = getelementptr inbounds %struct.property_tag, %struct.property_tag* %arrayidx, i32 0, i32 2
  %40 = load i8, i8* %type, align 1
  %conv = zext i8 %40 to i32
  %cmp30 = icmp sle i32 %conv, 0
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.29
  br label %return

if.end.33:                                        ; preds = %if.end.29
  %41 = load i32, i32* %index, align 4
  %idxprom34 = sext i32 %41 to i64
  %arrayidx35 = getelementptr inbounds [4 x %struct.property_tag], [4 x %struct.property_tag]* %prop_block, i32 0, i64 %idxprom34
  %name_size = getelementptr inbounds %struct.property_tag, %struct.property_tag* %arrayidx35, i32 0, i32 1
  %42 = load i16, i16* %name_size, align 1
  %43 = load i32, i32* %index, align 4
  %idxprom36 = sext i32 %43 to i64
  %arrayidx37 = getelementptr inbounds [4 x %struct.property_tag], [4 x %struct.property_tag]* %prop_block, i32 0, i64 %idxprom36
  %name_size38 = getelementptr inbounds %struct.property_tag, %struct.property_tag* %arrayidx37, i32 0, i32 1
  store i16 %42, i16* %name_size38, align 1
  %44 = load i32, i32* %index, align 4
  %idxprom39 = sext i32 %44 to i64
  %arrayidx40 = getelementptr inbounds [4 x %struct.property_tag], [4 x %struct.property_tag]* %prop_block, i32 0, i64 %idxprom39
  %prev = getelementptr inbounds %struct.property_tag, %struct.property_tag* %arrayidx40, i32 0, i32 4
  %45 = load i32, i32* %prev, align 1
  %46 = load i32, i32* %index, align 4
  %idxprom41 = sext i32 %46 to i64
  %arrayidx42 = getelementptr inbounds [4 x %struct.property_tag], [4 x %struct.property_tag]* %prop_block, i32 0, i64 %idxprom41
  %prev43 = getelementptr inbounds %struct.property_tag, %struct.property_tag* %arrayidx42, i32 0, i32 4
  store i32 %45, i32* %prev43, align 1
  %47 = load i32, i32* %index, align 4
  %idxprom44 = sext i32 %47 to i64
  %arrayidx45 = getelementptr inbounds [4 x %struct.property_tag], [4 x %struct.property_tag]* %prop_block, i32 0, i64 %idxprom44
  %next = getelementptr inbounds %struct.property_tag, %struct.property_tag* %arrayidx45, i32 0, i32 5
  %48 = load i32, i32* %next, align 1
  %49 = load i32, i32* %index, align 4
  %idxprom46 = sext i32 %49 to i64
  %arrayidx47 = getelementptr inbounds [4 x %struct.property_tag], [4 x %struct.property_tag]* %prop_block, i32 0, i64 %idxprom46
  %next48 = getelementptr inbounds %struct.property_tag, %struct.property_tag* %arrayidx47, i32 0, i32 5
  store i32 %48, i32* %next48, align 1
  %50 = load i32, i32* %index, align 4
  %idxprom49 = sext i32 %50 to i64
  %arrayidx50 = getelementptr inbounds [4 x %struct.property_tag], [4 x %struct.property_tag]* %prop_block, i32 0, i64 %idxprom49
  %child = getelementptr inbounds %struct.property_tag, %struct.property_tag* %arrayidx50, i32 0, i32 6
  %51 = load i32, i32* %child, align 1
  %52 = load i32, i32* %index, align 4
  %idxprom51 = sext i32 %52 to i64
  %arrayidx52 = getelementptr inbounds [4 x %struct.property_tag], [4 x %struct.property_tag]* %prop_block, i32 0, i64 %idxprom51
  %child53 = getelementptr inbounds %struct.property_tag, %struct.property_tag* %arrayidx52, i32 0, i32 6
  store i32 %51, i32* %child53, align 1
  %53 = load i32, i32* %index, align 4
  %idxprom54 = sext i32 %53 to i64
  %arrayidx55 = getelementptr inbounds [4 x %struct.property_tag], [4 x %struct.property_tag]* %prop_block, i32 0, i64 %idxprom54
  %user_flags = getelementptr inbounds %struct.property_tag, %struct.property_tag* %arrayidx55, i32 0, i32 8
  %54 = load i32, i32* %user_flags, align 1
  %55 = load i32, i32* %index, align 4
  %idxprom56 = sext i32 %55 to i64
  %arrayidx57 = getelementptr inbounds [4 x %struct.property_tag], [4 x %struct.property_tag]* %prop_block, i32 0, i64 %idxprom56
  %user_flags58 = getelementptr inbounds %struct.property_tag, %struct.property_tag* %arrayidx57, i32 0, i32 8
  store i32 %54, i32* %user_flags58, align 1
  %56 = load i32, i32* %index, align 4
  %idxprom59 = sext i32 %56 to i64
  %arrayidx60 = getelementptr inbounds [4 x %struct.property_tag], [4 x %struct.property_tag]* %prop_block, i32 0, i64 %idxprom59
  %create_lowdate = getelementptr inbounds %struct.property_tag, %struct.property_tag* %arrayidx60, i32 0, i32 9
  %57 = load i32, i32* %create_lowdate, align 1
  %58 = load i32, i32* %index, align 4
  %idxprom61 = sext i32 %58 to i64
  %arrayidx62 = getelementptr inbounds [4 x %struct.property_tag], [4 x %struct.property_tag]* %prop_block, i32 0, i64 %idxprom61
  %create_lowdate63 = getelementptr inbounds %struct.property_tag, %struct.property_tag* %arrayidx62, i32 0, i32 9
  store i32 %57, i32* %create_lowdate63, align 1
  %59 = load i32, i32* %index, align 4
  %idxprom64 = sext i32 %59 to i64
  %arrayidx65 = getelementptr inbounds [4 x %struct.property_tag], [4 x %struct.property_tag]* %prop_block, i32 0, i64 %idxprom64
  %create_highdate = getelementptr inbounds %struct.property_tag, %struct.property_tag* %arrayidx65, i32 0, i32 10
  %60 = load i32, i32* %create_highdate, align 1
  %61 = load i32, i32* %index, align 4
  %idxprom66 = sext i32 %61 to i64
  %arrayidx67 = getelementptr inbounds [4 x %struct.property_tag], [4 x %struct.property_tag]* %prop_block, i32 0, i64 %idxprom66
  %create_highdate68 = getelementptr inbounds %struct.property_tag, %struct.property_tag* %arrayidx67, i32 0, i32 10
  store i32 %60, i32* %create_highdate68, align 1
  %62 = load i32, i32* %index, align 4
  %idxprom69 = sext i32 %62 to i64
  %arrayidx70 = getelementptr inbounds [4 x %struct.property_tag], [4 x %struct.property_tag]* %prop_block, i32 0, i64 %idxprom69
  %mod_lowdate = getelementptr inbounds %struct.property_tag, %struct.property_tag* %arrayidx70, i32 0, i32 11
  %63 = load i32, i32* %mod_lowdate, align 1
  %64 = load i32, i32* %index, align 4
  %idxprom71 = sext i32 %64 to i64
  %arrayidx72 = getelementptr inbounds [4 x %struct.property_tag], [4 x %struct.property_tag]* %prop_block, i32 0, i64 %idxprom71
  %mod_lowdate73 = getelementptr inbounds %struct.property_tag, %struct.property_tag* %arrayidx72, i32 0, i32 11
  store i32 %63, i32* %mod_lowdate73, align 1
  %65 = load i32, i32* %index, align 4
  %idxprom74 = sext i32 %65 to i64
  %arrayidx75 = getelementptr inbounds [4 x %struct.property_tag], [4 x %struct.property_tag]* %prop_block, i32 0, i64 %idxprom74
  %mod_highdate = getelementptr inbounds %struct.property_tag, %struct.property_tag* %arrayidx75, i32 0, i32 12
  %66 = load i32, i32* %mod_highdate, align 1
  %67 = load i32, i32* %index, align 4
  %idxprom76 = sext i32 %67 to i64
  %arrayidx77 = getelementptr inbounds [4 x %struct.property_tag], [4 x %struct.property_tag]* %prop_block, i32 0, i64 %idxprom76
  %mod_highdate78 = getelementptr inbounds %struct.property_tag, %struct.property_tag* %arrayidx77, i32 0, i32 12
  store i32 %66, i32* %mod_highdate78, align 1
  %68 = load i32, i32* %index, align 4
  %idxprom79 = sext i32 %68 to i64
  %arrayidx80 = getelementptr inbounds [4 x %struct.property_tag], [4 x %struct.property_tag]* %prop_block, i32 0, i64 %idxprom79
  %start_block = getelementptr inbounds %struct.property_tag, %struct.property_tag* %arrayidx80, i32 0, i32 13
  %69 = load i32, i32* %start_block, align 1
  %70 = load i32, i32* %index, align 4
  %idxprom81 = sext i32 %70 to i64
  %arrayidx82 = getelementptr inbounds [4 x %struct.property_tag], [4 x %struct.property_tag]* %prop_block, i32 0, i64 %idxprom81
  %start_block83 = getelementptr inbounds %struct.property_tag, %struct.property_tag* %arrayidx82, i32 0, i32 13
  store i32 %69, i32* %start_block83, align 1
  %71 = load i32, i32* %index, align 4
  %idxprom84 = sext i32 %71 to i64
  %arrayidx85 = getelementptr inbounds [4 x %struct.property_tag], [4 x %struct.property_tag]* %prop_block, i32 0, i64 %idxprom84
  %size = getelementptr inbounds %struct.property_tag, %struct.property_tag* %arrayidx85, i32 0, i32 14
  %72 = load i32, i32* %size, align 1
  %73 = load i32, i32* %index, align 4
  %idxprom86 = sext i32 %73 to i64
  %arrayidx87 = getelementptr inbounds [4 x %struct.property_tag], [4 x %struct.property_tag]* %prop_block, i32 0, i64 %idxprom86
  %size88 = getelementptr inbounds %struct.property_tag, %struct.property_tag* %arrayidx87, i32 0, i32 14
  store i32 %72, i32* %size88, align 1
  %74 = load i32, i32* %index, align 4
  %idxprom89 = sext i32 %74 to i64
  %arrayidx90 = getelementptr inbounds [4 x %struct.property_tag], [4 x %struct.property_tag]* %prop_block, i32 0, i64 %idxprom89
  call void @print_ole2_property(%struct.property_tag* %arrayidx90)
  %75 = load %struct.ole2_header_tag*, %struct.ole2_header_tag** %hdr.addr, align 8
  %bitset = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %75, i32 0, i32 20
  %76 = load %struct.bitset_tag*, %struct.bitset_tag** %bitset, align 8
  %77 = load i32, i32* %prop_index.addr, align 4
  %conv91 = sext i32 %77 to i64
  %call92 = call i32 @cli_bitset_test(%struct.bitset_tag* %76, i64 %conv91)
  %tobool93 = icmp ne i32 %call92, 0
  br i1 %tobool93, label %if.then.94, label %if.end.95

if.then.94:                                       ; preds = %if.end.33
  %78 = load i32, i32* %prop_index.addr, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.27, i32 0, i32 0), i32 %78)
  br label %return

if.end.95:                                        ; preds = %if.end.33
  %79 = load %struct.ole2_header_tag*, %struct.ole2_header_tag** %hdr.addr, align 8
  %bitset96 = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %79, i32 0, i32 20
  %80 = load %struct.bitset_tag*, %struct.bitset_tag** %bitset96, align 8
  %81 = load i32, i32* %prop_index.addr, align 4
  %conv97 = sext i32 %81 to i64
  %call98 = call i32 @cli_bitset_set(%struct.bitset_tag* %80, i64 %conv97)
  %tobool99 = icmp ne i32 %call98, 0
  br i1 %tobool99, label %if.end.101, label %if.then.100

if.then.100:                                      ; preds = %if.end.95
  br label %return

if.end.101:                                       ; preds = %if.end.95
  %82 = load i32, i32* %index, align 4
  %idxprom102 = sext i32 %82 to i64
  %arrayidx103 = getelementptr inbounds [4 x %struct.property_tag], [4 x %struct.property_tag]* %prop_block, i32 0, i64 %idxprom102
  %type104 = getelementptr inbounds %struct.property_tag, %struct.property_tag* %arrayidx103, i32 0, i32 2
  %83 = load i8, i8* %type104, align 1
  %conv105 = zext i8 %83 to i32
  switch i32 %conv105, label %sw.default [
    i32 5, label %sw.bb
    i32 2, label %sw.bb.130
    i32 1, label %sw.bb.147
  ]

sw.bb:                                            ; preds = %if.end.101
  %84 = load i32, i32* %prop_index.addr, align 4
  %cmp106 = icmp ne i32 %84, 0
  br i1 %cmp106, label %if.then.114, label %lor.lhs.false.108

lor.lhs.false.108:                                ; preds = %sw.bb
  %85 = load i32, i32* %rec_level.addr, align 4
  %cmp109 = icmp ne i32 %85, 0
  br i1 %cmp109, label %if.then.114, label %lor.lhs.false.111

lor.lhs.false.111:                                ; preds = %lor.lhs.false.108
  %86 = load i32*, i32** %file_count.addr, align 8
  %87 = load i32, i32* %86, align 4
  %cmp112 = icmp ne i32 %87, 0
  br i1 %cmp112, label %if.then.114, label %if.end.115

if.then.114:                                      ; preds = %lor.lhs.false.111, %lor.lhs.false.108, %sw.bb
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.28, i32 0, i32 0))
  br label %return

if.end.115:                                       ; preds = %lor.lhs.false.111
  %88 = load i32, i32* %index, align 4
  %idxprom116 = sext i32 %88 to i64
  %arrayidx117 = getelementptr inbounds [4 x %struct.property_tag], [4 x %struct.property_tag]* %prop_block, i32 0, i64 %idxprom116
  %start_block118 = getelementptr inbounds %struct.property_tag, %struct.property_tag* %arrayidx117, i32 0, i32 13
  %89 = load i32, i32* %start_block118, align 1
  %90 = load %struct.ole2_header_tag*, %struct.ole2_header_tag** %hdr.addr, align 8
  %sbat_root_start = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %90, i32 0, i32 17
  store i32 %89, i32* %sbat_root_start, align 1
  %91 = load i32, i32* %fd.addr, align 4
  %92 = load %struct.ole2_header_tag*, %struct.ole2_header_tag** %hdr.addr, align 8
  %93 = load i8*, i8** %dir.addr, align 8
  %94 = load i32, i32* %index, align 4
  %idxprom119 = sext i32 %94 to i64
  %arrayidx120 = getelementptr inbounds [4 x %struct.property_tag], [4 x %struct.property_tag]* %prop_block, i32 0, i64 %idxprom119
  %prev121 = getelementptr inbounds %struct.property_tag, %struct.property_tag* %arrayidx120, i32 0, i32 4
  %95 = load i32, i32* %prev121, align 1
  %96 = load i32 (i32, %struct.ole2_header_tag*, %struct.property_tag*, i8*)*, i32 (i32, %struct.ole2_header_tag*, %struct.property_tag*, i8*)** %handler.addr, align 8
  %97 = load i32, i32* %rec_level.addr, align 4
  %add = add i32 %97, 1
  %98 = load i32*, i32** %file_count.addr, align 8
  %99 = load %struct.cl_limits*, %struct.cl_limits** %limits.addr, align 8
  call void @ole2_walk_property_tree(i32 %91, %struct.ole2_header_tag* %92, i8* %93, i32 %95, i32 (i32, %struct.ole2_header_tag*, %struct.property_tag*, i8*)* %96, i32 %add, i32* %98, %struct.cl_limits* %99)
  %100 = load i32, i32* %fd.addr, align 4
  %101 = load %struct.ole2_header_tag*, %struct.ole2_header_tag** %hdr.addr, align 8
  %102 = load i8*, i8** %dir.addr, align 8
  %103 = load i32, i32* %index, align 4
  %idxprom122 = sext i32 %103 to i64
  %arrayidx123 = getelementptr inbounds [4 x %struct.property_tag], [4 x %struct.property_tag]* %prop_block, i32 0, i64 %idxprom122
  %next124 = getelementptr inbounds %struct.property_tag, %struct.property_tag* %arrayidx123, i32 0, i32 5
  %104 = load i32, i32* %next124, align 1
  %105 = load i32 (i32, %struct.ole2_header_tag*, %struct.property_tag*, i8*)*, i32 (i32, %struct.ole2_header_tag*, %struct.property_tag*, i8*)** %handler.addr, align 8
  %106 = load i32, i32* %rec_level.addr, align 4
  %add125 = add i32 %106, 1
  %107 = load i32*, i32** %file_count.addr, align 8
  %108 = load %struct.cl_limits*, %struct.cl_limits** %limits.addr, align 8
  call void @ole2_walk_property_tree(i32 %100, %struct.ole2_header_tag* %101, i8* %102, i32 %104, i32 (i32, %struct.ole2_header_tag*, %struct.property_tag*, i8*)* %105, i32 %add125, i32* %107, %struct.cl_limits* %108)
  %109 = load i32, i32* %fd.addr, align 4
  %110 = load %struct.ole2_header_tag*, %struct.ole2_header_tag** %hdr.addr, align 8
  %111 = load i8*, i8** %dir.addr, align 8
  %112 = load i32, i32* %index, align 4
  %idxprom126 = sext i32 %112 to i64
  %arrayidx127 = getelementptr inbounds [4 x %struct.property_tag], [4 x %struct.property_tag]* %prop_block, i32 0, i64 %idxprom126
  %child128 = getelementptr inbounds %struct.property_tag, %struct.property_tag* %arrayidx127, i32 0, i32 6
  %113 = load i32, i32* %child128, align 1
  %114 = load i32 (i32, %struct.ole2_header_tag*, %struct.property_tag*, i8*)*, i32 (i32, %struct.ole2_header_tag*, %struct.property_tag*, i8*)** %handler.addr, align 8
  %115 = load i32, i32* %rec_level.addr, align 4
  %add129 = add i32 %115, 1
  %116 = load i32*, i32** %file_count.addr, align 8
  %117 = load %struct.cl_limits*, %struct.cl_limits** %limits.addr, align 8
  call void @ole2_walk_property_tree(i32 %109, %struct.ole2_header_tag* %110, i8* %111, i32 %113, i32 (i32, %struct.ole2_header_tag*, %struct.property_tag*, i8*)* %114, i32 %add129, i32* %116, %struct.cl_limits* %117)
  br label %sw.epilog

sw.bb.130:                                        ; preds = %if.end.101
  %118 = load i32*, i32** %file_count.addr, align 8
  %119 = load i32, i32* %118, align 4
  %inc131 = add i32 %119, 1
  store i32 %inc131, i32* %118, align 4
  %120 = load i32 (i32, %struct.ole2_header_tag*, %struct.property_tag*, i8*)*, i32 (i32, %struct.ole2_header_tag*, %struct.property_tag*, i8*)** %handler.addr, align 8
  %121 = load i32, i32* %fd.addr, align 4
  %122 = load %struct.ole2_header_tag*, %struct.ole2_header_tag** %hdr.addr, align 8
  %123 = load i32, i32* %index, align 4
  %idxprom132 = sext i32 %123 to i64
  %arrayidx133 = getelementptr inbounds [4 x %struct.property_tag], [4 x %struct.property_tag]* %prop_block, i32 0, i64 %idxprom132
  %124 = load i8*, i8** %dir.addr, align 8
  %call134 = call i32 %120(i32 %121, %struct.ole2_header_tag* %122, %struct.property_tag* %arrayidx133, i8* %124)
  %tobool135 = icmp ne i32 %call134, 0
  br i1 %tobool135, label %if.end.137, label %if.then.136

if.then.136:                                      ; preds = %sw.bb.130
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i32 0, i32 0))
  br label %if.end.137

if.end.137:                                       ; preds = %if.then.136, %sw.bb.130
  %125 = load i32, i32* %fd.addr, align 4
  %126 = load %struct.ole2_header_tag*, %struct.ole2_header_tag** %hdr.addr, align 8
  %127 = load i8*, i8** %dir.addr, align 8
  %128 = load i32, i32* %index, align 4
  %idxprom138 = sext i32 %128 to i64
  %arrayidx139 = getelementptr inbounds [4 x %struct.property_tag], [4 x %struct.property_tag]* %prop_block, i32 0, i64 %idxprom138
  %prev140 = getelementptr inbounds %struct.property_tag, %struct.property_tag* %arrayidx139, i32 0, i32 4
  %129 = load i32, i32* %prev140, align 1
  %130 = load i32 (i32, %struct.ole2_header_tag*, %struct.property_tag*, i8*)*, i32 (i32, %struct.ole2_header_tag*, %struct.property_tag*, i8*)** %handler.addr, align 8
  %131 = load i32, i32* %rec_level.addr, align 4
  %132 = load i32*, i32** %file_count.addr, align 8
  %133 = load %struct.cl_limits*, %struct.cl_limits** %limits.addr, align 8
  call void @ole2_walk_property_tree(i32 %125, %struct.ole2_header_tag* %126, i8* %127, i32 %129, i32 (i32, %struct.ole2_header_tag*, %struct.property_tag*, i8*)* %130, i32 %131, i32* %132, %struct.cl_limits* %133)
  %134 = load i32, i32* %fd.addr, align 4
  %135 = load %struct.ole2_header_tag*, %struct.ole2_header_tag** %hdr.addr, align 8
  %136 = load i8*, i8** %dir.addr, align 8
  %137 = load i32, i32* %index, align 4
  %idxprom141 = sext i32 %137 to i64
  %arrayidx142 = getelementptr inbounds [4 x %struct.property_tag], [4 x %struct.property_tag]* %prop_block, i32 0, i64 %idxprom141
  %next143 = getelementptr inbounds %struct.property_tag, %struct.property_tag* %arrayidx142, i32 0, i32 5
  %138 = load i32, i32* %next143, align 1
  %139 = load i32 (i32, %struct.ole2_header_tag*, %struct.property_tag*, i8*)*, i32 (i32, %struct.ole2_header_tag*, %struct.property_tag*, i8*)** %handler.addr, align 8
  %140 = load i32, i32* %rec_level.addr, align 4
  %141 = load i32*, i32** %file_count.addr, align 8
  %142 = load %struct.cl_limits*, %struct.cl_limits** %limits.addr, align 8
  call void @ole2_walk_property_tree(i32 %134, %struct.ole2_header_tag* %135, i8* %136, i32 %138, i32 (i32, %struct.ole2_header_tag*, %struct.property_tag*, i8*)* %139, i32 %140, i32* %141, %struct.cl_limits* %142)
  %143 = load i32, i32* %fd.addr, align 4
  %144 = load %struct.ole2_header_tag*, %struct.ole2_header_tag** %hdr.addr, align 8
  %145 = load i8*, i8** %dir.addr, align 8
  %146 = load i32, i32* %index, align 4
  %idxprom144 = sext i32 %146 to i64
  %arrayidx145 = getelementptr inbounds [4 x %struct.property_tag], [4 x %struct.property_tag]* %prop_block, i32 0, i64 %idxprom144
  %child146 = getelementptr inbounds %struct.property_tag, %struct.property_tag* %arrayidx145, i32 0, i32 6
  %147 = load i32, i32* %child146, align 1
  %148 = load i32 (i32, %struct.ole2_header_tag*, %struct.property_tag*, i8*)*, i32 (i32, %struct.ole2_header_tag*, %struct.property_tag*, i8*)** %handler.addr, align 8
  %149 = load i32, i32* %rec_level.addr, align 4
  %150 = load i32*, i32** %file_count.addr, align 8
  %151 = load %struct.cl_limits*, %struct.cl_limits** %limits.addr, align 8
  call void @ole2_walk_property_tree(i32 %143, %struct.ole2_header_tag* %144, i8* %145, i32 %147, i32 (i32, %struct.ole2_header_tag*, %struct.property_tag*, i8*)* %148, i32 %149, i32* %150, %struct.cl_limits* %151)
  br label %sw.epilog

sw.bb.147:                                        ; preds = %if.end.101
  %152 = load i8*, i8** %dir.addr, align 8
  %call148 = call i64 @strlen(i8* %152) #6
  %add149 = add i64 %call148, 8
  %call150 = call i8* @cli_malloc(i64 %add149)
  store i8* %call150, i8** %dirname, align 8
  %153 = load i8*, i8** %dirname, align 8
  %tobool151 = icmp ne i8* %153, null
  br i1 %tobool151, label %if.end.153, label %if.then.152

if.then.152:                                      ; preds = %sw.bb.147
  br label %return

if.end.153:                                       ; preds = %sw.bb.147
  %154 = load i8*, i8** %dirname, align 8
  %155 = load i8*, i8** %dir.addr, align 8
  %call154 = call i64 @strlen(i8* %155) #6
  %add155 = add i64 %call154, 8
  %156 = load i8*, i8** %dir.addr, align 8
  %157 = load i32, i32* %prop_index.addr, align 4
  %call156 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %154, i64 %add155, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0), i8* %156, i32 %157) #3
  %158 = load i8*, i8** %dirname, align 8
  %call157 = call i32 @mkdir(i8* %158, i32 448) #3
  %cmp158 = icmp ne i32 %call157, 0
  br i1 %cmp158, label %if.then.160, label %if.end.161

if.then.160:                                      ; preds = %if.end.153
  %159 = load i8*, i8** %dirname, align 8
  call void @free(i8* %159) #3
  br label %return

if.end.161:                                       ; preds = %if.end.153
  %160 = load i8*, i8** %dirname, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.31, i32 0, i32 0), i8* %160)
  %161 = load i32, i32* %fd.addr, align 4
  %162 = load %struct.ole2_header_tag*, %struct.ole2_header_tag** %hdr.addr, align 8
  %163 = load i8*, i8** %dir.addr, align 8
  %164 = load i32, i32* %index, align 4
  %idxprom162 = sext i32 %164 to i64
  %arrayidx163 = getelementptr inbounds [4 x %struct.property_tag], [4 x %struct.property_tag]* %prop_block, i32 0, i64 %idxprom162
  %prev164 = getelementptr inbounds %struct.property_tag, %struct.property_tag* %arrayidx163, i32 0, i32 4
  %165 = load i32, i32* %prev164, align 1
  %166 = load i32 (i32, %struct.ole2_header_tag*, %struct.property_tag*, i8*)*, i32 (i32, %struct.ole2_header_tag*, %struct.property_tag*, i8*)** %handler.addr, align 8
  %167 = load i32, i32* %rec_level.addr, align 4
  %add165 = add i32 %167, 1
  %168 = load i32*, i32** %file_count.addr, align 8
  %169 = load %struct.cl_limits*, %struct.cl_limits** %limits.addr, align 8
  call void @ole2_walk_property_tree(i32 %161, %struct.ole2_header_tag* %162, i8* %163, i32 %165, i32 (i32, %struct.ole2_header_tag*, %struct.property_tag*, i8*)* %166, i32 %add165, i32* %168, %struct.cl_limits* %169)
  %170 = load i32, i32* %fd.addr, align 4
  %171 = load %struct.ole2_header_tag*, %struct.ole2_header_tag** %hdr.addr, align 8
  %172 = load i8*, i8** %dir.addr, align 8
  %173 = load i32, i32* %index, align 4
  %idxprom166 = sext i32 %173 to i64
  %arrayidx167 = getelementptr inbounds [4 x %struct.property_tag], [4 x %struct.property_tag]* %prop_block, i32 0, i64 %idxprom166
  %next168 = getelementptr inbounds %struct.property_tag, %struct.property_tag* %arrayidx167, i32 0, i32 5
  %174 = load i32, i32* %next168, align 1
  %175 = load i32 (i32, %struct.ole2_header_tag*, %struct.property_tag*, i8*)*, i32 (i32, %struct.ole2_header_tag*, %struct.property_tag*, i8*)** %handler.addr, align 8
  %176 = load i32, i32* %rec_level.addr, align 4
  %add169 = add i32 %176, 1
  %177 = load i32*, i32** %file_count.addr, align 8
  %178 = load %struct.cl_limits*, %struct.cl_limits** %limits.addr, align 8
  call void @ole2_walk_property_tree(i32 %170, %struct.ole2_header_tag* %171, i8* %172, i32 %174, i32 (i32, %struct.ole2_header_tag*, %struct.property_tag*, i8*)* %175, i32 %add169, i32* %177, %struct.cl_limits* %178)
  %179 = load i32, i32* %fd.addr, align 4
  %180 = load %struct.ole2_header_tag*, %struct.ole2_header_tag** %hdr.addr, align 8
  %181 = load i8*, i8** %dirname, align 8
  %182 = load i32, i32* %index, align 4
  %idxprom170 = sext i32 %182 to i64
  %arrayidx171 = getelementptr inbounds [4 x %struct.property_tag], [4 x %struct.property_tag]* %prop_block, i32 0, i64 %idxprom170
  %child172 = getelementptr inbounds %struct.property_tag, %struct.property_tag* %arrayidx171, i32 0, i32 6
  %183 = load i32, i32* %child172, align 1
  %184 = load i32 (i32, %struct.ole2_header_tag*, %struct.property_tag*, i8*)*, i32 (i32, %struct.ole2_header_tag*, %struct.property_tag*, i8*)** %handler.addr, align 8
  %185 = load i32, i32* %rec_level.addr, align 4
  %add173 = add i32 %185, 1
  %186 = load i32*, i32** %file_count.addr, align 8
  %187 = load %struct.cl_limits*, %struct.cl_limits** %limits.addr, align 8
  call void @ole2_walk_property_tree(i32 %179, %struct.ole2_header_tag* %180, i8* %181, i32 %183, i32 (i32, %struct.ole2_header_tag*, %struct.property_tag*, i8*)* %184, i32 %add173, i32* %186, %struct.cl_limits* %187)
  %188 = load i8*, i8** %dirname, align 8
  call void @free(i8* %188) #3
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.101
  %189 = load i32, i32* %index, align 4
  %idxprom174 = sext i32 %189 to i64
  %arrayidx175 = getelementptr inbounds [4 x %struct.property_tag], [4 x %struct.property_tag]* %prop_block, i32 0, i64 %idxprom174
  %type176 = getelementptr inbounds %struct.property_tag, %struct.property_tag* %arrayidx175, i32 0, i32 2
  %190 = load i8, i8* %type176, align 1
  %conv177 = zext i8 %190 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.32, i32 0, i32 0), i32 %conv177)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.161, %if.end.137, %if.end.115
  br label %return

return:                                           ; preds = %sw.epilog, %if.then.160, %if.then.152, %if.then.114, %if.then.100, %if.then.94, %if.then.32, %if.then.28, %if.then.24, %if.then.19, %if.then.10, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @handler_writefile(i32 %fd, %struct.ole2_header_tag* %hdr, %struct.property_tag* %prop, i8* %dir) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %hdr.addr = alloca %struct.ole2_header_tag*, align 8
  %prop.addr = alloca %struct.property_tag*, align 8
  %dir.addr = alloca i8*, align 8
  %buff = alloca i8*, align 8
  %current_block = alloca i32, align 4
  %ofd = alloca i32, align 4
  %len = alloca i32, align 4
  %offset = alloca i32, align 4
  %name = alloca i8*, align 8
  %newname = alloca i8*, align 8
  %blk_bitset = alloca %struct.bitset_tag*, align 8
  %i = alloca i64, align 8
  store i32 %fd, i32* %fd.addr, align 4
  store %struct.ole2_header_tag* %hdr, %struct.ole2_header_tag** %hdr.addr, align 8
  store %struct.property_tag* %prop, %struct.property_tag** %prop.addr, align 8
  store i8* %dir, i8** %dir.addr, align 8
  %0 = load %struct.property_tag*, %struct.property_tag** %prop.addr, align 8
  %type = getelementptr inbounds %struct.property_tag, %struct.property_tag* %0, i32 0, i32 2
  %1 = load i8, i8* %type, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.property_tag*, %struct.property_tag** %prop.addr, align 8
  %name_size = getelementptr inbounds %struct.property_tag, %struct.property_tag* %2, i32 0, i32 1
  %3 = load i16, i16* %name_size, align 1
  %conv2 = zext i16 %3 to i32
  %cmp3 = icmp sgt i32 %conv2, 64
  br i1 %cmp3, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %4 = load %struct.property_tag*, %struct.property_tag** %prop.addr, align 8
  %name_size6 = getelementptr inbounds %struct.property_tag, %struct.property_tag* %4, i32 0, i32 1
  %5 = load i16, i16* %name_size6, align 1
  %conv7 = zext i16 %5 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.44, i32 0, i32 0), i32 %conv7)
  store i32 0, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  %6 = load %struct.property_tag*, %struct.property_tag** %prop.addr, align 8
  %name9 = getelementptr inbounds %struct.property_tag, %struct.property_tag* %6, i32 0, i32 0
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %name9, i32 0, i32 0
  %7 = load %struct.property_tag*, %struct.property_tag** %prop.addr, align 8
  %name_size10 = getelementptr inbounds %struct.property_tag, %struct.property_tag* %7, i32 0, i32 1
  %8 = load i16, i16* %name_size10, align 1
  %conv11 = zext i16 %8 to i32
  %call = call i8* @get_property_name(i8* %arraydecay, i32 %conv11)
  store i8* %call, i8** %name, align 8
  %tobool = icmp ne i8* %call, null
  br i1 %tobool, label %if.else, label %if.then.12

if.then.12:                                       ; preds = %if.end.8
  %9 = load i32, i32* %fd.addr, align 4
  %call13 = call i64 @lseek(i32 %9, i64 0, i32 1) #3
  store i64 %call13, i64* %i, align 8
  %call14 = call i8* @cli_malloc(i64 11)
  store i8* %call14, i8** %name, align 8
  %10 = load i8*, i8** %name, align 8
  %tobool15 = icmp ne i8* %10, null
  br i1 %tobool15, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %if.then.12
  store i32 0, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.then.12
  %11 = load i8*, i8** %name, align 8
  %12 = load i64, i64* %i, align 8
  %13 = load %struct.property_tag*, %struct.property_tag** %prop.addr, align 8
  %14 = ptrtoint %struct.property_tag* %13 to i64
  %add = add nsw i64 %12, %14
  %call18 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %11, i64 11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), i64 %add) #3
  br label %if.end.19

if.else:                                          ; preds = %if.end.8
  %15 = load i8*, i8** %name, align 8
  call void @sanitiseName(i8* %15)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %if.end.17
  %16 = load i8*, i8** %name, align 8
  %call20 = call i64 @strlen(i8* %16) #6
  %17 = load i8*, i8** %dir.addr, align 8
  %call21 = call i64 @strlen(i8* %17) #6
  %add22 = add i64 %call20, %call21
  %add23 = add i64 %add22, 2
  %call24 = call i8* @cli_malloc(i64 %add23)
  store i8* %call24, i8** %newname, align 8
  %18 = load i8*, i8** %newname, align 8
  %tobool25 = icmp ne i8* %18, null
  br i1 %tobool25, label %if.end.27, label %if.then.26

if.then.26:                                       ; preds = %if.end.19
  %19 = load i8*, i8** %name, align 8
  call void @free(i8* %19) #3
  store i32 0, i32* %retval
  br label %return

if.end.27:                                        ; preds = %if.end.19
  %20 = load i8*, i8** %newname, align 8
  %21 = load i8*, i8** %dir.addr, align 8
  %22 = load i8*, i8** %name, align 8
  %call28 = call i32 (i8*, i8*, ...) @sprintf(i8* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0), i8* %21, i8* %22) #3
  %23 = load i8*, i8** %name, align 8
  call void @free(i8* %23) #3
  %24 = load i8*, i8** %newname, align 8
  %call29 = call i32 (i8*, i32, ...) @open(i8* %24, i32 577, i32 448)
  store i32 %call29, i32* %ofd, align 4
  %25 = load i32, i32* %ofd, align 4
  %cmp30 = icmp slt i32 %25, 0
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.27
  %26 = load i8*, i8** %newname, align 8
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.47, i32 0, i32 0), i8* %26)
  %27 = load i8*, i8** %newname, align 8
  call void @free(i8* %27) #3
  store i32 0, i32* %retval
  br label %return

if.end.33:                                        ; preds = %if.end.27
  %28 = load i8*, i8** %newname, align 8
  call void @free(i8* %28) #3
  %29 = load %struct.property_tag*, %struct.property_tag** %prop.addr, align 8
  %start_block = getelementptr inbounds %struct.property_tag, %struct.property_tag* %29, i32 0, i32 13
  %30 = load i32, i32* %start_block, align 1
  store i32 %30, i32* %current_block, align 4
  %31 = load %struct.property_tag*, %struct.property_tag** %prop.addr, align 8
  %size = getelementptr inbounds %struct.property_tag, %struct.property_tag* %31, i32 0, i32 14
  %32 = load i32, i32* %size, align 1
  store i32 %32, i32* %len, align 4
  %33 = load %struct.ole2_header_tag*, %struct.ole2_header_tag** %hdr.addr, align 8
  %log2_big_block_size = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %33, i32 0, i32 5
  %34 = load i16, i16* %log2_big_block_size, align 1
  %conv34 = zext i16 %34 to i32
  %shl = shl i32 1, %conv34
  %conv35 = sext i32 %shl to i64
  %call36 = call i8* @cli_malloc(i64 %conv35)
  store i8* %call36, i8** %buff, align 8
  %35 = load i8*, i8** %buff, align 8
  %tobool37 = icmp ne i8* %35, null
  br i1 %tobool37, label %if.end.40, label %if.then.38

if.then.38:                                       ; preds = %if.end.33
  %36 = load i32, i32* %ofd, align 4
  %call39 = call i32 @close(i32 %36)
  store i32 0, i32* %retval
  br label %return

if.end.40:                                        ; preds = %if.end.33
  %call41 = call %struct.bitset_tag* @cli_bitset_init()
  store %struct.bitset_tag* %call41, %struct.bitset_tag** %blk_bitset, align 8
  %37 = load %struct.bitset_tag*, %struct.bitset_tag** %blk_bitset, align 8
  %tobool42 = icmp ne %struct.bitset_tag* %37, null
  br i1 %tobool42, label %if.end.45, label %if.then.43

if.then.43:                                       ; preds = %if.end.40
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.48, i32 0, i32 0))
  %38 = load i32, i32* %ofd, align 4
  %call44 = call i32 @close(i32 %38)
  store i32 0, i32* %retval
  br label %return

if.end.45:                                        ; preds = %if.end.40
  br label %while.cond

while.cond:                                       ; preds = %if.end.149, %if.end.45
  %39 = load i32, i32* %current_block, align 4
  %cmp46 = icmp sge i32 %39, 0
  br i1 %cmp46, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %40 = load i32, i32* %len, align 4
  %cmp48 = icmp sgt i32 %40, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %41 = phi i1 [ false, %while.cond ], [ %cmp48, %land.rhs ]
  br i1 %41, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %42 = load i32, i32* %current_block, align 4
  %43 = load %struct.ole2_header_tag*, %struct.ole2_header_tag** %hdr.addr, align 8
  %max_block_no = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %43, i32 0, i32 21
  %44 = load i32, i32* %max_block_no, align 4
  %cmp50 = icmp ugt i32 %42, %44
  br i1 %cmp50, label %if.then.52, label %if.end.54

if.then.52:                                       ; preds = %while.body
  %45 = load i32, i32* %current_block, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.49, i32 0, i32 0), i32 %45)
  %46 = load i32, i32* %ofd, align 4
  %call53 = call i32 @close(i32 %46)
  %47 = load i8*, i8** %buff, align 8
  call void @free(i8* %47) #3
  %48 = load %struct.bitset_tag*, %struct.bitset_tag** %blk_bitset, align 8
  call void @cli_bitset_free(%struct.bitset_tag* %48)
  store i32 0, i32* %retval
  br label %return

if.end.54:                                        ; preds = %while.body
  %49 = load %struct.bitset_tag*, %struct.bitset_tag** %blk_bitset, align 8
  %50 = load i32, i32* %current_block, align 4
  %conv55 = sext i32 %50 to i64
  %call56 = call i32 @cli_bitset_test(%struct.bitset_tag* %49, i64 %conv55)
  %tobool57 = icmp ne i32 %call56, 0
  br i1 %tobool57, label %if.then.58, label %if.end.60

if.then.58:                                       ; preds = %if.end.54
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.50, i32 0, i32 0))
  %51 = load i32, i32* %ofd, align 4
  %call59 = call i32 @close(i32 %51)
  %52 = load i8*, i8** %buff, align 8
  call void @free(i8* %52) #3
  %53 = load %struct.bitset_tag*, %struct.bitset_tag** %blk_bitset, align 8
  call void @cli_bitset_free(%struct.bitset_tag* %53)
  store i32 0, i32* %retval
  br label %return

if.end.60:                                        ; preds = %if.end.54
  %54 = load %struct.bitset_tag*, %struct.bitset_tag** %blk_bitset, align 8
  %55 = load i32, i32* %current_block, align 4
  %conv61 = sext i32 %55 to i64
  %call62 = call i32 @cli_bitset_set(%struct.bitset_tag* %54, i64 %conv61)
  %tobool63 = icmp ne i32 %call62, 0
  br i1 %tobool63, label %if.end.66, label %if.then.64

if.then.64:                                       ; preds = %if.end.60
  %56 = load i32, i32* %ofd, align 4
  %call65 = call i32 @close(i32 %56)
  %57 = load i8*, i8** %buff, align 8
  call void @free(i8* %57) #3
  %58 = load %struct.bitset_tag*, %struct.bitset_tag** %blk_bitset, align 8
  call void @cli_bitset_free(%struct.bitset_tag* %58)
  store i32 0, i32* %retval
  br label %return

if.end.66:                                        ; preds = %if.end.60
  %59 = load %struct.property_tag*, %struct.property_tag** %prop.addr, align 8
  %size67 = getelementptr inbounds %struct.property_tag, %struct.property_tag* %59, i32 0, i32 14
  %60 = load i32, i32* %size67, align 1
  %conv68 = zext i32 %60 to i64
  %61 = load %struct.ole2_header_tag*, %struct.ole2_header_tag** %hdr.addr, align 8
  %sbat_cutoff = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %61, i32 0, i32 11
  %62 = load i32, i32* %sbat_cutoff, align 1
  %conv69 = zext i32 %62 to i64
  %cmp70 = icmp slt i64 %conv68, %conv69
  br i1 %cmp70, label %if.then.72, label %if.else.99

if.then.72:                                       ; preds = %if.end.66
  %63 = load i32, i32* %fd.addr, align 4
  %64 = load %struct.ole2_header_tag*, %struct.ole2_header_tag** %hdr.addr, align 8
  %65 = load i8*, i8** %buff, align 8
  %66 = load i32, i32* %current_block, align 4
  %call73 = call i32 @ole2_get_sbat_data_block(i32 %63, %struct.ole2_header_tag* %64, i8* %65, i32 %66)
  %tobool74 = icmp ne i32 %call73, 0
  br i1 %tobool74, label %if.end.77, label %if.then.75

if.then.75:                                       ; preds = %if.then.72
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.51, i32 0, i32 0))
  %67 = load i32, i32* %ofd, align 4
  %call76 = call i32 @close(i32 %67)
  %68 = load i8*, i8** %buff, align 8
  call void @free(i8* %68) #3
  %69 = load %struct.bitset_tag*, %struct.bitset_tag** %blk_bitset, align 8
  call void @cli_bitset_free(%struct.bitset_tag* %69)
  store i32 0, i32* %retval
  br label %return

if.end.77:                                        ; preds = %if.then.72
  %70 = load i32, i32* %current_block, align 4
  %rem = srem i32 %70, 8
  %mul = mul nsw i32 64, %rem
  store i32 %mul, i32* %offset, align 4
  %71 = load i32, i32* %ofd, align 4
  %72 = load i32, i32* %offset, align 4
  %idxprom = sext i32 %72 to i64
  %73 = load i8*, i8** %buff, align 8
  %arrayidx = getelementptr inbounds i8, i8* %73, i64 %idxprom
  %74 = load i32, i32* %len, align 4
  %cmp78 = icmp slt i32 %74, 64
  br i1 %cmp78, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.77
  %75 = load i32, i32* %len, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.77
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %75, %cond.true ], [ 64, %cond.false ]
  %call80 = call i32 @cli_writen(i32 %71, i8* %arrayidx, i32 %cond)
  %76 = load i32, i32* %len, align 4
  %cmp81 = icmp slt i32 %76, 64
  br i1 %cmp81, label %cond.true.83, label %cond.false.84

cond.true.83:                                     ; preds = %cond.end
  %77 = load i32, i32* %len, align 4
  br label %cond.end.85

cond.false.84:                                    ; preds = %cond.end
  br label %cond.end.85

cond.end.85:                                      ; preds = %cond.false.84, %cond.true.83
  %cond86 = phi i32 [ %77, %cond.true.83 ], [ 64, %cond.false.84 ]
  %cmp87 = icmp ne i32 %call80, %cond86
  br i1 %cmp87, label %if.then.89, label %if.end.91

if.then.89:                                       ; preds = %cond.end.85
  %78 = load i32, i32* %ofd, align 4
  %call90 = call i32 @close(i32 %78)
  %79 = load i8*, i8** %buff, align 8
  call void @free(i8* %79) #3
  %80 = load %struct.bitset_tag*, %struct.bitset_tag** %blk_bitset, align 8
  call void @cli_bitset_free(%struct.bitset_tag* %80)
  store i32 0, i32* %retval
  br label %return

if.end.91:                                        ; preds = %cond.end.85
  %81 = load i32, i32* %len, align 4
  %cmp92 = icmp slt i32 %81, 64
  br i1 %cmp92, label %cond.true.94, label %cond.false.95

cond.true.94:                                     ; preds = %if.end.91
  %82 = load i32, i32* %len, align 4
  br label %cond.end.96

cond.false.95:                                    ; preds = %if.end.91
  br label %cond.end.96

cond.end.96:                                      ; preds = %cond.false.95, %cond.true.94
  %cond97 = phi i32 [ %82, %cond.true.94 ], [ 64, %cond.false.95 ]
  %83 = load i32, i32* %len, align 4
  %sub = sub nsw i32 %83, %cond97
  store i32 %sub, i32* %len, align 4
  %84 = load i32, i32* %fd.addr, align 4
  %85 = load %struct.ole2_header_tag*, %struct.ole2_header_tag** %hdr.addr, align 8
  %86 = load i32, i32* %current_block, align 4
  %call98 = call i32 @ole2_get_next_sbat_block(i32 %84, %struct.ole2_header_tag* %85, i32 %86)
  store i32 %call98, i32* %current_block, align 4
  br label %if.end.149

if.else.99:                                       ; preds = %if.end.66
  %87 = load i32, i32* %fd.addr, align 4
  %88 = load %struct.ole2_header_tag*, %struct.ole2_header_tag** %hdr.addr, align 8
  %89 = load i8*, i8** %buff, align 8
  %90 = load i32, i32* %current_block, align 4
  %call100 = call i32 @ole2_read_block(i32 %87, %struct.ole2_header_tag* %88, i8* %89, i32 %90)
  %tobool101 = icmp ne i32 %call100, 0
  br i1 %tobool101, label %if.end.104, label %if.then.102

if.then.102:                                      ; preds = %if.else.99
  %91 = load i32, i32* %ofd, align 4
  %call103 = call i32 @close(i32 %91)
  %92 = load i8*, i8** %buff, align 8
  call void @free(i8* %92) #3
  %93 = load %struct.bitset_tag*, %struct.bitset_tag** %blk_bitset, align 8
  call void @cli_bitset_free(%struct.bitset_tag* %93)
  store i32 0, i32* %retval
  br label %return

if.end.104:                                       ; preds = %if.else.99
  %94 = load i32, i32* %ofd, align 4
  %95 = load i8*, i8** %buff, align 8
  %96 = load i32, i32* %len, align 4
  %97 = load %struct.ole2_header_tag*, %struct.ole2_header_tag** %hdr.addr, align 8
  %log2_big_block_size105 = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %97, i32 0, i32 5
  %98 = load i16, i16* %log2_big_block_size105, align 1
  %conv106 = zext i16 %98 to i32
  %shl107 = shl i32 1, %conv106
  %cmp108 = icmp slt i32 %96, %shl107
  br i1 %cmp108, label %cond.true.110, label %cond.false.111

cond.true.110:                                    ; preds = %if.end.104
  %99 = load i32, i32* %len, align 4
  br label %cond.end.115

cond.false.111:                                   ; preds = %if.end.104
  %100 = load %struct.ole2_header_tag*, %struct.ole2_header_tag** %hdr.addr, align 8
  %log2_big_block_size112 = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %100, i32 0, i32 5
  %101 = load i16, i16* %log2_big_block_size112, align 1
  %conv113 = zext i16 %101 to i32
  %shl114 = shl i32 1, %conv113
  br label %cond.end.115

cond.end.115:                                     ; preds = %cond.false.111, %cond.true.110
  %cond116 = phi i32 [ %99, %cond.true.110 ], [ %shl114, %cond.false.111 ]
  %call117 = call i32 @cli_writen(i32 %94, i8* %95, i32 %cond116)
  %102 = load i32, i32* %len, align 4
  %103 = load %struct.ole2_header_tag*, %struct.ole2_header_tag** %hdr.addr, align 8
  %log2_big_block_size118 = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %103, i32 0, i32 5
  %104 = load i16, i16* %log2_big_block_size118, align 1
  %conv119 = zext i16 %104 to i32
  %shl120 = shl i32 1, %conv119
  %cmp121 = icmp slt i32 %102, %shl120
  br i1 %cmp121, label %cond.true.123, label %cond.false.124

cond.true.123:                                    ; preds = %cond.end.115
  %105 = load i32, i32* %len, align 4
  br label %cond.end.128

cond.false.124:                                   ; preds = %cond.end.115
  %106 = load %struct.ole2_header_tag*, %struct.ole2_header_tag** %hdr.addr, align 8
  %log2_big_block_size125 = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %106, i32 0, i32 5
  %107 = load i16, i16* %log2_big_block_size125, align 1
  %conv126 = zext i16 %107 to i32
  %shl127 = shl i32 1, %conv126
  br label %cond.end.128

cond.end.128:                                     ; preds = %cond.false.124, %cond.true.123
  %cond129 = phi i32 [ %105, %cond.true.123 ], [ %shl127, %cond.false.124 ]
  %cmp130 = icmp ne i32 %call117, %cond129
  br i1 %cmp130, label %if.then.132, label %if.end.134

if.then.132:                                      ; preds = %cond.end.128
  %108 = load i32, i32* %ofd, align 4
  %call133 = call i32 @close(i32 %108)
  %109 = load i8*, i8** %buff, align 8
  call void @free(i8* %109) #3
  %110 = load %struct.bitset_tag*, %struct.bitset_tag** %blk_bitset, align 8
  call void @cli_bitset_free(%struct.bitset_tag* %110)
  store i32 0, i32* %retval
  br label %return

if.end.134:                                       ; preds = %cond.end.128
  %111 = load i32, i32* %fd.addr, align 4
  %112 = load %struct.ole2_header_tag*, %struct.ole2_header_tag** %hdr.addr, align 8
  %113 = load i32, i32* %current_block, align 4
  %call135 = call i32 @ole2_get_next_block_number(i32 %111, %struct.ole2_header_tag* %112, i32 %113)
  store i32 %call135, i32* %current_block, align 4
  %114 = load i32, i32* %len, align 4
  %115 = load %struct.ole2_header_tag*, %struct.ole2_header_tag** %hdr.addr, align 8
  %log2_big_block_size136 = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %115, i32 0, i32 5
  %116 = load i16, i16* %log2_big_block_size136, align 1
  %conv137 = zext i16 %116 to i32
  %shl138 = shl i32 1, %conv137
  %cmp139 = icmp slt i32 %114, %shl138
  br i1 %cmp139, label %cond.true.141, label %cond.false.142

cond.true.141:                                    ; preds = %if.end.134
  %117 = load i32, i32* %len, align 4
  br label %cond.end.146

cond.false.142:                                   ; preds = %if.end.134
  %118 = load %struct.ole2_header_tag*, %struct.ole2_header_tag** %hdr.addr, align 8
  %log2_big_block_size143 = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %118, i32 0, i32 5
  %119 = load i16, i16* %log2_big_block_size143, align 1
  %conv144 = zext i16 %119 to i32
  %shl145 = shl i32 1, %conv144
  br label %cond.end.146

cond.end.146:                                     ; preds = %cond.false.142, %cond.true.141
  %cond147 = phi i32 [ %117, %cond.true.141 ], [ %shl145, %cond.false.142 ]
  %120 = load i32, i32* %len, align 4
  %sub148 = sub nsw i32 %120, %cond147
  store i32 %sub148, i32* %len, align 4
  br label %if.end.149

if.end.149:                                       ; preds = %cond.end.146, %cond.end.96
  br label %while.cond

while.end:                                        ; preds = %land.end
  %121 = load i32, i32* %ofd, align 4
  %call150 = call i32 @close(i32 %121)
  %122 = load i8*, i8** %buff, align 8
  call void @free(i8* %122) #3
  %123 = load %struct.bitset_tag*, %struct.bitset_tag** %blk_bitset, align 8
  call void @cli_bitset_free(%struct.bitset_tag* %123)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.132, %if.then.102, %if.then.89, %if.then.75, %if.then.64, %if.then.58, %if.then.52, %if.then.43, %if.then.38, %if.then.32, %if.then.26, %if.then.16, %if.then.5, %if.then
  %124 = load i32, i32* %retval
  ret i32 %124
}

; Function Attrs: nounwind uwtable
define internal i32 @ole2_get_next_block_number(i32 %fd, %struct.ole2_header_tag* %hdr, i32 %current_block) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %hdr.addr = alloca %struct.ole2_header_tag*, align 8
  %current_block.addr = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4
  store %struct.ole2_header_tag* %hdr, %struct.ole2_header_tag** %hdr.addr, align 8
  store i32 %current_block, i32* %current_block.addr, align 4
  %0 = load i32, i32* %current_block.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %current_block.addr, align 4
  %div = sdiv i32 %1, 128
  %cmp1 = icmp sgt i32 %div, 108
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %2 = load i32, i32* %fd.addr, align 4
  %3 = load %struct.ole2_header_tag*, %struct.ole2_header_tag** %hdr.addr, align 8
  %4 = load i32, i32* %current_block.addr, align 4
  %call = call i32 @ole2_get_next_xbat_block(i32 %2, %struct.ole2_header_tag* %3, i32 %4)
  store i32 %call, i32* %retval
  br label %return

if.else:                                          ; preds = %if.end
  %5 = load i32, i32* %fd.addr, align 4
  %6 = load %struct.ole2_header_tag*, %struct.ole2_header_tag** %hdr.addr, align 8
  %7 = load i32, i32* %current_block.addr, align 4
  %call3 = call i32 @ole2_get_next_bat_block(i32 %5, %struct.ole2_header_tag* %6, i32 %7)
  store i32 %call3, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.2, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal i32 @ole2_read_block(i32 %fd, %struct.ole2_header_tag* %hdr, i8* %buff, i32 %blockno) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %hdr.addr = alloca %struct.ole2_header_tag*, align 8
  %buff.addr = alloca i8*, align 8
  %blockno.addr = alloca i32, align 4
  %offset = alloca i64, align 8
  %offend = alloca i64, align 8
  store i32 %fd, i32* %fd.addr, align 4
  store %struct.ole2_header_tag* %hdr, %struct.ole2_header_tag** %hdr.addr, align 8
  store i8* %buff, i8** %buff.addr, align 8
  store i32 %blockno, i32* %blockno.addr, align 4
  %0 = load i32, i32* %blockno.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %blockno.addr, align 4
  %2 = load %struct.ole2_header_tag*, %struct.ole2_header_tag** %hdr.addr, align 8
  %log2_big_block_size = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %2, i32 0, i32 5
  %3 = load i16, i16* %log2_big_block_size, align 1
  %conv = zext i16 %3 to i32
  %shl = shl i32 %1, %conv
  %add = add nsw i32 %shl, 512
  %conv1 = sext i32 %add to i64
  store i64 %conv1, i64* %offset, align 8
  %4 = load %struct.ole2_header_tag*, %struct.ole2_header_tag** %hdr.addr, align 8
  %m_area = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %4, i32 0, i32 18
  %5 = load i8*, i8** %m_area, align 8
  %cmp2 = icmp eq i8* %5, null
  br i1 %cmp2, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  %6 = load i32, i32* %fd.addr, align 4
  %7 = load i64, i64* %offset, align 8
  %call = call i64 @lseek(i32 %6, i64 %7, i32 0) #3
  %8 = load i64, i64* %offset, align 8
  %cmp5 = icmp ne i64 %call, %8
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.then.4
  store i32 0, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.then.4
  %9 = load i32, i32* %fd.addr, align 4
  %10 = load i8*, i8** %buff.addr, align 8
  %11 = load %struct.ole2_header_tag*, %struct.ole2_header_tag** %hdr.addr, align 8
  %log2_big_block_size9 = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %11, i32 0, i32 5
  %12 = load i16, i16* %log2_big_block_size9, align 1
  %conv10 = zext i16 %12 to i32
  %shl11 = shl i32 1, %conv10
  %call12 = call i32 @cli_readn(i32 %9, i8* %10, i32 %shl11)
  %13 = load %struct.ole2_header_tag*, %struct.ole2_header_tag** %hdr.addr, align 8
  %log2_big_block_size13 = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %13, i32 0, i32 5
  %14 = load i16, i16* %log2_big_block_size13, align 1
  %conv14 = zext i16 %14 to i32
  %shl15 = shl i32 1, %conv14
  %cmp16 = icmp ne i32 %call12, %shl15
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.8
  store i32 0, i32* %retval
  br label %return

if.end.19:                                        ; preds = %if.end.8
  br label %if.end.36

if.else:                                          ; preds = %if.end
  %15 = load i64, i64* %offset, align 8
  %16 = load %struct.ole2_header_tag*, %struct.ole2_header_tag** %hdr.addr, align 8
  %log2_big_block_size20 = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %16, i32 0, i32 5
  %17 = load i16, i16* %log2_big_block_size20, align 1
  %conv21 = zext i16 %17 to i32
  %shl22 = shl i32 1, %conv21
  %conv23 = sext i32 %shl22 to i64
  %add24 = add nsw i64 %15, %conv23
  store i64 %add24, i64* %offend, align 8
  %18 = load i64, i64* %offend, align 8
  %cmp25 = icmp sle i64 %18, 0
  br i1 %cmp25, label %if.then.29, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %19 = load i64, i64* %offend, align 8
  %20 = load %struct.ole2_header_tag*, %struct.ole2_header_tag** %hdr.addr, align 8
  %m_length = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %20, i32 0, i32 19
  %21 = load i64, i64* %m_length, align 8
  %cmp27 = icmp sgt i64 %19, %21
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %lor.lhs.false, %if.else
  store i32 0, i32* %retval
  br label %return

if.end.30:                                        ; preds = %lor.lhs.false
  %22 = load i8*, i8** %buff.addr, align 8
  %23 = load %struct.ole2_header_tag*, %struct.ole2_header_tag** %hdr.addr, align 8
  %m_area31 = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %23, i32 0, i32 18
  %24 = load i8*, i8** %m_area31, align 8
  %25 = load i64, i64* %offset, align 8
  %add.ptr = getelementptr inbounds i8, i8* %24, i64 %25
  %26 = load %struct.ole2_header_tag*, %struct.ole2_header_tag** %hdr.addr, align 8
  %log2_big_block_size32 = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %26, i32 0, i32 5
  %27 = load i16, i16* %log2_big_block_size32, align 1
  %conv33 = zext i16 %27 to i32
  %shl34 = shl i32 1, %conv33
  %conv35 = sext i32 %shl34 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %add.ptr, i64 %conv35, i32 1, i1 false)
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.30, %if.end.19
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.36, %if.then.29, %if.then.18, %if.then.7, %if.then
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define internal void @print_ole2_property(%struct.property_tag* %property) #0 {
entry:
  %property.addr = alloca %struct.property_tag*, align 8
  store %struct.property_tag* %property, %struct.property_tag** %property.addr, align 8
  %0 = load %struct.property_tag*, %struct.property_tag** %property.addr, align 8
  %name_size = getelementptr inbounds %struct.property_tag, %struct.property_tag* %0, i32 0, i32 1
  %1 = load i16, i16* %name_size, align 1
  %conv = zext i16 %1 to i32
  %cmp = icmp sgt i32 %conv, 64
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.property_tag*, %struct.property_tag** %property.addr, align 8
  %name_size2 = getelementptr inbounds %struct.property_tag, %struct.property_tag* %2, i32 0, i32 1
  %3 = load i16, i16* %name_size2, align 1
  %conv3 = zext i16 %3 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.34, i32 0, i32 0), i32 %conv3)
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.property_tag*, %struct.property_tag** %property.addr, align 8
  %name = getelementptr inbounds %struct.property_tag, %struct.property_tag* %4, i32 0, i32 0
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %name, i32 0, i32 0
  %5 = load %struct.property_tag*, %struct.property_tag** %property.addr, align 8
  %name_size4 = getelementptr inbounds %struct.property_tag, %struct.property_tag* %5, i32 0, i32 1
  %6 = load i16, i16* %name_size4, align 1
  %conv5 = zext i16 %6 to i32
  call void @print_property_name(i8* %arraydecay, i32 %conv5)
  %7 = load %struct.property_tag*, %struct.property_tag** %property.addr, align 8
  %type = getelementptr inbounds %struct.property_tag, %struct.property_tag* %7, i32 0, i32 2
  %8 = load i8, i8* %type, align 1
  %conv6 = zext i8 %8 to i32
  switch i32 %conv6, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb.7
    i32 5, label %sw.bb.8
  ]

sw.bb:                                            ; preds = %if.end
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i32 0, i32 0))
  br label %sw.epilog

sw.bb.7:                                          ; preds = %if.end
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i32 0, i32 0))
  br label %sw.epilog

sw.bb.8:                                          ; preds = %if.end
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i32 0, i32 0))
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %9 = load %struct.property_tag*, %struct.property_tag** %property.addr, align 8
  %type9 = getelementptr inbounds %struct.property_tag, %struct.property_tag* %9, i32 0, i32 2
  %10 = load i8, i8* %type9, align 1
  %conv10 = zext i8 %10 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0), i32 %conv10)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.8, %sw.bb.7, %sw.bb
  %11 = load %struct.property_tag*, %struct.property_tag** %property.addr, align 8
  %color = getelementptr inbounds %struct.property_tag, %struct.property_tag* %11, i32 0, i32 3
  %12 = load i8, i8* %color, align 1
  %conv11 = zext i8 %12 to i32
  switch i32 %conv11, label %sw.default.14 [
    i32 0, label %sw.bb.12
    i32 1, label %sw.bb.13
  ]

sw.bb.12:                                         ; preds = %sw.epilog
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i32 0, i32 0))
  br label %sw.epilog.15

sw.bb.13:                                         ; preds = %sw.epilog
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i32 0, i32 0))
  br label %sw.epilog.15

sw.default.14:                                    ; preds = %sw.epilog
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i32 0, i32 0))
  br label %sw.epilog.15

sw.epilog.15:                                     ; preds = %sw.default.14, %sw.bb.13, %sw.bb.12
  %13 = load %struct.property_tag*, %struct.property_tag** %property.addr, align 8
  %size = getelementptr inbounds %struct.property_tag, %struct.property_tag* %13, i32 0, i32 14
  %14 = load i32, i32* %size, align 1
  %15 = load %struct.property_tag*, %struct.property_tag** %property.addr, align 8
  %user_flags = getelementptr inbounds %struct.property_tag, %struct.property_tag* %15, i32 0, i32 8
  %16 = load i32, i32* %user_flags, align 1
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.42, i32 0, i32 0), i32 %14, i32 %16)
  br label %return

return:                                           ; preds = %sw.epilog.15, %if.then
  ret void
}

declare i32 @cli_bitset_test(%struct.bitset_tag*, i64) #1

declare i32 @cli_bitset_set(%struct.bitset_tag*, i64) #1

declare i8* @cli_malloc(i64) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #2

; Function Attrs: nounwind
declare i32 @mkdir(i8*, i32) #2

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @ole2_get_next_xbat_block(i32 %fd, %struct.ole2_header_tag* %hdr, i32 %current_block) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %hdr.addr = alloca %struct.ole2_header_tag*, align 8
  %current_block.addr = alloca i32, align 4
  %xbat_index = alloca i32, align 4
  %xbat_block_index = alloca i32, align 4
  %bat_index = alloca i32, align 4
  %bat_blockno = alloca i32, align 4
  %xbat = alloca [128 x i32], align 16
  %bat = alloca [128 x i32], align 16
  store i32 %fd, i32* %fd.addr, align 4
  store %struct.ole2_header_tag* %hdr, %struct.ole2_header_tag** %hdr.addr, align 8
  store i32 %current_block, i32* %current_block.addr, align 4
  %0 = load i32, i32* %current_block.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %current_block.addr, align 4
  %div = sdiv i32 %1, 128
  store i32 %div, i32* %xbat_index, align 4
  %2 = load i32, i32* %xbat_index, align 4
  %sub = sub nsw i32 %2, 109
  %div1 = sdiv i32 %sub, 127
  store i32 %div1, i32* %xbat_block_index, align 4
  %3 = load i32, i32* %xbat_index, align 4
  %sub2 = sub nsw i32 %3, 109
  %rem = srem i32 %sub2, 127
  store i32 %rem, i32* %bat_blockno, align 4
  %4 = load i32, i32* %current_block.addr, align 4
  %rem3 = srem i32 %4, 128
  store i32 %rem3, i32* %bat_index, align 4
  %5 = load i32, i32* %fd.addr, align 4
  %6 = load %struct.ole2_header_tag*, %struct.ole2_header_tag** %hdr.addr, align 8
  %7 = bitcast [128 x i32]* %xbat to i8*
  %8 = load %struct.ole2_header_tag*, %struct.ole2_header_tag** %hdr.addr, align 8
  %xbat_start = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %8, i32 0, i32 14
  %9 = load i32, i32* %xbat_start, align 1
  %call = call i32 @ole2_read_block(i32 %5, %struct.ole2_header_tag* %6, i8* %7, i32 %9)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end.10, %if.end.5
  %10 = load i32, i32* %xbat_block_index, align 4
  %cmp6 = icmp sgt i32 %10, 0
  br i1 %cmp6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load i32, i32* %fd.addr, align 4
  %12 = load %struct.ole2_header_tag*, %struct.ole2_header_tag** %hdr.addr, align 8
  %13 = bitcast [128 x i32]* %xbat to i8*
  %arrayidx = getelementptr inbounds [128 x i32], [128 x i32]* %xbat, i32 0, i64 127
  %14 = load i32, i32* %arrayidx, align 4
  %call7 = call i32 @ole2_read_block(i32 %11, %struct.ole2_header_tag* %12, i8* %13, i32 %14)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %while.body
  store i32 -1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %while.body
  %15 = load i32, i32* %xbat_block_index, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, i32* %xbat_block_index, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %16 = load i32, i32* %fd.addr, align 4
  %17 = load %struct.ole2_header_tag*, %struct.ole2_header_tag** %hdr.addr, align 8
  %18 = bitcast [128 x i32]* %bat to i8*
  %19 = load i32, i32* %bat_blockno, align 4
  %idxprom = sext i32 %19 to i64
  %arrayidx11 = getelementptr inbounds [128 x i32], [128 x i32]* %xbat, i32 0, i64 %idxprom
  %20 = load i32, i32* %arrayidx11, align 4
  %call12 = call i32 @ole2_read_block(i32 %16, %struct.ole2_header_tag* %17, i8* %18, i32 %20)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %while.end
  store i32 -1, i32* %retval
  br label %return

if.end.15:                                        ; preds = %while.end
  %21 = load i32, i32* %bat_index, align 4
  %idxprom16 = sext i32 %21 to i64
  %arrayidx17 = getelementptr inbounds [128 x i32], [128 x i32]* %bat, i32 0, i64 %idxprom16
  %22 = load i32, i32* %arrayidx17, align 4
  store i32 %22, i32* %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.then.14, %if.then.9, %if.then.4, %if.then
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define internal i32 @ole2_get_next_bat_block(i32 %fd, %struct.ole2_header_tag* %hdr, i32 %current_block) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %hdr.addr = alloca %struct.ole2_header_tag*, align 8
  %current_block.addr = alloca i32, align 4
  %bat_array_index = alloca i32, align 4
  %bat = alloca [128 x i32], align 16
  store i32 %fd, i32* %fd.addr, align 4
  store %struct.ole2_header_tag* %hdr, %struct.ole2_header_tag** %hdr.addr, align 8
  store i32 %current_block, i32* %current_block.addr, align 4
  %0 = load i32, i32* %current_block.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %current_block.addr, align 4
  %div = sdiv i32 %1, 128
  store i32 %div, i32* %bat_array_index, align 4
  %2 = load i32, i32* %bat_array_index, align 4
  %3 = load %struct.ole2_header_tag*, %struct.ole2_header_tag** %hdr.addr, align 8
  %bat_count = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %3, i32 0, i32 8
  %4 = load i32, i32* %bat_count, align 1
  %cmp1 = icmp sgt i32 %2, %4
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.33, i32 0, i32 0))
  store i32 -10, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %5 = load i32, i32* %fd.addr, align 4
  %6 = load %struct.ole2_header_tag*, %struct.ole2_header_tag** %hdr.addr, align 8
  %7 = bitcast [128 x i32]* %bat to i8*
  %8 = load i32, i32* %bat_array_index, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.ole2_header_tag*, %struct.ole2_header_tag** %hdr.addr, align 8
  %bat_array = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %9, i32 0, i32 16
  %arrayidx = getelementptr inbounds [109 x i32], [109 x i32]* %bat_array, i32 0, i64 %idxprom
  %10 = load i32, i32* %arrayidx, align 1
  %call = call i32 @ole2_read_block(i32 %5, %struct.ole2_header_tag* %6, i8* %7, i32 %10)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end.3
  store i32 -1, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end.3
  %11 = load i32, i32* %current_block.addr, align 4
  %12 = load i32, i32* %bat_array_index, align 4
  %mul = mul nsw i32 %12, 128
  %sub = sub nsw i32 %11, %mul
  %idxprom6 = sext i32 %sub to i64
  %arrayidx7 = getelementptr inbounds [128 x i32], [128 x i32]* %bat, i32 0, i64 %idxprom6
  %13 = load i32, i32* %arrayidx7, align 4
  store i32 %13, i32* %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.4, %if.then.2, %if.then
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) #2

; Function Attrs: nounwind uwtable
define internal void @print_property_name(i8* %pname, i32 %size) #0 {
entry:
  %pname.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %name = alloca i8*, align 8
  store i8* %pname, i8** %pname.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load i8*, i8** %pname.addr, align 8
  %1 = load i32, i32* %size.addr, align 4
  %call = call i8* @get_property_name(i8* %0, i32 %1)
  store i8* %call, i8** %name, align 8
  %2 = load i8*, i8** %name, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %name, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0), i8* %3)
  %4 = load i8*, i8** %name, align 8
  call void @free(i8* %4) #3
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @get_property_name(i8* %name, i32 %size) #0 {
entry:
  %retval = alloca i8*, align 8
  %name.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %newname = alloca i8*, align 8
  %x = alloca i16, align 2
  store i8* %name, i8** %name.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %size.addr, align 4
  %cmp2 = icmp sle i32 %2, 0
  br i1 %cmp2, label %if.then, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %3 = load i32, i32* %size.addr, align 4
  %cmp5 = icmp sgt i32 %3, 64
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.4, %lor.lhs.false, %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.4
  %4 = load i32, i32* %size.addr, align 4
  %mul = mul nsw i32 %4, 7
  %conv7 = sext i32 %mul to i64
  %call = call i8* @cli_malloc(i64 %conv7)
  store i8* %call, i8** %newname, align 8
  %5 = load i8*, i8** %newname, align 8
  %tobool = icmp ne i8* %5, null
  br i1 %tobool, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.end
  store i8* null, i8** %retval
  br label %return

if.end.9:                                         ; preds = %if.end
  store i32 0, i32* %j, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.9
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %size.addr, align 4
  %sub = sub nsw i32 %7, 2
  %cmp10 = icmp slt i32 %6, %sub
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load i8*, i8** %name.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %idxprom
  %10 = load i8, i8* %arrayidx, align 1
  %conv12 = sext i8 %10 to i32
  %and = and i32 %conv12, 128
  %tobool13 = icmp ne i32 %and, 0
  br i1 %tobool13, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %11 to i64
  %12 = load i8*, i8** %name.addr, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %idxprom14
  %13 = load i8, i8* %arrayidx15, align 1
  %conv16 = sext i8 %13 to i32
  %idxprom17 = sext i32 %conv16 to i64
  %call18 = call i16** @__ctype_b_loc() #7
  %14 = load i16*, i16** %call18, align 8
  %arrayidx19 = getelementptr inbounds i16, i16* %14, i64 %idxprom17
  %15 = load i16, i16* %arrayidx19, align 2
  %conv20 = zext i16 %15 to i32
  %and21 = and i32 %conv20, 16384
  %tobool22 = icmp ne i32 %and21, 0
  br i1 %tobool22, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %land.lhs.true
  %16 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %16 to i64
  %17 = load i8*, i8** %name.addr, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %17, i64 %idxprom24
  %18 = load i8, i8* %arrayidx25, align 1
  %19 = load i32, i32* %j, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %j, align 4
  %idxprom26 = sext i32 %19 to i64
  %20 = load i8*, i8** %newname, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %20, i64 %idxprom26
  store i8 %18, i8* %arrayidx27, align 1
  br label %if.end.105

if.else:                                          ; preds = %land.lhs.true, %for.body
  %21 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %21 to i64
  %22 = load i8*, i8** %name.addr, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %22, i64 %idxprom28
  %23 = load i8, i8* %arrayidx29, align 1
  %conv30 = sext i8 %23 to i32
  %cmp31 = icmp slt i32 %conv30, 10
  br i1 %cmp31, label %land.lhs.true.33, label %if.else.50

land.lhs.true.33:                                 ; preds = %if.else
  %24 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %24 to i64
  %25 = load i8*, i8** %name.addr, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %25, i64 %idxprom34
  %26 = load i8, i8* %arrayidx35, align 1
  %conv36 = sext i8 %26 to i32
  %cmp37 = icmp sge i32 %conv36, 0
  br i1 %cmp37, label %if.then.39, label %if.else.50

if.then.39:                                       ; preds = %land.lhs.true.33
  %27 = load i32, i32* %j, align 4
  %inc40 = add nsw i32 %27, 1
  store i32 %inc40, i32* %j, align 4
  %idxprom41 = sext i32 %27 to i64
  %28 = load i8*, i8** %newname, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %28, i64 %idxprom41
  store i8 95, i8* %arrayidx42, align 1
  %29 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %29 to i64
  %30 = load i8*, i8** %name.addr, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %30, i64 %idxprom43
  %31 = load i8, i8* %arrayidx44, align 1
  %conv45 = sext i8 %31 to i32
  %add = add nsw i32 %conv45, 48
  %conv46 = trunc i32 %add to i8
  %32 = load i32, i32* %j, align 4
  %inc47 = add nsw i32 %32, 1
  store i32 %inc47, i32* %j, align 4
  %idxprom48 = sext i32 %32 to i64
  %33 = load i8*, i8** %newname, align 8
  %arrayidx49 = getelementptr inbounds i8, i8* %33, i64 %idxprom48
  store i8 %conv46, i8* %arrayidx49, align 1
  br label %if.end.101

if.else.50:                                       ; preds = %land.lhs.true.33, %if.else
  %34 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %34 to i64
  %35 = load i8*, i8** %name.addr, align 8
  %arrayidx52 = getelementptr inbounds i8, i8* %35, i64 %idxprom51
  %36 = load i8, i8* %arrayidx52, align 1
  %conv53 = sext i8 %36 to i16
  %conv54 = zext i16 %conv53 to i32
  %shl = shl i32 %conv54, 8
  %37 = load i32, i32* %i, align 4
  %add55 = add nsw i32 %37, 1
  %idxprom56 = sext i32 %add55 to i64
  %38 = load i8*, i8** %name.addr, align 8
  %arrayidx57 = getelementptr inbounds i8, i8* %38, i64 %idxprom56
  %39 = load i8, i8* %arrayidx57, align 1
  %conv58 = sext i8 %39 to i32
  %or = or i32 %shl, %conv58
  %conv59 = trunc i32 %or to i16
  store i16 %conv59, i16* %x, align 2
  %40 = load i32, i32* %j, align 4
  %inc60 = add nsw i32 %40, 1
  store i32 %inc60, i32* %j, align 4
  %idxprom61 = sext i32 %40 to i64
  %41 = load i8*, i8** %newname, align 8
  %arrayidx62 = getelementptr inbounds i8, i8* %41, i64 %idxprom61
  store i8 95, i8* %arrayidx62, align 1
  %42 = load i16, i16* %x, align 2
  %conv63 = zext i16 %42 to i32
  %and64 = and i32 %conv63, 15
  %add65 = add nsw i32 97, %and64
  %conv66 = trunc i32 %add65 to i8
  %43 = load i32, i32* %j, align 4
  %inc67 = add nsw i32 %43, 1
  store i32 %inc67, i32* %j, align 4
  %idxprom68 = sext i32 %43 to i64
  %44 = load i8*, i8** %newname, align 8
  %arrayidx69 = getelementptr inbounds i8, i8* %44, i64 %idxprom68
  store i8 %conv66, i8* %arrayidx69, align 1
  %45 = load i16, i16* %x, align 2
  %conv70 = zext i16 %45 to i32
  %shr = ashr i32 %conv70, 4
  %and71 = and i32 %shr, 15
  %add72 = add nsw i32 97, %and71
  %conv73 = trunc i32 %add72 to i8
  %46 = load i32, i32* %j, align 4
  %inc74 = add nsw i32 %46, 1
  store i32 %inc74, i32* %j, align 4
  %idxprom75 = sext i32 %46 to i64
  %47 = load i8*, i8** %newname, align 8
  %arrayidx76 = getelementptr inbounds i8, i8* %47, i64 %idxprom75
  store i8 %conv73, i8* %arrayidx76, align 1
  %48 = load i16, i16* %x, align 2
  %conv77 = zext i16 %48 to i32
  %shr78 = ashr i32 %conv77, 8
  %and79 = and i32 %shr78, 15
  %add80 = add nsw i32 97, %and79
  %conv81 = trunc i32 %add80 to i8
  %49 = load i32, i32* %j, align 4
  %inc82 = add nsw i32 %49, 1
  store i32 %inc82, i32* %j, align 4
  %idxprom83 = sext i32 %49 to i64
  %50 = load i8*, i8** %newname, align 8
  %arrayidx84 = getelementptr inbounds i8, i8* %50, i64 %idxprom83
  store i8 %conv81, i8* %arrayidx84, align 1
  %51 = load i16, i16* %x, align 2
  %conv85 = zext i16 %51 to i32
  %shr86 = ashr i32 %conv85, 16
  %and87 = and i32 %shr86, 15
  %add88 = add nsw i32 97, %and87
  %conv89 = trunc i32 %add88 to i8
  %52 = load i32, i32* %j, align 4
  %inc90 = add nsw i32 %52, 1
  store i32 %inc90, i32* %j, align 4
  %idxprom91 = sext i32 %52 to i64
  %53 = load i8*, i8** %newname, align 8
  %arrayidx92 = getelementptr inbounds i8, i8* %53, i64 %idxprom91
  store i8 %conv89, i8* %arrayidx92, align 1
  %54 = load i16, i16* %x, align 2
  %conv93 = zext i16 %54 to i32
  %shr94 = ashr i32 %conv93, 24
  %and95 = and i32 %shr94, 15
  %add96 = add nsw i32 97, %and95
  %conv97 = trunc i32 %add96 to i8
  %55 = load i32, i32* %j, align 4
  %inc98 = add nsw i32 %55, 1
  store i32 %inc98, i32* %j, align 4
  %idxprom99 = sext i32 %55 to i64
  %56 = load i8*, i8** %newname, align 8
  %arrayidx100 = getelementptr inbounds i8, i8* %56, i64 %idxprom99
  store i8 %conv97, i8* %arrayidx100, align 1
  br label %if.end.101

if.end.101:                                       ; preds = %if.else.50, %if.then.39
  %57 = load i32, i32* %j, align 4
  %inc102 = add nsw i32 %57, 1
  store i32 %inc102, i32* %j, align 4
  %idxprom103 = sext i32 %57 to i64
  %58 = load i8*, i8** %newname, align 8
  %arrayidx104 = getelementptr inbounds i8, i8* %58, i64 %idxprom103
  store i8 95, i8* %arrayidx104, align 1
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.101, %if.then.23
  br label %for.inc

for.inc:                                          ; preds = %if.end.105
  %59 = load i32, i32* %i, align 4
  %add106 = add nsw i32 %59, 2
  store i32 %add106, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %60 = load i32, i32* %j, align 4
  %idxprom107 = sext i32 %60 to i64
  %61 = load i8*, i8** %newname, align 8
  %arrayidx108 = getelementptr inbounds i8, i8* %61, i64 %idxprom107
  store i8 0, i8* %arrayidx108, align 1
  %62 = load i8*, i8** %newname, align 8
  %call109 = call i64 @strlen(i8* %62) #6
  %cmp110 = icmp eq i64 %call109, 0
  br i1 %cmp110, label %if.then.112, label %if.end.113

if.then.112:                                      ; preds = %for.end
  %63 = load i8*, i8** %newname, align 8
  call void @free(i8* %63) #3
  store i8* null, i8** %retval
  br label %return

if.end.113:                                       ; preds = %for.end
  %64 = load i8*, i8** %newname, align 8
  store i8* %64, i8** %retval
  br label %return

return:                                           ; preds = %if.end.113, %if.then.112, %if.then.8, %if.then
  %65 = load i8*, i8** %retval
  ret i8* %65
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #5

declare void @sanitiseName(i8*) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

declare i32 @open(i8*, i32, ...) #1

declare i32 @close(i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @ole2_get_sbat_data_block(i32 %fd, %struct.ole2_header_tag* %hdr, i8* %buff, i32 %sbat_index) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %hdr.addr = alloca %struct.ole2_header_tag*, align 8
  %buff.addr = alloca i8*, align 8
  %sbat_index.addr = alloca i32, align 4
  %block_count = alloca i32, align 4
  %current_block = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4
  store %struct.ole2_header_tag* %hdr, %struct.ole2_header_tag** %hdr.addr, align 8
  store i8* %buff, i8** %buff.addr, align 8
  store i32 %sbat_index, i32* %sbat_index.addr, align 4
  %0 = load i32, i32* %sbat_index.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.ole2_header_tag*, %struct.ole2_header_tag** %hdr.addr, align 8
  %sbat_root_start = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %1, i32 0, i32 17
  %2 = load i32, i32* %sbat_root_start, align 1
  %cmp1 = icmp slt i32 %2, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %3 = load i32, i32* %sbat_index.addr, align 4
  %div = sdiv i32 %3, 8
  store i32 %div, i32* %block_count, align 4
  %4 = load %struct.ole2_header_tag*, %struct.ole2_header_tag** %hdr.addr, align 8
  %sbat_root_start4 = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %4, i32 0, i32 17
  %5 = load i32, i32* %sbat_root_start4, align 1
  store i32 %5, i32* %current_block, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.3
  %6 = load i32, i32* %block_count, align 4
  %cmp5 = icmp sgt i32 %6, 0
  br i1 %cmp5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i32, i32* %fd.addr, align 4
  %8 = load %struct.ole2_header_tag*, %struct.ole2_header_tag** %hdr.addr, align 8
  %9 = load i32, i32* %current_block, align 4
  %call = call i32 @ole2_get_next_block_number(i32 %7, %struct.ole2_header_tag* %8, i32 %9)
  store i32 %call, i32* %current_block, align 4
  %10 = load i32, i32* %block_count, align 4
  %dec = add nsw i32 %10, -1
  store i32 %dec, i32* %block_count, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %11 = load i32, i32* %fd.addr, align 4
  %12 = load %struct.ole2_header_tag*, %struct.ole2_header_tag** %hdr.addr, align 8
  %13 = load i8*, i8** %buff.addr, align 8
  %14 = load i32, i32* %current_block, align 4
  %call6 = call i32 @ole2_read_block(i32 %11, %struct.ole2_header_tag* %12, i8* %13, i32 %14)
  store i32 %call6, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.2, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

declare i32 @cli_writen(i32, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @ole2_get_next_sbat_block(i32 %fd, %struct.ole2_header_tag* %hdr, i32 %current_block) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %hdr.addr = alloca %struct.ole2_header_tag*, align 8
  %current_block.addr = alloca i32, align 4
  %iter = alloca i32, align 4
  %current_bat_block = alloca i32, align 4
  %sbat = alloca [128 x i32], align 16
  store i32 %fd, i32* %fd.addr, align 4
  store %struct.ole2_header_tag* %hdr, %struct.ole2_header_tag** %hdr.addr, align 8
  store i32 %current_block, i32* %current_block.addr, align 4
  %0 = load i32, i32* %current_block.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.ole2_header_tag*, %struct.ole2_header_tag** %hdr.addr, align 8
  %sbat_start = getelementptr inbounds %struct.ole2_header_tag, %struct.ole2_header_tag* %1, i32 0, i32 12
  %2 = load i32, i32* %sbat_start, align 1
  store i32 %2, i32* %current_bat_block, align 4
  %3 = load i32, i32* %current_block.addr, align 4
  %div = sdiv i32 %3, 128
  store i32 %div, i32* %iter, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %4 = load i32, i32* %iter, align 4
  %cmp1 = icmp sgt i32 %4, 0
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i32, i32* %fd.addr, align 4
  %6 = load %struct.ole2_header_tag*, %struct.ole2_header_tag** %hdr.addr, align 8
  %7 = load i32, i32* %current_bat_block, align 4
  %call = call i32 @ole2_get_next_block_number(i32 %5, %struct.ole2_header_tag* %6, i32 %7)
  store i32 %call, i32* %current_bat_block, align 4
  %8 = load i32, i32* %iter, align 4
  %dec = add nsw i32 %8, -1
  store i32 %dec, i32* %iter, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %9 = load i32, i32* %fd.addr, align 4
  %10 = load %struct.ole2_header_tag*, %struct.ole2_header_tag** %hdr.addr, align 8
  %11 = bitcast [128 x i32]* %sbat to i8*
  %12 = load i32, i32* %current_bat_block, align 4
  %call2 = call i32 @ole2_read_block(i32 %9, %struct.ole2_header_tag* %10, i8* %11, i32 %12)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %while.end
  store i32 -1, i32* %retval
  br label %return

if.end.4:                                         ; preds = %while.end
  %13 = load i32, i32* %current_block.addr, align 4
  %rem = srem i32 %13, 128
  %idxprom = sext i32 %rem to i64
  %arrayidx = getelementptr inbounds [128 x i32], [128 x i32]* %sbat, i32 0, i64 %idxprom
  %14 = load i32, i32* %arrayidx, align 4
  store i32 %14, i32* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
