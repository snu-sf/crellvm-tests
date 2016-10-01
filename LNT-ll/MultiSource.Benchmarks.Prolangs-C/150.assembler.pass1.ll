; ModuleID = './MultiSource.Benchmarks.Prolangs-C/150.assembler.pass1.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BUFFER_TYPE = type { %struct.BUFFER*, %struct.BUFFER*, i32 }
%struct.BUFFER = type { i8*, %struct.BUFFER* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.SYMBOL_TABLE_ENTRY = type { [9 x i8], [9 x i8], i32, i32, i32, %struct.SYMBOL_TABLE_ENTRY* }
%struct.OP_ENTRY = type { i8*, i32, i8*, i32, i32 }

@SEEN_START_OP = global i32 0, align 4
@SEEN_END_OP = global i32 3, align 4
@LOCATION_EXCEEDS_MEM_SIZE = global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"eERROR[12]: Location exceeds the memory size (%d)\0A\00", align 1
@MODULE_NAME = external global [9 x i8], align 1
@MAIN_ROUTINE = external global [9 x i8], align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"CSECT\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"START\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"eERROR[30]: Statements following END.\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"eERROR[6]: %s is a multipy defined label.\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"eERROR[9]: %s is not a legal OPCODE.\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"eERROR[8]: + is an illegal prefix to %s.\00", align 1
@.str.8 = private unnamed_addr constant [53 x i8] c"eERROR[35]: No START/CSECT found before statements.\0A\00", align 1
@MOD_REC_BUF = external global %struct.BUFFER_TYPE, align 8
@.str.9 = private unnamed_addr constant [60 x i8] c"eERROR[36]: End of File detected without an END statement.\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @CHANGE_LOCATION(i32* %LOCATION, i32 %INCREMENT, %struct._IO_FILE* %OUTPUT) #0 {
entry:
  %LOCATION.addr = alloca i32*, align 8
  %INCREMENT.addr = alloca i32, align 4
  %OUTPUT.addr = alloca %struct._IO_FILE*, align 8
  store i32* %LOCATION, i32** %LOCATION.addr, align 8
  store i32 %INCREMENT, i32* %INCREMENT.addr, align 4
  store %struct._IO_FILE* %OUTPUT, %struct._IO_FILE** %OUTPUT.addr, align 8
  %0 = load i32, i32* @LOCATION_EXCEEDS_MEM_SIZE, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end.4, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %LOCATION.addr, align 8
  %2 = load i32, i32* %1, align 4
  %3 = load i32, i32* %INCREMENT.addr, align 4
  %add = add nsw i32 %2, %3
  %cmp = icmp sgt i32 %add, 1048576
  br i1 %cmp, label %if.then.2, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %4 = load i32*, i32** %LOCATION.addr, align 8
  %5 = load i32, i32* %4, align 4
  %cmp1 = icmp eq i32 %5, 1048576
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %lor.lhs.false, %if.then
  store i32 1, i32* @LOCATION_EXCEEDS_MEM_SIZE, align 4
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i32 0, i32 0), i32 1048576)
  %7 = load i32*, i32** %LOCATION.addr, align 8
  store i32 1048575, i32* %7, align 4
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %8 = load i32, i32* %INCREMENT.addr, align 4
  %9 = load i32*, i32** %LOCATION.addr, align 8
  %10 = load i32, i32* %9, align 4
  %add3 = add nsw i32 %10, %8
  store i32 %add3, i32* %9, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @CAPITALIZE_STRING(i8* %STR) #0 {
entry:
  %STR.addr = alloca i8*, align 8
  %I = alloca i32, align 4
  store i8* %STR, i8** %STR.addr, align 8
  store i32 0, i32* %I, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %I, align 4
  %conv = sext i32 %0 to i64
  %1 = load i8*, i8** %STR.addr, align 8
  %call = call i64 @strlen(i8* %1) #4
  %cmp = icmp ule i64 %conv, %call
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %I, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i8*, i8** %STR.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv2 = sext i8 %4 to i32
  %cmp3 = icmp sge i32 %conv2, 97
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %5 = load i32, i32* %I, align 4
  %idxprom5 = sext i32 %5 to i64
  %6 = load i8*, i8** %STR.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %6, i64 %idxprom5
  %7 = load i8, i8* %arrayidx6, align 1
  %conv7 = sext i8 %7 to i32
  %cmp8 = icmp sle i32 %conv7, 122
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %8 = load i32, i32* %I, align 4
  %idxprom10 = sext i32 %8 to i64
  %9 = load i8*, i8** %STR.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %9, i64 %idxprom10
  %10 = load i8, i8* %arrayidx11, align 1
  %conv12 = sext i8 %10 to i32
  %sub = sub nsw i32 %conv12, 97
  %add = add nsw i32 %sub, 65
  %conv13 = trunc i32 %add to i8
  %11 = load i32, i32* %I, align 4
  %idxprom14 = sext i32 %11 to i64
  %12 = load i8*, i8** %STR.addr, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %idxprom14
  store i8 %conv13, i8* %arrayidx15, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %I, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %I, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind uwtable
define void @PASS1(%struct._IO_FILE* %INPUT_FILE, %struct.SYMBOL_TABLE_ENTRY** %SYM_TABLE, %struct._IO_FILE* %TEMP_OUTPUT_STREAM) #0 {
entry:
  %INPUT_FILE.addr = alloca %struct._IO_FILE*, align 8
  %SYM_TABLE.addr = alloca %struct.SYMBOL_TABLE_ENTRY**, align 8
  %TEMP_OUTPUT_STREAM.addr = alloca %struct._IO_FILE*, align 8
  %LABEL_NAME = alloca [9 x i8], align 1
  %OPCODE = alloca [9 x i8], align 1
  %ARGUMENTS = alloca i8*, align 8
  %INPUT_LINE = alloca i8*, align 8
  %EXTENDED_CODE = alloca i32, align 4
  %LOCATION_COUNTER = alloca i32, align 4
  %OPCODE_INFO = alloca %struct.OP_ENTRY*, align 8
  store %struct._IO_FILE* %INPUT_FILE, %struct._IO_FILE** %INPUT_FILE.addr, align 8
  store %struct.SYMBOL_TABLE_ENTRY** %SYM_TABLE, %struct.SYMBOL_TABLE_ENTRY*** %SYM_TABLE.addr, align 8
  store %struct._IO_FILE* %TEMP_OUTPUT_STREAM, %struct._IO_FILE** %TEMP_OUTPUT_STREAM.addr, align 8
  store i32 0, i32* %LOCATION_COUNTER, align 4
  store i8 95, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @MODULE_NAME, i32 0, i64 0), align 1
  store i8 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @MODULE_NAME, i32 0, i64 1), align 1
  %0 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %SYM_TABLE.addr, align 8
  %call = call i32 (i8*, i8*, i32, i32, %struct.SYMBOL_TABLE_ENTRY**, ...) bitcast (i32 (...)* @INSERT_IN_SYM_TAB to i32 (i8*, i8*, i32, i32, %struct.SYMBOL_TABLE_ENTRY**, ...)*)(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @MODULE_NAME, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @MODULE_NAME, i32 0, i32 0), i32 0, i32 0, %struct.SYMBOL_TABLE_ENTRY** %0)
  store i8 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @MAIN_ROUTINE, i32 0, i64 0), align 1
  %arrayidx = getelementptr inbounds [9 x i8], [9 x i8]* %LABEL_NAME, i32 0, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %while.cond

while.cond:                                       ; preds = %if.end.83, %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %INPUT_FILE.addr, align 8
  %call1 = call i32 @feof(%struct._IO_FILE* %1) #5
  %tobool = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %LOCATION_COUNTER, align 4
  %arraydecay = getelementptr inbounds [9 x i8], [9 x i8]* %LABEL_NAME, i32 0, i32 0
  %arraydecay2 = getelementptr inbounds [9 x i8], [9 x i8]* %OPCODE, i32 0, i32 0
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %TEMP_OUTPUT_STREAM.addr, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %INPUT_FILE.addr, align 8
  call void (i32, i8**, i8*, i32*, i8*, i8**, i32, %struct._IO_FILE*, %struct._IO_FILE*, ...) bitcast (void (...)* @SCAN_LINE to void (i32, i8**, i8*, i32*, i8*, i8**, i32, %struct._IO_FILE*, %struct._IO_FILE*, ...)*)(i32 %2, i8** %INPUT_LINE, i8* %arraydecay, i32* %EXTENDED_CODE, i8* %arraydecay2, i8** %ARGUMENTS, i32 0, %struct._IO_FILE* %3, %struct._IO_FILE* %4)
  %arraydecay3 = getelementptr inbounds [9 x i8], [9 x i8]* %LABEL_NAME, i32 0, i32 0
  call void @CAPITALIZE_STRING(i8* %arraydecay3)
  %arraydecay4 = getelementptr inbounds [9 x i8], [9 x i8]* %OPCODE, i32 0, i32 0
  call void @CAPITALIZE_STRING(i8* %arraydecay4)
  %5 = load i8*, i8** %ARGUMENTS, align 8
  call void @CAPITALIZE_STRING(i8* %5)
  %arraydecay5 = getelementptr inbounds [9 x i8], [9 x i8]* %LABEL_NAME, i32 0, i32 0
  %call6 = call i32 @strcmp(i8* %arraydecay5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0)) #4
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %arraydecay8 = getelementptr inbounds [9 x i8], [9 x i8]* %OPCODE, i32 0, i32 0
  %call9 = call i32 @strcmp(i8* %arraydecay8, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0)) #4
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %land.lhs.true, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %lor.lhs.false
  %6 = load i32, i32* %EXTENDED_CODE, align 4
  %tobool12 = icmp ne i32 %6, 0
  br i1 %tobool12, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false.11, %lor.lhs.false, %while.body
  %7 = load i32, i32* @SEEN_END_OP, align 4
  %cmp = icmp eq i32 %7, 1
  br i1 %cmp, label %land.lhs.true.13, label %if.end

land.lhs.true.13:                                 ; preds = %land.lhs.true
  %arraydecay14 = getelementptr inbounds [9 x i8], [9 x i8]* %OPCODE, i32 0, i32 0
  %call15 = call i32 @strcmp(i8* %arraydecay14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0)) #4
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %land.lhs.true.17, label %if.end

land.lhs.true.17:                                 ; preds = %land.lhs.true.13
  %arraydecay18 = getelementptr inbounds [9 x i8], [9 x i8]* %OPCODE, i32 0, i32 0
  %call19 = call i32 @strcmp(i8* %arraydecay18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0)) #4
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.17
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %TEMP_OUTPUT_STREAM.addr, align 8
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i32 0, i32 0))
  store i32 2, i32* @SEEN_END_OP, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.17, %land.lhs.true.13, %land.lhs.true, %lor.lhs.false.11
  %arraydecay22 = getelementptr inbounds [9 x i8], [9 x i8]* %LABEL_NAME, i32 0, i32 0
  %call23 = call i32 @strcmp(i8* %arraydecay22, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0)) #4
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then.25, label %if.end.38

if.then.25:                                       ; preds = %if.end
  %arraydecay26 = getelementptr inbounds [9 x i8], [9 x i8]* %LABEL_NAME, i32 0, i32 0
  %9 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %SYM_TABLE.addr, align 8
  %call27 = call %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...) bitcast (%struct.SYMBOL_TABLE_ENTRY* (...)* @LOOK_UP_SYMBOL to %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...)*)(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @MODULE_NAME, i32 0, i32 0), i8* %arraydecay26, %struct.SYMBOL_TABLE_ENTRY** %9)
  %cmp28 = icmp eq %struct.SYMBOL_TABLE_ENTRY* %call27, null
  br i1 %cmp28, label %if.then.29, label %if.else

if.then.29:                                       ; preds = %if.then.25
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %TEMP_OUTPUT_STREAM.addr, align 8
  call void @CHANGE_LOCATION(i32* %LOCATION_COUNTER, i32 0, %struct._IO_FILE* %10)
  %11 = load i32, i32* @LOCATION_EXCEEDS_MEM_SIZE, align 4
  %tobool30 = icmp ne i32 %11, 0
  br i1 %tobool30, label %if.end.34, label %if.then.31

if.then.31:                                       ; preds = %if.then.29
  %arraydecay32 = getelementptr inbounds [9 x i8], [9 x i8]* %LABEL_NAME, i32 0, i32 0
  %12 = load i32, i32* %LOCATION_COUNTER, align 4
  %13 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %SYM_TABLE.addr, align 8
  %call33 = call i32 (i8*, i8*, i32, i32, %struct.SYMBOL_TABLE_ENTRY**, ...) bitcast (i32 (...)* @INSERT_IN_SYM_TAB to i32 (i8*, i8*, i32, i32, %struct.SYMBOL_TABLE_ENTRY**, ...)*)(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @MODULE_NAME, i32 0, i32 0), i8* %arraydecay32, i32 %12, i32 0, %struct.SYMBOL_TABLE_ENTRY** %13)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.31, %if.then.29
  br label %if.end.37

if.else:                                          ; preds = %if.then.25
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %TEMP_OUTPUT_STREAM.addr, align 8
  %arraydecay35 = getelementptr inbounds [9 x i8], [9 x i8]* %LABEL_NAME, i32 0, i32 0
  %call36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i32 0, i32 0), i8* %arraydecay35)
  br label %if.end.37

if.end.37:                                        ; preds = %if.else, %if.end.34
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.end
  %arraydecay39 = getelementptr inbounds [9 x i8], [9 x i8]* %OPCODE, i32 0, i32 0
  %call40 = call i32 @strcmp(i8* %arraydecay39, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0)) #4
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.then.42, label %if.end.71

if.then.42:                                       ; preds = %if.end.38
  %arraydecay43 = getelementptr inbounds [9 x i8], [9 x i8]* %OPCODE, i32 0, i32 0
  %call44 = call %struct.OP_ENTRY* (i8*, ...) bitcast (%struct.OP_ENTRY* (...)* @LOOK_UP_OP to %struct.OP_ENTRY* (i8*, ...)*)(i8* %arraydecay43)
  store %struct.OP_ENTRY* %call44, %struct.OP_ENTRY** %OPCODE_INFO, align 8
  %FORMAT = getelementptr inbounds %struct.OP_ENTRY, %struct.OP_ENTRY* %call44, i32 0, i32 1
  %15 = load i32, i32* %FORMAT, align 4
  switch i32 %15, label %sw.epilog [
    i32 4, label %sw.bb
    i32 0, label %sw.bb.47
    i32 1, label %sw.bb.53
    i32 2, label %sw.bb.59
    i32 3, label %sw.bb.64
  ]

sw.bb:                                            ; preds = %if.then.42
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %TEMP_OUTPUT_STREAM.addr, align 8
  %arraydecay45 = getelementptr inbounds [9 x i8], [9 x i8]* %OPCODE, i32 0, i32 0
  %call46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i32 0, i32 0), i8* %arraydecay45)
  br label %sw.epilog

sw.bb.47:                                         ; preds = %if.then.42
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %TEMP_OUTPUT_STREAM.addr, align 8
  call void @CHANGE_LOCATION(i32* %LOCATION_COUNTER, i32 1, %struct._IO_FILE* %17)
  %18 = load i32, i32* %EXTENDED_CODE, align 4
  %tobool48 = icmp ne i32 %18, 0
  br i1 %tobool48, label %if.then.49, label %if.end.52

if.then.49:                                       ; preds = %sw.bb.47
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %TEMP_OUTPUT_STREAM.addr, align 8
  %arraydecay50 = getelementptr inbounds [9 x i8], [9 x i8]* %OPCODE, i32 0, i32 0
  %call51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i32 0, i32 0), i8* %arraydecay50)
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.49, %sw.bb.47
  br label %sw.epilog

sw.bb.53:                                         ; preds = %if.then.42
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %TEMP_OUTPUT_STREAM.addr, align 8
  call void @CHANGE_LOCATION(i32* %LOCATION_COUNTER, i32 2, %struct._IO_FILE* %20)
  %21 = load i32, i32* %EXTENDED_CODE, align 4
  %tobool54 = icmp ne i32 %21, 0
  br i1 %tobool54, label %if.then.55, label %if.end.58

if.then.55:                                       ; preds = %sw.bb.53
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %TEMP_OUTPUT_STREAM.addr, align 8
  %arraydecay56 = getelementptr inbounds [9 x i8], [9 x i8]* %OPCODE, i32 0, i32 0
  %call57 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i32 0, i32 0), i8* %arraydecay56)
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.55, %sw.bb.53
  br label %sw.epilog

sw.bb.59:                                         ; preds = %if.then.42
  %23 = load i32, i32* %EXTENDED_CODE, align 4
  %tobool60 = icmp ne i32 %23, 0
  br i1 %tobool60, label %if.then.61, label %if.else.62

if.then.61:                                       ; preds = %sw.bb.59
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %TEMP_OUTPUT_STREAM.addr, align 8
  call void @CHANGE_LOCATION(i32* %LOCATION_COUNTER, i32 4, %struct._IO_FILE* %24)
  br label %if.end.63

if.else.62:                                       ; preds = %sw.bb.59
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %TEMP_OUTPUT_STREAM.addr, align 8
  call void @CHANGE_LOCATION(i32* %LOCATION_COUNTER, i32 3, %struct._IO_FILE* %25)
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.62, %if.then.61
  br label %sw.epilog

sw.bb.64:                                         ; preds = %if.then.42
  %26 = load i32, i32* %EXTENDED_CODE, align 4
  %tobool65 = icmp ne i32 %26, 0
  br i1 %tobool65, label %if.then.66, label %if.end.69

if.then.66:                                       ; preds = %sw.bb.64
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %TEMP_OUTPUT_STREAM.addr, align 8
  %arraydecay67 = getelementptr inbounds [9 x i8], [9 x i8]* %OPCODE, i32 0, i32 0
  %call68 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i32 0, i32 0), i8* %arraydecay67)
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.66, %sw.bb.64
  %28 = load %struct.OP_ENTRY*, %struct.OP_ENTRY** %OPCODE_INFO, align 8
  %FUNCTION = getelementptr inbounds %struct.OP_ENTRY, %struct.OP_ENTRY* %28, i32 0, i32 4
  %29 = load i32, i32* %FUNCTION, align 4
  %arraydecay70 = getelementptr inbounds [9 x i8], [9 x i8]* %LABEL_NAME, i32 0, i32 0
  %30 = load i8*, i8** %ARGUMENTS, align 8
  %31 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %SYM_TABLE.addr, align 8
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %TEMP_OUTPUT_STREAM.addr, align 8
  call void (i32, i8*, i8*, i32*, %struct.SYMBOL_TABLE_ENTRY**, %struct._IO_FILE*, ...) bitcast (void (...)* @DO_PSEUDO to void (i32, i8*, i8*, i32*, %struct.SYMBOL_TABLE_ENTRY**, %struct._IO_FILE*, ...)*)(i32 %29, i8* %arraydecay70, i8* %30, i32* %LOCATION_COUNTER, %struct.SYMBOL_TABLE_ENTRY** %31, %struct._IO_FILE* %32)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.42, %if.end.69, %if.end.63, %if.end.58, %if.end.52, %sw.bb
  br label %if.end.71

if.end.71:                                        ; preds = %sw.epilog, %if.end.38
  %33 = load i32, i32* @SEEN_END_OP, align 4
  %cmp72 = icmp eq i32 %33, 3
  br i1 %cmp72, label %land.lhs.true.73, label %if.end.83

land.lhs.true.73:                                 ; preds = %if.end.71
  %arraydecay74 = getelementptr inbounds [9 x i8], [9 x i8]* %OPCODE, i32 0, i32 0
  %call75 = call i32 @strcmp(i8* %arraydecay74, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0)) #4
  %tobool76 = icmp ne i32 %call75, 0
  br i1 %tobool76, label %if.then.81, label %lor.lhs.false.77

lor.lhs.false.77:                                 ; preds = %land.lhs.true.73
  %arraydecay78 = getelementptr inbounds [9 x i8], [9 x i8]* %LABEL_NAME, i32 0, i32 0
  %call79 = call i32 @strcmp(i8* %arraydecay78, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0)) #4
  %tobool80 = icmp ne i32 %call79, 0
  br i1 %tobool80, label %if.then.81, label %if.end.83

if.then.81:                                       ; preds = %lor.lhs.false.77, %land.lhs.true.73
  store i32 0, i32* @SEEN_END_OP, align 4
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %TEMP_OUTPUT_STREAM.addr, align 8
  %call82 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.81, %lor.lhs.false.77, %if.end.71
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %TEMP_OUTPUT_STREAM.addr, align 8
  call void (%struct.BUFFER_TYPE*, %struct._IO_FILE*, i32, ...) bitcast (void (...)* @OUTPUT_BUFFER to void (%struct.BUFFER_TYPE*, %struct._IO_FILE*, i32, ...)*)(%struct.BUFFER_TYPE* @MOD_REC_BUF, %struct._IO_FILE* %35, i32 1)
  %36 = load i32, i32* @SEEN_END_OP, align 4
  %tobool84 = icmp ne i32 %36, 0
  br i1 %tobool84, label %if.end.87, label %if.then.85

if.then.85:                                       ; preds = %while.end
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %TEMP_OUTPUT_STREAM.addr, align 8
  %call86 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.85, %while.end
  ret void
}

declare i32 @INSERT_IN_SYM_TAB(...) #1

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #3

declare void @SCAN_LINE(...) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

declare %struct.SYMBOL_TABLE_ENTRY* @LOOK_UP_SYMBOL(...) #1

declare %struct.OP_ENTRY* @LOOK_UP_OP(...) #1

declare void @DO_PSEUDO(...) #1

declare void @OUTPUT_BUFFER(...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
