; ModuleID = './MultiSource.Benchmarks.Prolangs-C/153.assembler.pass2.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BUFFER_TYPE = type { %struct.BUFFER*, %struct.BUFFER*, i32 }
%struct.BUFFER = type { i8*, %struct.BUFFER* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.SYMBOL_TABLE_ENTRY = type { [9 x i8], [9 x i8], i32, i32, i32, %struct.SYMBOL_TABLE_ENTRY* }

@MODULE_NAME = external global [9 x i8], align 1
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@ERROR_REC_BUF = external global %struct.BUFFER_TYPE, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%d%c\00", align 1
@MOD_REC_BUF = external global %struct.BUFFER_TYPE, align 8
@MAIN_ROUTINE = external global [9 x i8], align 1
@START_ADDRESS = external global i32, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"E%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"E\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%c%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"ERROR[41]: %s Undefined label in EXTDEF.\0A\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"000000\00", align 1
@.str.10 = private unnamed_addr constant [72 x i8] c"ERROR[42]: %s is wrong type. Expected LABEL, found EXTREF or CONSTANT.\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"H%s\00", align 1
@.str.12 = private unnamed_addr constant [56 x i8] c"TEMP FILE build incorrectly. This should never happen.\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @PASS2(%struct._IO_FILE* %INPUT_STREAM, %struct._IO_FILE* %OBJECT_STREAM, %struct._IO_FILE* %LISTING_STREAM, %struct.SYMBOL_TABLE_ENTRY** %SYM_TAB, i32* %ERROR) #0 {
entry:
  %INPUT_STREAM.addr = alloca %struct._IO_FILE*, align 8
  %OBJECT_STREAM.addr = alloca %struct._IO_FILE*, align 8
  %LISTING_STREAM.addr = alloca %struct._IO_FILE*, align 8
  %SYM_TAB.addr = alloca %struct.SYMBOL_TABLE_ENTRY**, align 8
  %ERROR.addr = alloca i32*, align 8
  %TAG_FIELD = alloca i8, align 1
  %REST_OF_LINE = alloca i8*, align 8
  %TABLE_ENTRY = alloca %struct.SYMBOL_TABLE_ENTRY*, align 8
  %LABEL_NAME = alloca [9 x i8], align 1
  %ERROR_SINCE_LAST_STATEMENT = alloca i32, align 4
  %TEMP_CH = alloca i8, align 1
  %LOCATION = alloca i32, align 4
  %TEMP = alloca [3 x i8], align 1
  %DELTA = alloca i32, align 4
  %ADDR = alloca [7 x i8], align 1
  %TEMP42 = alloca [9 x i8], align 1
  %AT = alloca i32, align 4
  store %struct._IO_FILE* %INPUT_STREAM, %struct._IO_FILE** %INPUT_STREAM.addr, align 8
  store %struct._IO_FILE* %OBJECT_STREAM, %struct._IO_FILE** %OBJECT_STREAM.addr, align 8
  store %struct._IO_FILE* %LISTING_STREAM, %struct._IO_FILE** %LISTING_STREAM.addr, align 8
  store %struct.SYMBOL_TABLE_ENTRY** %SYM_TAB, %struct.SYMBOL_TABLE_ENTRY*** %SYM_TAB.addr, align 8
  store i32* %ERROR, i32** %ERROR.addr, align 8
  store i32 0, i32* %ERROR_SINCE_LAST_STATEMENT, align 4
  store i8 95, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @MODULE_NAME, i32 0, i64 0), align 1
  store i8 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @MODULE_NAME, i32 0, i64 1), align 1
  call void (...) @RESET_MISSING_LABEL_NAME()
  call void (...) @INITIALIZE_TEXT_RECORD()
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %INPUT_STREAM.addr, align 8
  %call = call i32 @feof(%struct._IO_FILE* %0) #4
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %INPUT_STREAM.addr, align 8
  %call1 = call i32 @_IO_getc(%struct._IO_FILE* %1)
  %conv = trunc i32 %call1 to i8
  store i8 %conv, i8* %TAG_FIELD, align 1
  %2 = load i8, i8* %TAG_FIELD, align 1
  %conv2 = sext i8 %2 to i32
  switch i32 %conv2, label %sw.default [
    i32 112, label %sw.bb
    i32 101, label %sw.bb.7
    i32 116, label %sw.bb.9
    i32 69, label %sw.bb.21
    i32 82, label %sw.bb.37
    i32 77, label %sw.bb.40
    i32 100, label %sw.bb.41
    i32 115, label %sw.bb.91
  ]

sw.bb:                                            ; preds = %while.body
  %3 = load i32, i32* %ERROR_SINCE_LAST_STATEMENT, align 4
  %tobool3 = icmp ne i32 %3, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %LISTING_STREAM.addr, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  store i32 0, i32* %ERROR_SINCE_LAST_STATEMENT, align 4
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %INPUT_STREAM.addr, align 8
  %6 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %SYM_TAB.addr, align 8
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %OBJECT_STREAM.addr, align 8
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %LISTING_STREAM.addr, align 8
  call void (%struct._IO_FILE*, %struct.SYMBOL_TABLE_ENTRY**, %struct._IO_FILE*, %struct._IO_FILE*, i32*, ...) bitcast (void (...)* @CODE to void (%struct._IO_FILE*, %struct.SYMBOL_TABLE_ENTRY**, %struct._IO_FILE*, %struct._IO_FILE*, i32*, ...)*)(%struct._IO_FILE* %5, %struct.SYMBOL_TABLE_ENTRY** %6, %struct._IO_FILE* %7, %struct._IO_FILE* %8, i32* %ERROR_SINCE_LAST_STATEMENT)
  %9 = load i32*, i32** %ERROR.addr, align 8
  %10 = load i32, i32* %9, align 4
  %tobool5 = icmp ne i32 %10, 0
  br i1 %tobool5, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end
  %11 = load i32, i32* %ERROR_SINCE_LAST_STATEMENT, align 4
  %tobool6 = icmp ne i32 %11, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end
  %12 = phi i1 [ true, %if.end ], [ %tobool6, %lor.rhs ]
  %lor.ext = zext i1 %12 to i32
  %13 = load i32*, i32** %ERROR.addr, align 8
  store i32 %lor.ext, i32* %13, align 4
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %LISTING_STREAM.addr, align 8
  call void (%struct.BUFFER_TYPE*, %struct._IO_FILE*, i32, ...) bitcast (void (...)* @OUTPUT_BUFFER to void (%struct.BUFFER_TYPE*, %struct._IO_FILE*, i32, ...)*)(%struct.BUFFER_TYPE* @ERROR_REC_BUF, %struct._IO_FILE* %14, i32 2)
  br label %sw.epilog

sw.bb.7:                                          ; preds = %while.body
  store i32 1, i32* %ERROR_SINCE_LAST_STATEMENT, align 4
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %INPUT_STREAM.addr, align 8
  call void (i8**, %struct._IO_FILE*, ...) bitcast (void (...)* @GET_LINE to void (i8**, %struct._IO_FILE*, ...)*)(i8** %REST_OF_LINE, %struct._IO_FILE* %15)
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %LISTING_STREAM.addr, align 8
  %17 = load i8*, i8** %REST_OF_LINE, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* %17)
  %18 = load i32*, i32** %ERROR.addr, align 8
  store i32 1, i32* %18, align 4
  br label %sw.epilog

sw.bb.9:                                          ; preds = %while.body
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %INPUT_STREAM.addr, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32* %LOCATION, i8* %TEMP_CH)
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %INPUT_STREAM.addr, align 8
  call void (i8**, %struct._IO_FILE*, ...) bitcast (void (...)* @GET_LINE to void (i8**, %struct._IO_FILE*, ...)*)(i8** %REST_OF_LINE, %struct._IO_FILE* %20)
  %21 = load i8, i8* %TEMP_CH, align 1
  %conv11 = sext i8 %21 to i32
  %cmp = icmp eq i32 %conv11, 87
  br i1 %cmp, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %sw.bb.9
  %22 = load i8*, i8** %REST_OF_LINE, align 8
  %23 = load i32, i32* %LOCATION, align 4
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %OBJECT_STREAM.addr, align 8
  call void (i8*, i32, %struct._IO_FILE*, ...) bitcast (void (...)* @ADD_TO_TEXT_RECORD to void (i8*, i32, %struct._IO_FILE*, ...)*)(i8* %22, i32 %23, %struct._IO_FILE* %24)
  br label %if.end.20

if.else:                                          ; preds = %sw.bb.9
  store i32 0, i32* %DELTA, align 4
  %arrayidx = getelementptr inbounds [3 x i8], [3 x i8]* %TEMP, i32 0, i64 2
  store i8 0, i8* %arrayidx, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %25 = load i8*, i8** %REST_OF_LINE, align 8
  %26 = load i8, i8* %25, align 1
  %conv14 = sext i8 %26 to i32
  %call15 = call i32 (i32, ...) bitcast (i32 (...)* @eoln to i32 (i32, ...)*)(i32 %conv14)
  %tobool16 = icmp ne i32 %call15, 0
  %lnot17 = xor i1 %tobool16, true
  br i1 %lnot17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %TEMP, i32 0, i32 0
  %27 = load i8*, i8** %REST_OF_LINE, align 8
  %call18 = call i8* @strncpy(i8* %arraydecay, i8* %27, i64 2) #4
  %arraydecay19 = getelementptr inbounds [3 x i8], [3 x i8]* %TEMP, i32 0, i32 0
  %28 = load i32, i32* %LOCATION, align 4
  %29 = load i32, i32* %DELTA, align 4
  %add = add nsw i32 %28, %29
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %OBJECT_STREAM.addr, align 8
  call void (i8*, i32, %struct._IO_FILE*, ...) bitcast (void (...)* @ADD_TO_TEXT_RECORD to void (i8*, i32, %struct._IO_FILE*, ...)*)(i8* %arraydecay19, i32 %add, %struct._IO_FILE* %30)
  %31 = load i32, i32* %DELTA, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %DELTA, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %32 = load i8*, i8** %REST_OF_LINE, align 8
  %add.ptr = getelementptr inbounds i8, i8* %32, i64 2
  store i8* %add.ptr, i8** %REST_OF_LINE, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.20

if.end.20:                                        ; preds = %for.end, %if.then.13
  br label %sw.epilog

sw.bb.21:                                         ; preds = %while.body
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %OBJECT_STREAM.addr, align 8
  call void (%struct._IO_FILE*, ...) bitcast (void (...)* @PRT_TEXT_RECORD to void (%struct._IO_FILE*, ...)*)(%struct._IO_FILE* %33)
  call void (...) @INITIALIZE_TEXT_RECORD()
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %OBJECT_STREAM.addr, align 8
  call void (%struct.BUFFER_TYPE*, %struct._IO_FILE*, i32, ...) bitcast (void (...)* @OUTPUT_BUFFER to void (%struct.BUFFER_TYPE*, %struct._IO_FILE*, i32, ...)*)(%struct.BUFFER_TYPE* @MOD_REC_BUF, %struct._IO_FILE* %34, i32 2)
  %call22 = call i32 @strcmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @MAIN_ROUTINE, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @MODULE_NAME, i32 0, i32 0)) #5
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.else.34, label %if.then.24

if.then.24:                                       ; preds = %sw.bb.21
  %35 = load i32, i32* @START_ADDRESS, align 4
  %cmp25 = icmp eq i32 %35, -1
  br i1 %cmp25, label %if.then.27, label %if.end.30

if.then.27:                                       ; preds = %if.then.24
  %36 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %SYM_TAB.addr, align 8
  %call28 = call %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...) bitcast (%struct.SYMBOL_TABLE_ENTRY* (...)* @LOOK_UP_SYMBOL to %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...)*)(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @MODULE_NAME, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @MODULE_NAME, i32 0, i32 0), %struct.SYMBOL_TABLE_ENTRY** %36)
  %LOCATION29 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %call28, i32 0, i32 2
  %37 = load i32, i32* %LOCATION29, align 4
  store i32 %37, i32* @START_ADDRESS, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.27, %if.then.24
  %38 = load i32, i32* @START_ADDRESS, align 4
  %arraydecay31 = getelementptr inbounds [7 x i8], [7 x i8]* %ADDR, i32 0, i32 0
  call void (i32, i32, i32, i8*, ...) bitcast (void (...)* @NUM_TO_STR to void (i32, i32, i32, i8*, ...)*)(i32 %38, i32 16, i32 6, i8* %arraydecay31)
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %OBJECT_STREAM.addr, align 8
  %arraydecay32 = getelementptr inbounds [7 x i8], [7 x i8]* %ADDR, i32 0, i32 0
  %call33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* %arraydecay32)
  br label %if.end.36

if.else.34:                                       ; preds = %sw.bb.21
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %OBJECT_STREAM.addr, align 8
  %call35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.34, %if.end.30
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %INPUT_STREAM.addr, align 8
  call void (i8**, %struct._IO_FILE*, ...) bitcast (void (...)* @GET_LINE to void (i8**, %struct._IO_FILE*, ...)*)(i8** %REST_OF_LINE, %struct._IO_FILE* %41)
  br label %sw.epilog

sw.bb.37:                                         ; preds = %while.body
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %INPUT_STREAM.addr, align 8
  call void (i8**, %struct._IO_FILE*, ...) bitcast (void (...)* @GET_LINE to void (i8**, %struct._IO_FILE*, ...)*)(i8** %REST_OF_LINE, %struct._IO_FILE* %42)
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %OBJECT_STREAM.addr, align 8
  %44 = load i8, i8* %TAG_FIELD, align 1
  %conv38 = sext i8 %44 to i32
  %45 = load i8*, i8** %REST_OF_LINE, align 8
  %call39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i32 %conv38, i8* %45)
  br label %sw.epilog

sw.bb.40:                                         ; preds = %while.body
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %INPUT_STREAM.addr, align 8
  call void (i8**, %struct._IO_FILE*, ...) bitcast (void (...)* @GET_LINE to void (i8**, %struct._IO_FILE*, ...)*)(i8** %REST_OF_LINE, %struct._IO_FILE* %46)
  %47 = load i8*, i8** %REST_OF_LINE, align 8
  call void (%struct.BUFFER_TYPE*, i8*, ...) bitcast (void (...)* @ADD_TO_END_OF_BUFFER to void (%struct.BUFFER_TYPE*, i8*, ...)*)(%struct.BUFFER_TYPE* @MOD_REC_BUF, i8* %47)
  br label %sw.epilog

sw.bb.41:                                         ; preds = %while.body
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %INPUT_STREAM.addr, align 8
  call void (i8**, %struct._IO_FILE*, ...) bitcast (void (...)* @GET_LINE to void (i8**, %struct._IO_FILE*, ...)*)(i8** %REST_OF_LINE, %struct._IO_FILE* %48)
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %OBJECT_STREAM.addr, align 8
  %call43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  %arrayidx44 = getelementptr inbounds [9 x i8], [9 x i8]* %TEMP42, i32 0, i64 8
  store i8 0, i8* %arrayidx44, align 1
  br label %for.cond.45

for.cond.45:                                      ; preds = %for.inc.87, %sw.bb.41
  %50 = load i8*, i8** %REST_OF_LINE, align 8
  %51 = load i8, i8* %50, align 1
  %conv46 = sext i8 %51 to i32
  %call47 = call i32 (i32, ...) bitcast (i32 (...)* @eoln to i32 (i32, ...)*)(i32 %conv46)
  %tobool48 = icmp ne i32 %call47, 0
  %lnot49 = xor i1 %tobool48, true
  br i1 %lnot49, label %for.body.50, label %for.end.89

for.body.50:                                      ; preds = %for.cond.45
  %arraydecay51 = getelementptr inbounds [9 x i8], [9 x i8]* %TEMP42, i32 0, i32 0
  %52 = load i8*, i8** %REST_OF_LINE, align 8
  %call52 = call i8* @strncpy(i8* %arraydecay51, i8* %52, i64 8) #4
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %OBJECT_STREAM.addr, align 8
  %arraydecay53 = getelementptr inbounds [9 x i8], [9 x i8]* %TEMP42, i32 0, i32 0
  %call54 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i8* %arraydecay53)
  store i32 7, i32* %AT, align 4
  br label %for.cond.55

for.cond.55:                                      ; preds = %for.inc.63, %for.body.50
  %54 = load i32, i32* %AT, align 4
  %cmp56 = icmp sgt i32 %54, 0
  br i1 %cmp56, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.55
  %55 = load i32, i32* %AT, align 4
  %idxprom = sext i32 %55 to i64
  %arrayidx58 = getelementptr inbounds [9 x i8], [9 x i8]* %TEMP42, i32 0, i64 %idxprom
  %56 = load i8, i8* %arrayidx58, align 1
  %conv59 = sext i8 %56 to i32
  %cmp60 = icmp eq i32 %conv59, 32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.55
  %57 = phi i1 [ false, %for.cond.55 ], [ %cmp60, %land.rhs ]
  br i1 %57, label %for.body.62, label %for.end.64

for.body.62:                                      ; preds = %land.end
  br label %for.inc.63

for.inc.63:                                       ; preds = %for.body.62
  %58 = load i32, i32* %AT, align 4
  %dec = add nsw i32 %58, -1
  store i32 %dec, i32* %AT, align 4
  br label %for.cond.55

for.end.64:                                       ; preds = %land.end
  %59 = load i32, i32* %AT, align 4
  %add65 = add nsw i32 %59, 1
  %idxprom66 = sext i32 %add65 to i64
  %arrayidx67 = getelementptr inbounds [9 x i8], [9 x i8]* %TEMP42, i32 0, i64 %idxprom66
  store i8 0, i8* %arrayidx67, align 1
  %arraydecay68 = getelementptr inbounds [9 x i8], [9 x i8]* %TEMP42, i32 0, i32 0
  %60 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %SYM_TAB.addr, align 8
  %call69 = call %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...) bitcast (%struct.SYMBOL_TABLE_ENTRY* (...)* @LOOK_UP_SYMBOL to %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...)*)(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @MODULE_NAME, i32 0, i32 0), i8* %arraydecay68, %struct.SYMBOL_TABLE_ENTRY** %60)
  store %struct.SYMBOL_TABLE_ENTRY* %call69, %struct.SYMBOL_TABLE_ENTRY** %TABLE_ENTRY, align 8
  %61 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %TABLE_ENTRY, align 8
  %cmp70 = icmp eq %struct.SYMBOL_TABLE_ENTRY* %61, null
  br i1 %cmp70, label %if.then.72, label %if.else.76

if.then.72:                                       ; preds = %for.end.64
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** %LISTING_STREAM.addr, align 8
  %arraydecay73 = getelementptr inbounds [9 x i8], [9 x i8]* %TEMP42, i32 0, i32 0
  %call74 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %62, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i32 0, i32 0), i8* %arraydecay73)
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** %OBJECT_STREAM.addr, align 8
  %call75 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %63, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0))
  %64 = load i32*, i32** %ERROR.addr, align 8
  store i32 1, i32* %64, align 4
  br label %if.end.86

if.else.76:                                       ; preds = %for.end.64
  %65 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %TABLE_ENTRY, align 8
  %TYPE = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %65, i32 0, i32 4
  %66 = load i32, i32* %TYPE, align 4
  %cmp77 = icmp ne i32 %66, 0
  br i1 %cmp77, label %if.then.79, label %if.else.83

if.then.79:                                       ; preds = %if.else.76
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %LISTING_STREAM.addr, align 8
  %arraydecay80 = getelementptr inbounds [9 x i8], [9 x i8]* %TEMP42, i32 0, i32 0
  %call81 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %67, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.10, i32 0, i32 0), i8* %arraydecay80)
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** %OBJECT_STREAM.addr, align 8
  %call82 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %68, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0))
  %69 = load i32*, i32** %ERROR.addr, align 8
  store i32 1, i32* %69, align 4
  br label %if.end.85

if.else.83:                                       ; preds = %if.else.76
  %70 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %TABLE_ENTRY, align 8
  %LOCATION84 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %70, i32 0, i32 2
  %71 = load i32, i32* %LOCATION84, align 4
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** %OBJECT_STREAM.addr, align 8
  call void (i32, i32, i32, %struct._IO_FILE*, ...) bitcast (void (...)* @PRT_NUM to void (i32, i32, i32, %struct._IO_FILE*, ...)*)(i32 %71, i32 16, i32 6, %struct._IO_FILE* %72)
  br label %if.end.85

if.end.85:                                        ; preds = %if.else.83, %if.then.79
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %if.then.72
  br label %for.inc.87

for.inc.87:                                       ; preds = %if.end.86
  %73 = load i8*, i8** %REST_OF_LINE, align 8
  %add.ptr88 = getelementptr inbounds i8, i8* %73, i64 8
  store i8* %add.ptr88, i8** %REST_OF_LINE, align 8
  br label %for.cond.45

for.end.89:                                       ; preds = %for.cond.45
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** %OBJECT_STREAM.addr, align 8
  %call90 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %74, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  br label %sw.epilog

sw.bb.91:                                         ; preds = %while.body
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** %INPUT_STREAM.addr, align 8
  call void (i8**, %struct._IO_FILE*, ...) bitcast (void (...)* @GET_LINE to void (i8**, %struct._IO_FILE*, ...)*)(i8** %REST_OF_LINE, %struct._IO_FILE* %75)
  %arraydecay92 = getelementptr inbounds [9 x i8], [9 x i8]* %LABEL_NAME, i32 0, i32 0
  call void (i8*, ...) bitcast (void (...)* @BLANK_STR to void (i8*, ...)*)(i8* %arraydecay92)
  %arraydecay93 = getelementptr inbounds [9 x i8], [9 x i8]* %LABEL_NAME, i32 0, i32 0
  %76 = load i8*, i8** %REST_OF_LINE, align 8
  %77 = load i8*, i8** %REST_OF_LINE, align 8
  %call94 = call i64 @strlen(i8* %77) #5
  %call95 = call i8* @strncpy(i8* %arraydecay93, i8* %76, i64 %call94) #4
  %78 = load i8*, i8** %REST_OF_LINE, align 8
  %call96 = call i8* @strcpy(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @MODULE_NAME, i32 0, i32 0), i8* %78) #4
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** %OBJECT_STREAM.addr, align 8
  %arraydecay97 = getelementptr inbounds [9 x i8], [9 x i8]* %LABEL_NAME, i32 0, i32 0
  %call98 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %79, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i8* %arraydecay97)
  %80 = load i8*, i8** %REST_OF_LINE, align 8
  %81 = load i8*, i8** %REST_OF_LINE, align 8
  %82 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %SYM_TAB.addr, align 8
  %call99 = call %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...) bitcast (%struct.SYMBOL_TABLE_ENTRY* (...)* @LOOK_UP_SYMBOL to %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...)*)(i8* %80, i8* %81, %struct.SYMBOL_TABLE_ENTRY** %82)
  store %struct.SYMBOL_TABLE_ENTRY* %call99, %struct.SYMBOL_TABLE_ENTRY** %TABLE_ENTRY, align 8
  %83 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %TABLE_ENTRY, align 8
  %LOCATION100 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %83, i32 0, i32 2
  %84 = load i32, i32* %LOCATION100, align 4
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** %OBJECT_STREAM.addr, align 8
  call void (i32, i32, i32, %struct._IO_FILE*, ...) bitcast (void (...)* @PRT_NUM to void (i32, i32, i32, %struct._IO_FILE*, ...)*)(i32 %84, i32 16, i32 6, %struct._IO_FILE* %85)
  %86 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %TABLE_ENTRY, align 8
  %LENGTH = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %86, i32 0, i32 3
  %87 = load i32, i32* %LENGTH, align 4
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** %OBJECT_STREAM.addr, align 8
  call void (i32, i32, i32, %struct._IO_FILE*, ...) bitcast (void (...)* @PRT_NUM to void (i32, i32, i32, %struct._IO_FILE*, ...)*)(i32 %87, i32 16, i32 6, %struct._IO_FILE* %88)
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** %OBJECT_STREAM.addr, align 8
  %call101 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %89, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** %INPUT_STREAM.addr, align 8
  %call102 = call i32 @feof(%struct._IO_FILE* %90) #4
  %tobool103 = icmp ne i32 %call102, 0
  br i1 %tobool103, label %if.end.108, label %if.then.104

if.then.104:                                      ; preds = %sw.default
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** %INPUT_STREAM.addr, align 8
  call void (i8**, %struct._IO_FILE*, ...) bitcast (void (...)* @GET_LINE to void (i8**, %struct._IO_FILE*, ...)*)(i8** %REST_OF_LINE, %struct._IO_FILE* %91)
  %call105 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.12, i32 0, i32 0))
  %92 = load i8, i8* %TAG_FIELD, align 1
  %conv106 = sext i8 %92 to i32
  %93 = load i8*, i8** %REST_OF_LINE, align 8
  %call107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i32 %conv106, i8* %93)
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.104, %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.108, %sw.bb.91, %for.end.89, %sw.bb.40, %sw.bb.37, %if.end.36, %if.end.20, %sw.bb.7, %lor.end
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** %OBJECT_STREAM.addr, align 8
  call void (%struct._IO_FILE*, ...) bitcast (void (...)* @PRT_TEXT_RECORD to void (%struct._IO_FILE*, ...)*)(%struct._IO_FILE* %94)
  ret void
}

declare void @RESET_MISSING_LABEL_NAME(...) #1

declare void @INITIALIZE_TEXT_RECORD(...) #1

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #2

declare i32 @_IO_getc(%struct._IO_FILE*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare void @CODE(...) #1

declare void @OUTPUT_BUFFER(...) #1

declare void @GET_LINE(...) #1

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #1

declare void @ADD_TO_TEXT_RECORD(...) #1

declare i32 @eoln(...) #1

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #2

declare void @PRT_TEXT_RECORD(...) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

declare %struct.SYMBOL_TABLE_ENTRY* @LOOK_UP_SYMBOL(...) #1

declare void @NUM_TO_STR(...) #1

declare void @ADD_TO_END_OF_BUFFER(...) #1

declare void @PRT_NUM(...) #1

declare void @BLANK_STR(...) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
