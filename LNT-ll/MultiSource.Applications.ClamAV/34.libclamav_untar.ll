; ModuleID = './MultiSource.Applications.ClamAV/34.libclamav_untar.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cl_limits = type { i32, i32, i32, i32, i16, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [18 x i8] c"In untar(%s, %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"cli_untar: block read error\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"cli_untar: cannot close file %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"cli_untar: number of files exceeded %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"ustar\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"Incorrect magic string '%s' in tar header\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"cli_untar: unknown type flag %c\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"Invalid size in tar header\0A\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"cli_untar: size = %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"cli_untar: size exceeded %d bytes\0A\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"cli_untar: skipping entry\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"%s/%.*sXXXXXX\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"Can't create temporary file %s: %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"%lu %lu %lu\0A\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"cli_untar: extracting %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"cli_untar: cannot create file %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [64 x i8] c"cli_untar: only wrote %d bytes to file %s (out of disc space?)\0A\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"%o\00", align 1

; Function Attrs: nounwind uwtable
define i32 @cli_untar(i8* %dir, i32 %desc, i32 %posix, %struct.cl_limits* %limits) #0 {
entry:
  %retval = alloca i32, align 4
  %dir.addr = alloca i8*, align 8
  %desc.addr = alloca i32, align 4
  %posix.addr = alloca i32, align 4
  %limits.addr = alloca %struct.cl_limits*, align 8
  %size = alloca i32, align 4
  %in_block = alloca i32, align 4
  %files = alloca i32, align 4
  %fullname = alloca [257 x i8], align 16
  %outfile = alloca %struct._IO_FILE*, align 8
  %block = alloca [512 x i8], align 16
  %nread = alloca i32, align 4
  %type = alloca i8, align 1
  %suffix = alloca i8*, align 8
  %suffixLen = alloca i64, align 8
  %fd = alloca i32, align 4
  %directory = alloca i32, align 4
  %skipEntry = alloca i32, align 4
  %magic = alloca [7 x i8], align 1
  %name = alloca [101 x i8], align 16
  %osize = alloca [13 x i8], align 1
  %nskip = alloca i32, align 4
  %nbytes = alloca i32, align 4
  %nwritten = alloca i32, align 4
  store i8* %dir, i8** %dir.addr, align 8
  store i32 %desc, i32* %desc.addr, align 4
  store i32 %posix, i32* %posix.addr, align 4
  store %struct.cl_limits* %limits, %struct.cl_limits** %limits.addr, align 8
  store i32 0, i32* %size, align 4
  store i32 0, i32* %in_block, align 4
  store i32 0, i32* %files, align 4
  store %struct._IO_FILE* null, %struct._IO_FILE** %outfile, align 8
  %0 = load i8*, i8** %dir.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i8*, i8** %dir.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %1, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), %cond.false ]
  %2 = load i32, i32* %desc.addr, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* %cond, i32 %2)
  br label %for.cond

for.cond:                                         ; preds = %if.end.161, %cond.end.88, %if.then.53, %cond.end
  %3 = load i32, i32* %desc.addr, align 4
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %block, i32 0, i32 0
  %call = call i32 @cli_readn(i32 %3, i8* %arraydecay, i32 512)
  store i32 %call, i32* %nread, align 4
  %4 = load i32, i32* %in_block, align 4
  %tobool1 = icmp ne i32 %4, 0
  br i1 %tobool1, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.cond
  %5 = load i32, i32* %nread, align 4
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %for.end

if.end:                                           ; preds = %land.lhs.true, %for.cond
  %6 = load i32, i32* %nread, align 4
  %cmp2 = icmp slt i32 %6, 0
  br i1 %cmp2, label %if.then.3, label %if.end.8

if.then.3:                                        ; preds = %if.end
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %tobool4 = icmp ne %struct._IO_FILE* %7, null
  br i1 %tobool4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.then.3
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %call6 = call i32 @fclose(%struct._IO_FILE* %8)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.then.3
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0))
  store i32 -123, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  %9 = load i32, i32* %in_block, align 4
  %tobool9 = icmp ne i32 %9, 0
  br i1 %tobool9, label %if.else.136, label %if.then.10

if.then.10:                                       ; preds = %if.end.8
  store i64 0, i64* %suffixLen, align 8
  store i32 0, i32* %skipEntry, align 4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %tobool11 = icmp ne %struct._IO_FILE* %10, null
  br i1 %tobool11, label %if.then.12, label %if.end.18

if.then.12:                                       ; preds = %if.then.10
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %call13 = call i32 @fclose(%struct._IO_FILE* %11)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.then.12
  %arraydecay16 = getelementptr inbounds [257 x i8], [257 x i8]* %fullname, i32 0, i32 0
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i32 0, i32 0), i8* %arraydecay16)
  store i32 -123, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.then.12
  store %struct._IO_FILE* null, %struct._IO_FILE** %outfile, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then.10
  %arrayidx = getelementptr inbounds [512 x i8], [512 x i8]* %block, i32 0, i64 0
  %12 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %12 to i32
  %cmp19 = icmp eq i32 %conv, 0
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.18
  br label %for.end

if.end.22:                                        ; preds = %if.end.18
  %13 = load %struct.cl_limits*, %struct.cl_limits** %limits.addr, align 8
  %tobool23 = icmp ne %struct.cl_limits* %13, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.end.32

land.lhs.true.24:                                 ; preds = %if.end.22
  %14 = load %struct.cl_limits*, %struct.cl_limits** %limits.addr, align 8
  %maxfiles = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %14, i32 0, i32 1
  %15 = load i32, i32* %maxfiles, align 4
  %tobool25 = icmp ne i32 %15, 0
  br i1 %tobool25, label %land.lhs.true.26, label %if.end.32

land.lhs.true.26:                                 ; preds = %land.lhs.true.24
  %16 = load i32, i32* %files, align 4
  %17 = load %struct.cl_limits*, %struct.cl_limits** %limits.addr, align 8
  %maxfiles27 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %17, i32 0, i32 1
  %18 = load i32, i32* %maxfiles27, align 4
  %cmp28 = icmp uge i32 %16, %18
  br i1 %cmp28, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %land.lhs.true.26
  %19 = load %struct.cl_limits*, %struct.cl_limits** %limits.addr, align 8
  %maxfiles31 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %19, i32 0, i32 1
  %20 = load i32, i32* %maxfiles31, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i32 0, i32 0), i32 %20)
  store i32 0, i32* %retval
  br label %return

if.end.32:                                        ; preds = %land.lhs.true.26, %land.lhs.true.24, %if.end.22
  %21 = load i32, i32* %posix.addr, align 4
  %tobool33 = icmp ne i32 %21, 0
  br i1 %tobool33, label %if.then.34, label %if.end.46

if.then.34:                                       ; preds = %if.end.32
  %arraydecay35 = getelementptr inbounds [7 x i8], [7 x i8]* %magic, i32 0, i32 0
  %arraydecay36 = getelementptr inbounds [512 x i8], [512 x i8]* %block, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay36, i64 257
  %call37 = call i8* @strncpy(i8* %arraydecay35, i8* %add.ptr, i64 5) #5
  %arrayidx38 = getelementptr inbounds [7 x i8], [7 x i8]* %magic, i32 0, i64 5
  store i8 0, i8* %arrayidx38, align 1
  %arraydecay39 = getelementptr inbounds [7 x i8], [7 x i8]* %magic, i32 0, i32 0
  %call40 = call i32 @strcmp(i8* %arraydecay39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0)) #6
  %cmp41 = icmp ne i32 %call40, 0
  br i1 %cmp41, label %if.then.43, label %if.end.45

if.then.43:                                       ; preds = %if.then.34
  %arraydecay44 = getelementptr inbounds [7 x i8], [7 x i8]* %magic, i32 0, i32 0
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i32 0, i32 0), i8* %arraydecay44)
  store i32 -124, i32* %retval
  br label %return

if.end.45:                                        ; preds = %if.then.34
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.end.32
  %arrayidx47 = getelementptr inbounds [512 x i8], [512 x i8]* %block, i32 0, i64 156
  %22 = load i8, i8* %arrayidx47, align 1
  store i8 %22, i8* %type, align 1
  %23 = load i8, i8* %type, align 1
  %conv48 = sext i8 %23 to i32
  switch i32 %conv48, label %sw.default [
    i32 48, label %sw.bb
    i32 0, label %sw.bb
    i32 55, label %sw.bb
    i32 77, label %sw.bb
    i32 49, label %sw.bb.50
    i32 53, label %sw.bb.50
    i32 50, label %sw.bb.50
    i32 51, label %sw.bb.50
    i32 52, label %sw.bb.50
    i32 54, label %sw.bb.50
    i32 86, label %sw.bb.50
    i32 75, label %sw.bb.51
    i32 76, label %sw.bb.51
    i32 78, label %sw.bb.51
    i32 65, label %sw.bb.51
    i32 69, label %sw.bb.51
    i32 73, label %sw.bb.51
    i32 103, label %sw.bb.51
    i32 120, label %sw.bb.51
    i32 88, label %sw.bb.51
  ]

sw.default:                                       ; preds = %if.end.46
  %24 = load i8, i8* %type, align 1
  %conv49 = sext i8 %24 to i32
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i32 0, i32 0), i32 %conv49)
  br label %sw.bb

sw.bb:                                            ; preds = %if.end.46, %if.end.46, %if.end.46, %if.end.46, %sw.default
  %25 = load i32, i32* %files, align 4
  %inc = add i32 %25, 1
  store i32 %inc, i32* %files, align 4
  store i32 0, i32* %directory, align 4
  br label %sw.epilog

sw.bb.50:                                         ; preds = %if.end.46, %if.end.46, %if.end.46, %if.end.46, %if.end.46, %if.end.46, %if.end.46
  store i32 1, i32* %directory, align 4
  br label %sw.epilog

sw.bb.51:                                         ; preds = %if.end.46, %if.end.46, %if.end.46, %if.end.46, %if.end.46, %if.end.46, %if.end.46, %if.end.46, %if.end.46
  store i32 0, i32* %directory, align 4
  store i32 1, i32* %skipEntry, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.51, %sw.bb.50, %sw.bb
  %26 = load i32, i32* %directory, align 4
  %tobool52 = icmp ne i32 %26, 0
  br i1 %tobool52, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %sw.epilog
  store i32 0, i32* %in_block, align 4
  br label %for.cond

if.end.54:                                        ; preds = %sw.epilog
  %arraydecay55 = getelementptr inbounds [13 x i8], [13 x i8]* %osize, i32 0, i32 0
  %arraydecay56 = getelementptr inbounds [512 x i8], [512 x i8]* %block, i32 0, i32 0
  %add.ptr57 = getelementptr inbounds i8, i8* %arraydecay56, i64 124
  %call58 = call i8* @strncpy(i8* %arraydecay55, i8* %add.ptr57, i64 12) #5
  %arrayidx59 = getelementptr inbounds [13 x i8], [13 x i8]* %osize, i32 0, i64 12
  store i8 0, i8* %arrayidx59, align 1
  %arraydecay60 = getelementptr inbounds [13 x i8], [13 x i8]* %osize, i32 0, i32 0
  %call61 = call i32 @octal(i8* %arraydecay60)
  store i32 %call61, i32* %size, align 4
  %27 = load i32, i32* %size, align 4
  %cmp62 = icmp slt i32 %27, 0
  br i1 %cmp62, label %if.then.64, label %if.end.69

if.then.64:                                       ; preds = %if.end.54
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i32 0, i32 0))
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %tobool65 = icmp ne %struct._IO_FILE* %28, null
  br i1 %tobool65, label %if.then.66, label %if.end.68

if.then.66:                                       ; preds = %if.then.64
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %call67 = call i32 @fclose(%struct._IO_FILE* %29)
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.66, %if.then.64
  store i32 -124, i32* %retval
  br label %return

if.end.69:                                        ; preds = %if.end.54
  %30 = load i32, i32* %size, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0), i32 %30)
  %31 = load %struct.cl_limits*, %struct.cl_limits** %limits.addr, align 8
  %tobool70 = icmp ne %struct.cl_limits* %31, null
  br i1 %tobool70, label %land.lhs.true.71, label %if.end.80

land.lhs.true.71:                                 ; preds = %if.end.69
  %32 = load %struct.cl_limits*, %struct.cl_limits** %limits.addr, align 8
  %maxfilesize = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %32, i32 0, i32 5
  %33 = load i64, i64* %maxfilesize, align 8
  %tobool72 = icmp ne i64 %33, 0
  br i1 %tobool72, label %land.lhs.true.73, label %if.end.80

land.lhs.true.73:                                 ; preds = %land.lhs.true.71
  %34 = load i32, i32* %size, align 4
  %conv74 = zext i32 %34 to i64
  %35 = load %struct.cl_limits*, %struct.cl_limits** %limits.addr, align 8
  %maxfilesize75 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %35, i32 0, i32 5
  %36 = load i64, i64* %maxfilesize75, align 8
  %cmp76 = icmp ugt i64 %conv74, %36
  br i1 %cmp76, label %if.then.78, label %if.end.80

if.then.78:                                       ; preds = %land.lhs.true.73
  %37 = load i32, i32* %size, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i32 0, i32 0), i32 %37)
  %38 = load i32, i32* %skipEntry, align 4
  %inc79 = add nsw i32 %38, 1
  store i32 %inc79, i32* %skipEntry, align 4
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.78, %land.lhs.true.73, %land.lhs.true.71, %if.end.69
  %39 = load i32, i32* %skipEntry, align 4
  %tobool81 = icmp ne i32 %39, 0
  br i1 %tobool81, label %if.then.82, label %if.end.92

if.then.82:                                       ; preds = %if.end.80
  %40 = load i32, i32* %size, align 4
  %rem = srem i32 %40, 512
  %tobool83 = icmp ne i32 %rem, 0
  br i1 %tobool83, label %cond.true.85, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.82
  %41 = load i32, i32* %size, align 4
  %tobool84 = icmp ne i32 %41, 0
  br i1 %tobool84, label %cond.false.87, label %cond.true.85

cond.true.85:                                     ; preds = %lor.lhs.false, %if.then.82
  %42 = load i32, i32* %size, align 4
  %add = add nsw i32 %42, 512
  %43 = load i32, i32* %size, align 4
  %rem86 = srem i32 %43, 512
  %sub = sub nsw i32 %add, %rem86
  br label %cond.end.88

cond.false.87:                                    ; preds = %lor.lhs.false
  %44 = load i32, i32* %size, align 4
  br label %cond.end.88

cond.end.88:                                      ; preds = %cond.false.87, %cond.true.85
  %cond89 = phi i32 [ %sub, %cond.true.85 ], [ %44, %cond.false.87 ]
  store i32 %cond89, i32* %nskip, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i32 0, i32 0))
  %45 = load i32, i32* %desc.addr, align 4
  %46 = load i32, i32* %nskip, align 4
  %conv90 = sext i32 %46 to i64
  %call91 = call i64 @lseek(i32 %45, i64 %conv90, i32 1) #5
  br label %for.cond

if.end.92:                                        ; preds = %if.end.80
  %arraydecay93 = getelementptr inbounds [101 x i8], [101 x i8]* %name, i32 0, i32 0
  %arraydecay94 = getelementptr inbounds [512 x i8], [512 x i8]* %block, i32 0, i32 0
  %call95 = call i8* @strncpy(i8* %arraydecay93, i8* %arraydecay94, i64 100) #5
  %arrayidx96 = getelementptr inbounds [101 x i8], [101 x i8]* %name, i32 0, i64 100
  store i8 0, i8* %arrayidx96, align 1
  %arraydecay97 = getelementptr inbounds [101 x i8], [101 x i8]* %name, i32 0, i32 0
  call void @sanitiseName(i8* %arraydecay97)
  %arraydecay98 = getelementptr inbounds [101 x i8], [101 x i8]* %name, i32 0, i32 0
  %call99 = call i8* @strrchr(i8* %arraydecay98, i32 46) #6
  store i8* %call99, i8** %suffix, align 8
  %47 = load i8*, i8** %suffix, align 8
  %cmp100 = icmp eq i8* %47, null
  br i1 %cmp100, label %if.then.102, label %if.else

if.then.102:                                      ; preds = %if.end.92
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8** %suffix, align 8
  br label %if.end.108

if.else:                                          ; preds = %if.end.92
  %48 = load i8*, i8** %suffix, align 8
  %call103 = call i64 @strlen(i8* %48) #6
  store i64 %call103, i64* %suffixLen, align 8
  %49 = load i64, i64* %suffixLen, align 8
  %cmp104 = icmp ugt i64 %49, 4
  br i1 %cmp104, label %if.then.106, label %if.end.107

if.then.106:                                      ; preds = %if.else
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8** %suffix, align 8
  store i64 0, i64* %suffixLen, align 8
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.106, %if.else
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.107, %if.then.102
  %arraydecay109 = getelementptr inbounds [257 x i8], [257 x i8]* %fullname, i32 0, i32 0
  %50 = load i64, i64* %suffixLen, align 8
  %sub110 = sub i64 256, %50
  %51 = load i8*, i8** %dir.addr, align 8
  %52 = load i64, i64* %suffixLen, align 8
  %sub111 = sub i64 248, %52
  %53 = load i8*, i8** %dir.addr, align 8
  %call112 = call i64 @strlen(i8* %53) #6
  %sub113 = sub i64 %sub111, %call112
  %conv114 = trunc i64 %sub113 to i32
  %arraydecay115 = getelementptr inbounds [101 x i8], [101 x i8]* %name, i32 0, i32 0
  %call116 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay109, i64 %sub110, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i8* %51, i32 %conv114, i8* %arraydecay115) #5
  %arraydecay117 = getelementptr inbounds [257 x i8], [257 x i8]* %fullname, i32 0, i32 0
  %call118 = call i32 @mkstemp(i8* %arraydecay117)
  store i32 %call118, i32* %fd, align 4
  %54 = load i32, i32* %fd, align 4
  %cmp119 = icmp slt i32 %54, 0
  br i1 %cmp119, label %if.then.121, label %if.end.127

if.then.121:                                      ; preds = %if.end.108
  %arraydecay122 = getelementptr inbounds [257 x i8], [257 x i8]* %fullname, i32 0, i32 0
  %call123 = call i32* @__errno_location() #7
  %55 = load i32, i32* %call123, align 4
  %call124 = call i8* @strerror(i32 %55) #5
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i32 0, i32 0), i8* %arraydecay122, i8* %call124)
  %56 = load i64, i64* %suffixLen, align 8
  %arraydecay125 = getelementptr inbounds [257 x i8], [257 x i8]* %fullname, i32 0, i32 0
  %call126 = call i64 @strlen(i8* %arraydecay125) #6
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0), i64 %56, i64 257, i64 %call126)
  store i32 -112, i32* %retval
  br label %return

if.end.127:                                       ; preds = %if.end.108
  %arraydecay128 = getelementptr inbounds [257 x i8], [257 x i8]* %fullname, i32 0, i32 0
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i32 0, i32 0), i8* %arraydecay128)
  store i32 1, i32* %in_block, align 4
  %57 = load i32, i32* %fd, align 4
  %call129 = call %struct._IO_FILE* @fdopen(i32 %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0)) #5
  store %struct._IO_FILE* %call129, %struct._IO_FILE** %outfile, align 8
  %cmp130 = icmp eq %struct._IO_FILE* %call129, null
  br i1 %cmp130, label %if.then.132, label %if.end.135

if.then.132:                                      ; preds = %if.end.127
  %arraydecay133 = getelementptr inbounds [257 x i8], [257 x i8]* %fullname, i32 0, i32 0
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.17, i32 0, i32 0), i8* %arraydecay133)
  %58 = load i32, i32* %fd, align 4
  %call134 = call i32 @close(i32 %58)
  store i32 -112, i32* %retval
  br label %return

if.end.135:                                       ; preds = %if.end.127
  br label %if.end.157

if.else.136:                                      ; preds = %if.end.8
  %59 = load i32, i32* %size, align 4
  %cmp137 = icmp sgt i32 %59, 512
  br i1 %cmp137, label %cond.true.139, label %cond.false.140

cond.true.139:                                    ; preds = %if.else.136
  br label %cond.end.141

cond.false.140:                                   ; preds = %if.else.136
  %60 = load i32, i32* %size, align 4
  br label %cond.end.141

cond.end.141:                                     ; preds = %cond.false.140, %cond.true.139
  %cond142 = phi i32 [ 512, %cond.true.139 ], [ %60, %cond.false.140 ]
  store i32 %cond142, i32* %nbytes, align 4
  %arraydecay143 = getelementptr inbounds [512 x i8], [512 x i8]* %block, i32 0, i32 0
  %61 = load i32, i32* %nbytes, align 4
  %conv144 = sext i32 %61 to i64
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %call145 = call i64 @fwrite(i8* %arraydecay143, i64 1, i64 %conv144, %struct._IO_FILE* %62)
  %conv146 = trunc i64 %call145 to i32
  store i32 %conv146, i32* %nwritten, align 4
  %63 = load i32, i32* %nwritten, align 4
  %64 = load i32, i32* %nbytes, align 4
  %cmp147 = icmp ne i32 %63, %64
  br i1 %cmp147, label %if.then.149, label %if.end.155

if.then.149:                                      ; preds = %cond.end.141
  %65 = load i32, i32* %nwritten, align 4
  %arraydecay150 = getelementptr inbounds [257 x i8], [257 x i8]* %fullname, i32 0, i32 0
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.18, i32 0, i32 0), i32 %65, i8* %arraydecay150)
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %tobool151 = icmp ne %struct._IO_FILE* %66, null
  br i1 %tobool151, label %if.then.152, label %if.end.154

if.then.152:                                      ; preds = %if.then.149
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %call153 = call i32 @fclose(%struct._IO_FILE* %67)
  br label %if.end.154

if.end.154:                                       ; preds = %if.then.152, %if.then.149
  store i32 -123, i32* %retval
  br label %return

if.end.155:                                       ; preds = %cond.end.141
  %68 = load i32, i32* %nbytes, align 4
  %69 = load i32, i32* %size, align 4
  %sub156 = sub nsw i32 %69, %68
  store i32 %sub156, i32* %size, align 4
  br label %if.end.157

if.end.157:                                       ; preds = %if.end.155, %if.end.135
  %70 = load i32, i32* %size, align 4
  %cmp158 = icmp eq i32 %70, 0
  br i1 %cmp158, label %if.then.160, label %if.end.161

if.then.160:                                      ; preds = %if.end.157
  store i32 0, i32* %in_block, align 4
  br label %if.end.161

if.end.161:                                       ; preds = %if.then.160, %if.end.157
  br label %for.cond

for.end:                                          ; preds = %if.then.21, %if.then
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %tobool162 = icmp ne %struct._IO_FILE* %71, null
  br i1 %tobool162, label %if.then.163, label %if.end.165

if.then.163:                                      ; preds = %for.end
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %call164 = call i32 @fclose(%struct._IO_FILE* %72)
  store i32 %call164, i32* %retval
  br label %return

if.end.165:                                       ; preds = %for.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.165, %if.then.163, %if.end.154, %if.then.132, %if.then.121, %if.end.68, %if.then.43, %if.then.30, %if.then.15, %if.end.7
  %73 = load i32, i32* %retval
  ret i32 %73
}

declare void @cli_dbgmsg(i8*, ...) #1

declare i32 @cli_readn(i32, i8*, i32) #1

declare i32 @fclose(%struct._IO_FILE*) #1

declare void @cli_errmsg(i8*, ...) #1

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

declare void @cli_warnmsg(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @octal(i8* %str) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0), i32* %ret) #5
  %cmp = icmp ne i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %ret, align 4
  store i32 %1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, i32* %retval
  ret i32 %2
}

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) #2

declare void @sanitiseName(i8*) #1

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #2

declare i32 @mkstemp(i8*) #1

; Function Attrs: nounwind
declare i8* @strerror(i32) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

; Function Attrs: nounwind
declare %struct._IO_FILE* @fdopen(i32, i8*) #2

declare i32 @close(i32) #1

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
