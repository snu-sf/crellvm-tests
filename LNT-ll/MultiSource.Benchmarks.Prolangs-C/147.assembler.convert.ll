; ModuleID = './MultiSource.Benchmarks.Prolangs-C/147.assembler.convert.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BUFFER_TYPE = type { %struct.BUFFER*, %struct.BUFFER*, i32 }
%struct.BUFFER = type { i8*, %struct.BUFFER* }
%struct.SYMBOL_TABLE_ENTRY = type { [9 x i8], [9 x i8], i32, i32, i32, %struct.SYMBOL_TABLE_ENTRY* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@MISSING_LABEL_NAME = global [3 x i8] c"_!\00", align 1
@.str = private unnamed_addr constant [3 x i8] c"_!\00", align 1
@MODULE_NAME = external global [9 x i8], align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"NUM_TO_STR called illegally.\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"ASSEMBLER ERROR: PRT_NUM called illegally.\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"eERROR[15]: Illegal Expression. Found '%c' after %c.\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"eERROR[15]: Illegal Expression. Found '' after %c.\00", align 1
@ERROR_REC_BUF = external global %struct.BUFFER_TYPE, align 8
@.str.6 = private unnamed_addr constant [68 x i8] c"eERROR[10]: %s[%d] is too large for it's intended use (MAX %d[10]).\00", align 1
@.str.7 = private unnamed_addr constant [68 x i8] c"eERROR[11]: %s[%d] is too small for it's intended use (MIN %d[10]).\00", align 1
@.str.8 = private unnamed_addr constant [55 x i8] c"eERROR[16]: Illegal Hexidecimal. Expected close quote.\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"eERROR[17]: Illegal Hexidecimal. %s\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [48 x i8] c"eERROR[14]: Expected an expression, found '%s'.\00", align 1
@.str.12 = private unnamed_addr constant [65 x i8] c"eERROR[24]: %s is not a defined symbol or is forwardly declared.\00", align 1
@.str.13 = private unnamed_addr constant [40 x i8] c"eERROR[49]: %s is not a defined symbol.\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@MOD_REC_BUF = external global %struct.BUFFER_TYPE, align 8
@.str.15 = private unnamed_addr constant [48 x i8] c"eERROR[25]: %s is a LABEL, expected a CONSTANT.\00", align 1
@.str.16 = private unnamed_addr constant [48 x i8] c"eERROR[50]: %s is a CONSTANT, expected a LABEL.\00", align 1

; Function Attrs: nounwind uwtable
define void @RESET_MISSING_LABEL_NAME() #0 {
entry:
  %call = call i8* @strcpy(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @MISSING_LABEL_NAME, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0)) #4
  ret void
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define void @GET_NEXT_MISSING_LABEL(i8* %LABEL, %struct.SYMBOL_TABLE_ENTRY** %SYM_TAB) #0 {
entry:
  %LABEL.addr = alloca i8*, align 8
  %SYM_TAB.addr = alloca %struct.SYMBOL_TABLE_ENTRY**, align 8
  %CH = alloca i8*, align 8
  store i8* %LABEL, i8** %LABEL.addr, align 8
  store %struct.SYMBOL_TABLE_ENTRY** %SYM_TAB, %struct.SYMBOL_TABLE_ENTRY*** %SYM_TAB.addr, align 8
  %0 = load i8*, i8** %LABEL.addr, align 8
  %call = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @MISSING_LABEL_NAME, i32 0, i32 0)) #4
  %call1 = call i64 @strlen(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @MISSING_LABEL_NAME, i32 0, i32 0)) #5
  %sub = sub i64 %call1, 1
  %arrayidx = getelementptr inbounds [3 x i8], [3 x i8]* @MISSING_LABEL_NAME, i32 0, i64 %sub
  store i8* %arrayidx, i8** %CH, align 8
  %1 = load i8*, i8** %CH, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp slt i32 %conv, 87
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %CH, align 8
  %4 = load i8, i8* %3, align 1
  %conv3 = sext i8 %4 to i32
  %add = add nsw i32 %conv3, 1
  %conv4 = trunc i32 %add to i8
  %5 = load i8*, i8** %CH, align 8
  store i8 %conv4, i8* %5, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i8*, i8** %LABEL.addr, align 8
  %7 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %SYM_TAB.addr, align 8
  %call5 = call i32 (i8*, i8*, i32, i32, %struct.SYMBOL_TABLE_ENTRY**, ...) bitcast (i32 (...)* @INSERT_IN_SYM_TAB to i32 (i8*, i8*, i32, i32, %struct.SYMBOL_TABLE_ENTRY**, ...)*)(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @MODULE_NAME, i32 0, i32 0), i8* %6, i32 0, i32 0, %struct.SYMBOL_TABLE_ENTRY** %7)
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare i32 @INSERT_IN_SYM_TAB(...) #3

; Function Attrs: nounwind uwtable
define void @BLANK_STR(i8* %STRING) #0 {
entry:
  %STRING.addr = alloca i8*, align 8
  %I = alloca i32, align 4
  store i8* %STRING, i8** %STRING.addr, align 8
  store i32 0, i32* %I, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %I, align 4
  %cmp = icmp slt i32 %0, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %I, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i8*, i8** %STRING.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %idxprom
  store i8 32, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %I, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %I, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %4 = load i8*, i8** %STRING.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %4, i64 8
  store i8 0, i8* %arrayidx1, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @CHAR_TO_DIGIT(i8 signext %CH, i32 %NUM_BASE) #0 {
entry:
  %CH.addr = alloca i8, align 1
  %NUM_BASE.addr = alloca i32, align 4
  %DIGIT = alloca i32, align 4
  store i8 %CH, i8* %CH.addr, align 1
  store i32 %NUM_BASE, i32* %NUM_BASE.addr, align 4
  store i32 -1, i32* %DIGIT, align 4
  %0 = load i8, i8* %CH.addr, align 1
  %conv = sext i8 %0 to i32
  %cmp = icmp sge i32 %conv, 48
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i8, i8* %CH.addr, align 1
  %conv2 = sext i8 %1 to i32
  %cmp3 = icmp sle i32 %conv2, 57
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %2 = load i8, i8* %CH.addr, align 1
  %conv5 = sext i8 %2 to i32
  %sub = sub nsw i32 %conv5, 48
  store i32 %sub, i32* %DIGIT, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %3 = load i8, i8* %CH.addr, align 1
  %conv6 = sext i8 %3 to i32
  %cmp7 = icmp sge i32 %conv6, 65
  br i1 %cmp7, label %land.lhs.true.9, label %if.end.16

land.lhs.true.9:                                  ; preds = %if.end
  %4 = load i8, i8* %CH.addr, align 1
  %conv10 = sext i8 %4 to i32
  %cmp11 = icmp sle i32 %conv10, 90
  br i1 %cmp11, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %land.lhs.true.9
  %5 = load i8, i8* %CH.addr, align 1
  %conv14 = sext i8 %5 to i32
  %sub15 = sub nsw i32 %conv14, 65
  %add = add nsw i32 %sub15, 10
  store i32 %add, i32* %DIGIT, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.13, %land.lhs.true.9, %if.end
  %6 = load i32, i32* %DIGIT, align 4
  %7 = load i32, i32* %NUM_BASE.addr, align 4
  %cmp17 = icmp sge i32 %6, %7
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.16
  store i32 -1, i32* %DIGIT, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.end.16
  %8 = load i32, i32* %DIGIT, align 4
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define void @NUM_TO_STR(i32 %NUM, i32 %BASE, i32 %LEN, i8* %STR) #0 {
entry:
  %NUM.addr = alloca i32, align 4
  %BASE.addr = alloca i32, align 4
  %LEN.addr = alloca i32, align 4
  %STR.addr = alloca i8*, align 8
  %I = alloca i32, align 4
  %DIGIT = alloca i32, align 4
  store i32 %NUM, i32* %NUM.addr, align 4
  store i32 %BASE, i32* %BASE.addr, align 4
  store i32 %LEN, i32* %LEN.addr, align 4
  store i8* %STR, i8** %STR.addr, align 8
  %0 = load i32, i32* %LEN.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i8*, i8** %STR.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  %2 = load i32, i32* %LEN.addr, align 4
  %sub = sub nsw i32 %2, 1
  store i32 %sub, i32* %I, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %I, align 4
  %cmp = icmp sge i32 %3, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %NUM.addr, align 4
  %5 = load i32, i32* %NUM.addr, align 4
  %6 = load i32, i32* %BASE.addr, align 4
  %div = sdiv i32 %5, %6
  %7 = load i32, i32* %BASE.addr, align 4
  %mul = mul nsw i32 %div, %7
  %sub1 = sub nsw i32 %4, %mul
  store i32 %sub1, i32* %DIGIT, align 4
  %8 = load i32, i32* %BASE.addr, align 4
  %9 = load i32, i32* %NUM.addr, align 4
  %div2 = sdiv i32 %9, %8
  store i32 %div2, i32* %NUM.addr, align 4
  %10 = load i32, i32* %DIGIT, align 4
  %cmp3 = icmp sge i32 %10, 0
  br i1 %cmp3, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %11 = load i32, i32* %DIGIT, align 4
  %cmp4 = icmp sle i32 %11, 9
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %12 = load i32, i32* %DIGIT, align 4
  %conv = trunc i32 %12 to i8
  %conv5 = sext i8 %conv to i32
  %add = add nsw i32 %conv5, 48
  %conv6 = trunc i32 %add to i8
  %13 = load i32, i32* %I, align 4
  %idxprom7 = sext i32 %13 to i64
  %14 = load i8*, i8** %STR.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %14, i64 %idxprom7
  store i8 %conv6, i8* %arrayidx8, align 1
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %for.body
  %15 = load i32, i32* %DIGIT, align 4
  %sub9 = sub nsw i32 %15, 10
  %conv10 = trunc i32 %sub9 to i8
  %conv11 = sext i8 %conv10 to i32
  %add12 = add nsw i32 %conv11, 65
  %conv13 = trunc i32 %add12 to i8
  %16 = load i32, i32* %I, align 4
  %idxprom14 = sext i32 %16 to i64
  %17 = load i8*, i8** %STR.addr, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %17, i64 %idxprom14
  store i8 %conv13, i8* %arrayidx15, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %18 = load i32, i32* %I, align 4
  %dec = add nsw i32 %18, -1
  store i32 %dec, i32* %I, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %NUM.addr, align 4
  %cmp16 = icmp ne i32 %19, 0
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %for.end
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %for.end
  ret void
}

declare i32 @printf(i8*, ...) #3

; Function Attrs: nounwind uwtable
define void @PRT_NUM(i32 %NUM, i32 %NUM_BASE, i32 %LEN, %struct._IO_FILE* %OUTPUT) #0 {
entry:
  %NUM.addr = alloca i32, align 4
  %NUM_BASE.addr = alloca i32, align 4
  %LEN.addr = alloca i32, align 4
  %OUTPUT.addr = alloca %struct._IO_FILE*, align 8
  %COUNT = alloca i32, align 4
  %MAX_NUM = alloca i32, align 4
  %DIGIT = alloca i32, align 4
  store i32 %NUM, i32* %NUM.addr, align 4
  store i32 %NUM_BASE, i32* %NUM_BASE.addr, align 4
  store i32 %LEN, i32* %LEN.addr, align 4
  store %struct._IO_FILE* %OUTPUT, %struct._IO_FILE** %OUTPUT.addr, align 8
  %0 = load i32, i32* %NUM_BASE.addr, align 4
  %conv = sitofp i32 %0 to double
  %mul = fmul double %conv, 1.000000e+00
  %1 = load i32, i32* %LEN.addr, align 4
  %sub = sub nsw i32 %1, 1
  %conv1 = sitofp i32 %sub to double
  %mul2 = fmul double %conv1, 1.000000e+00
  %call = call double @pow(double %mul, double %mul2) #4
  %conv3 = fptosi double %call to i32
  store i32 %conv3, i32* %MAX_NUM, align 4
  %2 = load i32, i32* %NUM.addr, align 4
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %MAX_NUM, align 4
  %4 = load i32, i32* %NUM_BASE.addr, align 4
  %mul5 = mul nsw i32 %3, %4
  %5 = load i32, i32* %NUM.addr, align 4
  %add = add nsw i32 %mul5, %5
  store i32 %add, i32* %NUM.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, i32* %NUM.addr, align 4
  %7 = load i32, i32* %MAX_NUM, align 4
  %8 = load i32, i32* %NUM_BASE.addr, align 4
  %mul6 = mul nsw i32 %7, %8
  %cmp7 = icmp sge i32 %6, %mul6
  br i1 %cmp7, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.end
  %9 = load i32, i32* %MAX_NUM, align 4
  store i32 %9, i32* %COUNT, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.11
  %10 = load i32, i32* %COUNT, align 4
  %cmp12 = icmp sge i32 %10, 1
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %NUM.addr, align 4
  %12 = load i32, i32* %COUNT, align 4
  %div = sdiv i32 %11, %12
  store i32 %div, i32* %DIGIT, align 4
  %13 = load i32, i32* %NUM.addr, align 4
  %14 = load i32, i32* %DIGIT, align 4
  %15 = load i32, i32* %COUNT, align 4
  %mul14 = mul nsw i32 %14, %15
  %sub15 = sub nsw i32 %13, %mul14
  store i32 %sub15, i32* %NUM.addr, align 4
  %16 = load i32, i32* %DIGIT, align 4
  %cmp16 = icmp sge i32 %16, 0
  br i1 %cmp16, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %17 = load i32, i32* %DIGIT, align 4
  %cmp18 = icmp sle i32 %17, 9
  br i1 %cmp18, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %land.lhs.true
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT.addr, align 8
  %19 = load i32, i32* %DIGIT, align 4
  %add21 = add nsw i32 %19, 48
  %conv22 = trunc i32 %add21 to i8
  %conv23 = sext i8 %conv22 to i32
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i32 %conv23)
  br label %if.end.30

if.else:                                          ; preds = %land.lhs.true, %for.body
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT.addr, align 8
  %21 = load i32, i32* %DIGIT, align 4
  %sub25 = sub nsw i32 %21, 10
  %add26 = add nsw i32 %sub25, 65
  %conv27 = trunc i32 %add26 to i8
  %conv28 = sext i8 %conv27 to i32
  %call29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i32 %conv28)
  br label %if.end.30

if.end.30:                                        ; preds = %if.else, %if.then.20
  br label %for.inc

for.inc:                                          ; preds = %if.end.30
  %22 = load i32, i32* %NUM_BASE.addr, align 4
  %23 = load i32, i32* %COUNT, align 4
  %div31 = sdiv i32 %23, %22
  store i32 %div31, i32* %COUNT, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare double @pow(double, double) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define i32 @GET_NUM(i8** %CURRENT_CHAR, i32 %BITS, i32 %NUM_BASE) #0 {
entry:
  %CURRENT_CHAR.addr = alloca i8**, align 8
  %BITS.addr = alloca i32, align 4
  %NUM_BASE.addr = alloca i32, align 4
  %CONVERT = alloca i32, align 4
  %MAX_UNSIGNED_INT = alloca i32, align 4
  %SIGN = alloca i32, align 4
  %INPUT_START = alloca i8*, align 8
  %DIGIT = alloca i32, align 4
  %ERROR_MSG = alloca i8*, align 8
  %SAV_CHAR = alloca i8, align 1
  %ERROR_MSG53 = alloca i8*, align 8
  store i8** %CURRENT_CHAR, i8*** %CURRENT_CHAR.addr, align 8
  store i32 %BITS, i32* %BITS.addr, align 4
  store i32 %NUM_BASE, i32* %NUM_BASE.addr, align 4
  store i32 0, i32* %CONVERT, align 4
  store i32 1, i32* %SIGN, align 4
  %0 = load i32, i32* %BITS.addr, align 4
  %sub = sub nsw i32 %0, 1
  %conv = sitofp i32 %sub to double
  %mul = fmul double %conv, 1.000000e+00
  %call = call double @pow(double 2.000000e+00, double %mul) #4
  %conv1 = fptosi double %call to i32
  store i32 %conv1, i32* %MAX_UNSIGNED_INT, align 4
  %1 = load i8**, i8*** %CURRENT_CHAR.addr, align 8
  %2 = load i8*, i8** %1, align 8
  store i8* %2, i8** %INPUT_START, align 8
  %3 = load i8**, i8*** %CURRENT_CHAR.addr, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = load i8, i8* %4, align 1
  %conv2 = sext i8 %5 to i32
  %cmp = icmp eq i32 %conv2, 45
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 -1, i32* %SIGN, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 1, i32* %SIGN, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load i8**, i8*** %CURRENT_CHAR.addr, align 8
  %7 = load i8*, i8** %6, align 8
  %8 = load i8, i8* %7, align 1
  %conv4 = sext i8 %8 to i32
  %cmp5 = icmp eq i32 %conv4, 45
  br i1 %cmp5, label %if.then.10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %9 = load i8**, i8*** %CURRENT_CHAR.addr, align 8
  %10 = load i8*, i8** %9, align 8
  %11 = load i8, i8* %10, align 1
  %conv7 = sext i8 %11 to i32
  %cmp8 = icmp eq i32 %conv7, 43
  br i1 %cmp8, label %if.then.10, label %if.end.29

if.then.10:                                       ; preds = %lor.lhs.false, %if.end
  %12 = load i8**, i8*** %CURRENT_CHAR.addr, align 8
  %13 = load i8*, i8** %12, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %12, align 8
  %14 = load i8**, i8*** %CURRENT_CHAR.addr, align 8
  %15 = load i8*, i8** %14, align 8
  %16 = load i8, i8* %15, align 1
  %17 = load i32, i32* %NUM_BASE.addr, align 4
  %call11 = call i32 @CHAR_TO_DIGIT(i8 signext %16, i32 %17)
  %cmp12 = icmp eq i32 %call11, -1
  br i1 %cmp12, label %if.then.14, label %if.end.28

if.then.14:                                       ; preds = %if.then.10
  %call15 = call noalias i8* @malloc(i64 80) #4
  store i8* %call15, i8** %ERROR_MSG, align 8
  %18 = load i8**, i8*** %CURRENT_CHAR.addr, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = load i8, i8* %19, align 1
  %conv16 = sext i8 %20 to i32
  %cmp17 = icmp sgt i32 %conv16, 0
  br i1 %cmp17, label %if.then.19, label %if.else.23

if.then.19:                                       ; preds = %if.then.14
  %21 = load i8*, i8** %ERROR_MSG, align 8
  %22 = load i8**, i8*** %CURRENT_CHAR.addr, align 8
  %23 = load i8*, i8** %22, align 8
  %24 = load i8, i8* %23, align 1
  %conv20 = sext i8 %24 to i32
  %25 = load i8**, i8*** %CURRENT_CHAR.addr, align 8
  %26 = load i8*, i8** %25, align 8
  %add.ptr = getelementptr inbounds i8, i8* %26, i64 -1
  %27 = load i8, i8* %add.ptr, align 1
  %conv21 = sext i8 %27 to i32
  %call22 = call i32 (i8*, i8*, ...) @sprintf(i8* %21, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i32 0, i32 0), i32 %conv20, i32 %conv21) #4
  br label %if.end.27

if.else.23:                                       ; preds = %if.then.14
  %28 = load i8*, i8** %ERROR_MSG, align 8
  %29 = load i8**, i8*** %CURRENT_CHAR.addr, align 8
  %30 = load i8*, i8** %29, align 8
  %add.ptr24 = getelementptr inbounds i8, i8* %30, i64 -1
  %31 = load i8, i8* %add.ptr24, align 1
  %conv25 = sext i8 %31 to i32
  %call26 = call i32 (i8*, i8*, ...) @sprintf(i8* %28, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i32 0, i32 0), i32 %conv25) #4
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.23, %if.then.19
  %32 = load i8*, i8** %ERROR_MSG, align 8
  call void (%struct.BUFFER_TYPE*, i8*, ...) bitcast (void (...)* @ADD_TO_END_OF_BUFFER to void (%struct.BUFFER_TYPE*, i8*, ...)*)(%struct.BUFFER_TYPE* @ERROR_REC_BUF, i8* %32)
  %33 = load i8*, i8** %ERROR_MSG, align 8
  call void @free(i8* %33) #4
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.then.10
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %lor.lhs.false
  br label %while.cond

while.cond:                                       ; preds = %if.end.39, %if.end.29
  %34 = load i8**, i8*** %CURRENT_CHAR.addr, align 8
  %35 = load i8*, i8** %34, align 8
  %36 = load i8, i8* %35, align 1
  %37 = load i32, i32* %NUM_BASE.addr, align 4
  %call30 = call i32 @CHAR_TO_DIGIT(i8 signext %36, i32 %37)
  store i32 %call30, i32* %DIGIT, align 4
  %cmp31 = icmp ne i32 %call30, -1
  br i1 %cmp31, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %38 = load i8**, i8*** %CURRENT_CHAR.addr, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = load i8, i8* %39, align 1
  %conv33 = sext i8 %40 to i32
  %call34 = call i32 (i32, ...) bitcast (i32 (...)* @eoln to i32 (i32, ...)*)(i32 %conv33)
  %tobool = icmp ne i32 %call34, 0
  %lnot = xor i1 %tobool, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %41 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %41, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %42 = load i32, i32* %CONVERT, align 4
  %43 = load i32, i32* %MAX_UNSIGNED_INT, align 4
  %cmp35 = icmp sle i32 %42, %43
  br i1 %cmp35, label %if.then.37, label %if.end.39

if.then.37:                                       ; preds = %while.body
  %44 = load i32, i32* %CONVERT, align 4
  %45 = load i32, i32* %NUM_BASE.addr, align 4
  %mul38 = mul nsw i32 %44, %45
  %46 = load i32, i32* %DIGIT, align 4
  %add = add nsw i32 %mul38, %46
  store i32 %add, i32* %CONVERT, align 4
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.37, %while.body
  %47 = load i8**, i8*** %CURRENT_CHAR.addr, align 8
  %48 = load i8*, i8** %47, align 8
  %incdec.ptr40 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %incdec.ptr40, i8** %47, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %49 = load i32, i32* %CONVERT, align 4
  %50 = load i32, i32* %MAX_UNSIGNED_INT, align 4
  %cmp41 = icmp sgt i32 %49, %50
  br i1 %cmp41, label %land.lhs.true, label %lor.lhs.false.45

land.lhs.true:                                    ; preds = %while.end
  %51 = load i32, i32* %SIGN, align 4
  %cmp43 = icmp eq i32 %51, -1
  br i1 %cmp43, label %if.then.52, label %lor.lhs.false.45

lor.lhs.false.45:                                 ; preds = %land.lhs.true, %while.end
  %52 = load i32, i32* %CONVERT, align 4
  %53 = load i32, i32* %MAX_UNSIGNED_INT, align 4
  %sub46 = sub nsw i32 %53, 1
  %cmp47 = icmp sgt i32 %52, %sub46
  br i1 %cmp47, label %land.lhs.true.49, label %if.end.77

land.lhs.true.49:                                 ; preds = %lor.lhs.false.45
  %54 = load i32, i32* %SIGN, align 4
  %cmp50 = icmp eq i32 %54, 1
  br i1 %cmp50, label %if.then.52, label %if.end.77

if.then.52:                                       ; preds = %land.lhs.true.49, %land.lhs.true
  %55 = load i8**, i8*** %CURRENT_CHAR.addr, align 8
  %56 = load i8*, i8** %55, align 8
  %57 = load i8, i8* %56, align 1
  store i8 %57, i8* %SAV_CHAR, align 1
  %58 = load i8**, i8*** %CURRENT_CHAR.addr, align 8
  %59 = load i8*, i8** %58, align 8
  store i8 0, i8* %59, align 1
  %60 = load i32, i32* %NUM_BASE.addr, align 4
  %conv54 = sitofp i32 %60 to double
  %call55 = call double @log10(double %conv54) #4
  %conv56 = fptosi double %call55 to i32
  %add57 = add nsw i32 80, %conv56
  %61 = load i32, i32* %MAX_UNSIGNED_INT, align 4
  %conv58 = sitofp i32 %61 to double
  %call59 = call double @log10(double %conv58) #4
  %conv60 = fptosi double %call59 to i32
  %add61 = add nsw i32 %add57, %conv60
  %conv62 = sext i32 %add61 to i64
  %62 = load i8*, i8** %INPUT_START, align 8
  %call63 = call i64 @strlen(i8* %62) #5
  %add64 = add i64 %conv62, %call63
  %conv65 = trunc i64 %add64 to i32
  %conv66 = zext i32 %conv65 to i64
  %call67 = call noalias i8* @malloc(i64 %conv66) #4
  store i8* %call67, i8** %ERROR_MSG53, align 8
  %63 = load i32, i32* %SIGN, align 4
  %cmp68 = icmp eq i32 %63, 1
  br i1 %cmp68, label %if.then.70, label %if.else.73

if.then.70:                                       ; preds = %if.then.52
  %64 = load i8*, i8** %ERROR_MSG53, align 8
  %65 = load i8*, i8** %INPUT_START, align 8
  %66 = load i32, i32* %NUM_BASE.addr, align 4
  %67 = load i32, i32* %MAX_UNSIGNED_INT, align 4
  %sub71 = sub nsw i32 %67, 1
  %call72 = call i32 (i8*, i8*, ...) @sprintf(i8* %64, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.6, i32 0, i32 0), i8* %65, i32 %66, i32 %sub71) #4
  br label %if.end.76

if.else.73:                                       ; preds = %if.then.52
  %68 = load i8*, i8** %ERROR_MSG53, align 8
  %69 = load i8*, i8** %INPUT_START, align 8
  %70 = load i32, i32* %NUM_BASE.addr, align 4
  %71 = load i32, i32* %MAX_UNSIGNED_INT, align 4
  %mul74 = mul nsw i32 -1, %71
  %call75 = call i32 (i8*, i8*, ...) @sprintf(i8* %68, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.7, i32 0, i32 0), i8* %69, i32 %70, i32 %mul74) #4
  br label %if.end.76

if.end.76:                                        ; preds = %if.else.73, %if.then.70
  %72 = load i8*, i8** %ERROR_MSG53, align 8
  call void (%struct.BUFFER_TYPE*, i8*, ...) bitcast (void (...)* @ADD_TO_END_OF_BUFFER to void (%struct.BUFFER_TYPE*, i8*, ...)*)(%struct.BUFFER_TYPE* @ERROR_REC_BUF, i8* %72)
  %73 = load i8*, i8** %ERROR_MSG53, align 8
  call void @free(i8* %73) #4
  %74 = load i8, i8* %SAV_CHAR, align 1
  %75 = load i8**, i8*** %CURRENT_CHAR.addr, align 8
  %76 = load i8*, i8** %75, align 8
  store i8 %74, i8* %76, align 1
  store i32 0, i32* %CONVERT, align 4
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %land.lhs.true.49, %lor.lhs.false.45
  %77 = load i32, i32* %CONVERT, align 4
  %78 = load i32, i32* %SIGN, align 4
  %mul78 = mul nsw i32 %77, %78
  ret i32 %mul78
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #1

declare void @ADD_TO_END_OF_BUFFER(...) #3

; Function Attrs: nounwind
declare void @free(i8*) #1

declare i32 @eoln(...) #3

; Function Attrs: nounwind
declare double @log10(double) #1

; Function Attrs: nounwind uwtable
define i32 @GET_EXPRESSION(i8** %CURRENT_CHAR, i32 %BITS, i32 %LOCATION, %struct.SYMBOL_TABLE_ENTRY** %SYM_TAB, i32* %WHAT_KIND) #0 {
entry:
  %retval = alloca i32, align 4
  %CURRENT_CHAR.addr = alloca i8**, align 8
  %BITS.addr = alloca i32, align 4
  %LOCATION.addr = alloca i32, align 4
  %SYM_TAB.addr = alloca %struct.SYMBOL_TABLE_ENTRY**, align 8
  %WHAT_KIND.addr = alloca i32*, align 8
  %START = alloca i8*, align 8
  %RESULT = alloca i32, align 4
  %ERROR_MSG = alloca [80 x i8], align 16
  %TEMP = alloca i8, align 1
  %ERROR_MSG42 = alloca i8*, align 8
  %LABEL_NAME = alloca [9 x i8], align 1
  %LABEL_INFO = alloca %struct.SYMBOL_TABLE_ENTRY*, align 8
  %ERROR_MSG59 = alloca i8*, align 8
  %ERROR_MSG72 = alloca i8*, align 8
  %OUTPUT_LINE = alloca [17 x i8], align 16
  %FIX_LEN_NAME = alloca [9 x i8], align 1
  %LEN_STR = alloca [3 x i8], align 1
  %ERROR_MSG129 = alloca i8*, align 8
  store i8** %CURRENT_CHAR, i8*** %CURRENT_CHAR.addr, align 8
  store i32 %BITS, i32* %BITS.addr, align 4
  store i32 %LOCATION, i32* %LOCATION.addr, align 4
  store %struct.SYMBOL_TABLE_ENTRY** %SYM_TAB, %struct.SYMBOL_TABLE_ENTRY*** %SYM_TAB.addr, align 8
  store i32* %WHAT_KIND, i32** %WHAT_KIND.addr, align 8
  %0 = load i8**, i8*** %CURRENT_CHAR.addr, align 8
  %1 = load i8*, i8** %0, align 8
  store i8* %1, i8** %START, align 8
  %2 = load i32*, i32** %WHAT_KIND.addr, align 8
  %3 = load i32, i32* %2, align 4
  %cmp = icmp ne i32 %3, 2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load i8**, i8*** %CURRENT_CHAR.addr, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = load i8, i8* %5, align 1
  %conv = sext i8 %6 to i32
  %cmp1 = icmp sge i32 %conv, 48
  br i1 %cmp1, label %land.lhs.true.3, label %lor.lhs.false

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %7 = load i8**, i8*** %CURRENT_CHAR.addr, align 8
  %8 = load i8*, i8** %7, align 8
  %9 = load i8, i8* %8, align 1
  %conv4 = sext i8 %9 to i32
  %cmp5 = icmp sle i32 %conv4, 57
  br i1 %cmp5, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.3, %land.lhs.true
  %10 = load i8**, i8*** %CURRENT_CHAR.addr, align 8
  %11 = load i8*, i8** %10, align 8
  %12 = load i8, i8* %11, align 1
  %conv7 = sext i8 %12 to i32
  %cmp8 = icmp eq i32 %conv7, 45
  br i1 %cmp8, label %if.then, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %lor.lhs.false
  %13 = load i8**, i8*** %CURRENT_CHAR.addr, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = load i8, i8* %14, align 1
  %conv11 = sext i8 %15 to i32
  %cmp12 = icmp eq i32 %conv11, 43
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.10, %lor.lhs.false, %land.lhs.true.3
  %16 = load i32*, i32** %WHAT_KIND.addr, align 8
  store i32 1, i32* %16, align 4
  %17 = load i8**, i8*** %CURRENT_CHAR.addr, align 8
  %18 = load i32, i32* %BITS.addr, align 4
  %call = call i32 @GET_NUM(i8** %17, i32 %18, i32 10)
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.10, %entry
  %19 = load i32*, i32** %WHAT_KIND.addr, align 8
  %20 = load i32, i32* %19, align 4
  %cmp14 = icmp ne i32 %20, 2
  br i1 %cmp14, label %land.lhs.true.16, label %if.end.53

land.lhs.true.16:                                 ; preds = %if.end
  %21 = load i8**, i8*** %CURRENT_CHAR.addr, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = load i8, i8* %22, align 1
  %conv17 = sext i8 %23 to i32
  %cmp18 = icmp eq i32 %conv17, 88
  br i1 %cmp18, label %land.lhs.true.20, label %if.end.53

land.lhs.true.20:                                 ; preds = %land.lhs.true.16
  %24 = load i8**, i8*** %CURRENT_CHAR.addr, align 8
  %25 = load i8*, i8** %24, align 8
  %add.ptr = getelementptr inbounds i8, i8* %25, i64 1
  %26 = load i8, i8* %add.ptr, align 1
  %conv21 = sext i8 %26 to i32
  %cmp22 = icmp eq i32 %conv21, 39
  br i1 %cmp22, label %if.then.24, label %if.end.53

if.then.24:                                       ; preds = %land.lhs.true.20
  %27 = load i32*, i32** %WHAT_KIND.addr, align 8
  store i32 1, i32* %27, align 4
  %28 = load i8**, i8*** %CURRENT_CHAR.addr, align 8
  %29 = load i8*, i8** %28, align 8
  %add.ptr25 = getelementptr inbounds i8, i8* %29, i64 2
  store i8* %add.ptr25, i8** %28, align 8
  %30 = load i8**, i8*** %CURRENT_CHAR.addr, align 8
  %31 = load i32, i32* %BITS.addr, align 4
  %call26 = call i32 @GET_NUM(i8** %30, i32 %31, i32 16)
  store i32 %call26, i32* %RESULT, align 4
  %32 = load i8**, i8*** %CURRENT_CHAR.addr, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = load i8, i8* %33, align 1
  %conv27 = sext i8 %34 to i32
  %cmp28 = icmp ne i32 %conv27, 39
  br i1 %cmp28, label %if.then.30, label %if.else.50

if.then.30:                                       ; preds = %if.then.24
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.30
  %35 = load i8**, i8*** %CURRENT_CHAR.addr, align 8
  %36 = load i8*, i8** %35, align 8
  %37 = load i8, i8* %36, align 1
  %conv31 = sext i8 %37 to i32
  %cmp32 = icmp ne i32 %conv31, 39
  br i1 %cmp32, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %38 = load i8**, i8*** %CURRENT_CHAR.addr, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = load i8, i8* %39, align 1
  %conv34 = sext i8 %40 to i32
  %call35 = call i32 (i32, ...) bitcast (i32 (...)* @eoln to i32 (i32, ...)*)(i32 %conv34)
  %tobool = icmp ne i32 %call35, 0
  %lnot = xor i1 %tobool, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %41 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %41, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %42 = load i8**, i8*** %CURRENT_CHAR.addr, align 8
  %43 = load i8*, i8** %42, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %incdec.ptr, i8** %42, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %44 = load i8**, i8*** %CURRENT_CHAR.addr, align 8
  %45 = load i8*, i8** %44, align 8
  %46 = load i8, i8* %45, align 1
  %conv36 = sext i8 %46 to i32
  %call37 = call i32 (i32, ...) bitcast (i32 (...)* @eoln to i32 (i32, ...)*)(i32 %conv36)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.then.39, label %if.else

if.then.39:                                       ; preds = %while.end
  %arraydecay = getelementptr inbounds [80 x i8], [80 x i8]* %ERROR_MSG, i32 0, i32 0
  %call40 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.8, i32 0, i32 0)) #4
  %arraydecay41 = getelementptr inbounds [80 x i8], [80 x i8]* %ERROR_MSG, i32 0, i32 0
  call void (%struct.BUFFER_TYPE*, i8*, ...) bitcast (void (...)* @ADD_TO_END_OF_BUFFER to void (%struct.BUFFER_TYPE*, i8*, ...)*)(%struct.BUFFER_TYPE* @ERROR_REC_BUF, i8* %arraydecay41)
  br label %if.end.49

if.else:                                          ; preds = %while.end
  %47 = load i8**, i8*** %CURRENT_CHAR.addr, align 8
  %48 = load i8*, i8** %47, align 8
  %incdec.ptr43 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %incdec.ptr43, i8** %47, align 8
  %49 = load i8**, i8*** %CURRENT_CHAR.addr, align 8
  %50 = load i8*, i8** %49, align 8
  %51 = load i8, i8* %50, align 1
  store i8 %51, i8* %TEMP, align 1
  %52 = load i8**, i8*** %CURRENT_CHAR.addr, align 8
  %53 = load i8*, i8** %52, align 8
  store i8 0, i8* %53, align 1
  %54 = load i8*, i8** %START, align 8
  %call44 = call i64 @strlen(i8* %54) #5
  %add = add i64 80, %call44
  %conv45 = trunc i64 %add to i32
  %conv46 = zext i32 %conv45 to i64
  %call47 = call noalias i8* @malloc(i64 %conv46) #4
  store i8* %call47, i8** %ERROR_MSG42, align 8
  %55 = load i8*, i8** %ERROR_MSG42, align 8
  %56 = load i8*, i8** %START, align 8
  %call48 = call i32 (i8*, i8*, ...) @sprintf(i8* %55, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i32 0, i32 0), i8* %56) #4
  %57 = load i8*, i8** %ERROR_MSG42, align 8
  call void (%struct.BUFFER_TYPE*, i8*, ...) bitcast (void (...)* @ADD_TO_END_OF_BUFFER to void (%struct.BUFFER_TYPE*, i8*, ...)*)(%struct.BUFFER_TYPE* @ERROR_REC_BUF, i8* %57)
  %58 = load i8*, i8** %ERROR_MSG42, align 8
  call void @free(i8* %58) #4
  %59 = load i8, i8* %TEMP, align 1
  %60 = load i8**, i8*** %CURRENT_CHAR.addr, align 8
  %61 = load i8*, i8** %60, align 8
  store i8 %59, i8* %61, align 1
  br label %if.end.49

if.end.49:                                        ; preds = %if.else, %if.then.39
  br label %if.end.52

if.else.50:                                       ; preds = %if.then.24
  %62 = load i8**, i8*** %CURRENT_CHAR.addr, align 8
  %63 = load i8*, i8** %62, align 8
  %incdec.ptr51 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %incdec.ptr51, i8** %62, align 8
  br label %if.end.52

if.end.52:                                        ; preds = %if.else.50, %if.end.49
  %64 = load i32, i32* %RESULT, align 4
  store i32 %64, i32* %retval
  br label %return

if.end.53:                                        ; preds = %land.lhs.true.20, %land.lhs.true.16, %if.end
  %arraydecay54 = getelementptr inbounds [9 x i8], [9 x i8]* %LABEL_NAME, i32 0, i32 0
  %65 = load i8**, i8*** %CURRENT_CHAR.addr, align 8
  %66 = load i8*, i8** %65, align 8
  %67 = load i8**, i8*** %CURRENT_CHAR.addr, align 8
  call void (i8*, i8*, i8**, i32, ...) bitcast (void (...)* @GET_LABEL to void (i8*, i8*, i8**, i32, ...)*)(i8* %arraydecay54, i8* %66, i8** %67, i32 0)
  %arraydecay55 = getelementptr inbounds [9 x i8], [9 x i8]* %LABEL_NAME, i32 0, i32 0
  %call56 = call i32 @strcmp(i8* %arraydecay55, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i32 0, i32 0)) #5
  %tobool57 = icmp ne i32 %call56, 0
  br i1 %tobool57, label %if.else.66, label %if.then.58

if.then.58:                                       ; preds = %if.end.53
  %68 = load i8**, i8*** %CURRENT_CHAR.addr, align 8
  %69 = load i8*, i8** %68, align 8
  %call60 = call i64 @strlen(i8* %69) #5
  %add61 = add i64 80, %call60
  %conv62 = trunc i64 %add61 to i32
  %conv63 = zext i32 %conv62 to i64
  %call64 = call noalias i8* @malloc(i64 %conv63) #4
  store i8* %call64, i8** %ERROR_MSG59, align 8
  %70 = load i8*, i8** %ERROR_MSG59, align 8
  %71 = load i8**, i8*** %CURRENT_CHAR.addr, align 8
  %72 = load i8*, i8** %71, align 8
  %call65 = call i32 (i8*, i8*, ...) @sprintf(i8* %70, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11, i32 0, i32 0), i8* %72) #4
  %73 = load i8*, i8** %ERROR_MSG59, align 8
  call void (%struct.BUFFER_TYPE*, i8*, ...) bitcast (void (...)* @ADD_TO_END_OF_BUFFER to void (%struct.BUFFER_TYPE*, i8*, ...)*)(%struct.BUFFER_TYPE* @ERROR_REC_BUF, i8* %73)
  %74 = load i8*, i8** %ERROR_MSG59, align 8
  call void @free(i8* %74) #4
  br label %if.end.148

if.else.66:                                       ; preds = %if.end.53
  %arraydecay67 = getelementptr inbounds [9 x i8], [9 x i8]* %LABEL_NAME, i32 0, i32 0
  %75 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %SYM_TAB.addr, align 8
  %call68 = call %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...) bitcast (%struct.SYMBOL_TABLE_ENTRY* (...)* @LOOK_UP_SYMBOL to %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...)*)(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @MODULE_NAME, i32 0, i32 0), i8* %arraydecay67, %struct.SYMBOL_TABLE_ENTRY** %75)
  store %struct.SYMBOL_TABLE_ENTRY* %call68, %struct.SYMBOL_TABLE_ENTRY** %LABEL_INFO, align 8
  %76 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %LABEL_INFO, align 8
  %cmp69 = icmp eq %struct.SYMBOL_TABLE_ENTRY* %76, null
  br i1 %cmp69, label %if.then.71, label %if.else.88

if.then.71:                                       ; preds = %if.else.66
  %arraydecay73 = getelementptr inbounds [9 x i8], [9 x i8]* %LABEL_NAME, i32 0, i32 0
  %call74 = call i64 @strlen(i8* %arraydecay73) #5
  %add75 = add i64 80, %call74
  %conv76 = trunc i64 %add75 to i32
  %conv77 = zext i32 %conv76 to i64
  %call78 = call noalias i8* @malloc(i64 %conv77) #4
  store i8* %call78, i8** %ERROR_MSG72, align 8
  %77 = load i32*, i32** %WHAT_KIND.addr, align 8
  %78 = load i32, i32* %77, align 4
  %cmp79 = icmp ne i32 %78, 0
  br i1 %cmp79, label %if.then.81, label %if.else.84

if.then.81:                                       ; preds = %if.then.71
  %79 = load i8*, i8** %ERROR_MSG72, align 8
  %arraydecay82 = getelementptr inbounds [9 x i8], [9 x i8]* %LABEL_NAME, i32 0, i32 0
  %call83 = call i32 (i8*, i8*, ...) @sprintf(i8* %79, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.12, i32 0, i32 0), i8* %arraydecay82) #4
  br label %if.end.87

if.else.84:                                       ; preds = %if.then.71
  %80 = load i8*, i8** %ERROR_MSG72, align 8
  %arraydecay85 = getelementptr inbounds [9 x i8], [9 x i8]* %LABEL_NAME, i32 0, i32 0
  %call86 = call i32 (i8*, i8*, ...) @sprintf(i8* %80, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.13, i32 0, i32 0), i8* %arraydecay85) #4
  br label %if.end.87

if.end.87:                                        ; preds = %if.else.84, %if.then.81
  %81 = load i8*, i8** %ERROR_MSG72, align 8
  call void (%struct.BUFFER_TYPE*, i8*, ...) bitcast (void (...)* @ADD_TO_END_OF_BUFFER to void (%struct.BUFFER_TYPE*, i8*, ...)*)(%struct.BUFFER_TYPE* @ERROR_REC_BUF, i8* %81)
  %82 = load i8*, i8** %ERROR_MSG72, align 8
  call void @free(i8* %82) #4
  br label %if.end.147

if.else.88:                                       ; preds = %if.else.66
  %83 = load i32*, i32** %WHAT_KIND.addr, align 8
  %84 = load i32, i32* %83, align 4
  %cmp89 = icmp ne i32 %84, 2
  br i1 %cmp89, label %land.lhs.true.91, label %if.else.96

land.lhs.true.91:                                 ; preds = %if.else.88
  %85 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %LABEL_INFO, align 8
  %TYPE = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %85, i32 0, i32 4
  %86 = load i32, i32* %TYPE, align 4
  %cmp92 = icmp eq i32 %86, 1
  br i1 %cmp92, label %if.then.94, label %if.else.96

if.then.94:                                       ; preds = %land.lhs.true.91
  %87 = load i32*, i32** %WHAT_KIND.addr, align 8
  store i32 1, i32* %87, align 4
  %88 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %LABEL_INFO, align 8
  %LOCATION95 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %88, i32 0, i32 2
  %89 = load i32, i32* %LOCATION95, align 4
  store i32 %89, i32* %retval
  br label %return

if.else.96:                                       ; preds = %land.lhs.true.91, %if.else.88
  %90 = load i32*, i32** %WHAT_KIND.addr, align 8
  %91 = load i32, i32* %90, align 4
  %cmp97 = icmp ne i32 %91, 1
  br i1 %cmp97, label %land.lhs.true.99, label %if.else.128

land.lhs.true.99:                                 ; preds = %if.else.96
  %92 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %LABEL_INFO, align 8
  %TYPE100 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %92, i32 0, i32 4
  %93 = load i32, i32* %TYPE100, align 4
  %cmp101 = icmp ne i32 %93, 1
  br i1 %cmp101, label %if.then.103, label %if.else.128

if.then.103:                                      ; preds = %land.lhs.true.99
  %94 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %LABEL_INFO, align 8
  %TYPE104 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %94, i32 0, i32 4
  %95 = load i32, i32* %TYPE104, align 4
  %cmp105 = icmp eq i32 %95, 2
  br i1 %cmp105, label %if.then.107, label %if.else.125

if.then.107:                                      ; preds = %if.then.103
  %96 = load i32, i32* %LOCATION.addr, align 4
  %arraydecay108 = getelementptr inbounds [17 x i8], [17 x i8]* %OUTPUT_LINE, i32 0, i32 0
  call void @NUM_TO_STR(i32 %96, i32 16, i32 6, i8* %arraydecay108)
  %97 = load i32, i32* %BITS.addr, align 4
  %div = sdiv i32 %97, 4
  %arraydecay109 = getelementptr inbounds [3 x i8], [3 x i8]* %LEN_STR, i32 0, i32 0
  call void @NUM_TO_STR(i32 %div, i32 16, i32 2, i8* %arraydecay109)
  %arraydecay110 = getelementptr inbounds [17 x i8], [17 x i8]* %OUTPUT_LINE, i32 0, i32 0
  %arraydecay111 = getelementptr inbounds [3 x i8], [3 x i8]* %LEN_STR, i32 0, i32 0
  %call112 = call i8* @strcat(i8* %arraydecay110, i8* %arraydecay111) #4
  %arraydecay113 = getelementptr inbounds [17 x i8], [17 x i8]* %OUTPUT_LINE, i32 0, i32 0
  %call114 = call i8* @strcat(i8* %arraydecay113, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0)) #4
  %arraydecay115 = getelementptr inbounds [9 x i8], [9 x i8]* %FIX_LEN_NAME, i32 0, i32 0
  call void @BLANK_STR(i8* %arraydecay115)
  %arraydecay116 = getelementptr inbounds [9 x i8], [9 x i8]* %FIX_LEN_NAME, i32 0, i32 0
  %arraydecay117 = getelementptr inbounds [9 x i8], [9 x i8]* %LABEL_NAME, i32 0, i32 0
  %arraydecay118 = getelementptr inbounds [9 x i8], [9 x i8]* %LABEL_NAME, i32 0, i32 0
  %call119 = call i64 @strlen(i8* %arraydecay118) #5
  %call120 = call i8* @strncpy(i8* %arraydecay116, i8* %arraydecay117, i64 %call119) #4
  %arraydecay121 = getelementptr inbounds [17 x i8], [17 x i8]* %OUTPUT_LINE, i32 0, i32 0
  %arraydecay122 = getelementptr inbounds [9 x i8], [9 x i8]* %FIX_LEN_NAME, i32 0, i32 0
  %call123 = call i8* @strcat(i8* %arraydecay121, i8* %arraydecay122) #4
  %arraydecay124 = getelementptr inbounds [17 x i8], [17 x i8]* %OUTPUT_LINE, i32 0, i32 0
  call void (%struct.BUFFER_TYPE*, i8*, ...) bitcast (void (...)* @ADD_TO_END_OF_BUFFER to void (%struct.BUFFER_TYPE*, i8*, ...)*)(%struct.BUFFER_TYPE* @MOD_REC_BUF, i8* %arraydecay124)
  %98 = load i32*, i32** %WHAT_KIND.addr, align 8
  store i32 3, i32* %98, align 4
  br label %if.end.126

if.else.125:                                      ; preds = %if.then.103
  %99 = load i32*, i32** %WHAT_KIND.addr, align 8
  store i32 2, i32* %99, align 4
  br label %if.end.126

if.end.126:                                       ; preds = %if.else.125, %if.then.107
  %100 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %LABEL_INFO, align 8
  %LOCATION127 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %100, i32 0, i32 2
  %101 = load i32, i32* %LOCATION127, align 4
  store i32 %101, i32* %retval
  br label %return

if.else.128:                                      ; preds = %land.lhs.true.99, %if.else.96
  %arraydecay130 = getelementptr inbounds [9 x i8], [9 x i8]* %LABEL_NAME, i32 0, i32 0
  %call131 = call i64 @strlen(i8* %arraydecay130) #5
  %add132 = add i64 80, %call131
  %conv133 = trunc i64 %add132 to i32
  %conv134 = zext i32 %conv133 to i64
  %call135 = call noalias i8* @malloc(i64 %conv134) #4
  store i8* %call135, i8** %ERROR_MSG129, align 8
  %102 = load i32*, i32** %WHAT_KIND.addr, align 8
  %103 = load i32, i32* %102, align 4
  %cmp136 = icmp eq i32 %103, 1
  br i1 %cmp136, label %if.then.138, label %if.else.141

if.then.138:                                      ; preds = %if.else.128
  %104 = load i8*, i8** %ERROR_MSG129, align 8
  %arraydecay139 = getelementptr inbounds [9 x i8], [9 x i8]* %LABEL_NAME, i32 0, i32 0
  %call140 = call i32 (i8*, i8*, ...) @sprintf(i8* %104, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.15, i32 0, i32 0), i8* %arraydecay139) #4
  br label %if.end.144

if.else.141:                                      ; preds = %if.else.128
  %105 = load i8*, i8** %ERROR_MSG129, align 8
  %arraydecay142 = getelementptr inbounds [9 x i8], [9 x i8]* %LABEL_NAME, i32 0, i32 0
  %call143 = call i32 (i8*, i8*, ...) @sprintf(i8* %105, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.16, i32 0, i32 0), i8* %arraydecay142) #4
  br label %if.end.144

if.end.144:                                       ; preds = %if.else.141, %if.then.138
  %106 = load i8*, i8** %ERROR_MSG129, align 8
  call void (%struct.BUFFER_TYPE*, i8*, ...) bitcast (void (...)* @ADD_TO_END_OF_BUFFER to void (%struct.BUFFER_TYPE*, i8*, ...)*)(%struct.BUFFER_TYPE* @ERROR_REC_BUF, i8* %106)
  %107 = load i8*, i8** %ERROR_MSG129, align 8
  call void @free(i8* %107) #4
  br label %if.end.145

if.end.145:                                       ; preds = %if.end.144
  br label %if.end.146

if.end.146:                                       ; preds = %if.end.145
  br label %if.end.147

if.end.147:                                       ; preds = %if.end.146, %if.end.87
  br label %if.end.148

if.end.148:                                       ; preds = %if.end.147, %if.then.58
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.148, %if.end.126, %if.then.94, %if.end.52, %if.then
  %108 = load i32, i32* %retval
  ret i32 %108
}

declare void @GET_LABEL(...) #3

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

declare %struct.SYMBOL_TABLE_ENTRY* @LOOK_UP_SYMBOL(...) #3

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
