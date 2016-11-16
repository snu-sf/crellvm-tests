; ModuleID = './lib/xbackupfile.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [17 x i8] c"Memory exhausted\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"oflag & 0100\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"xbackupfile.c\00", align 1
@__PRETTY_FUNCTION__.create_file_for_backup = private unnamed_addr constant [72 x i8] c"int create_file_for_backup(const char *, int, mode_t, enum backup_type)\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"cannot get informations on file `%s'\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"cannot rename file `%s' as `%s'\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"cannot create file `%s'\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.7 = private unnamed_addr constant [19 x i8] c"restored file `%s'\00", align 1

; Function Attrs: nounwind uwtable
define i8* @xfind_backup_file_name(i8* %file, i32 %backup_type) #0 {
entry:
  %file.addr = alloca i8*, align 8
  %backup_type.addr = alloca i32, align 4
  %res = alloca i8*, align 8
  store i8* %file, i8** %file.addr, align 8
  store i32 %backup_type, i32* %backup_type.addr, align 4
  %0 = load i8*, i8** %file.addr, align 8
  %1 = load i32, i32* %backup_type.addr, align 4
  %call = call i8* @find_backup_file_name(i8* %0, i32 %1)
  store i8* %call, i8** %res, align 8
  %2 = load i8*, i8** %res, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0)) #5
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %call1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %res, align 8
  ret i8* %3
}

declare i8* @find_backup_file_name(i8*, i32) #1

declare void @error(i32, i32, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @create_file_for_backup(i8* %file, i32 %oflag, i32 %mode, i32 %backup_type) #0 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca i8*, align 8
  %oflag.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %backup_type.addr = alloca i32, align 4
  %fd = alloca i32, align 4
  %st = alloca %struct.stat, align 8
  %backup = alloca i8*, align 8
  store i8* %file, i8** %file.addr, align 8
  store i32 %oflag, i32* %oflag.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store i32 %backup_type, i32* %backup_type.addr, align 4
  %0 = load i32, i32* %oflag.addr, align 4
  %and = and i32 %0, 64
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 153, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @__PRETTY_FUNCTION__.create_file_for_backup, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %1, %cond.true
  %2 = load i32, i32* %backup_type.addr, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %3 = load i8*, i8** %file.addr, align 8
  %4 = load i32, i32* %oflag.addr, align 4
  %5 = load i32, i32* %mode.addr, align 4
  %call = call i32 (i8*, i32, ...) @open(i8* %3, i32 %4, i32 %5)
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %cond.end
  %6 = load i8*, i8** %file.addr, align 8
  %7 = load i32, i32* %oflag.addr, align 4
  %or = or i32 %7, 128
  %8 = load i32, i32* %mode.addr, align 4
  %call1 = call i32 (i8*, i32, ...) @open(i8* %6, i32 %or, i32 %8)
  store i32 %call1, i32* %fd, align 4
  %9 = load i32, i32* %fd, align 4
  %cmp2 = icmp slt i32 %9, 0
  br i1 %cmp2, label %land.lhs.true, label %if.end.19

land.lhs.true:                                    ; preds = %if.end
  %call3 = call i32* @__errno_location() #7
  %10 = load i32, i32* %call3, align 4
  %cmp4 = icmp eq i32 %10, 17
  br i1 %cmp4, label %if.then.5, label %if.end.19

if.then.5:                                        ; preds = %land.lhs.true
  %11 = load i8*, i8** %file.addr, align 8
  %call6 = call i32 @stat(i8* %11, %struct.stat* %st) #5
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %land.lhs.true.8, label %if.end.17

land.lhs.true.8:                                  ; preds = %if.then.5
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 3
  %12 = load i32, i32* %st_mode, align 4
  %and9 = and i32 %12, 61440
  %cmp10 = icmp eq i32 %and9, 32768
  br i1 %cmp10, label %if.then.11, label %if.end.17

if.then.11:                                       ; preds = %land.lhs.true.8
  %13 = load i8*, i8** %file.addr, align 8
  %14 = load i32, i32* %backup_type.addr, align 4
  %call12 = call i8* @find_backup_file_name(i8* %13, i32 %14)
  store i8* %call12, i8** %backup, align 8
  %15 = load i8*, i8** %file.addr, align 8
  %16 = load i8*, i8** %backup, align 8
  %call13 = call i32 @rename(i8* %15, i8* %16) #5
  %cmp14 = icmp ne i32 %call13, 0
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.then.11
  store i32 -1, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.then.11
  %17 = load i8*, i8** %backup, align 8
  call void @free(i8* %17) #5
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %land.lhs.true.8, %if.then.5
  %18 = load i8*, i8** %file.addr, align 8
  %19 = load i32, i32* %oflag.addr, align 4
  %20 = load i32, i32* %mode.addr, align 4
  %call18 = call i32 (i8*, i32, ...) @open(i8* %18, i32 %19, i32 %20)
  store i32 %call18, i32* %fd, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.17, %land.lhs.true, %if.end
  %21 = load i32, i32* %fd, align 4
  store i32 %21, i32* %retval
  br label %return

return:                                           ; preds = %if.end.19, %if.then.15, %if.then
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #3

declare i32 @open(i8*, i32, ...) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

; Function Attrs: nounwind
declare i32 @stat(i8*, %struct.stat*) #2

; Function Attrs: nounwind
declare i32 @rename(i8*, i8*) #2

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define %struct._IO_FILE* @fopen_backup(i8* %filename, i32 %backup_type) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %backup_type.addr = alloca i32, align 4
  %backup_name = alloca i8*, align 8
  %filestat = alloca %struct.stat, align 8
  %res = alloca %struct._IO_FILE*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i32 %backup_type, i32* %backup_type.addr, align 4
  store i8* null, i8** %backup_name, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call i32 @stat(i8* %0, %struct.stat* %filestat) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  %call1 = call i32* @__errno_location() #7
  %1 = load i32, i32* %call1, align 4
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then.4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %call2 = call i32* @__errno_location() #7
  %2 = load i32, i32* %call2, align 4
  %cmp3 = icmp eq i32 %2, 20
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %lor.lhs.false, %if.then
  store i32 0, i32* %backup_type.addr, align 4
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %call5 = call i32* @__errno_location() #7
  %3 = load i32, i32* %call5, align 4
  %call6 = call i8* @gettext(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0)) #5
  %4 = load i8*, i8** %filename.addr, align 8
  %call7 = call i8* @quotearg(i8* %4)
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %3, i8* %call6, i8* %call7)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %entry
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %filestat, i32 0, i32 3
  %5 = load i32, i32* %st_mode, align 4
  %and = and i32 %5, 61440
  %cmp9 = icmp eq i32 %and, 32768
  br i1 %cmp9, label %lor.lhs.false.10, label %if.then.13

lor.lhs.false.10:                                 ; preds = %if.end.8
  %6 = load i8*, i8** %filename.addr, align 8
  %call11 = call i32 @access(i8* %6, i32 2) #5
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %lor.lhs.false.10, %if.end.8
  store i32 0, i32* %backup_type.addr, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %lor.lhs.false.10
  %7 = load i32, i32* %backup_type.addr, align 4
  %cmp15 = icmp ne i32 %7, 0
  br i1 %cmp15, label %if.then.16, label %if.end.26

if.then.16:                                       ; preds = %if.end.14
  %8 = load i8*, i8** %filename.addr, align 8
  %9 = load i32, i32* %backup_type.addr, align 4
  %call17 = call i8* @xfind_backup_file_name(i8* %8, i32 %9)
  store i8* %call17, i8** %backup_name, align 8
  %10 = load i8*, i8** %filename.addr, align 8
  %11 = load i8*, i8** %backup_name, align 8
  %call18 = call i32 @rename(i8* %10, i8* %11) #5
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.end.25

if.then.20:                                       ; preds = %if.then.16
  %call21 = call i32* @__errno_location() #7
  %12 = load i32, i32* %call21, align 4
  %call22 = call i8* @gettext(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0)) #5
  %13 = load i8*, i8** %filename.addr, align 8
  %call23 = call i8* @quotearg(i8* %13)
  %14 = load i8*, i8** %backup_name, align 8
  %call24 = call i8* @quotearg(i8* %14)
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %12, i8* %call22, i8* %call23, i8* %call24)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.20, %if.then.16
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.end.14
  %15 = load i8*, i8** %filename.addr, align 8
  %call27 = call %struct._IO_FILE* @fopen(i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  store %struct._IO_FILE* %call27, %struct._IO_FILE** %res, align 8
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %res, align 8
  %tobool28 = icmp ne %struct._IO_FILE* %16, null
  br i1 %tobool28, label %if.end.48, label %if.then.29

if.then.29:                                       ; preds = %if.end.26
  %call30 = call i32* @__errno_location() #7
  %17 = load i32, i32* %call30, align 4
  %call31 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i32 0, i32 0)) #5
  %18 = load i8*, i8** %filename.addr, align 8
  %call32 = call i8* @quotearg(i8* %18)
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %17, i8* %call31, i8* %call32)
  %19 = load i8*, i8** %backup_name, align 8
  %tobool33 = icmp ne i8* %19, null
  br i1 %tobool33, label %if.then.34, label %if.end.47

if.then.34:                                       ; preds = %if.then.29
  %20 = load i8*, i8** %filename.addr, align 8
  %21 = load i8*, i8** %backup_name, align 8
  %call35 = call i32 @rename(i8* %20, i8* %21) #5
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.then.37, label %if.else.42

if.then.37:                                       ; preds = %if.then.34
  %call38 = call i32* @__errno_location() #7
  %22 = load i32, i32* %call38, align 4
  %call39 = call i8* @gettext(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0)) #5
  %23 = load i8*, i8** %filename.addr, align 8
  %call40 = call i8* @quotearg(i8* %23)
  %24 = load i8*, i8** %backup_name, align 8
  %call41 = call i8* @quotearg(i8* %24)
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %22, i8* %call39, i8* %call40, i8* %call41)
  br label %if.end.46

if.else.42:                                       ; preds = %if.then.34
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call43 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0)) #5
  %26 = load i8*, i8** %filename.addr, align 8
  %call44 = call i8* @quotearg(i8* %26)
  %call45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* %call43, i8* %call44)
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.42, %if.then.37
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.then.29
  call void @exit(i32 1) #6
  unreachable

if.end.48:                                        ; preds = %if.end.26
  %27 = load i8*, i8** %backup_name, align 8
  %tobool49 = icmp ne i8* %27, null
  br i1 %tobool49, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.end.48
  %28 = load i8*, i8** %backup_name, align 8
  call void @free(i8* %28) #5
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.50, %if.end.48
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %res, align 8
  ret %struct._IO_FILE* %29
}

declare i8* @quotearg(i8*) #1

; Function Attrs: nounwind
declare i32 @access(i8*, i32) #2

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
