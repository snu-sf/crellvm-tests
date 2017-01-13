; ModuleID = './MultiSource.Benchmarks.Prolangs-C/145.assembler.pseudo.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BUFFER_TYPE = type { %struct.BUFFER*, %struct.BUFFER*, i32 }
%struct.BUFFER = type { i8*, %struct.BUFFER* }
%struct.SYMBOL_TABLE_ENTRY = type { [9 x i8], [9 x i8], i32, i32, i32, %struct.SYMBOL_TABLE_ENTRY* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [50 x i8] c"eERROR[18]: Null hexidecimal/character constant.\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"eERROR[20]: Illegal hexidecimal.\0A\00", align 1
@.str.2 = private unnamed_addr constant [74 x i8] c"eERROR[21]: Illegal hexidecimal/character constant. Missing close quote.\0A\00", align 1
@.str.3 = private unnamed_addr constant [67 x i8] c"eERROR[22]: Hexidecimal number is not divisible into whole bytes.\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"t%dB%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"t%dB\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.7 = private unnamed_addr constant [61 x i8] c"eERROR[13]: Expected a <space> after the operand, found %c.\0A\00", align 1
@.str.8 = private unnamed_addr constant [57 x i8] c"eERROR[19]: Expected hexidecimal or character constant.\0A\00", align 1
@SEEN_END_OP = external global i32, align 4
@.str.9 = private unnamed_addr constant [38 x i8] c"eERROR[27]: Section %s has no 'end'.\0A\00", align 1
@MODULE_NAME = external global [9 x i8], align 1
@MOD_REC_BUF = external global %struct.BUFFER_TYPE, align 8
@LOCATION_EXCEEDS_MEM_SIZE = external global i32, align 4
@.str.10 = private unnamed_addr constant [3 x i8] c"E\0A\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"eERROR[26]: CSECT requires a label.\0A\00", align 1
@.str.13 = private unnamed_addr constant [43 x i8] c"eERROR[55]: Multiply defined module name.\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"s%s\0A\00", align 1
@ERROR_REC_BUF = external global %struct.BUFFER_TYPE, align 8
@MAIN_ROUTINE = external global [9 x i8], align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"eERROR[28]: Label %s not defined.\0A\00", align 1
@.str.16 = private unnamed_addr constant [48 x i8] c"eERROR[28]: Expected label, found constant %s.\0A\00", align 1
@START_ADDRESS = external global i32, align 4
@.str.17 = private unnamed_addr constant [55 x i8] c"eERROR[54]: Multiple starting addresses. Using first.\0A\00", align 1
@.str.18 = private unnamed_addr constant [42 x i8] c"eERROR[31]: Expected a Symbol, found %s.\0A\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@.str.20 = private unnamed_addr constant [35 x i8] c"eERROR[23]: EQU requires a label.\0A\00", align 1
@.str.21 = private unnamed_addr constant [40 x i8] c"eERROR[40]: EXTDEF requires arguments.\0A\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.23 = private unnamed_addr constant [64 x i8] c"eERROR[39]: Invalid list of symbols. Expected symbol found %s.\0A\00", align 1
@.str.24 = private unnamed_addr constant [40 x i8] c"eERROR[37]: EXTREF requires arguments.\0A\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.26 = private unnamed_addr constant [36 x i8] c"eERROR[38]: %s is already defined.\0A\00", align 1
@SEEN_START_OP = external global i32, align 4
@.str.27 = private unnamed_addr constant [43 x i8] c"eERROR[32]: Multiple STARTs in this file.\0A\00", align 1
@.str.28 = private unnamed_addr constant [37 x i8] c"eERROR[33]: START requires a label.\0A\00", align 1
@.str.29 = private unnamed_addr constant [40 x i8] c"eERROR[34]: Negative starting address.\0A\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"t%dW\00", align 1

; Function Attrs: nounwind uwtable
define void @PSEUDO_BYTE(i8* %LABEL_NAME, i8* %ARGUMENTS, i32* %LOCATION, %struct.SYMBOL_TABLE_ENTRY** %SYM_TAB, %struct._IO_FILE* %OUTPUT_STREAM) #0 {
entry:
  %LABEL_NAME.addr = alloca i8*, align 8
  %ARGUMENTS.addr = alloca i8*, align 8
  %LOCATION.addr = alloca i32*, align 8
  %SYM_TAB.addr = alloca %struct.SYMBOL_TABLE_ENTRY**, align 8
  %OUTPUT_STREAM.addr = alloca %struct._IO_FILE*, align 8
  %START = alloca i8*, align 8
  %START_LOC = alloca i32, align 4
  %IS_HEX_Q = alloca i32, align 4
  %ERROR = alloca i32, align 4
  %SIZE = alloca i32, align 4
  %TEMP = alloca i8, align 1
  %LOOP = alloca i8*, align 8
  store i8* %LABEL_NAME, i8** %LABEL_NAME.addr, align 8
  store i8* %ARGUMENTS, i8** %ARGUMENTS.addr, align 8
  store i32* %LOCATION, i32** %LOCATION.addr, align 8
  store %struct.SYMBOL_TABLE_ENTRY** %SYM_TAB, %struct.SYMBOL_TABLE_ENTRY*** %SYM_TAB.addr, align 8
  store %struct._IO_FILE* %OUTPUT_STREAM, %struct._IO_FILE** %OUTPUT_STREAM.addr, align 8
  %0 = load i8*, i8** %ARGUMENTS.addr, align 8
  store i8* %0, i8** %START, align 8
  %1 = load i32*, i32** %LOCATION.addr, align 8
  %2 = load i32, i32* %1, align 4
  store i32 %2, i32* %START_LOC, align 4
  %3 = load i8*, i8** %ARGUMENTS.addr, align 8
  %4 = load i8, i8* %3, align 1
  %conv = sext i8 %4 to i32
  %cmp = icmp eq i32 %conv, 88
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %5 = load i8*, i8** %ARGUMENTS.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 1
  store i8 39, i8* %add.ptr, align 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %6 = phi i1 [ false, %entry ], [ true, %land.rhs ]
  %land.ext = zext i1 %6 to i32
  store i32 %land.ext, i32* %IS_HEX_Q, align 4
  br i1 %6, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.end
  %7 = load i8*, i8** %ARGUMENTS.addr, align 8
  %8 = load i8, i8* %7, align 1
  %conv2 = sext i8 %8 to i32
  %cmp3 = icmp eq i32 %conv2, 67
  br i1 %cmp3, label %land.lhs.true, label %if.else.85

land.lhs.true:                                    ; preds = %lor.lhs.false
  %9 = load i8*, i8** %ARGUMENTS.addr, align 8
  %add.ptr5 = getelementptr inbounds i8, i8* %9, i64 1
  store i8 39, i8* %add.ptr5, align 1
  br i1 true, label %if.then, label %if.else.85

if.then:                                          ; preds = %land.lhs.true, %land.end
  store i32 0, i32* %ERROR, align 4
  %10 = load i8*, i8** %ARGUMENTS.addr, align 8
  %add.ptr6 = getelementptr inbounds i8, i8* %10, i64 2
  store i8* %add.ptr6, i8** %ARGUMENTS.addr, align 8
  %11 = load i8*, i8** %ARGUMENTS.addr, align 8
  %12 = load i8, i8* %11, align 1
  %conv7 = sext i8 %12 to i32
  %cmp8 = icmp eq i32 %conv7, 39
  br i1 %cmp8, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.then
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT_STREAM.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i32 0, i32 0))
  br label %if.end.84

if.else:                                          ; preds = %if.then
  store i32 0, i32* %SIZE, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.28, %if.else
  %14 = load i8*, i8** %ARGUMENTS.addr, align 8
  %15 = load i8, i8* %14, align 1
  %conv11 = sext i8 %15 to i32
  %call12 = call i32 (i32, ...) bitcast (i32 (...)* @eoln to i32 (i32, ...)*)(i32 %conv11)
  %tobool = icmp ne i32 %call12, 0
  br i1 %tobool, label %land.end.17, label %land.rhs.13

land.rhs.13:                                      ; preds = %while.cond
  %16 = load i8*, i8** %ARGUMENTS.addr, align 8
  %17 = load i8, i8* %16, align 1
  %conv14 = sext i8 %17 to i32
  %cmp15 = icmp ne i32 %conv14, 39
  br label %land.end.17

land.end.17:                                      ; preds = %land.rhs.13, %while.cond
  %18 = phi i1 [ false, %while.cond ], [ %cmp15, %land.rhs.13 ]
  br i1 %18, label %while.body, label %while.end

while.body:                                       ; preds = %land.end.17
  %19 = load i32, i32* %IS_HEX_Q, align 4
  %tobool19 = icmp ne i32 %19, 0
  br i1 %tobool19, label %if.then.20, label %if.end

if.then.20:                                       ; preds = %while.body
  %20 = load i32, i32* %ERROR, align 4
  %tobool21 = icmp ne i32 %20, 0
  br i1 %tobool21, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then.20
  %21 = load i8*, i8** %ARGUMENTS.addr, align 8
  %22 = load i8, i8* %21, align 1
  %conv22 = sext i8 %22 to i32
  %call23 = call i32 (i32, i32, ...) bitcast (i32 (...)* @CHAR_TO_DIGIT to i32 (i32, i32, ...)*)(i32 %conv22, i32 16)
  %cmp24 = icmp eq i32 %call23, -1
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then.20
  %23 = phi i1 [ true, %if.then.20 ], [ %cmp24, %lor.rhs ]
  %lor.ext = zext i1 %23 to i32
  store i32 %lor.ext, i32* %ERROR, align 4
  br label %if.end

if.end:                                           ; preds = %lor.end, %while.body
  %24 = load i8*, i8** %ARGUMENTS.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr, i8** %ARGUMENTS.addr, align 8
  %25 = load i32, i32* %ERROR, align 4
  %tobool26 = icmp ne i32 %25, 0
  br i1 %tobool26, label %if.end.28, label %if.then.27

if.then.27:                                       ; preds = %if.end
  %26 = load i32, i32* %SIZE, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %SIZE, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %if.end
  br label %while.cond

while.end:                                        ; preds = %land.end.17
  %27 = load i32, i32* %ERROR, align 4
  %tobool29 = icmp ne i32 %27, 0
  br i1 %tobool29, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %while.end
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT_STREAM.addr, align 8
  %call31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.30, %while.end
  %29 = load i8*, i8** %ARGUMENTS.addr, align 8
  %30 = load i8, i8* %29, align 1
  %conv33 = sext i8 %30 to i32
  %cmp34 = icmp eq i32 %conv33, 39
  br i1 %cmp34, label %if.then.36, label %if.else.38

if.then.36:                                       ; preds = %if.end.32
  %31 = load i8*, i8** %ARGUMENTS.addr, align 8
  %incdec.ptr37 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr37, i8** %ARGUMENTS.addr, align 8
  br label %if.end.40

if.else.38:                                       ; preds = %if.end.32
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT_STREAM.addr, align 8
  %call39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i32 0, i32 0))
  store i32 1, i32* %ERROR, align 4
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.38, %if.then.36
  %33 = load i32, i32* %IS_HEX_Q, align 4
  %tobool41 = icmp ne i32 %33, 0
  br i1 %tobool41, label %land.lhs.true.42, label %if.end.47

land.lhs.true.42:                                 ; preds = %if.end.40
  %34 = load i32, i32* %SIZE, align 4
  %div = sdiv i32 %34, 2
  %mul = mul nsw i32 %div, 2
  %35 = load i32, i32* %SIZE, align 4
  %cmp43 = icmp ne i32 %mul, %35
  br i1 %cmp43, label %if.then.45, label %if.end.47

if.then.45:                                       ; preds = %land.lhs.true.42
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT_STREAM.addr, align 8
  %call46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i32 0, i32 0))
  store i32 1, i32* %ERROR, align 4
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.45, %land.lhs.true.42, %if.end.40
  %37 = load i32, i32* %ERROR, align 4
  %tobool48 = icmp ne i32 %37, 0
  br i1 %tobool48, label %if.end.72, label %if.then.49

if.then.49:                                       ; preds = %if.end.47
  %38 = load i32, i32* %IS_HEX_Q, align 4
  %tobool50 = icmp ne i32 %38, 0
  br i1 %tobool50, label %if.then.51, label %if.else.53

if.then.51:                                       ; preds = %if.then.49
  %39 = load i32*, i32** %LOCATION.addr, align 8
  %40 = load i32, i32* %SIZE, align 4
  %div52 = sdiv i32 %40, 2
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT_STREAM.addr, align 8
  call void (i32*, i32, %struct._IO_FILE*, ...) bitcast (void (...)* @CHANGE_LOCATION to void (i32*, i32, %struct._IO_FILE*, ...)*)(i32* %39, i32 %div52, %struct._IO_FILE* %41)
  br label %if.end.54

if.else.53:                                       ; preds = %if.then.49
  %42 = load i32*, i32** %LOCATION.addr, align 8
  %43 = load i32, i32* %SIZE, align 4
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT_STREAM.addr, align 8
  call void (i32*, i32, %struct._IO_FILE*, ...) bitcast (void (...)* @CHANGE_LOCATION to void (i32*, i32, %struct._IO_FILE*, ...)*)(i32* %42, i32 %43, %struct._IO_FILE* %44)
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.53, %if.then.51
  %45 = load i32, i32* %IS_HEX_Q, align 4
  %tobool55 = icmp ne i32 %45, 0
  br i1 %tobool55, label %if.then.56, label %if.else.62

if.then.56:                                       ; preds = %if.end.54
  %46 = load i8*, i8** %ARGUMENTS.addr, align 8
  %add.ptr57 = getelementptr inbounds i8, i8* %46, i64 -1
  %47 = load i8, i8* %add.ptr57, align 1
  store i8 %47, i8* %TEMP, align 1
  %48 = load i8*, i8** %ARGUMENTS.addr, align 8
  %add.ptr58 = getelementptr inbounds i8, i8* %48, i64 -1
  store i8 0, i8* %add.ptr58, align 1
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT_STREAM.addr, align 8
  %50 = load i32, i32* %START_LOC, align 4
  %51 = load i8*, i8** %START, align 8
  %add.ptr59 = getelementptr inbounds i8, i8* %51, i64 2
  %call60 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 %50, i8* %add.ptr59)
  %52 = load i8, i8* %TEMP, align 1
  %53 = load i8*, i8** %ARGUMENTS.addr, align 8
  %add.ptr61 = getelementptr inbounds i8, i8* %53, i64 -1
  store i8 %52, i8* %add.ptr61, align 1
  br label %if.end.71

if.else.62:                                       ; preds = %if.end.54
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT_STREAM.addr, align 8
  %55 = load i32, i32* %START_LOC, align 4
  %call63 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 %55)
  %56 = load i8*, i8** %START, align 8
  %add.ptr64 = getelementptr inbounds i8, i8* %56, i64 2
  store i8* %add.ptr64, i8** %LOOP, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.62
  %57 = load i8*, i8** %LOOP, align 8
  %58 = load i8*, i8** %ARGUMENTS.addr, align 8
  %add.ptr65 = getelementptr inbounds i8, i8* %58, i64 -2
  %cmp66 = icmp ule i8* %57, %add.ptr65
  br i1 %cmp66, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %59 = load i8*, i8** %LOOP, align 8
  %60 = load i8, i8* %59, align 1
  %conv68 = sext i8 %60 to i32
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT_STREAM.addr, align 8
  call void (i32, i32, i32, %struct._IO_FILE*, ...) bitcast (void (...)* @PRT_NUM to void (i32, i32, i32, %struct._IO_FILE*, ...)*)(i32 %conv68, i32 16, i32 2, %struct._IO_FILE* %61)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %62 = load i8*, i8** %LOOP, align 8
  %incdec.ptr69 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %incdec.ptr69, i8** %LOOP, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT_STREAM.addr, align 8
  %call70 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.71

if.end.71:                                        ; preds = %for.end, %if.then.56
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %if.end.47
  %64 = load i8*, i8** %ARGUMENTS.addr, align 8
  %65 = load i8, i8* %64, align 1
  %conv73 = sext i8 %65 to i32
  %call74 = call i32 (i32, ...) bitcast (i32 (...)* @IS_BLANK_OR_TAB to i32 (i32, ...)*)(i32 %conv73)
  %tobool75 = icmp ne i32 %call74, 0
  br i1 %tobool75, label %if.end.83, label %land.lhs.true.76

land.lhs.true.76:                                 ; preds = %if.end.72
  %66 = load i8*, i8** %ARGUMENTS.addr, align 8
  %67 = load i8, i8* %66, align 1
  %conv77 = sext i8 %67 to i32
  %call78 = call i32 (i32, ...) bitcast (i32 (...)* @eoln to i32 (i32, ...)*)(i32 %conv77)
  %tobool79 = icmp ne i32 %call78, 0
  br i1 %tobool79, label %if.end.83, label %if.then.80

if.then.80:                                       ; preds = %land.lhs.true.76
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT_STREAM.addr, align 8
  %69 = load i8*, i8** %ARGUMENTS.addr, align 8
  %70 = load i8, i8* %69, align 1
  %conv81 = sext i8 %70 to i32
  %call82 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %68, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i32 0, i32 0), i32 %conv81)
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.80, %land.lhs.true.76, %if.end.72
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.then.10
  br label %if.end.87

if.else.85:                                       ; preds = %land.lhs.true, %lor.lhs.false
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT_STREAM.addr, align 8
  %call86 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.87

if.end.87:                                        ; preds = %if.else.85, %if.end.84
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @eoln(...) #1

declare i32 @CHAR_TO_DIGIT(...) #1

declare void @CHANGE_LOCATION(...) #1

declare void @PRT_NUM(...) #1

declare i32 @IS_BLANK_OR_TAB(...) #1

; Function Attrs: nounwind uwtable
define void @PSEUDO_CSECT(i8* %LABEL_NAME, i8* %ARGUMENTS, i32* %LOCATION, %struct.SYMBOL_TABLE_ENTRY** %SYM_TAB, %struct._IO_FILE* %OUTPUT_STREAM) #0 {
entry:
  %LABEL_NAME.addr = alloca i8*, align 8
  %ARGUMENTS.addr = alloca i8*, align 8
  %LOCATION.addr = alloca i32*, align 8
  %SYM_TAB.addr = alloca %struct.SYMBOL_TABLE_ENTRY**, align 8
  %OUTPUT_STREAM.addr = alloca %struct._IO_FILE*, align 8
  %TABLE_ENTRY = alloca %struct.SYMBOL_TABLE_ENTRY*, align 8
  store i8* %LABEL_NAME, i8** %LABEL_NAME.addr, align 8
  store i8* %ARGUMENTS, i8** %ARGUMENTS.addr, align 8
  store i32* %LOCATION, i32** %LOCATION.addr, align 8
  store %struct.SYMBOL_TABLE_ENTRY** %SYM_TAB, %struct.SYMBOL_TABLE_ENTRY*** %SYM_TAB.addr, align 8
  store %struct._IO_FILE* %OUTPUT_STREAM, %struct._IO_FILE** %OUTPUT_STREAM.addr, align 8
  %0 = load i32, i32* @SEEN_END_OP, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT_STREAM.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @MODULE_NAME, i32 0, i32 0))
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT_STREAM.addr, align 8
  call void (%struct.BUFFER_TYPE*, %struct._IO_FILE*, i32, ...) bitcast (void (...)* @OUTPUT_BUFFER to void (%struct.BUFFER_TYPE*, %struct._IO_FILE*, i32, ...)*)(%struct.BUFFER_TYPE* @MOD_REC_BUF, %struct._IO_FILE* %2, i32 1)
  store i32 0, i32* @LOCATION_EXCEEDS_MEM_SIZE, align 4
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT_STREAM.addr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0))
  %4 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %SYM_TAB.addr, align 8
  %call2 = call %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...) bitcast (%struct.SYMBOL_TABLE_ENTRY* (...)* @LOOK_UP_SYMBOL to %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...)*)(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @MODULE_NAME, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @MODULE_NAME, i32 0, i32 0), %struct.SYMBOL_TABLE_ENTRY** %4)
  store %struct.SYMBOL_TABLE_ENTRY* %call2, %struct.SYMBOL_TABLE_ENTRY** %TABLE_ENTRY, align 8
  %5 = load i32*, i32** %LOCATION.addr, align 8
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %TABLE_ENTRY, align 8
  %LOCATION3 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %7, i32 0, i32 2
  %8 = load i32, i32* %LOCATION3, align 4
  %sub = sub nsw i32 %6, %8
  %9 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %TABLE_ENTRY, align 8
  %LENGTH = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %9, i32 0, i32 3
  store i32 %sub, i32* %LENGTH, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* @SEEN_END_OP, align 4
  %10 = load i8*, i8** %LABEL_NAME.addr, align 8
  %call4 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i32 0, i32 0)) #4
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.end.8, label %if.then.6

if.then.6:                                        ; preds = %if.end
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT_STREAM.addr, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i32 0, i32 0))
  %12 = load i8*, i8** %LABEL_NAME.addr, align 8
  %13 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %SYM_TAB.addr, align 8
  call void (i8*, %struct.SYMBOL_TABLE_ENTRY**, ...) bitcast (void (...)* @GET_NEXT_MISSING_LABEL to void (i8*, %struct.SYMBOL_TABLE_ENTRY**, ...)*)(i8* %12, %struct.SYMBOL_TABLE_ENTRY** %13)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end
  %14 = load i8*, i8** %LABEL_NAME.addr, align 8
  %15 = load i8*, i8** %LABEL_NAME.addr, align 8
  %16 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %SYM_TAB.addr, align 8
  %call9 = call %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...) bitcast (%struct.SYMBOL_TABLE_ENTRY* (...)* @LOOK_UP_SYMBOL to %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...)*)(i8* %14, i8* %15, %struct.SYMBOL_TABLE_ENTRY** %16)
  %cmp = icmp ne %struct.SYMBOL_TABLE_ENTRY* %call9, null
  br i1 %cmp, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.end.8
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT_STREAM.addr, align 8
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i32 0, i32 0))
  %18 = load i8*, i8** %LABEL_NAME.addr, align 8
  %call12 = call i8* @strcpy(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @MODULE_NAME, i32 0, i32 0), i8* %18) #5
  br label %if.end.18

if.else:                                          ; preds = %if.end.8
  %19 = load i8*, i8** %LABEL_NAME.addr, align 8
  %20 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %SYM_TAB.addr, align 8
  %call13 = call %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...) bitcast (%struct.SYMBOL_TABLE_ENTRY* (...)* @LOOK_UP_SYMBOL to %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...)*)(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @MODULE_NAME, i32 0, i32 0), i8* %19, %struct.SYMBOL_TABLE_ENTRY** %20)
  store %struct.SYMBOL_TABLE_ENTRY* %call13, %struct.SYMBOL_TABLE_ENTRY** %TABLE_ENTRY, align 8
  %21 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %TABLE_ENTRY, align 8
  %LOCATION14 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %21, i32 0, i32 2
  store i32 0, i32* %LOCATION14, align 4
  %22 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %TABLE_ENTRY, align 8
  %MODULE = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %22, i32 0, i32 1
  %arraydecay = getelementptr inbounds [9 x i8], [9 x i8]* %MODULE, i32 0, i32 0
  %23 = load i8*, i8** %LABEL_NAME.addr, align 8
  %call15 = call i8* @strcpy(i8* %arraydecay, i8* %23) #5
  %24 = load i8*, i8** %LABEL_NAME.addr, align 8
  %call16 = call i8* @strcpy(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @MODULE_NAME, i32 0, i32 0), i8* %24) #5
  %25 = load i32*, i32** %LOCATION.addr, align 8
  store i32 0, i32* %25, align 4
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT_STREAM.addr, align 8
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @MODULE_NAME, i32 0, i32 0))
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %if.then.10
  ret void
}

declare void @OUTPUT_BUFFER(...) #1

declare %struct.SYMBOL_TABLE_ENTRY* @LOOK_UP_SYMBOL(...) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

declare void @GET_NEXT_MISSING_LABEL(...) #1

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define void @PSEUDO_END(i8* %LABEL_NAME, i8* %ARGUMENTS, i32* %LOCATION, %struct.SYMBOL_TABLE_ENTRY** %SYM_TAB, %struct._IO_FILE* %OUTPUT_STREAM) #0 {
entry:
  %LABEL_NAME.addr = alloca i8*, align 8
  %ARGUMENTS.addr = alloca i8*, align 8
  %LOCATION.addr = alloca i32*, align 8
  %SYM_TAB.addr = alloca %struct.SYMBOL_TABLE_ENTRY**, align 8
  %OUTPUT_STREAM.addr = alloca %struct._IO_FILE*, align 8
  %TABLE_ENTRY = alloca %struct.SYMBOL_TABLE_ENTRY*, align 8
  %OPERAND_LAB = alloca [9 x i8], align 1
  %START = alloca i8*, align 8
  %TABLE_ENTRY5 = alloca %struct.SYMBOL_TABLE_ENTRY*, align 8
  store i8* %LABEL_NAME, i8** %LABEL_NAME.addr, align 8
  store i8* %ARGUMENTS, i8** %ARGUMENTS.addr, align 8
  store i32* %LOCATION, i32** %LOCATION.addr, align 8
  store %struct.SYMBOL_TABLE_ENTRY** %SYM_TAB, %struct.SYMBOL_TABLE_ENTRY*** %SYM_TAB.addr, align 8
  store %struct._IO_FILE* %OUTPUT_STREAM, %struct._IO_FILE** %OUTPUT_STREAM.addr, align 8
  store i32 1, i32* @SEEN_END_OP, align 4
  %0 = load i8*, i8** %ARGUMENTS.addr, align 8
  %call = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i32 0, i32 0)) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else.39

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %ARGUMENTS.addr, align 8
  store i8* %1, i8** %START, align 8
  %arraydecay = getelementptr inbounds [9 x i8], [9 x i8]* %OPERAND_LAB, i32 0, i32 0
  %2 = load i8*, i8** %ARGUMENTS.addr, align 8
  call void (i8*, i8*, i8**, i32, ...) bitcast (void (...)* @GET_LABEL to void (i8*, i8*, i8**, i32, ...)*)(i8* %arraydecay, i8* %2, i8** %START, i32 0)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT_STREAM.addr, align 8
  call void (%struct.BUFFER_TYPE*, %struct._IO_FILE*, i32, ...) bitcast (void (...)* @OUTPUT_BUFFER to void (%struct.BUFFER_TYPE*, %struct._IO_FILE*, i32, ...)*)(%struct.BUFFER_TYPE* @ERROR_REC_BUF, %struct._IO_FILE* %3, i32 1)
  %arraydecay1 = getelementptr inbounds [9 x i8], [9 x i8]* %OPERAND_LAB, i32 0, i32 0
  %call2 = call i32 @strcmp(i8* %arraydecay1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i32 0, i32 0)) #4
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then.4, label %if.else.36

if.then.4:                                        ; preds = %if.then
  %arraydecay6 = getelementptr inbounds [9 x i8], [9 x i8]* %OPERAND_LAB, i32 0, i32 0
  %4 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %SYM_TAB.addr, align 8
  %call7 = call %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...) bitcast (%struct.SYMBOL_TABLE_ENTRY* (...)* @LOOK_UP_SYMBOL to %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...)*)(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @MAIN_ROUTINE, i32 0, i32 0), i8* %arraydecay6, %struct.SYMBOL_TABLE_ENTRY** %4)
  store %struct.SYMBOL_TABLE_ENTRY* %call7, %struct.SYMBOL_TABLE_ENTRY** %TABLE_ENTRY5, align 8
  %5 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %TABLE_ENTRY5, align 8
  %cmp = icmp eq %struct.SYMBOL_TABLE_ENTRY* %5, null
  br i1 %cmp, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.then.4
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT_STREAM.addr, align 8
  %arraydecay9 = getelementptr inbounds [9 x i8], [9 x i8]* %OPERAND_LAB, i32 0, i32 0
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i32 0, i32 0), i8* %arraydecay9)
  br label %if.end.23

if.else:                                          ; preds = %if.then.4
  %7 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %TABLE_ENTRY5, align 8
  %TYPE = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %7, i32 0, i32 4
  %8 = load i32, i32* %TYPE, align 4
  %cmp11 = icmp eq i32 %8, 1
  br i1 %cmp11, label %if.then.12, label %if.else.15

if.then.12:                                       ; preds = %if.else
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT_STREAM.addr, align 8
  %arraydecay13 = getelementptr inbounds [9 x i8], [9 x i8]* %OPERAND_LAB, i32 0, i32 0
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.16, i32 0, i32 0), i8* %arraydecay13)
  br label %if.end.22

if.else.15:                                       ; preds = %if.else
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT_STREAM.addr, align 8
  call void (%struct.BUFFER_TYPE*, %struct._IO_FILE*, i32, ...) bitcast (void (...)* @OUTPUT_BUFFER to void (%struct.BUFFER_TYPE*, %struct._IO_FILE*, i32, ...)*)(%struct.BUFFER_TYPE* @MOD_REC_BUF, %struct._IO_FILE* %10, i32 1)
  store i32 0, i32* @LOCATION_EXCEEDS_MEM_SIZE, align 4
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT_STREAM.addr, align 8
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0))
  %12 = load i32, i32* @START_ADDRESS, align 4
  %cmp17 = icmp eq i32 %12, -1
  br i1 %cmp17, label %if.then.18, label %if.else.20

if.then.18:                                       ; preds = %if.else.15
  %13 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %TABLE_ENTRY5, align 8
  %LOCATION19 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %13, i32 0, i32 2
  %14 = load i32, i32* %LOCATION19, align 4
  store i32 %14, i32* @START_ADDRESS, align 4
  br label %if.end

if.else.20:                                       ; preds = %if.else.15
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT_STREAM.addr, align 8
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else.20, %if.then.18
  br label %if.end.22

if.end.22:                                        ; preds = %if.end, %if.then.12
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.then.8
  %16 = load i8*, i8** %START, align 8
  %17 = load i8, i8* %16, align 1
  %conv = sext i8 %17 to i32
  %call24 = call i32 (i32, ...) bitcast (i32 (...)* @IS_BLANK_OR_TAB to i32 (i32, ...)*)(i32 %conv)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.end.35, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.23
  %18 = load i8*, i8** %START, align 8
  %19 = load i8, i8* %18, align 1
  %conv26 = sext i8 %19 to i32
  %call27 = call i32 (i32, ...) bitcast (i32 (...)* @eoln to i32 (i32, ...)*)(i32 %conv26)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.end.35, label %land.lhs.true.29

land.lhs.true.29:                                 ; preds = %land.lhs.true
  %20 = load i8*, i8** %START, align 8
  %21 = load i8*, i8** %ARGUMENTS.addr, align 8
  %cmp30 = icmp ne i8* %20, %21
  br i1 %cmp30, label %if.then.32, label %if.end.35

if.then.32:                                       ; preds = %land.lhs.true.29
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT_STREAM.addr, align 8
  %23 = load i8*, i8** %START, align 8
  %24 = load i8, i8* %23, align 1
  %conv33 = sext i8 %24 to i32
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i32 0, i32 0), i32 %conv33)
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.32, %land.lhs.true.29, %land.lhs.true, %if.end.23
  br label %if.end.38

if.else.36:                                       ; preds = %if.then
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT_STREAM.addr, align 8
  %26 = load i8*, i8** %ARGUMENTS.addr, align 8
  %call37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.18, i32 0, i32 0), i8* %26)
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.36, %if.end.35
  br label %if.end.41

if.else.39:                                       ; preds = %entry
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT_STREAM.addr, align 8
  call void (%struct.BUFFER_TYPE*, %struct._IO_FILE*, i32, ...) bitcast (void (...)* @OUTPUT_BUFFER to void (%struct.BUFFER_TYPE*, %struct._IO_FILE*, i32, ...)*)(%struct.BUFFER_TYPE* @MOD_REC_BUF, %struct._IO_FILE* %27, i32 1)
  store i32 0, i32* @LOCATION_EXCEEDS_MEM_SIZE, align 4
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT_STREAM.addr, align 8
  %call40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.39, %if.end.38
  %29 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %SYM_TAB.addr, align 8
  %call42 = call %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...) bitcast (%struct.SYMBOL_TABLE_ENTRY* (...)* @LOOK_UP_SYMBOL to %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...)*)(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @MODULE_NAME, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @MODULE_NAME, i32 0, i32 0), %struct.SYMBOL_TABLE_ENTRY** %29)
  store %struct.SYMBOL_TABLE_ENTRY* %call42, %struct.SYMBOL_TABLE_ENTRY** %TABLE_ENTRY, align 8
  %30 = load i32*, i32** %LOCATION.addr, align 8
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %TABLE_ENTRY, align 8
  %LOCATION43 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %32, i32 0, i32 2
  %33 = load i32, i32* %LOCATION43, align 4
  %sub = sub nsw i32 %31, %33
  %34 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %TABLE_ENTRY, align 8
  %LENGTH = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %34, i32 0, i32 3
  store i32 %sub, i32* %LENGTH, align 4
  %call44 = call i8* @strcpy(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @MODULE_NAME, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0)) #5
  %35 = load i32*, i32** %LOCATION.addr, align 8
  store i32 0, i32* %35, align 4
  ret void
}

declare void @GET_LABEL(...) #1

; Function Attrs: nounwind uwtable
define void @PSEUDO_EQU(i8* %LABEL_NAME, i8* %ARGUMENTS, i32* %LOCATION, %struct.SYMBOL_TABLE_ENTRY** %SYM_TAB, %struct._IO_FILE* %OUTPUT_STREAM) #0 {
entry:
  %LABEL_NAME.addr = alloca i8*, align 8
  %ARGUMENTS.addr = alloca i8*, align 8
  %LOCATION.addr = alloca i32*, align 8
  %SYM_TAB.addr = alloca %struct.SYMBOL_TABLE_ENTRY**, align 8
  %OUTPUT_STREAM.addr = alloca %struct._IO_FILE*, align 8
  %START = alloca i8*, align 8
  %TABLE_ENTRY = alloca %struct.SYMBOL_TABLE_ENTRY*, align 8
  %ABS_VAL = alloca i32, align 4
  store i8* %LABEL_NAME, i8** %LABEL_NAME.addr, align 8
  store i8* %ARGUMENTS, i8** %ARGUMENTS.addr, align 8
  store i32* %LOCATION, i32** %LOCATION.addr, align 8
  store %struct.SYMBOL_TABLE_ENTRY** %SYM_TAB, %struct.SYMBOL_TABLE_ENTRY*** %SYM_TAB.addr, align 8
  store %struct._IO_FILE* %OUTPUT_STREAM, %struct._IO_FILE** %OUTPUT_STREAM.addr, align 8
  %0 = load i8*, i8** %LABEL_NAME.addr, align 8
  %call = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i32 0, i32 0)) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT_STREAM.addr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.20, i32 0, i32 0))
  br label %if.end.15

if.else:                                          ; preds = %entry
  store i32 1, i32* %ABS_VAL, align 4
  %2 = load i8*, i8** %ARGUMENTS.addr, align 8
  store i8* %2, i8** %START, align 8
  %3 = load i8*, i8** %LABEL_NAME.addr, align 8
  %4 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %SYM_TAB.addr, align 8
  %call2 = call %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...) bitcast (%struct.SYMBOL_TABLE_ENTRY* (...)* @LOOK_UP_SYMBOL to %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...)*)(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @MODULE_NAME, i32 0, i32 0), i8* %3, %struct.SYMBOL_TABLE_ENTRY** %4)
  store %struct.SYMBOL_TABLE_ENTRY* %call2, %struct.SYMBOL_TABLE_ENTRY** %TABLE_ENTRY, align 8
  %5 = load i32*, i32** %LOCATION.addr, align 8
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %SYM_TAB.addr, align 8
  %call3 = call i32 (i8**, i32, i32, %struct.SYMBOL_TABLE_ENTRY**, i32*, ...) bitcast (i32 (...)* @GET_EXPRESSION to i32 (i8**, i32, i32, %struct.SYMBOL_TABLE_ENTRY**, i32*, ...)*)(i8** %START, i32 21, i32 %6, %struct.SYMBOL_TABLE_ENTRY** %7, i32* %ABS_VAL)
  %8 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %TABLE_ENTRY, align 8
  %LOCATION4 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %8, i32 0, i32 2
  store i32 %call3, i32* %LOCATION4, align 4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT_STREAM.addr, align 8
  call void (%struct.BUFFER_TYPE*, %struct._IO_FILE*, i32, ...) bitcast (void (...)* @OUTPUT_BUFFER to void (%struct.BUFFER_TYPE*, %struct._IO_FILE*, i32, ...)*)(%struct.BUFFER_TYPE* @ERROR_REC_BUF, %struct._IO_FILE* %9, i32 1)
  %10 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %TABLE_ENTRY, align 8
  %TYPE = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %10, i32 0, i32 4
  store i32 1, i32* %TYPE, align 4
  %11 = load i8*, i8** %START, align 8
  %12 = load i8, i8* %11, align 1
  %conv = sext i8 %12 to i32
  %call5 = call i32 (i32, ...) bitcast (i32 (...)* @IS_BLANK_OR_TAB to i32 (i32, ...)*)(i32 %conv)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else
  %13 = load i8*, i8** %START, align 8
  %14 = load i8, i8* %13, align 1
  %conv7 = sext i8 %14 to i32
  %call8 = call i32 (i32, ...) bitcast (i32 (...)* @eoln to i32 (i32, ...)*)(i32 %conv7)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end, label %land.lhs.true.10

land.lhs.true.10:                                 ; preds = %land.lhs.true
  %15 = load i8*, i8** %START, align 8
  %16 = load i8*, i8** %ARGUMENTS.addr, align 8
  %cmp = icmp ne i8* %15, %16
  br i1 %cmp, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %land.lhs.true.10
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT_STREAM.addr, align 8
  %18 = load i8*, i8** %START, align 8
  %19 = load i8, i8* %18, align 1
  %conv13 = sext i8 %19 to i32
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i32 0, i32 0), i32 %conv13)
  br label %if.end

if.end:                                           ; preds = %if.then.12, %land.lhs.true.10, %land.lhs.true, %if.else
  br label %if.end.15

if.end.15:                                        ; preds = %if.end, %if.then
  ret void
}

declare i32 @GET_EXPRESSION(...) #1

; Function Attrs: nounwind uwtable
define void @PSEUDO_EXTDEF(i8* %LABEL_NAME, i8* %ARGUMENTS, i32* %LOCATION, %struct.SYMBOL_TABLE_ENTRY** %SYM_TAB, %struct._IO_FILE* %OUTPUT_STREAM) #0 {
entry:
  %LABEL_NAME.addr = alloca i8*, align 8
  %ARGUMENTS.addr = alloca i8*, align 8
  %LOCATION.addr = alloca i32*, align 8
  %SYM_TAB.addr = alloca %struct.SYMBOL_TABLE_ENTRY**, align 8
  %OUTPUT_STREAM.addr = alloca %struct._IO_FILE*, align 8
  %START = alloca i8*, align 8
  %DEF_LAB = alloca [9 x i8], align 1
  %ERROR = alloca i32, align 4
  %TEMP = alloca [9 x i8], align 1
  store i8* %LABEL_NAME, i8** %LABEL_NAME.addr, align 8
  store i8* %ARGUMENTS, i8** %ARGUMENTS.addr, align 8
  store i32* %LOCATION, i32** %LOCATION.addr, align 8
  store %struct.SYMBOL_TABLE_ENTRY** %SYM_TAB, %struct.SYMBOL_TABLE_ENTRY*** %SYM_TAB.addr, align 8
  store %struct._IO_FILE* %OUTPUT_STREAM, %struct._IO_FILE** %OUTPUT_STREAM.addr, align 8
  store i32 0, i32* %ERROR, align 4
  %0 = load i8*, i8** %ARGUMENTS.addr, align 8
  %call = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i32 0, i32 0)) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT_STREAM.addr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21, i32 0, i32 0))
  br label %if.end.37

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %ARGUMENTS.addr, align 8
  store i8* %2, i8** %START, align 8
  call void (i8*, i32, ...) bitcast (void (...)* @INITIALIZE_RECORD to void (i8*, i32, ...)*)(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0), i32 41)
  br label %do.body

do.body:                                          ; preds = %land.end, %if.else
  %3 = load i8*, i8** %START, align 8
  store i8* %3, i8** %ARGUMENTS.addr, align 8
  %arraydecay = getelementptr inbounds [9 x i8], [9 x i8]* %DEF_LAB, i32 0, i32 0
  %4 = load i8*, i8** %START, align 8
  call void (i8*, i8*, i8**, i32, ...) bitcast (void (...)* @GET_LABEL to void (i8*, i8*, i8**, i32, ...)*)(i8* %arraydecay, i8* %4, i8** %START, i32 0)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT_STREAM.addr, align 8
  call void (%struct.BUFFER_TYPE*, %struct._IO_FILE*, i32, ...) bitcast (void (...)* @OUTPUT_BUFFER to void (%struct.BUFFER_TYPE*, %struct._IO_FILE*, i32, ...)*)(%struct.BUFFER_TYPE* @ERROR_REC_BUF, %struct._IO_FILE* %5, i32 1)
  %arraydecay2 = getelementptr inbounds [9 x i8], [9 x i8]* %DEF_LAB, i32 0, i32 0
  %call3 = call i32 @strcmp(i8* %arraydecay2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i32 0, i32 0)) #4
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.else.6, label %if.then.5

if.then.5:                                        ; preds = %do.body
  store i32 1, i32* %ERROR, align 4
  br label %if.end

if.else.6:                                        ; preds = %do.body
  %arraydecay7 = getelementptr inbounds [9 x i8], [9 x i8]* %TEMP, i32 0, i32 0
  call void (i8*, ...) bitcast (void (...)* @BLANK_STR to void (i8*, ...)*)(i8* %arraydecay7)
  %arraydecay8 = getelementptr inbounds [9 x i8], [9 x i8]* %TEMP, i32 0, i32 0
  %arraydecay9 = getelementptr inbounds [9 x i8], [9 x i8]* %DEF_LAB, i32 0, i32 0
  %arraydecay10 = getelementptr inbounds [9 x i8], [9 x i8]* %DEF_LAB, i32 0, i32 0
  %call11 = call i64 @strlen(i8* %arraydecay10) #4
  %call12 = call i8* @strncpy(i8* %arraydecay8, i8* %arraydecay9, i64 %call11) #5
  %arraydecay13 = getelementptr inbounds [9 x i8], [9 x i8]* %TEMP, i32 0, i32 0
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT_STREAM.addr, align 8
  call void (i8*, %struct._IO_FILE*, ...) bitcast (void (...)* @ADD_TO_RECORD to void (i8*, %struct._IO_FILE*, ...)*)(i8* %arraydecay13, %struct._IO_FILE* %6)
  br label %if.end

if.end:                                           ; preds = %if.else.6, %if.then.5
  %7 = load i8*, i8** %START, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %START, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %8 = load i32, i32* %ERROR, align 4
  %tobool14 = icmp ne i32 %8, 0
  br i1 %tobool14, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %do.cond
  %9 = load i8*, i8** %START, align 8
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 -1
  %10 = load i8, i8* %add.ptr, align 1
  %conv = sext i8 %10 to i32
  %cmp = icmp eq i32 %conv, 44
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %11 = phi i1 [ false, %do.cond ], [ %cmp, %land.rhs ]
  br i1 %11, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT_STREAM.addr, align 8
  call void (%struct._IO_FILE*, ...) bitcast (void (...)* @PRT_RECORD to void (%struct._IO_FILE*, ...)*)(%struct._IO_FILE* %12)
  %13 = load i8*, i8** %START, align 8
  %14 = load i8, i8* %13, align 1
  %conv16 = sext i8 %14 to i32
  %call17 = call i32 (i32, ...) bitcast (i32 (...)* @IS_BLANK_OR_TAB to i32 (i32, ...)*)(i32 %conv16)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.end.31, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.end
  %15 = load i8*, i8** %START, align 8
  %16 = load i8, i8* %15, align 1
  %conv19 = sext i8 %16 to i32
  %call20 = call i32 (i32, ...) bitcast (i32 (...)* @eoln to i32 (i32, ...)*)(i32 %conv19)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.end.31, label %land.lhs.true.22

land.lhs.true.22:                                 ; preds = %land.lhs.true
  %17 = load i32, i32* %ERROR, align 4
  %tobool23 = icmp ne i32 %17, 0
  br i1 %tobool23, label %if.end.31, label %land.lhs.true.24

land.lhs.true.24:                                 ; preds = %land.lhs.true.22
  %18 = load i8*, i8** %START, align 8
  %19 = load i8*, i8** %ARGUMENTS.addr, align 8
  %cmp25 = icmp ne i8* %18, %19
  br i1 %cmp25, label %if.then.27, label %if.end.31

if.then.27:                                       ; preds = %land.lhs.true.24
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT_STREAM.addr, align 8
  %21 = load i8*, i8** %START, align 8
  %add.ptr28 = getelementptr inbounds i8, i8* %21, i64 -1
  %22 = load i8, i8* %add.ptr28, align 1
  %conv29 = sext i8 %22 to i32
  %call30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i32 0, i32 0), i32 %conv29)
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.27, %land.lhs.true.24, %land.lhs.true.22, %land.lhs.true, %do.end
  %23 = load i32, i32* %ERROR, align 4
  %cmp32 = icmp eq i32 %23, 1
  br i1 %cmp32, label %if.then.34, label %if.end.36

if.then.34:                                       ; preds = %if.end.31
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT_STREAM.addr, align 8
  %25 = load i8*, i8** %ARGUMENTS.addr, align 8
  %call35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.23, i32 0, i32 0), i8* %25)
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.34, %if.end.31
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.then
  ret void
}

declare void @INITIALIZE_RECORD(...) #1

declare void @BLANK_STR(...) #1

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare void @ADD_TO_RECORD(...) #1

declare void @PRT_RECORD(...) #1

; Function Attrs: nounwind uwtable
define void @PSEUDO_EXTREF(i8* %LABEL_NAME, i8* %ARGUMENTS, i32* %LOCATION, %struct.SYMBOL_TABLE_ENTRY** %SYM_TAB, %struct._IO_FILE* %OUTPUT_STREAM) #0 {
entry:
  %LABEL_NAME.addr = alloca i8*, align 8
  %ARGUMENTS.addr = alloca i8*, align 8
  %LOCATION.addr = alloca i32*, align 8
  %SYM_TAB.addr = alloca %struct.SYMBOL_TABLE_ENTRY**, align 8
  %OUTPUT_STREAM.addr = alloca %struct._IO_FILE*, align 8
  %START = alloca i8*, align 8
  %DEF_LAB = alloca [9 x i8], align 1
  %ERROR = alloca i32, align 4
  %TEMP = alloca [9 x i8], align 1
  store i8* %LABEL_NAME, i8** %LABEL_NAME.addr, align 8
  store i8* %ARGUMENTS, i8** %ARGUMENTS.addr, align 8
  store i32* %LOCATION, i32** %LOCATION.addr, align 8
  store %struct.SYMBOL_TABLE_ENTRY** %SYM_TAB, %struct.SYMBOL_TABLE_ENTRY*** %SYM_TAB.addr, align 8
  store %struct._IO_FILE* %OUTPUT_STREAM, %struct._IO_FILE** %OUTPUT_STREAM.addr, align 8
  store i32 0, i32* %ERROR, align 4
  %0 = load i8*, i8** %ARGUMENTS.addr, align 8
  %call = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i32 0, i32 0)) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT_STREAM.addr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.24, i32 0, i32 0))
  br label %if.end.49

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %ARGUMENTS.addr, align 8
  store i8* %2, i8** %START, align 8
  call void (i8*, i32, ...) bitcast (void (...)* @INITIALIZE_RECORD to void (i8*, i32, ...)*)(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i32 0, i32 0), i32 73)
  br label %do.body

do.body:                                          ; preds = %land.end, %if.else
  %3 = load i8*, i8** %START, align 8
  store i8* %3, i8** %ARGUMENTS.addr, align 8
  %arraydecay = getelementptr inbounds [9 x i8], [9 x i8]* %DEF_LAB, i32 0, i32 0
  %4 = load i8*, i8** %START, align 8
  call void (i8*, i8*, i8**, i32, ...) bitcast (void (...)* @GET_LABEL to void (i8*, i8*, i8**, i32, ...)*)(i8* %arraydecay, i8* %4, i8** %START, i32 0)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT_STREAM.addr, align 8
  call void (%struct.BUFFER_TYPE*, %struct._IO_FILE*, i32, ...) bitcast (void (...)* @OUTPUT_BUFFER to void (%struct.BUFFER_TYPE*, %struct._IO_FILE*, i32, ...)*)(%struct.BUFFER_TYPE* @ERROR_REC_BUF, %struct._IO_FILE* %5, i32 1)
  %arraydecay2 = getelementptr inbounds [9 x i8], [9 x i8]* %DEF_LAB, i32 0, i32 0
  %call3 = call i32 @strcmp(i8* %arraydecay2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i32 0, i32 0)) #4
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.else.6, label %if.then.5

if.then.5:                                        ; preds = %do.body
  store i32 1, i32* %ERROR, align 4
  br label %if.end.19

if.else.6:                                        ; preds = %do.body
  %arraydecay7 = getelementptr inbounds [9 x i8], [9 x i8]* %DEF_LAB, i32 0, i32 0
  %6 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %SYM_TAB.addr, align 8
  %call8 = call i32 (i8*, i8*, i32, i32, %struct.SYMBOL_TABLE_ENTRY**, ...) bitcast (i32 (...)* @INSERT_IN_SYM_TAB to i32 (i8*, i8*, i32, i32, %struct.SYMBOL_TABLE_ENTRY**, ...)*)(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @MODULE_NAME, i32 0, i32 0), i8* %arraydecay7, i32 0, i32 2, %struct.SYMBOL_TABLE_ENTRY** %6)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.else.11, label %if.then.10

if.then.10:                                       ; preds = %if.else.6
  store i32 2, i32* %ERROR, align 4
  br label %if.end

if.else.11:                                       ; preds = %if.else.6
  %arraydecay12 = getelementptr inbounds [9 x i8], [9 x i8]* %TEMP, i32 0, i32 0
  call void (i8*, ...) bitcast (void (...)* @BLANK_STR to void (i8*, ...)*)(i8* %arraydecay12)
  %arraydecay13 = getelementptr inbounds [9 x i8], [9 x i8]* %TEMP, i32 0, i32 0
  %arraydecay14 = getelementptr inbounds [9 x i8], [9 x i8]* %DEF_LAB, i32 0, i32 0
  %arraydecay15 = getelementptr inbounds [9 x i8], [9 x i8]* %DEF_LAB, i32 0, i32 0
  %call16 = call i64 @strlen(i8* %arraydecay15) #4
  %call17 = call i8* @strncpy(i8* %arraydecay13, i8* %arraydecay14, i64 %call16) #5
  %arraydecay18 = getelementptr inbounds [9 x i8], [9 x i8]* %TEMP, i32 0, i32 0
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT_STREAM.addr, align 8
  call void (i8*, %struct._IO_FILE*, ...) bitcast (void (...)* @ADD_TO_RECORD to void (i8*, %struct._IO_FILE*, ...)*)(i8* %arraydecay18, %struct._IO_FILE* %7)
  br label %if.end

if.end:                                           ; preds = %if.else.11, %if.then.10
  br label %if.end.19

if.end.19:                                        ; preds = %if.end, %if.then.5
  %8 = load i8*, i8** %START, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %START, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end.19
  %9 = load i32, i32* %ERROR, align 4
  %tobool20 = icmp ne i32 %9, 0
  br i1 %tobool20, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %do.cond
  %10 = load i8*, i8** %START, align 8
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 -1
  %11 = load i8, i8* %add.ptr, align 1
  %conv = sext i8 %11 to i32
  %cmp = icmp eq i32 %conv, 44
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %12 = phi i1 [ false, %do.cond ], [ %cmp, %land.rhs ]
  br i1 %12, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT_STREAM.addr, align 8
  call void (%struct._IO_FILE*, ...) bitcast (void (...)* @PRT_RECORD to void (%struct._IO_FILE*, ...)*)(%struct._IO_FILE* %13)
  %14 = load i8*, i8** %START, align 8
  %15 = load i8, i8* %14, align 1
  %conv22 = sext i8 %15 to i32
  %call23 = call i32 (i32, ...) bitcast (i32 (...)* @IS_BLANK_OR_TAB to i32 (i32, ...)*)(i32 %conv22)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.end.37, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.end
  %16 = load i8*, i8** %START, align 8
  %17 = load i8, i8* %16, align 1
  %conv25 = sext i8 %17 to i32
  %call26 = call i32 (i32, ...) bitcast (i32 (...)* @eoln to i32 (i32, ...)*)(i32 %conv25)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.end.37, label %land.lhs.true.28

land.lhs.true.28:                                 ; preds = %land.lhs.true
  %18 = load i32, i32* %ERROR, align 4
  %tobool29 = icmp ne i32 %18, 0
  br i1 %tobool29, label %if.end.37, label %land.lhs.true.30

land.lhs.true.30:                                 ; preds = %land.lhs.true.28
  %19 = load i8*, i8** %START, align 8
  %20 = load i8*, i8** %ARGUMENTS.addr, align 8
  %cmp31 = icmp ne i8* %19, %20
  br i1 %cmp31, label %if.then.33, label %if.end.37

if.then.33:                                       ; preds = %land.lhs.true.30
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT_STREAM.addr, align 8
  %22 = load i8*, i8** %START, align 8
  %add.ptr34 = getelementptr inbounds i8, i8* %22, i64 -1
  %23 = load i8, i8* %add.ptr34, align 1
  %conv35 = sext i8 %23 to i32
  %call36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i32 0, i32 0), i32 %conv35)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.33, %land.lhs.true.30, %land.lhs.true.28, %land.lhs.true, %do.end
  %24 = load i32, i32* %ERROR, align 4
  %cmp38 = icmp eq i32 %24, 1
  br i1 %cmp38, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %if.end.37
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT_STREAM.addr, align 8
  %26 = load i8*, i8** %ARGUMENTS.addr, align 8
  %call41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.23, i32 0, i32 0), i8* %26)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.40, %if.end.37
  %27 = load i32, i32* %ERROR, align 4
  %cmp43 = icmp eq i32 %27, 2
  br i1 %cmp43, label %if.then.45, label %if.end.48

if.then.45:                                       ; preds = %if.end.42
  %28 = load i8*, i8** %START, align 8
  %add.ptr46 = getelementptr inbounds i8, i8* %28, i64 -1
  store i8 0, i8* %add.ptr46, align 1
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT_STREAM.addr, align 8
  %30 = load i8*, i8** %ARGUMENTS.addr, align 8
  %call47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.26, i32 0, i32 0), i8* %30)
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.45, %if.end.42
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.then
  ret void
}

declare i32 @INSERT_IN_SYM_TAB(...) #1

; Function Attrs: nounwind uwtable
define void @PSEUDO_RESB(i8* %LABEL_NAME, i8* %ARGUMENTS, i32* %LOCATION, %struct.SYMBOL_TABLE_ENTRY** %SYM_TAB, %struct._IO_FILE* %OUTPUT_STREAM) #0 {
entry:
  %LABEL_NAME.addr = alloca i8*, align 8
  %ARGUMENTS.addr = alloca i8*, align 8
  %LOCATION.addr = alloca i32*, align 8
  %SYM_TAB.addr = alloca %struct.SYMBOL_TABLE_ENTRY**, align 8
  %OUTPUT_STREAM.addr = alloca %struct._IO_FILE*, align 8
  %START = alloca i8*, align 8
  %ABS_VAL = alloca i32, align 4
  store i8* %LABEL_NAME, i8** %LABEL_NAME.addr, align 8
  store i8* %ARGUMENTS, i8** %ARGUMENTS.addr, align 8
  store i32* %LOCATION, i32** %LOCATION.addr, align 8
  store %struct.SYMBOL_TABLE_ENTRY** %SYM_TAB, %struct.SYMBOL_TABLE_ENTRY*** %SYM_TAB.addr, align 8
  store %struct._IO_FILE* %OUTPUT_STREAM, %struct._IO_FILE** %OUTPUT_STREAM.addr, align 8
  store i32 1, i32* %ABS_VAL, align 4
  %0 = load i8*, i8** %ARGUMENTS.addr, align 8
  store i8* %0, i8** %START, align 8
  %1 = load i32*, i32** %LOCATION.addr, align 8
  %2 = load i32*, i32** %LOCATION.addr, align 8
  %3 = load i32, i32* %2, align 4
  %4 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %SYM_TAB.addr, align 8
  %call = call i32 (i8**, i32, i32, %struct.SYMBOL_TABLE_ENTRY**, i32*, ...) bitcast (i32 (...)* @GET_EXPRESSION to i32 (i8**, i32, i32, %struct.SYMBOL_TABLE_ENTRY**, i32*, ...)*)(i8** %START, i32 21, i32 %3, %struct.SYMBOL_TABLE_ENTRY** %4, i32* %ABS_VAL)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT_STREAM.addr, align 8
  call void (i32*, i32, %struct._IO_FILE*, ...) bitcast (void (...)* @CHANGE_LOCATION to void (i32*, i32, %struct._IO_FILE*, ...)*)(i32* %1, i32 %call, %struct._IO_FILE* %5)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT_STREAM.addr, align 8
  call void (%struct.BUFFER_TYPE*, %struct._IO_FILE*, i32, ...) bitcast (void (...)* @OUTPUT_BUFFER to void (%struct.BUFFER_TYPE*, %struct._IO_FILE*, i32, ...)*)(%struct.BUFFER_TYPE* @ERROR_REC_BUF, %struct._IO_FILE* %6, i32 1)
  %7 = load i8*, i8** %START, align 8
  %8 = load i8, i8* %7, align 1
  %conv = sext i8 %8 to i32
  %call1 = call i32 (i32, ...) bitcast (i32 (...)* @IS_BLANK_OR_TAB to i32 (i32, ...)*)(i32 %conv)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %9 = load i8*, i8** %START, align 8
  %10 = load i8, i8* %9, align 1
  %conv2 = sext i8 %10 to i32
  %call3 = call i32 (i32, ...) bitcast (i32 (...)* @eoln to i32 (i32, ...)*)(i32 %conv2)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end, label %land.lhs.true.5

land.lhs.true.5:                                  ; preds = %land.lhs.true
  %11 = load i8*, i8** %START, align 8
  %12 = load i8*, i8** %ARGUMENTS.addr, align 8
  %cmp = icmp ne i8* %11, %12
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.5
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT_STREAM.addr, align 8
  %14 = load i8*, i8** %START, align 8
  %15 = load i8, i8* %14, align 1
  %conv7 = sext i8 %15 to i32
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i32 0, i32 0), i32 %conv7)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.5, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @PSEUDO_RESW(i8* %LABEL_NAME, i8* %ARGUMENTS, i32* %LOCATION, %struct.SYMBOL_TABLE_ENTRY** %SYM_TAB, %struct._IO_FILE* %OUTPUT_STREAM) #0 {
entry:
  %LABEL_NAME.addr = alloca i8*, align 8
  %ARGUMENTS.addr = alloca i8*, align 8
  %LOCATION.addr = alloca i32*, align 8
  %SYM_TAB.addr = alloca %struct.SYMBOL_TABLE_ENTRY**, align 8
  %OUTPUT_STREAM.addr = alloca %struct._IO_FILE*, align 8
  %START = alloca i8*, align 8
  %ABS_VAL = alloca i32, align 4
  store i8* %LABEL_NAME, i8** %LABEL_NAME.addr, align 8
  store i8* %ARGUMENTS, i8** %ARGUMENTS.addr, align 8
  store i32* %LOCATION, i32** %LOCATION.addr, align 8
  store %struct.SYMBOL_TABLE_ENTRY** %SYM_TAB, %struct.SYMBOL_TABLE_ENTRY*** %SYM_TAB.addr, align 8
  store %struct._IO_FILE* %OUTPUT_STREAM, %struct._IO_FILE** %OUTPUT_STREAM.addr, align 8
  store i32 1, i32* %ABS_VAL, align 4
  %0 = load i8*, i8** %ARGUMENTS.addr, align 8
  store i8* %0, i8** %START, align 8
  %1 = load i32*, i32** %LOCATION.addr, align 8
  %2 = load i32*, i32** %LOCATION.addr, align 8
  %3 = load i32, i32* %2, align 4
  %4 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %SYM_TAB.addr, align 8
  %call = call i32 (i8**, i32, i32, %struct.SYMBOL_TABLE_ENTRY**, i32*, ...) bitcast (i32 (...)* @GET_EXPRESSION to i32 (i8**, i32, i32, %struct.SYMBOL_TABLE_ENTRY**, i32*, ...)*)(i8** %START, i32 20, i32 %3, %struct.SYMBOL_TABLE_ENTRY** %4, i32* %ABS_VAL)
  %mul = mul nsw i32 %call, 3
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT_STREAM.addr, align 8
  call void (i32*, i32, %struct._IO_FILE*, ...) bitcast (void (...)* @CHANGE_LOCATION to void (i32*, i32, %struct._IO_FILE*, ...)*)(i32* %1, i32 %mul, %struct._IO_FILE* %5)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT_STREAM.addr, align 8
  call void (%struct.BUFFER_TYPE*, %struct._IO_FILE*, i32, ...) bitcast (void (...)* @OUTPUT_BUFFER to void (%struct.BUFFER_TYPE*, %struct._IO_FILE*, i32, ...)*)(%struct.BUFFER_TYPE* @ERROR_REC_BUF, %struct._IO_FILE* %6, i32 1)
  %7 = load i8*, i8** %START, align 8
  %8 = load i8, i8* %7, align 1
  %conv = sext i8 %8 to i32
  %call1 = call i32 (i32, ...) bitcast (i32 (...)* @IS_BLANK_OR_TAB to i32 (i32, ...)*)(i32 %conv)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %9 = load i8*, i8** %START, align 8
  %10 = load i8, i8* %9, align 1
  %conv2 = sext i8 %10 to i32
  %call3 = call i32 (i32, ...) bitcast (i32 (...)* @eoln to i32 (i32, ...)*)(i32 %conv2)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end, label %land.lhs.true.5

land.lhs.true.5:                                  ; preds = %land.lhs.true
  %11 = load i8*, i8** %START, align 8
  %12 = load i8*, i8** %ARGUMENTS.addr, align 8
  %cmp = icmp ne i8* %11, %12
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.5
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT_STREAM.addr, align 8
  %14 = load i8*, i8** %START, align 8
  %15 = load i8, i8* %14, align 1
  %conv7 = sext i8 %15 to i32
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i32 0, i32 0), i32 %conv7)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.5, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @PSEUDO_START(i8* %LABEL_NAME, i8* %ARGUMENTS, i32* %LOCATION, %struct.SYMBOL_TABLE_ENTRY** %SYM_TAB, %struct._IO_FILE* %OUTPUT_STREAM) #0 {
entry:
  %LABEL_NAME.addr = alloca i8*, align 8
  %ARGUMENTS.addr = alloca i8*, align 8
  %LOCATION.addr = alloca i32*, align 8
  %SYM_TAB.addr = alloca %struct.SYMBOL_TABLE_ENTRY**, align 8
  %OUTPUT_STREAM.addr = alloca %struct._IO_FILE*, align 8
  %TABLE_ENTRY = alloca %struct.SYMBOL_TABLE_ENTRY*, align 8
  %VALUE = alloca i32, align 4
  %START = alloca i8*, align 8
  store i8* %LABEL_NAME, i8** %LABEL_NAME.addr, align 8
  store i8* %ARGUMENTS, i8** %ARGUMENTS.addr, align 8
  store i32* %LOCATION, i32** %LOCATION.addr, align 8
  store %struct.SYMBOL_TABLE_ENTRY** %SYM_TAB, %struct.SYMBOL_TABLE_ENTRY*** %SYM_TAB.addr, align 8
  store %struct._IO_FILE* %OUTPUT_STREAM, %struct._IO_FILE** %OUTPUT_STREAM.addr, align 8
  %0 = load i32, i32* @SEEN_END_OP, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT_STREAM.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @MODULE_NAME, i32 0, i32 0))
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT_STREAM.addr, align 8
  call void (%struct.BUFFER_TYPE*, %struct._IO_FILE*, i32, ...) bitcast (void (...)* @OUTPUT_BUFFER to void (%struct.BUFFER_TYPE*, %struct._IO_FILE*, i32, ...)*)(%struct.BUFFER_TYPE* @MOD_REC_BUF, %struct._IO_FILE* %2, i32 1)
  store i32 0, i32* @LOCATION_EXCEEDS_MEM_SIZE, align 4
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT_STREAM.addr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0))
  %4 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %SYM_TAB.addr, align 8
  %call2 = call %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...) bitcast (%struct.SYMBOL_TABLE_ENTRY* (...)* @LOOK_UP_SYMBOL to %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...)*)(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @MODULE_NAME, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @MODULE_NAME, i32 0, i32 0), %struct.SYMBOL_TABLE_ENTRY** %4)
  store %struct.SYMBOL_TABLE_ENTRY* %call2, %struct.SYMBOL_TABLE_ENTRY** %TABLE_ENTRY, align 8
  %5 = load i32*, i32** %LOCATION.addr, align 8
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %TABLE_ENTRY, align 8
  %LOCATION3 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %7, i32 0, i32 2
  %8 = load i32, i32* %LOCATION3, align 4
  %sub = sub nsw i32 %6, %8
  %9 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %TABLE_ENTRY, align 8
  %LENGTH = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %9, i32 0, i32 3
  store i32 %sub, i32* %LENGTH, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load i32, i32* @SEEN_START_OP, align 4
  %cmp = icmp eq i32 %10, 1
  br i1 %cmp, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT_STREAM.addr, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.27, i32 0, i32 0))
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end
  store i32 1, i32* @SEEN_START_OP, align 4
  store i32 0, i32* @SEEN_END_OP, align 4
  %12 = load i8*, i8** %LABEL_NAME.addr, align 8
  %call7 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i32 0, i32 0)) #4
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.end.11, label %if.then.9

if.then.9:                                        ; preds = %if.end.6
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT_STREAM.addr, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.28, i32 0, i32 0))
  %14 = load i8*, i8** %LABEL_NAME.addr, align 8
  %15 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %SYM_TAB.addr, align 8
  call void (i8*, %struct.SYMBOL_TABLE_ENTRY**, ...) bitcast (void (...)* @GET_NEXT_MISSING_LABEL to void (i8*, %struct.SYMBOL_TABLE_ENTRY**, ...)*)(i8* %14, %struct.SYMBOL_TABLE_ENTRY** %15)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.end.6
  %16 = load i8*, i8** %LABEL_NAME.addr, align 8
  %17 = load i8*, i8** %LABEL_NAME.addr, align 8
  %18 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %SYM_TAB.addr, align 8
  %call12 = call %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...) bitcast (%struct.SYMBOL_TABLE_ENTRY* (...)* @LOOK_UP_SYMBOL to %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...)*)(i8* %16, i8* %17, %struct.SYMBOL_TABLE_ENTRY** %18)
  %cmp13 = icmp ne %struct.SYMBOL_TABLE_ENTRY* %call12, null
  br i1 %cmp13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.end.11
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT_STREAM.addr, align 8
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i32 0, i32 0))
  %20 = load i8*, i8** %LABEL_NAME.addr, align 8
  %call16 = call i8* @strcpy(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @MODULE_NAME, i32 0, i32 0), i8* %20) #5
  br label %if.end.42

if.else:                                          ; preds = %if.end.11
  %21 = load i8*, i8** %LABEL_NAME.addr, align 8
  %22 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %SYM_TAB.addr, align 8
  %call17 = call %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...) bitcast (%struct.SYMBOL_TABLE_ENTRY* (...)* @LOOK_UP_SYMBOL to %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...)*)(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @MODULE_NAME, i32 0, i32 0), i8* %21, %struct.SYMBOL_TABLE_ENTRY** %22)
  store %struct.SYMBOL_TABLE_ENTRY* %call17, %struct.SYMBOL_TABLE_ENTRY** %TABLE_ENTRY, align 8
  %23 = load i8*, i8** %ARGUMENTS.addr, align 8
  store i8* %23, i8** %START, align 8
  %call18 = call i32 (i8**, i32, i32, ...) bitcast (i32 (...)* @GET_NUM to i32 (i8**, i32, i32, ...)*)(i8** %START, i32 21, i32 10)
  store i32 %call18, i32* %VALUE, align 4
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT_STREAM.addr, align 8
  call void (%struct.BUFFER_TYPE*, %struct._IO_FILE*, i32, ...) bitcast (void (...)* @OUTPUT_BUFFER to void (%struct.BUFFER_TYPE*, %struct._IO_FILE*, i32, ...)*)(%struct.BUFFER_TYPE* @ERROR_REC_BUF, %struct._IO_FILE* %24, i32 1)
  %25 = load i32, i32* %VALUE, align 4
  %cmp19 = icmp slt i32 %25, 0
  br i1 %cmp19, label %if.then.20, label %if.else.22

if.then.20:                                       ; preds = %if.else
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT_STREAM.addr, align 8
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.29, i32 0, i32 0))
  br label %if.end.24

if.else.22:                                       ; preds = %if.else
  %27 = load i32, i32* %VALUE, align 4
  %28 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %TABLE_ENTRY, align 8
  %LOCATION23 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %28, i32 0, i32 2
  store i32 %27, i32* %LOCATION23, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.22, %if.then.20
  %29 = load i8*, i8** %START, align 8
  %30 = load i8, i8* %29, align 1
  %conv = sext i8 %30 to i32
  %call25 = call i32 (i32, ...) bitcast (i32 (...)* @IS_BLANK_OR_TAB to i32 (i32, ...)*)(i32 %conv)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.end.36, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.24
  %31 = load i8*, i8** %START, align 8
  %32 = load i8, i8* %31, align 1
  %conv27 = sext i8 %32 to i32
  %call28 = call i32 (i32, ...) bitcast (i32 (...)* @eoln to i32 (i32, ...)*)(i32 %conv27)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.end.36, label %land.lhs.true.30

land.lhs.true.30:                                 ; preds = %land.lhs.true
  %33 = load i8*, i8** %START, align 8
  %34 = load i8*, i8** %ARGUMENTS.addr, align 8
  %cmp31 = icmp ne i8* %33, %34
  br i1 %cmp31, label %if.then.33, label %if.end.36

if.then.33:                                       ; preds = %land.lhs.true.30
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT_STREAM.addr, align 8
  %36 = load i8*, i8** %START, align 8
  %37 = load i8, i8* %36, align 1
  %conv34 = sext i8 %37 to i32
  %call35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i32 0, i32 0), i32 %conv34)
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.33, %land.lhs.true.30, %land.lhs.true, %if.end.24
  %38 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %TABLE_ENTRY, align 8
  %MODULE = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %38, i32 0, i32 1
  %arraydecay = getelementptr inbounds [9 x i8], [9 x i8]* %MODULE, i32 0, i32 0
  %39 = load i8*, i8** %LABEL_NAME.addr, align 8
  %call37 = call i8* @strcpy(i8* %arraydecay, i8* %39) #5
  %40 = load i8*, i8** %LABEL_NAME.addr, align 8
  %call38 = call i8* @strcpy(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @MODULE_NAME, i32 0, i32 0), i8* %40) #5
  %41 = load i8*, i8** %LABEL_NAME.addr, align 8
  %call39 = call i8* @strcpy(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @MAIN_ROUTINE, i32 0, i32 0), i8* %41) #5
  %42 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %TABLE_ENTRY, align 8
  %LOCATION40 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %42, i32 0, i32 2
  %43 = load i32, i32* %LOCATION40, align 4
  %44 = load i32*, i32** %LOCATION.addr, align 8
  store i32 %43, i32* %44, align 4
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT_STREAM.addr, align 8
  %call41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @MODULE_NAME, i32 0, i32 0))
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.36, %if.then.14
  ret void
}

declare i32 @GET_NUM(...) #1

; Function Attrs: nounwind uwtable
define void @PSEUDO_WORD(i8* %LABEL_NAME, i8* %ARGUMENTS, i32* %LOCATION, %struct.SYMBOL_TABLE_ENTRY** %SYM_TAB, %struct._IO_FILE* %OUTPUT_STREAM) #0 {
entry:
  %LABEL_NAME.addr = alloca i8*, align 8
  %ARGUMENTS.addr = alloca i8*, align 8
  %LOCATION.addr = alloca i32*, align 8
  %SYM_TAB.addr = alloca %struct.SYMBOL_TABLE_ENTRY**, align 8
  %OUTPUT_STREAM.addr = alloca %struct._IO_FILE*, align 8
  %VALUE = alloca i32, align 4
  %START = alloca i8*, align 8
  %ABS_VAL = alloca i32, align 4
  store i8* %LABEL_NAME, i8** %LABEL_NAME.addr, align 8
  store i8* %ARGUMENTS, i8** %ARGUMENTS.addr, align 8
  store i32* %LOCATION, i32** %LOCATION.addr, align 8
  store %struct.SYMBOL_TABLE_ENTRY** %SYM_TAB, %struct.SYMBOL_TABLE_ENTRY*** %SYM_TAB.addr, align 8
  store %struct._IO_FILE* %OUTPUT_STREAM, %struct._IO_FILE** %OUTPUT_STREAM.addr, align 8
  store i32 1, i32* %ABS_VAL, align 4
  %0 = load i8*, i8** %ARGUMENTS.addr, align 8
  store i8* %0, i8** %START, align 8
  %1 = load i32*, i32** %LOCATION.addr, align 8
  %2 = load i32, i32* %1, align 4
  %3 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %SYM_TAB.addr, align 8
  %call = call i32 (i8**, i32, i32, %struct.SYMBOL_TABLE_ENTRY**, i32*, ...) bitcast (i32 (...)* @GET_EXPRESSION to i32 (i8**, i32, i32, %struct.SYMBOL_TABLE_ENTRY**, i32*, ...)*)(i8** %START, i32 24, i32 %2, %struct.SYMBOL_TABLE_ENTRY** %3, i32* %ABS_VAL)
  store i32 %call, i32* %VALUE, align 4
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT_STREAM.addr, align 8
  call void (%struct.BUFFER_TYPE*, %struct._IO_FILE*, i32, ...) bitcast (void (...)* @OUTPUT_BUFFER to void (%struct.BUFFER_TYPE*, %struct._IO_FILE*, i32, ...)*)(%struct.BUFFER_TYPE* @ERROR_REC_BUF, %struct._IO_FILE* %4, i32 1)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT_STREAM.addr, align 8
  %6 = load i32*, i32** %LOCATION.addr, align 8
  %7 = load i32, i32* %6, align 4
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0), i32 %7)
  %8 = load i32, i32* %VALUE, align 4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT_STREAM.addr, align 8
  call void (i32, i32, i32, %struct._IO_FILE*, ...) bitcast (void (...)* @PRT_NUM to void (i32, i32, i32, %struct._IO_FILE*, ...)*)(i32 %8, i32 16, i32 6, %struct._IO_FILE* %9)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT_STREAM.addr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  %11 = load i32*, i32** %LOCATION.addr, align 8
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT_STREAM.addr, align 8
  call void (i32*, i32, %struct._IO_FILE*, ...) bitcast (void (...)* @CHANGE_LOCATION to void (i32*, i32, %struct._IO_FILE*, ...)*)(i32* %11, i32 3, %struct._IO_FILE* %12)
  %13 = load i8*, i8** %START, align 8
  %14 = load i8, i8* %13, align 1
  %conv = sext i8 %14 to i32
  %call3 = call i32 (i32, ...) bitcast (i32 (...)* @IS_BLANK_OR_TAB to i32 (i32, ...)*)(i32 %conv)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %15 = load i8*, i8** %START, align 8
  %16 = load i8, i8* %15, align 1
  %conv4 = sext i8 %16 to i32
  %call5 = call i32 (i32, ...) bitcast (i32 (...)* @eoln to i32 (i32, ...)*)(i32 %conv4)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end, label %land.lhs.true.7

land.lhs.true.7:                                  ; preds = %land.lhs.true
  %17 = load i8*, i8** %START, align 8
  %18 = load i8*, i8** %ARGUMENTS.addr, align 8
  %cmp = icmp ne i8* %17, %18
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.7
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT_STREAM.addr, align 8
  %20 = load i8*, i8** %START, align 8
  %21 = load i8, i8* %20, align 1
  %conv9 = sext i8 %21 to i32
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i32 0, i32 0), i32 %conv9)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.7, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @DO_PSEUDO(i32 %WHICH_PSEUDO, i8* %LABEL_NAME, i8* %ARGUMENTS, i32* %LOCATION, %struct.SYMBOL_TABLE_ENTRY** %SYM_TAB, %struct._IO_FILE* %OUTPUT_STREAM) #0 {
entry:
  %WHICH_PSEUDO.addr = alloca i32, align 4
  %LABEL_NAME.addr = alloca i8*, align 8
  %ARGUMENTS.addr = alloca i8*, align 8
  %LOCATION.addr = alloca i32*, align 8
  %SYM_TAB.addr = alloca %struct.SYMBOL_TABLE_ENTRY**, align 8
  %OUTPUT_STREAM.addr = alloca %struct._IO_FILE*, align 8
  store i32 %WHICH_PSEUDO, i32* %WHICH_PSEUDO.addr, align 4
  store i8* %LABEL_NAME, i8** %LABEL_NAME.addr, align 8
  store i8* %ARGUMENTS, i8** %ARGUMENTS.addr, align 8
  store i32* %LOCATION, i32** %LOCATION.addr, align 8
  store %struct.SYMBOL_TABLE_ENTRY** %SYM_TAB, %struct.SYMBOL_TABLE_ENTRY*** %SYM_TAB.addr, align 8
  store %struct._IO_FILE* %OUTPUT_STREAM, %struct._IO_FILE** %OUTPUT_STREAM.addr, align 8
  %0 = load i32, i32* %WHICH_PSEUDO.addr, align 4
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.1
    i32 3, label %sw.bb.2
    i32 4, label %sw.bb.3
    i32 5, label %sw.bb.4
    i32 6, label %sw.bb.5
    i32 7, label %sw.bb.6
    i32 8, label %sw.bb.7
    i32 9, label %sw.bb.8
    i32 10, label %sw.bb.9
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i8*, i8** %LABEL_NAME.addr, align 8
  %2 = load i8*, i8** %ARGUMENTS.addr, align 8
  %3 = load i32*, i32** %LOCATION.addr, align 8
  %4 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %SYM_TAB.addr, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT_STREAM.addr, align 8
  call void @PSEUDO_BYTE(i8* %1, i8* %2, i32* %3, %struct.SYMBOL_TABLE_ENTRY** %4, %struct._IO_FILE* %5)
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %6 = load i8*, i8** %LABEL_NAME.addr, align 8
  %7 = load i8*, i8** %ARGUMENTS.addr, align 8
  %8 = load i32*, i32** %LOCATION.addr, align 8
  %9 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %SYM_TAB.addr, align 8
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT_STREAM.addr, align 8
  call void @PSEUDO_CSECT(i8* %6, i8* %7, i32* %8, %struct.SYMBOL_TABLE_ENTRY** %9, %struct._IO_FILE* %10)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %11 = load i8*, i8** %LABEL_NAME.addr, align 8
  %12 = load i8*, i8** %ARGUMENTS.addr, align 8
  %13 = load i32*, i32** %LOCATION.addr, align 8
  %14 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %SYM_TAB.addr, align 8
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT_STREAM.addr, align 8
  call void @PSEUDO_END(i8* %11, i8* %12, i32* %13, %struct.SYMBOL_TABLE_ENTRY** %14, %struct._IO_FILE* %15)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %16 = load i8*, i8** %LABEL_NAME.addr, align 8
  %17 = load i8*, i8** %ARGUMENTS.addr, align 8
  %18 = load i32*, i32** %LOCATION.addr, align 8
  %19 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %SYM_TAB.addr, align 8
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT_STREAM.addr, align 8
  call void @PSEUDO_EQU(i8* %16, i8* %17, i32* %18, %struct.SYMBOL_TABLE_ENTRY** %19, %struct._IO_FILE* %20)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %21 = load i8*, i8** %LABEL_NAME.addr, align 8
  %22 = load i8*, i8** %ARGUMENTS.addr, align 8
  %23 = load i32*, i32** %LOCATION.addr, align 8
  %24 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %SYM_TAB.addr, align 8
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT_STREAM.addr, align 8
  call void @PSEUDO_EXTDEF(i8* %21, i8* %22, i32* %23, %struct.SYMBOL_TABLE_ENTRY** %24, %struct._IO_FILE* %25)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %26 = load i8*, i8** %LABEL_NAME.addr, align 8
  %27 = load i8*, i8** %ARGUMENTS.addr, align 8
  %28 = load i32*, i32** %LOCATION.addr, align 8
  %29 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %SYM_TAB.addr, align 8
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT_STREAM.addr, align 8
  call void @PSEUDO_EXTREF(i8* %26, i8* %27, i32* %28, %struct.SYMBOL_TABLE_ENTRY** %29, %struct._IO_FILE* %30)
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %31 = load i8*, i8** %LABEL_NAME.addr, align 8
  %32 = load i8*, i8** %ARGUMENTS.addr, align 8
  %33 = load i32*, i32** %LOCATION.addr, align 8
  %34 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %SYM_TAB.addr, align 8
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT_STREAM.addr, align 8
  call void @PSEUDO_RESB(i8* %31, i8* %32, i32* %33, %struct.SYMBOL_TABLE_ENTRY** %34, %struct._IO_FILE* %35)
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %36 = load i8*, i8** %LABEL_NAME.addr, align 8
  %37 = load i8*, i8** %ARGUMENTS.addr, align 8
  %38 = load i32*, i32** %LOCATION.addr, align 8
  %39 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %SYM_TAB.addr, align 8
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT_STREAM.addr, align 8
  call void @PSEUDO_RESW(i8* %36, i8* %37, i32* %38, %struct.SYMBOL_TABLE_ENTRY** %39, %struct._IO_FILE* %40)
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  %41 = load i8*, i8** %LABEL_NAME.addr, align 8
  %42 = load i8*, i8** %ARGUMENTS.addr, align 8
  %43 = load i32*, i32** %LOCATION.addr, align 8
  %44 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %SYM_TAB.addr, align 8
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT_STREAM.addr, align 8
  call void @PSEUDO_START(i8* %41, i8* %42, i32* %43, %struct.SYMBOL_TABLE_ENTRY** %44, %struct._IO_FILE* %45)
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %46 = load i8*, i8** %LABEL_NAME.addr, align 8
  %47 = load i8*, i8** %ARGUMENTS.addr, align 8
  %48 = load i32*, i32** %LOCATION.addr, align 8
  %49 = load %struct.SYMBOL_TABLE_ENTRY**, %struct.SYMBOL_TABLE_ENTRY*** %SYM_TAB.addr, align 8
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %OUTPUT_STREAM.addr, align 8
  call void @PSEUDO_WORD(i8* %46, i8* %47, i32* %48, %struct.SYMBOL_TABLE_ENTRY** %49, %struct._IO_FILE* %50)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.9, %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
