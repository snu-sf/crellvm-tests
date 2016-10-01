; ModuleID = './MultiSource.Applications.ClamAV/54.libclamav_unarj.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arj_main_hdr_tag = type <{ i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i16 }>
%struct.arj_metadata_tag = type { i32, i32, i8, i8*, i32, i32 }
%struct.arj_file_hdr_tag = type <{ i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i16 }>
%struct.arj_decode_tag = type { i32, i8*, i16, i16, i8, i32, i32, i16, i16, [1019 x i16], [1019 x i16], [510 x i8], [4096 x i16], [19 x i8], [256 x i16] }

@.str = private unnamed_addr constant [19 x i8] c"in cli_unarj_open\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Not in ARJ format\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Failed to read main header\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"in cli_unarj_prepare_file\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"in cli_unarj_extract_file\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"PASSWORDed file (skipping)\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"Target offset: %ld\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"%s/file.uar\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"Filename: %s\0A\00", align 1
@is_arj_archive.header_id = internal constant [2 x i8] c"`\EA", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"Not an ARJ archive\0A\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"Header Size: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"arj_read_header: invalid header_size: %u\0A \00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"ARJ Main File Header\0A\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"First Header Size: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"Version: %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"Min version: %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"Host OS: %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"Flags: 0x%x\0A\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"Security version: %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"File type: %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [38 x i8] c"Format error. First Header Size < 30\0A\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"Comment: %s\0A\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c"Extended header size: %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [48 x i8] c"arj_read_file_header: invalid header_size: %u\0A \00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"ARJ File Header\0A\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"Method: %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"Compressed size: %u\0A\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"Original size: %u\0A\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"in arj_unstore\0A\00", align 1
@.str.29 = private unnamed_addr constant [53 x i8] c"UNARJ: bounds exceeded - probably a corrupted file.\0A\00", align 1
@.str.30 = private unnamed_addr constant [24 x i8] c"ERROR: bounds exceeded\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @cli_unarj_open(i32 %fd, i8* %dirname) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %dirname.addr = alloca i8*, align 8
  store i32 %fd, i32* %fd.addr, align 4
  store i8* %dirname, i8** %dirname.addr, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0))
  %0 = load i32, i32* %fd.addr, align 4
  %call = call i32 @is_arj_archive(i32 %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0))
  store i32 -124, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %fd.addr, align 4
  %call1 = call i32 @arj_read_main_header(i32 %1)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0))
  store i32 -124, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %2 = load i32, i32* %retval
  ret i32 %2
}

declare void @cli_dbgmsg(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @is_arj_archive(i32 %fd) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %mark = alloca [2 x i8], align 1
  store i32 %fd, i32* %fd.addr, align 4
  %0 = load i32, i32* %fd.addr, align 4
  %arrayidx = getelementptr inbounds [2 x i8], [2 x i8]* %mark, i32 0, i64 0
  %call = call i32 @cli_readn(i32 %0, i8* %arrayidx, i32 2)
  %cmp = icmp ne i32 %call, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %arrayidx1 = getelementptr inbounds [2 x i8], [2 x i8]* %mark, i32 0, i64 0
  %call2 = call i32 @memcmp(i8* %arrayidx1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @is_arj_archive.header_id, i32 0, i64 0), i64 2) #4
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.4, %if.then
  %1 = load i32, i32* %retval
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define internal i32 @arj_read_main_header(i32 %fd) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %header_size = alloca i16, align 2
  %count = alloca i16, align 2
  %crc = alloca i32, align 4
  %main_hdr = alloca %struct.arj_main_hdr_tag, align 1
  %filename = alloca i8*, align 8
  %comment = alloca i8*, align 8
  %header_offset = alloca i64, align 8
  store i32 %fd, i32* %fd.addr, align 4
  %0 = load i32, i32* %fd.addr, align 4
  %1 = bitcast i16* %header_size to i8*
  %call = call i32 @cli_readn(i32 %0, i8* %1, i32 2)
  %cmp = icmp ne i32 %call, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %fd.addr, align 4
  %call1 = call i64 @lseek(i32 %2, i64 0, i32 1) #5
  store i64 %call1, i64* %header_offset, align 8
  %3 = load i16, i16* %header_size, align 2
  store i16 %3, i16* %header_size, align 2
  %4 = load i16, i16* %header_size, align 2
  %conv = zext i16 %4 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0), i32 %conv)
  %5 = load i16, i16* %header_size, align 2
  %conv2 = zext i16 %5 to i32
  %cmp3 = icmp eq i32 %conv2, 0
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %6 = load i16, i16* %header_size, align 2
  %conv7 = zext i16 %6 to i32
  %cmp8 = icmp sgt i32 %conv7, 2600
  br i1 %cmp8, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end.6
  %7 = load i16, i16* %header_size, align 2
  %conv11 = zext i16 %7 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i32 0, i32 0), i32 %conv11)
  store i32 0, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end.6
  %8 = load i32, i32* %fd.addr, align 4
  %9 = bitcast %struct.arj_main_hdr_tag* %main_hdr to i8*
  %call13 = call i32 @cli_readn(i32 %8, i8* %9, i32 30)
  %cmp14 = icmp ne i32 %call13, 30
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.12
  store i32 0, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.end.12
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i32 0, i32 0))
  %first_hdr_size = getelementptr inbounds %struct.arj_main_hdr_tag, %struct.arj_main_hdr_tag* %main_hdr, i32 0, i32 0
  %10 = load i8, i8* %first_hdr_size, align 1
  %conv18 = zext i8 %10 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i32 0, i32 0), i32 %conv18)
  %version = getelementptr inbounds %struct.arj_main_hdr_tag, %struct.arj_main_hdr_tag* %main_hdr, i32 0, i32 1
  %11 = load i8, i8* %version, align 1
  %conv19 = zext i8 %11 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0), i32 %conv19)
  %min_version = getelementptr inbounds %struct.arj_main_hdr_tag, %struct.arj_main_hdr_tag* %main_hdr, i32 0, i32 2
  %12 = load i8, i8* %min_version, align 1
  %conv20 = zext i8 %12 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 %conv20)
  %host_os = getelementptr inbounds %struct.arj_main_hdr_tag, %struct.arj_main_hdr_tag* %main_hdr, i32 0, i32 3
  %13 = load i8, i8* %host_os, align 1
  %conv21 = zext i8 %13 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), i32 %conv21)
  %flags = getelementptr inbounds %struct.arj_main_hdr_tag, %struct.arj_main_hdr_tag* %main_hdr, i32 0, i32 4
  %14 = load i8, i8* %flags, align 1
  %conv22 = zext i8 %14 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0), i32 %conv22)
  %security_version = getelementptr inbounds %struct.arj_main_hdr_tag, %struct.arj_main_hdr_tag* %main_hdr, i32 0, i32 5
  %15 = load i8, i8* %security_version, align 1
  %conv23 = zext i8 %15 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i32 0, i32 0), i32 %conv23)
  %file_type = getelementptr inbounds %struct.arj_main_hdr_tag, %struct.arj_main_hdr_tag* %main_hdr, i32 0, i32 6
  %16 = load i8, i8* %file_type, align 1
  %conv24 = zext i8 %16 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0), i32 %conv24)
  %first_hdr_size25 = getelementptr inbounds %struct.arj_main_hdr_tag, %struct.arj_main_hdr_tag* %main_hdr, i32 0, i32 0
  %17 = load i8, i8* %first_hdr_size25, align 1
  %conv26 = zext i8 %17 to i32
  %cmp27 = icmp slt i32 %conv26, 30
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.17
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.20, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.30:                                        ; preds = %if.end.17
  %first_hdr_size31 = getelementptr inbounds %struct.arj_main_hdr_tag, %struct.arj_main_hdr_tag* %main_hdr, i32 0, i32 0
  %18 = load i8, i8* %first_hdr_size31, align 1
  %conv32 = zext i8 %18 to i32
  %cmp33 = icmp sgt i32 %conv32, 30
  br i1 %cmp33, label %if.then.35, label %if.end.44

if.then.35:                                       ; preds = %if.end.30
  %19 = load i32, i32* %fd.addr, align 4
  %first_hdr_size36 = getelementptr inbounds %struct.arj_main_hdr_tag, %struct.arj_main_hdr_tag* %main_hdr, i32 0, i32 0
  %20 = load i8, i8* %first_hdr_size36, align 1
  %conv37 = zext i8 %20 to i32
  %sub = sub nsw i32 %conv37, 30
  %conv38 = sext i32 %sub to i64
  %call39 = call i64 @lseek(i32 %19, i64 %conv38, i32 1) #5
  %cmp40 = icmp eq i64 %call39, -1
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.then.35
  store i32 0, i32* %retval
  br label %return

if.end.43:                                        ; preds = %if.then.35
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.end.30
  %21 = load i16, i16* %header_size, align 2
  %conv45 = zext i16 %21 to i64
  %call46 = call i8* @cli_malloc(i64 %conv45)
  store i8* %call46, i8** %filename, align 8
  %22 = load i8*, i8** %filename, align 8
  %tobool = icmp ne i8* %22, null
  br i1 %tobool, label %if.end.48, label %if.then.47

if.then.47:                                       ; preds = %if.end.44
  store i32 0, i32* %retval
  br label %return

if.end.48:                                        ; preds = %if.end.44
  store i16 0, i16* %count, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.48
  %23 = load i16, i16* %count, align 2
  %conv49 = zext i16 %23 to i32
  %24 = load i16, i16* %header_size, align 2
  %conv50 = zext i16 %24 to i32
  %cmp51 = icmp slt i32 %conv49, %conv50
  br i1 %cmp51, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load i32, i32* %fd.addr, align 4
  %26 = load i16, i16* %count, align 2
  %idxprom = zext i16 %26 to i64
  %27 = load i8*, i8** %filename, align 8
  %arrayidx = getelementptr inbounds i8, i8* %27, i64 %idxprom
  %call53 = call i32 @cli_readn(i32 %25, i8* %arrayidx, i32 1)
  %cmp54 = icmp ne i32 %call53, 1
  br i1 %cmp54, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %for.body
  %28 = load i8*, i8** %filename, align 8
  call void @free(i8* %28) #5
  store i32 0, i32* %retval
  br label %return

if.end.57:                                        ; preds = %for.body
  %29 = load i16, i16* %count, align 2
  %idxprom58 = zext i16 %29 to i64
  %30 = load i8*, i8** %filename, align 8
  %arrayidx59 = getelementptr inbounds i8, i8* %30, i64 %idxprom58
  %31 = load i8, i8* %arrayidx59, align 1
  %conv60 = sext i8 %31 to i32
  %cmp61 = icmp eq i32 %conv60, 0
  br i1 %cmp61, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %if.end.57
  br label %for.end

if.end.64:                                        ; preds = %if.end.57
  br label %for.inc

for.inc:                                          ; preds = %if.end.64
  %32 = load i16, i16* %count, align 2
  %inc = add i16 %32, 1
  store i16 %inc, i16* %count, align 2
  br label %for.cond

for.end:                                          ; preds = %if.then.63, %for.cond
  %33 = load i16, i16* %count, align 2
  %conv65 = zext i16 %33 to i32
  %34 = load i16, i16* %header_size, align 2
  %conv66 = zext i16 %34 to i32
  %cmp67 = icmp eq i32 %conv65, %conv66
  br i1 %cmp67, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %for.end
  %35 = load i8*, i8** %filename, align 8
  call void @free(i8* %35) #5
  store i32 0, i32* %retval
  br label %return

if.end.70:                                        ; preds = %for.end
  %36 = load i16, i16* %header_size, align 2
  %conv71 = zext i16 %36 to i64
  %call72 = call i8* @cli_malloc(i64 %conv71)
  store i8* %call72, i8** %comment, align 8
  %37 = load i8*, i8** %comment, align 8
  %tobool73 = icmp ne i8* %37, null
  br i1 %tobool73, label %if.end.75, label %if.then.74

if.then.74:                                       ; preds = %if.end.70
  %38 = load i8*, i8** %filename, align 8
  call void @free(i8* %38) #5
  store i32 0, i32* %retval
  br label %return

if.end.75:                                        ; preds = %if.end.70
  store i16 0, i16* %count, align 2
  br label %for.cond.76

for.cond.76:                                      ; preds = %for.inc.96, %if.end.75
  %39 = load i16, i16* %count, align 2
  %conv77 = zext i16 %39 to i32
  %40 = load i16, i16* %header_size, align 2
  %conv78 = zext i16 %40 to i32
  %cmp79 = icmp slt i32 %conv77, %conv78
  br i1 %cmp79, label %for.body.81, label %for.end.98

for.body.81:                                      ; preds = %for.cond.76
  %41 = load i32, i32* %fd.addr, align 4
  %42 = load i16, i16* %count, align 2
  %idxprom82 = zext i16 %42 to i64
  %43 = load i8*, i8** %comment, align 8
  %arrayidx83 = getelementptr inbounds i8, i8* %43, i64 %idxprom82
  %call84 = call i32 @cli_readn(i32 %41, i8* %arrayidx83, i32 1)
  %cmp85 = icmp ne i32 %call84, 1
  br i1 %cmp85, label %if.then.87, label %if.end.88

if.then.87:                                       ; preds = %for.body.81
  %44 = load i8*, i8** %filename, align 8
  call void @free(i8* %44) #5
  %45 = load i8*, i8** %comment, align 8
  call void @free(i8* %45) #5
  store i32 0, i32* %retval
  br label %return

if.end.88:                                        ; preds = %for.body.81
  %46 = load i16, i16* %count, align 2
  %idxprom89 = zext i16 %46 to i64
  %47 = load i8*, i8** %comment, align 8
  %arrayidx90 = getelementptr inbounds i8, i8* %47, i64 %idxprom89
  %48 = load i8, i8* %arrayidx90, align 1
  %conv91 = sext i8 %48 to i32
  %cmp92 = icmp eq i32 %conv91, 0
  br i1 %cmp92, label %if.then.94, label %if.end.95

if.then.94:                                       ; preds = %if.end.88
  br label %for.end.98

if.end.95:                                        ; preds = %if.end.88
  br label %for.inc.96

for.inc.96:                                       ; preds = %if.end.95
  %49 = load i16, i16* %count, align 2
  %inc97 = add i16 %49, 1
  store i16 %inc97, i16* %count, align 2
  br label %for.cond.76

for.end.98:                                       ; preds = %if.then.94, %for.cond.76
  %50 = load i16, i16* %count, align 2
  %conv99 = zext i16 %50 to i32
  %51 = load i16, i16* %header_size, align 2
  %conv100 = zext i16 %51 to i32
  %cmp101 = icmp eq i32 %conv99, %conv100
  br i1 %cmp101, label %if.then.103, label %if.end.104

if.then.103:                                      ; preds = %for.end.98
  %52 = load i8*, i8** %filename, align 8
  call void @free(i8* %52) #5
  %53 = load i8*, i8** %comment, align 8
  call void @free(i8* %53) #5
  store i32 0, i32* %retval
  br label %return

if.end.104:                                       ; preds = %for.end.98
  %54 = load i8*, i8** %filename, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i8* %54)
  %55 = load i8*, i8** %comment, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i32 0, i32 0), i8* %55)
  %56 = load i8*, i8** %filename, align 8
  call void @free(i8* %56) #5
  %57 = load i8*, i8** %comment, align 8
  call void @free(i8* %57) #5
  %58 = load i32, i32* %fd.addr, align 4
  %59 = bitcast i32* %crc to i8*
  %call105 = call i32 @cli_readn(i32 %58, i8* %59, i32 4)
  %cmp106 = icmp ne i32 %call105, 4
  br i1 %cmp106, label %if.then.108, label %if.end.109

if.then.108:                                      ; preds = %if.end.104
  store i32 0, i32* %retval
  br label %return

if.end.109:                                       ; preds = %if.end.104
  br label %for.cond.110

for.cond.110:                                     ; preds = %if.end.128, %if.end.109
  %60 = load i32, i32* %fd.addr, align 4
  %61 = bitcast i16* %count to i8*
  %call111 = call i32 @cli_readn(i32 %60, i8* %61, i32 2)
  %cmp112 = icmp ne i32 %call111, 2
  br i1 %cmp112, label %if.then.114, label %if.end.115

if.then.114:                                      ; preds = %for.cond.110
  store i32 0, i32* %retval
  br label %return

if.end.115:                                       ; preds = %for.cond.110
  %62 = load i16, i16* %count, align 2
  store i16 %62, i16* %count, align 2
  %63 = load i16, i16* %count, align 2
  %conv116 = zext i16 %63 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.22, i32 0, i32 0), i32 %conv116)
  %64 = load i16, i16* %count, align 2
  %conv117 = zext i16 %64 to i32
  %cmp118 = icmp eq i32 %conv117, 0
  br i1 %cmp118, label %if.then.120, label %if.end.121

if.then.120:                                      ; preds = %if.end.115
  br label %for.end.129

if.end.121:                                       ; preds = %if.end.115
  %65 = load i32, i32* %fd.addr, align 4
  %66 = load i16, i16* %count, align 2
  %conv122 = zext i16 %66 to i32
  %add = add nsw i32 %conv122, 4
  %conv123 = sext i32 %add to i64
  %call124 = call i64 @lseek(i32 %65, i64 %conv123, i32 1) #5
  %cmp125 = icmp eq i64 %call124, -1
  br i1 %cmp125, label %if.then.127, label %if.end.128

if.then.127:                                      ; preds = %if.end.121
  store i32 0, i32* %retval
  br label %return

if.end.128:                                       ; preds = %if.end.121
  br label %for.cond.110

for.end.129:                                      ; preds = %if.then.120
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.129, %if.then.127, %if.then.114, %if.then.108, %if.then.103, %if.then.87, %if.then.74, %if.then.69, %if.then.56, %if.then.47, %if.then.42, %if.then.29, %if.then.16, %if.then.10, %if.then.5, %if.then
  %67 = load i32, i32* %retval
  ret i32 %67
}

; Function Attrs: nounwind uwtable
define i32 @cli_unarj_prepare_file(i32 %fd, i8* %dirname, %struct.arj_metadata_tag* %metadata) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %dirname.addr = alloca i8*, align 8
  %metadata.addr = alloca %struct.arj_metadata_tag*, align 8
  store i32 %fd, i32* %fd.addr, align 4
  store i8* %dirname, i8** %dirname.addr, align 8
  store %struct.arj_metadata_tag* %metadata, %struct.arj_metadata_tag** %metadata.addr, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0))
  %0 = load %struct.arj_metadata_tag*, %struct.arj_metadata_tag** %metadata.addr, align 8
  %tobool = icmp ne %struct.arj_metadata_tag* %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %dirname.addr, align 8
  %tobool1 = icmp ne i8* %1, null
  br i1 %tobool1, label %lor.lhs.false.2, label %if.then

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %2 = load i32, i32* %fd.addr, align 4
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.2, %lor.lhs.false, %entry
  store i32 -111, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.2
  %3 = load i32, i32* %fd.addr, align 4
  %call = call i32 @is_arj_archive(i32 %3)
  %tobool3 = icmp ne i32 %call, 0
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0))
  store i32 -124, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %4 = load i32, i32* %fd.addr, align 4
  %5 = load %struct.arj_metadata_tag*, %struct.arj_metadata_tag** %metadata.addr, align 8
  %call6 = call i32 @arj_read_file_header(i32 %4, %struct.arj_metadata_tag* %5)
  store i32 %call6, i32* %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.4, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal i32 @arj_read_file_header(i32 %fd, %struct.arj_metadata_tag* %metadata) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %metadata.addr = alloca %struct.arj_metadata_tag*, align 8
  %header_size = alloca i16, align 2
  %count = alloca i16, align 2
  %filename = alloca i8*, align 8
  %comment = alloca i8*, align 8
  %file_hdr = alloca %struct.arj_file_hdr_tag, align 1
  store i32 %fd, i32* %fd.addr, align 4
  store %struct.arj_metadata_tag* %metadata, %struct.arj_metadata_tag** %metadata.addr, align 8
  %0 = load i32, i32* %fd.addr, align 4
  %1 = bitcast i16* %header_size to i8*
  %call = call i32 @cli_readn(i32 %0, i8* %1, i32 2)
  %cmp = icmp ne i32 %call, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -124, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i16, i16* %header_size, align 2
  store i16 %2, i16* %header_size, align 2
  %3 = load i16, i16* %header_size, align 2
  %conv = zext i16 %3 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0), i32 %conv)
  %4 = load i16, i16* %header_size, align 2
  %conv1 = zext i16 %4 to i32
  %cmp2 = icmp eq i32 %conv1, 0
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 2, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %5 = load i16, i16* %header_size, align 2
  %conv6 = zext i16 %5 to i32
  %cmp7 = icmp sgt i32 %conv6, 2600
  br i1 %cmp7, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end.5
  %6 = load i16, i16* %header_size, align 2
  %conv10 = zext i16 %6 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.23, i32 0, i32 0), i32 %conv10)
  store i32 -124, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.end.5
  %7 = load i32, i32* %fd.addr, align 4
  %8 = bitcast %struct.arj_file_hdr_tag* %file_hdr to i8*
  %call12 = call i32 @cli_readn(i32 %7, i8* %8, i32 30)
  %cmp13 = icmp ne i32 %call12, 30
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.11
  store i32 -124, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.end.11
  %comp_size = getelementptr inbounds %struct.arj_file_hdr_tag, %struct.arj_file_hdr_tag* %file_hdr, i32 0, i32 9
  %9 = load i32, i32* %comp_size, align 1
  %comp_size17 = getelementptr inbounds %struct.arj_file_hdr_tag, %struct.arj_file_hdr_tag* %file_hdr, i32 0, i32 9
  store i32 %9, i32* %comp_size17, align 1
  %orig_size = getelementptr inbounds %struct.arj_file_hdr_tag, %struct.arj_file_hdr_tag* %file_hdr, i32 0, i32 10
  %10 = load i32, i32* %orig_size, align 1
  %orig_size18 = getelementptr inbounds %struct.arj_file_hdr_tag, %struct.arj_file_hdr_tag* %file_hdr, i32 0, i32 10
  store i32 %10, i32* %orig_size18, align 1
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i32 0, i32 0))
  %first_hdr_size = getelementptr inbounds %struct.arj_file_hdr_tag, %struct.arj_file_hdr_tag* %file_hdr, i32 0, i32 0
  %11 = load i8, i8* %first_hdr_size, align 1
  %conv19 = zext i8 %11 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i32 0, i32 0), i32 %conv19)
  %version = getelementptr inbounds %struct.arj_file_hdr_tag, %struct.arj_file_hdr_tag* %file_hdr, i32 0, i32 1
  %12 = load i8, i8* %version, align 1
  %conv20 = zext i8 %12 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0), i32 %conv20)
  %min_version = getelementptr inbounds %struct.arj_file_hdr_tag, %struct.arj_file_hdr_tag* %file_hdr, i32 0, i32 2
  %13 = load i8, i8* %min_version, align 1
  %conv21 = zext i8 %13 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 %conv21)
  %host_os = getelementptr inbounds %struct.arj_file_hdr_tag, %struct.arj_file_hdr_tag* %file_hdr, i32 0, i32 3
  %14 = load i8, i8* %host_os, align 1
  %conv22 = zext i8 %14 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), i32 %conv22)
  %flags = getelementptr inbounds %struct.arj_file_hdr_tag, %struct.arj_file_hdr_tag* %file_hdr, i32 0, i32 4
  %15 = load i8, i8* %flags, align 1
  %conv23 = zext i8 %15 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0), i32 %conv23)
  %method = getelementptr inbounds %struct.arj_file_hdr_tag, %struct.arj_file_hdr_tag* %file_hdr, i32 0, i32 5
  %16 = load i8, i8* %method, align 1
  %conv24 = zext i8 %16 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i32 0, i32 0), i32 %conv24)
  %file_type = getelementptr inbounds %struct.arj_file_hdr_tag, %struct.arj_file_hdr_tag* %file_hdr, i32 0, i32 6
  %17 = load i8, i8* %file_type, align 1
  %conv25 = zext i8 %17 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0), i32 %conv25)
  %password_mod = getelementptr inbounds %struct.arj_file_hdr_tag, %struct.arj_file_hdr_tag* %file_hdr, i32 0, i32 7
  %18 = load i8, i8* %password_mod, align 1
  %conv26 = zext i8 %18 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0), i32 %conv26)
  %comp_size27 = getelementptr inbounds %struct.arj_file_hdr_tag, %struct.arj_file_hdr_tag* %file_hdr, i32 0, i32 9
  %19 = load i32, i32* %comp_size27, align 1
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i32 0, i32 0), i32 %19)
  %orig_size28 = getelementptr inbounds %struct.arj_file_hdr_tag, %struct.arj_file_hdr_tag* %file_hdr, i32 0, i32 10
  %20 = load i32, i32* %orig_size28, align 1
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i32 0, i32 0), i32 %20)
  %first_hdr_size29 = getelementptr inbounds %struct.arj_file_hdr_tag, %struct.arj_file_hdr_tag* %file_hdr, i32 0, i32 0
  %21 = load i8, i8* %first_hdr_size29, align 1
  %conv30 = zext i8 %21 to i32
  %cmp31 = icmp slt i32 %conv30, 30
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.16
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.20, i32 0, i32 0))
  store i32 -124, i32* %retval
  br label %return

if.end.34:                                        ; preds = %if.end.16
  %first_hdr_size35 = getelementptr inbounds %struct.arj_file_hdr_tag, %struct.arj_file_hdr_tag* %file_hdr, i32 0, i32 0
  %22 = load i8, i8* %first_hdr_size35, align 1
  %conv36 = zext i8 %22 to i32
  %cmp37 = icmp sgt i32 %conv36, 30
  br i1 %cmp37, label %if.then.39, label %if.end.48

if.then.39:                                       ; preds = %if.end.34
  %23 = load i32, i32* %fd.addr, align 4
  %first_hdr_size40 = getelementptr inbounds %struct.arj_file_hdr_tag, %struct.arj_file_hdr_tag* %file_hdr, i32 0, i32 0
  %24 = load i8, i8* %first_hdr_size40, align 1
  %conv41 = zext i8 %24 to i32
  %sub = sub nsw i32 %conv41, 30
  %conv42 = sext i32 %sub to i64
  %call43 = call i64 @lseek(i32 %23, i64 %conv42, i32 1) #5
  %cmp44 = icmp eq i64 %call43, -1
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.then.39
  store i32 -124, i32* %retval
  br label %return

if.end.47:                                        ; preds = %if.then.39
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.end.34
  %25 = load i16, i16* %header_size, align 2
  %conv49 = zext i16 %25 to i64
  %call50 = call i8* @cli_malloc(i64 %conv49)
  store i8* %call50, i8** %filename, align 8
  %26 = load i8*, i8** %filename, align 8
  %tobool = icmp ne i8* %26, null
  br i1 %tobool, label %if.end.52, label %if.then.51

if.then.51:                                       ; preds = %if.end.48
  store i32 -114, i32* %retval
  br label %return

if.end.52:                                        ; preds = %if.end.48
  store i16 0, i16* %count, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.52
  %27 = load i16, i16* %count, align 2
  %conv53 = zext i16 %27 to i32
  %28 = load i16, i16* %header_size, align 2
  %conv54 = zext i16 %28 to i32
  %cmp55 = icmp slt i32 %conv53, %conv54
  br i1 %cmp55, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load i32, i32* %fd.addr, align 4
  %30 = load i16, i16* %count, align 2
  %idxprom = zext i16 %30 to i64
  %31 = load i8*, i8** %filename, align 8
  %arrayidx = getelementptr inbounds i8, i8* %31, i64 %idxprom
  %call57 = call i32 @cli_readn(i32 %29, i8* %arrayidx, i32 1)
  %cmp58 = icmp ne i32 %call57, 1
  br i1 %cmp58, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %for.body
  %32 = load i8*, i8** %filename, align 8
  call void @free(i8* %32) #5
  store i32 -124, i32* %retval
  br label %return

if.end.61:                                        ; preds = %for.body
  %33 = load i16, i16* %count, align 2
  %idxprom62 = zext i16 %33 to i64
  %34 = load i8*, i8** %filename, align 8
  %arrayidx63 = getelementptr inbounds i8, i8* %34, i64 %idxprom62
  %35 = load i8, i8* %arrayidx63, align 1
  %conv64 = sext i8 %35 to i32
  %cmp65 = icmp eq i32 %conv64, 0
  br i1 %cmp65, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %if.end.61
  br label %for.end

if.end.68:                                        ; preds = %if.end.61
  br label %for.inc

for.inc:                                          ; preds = %if.end.68
  %36 = load i16, i16* %count, align 2
  %inc = add i16 %36, 1
  store i16 %inc, i16* %count, align 2
  br label %for.cond

for.end:                                          ; preds = %if.then.67, %for.cond
  %37 = load i16, i16* %count, align 2
  %conv69 = zext i16 %37 to i32
  %38 = load i16, i16* %header_size, align 2
  %conv70 = zext i16 %38 to i32
  %cmp71 = icmp eq i32 %conv69, %conv70
  br i1 %cmp71, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %for.end
  %39 = load i8*, i8** %filename, align 8
  call void @free(i8* %39) #5
  store i32 -124, i32* %retval
  br label %return

if.end.74:                                        ; preds = %for.end
  %40 = load i16, i16* %header_size, align 2
  %conv75 = zext i16 %40 to i64
  %call76 = call i8* @cli_malloc(i64 %conv75)
  store i8* %call76, i8** %comment, align 8
  %41 = load i8*, i8** %comment, align 8
  %tobool77 = icmp ne i8* %41, null
  br i1 %tobool77, label %if.end.79, label %if.then.78

if.then.78:                                       ; preds = %if.end.74
  %42 = load i8*, i8** %filename, align 8
  call void @free(i8* %42) #5
  store i32 -124, i32* %retval
  br label %return

if.end.79:                                        ; preds = %if.end.74
  store i16 0, i16* %count, align 2
  br label %for.cond.80

for.cond.80:                                      ; preds = %for.inc.100, %if.end.79
  %43 = load i16, i16* %count, align 2
  %conv81 = zext i16 %43 to i32
  %44 = load i16, i16* %header_size, align 2
  %conv82 = zext i16 %44 to i32
  %cmp83 = icmp slt i32 %conv81, %conv82
  br i1 %cmp83, label %for.body.85, label %for.end.102

for.body.85:                                      ; preds = %for.cond.80
  %45 = load i32, i32* %fd.addr, align 4
  %46 = load i16, i16* %count, align 2
  %idxprom86 = zext i16 %46 to i64
  %47 = load i8*, i8** %comment, align 8
  %arrayidx87 = getelementptr inbounds i8, i8* %47, i64 %idxprom86
  %call88 = call i32 @cli_readn(i32 %45, i8* %arrayidx87, i32 1)
  %cmp89 = icmp ne i32 %call88, 1
  br i1 %cmp89, label %if.then.91, label %if.end.92

if.then.91:                                       ; preds = %for.body.85
  %48 = load i8*, i8** %filename, align 8
  call void @free(i8* %48) #5
  %49 = load i8*, i8** %comment, align 8
  call void @free(i8* %49) #5
  store i32 -124, i32* %retval
  br label %return

if.end.92:                                        ; preds = %for.body.85
  %50 = load i16, i16* %count, align 2
  %idxprom93 = zext i16 %50 to i64
  %51 = load i8*, i8** %comment, align 8
  %arrayidx94 = getelementptr inbounds i8, i8* %51, i64 %idxprom93
  %52 = load i8, i8* %arrayidx94, align 1
  %conv95 = sext i8 %52 to i32
  %cmp96 = icmp eq i32 %conv95, 0
  br i1 %cmp96, label %if.then.98, label %if.end.99

if.then.98:                                       ; preds = %if.end.92
  br label %for.end.102

if.end.99:                                        ; preds = %if.end.92
  br label %for.inc.100

for.inc.100:                                      ; preds = %if.end.99
  %53 = load i16, i16* %count, align 2
  %inc101 = add i16 %53, 1
  store i16 %inc101, i16* %count, align 2
  br label %for.cond.80

for.end.102:                                      ; preds = %if.then.98, %for.cond.80
  %54 = load i16, i16* %count, align 2
  %conv103 = zext i16 %54 to i32
  %55 = load i16, i16* %header_size, align 2
  %conv104 = zext i16 %55 to i32
  %cmp105 = icmp eq i32 %conv103, %conv104
  br i1 %cmp105, label %if.then.107, label %if.end.108

if.then.107:                                      ; preds = %for.end.102
  %56 = load i8*, i8** %filename, align 8
  call void @free(i8* %56) #5
  %57 = load i8*, i8** %comment, align 8
  call void @free(i8* %57) #5
  store i32 -124, i32* %retval
  br label %return

if.end.108:                                       ; preds = %for.end.102
  %58 = load i8*, i8** %filename, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i8* %58)
  %59 = load i8*, i8** %comment, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i32 0, i32 0), i8* %59)
  %60 = load i8*, i8** %filename, align 8
  %call109 = call i8* @cli_strdup(i8* %60)
  %61 = load %struct.arj_metadata_tag*, %struct.arj_metadata_tag** %metadata.addr, align 8
  %filename110 = getelementptr inbounds %struct.arj_metadata_tag, %struct.arj_metadata_tag* %61, i32 0, i32 3
  store i8* %call109, i8** %filename110, align 8
  %62 = load i8*, i8** %filename, align 8
  call void @free(i8* %62) #5
  %63 = load i8*, i8** %comment, align 8
  call void @free(i8* %63) #5
  %64 = load i32, i32* %fd.addr, align 4
  %call111 = call i64 @lseek(i32 %64, i64 4, i32 1) #5
  %cmp112 = icmp eq i64 %call111, -1
  br i1 %cmp112, label %if.then.114, label %if.end.115

if.then.114:                                      ; preds = %if.end.108
  store i32 -124, i32* %retval
  br label %return

if.end.115:                                       ; preds = %if.end.108
  br label %for.cond.116

for.cond.116:                                     ; preds = %if.end.134, %if.end.115
  %65 = load i32, i32* %fd.addr, align 4
  %66 = bitcast i16* %count to i8*
  %call117 = call i32 @cli_readn(i32 %65, i8* %66, i32 2)
  %cmp118 = icmp ne i32 %call117, 2
  br i1 %cmp118, label %if.then.120, label %if.end.121

if.then.120:                                      ; preds = %for.cond.116
  store i32 -124, i32* %retval
  br label %return

if.end.121:                                       ; preds = %for.cond.116
  %67 = load i16, i16* %count, align 2
  store i16 %67, i16* %count, align 2
  %68 = load i16, i16* %count, align 2
  %conv122 = zext i16 %68 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.22, i32 0, i32 0), i32 %conv122)
  %69 = load i16, i16* %count, align 2
  %conv123 = zext i16 %69 to i32
  %cmp124 = icmp eq i32 %conv123, 0
  br i1 %cmp124, label %if.then.126, label %if.end.127

if.then.126:                                      ; preds = %if.end.121
  br label %for.end.135

if.end.127:                                       ; preds = %if.end.121
  %70 = load i32, i32* %fd.addr, align 4
  %71 = load i16, i16* %count, align 2
  %conv128 = zext i16 %71 to i32
  %add = add nsw i32 %conv128, 4
  %conv129 = sext i32 %add to i64
  %call130 = call i64 @lseek(i32 %70, i64 %conv129, i32 1) #5
  %cmp131 = icmp eq i64 %call130, -1
  br i1 %cmp131, label %if.then.133, label %if.end.134

if.then.133:                                      ; preds = %if.end.127
  store i32 -124, i32* %retval
  br label %return

if.end.134:                                       ; preds = %if.end.127
  br label %for.cond.116

for.end.135:                                      ; preds = %if.then.126
  %comp_size136 = getelementptr inbounds %struct.arj_file_hdr_tag, %struct.arj_file_hdr_tag* %file_hdr, i32 0, i32 9
  %72 = load i32, i32* %comp_size136, align 1
  %73 = load %struct.arj_metadata_tag*, %struct.arj_metadata_tag** %metadata.addr, align 8
  %comp_size137 = getelementptr inbounds %struct.arj_metadata_tag, %struct.arj_metadata_tag* %73, i32 0, i32 0
  store i32 %72, i32* %comp_size137, align 4
  %orig_size138 = getelementptr inbounds %struct.arj_file_hdr_tag, %struct.arj_file_hdr_tag* %file_hdr, i32 0, i32 10
  %74 = load i32, i32* %orig_size138, align 1
  %75 = load %struct.arj_metadata_tag*, %struct.arj_metadata_tag** %metadata.addr, align 8
  %orig_size139 = getelementptr inbounds %struct.arj_metadata_tag, %struct.arj_metadata_tag* %75, i32 0, i32 1
  store i32 %74, i32* %orig_size139, align 4
  %method140 = getelementptr inbounds %struct.arj_file_hdr_tag, %struct.arj_file_hdr_tag* %file_hdr, i32 0, i32 5
  %76 = load i8, i8* %method140, align 1
  %77 = load %struct.arj_metadata_tag*, %struct.arj_metadata_tag** %metadata.addr, align 8
  %method141 = getelementptr inbounds %struct.arj_metadata_tag, %struct.arj_metadata_tag* %77, i32 0, i32 2
  store i8 %76, i8* %method141, align 1
  %flags142 = getelementptr inbounds %struct.arj_file_hdr_tag, %struct.arj_file_hdr_tag* %file_hdr, i32 0, i32 4
  %78 = load i8, i8* %flags142, align 1
  %conv143 = zext i8 %78 to i32
  %and = and i32 %conv143, 1
  %cmp144 = icmp ne i32 %and, 0
  %cond = select i1 %cmp144, i32 1, i32 0
  %79 = load %struct.arj_metadata_tag*, %struct.arj_metadata_tag** %metadata.addr, align 8
  %encrypted = getelementptr inbounds %struct.arj_metadata_tag, %struct.arj_metadata_tag* %79, i32 0, i32 4
  store i32 %cond, i32* %encrypted, align 4
  %80 = load %struct.arj_metadata_tag*, %struct.arj_metadata_tag** %metadata.addr, align 8
  %ofd = getelementptr inbounds %struct.arj_metadata_tag, %struct.arj_metadata_tag* %80, i32 0, i32 5
  store i32 -1, i32* %ofd, align 4
  %81 = load %struct.arj_metadata_tag*, %struct.arj_metadata_tag** %metadata.addr, align 8
  %filename146 = getelementptr inbounds %struct.arj_metadata_tag, %struct.arj_metadata_tag* %81, i32 0, i32 3
  %82 = load i8*, i8** %filename146, align 8
  %tobool147 = icmp ne i8* %82, null
  br i1 %tobool147, label %if.end.149, label %if.then.148

if.then.148:                                      ; preds = %for.end.135
  store i32 -114, i32* %retval
  br label %return

if.end.149:                                       ; preds = %for.end.135
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.149, %if.then.148, %if.then.133, %if.then.120, %if.then.114, %if.then.107, %if.then.91, %if.then.78, %if.then.73, %if.then.60, %if.then.51, %if.then.46, %if.then.33, %if.then.15, %if.then.9, %if.then.4, %if.then
  %83 = load i32, i32* %retval
  ret i32 %83
}

; Function Attrs: nounwind uwtable
define i32 @cli_unarj_extract_file(i32 %fd, i8* %dirname, %struct.arj_metadata_tag* %metadata) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %dirname.addr = alloca i8*, align 8
  %metadata.addr = alloca %struct.arj_metadata_tag*, align 8
  %offset = alloca i64, align 8
  %ret = alloca i32, align 4
  %filename = alloca [1024 x i8], align 16
  store i32 %fd, i32* %fd.addr, align 4
  store i8* %dirname, i8** %dirname.addr, align 8
  store %struct.arj_metadata_tag* %metadata, %struct.arj_metadata_tag** %metadata.addr, align 8
  store i32 0, i32* %ret, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0))
  %0 = load %struct.arj_metadata_tag*, %struct.arj_metadata_tag** %metadata.addr, align 8
  %tobool = icmp ne %struct.arj_metadata_tag* %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %dirname.addr, align 8
  %tobool1 = icmp ne i8* %1, null
  br i1 %tobool1, label %lor.lhs.false.2, label %if.then

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %2 = load i32, i32* %fd.addr, align 4
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.2, %lor.lhs.false, %entry
  store i32 -111, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.2
  %3 = load %struct.arj_metadata_tag*, %struct.arj_metadata_tag** %metadata.addr, align 8
  %encrypted = getelementptr inbounds %struct.arj_metadata_tag, %struct.arj_metadata_tag* %3, i32 0, i32 4
  %4 = load i32, i32* %encrypted, align 4
  %tobool3 = icmp ne i32 %4, 0
  br i1 %tobool3, label %if.then.4, label %if.end.10

if.then.4:                                        ; preds = %if.end
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0))
  %5 = load i32, i32* %fd.addr, align 4
  %call = call i64 @lseek(i32 %5, i64 0, i32 1) #5
  %6 = load %struct.arj_metadata_tag*, %struct.arj_metadata_tag** %metadata.addr, align 8
  %comp_size = getelementptr inbounds %struct.arj_metadata_tag, %struct.arj_metadata_tag* %6, i32 0, i32 0
  %7 = load i32, i32* %comp_size, align 4
  %conv = zext i32 %7 to i64
  %add = add nsw i64 %call, %conv
  store i64 %add, i64* %offset, align 8
  %8 = load i64, i64* %offset, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0), i64 %8)
  %9 = load i32, i32* %fd.addr, align 4
  %10 = load i64, i64* %offset, align 8
  %call5 = call i64 @lseek(i32 %9, i64 %10, i32 0) #5
  %11 = load i64, i64* %offset, align 8
  %cmp6 = icmp ne i64 %call5, %11
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.then.4
  store i32 -127, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.then.4
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %filename, i32 0, i32 0
  %12 = load i8*, i8** %dirname.addr, align 8
  %call11 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay, i64 1024, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), i8* %12) #5
  %arraydecay12 = getelementptr inbounds [1024 x i8], [1024 x i8]* %filename, i32 0, i32 0
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i8* %arraydecay12)
  %arraydecay13 = getelementptr inbounds [1024 x i8], [1024 x i8]* %filename, i32 0, i32 0
  %call14 = call i32 (i8*, i32, ...) @open(i8* %arraydecay13, i32 578, i32 384)
  %13 = load %struct.arj_metadata_tag*, %struct.arj_metadata_tag** %metadata.addr, align 8
  %ofd = getelementptr inbounds %struct.arj_metadata_tag, %struct.arj_metadata_tag* %13, i32 0, i32 5
  store i32 %call14, i32* %ofd, align 4
  %14 = load %struct.arj_metadata_tag*, %struct.arj_metadata_tag** %metadata.addr, align 8
  %ofd15 = getelementptr inbounds %struct.arj_metadata_tag, %struct.arj_metadata_tag* %14, i32 0, i32 5
  %15 = load i32, i32* %ofd15, align 4
  %cmp16 = icmp slt i32 %15, 0
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.10
  store i32 -115, i32* %retval
  br label %return

if.end.19:                                        ; preds = %if.end.10
  %16 = load %struct.arj_metadata_tag*, %struct.arj_metadata_tag** %metadata.addr, align 8
  %method = getelementptr inbounds %struct.arj_metadata_tag, %struct.arj_metadata_tag* %16, i32 0, i32 2
  %17 = load i8, i8* %method, align 1
  %conv20 = zext i8 %17 to i32
  switch i32 %conv20, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.29
    i32 2, label %sw.bb.29
    i32 3, label %sw.bb.29
    i32 4, label %sw.bb.31
  ]

sw.bb:                                            ; preds = %if.end.19
  %18 = load i32, i32* %fd.addr, align 4
  %19 = load %struct.arj_metadata_tag*, %struct.arj_metadata_tag** %metadata.addr, align 8
  %ofd21 = getelementptr inbounds %struct.arj_metadata_tag, %struct.arj_metadata_tag* %19, i32 0, i32 5
  %20 = load i32, i32* %ofd21, align 4
  %21 = load %struct.arj_metadata_tag*, %struct.arj_metadata_tag** %metadata.addr, align 8
  %comp_size22 = getelementptr inbounds %struct.arj_metadata_tag, %struct.arj_metadata_tag* %21, i32 0, i32 0
  %22 = load i32, i32* %comp_size22, align 4
  %call23 = call i32 @arj_unstore(i32 %18, i32 %20, i32 %22)
  store i32 %call23, i32* %ret, align 4
  %23 = load i32, i32* %ret, align 4
  %24 = load %struct.arj_metadata_tag*, %struct.arj_metadata_tag** %metadata.addr, align 8
  %comp_size24 = getelementptr inbounds %struct.arj_metadata_tag, %struct.arj_metadata_tag* %24, i32 0, i32 0
  %25 = load i32, i32* %comp_size24, align 4
  %cmp25 = icmp ne i32 %23, %25
  br i1 %cmp25, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %sw.bb
  store i32 -123, i32* %ret, align 4
  br label %if.end.28

if.else:                                          ; preds = %sw.bb
  store i32 0, i32* %ret, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.else, %if.then.27
  br label %sw.epilog

sw.bb.29:                                         ; preds = %if.end.19, %if.end.19, %if.end.19
  %26 = load i32, i32* %fd.addr, align 4
  %27 = load %struct.arj_metadata_tag*, %struct.arj_metadata_tag** %metadata.addr, align 8
  %call30 = call i32 @decode(i32 %26, %struct.arj_metadata_tag* %27)
  br label %sw.epilog

sw.bb.31:                                         ; preds = %if.end.19
  %28 = load i32, i32* %fd.addr, align 4
  %29 = load %struct.arj_metadata_tag*, %struct.arj_metadata_tag** %metadata.addr, align 8
  %call32 = call i32 @decode_f(i32 %28, %struct.arj_metadata_tag* %29)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.19
  store i32 -124, i32* %ret, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.31, %sw.bb.29, %if.end.28
  %30 = load i32, i32* %ret, align 4
  store i32 %30, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.then.18, %if.end.9, %if.then.8, %if.then
  %31 = load i32, i32* %retval
  ret i32 %31
}

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) #2

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #2

declare i32 @open(i8*, i32, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @arj_unstore(i32 %ifd, i32 %ofd, i32 %len) #0 {
entry:
  %retval = alloca i32, align 4
  %ifd.addr = alloca i32, align 4
  %ofd.addr = alloca i32, align 4
  %len.addr = alloca i32, align 4
  %data = alloca [8192 x i8], align 16
  %count = alloca i32, align 4
  %rem = alloca i32, align 4
  %todo = alloca i32, align 4
  store i32 %ifd, i32* %ifd.addr, align 4
  store i32 %ofd, i32* %ofd.addr, align 4
  store i32 %len, i32* %len.addr, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i32 0, i32 0))
  %0 = load i32, i32* %len.addr, align 4
  store i32 %0, i32* %rem, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.9, %entry
  %1 = load i32, i32* %rem, align 4
  %cmp = icmp ugt i32 %1, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %rem, align 4
  %cmp1 = icmp ult i32 8192, %2
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %3 = load i32, i32* %rem, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 8192, %cond.true ], [ %3, %cond.false ]
  store i32 %cond, i32* %todo, align 4
  %4 = load i32, i32* %ifd.addr, align 4
  %arraydecay = getelementptr inbounds [8192 x i8], [8192 x i8]* %data, i32 0, i32 0
  %5 = load i32, i32* %todo, align 4
  %call = call i32 @cli_readn(i32 %4, i8* %arraydecay, i32 %5)
  store i32 %call, i32* %count, align 4
  %6 = load i32, i32* %count, align 4
  %7 = load i32, i32* %todo, align 4
  %cmp2 = icmp ne i32 %6, %7
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %8 = load i32, i32* %len.addr, align 4
  %9 = load i32, i32* %rem, align 4
  %sub = sub i32 %8, %9
  store i32 %sub, i32* %retval
  br label %return

if.end:                                           ; preds = %cond.end
  %10 = load i32, i32* %ofd.addr, align 4
  %arraydecay3 = getelementptr inbounds [8192 x i8], [8192 x i8]* %data, i32 0, i32 0
  %11 = load i32, i32* %count, align 4
  %call4 = call i32 @cli_writen(i32 %10, i8* %arraydecay3, i32 %11)
  %12 = load i32, i32* %count, align 4
  %cmp5 = icmp ne i32 %call4, %12
  br i1 %cmp5, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %if.end
  %13 = load i32, i32* %len.addr, align 4
  %14 = load i32, i32* %rem, align 4
  %sub7 = sub i32 %13, %14
  %15 = load i32, i32* %count, align 4
  %sub8 = sub i32 %sub7, %15
  store i32 %sub8, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end
  %16 = load i32, i32* %count, align 4
  %17 = load i32, i32* %rem, align 4
  %sub10 = sub i32 %17, %16
  store i32 %sub10, i32* %rem, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %18 = load i32, i32* %len.addr, align 4
  store i32 %18, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.6, %if.then
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal i32 @decode(i32 %fd, %struct.arj_metadata_tag* %metadata) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %metadata.addr = alloca %struct.arj_metadata_tag*, align 8
  %ret = alloca i32, align 4
  %decode_data = alloca %struct.arj_decode_tag, align 8
  %count = alloca i32, align 4
  %out_ptr = alloca i32, align 4
  %chr = alloca i16, align 2
  %i = alloca i16, align 2
  %j = alloca i16, align 2
  store i32 %fd, i32* %fd.addr, align 4
  store %struct.arj_metadata_tag* %metadata, %struct.arj_metadata_tag** %metadata.addr, align 8
  store i32 0, i32* %count, align 4
  store i32 0, i32* %out_ptr, align 4
  %call = call i8* @cli_malloc(i64 26624)
  %text = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %decode_data, i32 0, i32 1
  store i8* %call, i8** %text, align 8
  %text1 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %decode_data, i32 0, i32 1
  %0 = load i8*, i8** %text1, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -114, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %fd.addr, align 4
  %fd2 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %decode_data, i32 0, i32 0
  store i32 %1, i32* %fd2, align 4
  %2 = load %struct.arj_metadata_tag*, %struct.arj_metadata_tag** %metadata.addr, align 8
  %comp_size = getelementptr inbounds %struct.arj_metadata_tag, %struct.arj_metadata_tag* %2, i32 0, i32 0
  %3 = load i32, i32* %comp_size, align 4
  %comp_size3 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %decode_data, i32 0, i32 6
  store i32 %3, i32* %comp_size3, align 4
  %call4 = call i32 @decode_start(%struct.arj_decode_tag* %decode_data)
  store i32 %call4, i32* %ret, align 4
  %4 = load i32, i32* %ret, align 4
  %cmp = icmp ne i32 %4, 0
  br i1 %cmp, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %5 = load i32, i32* %ret, align 4
  store i32 %5, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end.99, %if.end.6
  %6 = load i32, i32* %count, align 4
  %7 = load %struct.arj_metadata_tag*, %struct.arj_metadata_tag** %metadata.addr, align 8
  %orig_size = getelementptr inbounds %struct.arj_metadata_tag, %struct.arj_metadata_tag* %7, i32 0, i32 1
  %8 = load i32, i32* %orig_size, align 4
  %cmp7 = icmp ult i32 %6, %8
  br i1 %cmp7, label %while.body, label %while.end.100

while.body:                                       ; preds = %while.cond
  %call8 = call zeroext i16 @decode_c(%struct.arj_decode_tag* %decode_data)
  store i16 %call8, i16* %chr, align 2
  %conv = sext i16 %call8 to i32
  %cmp9 = icmp sle i32 %conv, 255
  br i1 %cmp9, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %while.body
  %9 = load i16, i16* %chr, align 2
  %conv12 = trunc i16 %9 to i8
  %10 = load i32, i32* %out_ptr, align 4
  %idxprom = zext i32 %10 to i64
  %text13 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %decode_data, i32 0, i32 1
  %11 = load i8*, i8** %text13, align 8
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 %idxprom
  store i8 %conv12, i8* %arrayidx, align 1
  %12 = load i32, i32* %count, align 4
  %inc = add i32 %12, 1
  store i32 %inc, i32* %count, align 4
  %13 = load i32, i32* %out_ptr, align 4
  %inc14 = add i32 %13, 1
  store i32 %inc14, i32* %out_ptr, align 4
  %cmp15 = icmp uge i32 %inc14, 26624
  br i1 %cmp15, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %if.then.11
  store i32 0, i32* %out_ptr, align 4
  %14 = load %struct.arj_metadata_tag*, %struct.arj_metadata_tag** %metadata.addr, align 8
  %ofd = getelementptr inbounds %struct.arj_metadata_tag, %struct.arj_metadata_tag* %14, i32 0, i32 5
  %15 = load i32, i32* %ofd, align 4
  %text18 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %decode_data, i32 0, i32 1
  %16 = load i8*, i8** %text18, align 8
  %call19 = call i32 @write_text(i32 %15, i8* %16, i32 26624)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %if.then.11
  br label %if.end.99

if.else:                                          ; preds = %while.body
  %17 = load i16, i16* %chr, align 2
  %conv21 = sext i16 %17 to i32
  %sub = sub nsw i32 %conv21, 253
  %conv22 = trunc i32 %sub to i16
  store i16 %conv22, i16* %j, align 2
  %18 = load i16, i16* %j, align 2
  %conv23 = sext i16 %18 to i32
  %19 = load i32, i32* %count, align 4
  %add = add i32 %19, %conv23
  store i32 %add, i32* %count, align 4
  %call24 = call zeroext i16 @decode_p(%struct.arj_decode_tag* %decode_data)
  store i16 %call24, i16* %i, align 2
  %20 = load i32, i32* %out_ptr, align 4
  %21 = load i16, i16* %i, align 2
  %conv25 = sext i16 %21 to i32
  %sub26 = sub i32 %20, %conv25
  %sub27 = sub i32 %sub26, 1
  %conv28 = trunc i32 %sub27 to i16
  store i16 %conv28, i16* %i, align 2
  %conv29 = sext i16 %conv28 to i32
  %cmp30 = icmp slt i32 %conv29, 0
  br i1 %cmp30, label %if.then.32, label %if.end.36

if.then.32:                                       ; preds = %if.else
  %22 = load i16, i16* %i, align 2
  %conv33 = sext i16 %22 to i32
  %add34 = add nsw i32 %conv33, 26624
  %conv35 = trunc i32 %add34 to i16
  store i16 %conv35, i16* %i, align 2
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.32, %if.else
  %23 = load i16, i16* %i, align 2
  %conv37 = sext i16 %23 to i32
  %cmp38 = icmp sge i32 %conv37, 26624
  br i1 %cmp38, label %if.then.43, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.36
  %24 = load i16, i16* %i, align 2
  %conv40 = sext i16 %24 to i32
  %cmp41 = icmp slt i32 %conv40, 0
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %lor.lhs.false, %if.end.36
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.29, i32 0, i32 0))
  br label %while.end.100

if.end.44:                                        ; preds = %lor.lhs.false
  %25 = load i32, i32* %out_ptr, align 4
  %26 = load i16, i16* %i, align 2
  %conv45 = sext i16 %26 to i32
  %cmp46 = icmp ugt i32 %25, %conv45
  br i1 %cmp46, label %land.lhs.true, label %if.else.70

land.lhs.true:                                    ; preds = %if.end.44
  %27 = load i32, i32* %out_ptr, align 4
  %cmp48 = icmp ult i32 %27, 26367
  br i1 %cmp48, label %if.then.50, label %if.else.70

if.then.50:                                       ; preds = %land.lhs.true
  br label %while.cond.51

while.cond.51:                                    ; preds = %while.body.61, %if.then.50
  %28 = load i16, i16* %j, align 2
  %dec = add i16 %28, -1
  store i16 %dec, i16* %j, align 2
  %conv52 = sext i16 %dec to i32
  %cmp53 = icmp sge i32 %conv52, 0
  br i1 %cmp53, label %land.lhs.true.55, label %land.end

land.lhs.true.55:                                 ; preds = %while.cond.51
  %29 = load i16, i16* %i, align 2
  %conv56 = sext i16 %29 to i32
  %cmp57 = icmp slt i32 %conv56, 26624
  br i1 %cmp57, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.55
  %30 = load i32, i32* %out_ptr, align 4
  %cmp59 = icmp ult i32 %30, 26624
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.55, %while.cond.51
  %31 = phi i1 [ false, %land.lhs.true.55 ], [ false, %while.cond.51 ], [ %cmp59, %land.rhs ]
  br i1 %31, label %while.body.61, label %while.end

while.body.61:                                    ; preds = %land.end
  %32 = load i16, i16* %i, align 2
  %inc62 = add i16 %32, 1
  store i16 %inc62, i16* %i, align 2
  %idxprom63 = sext i16 %32 to i64
  %text64 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %decode_data, i32 0, i32 1
  %33 = load i8*, i8** %text64, align 8
  %arrayidx65 = getelementptr inbounds i8, i8* %33, i64 %idxprom63
  %34 = load i8, i8* %arrayidx65, align 1
  %35 = load i32, i32* %out_ptr, align 4
  %inc66 = add i32 %35, 1
  store i32 %inc66, i32* %out_ptr, align 4
  %idxprom67 = zext i32 %35 to i64
  %text68 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %decode_data, i32 0, i32 1
  %36 = load i8*, i8** %text68, align 8
  %arrayidx69 = getelementptr inbounds i8, i8* %36, i64 %idxprom67
  store i8 %34, i8* %arrayidx69, align 1
  br label %while.cond.51

while.end:                                        ; preds = %land.end
  br label %if.end.98

if.else.70:                                       ; preds = %land.lhs.true, %if.end.44
  br label %while.cond.71

while.cond.71:                                    ; preds = %if.end.96, %if.else.70
  %37 = load i16, i16* %j, align 2
  %dec72 = add i16 %37, -1
  store i16 %dec72, i16* %j, align 2
  %conv73 = sext i16 %dec72 to i32
  %cmp74 = icmp sge i32 %conv73, 0
  br i1 %cmp74, label %while.body.76, label %while.end.97

while.body.76:                                    ; preds = %while.cond.71
  %38 = load i16, i16* %i, align 2
  %idxprom77 = sext i16 %38 to i64
  %text78 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %decode_data, i32 0, i32 1
  %39 = load i8*, i8** %text78, align 8
  %arrayidx79 = getelementptr inbounds i8, i8* %39, i64 %idxprom77
  %40 = load i8, i8* %arrayidx79, align 1
  %41 = load i32, i32* %out_ptr, align 4
  %idxprom80 = zext i32 %41 to i64
  %text81 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %decode_data, i32 0, i32 1
  %42 = load i8*, i8** %text81, align 8
  %arrayidx82 = getelementptr inbounds i8, i8* %42, i64 %idxprom80
  store i8 %40, i8* %arrayidx82, align 1
  %43 = load i32, i32* %out_ptr, align 4
  %inc83 = add i32 %43, 1
  store i32 %inc83, i32* %out_ptr, align 4
  %cmp84 = icmp uge i32 %inc83, 26624
  br i1 %cmp84, label %if.then.86, label %if.end.90

if.then.86:                                       ; preds = %while.body.76
  store i32 0, i32* %out_ptr, align 4
  %44 = load %struct.arj_metadata_tag*, %struct.arj_metadata_tag** %metadata.addr, align 8
  %ofd87 = getelementptr inbounds %struct.arj_metadata_tag, %struct.arj_metadata_tag* %44, i32 0, i32 5
  %45 = load i32, i32* %ofd87, align 4
  %text88 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %decode_data, i32 0, i32 1
  %46 = load i8*, i8** %text88, align 8
  %call89 = call i32 @write_text(i32 %45, i8* %46, i32 26624)
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.86, %while.body.76
  %47 = load i16, i16* %i, align 2
  %inc91 = add i16 %47, 1
  store i16 %inc91, i16* %i, align 2
  %conv92 = sext i16 %inc91 to i32
  %cmp93 = icmp sge i32 %conv92, 26624
  br i1 %cmp93, label %if.then.95, label %if.end.96

if.then.95:                                       ; preds = %if.end.90
  store i16 0, i16* %i, align 2
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.95, %if.end.90
  br label %while.cond.71

while.end.97:                                     ; preds = %while.cond.71
  br label %if.end.98

if.end.98:                                        ; preds = %while.end.97, %while.end
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.98, %if.end.20
  br label %while.cond

while.end.100:                                    ; preds = %if.then.43, %while.cond
  %48 = load i32, i32* %out_ptr, align 4
  %cmp101 = icmp ne i32 %48, 0
  br i1 %cmp101, label %if.then.103, label %if.end.107

if.then.103:                                      ; preds = %while.end.100
  %49 = load %struct.arj_metadata_tag*, %struct.arj_metadata_tag** %metadata.addr, align 8
  %ofd104 = getelementptr inbounds %struct.arj_metadata_tag, %struct.arj_metadata_tag* %49, i32 0, i32 5
  %50 = load i32, i32* %ofd104, align 4
  %text105 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %decode_data, i32 0, i32 1
  %51 = load i8*, i8** %text105, align 8
  %52 = load i32, i32* %out_ptr, align 4
  %call106 = call i32 @write_text(i32 %50, i8* %51, i32 %52)
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.103, %while.end.100
  %text108 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %decode_data, i32 0, i32 1
  %53 = load i8*, i8** %text108, align 8
  call void @free(i8* %53) #5
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.107, %if.then.5, %if.then
  %54 = load i32, i32* %retval
  ret i32 %54
}

; Function Attrs: nounwind uwtable
define internal i32 @decode_f(i32 %fd, %struct.arj_metadata_tag* %metadata) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %metadata.addr = alloca %struct.arj_metadata_tag*, align 8
  %ret = alloca i32, align 4
  %decode_data = alloca %struct.arj_decode_tag, align 8
  %dd = alloca %struct.arj_decode_tag*, align 8
  %count = alloca i32, align 4
  %out_ptr = alloca i32, align 4
  %chr = alloca i16, align 2
  %i = alloca i16, align 2
  %j = alloca i16, align 2
  %pos = alloca i16, align 2
  store i32 %fd, i32* %fd.addr, align 4
  store %struct.arj_metadata_tag* %metadata, %struct.arj_metadata_tag** %metadata.addr, align 8
  store i32 0, i32* %count, align 4
  store i32 0, i32* %out_ptr, align 4
  store %struct.arj_decode_tag* %decode_data, %struct.arj_decode_tag** %dd, align 8
  %call = call i8* @cli_malloc(i64 26624)
  %text = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %decode_data, i32 0, i32 1
  store i8* %call, i8** %text, align 8
  %text1 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %decode_data, i32 0, i32 1
  %0 = load i8*, i8** %text1, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -114, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %fd.addr, align 4
  %fd2 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %decode_data, i32 0, i32 0
  store i32 %1, i32* %fd2, align 4
  %2 = load %struct.arj_metadata_tag*, %struct.arj_metadata_tag** %metadata.addr, align 8
  %comp_size = getelementptr inbounds %struct.arj_metadata_tag, %struct.arj_metadata_tag* %2, i32 0, i32 0
  %3 = load i32, i32* %comp_size, align 4
  %comp_size3 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %decode_data, i32 0, i32 6
  store i32 %3, i32* %comp_size3, align 4
  %call4 = call i32 @init_getbits(%struct.arj_decode_tag* %decode_data)
  store i32 %call4, i32* %ret, align 4
  %4 = load i32, i32* %ret, align 4
  %cmp = icmp ne i32 %4, 0
  br i1 %cmp, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %5 = load i32, i32* %ret, align 4
  store i32 %5, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %getbuf = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %decode_data, i32 0, i32 8
  store i16 0, i16* %getbuf, align 2
  %getlen = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %decode_data, i32 0, i32 7
  store i16 0, i16* %getlen, align 2
  br label %while.cond

while.cond:                                       ; preds = %if.end.99, %if.end.6
  %6 = load i32, i32* %count, align 4
  %7 = load %struct.arj_metadata_tag*, %struct.arj_metadata_tag** %metadata.addr, align 8
  %orig_size = getelementptr inbounds %struct.arj_metadata_tag, %struct.arj_metadata_tag* %7, i32 0, i32 1
  %8 = load i32, i32* %orig_size, align 4
  %cmp7 = icmp ult i32 %6, %8
  br i1 %cmp7, label %while.body, label %while.end.100

while.body:                                       ; preds = %while.cond
  %call8 = call zeroext i16 @decode_len(%struct.arj_decode_tag* %decode_data)
  store i16 %call8, i16* %chr, align 2
  %9 = load i16, i16* %chr, align 2
  %conv = sext i16 %9 to i32
  %cmp9 = icmp eq i32 %conv, 0
  br i1 %cmp9, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %while.body
  %10 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %dd, align 8
  %getlen12 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %10, i32 0, i32 7
  %11 = load i16, i16* %getlen12, align 2
  %conv13 = sext i16 %11 to i32
  %cmp14 = icmp slt i32 %conv13, 8
  br i1 %cmp14, label %if.then.16, label %if.end.27

if.then.16:                                       ; preds = %if.then.11
  %12 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %dd, align 8
  %bit_buf = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %12, i32 0, i32 3
  %13 = load i16, i16* %bit_buf, align 2
  %conv17 = zext i16 %13 to i32
  %14 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %dd, align 8
  %getlen18 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %14, i32 0, i32 7
  %15 = load i16, i16* %getlen18, align 2
  %conv19 = sext i16 %15 to i32
  %shr = ashr i32 %conv17, %conv19
  %16 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %dd, align 8
  %getbuf20 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %16, i32 0, i32 8
  %17 = load i16, i16* %getbuf20, align 2
  %conv21 = sext i16 %17 to i32
  %or = or i32 %conv21, %shr
  %conv22 = trunc i32 %or to i16
  store i16 %conv22, i16* %getbuf20, align 2
  %18 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %dd, align 8
  %19 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %dd, align 8
  %getlen23 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %19, i32 0, i32 7
  %20 = load i16, i16* %getlen23, align 2
  %conv24 = sext i16 %20 to i32
  %sub = sub nsw i32 16, %conv24
  %call25 = call i32 @fill_buf(%struct.arj_decode_tag* %18, i32 %sub)
  %21 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %dd, align 8
  %getlen26 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %21, i32 0, i32 7
  store i16 16, i16* %getlen26, align 2
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.16, %if.then.11
  %22 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %dd, align 8
  %getbuf28 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %22, i32 0, i32 8
  %23 = load i16, i16* %getbuf28, align 2
  %conv29 = zext i16 %23 to i32
  %shr30 = ashr i32 %conv29, 8
  %conv31 = trunc i32 %shr30 to i16
  store i16 %conv31, i16* %chr, align 2
  %24 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %dd, align 8
  %getbuf32 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %24, i32 0, i32 8
  %25 = load i16, i16* %getbuf32, align 2
  %conv33 = sext i16 %25 to i32
  %shl = shl i32 %conv33, 8
  %conv34 = trunc i32 %shl to i16
  store i16 %conv34, i16* %getbuf32, align 2
  %26 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %dd, align 8
  %getlen35 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %26, i32 0, i32 7
  %27 = load i16, i16* %getlen35, align 2
  %conv36 = sext i16 %27 to i32
  %sub37 = sub nsw i32 %conv36, 8
  %conv38 = trunc i32 %sub37 to i16
  store i16 %conv38, i16* %getlen35, align 2
  %28 = load i16, i16* %chr, align 2
  %conv39 = trunc i16 %28 to i8
  %29 = load i32, i32* %out_ptr, align 4
  %idxprom = zext i32 %29 to i64
  %text40 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %decode_data, i32 0, i32 1
  %30 = load i8*, i8** %text40, align 8
  %arrayidx = getelementptr inbounds i8, i8* %30, i64 %idxprom
  store i8 %conv39, i8* %arrayidx, align 1
  %31 = load i32, i32* %count, align 4
  %inc = add i32 %31, 1
  store i32 %inc, i32* %count, align 4
  %32 = load i32, i32* %out_ptr, align 4
  %inc41 = add i32 %32, 1
  store i32 %inc41, i32* %out_ptr, align 4
  %cmp42 = icmp uge i32 %inc41, 26624
  br i1 %cmp42, label %if.then.44, label %if.end.47

if.then.44:                                       ; preds = %if.end.27
  store i32 0, i32* %out_ptr, align 4
  %33 = load %struct.arj_metadata_tag*, %struct.arj_metadata_tag** %metadata.addr, align 8
  %ofd = getelementptr inbounds %struct.arj_metadata_tag, %struct.arj_metadata_tag* %33, i32 0, i32 5
  %34 = load i32, i32* %ofd, align 4
  %text45 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %decode_data, i32 0, i32 1
  %35 = load i8*, i8** %text45, align 8
  %call46 = call i32 @write_text(i32 %34, i8* %35, i32 26624)
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.44, %if.end.27
  br label %if.end.99

if.else:                                          ; preds = %while.body
  %36 = load i16, i16* %chr, align 2
  %conv48 = sext i16 %36 to i32
  %sub49 = sub nsw i32 %conv48, 1
  %add = add nsw i32 %sub49, 3
  %conv50 = trunc i32 %add to i16
  store i16 %conv50, i16* %j, align 2
  %37 = load i16, i16* %j, align 2
  %conv51 = sext i16 %37 to i32
  %38 = load i32, i32* %count, align 4
  %add52 = add i32 %38, %conv51
  store i32 %add52, i32* %count, align 4
  %call53 = call zeroext i16 @decode_ptr(%struct.arj_decode_tag* %decode_data)
  store i16 %call53, i16* %pos, align 2
  %39 = load i32, i32* %out_ptr, align 4
  %40 = load i16, i16* %pos, align 2
  %conv54 = sext i16 %40 to i32
  %sub55 = sub i32 %39, %conv54
  %sub56 = sub i32 %sub55, 1
  %conv57 = trunc i32 %sub56 to i16
  store i16 %conv57, i16* %i, align 2
  %conv58 = sext i16 %conv57 to i32
  %cmp59 = icmp slt i32 %conv58, 0
  br i1 %cmp59, label %if.then.61, label %if.end.65

if.then.61:                                       ; preds = %if.else
  %41 = load i16, i16* %i, align 2
  %conv62 = sext i16 %41 to i32
  %add63 = add nsw i32 %conv62, 26624
  %conv64 = trunc i32 %add63 to i16
  store i16 %conv64, i16* %i, align 2
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.61, %if.else
  %42 = load i16, i16* %i, align 2
  %conv66 = sext i16 %42 to i32
  %cmp67 = icmp sge i32 %conv66, 26624
  br i1 %cmp67, label %if.then.72, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.65
  %43 = load i16, i16* %i, align 2
  %conv69 = sext i16 %43 to i32
  %cmp70 = icmp slt i32 %conv69, 0
  br i1 %cmp70, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %lor.lhs.false, %if.end.65
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.29, i32 0, i32 0))
  br label %while.end.100

if.end.73:                                        ; preds = %lor.lhs.false
  br label %while.cond.74

while.cond.74:                                    ; preds = %if.end.98, %if.end.73
  %44 = load i16, i16* %j, align 2
  %dec = add i16 %44, -1
  store i16 %dec, i16* %j, align 2
  %conv75 = sext i16 %44 to i32
  %cmp76 = icmp sgt i32 %conv75, 0
  br i1 %cmp76, label %while.body.78, label %while.end

while.body.78:                                    ; preds = %while.cond.74
  %45 = load i16, i16* %i, align 2
  %idxprom79 = sext i16 %45 to i64
  %text80 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %decode_data, i32 0, i32 1
  %46 = load i8*, i8** %text80, align 8
  %arrayidx81 = getelementptr inbounds i8, i8* %46, i64 %idxprom79
  %47 = load i8, i8* %arrayidx81, align 1
  %48 = load i32, i32* %out_ptr, align 4
  %idxprom82 = zext i32 %48 to i64
  %text83 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %decode_data, i32 0, i32 1
  %49 = load i8*, i8** %text83, align 8
  %arrayidx84 = getelementptr inbounds i8, i8* %49, i64 %idxprom82
  store i8 %47, i8* %arrayidx84, align 1
  %50 = load i32, i32* %out_ptr, align 4
  %inc85 = add i32 %50, 1
  store i32 %inc85, i32* %out_ptr, align 4
  %cmp86 = icmp uge i32 %inc85, 26624
  br i1 %cmp86, label %if.then.88, label %if.end.92

if.then.88:                                       ; preds = %while.body.78
  store i32 0, i32* %out_ptr, align 4
  %51 = load %struct.arj_metadata_tag*, %struct.arj_metadata_tag** %metadata.addr, align 8
  %ofd89 = getelementptr inbounds %struct.arj_metadata_tag, %struct.arj_metadata_tag* %51, i32 0, i32 5
  %52 = load i32, i32* %ofd89, align 4
  %text90 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %decode_data, i32 0, i32 1
  %53 = load i8*, i8** %text90, align 8
  %call91 = call i32 @write_text(i32 %52, i8* %53, i32 26624)
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.88, %while.body.78
  %54 = load i16, i16* %i, align 2
  %inc93 = add i16 %54, 1
  store i16 %inc93, i16* %i, align 2
  %conv94 = sext i16 %inc93 to i32
  %cmp95 = icmp sge i32 %conv94, 26624
  br i1 %cmp95, label %if.then.97, label %if.end.98

if.then.97:                                       ; preds = %if.end.92
  store i16 0, i16* %i, align 2
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.97, %if.end.92
  br label %while.cond.74

while.end:                                        ; preds = %while.cond.74
  br label %if.end.99

if.end.99:                                        ; preds = %while.end, %if.end.47
  br label %while.cond

while.end.100:                                    ; preds = %if.then.72, %while.cond
  %55 = load i32, i32* %out_ptr, align 4
  %cmp101 = icmp ne i32 %55, 0
  br i1 %cmp101, label %if.then.103, label %if.end.107

if.then.103:                                      ; preds = %while.end.100
  %56 = load %struct.arj_metadata_tag*, %struct.arj_metadata_tag** %metadata.addr, align 8
  %ofd104 = getelementptr inbounds %struct.arj_metadata_tag, %struct.arj_metadata_tag* %56, i32 0, i32 5
  %57 = load i32, i32* %ofd104, align 4
  %text105 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %decode_data, i32 0, i32 1
  %58 = load i8*, i8** %text105, align 8
  %59 = load i32, i32* %out_ptr, align 4
  %call106 = call i32 @write_text(i32 %57, i8* %58, i32 %59)
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.103, %while.end.100
  %text108 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %decode_data, i32 0, i32 1
  %60 = load i8*, i8** %text108, align 8
  call void @free(i8* %60) #5
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.107, %if.then.5, %if.then
  %61 = load i32, i32* %retval
  ret i32 %61
}

declare i32 @cli_readn(i32, i8*, i32) #1

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #3

declare i8* @cli_malloc(i64) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

declare i8* @cli_strdup(i8*) #1

declare i32 @cli_writen(i32, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @decode_start(%struct.arj_decode_tag* %decode_data) #0 {
entry:
  %decode_data.addr = alloca %struct.arj_decode_tag*, align 8
  store %struct.arj_decode_tag* %decode_data, %struct.arj_decode_tag** %decode_data.addr, align 8
  %0 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %blocksize = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %0, i32 0, i32 2
  store i16 0, i16* %blocksize, align 2
  %1 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %call = call i32 @init_getbits(%struct.arj_decode_tag* %1)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal zeroext i16 @decode_c(%struct.arj_decode_tag* %decode_data) #0 {
entry:
  %retval = alloca i16, align 2
  %decode_data.addr = alloca %struct.arj_decode_tag*, align 8
  %j = alloca i16, align 2
  %mask = alloca i16, align 2
  store %struct.arj_decode_tag* %decode_data, %struct.arj_decode_tag** %decode_data.addr, align 8
  %0 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %blocksize = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %0, i32 0, i32 2
  %1 = load i16, i16* %blocksize, align 2
  %conv = zext i16 %1 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %call = call zeroext i16 @arj_getbits(%struct.arj_decode_tag* %2, i32 16)
  %3 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %blocksize2 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %3, i32 0, i32 2
  store i16 %call, i16* %blocksize2, align 2
  %4 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  call void @read_pt_len(%struct.arj_decode_tag* %4, i32 19, i32 5, i32 3)
  %5 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %call3 = call i32 @read_c_len(%struct.arj_decode_tag* %5)
  %6 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  call void @read_pt_len(%struct.arj_decode_tag* %6, i32 19, i32 5, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %blocksize4 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %7, i32 0, i32 2
  %8 = load i16, i16* %blocksize4, align 2
  %dec = add i16 %8, -1
  store i16 %dec, i16* %blocksize4, align 2
  %9 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %bit_buf = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %9, i32 0, i32 3
  %10 = load i16, i16* %bit_buf, align 2
  %conv5 = zext i16 %10 to i32
  %shr = ashr i32 %conv5, 4
  %idxprom = sext i32 %shr to i64
  %11 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %c_table = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %11, i32 0, i32 12
  %arrayidx = getelementptr inbounds [4096 x i16], [4096 x i16]* %c_table, i32 0, i64 %idxprom
  %12 = load i16, i16* %arrayidx, align 2
  store i16 %12, i16* %j, align 2
  %13 = load i16, i16* %j, align 2
  %conv6 = zext i16 %13 to i32
  %cmp7 = icmp sge i32 %conv6, 510
  br i1 %cmp7, label %if.then.9, label %if.end.30

if.then.9:                                        ; preds = %if.end
  store i16 8, i16* %mask, align 2
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then.9
  %14 = load i16, i16* %j, align 2
  %conv10 = zext i16 %14 to i32
  %cmp11 = icmp sge i32 %conv10, 1019
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %do.body
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.30, i32 0, i32 0))
  store i16 0, i16* %retval
  br label %return

if.end.14:                                        ; preds = %do.body
  %15 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %bit_buf15 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %15, i32 0, i32 3
  %16 = load i16, i16* %bit_buf15, align 2
  %conv16 = zext i16 %16 to i32
  %17 = load i16, i16* %mask, align 2
  %conv17 = zext i16 %17 to i32
  %and = and i32 %conv16, %conv17
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %if.end.14
  %18 = load i16, i16* %j, align 2
  %idxprom19 = zext i16 %18 to i64
  %19 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %right = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %19, i32 0, i32 10
  %arrayidx20 = getelementptr inbounds [1019 x i16], [1019 x i16]* %right, i32 0, i64 %idxprom19
  %20 = load i16, i16* %arrayidx20, align 2
  store i16 %20, i16* %j, align 2
  br label %if.end.23

if.else:                                          ; preds = %if.end.14
  %21 = load i16, i16* %j, align 2
  %idxprom21 = zext i16 %21 to i64
  %22 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %left = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %22, i32 0, i32 9
  %arrayidx22 = getelementptr inbounds [1019 x i16], [1019 x i16]* %left, i32 0, i64 %idxprom21
  %23 = load i16, i16* %arrayidx22, align 2
  store i16 %23, i16* %j, align 2
  br label %if.end.23

if.end.23:                                        ; preds = %if.else, %if.then.18
  %24 = load i16, i16* %mask, align 2
  %conv24 = zext i16 %24 to i32
  %shr25 = ashr i32 %conv24, 1
  %conv26 = trunc i32 %shr25 to i16
  store i16 %conv26, i16* %mask, align 2
  br label %do.cond

do.cond:                                          ; preds = %if.end.23
  %25 = load i16, i16* %j, align 2
  %conv27 = zext i16 %25 to i32
  %cmp28 = icmp sge i32 %conv27, 510
  br i1 %cmp28, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.30

if.end.30:                                        ; preds = %do.end, %if.end
  %26 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %27 = load i16, i16* %j, align 2
  %idxprom31 = zext i16 %27 to i64
  %28 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %c_len = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %28, i32 0, i32 11
  %arrayidx32 = getelementptr inbounds [510 x i8], [510 x i8]* %c_len, i32 0, i64 %idxprom31
  %29 = load i8, i8* %arrayidx32, align 1
  %conv33 = zext i8 %29 to i32
  %call34 = call i32 @fill_buf(%struct.arj_decode_tag* %26, i32 %conv33)
  %30 = load i16, i16* %j, align 2
  store i16 %30, i16* %retval
  br label %return

return:                                           ; preds = %if.end.30, %if.then.13
  %31 = load i16, i16* %retval
  ret i16 %31
}

; Function Attrs: nounwind uwtable
define internal i32 @write_text(i32 %ofd, i8* %data, i32 %length) #0 {
entry:
  %retval = alloca i32, align 4
  %ofd.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %length.addr = alloca i32, align 4
  %count = alloca i32, align 4
  store i32 %ofd, i32* %ofd.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  store i32 %length, i32* %length.addr, align 4
  %0 = load i32, i32* %ofd.addr, align 4
  %1 = load i8*, i8** %data.addr, align 8
  %2 = load i32, i32* %length.addr, align 4
  %call = call i32 @cli_writen(i32 %0, i8* %1, i32 %2)
  store i32 %call, i32* %count, align 4
  %3 = load i32, i32* %count, align 4
  %4 = load i32, i32* %length.addr, align 4
  %cmp = icmp ne i32 %3, %4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 -123, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define internal zeroext i16 @decode_p(%struct.arj_decode_tag* %decode_data) #0 {
entry:
  %retval = alloca i16, align 2
  %decode_data.addr = alloca %struct.arj_decode_tag*, align 8
  %j = alloca i16, align 2
  %mask = alloca i16, align 2
  store %struct.arj_decode_tag* %decode_data, %struct.arj_decode_tag** %decode_data.addr, align 8
  %0 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %bit_buf = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %0, i32 0, i32 3
  %1 = load i16, i16* %bit_buf, align 2
  %conv = zext i16 %1 to i32
  %shr = ashr i32 %conv, 8
  %idxprom = sext i32 %shr to i64
  %2 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %pt_table = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %2, i32 0, i32 14
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* %pt_table, i32 0, i64 %idxprom
  %3 = load i16, i16* %arrayidx, align 2
  store i16 %3, i16* %j, align 2
  %4 = load i16, i16* %j, align 2
  %conv1 = zext i16 %4 to i32
  %cmp = icmp sge i32 %conv1, 17
  br i1 %cmp, label %if.then, label %if.end.22

if.then:                                          ; preds = %entry
  store i16 128, i16* %mask, align 2
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then
  %5 = load i16, i16* %j, align 2
  %conv3 = zext i16 %5 to i32
  %cmp4 = icmp sge i32 %conv3, 1019
  br i1 %cmp4, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %do.body
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.30, i32 0, i32 0))
  store i16 0, i16* %retval
  br label %return

if.end:                                           ; preds = %do.body
  %6 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %bit_buf7 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %6, i32 0, i32 3
  %7 = load i16, i16* %bit_buf7, align 2
  %conv8 = zext i16 %7 to i32
  %8 = load i16, i16* %mask, align 2
  %conv9 = zext i16 %8 to i32
  %and = and i32 %conv8, %conv9
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.end
  %9 = load i16, i16* %j, align 2
  %idxprom11 = zext i16 %9 to i64
  %10 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %right = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %10, i32 0, i32 10
  %arrayidx12 = getelementptr inbounds [1019 x i16], [1019 x i16]* %right, i32 0, i64 %idxprom11
  %11 = load i16, i16* %arrayidx12, align 2
  store i16 %11, i16* %j, align 2
  br label %if.end.15

if.else:                                          ; preds = %if.end
  %12 = load i16, i16* %j, align 2
  %idxprom13 = zext i16 %12 to i64
  %13 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %left = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %13, i32 0, i32 9
  %arrayidx14 = getelementptr inbounds [1019 x i16], [1019 x i16]* %left, i32 0, i64 %idxprom13
  %14 = load i16, i16* %arrayidx14, align 2
  store i16 %14, i16* %j, align 2
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.10
  %15 = load i16, i16* %mask, align 2
  %conv16 = zext i16 %15 to i32
  %shr17 = ashr i32 %conv16, 1
  %conv18 = trunc i32 %shr17 to i16
  store i16 %conv18, i16* %mask, align 2
  br label %do.cond

do.cond:                                          ; preds = %if.end.15
  %16 = load i16, i16* %j, align 2
  %conv19 = zext i16 %16 to i32
  %cmp20 = icmp sge i32 %conv19, 17
  br i1 %cmp20, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.22

if.end.22:                                        ; preds = %do.end, %entry
  %17 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %18 = load i16, i16* %j, align 2
  %idxprom23 = zext i16 %18 to i64
  %19 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %pt_len = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %19, i32 0, i32 13
  %arrayidx24 = getelementptr inbounds [19 x i8], [19 x i8]* %pt_len, i32 0, i64 %idxprom23
  %20 = load i8, i8* %arrayidx24, align 1
  %conv25 = zext i8 %20 to i32
  %call = call i32 @fill_buf(%struct.arj_decode_tag* %17, i32 %conv25)
  %21 = load i16, i16* %j, align 2
  %conv26 = zext i16 %21 to i32
  %cmp27 = icmp ne i32 %conv26, 0
  br i1 %cmp27, label %if.then.29, label %if.end.35

if.then.29:                                       ; preds = %if.end.22
  %22 = load i16, i16* %j, align 2
  %dec = add i16 %22, -1
  store i16 %dec, i16* %j, align 2
  %23 = load i16, i16* %j, align 2
  %conv30 = zext i16 %23 to i32
  %shl = shl i32 1, %conv30
  %24 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %25 = load i16, i16* %j, align 2
  %conv31 = zext i16 %25 to i32
  %call32 = call zeroext i16 @arj_getbits(%struct.arj_decode_tag* %24, i32 %conv31)
  %conv33 = zext i16 %call32 to i32
  %add = add nsw i32 %shl, %conv33
  %conv34 = trunc i32 %add to i16
  store i16 %conv34, i16* %j, align 2
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.29, %if.end.22
  %26 = load i16, i16* %j, align 2
  store i16 %26, i16* %retval
  br label %return

return:                                           ; preds = %if.end.35, %if.then.6
  %27 = load i16, i16* %retval
  ret i16 %27
}

declare void @cli_warnmsg(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @init_getbits(%struct.arj_decode_tag* %decode_data) #0 {
entry:
  %decode_data.addr = alloca %struct.arj_decode_tag*, align 8
  store %struct.arj_decode_tag* %decode_data, %struct.arj_decode_tag** %decode_data.addr, align 8
  %0 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %bit_buf = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %0, i32 0, i32 3
  store i16 0, i16* %bit_buf, align 2
  %1 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %sub_bit_buf = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %1, i32 0, i32 4
  store i8 0, i8* %sub_bit_buf, align 1
  %2 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %bit_count = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %2, i32 0, i32 5
  store i32 0, i32* %bit_count, align 4
  %3 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %call = call i32 @fill_buf(%struct.arj_decode_tag* %3, i32 16)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @fill_buf(%struct.arj_decode_tag* %decode_data, i32 %n) #0 {
entry:
  %retval = alloca i32, align 4
  %decode_data.addr = alloca %struct.arj_decode_tag*, align 8
  %n.addr = alloca i32, align 4
  store %struct.arj_decode_tag* %decode_data, %struct.arj_decode_tag** %decode_data.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %bit_buf = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %0, i32 0, i32 3
  %1 = load i16, i16* %bit_buf, align 2
  %conv = zext i16 %1 to i32
  %2 = load i32, i32* %n.addr, align 4
  %shl = shl i32 %conv, %2
  %and = and i32 %shl, 65535
  %conv1 = trunc i32 %and to i16
  %3 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %bit_buf2 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %3, i32 0, i32 3
  store i16 %conv1, i16* %bit_buf2, align 2
  br label %while.cond

while.cond:                                       ; preds = %if.end.18, %entry
  %4 = load i32, i32* %n.addr, align 4
  %5 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %bit_count = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %5, i32 0, i32 5
  %6 = load i32, i32* %bit_count, align 4
  %cmp = icmp sgt i32 %4, %6
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %sub_bit_buf = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %7, i32 0, i32 4
  %8 = load i8, i8* %sub_bit_buf, align 1
  %conv4 = zext i8 %8 to i32
  %9 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %bit_count5 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %9, i32 0, i32 5
  %10 = load i32, i32* %bit_count5, align 4
  %11 = load i32, i32* %n.addr, align 4
  %sub = sub nsw i32 %11, %10
  store i32 %sub, i32* %n.addr, align 4
  %shl6 = shl i32 %conv4, %sub
  %12 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %bit_buf7 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %12, i32 0, i32 3
  %13 = load i16, i16* %bit_buf7, align 2
  %conv8 = zext i16 %13 to i32
  %or = or i32 %conv8, %shl6
  %conv9 = trunc i32 %or to i16
  store i16 %conv9, i16* %bit_buf7, align 2
  %14 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %comp_size = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %14, i32 0, i32 6
  %15 = load i32, i32* %comp_size, align 4
  %cmp10 = icmp ne i32 %15, 0
  br i1 %cmp10, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %16 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %comp_size12 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %16, i32 0, i32 6
  %17 = load i32, i32* %comp_size12, align 4
  %dec = add i32 %17, -1
  store i32 %dec, i32* %comp_size12, align 4
  %18 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %fd = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %18, i32 0, i32 0
  %19 = load i32, i32* %fd, align 4
  %20 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %sub_bit_buf13 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %20, i32 0, i32 4
  %call = call i32 @cli_readn(i32 %19, i8* %sub_bit_buf13, i32 1)
  %cmp14 = icmp ne i32 %call, 1
  br i1 %cmp14, label %if.then.16, label %if.end

if.then.16:                                       ; preds = %if.then
  store i32 -123, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.18

if.else:                                          ; preds = %while.body
  %21 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %sub_bit_buf17 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %21, i32 0, i32 4
  store i8 0, i8* %sub_bit_buf17, align 1
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %if.end
  %22 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %bit_count19 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %22, i32 0, i32 5
  store i32 8, i32* %bit_count19, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %23 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %sub_bit_buf20 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %23, i32 0, i32 4
  %24 = load i8, i8* %sub_bit_buf20, align 1
  %conv21 = zext i8 %24 to i32
  %25 = load i32, i32* %n.addr, align 4
  %26 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %bit_count22 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %26, i32 0, i32 5
  %27 = load i32, i32* %bit_count22, align 4
  %sub23 = sub nsw i32 %27, %25
  store i32 %sub23, i32* %bit_count22, align 4
  %shr = ashr i32 %conv21, %sub23
  %28 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %bit_buf24 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %28, i32 0, i32 3
  %29 = load i16, i16* %bit_buf24, align 2
  %conv25 = zext i16 %29 to i32
  %or26 = or i32 %conv25, %shr
  %conv27 = trunc i32 %or26 to i16
  store i16 %conv27, i16* %bit_buf24, align 2
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.16
  %30 = load i32, i32* %retval
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define internal zeroext i16 @arj_getbits(%struct.arj_decode_tag* %decode_data, i32 %n) #0 {
entry:
  %decode_data.addr = alloca %struct.arj_decode_tag*, align 8
  %n.addr = alloca i32, align 4
  %x = alloca i16, align 2
  store %struct.arj_decode_tag* %decode_data, %struct.arj_decode_tag** %decode_data.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %bit_buf = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %0, i32 0, i32 3
  %1 = load i16, i16* %bit_buf, align 2
  %conv = zext i16 %1 to i32
  %2 = load i32, i32* %n.addr, align 4
  %sub = sub nsw i32 16, %2
  %shr = ashr i32 %conv, %sub
  %conv1 = trunc i32 %shr to i16
  store i16 %conv1, i16* %x, align 2
  %3 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %4 = load i32, i32* %n.addr, align 4
  %call = call i32 @fill_buf(%struct.arj_decode_tag* %3, i32 %4)
  %5 = load i16, i16* %x, align 2
  ret i16 %5
}

; Function Attrs: nounwind uwtable
define internal void @read_pt_len(%struct.arj_decode_tag* %decode_data, i32 %nn, i32 %nbit, i32 %i_special) #0 {
entry:
  %decode_data.addr = alloca %struct.arj_decode_tag*, align 8
  %nn.addr = alloca i32, align 4
  %nbit.addr = alloca i32, align 4
  %i_special.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %c = alloca i16, align 2
  %mask = alloca i16, align 2
  store %struct.arj_decode_tag* %decode_data, %struct.arj_decode_tag** %decode_data.addr, align 8
  store i32 %nn, i32* %nn.addr, align 4
  store i32 %nbit, i32* %nbit.addr, align 4
  store i32 %i_special, i32* %i_special.addr, align 4
  %0 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %1 = load i32, i32* %nbit.addr, align 4
  %call = call zeroext i16 @arj_getbits(%struct.arj_decode_tag* %0, i32 %1)
  %conv = zext i16 %call to i32
  store i32 %conv, i32* %n, align 4
  %2 = load i32, i32* %n, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %4 = load i32, i32* %nbit.addr, align 4
  %call2 = call zeroext i16 @arj_getbits(%struct.arj_decode_tag* %3, i32 %4)
  store i16 %call2, i16* %c, align 2
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %nn.addr, align 4
  %cmp3 = icmp slt i32 %5, %6
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %pt_len = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %8, i32 0, i32 13
  %arrayidx = getelementptr inbounds [19 x i8], [19 x i8]* %pt_len, i32 0, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.11, %for.end
  %10 = load i32, i32* %i, align 4
  %cmp6 = icmp slt i32 %10, 256
  br i1 %cmp6, label %for.body.8, label %for.end.13

for.body.8:                                       ; preds = %for.cond.5
  %11 = load i16, i16* %c, align 2
  %12 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %12 to i64
  %13 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %pt_table = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %13, i32 0, i32 14
  %arrayidx10 = getelementptr inbounds [256 x i16], [256 x i16]* %pt_table, i32 0, i64 %idxprom9
  store i16 %11, i16* %arrayidx10, align 2
  br label %for.inc.11

for.inc.11:                                       ; preds = %for.body.8
  %14 = load i32, i32* %i, align 4
  %inc12 = add nsw i32 %14, 1
  store i32 %inc12, i32* %i, align 4
  br label %for.cond.5

for.end.13:                                       ; preds = %for.cond.5
  br label %if.end.80

if.else:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.61, %if.else
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %n, align 4
  %cmp14 = icmp slt i32 %15, %16
  br i1 %cmp14, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %17 = load i32, i32* %i, align 4
  %cmp16 = icmp slt i32 %17, 19
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %18 = phi i1 [ false, %while.cond ], [ %cmp16, %land.rhs ]
  br i1 %18, label %while.body, label %while.end.62

while.body:                                       ; preds = %land.end
  %19 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %bit_buf = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %19, i32 0, i32 3
  %20 = load i16, i16* %bit_buf, align 2
  %conv18 = zext i16 %20 to i32
  %shr = ashr i32 %conv18, 13
  %conv19 = trunc i32 %shr to i16
  store i16 %conv19, i16* %c, align 2
  %21 = load i16, i16* %c, align 2
  %conv20 = sext i16 %21 to i32
  %cmp21 = icmp eq i32 %conv20, 7
  br i1 %cmp21, label %if.then.23, label %if.end

if.then.23:                                       ; preds = %while.body
  store i16 4096, i16* %mask, align 2
  br label %while.cond.24

while.cond.24:                                    ; preds = %while.body.28, %if.then.23
  %22 = load i16, i16* %mask, align 2
  %conv25 = zext i16 %22 to i32
  %23 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %bit_buf26 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %23, i32 0, i32 3
  %24 = load i16, i16* %bit_buf26, align 2
  %conv27 = zext i16 %24 to i32
  %and = and i32 %conv25, %conv27
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %while.body.28, label %while.end

while.body.28:                                    ; preds = %while.cond.24
  %25 = load i16, i16* %mask, align 2
  %conv29 = zext i16 %25 to i32
  %shr30 = ashr i32 %conv29, 1
  %conv31 = trunc i32 %shr30 to i16
  store i16 %conv31, i16* %mask, align 2
  %26 = load i16, i16* %c, align 2
  %inc32 = add i16 %26, 1
  store i16 %inc32, i16* %c, align 2
  br label %while.cond.24

while.end:                                        ; preds = %while.cond.24
  br label %if.end

if.end:                                           ; preds = %while.end, %while.body
  %27 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %28 = load i16, i16* %c, align 2
  %conv33 = sext i16 %28 to i32
  %cmp34 = icmp slt i32 %conv33, 7
  br i1 %cmp34, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %29 = load i16, i16* %c, align 2
  %conv36 = sext i16 %29 to i32
  %sub = sub nsw i32 %conv36, 3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 3, %cond.true ], [ %sub, %cond.false ]
  %call37 = call i32 @fill_buf(%struct.arj_decode_tag* %27, i32 %cond)
  %30 = load i16, i16* %c, align 2
  %conv38 = trunc i16 %30 to i8
  %31 = load i32, i32* %i, align 4
  %inc39 = add nsw i32 %31, 1
  store i32 %inc39, i32* %i, align 4
  %idxprom40 = sext i32 %31 to i64
  %32 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %pt_len41 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %32, i32 0, i32 13
  %arrayidx42 = getelementptr inbounds [19 x i8], [19 x i8]* %pt_len41, i32 0, i64 %idxprom40
  store i8 %conv38, i8* %arrayidx42, align 1
  %33 = load i32, i32* %i, align 4
  %34 = load i32, i32* %i_special.addr, align 4
  %cmp43 = icmp eq i32 %33, %34
  br i1 %cmp43, label %if.then.45, label %if.end.61

if.then.45:                                       ; preds = %cond.end
  %35 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %call46 = call zeroext i16 @arj_getbits(%struct.arj_decode_tag* %35, i32 2)
  store i16 %call46, i16* %c, align 2
  br label %while.cond.47

while.cond.47:                                    ; preds = %while.body.55, %if.then.45
  %36 = load i16, i16* %c, align 2
  %dec = add i16 %36, -1
  store i16 %dec, i16* %c, align 2
  %conv48 = sext i16 %dec to i32
  %cmp49 = icmp sge i32 %conv48, 0
  br i1 %cmp49, label %land.rhs.51, label %land.end.54

land.rhs.51:                                      ; preds = %while.cond.47
  %37 = load i32, i32* %i, align 4
  %cmp52 = icmp slt i32 %37, 19
  br label %land.end.54

land.end.54:                                      ; preds = %land.rhs.51, %while.cond.47
  %38 = phi i1 [ false, %while.cond.47 ], [ %cmp52, %land.rhs.51 ]
  br i1 %38, label %while.body.55, label %while.end.60

while.body.55:                                    ; preds = %land.end.54
  %39 = load i32, i32* %i, align 4
  %inc56 = add nsw i32 %39, 1
  store i32 %inc56, i32* %i, align 4
  %idxprom57 = sext i32 %39 to i64
  %40 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %pt_len58 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %40, i32 0, i32 13
  %arrayidx59 = getelementptr inbounds [19 x i8], [19 x i8]* %pt_len58, i32 0, i64 %idxprom57
  store i8 0, i8* %arrayidx59, align 1
  br label %while.cond.47

while.end.60:                                     ; preds = %land.end.54
  br label %if.end.61

if.end.61:                                        ; preds = %while.end.60, %cond.end
  br label %while.cond

while.end.62:                                     ; preds = %land.end
  br label %while.cond.63

while.cond.63:                                    ; preds = %while.body.70, %while.end.62
  %41 = load i32, i32* %i, align 4
  %42 = load i32, i32* %nn.addr, align 4
  %cmp64 = icmp slt i32 %41, %42
  br i1 %cmp64, label %land.rhs.66, label %land.end.69

land.rhs.66:                                      ; preds = %while.cond.63
  %43 = load i32, i32* %i, align 4
  %cmp67 = icmp slt i32 %43, 19
  br label %land.end.69

land.end.69:                                      ; preds = %land.rhs.66, %while.cond.63
  %44 = phi i1 [ false, %while.cond.63 ], [ %cmp67, %land.rhs.66 ]
  br i1 %44, label %while.body.70, label %while.end.75

while.body.70:                                    ; preds = %land.end.69
  %45 = load i32, i32* %i, align 4
  %inc71 = add nsw i32 %45, 1
  store i32 %inc71, i32* %i, align 4
  %idxprom72 = sext i32 %45 to i64
  %46 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %pt_len73 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %46, i32 0, i32 13
  %arrayidx74 = getelementptr inbounds [19 x i8], [19 x i8]* %pt_len73, i32 0, i64 %idxprom72
  store i8 0, i8* %arrayidx74, align 1
  br label %while.cond.63

while.end.75:                                     ; preds = %land.end.69
  %47 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %48 = load i32, i32* %nn.addr, align 4
  %49 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %pt_len76 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %49, i32 0, i32 13
  %arraydecay = getelementptr inbounds [19 x i8], [19 x i8]* %pt_len76, i32 0, i32 0
  %50 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %pt_table77 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %50, i32 0, i32 14
  %arraydecay78 = getelementptr inbounds [256 x i16], [256 x i16]* %pt_table77, i32 0, i32 0
  %call79 = call i32 @make_table(%struct.arj_decode_tag* %47, i32 %48, i8* %arraydecay, i32 8, i16* %arraydecay78, i32 256)
  br label %if.end.80

if.end.80:                                        ; preds = %while.end.75, %for.end.13
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @read_c_len(%struct.arj_decode_tag* %decode_data) #0 {
entry:
  %retval = alloca i32, align 4
  %decode_data.addr = alloca %struct.arj_decode_tag*, align 8
  %i = alloca i16, align 2
  %c = alloca i16, align 2
  %n = alloca i16, align 2
  %mask = alloca i16, align 2
  store %struct.arj_decode_tag* %decode_data, %struct.arj_decode_tag** %decode_data.addr, align 8
  %0 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %call = call zeroext i16 @arj_getbits(%struct.arj_decode_tag* %0, i32 9)
  store i16 %call, i16* %n, align 2
  %1 = load i16, i16* %n, align 2
  %conv = sext i16 %1 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %call2 = call zeroext i16 @arj_getbits(%struct.arj_decode_tag* %2, i32 9)
  store i16 %call2, i16* %c, align 2
  store i16 0, i16* %i, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i16, i16* %i, align 2
  %conv3 = sext i16 %3 to i32
  %cmp4 = icmp slt i32 %conv3, 510
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i16, i16* %i, align 2
  %idxprom = sext i16 %4 to i64
  %5 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %c_len = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %5, i32 0, i32 11
  %arrayidx = getelementptr inbounds [510 x i8], [510 x i8]* %c_len, i32 0, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i16, i16* %i, align 2
  %inc = add i16 %6, 1
  store i16 %inc, i16* %i, align 2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i16 0, i16* %i, align 2
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.13, %for.end
  %7 = load i16, i16* %i, align 2
  %conv7 = sext i16 %7 to i32
  %cmp8 = icmp slt i32 %conv7, 4096
  br i1 %cmp8, label %for.body.10, label %for.end.15

for.body.10:                                      ; preds = %for.cond.6
  %8 = load i16, i16* %c, align 2
  %9 = load i16, i16* %i, align 2
  %idxprom11 = sext i16 %9 to i64
  %10 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %c_table = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %10, i32 0, i32 12
  %arrayidx12 = getelementptr inbounds [4096 x i16], [4096 x i16]* %c_table, i32 0, i64 %idxprom11
  store i16 %8, i16* %arrayidx12, align 2
  br label %for.inc.13

for.inc.13:                                       ; preds = %for.body.10
  %11 = load i16, i16* %i, align 2
  %inc14 = add i16 %11, 1
  store i16 %inc14, i16* %i, align 2
  br label %for.cond.6

for.end.15:                                       ; preds = %for.cond.6
  br label %if.end.117

if.else:                                          ; preds = %entry
  store i16 0, i16* %i, align 2
  br label %while.cond

while.cond:                                       ; preds = %if.end.101, %if.else
  %12 = load i16, i16* %i, align 2
  %conv16 = sext i16 %12 to i32
  %13 = load i16, i16* %n, align 2
  %conv17 = sext i16 %13 to i32
  %cmp18 = icmp slt i32 %conv16, %conv17
  br i1 %cmp18, label %while.body, label %while.end.102

while.body:                                       ; preds = %while.cond
  %14 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %bit_buf = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %14, i32 0, i32 3
  %15 = load i16, i16* %bit_buf, align 2
  %conv20 = zext i16 %15 to i32
  %shr = ashr i32 %conv20, 8
  %idxprom21 = sext i32 %shr to i64
  %16 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %pt_table = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %16, i32 0, i32 14
  %arrayidx22 = getelementptr inbounds [256 x i16], [256 x i16]* %pt_table, i32 0, i64 %idxprom21
  %17 = load i16, i16* %arrayidx22, align 2
  store i16 %17, i16* %c, align 2
  %18 = load i16, i16* %c, align 2
  %conv23 = sext i16 %18 to i32
  %cmp24 = icmp sge i32 %conv23, 19
  br i1 %cmp24, label %if.then.26, label %if.end.47

if.then.26:                                       ; preds = %while.body
  store i16 128, i16* %mask, align 2
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then.26
  %19 = load i16, i16* %c, align 2
  %conv27 = sext i16 %19 to i32
  %cmp28 = icmp sge i32 %conv27, 1019
  br i1 %cmp28, label %if.then.30, label %if.end

if.then.30:                                       ; preds = %do.body
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.30, i32 0, i32 0))
  store i32 -124, i32* %retval
  br label %return

if.end:                                           ; preds = %do.body
  %20 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %bit_buf31 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %20, i32 0, i32 3
  %21 = load i16, i16* %bit_buf31, align 2
  %conv32 = zext i16 %21 to i32
  %22 = load i16, i16* %mask, align 2
  %conv33 = zext i16 %22 to i32
  %and = and i32 %conv32, %conv33
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.34, label %if.else.37

if.then.34:                                       ; preds = %if.end
  %23 = load i16, i16* %c, align 2
  %idxprom35 = sext i16 %23 to i64
  %24 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %right = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %24, i32 0, i32 10
  %arrayidx36 = getelementptr inbounds [1019 x i16], [1019 x i16]* %right, i32 0, i64 %idxprom35
  %25 = load i16, i16* %arrayidx36, align 2
  store i16 %25, i16* %c, align 2
  br label %if.end.40

if.else.37:                                       ; preds = %if.end
  %26 = load i16, i16* %c, align 2
  %idxprom38 = sext i16 %26 to i64
  %27 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %left = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %27, i32 0, i32 9
  %arrayidx39 = getelementptr inbounds [1019 x i16], [1019 x i16]* %left, i32 0, i64 %idxprom38
  %28 = load i16, i16* %arrayidx39, align 2
  store i16 %28, i16* %c, align 2
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.37, %if.then.34
  %29 = load i16, i16* %mask, align 2
  %conv41 = zext i16 %29 to i32
  %shr42 = ashr i32 %conv41, 1
  %conv43 = trunc i32 %shr42 to i16
  store i16 %conv43, i16* %mask, align 2
  br label %do.cond

do.cond:                                          ; preds = %if.end.40
  %30 = load i16, i16* %c, align 2
  %conv44 = sext i16 %30 to i32
  %cmp45 = icmp sge i32 %conv44, 19
  br i1 %cmp45, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.47

if.end.47:                                        ; preds = %do.end, %while.body
  %31 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %32 = load i16, i16* %c, align 2
  %idxprom48 = sext i16 %32 to i64
  %33 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %pt_len = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %33, i32 0, i32 13
  %arrayidx49 = getelementptr inbounds [19 x i8], [19 x i8]* %pt_len, i32 0, i64 %idxprom48
  %34 = load i8, i8* %arrayidx49, align 1
  %conv50 = zext i8 %34 to i32
  %call51 = call i32 @fill_buf(%struct.arj_decode_tag* %31, i32 %conv50)
  %35 = load i16, i16* %c, align 2
  %conv52 = sext i16 %35 to i32
  %cmp53 = icmp sle i32 %conv52, 2
  br i1 %cmp53, label %if.then.55, label %if.else.89

if.then.55:                                       ; preds = %if.end.47
  %36 = load i16, i16* %c, align 2
  %conv56 = sext i16 %36 to i32
  %cmp57 = icmp eq i32 %conv56, 0
  br i1 %cmp57, label %if.then.59, label %if.else.60

if.then.59:                                       ; preds = %if.then.55
  store i16 1, i16* %c, align 2
  br label %if.end.74

if.else.60:                                       ; preds = %if.then.55
  %37 = load i16, i16* %c, align 2
  %conv61 = sext i16 %37 to i32
  %cmp62 = icmp eq i32 %conv61, 1
  br i1 %cmp62, label %if.then.64, label %if.else.68

if.then.64:                                       ; preds = %if.else.60
  %38 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %call65 = call zeroext i16 @arj_getbits(%struct.arj_decode_tag* %38, i32 4)
  %conv66 = zext i16 %call65 to i32
  %add = add nsw i32 %conv66, 3
  %conv67 = trunc i32 %add to i16
  store i16 %conv67, i16* %c, align 2
  br label %if.end.73

if.else.68:                                       ; preds = %if.else.60
  %39 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %call69 = call zeroext i16 @arj_getbits(%struct.arj_decode_tag* %39, i32 9)
  %conv70 = zext i16 %call69 to i32
  %add71 = add nsw i32 %conv70, 20
  %conv72 = trunc i32 %add71 to i16
  store i16 %conv72, i16* %c, align 2
  br label %if.end.73

if.end.73:                                        ; preds = %if.else.68, %if.then.64
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.then.59
  br label %while.cond.75

while.cond.75:                                    ; preds = %if.end.84, %if.end.74
  %40 = load i16, i16* %c, align 2
  %dec = add i16 %40, -1
  store i16 %dec, i16* %c, align 2
  %conv76 = sext i16 %dec to i32
  %cmp77 = icmp sge i32 %conv76, 0
  br i1 %cmp77, label %while.body.79, label %while.end

while.body.79:                                    ; preds = %while.cond.75
  %41 = load i16, i16* %i, align 2
  %conv80 = sext i16 %41 to i32
  %cmp81 = icmp sge i32 %conv80, 510
  br i1 %cmp81, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %while.body.79
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.30, i32 0, i32 0))
  store i32 -124, i32* %retval
  br label %return

if.end.84:                                        ; preds = %while.body.79
  %42 = load i16, i16* %i, align 2
  %inc85 = add i16 %42, 1
  store i16 %inc85, i16* %i, align 2
  %idxprom86 = sext i16 %42 to i64
  %43 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %c_len87 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %43, i32 0, i32 11
  %arrayidx88 = getelementptr inbounds [510 x i8], [510 x i8]* %c_len87, i32 0, i64 %idxprom86
  store i8 0, i8* %arrayidx88, align 1
  br label %while.cond.75

while.end:                                        ; preds = %while.cond.75
  br label %if.end.101

if.else.89:                                       ; preds = %if.end.47
  %44 = load i16, i16* %i, align 2
  %conv90 = sext i16 %44 to i32
  %cmp91 = icmp sge i32 %conv90, 510
  br i1 %cmp91, label %if.then.93, label %if.end.94

if.then.93:                                       ; preds = %if.else.89
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.30, i32 0, i32 0))
  store i32 -124, i32* %retval
  br label %return

if.end.94:                                        ; preds = %if.else.89
  %45 = load i16, i16* %c, align 2
  %conv95 = sext i16 %45 to i32
  %sub = sub nsw i32 %conv95, 2
  %conv96 = trunc i32 %sub to i8
  %46 = load i16, i16* %i, align 2
  %inc97 = add i16 %46, 1
  store i16 %inc97, i16* %i, align 2
  %idxprom98 = sext i16 %46 to i64
  %47 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %c_len99 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %47, i32 0, i32 11
  %arrayidx100 = getelementptr inbounds [510 x i8], [510 x i8]* %c_len99, i32 0, i64 %idxprom98
  store i8 %conv96, i8* %arrayidx100, align 1
  br label %if.end.101

if.end.101:                                       ; preds = %if.end.94, %while.end
  br label %while.cond

while.end.102:                                    ; preds = %while.cond
  br label %while.cond.103

while.cond.103:                                   ; preds = %while.body.107, %while.end.102
  %48 = load i16, i16* %i, align 2
  %conv104 = sext i16 %48 to i32
  %cmp105 = icmp slt i32 %conv104, 510
  br i1 %cmp105, label %while.body.107, label %while.end.112

while.body.107:                                   ; preds = %while.cond.103
  %49 = load i16, i16* %i, align 2
  %inc108 = add i16 %49, 1
  store i16 %inc108, i16* %i, align 2
  %idxprom109 = sext i16 %49 to i64
  %50 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %c_len110 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %50, i32 0, i32 11
  %arrayidx111 = getelementptr inbounds [510 x i8], [510 x i8]* %c_len110, i32 0, i64 %idxprom109
  store i8 0, i8* %arrayidx111, align 1
  br label %while.cond.103

while.end.112:                                    ; preds = %while.cond.103
  %51 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %52 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %c_len113 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %52, i32 0, i32 11
  %arraydecay = getelementptr inbounds [510 x i8], [510 x i8]* %c_len113, i32 0, i32 0
  %53 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %c_table114 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %53, i32 0, i32 12
  %arraydecay115 = getelementptr inbounds [4096 x i16], [4096 x i16]* %c_table114, i32 0, i32 0
  %call116 = call i32 @make_table(%struct.arj_decode_tag* %51, i32 510, i8* %arraydecay, i32 12, i16* %arraydecay115, i32 4096)
  br label %if.end.117

if.end.117:                                       ; preds = %while.end.112, %for.end.15
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.117, %if.then.93, %if.then.83, %if.then.30
  %54 = load i32, i32* %retval
  ret i32 %54
}

; Function Attrs: nounwind uwtable
define internal i32 @make_table(%struct.arj_decode_tag* %decode_data, i32 %nchar, i8* %bitlen, i32 %tablebits, i16* %table, i32 %tablesize) #0 {
entry:
  %retval = alloca i32, align 4
  %decode_data.addr = alloca %struct.arj_decode_tag*, align 8
  %nchar.addr = alloca i32, align 4
  %bitlen.addr = alloca i8*, align 8
  %tablebits.addr = alloca i32, align 4
  %table.addr = alloca i16*, align 8
  %tablesize.addr = alloca i32, align 4
  %count = alloca [17 x i16], align 16
  %weight = alloca [17 x i16], align 16
  %start = alloca [18 x i16], align 16
  %p = alloca i16*, align 8
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %len = alloca i32, align 4
  %ch = alloca i32, align 4
  %jutbits = alloca i32, align 4
  %avail = alloca i32, align 4
  %nextcode = alloca i32, align 4
  %mask = alloca i32, align 4
  store %struct.arj_decode_tag* %decode_data, %struct.arj_decode_tag** %decode_data.addr, align 8
  store i32 %nchar, i32* %nchar.addr, align 4
  store i8* %bitlen, i8** %bitlen.addr, align 8
  store i32 %tablebits, i32* %tablebits.addr, align 4
  store i16* %table, i16** %table.addr, align 8
  store i32 %tablesize, i32* %tablesize.addr, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp ule i32 %0, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds [17 x i16], [17 x i16]* %count, i32 0, i64 %idxprom
  store i16 0, i16* %arrayidx, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.9, %for.end
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %nchar.addr, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body.3, label %for.end.11

for.body.3:                                       ; preds = %for.cond.1
  %5 = load i32, i32* %i, align 4
  %idxprom4 = zext i32 %5 to i64
  %6 = load i8*, i8** %bitlen.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %6, i64 %idxprom4
  %7 = load i8, i8* %arrayidx5, align 1
  %idxprom6 = zext i8 %7 to i64
  %arrayidx7 = getelementptr inbounds [17 x i16], [17 x i16]* %count, i32 0, i64 %idxprom6
  %8 = load i16, i16* %arrayidx7, align 2
  %inc8 = add i16 %8, 1
  store i16 %inc8, i16* %arrayidx7, align 2
  br label %for.inc.9

for.inc.9:                                        ; preds = %for.body.3
  %9 = load i32, i32* %i, align 4
  %inc10 = add i32 %9, 1
  store i32 %inc10, i32* %i, align 4
  br label %for.cond.1

for.end.11:                                       ; preds = %for.cond.1
  %arrayidx12 = getelementptr inbounds [18 x i16], [18 x i16]* %start, i32 0, i64 1
  store i16 0, i16* %arrayidx12, align 2
  store i32 1, i32* %i, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.25, %for.end.11
  %10 = load i32, i32* %i, align 4
  %cmp14 = icmp ule i32 %10, 16
  br i1 %cmp14, label %for.body.15, label %for.end.27

for.body.15:                                      ; preds = %for.cond.13
  %11 = load i32, i32* %i, align 4
  %idxprom16 = zext i32 %11 to i64
  %arrayidx17 = getelementptr inbounds [18 x i16], [18 x i16]* %start, i32 0, i64 %idxprom16
  %12 = load i16, i16* %arrayidx17, align 2
  %conv = zext i16 %12 to i32
  %13 = load i32, i32* %i, align 4
  %idxprom18 = zext i32 %13 to i64
  %arrayidx19 = getelementptr inbounds [17 x i16], [17 x i16]* %count, i32 0, i64 %idxprom18
  %14 = load i16, i16* %arrayidx19, align 2
  %conv20 = zext i16 %14 to i32
  %15 = load i32, i32* %i, align 4
  %sub = sub i32 16, %15
  %shl = shl i32 %conv20, %sub
  %add = add nsw i32 %conv, %shl
  %conv21 = trunc i32 %add to i16
  %16 = load i32, i32* %i, align 4
  %add22 = add i32 %16, 1
  %idxprom23 = zext i32 %add22 to i64
  %arrayidx24 = getelementptr inbounds [18 x i16], [18 x i16]* %start, i32 0, i64 %idxprom23
  store i16 %conv21, i16* %arrayidx24, align 2
  br label %for.inc.25

for.inc.25:                                       ; preds = %for.body.15
  %17 = load i32, i32* %i, align 4
  %inc26 = add i32 %17, 1
  store i32 %inc26, i32* %i, align 4
  br label %for.cond.13

for.end.27:                                       ; preds = %for.cond.13
  %arrayidx28 = getelementptr inbounds [18 x i16], [18 x i16]* %start, i32 0, i64 17
  %18 = load i16, i16* %arrayidx28, align 2
  %conv29 = zext i16 %18 to i32
  %cmp30 = icmp ne i32 %conv29, 0
  br i1 %cmp30, label %if.then, label %if.end

if.then:                                          ; preds = %for.end.27
  store i32 -127, i32* %retval
  br label %return

if.end:                                           ; preds = %for.end.27
  %19 = load i32, i32* %tablebits.addr, align 4
  %sub32 = sub nsw i32 16, %19
  store i32 %sub32, i32* %jutbits, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.46, %if.end
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* %tablebits.addr, align 4
  %cmp34 = icmp sle i32 %20, %21
  br i1 %cmp34, label %for.body.36, label %for.end.48

for.body.36:                                      ; preds = %for.cond.33
  %22 = load i32, i32* %jutbits, align 4
  %23 = load i32, i32* %i, align 4
  %idxprom37 = zext i32 %23 to i64
  %arrayidx38 = getelementptr inbounds [18 x i16], [18 x i16]* %start, i32 0, i64 %idxprom37
  %24 = load i16, i16* %arrayidx38, align 2
  %conv39 = zext i16 %24 to i32
  %shr = ashr i32 %conv39, %22
  %conv40 = trunc i32 %shr to i16
  store i16 %conv40, i16* %arrayidx38, align 2
  %25 = load i32, i32* %tablebits.addr, align 4
  %26 = load i32, i32* %i, align 4
  %sub41 = sub i32 %25, %26
  %shl42 = shl i32 1, %sub41
  %conv43 = trunc i32 %shl42 to i16
  %27 = load i32, i32* %i, align 4
  %idxprom44 = zext i32 %27 to i64
  %arrayidx45 = getelementptr inbounds [17 x i16], [17 x i16]* %weight, i32 0, i64 %idxprom44
  store i16 %conv43, i16* %arrayidx45, align 2
  br label %for.inc.46

for.inc.46:                                       ; preds = %for.body.36
  %28 = load i32, i32* %i, align 4
  %inc47 = add i32 %28, 1
  store i32 %inc47, i32* %i, align 4
  br label %for.cond.33

for.end.48:                                       ; preds = %for.cond.33
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end.48
  %29 = load i32, i32* %i, align 4
  %cmp49 = icmp ule i32 %29, 16
  br i1 %cmp49, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %30 = load i32, i32* %i, align 4
  %sub51 = sub i32 16, %30
  %shl52 = shl i32 1, %sub51
  %conv53 = trunc i32 %shl52 to i16
  %31 = load i32, i32* %i, align 4
  %idxprom54 = zext i32 %31 to i64
  %arrayidx55 = getelementptr inbounds [17 x i16], [17 x i16]* %weight, i32 0, i64 %idxprom54
  store i16 %conv53, i16* %arrayidx55, align 2
  %32 = load i32, i32* %i, align 4
  %inc56 = add i32 %32, 1
  store i32 %inc56, i32* %i, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %33 = load i32, i32* %tablebits.addr, align 4
  %add57 = add nsw i32 %33, 1
  %idxprom58 = sext i32 %add57 to i64
  %arrayidx59 = getelementptr inbounds [18 x i16], [18 x i16]* %start, i32 0, i64 %idxprom58
  %34 = load i16, i16* %arrayidx59, align 2
  %conv60 = zext i16 %34 to i32
  %35 = load i32, i32* %jutbits, align 4
  %shr61 = ashr i32 %conv60, %35
  store i32 %shr61, i32* %i, align 4
  %36 = load i32, i32* %i, align 4
  %cmp62 = icmp ne i32 %36, 0
  br i1 %cmp62, label %if.then.64, label %if.end.74

if.then.64:                                       ; preds = %while.end
  %37 = load i32, i32* %tablebits.addr, align 4
  %shl65 = shl i32 1, %37
  store i32 %shl65, i32* %k, align 4
  br label %while.cond.66

while.cond.66:                                    ; preds = %while.body.69, %if.then.64
  %38 = load i32, i32* %i, align 4
  %39 = load i32, i32* %k, align 4
  %cmp67 = icmp ne i32 %38, %39
  br i1 %cmp67, label %while.body.69, label %while.end.73

while.body.69:                                    ; preds = %while.cond.66
  %40 = load i32, i32* %i, align 4
  %inc70 = add i32 %40, 1
  store i32 %inc70, i32* %i, align 4
  %idxprom71 = zext i32 %40 to i64
  %41 = load i16*, i16** %table.addr, align 8
  %arrayidx72 = getelementptr inbounds i16, i16* %41, i64 %idxprom71
  store i16 0, i16* %arrayidx72, align 2
  br label %while.cond.66

while.end.73:                                     ; preds = %while.cond.66
  br label %if.end.74

if.end.74:                                        ; preds = %while.end.73, %while.end
  %42 = load i32, i32* %nchar.addr, align 4
  store i32 %42, i32* %avail, align 4
  %43 = load i32, i32* %tablebits.addr, align 4
  %sub75 = sub nsw i32 15, %43
  %shl76 = shl i32 1, %sub75
  store i32 %shl76, i32* %mask, align 4
  store i32 0, i32* %ch, align 4
  br label %for.cond.77

for.cond.77:                                      ; preds = %for.inc.150, %if.end.74
  %44 = load i32, i32* %ch, align 4
  %45 = load i32, i32* %nchar.addr, align 4
  %cmp78 = icmp slt i32 %44, %45
  br i1 %cmp78, label %for.body.80, label %for.end.152

for.body.80:                                      ; preds = %for.cond.77
  %46 = load i32, i32* %ch, align 4
  %idxprom81 = zext i32 %46 to i64
  %47 = load i8*, i8** %bitlen.addr, align 8
  %arrayidx82 = getelementptr inbounds i8, i8* %47, i64 %idxprom81
  %48 = load i8, i8* %arrayidx82, align 1
  %conv83 = zext i8 %48 to i32
  store i32 %conv83, i32* %len, align 4
  %cmp84 = icmp eq i32 %conv83, 0
  br i1 %cmp84, label %if.then.86, label %if.end.87

if.then.86:                                       ; preds = %for.body.80
  br label %for.inc.150

if.end.87:                                        ; preds = %for.body.80
  %49 = load i32, i32* %len, align 4
  %idxprom88 = zext i32 %49 to i64
  %arrayidx89 = getelementptr inbounds [18 x i16], [18 x i16]* %start, i32 0, i64 %idxprom88
  %50 = load i16, i16* %arrayidx89, align 2
  %conv90 = zext i16 %50 to i32
  store i32 %conv90, i32* %k, align 4
  %51 = load i32, i32* %k, align 4
  %52 = load i32, i32* %len, align 4
  %idxprom91 = zext i32 %52 to i64
  %arrayidx92 = getelementptr inbounds [17 x i16], [17 x i16]* %weight, i32 0, i64 %idxprom91
  %53 = load i16, i16* %arrayidx92, align 2
  %conv93 = zext i16 %53 to i32
  %add94 = add i32 %51, %conv93
  store i32 %add94, i32* %nextcode, align 4
  %54 = load i32, i32* %len, align 4
  %55 = load i32, i32* %tablebits.addr, align 4
  %cmp95 = icmp sle i32 %54, %55
  br i1 %cmp95, label %if.then.97, label %if.else

if.then.97:                                       ; preds = %if.end.87
  %56 = load i32, i32* %nextcode, align 4
  %57 = load i32, i32* %tablesize.addr, align 4
  %cmp98 = icmp ugt i32 %56, %57
  br i1 %cmp98, label %if.then.100, label %if.end.101

if.then.100:                                      ; preds = %if.then.97
  store i32 -127, i32* %retval
  br label %return

if.end.101:                                       ; preds = %if.then.97
  %58 = load i32, i32* %len, align 4
  %idxprom102 = zext i32 %58 to i64
  %arrayidx103 = getelementptr inbounds [18 x i16], [18 x i16]* %start, i32 0, i64 %idxprom102
  %59 = load i16, i16* %arrayidx103, align 2
  %conv104 = zext i16 %59 to i32
  store i32 %conv104, i32* %i, align 4
  br label %for.cond.105

for.cond.105:                                     ; preds = %for.inc.112, %if.end.101
  %60 = load i32, i32* %i, align 4
  %61 = load i32, i32* %nextcode, align 4
  %cmp106 = icmp ult i32 %60, %61
  br i1 %cmp106, label %for.body.108, label %for.end.114

for.body.108:                                     ; preds = %for.cond.105
  %62 = load i32, i32* %ch, align 4
  %conv109 = trunc i32 %62 to i16
  %63 = load i32, i32* %i, align 4
  %idxprom110 = zext i32 %63 to i64
  %64 = load i16*, i16** %table.addr, align 8
  %arrayidx111 = getelementptr inbounds i16, i16* %64, i64 %idxprom110
  store i16 %conv109, i16* %arrayidx111, align 2
  br label %for.inc.112

for.inc.112:                                      ; preds = %for.body.108
  %65 = load i32, i32* %i, align 4
  %inc113 = add i32 %65, 1
  store i32 %inc113, i32* %i, align 4
  br label %for.cond.105

for.end.114:                                      ; preds = %for.cond.105
  br label %if.end.146

if.else:                                          ; preds = %if.end.87
  %66 = load i32, i32* %k, align 4
  %67 = load i32, i32* %jutbits, align 4
  %shr115 = lshr i32 %66, %67
  %idxprom116 = zext i32 %shr115 to i64
  %68 = load i16*, i16** %table.addr, align 8
  %arrayidx117 = getelementptr inbounds i16, i16* %68, i64 %idxprom116
  store i16* %arrayidx117, i16** %p, align 8
  %69 = load i32, i32* %len, align 4
  %70 = load i32, i32* %tablebits.addr, align 4
  %sub118 = sub i32 %69, %70
  store i32 %sub118, i32* %i, align 4
  br label %while.cond.119

while.cond.119:                                   ; preds = %if.end.142, %if.else
  %71 = load i32, i32* %i, align 4
  %cmp120 = icmp ne i32 %71, 0
  br i1 %cmp120, label %while.body.122, label %while.end.144

while.body.122:                                   ; preds = %while.cond.119
  %72 = load i16*, i16** %p, align 8
  %73 = load i16, i16* %72, align 2
  %conv123 = zext i16 %73 to i32
  %cmp124 = icmp eq i32 %conv123, 0
  br i1 %cmp124, label %if.then.126, label %if.end.133

if.then.126:                                      ; preds = %while.body.122
  %74 = load i32, i32* %avail, align 4
  %idxprom127 = zext i32 %74 to i64
  %75 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %left = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %75, i32 0, i32 9
  %arrayidx128 = getelementptr inbounds [1019 x i16], [1019 x i16]* %left, i32 0, i64 %idxprom127
  store i16 0, i16* %arrayidx128, align 2
  %76 = load i32, i32* %avail, align 4
  %idxprom129 = zext i32 %76 to i64
  %77 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %right = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %77, i32 0, i32 10
  %arrayidx130 = getelementptr inbounds [1019 x i16], [1019 x i16]* %right, i32 0, i64 %idxprom129
  store i16 0, i16* %arrayidx130, align 2
  %78 = load i32, i32* %avail, align 4
  %inc131 = add i32 %78, 1
  store i32 %inc131, i32* %avail, align 4
  %conv132 = trunc i32 %78 to i16
  %79 = load i16*, i16** %p, align 8
  store i16 %conv132, i16* %79, align 2
  br label %if.end.133

if.end.133:                                       ; preds = %if.then.126, %while.body.122
  %80 = load i32, i32* %k, align 4
  %81 = load i32, i32* %mask, align 4
  %and = and i32 %80, %81
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.134, label %if.else.138

if.then.134:                                      ; preds = %if.end.133
  %82 = load i16*, i16** %p, align 8
  %83 = load i16, i16* %82, align 2
  %idxprom135 = zext i16 %83 to i64
  %84 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %right136 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %84, i32 0, i32 10
  %arrayidx137 = getelementptr inbounds [1019 x i16], [1019 x i16]* %right136, i32 0, i64 %idxprom135
  store i16* %arrayidx137, i16** %p, align 8
  br label %if.end.142

if.else.138:                                      ; preds = %if.end.133
  %85 = load i16*, i16** %p, align 8
  %86 = load i16, i16* %85, align 2
  %idxprom139 = zext i16 %86 to i64
  %87 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %left140 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %87, i32 0, i32 9
  %arrayidx141 = getelementptr inbounds [1019 x i16], [1019 x i16]* %left140, i32 0, i64 %idxprom139
  store i16* %arrayidx141, i16** %p, align 8
  br label %if.end.142

if.end.142:                                       ; preds = %if.else.138, %if.then.134
  %88 = load i32, i32* %k, align 4
  %shl143 = shl i32 %88, 1
  store i32 %shl143, i32* %k, align 4
  %89 = load i32, i32* %i, align 4
  %dec = add i32 %89, -1
  store i32 %dec, i32* %i, align 4
  br label %while.cond.119

while.end.144:                                    ; preds = %while.cond.119
  %90 = load i32, i32* %ch, align 4
  %conv145 = trunc i32 %90 to i16
  %91 = load i16*, i16** %p, align 8
  store i16 %conv145, i16* %91, align 2
  br label %if.end.146

if.end.146:                                       ; preds = %while.end.144, %for.end.114
  %92 = load i32, i32* %nextcode, align 4
  %conv147 = trunc i32 %92 to i16
  %93 = load i32, i32* %len, align 4
  %idxprom148 = zext i32 %93 to i64
  %arrayidx149 = getelementptr inbounds [18 x i16], [18 x i16]* %start, i32 0, i64 %idxprom148
  store i16 %conv147, i16* %arrayidx149, align 2
  br label %for.inc.150

for.inc.150:                                      ; preds = %if.end.146, %if.then.86
  %94 = load i32, i32* %ch, align 4
  %inc151 = add i32 %94, 1
  store i32 %inc151, i32* %ch, align 4
  br label %for.cond.77

for.end.152:                                      ; preds = %for.cond.77
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.152, %if.then.100, %if.then
  %95 = load i32, i32* %retval
  ret i32 %95
}

; Function Attrs: nounwind uwtable
define internal zeroext i16 @decode_len(%struct.arj_decode_tag* %decode_data) #0 {
entry:
  %decode_data.addr = alloca %struct.arj_decode_tag*, align 8
  %c = alloca i16, align 2
  %width = alloca i16, align 2
  %plus = alloca i16, align 2
  %pwr = alloca i16, align 2
  store %struct.arj_decode_tag* %decode_data, %struct.arj_decode_tag** %decode_data.addr, align 8
  store i16 0, i16* %plus, align 2
  store i16 1, i16* %pwr, align 2
  store i16 0, i16* %width, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i16, i16* %width, align 2
  %conv = zext i16 %0 to i32
  %cmp = icmp slt i32 %conv, 7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %getlen = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %1, i32 0, i32 7
  %2 = load i16, i16* %getlen, align 2
  %conv2 = sext i16 %2 to i32
  %cmp3 = icmp sle i32 %conv2, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %3 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %bit_buf = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %3, i32 0, i32 3
  %4 = load i16, i16* %bit_buf, align 2
  %conv5 = zext i16 %4 to i32
  %5 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %getlen6 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %5, i32 0, i32 7
  %6 = load i16, i16* %getlen6, align 2
  %conv7 = sext i16 %6 to i32
  %shr = ashr i32 %conv5, %conv7
  %7 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %getbuf = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %7, i32 0, i32 8
  %8 = load i16, i16* %getbuf, align 2
  %conv8 = sext i16 %8 to i32
  %or = or i32 %conv8, %shr
  %conv9 = trunc i32 %or to i16
  store i16 %conv9, i16* %getbuf, align 2
  %9 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %10 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %getlen10 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %10, i32 0, i32 7
  %11 = load i16, i16* %getlen10, align 2
  %conv11 = sext i16 %11 to i32
  %sub = sub nsw i32 16, %conv11
  %call = call i32 @fill_buf(%struct.arj_decode_tag* %9, i32 %sub)
  %12 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %getlen12 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %12, i32 0, i32 7
  store i16 16, i16* %getlen12, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %13 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %getbuf13 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %13, i32 0, i32 8
  %14 = load i16, i16* %getbuf13, align 2
  %conv14 = sext i16 %14 to i32
  %and = and i32 %conv14, 32768
  %cmp15 = icmp ne i32 %and, 0
  %conv16 = zext i1 %cmp15 to i32
  %conv17 = trunc i32 %conv16 to i16
  store i16 %conv17, i16* %c, align 2
  %15 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %getbuf18 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %15, i32 0, i32 8
  %16 = load i16, i16* %getbuf18, align 2
  %conv19 = sext i16 %16 to i32
  %shl = shl i32 %conv19, 1
  %conv20 = trunc i32 %shl to i16
  store i16 %conv20, i16* %getbuf18, align 2
  %17 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %getlen21 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %17, i32 0, i32 7
  %18 = load i16, i16* %getlen21, align 2
  %dec = add i16 %18, -1
  store i16 %dec, i16* %getlen21, align 2
  %19 = load i16, i16* %c, align 2
  %conv22 = zext i16 %19 to i32
  %cmp23 = icmp eq i32 %conv22, 0
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end
  br label %for.end

if.end.26:                                        ; preds = %if.end
  %20 = load i16, i16* %pwr, align 2
  %conv27 = zext i16 %20 to i32
  %21 = load i16, i16* %plus, align 2
  %conv28 = zext i16 %21 to i32
  %add = add nsw i32 %conv28, %conv27
  %conv29 = trunc i32 %add to i16
  store i16 %conv29, i16* %plus, align 2
  %22 = load i16, i16* %pwr, align 2
  %conv30 = zext i16 %22 to i32
  %shl31 = shl i32 %conv30, 1
  %conv32 = trunc i32 %shl31 to i16
  store i16 %conv32, i16* %pwr, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.end.26
  %23 = load i16, i16* %width, align 2
  %inc = add i16 %23, 1
  store i16 %inc, i16* %width, align 2
  br label %for.cond

for.end:                                          ; preds = %if.then.25, %for.cond
  %24 = load i16, i16* %width, align 2
  %conv33 = zext i16 %24 to i32
  %cmp34 = icmp ne i32 %conv33, 0
  br i1 %cmp34, label %if.then.36, label %if.end.74

if.then.36:                                       ; preds = %for.end
  %25 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %getlen37 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %25, i32 0, i32 7
  %26 = load i16, i16* %getlen37, align 2
  %conv38 = sext i16 %26 to i32
  %27 = load i16, i16* %width, align 2
  %conv39 = zext i16 %27 to i32
  %cmp40 = icmp slt i32 %conv38, %conv39
  br i1 %cmp40, label %if.then.42, label %if.end.57

if.then.42:                                       ; preds = %if.then.36
  %28 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %bit_buf43 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %28, i32 0, i32 3
  %29 = load i16, i16* %bit_buf43, align 2
  %conv44 = zext i16 %29 to i32
  %30 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %getlen45 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %30, i32 0, i32 7
  %31 = load i16, i16* %getlen45, align 2
  %conv46 = sext i16 %31 to i32
  %shr47 = ashr i32 %conv44, %conv46
  %32 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %getbuf48 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %32, i32 0, i32 8
  %33 = load i16, i16* %getbuf48, align 2
  %conv49 = sext i16 %33 to i32
  %or50 = or i32 %conv49, %shr47
  %conv51 = trunc i32 %or50 to i16
  store i16 %conv51, i16* %getbuf48, align 2
  %34 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %35 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %getlen52 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %35, i32 0, i32 7
  %36 = load i16, i16* %getlen52, align 2
  %conv53 = sext i16 %36 to i32
  %sub54 = sub nsw i32 16, %conv53
  %call55 = call i32 @fill_buf(%struct.arj_decode_tag* %34, i32 %sub54)
  %37 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %getlen56 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %37, i32 0, i32 7
  store i16 16, i16* %getlen56, align 2
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.42, %if.then.36
  %38 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %getbuf58 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %38, i32 0, i32 8
  %39 = load i16, i16* %getbuf58, align 2
  %conv59 = zext i16 %39 to i32
  %40 = load i16, i16* %width, align 2
  %conv60 = zext i16 %40 to i32
  %sub61 = sub nsw i32 16, %conv60
  %shr62 = ashr i32 %conv59, %sub61
  %conv63 = trunc i32 %shr62 to i16
  store i16 %conv63, i16* %c, align 2
  %41 = load i16, i16* %width, align 2
  %conv64 = zext i16 %41 to i32
  %42 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %getbuf65 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %42, i32 0, i32 8
  %43 = load i16, i16* %getbuf65, align 2
  %conv66 = sext i16 %43 to i32
  %shl67 = shl i32 %conv66, %conv64
  %conv68 = trunc i32 %shl67 to i16
  store i16 %conv68, i16* %getbuf65, align 2
  %44 = load i16, i16* %width, align 2
  %conv69 = zext i16 %44 to i32
  %45 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %getlen70 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %45, i32 0, i32 7
  %46 = load i16, i16* %getlen70, align 2
  %conv71 = sext i16 %46 to i32
  %sub72 = sub nsw i32 %conv71, %conv69
  %conv73 = trunc i32 %sub72 to i16
  store i16 %conv73, i16* %getlen70, align 2
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.57, %for.end
  %47 = load i16, i16* %plus, align 2
  %conv75 = zext i16 %47 to i32
  %48 = load i16, i16* %c, align 2
  %conv76 = zext i16 %48 to i32
  %add77 = add nsw i32 %conv76, %conv75
  %conv78 = trunc i32 %add77 to i16
  store i16 %conv78, i16* %c, align 2
  %49 = load i16, i16* %c, align 2
  ret i16 %49
}

; Function Attrs: nounwind uwtable
define internal zeroext i16 @decode_ptr(%struct.arj_decode_tag* %decode_data) #0 {
entry:
  %decode_data.addr = alloca %struct.arj_decode_tag*, align 8
  %c = alloca i16, align 2
  %width = alloca i16, align 2
  %plus = alloca i16, align 2
  %pwr = alloca i16, align 2
  store %struct.arj_decode_tag* %decode_data, %struct.arj_decode_tag** %decode_data.addr, align 8
  store i16 0, i16* %plus, align 2
  store i16 512, i16* %pwr, align 2
  store i16 9, i16* %width, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i16, i16* %width, align 2
  %conv = zext i16 %0 to i32
  %cmp = icmp slt i32 %conv, 13
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %getlen = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %1, i32 0, i32 7
  %2 = load i16, i16* %getlen, align 2
  %conv2 = sext i16 %2 to i32
  %cmp3 = icmp sle i32 %conv2, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %3 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %bit_buf = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %3, i32 0, i32 3
  %4 = load i16, i16* %bit_buf, align 2
  %conv5 = zext i16 %4 to i32
  %5 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %getlen6 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %5, i32 0, i32 7
  %6 = load i16, i16* %getlen6, align 2
  %conv7 = sext i16 %6 to i32
  %shr = ashr i32 %conv5, %conv7
  %7 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %getbuf = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %7, i32 0, i32 8
  %8 = load i16, i16* %getbuf, align 2
  %conv8 = sext i16 %8 to i32
  %or = or i32 %conv8, %shr
  %conv9 = trunc i32 %or to i16
  store i16 %conv9, i16* %getbuf, align 2
  %9 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %10 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %getlen10 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %10, i32 0, i32 7
  %11 = load i16, i16* %getlen10, align 2
  %conv11 = sext i16 %11 to i32
  %sub = sub nsw i32 16, %conv11
  %call = call i32 @fill_buf(%struct.arj_decode_tag* %9, i32 %sub)
  %12 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %getlen12 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %12, i32 0, i32 7
  store i16 16, i16* %getlen12, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %13 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %getbuf13 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %13, i32 0, i32 8
  %14 = load i16, i16* %getbuf13, align 2
  %conv14 = sext i16 %14 to i32
  %and = and i32 %conv14, 32768
  %cmp15 = icmp ne i32 %and, 0
  %conv16 = zext i1 %cmp15 to i32
  %conv17 = trunc i32 %conv16 to i16
  store i16 %conv17, i16* %c, align 2
  %15 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %getbuf18 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %15, i32 0, i32 8
  %16 = load i16, i16* %getbuf18, align 2
  %conv19 = sext i16 %16 to i32
  %shl = shl i32 %conv19, 1
  %conv20 = trunc i32 %shl to i16
  store i16 %conv20, i16* %getbuf18, align 2
  %17 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %getlen21 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %17, i32 0, i32 7
  %18 = load i16, i16* %getlen21, align 2
  %dec = add i16 %18, -1
  store i16 %dec, i16* %getlen21, align 2
  %19 = load i16, i16* %c, align 2
  %conv22 = zext i16 %19 to i32
  %cmp23 = icmp eq i32 %conv22, 0
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end
  br label %for.end

if.end.26:                                        ; preds = %if.end
  %20 = load i16, i16* %pwr, align 2
  %conv27 = zext i16 %20 to i32
  %21 = load i16, i16* %plus, align 2
  %conv28 = zext i16 %21 to i32
  %add = add nsw i32 %conv28, %conv27
  %conv29 = trunc i32 %add to i16
  store i16 %conv29, i16* %plus, align 2
  %22 = load i16, i16* %pwr, align 2
  %conv30 = zext i16 %22 to i32
  %shl31 = shl i32 %conv30, 1
  %conv32 = trunc i32 %shl31 to i16
  store i16 %conv32, i16* %pwr, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.end.26
  %23 = load i16, i16* %width, align 2
  %inc = add i16 %23, 1
  store i16 %inc, i16* %width, align 2
  br label %for.cond

for.end:                                          ; preds = %if.then.25, %for.cond
  %24 = load i16, i16* %width, align 2
  %conv33 = zext i16 %24 to i32
  %cmp34 = icmp ne i32 %conv33, 0
  br i1 %cmp34, label %if.then.36, label %if.end.74

if.then.36:                                       ; preds = %for.end
  %25 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %getlen37 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %25, i32 0, i32 7
  %26 = load i16, i16* %getlen37, align 2
  %conv38 = sext i16 %26 to i32
  %27 = load i16, i16* %width, align 2
  %conv39 = zext i16 %27 to i32
  %cmp40 = icmp slt i32 %conv38, %conv39
  br i1 %cmp40, label %if.then.42, label %if.end.57

if.then.42:                                       ; preds = %if.then.36
  %28 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %bit_buf43 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %28, i32 0, i32 3
  %29 = load i16, i16* %bit_buf43, align 2
  %conv44 = zext i16 %29 to i32
  %30 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %getlen45 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %30, i32 0, i32 7
  %31 = load i16, i16* %getlen45, align 2
  %conv46 = sext i16 %31 to i32
  %shr47 = ashr i32 %conv44, %conv46
  %32 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %getbuf48 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %32, i32 0, i32 8
  %33 = load i16, i16* %getbuf48, align 2
  %conv49 = sext i16 %33 to i32
  %or50 = or i32 %conv49, %shr47
  %conv51 = trunc i32 %or50 to i16
  store i16 %conv51, i16* %getbuf48, align 2
  %34 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %35 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %getlen52 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %35, i32 0, i32 7
  %36 = load i16, i16* %getlen52, align 2
  %conv53 = sext i16 %36 to i32
  %sub54 = sub nsw i32 16, %conv53
  %call55 = call i32 @fill_buf(%struct.arj_decode_tag* %34, i32 %sub54)
  %37 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %getlen56 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %37, i32 0, i32 7
  store i16 16, i16* %getlen56, align 2
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.42, %if.then.36
  %38 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %getbuf58 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %38, i32 0, i32 8
  %39 = load i16, i16* %getbuf58, align 2
  %conv59 = zext i16 %39 to i32
  %40 = load i16, i16* %width, align 2
  %conv60 = zext i16 %40 to i32
  %sub61 = sub nsw i32 16, %conv60
  %shr62 = ashr i32 %conv59, %sub61
  %conv63 = trunc i32 %shr62 to i16
  store i16 %conv63, i16* %c, align 2
  %41 = load i16, i16* %width, align 2
  %conv64 = zext i16 %41 to i32
  %42 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %getbuf65 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %42, i32 0, i32 8
  %43 = load i16, i16* %getbuf65, align 2
  %conv66 = sext i16 %43 to i32
  %shl67 = shl i32 %conv66, %conv64
  %conv68 = trunc i32 %shl67 to i16
  store i16 %conv68, i16* %getbuf65, align 2
  %44 = load i16, i16* %width, align 2
  %conv69 = zext i16 %44 to i32
  %45 = load %struct.arj_decode_tag*, %struct.arj_decode_tag** %decode_data.addr, align 8
  %getlen70 = getelementptr inbounds %struct.arj_decode_tag, %struct.arj_decode_tag* %45, i32 0, i32 7
  %46 = load i16, i16* %getlen70, align 2
  %conv71 = sext i16 %46 to i32
  %sub72 = sub nsw i32 %conv71, %conv69
  %conv73 = trunc i32 %sub72 to i16
  store i16 %conv73, i16* %getlen70, align 2
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.57, %for.end
  %47 = load i16, i16* %plus, align 2
  %conv75 = zext i16 %47 to i32
  %48 = load i16, i16* %c, align 2
  %conv76 = zext i16 %48 to i32
  %add77 = add nsw i32 %conv76, %conv75
  %conv78 = trunc i32 %add77 to i16
  store i16 %conv78, i16* %c, align 2
  %49 = load i16, i16* %c, align 2
  ret i16 %49
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
