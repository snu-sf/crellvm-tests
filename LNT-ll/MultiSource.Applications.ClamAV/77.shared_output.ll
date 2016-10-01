; ModuleID = './MultiSource.Applications.ClamAV/77.shared_output.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.flock = type { i16, i16, i64, i64, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@logg_fd = global %struct._IO_FILE* null, align 8
@logg_verbose = global i16 0, align 2
@logg_lock = global i16 1, align 2
@logg_time = global i16 0, align 2
@logg_foreground = global i16 1, align 2
@logg_size = global i32 0, align 4
@logg_file = global i8* null, align 8
@mprintf_disabled = global i16 0, align 2
@mprintf_verbose = global i16 0, align 2
@mprintf_quiet = global i16 0, align 2
@mprintf_stdout = global i16 0, align 2
@.str = private unnamed_addr constant [3 x i8] c"at\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"ERROR: Can't open %s in append mode (check permissions!).\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Log size = %u, max = %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"LOGGING DISABLED (Maximal log file size exceeded).\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"%s -> \00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"ERROR: \00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"WARNING: \00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str.8 = private unnamed_addr constant [10 x i8] c"ERROR: %s\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"WARNING: %s\00", align 1

; Function Attrs: nounwind uwtable
define i32 @mdprintf(i32 %desc, i8* %str, ...) #0 {
entry:
  %retval = alloca i32, align 4
  %desc.addr = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %buff = alloca [512 x i8], align 16
  %bytes = alloca i32, align 4
  store i32 %desc, i32* %desc.addr, align 4
  store i8* %str, i8** %str.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %arraydecay2 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %0 = load i8*, i8** %str.addr, align 8
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %call = call i32 @vsnprintf(i8* %arraydecay2, i64 512, i8* %0, %struct.__va_list_tag* %arraydecay3) #1
  store i32 %call, i32* %bytes, align 4
  %arraydecay4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay45 = bitcast %struct.__va_list_tag* %arraydecay4 to i8*
  call void @llvm.va_end(i8* %arraydecay45)
  %1 = load i32, i32* %bytes, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %bytes, align 4
  store i32 %2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %bytes, align 4
  %cmp6 = icmp sge i32 %3, 512
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  store i32 511, i32* %bytes, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end
  %4 = load i32, i32* %desc.addr, align 4
  %arraydecay9 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %5 = load i32, i32* %bytes, align 4
  %conv = sext i32 %5 to i64
  %call10 = call i64 @send(i32 %4, i8* %arraydecay9, i64 %conv, i32 0)
  %conv11 = trunc i64 %call10 to i32
  store i32 %conv11, i32* %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #1

; Function Attrs: nounwind
declare i32 @vsnprintf(i8*, i64, i8*, %struct.__va_list_tag*) #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #1

declare i64 @send(i32, i8*, i64, i32) #3

; Function Attrs: nounwind uwtable
define void @logg_close() #0 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @logg_fd, align 8
  %tobool = icmp ne %struct._IO_FILE* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @logg_fd, align 8
  %call = call i32 @fclose(%struct._IO_FILE* %1)
  store %struct._IO_FILE* null, %struct._IO_FILE** @logg_fd, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @fclose(%struct._IO_FILE*) #3

; Function Attrs: nounwind uwtable
define i32 @logg(i8* %str, ...) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %argscpy = alloca [1 x %struct.__va_list_tag], align 16
  %argsout = alloca [1 x %struct.__va_list_tag], align 16
  %fl = alloca %struct.flock, align 8
  %pt = alloca i8*, align 8
  %timestr = alloca i8*, align 8
  %vbuff = alloca [1025 x i8], align 16
  %currtime = alloca i64, align 8
  %sb = alloca %struct.stat, align 8
  %old_umask = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %argscpy, i32 0, i32 0
  %arraydecay23 = bitcast %struct.__va_list_tag* %arraydecay2 to i8*
  call void @llvm.va_start(i8* %arraydecay23)
  %arraydecay4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %argsout, i32 0, i32 0
  %arraydecay45 = bitcast %struct.__va_list_tag* %arraydecay4 to i8*
  call void @llvm.va_start(i8* %arraydecay45)
  %0 = load i8*, i8** @logg_file, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.end.101

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @logg_fd, align 8
  %tobool6 = icmp ne %struct._IO_FILE* %1, null
  br i1 %tobool6, label %if.end.21, label %if.then.7

if.then.7:                                        ; preds = %if.then
  %call = call i32 @umask(i32 31) #1
  store i32 %call, i32* %old_umask, align 4
  %2 = load i8*, i8** @logg_file, align 8
  %call8 = call %struct._IO_FILE* @fopen(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0))
  store %struct._IO_FILE* %call8, %struct._IO_FILE** @logg_fd, align 8
  %cmp = icmp eq %struct._IO_FILE* %call8, null
  br i1 %cmp, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then.7
  %3 = load i32, i32* %old_umask, align 4
  %call10 = call i32 @umask(i32 %3) #1
  %4 = load i8*, i8** @logg_file, align 8
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i32 0, i32 0), i8* %4)
  store i32 -1, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then.7
  %5 = load i32, i32* %old_umask, align 4
  %call12 = call i32 @umask(i32 %5) #1
  br label %if.end

if.end:                                           ; preds = %if.else
  %6 = load i16, i16* @logg_lock, align 2
  %tobool13 = icmp ne i16 %6, 0
  br i1 %tobool13, label %if.then.14, label %if.end.20

if.then.14:                                       ; preds = %if.end
  %7 = bitcast %struct.flock* %fl to i8*
  call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 32, i32 8, i1 false)
  %l_type = getelementptr inbounds %struct.flock, %struct.flock* %fl, i32 0, i32 0
  store i16 1, i16* %l_type, align 2
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @logg_fd, align 8
  %call15 = call i32 @fileno(%struct._IO_FILE* %8) #1
  %call16 = call i32 (i32, i32, ...) @fcntl(i32 %call15, i32 6, %struct.flock* %fl)
  %cmp17 = icmp eq i32 %call16, -1
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.then.14
  store i32 -1, i32* %retval
  br label %return

if.end.19:                                        ; preds = %if.then.14
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.end
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.then
  %9 = load i32, i32* @logg_size, align 4
  %tobool22 = icmp ne i32 %9, 0
  br i1 %tobool22, label %if.then.23, label %if.end.37

if.then.23:                                       ; preds = %if.end.21
  %10 = load i8*, i8** @logg_file, align 8
  %call24 = call i32 @stat(i8* %10, %struct.stat* %sb) #1
  %cmp25 = icmp ne i32 %call24, -1
  br i1 %cmp25, label %if.then.26, label %if.end.36

if.then.26:                                       ; preds = %if.then.23
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %sb, i32 0, i32 8
  %11 = load i64, i64* %st_size, align 8
  %conv = trunc i64 %11 to i32
  %12 = load i32, i32* @logg_size, align 4
  %cmp27 = icmp ugt i32 %conv, %12
  br i1 %cmp27, label %if.then.29, label %if.end.35

if.then.29:                                       ; preds = %if.then.26
  store i8* null, i8** @logg_file, align 8
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @logg_fd, align 8
  %st_size30 = getelementptr inbounds %struct.stat, %struct.stat* %sb, i32 0, i32 8
  %14 = load i64, i64* %st_size30, align 8
  %conv31 = trunc i64 %14 to i32
  %15 = load i32, i32* @logg_size, align 4
  %call32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0), i32 %conv31, i32 %15)
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @logg_fd, align 8
  %call33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i32 0, i32 0))
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @logg_fd, align 8
  %call34 = call i32 @fclose(%struct._IO_FILE* %17)
  store %struct._IO_FILE* null, %struct._IO_FILE** @logg_fd, align 8
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.29, %if.then.26
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.then.23
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.end.21
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @logg_fd, align 8
  %tobool38 = icmp ne %struct._IO_FILE* %18, null
  br i1 %tobool38, label %if.then.39, label %if.end.100

if.then.39:                                       ; preds = %if.end.37
  %19 = load i16, i16* @logg_time, align 2
  %conv40 = sext i16 %19 to i32
  %tobool41 = icmp ne i32 %conv40, 0
  br i1 %tobool41, label %land.lhs.true, label %if.end.55

land.lhs.true:                                    ; preds = %if.then.39
  %20 = load i8*, i8** %str.addr, align 8
  %21 = load i8, i8* %20, align 1
  %conv42 = sext i8 %21 to i32
  %cmp43 = icmp ne i32 %conv42, 42
  br i1 %cmp43, label %if.then.47, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %22 = load i16, i16* @logg_verbose, align 2
  %conv45 = sext i16 %22 to i32
  %tobool46 = icmp ne i32 %conv45, 0
  br i1 %tobool46, label %if.then.47, label %if.end.55

if.then.47:                                       ; preds = %lor.lhs.false, %land.lhs.true
  %call48 = call i64 @time(i64* %currtime) #1
  %call49 = call i8* @ctime(i64* %currtime) #1
  store i8* %call49, i8** %pt, align 8
  %23 = load i8*, i8** %pt, align 8
  %call50 = call i64 @strlen(i8* %23) #5
  %call51 = call noalias i8* @calloc(i64 %call50, i64 1) #1
  store i8* %call51, i8** %timestr, align 8
  %24 = load i8*, i8** %timestr, align 8
  %25 = load i8*, i8** %pt, align 8
  %26 = load i8*, i8** %pt, align 8
  %call52 = call i64 @strlen(i8* %26) #5
  %sub = sub i64 %call52, 1
  %call53 = call i8* @strncpy(i8* %24, i8* %25, i64 %sub) #1
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @logg_fd, align 8
  %28 = load i8*, i8** %timestr, align 8
  %call54 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* %28)
  %29 = load i8*, i8** %timestr, align 8
  call void @free(i8* %29) #1
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.47, %lor.lhs.false, %if.then.39
  %30 = load i8*, i8** %str.addr, align 8
  %call56 = call i8* @gettext(i8* %30) #1
  %31 = load i8*, i8** %str.addr, align 8
  %32 = load i8, i8* %31, align 1
  %conv57 = sext i8 %32 to i32
  %cmp58 = icmp eq i32 %conv57, 33
  br i1 %cmp58, label %if.then.60, label %if.else.64

if.then.60:                                       ; preds = %if.end.55
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @logg_fd, align 8
  %call61 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0))
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @logg_fd, align 8
  %35 = load i8*, i8** %str.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %35, i64 1
  %arraydecay62 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %call63 = call i32 @vfprintf(%struct._IO_FILE* %34, i8* %add.ptr, %struct.__va_list_tag* %arraydecay62)
  br label %if.end.98

if.else.64:                                       ; preds = %if.end.55
  %36 = load i8*, i8** %str.addr, align 8
  %37 = load i8, i8* %36, align 1
  %conv65 = sext i8 %37 to i32
  %cmp66 = icmp eq i32 %conv65, 94
  br i1 %cmp66, label %if.then.68, label %if.else.73

if.then.68:                                       ; preds = %if.else.64
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @logg_fd, align 8
  %call69 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0))
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @logg_fd, align 8
  %40 = load i8*, i8** %str.addr, align 8
  %add.ptr70 = getelementptr inbounds i8, i8* %40, i64 1
  %arraydecay71 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %call72 = call i32 @vfprintf(%struct._IO_FILE* %39, i8* %add.ptr70, %struct.__va_list_tag* %arraydecay71)
  br label %if.end.97

if.else.73:                                       ; preds = %if.else.64
  %41 = load i8*, i8** %str.addr, align 8
  %42 = load i8, i8* %41, align 1
  %conv74 = sext i8 %42 to i32
  %cmp75 = icmp eq i32 %conv74, 42
  br i1 %cmp75, label %if.then.77, label %if.else.84

if.then.77:                                       ; preds = %if.else.73
  %43 = load i16, i16* @logg_verbose, align 2
  %tobool78 = icmp ne i16 %43, 0
  br i1 %tobool78, label %if.then.79, label %if.end.83

if.then.79:                                       ; preds = %if.then.77
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @logg_fd, align 8
  %45 = load i8*, i8** %str.addr, align 8
  %add.ptr80 = getelementptr inbounds i8, i8* %45, i64 1
  %arraydecay81 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %call82 = call i32 @vfprintf(%struct._IO_FILE* %44, i8* %add.ptr80, %struct.__va_list_tag* %arraydecay81)
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.79, %if.then.77
  br label %if.end.96

if.else.84:                                       ; preds = %if.else.73
  %46 = load i8*, i8** %str.addr, align 8
  %47 = load i8, i8* %46, align 1
  %conv85 = sext i8 %47 to i32
  %cmp86 = icmp eq i32 %conv85, 35
  br i1 %cmp86, label %if.then.88, label %if.else.92

if.then.88:                                       ; preds = %if.else.84
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @logg_fd, align 8
  %49 = load i8*, i8** %str.addr, align 8
  %add.ptr89 = getelementptr inbounds i8, i8* %49, i64 1
  %arraydecay90 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %call91 = call i32 @vfprintf(%struct._IO_FILE* %48, i8* %add.ptr89, %struct.__va_list_tag* %arraydecay90)
  br label %if.end.95

if.else.92:                                       ; preds = %if.else.84
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @logg_fd, align 8
  %51 = load i8*, i8** %str.addr, align 8
  %arraydecay93 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %call94 = call i32 @vfprintf(%struct._IO_FILE* %50, i8* %51, %struct.__va_list_tag* %arraydecay93)
  br label %if.end.95

if.end.95:                                        ; preds = %if.else.92, %if.then.88
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.95, %if.end.83
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.96, %if.then.68
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97, %if.then.60
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @logg_fd, align 8
  %call99 = call i32 @fflush(%struct._IO_FILE* %52)
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.98, %if.end.37
  br label %if.end.101

if.end.101:                                       ; preds = %if.end.100, %entry
  %53 = load i16, i16* @logg_foreground, align 2
  %tobool102 = icmp ne i16 %53, 0
  br i1 %tobool102, label %if.then.103, label %if.end.115

if.then.103:                                      ; preds = %if.end.101
  %54 = load i8*, i8** %str.addr, align 8
  %call104 = call i8* @gettext(i8* %54) #1
  %arraydecay105 = getelementptr inbounds [1025 x i8], [1025 x i8]* %vbuff, i32 0, i32 0
  %55 = load i8*, i8** %str.addr, align 8
  %arraydecay106 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %argsout, i32 0, i32 0
  %call107 = call i32 @vsnprintf(i8* %arraydecay105, i64 1024, i8* %55, %struct.__va_list_tag* %arraydecay106) #1
  %arrayidx = getelementptr inbounds [1025 x i8], [1025 x i8]* %vbuff, i32 0, i64 1024
  store i8 0, i8* %arrayidx, align 1
  %arrayidx108 = getelementptr inbounds [1025 x i8], [1025 x i8]* %vbuff, i32 0, i64 0
  %56 = load i8, i8* %arrayidx108, align 1
  %conv109 = sext i8 %56 to i32
  %cmp110 = icmp ne i32 %conv109, 35
  br i1 %cmp110, label %if.then.112, label %if.end.114

if.then.112:                                      ; preds = %if.then.103
  %arraydecay113 = getelementptr inbounds [1025 x i8], [1025 x i8]* %vbuff, i32 0, i32 0
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i8* %arraydecay113)
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.112, %if.then.103
  br label %if.end.115

if.end.115:                                       ; preds = %if.end.114, %if.end.101
  %arraydecay116 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay116117 = bitcast %struct.__va_list_tag* %arraydecay116 to i8*
  call void @llvm.va_end(i8* %arraydecay116117)
  %arraydecay118 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %argscpy, i32 0, i32 0
  %arraydecay118119 = bitcast %struct.__va_list_tag* %arraydecay118 to i8*
  call void @llvm.va_end(i8* %arraydecay118119)
  %arraydecay120 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %argsout, i32 0, i32 0
  %arraydecay120121 = bitcast %struct.__va_list_tag* %arraydecay120 to i8*
  call void @llvm.va_end(i8* %arraydecay120121)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.115, %if.then.18, %if.then.9
  %57 = load i32, i32* %retval
  ret i32 %57
}

; Function Attrs: nounwind
declare i32 @umask(i32) #2

declare %struct._IO_FILE* @fopen(i8*, i8*) #3

declare i32 @printf(i8*, ...) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

declare i32 @fcntl(i32, i32, ...) #3

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE*) #2

; Function Attrs: nounwind
declare i32 @stat(i8*, %struct.stat*) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: nounwind
declare i64 @time(i64*) #2

; Function Attrs: nounwind
declare i8* @ctime(i64*) #2

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) #3

declare i32 @fflush(%struct._IO_FILE*) #3

; Function Attrs: nounwind uwtable
define void @mprintf(i8* %str, ...) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %fd = alloca %struct._IO_FILE*, align 8
  %buff = alloca [512 x i8], align 16
  store i8* %str, i8** %str.addr, align 8
  %0 = load i16, i16* @mprintf_disabled, align 2
  %tobool = icmp ne i16 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.59

if.end:                                           ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %fd, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %arraydecay2 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %2 = load i8*, i8** %str.addr, align 8
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %call = call i32 @vsnprintf(i8* %arraydecay2, i64 512, i8* %2, %struct.__va_list_tag* %arraydecay3) #1
  %arraydecay4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay45 = bitcast %struct.__va_list_tag* %arraydecay4 to i8*
  call void @llvm.va_end(i8* %arraydecay45)
  %arrayidx = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 0
  %3 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 33
  br i1 %cmp, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end
  %4 = load i16, i16* @mprintf_stdout, align 2
  %tobool8 = icmp ne i16 %4, 0
  br i1 %tobool8, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %if.then.7
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  store %struct._IO_FILE* %5, %struct._IO_FILE** %fd, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.then.7
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %arrayidx11 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 1
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* %arrayidx11)
  br label %if.end.54

if.else:                                          ; preds = %if.end
  %arrayidx13 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 0
  %7 = load i8, i8* %arrayidx13, align 1
  %conv14 = sext i8 %7 to i32
  %cmp15 = icmp eq i32 %conv14, 64
  br i1 %cmp15, label %if.then.17, label %if.else.23

if.then.17:                                       ; preds = %if.else
  %8 = load i16, i16* @mprintf_stdout, align 2
  %tobool18 = icmp ne i16 %8, 0
  br i1 %tobool18, label %if.end.20, label %if.then.19

if.then.19:                                       ; preds = %if.then.17
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  store %struct._IO_FILE* %9, %struct._IO_FILE** %fd, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.then.17
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %arrayidx21 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 1
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* %arrayidx21)
  br label %if.end.53

if.else.23:                                       ; preds = %if.else
  %11 = load i16, i16* @mprintf_quiet, align 2
  %tobool24 = icmp ne i16 %11, 0
  br i1 %tobool24, label %if.end.52, label %if.then.25

if.then.25:                                       ; preds = %if.else.23
  %arrayidx26 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 0
  %12 = load i8, i8* %arrayidx26, align 1
  %conv27 = sext i8 %12 to i32
  %cmp28 = icmp eq i32 %conv27, 94
  br i1 %cmp28, label %if.then.30, label %if.else.36

if.then.30:                                       ; preds = %if.then.25
  %13 = load i16, i16* @mprintf_stdout, align 2
  %tobool31 = icmp ne i16 %13, 0
  br i1 %tobool31, label %if.end.33, label %if.then.32

if.then.32:                                       ; preds = %if.then.30
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  store %struct._IO_FILE* %14, %struct._IO_FILE** %fd, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %if.then.30
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %arrayidx34 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 1
  %call35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i8* %arrayidx34)
  br label %if.end.51

if.else.36:                                       ; preds = %if.then.25
  %arrayidx37 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 0
  %16 = load i8, i8* %arrayidx37, align 1
  %conv38 = sext i8 %16 to i32
  %cmp39 = icmp eq i32 %conv38, 42
  br i1 %cmp39, label %if.then.41, label %if.else.47

if.then.41:                                       ; preds = %if.else.36
  %17 = load i16, i16* @mprintf_verbose, align 2
  %tobool42 = icmp ne i16 %17, 0
  br i1 %tobool42, label %if.then.43, label %if.end.46

if.then.43:                                       ; preds = %if.then.41
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %arrayidx44 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 1
  %call45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i8* %arrayidx44)
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.43, %if.then.41
  br label %if.end.50

if.else.47:                                       ; preds = %if.else.36
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %arraydecay48 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %call49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i8* %arraydecay48)
  br label %if.end.50

if.end.50:                                        ; preds = %if.else.47, %if.end.46
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.end.33
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.else.23
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %if.end.20
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %if.end.10
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %cmp55 = icmp eq %struct._IO_FILE* %20, %21
  br i1 %cmp55, label %if.then.57, label %if.end.59

if.then.57:                                       ; preds = %if.end.54
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call58 = call i32 @fflush(%struct._IO_FILE* %22)
  br label %if.end.59

if.end.59:                                        ; preds = %if.then, %if.then.57, %if.end.54
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
