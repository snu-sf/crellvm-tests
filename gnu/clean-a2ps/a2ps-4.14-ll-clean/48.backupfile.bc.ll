; ModuleID = './lib/backupfile.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__dirstream = type opaque
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }

@.str = private unnamed_addr constant [2 x i8] c"~\00", align 1
@simple_backup_suffix = global i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c".~%d~\00", align 1
@backup_args = internal constant [9 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0), i8* null], align 16
@backup_types = internal constant [8 x i32] [i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3], align 16
@argmatch_die = external global void ()*, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"$VERSION_CONTROL\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"VERSION_CONTROL\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"simple\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"never\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"existing\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"nil\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"numbered\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"t\00", align 1

; Function Attrs: nounwind uwtable
define i8* @find_backup_file_name(i8* %file, i32 %backup_type) #0 {
entry:
  %file.addr = alloca i8*, align 8
  %backup_type.addr = alloca i32, align 4
  %backup_suffix_size_max = alloca i64, align 8
  %file_len = alloca i64, align 8
  %numbered_suffix_size_max = alloca i64, align 8
  %s = alloca i8*, align 8
  %suffix = alloca i8*, align 8
  %highest_backup = alloca i32, align 4
  %dir_len = alloca i64, align 8
  %numbered_suffix = alloca i8*, align 8
  store i8* %file, i8** %file.addr, align 8
  store i32 %backup_type, i32* %backup_type.addr, align 4
  %0 = load i8*, i8** %file.addr, align 8
  %call = call i64 @strlen(i8* %0) #4
  store i64 %call, i64* %file_len, align 8
  store i64 15, i64* %numbered_suffix_size_max, align 8
  %1 = load i8*, i8** @simple_backup_suffix, align 8
  store i8* %1, i8** %suffix, align 8
  %2 = load i8*, i8** @simple_backup_suffix, align 8
  %call1 = call i64 @strlen(i8* %2) #4
  %add = add i64 %call1, 1
  store i64 %add, i64* %backup_suffix_size_max, align 8
  %3 = load i64, i64* %backup_suffix_size_max, align 8
  %4 = load i64, i64* %numbered_suffix_size_max, align 8
  %cmp = icmp ult i64 %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i64, i64* %numbered_suffix_size_max, align 8
  store i64 %5, i64* %backup_suffix_size_max, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i64, i64* %file_len, align 8
  %7 = load i64, i64* %backup_suffix_size_max, align 8
  %add2 = add i64 %6, %7
  %8 = load i64, i64* %numbered_suffix_size_max, align 8
  %add3 = add i64 %add2, %8
  %call4 = call noalias i8* @malloc(i64 %add3) #5
  store i8* %call4, i8** %s, align 8
  %9 = load i8*, i8** %s, align 8
  %tobool = icmp ne i8* %9, null
  br i1 %tobool, label %if.then.5, label %if.end.23

if.then.5:                                        ; preds = %if.end
  %10 = load i8*, i8** %s, align 8
  %11 = load i8*, i8** %file.addr, align 8
  %call6 = call i8* @strcpy(i8* %10, i8* %11) #5
  %12 = load i32, i32* %backup_type.addr, align 4
  %cmp7 = icmp ne i32 %12, 1
  br i1 %cmp7, label %if.then.8, label %if.end.22

if.then.8:                                        ; preds = %if.then.5
  %13 = load i8*, i8** %s, align 8
  %call9 = call i8* @base_name(i8* %13)
  %14 = load i8*, i8** %s, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %call9 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %14 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %dir_len, align 8
  %15 = load i8*, i8** %s, align 8
  %16 = load i64, i64* %dir_len, align 8
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 %16
  %call10 = call i8* @strcpy(i8* %add.ptr, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #5
  %17 = load i8*, i8** %file.addr, align 8
  %18 = load i64, i64* %dir_len, align 8
  %add.ptr11 = getelementptr inbounds i8, i8* %17, i64 %18
  %19 = load i8*, i8** %s, align 8
  %call12 = call i32 @max_backup_version(i8* %add.ptr11, i8* %19)
  store i32 %call12, i32* %highest_backup, align 4
  %20 = load i32, i32* %backup_type.addr, align 4
  %cmp13 = icmp eq i32 %20, 2
  br i1 %cmp13, label %land.lhs.true, label %if.then.15

land.lhs.true:                                    ; preds = %if.then.8
  %21 = load i32, i32* %highest_backup, align 4
  %cmp14 = icmp eq i32 %21, 0
  br i1 %cmp14, label %if.end.20, label %if.then.15

if.then.15:                                       ; preds = %land.lhs.true, %if.then.8
  %22 = load i8*, i8** %s, align 8
  %23 = load i64, i64* %file_len, align 8
  %24 = load i64, i64* %backup_suffix_size_max, align 8
  %add16 = add i64 %23, %24
  %add.ptr17 = getelementptr inbounds i8, i8* %22, i64 %add16
  store i8* %add.ptr17, i8** %numbered_suffix, align 8
  %25 = load i8*, i8** %numbered_suffix, align 8
  %26 = load i32, i32* %highest_backup, align 4
  %add18 = add nsw i32 %26, 1
  %call19 = call i32 (i8*, i8*, ...) @sprintf(i8* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i32 %add18) #5
  %27 = load i8*, i8** %numbered_suffix, align 8
  store i8* %27, i8** %suffix, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.15, %land.lhs.true
  %28 = load i8*, i8** %s, align 8
  %29 = load i8*, i8** %file.addr, align 8
  %call21 = call i8* @strcpy(i8* %28, i8* %29) #5
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.20, %if.then.5
  %30 = load i8*, i8** %s, align 8
  %31 = load i8*, i8** %suffix, align 8
  call void @addext(i8* %30, i8* %31, i32 126)
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.end
  %32 = load i8*, i8** %s, align 8
  ret i8* %32
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

declare i8* @base_name(i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @max_backup_version(i8* %file, i8* %dir) #0 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca i8*, align 8
  %dir.addr = alloca i8*, align 8
  %dirp = alloca %struct.__dirstream*, align 8
  %dp = alloca %struct.dirent*, align 8
  %highest_version = alloca i32, align 4
  %this_version = alloca i32, align 4
  %file_name_length = alloca i64, align 8
  store i8* %file, i8** %file.addr, align 8
  store i8* %dir, i8** %dir.addr, align 8
  %0 = load i8*, i8** %dir.addr, align 8
  %call = call %struct.__dirstream* @opendir(i8* %0)
  store %struct.__dirstream* %call, %struct.__dirstream** %dirp, align 8
  %1 = load %struct.__dirstream*, %struct.__dirstream** %dirp, align 8
  %tobool = icmp ne %struct.__dirstream* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %highest_version, align 4
  %2 = load i8*, i8** %file.addr, align 8
  %call1 = call i64 @strlen(i8* %2) #4
  store i64 %call1, i64* %file_name_length, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.12, %if.then.5, %if.end
  %3 = load %struct.__dirstream*, %struct.__dirstream** %dirp, align 8
  %call2 = call %struct.dirent* @readdir(%struct.__dirstream* %3)
  store %struct.dirent* %call2, %struct.dirent** %dp, align 8
  %cmp = icmp ne %struct.dirent* %call2, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct.dirent*, %struct.dirent** %dp, align 8
  %d_name = getelementptr inbounds %struct.dirent, %struct.dirent* %4, i32 0, i32 4
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %d_name, i32 0, i32 0
  %call3 = call i64 @strlen(i8* %arraydecay) #4
  %5 = load i64, i64* %file_name_length, align 8
  %add = add i64 %5, 4
  %cmp4 = icmp ult i64 %call3, %add
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %while.body
  br label %while.cond

if.end.6:                                         ; preds = %while.body
  %6 = load i8*, i8** %file.addr, align 8
  %7 = load %struct.dirent*, %struct.dirent** %dp, align 8
  %d_name7 = getelementptr inbounds %struct.dirent, %struct.dirent* %7, i32 0, i32 4
  %arraydecay8 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name7, i32 0, i32 0
  %8 = load i64, i64* %file_name_length, align 8
  %call9 = call i32 @version_number(i8* %6, i8* %arraydecay8, i64 %8)
  store i32 %call9, i32* %this_version, align 4
  %9 = load i32, i32* %this_version, align 4
  %10 = load i32, i32* %highest_version, align 4
  %cmp10 = icmp sgt i32 %9, %10
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.6
  %11 = load i32, i32* %this_version, align 4
  store i32 %11, i32* %highest_version, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.end.6
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %12 = load %struct.__dirstream*, %struct.__dirstream** %dirp, align 8
  %call13 = call i32 @closedir(%struct.__dirstream* %12)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %while.end
  store i32 0, i32* %retval
  br label %return

if.end.16:                                        ; preds = %while.end
  %13 = load i32, i32* %highest_version, align 4
  store i32 %13, i32* %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.then.15, %if.then
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

declare void @addext(i8*, i8*, i32) #3

; Function Attrs: nounwind uwtable
define i32 @get_version(i8* %context, i8* %version) #0 {
entry:
  %retval = alloca i32, align 4
  %context.addr = alloca i8*, align 8
  %version.addr = alloca i8*, align 8
  store i8* %context, i8** %context.addr, align 8
  store i8* %version, i8** %version.addr, align 8
  %0 = load i8*, i8** %version.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %version.addr, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 2, i32* %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  %3 = load i8*, i8** %context.addr, align 8
  %4 = load i8*, i8** %version.addr, align 8
  %5 = load void ()*, void ()** @argmatch_die, align 8
  %call = call i32 @__xargmatch_internal(i8* %3, i8* %4, i8** getelementptr inbounds ([9 x i8*], [9 x i8*]* @backup_args, i32 0, i32 0), i8* bitcast ([8 x i32]* @backup_types to i8*), i64 4, i32 1, void ()* %5)
  %idxprom = sext i32 %call to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* @backup_types, i32 0, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  store i32 %6, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

declare i32 @__xargmatch_internal(i8*, i8*, i8**, i8*, i64, i32, void ()*) #3

; Function Attrs: nounwind uwtable
define i32 @xget_version(i8* %context, i8* %version) #0 {
entry:
  %retval = alloca i32, align 4
  %context.addr = alloca i8*, align 8
  %version.addr = alloca i8*, align 8
  store i8* %context, i8** %context.addr, align 8
  store i8* %version, i8** %version.addr, align 8
  %0 = load i8*, i8** %version.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i8*, i8** %version.addr, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %tobool1 = icmp ne i32 %conv, 0
  br i1 %tobool1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %3 = load i8*, i8** %context.addr, align 8
  %4 = load i8*, i8** %version.addr, align 8
  %call = call i32 @get_version(i8* %3, i8* %4)
  store i32 %call, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %call2 = call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0)) #5
  %call3 = call i32 @get_version(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i8* %call2)
  store i32 %call3, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind
declare i8* @getenv(i8*) #2

declare %struct.__dirstream* @opendir(i8*) #3

declare %struct.dirent* @readdir(%struct.__dirstream*) #3

; Function Attrs: nounwind uwtable
define internal i32 @version_number(i8* %base, i8* %backup, i64 %base_length) #0 {
entry:
  %base.addr = alloca i8*, align 8
  %backup.addr = alloca i8*, align 8
  %base_length.addr = alloca i64, align 8
  %version = alloca i32, align 4
  %p = alloca i8*, align 8
  store i8* %base, i8** %base.addr, align 8
  store i8* %backup, i8** %backup.addr, align 8
  store i64 %base_length, i64* %base_length.addr, align 8
  store i32 0, i32* %version, align 4
  %0 = load i8*, i8** %base.addr, align 8
  %1 = load i8*, i8** %backup.addr, align 8
  %2 = load i64, i64* %base_length.addr, align 8
  %call = call i32 @strncmp(i8* %0, i8* %1, i64 %2) #4
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.23

land.lhs.true:                                    ; preds = %entry
  %3 = load i64, i64* %base_length.addr, align 8
  %4 = load i8*, i8** %backup.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %3
  %5 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %5 to i32
  %cmp1 = icmp eq i32 %conv, 46
  br i1 %cmp1, label %land.lhs.true.3, label %if.end.23

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %6 = load i64, i64* %base_length.addr, align 8
  %add = add i64 %6, 1
  %7 = load i8*, i8** %backup.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %7, i64 %add
  %8 = load i8, i8* %arrayidx4, align 1
  %conv5 = sext i8 %8 to i32
  %cmp6 = icmp eq i32 %conv5, 126
  br i1 %cmp6, label %if.then, label %if.end.23

if.then:                                          ; preds = %land.lhs.true.3
  %9 = load i64, i64* %base_length.addr, align 8
  %add8 = add i64 %9, 2
  %10 = load i8*, i8** %backup.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %10, i64 %add8
  store i8* %arrayidx9, i8** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %11 = load i8*, i8** %p, align 8
  %12 = load i8, i8* %11, align 1
  %conv10 = sext i8 %12 to i32
  %sub = sub i32 %conv10, 48
  %cmp11 = icmp ule i32 %sub, 9
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %version, align 4
  %mul = mul nsw i32 %13, 10
  %14 = load i8*, i8** %p, align 8
  %15 = load i8, i8* %14, align 1
  %conv13 = sext i8 %15 to i32
  %add14 = add nsw i32 %mul, %conv13
  %sub15 = sub nsw i32 %add14, 48
  store i32 %sub15, i32* %version, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load i8*, i8** %p, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %17, i64 0
  %18 = load i8, i8* %arrayidx16, align 1
  %conv17 = sext i8 %18 to i32
  %cmp18 = icmp ne i32 %conv17, 126
  br i1 %cmp18, label %if.then.22, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %19 = load i8*, i8** %p, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %19, i64 1
  %20 = load i8, i8* %arrayidx20, align 1
  %conv21 = sext i8 %20 to i32
  %tobool = icmp ne i32 %conv21, 0
  br i1 %tobool, label %if.then.22, label %if.end

if.then.22:                                       ; preds = %lor.lhs.false, %for.end
  store i32 0, i32* %version, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.22, %lor.lhs.false
  br label %if.end.23

if.end.23:                                        ; preds = %if.end, %land.lhs.true.3, %land.lhs.true, %entry
  %21 = load i32, i32* %version, align 4
  ret i32 %21
}

declare i32 @closedir(%struct.__dirstream*) #3

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
