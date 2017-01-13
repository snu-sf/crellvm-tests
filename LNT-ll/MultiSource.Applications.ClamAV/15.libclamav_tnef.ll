; ModuleID = './MultiSource.Applications.ClamAV/15.libclamav_tnef.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fileblob = type { %struct._IO_FILE*, %struct.blob, i8*, i8, i64, %struct.cli_ctx* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.blob = type { i8*, i8*, i64, i64, i32 }
%struct.cli_ctx = type { i8**, i64*, %struct.cli_matcher*, %struct.cl_engine*, %struct.cl_limits*, i32, i32, i32, i32, %struct.cli_dconf* }
%struct.cli_matcher = type opaque
%struct.cl_engine = type { i32, i16, i32, i8**, i8**, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.cl_limits = type { i32, i32, i32, i32, i16, i64 }
%struct.cli_dconf = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [27 x i8] c"Can't fstat descriptor %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Can't open descriptor %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"Corrupt TNEF header detected - length %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"TNEF - found message\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Error reading TNEF message\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"TNEF - found attachment\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"Error reading TNEF attachment\0A\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"TNEF - unknown level %d tag 0x%x\0A\00", align 1
@cli_debug_flag = external global i8, align 1
@.str.10 = private unnamed_addr constant [57 x i8] c"Saving dump to %s:  refer to http://www.clamav.net/bugs\0A\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"cli_tnef: flushing final data\0A\00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"Saving TNEF portion with an unknown name\0A\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"tnef\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"cli_tnef: returning %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [40 x i8] c"message tag 0x%x, type 0x%x, length %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [102 x i8] c"TNEF body not being scanned - if you believe this file contains a virus, submit it to www.clamav.net\0A\00", align 1
@.str.17 = private unnamed_addr constant [46 x i8] c"TNEF: Incorrect length field in tnef_message\0A\00", align 1
@.str.18 = private unnamed_addr constant [43 x i8] c"attachment tag 0x%x, type 0x%x, length %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"TNEF filename %s\0A\00", align 1
@.str.20 = private unnamed_addr constant [60 x i8] c"TNEF - unsupported attachment tag 0x%x type 0x%d length %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [49 x i8] c"TNEF: Incorrect length field in tnef_attachment\0A\00", align 1
@.str.22 = private unnamed_addr constant [40 x i8] c"tnef_header: ignoring trailing newline\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @cli_tnef(i8* %dir, i32 %desc) #0 {
entry:
  %retval = alloca i32, align 4
  %dir.addr = alloca i8*, align 8
  %desc.addr = alloca i32, align 4
  %i32 = alloca i32, align 4
  %i16 = alloca i16, align 2
  %fb = alloca %struct.fileblob*, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %alldone = alloca i32, align 4
  %fp = alloca %struct._IO_FILE*, align 8
  %fsize = alloca i64, align 8
  %statb = alloca %struct.stat, align 8
  %part = alloca i8, align 1
  %type = alloca i16, align 2
  %tag = alloca i16, align 2
  %length = alloca i32, align 4
  %fout = alloca i32, align 4
  %filename = alloca i8*, align 8
  %buffer = alloca [8192 x i8], align 16
  %count = alloca i32, align 4
  store i8* %dir, i8** %dir.addr, align 8
  store i32 %desc, i32* %desc.addr, align 4
  %0 = load i32, i32* %desc.addr, align 4
  %call = call i64 @lseek(i32 %0, i64 0, i32 0) #3
  %1 = load i32, i32* %desc.addr, align 4
  %call1 = call i32 @fstat(i32 %1, %struct.stat* %statb) #3
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %desc.addr, align 4
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i32 0, i32 0), i32 %2)
  store i32 -123, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %statb, i32 0, i32 8
  %3 = load i64, i64* %st_size, align 8
  store i64 %3, i64* %fsize, align 8
  %4 = load i32, i32* %desc.addr, align 4
  %call2 = call i32 @dup(i32 %4) #3
  store i32 %call2, i32* %i, align 4
  %5 = load i32, i32* %i, align 4
  %call3 = call %struct._IO_FILE* @fdopen(i32 %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0)) #3
  store %struct._IO_FILE* %call3, %struct._IO_FILE** %fp, align 8
  %cmp4 = icmp eq %struct._IO_FILE* %call3, null
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %6 = load i32, i32* %desc.addr, align 4
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0), i32 %6)
  %7 = load i32, i32* %i, align 4
  %call6 = call i32 @close(i32 %7)
  store i32 -115, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %8 = bitcast i32* %i32 to i8*
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call8 = call i64 @fread(i8* %8, i64 4, i64 1, %struct._IO_FILE* %9)
  %cmp9 = icmp ne i64 %call8, 1
  br i1 %cmp9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end.7
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call11 = call i32 @fclose(%struct._IO_FILE* %10)
  store i32 -123, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end.7
  %11 = load i32, i32* %i32, align 4
  %cmp13 = icmp ne i32 %11, 574529400
  br i1 %cmp13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.end.12
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call15 = call i32 @fclose(%struct._IO_FILE* %12)
  store i32 -124, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.end.12
  %13 = bitcast i16* %i16 to i8*
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call17 = call i64 @fread(i8* %13, i64 2, i64 1, %struct._IO_FILE* %14)
  %cmp18 = icmp ne i64 %call17, 1
  br i1 %cmp18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.end.16
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call20 = call i32 @fclose(%struct._IO_FILE* %15)
  store i32 -123, i32* %retval
  br label %return

if.end.21:                                        ; preds = %if.end.16
  store %struct.fileblob* null, %struct.fileblob** %fb, align 8
  store i32 0, i32* %ret, align 4
  store i32 0, i32* %alldone, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.21
  store i8 0, i8* %part, align 1
  store i16 0, i16* %type, align 2
  store i16 0, i16* %tag, align 2
  store i32 0, i32* %length, align 4
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call22 = call i32 @tnef_header(%struct._IO_FILE* %16, i8* %part, i16* %type, i16* %tag, i32* %length)
  switch i32 %call22, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.26
  ]

sw.bb:                                            ; preds = %do.body
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call23 = call i32 @ferror(%struct._IO_FILE* %17) #3
  %tobool = icmp ne i32 %call23, 0
  br i1 %tobool, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %sw.bb
  call void @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0))
  store i32 -123, i32* %ret, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %sw.bb
  store i32 1, i32* %alldone, align 4
  br label %sw.epilog

sw.bb.26:                                         ; preds = %do.body
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  store i32 -123, i32* %ret, align 4
  store i32 1, i32* %alldone, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.26, %if.end.25
  %18 = load i32, i32* %length, align 4
  %cmp27 = icmp eq i32 %18, 0
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %sw.epilog
  br label %do.cond

if.end.29:                                        ; preds = %sw.epilog
  %19 = load i32, i32* %length, align 4
  %cmp30 = icmp slt i32 %19, 0
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.29
  %20 = load i32, i32* %length, align 4
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i32 0, i32 0), i32 %20)
  store i32 -124, i32* %ret, align 4
  br label %do.end

if.end.32:                                        ; preds = %if.end.29
  %21 = load i32, i32* %alldone, align 4
  %tobool33 = icmp ne i32 %21, 0
  br i1 %tobool33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.end.32
  br label %do.end

if.end.35:                                        ; preds = %if.end.32
  %22 = load i8, i8* %part, align 1
  %conv = zext i8 %22 to i32
  switch i32 %conv, label %sw.default.54 [
    i32 1, label %sw.bb.36
    i32 2, label %sw.bb.47
    i32 0, label %sw.bb.53
  ]

sw.bb.36:                                         ; preds = %if.end.35
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0))
  %23 = load %struct.fileblob*, %struct.fileblob** %fb, align 8
  %cmp37 = icmp ne %struct.fileblob* %23, null
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %sw.bb.36
  %24 = load %struct.fileblob*, %struct.fileblob** %fb, align 8
  call void @fileblobDestroy(%struct.fileblob* %24)
  store %struct.fileblob* null, %struct.fileblob** %fb, align 8
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.39, %sw.bb.36
  %call41 = call %struct.fileblob* @fileblobCreate()
  store %struct.fileblob* %call41, %struct.fileblob** %fb, align 8
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %26 = load i16, i16* %type, align 2
  %27 = load i16, i16* %tag, align 2
  %28 = load i32, i32* %length, align 4
  %29 = load i64, i64* %fsize, align 8
  %call42 = call i32 @tnef_message(%struct._IO_FILE* %25, i16 zeroext %26, i16 zeroext %27, i32 %28, i64 %29)
  %cmp43 = icmp ne i32 %call42, 0
  br i1 %cmp43, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.end.40
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i32 0, i32 0))
  store i32 -124, i32* %ret, align 4
  store i32 1, i32* %alldone, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.45, %if.end.40
  br label %sw.epilog.73

sw.bb.47:                                         ; preds = %if.end.35
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i32 0, i32 0))
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %31 = load i16, i16* %type, align 2
  %32 = load i16, i16* %tag, align 2
  %33 = load i32, i32* %length, align 4
  %34 = load i8*, i8** %dir.addr, align 8
  %35 = load i64, i64* %fsize, align 8
  %call48 = call i32 @tnef_attachment(%struct._IO_FILE* %30, i16 zeroext %31, i16 zeroext %32, i32 %33, i8* %34, %struct.fileblob** %fb, i64 %35)
  %cmp49 = icmp ne i32 %call48, 0
  br i1 %cmp49, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %sw.bb.47
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i32 0, i32 0))
  store i32 -124, i32* %ret, align 4
  store i32 1, i32* %alldone, align 4
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.51, %sw.bb.47
  br label %sw.epilog.73

sw.bb.53:                                         ; preds = %if.end.35
  br label %sw.epilog.73

sw.default.54:                                    ; preds = %if.end.35
  %36 = load i8, i8* %part, align 1
  %conv55 = zext i8 %36 to i32
  %37 = load i16, i16* %tag, align 2
  %conv56 = zext i16 %37 to i32
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i32 0, i32 0), i32 %conv55, i32 %conv56)
  %38 = load i8, i8* @cli_debug_flag, align 1
  %tobool57 = icmp ne i8 %38, 0
  br i1 %tobool57, label %if.then.58, label %if.end.72

if.then.58:                                       ; preds = %sw.default.54
  %call59 = call i8* @cli_gentemp(i8* null)
  store i8* %call59, i8** %filename, align 8
  %39 = load i8*, i8** %filename, align 8
  %call60 = call i32 (i8*, i32, ...) @open(i8* %39, i32 705, i32 384)
  store i32 %call60, i32* %fout, align 4
  %40 = load i32, i32* %fout, align 4
  %cmp61 = icmp sge i32 %40, 0
  br i1 %cmp61, label %if.then.63, label %if.end.71

if.then.63:                                       ; preds = %if.then.58
  %41 = load i8*, i8** %filename, align 8
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.10, i32 0, i32 0), i8* %41)
  %42 = load i32, i32* %desc.addr, align 4
  %call64 = call i64 @lseek(i32 %42, i64 0, i32 0) #3
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.63
  %43 = load i32, i32* %desc.addr, align 4
  %arraydecay = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %call65 = call i32 @cli_readn(i32 %43, i8* %arraydecay, i32 8192)
  store i32 %call65, i32* %count, align 4
  %cmp66 = icmp sgt i32 %call65, 0
  br i1 %cmp66, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %44 = load i32, i32* %fout, align 4
  %arraydecay68 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %45 = load i32, i32* %count, align 4
  %call69 = call i32 @cli_writen(i32 %44, i8* %arraydecay68, i32 %45)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %46 = load i32, i32* %fout, align 4
  %call70 = call i32 @close(i32 %46)
  br label %if.end.71

if.end.71:                                        ; preds = %while.end, %if.then.58
  %47 = load i8*, i8** %filename, align 8
  call void @free(i8* %47) #3
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %sw.default.54
  store i32 -124, i32* %ret, align 4
  store i32 1, i32* %alldone, align 4
  br label %sw.epilog.73

sw.epilog.73:                                     ; preds = %if.end.72, %sw.bb.53, %if.end.52, %if.end.46
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog.73, %if.then.28
  %48 = load i32, i32* %alldone, align 4
  %tobool74 = icmp ne i32 %48, 0
  %lnot = xor i1 %tobool74, true
  br i1 %lnot, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then.34, %if.then.31
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call75 = call i32 @fclose(%struct._IO_FILE* %49)
  %50 = load %struct.fileblob*, %struct.fileblob** %fb, align 8
  %tobool76 = icmp ne %struct.fileblob* %50, null
  br i1 %tobool76, label %if.then.77, label %if.end.83

if.then.77:                                       ; preds = %do.end
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i32 0, i32 0))
  %51 = load %struct.fileblob*, %struct.fileblob** %fb, align 8
  %call78 = call i8* @fileblobGetFilename(%struct.fileblob* %51)
  %cmp79 = icmp eq i8* %call78, null
  br i1 %cmp79, label %if.then.81, label %if.end.82

if.then.81:                                       ; preds = %if.then.77
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i32 0, i32 0))
  %52 = load %struct.fileblob*, %struct.fileblob** %fb, align 8
  %53 = load i8*, i8** %dir.addr, align 8
  call void @fileblobSetFilename(%struct.fileblob* %52, i8* %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.81, %if.then.77
  %54 = load %struct.fileblob*, %struct.fileblob** %fb, align 8
  call void @fileblobDestroy(%struct.fileblob* %54)
  store %struct.fileblob* null, %struct.fileblob** %fb, align 8
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %do.end
  %55 = load i32, i32* %ret, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i32 0, i32 0), i32 %55)
  %56 = load i32, i32* %ret, align 4
  store i32 %56, i32* %retval
  br label %return

return:                                           ; preds = %if.end.83, %if.then.19, %if.then.14, %if.then.10, %if.then.5, %if.then
  %57 = load i32, i32* %retval
  ret i32 %57
}

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) #1

; Function Attrs: nounwind
declare i32 @fstat(i32, %struct.stat*) #1

declare void @cli_errmsg(i8*, ...) #2

; Function Attrs: nounwind
declare i32 @dup(i32) #1

; Function Attrs: nounwind
declare %struct._IO_FILE* @fdopen(i32, i8*) #1

declare i32 @close(i32) #2

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #2

declare i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define internal i32 @tnef_header(%struct._IO_FILE* %fp, i8* %part, i16* %type, i16* %tag, i32* %length) #0 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %part.addr = alloca i8*, align 8
  %type.addr = alloca i16*, align 8
  %tag.addr = alloca i16*, align 8
  %length.addr = alloca i32*, align 8
  %i32 = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i8* %part, i8** %part.addr, align 8
  store i16* %type, i16** %type.addr, align 8
  store i16* %tag, i16** %tag.addr, align 8
  store i32* %length, i32** %length.addr, align 8
  %0 = load i8*, i8** %part.addr, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i64 @fread(i8* %0, i64 1, i64 1, %struct._IO_FILE* %1)
  %cmp = icmp ne i64 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %part.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv = zext i8 %3 to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = bitcast i32* %i32 to i8*
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call5 = call i64 @fread(i8* %4, i64 4, i64 1, %struct._IO_FILE* %5)
  %cmp6 = icmp ne i64 %call5, 1
  br i1 %cmp6, label %if.then.8, label %if.end.15

if.then.8:                                        ; preds = %if.end.4
  %6 = load i8*, i8** %part.addr, align 8
  %7 = load i8, i8* %6, align 1
  %conv9 = zext i8 %7 to i32
  %cmp10 = icmp eq i32 %conv9, 10
  br i1 %cmp10, label %land.lhs.true, label %if.end.14

land.lhs.true:                                    ; preds = %if.then.8
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call12 = call i32 @feof(%struct._IO_FILE* %8) #3
  %tobool = icmp ne i32 %call12, 0
  br i1 %tobool, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %land.lhs.true
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.22, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.14:                                        ; preds = %land.lhs.true, %if.then.8
  store i32 -1, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.end.4
  %9 = load i32, i32* %i32, align 4
  store i32 %9, i32* %i32, align 4
  %10 = load i32, i32* %i32, align 4
  %and = and i32 %10, 65535
  %conv16 = trunc i32 %and to i16
  %11 = load i16*, i16** %tag.addr, align 8
  store i16 %conv16, i16* %11, align 2
  %12 = load i32, i32* %i32, align 4
  %and17 = and i32 %12, -65536
  %shr = lshr i32 %and17, 16
  %conv18 = trunc i32 %shr to i16
  %13 = load i16*, i16** %type.addr, align 8
  store i16 %conv18, i16* %13, align 2
  %14 = bitcast i32* %i32 to i8*
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call19 = call i64 @fread(i8* %14, i64 4, i64 1, %struct._IO_FILE* %15)
  %cmp20 = icmp ne i64 %call19, 1
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.15
  store i32 -1, i32* %retval
  br label %return

if.end.23:                                        ; preds = %if.end.15
  %16 = load i32, i32* %i32, align 4
  %17 = load i32*, i32** %length.addr, align 8
  store i32 %16, i32* %17, align 4
  %18 = load i16*, i16** %tag.addr, align 8
  %19 = load i16, i16* %18, align 2
  %conv24 = zext i16 %19 to i32
  %20 = load i16*, i16** %type.addr, align 8
  %21 = load i16, i16* %20, align 2
  %conv25 = zext i16 %21 to i32
  %22 = load i32*, i32** %length.addr, align 8
  %23 = load i32, i32* %22, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.15, i32 0, i32 0), i32 %conv24, i32 %conv25, i32 %23)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.23, %if.then.22, %if.end.14, %if.then.13, %if.then.3, %if.then
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE*) #1

declare void @perror(i8*) #2

declare void @cli_warnmsg(i8*, ...) #2

declare void @cli_dbgmsg(i8*, ...) #2

declare void @fileblobDestroy(%struct.fileblob*) #2

declare %struct.fileblob* @fileblobCreate() #2

; Function Attrs: nounwind uwtable
define internal i32 @tnef_message(%struct._IO_FILE* %fp, i16 zeroext %type, i16 zeroext %tag, i32 %length, i64 %fsize) #0 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %type.addr = alloca i16, align 2
  %tag.addr = alloca i16, align 2
  %length.addr = alloca i32, align 4
  %fsize.addr = alloca i64, align 8
  %i16 = alloca i16, align 2
  %offset = alloca i64, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i16 %type, i16* %type.addr, align 2
  store i16 %tag, i16* %tag.addr, align 2
  store i32 %length, i32* %length.addr, align 4
  store i64 %fsize, i64* %fsize.addr, align 8
  %0 = load i16, i16* %tag.addr, align 2
  %conv = zext i16 %0 to i32
  %1 = load i16, i16* %type.addr, align 2
  %conv1 = zext i16 %1 to i32
  %2 = load i32, i32* %length.addr, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.15, i32 0, i32 0), i32 %conv, i32 %conv1, i32 %2)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i64 @ftell(%struct._IO_FILE* %3)
  store i64 %call, i64* %offset, align 8
  %4 = load i16, i16* %tag.addr, align 2
  %conv2 = zext i16 %4 to i32
  switch i32 %conv2, label %sw.epilog [
    i32 32780, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.16, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb
  %5 = load i64, i64* %fsize.addr, align 8
  %cmp = icmp sgt i64 %5, 0
  br i1 %cmp, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %sw.epilog
  %6 = load i32, i32* %length.addr, align 4
  %conv4 = sext i32 %6 to i64
  %cmp5 = icmp sge i64 %conv4, 0
  br i1 %cmp5, label %land.lhs.true.7, label %if.then

land.lhs.true.7:                                  ; preds = %land.lhs.true
  %7 = load i32, i32* %length.addr, align 4
  %conv8 = sext i32 %7 to i64
  %8 = load i64, i64* %fsize.addr, align 8
  %cmp9 = icmp sle i64 %conv8, %8
  br i1 %cmp9, label %land.lhs.true.11, label %if.then

land.lhs.true.11:                                 ; preds = %land.lhs.true.7
  %9 = load i64, i64* %offset, align 8
  %cmp12 = icmp sge i64 %9, 0
  br i1 %cmp12, label %land.lhs.true.14, label %if.then

land.lhs.true.14:                                 ; preds = %land.lhs.true.11
  %10 = load i64, i64* %offset, align 8
  %11 = load i32, i32* %length.addr, align 4
  %conv15 = sext i32 %11 to i64
  %add = add nsw i64 %10, %conv15
  %12 = load i64, i64* %fsize.addr, align 8
  %add16 = add nsw i64 0, %12
  %cmp17 = icmp sle i64 %add, %add16
  br i1 %cmp17, label %land.lhs.true.19, label %if.then

land.lhs.true.19:                                 ; preds = %land.lhs.true.14
  %13 = load i64, i64* %offset, align 8
  %14 = load i32, i32* %length.addr, align 4
  %conv20 = sext i32 %14 to i64
  %add21 = add nsw i64 %13, %conv20
  %cmp22 = icmp sge i64 %add21, 0
  br i1 %cmp22, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true.19, %land.lhs.true.14, %land.lhs.true.11, %land.lhs.true.7, %land.lhs.true, %sw.epilog
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.17, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.19
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %16 = load i64, i64* %offset, align 8
  %17 = load i32, i32* %length.addr, align 4
  %conv24 = sext i32 %17 to i64
  %add25 = add nsw i64 %16, %conv24
  %call26 = call i32 @fseek(%struct._IO_FILE* %15, i64 %add25, i32 0)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.30:                                        ; preds = %if.end
  %18 = bitcast i16* %i16 to i8*
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call31 = call i64 @fread(i8* %18, i64 2, i64 1, %struct._IO_FILE* %19)
  %cmp32 = icmp ne i64 %call31, 1
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.end.30
  store i32 -1, i32* %retval
  br label %return

if.end.35:                                        ; preds = %if.end.30
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.35, %if.then.34, %if.then.29, %if.then
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal i32 @tnef_attachment(%struct._IO_FILE* %fp, i16 zeroext %type, i16 zeroext %tag, i32 %length, i8* %dir, %struct.fileblob** %fbref, i64 %fsize) #0 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %type.addr = alloca i16, align 2
  %tag.addr = alloca i16, align 2
  %length.addr = alloca i32, align 4
  %dir.addr = alloca i8*, align 8
  %fbref.addr = alloca %struct.fileblob**, align 8
  %fsize.addr = alloca i64, align 8
  %todo = alloca i32, align 4
  %i16 = alloca i16, align 2
  %offset = alloca i64, align 8
  %string = alloca i8*, align 8
  %c = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i16 %type, i16* %type.addr, align 2
  store i16 %tag, i16* %tag.addr, align 2
  store i32 %length, i32* %length.addr, align 4
  store i8* %dir, i8** %dir.addr, align 8
  store %struct.fileblob** %fbref, %struct.fileblob*** %fbref.addr, align 8
  store i64 %fsize, i64* %fsize.addr, align 8
  %0 = load i16, i16* %tag.addr, align 2
  %conv = zext i16 %0 to i32
  %1 = load i16, i16* %type.addr, align 2
  %conv1 = zext i16 %1 to i32
  %2 = load i32, i32* %length.addr, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.18, i32 0, i32 0), i32 %conv, i32 %conv1, i32 %2)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i64 @ftell(%struct._IO_FILE* %3)
  store i64 %call, i64* %offset, align 8
  %4 = load i16, i16* %tag.addr, align 2
  %conv2 = zext i16 %4 to i32
  switch i32 %conv2, label %sw.default [
    i32 32784, label %sw.bb
    i32 32783, label %sw.bb.26
  ]

sw.bb:                                            ; preds = %entry
  %5 = load i32, i32* %length.addr, align 4
  %cmp = icmp sle i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.bb
  %6 = load i32, i32* %length.addr, align 4
  %add = add nsw i32 %6, 1
  %conv4 = sext i32 %add to i64
  %call5 = call i8* @cli_malloc(i64 %conv4)
  store i8* %call5, i8** %string, align 8
  %7 = load i8*, i8** %string, align 8
  %cmp6 = icmp eq i8* %7, null
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end
  %8 = load i8*, i8** %string, align 8
  %9 = load i32, i32* %length.addr, align 4
  %conv10 = zext i32 %9 to i64
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call11 = call i64 @fread(i8* %8, i64 1, i64 %conv10, %struct._IO_FILE* %10)
  %11 = load i32, i32* %length.addr, align 4
  %conv12 = zext i32 %11 to i64
  %cmp13 = icmp ne i64 %call11, %conv12
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.9
  %12 = load i8*, i8** %string, align 8
  call void @free(i8* %12) #3
  store i32 -1, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.end.9
  %13 = load i32, i32* %length.addr, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load i8*, i8** %string, align 8
  %arrayidx = getelementptr inbounds i8, i8* %14, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  %15 = load i8*, i8** %string, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i32 0, i32 0), i8* %15)
  %16 = load %struct.fileblob**, %struct.fileblob*** %fbref.addr, align 8
  %17 = load %struct.fileblob*, %struct.fileblob** %16, align 8
  %cmp17 = icmp eq %struct.fileblob* %17, null
  br i1 %cmp17, label %if.then.19, label %if.end.25

if.then.19:                                       ; preds = %if.end.16
  %call20 = call %struct.fileblob* @fileblobCreate()
  %18 = load %struct.fileblob**, %struct.fileblob*** %fbref.addr, align 8
  store %struct.fileblob* %call20, %struct.fileblob** %18, align 8
  %19 = load %struct.fileblob**, %struct.fileblob*** %fbref.addr, align 8
  %20 = load %struct.fileblob*, %struct.fileblob** %19, align 8
  %cmp21 = icmp eq %struct.fileblob* %20, null
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.then.19
  %21 = load i8*, i8** %string, align 8
  call void @free(i8* %21) #3
  store i32 -1, i32* %retval
  br label %return

if.end.24:                                        ; preds = %if.then.19
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.end.16
  %22 = load %struct.fileblob**, %struct.fileblob*** %fbref.addr, align 8
  %23 = load %struct.fileblob*, %struct.fileblob** %22, align 8
  %24 = load i8*, i8** %dir.addr, align 8
  %25 = load i8*, i8** %string, align 8
  call void @fileblobSetFilename(%struct.fileblob* %23, i8* %24, i8* %25)
  %26 = load i8*, i8** %string, align 8
  call void @free(i8* %26) #3
  br label %sw.epilog

sw.bb.26:                                         ; preds = %entry
  %27 = load %struct.fileblob**, %struct.fileblob*** %fbref.addr, align 8
  %28 = load %struct.fileblob*, %struct.fileblob** %27, align 8
  %cmp27 = icmp eq %struct.fileblob* %28, null
  br i1 %cmp27, label %if.then.29, label %if.end.35

if.then.29:                                       ; preds = %sw.bb.26
  %call30 = call %struct.fileblob* @fileblobCreate()
  %29 = load %struct.fileblob**, %struct.fileblob*** %fbref.addr, align 8
  store %struct.fileblob* %call30, %struct.fileblob** %29, align 8
  %30 = load %struct.fileblob**, %struct.fileblob*** %fbref.addr, align 8
  %31 = load %struct.fileblob*, %struct.fileblob** %30, align 8
  %cmp31 = icmp eq %struct.fileblob* %31, null
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.then.29
  store i32 -1, i32* %retval
  br label %return

if.end.34:                                        ; preds = %if.then.29
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %sw.bb.26
  %32 = load i32, i32* %length.addr, align 4
  store i32 %32, i32* %todo, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.35
  %33 = load i32, i32* %todo, align 4
  %tobool = icmp ne i32 %33, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call36 = call i32 @fgetc(%struct._IO_FILE* %34)
  store i32 %call36, i32* %c, align 4
  %cmp37 = icmp eq i32 %call36, -1
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %for.body
  br label %for.end

if.end.40:                                        ; preds = %for.body
  %35 = load %struct.fileblob**, %struct.fileblob*** %fbref.addr, align 8
  %36 = load %struct.fileblob*, %struct.fileblob** %35, align 8
  %37 = bitcast i32* %c to i8*
  %call41 = call i32 @fileblobAddData(%struct.fileblob* %36, i8* %37, i64 1)
  br label %for.inc

for.inc:                                          ; preds = %if.end.40
  %38 = load i32, i32* %todo, align 4
  %dec = add i32 %38, -1
  store i32 %dec, i32* %todo, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.39, %for.cond
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %39 = load i16, i16* %tag.addr, align 2
  %conv42 = zext i16 %39 to i32
  %40 = load i16, i16* %type.addr, align 2
  %conv43 = zext i16 %40 to i32
  %41 = load i32, i32* %length.addr, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.20, i32 0, i32 0), i32 %conv42, i32 %conv43, i32 %41)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %for.end, %if.end.25
  %42 = load i64, i64* %fsize.addr, align 8
  %cmp44 = icmp sgt i64 %42, 0
  br i1 %cmp44, label %land.lhs.true, label %if.then.67

land.lhs.true:                                    ; preds = %sw.epilog
  %43 = load i32, i32* %length.addr, align 4
  %conv46 = sext i32 %43 to i64
  %cmp47 = icmp sge i64 %conv46, 0
  br i1 %cmp47, label %land.lhs.true.49, label %if.then.67

land.lhs.true.49:                                 ; preds = %land.lhs.true
  %44 = load i32, i32* %length.addr, align 4
  %conv50 = sext i32 %44 to i64
  %45 = load i64, i64* %fsize.addr, align 8
  %cmp51 = icmp sle i64 %conv50, %45
  br i1 %cmp51, label %land.lhs.true.53, label %if.then.67

land.lhs.true.53:                                 ; preds = %land.lhs.true.49
  %46 = load i64, i64* %offset, align 8
  %cmp54 = icmp sge i64 %46, 0
  br i1 %cmp54, label %land.lhs.true.56, label %if.then.67

land.lhs.true.56:                                 ; preds = %land.lhs.true.53
  %47 = load i64, i64* %offset, align 8
  %48 = load i32, i32* %length.addr, align 4
  %conv57 = sext i32 %48 to i64
  %add58 = add nsw i64 %47, %conv57
  %49 = load i64, i64* %fsize.addr, align 8
  %add59 = add nsw i64 0, %49
  %cmp60 = icmp sle i64 %add58, %add59
  br i1 %cmp60, label %land.lhs.true.62, label %if.then.67

land.lhs.true.62:                                 ; preds = %land.lhs.true.56
  %50 = load i64, i64* %offset, align 8
  %51 = load i32, i32* %length.addr, align 4
  %conv63 = sext i32 %51 to i64
  %add64 = add nsw i64 %50, %conv63
  %cmp65 = icmp sge i64 %add64, 0
  br i1 %cmp65, label %if.end.68, label %if.then.67

if.then.67:                                       ; preds = %land.lhs.true.62, %land.lhs.true.56, %land.lhs.true.53, %land.lhs.true.49, %land.lhs.true, %sw.epilog
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.21, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.68:                                        ; preds = %land.lhs.true.62
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %53 = load i64, i64* %offset, align 8
  %54 = load i32, i32* %length.addr, align 4
  %conv69 = sext i32 %54 to i64
  %add70 = add nsw i64 %53, %conv69
  %call71 = call i32 @fseek(%struct._IO_FILE* %52, i64 %add70, i32 0)
  %cmp72 = icmp slt i32 %call71, 0
  br i1 %cmp72, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %if.end.68
  store i32 -1, i32* %retval
  br label %return

if.end.75:                                        ; preds = %if.end.68
  %55 = bitcast i16* %i16 to i8*
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call76 = call i64 @fread(i8* %55, i64 2, i64 1, %struct._IO_FILE* %56)
  %cmp77 = icmp ne i64 %call76, 1
  br i1 %cmp77, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %if.end.75
  store i32 -1, i32* %retval
  br label %return

if.end.80:                                        ; preds = %if.end.75
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.80, %if.then.79, %if.then.74, %if.then.67, %if.then.33, %if.then.23, %if.then.15, %if.then.8, %if.then
  %57 = load i32, i32* %retval
  ret i32 %57
}

declare i8* @cli_gentemp(i8*) #2

declare i32 @open(i8*, i32, ...) #2

declare i32 @cli_readn(i32, i8*, i32) #2

declare i32 @cli_writen(i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @free(i8*) #1

declare i8* @fileblobGetFilename(%struct.fileblob*) #2

declare void @fileblobSetFilename(%struct.fileblob*, i8*, i8*) #2

declare i64 @ftell(%struct._IO_FILE*) #2

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #2

declare i8* @cli_malloc(i64) #2

declare i32 @fgetc(%struct._IO_FILE*) #2

declare i32 @fileblobAddData(%struct.fileblob*, i8*, i64) #2

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
