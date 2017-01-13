; ModuleID = './MultiSource.Benchmarks.Prolangs-C/102.simulator.sim_debug.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SYMBOL_TABLE_ENTRY = type { [9 x i8], [9 x i8], i32, i32, i32, %struct.SYMBOL_TABLE_ENTRY* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [23 x i8] c"usage:  run [-n] file\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-n\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Illegal command directive, '%s'. Ignoring.\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"run: requires a file name.\0A\00", align 1
@SYM_TAB = external global %struct.SYMBOL_TABLE_ENTRY*, align 8
@MEMORY = external global i8*, align 8
@.str.4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"%s: No such file or directory\0A\00", align 1
@TYPE_OUT_MODE = common global [6 x i8] zeroinitializer, align 1
@MAIN_ROUTINE = common global [9 x i8] zeroinitializer, align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %INPUT_STREAM = alloca %struct._IO_FILE*, align 8
  %DEBUG_MODE = alloca i32, align 4
  %ERROR = alloca i32, align 4
  %ARGUMENT = alloca i32, align 4
  %FLAG = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 1, i32* %DEBUG_MODE, align 4
  store i32 0, i32* %ERROR, align 4
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0))
  br label %if.end.52

if.else:                                          ; preds = %entry
  store i32 1, i32* %ARGUMENT, align 4
  %1 = load i32, i32* %ARGUMENT, align 4
  %2 = load i32, i32* %argc.addr, align 4
  %cmp1 = icmp slt i32 %1, %2
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.else
  %3 = load i32, i32* %ARGUMENT, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %4, i64 %idxprom
  %5 = load i8*, i8** %arrayidx, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %5, i64 0
  %6 = load i8, i8* %arrayidx3, align 1
  %conv = sext i8 %6 to i32
  %cmp4 = icmp eq i32 %conv, 45
  %conv5 = zext i1 %cmp4 to i32
  store i32 %conv5, i32* %FLAG, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.else
  br label %while.cond

while.cond:                                       ; preds = %if.end.31, %if.end
  %7 = load i32, i32* %ARGUMENT, align 4
  %8 = load i32, i32* %argc.addr, align 4
  %cmp6 = icmp slt i32 %7, %8
  br i1 %cmp6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %9 = load i32, i32* %FLAG, align 4
  %tobool = icmp ne i32 %9, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %10 = phi i1 [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %10, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %11 = load i32, i32* %ARGUMENT, align 4
  %idxprom8 = sext i32 %11 to i64
  %12 = load i8**, i8*** %argv.addr, align 8
  %arrayidx9 = getelementptr inbounds i8*, i8** %12, i64 %idxprom8
  %13 = load i8*, i8** %arrayidx9, align 8
  %call10 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0)) #3
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.else.13, label %if.then.12

if.then.12:                                       ; preds = %while.body
  store i32 0, i32* %DEBUG_MODE, align 4
  br label %if.end.17

if.else.13:                                       ; preds = %while.body
  %14 = load i32, i32* %ARGUMENT, align 4
  %idxprom14 = sext i32 %14 to i64
  %15 = load i8**, i8*** %argv.addr, align 8
  %arrayidx15 = getelementptr inbounds i8*, i8** %15, i64 %idxprom14
  %16 = load i8*, i8** %arrayidx15, align 8
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i32 0, i32 0), i8* %16)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.13, %if.then.12
  %17 = load i32, i32* %ARGUMENT, align 4
  %18 = load i32, i32* %argc.addr, align 4
  %cmp18 = icmp slt i32 %17, %18
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.17
  %19 = load i32, i32* %ARGUMENT, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %ARGUMENT, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %if.end.17
  %20 = load i32, i32* %ARGUMENT, align 4
  %21 = load i32, i32* %argc.addr, align 4
  %cmp22 = icmp slt i32 %20, %21
  br i1 %cmp22, label %if.then.24, label %if.end.31

if.then.24:                                       ; preds = %if.end.21
  %22 = load i32, i32* %ARGUMENT, align 4
  %idxprom25 = sext i32 %22 to i64
  %23 = load i8**, i8*** %argv.addr, align 8
  %arrayidx26 = getelementptr inbounds i8*, i8** %23, i64 %idxprom25
  %24 = load i8*, i8** %arrayidx26, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %24, i64 0
  %25 = load i8, i8* %arrayidx27, align 1
  %conv28 = sext i8 %25 to i32
  %cmp29 = icmp eq i32 %conv28, 45
  %conv30 = zext i1 %cmp29 to i32
  store i32 %conv30, i32* %FLAG, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.24, %if.end.21
  br label %while.cond

while.end:                                        ; preds = %land.end
  %26 = load i32, i32* %ARGUMENT, align 4
  %27 = load i32, i32* %argc.addr, align 4
  %cmp32 = icmp sge i32 %26, %27
  br i1 %cmp32, label %if.then.34, label %if.end.36

if.then.34:                                       ; preds = %while.end
  %call35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.34, %while.end
  call void (%struct.SYMBOL_TABLE_ENTRY**, ...) bitcast (void (...)* @INIT_SYM_TAB to void (%struct.SYMBOL_TABLE_ENTRY**, ...)*)(%struct.SYMBOL_TABLE_ENTRY** @SYM_TAB)
  call void (i8**, ...) bitcast (void (...)* @CREATE_MEMORY to void (i8**, ...)*)(i8** @MEMORY)
  %28 = load i32, i32* %ARGUMENT, align 4
  %idxprom37 = sext i32 %28 to i64
  %29 = load i8**, i8*** %argv.addr, align 8
  %arrayidx38 = getelementptr inbounds i8*, i8** %29, i64 %idxprom37
  %30 = load i8*, i8** %arrayidx38, align 8
  %call39 = call %struct._IO_FILE* @fopen(i8* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0))
  store %struct._IO_FILE* %call39, %struct._IO_FILE** %INPUT_STREAM, align 8
  %cmp40 = icmp eq %struct._IO_FILE* %call39, null
  br i1 %cmp40, label %if.then.42, label %if.else.46

if.then.42:                                       ; preds = %if.end.36
  %31 = load i32, i32* %ARGUMENT, align 4
  %idxprom43 = sext i32 %31 to i64
  %32 = load i8**, i8*** %argv.addr, align 8
  %arrayidx44 = getelementptr inbounds i8*, i8** %32, i64 %idxprom43
  %33 = load i8*, i8** %arrayidx44, align 8
  %call45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i32 0, i32 0), i8* %33)
  br label %if.end.51

if.else.46:                                       ; preds = %if.end.36
  %34 = load i32, i32* %DEBUG_MODE, align 4
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %INPUT_STREAM, align 8
  call void (i32, i32*, %struct._IO_FILE*, ...) bitcast (void (...)* @LOAD to void (i32, i32*, %struct._IO_FILE*, ...)*)(i32 %34, i32* %ERROR, %struct._IO_FILE* %35)
  %36 = load i32, i32* %ERROR, align 4
  %tobool47 = icmp ne i32 %36, 0
  br i1 %tobool47, label %if.end.49, label %if.then.48

if.then.48:                                       ; preds = %if.else.46
  %37 = load i32, i32* %DEBUG_MODE, align 4
  call void (i32, ...) bitcast (void (...)* @DEBUGGER to void (i32, ...)*)(i32 %37)
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.48, %if.else.46
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %INPUT_STREAM, align 8
  %call50 = call i32 @fclose(%struct._IO_FILE* %38)
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.49, %if.then.42
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.then
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

declare void @INIT_SYM_TAB(...) #1

declare void @CREATE_MEMORY(...) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare void @LOAD(...) #1

declare void @DEBUGGER(...) #1

declare i32 @fclose(%struct._IO_FILE*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
