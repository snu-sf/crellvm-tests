; ModuleID = './MultiSource.Benchmarks.Prolangs-C/104.simulator.loadexe.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SYMBOL_TABLE_ENTRY = type { [9 x i8], [9 x i8], i32, i32, i32, %struct.SYMBOL_TABLE_ENTRY* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@MAIN_ROUTINE = external global [9 x i8], align 1
@START_ADDRESS = external global i32, align 4
@MEMORY = external global i8*, align 8
@.str = private unnamed_addr constant [9 x i8] c"_GLOBAL \00", align 1
@SYM_TAB = external global %struct.SYMBOL_TABLE_ENTRY*, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"ERROR: Input is not an executable file. Aborting.\0A\00", align 1
@TYPE_OUT_MODE = common global [6 x i8] zeroinitializer, align 1

; Function Attrs: nounwind uwtable
define void @LOAD(i32 %DEBUG_MODE, i32* %ERROR, %struct._IO_FILE* %INPUT) #0 {
entry:
  %DEBUG_MODE.addr = alloca i32, align 4
  %ERROR.addr = alloca i32*, align 8
  %INPUT.addr = alloca %struct._IO_FILE*, align 8
  %RECORD = alloca i8*, align 8
  %LENGTH = alloca i32, align 4
  %LOCATION = alloca i32, align 4
  %MODULE_NAME = alloca [9 x i8], align 1
  store i32 %DEBUG_MODE, i32* %DEBUG_MODE.addr, align 4
  store i32* %ERROR, i32** %ERROR.addr, align 8
  store %struct._IO_FILE* %INPUT, %struct._IO_FILE** %INPUT.addr, align 8
  store i32 0, i32* %LOCATION, align 4
  %arrayidx = getelementptr inbounds [9 x i8], [9 x i8]* %MODULE_NAME, i32 0, i64 8
  store i8 0, i8* %arrayidx, align 1
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %INPUT.addr, align 8
  %call = call i32 @feof(%struct._IO_FILE* %0) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %ERROR.addr, align 8
  store i32 1, i32* %1, align 4
  br label %if.end.14

if.else:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %INPUT.addr, align 8
  call void (i8**, %struct._IO_FILE*, ...) bitcast (void (...)* @GET_LINE to void (i8**, %struct._IO_FILE*, ...)*)(i8** %RECORD, %struct._IO_FILE* %2)
  %3 = load i8*, i8** %RECORD, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %3, i64 0
  %4 = load i8, i8* %arrayidx1, align 1
  %conv = sext i8 %4 to i32
  %cmp = icmp ne i32 %conv, 83
  br i1 %cmp, label %if.then.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %5 = load i8*, i8** %RECORD, align 8
  %call3 = call i64 @strlen(i8* %5) #5
  %cmp4 = icmp ne i64 %call3, 14
  br i1 %cmp4, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %lor.lhs.false, %if.else
  %6 = load i32*, i32** %ERROR.addr, align 8
  store i32 1, i32* %6, align 4
  br label %if.end.13

if.else.7:                                        ; preds = %lor.lhs.false
  %7 = load i32, i32* %DEBUG_MODE.addr, align 4
  %tobool8 = icmp ne i32 %7, 0
  br i1 %tobool8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.else.7
  store i8 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @MAIN_ROUTINE, i32 0, i64 8), align 1
  %8 = load i8*, i8** %RECORD, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %8, i64 1
  %call11 = call i8* @strncpy(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @MAIN_ROUTINE, i32 0, i32 0), i8* %arrayidx10, i64 8) #4
  br label %if.end

if.end:                                           ; preds = %if.then.9, %if.else.7
  %9 = load i8*, i8** %RECORD, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %9, i64 9
  %10 = load i32*, i32** %ERROR.addr, align 8
  call void (i8*, i32, i32, i32*, i32*, ...) bitcast (void (...)* @STR_TO_NUM to void (i8*, i32, i32, i32*, i32*, ...)*)(i8* %arrayidx12, i32 5, i32 16, i32* @START_ADDRESS, i32* %10)
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %if.then.6
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.then
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.end.14
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %INPUT.addr, align 8
  %call15 = call i32 @feof(%struct._IO_FILE* %11) #4
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.cond
  %12 = load i32, i32* %LOCATION, align 4
  %cmp17 = icmp sle i32 %12, 1048576
  br i1 %cmp17, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %13 = load i32*, i32** %ERROR.addr, align 8
  %14 = load i32, i32* %13, align 4
  %tobool19 = icmp ne i32 %14, 0
  %lnot = xor i1 %tobool19, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %15 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %15, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %INPUT.addr, align 8
  call void (i8**, %struct._IO_FILE*, ...) bitcast (void (...)* @GET_LINE to void (i8**, %struct._IO_FILE*, ...)*)(i8** %RECORD, %struct._IO_FILE* %16)
  %17 = load i8*, i8** %RECORD, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %17, i64 0
  %18 = load i8, i8* %arrayidx20, align 1
  %conv21 = sext i8 %18 to i32
  switch i32 %conv21, label %sw.default [
    i32 84, label %sw.bb
    i32 77, label %sw.bb.38
    i32 71, label %sw.bb.59
    i32 0, label %sw.bb.78
  ]

sw.bb:                                            ; preds = %while.body
  %19 = load i8*, i8** %RECORD, align 8
  %call22 = call i64 @strlen(i8* %19) #5
  %cmp23 = icmp ult i64 %call22, 9
  br i1 %cmp23, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %sw.bb
  %20 = load i32*, i32** %ERROR.addr, align 8
  store i32 1, i32* %20, align 4
  br label %if.end.37

if.else.26:                                       ; preds = %sw.bb
  %21 = load i8*, i8** %RECORD, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %21, i64 1
  %22 = load i32*, i32** %ERROR.addr, align 8
  call void (i8*, i32, i32, i32*, i32*, ...) bitcast (void (...)* @STR_TO_NUM to void (i8*, i32, i32, i32*, i32*, ...)*)(i8* %arrayidx27, i32 6, i32 16, i32* %LOCATION, i32* %22)
  %23 = load i8*, i8** %RECORD, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %23, i64 7
  %24 = load i32*, i32** %ERROR.addr, align 8
  call void (i8*, i32, i32, i32*, i32*, ...) bitcast (void (...)* @STR_TO_NUM to void (i8*, i32, i32, i32*, i32*, ...)*)(i8* %arrayidx28, i32 2, i32 16, i32* %LENGTH, i32* %24)
  %25 = load i8*, i8** %RECORD, align 8
  %call29 = call i64 @strlen(i8* %25) #5
  %26 = load i32, i32* %LENGTH, align 4
  %mul = mul nsw i32 %26, 2
  %add = add nsw i32 9, %mul
  %conv30 = sext i32 %add to i64
  %cmp31 = icmp ne i64 %call29, %conv30
  br i1 %cmp31, label %if.then.33, label %if.else.34

if.then.33:                                       ; preds = %if.else.26
  %27 = load i32*, i32** %ERROR.addr, align 8
  store i32 1, i32* %27, align 4
  br label %if.end.36

if.else.34:                                       ; preds = %if.else.26
  %28 = load i8*, i8** %RECORD, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %28, i64 9
  %29 = load i32, i32* %LENGTH, align 4
  %30 = load i32, i32* %LOCATION, align 4
  %31 = load i8*, i8** @MEMORY, align 8
  %32 = load i32*, i32** %ERROR.addr, align 8
  call void (i8*, i32, i32, i8*, i32*, ...) bitcast (void (...)* @STORE_AT to void (i8*, i32, i32, i8*, i32*, ...)*)(i8* %arrayidx35, i32 %29, i32 %30, i8* %31, i32* %32)
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.34, %if.then.33
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.then.25
  br label %sw.epilog

sw.bb.38:                                         ; preds = %while.body
  %33 = load i8*, i8** %RECORD, align 8
  %call39 = call i64 @strlen(i8* %33) #5
  %cmp40 = icmp ne i64 %call39, 21
  br i1 %cmp40, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %sw.bb.38
  %34 = load i32*, i32** %ERROR.addr, align 8
  store i32 1, i32* %34, align 4
  br label %if.end.58

if.else.43:                                       ; preds = %sw.bb.38
  %35 = load i32, i32* %DEBUG_MODE.addr, align 4
  %tobool44 = icmp ne i32 %35, 0
  br i1 %tobool44, label %if.then.45, label %if.end.57

if.then.45:                                       ; preds = %if.else.43
  %arraydecay = getelementptr inbounds [9 x i8], [9 x i8]* %MODULE_NAME, i32 0, i32 0
  %36 = load i8*, i8** %RECORD, align 8
  %arrayidx46 = getelementptr inbounds i8, i8* %36, i64 1
  %call47 = call i8* @strncpy(i8* %arraydecay, i8* %arrayidx46, i64 8) #4
  %37 = load i8*, i8** %RECORD, align 8
  %arrayidx48 = getelementptr inbounds i8, i8* %37, i64 9
  %38 = load i32*, i32** %ERROR.addr, align 8
  call void (i8*, i32, i32, i32*, i32*, ...) bitcast (void (...)* @STR_TO_NUM to void (i8*, i32, i32, i32*, i32*, ...)*)(i8* %arrayidx48, i32 6, i32 16, i32* %LOCATION, i32* %38)
  %arraydecay49 = getelementptr inbounds [9 x i8], [9 x i8]* %MODULE_NAME, i32 0, i32 0
  %39 = load i32, i32* %LOCATION, align 4
  %call50 = call i32 (i8*, i8*, i32, i32, %struct.SYMBOL_TABLE_ENTRY**, ...) bitcast (i32 (...)* @INSERT_IN_SYM_TAB to i32 (i8*, i8*, i32, i32, %struct.SYMBOL_TABLE_ENTRY**, ...)*)(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* %arraydecay49, i32 %39, i32 3, %struct.SYMBOL_TABLE_ENTRY** @SYM_TAB)
  %tobool51 = icmp ne i32 %call50, 0
  %lnot52 = xor i1 %tobool51, true
  %lnot.ext = zext i1 %lnot52 to i32
  %40 = load i32*, i32** %ERROR.addr, align 8
  store i32 %lnot.ext, i32* %40, align 4
  %41 = load i8*, i8** %RECORD, align 8
  %arrayidx53 = getelementptr inbounds i8, i8* %41, i64 15
  %42 = load i32*, i32** %ERROR.addr, align 8
  call void (i8*, i32, i32, i32*, i32*, ...) bitcast (void (...)* @STR_TO_NUM to void (i8*, i32, i32, i32*, i32*, ...)*)(i8* %arrayidx53, i32 6, i32 16, i32* %LENGTH, i32* %42)
  %43 = load i32, i32* %LENGTH, align 4
  %arraydecay54 = getelementptr inbounds [9 x i8], [9 x i8]* %MODULE_NAME, i32 0, i32 0
  %call55 = call %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...) bitcast (%struct.SYMBOL_TABLE_ENTRY* (...)* @LOOK_UP_SYMBOL to %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...)*)(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* %arraydecay54, %struct.SYMBOL_TABLE_ENTRY** @SYM_TAB)
  %LENGTH56 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %call55, i32 0, i32 3
  store i32 %43, i32* %LENGTH56, align 4
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.45, %if.else.43
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %if.then.42
  br label %sw.epilog

sw.bb.59:                                         ; preds = %while.body
  %44 = load i8*, i8** %RECORD, align 8
  %call60 = call i64 @strlen(i8* %44) #5
  %cmp61 = icmp ne i64 %call60, 15
  br i1 %cmp61, label %if.then.63, label %if.else.64

if.then.63:                                       ; preds = %sw.bb.59
  %45 = load i32*, i32** %ERROR.addr, align 8
  store i32 1, i32* %45, align 4
  br label %if.end.77

if.else.64:                                       ; preds = %sw.bb.59
  %46 = load i32, i32* %DEBUG_MODE.addr, align 4
  %tobool65 = icmp ne i32 %46, 0
  br i1 %tobool65, label %if.then.66, label %if.end.76

if.then.66:                                       ; preds = %if.else.64
  %arraydecay67 = getelementptr inbounds [9 x i8], [9 x i8]* %MODULE_NAME, i32 0, i32 0
  %47 = load i8*, i8** %RECORD, align 8
  %arrayidx68 = getelementptr inbounds i8, i8* %47, i64 1
  %call69 = call i8* @strncpy(i8* %arraydecay67, i8* %arrayidx68, i64 8) #4
  %48 = load i8*, i8** %RECORD, align 8
  %arrayidx70 = getelementptr inbounds i8, i8* %48, i64 9
  %49 = load i32*, i32** %ERROR.addr, align 8
  call void (i8*, i32, i32, i32*, i32*, ...) bitcast (void (...)* @STR_TO_NUM to void (i8*, i32, i32, i32*, i32*, ...)*)(i8* %arrayidx70, i32 6, i32 16, i32* %LOCATION, i32* %49)
  %arraydecay71 = getelementptr inbounds [9 x i8], [9 x i8]* %MODULE_NAME, i32 0, i32 0
  %50 = load i32, i32* %LOCATION, align 4
  %call72 = call i32 (i8*, i8*, i32, i32, %struct.SYMBOL_TABLE_ENTRY**, ...) bitcast (i32 (...)* @INSERT_IN_SYM_TAB to i32 (i8*, i8*, i32, i32, %struct.SYMBOL_TABLE_ENTRY**, ...)*)(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* %arraydecay71, i32 %50, i32 4, %struct.SYMBOL_TABLE_ENTRY** @SYM_TAB)
  %tobool73 = icmp ne i32 %call72, 0
  %lnot74 = xor i1 %tobool73, true
  %lnot.ext75 = zext i1 %lnot74 to i32
  %51 = load i32*, i32** %ERROR.addr, align 8
  store i32 %lnot.ext75, i32* %51, align 4
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.66, %if.else.64
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %if.then.63
  br label %sw.epilog

sw.bb.78:                                         ; preds = %while.body
  br label %sw.default

sw.default:                                       ; preds = %while.body, %sw.bb.78
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.77, %if.end.58, %if.end.37
  br label %while.cond

while.end:                                        ; preds = %land.end
  %52 = load i32*, i32** %ERROR.addr, align 8
  %53 = load i32, i32* %52, align 4
  %tobool79 = icmp ne i32 %53, 0
  br i1 %tobool79, label %if.then.80, label %if.end.82

if.then.80:                                       ; preds = %while.end
  %call81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.80, %while.end
  ret void
}

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #1

declare void @GET_LINE(...) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #1

declare void @STR_TO_NUM(...) #2

declare void @STORE_AT(...) #2

declare i32 @INSERT_IN_SYM_TAB(...) #2

declare %struct.SYMBOL_TABLE_ENTRY* @LOOK_UP_SYMBOL(...) #2

declare i32 @printf(i8*, ...) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
