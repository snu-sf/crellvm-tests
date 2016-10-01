; ModuleID = './MultiSource.Benchmarks.Prolangs-C/144.assembler.code.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BUFFER_TYPE = type { %struct.BUFFER*, %struct.BUFFER*, i32 }
%struct.BUFFER = type { i8*, %struct.BUFFER* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.OP_ENTRY = type { i8*, i32, i8*, i32, i32 }
%struct.SYMBOL_TABLE_ENTRY = type { [9 x i8], [9 x i8], i32, i32, i32, %struct.SYMBOL_TABLE_ENTRY* }

@.str = private unnamed_addr constant [5 x i8] c"WORD\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"BYTE\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"          \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%d%c\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c" {source on next line}\0A                  \00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"SET_BITS_TO called improperly.\0A\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"SET_BITS_TO called improperly, VALUE too large.\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"PRT_CODE called improperly.\0A\00", align 1
@ERROR_REC_BUF = external global %struct.BUFFER_TYPE, align 8
@.str.10 = private unnamed_addr constant [36 x i8] c"ERROR[43]: Illegal argument to SVC.\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"ERROR[45]: Expected a valid register.\00", align 1
@.str.12 = private unnamed_addr constant [54 x i8] c"ERROR[46]: Expected a comma after the first register.\00", align 1
@.str.13 = private unnamed_addr constant [47 x i8] c"ERROR[49]: Expected a number 1-16 after comma.\00", align 1
@.str.14 = private unnamed_addr constant [54 x i8] c"ERROR[47]: Expected a valid register after the comma.\00", align 1
@.str.15 = private unnamed_addr constant [49 x i8] c"ERROR[44]: Expected a <space> after the operand.\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"05\00", align 1
@MOD_REC_BUF = external global %struct.BUFFER_TYPE, align 8
@.str.17 = private unnamed_addr constant [71 x i8] c"ERROR[53]: EXTREF label can not be used in a format THREE instruction.\00", align 1
@.str.18 = private unnamed_addr constant [53 x i8] c"ERROR[51]: Location is not within PC relative range.\00", align 1
@.str.19 = private unnamed_addr constant [62 x i8] c"ERROR[52]: Constant too large for a format THREE instruction.\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.22 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"                  %s\0A\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"       \00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"EQU\00", align 1
@MODULE_NAME = external global [9 x i8], align 1
@.str.26 = private unnamed_addr constant [65 x i8] c"CODE: Something is wrong with code. This shouldn't be executed.\0A\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @PSEUDO_CODE(i8* %OPERATOR, %struct._IO_FILE* %INPUT_STREAM, %struct._IO_FILE* %OBJECT_STREAM, %struct._IO_FILE* %LISTING_STREAM) #0 {
entry:
  %OPERATOR.addr = alloca i8*, align 8
  %INPUT_STREAM.addr = alloca %struct._IO_FILE*, align 8
  %OBJECT_STREAM.addr = alloca %struct._IO_FILE*, align 8
  %LISTING_STREAM.addr = alloca %struct._IO_FILE*, align 8
  %CH = alloca i8, align 1
  %LOCATION = alloca i32, align 4
  %TEMP_CH = alloca i8, align 1
  %REST_OF_LINE = alloca i8*, align 8
  %I = alloca i32, align 4
  %TEMP = alloca [3 x i8], align 1
  %DELTA = alloca i32, align 4
  store i8* %OPERATOR, i8** %OPERATOR.addr, align 8
  store %struct._IO_FILE* %INPUT_STREAM, %struct._IO_FILE** %INPUT_STREAM.addr, align 8
  store %struct._IO_FILE* %OBJECT_STREAM, %struct._IO_FILE** %OBJECT_STREAM.addr, align 8
  store %struct._IO_FILE* %LISTING_STREAM, %struct._IO_FILE** %LISTING_STREAM.addr, align 8
  %0 = load i8*, i8** %OPERATOR.addr, align 8
  %call = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0)) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i8*, i8** %OPERATOR.addr, align 8
  %call1 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0)) #4
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %LISTING_STREAM.addr, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.43

if.else:                                          ; preds = %land.lhs.true, %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %INPUT_STREAM.addr, align 8
  %call4 = call i32 @fgetc(%struct._IO_FILE* %3)
  %conv = trunc i32 %call4 to i8
  store i8 %conv, i8* %CH, align 1
  %4 = load i8, i8* %CH, align 1
  %conv5 = sext i8 %4 to i32
  %cmp = icmp eq i32 %conv5, 116
  br i1 %cmp, label %if.then.7, label %if.else.38

if.then.7:                                        ; preds = %if.else
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %INPUT_STREAM.addr, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32* %LOCATION, i8* %TEMP_CH)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %INPUT_STREAM.addr, align 8
  call void (i8**, %struct._IO_FILE*, ...) bitcast (void (...)* @GET_LINE to void (i8**, %struct._IO_FILE*, ...)*)(i8** %REST_OF_LINE, %struct._IO_FILE* %6)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %LISTING_STREAM.addr, align 8
  %8 = load i8*, i8** %REST_OF_LINE, align 8
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i8* %8)
  %9 = load i8*, i8** %REST_OF_LINE, align 8
  %call10 = call i64 @strlen(i8* %9) #4
  %cmp11 = icmp ule i64 %call10, 8
  br i1 %cmp11, label %if.then.13, label %if.else.19

if.then.13:                                       ; preds = %if.then.7
  %10 = load i8*, i8** %REST_OF_LINE, align 8
  %call14 = call i64 @strlen(i8* %10) #4
  %add = add i64 %call14, 1
  %conv15 = trunc i64 %add to i32
  store i32 %conv15, i32* %I, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.13
  %11 = load i32, i32* %I, align 4
  %cmp16 = icmp sle i32 %11, 10
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %LISTING_STREAM.addr, align 8
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %I, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %I, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.else.19:                                       ; preds = %if.then.7
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %LISTING_STREAM.addr, align 8
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else.19, %for.end
  %15 = load i8, i8* %TEMP_CH, align 1
  %conv21 = sext i8 %15 to i32
  %cmp22 = icmp eq i32 %conv21, 87
  br i1 %cmp22, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %if.end
  %16 = load i8*, i8** %REST_OF_LINE, align 8
  %17 = load i32, i32* %LOCATION, align 4
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %OBJECT_STREAM.addr, align 8
  call void (i8*, i32, %struct._IO_FILE*, ...) bitcast (void (...)* @ADD_TO_TEXT_RECORD to void (i8*, i32, %struct._IO_FILE*, ...)*)(i8* %16, i32 %17, %struct._IO_FILE* %18)
  br label %if.end.37

if.else.25:                                       ; preds = %if.end
  store i32 0, i32* %DELTA, align 4
  %arrayidx = getelementptr inbounds [3 x i8], [3 x i8]* %TEMP, i32 0, i64 2
  store i8 0, i8* %arrayidx, align 1
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.35, %if.else.25
  %19 = load i8*, i8** %REST_OF_LINE, align 8
  %20 = load i8, i8* %19, align 1
  %conv27 = sext i8 %20 to i32
  %call28 = call i32 (i32, ...) bitcast (i32 (...)* @eoln to i32 (i32, ...)*)(i32 %conv27)
  %tobool29 = icmp ne i32 %call28, 0
  %lnot = xor i1 %tobool29, true
  br i1 %lnot, label %for.body.30, label %for.end.36

for.body.30:                                      ; preds = %for.cond.26
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %TEMP, i32 0, i32 0
  %21 = load i8*, i8** %REST_OF_LINE, align 8
  %call31 = call i8* @strncpy(i8* %arraydecay, i8* %21, i64 2) #5
  %arraydecay32 = getelementptr inbounds [3 x i8], [3 x i8]* %TEMP, i32 0, i32 0
  %22 = load i32, i32* %LOCATION, align 4
  %23 = load i32, i32* %DELTA, align 4
  %add33 = add nsw i32 %22, %23
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %OBJECT_STREAM.addr, align 8
  call void (i8*, i32, %struct._IO_FILE*, ...) bitcast (void (...)* @ADD_TO_TEXT_RECORD to void (i8*, i32, %struct._IO_FILE*, ...)*)(i8* %arraydecay32, i32 %add33, %struct._IO_FILE* %24)
  %25 = load i32, i32* %DELTA, align 4
  %inc34 = add nsw i32 %25, 1
  store i32 %inc34, i32* %DELTA, align 4
  br label %for.inc.35

for.inc.35:                                       ; preds = %for.body.30
  %26 = load i8*, i8** %REST_OF_LINE, align 8
  %add.ptr = getelementptr inbounds i8, i8* %26, i64 2
  store i8* %add.ptr, i8** %REST_OF_LINE, align 8
  br label %for.cond.26

for.end.36:                                       ; preds = %for.cond.26
  br label %if.end.37

if.end.37:                                        ; preds = %for.end.36, %if.then.24
  br label %if.end.42

if.else.38:                                       ; preds = %if.else
  %27 = load i8, i8* %CH, align 1
  %conv39 = sext i8 %27 to i32
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %INPUT_STREAM.addr, align 8
  %call40 = call i32 @ungetc(i32 %conv39, %struct._IO_FILE* %28)
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %LISTING_STREAM.addr, align 8
  %call41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.38, %if.end.37
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.then
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare i32 @fgetc(%struct._IO_FILE*) #2

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #2

declare void @GET_LINE(...) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #1

declare void @ADD_TO_TEXT_RECORD(...) #2

declare i32 @eoln(...) #2

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #3

declare i32 @ungetc(i32, %struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define i32 @GET_REG(i8** %REG) #0 {
entry:
  %REG.addr = alloca i8**, align 8
  %VAL = alloca i32, align 4
  store i8** %REG, i8*** %REG.addr, align 8
  %0 = load i8**, i8*** %REG.addr, align 8
  %1 = load i8*, i8** %0, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  switch i32 %conv, label %sw.default [
    i32 65, label %sw.bb
    i32 88, label %sw.bb.1
    i32 76, label %sw.bb.2
    i32 66, label %sw.bb.3
    i32 83, label %sw.bb.4
    i32 84, label %sw.bb.7
    i32 80, label %sw.bb.8
  ]

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %VAL, align 4
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  store i32 1, i32* %VAL, align 4
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  store i32 2, i32* %VAL, align 4
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  store i32 3, i32* %VAL, align 4
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %3 = load i8**, i8*** %REG.addr, align 8
  %4 = load i8*, i8** %3, align 8
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8, i8* %add.ptr, align 1
  %conv5 = sext i8 %5 to i32
  %cmp = icmp eq i32 %conv5, 87
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb.4
  %6 = load i8**, i8*** %REG.addr, align 8
  %7 = load i8*, i8** %6, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %6, align 8
  store i32 9, i32* %VAL, align 4
  br label %if.end

if.else:                                          ; preds = %sw.bb.4
  store i32 4, i32* %VAL, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  store i32 5, i32* %VAL, align 4
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  %8 = load i8**, i8*** %REG.addr, align 8
  %9 = load i8*, i8** %8, align 8
  %add.ptr9 = getelementptr inbounds i8, i8* %9, i64 1
  %10 = load i8, i8* %add.ptr9, align 1
  %conv10 = sext i8 %10 to i32
  %cmp11 = icmp eq i32 %conv10, 67
  br i1 %cmp11, label %if.then.13, label %if.else.15

if.then.13:                                       ; preds = %sw.bb.8
  %11 = load i8**, i8*** %REG.addr, align 8
  %12 = load i8*, i8** %11, align 8
  %incdec.ptr14 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr14, i8** %11, align 8
  store i32 8, i32* %VAL, align 4
  br label %if.end.16

if.else.15:                                       ; preds = %sw.bb.8
  store i32 -1, i32* %VAL, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.15, %if.then.13
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i32 -1, i32* %VAL, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.16, %sw.bb.7, %if.end, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  %13 = load i8**, i8*** %REG.addr, align 8
  %14 = load i8*, i8** %13, align 8
  %incdec.ptr17 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr17, i8** %13, align 8
  %15 = load i32, i32* %VAL, align 4
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define void @SET_BITS_TO(i32 %LOW_BIT, i32 %HIGH_BIT, i32 %VALUE, i8* %CODE) #0 {
entry:
  %LOW_BIT.addr = alloca i32, align 4
  %HIGH_BIT.addr = alloca i32, align 4
  %VALUE.addr = alloca i32, align 4
  %CODE.addr = alloca i8*, align 8
  %I = alloca i32, align 4
  %BIT = alloca i32, align 4
  %VALUE_BIT = alloca i32, align 4
  store i32 %LOW_BIT, i32* %LOW_BIT.addr, align 4
  store i32 %HIGH_BIT, i32* %HIGH_BIT.addr, align 4
  store i32 %VALUE, i32* %VALUE.addr, align 4
  store i8* %CODE, i8** %CODE.addr, align 8
  %0 = load i32, i32* %HIGH_BIT.addr, align 4
  %1 = load i32, i32* %LOW_BIT.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %HIGH_BIT.addr, align 4
  %cmp1 = icmp sge i32 %2, 32
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.17

if.else:                                          ; preds = %lor.lhs.false
  %3 = load i32, i32* %HIGH_BIT.addr, align 4
  store i32 %3, i32* %BIT, align 4
  %4 = load i32, i32* %HIGH_BIT.addr, align 4
  %5 = load i32, i32* %LOW_BIT.addr, align 4
  %sub = sub nsw i32 %4, %5
  %conv = sitofp i32 %sub to double
  %mul = fmul double 1.000000e+00, %conv
  %call2 = call double @pow(double 2.000000e+00, double %mul) #5
  %conv3 = fptosi double %call2 to i32
  store i32 %conv3, i32* %I, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %6 = load i32, i32* %I, align 4
  %cmp4 = icmp sgt i32 %6, 0
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %VALUE.addr, align 4
  %8 = load i32, i32* %VALUE.addr, align 4
  %div = sdiv i32 %8, 2
  %mul6 = mul nsw i32 %div, 2
  %sub7 = sub nsw i32 %7, %mul6
  store i32 %sub7, i32* %VALUE_BIT, align 4
  %9 = load i32, i32* %VALUE.addr, align 4
  %div8 = sdiv i32 %9, 2
  store i32 %div8, i32* %VALUE.addr, align 4
  %10 = load i32, i32* %VALUE_BIT, align 4
  %conv9 = trunc i32 %10 to i8
  %conv10 = sext i8 %conv9 to i32
  %add = add nsw i32 %conv10, 48
  %conv11 = trunc i32 %add to i8
  %11 = load i32, i32* %BIT, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load i8*, i8** %CODE.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %idxprom
  store i8 %conv11, i8* %arrayidx, align 1
  %13 = load i32, i32* %BIT, align 4
  %dec = add nsw i32 %13, -1
  store i32 %dec, i32* %BIT, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %I, align 4
  %div12 = sdiv i32 %14, 2
  store i32 %div12, i32* %I, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load i32, i32* %VALUE.addr, align 4
  %cmp13 = icmp ne i32 %15, 0
  br i1 %cmp13, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %for.end
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.15, %for.end
  br label %if.end.17

if.end.17:                                        ; preds = %if.end, %if.then
  ret void
}

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare double @pow(double, double) #3

; Function Attrs: nounwind uwtable
define void @PRT_CODE(i8* %CODE, i32 %BYTES, i32 %LOCATION, %struct._IO_FILE* %LISTING_STREAM, %struct._IO_FILE* %OBJECT_STREAM) #0 {
entry:
  %CODE.addr = alloca i8*, align 8
  %BYTES.addr = alloca i32, align 4
  %LOCATION.addr = alloca i32, align 4
  %LISTING_STREAM.addr = alloca %struct._IO_FILE*, align 8
  %OBJECT_STREAM.addr = alloca %struct._IO_FILE*, align 8
  %BYTE_COUNTER = alloca i32, align 4
  %BIT_COUNTER = alloca i32, align 4
  %CH = alloca i32, align 4
  %NUM_STR = alloca [8 x i8], align 1
  store i8* %CODE, i8** %CODE.addr, align 8
  store i32 %BYTES, i32* %BYTES.addr, align 4
  store i32 %LOCATION, i32* %LOCATION.addr, align 4
  store %struct._IO_FILE* %LISTING_STREAM, %struct._IO_FILE** %LISTING_STREAM.addr, align 8
  store %struct._IO_FILE* %OBJECT_STREAM, %struct._IO_FILE** %OBJECT_STREAM.addr, align 8
  %0 = load i32, i32* %BYTES.addr, align 4
  %mul = mul nsw i32 %0, 4
  %cmp = icmp sgt i32 %mul, 32
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.42

if.else:                                          ; preds = %entry
  store i32 0, i32* %BYTE_COUNTER, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.27, %if.else
  %1 = load i32, i32* %BYTE_COUNTER, align 4
  %2 = load i32, i32* %BYTES.addr, align 4
  %cmp1 = icmp slt i32 %1, %2
  br i1 %cmp1, label %for.body, label %for.end.29

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %CH, align 4
  store i32 0, i32* %BIT_COUNTER, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %3 = load i32, i32* %BIT_COUNTER, align 4
  %cmp3 = icmp slt i32 %3, 4
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %4 = load i32, i32* %CH, align 4
  %mul5 = mul nsw i32 %4, 2
  %5 = load i32, i32* %BYTE_COUNTER, align 4
  %mul6 = mul nsw i32 %5, 4
  %6 = load i32, i32* %BIT_COUNTER, align 4
  %add = add nsw i32 %mul6, %6
  %idxprom = sext i32 %add to i64
  %7 = load i8*, i8** %CODE.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %idxprom
  %8 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %8 to i32
  %call7 = call i32 (i32, i32, ...) bitcast (i32 (...)* @CHAR_TO_DIGIT to i32 (i32, i32, ...)*)(i32 %conv, i32 2)
  %add8 = add nsw i32 %mul5, %call7
  store i32 %add8, i32* %CH, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.4
  %9 = load i32, i32* %BIT_COUNTER, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %BIT_COUNTER, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  %10 = load i32, i32* %CH, align 4
  %cmp9 = icmp sge i32 %10, 0
  br i1 %cmp9, label %land.lhs.true, label %if.else.20

land.lhs.true:                                    ; preds = %for.end
  %11 = load i32, i32* %CH, align 4
  %cmp11 = icmp sle i32 %11, 9
  br i1 %cmp11, label %if.then.13, label %if.else.20

if.then.13:                                       ; preds = %land.lhs.true
  %12 = load i32, i32* %CH, align 4
  %conv14 = trunc i32 %12 to i8
  %conv15 = sext i8 %conv14 to i32
  %add16 = add nsw i32 %conv15, 48
  %conv17 = trunc i32 %add16 to i8
  %13 = load i32, i32* %BYTE_COUNTER, align 4
  %idxprom18 = sext i32 %13 to i64
  %arrayidx19 = getelementptr inbounds [8 x i8], [8 x i8]* %NUM_STR, i32 0, i64 %idxprom18
  store i8 %conv17, i8* %arrayidx19, align 1
  br label %if.end

if.else.20:                                       ; preds = %land.lhs.true, %for.end
  %14 = load i32, i32* %CH, align 4
  %sub = sub nsw i32 %14, 10
  %conv21 = trunc i32 %sub to i8
  %conv22 = sext i8 %conv21 to i32
  %add23 = add nsw i32 %conv22, 65
  %conv24 = trunc i32 %add23 to i8
  %15 = load i32, i32* %BYTE_COUNTER, align 4
  %idxprom25 = sext i32 %15 to i64
  %arrayidx26 = getelementptr inbounds [8 x i8], [8 x i8]* %NUM_STR, i32 0, i64 %idxprom25
  store i8 %conv24, i8* %arrayidx26, align 1
  br label %if.end

if.end:                                           ; preds = %if.else.20, %if.then.13
  br label %for.inc.27

for.inc.27:                                       ; preds = %if.end
  %16 = load i32, i32* %BYTE_COUNTER, align 4
  %inc28 = add nsw i32 %16, 1
  store i32 %inc28, i32* %BYTE_COUNTER, align 4
  br label %for.cond

for.end.29:                                       ; preds = %for.cond
  %17 = load i32, i32* %BYTES.addr, align 4
  %idxprom30 = sext i32 %17 to i64
  %arrayidx31 = getelementptr inbounds [8 x i8], [8 x i8]* %NUM_STR, i32 0, i64 %idxprom30
  store i8 0, i8* %arrayidx31, align 1
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %LISTING_STREAM.addr, align 8
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %NUM_STR, i32 0, i32 0
  %call32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i8* %arraydecay)
  %arraydecay33 = getelementptr inbounds [8 x i8], [8 x i8]* %NUM_STR, i32 0, i32 0
  %19 = load i32, i32* %LOCATION.addr, align 4
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %OBJECT_STREAM.addr, align 8
  call void (i8*, i32, %struct._IO_FILE*, ...) bitcast (void (...)* @ADD_TO_TEXT_RECORD to void (i8*, i32, %struct._IO_FILE*, ...)*)(i8* %arraydecay33, i32 %19, %struct._IO_FILE* %20)
  %21 = load i32, i32* %BYTES.addr, align 4
  store i32 %21, i32* %BYTE_COUNTER, align 4
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.39, %for.end.29
  %22 = load i32, i32* %BYTE_COUNTER, align 4
  %cmp35 = icmp slt i32 %22, 8
  br i1 %cmp35, label %for.body.37, label %for.end.41

for.body.37:                                      ; preds = %for.cond.34
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %LISTING_STREAM.addr, align 8
  %call38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  br label %for.inc.39

for.inc.39:                                       ; preds = %for.body.37
  %24 = load i32, i32* %BYTE_COUNTER, align 4
  %inc40 = add nsw i32 %24, 1
  store i32 %inc40, i32* %BYTE_COUNTER, align 4
  br label %for.cond.34

for.end.41:                                       ; preds = %for.cond.34
  br label %if.end.42

if.end.42:                                        ; preds = %for.end.41, %if.then
  ret void
}

declare i32 @CHAR_TO_DIGIT(...) #2

; Function Attrs: nounwind uwtable
define void @REAL_CODE(%struct.OP_ENTRY* %OP_CODE, i32 %EXTENDED, i8* %ARGUMENTS, i32 %LOCATION, %struct.SYMBOL_TABLE_ENTRY** %SYM_TAB, %struct._IO_FILE* %OBJECT_STREAM, %struct._IO_FILE* %LISTING_STREAM, i32* %ERROR) #0 {
entry:
  %OP_CODE.addr = alloca %struct.OP_ENTRY*, align 8
  %EXTENDED.addr = alloca i32, align 4
  %ARGUMENTS.addr = alloca i8*, align 8
  %LOCATION.addr = alloca i32, align 4
  %SYM_TAB.addr = alloca %struct.SYMBOL_TABLE_ENTRY**, align 8
  %OBJECT_STREAM.addr = alloca %struct._IO_FILE*, align 8
  %LISTING_STREAM.addr = alloca %struct._IO_FILE*, align 8
  %ERROR.addr = alloca i32*, align 8
  %INSTRUCT_CODE = alloca [33 x i8], align 16
  %I = alloca i32, align 4
  %REG_NUMB = alloca i32, align 4
  %VALUE = alloca i32, align 4
  %WHAT_KIND = alloca i32, align 4
  %MOD_REC = alloca [9 x i8], align 1
  store %struct.OP_ENTRY* %OP_CODE, %struct.OP_ENTRY** %OP_CODE.addr, align 8
  store i32 %EXTENDED, i32* %EXTENDED.addr, align 4
  store i8* %ARGUMENTS, i8** %ARGUMENTS.addr, align 8
  store i32 %LOCATION, i32* %LOCATION.addr, align 4
  store %struct.SYMBOL_TABLE_ENTRY** %SYM_TAB, %struct.SYMBOL_TABLE_ENTRY*** %SYM_TAB.addr, align 8
  store %struct._IO_FILE* %OBJECT_STREAM, %struct._IO_FILE** %OBJECT_STREAM.addr, align 8
  store %struct._IO_FILE* %LISTING_STREAM, %struct._IO_FILE** %LISTING_STREAM.addr, align 8
  store i32* %ERROR, i32** %ERROR.addr, align 8
  %arrayidx = getelementptr inbounds [33 x i8], [33 x i8]* %INSTRUCT_CODE, i32 0, i64 32
  store i8 0, i8* %arrayidx, align 1
  store i32 0, i32* %I, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %I, align 4
  %cmp = icmp slt i32 %0, 32
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %I, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx1 = getelementptr inbounds [33 x i8], [33 x i8]* %INSTRUCT_CODE, i32 0, i64 %idxprom
  store i8 48, i8* %arrayidx1, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %I, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %I, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %3 = load %struct.OP_ENTRY*, %struct.OP_ENTRY** %OP_CODE.addr, align 8
  %OPCODE = getelementptr inbounds %struct.OP_ENTRY, %struct.OP_ENTRY* %3, i32 0, i32 2
  %4 = load i8*, i8** %OPCODE, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %4, i64 0
  %5 = load i8, i8* %arrayidx2, align 1
  %conv = sext i8 %5 to i32
  %call = call i32 (i32, i32, ...) bitcast (i32 (...)* @CHAR_TO_DIGIT to i32 (i32, i32, ...)*)(i32 %conv, i32 16)
  %mul = mul nsw i32 %call, 16
  %6 = load %struct.OP_ENTRY*, %struct.OP_ENTRY** %OP_CODE.addr, align 8
  %OPCODE3 = getelementptr inbounds %struct.OP_ENTRY, %struct.OP_ENTRY* %6, i32 0, i32 2
  %7 = load i8*, i8** %OPCODE3, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %7, i64 1
  %8 = load i8, i8* %arrayidx4, align 1
  %conv5 = sext i8 %8 to i32
  %call6 = call i32 (i32, i32, ...) bitcast (i32 (...)* @CHAR_TO_DIGIT to i32 (i32, i32, ...)*)(i32 %conv5, i32 16)
  %add = add nsw i32 %mul, %call6
  %arraydecay = getelementptr inbounds [33 x i8], [33 x i8]* %INSTRUCT_CODE, i32 0, i32 0
  call void @SET_BITS_TO(i32 0, i32 7, i32 %add, i8* %arraydecay)
  %9 = load %struct.OP_ENTRY*, %struct.OP_ENTRY** %OP_CODE.addr, align 8
  %FORMAT = getelementptr inbounds %struct.OP_ENTRY, %struct.OP_ENTRY* %9, i32 0, i32 1
  %10 = load i32, i32* %FORMAT, align 4
  %cmp7 = icmp eq i32 %10, 0
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %arraydecay9 = getelementptr inbounds [33 x i8], [33 x i8]* %INSTRUCT_CODE, i32 0, i32 0
  %11 = load i32, i32* %LOCATION.addr, align 4
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %LISTING_STREAM.addr, align 8
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %OBJECT_STREAM.addr, align 8
  call void @PRT_CODE(i8* %arraydecay9, i32 2, i32 %11, %struct._IO_FILE* %12, %struct._IO_FILE* %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %14 = load %struct.OP_ENTRY*, %struct.OP_ENTRY** %OP_CODE.addr, align 8
  %FORMAT10 = getelementptr inbounds %struct.OP_ENTRY, %struct.OP_ENTRY* %14, i32 0, i32 1
  %15 = load i32, i32* %FORMAT10, align 4
  %cmp11 = icmp eq i32 %15, 1
  br i1 %cmp11, label %if.then.13, label %if.end.102

if.then.13:                                       ; preds = %if.end
  %16 = load %struct.OP_ENTRY*, %struct.OP_ENTRY** %OP_CODE.addr, align 8
  %OPERAND = getelementptr inbounds %struct.OP_ENTRY, %struct.OP_ENTRY* %16, i32 0, i32 3
  %17 = load i32, i32* %OPERAND, align 4
  %cmp14 = icmp eq i32 %17, 5
  br i1 %cmp14, label %if.then.16, label %if.else.27

if.then.16:                                       ; preds = %if.then.13
  %18 = load i8*, i8** %ARGUMENTS.addr, align 8
  %19 = load i8, i8* %18, align 1
  %conv17 = sext i8 %19 to i32
  %cmp18 = icmp sge i32 %conv17, 48
  br i1 %cmp18, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.16
  %20 = load i8*, i8** %ARGUMENTS.addr, align 8
  %21 = load i8, i8* %20, align 1
  %conv20 = sext i8 %21 to i32
  %cmp21 = icmp sle i32 %conv20, 52
  br i1 %cmp21, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %land.lhs.true
  %22 = load i8*, i8** %ARGUMENTS.addr, align 8
  %23 = load i8, i8* %22, align 1
  %conv24 = sext i8 %23 to i32
  %sub = sub nsw i32 %conv24, 48
  %arraydecay25 = getelementptr inbounds [33 x i8], [33 x i8]* %INSTRUCT_CODE, i32 0, i32 0
  call void @SET_BITS_TO(i32 8, i32 11, i32 %sub, i8* %arraydecay25)
  br label %if.end.26

if.else:                                          ; preds = %land.lhs.true, %if.then.16
  call void (%struct.BUFFER_TYPE*, i8*, ...) bitcast (void (...)* @ADD_TO_END_OF_BUFFER to void (%struct.BUFFER_TYPE*, i8*, ...)*)(%struct.BUFFER_TYPE* @ERROR_REC_BUF, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i32 0, i32 0))
  %24 = load i32*, i32** %ERROR.addr, align 8
  store i32 1, i32* %24, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.else, %if.then.23
  %25 = load i8*, i8** %ARGUMENTS.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr, i8** %ARGUMENTS.addr, align 8
  br label %if.end.92

if.else.27:                                       ; preds = %if.then.13
  %call28 = call i32 @GET_REG(i8** %ARGUMENTS.addr)
  store i32 %call28, i32* %REG_NUMB, align 4
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.then.31, label %if.else.33

if.then.31:                                       ; preds = %if.else.27
  call void (%struct.BUFFER_TYPE*, i8*, ...) bitcast (void (...)* @ADD_TO_END_OF_BUFFER to void (%struct.BUFFER_TYPE*, i8*, ...)*)(%struct.BUFFER_TYPE* @ERROR_REC_BUF, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i32 0, i32 0))
  %26 = load i32*, i32** %ERROR.addr, align 8
  store i32 1, i32* %26, align 4
  %27 = load i8*, i8** %ARGUMENTS.addr, align 8
  %incdec.ptr32 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr32, i8** %ARGUMENTS.addr, align 8
  br label %if.end.91

if.else.33:                                       ; preds = %if.else.27
  %28 = load i32, i32* %REG_NUMB, align 4
  %arraydecay34 = getelementptr inbounds [33 x i8], [33 x i8]* %INSTRUCT_CODE, i32 0, i32 0
  call void @SET_BITS_TO(i32 8, i32 11, i32 %28, i8* %arraydecay34)
  %29 = load %struct.OP_ENTRY*, %struct.OP_ENTRY** %OP_CODE.addr, align 8
  %OPERAND35 = getelementptr inbounds %struct.OP_ENTRY, %struct.OP_ENTRY* %29, i32 0, i32 3
  %30 = load i32, i32* %OPERAND35, align 4
  %cmp36 = icmp ne i32 %30, 1
  br i1 %cmp36, label %if.then.38, label %if.end.90

if.then.38:                                       ; preds = %if.else.33
  %31 = load i8*, i8** %ARGUMENTS.addr, align 8
  %32 = load i8, i8* %31, align 1
  %conv39 = sext i8 %32 to i32
  %cmp40 = icmp ne i32 %conv39, 44
  br i1 %cmp40, label %if.then.42, label %if.else.44

if.then.42:                                       ; preds = %if.then.38
  call void (%struct.BUFFER_TYPE*, i8*, ...) bitcast (void (...)* @ADD_TO_END_OF_BUFFER to void (%struct.BUFFER_TYPE*, i8*, ...)*)(%struct.BUFFER_TYPE* @ERROR_REC_BUF, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.12, i32 0, i32 0))
  %33 = load i32*, i32** %ERROR.addr, align 8
  store i32 1, i32* %33, align 4
  %34 = load i8*, i8** %ARGUMENTS.addr, align 8
  %incdec.ptr43 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr43, i8** %ARGUMENTS.addr, align 8
  br label %if.end.89

if.else.44:                                       ; preds = %if.then.38
  %35 = load i8*, i8** %ARGUMENTS.addr, align 8
  %incdec.ptr45 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr45, i8** %ARGUMENTS.addr, align 8
  %36 = load %struct.OP_ENTRY*, %struct.OP_ENTRY** %OP_CODE.addr, align 8
  %OPERAND46 = getelementptr inbounds %struct.OP_ENTRY, %struct.OP_ENTRY* %36, i32 0, i32 3
  %37 = load i32, i32* %OPERAND46, align 4
  %cmp47 = icmp eq i32 %37, 4
  br i1 %cmp47, label %if.then.49, label %if.else.80

if.then.49:                                       ; preds = %if.else.44
  %38 = load i8*, i8** %ARGUMENTS.addr, align 8
  %39 = load i8, i8* %38, align 1
  %conv50 = sext i8 %39 to i32
  %call51 = call i32 (i32, i32, ...) bitcast (i32 (...)* @CHAR_TO_DIGIT to i32 (i32, i32, ...)*)(i32 %conv50, i32 10)
  store i32 %call51, i32* %REG_NUMB, align 4
  %40 = load i8*, i8** %ARGUMENTS.addr, align 8
  %incdec.ptr52 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr52, i8** %ARGUMENTS.addr, align 8
  %41 = load i32, i32* %REG_NUMB, align 4
  %cmp53 = icmp slt i32 %41, 0
  br i1 %cmp53, label %if.then.55, label %if.else.57

if.then.55:                                       ; preds = %if.then.49
  call void (%struct.BUFFER_TYPE*, i8*, ...) bitcast (void (...)* @ADD_TO_END_OF_BUFFER to void (%struct.BUFFER_TYPE*, i8*, ...)*)(%struct.BUFFER_TYPE* @ERROR_REC_BUF, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13, i32 0, i32 0))
  %42 = load i32*, i32** %ERROR.addr, align 8
  store i32 1, i32* %42, align 4
  %43 = load i8*, i8** %ARGUMENTS.addr, align 8
  %incdec.ptr56 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %incdec.ptr56, i8** %ARGUMENTS.addr, align 8
  br label %if.end.79

if.else.57:                                       ; preds = %if.then.49
  %44 = load i8*, i8** %ARGUMENTS.addr, align 8
  %45 = load i8, i8* %44, align 1
  %conv58 = sext i8 %45 to i32
  %call59 = call i32 (i32, i32, ...) bitcast (i32 (...)* @CHAR_TO_DIGIT to i32 (i32, i32, ...)*)(i32 %conv58, i32 10)
  %cmp60 = icmp sge i32 %call59, 0
  br i1 %cmp60, label %if.then.62, label %if.else.68

if.then.62:                                       ; preds = %if.else.57
  %46 = load i32, i32* %REG_NUMB, align 4
  %mul63 = mul nsw i32 %46, 10
  %47 = load i8*, i8** %ARGUMENTS.addr, align 8
  %48 = load i8, i8* %47, align 1
  %conv64 = sext i8 %48 to i32
  %call65 = call i32 (i32, i32, ...) bitcast (i32 (...)* @CHAR_TO_DIGIT to i32 (i32, i32, ...)*)(i32 %conv64, i32 10)
  %add66 = add nsw i32 %mul63, %call65
  store i32 %add66, i32* %REG_NUMB, align 4
  %49 = load i8*, i8** %ARGUMENTS.addr, align 8
  %incdec.ptr67 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %incdec.ptr67, i8** %ARGUMENTS.addr, align 8
  %50 = load i32, i32* %REG_NUMB, align 4
  %dec = add nsw i32 %50, -1
  store i32 %dec, i32* %REG_NUMB, align 4
  br label %if.end.70

if.else.68:                                       ; preds = %if.else.57
  %51 = load i32, i32* %REG_NUMB, align 4
  %dec69 = add nsw i32 %51, -1
  store i32 %dec69, i32* %REG_NUMB, align 4
  br label %if.end.70

if.end.70:                                        ; preds = %if.else.68, %if.then.62
  %52 = load i32, i32* %REG_NUMB, align 4
  %cmp71 = icmp slt i32 %52, 0
  br i1 %cmp71, label %if.then.75, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.70
  %53 = load i32, i32* %REG_NUMB, align 4
  %cmp73 = icmp sgt i32 %53, 15
  br i1 %cmp73, label %if.then.75, label %if.else.76

if.then.75:                                       ; preds = %lor.lhs.false, %if.end.70
  call void (%struct.BUFFER_TYPE*, i8*, ...) bitcast (void (...)* @ADD_TO_END_OF_BUFFER to void (%struct.BUFFER_TYPE*, i8*, ...)*)(%struct.BUFFER_TYPE* @ERROR_REC_BUF, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13, i32 0, i32 0))
  %54 = load i32*, i32** %ERROR.addr, align 8
  store i32 1, i32* %54, align 4
  br label %if.end.78

if.else.76:                                       ; preds = %lor.lhs.false
  %55 = load i32, i32* %REG_NUMB, align 4
  %arraydecay77 = getelementptr inbounds [33 x i8], [33 x i8]* %INSTRUCT_CODE, i32 0, i32 0
  call void @SET_BITS_TO(i32 12, i32 15, i32 %55, i8* %arraydecay77)
  br label %if.end.78

if.end.78:                                        ; preds = %if.else.76, %if.then.75
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %if.then.55
  br label %if.end.88

if.else.80:                                       ; preds = %if.else.44
  %call81 = call i32 @GET_REG(i8** %ARGUMENTS.addr)
  store i32 %call81, i32* %REG_NUMB, align 4
  %cmp82 = icmp slt i32 %call81, 0
  br i1 %cmp82, label %if.then.84, label %if.else.85

if.then.84:                                       ; preds = %if.else.80
  call void (%struct.BUFFER_TYPE*, i8*, ...) bitcast (void (...)* @ADD_TO_END_OF_BUFFER to void (%struct.BUFFER_TYPE*, i8*, ...)*)(%struct.BUFFER_TYPE* @ERROR_REC_BUF, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.14, i32 0, i32 0))
  %56 = load i32*, i32** %ERROR.addr, align 8
  store i32 1, i32* %56, align 4
  br label %if.end.87

if.else.85:                                       ; preds = %if.else.80
  %57 = load i32, i32* %REG_NUMB, align 4
  %arraydecay86 = getelementptr inbounds [33 x i8], [33 x i8]* %INSTRUCT_CODE, i32 0, i32 0
  call void @SET_BITS_TO(i32 12, i32 15, i32 %57, i8* %arraydecay86)
  br label %if.end.87

if.end.87:                                        ; preds = %if.else.85, %if.then.84
  br label %if.end.88

if.end.88:                                        ; preds = %if.end.87, %if.end.79
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %if.then.42
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %if.else.33
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %if.then.31
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %if.end.26
  %58 = load i8*, i8** %ARGUMENTS.addr, align 8
  %59 = load i8, i8* %58, align 1
  %conv93 = sext i8 %59 to i32
  %call94 = call i32 (i32, ...) bitcast (i32 (...)* @IS_BLANK_OR_TAB to i32 (i32, ...)*)(i32 %conv93)
  %tobool = icmp ne i32 %call94, 0
  br i1 %tobool, label %if.end.100, label %land.lhs.true.95

land.lhs.true.95:                                 ; preds = %if.end.92
  %60 = load i8*, i8** %ARGUMENTS.addr, align 8
  %61 = load i8, i8* %60, align 1
  %conv96 = sext i8 %61 to i32
  %call97 = call i32 (i32, ...) bitcast (i32 (...)* @eoln to i32 (i32, ...)*)(i32 %conv96)
  %tobool98 = icmp ne i32 %call97, 0
  br i1 %tobool98, label %if.end.100, label %if.then.99

if.then.99:                                       ; preds = %land.lhs.true.95
  call void (%struct.BUFFER_TYPE*, i8*, ...) bitcast (void (...)* @ADD_TO_END_OF_BUFFER to void (%struct.BUFFER_TYPE*, i8*, ...)*)(%struct.BUFFER_TYPE* @ERROR_REC_BUF, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.15, i32 0, i32 0))
  %62 = load i32*, i32** %ERROR.addr, align 8
  store i32 1, i32* %62, align 4
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.99, %land.lhs.true.95, %if.end.92
  %arraydecay101 = getelementptr inbounds [33 x i8], [33 x i8]* %INSTRUCT_CODE, i32 0, i32 0
  %63 = load i32, i32* %LOCATION.addr, align 4
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** %LISTING_STREAM.addr, align 8
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %OBJECT_STREAM.addr, align 8
  call void @PRT_CODE(i8* %arraydecay101, i32 4, i32 %63, %struct._IO_FILE* %64, %struct._IO_FILE* %65)
  br label %if.end.102

if.end.102:                                       ; preds = %if.end.100, %if.end
  %66 = load %struct.OP_ENTRY*, %struct.OP_ENTRY** %OP_CODE.addr, align 8
  %FORMAT103 = getelementptr inbounds %struct.OP_ENTRY, %struct.OP_ENTRY* %66, i32 0, i32 1
  %67 = load i32, i32* %FORMAT103, align 4
  %cmp104 = icmp eq i32 %67, 2
  br i1 %cmp104, label %if.then.106, label %if.end.226

if.then.106:                                      ; preds = %if.end.102
  store i32 0, i32* %WHAT_KIND, align 4
  %68 = load i32, i32* %EXTENDED.addr, align 4
  %arraydecay107 = getelementptr inbounds [33 x i8], [33 x i8]* %INSTRUCT_CODE, i32 0, i32 0
  call void @SET_BITS_TO(i32 11, i32 11, i32 %68, i8* %arraydecay107)
  %69 = load %struct.OP_ENTRY*, %struct.OP_ENTRY** %OP_CODE.addr, align 8
  %OPERAND108 = getelementptr inbounds %struct.OP_ENTRY, %struct.OP_ENTRY* %69, i32 0, i32 3
  %70 = load i32, i32* %OPERAND108, align 4
  %cmp109 = icmp eq i32 %70, 0
  br i1 %cmp109, label %if.then.111, label %if.else.119

if.then.111:                                      ; preds = %if.then.106
  %arraydecay112 = getelementptr inbounds [33 x i8], [33 x i8]* %INSTRUCT_CODE, i32 0, i32 0
  call void @SET_BITS_TO(i32 6, i32 7, i32 3, i8* %arraydecay112)
  %71 = load i32, i32* %EXTENDED.addr, align 4
  %tobool113 = icmp ne i32 %71, 0
  br i1 %tobool113, label %if.then.114, label %if.else.116

if.then.114:                                      ; preds = %if.then.111
  %arraydecay115 = getelementptr inbounds [33 x i8], [33 x i8]* %INSTRUCT_CODE, i32 0, i32 0
  %72 = load i32, i32* %LOCATION.addr, align 4
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** %LISTING_STREAM.addr, align 8
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** %OBJECT_STREAM.addr, align 8
  call void @PRT_CODE(i8* %arraydecay115, i32 8, i32 %72, %struct._IO_FILE* %73, %struct._IO_FILE* %74)
  br label %if.end.118

if.else.116:                                      ; preds = %if.then.111
  %arraydecay117 = getelementptr inbounds [33 x i8], [33 x i8]* %INSTRUCT_CODE, i32 0, i32 0
  %75 = load i32, i32* %LOCATION.addr, align 4
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** %LISTING_STREAM.addr, align 8
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** %OBJECT_STREAM.addr, align 8
  call void @PRT_CODE(i8* %arraydecay117, i32 6, i32 %75, %struct._IO_FILE* %76, %struct._IO_FILE* %77)
  br label %if.end.118

if.end.118:                                       ; preds = %if.else.116, %if.then.114
  br label %if.end.225

if.else.119:                                      ; preds = %if.then.106
  %78 = load i8*, i8** %ARGUMENTS.addr, align 8
  %79 = load i8, i8* %78, align 1
  %conv120 = sext i8 %79 to i32
  switch i32 %conv120, label %sw.default [
    i32 64, label %sw.bb
    i32 35, label %sw.bb.123
  ]

sw.bb:                                            ; preds = %if.else.119
  %arraydecay121 = getelementptr inbounds [33 x i8], [33 x i8]* %INSTRUCT_CODE, i32 0, i32 0
  call void @SET_BITS_TO(i32 6, i32 6, i32 1, i8* %arraydecay121)
  %80 = load i8*, i8** %ARGUMENTS.addr, align 8
  %incdec.ptr122 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %incdec.ptr122, i8** %ARGUMENTS.addr, align 8
  br label %sw.epilog

sw.bb.123:                                        ; preds = %if.else.119
  %arraydecay124 = getelementptr inbounds [33 x i8], [33 x i8]* %INSTRUCT_CODE, i32 0, i32 0
  call void @SET_BITS_TO(i32 7, i32 7, i32 1, i8* %arraydecay124)
  %81 = load i8*, i8** %ARGUMENTS.addr, align 8
  %incdec.ptr125 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %incdec.ptr125, i8** %ARGUMENTS.addr, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.else.119
  %arraydecay126 = getelementptr inbounds [33 x i8], [33 x i8]* %INSTRUCT_CODE, i32 0, i32 0
  call void @SET_BITS_TO(i32 6, i32 7, i32 3, i8* %arraydecay126)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.123, %sw.bb
  %82 = load i32, i32* %LOCATION.addr, align 4
  %add127 = add nsw i32 %82, 1
  %83 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %SYM_TAB.addr, align 8
  %call128 = call i32 (i8**, i32, i32, %struct.SYMBOL_TABLE_ENTRY**, i32*, ...) bitcast (i32 (...)* @GET_EXPRESSION to i32 (i8**, i32, i32, %struct.SYMBOL_TABLE_ENTRY**, i32*, ...)*)(i8** %ARGUMENTS.addr, i32 21, i32 %add127, %struct.SYMBOL_TABLE_ENTRY** %83, i32* %WHAT_KIND)
  store i32 %call128, i32* %VALUE, align 4
  %84 = load %struct.BUFFER*, %struct.BUFFER** getelementptr inbounds (%struct.BUFFER_TYPE, %struct.BUFFER_TYPE* @ERROR_REC_BUF, i32 0, i32 0), align 8
  %cmp129 = icmp ne %struct.BUFFER* %84, null
  br i1 %cmp129, label %if.then.131, label %if.end.132

if.then.131:                                      ; preds = %sw.epilog
  %85 = load i32*, i32** %ERROR.addr, align 8
  store i32 1, i32* %85, align 4
  br label %if.end.132

if.end.132:                                       ; preds = %if.then.131, %sw.epilog
  %86 = load i8*, i8** %ARGUMENTS.addr, align 8
  %87 = load i8, i8* %86, align 1
  %conv133 = sext i8 %87 to i32
  %cmp134 = icmp eq i32 %conv133, 44
  br i1 %cmp134, label %land.lhs.true.136, label %if.end.143

land.lhs.true.136:                                ; preds = %if.end.132
  %88 = load i8*, i8** %ARGUMENTS.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %88, i64 1
  %89 = load i8, i8* %add.ptr, align 1
  %conv137 = sext i8 %89 to i32
  %cmp138 = icmp eq i32 %conv137, 88
  br i1 %cmp138, label %if.then.140, label %if.end.143

if.then.140:                                      ; preds = %land.lhs.true.136
  %90 = load i8*, i8** %ARGUMENTS.addr, align 8
  %add.ptr141 = getelementptr inbounds i8, i8* %90, i64 2
  store i8* %add.ptr141, i8** %ARGUMENTS.addr, align 8
  %arraydecay142 = getelementptr inbounds [33 x i8], [33 x i8]* %INSTRUCT_CODE, i32 0, i32 0
  call void @SET_BITS_TO(i32 8, i32 8, i32 1, i8* %arraydecay142)
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.140, %land.lhs.true.136, %if.end.132
  %91 = load i32, i32* %EXTENDED.addr, align 4
  %tobool144 = icmp ne i32 %91, 0
  br i1 %tobool144, label %if.then.145, label %if.else.162

if.then.145:                                      ; preds = %if.end.143
  %92 = load i32, i32* %VALUE, align 4
  %cmp146 = icmp slt i32 %92, 0
  br i1 %cmp146, label %if.then.148, label %if.end.150

if.then.148:                                      ; preds = %if.then.145
  %93 = load i32, i32* %VALUE, align 4
  %add149 = add nsw i32 1048576, %93
  store i32 %add149, i32* %VALUE, align 4
  br label %if.end.150

if.end.150:                                       ; preds = %if.then.148, %if.then.145
  %94 = load i32, i32* %WHAT_KIND, align 4
  %cmp151 = icmp eq i32 %94, 2
  br i1 %cmp151, label %if.then.153, label %if.end.159

if.then.153:                                      ; preds = %if.end.150
  %95 = load i32, i32* %LOCATION.addr, align 4
  %add154 = add nsw i32 %95, 1
  %arraydecay155 = getelementptr inbounds [9 x i8], [9 x i8]* %MOD_REC, i32 0, i32 0
  call void (i32, i32, i32, i8*, ...) bitcast (void (...)* @NUM_TO_STR to void (i32, i32, i32, i8*, ...)*)(i32 %add154, i32 16, i32 6, i8* %arraydecay155)
  %arraydecay156 = getelementptr inbounds [9 x i8], [9 x i8]* %MOD_REC, i32 0, i32 0
  %call157 = call i8* @strcat(i8* %arraydecay156, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0)) #5
  %arraydecay158 = getelementptr inbounds [9 x i8], [9 x i8]* %MOD_REC, i32 0, i32 0
  call void (%struct.BUFFER_TYPE*, i8*, ...) bitcast (void (...)* @ADD_TO_END_OF_BUFFER to void (%struct.BUFFER_TYPE*, i8*, ...)*)(%struct.BUFFER_TYPE* @MOD_REC_BUF, i8* %arraydecay158)
  br label %if.end.159

if.end.159:                                       ; preds = %if.then.153, %if.end.150
  %96 = load i32, i32* %VALUE, align 4
  %arraydecay160 = getelementptr inbounds [33 x i8], [33 x i8]* %INSTRUCT_CODE, i32 0, i32 0
  call void @SET_BITS_TO(i32 12, i32 31, i32 %96, i8* %arraydecay160)
  %arraydecay161 = getelementptr inbounds [33 x i8], [33 x i8]* %INSTRUCT_CODE, i32 0, i32 0
  %97 = load i32, i32* %LOCATION.addr, align 4
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** %LISTING_STREAM.addr, align 8
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** %OBJECT_STREAM.addr, align 8
  call void @PRT_CODE(i8* %arraydecay161, i32 8, i32 %97, %struct._IO_FILE* %98, %struct._IO_FILE* %99)
  br label %if.end.215

if.else.162:                                      ; preds = %if.end.143
  %100 = load i32, i32* %WHAT_KIND, align 4
  %cmp163 = icmp eq i32 %100, 3
  br i1 %cmp163, label %if.then.165, label %if.end.166

if.then.165:                                      ; preds = %if.else.162
  call void (%struct.BUFFER_TYPE*, i8*, ...) bitcast (void (...)* @ADD_TO_END_OF_BUFFER to void (%struct.BUFFER_TYPE*, i8*, ...)*)(%struct.BUFFER_TYPE* @ERROR_REC_BUF, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.17, i32 0, i32 0))
  %101 = load i32*, i32** %ERROR.addr, align 8
  store i32 1, i32* %101, align 4
  store i32 0, i32* %VALUE, align 4
  br label %if.end.166

if.end.166:                                       ; preds = %if.then.165, %if.else.162
  %102 = load i32, i32* %WHAT_KIND, align 4
  %cmp167 = icmp eq i32 %102, 2
  br i1 %cmp167, label %if.then.169, label %if.end.172

if.then.169:                                      ; preds = %if.end.166
  %103 = load i32, i32* %VALUE, align 4
  %104 = load i32, i32* %LOCATION.addr, align 4
  %add170 = add nsw i32 %104, 3
  %sub171 = sub nsw i32 %103, %add170
  store i32 %sub171, i32* %VALUE, align 4
  br label %if.end.172

if.end.172:                                       ; preds = %if.then.169, %if.end.166
  %105 = load i32, i32* %WHAT_KIND, align 4
  %cmp173 = icmp eq i32 %105, 2
  br i1 %cmp173, label %land.lhs.true.175, label %lor.lhs.false.178

land.lhs.true.175:                                ; preds = %if.end.172
  %106 = load i32, i32* %VALUE, align 4
  %cmp176 = icmp sge i32 %106, 2048
  br i1 %cmp176, label %if.then.184, label %lor.lhs.false.178

lor.lhs.false.178:                                ; preds = %land.lhs.true.175, %if.end.172
  %107 = load i32, i32* %WHAT_KIND, align 4
  %cmp179 = icmp ne i32 %107, 2
  br i1 %cmp179, label %land.lhs.true.181, label %if.end.190

land.lhs.true.181:                                ; preds = %lor.lhs.false.178
  %108 = load i32, i32* %VALUE, align 4
  %cmp182 = icmp sge i32 %108, 4096
  br i1 %cmp182, label %if.then.184, label %if.end.190

if.then.184:                                      ; preds = %land.lhs.true.181, %land.lhs.true.175
  %109 = load i32, i32* %WHAT_KIND, align 4
  %cmp185 = icmp eq i32 %109, 2
  br i1 %cmp185, label %if.then.187, label %if.else.188

if.then.187:                                      ; preds = %if.then.184
  call void (%struct.BUFFER_TYPE*, i8*, ...) bitcast (void (...)* @ADD_TO_END_OF_BUFFER to void (%struct.BUFFER_TYPE*, i8*, ...)*)(%struct.BUFFER_TYPE* @ERROR_REC_BUF, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end.189

if.else.188:                                      ; preds = %if.then.184
  call void (%struct.BUFFER_TYPE*, i8*, ...) bitcast (void (...)* @ADD_TO_END_OF_BUFFER to void (%struct.BUFFER_TYPE*, i8*, ...)*)(%struct.BUFFER_TYPE* @ERROR_REC_BUF, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.19, i32 0, i32 0))
  br label %if.end.189

if.end.189:                                       ; preds = %if.else.188, %if.then.187
  %110 = load i32*, i32** %ERROR.addr, align 8
  store i32 1, i32* %110, align 4
  store i32 0, i32* %VALUE, align 4
  br label %if.end.190

if.end.190:                                       ; preds = %if.end.189, %land.lhs.true.181, %lor.lhs.false.178
  %111 = load i32, i32* %VALUE, align 4
  %cmp191 = icmp slt i32 %111, 0
  br i1 %cmp191, label %if.then.193, label %if.end.207

if.then.193:                                      ; preds = %if.end.190
  %112 = load i32, i32* %VALUE, align 4
  %add194 = add nsw i32 4096, %112
  store i32 %add194, i32* %VALUE, align 4
  %113 = load i32, i32* %VALUE, align 4
  %cmp195 = icmp sge i32 %113, 4096
  br i1 %cmp195, label %if.then.200, label %lor.lhs.false.197

lor.lhs.false.197:                                ; preds = %if.then.193
  %114 = load i32, i32* %VALUE, align 4
  %cmp198 = icmp slt i32 %114, 2048
  br i1 %cmp198, label %if.then.200, label %if.end.206

if.then.200:                                      ; preds = %lor.lhs.false.197, %if.then.193
  %115 = load i32, i32* %WHAT_KIND, align 4
  %cmp201 = icmp eq i32 %115, 2
  br i1 %cmp201, label %if.then.203, label %if.else.204

if.then.203:                                      ; preds = %if.then.200
  call void (%struct.BUFFER_TYPE*, i8*, ...) bitcast (void (...)* @ADD_TO_END_OF_BUFFER to void (%struct.BUFFER_TYPE*, i8*, ...)*)(%struct.BUFFER_TYPE* @ERROR_REC_BUF, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end.205

if.else.204:                                      ; preds = %if.then.200
  call void (%struct.BUFFER_TYPE*, i8*, ...) bitcast (void (...)* @ADD_TO_END_OF_BUFFER to void (%struct.BUFFER_TYPE*, i8*, ...)*)(%struct.BUFFER_TYPE* @ERROR_REC_BUF, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.19, i32 0, i32 0))
  br label %if.end.205

if.end.205:                                       ; preds = %if.else.204, %if.then.203
  %116 = load i32*, i32** %ERROR.addr, align 8
  store i32 1, i32* %116, align 4
  store i32 0, i32* %VALUE, align 4
  br label %if.end.206

if.end.206:                                       ; preds = %if.end.205, %lor.lhs.false.197
  br label %if.end.207

if.end.207:                                       ; preds = %if.end.206, %if.end.190
  %117 = load i32, i32* %VALUE, align 4
  %arraydecay208 = getelementptr inbounds [33 x i8], [33 x i8]* %INSTRUCT_CODE, i32 0, i32 0
  call void @SET_BITS_TO(i32 12, i32 23, i32 %117, i8* %arraydecay208)
  %118 = load i32, i32* %WHAT_KIND, align 4
  %cmp209 = icmp eq i32 %118, 2
  br i1 %cmp209, label %if.then.211, label %if.end.213

if.then.211:                                      ; preds = %if.end.207
  %arraydecay212 = getelementptr inbounds [33 x i8], [33 x i8]* %INSTRUCT_CODE, i32 0, i32 0
  call void @SET_BITS_TO(i32 10, i32 10, i32 1, i8* %arraydecay212)
  br label %if.end.213

if.end.213:                                       ; preds = %if.then.211, %if.end.207
  %arraydecay214 = getelementptr inbounds [33 x i8], [33 x i8]* %INSTRUCT_CODE, i32 0, i32 0
  %119 = load i32, i32* %LOCATION.addr, align 4
  %120 = load %struct._IO_FILE*, %struct._IO_FILE** %LISTING_STREAM.addr, align 8
  %121 = load %struct._IO_FILE*, %struct._IO_FILE** %OBJECT_STREAM.addr, align 8
  call void @PRT_CODE(i8* %arraydecay214, i32 6, i32 %119, %struct._IO_FILE* %120, %struct._IO_FILE* %121)
  br label %if.end.215

if.end.215:                                       ; preds = %if.end.213, %if.end.159
  %122 = load i8*, i8** %ARGUMENTS.addr, align 8
  %123 = load i8, i8* %122, align 1
  %conv216 = sext i8 %123 to i32
  %call217 = call i32 (i32, ...) bitcast (i32 (...)* @IS_BLANK_OR_TAB to i32 (i32, ...)*)(i32 %conv216)
  %tobool218 = icmp ne i32 %call217, 0
  br i1 %tobool218, label %if.end.224, label %land.lhs.true.219

land.lhs.true.219:                                ; preds = %if.end.215
  %124 = load i8*, i8** %ARGUMENTS.addr, align 8
  %125 = load i8, i8* %124, align 1
  %conv220 = sext i8 %125 to i32
  %call221 = call i32 (i32, ...) bitcast (i32 (...)* @eoln to i32 (i32, ...)*)(i32 %conv220)
  %tobool222 = icmp ne i32 %call221, 0
  br i1 %tobool222, label %if.end.224, label %if.then.223

if.then.223:                                      ; preds = %land.lhs.true.219
  call void (%struct.BUFFER_TYPE*, i8*, ...) bitcast (void (...)* @ADD_TO_END_OF_BUFFER to void (%struct.BUFFER_TYPE*, i8*, ...)*)(%struct.BUFFER_TYPE* @ERROR_REC_BUF, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.15, i32 0, i32 0))
  %126 = load i32*, i32** %ERROR.addr, align 8
  store i32 1, i32* %126, align 4
  br label %if.end.224

if.end.224:                                       ; preds = %if.then.223, %land.lhs.true.219, %if.end.215
  br label %if.end.225

if.end.225:                                       ; preds = %if.end.224, %if.end.118
  br label %if.end.226

if.end.226:                                       ; preds = %if.end.225, %if.end.102
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** %LISTING_STREAM.addr, align 8
  %call227 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %127, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0))
  ret void
}

declare void @ADD_TO_END_OF_BUFFER(...) #2

declare i32 @IS_BLANK_OR_TAB(...) #2

declare i32 @GET_EXPRESSION(...) #2

declare void @NUM_TO_STR(...) #2

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define void @CODE(%struct._IO_FILE* %INPUT_STREAM, %struct.SYMBOL_TABLE_ENTRY** %SYM_TAB, %struct._IO_FILE* %OBJECT_STREAM, %struct._IO_FILE* %LISTING_STREAM, i32* %ERROR) #0 {
entry:
  %INPUT_STREAM.addr = alloca %struct._IO_FILE*, align 8
  %SYM_TAB.addr = alloca %struct.SYMBOL_TABLE_ENTRY**, align 8
  %OBJECT_STREAM.addr = alloca %struct._IO_FILE*, align 8
  %LISTING_STREAM.addr = alloca %struct._IO_FILE*, align 8
  %ERROR.addr = alloca i32*, align 8
  %LABEL = alloca [9 x i8], align 1
  %OPERATOR = alloca [9 x i8], align 1
  %ARGUMENTS = alloca i8*, align 8
  %INPUT_LINE = alloca i8*, align 8
  %LOCATION_COUNTER = alloca i32, align 4
  %EXTENDED = alloca i32, align 4
  %OP_CODE = alloca %struct.OP_ENTRY*, align 8
  %TABLE_ENTRY = alloca %struct.SYMBOL_TABLE_ENTRY*, align 8
  %SAVE_LINE = alloca i8*, align 8
  store %struct._IO_FILE* %INPUT_STREAM, %struct._IO_FILE** %INPUT_STREAM.addr, align 8
  store %struct.SYMBOL_TABLE_ENTRY** %SYM_TAB, %struct.SYMBOL_TABLE_ENTRY*** %SYM_TAB.addr, align 8
  store %struct._IO_FILE* %OBJECT_STREAM, %struct._IO_FILE** %OBJECT_STREAM.addr, align 8
  store %struct._IO_FILE* %LISTING_STREAM, %struct._IO_FILE** %LISTING_STREAM.addr, align 8
  store i32* %ERROR, i32** %ERROR.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %INPUT_STREAM.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0), i32* %LOCATION_COUNTER)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %INPUT_STREAM.addr, align 8
  %call1 = call i32 @_IO_getc(%struct._IO_FILE* %1)
  %2 = load i32, i32* %LOCATION_COUNTER, align 4
  %arraydecay = getelementptr inbounds [9 x i8], [9 x i8]* %LABEL, i32 0, i32 0
  %arraydecay2 = getelementptr inbounds [9 x i8], [9 x i8]* %OPERATOR, i32 0, i32 0
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %INPUT_STREAM.addr, align 8
  call void (i32, i8**, i8*, i32*, i8*, i8**, i32, %struct._IO_FILE*, %struct._IO_FILE*, ...) bitcast (void (...)* @SCAN_LINE to void (i32, i8**, i8*, i32*, i8*, i8**, i32, %struct._IO_FILE*, %struct._IO_FILE*, ...)*)(i32 %2, i8** %INPUT_LINE, i8* %arraydecay, i32* %EXTENDED, i8* %arraydecay2, i8** %ARGUMENTS, i32 1, %struct._IO_FILE* null, %struct._IO_FILE* %3)
  %arraydecay3 = getelementptr inbounds [9 x i8], [9 x i8]* %LABEL, i32 0, i32 0
  call void (i8*, ...) bitcast (void (...)* @CAPITALIZE_STRING to void (i8*, ...)*)(i8* %arraydecay3)
  %arraydecay4 = getelementptr inbounds [9 x i8], [9 x i8]* %OPERATOR, i32 0, i32 0
  call void (i8*, ...) bitcast (void (...)* @CAPITALIZE_STRING to void (i8*, ...)*)(i8* %arraydecay4)
  %arraydecay5 = getelementptr inbounds [9 x i8], [9 x i8]* %OPERATOR, i32 0, i32 0
  %call6 = call %struct.OP_ENTRY* (i8*, ...) bitcast (%struct.OP_ENTRY* (...)* @LOOK_UP_OP to %struct.OP_ENTRY* (i8*, ...)*)(i8* %arraydecay5)
  store %struct.OP_ENTRY* %call6, %struct.OP_ENTRY** %OP_CODE, align 8
  %arraydecay7 = getelementptr inbounds [9 x i8], [9 x i8]* %LABEL, i32 0, i32 0
  %call8 = call i32 @strcmp(i8* %arraydecay7, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.22, i32 0, i32 0)) #4
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %arraydecay9 = getelementptr inbounds [9 x i8], [9 x i8]* %OPERATOR, i32 0, i32 0
  %call10 = call i32 @strcmp(i8* %arraydecay9, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.22, i32 0, i32 0)) #4
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.else, label %land.lhs.true.12

land.lhs.true.12:                                 ; preds = %land.lhs.true
  %4 = load i32, i32* %EXTENDED, align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.12
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %LISTING_STREAM.addr, align 8
  %6 = load i8*, i8** %INPUT_LINE, align 8
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i32 0, i32 0), i8* %6)
  br label %if.end.77

if.else:                                          ; preds = %land.lhs.true.12, %land.lhs.true, %entry
  %arraydecay14 = getelementptr inbounds [9 x i8], [9 x i8]* %OPERATOR, i32 0, i32 0
  %call15 = call i32 @strcmp(i8* %arraydecay14, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.22, i32 0, i32 0)) #4
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.else.19, label %if.then.17

if.then.17:                                       ; preds = %if.else
  %7 = load i32, i32* %LOCATION_COUNTER, align 4
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %LISTING_STREAM.addr, align 8
  call void (i32, i32, i32, %struct._IO_FILE*, ...) bitcast (void (...)* @PRT_NUM to void (i32, i32, i32, %struct._IO_FILE*, ...)*)(i32 %7, i32 16, i32 6, %struct._IO_FILE* %8)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %LISTING_STREAM.addr, align 8
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0))
  br label %if.end.58

if.else.19:                                       ; preds = %if.else
  %10 = load %struct.OP_ENTRY*, %struct.OP_ENTRY** %OP_CODE, align 8
  %OPERAND = getelementptr inbounds %struct.OP_ENTRY, %struct.OP_ENTRY* %10, i32 0, i32 3
  %11 = load i32, i32* %OPERAND, align 4
  %cmp20 = icmp eq i32 %11, 7
  br i1 %cmp20, label %if.then.21, label %if.else.23

if.then.21:                                       ; preds = %if.else.19
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %LISTING_STREAM.addr, align 8
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0))
  br label %if.end.57

if.else.23:                                       ; preds = %if.else.19
  %13 = load %struct.OP_ENTRY*, %struct.OP_ENTRY** %OP_CODE, align 8
  %OPERAND24 = getelementptr inbounds %struct.OP_ENTRY, %struct.OP_ENTRY* %13, i32 0, i32 3
  %14 = load i32, i32* %OPERAND24, align 4
  %cmp25 = icmp eq i32 %14, 8
  br i1 %cmp25, label %if.then.26, label %if.else.54

if.then.26:                                       ; preds = %if.else.23
  %arraydecay27 = getelementptr inbounds [9 x i8], [9 x i8]* %OPERATOR, i32 0, i32 0
  %call28 = call i32 @strcmp(i8* %arraydecay27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0)) #4
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.else.36, label %if.then.30

if.then.30:                                       ; preds = %if.then.26
  %arraydecay31 = getelementptr inbounds [9 x i8], [9 x i8]* %LABEL, i32 0, i32 0
  %15 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %SYM_TAB.addr, align 8
  %call32 = call %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...) bitcast (%struct.SYMBOL_TABLE_ENTRY* (...)* @LOOK_UP_SYMBOL to %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...)*)(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @MODULE_NAME, i32 0, i32 0), i8* %arraydecay31, %struct.SYMBOL_TABLE_ENTRY** %15)
  store %struct.SYMBOL_TABLE_ENTRY* %call32, %struct.SYMBOL_TABLE_ENTRY** %TABLE_ENTRY, align 8
  %16 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %TABLE_ENTRY, align 8
  %cmp33 = icmp eq %struct.SYMBOL_TABLE_ENTRY* %16, null
  br i1 %cmp33, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %if.then.30
  store i32 0, i32* %LOCATION_COUNTER, align 4
  br label %if.end

if.else.35:                                       ; preds = %if.then.30
  %17 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %TABLE_ENTRY, align 8
  %LOCATION = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %17, i32 0, i32 2
  %18 = load i32, i32* %LOCATION, align 4
  store i32 %18, i32* %LOCATION_COUNTER, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.35, %if.then.34
  br label %if.end.52

if.else.36:                                       ; preds = %if.then.26
  %arraydecay37 = getelementptr inbounds [9 x i8], [9 x i8]* %LABEL, i32 0, i32 0
  %call38 = call i32 @strcmp(i8* %arraydecay37, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.22, i32 0, i32 0)) #4
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.end.42, label %if.then.40

if.then.40:                                       ; preds = %if.else.36
  %arraydecay41 = getelementptr inbounds [9 x i8], [9 x i8]* %LABEL, i32 0, i32 0
  %19 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %SYM_TAB.addr, align 8
  call void (i8*, %struct.SYMBOL_TABLE_ENTRY**, ...) bitcast (void (...)* @GET_NEXT_MISSING_LABEL to void (i8*, %struct.SYMBOL_TABLE_ENTRY**, ...)*)(i8* %arraydecay41, %struct.SYMBOL_TABLE_ENTRY** %19)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.40, %if.else.36
  %arraydecay43 = getelementptr inbounds [9 x i8], [9 x i8]* %LABEL, i32 0, i32 0
  %arraydecay44 = getelementptr inbounds [9 x i8], [9 x i8]* %LABEL, i32 0, i32 0
  %20 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %SYM_TAB.addr, align 8
  %call45 = call %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...) bitcast (%struct.SYMBOL_TABLE_ENTRY* (...)* @LOOK_UP_SYMBOL to %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...)*)(i8* %arraydecay43, i8* %arraydecay44, %struct.SYMBOL_TABLE_ENTRY** %20)
  store %struct.SYMBOL_TABLE_ENTRY* %call45, %struct.SYMBOL_TABLE_ENTRY** %TABLE_ENTRY, align 8
  %21 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %TABLE_ENTRY, align 8
  %cmp46 = icmp eq %struct.SYMBOL_TABLE_ENTRY* %21, null
  br i1 %cmp46, label %if.then.47, label %if.else.49

if.then.47:                                       ; preds = %if.end.42
  %call48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.26, i32 0, i32 0))
  br label %if.end.51

if.else.49:                                       ; preds = %if.end.42
  %22 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %TABLE_ENTRY, align 8
  %LOCATION50 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %22, i32 0, i32 2
  %23 = load i32, i32* %LOCATION50, align 4
  store i32 %23, i32* %LOCATION_COUNTER, align 4
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.49, %if.then.47
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.end
  %24 = load i32, i32* %LOCATION_COUNTER, align 4
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %LISTING_STREAM.addr, align 8
  call void (i32, i32, i32, %struct._IO_FILE*, ...) bitcast (void (...)* @PRT_NUM to void (i32, i32, i32, %struct._IO_FILE*, ...)*)(i32 %24, i32 16, i32 6, %struct._IO_FILE* %25)
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %LISTING_STREAM.addr, align 8
  %call53 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0))
  br label %if.end.56

if.else.54:                                       ; preds = %if.else.23
  %27 = load i32, i32* %LOCATION_COUNTER, align 4
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %LISTING_STREAM.addr, align 8
  call void (i32, i32, i32, %struct._IO_FILE*, ...) bitcast (void (...)* @PRT_NUM to void (i32, i32, i32, %struct._IO_FILE*, ...)*)(i32 %27, i32 16, i32 6, %struct._IO_FILE* %28)
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %LISTING_STREAM.addr, align 8
  %call55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0))
  br label %if.end.56

if.end.56:                                        ; preds = %if.else.54, %if.end.52
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.then.21
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %if.then.17
  %30 = load i8*, i8** %INPUT_LINE, align 8
  %call59 = call i64 @strlen(i8* %30) #4
  %add = add i64 %call59, 1
  %conv = trunc i64 %add to i32
  %conv60 = zext i32 %conv to i64
  %call61 = call noalias i8* @malloc(i64 %conv60) #5
  store i8* %call61, i8** %SAVE_LINE, align 8
  %31 = load i8*, i8** %SAVE_LINE, align 8
  %32 = load i8*, i8** %INPUT_LINE, align 8
  %call62 = call i8* @strcpy(i8* %31, i8* %32) #5
  %33 = load i8*, i8** %ARGUMENTS, align 8
  call void (i8*, ...) bitcast (void (...)* @CAPITALIZE_STRING to void (i8*, ...)*)(i8* %33)
  %34 = load %struct.OP_ENTRY*, %struct.OP_ENTRY** %OP_CODE, align 8
  %FORMAT = getelementptr inbounds %struct.OP_ENTRY, %struct.OP_ENTRY* %34, i32 0, i32 1
  %35 = load i32, i32* %FORMAT, align 4
  %cmp63 = icmp eq i32 %35, 4
  br i1 %cmp63, label %if.then.65, label %if.else.67

if.then.65:                                       ; preds = %if.end.58
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %LISTING_STREAM.addr, align 8
  %call66 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.75

if.else.67:                                       ; preds = %if.end.58
  %37 = load %struct.OP_ENTRY*, %struct.OP_ENTRY** %OP_CODE, align 8
  %FORMAT68 = getelementptr inbounds %struct.OP_ENTRY, %struct.OP_ENTRY* %37, i32 0, i32 1
  %38 = load i32, i32* %FORMAT68, align 4
  %cmp69 = icmp eq i32 %38, 3
  br i1 %cmp69, label %if.then.71, label %if.else.73

if.then.71:                                       ; preds = %if.else.67
  %arraydecay72 = getelementptr inbounds [9 x i8], [9 x i8]* %OPERATOR, i32 0, i32 0
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %INPUT_STREAM.addr, align 8
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %OBJECT_STREAM.addr, align 8
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %LISTING_STREAM.addr, align 8
  call void @PSEUDO_CODE(i8* %arraydecay72, %struct._IO_FILE* %39, %struct._IO_FILE* %40, %struct._IO_FILE* %41)
  br label %if.end.74

if.else.73:                                       ; preds = %if.else.67
  %42 = load %struct.OP_ENTRY*, %struct.OP_ENTRY** %OP_CODE, align 8
  %43 = load i32, i32* %EXTENDED, align 4
  %44 = load i8*, i8** %ARGUMENTS, align 8
  %45 = load i32, i32* %LOCATION_COUNTER, align 4
  %46 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %SYM_TAB.addr, align 8
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %OBJECT_STREAM.addr, align 8
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %LISTING_STREAM.addr, align 8
  %49 = load i32*, i32** %ERROR.addr, align 8
  call void @REAL_CODE(%struct.OP_ENTRY* %42, i32 %43, i8* %44, i32 %45, %struct.SYMBOL_TABLE_ENTRY** %46, %struct._IO_FILE* %47, %struct._IO_FILE* %48, i32* %49)
  br label %if.end.74

if.end.74:                                        ; preds = %if.else.73, %if.then.71
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %if.then.65
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %LISTING_STREAM.addr, align 8
  %51 = load i8*, i8** %SAVE_LINE, align 8
  %call76 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0), i8* %51)
  %52 = load i8*, i8** %SAVE_LINE, align 8
  call void @free(i8* %52) #5
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.75, %if.then
  ret void
}

declare i32 @_IO_getc(%struct._IO_FILE*) #2

declare void @SCAN_LINE(...) #2

declare void @CAPITALIZE_STRING(...) #2

declare %struct.OP_ENTRY* @LOOK_UP_OP(...) #2

declare void @PRT_NUM(...) #2

declare %struct.SYMBOL_TABLE_ENTRY* @LOOK_UP_SYMBOL(...) #2

declare void @GET_NEXT_MISSING_LABEL(...) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind
declare void @free(i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
