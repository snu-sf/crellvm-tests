; ModuleID = './MultiSource.Applications.obsequi/1.utils.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@_fatal_error_aux.err_file = internal global %struct._IO_FILE* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"WARNING: \00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"ERROR: \00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c".fatal_error\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [31 x i8] c"Couldn't open \22.fatal_error\22.\0A\00", align 1
@.str.5 = private unnamed_addr constant [83 x i8] c"/home/juneyoung.lee/undef/llvm-test-suite/MultiSource/Applications/obsequi/utils.c\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"size == -1.\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Log file getting too large.\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"> File: %s, Line: %d.\0A\00", align 1
@u64bit_to_string.big_num = internal global [80 x i8] zeroinitializer, align 16
@.str.9 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c",%03d\00", align 1

; Function Attrs: nounwind uwtable
define void @_fatal_error_aux(i8* %file, i32 %line, i32 %err_num, i8* %format, ...) #0 {
entry:
  %file.addr = alloca i8*, align 8
  %line.addr = alloca i32, align 4
  %err_num.addr = alloca i32, align 4
  %format.addr = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %msg_type = alloca i8*, align 8
  %size = alloca i32, align 4
  store i8* %file, i8** %file.addr, align 8
  store i32 %line, i32* %line.addr, align 4
  store i32 %err_num, i32* %err_num.addr, align 4
  store i8* %format, i8** %format.addr, align 8
  %0 = load i32, i32* %err_num.addr, align 4
  %cmp = icmp eq i32 %0, 0
  %cond = select i1 %cmp, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0)
  store i8* %cond, i8** %msg_type, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @_fatal_error_aux.err_file, align 8
  %cmp1 = icmp eq %struct._IO_FILE* %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** @_fatal_error_aux.err_file, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @_fatal_error_aux.err_file, align 8
  %cmp2 = icmp eq %struct._IO_FILE* %2, null
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  %4 = load i32, i32* %err_num.addr, align 4
  %cmp6 = icmp eq i32 %4, 0
  br i1 %cmp6, label %if.then.7, label %if.end.24

if.then.7:                                        ; preds = %if.end.5
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @_fatal_error_aux.err_file, align 8
  %call8 = call i64 @ftell(%struct._IO_FILE* %5)
  %conv = trunc i64 %call8 to i32
  store i32 %conv, i32* %size, align 4
  %6 = load i32, i32* %size, align 4
  %cmp9 = icmp eq i32 %6, -1
  br i1 %cmp9, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.then.7
  call void (i8*, i32, i32, i8*, ...) @_fatal_error_aux(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.5, i32 0, i32 0), i32 36, i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.23

if.else:                                          ; preds = %if.then.7
  %7 = load i32, i32* %size, align 4
  %cmp12 = icmp sgt i32 %7, 33556432
  br i1 %cmp12, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %if.else
  br label %if.end.41

if.else.15:                                       ; preds = %if.else
  %8 = load i32, i32* %size, align 4
  %cmp16 = icmp sgt i32 %8, 33554432
  br i1 %cmp16, label %if.then.18, label %if.end.21

if.then.18:                                       ; preds = %if.else.15
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i32 0, i32 0))
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @_fatal_error_aux.err_file, align 8
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.18, %if.else.15
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.then.11
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.end.5
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %12 = load i8*, i8** %msg_type, align 8
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* %12)
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @_fatal_error_aux.err_file, align 8
  %14 = load i8*, i8** %msg_type, align 8
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* %14)
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay27 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay27)
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %16 = load i8*, i8** %format.addr, align 8
  %arraydecay28 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %call29 = call i32 @vfprintf(%struct._IO_FILE* %15, i8* %16, %struct.__va_list_tag* %arraydecay28)
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @_fatal_error_aux.err_file, align 8
  %18 = load i8*, i8** %format.addr, align 8
  %arraydecay30 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %call31 = call i32 @vfprintf(%struct._IO_FILE* %17, i8* %18, %struct.__va_list_tag* %arraydecay30)
  %arraydecay32 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay3233 = bitcast %struct.__va_list_tag* %arraydecay32 to i8*
  call void @llvm.va_end(i8* %arraydecay3233)
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %20 = load i8*, i8** %file.addr, align 8
  %21 = load i32, i32* %line.addr, align 4
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0), i8* %20, i32 %21)
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @_fatal_error_aux.err_file, align 8
  %23 = load i8*, i8** %file.addr, align 8
  %24 = load i32, i32* %line.addr, align 4
  %call35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0), i8* %23, i32 %24)
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call36 = call i32 @fflush(%struct._IO_FILE* %25)
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @_fatal_error_aux.err_file, align 8
  %call37 = call i32 @fflush(%struct._IO_FILE* %26)
  %27 = load i32, i32* %err_num.addr, align 4
  %cmp38 = icmp ne i32 %27, 0
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.end.24
  %28 = load i32, i32* %err_num.addr, align 4
  call void @exit(i32 %28) #5
  unreachable

if.end.41:                                        ; preds = %if.then.14, %if.end.24
  ret void
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i64 @ftell(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

declare i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

declare i32 @fflush(%struct._IO_FILE*) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: nounwind uwtable
define i32 @Asprintf(i8** %str, i32* %len, i32 %offset, i8* %format, ...) #0 {
entry:
  %str.addr = alloca i8**, align 8
  %len.addr = alloca i32*, align 8
  %offset.addr = alloca i32, align 4
  %format.addr = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %nchars = alloca i32, align 4
  store i8** %str, i8*** %str.addr, align 8
  store i32* %len, i32** %len.addr, align 8
  store i32 %offset, i32* %offset.addr, align 4
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i32*, i32** %len.addr, align 8
  %1 = load i32, i32* %0, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32*, i32** %len.addr, align 8
  store i32 128, i32* %2, align 4
  %3 = load i32*, i32** %len.addr, align 8
  %4 = load i32, i32* %3, align 4
  %conv = sext i32 %4 to i64
  %call = call noalias i8* @malloc(i64 %conv) #2
  %5 = load i8**, i8*** %str.addr, align 8
  store i8* %call, i8** %5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.body

while.body:                                       ; preds = %if.end, %if.end.9
  %6 = load i8**, i8*** %str.addr, align 8
  %7 = load i8*, i8** %6, align 8
  %8 = load i32, i32* %offset.addr, align 4
  %idx.ext = sext i32 %8 to i64
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %idx.ext
  %9 = load i32*, i32** %len.addr, align 8
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %offset.addr, align 4
  %sub = sub nsw i32 %10, %11
  %conv2 = sext i32 %sub to i64
  %12 = load i8*, i8** %format.addr, align 8
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %call4 = call i32 @vsnprintf(i8* %add.ptr, i64 %conv2, i8* %12, %struct.__va_list_tag* %arraydecay3) #2
  store i32 %call4, i32* %nchars, align 4
  %13 = load i32, i32* %nchars, align 4
  %14 = load i32*, i32** %len.addr, align 8
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %offset.addr, align 4
  %sub5 = sub nsw i32 %15, %16
  %cmp6 = icmp slt i32 %13, %sub5
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %while.body
  br label %while.end

if.end.9:                                         ; preds = %while.body
  %17 = load i32*, i32** %len.addr, align 8
  %18 = load i32, i32* %17, align 4
  %add = add nsw i32 %18, 128
  store i32 %add, i32* %17, align 4
  %19 = load i8**, i8*** %str.addr, align 8
  %20 = load i8*, i8** %19, align 8
  %21 = load i32*, i32** %len.addr, align 8
  %22 = load i32, i32* %21, align 4
  %conv10 = sext i32 %22 to i64
  %call11 = call i8* @realloc(i8* %20, i64 %conv10) #2
  %23 = load i8**, i8*** %str.addr, align 8
  store i8* %call11, i8** %23, align 8
  br label %while.body

while.end:                                        ; preds = %if.then.8
  %arraydecay12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1213 = bitcast %struct.__va_list_tag* %arraydecay12 to i8*
  call void @llvm.va_end(i8* %arraydecay1213)
  %24 = load i32, i32* %nchars, align 4
  ret i32 %24
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #4

; Function Attrs: nounwind
declare i32 @vsnprintf(i8*, i64, i8*, %struct.__va_list_tag*) #4

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #4

; Function Attrs: nounwind uwtable
define i8* @u64bit_to_string(i64 %val) #0 {
entry:
  %val.addr = alloca i64, align 8
  %vals = alloca [10 x i32], align 16
  %i = alloca i32, align 4
  %offset = alloca i32, align 4
  store i64 %val, i64* %val.addr, align 8
  store i32 0, i32* %i, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load i64, i64* %val.addr, align 8
  %rem = urem i64 %0, 1000
  %conv = trunc i64 %rem to i32
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %vals, i32 0, i64 %idxprom
  store i32 %conv, i32* %arrayidx, align 4
  %2 = load i64, i64* %val.addr, align 8
  %div = udiv i64 %2, 1000
  store i64 %div, i64* %val.addr, align 8
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %4 = load i64, i64* %val.addr, align 8
  %cmp = icmp ne i64 %4, 0
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %5 = load i32, i32* %i, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* %i, align 4
  %idxprom2 = sext i32 %dec to i64
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %vals, i32 0, i64 %idxprom2
  %6 = load i32, i32* %arrayidx3, align 4
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @u64bit_to_string.big_num, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i32 %6) #2
  store i32 %call, i32* %offset, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.end
  %7 = load i32, i32* %i, align 4
  %cmp4 = icmp ne i32 %7, 0
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load i32, i32* %offset, align 4
  %idx.ext = sext i32 %8 to i64
  %add.ptr = getelementptr inbounds i8, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @u64bit_to_string.big_num, i32 0, i32 0), i64 %idx.ext
  %9 = load i32, i32* %i, align 4
  %dec6 = add nsw i32 %9, -1
  store i32 %dec6, i32* %i, align 4
  %idxprom7 = sext i32 %dec6 to i64
  %arrayidx8 = getelementptr inbounds [10 x i32], [10 x i32]* %vals, i32 0, i64 %idxprom7
  %10 = load i32, i32* %arrayidx8, align 4
  %call9 = call i32 (i8*, i8*, ...) @sprintf(i8* %add.ptr, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i32 %10) #2
  %11 = load i32, i32* %offset, align 4
  %add = add nsw i32 %11, %call9
  store i32 %add, i32* %offset, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret i8* getelementptr inbounds ([80 x i8], [80 x i8]* @u64bit_to_string.big_num, i32 0, i32 0)
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #4

; Function Attrs: nounwind uwtable
define void @null_command() #0 {
entry:
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
