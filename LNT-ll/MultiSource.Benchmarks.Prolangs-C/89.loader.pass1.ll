; ModuleID = './MultiSource.Benchmarks.Prolangs-C/89.loader.pass1.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SYMBOL_TABLE_ENTRY = type { [9 x i8], [9 x i8], i32, i32, i32, %struct.SYMBOL_TABLE_ENTRY* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [9 x i8] c"_GLOBAL \00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"ERROR: Multiply defined global %s. Program not loaded.\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"ERROR: Illegal header record = %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"ERROR: Illegal define record = %s\0A\00", align 1
@START_ADDRESS = common global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"%s%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"WARNING: Found multiple start addresses.\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c" Expected only one. Using the first.\00", align 1
@MAIN_ROUTINE = common global [9 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"ERROR: Illegal end record = %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"ERROR: Illegal RECORD = %s\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @PASS1(%struct.SYMBOL_TABLE_ENTRY** %SYM_TAB, i32* %LOCATION, i32* %ERROR, %struct._IO_FILE* %INPUT) #0 {
entry:
  %SYM_TAB.addr = alloca %struct.SYMBOL_TABLE_ENTRY**, align 8
  %LOCATION.addr = alloca i32*, align 8
  %ERROR.addr = alloca i32*, align 8
  %INPUT.addr = alloca %struct._IO_FILE*, align 8
  %MODULE_NAME = alloca [9 x i8], align 1
  %RECORD = alloca i8*, align 8
  %UNREL_TO_REL_SHIFT = alloca i32, align 4
  %LOCAL_ERROR = alloca i32, align 4
  %TEMP_LOC = alloca i32, align 4
  %I = alloca i32, align 4
  %NEXT = alloca i32, align 4
  %TEMP_NAME = alloca [9 x i8], align 1
  %TEMP_LOC38 = alloca i32, align 4
  %I59 = alloca i32, align 4
  store %struct.SYMBOL_TABLE_ENTRY** %SYM_TAB, %struct.SYMBOL_TABLE_ENTRY*** %SYM_TAB.addr, align 8
  store i32* %LOCATION, i32** %LOCATION.addr, align 8
  store i32* %ERROR, i32** %ERROR.addr, align 8
  store %struct._IO_FILE* %INPUT, %struct._IO_FILE** %INPUT.addr, align 8
  store i32 0, i32* %UNREL_TO_REL_SHIFT, align 4
  %arrayidx = getelementptr inbounds [9 x i8], [9 x i8]* %MODULE_NAME, i32 0, i64 8
  store i8 0, i8* %arrayidx, align 1
  br label %while.cond

while.cond:                                       ; preds = %lor.end.123, %entry
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
  br i1 %3, label %while.body, label %while.end.124

while.body:                                       ; preds = %land.end
  store i32 0, i32* %LOCAL_ERROR, align 4
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %INPUT.addr, align 8
  call void (i8**, %struct._IO_FILE*, ...) bitcast (void (...)* @GET_LINE to void (i8**, %struct._IO_FILE*, ...)*)(i8** %RECORD, %struct._IO_FILE* %4)
  %5 = load i8*, i8** %RECORD, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %5, i64 0
  %6 = load i8, i8* %arrayidx1, align 1
  %conv = sext i8 %6 to i32
  switch i32 %conv, label %sw.default [
    i32 72, label %sw.bb
    i32 68, label %sw.bb.32
    i32 69, label %sw.bb.92
    i32 77, label %sw.bb.118
    i32 82, label %sw.bb.118
    i32 84, label %sw.bb.118
    i32 0, label %sw.bb.118
  ]

sw.bb:                                            ; preds = %while.body
  %7 = load i8*, i8** %RECORD, align 8
  %call2 = call i64 @strlen(i8* %7) #5
  %cmp3 = icmp ne i64 %call2, 21
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  store i32 1, i32* %LOCAL_ERROR, align 4
  br label %if.end.27

if.else:                                          ; preds = %sw.bb
  %arraydecay = getelementptr inbounds [9 x i8], [9 x i8]* %MODULE_NAME, i32 0, i32 0
  %8 = load i8*, i8** %RECORD, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 1
  %call6 = call i8* @strncpy(i8* %arraydecay, i8* %arrayidx5, i64 8) #4
  %arraydecay7 = getelementptr inbounds [9 x i8], [9 x i8]* %MODULE_NAME, i32 0, i32 0
  %9 = load i32*, i32** %LOCATION.addr, align 8
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %SYM_TAB.addr, align 8
  %call8 = call i32 (i8*, i8*, i32, i32, %struct.SYMBOL_TABLE_ENTRY**, ...) bitcast (i32 (...)* @INSERT_IN_SYM_TAB to i32 (i8*, i8*, i32, i32, %struct.SYMBOL_TABLE_ENTRY**, ...)*)(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* %arraydecay7, i32 %10, i32 3, %struct.SYMBOL_TABLE_ENTRY** %11)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.else.21, label %if.then.10

if.then.10:                                       ; preds = %if.else
  store i32 7, i32* %I, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.10
  %12 = load i32, i32* %I, align 4
  %cmp11 = icmp slt i32 %12, 1
  br i1 %cmp11, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %for.cond
  %13 = load i32, i32* %I, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx13 = getelementptr inbounds [9 x i8], [9 x i8]* %MODULE_NAME, i32 0, i64 %idxprom
  %14 = load i8, i8* %arrayidx13, align 1
  %conv14 = sext i8 %14 to i32
  %cmp15 = icmp eq i32 %conv14, 32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.cond
  %15 = phi i1 [ true, %for.cond ], [ %cmp15, %lor.rhs ]
  br i1 %15, label %for.body, label %for.end

for.body:                                         ; preds = %lor.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %I, align 4
  %dec = add nsw i32 %16, -1
  store i32 %dec, i32* %I, align 4
  br label %for.cond

for.end:                                          ; preds = %lor.end
  %17 = load i32, i32* %I, align 4
  %add = add nsw i32 %17, 1
  %idxprom17 = sext i32 %add to i64
  %arrayidx18 = getelementptr inbounds [9 x i8], [9 x i8]* %MODULE_NAME, i32 0, i64 %idxprom17
  store i8 0, i8* %arrayidx18, align 1
  %arraydecay19 = getelementptr inbounds [9 x i8], [9 x i8]* %MODULE_NAME, i32 0, i32 0
  %call20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i32 0, i32 0), i8* %arraydecay19)
  %18 = load i32*, i32** %ERROR.addr, align 8
  store i32 1, i32* %18, align 4
  br label %if.end

if.else.21:                                       ; preds = %if.else
  %19 = load i8*, i8** %RECORD, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %19, i64 9
  call void (i8*, i32, i32, i32*, i32*, ...) bitcast (void (...)* @STR_TO_NUM to void (i8*, i32, i32, i32*, i32*, ...)*)(i8* %arrayidx22, i32 6, i32 16, i32* %TEMP_LOC, i32* %LOCAL_ERROR)
  %20 = load i32*, i32** %LOCATION.addr, align 8
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %TEMP_LOC, align 4
  %sub = sub nsw i32 %21, %22
  store i32 %sub, i32* %UNREL_TO_REL_SHIFT, align 4
  %23 = load i8*, i8** %RECORD, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %23, i64 15
  call void (i8*, i32, i32, i32*, i32*, ...) bitcast (void (...)* @STR_TO_NUM to void (i8*, i32, i32, i32*, i32*, ...)*)(i8* %arrayidx23, i32 6, i32 16, i32* %TEMP_LOC, i32* %LOCAL_ERROR)
  %24 = load i32, i32* %TEMP_LOC, align 4
  %25 = load i32*, i32** %LOCATION.addr, align 8
  %26 = load i32, i32* %25, align 4
  %add24 = add nsw i32 %26, %24
  store i32 %add24, i32* %25, align 4
  %27 = load i32, i32* %TEMP_LOC, align 4
  %arraydecay25 = getelementptr inbounds [9 x i8], [9 x i8]* %MODULE_NAME, i32 0, i32 0
  %28 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %SYM_TAB.addr, align 8
  %call26 = call %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...) bitcast (%struct.SYMBOL_TABLE_ENTRY* (...)* @LOOK_UP_SYMBOL to %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...)*)(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* %arraydecay25, %struct.SYMBOL_TABLE_ENTRY** %28)
  %LENGTH = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %call26, i32 0, i32 3
  store i32 %27, i32* %LENGTH, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.21, %for.end
  br label %if.end.27

if.end.27:                                        ; preds = %if.end, %if.then
  %29 = load i32, i32* %LOCAL_ERROR, align 4
  %tobool28 = icmp ne i32 %29, 0
  br i1 %tobool28, label %if.then.29, label %if.end.31

if.then.29:                                       ; preds = %if.end.27
  %30 = load i8*, i8** %RECORD, align 8
  %call30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i32 0, i32 0), i8* %30)
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.29, %if.end.27
  br label %sw.epilog

sw.bb.32:                                         ; preds = %while.body
  %31 = load i8*, i8** %RECORD, align 8
  %call33 = call i64 @strlen(i8* %31) #5
  %cmp34 = icmp ugt i64 %call33, 71
  br i1 %cmp34, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %sw.bb.32
  store i32 1, i32* %LOCAL_ERROR, align 4
  br label %if.end.87

if.else.37:                                       ; preds = %sw.bb.32
  store i32 1, i32* %NEXT, align 4
  %arrayidx39 = getelementptr inbounds [9 x i8], [9 x i8]* %TEMP_NAME, i32 0, i64 8
  store i8 0, i8* %arrayidx39, align 1
  br label %while.cond.40

while.cond.40:                                    ; preds = %if.end.79, %if.else.37
  %32 = load i32, i32* %NEXT, align 4
  %add41 = add nsw i32 %32, 14
  %conv42 = sext i32 %add41 to i64
  %33 = load i8*, i8** %RECORD, align 8
  %call43 = call i64 @strlen(i8* %33) #5
  %cmp44 = icmp ule i64 %conv42, %call43
  br i1 %cmp44, label %while.body.46, label %while.end

while.body.46:                                    ; preds = %while.cond.40
  %arraydecay47 = getelementptr inbounds [9 x i8], [9 x i8]* %TEMP_NAME, i32 0, i32 0
  %34 = load i32, i32* %NEXT, align 4
  %idxprom48 = sext i32 %34 to i64
  %35 = load i8*, i8** %RECORD, align 8
  %arrayidx49 = getelementptr inbounds i8, i8* %35, i64 %idxprom48
  %call50 = call i8* @strncpy(i8* %arraydecay47, i8* %arrayidx49, i64 8) #4
  %36 = load i32, i32* %NEXT, align 4
  %add51 = add nsw i32 %36, 8
  %idxprom52 = sext i32 %add51 to i64
  %37 = load i8*, i8** %RECORD, align 8
  %arrayidx53 = getelementptr inbounds i8, i8* %37, i64 %idxprom52
  call void (i8*, i32, i32, i32*, i32*, ...) bitcast (void (...)* @STR_TO_NUM to void (i8*, i32, i32, i32*, i32*, ...)*)(i8* %arrayidx53, i32 6, i32 16, i32* %TEMP_LOC38, i32* %LOCAL_ERROR)
  %arraydecay54 = getelementptr inbounds [9 x i8], [9 x i8]* %TEMP_NAME, i32 0, i32 0
  %38 = load i32, i32* %TEMP_LOC38, align 4
  %39 = load i32, i32* %UNREL_TO_REL_SHIFT, align 4
  %add55 = add nsw i32 %38, %39
  %40 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %SYM_TAB.addr, align 8
  %call56 = call i32 (i8*, i8*, i32, i32, %struct.SYMBOL_TABLE_ENTRY**, ...) bitcast (i32 (...)* @INSERT_IN_SYM_TAB to i32 (i8*, i8*, i32, i32, %struct.SYMBOL_TABLE_ENTRY**, ...)*)(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* %arraydecay54, i32 %add55, i32 4, %struct.SYMBOL_TABLE_ENTRY** %40)
  %tobool57 = icmp ne i32 %call56, 0
  br i1 %tobool57, label %if.end.79, label %if.then.58

if.then.58:                                       ; preds = %while.body.46
  store i32 7, i32* %I59, align 4
  br label %for.cond.60

for.cond.60:                                      ; preds = %for.inc.71, %if.then.58
  %41 = load i32, i32* %I59, align 4
  %cmp61 = icmp slt i32 %41, 1
  br i1 %cmp61, label %lor.end.69, label %lor.rhs.63

lor.rhs.63:                                       ; preds = %for.cond.60
  %42 = load i32, i32* %I59, align 4
  %idxprom64 = sext i32 %42 to i64
  %arrayidx65 = getelementptr inbounds [9 x i8], [9 x i8]* %TEMP_NAME, i32 0, i64 %idxprom64
  %43 = load i8, i8* %arrayidx65, align 1
  %conv66 = sext i8 %43 to i32
  %cmp67 = icmp eq i32 %conv66, 32
  br label %lor.end.69

lor.end.69:                                       ; preds = %lor.rhs.63, %for.cond.60
  %44 = phi i1 [ true, %for.cond.60 ], [ %cmp67, %lor.rhs.63 ]
  br i1 %44, label %for.body.70, label %for.end.73

for.body.70:                                      ; preds = %lor.end.69
  br label %for.inc.71

for.inc.71:                                       ; preds = %for.body.70
  %45 = load i32, i32* %I59, align 4
  %dec72 = add nsw i32 %45, -1
  store i32 %dec72, i32* %I59, align 4
  br label %for.cond.60

for.end.73:                                       ; preds = %lor.end.69
  %46 = load i32, i32* %I59, align 4
  %add74 = add nsw i32 %46, 1
  %idxprom75 = sext i32 %add74 to i64
  %arrayidx76 = getelementptr inbounds [9 x i8], [9 x i8]* %TEMP_NAME, i32 0, i64 %idxprom75
  store i8 0, i8* %arrayidx76, align 1
  %arraydecay77 = getelementptr inbounds [9 x i8], [9 x i8]* %TEMP_NAME, i32 0, i32 0
  %call78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i32 0, i32 0), i8* %arraydecay77)
  %47 = load i32*, i32** %ERROR.addr, align 8
  store i32 1, i32* %47, align 4
  br label %if.end.79

if.end.79:                                        ; preds = %for.end.73, %while.body.46
  %48 = load i32, i32* %NEXT, align 4
  %add80 = add nsw i32 %48, 14
  store i32 %add80, i32* %NEXT, align 4
  br label %while.cond.40

while.end:                                        ; preds = %while.cond.40
  %49 = load i32, i32* %NEXT, align 4
  %conv81 = sext i32 %49 to i64
  %50 = load i8*, i8** %RECORD, align 8
  %call82 = call i64 @strlen(i8* %50) #5
  %cmp83 = icmp ne i64 %conv81, %call82
  br i1 %cmp83, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %while.end
  store i32 1, i32* %LOCAL_ERROR, align 4
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.85, %while.end
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.86, %if.then.36
  %51 = load i32, i32* %LOCAL_ERROR, align 4
  %tobool88 = icmp ne i32 %51, 0
  br i1 %tobool88, label %if.then.89, label %if.end.91

if.then.89:                                       ; preds = %if.end.87
  %52 = load i8*, i8** %RECORD, align 8
  %call90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i32 0, i32 0), i8* %52)
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.89, %if.end.87
  br label %sw.epilog

sw.bb.92:                                         ; preds = %while.body
  %53 = load i8*, i8** %RECORD, align 8
  %call93 = call i64 @strlen(i8* %53) #5
  %cmp94 = icmp ne i64 %call93, 1
  br i1 %cmp94, label %if.then.96, label %if.end.113

if.then.96:                                       ; preds = %sw.bb.92
  %54 = load i8*, i8** %RECORD, align 8
  %call97 = call i64 @strlen(i8* %54) #5
  %cmp98 = icmp ne i64 %call97, 7
  br i1 %cmp98, label %if.then.100, label %if.else.101

if.then.100:                                      ; preds = %if.then.96
  store i32 1, i32* %LOCAL_ERROR, align 4
  br label %if.end.112

if.else.101:                                      ; preds = %if.then.96
  %55 = load i32, i32* @START_ADDRESS, align 4
  %cmp102 = icmp ne i32 %55, -1
  br i1 %cmp102, label %if.then.104, label %if.else.106

if.then.104:                                      ; preds = %if.else.101
  %call105 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.111

if.else.106:                                      ; preds = %if.else.101
  %56 = load i8*, i8** %RECORD, align 8
  %arrayidx107 = getelementptr inbounds i8, i8* %56, i64 1
  call void (i8*, i32, i32, i32*, i32*, ...) bitcast (void (...)* @STR_TO_NUM to void (i8*, i32, i32, i32*, i32*, ...)*)(i8* %arrayidx107, i32 6, i32 16, i32* @START_ADDRESS, i32* %LOCAL_ERROR)
  %57 = load i32, i32* %UNREL_TO_REL_SHIFT, align 4
  %58 = load i32, i32* @START_ADDRESS, align 4
  %add108 = add nsw i32 %58, %57
  store i32 %add108, i32* @START_ADDRESS, align 4
  %arraydecay109 = getelementptr inbounds [9 x i8], [9 x i8]* %MODULE_NAME, i32 0, i32 0
  %call110 = call i8* @strcpy(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @MAIN_ROUTINE, i32 0, i32 0), i8* %arraydecay109) #4
  br label %if.end.111

if.end.111:                                       ; preds = %if.else.106, %if.then.104
  br label %if.end.112

if.end.112:                                       ; preds = %if.end.111, %if.then.100
  br label %if.end.113

if.end.113:                                       ; preds = %if.end.112, %sw.bb.92
  %59 = load i32, i32* %LOCAL_ERROR, align 4
  %tobool114 = icmp ne i32 %59, 0
  br i1 %tobool114, label %if.then.115, label %if.end.117

if.then.115:                                      ; preds = %if.end.113
  %60 = load i8*, i8** %RECORD, align 8
  %call116 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0), i8* %60)
  br label %if.end.117

if.end.117:                                       ; preds = %if.then.115, %if.end.113
  br label %sw.epilog

sw.bb.118:                                        ; preds = %while.body, %while.body, %while.body, %while.body
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %61 = load i8*, i8** %RECORD, align 8
  %call119 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i32 0, i32 0), i8* %61)
  store i32 1, i32* %LOCAL_ERROR, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.118, %if.end.117, %if.end.91, %if.end.31
  %62 = load i32*, i32** %ERROR.addr, align 8
  %63 = load i32, i32* %62, align 4
  %tobool120 = icmp ne i32 %63, 0
  br i1 %tobool120, label %lor.end.123, label %lor.rhs.121

lor.rhs.121:                                      ; preds = %sw.epilog
  %64 = load i32, i32* %LOCAL_ERROR, align 4
  %tobool122 = icmp ne i32 %64, 0
  br label %lor.end.123

lor.end.123:                                      ; preds = %lor.rhs.121, %sw.epilog
  %65 = phi i1 [ true, %sw.epilog ], [ %tobool122, %lor.rhs.121 ]
  %lor.ext = zext i1 %65 to i32
  %66 = load i32*, i32** %ERROR.addr, align 8
  store i32 %lor.ext, i32* %66, align 4
  br label %while.cond

while.end.124:                                    ; preds = %land.end
  ret void
}

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #1

declare void @GET_LINE(...) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #1

declare i32 @INSERT_IN_SYM_TAB(...) #2

declare i32 @printf(i8*, ...) #2

declare void @STR_TO_NUM(...) #2

declare %struct.SYMBOL_TABLE_ENTRY* @LOOK_UP_SYMBOL(...) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
