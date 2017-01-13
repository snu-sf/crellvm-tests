; ModuleID = './MultiSource.Applications.ClamAV/74.shared_misc.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cl_cvd = type { i8*, i32, i32, i32, i8*, i8*, i8*, i32 }
%struct.cfgstruct = type { i8*, i8*, i32, i16, i16, %struct.cfgstruct*, %struct.cfgstruct* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.__dirstream = type opaque
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }

@.str = private unnamed_addr constant [26 x i8] c"/usr/local/etc/clamd.conf\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"DatabaseDirectory\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"DataDirectory\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"%s/daily.cvd\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"%s/daily.inc/daily.info\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"ClamAV devel-20071218/%d/%s\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"ClamAV devel-20071218\0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1

; Function Attrs: nounwind uwtable
define i8* @freshdbdir() #0 {
entry:
  %d1 = alloca %struct.cl_cvd*, align 8
  %d2 = alloca %struct.cl_cvd*, align 8
  %copt = alloca %struct.cfgstruct*, align 8
  %cpt = alloca %struct.cfgstruct*, align 8
  %foo = alloca %struct.stat, align 8
  %dbdir = alloca i8*, align 8
  %retdir = alloca i8*, align 8
  %daily = alloca i8*, align 8
  %call = call i8* @cl_retdbdir()
  store i8* %call, i8** %dbdir, align 8
  %call1 = call %struct.cfgstruct* @getcfg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i32 0, i32 0), i32 0)
  store %struct.cfgstruct* %call1, %struct.cfgstruct** %copt, align 8
  %tobool = icmp ne %struct.cfgstruct* %call1, null
  br i1 %tobool, label %if.then, label %if.end.49

if.then:                                          ; preds = %entry
  %0 = load %struct.cfgstruct*, %struct.cfgstruct** %copt, align 8
  %call2 = call %struct.cfgstruct* @cfgopt(%struct.cfgstruct* %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0))
  store %struct.cfgstruct* %call2, %struct.cfgstruct** %cpt, align 8
  %enabled = getelementptr inbounds %struct.cfgstruct, %struct.cfgstruct* %call2, i32 0, i32 3
  %1 = load i16, i16* %enabled, align 2
  %conv = sext i16 %1 to i32
  %tobool3 = icmp ne i32 %conv, 0
  br i1 %tobool3, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %2 = load %struct.cfgstruct*, %struct.cfgstruct** %copt, align 8
  %call4 = call %struct.cfgstruct* @cfgopt(%struct.cfgstruct* %2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0))
  store %struct.cfgstruct* %call4, %struct.cfgstruct** %cpt, align 8
  %enabled5 = getelementptr inbounds %struct.cfgstruct, %struct.cfgstruct* %call4, i32 0, i32 3
  %3 = load i16, i16* %enabled5, align 2
  %conv6 = sext i16 %3 to i32
  %tobool7 = icmp ne i32 %conv6, 0
  br i1 %tobool7, label %if.then.8, label %if.end.48

if.then.8:                                        ; preds = %lor.lhs.false, %if.then
  %4 = load i8*, i8** %dbdir, align 8
  %5 = load %struct.cfgstruct*, %struct.cfgstruct** %cpt, align 8
  %strarg = getelementptr inbounds %struct.cfgstruct, %struct.cfgstruct* %5, i32 0, i32 1
  %6 = load i8*, i8** %strarg, align 8
  %call9 = call i32 @strcmp(i8* %4, i8* %6) #6
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then.11, label %if.end.47

if.then.11:                                       ; preds = %if.then.8
  %7 = load %struct.cfgstruct*, %struct.cfgstruct** %cpt, align 8
  %strarg12 = getelementptr inbounds %struct.cfgstruct, %struct.cfgstruct* %7, i32 0, i32 1
  %8 = load i8*, i8** %strarg12, align 8
  %call13 = call i64 @strlen(i8* %8) #6
  %9 = load i8*, i8** %dbdir, align 8
  %call14 = call i64 @strlen(i8* %9) #6
  %add = add i64 %call13, %call14
  %add15 = add i64 %add, 30
  %call16 = call noalias i8* @malloc(i64 %add15) #7
  store i8* %call16, i8** %daily, align 8
  %10 = load i8*, i8** %daily, align 8
  %11 = load %struct.cfgstruct*, %struct.cfgstruct** %cpt, align 8
  %strarg17 = getelementptr inbounds %struct.cfgstruct, %struct.cfgstruct* %11, i32 0, i32 1
  %12 = load i8*, i8** %strarg17, align 8
  %call18 = call i32 (i8*, i8*, ...) @sprintf(i8* %10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i8* %12) #7
  %13 = load i8*, i8** %daily, align 8
  %call19 = call i32 @stat(i8* %13, %struct.stat* %foo) #7
  %cmp = icmp eq i32 %call19, -1
  br i1 %cmp, label %if.then.21, label %if.end

if.then.21:                                       ; preds = %if.then.11
  %14 = load i8*, i8** %daily, align 8
  %15 = load %struct.cfgstruct*, %struct.cfgstruct** %cpt, align 8
  %strarg22 = getelementptr inbounds %struct.cfgstruct, %struct.cfgstruct* %15, i32 0, i32 1
  %16 = load i8*, i8** %strarg22, align 8
  %call23 = call i32 (i8*, i8*, ...) @sprintf(i8* %14, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i32 0, i32 0), i8* %16) #7
  br label %if.end

if.end:                                           ; preds = %if.then.21, %if.then.11
  %17 = load i8*, i8** %daily, align 8
  %call24 = call %struct.cl_cvd* @cl_cvdhead(i8* %17)
  store %struct.cl_cvd* %call24, %struct.cl_cvd** %d1, align 8
  %tobool25 = icmp ne %struct.cl_cvd* %call24, null
  br i1 %tobool25, label %if.then.26, label %if.else.45

if.then.26:                                       ; preds = %if.end
  %18 = load i8*, i8** %daily, align 8
  %19 = load i8*, i8** %dbdir, align 8
  %call27 = call i32 (i8*, i8*, ...) @sprintf(i8* %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i8* %19) #7
  %20 = load i8*, i8** %daily, align 8
  %call28 = call i32 @stat(i8* %20, %struct.stat* %foo) #7
  %cmp29 = icmp eq i32 %call28, -1
  br i1 %cmp29, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %if.then.26
  %21 = load i8*, i8** %daily, align 8
  %22 = load i8*, i8** %dbdir, align 8
  %call32 = call i32 (i8*, i8*, ...) @sprintf(i8* %21, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i32 0, i32 0), i8* %22) #7
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.31, %if.then.26
  %23 = load i8*, i8** %daily, align 8
  %call34 = call %struct.cl_cvd* @cl_cvdhead(i8* %23)
  store %struct.cl_cvd* %call34, %struct.cl_cvd** %d2, align 8
  %tobool35 = icmp ne %struct.cl_cvd* %call34, null
  br i1 %tobool35, label %if.then.36, label %if.else

if.then.36:                                       ; preds = %if.end.33
  %24 = load i8*, i8** %daily, align 8
  call void @free(i8* %24) #7
  %25 = load %struct.cl_cvd*, %struct.cl_cvd** %d1, align 8
  %version = getelementptr inbounds %struct.cl_cvd, %struct.cl_cvd* %25, i32 0, i32 1
  %26 = load i32, i32* %version, align 4
  %27 = load %struct.cl_cvd*, %struct.cl_cvd** %d2, align 8
  %version37 = getelementptr inbounds %struct.cl_cvd, %struct.cl_cvd* %27, i32 0, i32 1
  %28 = load i32, i32* %version37, align 4
  %cmp38 = icmp ugt i32 %26, %28
  br i1 %cmp38, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %if.then.36
  %29 = load %struct.cfgstruct*, %struct.cfgstruct** %cpt, align 8
  %strarg41 = getelementptr inbounds %struct.cfgstruct, %struct.cfgstruct* %29, i32 0, i32 1
  %30 = load i8*, i8** %strarg41, align 8
  store i8* %30, i8** %dbdir, align 8
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.40, %if.then.36
  %31 = load %struct.cl_cvd*, %struct.cl_cvd** %d2, align 8
  call void @cl_cvdfree(%struct.cl_cvd* %31)
  br label %if.end.44

if.else:                                          ; preds = %if.end.33
  %32 = load i8*, i8** %daily, align 8
  call void @free(i8* %32) #7
  %33 = load %struct.cfgstruct*, %struct.cfgstruct** %cpt, align 8
  %strarg43 = getelementptr inbounds %struct.cfgstruct, %struct.cfgstruct* %33, i32 0, i32 1
  %34 = load i8*, i8** %strarg43, align 8
  store i8* %34, i8** %dbdir, align 8
  br label %if.end.44

if.end.44:                                        ; preds = %if.else, %if.end.42
  %35 = load %struct.cl_cvd*, %struct.cl_cvd** %d1, align 8
  call void @cl_cvdfree(%struct.cl_cvd* %35)
  br label %if.end.46

if.else.45:                                       ; preds = %if.end
  %36 = load i8*, i8** %daily, align 8
  call void @free(i8* %36) #7
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.45, %if.end.44
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.then.8
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %lor.lhs.false
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %entry
  %37 = load i8*, i8** %dbdir, align 8
  %call50 = call noalias i8* @strdup(i8* %37) #7
  store i8* %call50, i8** %retdir, align 8
  %38 = load %struct.cfgstruct*, %struct.cfgstruct** %copt, align 8
  %tobool51 = icmp ne %struct.cfgstruct* %38, null
  br i1 %tobool51, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.end.49
  %39 = load %struct.cfgstruct*, %struct.cfgstruct** %copt, align 8
  call void @freecfg(%struct.cfgstruct* %39)
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.52, %if.end.49
  %40 = load i8*, i8** %retdir, align 8
  ret i8* %40
}

declare i8* @cl_retdbdir() #1

declare %struct.cfgstruct* @getcfg(i8*, i32) #1

declare %struct.cfgstruct* @cfgopt(%struct.cfgstruct*, i8*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #3

; Function Attrs: nounwind
declare i32 @stat(i8*, %struct.stat*) #3

declare %struct.cl_cvd* @cl_cvdhead(i8*) #1

; Function Attrs: nounwind
declare void @free(i8*) #3

declare void @cl_cvdfree(%struct.cl_cvd*) #1

; Function Attrs: nounwind
declare noalias i8* @strdup(i8*) #3

declare void @freecfg(%struct.cfgstruct*) #1

; Function Attrs: nounwind uwtable
define void @print_version() #0 {
entry:
  %dbdir = alloca i8*, align 8
  %path = alloca i8*, align 8
  %daily = alloca %struct.cl_cvd*, align 8
  %foo = alloca %struct.stat, align 8
  %t = alloca i64, align 8
  %call = call i8* @freshdbdir()
  store i8* %call, i8** %dbdir, align 8
  %0 = load i8*, i8** %dbdir, align 8
  %call1 = call i64 @strlen(i8* %0) #6
  %add = add i64 %call1, 30
  %call2 = call noalias i8* @malloc(i64 %add) #7
  store i8* %call2, i8** %path, align 8
  %tobool = icmp ne i8* %call2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %dbdir, align 8
  call void @free(i8* %1) #7
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %path, align 8
  %3 = load i8*, i8** %dbdir, align 8
  %call3 = call i32 (i8*, i8*, ...) @sprintf(i8* %2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i8* %3) #7
  %4 = load i8*, i8** %path, align 8
  %call4 = call i32 @stat(i8* %4, %struct.stat* %foo) #7
  %cmp = icmp eq i32 %call4, -1
  br i1 %cmp, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %5 = load i8*, i8** %path, align 8
  %6 = load i8*, i8** %dbdir, align 8
  %call6 = call i32 (i8*, i8*, ...) @sprintf(i8* %5, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i32 0, i32 0), i8* %6) #7
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end
  %7 = load i8*, i8** %dbdir, align 8
  call void @free(i8* %7) #7
  %8 = load i8*, i8** %path, align 8
  %call8 = call %struct.cl_cvd* @cl_cvdhead(i8* %8)
  store %struct.cl_cvd* %call8, %struct.cl_cvd** %daily, align 8
  %tobool9 = icmp ne %struct.cl_cvd* %call8, null
  br i1 %tobool9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.end.7
  %9 = load %struct.cl_cvd*, %struct.cl_cvd** %daily, align 8
  %stime = getelementptr inbounds %struct.cl_cvd, %struct.cl_cvd* %9, i32 0, i32 7
  %10 = load i32, i32* %stime, align 4
  %conv = zext i32 %10 to i64
  store i64 %conv, i64* %t, align 8
  %11 = load %struct.cl_cvd*, %struct.cl_cvd** %daily, align 8
  %version = getelementptr inbounds %struct.cl_cvd, %struct.cl_cvd* %11, i32 0, i32 1
  %12 = load i32, i32* %version, align 4
  %call11 = call i8* @ctime(i64* %t) #7
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0), i32 %12, i8* %call11)
  %13 = load %struct.cl_cvd*, %struct.cl_cvd** %daily, align 8
  call void @cl_cvdfree(%struct.cl_cvd* %13)
  br label %if.end.14

if.else:                                          ; preds = %if.end.7
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.10
  %14 = load i8*, i8** %path, align 8
  call void @free(i8* %14) #7
  br label %return

return:                                           ; preds = %if.end.14, %if.then
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind
declare i8* @ctime(i64*) #3

; Function Attrs: nounwind uwtable
define i32 @filecopy(i8* %src, i8* %dest) #0 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca i8*, align 8
  %dest.addr = alloca i8*, align 8
  %buffer = alloca [8192 x i8], align 16
  %s = alloca i32, align 4
  %d = alloca i32, align 4
  %bytes = alloca i32, align 4
  %ret = alloca i32, align 4
  %sb = alloca %struct.stat, align 8
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
  %call1 = call i32 (i8*, i32, ...) @open(i8* %1, i32 577, i32 420)
  store i32 %call1, i32* %d, align 4
  %cmp2 = icmp eq i32 %call1, -1
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %2 = load i32, i32* %s, align 4
  %call4 = call i32 @close(i32 %2)
  store i32 -1, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end.18, %if.end.5
  %3 = load i32, i32* %s, align 4
  %arraydecay = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %call6 = call i64 @read(i32 %3, i8* %arraydecay, i64 8192)
  %conv = trunc i64 %call6 to i32
  store i32 %conv, i32* %bytes, align 4
  %cmp7 = icmp sgt i32 %conv, 0
  br i1 %cmp7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32, i32* %d, align 4
  %arraydecay9 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %5 = load i32, i32* %bytes, align 4
  %conv10 = sext i32 %5 to i64
  %call11 = call i64 @write(i32 %4, i8* %arraydecay9, i64 %conv10)
  %6 = load i32, i32* %bytes, align 4
  %conv12 = sext i32 %6 to i64
  %cmp13 = icmp slt i64 %call11, %conv12
  br i1 %cmp13, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %while.body
  %7 = load i32, i32* %s, align 4
  %call16 = call i32 @close(i32 %7)
  %8 = load i32, i32* %d, align 4
  %call17 = call i32 @close(i32 %8)
  store i32 -1, i32* %retval
  br label %return

if.end.18:                                        ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %9 = load i32, i32* %s, align 4
  %call19 = call i32 @close(i32 %9)
  %10 = load i32, i32* %d, align 4
  %call20 = call i32 @close(i32 %10)
  store i32 %call20, i32* %ret, align 4
  %11 = load i8*, i8** %src.addr, align 8
  %call21 = call i32 @stat(i8* %11, %struct.stat* %sb) #7
  %12 = load i8*, i8** %dest.addr, align 8
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %sb, i32 0, i32 3
  %13 = load i32, i32* %st_mode, align 4
  %call22 = call i32 @chmod(i8* %12, i32 %13) #7
  %14 = load i32, i32* %ret, align 4
  store i32 %14, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.15, %if.then.3, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

declare i32 @open(i8*, i32, ...) #1

declare i32 @close(i32) #1

declare i64 @read(i32, i8*, i64) #1

declare i64 @write(i32, i8*, i64) #1

; Function Attrs: nounwind
declare i32 @chmod(i8*, i32) #3

; Function Attrs: nounwind uwtable
define i32 @dircopy(i8* %src, i8* %dest) #0 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca i8*, align 8
  %dest.addr = alloca i8*, align 8
  %dd = alloca %struct.__dirstream*, align 8
  %dent = alloca %struct.dirent*, align 8
  %sb = alloca %struct.stat, align 8
  %spath = alloca [512 x i8], align 16
  %dpath = alloca [512 x i8], align 16
  store i8* %src, i8** %src.addr, align 8
  store i8* %dest, i8** %dest.addr, align 8
  %0 = load i8*, i8** %dest.addr, align 8
  %call = call i32 @stat(i8* %0, %struct.stat* %sb) #7
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %dest.addr, align 8
  %call1 = call i32 @mkdir(i8* %1, i32 493) #7
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  %2 = load i8*, i8** %src.addr, align 8
  %call4 = call %struct.__dirstream* @opendir(i8* %2)
  store %struct.__dirstream* %call4, %struct.__dirstream** %dd, align 8
  %cmp5 = icmp eq %struct.__dirstream* %call4, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.3
  store i32 -1, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end.3
  br label %while.cond

while.cond:                                       ; preds = %if.end.36, %if.then.18, %if.end.7
  %3 = load %struct.__dirstream*, %struct.__dirstream** %dd, align 8
  %call8 = call %struct.dirent* @readdir(%struct.__dirstream* %3)
  store %struct.dirent* %call8, %struct.dirent** %dent, align 8
  %tobool9 = icmp ne %struct.dirent* %call8, null
  br i1 %tobool9, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_ino = getelementptr inbounds %struct.dirent, %struct.dirent* %4, i32 0, i32 0
  %5 = load i64, i64* %d_ino, align 8
  %tobool10 = icmp ne i64 %5, 0
  br i1 %tobool10, label %if.then.11, label %if.end.36

if.then.11:                                       ; preds = %while.body
  %6 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name = getelementptr inbounds %struct.dirent, %struct.dirent* %6, i32 0, i32 4
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %d_name, i32 0, i32 0
  %call12 = call i32 @strcmp(i8* %arraydecay, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0)) #6
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %lor.lhs.false, label %if.then.18

lor.lhs.false:                                    ; preds = %if.then.11
  %7 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name14 = getelementptr inbounds %struct.dirent, %struct.dirent* %7, i32 0, i32 4
  %arraydecay15 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name14, i32 0, i32 0
  %call16 = call i32 @strcmp(i8* %arraydecay15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0)) #6
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %lor.lhs.false, %if.then.11
  br label %while.cond

if.end.19:                                        ; preds = %lor.lhs.false
  %arraydecay20 = getelementptr inbounds [512 x i8], [512 x i8]* %spath, i32 0, i32 0
  %8 = load i8*, i8** %src.addr, align 8
  %9 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name21 = getelementptr inbounds %struct.dirent, %struct.dirent* %9, i32 0, i32 4
  %arraydecay22 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name21, i32 0, i32 0
  %call23 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay20, i64 512, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i8* %8, i8* %arraydecay22) #7
  %arraydecay24 = getelementptr inbounds [512 x i8], [512 x i8]* %dpath, i32 0, i32 0
  %10 = load i8*, i8** %dest.addr, align 8
  %11 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name25 = getelementptr inbounds %struct.dirent, %struct.dirent* %11, i32 0, i32 4
  %arraydecay26 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name25, i32 0, i32 0
  %call27 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay24, i64 512, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i8* %10, i8* %arraydecay26) #7
  %arraydecay28 = getelementptr inbounds [512 x i8], [512 x i8]* %spath, i32 0, i32 0
  %arraydecay29 = getelementptr inbounds [512 x i8], [512 x i8]* %dpath, i32 0, i32 0
  %call30 = call i32 @filecopy(i8* %arraydecay28, i8* %arraydecay29)
  %cmp31 = icmp eq i32 %call30, -1
  br i1 %cmp31, label %if.then.32, label %if.end.35

if.then.32:                                       ; preds = %if.end.19
  %12 = load i8*, i8** %dest.addr, align 8
  %call33 = call i32 @cli_rmdirs(i8* %12)
  %13 = load %struct.__dirstream*, %struct.__dirstream** %dd, align 8
  %call34 = call i32 @closedir(%struct.__dirstream* %13)
  store i32 -1, i32* %retval
  br label %return

if.end.35:                                        ; preds = %if.end.19
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %14 = load %struct.__dirstream*, %struct.__dirstream** %dd, align 8
  %call37 = call i32 @closedir(%struct.__dirstream* %14)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.32, %if.then.6, %if.then.2
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind
declare i32 @mkdir(i8*, i32) #3

declare %struct.__dirstream* @opendir(i8*) #1

declare %struct.dirent* @readdir(%struct.__dirstream*) #1

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #3

declare i32 @cli_rmdirs(i8*) #1

declare i32 @closedir(%struct.__dirstream*) #1

; Function Attrs: nounwind uwtable
define i32 @isnumb(i8* %str) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i8*, i8** %str.addr, align 8
  %1 = load i8, i8* %0, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i8*, i8** %str.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %and = and i32 %conv, 255
  %idxprom = sext i32 %and to i64
  %call = call i16** @__ctype_b_loc() #8
  %4 = load i16*, i16** %call, align 8
  %arrayidx = getelementptr inbounds i16, i16* %4, i64 %idxprom
  %5 = load i16, i16* %arrayidx, align 2
  %conv1 = zext i16 %5 to i32
  %and2 = and i32 %conv1, 2048
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body
  %6 = load i8*, i8** %str.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %str.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #4

; Function Attrs: nounwind uwtable
define i32 @cvd_unpack(i8* %cvd, i8* %destdir) #0 {
entry:
  %retval = alloca i32, align 4
  %cvd.addr = alloca i8*, align 8
  %destdir.addr = alloca i8*, align 8
  %fd = alloca i32, align 4
  store i8* %cvd, i8** %cvd.addr, align 8
  store i8* %destdir, i8** %destdir.addr, align 8
  %0 = load i8*, i8** %cvd.addr, align 8
  %call = call i32 (i8*, i32, ...) @open(i8* %0, i32 0)
  store i32 %call, i32* %fd, align 4
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %fd, align 4
  %call1 = call i64 @lseek(i32 %1, i64 512, i32 0) #7
  %cmp2 = icmp eq i64 %call1, -1
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %2 = load i32, i32* %fd, align 4
  %call4 = call i32 @close(i32 %2)
  store i32 -1, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %3 = load i32, i32* %fd, align 4
  %4 = load i8*, i8** %destdir.addr, align 8
  %call6 = call i32 @cli_untgz(i32 %3, i8* %4)
  %cmp7 = icmp eq i32 %call6, -1
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.5
  store i32 -1, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end.5
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then.8, %if.then.3, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) #3

declare i32 @cli_untgz(i32, i8*) #1

; Function Attrs: nounwind uwtable
define void @daemonize() #0 {
entry:
  %i = alloca i32, align 4
  %call = call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i32 2)
  store i32 %call, i32* %i, align 4
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %0 = load i32, i32* %i, align 4
  %cmp1 = icmp sle i32 %0, 2
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %call2 = call i32 @close(i32 %1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.9

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %i, align 4
  %call3 = call i32 @dup2(i32 %3, i32 0) #7
  %4 = load i32, i32* %i, align 4
  %call4 = call i32 @dup2(i32 %4, i32 1) #7
  %5 = load i32, i32* %i, align 4
  %call5 = call i32 @dup2(i32 %5, i32 2) #7
  %6 = load i32, i32* %i, align 4
  %cmp6 = icmp sgt i32 %6, 2
  br i1 %cmp6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.else
  %7 = load i32, i32* %i, align 4
  %call8 = call i32 @close(i32 %7)
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.else
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %for.end
  %call10 = call i32 @fork() #7
  %tobool = icmp ne i32 %call10, 0
  br i1 %tobool, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.9
  call void @exit(i32 0) #9
  unreachable

if.end.12:                                        ; preds = %if.end.9
  %call13 = call i32 @setsid() #7
  ret void
}

; Function Attrs: nounwind
declare i32 @dup2(i32, i32) #3

; Function Attrs: nounwind
declare i32 @fork() #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) #5

; Function Attrs: nounwind
declare i32 @setsid() #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone }
attributes #9 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
