; ModuleID = './MultiSource.Benchmarks.Prolangs-C/88.loader.pass2.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SYMBOL_TABLE_ENTRY = type { [9 x i8], [9 x i8], i32, i32, i32, %struct.SYMBOL_TABLE_ENTRY* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [33 x i8] c"ERROR: Illegal text record = %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"ERROR: Program does not fit in memory. Aborting.\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"_GLOBAL \00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"ERROR: Undefined global %s. Program not loaded.\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"ERROR: Illegal define record = %s\0A\00", align 1
@START_ADDRESS = common global i32 0, align 4
@MAIN_ROUTINE = common global [9 x i8] zeroinitializer, align 1

; Function Attrs: nounwind uwtable
define void @PASS2(i8* %MEMORY, %struct.SYMBOL_TABLE_ENTRY** %SYM_TAB, i32* %LOCATION, i32* %ERROR, %struct._IO_FILE* %INPUT) #0 {
entry:
  %MEMORY.addr = alloca i8*, align 8
  %SYM_TAB.addr = alloca %struct.SYMBOL_TABLE_ENTRY**, align 8
  %LOCATION.addr = alloca i32*, align 8
  %ERROR.addr = alloca i32*, align 8
  %INPUT.addr = alloca %struct._IO_FILE*, align 8
  %MODULE_NAME = alloca [9 x i8], align 1
  %RECORD = alloca i8*, align 8
  %UNREL_LOCATION = alloca i32, align 4
  %UNREL_TO_REL_SHIFT = alloca i32, align 4
  %LENGTH = alloca i32, align 4
  %LOCAL_ERROR = alloca i32, align 4
  %TEMP_LOC = alloca i32, align 4
  %SYMBOL = alloca %struct.SYMBOL_TABLE_ENTRY*, align 8
  %SIGN = alloca i32, align 4
  %NEXT = alloca i32, align 4
  %TEMP_NAME = alloca [9 x i8], align 1
  %I = alloca i32, align 4
  store i8* %MEMORY, i8** %MEMORY.addr, align 8
  store %struct.SYMBOL_TABLE_ENTRY** %SYM_TAB, %struct.SYMBOL_TABLE_ENTRY*** %SYM_TAB.addr, align 8
  store i32* %LOCATION, i32** %LOCATION.addr, align 8
  store i32* %ERROR, i32** %ERROR.addr, align 8
  store %struct._IO_FILE* %INPUT, %struct._IO_FILE** %INPUT.addr, align 8
  store i32 0, i32* %UNREL_TO_REL_SHIFT, align 4
  %arrayidx = getelementptr inbounds [9 x i8], [9 x i8]* %MODULE_NAME, i32 0, i64 8
  store i8 0, i8* %arrayidx, align 1
  br label %while.cond

while.cond:                                       ; preds = %lor.end.134, %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %INPUT.addr, align 8
  %call = call i32 @feof(%struct._IO_FILE* %0) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %1 = load i32*, i32** %LOCATION.addr, align 8
  %2 = load i32, i32* %1, align 4
  %cmp = icmp sle i32 %2, 1048576
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %3, label %while.body, label %while.end.135

while.body:                                       ; preds = %land.end
  store i32 0, i32* %LOCAL_ERROR, align 4
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %INPUT.addr, align 8
  call void (i8**, %struct._IO_FILE*, ...) bitcast (void (...)* @GET_LINE to void (i8**, %struct._IO_FILE*, ...)*)(i8** %RECORD, %struct._IO_FILE* %4)
  %5 = load i8*, i8** %RECORD, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %5, i64 0
  %6 = load i8, i8* %arrayidx1, align 1
  %conv = sext i8 %6 to i32
  switch i32 %conv, label %sw.default.129 [
    i32 84, label %sw.bb
    i32 72, label %sw.bb.20
    i32 77, label %sw.bb.37
    i32 82, label %sw.bb.79
    i32 69, label %sw.bb.128
    i32 68, label %sw.bb.128
    i32 0, label %sw.bb.128
  ]

sw.bb:                                            ; preds = %while.body
  %7 = load i8*, i8** %RECORD, align 8
  %call2 = call i64 @strlen(i8* %7) #5
  %cmp3 = icmp ult i64 %call2, 9
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  store i32 1, i32* %LOCAL_ERROR, align 4
  br label %if.end.15

if.else:                                          ; preds = %sw.bb
  %8 = load i8*, i8** %RECORD, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 1
  call void (i8*, i32, i32, i32*, i32*, ...) bitcast (void (...)* @STR_TO_NUM to void (i8*, i32, i32, i32*, i32*, ...)*)(i8* %arrayidx5, i32 6, i32 16, i32* %UNREL_LOCATION, i32* %LOCAL_ERROR)
  %9 = load i8*, i8** %RECORD, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %9, i64 7
  call void (i8*, i32, i32, i32*, i32*, ...) bitcast (void (...)* @STR_TO_NUM to void (i8*, i32, i32, i32*, i32*, ...)*)(i8* %arrayidx6, i32 2, i32 16, i32* %LENGTH, i32* %LOCAL_ERROR)
  %10 = load i8*, i8** %RECORD, align 8
  %call7 = call i64 @strlen(i8* %10) #5
  %11 = load i32, i32* %LENGTH, align 4
  %mul = mul nsw i32 %11, 2
  %add = add nsw i32 9, %mul
  %conv8 = sext i32 %add to i64
  %cmp9 = icmp ne i64 %call7, %conv8
  br i1 %cmp9, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %if.else
  store i32 1, i32* %LOCAL_ERROR, align 4
  br label %if.end

if.else.12:                                       ; preds = %if.else
  %12 = load i8*, i8** %RECORD, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %12, i64 9
  %13 = load i32, i32* %LENGTH, align 4
  %14 = load i32, i32* %UNREL_LOCATION, align 4
  %15 = load i32, i32* %UNREL_TO_REL_SHIFT, align 4
  %add14 = add nsw i32 %14, %15
  %16 = load i8*, i8** %MEMORY.addr, align 8
  call void (i8*, i32, i32, i8*, i32*, ...) bitcast (void (...)* @STORE_AT to void (i8*, i32, i32, i8*, i32*, ...)*)(i8* %arrayidx13, i32 %13, i32 %add14, i8* %16, i32* %LOCAL_ERROR)
  br label %if.end

if.end:                                           ; preds = %if.else.12, %if.then.11
  br label %if.end.15

if.end.15:                                        ; preds = %if.end, %if.then
  %17 = load i32, i32* %LOCAL_ERROR, align 4
  %tobool16 = icmp ne i32 %17, 0
  br i1 %tobool16, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %if.end.15
  %18 = load i8*, i8** %RECORD, align 8
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i32 0, i32 0), i8* %18)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.17, %if.end.15
  br label %sw.epilog.130

sw.bb.20:                                         ; preds = %while.body
  %19 = load i8*, i8** %RECORD, align 8
  %call21 = call i64 @strlen(i8* %19) #5
  %cmp22 = icmp ne i64 %call21, 21
  br i1 %cmp22, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %sw.bb.20
  store i32 1, i32* %LOCAL_ERROR, align 4
  br label %if.end.36

if.else.25:                                       ; preds = %sw.bb.20
  %arraydecay = getelementptr inbounds [9 x i8], [9 x i8]* %MODULE_NAME, i32 0, i32 0
  %20 = load i8*, i8** %RECORD, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %20, i64 1
  %call27 = call i8* @strncpy(i8* %arraydecay, i8* %arrayidx26, i64 8) #4
  %21 = load i8*, i8** %RECORD, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %21, i64 9
  call void (i8*, i32, i32, i32*, i32*, ...) bitcast (void (...)* @STR_TO_NUM to void (i8*, i32, i32, i32*, i32*, ...)*)(i8* %arrayidx28, i32 6, i32 16, i32* %TEMP_LOC, i32* %LOCAL_ERROR)
  %22 = load i32*, i32** %LOCATION.addr, align 8
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %TEMP_LOC, align 4
  %sub = sub nsw i32 %23, %24
  store i32 %sub, i32* %UNREL_TO_REL_SHIFT, align 4
  %25 = load i8*, i8** %RECORD, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %25, i64 15
  call void (i8*, i32, i32, i32*, i32*, ...) bitcast (void (...)* @STR_TO_NUM to void (i8*, i32, i32, i32*, i32*, ...)*)(i8* %arrayidx29, i32 6, i32 16, i32* %TEMP_LOC, i32* %LOCAL_ERROR)
  %26 = load i32, i32* %TEMP_LOC, align 4
  %27 = load i32*, i32** %LOCATION.addr, align 8
  %28 = load i32, i32* %27, align 4
  %add30 = add nsw i32 %28, %26
  store i32 %add30, i32* %27, align 4
  %29 = load i32*, i32** %LOCATION.addr, align 8
  %30 = load i32, i32* %29, align 4
  %cmp31 = icmp sgt i32 %30, 1048576
  br i1 %cmp31, label %if.then.33, label %if.end.35

if.then.33:                                       ; preds = %if.else.25
  %call34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.33, %if.else.25
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.then.24
  br label %sw.epilog.130

sw.bb.37:                                         ; preds = %while.body
  %31 = load i8*, i8** %RECORD, align 8
  %call38 = call i64 @strlen(i8* %31) #5
  %cmp39 = icmp ult i64 %call38, 9
  br i1 %cmp39, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %sw.bb.37
  store i32 1, i32* %LOCAL_ERROR, align 4
  br label %if.end.74

if.else.42:                                       ; preds = %sw.bb.37
  %32 = load i8*, i8** %RECORD, align 8
  %call43 = call i64 @strlen(i8* %32) #5
  %cmp44 = icmp eq i64 %call43, 9
  br i1 %cmp44, label %if.then.46, label %if.else.50

if.then.46:                                       ; preds = %if.else.42
  %33 = load i8*, i8** %RECORD, align 8
  %arrayidx47 = getelementptr inbounds i8, i8* %33, i64 1
  call void (i8*, i32, i32, i32*, i32*, ...) bitcast (void (...)* @STR_TO_NUM to void (i8*, i32, i32, i32*, i32*, ...)*)(i8* %arrayidx47, i32 6, i32 16, i32* %UNREL_LOCATION, i32* %LOCAL_ERROR)
  %34 = load i8*, i8** %RECORD, align 8
  %arrayidx48 = getelementptr inbounds i8, i8* %34, i64 7
  call void (i8*, i32, i32, i32*, i32*, ...) bitcast (void (...)* @STR_TO_NUM to void (i8*, i32, i32, i32*, i32*, ...)*)(i8* %arrayidx48, i32 2, i32 16, i32* %LENGTH, i32* %LOCAL_ERROR)
  %35 = load i32, i32* %UNREL_TO_REL_SHIFT, align 4
  %36 = load i32, i32* %UNREL_LOCATION, align 4
  %37 = load i32, i32* %UNREL_TO_REL_SHIFT, align 4
  %add49 = add nsw i32 %36, %37
  %38 = load i32, i32* %LENGTH, align 4
  %39 = load i8*, i8** %MEMORY.addr, align 8
  call void (i32, i32, i32, i8*, i32*, ...) bitcast (void (...)* @ADD_INT_TO_LOC to void (i32, i32, i32, i8*, i32*, ...)*)(i32 %35, i32 %add49, i32 %38, i8* %39, i32* %LOCAL_ERROR)
  br label %if.end.73

if.else.50:                                       ; preds = %if.else.42
  %40 = load i8*, i8** %RECORD, align 8
  %call51 = call i64 @strlen(i8* %40) #5
  %cmp52 = icmp ne i64 %call51, 18
  br i1 %cmp52, label %if.then.54, label %if.else.55

if.then.54:                                       ; preds = %if.else.50
  store i32 1, i32* %LOCAL_ERROR, align 4
  br label %if.end.72

if.else.55:                                       ; preds = %if.else.50
  %41 = load i8*, i8** %RECORD, align 8
  %arrayidx56 = getelementptr inbounds i8, i8* %41, i64 1
  call void (i8*, i32, i32, i32*, i32*, ...) bitcast (void (...)* @STR_TO_NUM to void (i8*, i32, i32, i32*, i32*, ...)*)(i8* %arrayidx56, i32 6, i32 16, i32* %UNREL_LOCATION, i32* %LOCAL_ERROR)
  %42 = load i8*, i8** %RECORD, align 8
  %arrayidx57 = getelementptr inbounds i8, i8* %42, i64 7
  call void (i8*, i32, i32, i32*, i32*, ...) bitcast (void (...)* @STR_TO_NUM to void (i8*, i32, i32, i32*, i32*, ...)*)(i8* %arrayidx57, i32 2, i32 16, i32* %LENGTH, i32* %LOCAL_ERROR)
  %43 = load i8*, i8** %RECORD, align 8
  %arrayidx58 = getelementptr inbounds i8, i8* %43, i64 9
  %44 = load i8, i8* %arrayidx58, align 1
  %conv59 = sext i8 %44 to i32
  switch i32 %conv59, label %sw.default [
    i32 45, label %sw.bb.60
    i32 43, label %sw.bb.61
  ]

sw.bb.60:                                         ; preds = %if.else.55
  store i32 -1, i32* %SIGN, align 4
  br label %sw.epilog

sw.bb.61:                                         ; preds = %if.else.55
  store i32 1, i32* %SIGN, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.else.55
  store i32 0, i32* %SIGN, align 4
  store i32 1, i32* %LOCAL_ERROR, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.61, %sw.bb.60
  %45 = load i8*, i8** %RECORD, align 8
  %arrayidx62 = getelementptr inbounds i8, i8* %45, i64 10
  %46 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %SYM_TAB.addr, align 8
  %call63 = call %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...) bitcast (%struct.SYMBOL_TABLE_ENTRY* (...)* @LOOK_UP_SYMBOL to %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...)*)(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* %arrayidx62, %struct.SYMBOL_TABLE_ENTRY** %46)
  store %struct.SYMBOL_TABLE_ENTRY* %call63, %struct.SYMBOL_TABLE_ENTRY** %SYMBOL, align 8
  %47 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %SYMBOL, align 8
  %cmp64 = icmp eq %struct.SYMBOL_TABLE_ENTRY* %47, null
  br i1 %cmp64, label %if.then.66, label %if.else.67

if.then.66:                                       ; preds = %sw.epilog
  store i32 1, i32* %LOCAL_ERROR, align 4
  br label %if.end.71

if.else.67:                                       ; preds = %sw.epilog
  %48 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %SYMBOL, align 8
  %LOCATION68 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %48, i32 0, i32 2
  %49 = load i32, i32* %LOCATION68, align 4
  %50 = load i32, i32* %SIGN, align 4
  %mul69 = mul nsw i32 %49, %50
  %51 = load i32, i32* %UNREL_LOCATION, align 4
  %52 = load i32, i32* %UNREL_TO_REL_SHIFT, align 4
  %add70 = add nsw i32 %51, %52
  %53 = load i32, i32* %LENGTH, align 4
  %54 = load i8*, i8** %MEMORY.addr, align 8
  call void (i32, i32, i32, i8*, i32*, ...) bitcast (void (...)* @ADD_INT_TO_LOC to void (i32, i32, i32, i8*, i32*, ...)*)(i32 %mul69, i32 %add70, i32 %53, i8* %54, i32* %LOCAL_ERROR)
  br label %if.end.71

if.end.71:                                        ; preds = %if.else.67, %if.then.66
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %if.then.54
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %if.then.46
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.then.41
  %55 = load i32, i32* %LOCAL_ERROR, align 4
  %tobool75 = icmp ne i32 %55, 0
  br i1 %tobool75, label %if.then.76, label %if.end.78

if.then.76:                                       ; preds = %if.end.74
  %56 = load i8*, i8** %RECORD, align 8
  %call77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i32 0, i32 0), i8* %56)
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.76, %if.end.74
  br label %sw.epilog.130

sw.bb.79:                                         ; preds = %while.body
  %57 = load i8*, i8** %RECORD, align 8
  %call80 = call i64 @strlen(i8* %57) #5
  %cmp81 = icmp ugt i64 %call80, 73
  br i1 %cmp81, label %if.then.83, label %if.else.84

if.then.83:                                       ; preds = %sw.bb.79
  store i32 1, i32* %LOCAL_ERROR, align 4
  br label %if.end.123

if.else.84:                                       ; preds = %sw.bb.79
  store i32 1, i32* %NEXT, align 4
  %arrayidx85 = getelementptr inbounds [9 x i8], [9 x i8]* %TEMP_NAME, i32 0, i64 8
  store i8 0, i8* %arrayidx85, align 1
  br label %while.cond.86

while.cond.86:                                    ; preds = %if.end.115, %if.else.84
  %58 = load i32, i32* %NEXT, align 4
  %add87 = add nsw i32 %58, 8
  %conv88 = sext i32 %add87 to i64
  %59 = load i8*, i8** %RECORD, align 8
  %call89 = call i64 @strlen(i8* %59) #5
  %cmp90 = icmp ule i64 %conv88, %call89
  br i1 %cmp90, label %while.body.92, label %while.end

while.body.92:                                    ; preds = %while.cond.86
  %arraydecay93 = getelementptr inbounds [9 x i8], [9 x i8]* %TEMP_NAME, i32 0, i32 0
  %60 = load i32, i32* %NEXT, align 4
  %idxprom = sext i32 %60 to i64
  %61 = load i8*, i8** %RECORD, align 8
  %arrayidx94 = getelementptr inbounds i8, i8* %61, i64 %idxprom
  %call95 = call i8* @strncpy(i8* %arraydecay93, i8* %arrayidx94, i64 8) #4
  %arraydecay96 = getelementptr inbounds [9 x i8], [9 x i8]* %TEMP_NAME, i32 0, i32 0
  %62 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %SYM_TAB.addr, align 8
  %call97 = call %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...) bitcast (%struct.SYMBOL_TABLE_ENTRY* (...)* @LOOK_UP_SYMBOL to %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...)*)(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* %arraydecay96, %struct.SYMBOL_TABLE_ENTRY** %62)
  %cmp98 = icmp eq %struct.SYMBOL_TABLE_ENTRY* %call97, null
  br i1 %cmp98, label %if.then.100, label %if.end.115

if.then.100:                                      ; preds = %while.body.92
  %arraydecay101 = getelementptr inbounds [9 x i8], [9 x i8]* %TEMP_NAME, i32 0, i32 0
  %63 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %SYM_TAB.addr, align 8
  %call102 = call i32 (i8*, i8*, i32, i32, %struct.SYMBOL_TABLE_ENTRY**, ...) bitcast (i32 (...)* @INSERT_IN_SYM_TAB to i32 (i8*, i8*, i32, i32, %struct.SYMBOL_TABLE_ENTRY**, ...)*)(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* %arraydecay101, i32 0, i32 5, %struct.SYMBOL_TABLE_ENTRY** %63)
  store i32 7, i32* %I, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.100
  %64 = load i32, i32* %I, align 4
  %cmp103 = icmp slt i32 %64, 1
  br i1 %cmp103, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %for.cond
  %65 = load i32, i32* %I, align 4
  %idxprom105 = sext i32 %65 to i64
  %arrayidx106 = getelementptr inbounds [9 x i8], [9 x i8]* %TEMP_NAME, i32 0, i64 %idxprom105
  %66 = load i8, i8* %arrayidx106, align 1
  %conv107 = sext i8 %66 to i32
  %cmp108 = icmp eq i32 %conv107, 32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.cond
  %67 = phi i1 [ true, %for.cond ], [ %cmp108, %lor.rhs ]
  br i1 %67, label %for.body, label %for.end

for.body:                                         ; preds = %lor.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %68 = load i32, i32* %I, align 4
  %dec = add nsw i32 %68, -1
  store i32 %dec, i32* %I, align 4
  br label %for.cond

for.end:                                          ; preds = %lor.end
  %69 = load i32, i32* %I, align 4
  %add110 = add nsw i32 %69, 1
  %idxprom111 = sext i32 %add110 to i64
  %arrayidx112 = getelementptr inbounds [9 x i8], [9 x i8]* %TEMP_NAME, i32 0, i64 %idxprom111
  store i8 0, i8* %arrayidx112, align 1
  %arraydecay113 = getelementptr inbounds [9 x i8], [9 x i8]* %TEMP_NAME, i32 0, i32 0
  %call114 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i32 0, i32 0), i8* %arraydecay113)
  %70 = load i32*, i32** %ERROR.addr, align 8
  store i32 1, i32* %70, align 4
  br label %if.end.115

if.end.115:                                       ; preds = %for.end, %while.body.92
  %71 = load i32, i32* %NEXT, align 4
  %add116 = add nsw i32 %71, 8
  store i32 %add116, i32* %NEXT, align 4
  br label %while.cond.86

while.end:                                        ; preds = %while.cond.86
  %72 = load i32, i32* %NEXT, align 4
  %conv117 = sext i32 %72 to i64
  %73 = load i8*, i8** %RECORD, align 8
  %call118 = call i64 @strlen(i8* %73) #5
  %cmp119 = icmp ne i64 %conv117, %call118
  br i1 %cmp119, label %if.then.121, label %if.end.122

if.then.121:                                      ; preds = %while.end
  store i32 1, i32* %LOCAL_ERROR, align 4
  br label %if.end.122

if.end.122:                                       ; preds = %if.then.121, %while.end
  br label %if.end.123

if.end.123:                                       ; preds = %if.end.122, %if.then.83
  %74 = load i32, i32* %LOCAL_ERROR, align 4
  %tobool124 = icmp ne i32 %74, 0
  br i1 %tobool124, label %if.then.125, label %if.end.127

if.then.125:                                      ; preds = %if.end.123
  %75 = load i8*, i8** %RECORD, align 8
  %call126 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i32 0, i32 0), i8* %75)
  br label %if.end.127

if.end.127:                                       ; preds = %if.then.125, %if.end.123
  br label %sw.epilog.130

sw.bb.128:                                        ; preds = %while.body, %while.body, %while.body
  br label %sw.default.129

sw.default.129:                                   ; preds = %while.body, %sw.bb.128
  br label %sw.epilog.130

sw.epilog.130:                                    ; preds = %sw.default.129, %if.end.127, %if.end.78, %if.end.36, %if.end.19
  %76 = load i32*, i32** %ERROR.addr, align 8
  %77 = load i32, i32* %76, align 4
  %tobool131 = icmp ne i32 %77, 0
  br i1 %tobool131, label %lor.end.134, label %lor.rhs.132

lor.rhs.132:                                      ; preds = %sw.epilog.130
  %78 = load i32, i32* %LOCAL_ERROR, align 4
  %tobool133 = icmp ne i32 %78, 0
  br label %lor.end.134

lor.end.134:                                      ; preds = %lor.rhs.132, %sw.epilog.130
  %79 = phi i1 [ true, %sw.epilog.130 ], [ %tobool133, %lor.rhs.132 ]
  %lor.ext = zext i1 %79 to i32
  %80 = load i32*, i32** %ERROR.addr, align 8
  store i32 %lor.ext, i32* %80, align 4
  br label %while.cond

while.end.135:                                    ; preds = %land.end
  ret void
}

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #1

declare void @GET_LINE(...) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare void @STR_TO_NUM(...) #2

declare void @STORE_AT(...) #2

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #1

declare void @ADD_INT_TO_LOC(...) #2

declare %struct.SYMBOL_TABLE_ENTRY* @LOOK_UP_SYMBOL(...) #2

declare i32 @INSERT_IN_SYM_TAB(...) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
