; ModuleID = 'io.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [3 x i8] c".Z\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c".z\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c".gz\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c".GZ\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"gunzip -c %s\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"zcat %s\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"io.c\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"SYSTEM_ERROR\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"popen (%s,%s) failed\0A\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"gzip > %s\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"compress -c > %s\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str.14 = private unnamed_addr constant [42 x i8] c"fopen_comp not implemented for mode = %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"stat(%s) failed\0A\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"WARNING\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"Using %s instead of %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"fread() failed; retrying...\0A\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"stat(%s) failed; retrying...\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str.20 = private unnamed_addr constant [50 x i8] c"FATAL_ERROR: \22%s\22, line %d: fopen(%s,%s) failed; \00", align 1
@.str.21 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: nounwind uwtable
define %struct._IO_FILE* @fopen_comp(i8* %file, i8* %mode, i32* %ispipe) #0 {
entry:
  %retval = alloca %struct._IO_FILE*, align 8
  %file.addr = alloca i8*, align 8
  %mode.addr = alloca i8*, align 8
  %ispipe.addr = alloca i32*, align 8
  %command = alloca [16384 x i8], align 16
  %fp = alloca %struct._IO_FILE*, align 8
  %k = alloca i32, align 4
  %isgz = alloca i32, align 4
  store i8* %file, i8** %file.addr, align 8
  store i8* %mode, i8** %mode.addr, align 8
  store i32* %ispipe, i32** %ispipe.addr, align 8
  %0 = load i8*, i8** %file.addr, align 8
  %call = call i64 @strlen(i8* %0) #6
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %k, align 4
  %1 = load i32*, i32** %ispipe.addr, align 8
  store i32 0, i32* %1, align 4
  store i32 0, i32* %isgz, align 4
  %2 = load i32, i32* %k, align 4
  %cmp = icmp sgt i32 %2, 2
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %3 = load i8*, i8** %file.addr, align 8
  %4 = load i32, i32* %k, align 4
  %idx.ext = sext i32 %4 to i64
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %idx.ext
  %add.ptr2 = getelementptr inbounds i8, i8* %add.ptr, i64 -2
  %call3 = call i32 @strcmp(i8* %add.ptr2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0)) #6
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %5 = load i8*, i8** %file.addr, align 8
  %6 = load i32, i32* %k, align 4
  %idx.ext6 = sext i32 %6 to i64
  %add.ptr7 = getelementptr inbounds i8, i8* %5, i64 %idx.ext6
  %add.ptr8 = getelementptr inbounds i8, i8* %add.ptr7, i64 -2
  %call9 = call i32 @strcmp(i8* %add.ptr8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0)) #6
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %7 = load i32*, i32** %ispipe.addr, align 8
  store i32 1, i32* %7, align 4
  br label %if.end.29

if.else:                                          ; preds = %lor.lhs.false, %entry
  %8 = load i32, i32* %k, align 4
  %cmp12 = icmp sgt i32 %8, 3
  br i1 %cmp12, label %land.lhs.true.14, label %if.end

land.lhs.true.14:                                 ; preds = %if.else
  %9 = load i8*, i8** %file.addr, align 8
  %10 = load i32, i32* %k, align 4
  %idx.ext15 = sext i32 %10 to i64
  %add.ptr16 = getelementptr inbounds i8, i8* %9, i64 %idx.ext15
  %add.ptr17 = getelementptr inbounds i8, i8* %add.ptr16, i64 -3
  %call18 = call i32 @strcmp(i8* %add.ptr17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)) #6
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %if.then.28, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %land.lhs.true.14
  %11 = load i8*, i8** %file.addr, align 8
  %12 = load i32, i32* %k, align 4
  %idx.ext22 = sext i32 %12 to i64
  %add.ptr23 = getelementptr inbounds i8, i8* %11, i64 %idx.ext22
  %add.ptr24 = getelementptr inbounds i8, i8* %add.ptr23, i64 -3
  %call25 = call i32 @strcmp(i8* %add.ptr24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0)) #6
  %cmp26 = icmp eq i32 %call25, 0
  br i1 %cmp26, label %if.then.28, label %if.end

if.then.28:                                       ; preds = %lor.lhs.false.21, %land.lhs.true.14
  %13 = load i32*, i32** %ispipe.addr, align 8
  store i32 1, i32* %13, align 4
  store i32 1, i32* %isgz, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.28, %lor.lhs.false.21, %if.else
  br label %if.end.29

if.end.29:                                        ; preds = %if.end, %if.then
  %14 = load i32*, i32** %ispipe.addr, align 8
  %15 = load i32, i32* %14, align 4
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.then.30, label %if.else.72

if.then.30:                                       ; preds = %if.end.29
  %16 = load i8*, i8** %mode.addr, align 8
  %call31 = call i32 @strcmp(i8* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)) #6
  %cmp32 = icmp eq i32 %call31, 0
  br i1 %cmp32, label %if.then.34, label %if.else.49

if.then.34:                                       ; preds = %if.then.30
  %17 = load i32, i32* %isgz, align 4
  %tobool35 = icmp ne i32 %17, 0
  br i1 %tobool35, label %if.then.36, label %if.else.38

if.then.36:                                       ; preds = %if.then.34
  %arraydecay = getelementptr inbounds [16384 x i8], [16384 x i8]* %command, i32 0, i32 0
  %18 = load i8*, i8** %file.addr, align 8
  %call37 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i8* %18) #7
  br label %if.end.41

if.else.38:                                       ; preds = %if.then.34
  %arraydecay39 = getelementptr inbounds [16384 x i8], [16384 x i8]* %command, i32 0, i32 0
  %19 = load i8*, i8** %file.addr, align 8
  %call40 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i8* %19) #7
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.38, %if.then.36
  %arraydecay42 = getelementptr inbounds [16384 x i8], [16384 x i8]* %command, i32 0, i32 0
  %20 = load i8*, i8** %mode.addr, align 8
  %call43 = call %struct._IO_FILE* @popen(i8* %arraydecay42, i8* %20)
  store %struct._IO_FILE* %call43, %struct._IO_FILE** %fp, align 8
  %cmp44 = icmp eq %struct._IO_FILE* %call43, null
  br i1 %cmp44, label %if.then.46, label %if.end.48

if.then.46:                                       ; preds = %if.end.41
  call void @_E__pr_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i64 117, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0))
  %arraydecay47 = getelementptr inbounds [16384 x i8], [16384 x i8]* %command, i32 0, i32 0
  %21 = load i8*, i8** %mode.addr, align 8
  call void (i8*, ...) @_E__sys_error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0), i8* %arraydecay47, i8* %21)
  store %struct._IO_FILE* null, %struct._IO_FILE** %retval
  br label %return

if.end.48:                                        ; preds = %if.end.41
  br label %if.end.71

if.else.49:                                       ; preds = %if.then.30
  %22 = load i8*, i8** %mode.addr, align 8
  %call50 = call i32 @strcmp(i8* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0)) #6
  %cmp51 = icmp eq i32 %call50, 0
  br i1 %cmp51, label %if.then.53, label %if.else.69

if.then.53:                                       ; preds = %if.else.49
  %23 = load i32, i32* %isgz, align 4
  %tobool54 = icmp ne i32 %23, 0
  br i1 %tobool54, label %if.then.55, label %if.else.58

if.then.55:                                       ; preds = %if.then.53
  %arraydecay56 = getelementptr inbounds [16384 x i8], [16384 x i8]* %command, i32 0, i32 0
  %24 = load i8*, i8** %file.addr, align 8
  %call57 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay56, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i8* %24) #7
  br label %if.end.61

if.else.58:                                       ; preds = %if.then.53
  %arraydecay59 = getelementptr inbounds [16384 x i8], [16384 x i8]* %command, i32 0, i32 0
  %25 = load i8*, i8** %file.addr, align 8
  %call60 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay59, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i32 0, i32 0), i8* %25) #7
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.58, %if.then.55
  %arraydecay62 = getelementptr inbounds [16384 x i8], [16384 x i8]* %command, i32 0, i32 0
  %26 = load i8*, i8** %mode.addr, align 8
  %call63 = call %struct._IO_FILE* @popen(i8* %arraydecay62, i8* %26)
  store %struct._IO_FILE* %call63, %struct._IO_FILE** %fp, align 8
  %cmp64 = icmp eq %struct._IO_FILE* %call63, null
  br i1 %cmp64, label %if.then.66, label %if.end.68

if.then.66:                                       ; preds = %if.end.61
  call void @_E__pr_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i64 127, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0))
  %arraydecay67 = getelementptr inbounds [16384 x i8], [16384 x i8]* %command, i32 0, i32 0
  %27 = load i8*, i8** %mode.addr, align 8
  call void (i8*, ...) @_E__sys_error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0), i8* %arraydecay67, i8* %27)
  store %struct._IO_FILE* null, %struct._IO_FILE** %retval
  br label %return

if.end.68:                                        ; preds = %if.end.61
  br label %if.end.70

if.else.69:                                       ; preds = %if.else.49
  call void @_E__pr_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i64 131, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0))
  %28 = load i8*, i8** %mode.addr, align 8
  call void (i8*, ...) @_E__pr_warn(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.14, i32 0, i32 0), i8* %28)
  store %struct._IO_FILE* null, %struct._IO_FILE** %retval
  br label %return

if.end.70:                                        ; preds = %if.end.68
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %if.end.48
  br label %if.end.74

if.else.72:                                       ; preds = %if.end.29
  %29 = load i8*, i8** %file.addr, align 8
  %30 = load i8*, i8** %mode.addr, align 8
  %call73 = call %struct._IO_FILE* @fopen(i8* %29, i8* %30)
  store %struct._IO_FILE* %call73, %struct._IO_FILE** %fp, align 8
  br label %if.end.74

if.end.74:                                        ; preds = %if.else.72, %if.end.71
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  store %struct._IO_FILE* %31, %struct._IO_FILE** %retval
  br label %return

return:                                           ; preds = %if.end.74, %if.else.69, %if.then.66, %if.then.46
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %retval
  ret %struct._IO_FILE* %32
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

declare %struct._IO_FILE* @popen(i8*, i8*) #3

declare void @_E__pr_header(i8*, i64, i8*) #3

declare void @_E__sys_error(i8*, ...) #3

declare void @_E__pr_warn(i8*, ...) #3

declare %struct._IO_FILE* @fopen(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define void @fclose_comp(%struct._IO_FILE* %fp, i32 %ispipe) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %ispipe.addr = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32 %ispipe, i32* %ispipe.addr, align 4
  %0 = load i32, i32* %ispipe.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 @pclose(%struct._IO_FILE* %1)
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call1 = call i32 @fclose(%struct._IO_FILE* %2)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare i32 @pclose(%struct._IO_FILE*) #3

declare i32 @fclose(%struct._IO_FILE*) #3

; Function Attrs: nounwind uwtable
define %struct._IO_FILE* @fopen_compchk(i8* %file, i32* %ispipe) #0 {
entry:
  %retval = alloca %struct._IO_FILE*, align 8
  %file.addr = alloca i8*, align 8
  %ispipe.addr = alloca i32*, align 8
  %tmpfile = alloca [16384 x i8], align 16
  %k = alloca i32, align 4
  %isgz = alloca i32, align 4
  %statbuf = alloca %struct.stat, align 8
  store i8* %file, i8** %file.addr, align 8
  store i32* %ispipe, i32** %ispipe.addr, align 8
  %0 = load i8*, i8** %file.addr, align 8
  %call = call i64 @strlen(i8* %0) #6
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %k, align 4
  %1 = load i32*, i32** %ispipe.addr, align 8
  store i32 0, i32* %1, align 4
  store i32 0, i32* %isgz, align 4
  %2 = load i32, i32* %k, align 4
  %cmp = icmp sgt i32 %2, 2
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %3 = load i8*, i8** %file.addr, align 8
  %4 = load i32, i32* %k, align 4
  %idx.ext = sext i32 %4 to i64
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %idx.ext
  %add.ptr2 = getelementptr inbounds i8, i8* %add.ptr, i64 -2
  %call3 = call i32 @strcmp(i8* %add.ptr2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0)) #6
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %5 = load i8*, i8** %file.addr, align 8
  %6 = load i32, i32* %k, align 4
  %idx.ext6 = sext i32 %6 to i64
  %add.ptr7 = getelementptr inbounds i8, i8* %5, i64 %idx.ext6
  %add.ptr8 = getelementptr inbounds i8, i8* %add.ptr7, i64 -2
  %call9 = call i32 @strcmp(i8* %add.ptr8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0)) #6
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %7 = load i32*, i32** %ispipe.addr, align 8
  store i32 1, i32* %7, align 4
  br label %if.end.29

if.else:                                          ; preds = %lor.lhs.false, %entry
  %8 = load i32, i32* %k, align 4
  %cmp12 = icmp sgt i32 %8, 3
  br i1 %cmp12, label %land.lhs.true.14, label %if.end

land.lhs.true.14:                                 ; preds = %if.else
  %9 = load i8*, i8** %file.addr, align 8
  %10 = load i32, i32* %k, align 4
  %idx.ext15 = sext i32 %10 to i64
  %add.ptr16 = getelementptr inbounds i8, i8* %9, i64 %idx.ext15
  %add.ptr17 = getelementptr inbounds i8, i8* %add.ptr16, i64 -3
  %call18 = call i32 @strcmp(i8* %add.ptr17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)) #6
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %if.then.28, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %land.lhs.true.14
  %11 = load i8*, i8** %file.addr, align 8
  %12 = load i32, i32* %k, align 4
  %idx.ext22 = sext i32 %12 to i64
  %add.ptr23 = getelementptr inbounds i8, i8* %11, i64 %idx.ext22
  %add.ptr24 = getelementptr inbounds i8, i8* %add.ptr23, i64 -3
  %call25 = call i32 @strcmp(i8* %add.ptr24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0)) #6
  %cmp26 = icmp eq i32 %call25, 0
  br i1 %cmp26, label %if.then.28, label %if.end

if.then.28:                                       ; preds = %lor.lhs.false.21, %land.lhs.true.14
  %13 = load i32*, i32** %ispipe.addr, align 8
  store i32 1, i32* %13, align 4
  store i32 1, i32* %isgz, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.28, %lor.lhs.false.21, %if.else
  br label %if.end.29

if.end.29:                                        ; preds = %if.end, %if.then
  %arraydecay = getelementptr inbounds [16384 x i8], [16384 x i8]* %tmpfile, i32 0, i32 0
  %14 = load i8*, i8** %file.addr, align 8
  %call30 = call i8* @strcpy(i8* %arraydecay, i8* %14) #7
  %arraydecay31 = getelementptr inbounds [16384 x i8], [16384 x i8]* %tmpfile, i32 0, i32 0
  %call32 = call i32 @stat(i8* %arraydecay31, %struct.stat* %statbuf) #7
  %cmp33 = icmp ne i32 %call32, 0
  br i1 %cmp33, label %if.then.35, label %if.end.74

if.then.35:                                       ; preds = %if.end.29
  call void @_E__pr_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i64 185, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0))
  %arraydecay36 = getelementptr inbounds [16384 x i8], [16384 x i8]* %tmpfile, i32 0, i32 0
  call void (i8*, ...) @_E__sys_error(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i8* %arraydecay36)
  %15 = load i32*, i32** %ispipe.addr, align 8
  %16 = load i32, i32* %15, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.then.37, label %if.else.51

if.then.37:                                       ; preds = %if.then.35
  %17 = load i32, i32* %isgz, align 4
  %tobool38 = icmp ne i32 %17, 0
  br i1 %tobool38, label %if.then.39, label %if.else.40

if.then.39:                                       ; preds = %if.then.37
  %18 = load i32, i32* %k, align 4
  %sub = sub nsw i32 %18, 3
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [16384 x i8], [16384 x i8]* %tmpfile, i32 0, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  br label %if.end.44

if.else.40:                                       ; preds = %if.then.37
  %19 = load i32, i32* %k, align 4
  %sub41 = sub nsw i32 %19, 2
  %idxprom42 = sext i32 %sub41 to i64
  %arrayidx43 = getelementptr inbounds [16384 x i8], [16384 x i8]* %tmpfile, i32 0, i64 %idxprom42
  store i8 0, i8* %arrayidx43, align 1
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.40, %if.then.39
  %arraydecay45 = getelementptr inbounds [16384 x i8], [16384 x i8]* %tmpfile, i32 0, i32 0
  %call46 = call i32 @stat(i8* %arraydecay45, %struct.stat* %statbuf) #7
  %cmp47 = icmp ne i32 %call46, 0
  br i1 %cmp47, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.end.44
  store %struct._IO_FILE* null, %struct._IO_FILE** %retval
  br label %return

if.end.50:                                        ; preds = %if.end.44
  br label %if.end.72

if.else.51:                                       ; preds = %if.then.35
  %arraydecay52 = getelementptr inbounds [16384 x i8], [16384 x i8]* %tmpfile, i32 0, i32 0
  %20 = load i32, i32* %k, align 4
  %idx.ext53 = sext i32 %20 to i64
  %add.ptr54 = getelementptr inbounds i8, i8* %arraydecay52, i64 %idx.ext53
  %call55 = call i8* @strcpy(i8* %add.ptr54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)) #7
  %arraydecay56 = getelementptr inbounds [16384 x i8], [16384 x i8]* %tmpfile, i32 0, i32 0
  %call57 = call i32 @stat(i8* %arraydecay56, %struct.stat* %statbuf) #7
  %cmp58 = icmp ne i32 %call57, 0
  br i1 %cmp58, label %if.then.60, label %if.end.71

if.then.60:                                       ; preds = %if.else.51
  %arraydecay61 = getelementptr inbounds [16384 x i8], [16384 x i8]* %tmpfile, i32 0, i32 0
  %21 = load i32, i32* %k, align 4
  %idx.ext62 = sext i32 %21 to i64
  %add.ptr63 = getelementptr inbounds i8, i8* %arraydecay61, i64 %idx.ext62
  %call64 = call i8* @strcpy(i8* %add.ptr63, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0)) #7
  %arraydecay65 = getelementptr inbounds [16384 x i8], [16384 x i8]* %tmpfile, i32 0, i32 0
  %call66 = call i32 @stat(i8* %arraydecay65, %struct.stat* %statbuf) #7
  %cmp67 = icmp ne i32 %call66, 0
  br i1 %cmp67, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %if.then.60
  store %struct._IO_FILE* null, %struct._IO_FILE** %retval
  br label %return

if.end.70:                                        ; preds = %if.then.60
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %if.else.51
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %if.end.50
  call void @_E__pr_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i64 208, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0))
  %arraydecay73 = getelementptr inbounds [16384 x i8], [16384 x i8]* %tmpfile, i32 0, i32 0
  %22 = load i8*, i8** %file.addr, align 8
  call void (i8*, ...) @_E__pr_warn(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i32 0, i32 0), i8* %arraydecay73, i8* %22)
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.72, %if.end.29
  %arraydecay75 = getelementptr inbounds [16384 x i8], [16384 x i8]* %tmpfile, i32 0, i32 0
  %23 = load i32*, i32** %ispipe.addr, align 8
  %call76 = call %struct._IO_FILE* @fopen_comp(i8* %arraydecay75, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i32* %23)
  store %struct._IO_FILE* %call76, %struct._IO_FILE** %retval
  br label %return

return:                                           ; preds = %if.end.74, %if.then.69, %if.then.49
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %retval
  ret %struct._IO_FILE* %24
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind
declare i32 @stat(i8*, %struct.stat*) #2

; Function Attrs: nounwind uwtable
define i32 @fread_retry(i8* %pointer, i32 %size, i32 %num_items, %struct._IO_FILE* %stream) #0 {
entry:
  %retval = alloca i32, align 4
  %pointer.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %num_items.addr = alloca i32, align 4
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %data = alloca i8*, align 8
  %n_items_read = alloca i32, align 4
  %n_items_rem = alloca i32, align 4
  %n_retry_rem = alloca i32, align 4
  %loc = alloca i32, align 4
  store i8* %pointer, i8** %pointer.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i32 %num_items, i32* %num_items.addr, align 4
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  store i32 60, i32* %n_retry_rem, align 4
  %0 = load i8*, i8** %pointer.addr, align 8
  store i8* %0, i8** %data, align 8
  store i32 0, i32* %loc, align 4
  %1 = load i32, i32* %num_items.addr, align 4
  store i32 %1, i32* %n_items_rem, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %2 = load i32, i32* %loc, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i8*, i8** %data, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  %4 = load i32, i32* %size.addr, align 4
  %conv = sext i32 %4 to i64
  %5 = load i32, i32* %n_items_rem, align 4
  %conv1 = zext i32 %5 to i64
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call = call i64 @fread(i8* %arrayidx, i64 %conv, i64 %conv1, %struct._IO_FILE* %6)
  %conv2 = trunc i64 %call to i32
  store i32 %conv2, i32* %n_items_read, align 4
  %7 = load i32, i32* %n_items_read, align 4
  %8 = load i32, i32* %n_items_rem, align 4
  %sub = sub i32 %8, %7
  store i32 %sub, i32* %n_items_rem, align 4
  %9 = load i32, i32* %n_items_rem, align 4
  %cmp = icmp ugt i32 %9, 0
  br i1 %cmp, label %if.then, label %if.end.12

if.then:                                          ; preds = %do.body
  %10 = load i32, i32* %n_retry_rem, align 4
  %cmp4 = icmp eq i32 %10, 0
  br i1 %cmp4, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %11 = load i32, i32* %n_retry_rem, align 4
  %cmp7 = icmp eq i32 %11, 60
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  call void @_E__pr_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i64 243, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0))
  call void (i8*, ...) @_E__sys_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end
  %12 = load i32, i32* %n_retry_rem, align 4
  %dec = add i32 %12, -1
  store i32 %dec, i32* %n_retry_rem, align 4
  %13 = load i32, i32* %n_items_read, align 4
  %14 = load i32, i32* %size.addr, align 4
  %mul = mul i32 %13, %14
  %15 = load i32, i32* %loc, align 4
  %add = add i32 %15, %mul
  store i32 %add, i32* %loc, align 4
  %call11 = call i32 @sleep(i32 1)
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.10, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.12
  %16 = load i32, i32* %n_items_rem, align 4
  %cmp13 = icmp ugt i32 %16, 0
  br i1 %cmp13, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %17 = load i32, i32* %num_items.addr, align 4
  store i32 %17, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.6
  %18 = load i32, i32* %retval
  ret i32 %18
}

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #3

declare i32 @sleep(i32) #3

; Function Attrs: nounwind uwtable
define i32 @stat_retry(i8* %file, %struct.stat* %statbuf) #0 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca i8*, align 8
  %statbuf.addr = alloca %struct.stat*, align 8
  %i = alloca i32, align 4
  store i8* %file, i8** %file.addr, align 8
  store %struct.stat* %statbuf, %struct.stat** %statbuf.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i8*, i8** %file.addr, align 8
  %2 = load %struct.stat*, %struct.stat** %statbuf.addr, align 8
  %call = call i32 @stat(i8* %1, %struct.stat* %2) #7
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %cmp2 = icmp eq i32 %3, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  call void @_E__pr_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i64 270, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0))
  %4 = load i8*, i8** %file.addr, align 8
  call void (i8*, ...) @_E__sys_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.19, i32 0, i32 0), i8* %4)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %call5 = call i32 @sleep(i32 10)
  br label %for.inc

for.inc:                                          ; preds = %if.end.4
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @stat_mtime(i8* %file) #0 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca i8*, align 8
  %statbuf = alloca %struct.stat, align 8
  store i8* %file, i8** %file.addr, align 8
  %0 = load i8*, i8** %file.addr, align 8
  %call = call i32 @stat(i8* %0, %struct.stat* %statbuf) #7
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %st_mtim = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 12
  %tv_sec = getelementptr inbounds %struct.timespec, %struct.timespec* %st_mtim, i32 0, i32 0
  %1 = load i64, i64* %tv_sec, align 8
  %conv = trunc i64 %1 to i32
  store i32 %conv, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, i32* %retval
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define %struct._IO_FILE* @_myfopen(i8* %file, i8* %mode, i8* %pgm, i32 %line) #0 {
entry:
  %file.addr = alloca i8*, align 8
  %mode.addr = alloca i8*, align 8
  %pgm.addr = alloca i8*, align 8
  %line.addr = alloca i32, align 4
  %fp = alloca %struct._IO_FILE*, align 8
  store i8* %file, i8** %file.addr, align 8
  store i8* %mode, i8** %mode.addr, align 8
  store i8* %pgm, i8** %pgm.addr, align 8
  store i32 %line, i32* %line.addr, align 4
  %0 = load i8*, i8** %file.addr, align 8
  %1 = load i8*, i8** %mode.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %0, i8* %1)
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8
  %cmp = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1 = call i32 @fflush(%struct._IO_FILE* %2)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i8*, i8** %pgm.addr, align 8
  %5 = load i32, i32* %line.addr, align 4
  %6 = load i8*, i8** %file.addr, align 8
  %7 = load i8*, i8** %mode.addr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.20, i32 0, i32 0), i8* %4, i32 %5, i8* %6, i8* %7)
  call void @perror(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i32 0, i32 0))
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call3 = call i32 @fflush(%struct._IO_FILE* %8)
  %call4 = call i32* @__errno_location() #8
  %9 = load i32, i32* %call4, align 4
  call void @exit(i32 %9) #9
  unreachable

if.end:                                           ; preds = %entry
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  ret %struct._IO_FILE* %10
}

declare i32 @fflush(%struct._IO_FILE*) #3

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

declare void @perror(i8*) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone }
attributes #9 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
