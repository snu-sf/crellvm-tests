; ModuleID = './MultiSource.Benchmarks.Prolangs-C/103.simulator.debugger.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SYMBOL_TABLE_ENTRY = type { [9 x i8], [9 x i8], i32, i32, i32, %struct.SYMBOL_TABLE_ENTRY* }
%struct.COMMAND_TYPE = type { i8*, i8*, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@START_ADDRESS = global i32 0, align 4
@RETURN_STATUS = global i32 1, align 4
@TYPE_OUT_MODE = global [6 x i8] c"Hex\00\00\00", align 1
@NUM_BREAK_POINTS = global i32 0, align 4
@TRACE = global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Expected an decimal, found '%s'. Ignoring command.\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"Expected an identifier, found '%s'. Ignoring command.\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"_GLOBAL \00", align 1
@SYM_TAB = common global %struct.SYMBOL_TABLE_ENTRY* null, align 8
@.str.3 = private unnamed_addr constant [51 x i8] c"Unknown identifier, found '%s'. Ignoring command.\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"Expected an type-in mode specifier ($D or $S).\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"Expected an type-in mode specifier ($D).\0A\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"Expected an type-in mode specifier ($D, $S or $R).\0A\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"Expected an type-in mode specifier ($C, $D, or $S).\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"   Found $%c. Ignoring command.\0A\00", align 1
@.str.9 = private unnamed_addr constant [56 x i8] c"Expected an hexidecimal, found '%s'. Ignoring command.\0A\00", align 1
@.str.10 = private unnamed_addr constant [57 x i8] c"Expected a valid register name (A,X,L,B,S,T,SW, or PC).\0A\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"   Found %s. Ignoring command.\0A\00", align 1
@.str.12 = private unnamed_addr constant [58 x i8] c"Expected end of statement, found '%s'. Ignoring command.\0A\00", align 1
@REGISTER = external global [10 x i32], align 16
@.str.13 = private unnamed_addr constant [5 x i8] c"Set \00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"Register %s = \00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1
@.str.17 = private unnamed_addr constant [36 x i8] c" is a legal memory [word] address.\0A\00", align 1
@MEMORY = external global i8*, align 8
@.str.18 = private unnamed_addr constant [15 x i8] c"Location %s = \00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"No break points set.\0A\00", align 1
@BREAK_POINTS = common global [17 x i32] zeroinitializer, align 16
@.str.21 = private unnamed_addr constant [6 x i8] c"Set B\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"= \00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"Address specified \00", align 1
@.str.24 = private unnamed_addr constant [36 x i8] c" out of range. No break point set.\0A\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"All \00", align 1
@.str.26 = private unnamed_addr constant [26 x i8] c" breakpoints are in use.\0A\00", align 1
@SORTED_BREAK_POINTS = common global [17 x i32] zeroinitializer, align 16
@.str.27 = private unnamed_addr constant [30 x i8] c" is not a legal break point.\0A\00", align 1
@.str.28 = private unnamed_addr constant [23 x i8] c"Expected a number 0 - \00", align 1
@.str.29 = private unnamed_addr constant [20 x i8] c". Command ignored.\0A\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"Break point \00", align 1
@.str.31 = private unnamed_addr constant [31 x i8] c" is not set. Command ignored.\0A\00", align 1
@.str.32 = private unnamed_addr constant [21 x i8] c"Removed break point \00", align 1
@.str.33 = private unnamed_addr constant [28 x i8] c"Break point encountered at \00", align 1
@.str.34 = private unnamed_addr constant [40 x i8] c"Can not continue. Instruction ignored.\0A\00", align 1
@.str.35 = private unnamed_addr constant [19 x i8] c"List of commands:\0A\00", align 1
@.str.36 = private unnamed_addr constant [41 x i8] c"   Short      Long            Function\0A\0A\00", align 1
@.str.37 = private unnamed_addr constant [58 x i8] c"   B<addr>    BREAK<addr>     Set break point at <addr>.\0A\00", align 1
@.str.38 = private unnamed_addr constant [58 x i8] c"   B?         BREAK?          List out the break points.\0A\00", align 1
@.str.39 = private unnamed_addr constant [52 x i8] c"   H          HELP            Displays this table.\0A\00", align 1
@.str.40 = private unnamed_addr constant [74 x i8] c"   L<loc>     LOC<loc>        Examines contents of memory and registers.\0A\00", align 1
@.str.41 = private unnamed_addr constant [74 x i8] c"   L<loc>=<v> LOC<loc>=<v>    Examines contents of memory and registers.\0A\00", align 1
@.str.42 = private unnamed_addr constant [50 x i8] c"   M<mode>    MODE<mode>      Set type out mode.\0A\00", align 1
@.str.43 = private unnamed_addr constant [57 x i8] c"   P          PROCEED         Proceed from break point.\0A\00", align 1
@.str.44 = private unnamed_addr constant [46 x i8] c"   Q          QUIT            Exit Debugger.\0A\00", align 1
@.str.45 = private unnamed_addr constant [63 x i8] c"   R          RUN             Start execution at entry point.\0A\00", align 1
@.str.46 = private unnamed_addr constant [56 x i8] c"   RB<num>    RESET<num>      Remve break point <num>.\0A\00", align 1
@.str.47 = private unnamed_addr constant [56 x i8] c"   S          STEP            Execute one instruction.\0A\00", align 1
@.str.48 = private unnamed_addr constant [52 x i8] c"   T          TRACE           Trace the execution.\0A\00", align 1
@.str.49 = private unnamed_addr constant [59 x i8] c"   U          UNTRACE         Stop tracing the execution.\0A\00", align 1
@.str.50 = private unnamed_addr constant [35 x i8] c"<addr> = memory address or label.\0A\00", align 1
@.str.51 = private unnamed_addr constant [45 x i8] c"<loc>  = memory address, label or register.\0A\00", align 1
@.str.52 = private unnamed_addr constant [60 x i8] c"<mode> = H (hexidecimal), D (decimal), or I (instruction).\0A\00", align 1
@.str.53 = private unnamed_addr constant [63 x i8] c"<v>    = hexidecimal number, decimal number, or 1 character.\0A\0A\00", align 1
@.str.54 = private unnamed_addr constant [22 x i8] c"Trace is already on.\0A\00", align 1
@.str.55 = private unnamed_addr constant [18 x i8] c"Trace is now on.\0A\00", align 1
@.str.56 = private unnamed_addr constant [23 x i8] c"Trace is already off.\0A\00", align 1
@.str.57 = private unnamed_addr constant [19 x i8] c"Trace is now off.\0A\00", align 1
@.str.58 = private unnamed_addr constant [46 x i8] c"Unexpected end of command. Ignoring command.\0A\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"Hex\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"Dec\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"Instr\00", align 1
@.str.62 = private unnamed_addr constant [62 x i8] c"Expected valid mode (H,D, or I). Found %s. Ignoring command.\0A\00", align 1
@.str.63 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"STEP\00", align 1
@.str.65 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.66 = private unnamed_addr constant [6 x i8] c"BREAK\00", align 1
@.str.67 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.68 = private unnamed_addr constant [4 x i8] c"LOC\00", align 1
@.str.69 = private unnamed_addr constant [3 x i8] c"RB\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"RESET\00", align 1
@.str.71 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.72 = private unnamed_addr constant [4 x i8] c"RUN\00", align 1
@.str.73 = private unnamed_addr constant [2 x i8] c"H\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"HELP\00", align 1
@.str.75 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.76 = private unnamed_addr constant [5 x i8] c"MODE\00", align 1
@.str.77 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.78 = private unnamed_addr constant [8 x i8] c"PROCEED\00", align 1
@.str.79 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.80 = private unnamed_addr constant [6 x i8] c"TRACE\00", align 1
@.str.81 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.82 = private unnamed_addr constant [8 x i8] c"UNTRACE\00", align 1
@.str.83 = private unnamed_addr constant [2 x i8] c"Q\00", align 1
@.str.84 = private unnamed_addr constant [5 x i8] c"QUIT\00", align 1
@COMMANDS = global [11 x %struct.COMMAND_TYPE] [%struct.COMMAND_TYPE { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.64, i32 0, i32 0), i32 1 }, %struct.COMMAND_TYPE { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.66, i32 0, i32 0), i32 2 }, %struct.COMMAND_TYPE { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i32 0, i32 0), i32 3 }, %struct.COMMAND_TYPE { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i32 0, i32 0), i32 4 }, %struct.COMMAND_TYPE { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i32 0, i32 0), i32 5 }, %struct.COMMAND_TYPE { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.74, i32 0, i32 0), i32 6 }, %struct.COMMAND_TYPE { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.76, i32 0, i32 0), i32 7 }, %struct.COMMAND_TYPE { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.78, i32 0, i32 0), i32 8 }, %struct.COMMAND_TYPE { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.80, i32 0, i32 0), i32 9 }, %struct.COMMAND_TYPE { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.82, i32 0, i32 0), i32 10 }, %struct.COMMAND_TYPE { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.84, i32 0, i32 0), i32 11 }], align 16
@.str.85 = private unnamed_addr constant [5 x i8] c"%s> \00", align 1
@stdin = external global %struct._IO_FILE*, align 8
@.str.86 = private unnamed_addr constant [43 x i8] c"'%s' is not a legal command. Ignoring it.\0A\00", align 1
@.str.87 = private unnamed_addr constant [43 x i8] c"Type HELP for the list of legal commands.\0A\00", align 1
@.str.88 = private unnamed_addr constant [13 x i8] c"error code =\00", align 1
@.str.89 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.90 = private unnamed_addr constant [22 x i8] c"Illegal instruction.\0A\00", align 1
@.str.91 = private unnamed_addr constant [38 x i8] c"Privileged instruction in user mode.\0A\00", align 1
@.str.92 = private unnamed_addr constant [23 x i8] c"Address out of range.\0A\00", align 1
@.str.93 = private unnamed_addr constant [30 x i8] c"Memory-protection violation.\0A\00", align 1
@.str.94 = private unnamed_addr constant [21 x i8] c"Aritmetic overflow.\0A\00", align 1
@.str.95 = private unnamed_addr constant [13 x i8] c"Page fault.\0A\00", align 1
@.str.96 = private unnamed_addr constant [16 x i8] c"Segment fault.\0A\00", align 1
@.str.97 = private unnamed_addr constant [31 x i8] c"Segment-protection violation.\0A\00", align 1
@.str.98 = private unnamed_addr constant [26 x i8] c"Segment length exceeded.\0A\00", align 1
@MAIN_ROUTINE = common global [9 x i8] zeroinitializer, align 1

; Function Attrs: nounwind uwtable
define i32 @IS_PREFIX_TO(i8* %PREFIX, i8* %WORD) #0 {
entry:
  %retval = alloca i32, align 4
  %PREFIX.addr = alloca i8*, align 8
  %WORD.addr = alloca i8*, align 8
  %COUNT = alloca i32, align 4
  %LEN = alloca i32, align 4
  store i8* %PREFIX, i8** %PREFIX.addr, align 8
  store i8* %WORD, i8** %WORD.addr, align 8
  %0 = load i8*, i8** %PREFIX.addr, align 8
  %call = call i64 @strlen(i8* %0) #4
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %LEN, align 4
  %conv1 = sext i32 %conv to i64
  %1 = load i8*, i8** %WORD.addr, align 8
  %call2 = call i64 @strlen(i8* %1) #4
  %cmp = icmp ugt i64 %conv1, %call2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %COUNT, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %COUNT, align 4
  %3 = load i32, i32* %LEN, align 4
  %cmp4 = icmp slt i32 %2, %3
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %COUNT, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i8*, i8** %PREFIX.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %conv6 = sext i8 %6 to i32
  %7 = load i32, i32* %COUNT, align 4
  %idxprom7 = sext i32 %7 to i64
  %8 = load i8*, i8** %WORD.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %8, i64 %idxprom7
  %9 = load i8, i8* %arrayidx8, align 1
  %conv9 = sext i8 %9 to i32
  %cmp10 = icmp ne i32 %conv6, %conv9
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end.13:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.13
  %10 = load i32, i32* %COUNT, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %COUNT, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.12, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #1

; Function Attrs: nounwind uwtable
define void @REMOVE_WS(i8** %LINE) #0 {
entry:
  %LINE.addr = alloca i8**, align 8
  store i8** %LINE, i8*** %LINE.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8**, i8*** %LINE.addr, align 8
  %1 = load i8*, i8** %0, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 32
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %3 = load i8**, i8*** %LINE.addr, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = load i8, i8* %4, align 1
  %conv2 = sext i8 %5 to i32
  %cmp3 = icmp eq i32 %conv2, 9
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %6 = phi i1 [ true, %while.cond ], [ %cmp3, %lor.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %7 = load i8**, i8*** %LINE.addr, align 8
  %8 = load i8*, i8** %7, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %7, align 8
  br label %while.cond

while.end:                                        ; preds = %lor.end
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @TYPE_IN(i8** %COMMAND, i32* %LEGAL, i32 %RESULT_TYPE) #0 {
entry:
  %retval = alloca i32, align 4
  %COMMAND.addr = alloca i8**, align 8
  %LEGAL.addr = alloca i32*, align 8
  %RESULT_TYPE.addr = alloca i32, align 4
  %VALUE = alloca i32, align 4
  %LOOP = alloca i32, align 4
  %SYMBOL = alloca [9 x i8], align 1
  %SYMB = alloca %struct.SYMBOL_TABLE_ENTRY*, align 8
  store i8** %COMMAND, i8*** %COMMAND.addr, align 8
  store i32* %LEGAL, i32** %LEGAL.addr, align 8
  store i32 %RESULT_TYPE, i32* %RESULT_TYPE.addr, align 4
  store i32 0, i32* %VALUE, align 4
  %0 = load i32*, i32** %LEGAL.addr, align 8
  store i32 1, i32* %0, align 4
  %1 = load i8**, i8*** %COMMAND.addr, align 8
  call void @REMOVE_WS(i8** %1)
  %2 = load i8**, i8*** %COMMAND.addr, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = load i8, i8* %3, align 1
  %conv = sext i8 %4 to i32
  %cmp = icmp eq i32 %conv, 36
  br i1 %cmp, label %if.then, label %if.else.86

if.then:                                          ; preds = %entry
  %5 = load i8**, i8*** %COMMAND.addr, align 8
  %6 = load i8*, i8** %5, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %5, align 8
  %7 = load i8**, i8*** %COMMAND.addr, align 8
  %8 = load i8*, i8** %7, align 8
  %9 = load i8, i8* %8, align 1
  %conv2 = sext i8 %9 to i32
  switch i32 %conv2, label %sw.default [
    i32 68, label %sw.bb
    i32 67, label %sw.bb.13
    i32 83, label %sw.bb.27
  ]

sw.bb:                                            ; preds = %if.then
  %10 = load i8**, i8*** %COMMAND.addr, align 8
  %11 = load i8*, i8** %10, align 8
  %incdec.ptr3 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr3, i8** %10, align 8
  %12 = load i8**, i8*** %COMMAND.addr, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = load i8, i8* %13, align 1
  %call = call i32 @CHAR_TO_DIGIT(i8 signext %14, i32 10)
  %cmp4 = icmp eq i32 %call, -1
  br i1 %cmp4, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %sw.bb
  %15 = load i8**, i8*** %COMMAND.addr, align 8
  %16 = load i8*, i8** %15, align 8
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i32 0, i32 0), i8* %16)
  %17 = load i32*, i32** %LEGAL.addr, align 8
  store i32 0, i32* %17, align 4
  br label %if.end

if.else:                                          ; preds = %sw.bb
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else
  %18 = load i8**, i8*** %COMMAND.addr, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = load i8, i8* %19, align 1
  %call8 = call i32 @CHAR_TO_DIGIT(i8 signext %20, i32 10)
  %cmp9 = icmp ne i32 %call8, -1
  br i1 %cmp9, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %21 = load i32, i32* %VALUE, align 4
  %mul = mul nsw i32 %21, 10
  %22 = load i8**, i8*** %COMMAND.addr, align 8
  %23 = load i8*, i8** %22, align 8
  %24 = load i8, i8* %23, align 1
  %call11 = call i32 @CHAR_TO_DIGIT(i8 signext %24, i32 10)
  %add = add nsw i32 %mul, %call11
  store i32 %add, i32* %VALUE, align 4
  %25 = load i8**, i8*** %COMMAND.addr, align 8
  %26 = load i8*, i8** %25, align 8
  %incdec.ptr12 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr12, i8** %25, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end, %if.then.6
  br label %sw.epilog

sw.bb.13:                                         ; preds = %if.then
  %27 = load i32, i32* %RESULT_TYPE.addr, align 4
  %cmp14 = icmp ne i32 %27, 3
  br i1 %cmp14, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %sw.bb.13
  %28 = load i32*, i32** %LEGAL.addr, align 8
  store i32 0, i32* %28, align 4
  br label %if.end.26

if.else.17:                                       ; preds = %sw.bb.13
  %29 = load i8**, i8*** %COMMAND.addr, align 8
  %30 = load i8*, i8** %29, align 8
  %incdec.ptr18 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr18, i8** %29, align 8
  %31 = load i8**, i8*** %COMMAND.addr, align 8
  %32 = load i8*, i8** %31, align 8
  %33 = load i8, i8* %32, align 1
  %conv19 = sext i8 %33 to i32
  store i32 %conv19, i32* %VALUE, align 4
  %34 = load i8**, i8*** %COMMAND.addr, align 8
  %35 = load i8*, i8** %34, align 8
  %36 = load i8, i8* %35, align 1
  %conv20 = sext i8 %36 to i32
  %cmp21 = icmp ne i32 %conv20, 0
  br i1 %cmp21, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %if.else.17
  %37 = load i8**, i8*** %COMMAND.addr, align 8
  %38 = load i8*, i8** %37, align 8
  %incdec.ptr24 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr24, i8** %37, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %if.else.17
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.then.16
  br label %sw.epilog

sw.bb.27:                                         ; preds = %if.then
  %39 = load i32, i32* %RESULT_TYPE.addr, align 4
  %cmp28 = icmp eq i32 %39, 2
  br i1 %cmp28, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %sw.bb.27
  %40 = load i32*, i32** %LEGAL.addr, align 8
  store i32 0, i32* %40, align 4
  br label %if.end.71

if.else.31:                                       ; preds = %sw.bb.27
  %41 = load i8**, i8*** %COMMAND.addr, align 8
  %42 = load i8*, i8** %41, align 8
  %incdec.ptr32 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr32, i8** %41, align 8
  %43 = load i8**, i8*** %COMMAND.addr, align 8
  call void @REMOVE_WS(i8** %43)
  %44 = load i8**, i8*** %COMMAND.addr, align 8
  %45 = load i8*, i8** %44, align 8
  %46 = load i8, i8* %45, align 1
  %conv33 = sext i8 %46 to i32
  %cmp34 = icmp sge i32 %conv33, 65
  br i1 %cmp34, label %land.lhs.true, label %if.then.39

land.lhs.true:                                    ; preds = %if.else.31
  %47 = load i8**, i8*** %COMMAND.addr, align 8
  %48 = load i8*, i8** %47, align 8
  %49 = load i8, i8* %48, align 1
  %conv36 = sext i8 %49 to i32
  %cmp37 = icmp sle i32 %conv36, 90
  br i1 %cmp37, label %if.else.41, label %if.then.39

if.then.39:                                       ; preds = %land.lhs.true, %if.else.31
  %50 = load i8**, i8*** %COMMAND.addr, align 8
  %51 = load i8*, i8** %50, align 8
  %call40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i32 0, i32 0), i8* %51)
  %52 = load i32*, i32** %LEGAL.addr, align 8
  store i32 0, i32* %52, align 4
  store i32 0, i32* %retval
  br label %return

if.else.41:                                       ; preds = %land.lhs.true
  store i32 0, i32* %LOOP, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.41
  %53 = load i32, i32* %LOOP, align 4
  %cmp42 = icmp slt i32 %53, 8
  br i1 %cmp42, label %land.rhs, label %land.end.51

land.rhs:                                         ; preds = %for.cond
  %54 = load i8**, i8*** %COMMAND.addr, align 8
  %55 = load i8*, i8** %54, align 8
  %56 = load i8, i8* %55, align 1
  %conv44 = sext i8 %56 to i32
  %cmp45 = icmp sge i32 %conv44, 65
  br i1 %cmp45, label %land.rhs.47, label %land.end

land.rhs.47:                                      ; preds = %land.rhs
  %57 = load i8**, i8*** %COMMAND.addr, align 8
  %58 = load i8*, i8** %57, align 8
  %59 = load i8, i8* %58, align 1
  %conv48 = sext i8 %59 to i32
  %cmp49 = icmp sle i32 %conv48, 90
  br label %land.end

land.end:                                         ; preds = %land.rhs.47, %land.rhs
  %60 = phi i1 [ false, %land.rhs ], [ %cmp49, %land.rhs.47 ]
  br label %land.end.51

land.end.51:                                      ; preds = %land.end, %for.cond
  %61 = phi i1 [ false, %for.cond ], [ %60, %land.end ]
  br i1 %61, label %for.body, label %for.end

for.body:                                         ; preds = %land.end.51
  %62 = load i8**, i8*** %COMMAND.addr, align 8
  %63 = load i8*, i8** %62, align 8
  %64 = load i8, i8* %63, align 1
  %65 = load i32, i32* %LOOP, align 4
  %idxprom = sext i32 %65 to i64
  %arrayidx = getelementptr inbounds [9 x i8], [9 x i8]* %SYMBOL, i32 0, i64 %idxprom
  store i8 %64, i8* %arrayidx, align 1
  %66 = load i8**, i8*** %COMMAND.addr, align 8
  %67 = load i8*, i8** %66, align 8
  %incdec.ptr52 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %incdec.ptr52, i8** %66, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %68 = load i32, i32* %LOOP, align 4
  %inc = add nsw i32 %68, 1
  store i32 %inc, i32* %LOOP, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end.51
  br label %for.cond.53

for.cond.53:                                      ; preds = %for.inc.59, %for.end
  %69 = load i32, i32* %LOOP, align 4
  %cmp54 = icmp slt i32 %69, 8
  br i1 %cmp54, label %for.body.56, label %for.end.61

for.body.56:                                      ; preds = %for.cond.53
  %70 = load i32, i32* %LOOP, align 4
  %idxprom57 = sext i32 %70 to i64
  %arrayidx58 = getelementptr inbounds [9 x i8], [9 x i8]* %SYMBOL, i32 0, i64 %idxprom57
  store i8 32, i8* %arrayidx58, align 1
  br label %for.inc.59

for.inc.59:                                       ; preds = %for.body.56
  %71 = load i32, i32* %LOOP, align 4
  %inc60 = add nsw i32 %71, 1
  store i32 %inc60, i32* %LOOP, align 4
  br label %for.cond.53

for.end.61:                                       ; preds = %for.cond.53
  %arrayidx62 = getelementptr inbounds [9 x i8], [9 x i8]* %SYMBOL, i32 0, i64 8
  store i8 0, i8* %arrayidx62, align 1
  %arraydecay = getelementptr inbounds [9 x i8], [9 x i8]* %SYMBOL, i32 0, i32 0
  %call63 = call %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...) bitcast (%struct.SYMBOL_TABLE_ENTRY* (...)* @LOOK_UP_SYMBOL to %struct.SYMBOL_TABLE_ENTRY* (i8*, i8*, %struct.SYMBOL_TABLE_ENTRY**, ...)*)(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* %arraydecay, %struct.SYMBOL_TABLE_ENTRY** @SYM_TAB)
  store %struct.SYMBOL_TABLE_ENTRY* %call63, %struct.SYMBOL_TABLE_ENTRY** %SYMB, align 8
  %72 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %SYMB, align 8
  %cmp64 = icmp eq %struct.SYMBOL_TABLE_ENTRY* %72, null
  br i1 %cmp64, label %if.then.66, label %if.end.69

if.then.66:                                       ; preds = %for.end.61
  %arraydecay67 = getelementptr inbounds [9 x i8], [9 x i8]* %SYMBOL, i32 0, i32 0
  %call68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i32 0, i32 0), i8* %arraydecay67)
  %73 = load i32*, i32** %LEGAL.addr, align 8
  store i32 0, i32* %73, align 4
  store i32 0, i32* %retval
  br label %return

if.end.69:                                        ; preds = %for.end.61
  %74 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %SYMB, align 8
  %LOCATION = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %74, i32 0, i32 2
  %75 = load i32, i32* %LOCATION, align 4
  store i32 %75, i32* %VALUE, align 4
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %if.then.30
  br label %sw.epilog

sw.default:                                       ; preds = %if.then
  %76 = load i32*, i32** %LEGAL.addr, align 8
  store i32 0, i32* %76, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.71, %if.end.26, %if.end
  %77 = load i32*, i32** %LEGAL.addr, align 8
  %78 = load i32, i32* %77, align 4
  %tobool = icmp ne i32 %78, 0
  br i1 %tobool, label %if.end.85, label %if.then.72

if.then.72:                                       ; preds = %sw.epilog
  %79 = load i32, i32* %RESULT_TYPE.addr, align 4
  switch i32 %79, label %sw.default.81 [
    i32 0, label %sw.bb.73
    i32 2, label %sw.bb.75
    i32 1, label %sw.bb.77
    i32 3, label %sw.bb.79
  ]

sw.bb.73:                                         ; preds = %if.then.72
  %call74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i32 0, i32 0))
  br label %sw.epilog.82

sw.bb.75:                                         ; preds = %if.then.72
  %call76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i32 0, i32 0))
  br label %sw.epilog.82

sw.bb.77:                                         ; preds = %if.then.72
  %call78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i32 0, i32 0))
  br label %sw.epilog.82

sw.bb.79:                                         ; preds = %if.then.72
  %call80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i32 0, i32 0))
  br label %sw.epilog.82

sw.default.81:                                    ; preds = %if.then.72
  br label %sw.epilog.82

sw.epilog.82:                                     ; preds = %sw.default.81, %sw.bb.79, %sw.bb.77, %sw.bb.75, %sw.bb.73
  %80 = load i8**, i8*** %COMMAND.addr, align 8
  %81 = load i8*, i8** %80, align 8
  %82 = load i8, i8* %81, align 1
  %conv83 = sext i8 %82 to i32
  %call84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i32 0, i32 0), i32 %conv83)
  br label %if.end.85

if.end.85:                                        ; preds = %sw.epilog.82, %sw.epilog
  br label %if.end.104

if.else.86:                                       ; preds = %entry
  %83 = load i8**, i8*** %COMMAND.addr, align 8
  %84 = load i8*, i8** %83, align 8
  %85 = load i8, i8* %84, align 1
  %call87 = call i32 @CHAR_TO_DIGIT(i8 signext %85, i32 16)
  %cmp88 = icmp eq i32 %call87, -1
  br i1 %cmp88, label %if.then.90, label %if.else.92

if.then.90:                                       ; preds = %if.else.86
  %86 = load i8**, i8*** %COMMAND.addr, align 8
  %87 = load i8*, i8** %86, align 8
  %call91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.9, i32 0, i32 0), i8* %87)
  %88 = load i32*, i32** %LEGAL.addr, align 8
  store i32 0, i32* %88, align 4
  br label %if.end.103

if.else.92:                                       ; preds = %if.else.86
  br label %while.cond.93

while.cond.93:                                    ; preds = %while.body.97, %if.else.92
  %89 = load i8**, i8*** %COMMAND.addr, align 8
  %90 = load i8*, i8** %89, align 8
  %91 = load i8, i8* %90, align 1
  %call94 = call i32 @CHAR_TO_DIGIT(i8 signext %91, i32 16)
  %cmp95 = icmp ne i32 %call94, -1
  br i1 %cmp95, label %while.body.97, label %while.end.102

while.body.97:                                    ; preds = %while.cond.93
  %92 = load i32, i32* %VALUE, align 4
  %mul98 = mul nsw i32 %92, 16
  %93 = load i8**, i8*** %COMMAND.addr, align 8
  %94 = load i8*, i8** %93, align 8
  %95 = load i8, i8* %94, align 1
  %call99 = call i32 @CHAR_TO_DIGIT(i8 signext %95, i32 16)
  %add100 = add nsw i32 %mul98, %call99
  store i32 %add100, i32* %VALUE, align 4
  %96 = load i8**, i8*** %COMMAND.addr, align 8
  %97 = load i8*, i8** %96, align 8
  %incdec.ptr101 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %incdec.ptr101, i8** %96, align 8
  br label %while.cond.93

while.end.102:                                    ; preds = %while.cond.93
  br label %if.end.103

if.end.103:                                       ; preds = %while.end.102, %if.then.90
  br label %if.end.104

if.end.104:                                       ; preds = %if.end.103, %if.end.85
  %98 = load i32, i32* %VALUE, align 4
  store i32 %98, i32* %retval
  br label %return

return:                                           ; preds = %if.end.104, %if.then.66, %if.then.39
  %99 = load i32, i32* %retval
  ret i32 %99
}

declare i32 @CHAR_TO_DIGIT(i8 signext, i32) #2

declare i32 @printf(i8*, ...) #2

declare %struct.SYMBOL_TABLE_ENTRY* @LOOK_UP_SYMBOL(...) #2

; Function Attrs: nounwind uwtable
define void @EXAMINE(i8* %COMMAND, i32* %LEGAL) #0 {
entry:
  %COMMAND.addr = alloca i8*, align 8
  %LEGAL.addr = alloca i32*, align 8
  %ADDRESS = alloca i32, align 4
  %VALUE = alloca i32, align 4
  %START = alloca i8*, align 8
  %END = alloca i8*, align 8
  %NO_ERROR = alloca i32, align 4
  %STORE = alloca i32, align 4
  store i8* %COMMAND, i8** %COMMAND.addr, align 8
  store i32* %LEGAL, i32** %LEGAL.addr, align 8
  store i32 0, i32* %STORE, align 4
  %0 = load i32*, i32** %LEGAL.addr, align 8
  store i32 1, i32* %0, align 4
  call void @REMOVE_WS(i8** %COMMAND.addr)
  %1 = load i8*, i8** %COMMAND.addr, align 8
  store i8* %1, i8** %START, align 8
  %2 = load i8*, i8** %COMMAND.addr, align 8
  %call = call i64 @strlen(i8* %2) #4
  %cmp = icmp ult i64 %call, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = call i32 @TYPE_IN(i8** %COMMAND.addr, i32* %NO_ERROR, i32 1)
  store i32 %call1, i32* %ADDRESS, align 4
  br label %if.end.63

if.else:                                          ; preds = %entry
  %3 = load i8*, i8** %COMMAND.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 0
  %4 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %cmp2 = icmp ne i32 %conv, 36
  br i1 %cmp2, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %5 = load i8*, i8** %COMMAND.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i8, i8* %arrayidx4, align 1
  %conv5 = sext i8 %6 to i32
  %cmp6 = icmp ne i32 %conv5, 82
  br i1 %cmp6, label %if.then.8, label %if.else.10

if.then.8:                                        ; preds = %lor.lhs.false, %if.else
  %call9 = call i32 @TYPE_IN(i8** %COMMAND.addr, i32* %NO_ERROR, i32 1)
  store i32 %call9, i32* %ADDRESS, align 4
  br label %if.end.62

if.else.10:                                       ; preds = %lor.lhs.false
  %7 = load i8*, i8** %COMMAND.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 2
  store i8* %add.ptr, i8** %COMMAND.addr, align 8
  %8 = load i8*, i8** %COMMAND.addr, align 8
  %9 = load i8, i8* %8, align 1
  %conv11 = sext i8 %9 to i32
  switch i32 %conv11, label %sw.default [
    i32 65, label %sw.bb
    i32 88, label %sw.bb.12
    i32 76, label %sw.bb.13
    i32 66, label %sw.bb.14
    i32 83, label %sw.bb.15
    i32 84, label %sw.bb.22
    i32 80, label %sw.bb.23
  ]

sw.bb:                                            ; preds = %if.else.10
  store i32 0, i32* %ADDRESS, align 4
  br label %sw.epilog

sw.bb.12:                                         ; preds = %if.else.10
  store i32 1, i32* %ADDRESS, align 4
  br label %sw.epilog

sw.bb.13:                                         ; preds = %if.else.10
  store i32 2, i32* %ADDRESS, align 4
  br label %sw.epilog

sw.bb.14:                                         ; preds = %if.else.10
  store i32 3, i32* %ADDRESS, align 4
  br label %sw.epilog

sw.bb.15:                                         ; preds = %if.else.10
  %10 = load i8*, i8** %COMMAND.addr, align 8
  %add.ptr16 = getelementptr inbounds i8, i8* %10, i64 1
  %11 = load i8, i8* %add.ptr16, align 1
  %conv17 = sext i8 %11 to i32
  %cmp18 = icmp eq i32 %conv17, 87
  br i1 %cmp18, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %sw.bb.15
  %12 = load i8*, i8** %COMMAND.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %COMMAND.addr, align 8
  store i32 9, i32* %ADDRESS, align 4
  br label %if.end

if.else.21:                                       ; preds = %sw.bb.15
  store i32 4, i32* %ADDRESS, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.21, %if.then.20
  br label %sw.epilog

sw.bb.22:                                         ; preds = %if.else.10
  store i32 5, i32* %ADDRESS, align 4
  br label %sw.epilog

sw.bb.23:                                         ; preds = %if.else.10
  %13 = load i8*, i8** %COMMAND.addr, align 8
  %add.ptr24 = getelementptr inbounds i8, i8* %13, i64 1
  %14 = load i8, i8* %add.ptr24, align 1
  %conv25 = sext i8 %14 to i32
  %cmp26 = icmp eq i32 %conv25, 67
  br i1 %cmp26, label %if.then.28, label %if.else.30

if.then.28:                                       ; preds = %sw.bb.23
  %15 = load i8*, i8** %COMMAND.addr, align 8
  %incdec.ptr29 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr29, i8** %COMMAND.addr, align 8
  store i32 8, i32* %ADDRESS, align 4
  br label %if.end.31

if.else.30:                                       ; preds = %sw.bb.23
  store i32 -1, i32* %ADDRESS, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.30, %if.then.28
  br label %sw.epilog

sw.default:                                       ; preds = %if.else.10
  store i32 -1, i32* %ADDRESS, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.31, %sw.bb.22, %if.end, %sw.bb.14, %sw.bb.13, %sw.bb.12, %sw.bb
  %16 = load i32, i32* %ADDRESS, align 4
  %cmp32 = icmp eq i32 %16, -1
  br i1 %cmp32, label %if.then.34, label %if.end.37

if.then.34:                                       ; preds = %sw.epilog
  %call35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.10, i32 0, i32 0))
  %17 = load i8*, i8** %COMMAND.addr, align 8
  %call36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i32 0, i32 0), i8* %17)
  br label %if.end.147

if.end.37:                                        ; preds = %sw.epilog
  %18 = load i8*, i8** %COMMAND.addr, align 8
  %incdec.ptr38 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr38, i8** %COMMAND.addr, align 8
  %19 = load i8*, i8** %COMMAND.addr, align 8
  store i8* %19, i8** %END, align 8
  call void @REMOVE_WS(i8** %COMMAND.addr)
  %20 = load i8*, i8** %COMMAND.addr, align 8
  %21 = load i8, i8* %20, align 1
  %conv39 = sext i8 %21 to i32
  %cmp40 = icmp eq i32 %conv39, 61
  br i1 %cmp40, label %if.then.42, label %if.end.47

if.then.42:                                       ; preds = %if.end.37
  %22 = load i8*, i8** %COMMAND.addr, align 8
  %incdec.ptr43 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr43, i8** %COMMAND.addr, align 8
  %call44 = call i32 @TYPE_IN(i8** %COMMAND.addr, i32* %NO_ERROR, i32 3)
  store i32 %call44, i32* %VALUE, align 4
  %23 = load i32, i32* %NO_ERROR, align 4
  %tobool = icmp ne i32 %23, 0
  br i1 %tobool, label %if.end.46, label %if.then.45

if.then.45:                                       ; preds = %if.then.42
  br label %if.end.147

if.end.46:                                        ; preds = %if.then.42
  call void @REMOVE_WS(i8** %COMMAND.addr)
  store i32 1, i32* %STORE, align 4
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.end.37
  %24 = load i8*, i8** %COMMAND.addr, align 8
  %25 = load i8, i8* %24, align 1
  %conv48 = sext i8 %25 to i32
  %cmp49 = icmp ne i32 %conv48, 0
  br i1 %cmp49, label %if.then.51, label %if.else.53

if.then.51:                                       ; preds = %if.end.47
  %26 = load i8*, i8** %COMMAND.addr, align 8
  %call52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.12, i32 0, i32 0), i8* %26)
  br label %if.end.147

if.else.53:                                       ; preds = %if.end.47
  %27 = load i8*, i8** %END, align 8
  store i8 0, i8* %27, align 1
  %28 = load i32, i32* %STORE, align 4
  %tobool54 = icmp ne i32 %28, 0
  br i1 %tobool54, label %if.then.55, label %if.end.58

if.then.55:                                       ; preds = %if.else.53
  %29 = load i32, i32* %VALUE, align 4
  %30 = load i32, i32* %ADDRESS, align 4
  %idxprom = sext i32 %30 to i64
  %arrayidx56 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom
  store i32 %29, i32* %arrayidx56, align 4
  %call57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.55, %if.else.53
  %31 = load i8*, i8** %START, align 8
  %call59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i8* %31)
  %32 = load i32, i32* %ADDRESS, align 4
  %idxprom60 = sext i32 %32 to i64
  %arrayidx61 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom60
  %33 = load i32, i32* %arrayidx61, align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_CONSTANT to void (i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i32 0, i32 0), i32 %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0))
  br label %if.end.147

if.end.62:                                        ; preds = %if.then.8
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.then
  %34 = load i8*, i8** %COMMAND.addr, align 8
  store i8* %34, i8** %END, align 8
  call void @REMOVE_WS(i8** %COMMAND.addr)
  %35 = load i32, i32* %NO_ERROR, align 4
  %tobool64 = icmp ne i32 %35, 0
  br i1 %tobool64, label %if.then.65, label %if.end.147

if.then.65:                                       ; preds = %if.end.63
  %36 = load i32, i32* %ADDRESS, align 4
  %cmp66 = icmp sgt i32 0, %36
  br i1 %cmp66, label %if.then.71, label %lor.lhs.false.68

lor.lhs.false.68:                                 ; preds = %if.then.65
  %37 = load i32, i32* %ADDRESS, align 4
  %add = add nsw i32 %37, 2
  %cmp69 = icmp sle i32 1048576, %add
  br i1 %cmp69, label %if.then.71, label %if.else.72

if.then.71:                                       ; preds = %lor.lhs.false.68, %if.then.65
  %38 = load i32, i32* %ADDRESS, align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_CONSTANT to void (i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i32 0, i32 0), i32 %38, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end.146

if.else.72:                                       ; preds = %lor.lhs.false.68
  %39 = load i8*, i8** %COMMAND.addr, align 8
  %40 = load i8, i8* %39, align 1
  %conv73 = sext i8 %40 to i32
  %cmp74 = icmp eq i32 %conv73, 61
  br i1 %cmp74, label %if.then.76, label %if.end.82

if.then.76:                                       ; preds = %if.else.72
  %41 = load i8*, i8** %COMMAND.addr, align 8
  %incdec.ptr77 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr77, i8** %COMMAND.addr, align 8
  %call78 = call i32 @TYPE_IN(i8** %COMMAND.addr, i32* %NO_ERROR, i32 3)
  store i32 %call78, i32* %VALUE, align 4
  %42 = load i32, i32* %NO_ERROR, align 4
  %tobool79 = icmp ne i32 %42, 0
  br i1 %tobool79, label %if.end.81, label %if.then.80

if.then.80:                                       ; preds = %if.then.76
  br label %if.end.147

if.end.81:                                        ; preds = %if.then.76
  call void @REMOVE_WS(i8** %COMMAND.addr)
  store i32 1, i32* %STORE, align 4
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %if.else.72
  %43 = load i8*, i8** %COMMAND.addr, align 8
  %44 = load i8, i8* %43, align 1
  %conv83 = sext i8 %44 to i32
  %cmp84 = icmp ne i32 %conv83, 0
  br i1 %cmp84, label %if.then.86, label %if.else.88

if.then.86:                                       ; preds = %if.end.82
  %45 = load i8*, i8** %COMMAND.addr, align 8
  %call87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.12, i32 0, i32 0), i8* %45)
  br label %if.end.145

if.else.88:                                       ; preds = %if.end.82
  %46 = load i8*, i8** %END, align 8
  store i8 0, i8* %46, align 1
  %47 = load i32, i32* %STORE, align 4
  %tobool89 = icmp ne i32 %47, 0
  br i1 %tobool89, label %if.then.90, label %if.end.118

if.then.90:                                       ; preds = %if.else.88
  %48 = load i32, i32* %VALUE, align 4
  %49 = load i32, i32* %ADDRESS, align 4
  %idxprom91 = sext i32 %49 to i64
  %arrayidx92 = getelementptr inbounds [10 x i32], [10 x i32]* @REGISTER, i32 0, i64 %idxprom91
  store i32 %48, i32* %arrayidx92, align 4
  %50 = load i32, i32* %VALUE, align 4
  %div = sdiv i32 %50, 65536
  %conv93 = trunc i32 %div to i8
  %51 = load i32, i32* %ADDRESS, align 4
  %idxprom94 = sext i32 %51 to i64
  %52 = load i8*, i8** @MEMORY, align 8
  %arrayidx95 = getelementptr inbounds i8, i8* %52, i64 %idxprom94
  store i8 %conv93, i8* %arrayidx95, align 1
  %53 = load i32, i32* %VALUE, align 4
  %54 = load i32, i32* %ADDRESS, align 4
  %idxprom96 = sext i32 %54 to i64
  %55 = load i8*, i8** @MEMORY, align 8
  %arrayidx97 = getelementptr inbounds i8, i8* %55, i64 %idxprom96
  %56 = load i8, i8* %arrayidx97, align 1
  %conv98 = sext i8 %56 to i32
  %call99 = call i32 (i32, ...) bitcast (i32 (...)* @INT to i32 (i32, ...)*)(i32 %conv98)
  %mul = mul nsw i32 %call99, 256
  %mul100 = mul nsw i32 %mul, 256
  %sub = sub nsw i32 %53, %mul100
  %div101 = sdiv i32 %sub, 256
  %conv102 = trunc i32 %div101 to i8
  %57 = load i32, i32* %ADDRESS, align 4
  %add103 = add nsw i32 %57, 1
  %idxprom104 = sext i32 %add103 to i64
  %58 = load i8*, i8** @MEMORY, align 8
  %arrayidx105 = getelementptr inbounds i8, i8* %58, i64 %idxprom104
  store i8 %conv102, i8* %arrayidx105, align 1
  %59 = load i32, i32* %VALUE, align 4
  %60 = load i32, i32* %ADDRESS, align 4
  %add106 = add nsw i32 %60, 1
  %idxprom107 = sext i32 %add106 to i64
  %61 = load i8*, i8** @MEMORY, align 8
  %arrayidx108 = getelementptr inbounds i8, i8* %61, i64 %idxprom107
  %62 = load i8, i8* %arrayidx108, align 1
  %conv109 = sext i8 %62 to i32
  %call110 = call i32 (i32, ...) bitcast (i32 (...)* @INT to i32 (i32, ...)*)(i32 %conv109)
  %mul111 = mul nsw i32 %call110, 256
  %sub112 = sub nsw i32 %59, %mul111
  %conv113 = trunc i32 %sub112 to i8
  %63 = load i32, i32* %ADDRESS, align 4
  %add114 = add nsw i32 %63, 2
  %idxprom115 = sext i32 %add114 to i64
  %64 = load i8*, i8** @MEMORY, align 8
  %arrayidx116 = getelementptr inbounds i8, i8* %64, i64 %idxprom115
  store i8 %conv113, i8* %arrayidx116, align 1
  %call117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.90, %if.else.88
  %65 = load i32, i32* %ADDRESS, align 4
  %idxprom119 = sext i32 %65 to i64
  %66 = load i8*, i8** @MEMORY, align 8
  %arrayidx120 = getelementptr inbounds i8, i8* %66, i64 %idxprom119
  %67 = load i8, i8* %arrayidx120, align 1
  %conv121 = sext i8 %67 to i32
  %call122 = call i32 (i32, ...) bitcast (i32 (...)* @INT to i32 (i32, ...)*)(i32 %conv121)
  %mul123 = mul nsw i32 %call122, 256
  %68 = load i32, i32* %ADDRESS, align 4
  %add124 = add nsw i32 %68, 1
  %idxprom125 = sext i32 %add124 to i64
  %69 = load i8*, i8** @MEMORY, align 8
  %arrayidx126 = getelementptr inbounds i8, i8* %69, i64 %idxprom125
  %70 = load i8, i8* %arrayidx126, align 1
  %conv127 = sext i8 %70 to i32
  %call128 = call i32 (i32, ...) bitcast (i32 (...)* @INT to i32 (i32, ...)*)(i32 %conv127)
  %add129 = add nsw i32 %mul123, %call128
  %mul130 = mul nsw i32 %add129, 256
  %71 = load i32, i32* %ADDRESS, align 4
  %add131 = add nsw i32 %71, 2
  %idxprom132 = sext i32 %add131 to i64
  %72 = load i8*, i8** @MEMORY, align 8
  %arrayidx133 = getelementptr inbounds i8, i8* %72, i64 %idxprom132
  %73 = load i8, i8* %arrayidx133, align 1
  %conv134 = sext i8 %73 to i32
  %call135 = call i32 (i32, ...) bitcast (i32 (...)* @INT to i32 (i32, ...)*)(i32 %conv134)
  %add136 = add nsw i32 %mul130, %call135
  store i32 %add136, i32* %VALUE, align 4
  %74 = load i8*, i8** %START, align 8
  %call137 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0), i8* %74)
  %75 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @TYPE_OUT_MODE, i32 0, i64 0), align 1
  %conv138 = sext i8 %75 to i32
  %cmp139 = icmp ne i32 %conv138, 73
  br i1 %cmp139, label %if.then.141, label %if.else.142

if.then.141:                                      ; preds = %if.end.118
  %76 = load i32, i32* %VALUE, align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_ADDRESS to void (i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i32 0, i32 0), i32 %76, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0))
  br label %if.end.144

if.else.142:                                      ; preds = %if.end.118
  %call143 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0))
  %77 = load i32, i32* %ADDRESS, align 4
  call void (i32, i32, i32*, ...) bitcast (void (...)* @PRINT_INSTRUCTION to void (i32, i32, i32*, ...)*)(i32 %77, i32 1, i32* %VALUE)
  br label %if.end.144

if.end.144:                                       ; preds = %if.else.142, %if.then.141
  br label %if.end.145

if.end.145:                                       ; preds = %if.end.144, %if.then.86
  br label %if.end.146

if.end.146:                                       ; preds = %if.end.145, %if.then.71
  br label %if.end.147

if.end.147:                                       ; preds = %if.then.34, %if.then.45, %if.then.51, %if.end.58, %if.then.80, %if.end.146, %if.end.63
  ret void
}

declare void @PRINT_CONSTANT(...) #2

declare i32 @INT(...) #2

declare void @PRINT_ADDRESS(...) #2

declare void @PRINT_INSTRUCTION(...) #2

; Function Attrs: nounwind uwtable
define void @LIST_BP(i8* %COMMAND, i32* %LEGAL) #0 {
entry:
  %COMMAND.addr = alloca i8*, align 8
  %LEGAL.addr = alloca i32*, align 8
  %COUNT = alloca i32, align 4
  store i8* %COMMAND, i8** %COMMAND.addr, align 8
  store i32* %LEGAL, i32** %LEGAL.addr, align 8
  call void @REMOVE_WS(i8** %COMMAND.addr)
  %0 = load i32*, i32** %LEGAL.addr, align 8
  store i32 1, i32* %0, align 4
  %1 = load i8*, i8** %COMMAND.addr, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %COMMAND.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.12, i32 0, i32 0), i8* %3)
  br label %if.end.15

if.else:                                          ; preds = %entry
  %4 = load i32, i32* @NUM_BREAK_POINTS, align 4
  %cmp2 = icmp eq i32 %4, 0
  br i1 %cmp2, label %if.then.4, label %if.else.6

if.then.4:                                        ; preds = %if.else
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i32 0, i32 0))
  br label %if.end.14

if.else.6:                                        ; preds = %if.else
  store i32 0, i32* %COUNT, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.6
  %5 = load i32, i32* %COUNT, align 4
  %cmp7 = icmp slt i32 %5, 16
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %COUNT, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [17 x i32], [17 x i32]* @BREAK_POINTS, i32 0, i64 %idxprom
  %7 = load i32, i32* %arrayidx, align 4
  %cmp9 = icmp ne i32 %7, -1
  br i1 %cmp9, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %for.body
  %8 = load i32, i32* %COUNT, align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_CONSTANT to void (i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i32 %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i32 0, i32 0))
  %9 = load i32, i32* %COUNT, align 4
  %idxprom12 = sext i32 %9 to i64
  %arrayidx13 = getelementptr inbounds [17 x i32], [17 x i32]* @BREAK_POINTS, i32 0, i64 %idxprom12
  %10 = load i32, i32* %arrayidx13, align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_ADDRESS to void (i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i32 0, i32 0), i32 %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.11, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %COUNT, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %COUNT, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.14

if.end.14:                                        ; preds = %for.end, %if.then.4
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @SET_BP(i8* %COMMAND, i32* %LEGAL) #0 {
entry:
  %COMMAND.addr = alloca i8*, align 8
  %LEGAL.addr = alloca i32*, align 8
  %NO_ERROR = alloca i32, align 4
  %ADDR = alloca i32, align 4
  %OPEN_SPOT = alloca i32, align 4
  %COUNT = alloca i32, align 4
  store i8* %COMMAND, i8** %COMMAND.addr, align 8
  store i32* %LEGAL, i32** %LEGAL.addr, align 8
  %0 = load i8*, i8** %COMMAND.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 63
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %COMMAND.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 1
  %3 = load i32*, i32** %LEGAL.addr, align 8
  call void @LIST_BP(i8* %arrayidx, i32* %3)
  br label %if.end.48

if.end:                                           ; preds = %entry
  %4 = load i32*, i32** %LEGAL.addr, align 8
  store i32 1, i32* %4, align 4
  %call = call i32 @TYPE_IN(i8** %COMMAND.addr, i32* %NO_ERROR, i32 0)
  store i32 %call, i32* %ADDR, align 4
  call void @REMOVE_WS(i8** %COMMAND.addr)
  %5 = load i32, i32* %NO_ERROR, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then.2, label %if.end.48

if.then.2:                                        ; preds = %if.end
  %6 = load i32, i32* %ADDR, align 4
  %cmp3 = icmp sgt i32 0, %6
  br i1 %cmp3, label %if.then.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.2
  %7 = load i32, i32* %ADDR, align 4
  %cmp5 = icmp sle i32 1048576, %7
  br i1 %cmp5, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %lor.lhs.false, %if.then.2
  %8 = load i32, i32* %ADDR, align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_CONSTANT to void (i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i32 0, i32 0), i32 %8, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.24, i32 0, i32 0))
  br label %if.end.47

if.else:                                          ; preds = %lor.lhs.false
  %9 = load i32, i32* @NUM_BREAK_POINTS, align 4
  %cmp8 = icmp eq i32 %9, 16
  br i1 %cmp8, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %if.else
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_CONSTANT to void (i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.26, i32 0, i32 0))
  br label %if.end.46

if.else.11:                                       ; preds = %if.else
  %10 = load i8*, i8** %COMMAND.addr, align 8
  %11 = load i8, i8* %10, align 1
  %conv12 = sext i8 %11 to i32
  %cmp13 = icmp ne i32 %conv12, 0
  br i1 %cmp13, label %if.then.15, label %if.else.17

if.then.15:                                       ; preds = %if.else.11
  %12 = load i8*, i8** %COMMAND.addr, align 8
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.12, i32 0, i32 0), i8* %12)
  br label %if.end.45

if.else.17:                                       ; preds = %if.else.11
  store i32 0, i32* %OPEN_SPOT, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.17
  %13 = load i32, i32* %OPEN_SPOT, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx18 = getelementptr inbounds [17 x i32], [17 x i32]* @BREAK_POINTS, i32 0, i64 %idxprom
  %14 = load i32, i32* %arrayidx18, align 4
  %cmp19 = icmp ne i32 %14, -1
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %OPEN_SPOT, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %OPEN_SPOT, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load i32, i32* %ADDR, align 4
  %17 = load i32, i32* %OPEN_SPOT, align 4
  %idxprom21 = sext i32 %17 to i64
  %arrayidx22 = getelementptr inbounds [17 x i32], [17 x i32]* @BREAK_POINTS, i32 0, i64 %idxprom21
  store i32 %16, i32* %arrayidx22, align 4
  %18 = load i32, i32* @NUM_BREAK_POINTS, align 4
  store i32 %18, i32* %COUNT, align 4
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.37, %for.end
  %19 = load i32, i32* %COUNT, align 4
  %idxprom24 = sext i32 %19 to i64
  %arrayidx25 = getelementptr inbounds [17 x i32], [17 x i32]* @SORTED_BREAK_POINTS, i32 0, i64 %idxprom24
  %20 = load i32, i32* %arrayidx25, align 4
  %idxprom26 = sext i32 %20 to i64
  %arrayidx27 = getelementptr inbounds [17 x i32], [17 x i32]* @BREAK_POINTS, i32 0, i64 %idxprom26
  %21 = load i32, i32* %arrayidx27, align 4
  %22 = load i32, i32* %ADDR, align 4
  %cmp28 = icmp sgt i32 %21, %22
  br i1 %cmp28, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.23
  %23 = load i32, i32* %COUNT, align 4
  %cmp30 = icmp sgt i32 %23, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.23
  %24 = phi i1 [ false, %for.cond.23 ], [ %cmp30, %land.rhs ]
  br i1 %24, label %for.body.32, label %for.end.38

for.body.32:                                      ; preds = %land.end
  %25 = load i32, i32* %COUNT, align 4
  %idxprom33 = sext i32 %25 to i64
  %arrayidx34 = getelementptr inbounds [17 x i32], [17 x i32]* @SORTED_BREAK_POINTS, i32 0, i64 %idxprom33
  %26 = load i32, i32* %arrayidx34, align 4
  %27 = load i32, i32* %COUNT, align 4
  %add = add nsw i32 %27, 1
  %idxprom35 = sext i32 %add to i64
  %arrayidx36 = getelementptr inbounds [17 x i32], [17 x i32]* @SORTED_BREAK_POINTS, i32 0, i64 %idxprom35
  store i32 %26, i32* %arrayidx36, align 4
  br label %for.inc.37

for.inc.37:                                       ; preds = %for.body.32
  %28 = load i32, i32* %COUNT, align 4
  %dec = add nsw i32 %28, -1
  store i32 %dec, i32* %COUNT, align 4
  br label %for.cond.23

for.end.38:                                       ; preds = %land.end
  %29 = load i32, i32* %OPEN_SPOT, align 4
  %30 = load i32, i32* %COUNT, align 4
  %add39 = add nsw i32 %30, 1
  %idxprom40 = sext i32 %add39 to i64
  %arrayidx41 = getelementptr inbounds [17 x i32], [17 x i32]* @SORTED_BREAK_POINTS, i32 0, i64 %idxprom40
  store i32 %29, i32* %arrayidx41, align 4
  %31 = load i32, i32* @NUM_BREAK_POINTS, align 4
  %inc42 = add nsw i32 %31, 1
  store i32 %inc42, i32* @NUM_BREAK_POINTS, align 4
  %32 = load i32, i32* %OPEN_SPOT, align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_CONSTANT to void (i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i32 %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i32 0, i32 0))
  %33 = load i32, i32* %OPEN_SPOT, align 4
  %idxprom43 = sext i32 %33 to i64
  %arrayidx44 = getelementptr inbounds [17 x i32], [17 x i32]* @BREAK_POINTS, i32 0, i64 %idxprom43
  %34 = load i32, i32* %arrayidx44, align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_ADDRESS to void (i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i32 0, i32 0), i32 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0))
  br label %if.end.45

if.end.45:                                        ; preds = %for.end.38, %if.then.15
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.then.10
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.then.7
  br label %if.end.48

if.end.48:                                        ; preds = %if.then, %if.end.47, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @RESET_BP(i8* %COMMAND, i32* %LEGAL) #0 {
entry:
  %COMMAND.addr = alloca i8*, align 8
  %LEGAL.addr = alloca i32*, align 8
  %NO_ERROR = alloca i32, align 4
  %NUM = alloca i32, align 4
  %BP = alloca i32, align 4
  store i8* %COMMAND, i8** %COMMAND.addr, align 8
  store i32* %LEGAL, i32** %LEGAL.addr, align 8
  %0 = load i32*, i32** %LEGAL.addr, align 8
  store i32 1, i32* %0, align 4
  %call = call i32 @TYPE_IN(i8** %COMMAND.addr, i32* %NO_ERROR, i32 2)
  store i32 %call, i32* %NUM, align 4
  call void @REMOVE_WS(i8** %COMMAND.addr)
  %1 = load i32, i32* %NO_ERROR, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end.33

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %NUM, align 4
  %cmp = icmp sgt i32 0, %2
  br i1 %cmp, label %if.then.2, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %3 = load i32, i32* @NUM_BREAK_POINTS, align 4
  %4 = load i32, i32* %NUM, align 4
  %cmp1 = icmp sle i32 %3, %4
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %lor.lhs.false, %if.then
  %5 = load i32, i32* %NUM, align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_CONSTANT to void (i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i32 0, i32 0), i32 %5, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.27, i32 0, i32 0))
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_CONSTANT to void (i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.28, i32 0, i32 0), i32 16, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.29, i32 0, i32 0))
  br label %if.end.32

if.else:                                          ; preds = %lor.lhs.false
  %6 = load i8*, i8** %COMMAND.addr, align 8
  %7 = load i8, i8* %6, align 1
  %conv = sext i8 %7 to i32
  %cmp3 = icmp ne i32 %conv, 0
  br i1 %cmp3, label %if.then.5, label %if.else.7

if.then.5:                                        ; preds = %if.else
  %8 = load i8*, i8** %COMMAND.addr, align 8
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.12, i32 0, i32 0), i8* %8)
  br label %if.end.31

if.else.7:                                        ; preds = %if.else
  %9 = load i32, i32* %NUM, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [17 x i32], [17 x i32]* @BREAK_POINTS, i32 0, i64 %idxprom
  %10 = load i32, i32* %arrayidx, align 4
  %cmp8 = icmp eq i32 %10, -1
  br i1 %cmp8, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %if.else.7
  %11 = load i32, i32* %NUM, align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_CONSTANT to void (i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i32 0, i32 0), i32 %11, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.31, i32 0, i32 0))
  br label %if.end

if.else.11:                                       ; preds = %if.else.7
  store i32 1, i32* %BP, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.11
  %12 = load i32, i32* %BP, align 4
  %idxprom12 = sext i32 %12 to i64
  %arrayidx13 = getelementptr inbounds [17 x i32], [17 x i32]* @SORTED_BREAK_POINTS, i32 0, i64 %idxprom12
  %13 = load i32, i32* %arrayidx13, align 4
  %14 = load i32, i32* %NUM, align 4
  %cmp14 = icmp ne i32 %13, %14
  br i1 %cmp14, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %15 = load i32, i32* %BP, align 4
  %16 = load i32, i32* @NUM_BREAK_POINTS, align 4
  %cmp16 = icmp sle i32 %15, %16
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %17 = phi i1 [ false, %for.cond ], [ %cmp16, %land.rhs ]
  br i1 %17, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %BP, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %BP, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %19 = load i32, i32* %NUM, align 4
  %idxprom18 = sext i32 %19 to i64
  %arrayidx19 = getelementptr inbounds [17 x i32], [17 x i32]* @BREAK_POINTS, i32 0, i64 %idxprom18
  store i32 -1, i32* %arrayidx19, align 4
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.28, %for.end
  %20 = load i32, i32* %BP, align 4
  %21 = load i32, i32* @NUM_BREAK_POINTS, align 4
  %cmp21 = icmp sle i32 %20, %21
  br i1 %cmp21, label %for.body.23, label %for.end.30

for.body.23:                                      ; preds = %for.cond.20
  %22 = load i32, i32* %BP, align 4
  %add = add nsw i32 %22, 1
  %idxprom24 = sext i32 %add to i64
  %arrayidx25 = getelementptr inbounds [17 x i32], [17 x i32]* @SORTED_BREAK_POINTS, i32 0, i64 %idxprom24
  %23 = load i32, i32* %arrayidx25, align 4
  %24 = load i32, i32* %BP, align 4
  %idxprom26 = sext i32 %24 to i64
  %arrayidx27 = getelementptr inbounds [17 x i32], [17 x i32]* @SORTED_BREAK_POINTS, i32 0, i64 %idxprom26
  store i32 %23, i32* %arrayidx27, align 4
  br label %for.inc.28

for.inc.28:                                       ; preds = %for.body.23
  %25 = load i32, i32* %BP, align 4
  %inc29 = add nsw i32 %25, 1
  store i32 %inc29, i32* %BP, align 4
  br label %for.cond.20

for.end.30:                                       ; preds = %for.cond.20
  %26 = load i32, i32* @NUM_BREAK_POINTS, align 4
  %dec = add nsw i32 %26, -1
  store i32 %dec, i32* @NUM_BREAK_POINTS, align 4
  %27 = load i32, i32* %NUM, align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_CONSTANT to void (i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.32, i32 0, i32 0), i32 %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %for.end.30, %if.then.10
  br label %if.end.31

if.end.31:                                        ; preds = %if.end, %if.then.5
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.2
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @AT_BREAK_POINT() #0 {
entry:
  %retval = alloca i32, align 4
  %MID = alloca i32, align 4
  %HIGH = alloca i32, align 4
  %LOW = alloca i32, align 4
  %RANGE = alloca i32, align 4
  store i32 1, i32* %LOW, align 4
  %0 = load i32, i32* @NUM_BREAK_POINTS, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* @NUM_BREAK_POINTS, align 4
  store i32 %1, i32* %HIGH, align 4
  %2 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 8), align 4
  call void (i32, i32, i32*, ...) bitcast (void (...)* @PRINT_INSTRUCTION to void (i32, i32, i32*, ...)*)(i32 %2, i32 0, i32* %RANGE)
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %3 = load i32, i32* %LOW, align 4
  %4 = load i32, i32* %HIGH, align 4
  %add = add nsw i32 %3, %4
  %div = sdiv i32 %add, 2
  store i32 %div, i32* %MID, align 4
  %5 = load i32, i32* %MID, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [17 x i32], [17 x i32]* @SORTED_BREAK_POINTS, i32 0, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %idxprom1 = sext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds [17 x i32], [17 x i32]* @BREAK_POINTS, i32 0, i64 %idxprom1
  %7 = load i32, i32* %arrayidx2, align 4
  %8 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 8), align 4
  %cmp3 = icmp sge i32 %7, %8
  br i1 %cmp3, label %land.lhs.true, label %if.end.11

land.lhs.true:                                    ; preds = %do.body
  %9 = load i32, i32* %MID, align 4
  %idxprom4 = sext i32 %9 to i64
  %arrayidx5 = getelementptr inbounds [17 x i32], [17 x i32]* @SORTED_BREAK_POINTS, i32 0, i64 %idxprom4
  %10 = load i32, i32* %arrayidx5, align 4
  %idxprom6 = sext i32 %10 to i64
  %arrayidx7 = getelementptr inbounds [17 x i32], [17 x i32]* @BREAK_POINTS, i32 0, i64 %idxprom6
  %11 = load i32, i32* %arrayidx7, align 4
  %12 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 8), align 4
  %13 = load i32, i32* %RANGE, align 4
  %add8 = add nsw i32 %12, %13
  %sub = sub nsw i32 %add8, 1
  %cmp9 = icmp sle i32 %11, %sub
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end.11:                                        ; preds = %land.lhs.true, %do.body
  %14 = load i32, i32* %MID, align 4
  %idxprom12 = sext i32 %14 to i64
  %arrayidx13 = getelementptr inbounds [17 x i32], [17 x i32]* @SORTED_BREAK_POINTS, i32 0, i64 %idxprom12
  %15 = load i32, i32* %arrayidx13, align 4
  %idxprom14 = sext i32 %15 to i64
  %arrayidx15 = getelementptr inbounds [17 x i32], [17 x i32]* @BREAK_POINTS, i32 0, i64 %idxprom14
  %16 = load i32, i32* %arrayidx15, align 4
  %17 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 8), align 4
  %cmp16 = icmp sle i32 %16, %17
  br i1 %cmp16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %if.end.11
  %18 = load i32, i32* %MID, align 4
  %add18 = add nsw i32 %18, 1
  store i32 %add18, i32* %LOW, align 4
  br label %if.end.20

if.else:                                          ; preds = %if.end.11
  %19 = load i32, i32* %MID, align 4
  %sub19 = sub nsw i32 %19, 1
  store i32 %sub19, i32* %HIGH, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.17
  br label %do.cond

do.cond:                                          ; preds = %if.end.20
  %20 = load i32, i32* %LOW, align 4
  %21 = load i32, i32* %HIGH, align 4
  %cmp21 = icmp sle i32 %20, %21
  br i1 %cmp21, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.10, %if.then
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define void @RUN_IT(i8* %COMMAND, i32* %LEGAL) #0 {
entry:
  %COMMAND.addr = alloca i8*, align 8
  %LEGAL.addr = alloca i32*, align 8
  %DONT_CARE = alloca i32, align 4
  store i8* %COMMAND, i8** %COMMAND.addr, align 8
  store i32* %LEGAL, i32** %LEGAL.addr, align 8
  call void @REMOVE_WS(i8** %COMMAND.addr)
  %0 = load i32*, i32** %LEGAL.addr, align 8
  store i32 1, i32* %0, align 4
  %1 = load i8*, i8** %COMMAND.addr, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %COMMAND.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.12, i32 0, i32 0), i8* %3)
  br label %if.end.17

if.else:                                          ; preds = %entry
  store i32 0, i32* @RETURN_STATUS, align 4
  store i32 16777215, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 2), align 4
  %4 = load i32, i32* @START_ADDRESS, align 4
  store i32 %4, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 8), align 4
  call void (...) @RESET_DEVICES()
  store i32 61440, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 9), align 4
  %5 = load i32, i32* @TRACE, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.else
  %6 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 8), align 4
  call void (i32, i32, i32*, ...) bitcast (void (...)* @PRINT_INSTRUCTION to void (i32, i32, i32*, ...)*)(i32 %6, i32 1, i32* %DONT_CARE)
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.else
  br label %while.cond

while.cond:                                       ; preds = %if.end.12, %if.end
  %7 = load i32, i32* @RETURN_STATUS, align 4
  %cmp3 = icmp eq i32 %7, 0
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %call5 = call i32 @AT_BREAK_POINT()
  %tobool6 = icmp ne i32 %call5, 0
  %lnot = xor i1 %tobool6, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %9 = load i32, i32* @TRACE, align 4
  call void (i32, i32, ...) bitcast (void (...)* @EXEC to void (i32, i32, ...)*)(i32 1, i32 %9)
  %10 = load i32, i32* @TRACE, align 4
  %tobool7 = icmp ne i32 %10, 0
  br i1 %tobool7, label %land.lhs.true, label %if.end.12

land.lhs.true:                                    ; preds = %while.body
  %11 = load i32, i32* @RETURN_STATUS, align 4
  %cmp8 = icmp eq i32 %11, 0
  br i1 %cmp8, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %land.lhs.true
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0))
  %12 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 8), align 4
  call void (i32, i32, i32*, ...) bitcast (void (...)* @PRINT_INSTRUCTION to void (i32, i32, i32*, ...)*)(i32 %12, i32 1, i32* %DONT_CARE)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %land.lhs.true, %while.body
  br label %while.cond

while.end:                                        ; preds = %land.end
  %13 = load i32, i32* @RETURN_STATUS, align 4
  %cmp13 = icmp eq i32 %13, 0
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %while.end
  %14 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 8), align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_ADDRESS to void (i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.33, i32 0, i32 0), i32 %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0))
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %while.end
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.then
  ret void
}

declare void @RESET_DEVICES(...) #2

declare void @EXEC(...) #2

; Function Attrs: nounwind uwtable
define void @PROCEED(i8* %COMMAND, i32* %LEGAL) #0 {
entry:
  %COMMAND.addr = alloca i8*, align 8
  %LEGAL.addr = alloca i32*, align 8
  %DONT_CARE = alloca i32, align 4
  store i8* %COMMAND, i8** %COMMAND.addr, align 8
  store i32* %LEGAL, i32** %LEGAL.addr, align 8
  call void @REMOVE_WS(i8** %COMMAND.addr)
  %0 = load i32*, i32** %LEGAL.addr, align 8
  store i32 1, i32* %0, align 4
  %1 = load i8*, i8** %COMMAND.addr, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %COMMAND.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.12, i32 0, i32 0), i8* %3)
  br label %if.end.20

if.else:                                          ; preds = %entry
  %4 = load i32, i32* @RETURN_STATUS, align 4
  %cmp2 = icmp ne i32 %4, 0
  br i1 %cmp2, label %if.then.4, label %if.else.6

if.then.4:                                        ; preds = %if.else
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.34, i32 0, i32 0))
  br label %if.end.15

if.else.6:                                        ; preds = %if.else
  br label %do.body

do.body:                                          ; preds = %land.end, %if.else.6
  %5 = load i32, i32* @TRACE, align 4
  call void (i32, i32, ...) bitcast (void (...)* @EXEC to void (i32, i32, ...)*)(i32 1, i32 %5)
  %6 = load i32, i32* @TRACE, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %7 = load i32, i32* @RETURN_STATUS, align 4
  %cmp7 = icmp eq i32 %7, 0
  br i1 %cmp7, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %land.lhs.true
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0))
  %8 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 8), align 4
  call void (i32, i32, i32*, ...) bitcast (void (...)* @PRINT_INSTRUCTION to void (i32, i32, i32*, ...)*)(i32 %8, i32 1, i32* %DONT_CARE)
  br label %if.end

if.end:                                           ; preds = %if.then.9, %land.lhs.true, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %9 = load i32, i32* @RETURN_STATUS, align 4
  %cmp11 = icmp eq i32 %9, 0
  br i1 %cmp11, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %call13 = call i32 @AT_BREAK_POINT()
  %tobool14 = icmp ne i32 %call13, 0
  %lnot = xor i1 %tobool14, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %10 = phi i1 [ false, %do.cond ], [ %lnot, %land.rhs ]
  br i1 %10, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  br label %if.end.15

if.end.15:                                        ; preds = %do.end, %if.then.4
  %11 = load i32, i32* @RETURN_STATUS, align 4
  %cmp16 = icmp eq i32 %11, 0
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.15
  %12 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 8), align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_ADDRESS to void (i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.33, i32 0, i32 0), i32 %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0))
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %if.end.15
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @STEP(i8* %COMMAND, i32* %LEGAL) #0 {
entry:
  %COMMAND.addr = alloca i8*, align 8
  %LEGAL.addr = alloca i32*, align 8
  %DONT_CARE = alloca i32, align 4
  store i8* %COMMAND, i8** %COMMAND.addr, align 8
  store i32* %LEGAL, i32** %LEGAL.addr, align 8
  call void @REMOVE_WS(i8** %COMMAND.addr)
  %0 = load i32*, i32** %LEGAL.addr, align 8
  store i32 1, i32* %0, align 4
  %1 = load i8*, i8** %COMMAND.addr, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %COMMAND.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.12, i32 0, i32 0), i8* %3)
  br label %if.end.12

if.else:                                          ; preds = %entry
  %4 = load i32, i32* @RETURN_STATUS, align 4
  %cmp2 = icmp ne i32 %4, 0
  br i1 %cmp2, label %if.then.4, label %if.else.6

if.then.4:                                        ; preds = %if.else
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.34, i32 0, i32 0))
  br label %if.end.11

if.else.6:                                        ; preds = %if.else
  call void (i32, i32, ...) bitcast (void (...)* @EXEC to void (i32, i32, ...)*)(i32 1, i32 1)
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0))
  %5 = load i32, i32* @RETURN_STATUS, align 4
  %cmp8 = icmp eq i32 %5, 0
  br i1 %cmp8, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.else.6
  %6 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 8), align 4
  call void (i32, i32, i32*, ...) bitcast (void (...)* @PRINT_INSTRUCTION to void (i32, i32, i32*, ...)*)(i32 %6, i32 1, i32* %DONT_CARE)
  br label %if.end

if.end:                                           ; preds = %if.then.10, %if.else.6
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %if.then.4
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @HELP(i8* %COMMAND, i32* %LEGAL) #0 {
entry:
  %COMMAND.addr = alloca i8*, align 8
  %LEGAL.addr = alloca i32*, align 8
  store i8* %COMMAND, i8** %COMMAND.addr, align 8
  store i32* %LEGAL, i32** %LEGAL.addr, align 8
  call void @REMOVE_WS(i8** %COMMAND.addr)
  %0 = load i32*, i32** %LEGAL.addr, align 8
  store i32 1, i32* %0, align 4
  %1 = load i8*, i8** %COMMAND.addr, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %COMMAND.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.12, i32 0, i32 0), i8* %3)
  br label %if.end

if.else:                                          ; preds = %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.35, i32 0, i32 0))
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.36, i32 0, i32 0))
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.37, i32 0, i32 0))
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.38, i32 0, i32 0))
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.39, i32 0, i32 0))
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.40, i32 0, i32 0))
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.41, i32 0, i32 0))
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.42, i32 0, i32 0))
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.43, i32 0, i32 0))
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.44, i32 0, i32 0))
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.45, i32 0, i32 0))
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.46, i32 0, i32 0))
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.47, i32 0, i32 0))
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.48, i32 0, i32 0))
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.49, i32 0, i32 0))
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0))
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.50, i32 0, i32 0))
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.51, i32 0, i32 0))
  %call20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.52, i32 0, i32 0))
  %call21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.53, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @QUIT(i8* %COMMAND, i32* %LEGAL) #0 {
entry:
  %COMMAND.addr = alloca i8*, align 8
  %LEGAL.addr = alloca i32*, align 8
  store i8* %COMMAND, i8** %COMMAND.addr, align 8
  store i32* %LEGAL, i32** %LEGAL.addr, align 8
  %0 = load i32*, i32** %LEGAL.addr, align 8
  store i32 1, i32* %0, align 4
  call void @REMOVE_WS(i8** %COMMAND.addr)
  %1 = load i8*, i8** %COMMAND.addr, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %COMMAND.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.12, i32 0, i32 0), i8* %3)
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 3, i32* @RETURN_STATUS, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @TRACE_P(i8* %COMMAND, i32* %LEGAL) #0 {
entry:
  %COMMAND.addr = alloca i8*, align 8
  %LEGAL.addr = alloca i32*, align 8
  store i8* %COMMAND, i8** %COMMAND.addr, align 8
  store i32* %LEGAL, i32** %LEGAL.addr, align 8
  %0 = load i32*, i32** %LEGAL.addr, align 8
  store i32 1, i32* %0, align 4
  call void @REMOVE_WS(i8** %COMMAND.addr)
  %1 = load i8*, i8** %COMMAND.addr, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %COMMAND.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.12, i32 0, i32 0), i8* %3)
  br label %if.end.6

if.else:                                          ; preds = %entry
  %4 = load i32, i32* @TRACE, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then.2, label %if.else.4

if.then.2:                                        ; preds = %if.else
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.54, i32 0, i32 0))
  br label %if.end

if.else.4:                                        ; preds = %if.else
  store i32 1, i32* @TRACE, align 4
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.55, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.2
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @UNTRACE(i8* %COMMAND, i32* %LEGAL) #0 {
entry:
  %COMMAND.addr = alloca i8*, align 8
  %LEGAL.addr = alloca i32*, align 8
  store i8* %COMMAND, i8** %COMMAND.addr, align 8
  store i32* %LEGAL, i32** %LEGAL.addr, align 8
  %0 = load i32*, i32** %LEGAL.addr, align 8
  store i32 1, i32* %0, align 4
  call void @REMOVE_WS(i8** %COMMAND.addr)
  %1 = load i8*, i8** %COMMAND.addr, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %COMMAND.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.12, i32 0, i32 0), i8* %3)
  br label %if.end.6

if.else:                                          ; preds = %entry
  %4 = load i32, i32* @TRACE, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.else.4, label %if.then.2

if.then.2:                                        ; preds = %if.else
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.56, i32 0, i32 0))
  br label %if.end

if.else.4:                                        ; preds = %if.else
  store i32 0, i32* @TRACE, align 4
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.57, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.2
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @MODE(i8* %COMMAND, i32* %LEGAL) #0 {
entry:
  %COMMAND.addr = alloca i8*, align 8
  %LEGAL.addr = alloca i32*, align 8
  store i8* %COMMAND, i8** %COMMAND.addr, align 8
  store i32* %LEGAL, i32** %LEGAL.addr, align 8
  %0 = load i32*, i32** %LEGAL.addr, align 8
  store i32 1, i32* %0, align 4
  call void @REMOVE_WS(i8** %COMMAND.addr)
  %1 = load i8*, i8** %COMMAND.addr, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.58, i32 0, i32 0))
  br label %if.end.13

if.else:                                          ; preds = %entry
  %3 = load i8*, i8** %COMMAND.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 1
  %4 = load i8, i8* %add.ptr, align 1
  %conv2 = sext i8 %4 to i32
  %cmp3 = icmp eq i32 %conv2, 0
  br i1 %cmp3, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.else
  %5 = load i8*, i8** %COMMAND.addr, align 8
  %6 = load i8, i8* %5, align 1
  %conv6 = sext i8 %6 to i32
  switch i32 %conv6, label %sw.default [
    i32 72, label %sw.bb
    i32 68, label %sw.bb.8
    i32 73, label %sw.bb.10
  ]

sw.bb:                                            ; preds = %if.then.5
  %call7 = call i8* @strcpy(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @TYPE_OUT_MODE, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i32 0, i32 0)) #5
  br label %if.end.13

sw.bb.8:                                          ; preds = %if.then.5
  %call9 = call i8* @strcpy(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @TYPE_OUT_MODE, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60, i32 0, i32 0)) #5
  br label %if.end.13

sw.bb.10:                                         ; preds = %if.then.5
  %call11 = call i8* @strcpy(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @TYPE_OUT_MODE, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i32 0, i32 0)) #5
  br label %if.end.13

sw.default:                                       ; preds = %if.then.5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %if.else
  %7 = load i8*, i8** %COMMAND.addr, align 8
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.62, i32 0, i32 0), i8* %7)
  br label %if.end.13

if.end.13:                                        ; preds = %sw.bb, %sw.bb.8, %sw.bb.10, %if.end, %if.then
  ret void
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

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

; Function Attrs: nounwind uwtable
define void @CALL_FUNCTION(i32 %FUNC, i8* %COMMAND, i32* %LEGAL) #0 {
entry:
  %FUNC.addr = alloca i32, align 4
  %COMMAND.addr = alloca i8*, align 8
  %LEGAL.addr = alloca i32*, align 8
  store i32 %FUNC, i32* %FUNC.addr, align 4
  store i8* %COMMAND, i8** %COMMAND.addr, align 8
  store i32* %LEGAL, i32** %LEGAL.addr, align 8
  %0 = load i32, i32* %FUNC.addr, align 4
  switch i32 %0, label %sw.epilog [
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
    i32 11, label %sw.bb.10
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i8*, i8** %COMMAND.addr, align 8
  %2 = load i32*, i32** %LEGAL.addr, align 8
  call void @STEP(i8* %1, i32* %2)
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %3 = load i8*, i8** %COMMAND.addr, align 8
  %4 = load i32*, i32** %LEGAL.addr, align 8
  call void @SET_BP(i8* %3, i32* %4)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %5 = load i8*, i8** %COMMAND.addr, align 8
  %6 = load i32*, i32** %LEGAL.addr, align 8
  call void @EXAMINE(i8* %5, i32* %6)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %7 = load i8*, i8** %COMMAND.addr, align 8
  %8 = load i32*, i32** %LEGAL.addr, align 8
  call void @RESET_BP(i8* %7, i32* %8)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %9 = load i8*, i8** %COMMAND.addr, align 8
  %10 = load i32*, i32** %LEGAL.addr, align 8
  call void @RUN_IT(i8* %9, i32* %10)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %11 = load i8*, i8** %COMMAND.addr, align 8
  %12 = load i32*, i32** %LEGAL.addr, align 8
  call void @HELP(i8* %11, i32* %12)
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %13 = load i8*, i8** %COMMAND.addr, align 8
  %14 = load i32*, i32** %LEGAL.addr, align 8
  call void @MODE(i8* %13, i32* %14)
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %15 = load i8*, i8** %COMMAND.addr, align 8
  %16 = load i32*, i32** %LEGAL.addr, align 8
  call void @PROCEED(i8* %15, i32* %16)
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  %17 = load i8*, i8** %COMMAND.addr, align 8
  %18 = load i32*, i32** %LEGAL.addr, align 8
  call void @TRACE_P(i8* %17, i32* %18)
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %19 = load i8*, i8** %COMMAND.addr, align 8
  %20 = load i32*, i32** %LEGAL.addr, align 8
  call void @UNTRACE(i8* %19, i32* %20)
  br label %sw.epilog

sw.bb.10:                                         ; preds = %entry
  %21 = load i8*, i8** %COMMAND.addr, align 8
  %22 = load i32*, i32** %LEGAL.addr, align 8
  call void @QUIT(i8* %21, i32* %22)
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.10, %sw.bb.9, %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define void @DEBUGGER(i32 %DEBUG_MODE) #0 {
entry:
  %DEBUG_MODE.addr = alloca i32, align 4
  %COMMAND = alloca i8*, align 8
  %LEGAL_COMMAND = alloca i32, align 4
  %COUNT = alloca i32, align 4
  %CODE = alloca i32, align 4
  store i32 %DEBUG_MODE, i32* %DEBUG_MODE.addr, align 4
  store i32 0, i32* %COUNT, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %COUNT, align 4
  %cmp = icmp sle i32 %0, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %COUNT, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [17 x i32], [17 x i32]* @BREAK_POINTS, i32 0, i64 %idxprom
  store i32 -1, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %COUNT, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %COUNT, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %3 = load i32, i32* %DEBUG_MODE.addr, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %for.end
  store i32 0, i32* @RETURN_STATUS, align 4
  store i32 16777215, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 2), align 4
  %4 = load i32, i32* @START_ADDRESS, align 4
  store i32 %4, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 8), align 4
  store i32 61440, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 9), align 4
  call void (i32, i32, ...) bitcast (void (...)* @EXEC to void (i32, i32, ...)*)(i32 0, i32 0)
  br label %if.end.68

if.else:                                          ; preds = %for.end
  br label %while.cond

while.cond:                                       ; preds = %if.end.67, %if.else
  %5 = load i32, i32* @RETURN_STATUS, align 4
  %cmp1 = icmp ne i32 %5, 3
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %LEGAL_COMMAND, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @TYPE_OUT_MODE, i32 0, i32 0))
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  call void (i8**, %struct._IO_FILE*, ...) bitcast (void (...)* @GET_LINE to void (i8**, %struct._IO_FILE*, ...)*)(i8** %COMMAND, %struct._IO_FILE* %6)
  call void @REMOVE_WS(i8** %COMMAND)
  %7 = load i8*, i8** %COMMAND, align 8
  %8 = load i8, i8* %7, align 1
  %conv = sext i8 %8 to i32
  %cmp2 = icmp ne i32 %conv, 0
  br i1 %cmp2, label %if.then.4, label %if.end.45

if.then.4:                                        ; preds = %while.body
  %9 = load i8*, i8** %COMMAND, align 8
  call void @CAPITALIZE_STRING(i8* %9)
  store i32 0, i32* %COUNT, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.37, %if.then.4
  %10 = load i32, i32* %COUNT, align 4
  %cmp6 = icmp slt i32 %10, 11
  br i1 %cmp6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.5
  %11 = load i32, i32* %LEGAL_COMMAND, align 4
  %tobool8 = icmp ne i32 %11, 0
  %lnot = xor i1 %tobool8, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.5
  %12 = phi i1 [ false, %for.cond.5 ], [ %lnot, %land.rhs ]
  br i1 %12, label %for.body.9, label %for.end.39

for.body.9:                                       ; preds = %land.end
  %13 = load i32, i32* %COUNT, align 4
  %idxprom10 = sext i32 %13 to i64
  %arrayidx11 = getelementptr inbounds [11 x %struct.COMMAND_TYPE], [11 x %struct.COMMAND_TYPE]* @COMMANDS, i32 0, i64 %idxprom10
  %LONG = getelementptr inbounds %struct.COMMAND_TYPE, %struct.COMMAND_TYPE* %arrayidx11, i32 0, i32 1
  %14 = load i8*, i8** %LONG, align 8
  %15 = load i8*, i8** %COMMAND, align 8
  %call12 = call i32 @IS_PREFIX_TO(i8* %14, i8* %15)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.14, label %if.else.22

if.then.14:                                       ; preds = %for.body.9
  %16 = load i32, i32* %COUNT, align 4
  %idxprom15 = sext i32 %16 to i64
  %arrayidx16 = getelementptr inbounds [11 x %struct.COMMAND_TYPE], [11 x %struct.COMMAND_TYPE]* @COMMANDS, i32 0, i64 %idxprom15
  %FUNCTION = getelementptr inbounds %struct.COMMAND_TYPE, %struct.COMMAND_TYPE* %arrayidx16, i32 0, i32 2
  %17 = load i32, i32* %FUNCTION, align 4
  %18 = load i32, i32* %COUNT, align 4
  %idxprom17 = sext i32 %18 to i64
  %arrayidx18 = getelementptr inbounds [11 x %struct.COMMAND_TYPE], [11 x %struct.COMMAND_TYPE]* @COMMANDS, i32 0, i64 %idxprom17
  %LONG19 = getelementptr inbounds %struct.COMMAND_TYPE, %struct.COMMAND_TYPE* %arrayidx18, i32 0, i32 1
  %19 = load i8*, i8** %LONG19, align 8
  %call20 = call i64 @strlen(i8* %19) #4
  %20 = load i8*, i8** %COMMAND, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %20, i64 %call20
  call void @CALL_FUNCTION(i32 %17, i8* %arrayidx21, i32* %LEGAL_COMMAND)
  br label %if.end.36

if.else.22:                                       ; preds = %for.body.9
  %21 = load i32, i32* %COUNT, align 4
  %idxprom23 = sext i32 %21 to i64
  %arrayidx24 = getelementptr inbounds [11 x %struct.COMMAND_TYPE], [11 x %struct.COMMAND_TYPE]* @COMMANDS, i32 0, i64 %idxprom23
  %SHORT = getelementptr inbounds %struct.COMMAND_TYPE, %struct.COMMAND_TYPE* %arrayidx24, i32 0, i32 0
  %22 = load i8*, i8** %SHORT, align 8
  %23 = load i8*, i8** %COMMAND, align 8
  %call25 = call i32 @IS_PREFIX_TO(i8* %22, i8* %23)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then.27, label %if.end

if.then.27:                                       ; preds = %if.else.22
  %24 = load i32, i32* %COUNT, align 4
  %idxprom28 = sext i32 %24 to i64
  %arrayidx29 = getelementptr inbounds [11 x %struct.COMMAND_TYPE], [11 x %struct.COMMAND_TYPE]* @COMMANDS, i32 0, i64 %idxprom28
  %FUNCTION30 = getelementptr inbounds %struct.COMMAND_TYPE, %struct.COMMAND_TYPE* %arrayidx29, i32 0, i32 2
  %25 = load i32, i32* %FUNCTION30, align 4
  %26 = load i32, i32* %COUNT, align 4
  %idxprom31 = sext i32 %26 to i64
  %arrayidx32 = getelementptr inbounds [11 x %struct.COMMAND_TYPE], [11 x %struct.COMMAND_TYPE]* @COMMANDS, i32 0, i64 %idxprom31
  %SHORT33 = getelementptr inbounds %struct.COMMAND_TYPE, %struct.COMMAND_TYPE* %arrayidx32, i32 0, i32 0
  %27 = load i8*, i8** %SHORT33, align 8
  %call34 = call i64 @strlen(i8* %27) #4
  %28 = load i8*, i8** %COMMAND, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %28, i64 %call34
  call void @CALL_FUNCTION(i32 %25, i8* %arrayidx35, i32* %LEGAL_COMMAND)
  br label %if.end

if.end:                                           ; preds = %if.then.27, %if.else.22
  br label %if.end.36

if.end.36:                                        ; preds = %if.end, %if.then.14
  br label %for.inc.37

for.inc.37:                                       ; preds = %if.end.36
  %29 = load i32, i32* %COUNT, align 4
  %inc38 = add nsw i32 %29, 1
  store i32 %inc38, i32* %COUNT, align 4
  br label %for.cond.5

for.end.39:                                       ; preds = %land.end
  %30 = load i32, i32* %LEGAL_COMMAND, align 4
  %tobool40 = icmp ne i32 %30, 0
  br i1 %tobool40, label %if.end.44, label %if.then.41

if.then.41:                                       ; preds = %for.end.39
  %31 = load i8*, i8** %COMMAND, align 8
  %call42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.86, i32 0, i32 0), i8* %31)
  %call43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.87, i32 0, i32 0))
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.41, %for.end.39
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %while.body
  %32 = load i32, i32* @RETURN_STATUS, align 4
  %cmp46 = icmp eq i32 %32, 2
  br i1 %cmp46, label %if.then.48, label %if.end.67

if.then.48:                                       ; preds = %if.end.45
  store i32 1, i32* @RETURN_STATUS, align 4
  %33 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 9), align 4
  %34 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 9), align 4
  %div = sdiv i32 %34, 256
  %mul = mul nsw i32 %div, 256
  %sub = sub nsw i32 %33, %mul
  store i32 %sub, i32* %CODE, align 4
  %35 = load i32, i32* %CODE, align 4
  call void (i8*, i32, i8*, ...) bitcast (void (...)* @PRINT_CONSTANT to void (i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.88, i32 0, i32 0), i32 %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.89, i32 0, i32 0))
  %36 = load i32, i32* %CODE, align 4
  switch i32 %36, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.50
    i32 2, label %sw.bb.52
    i32 3, label %sw.bb.54
    i32 4, label %sw.bb.56
    i32 10, label %sw.bb.58
    i32 11, label %sw.bb.60
    i32 12, label %sw.bb.62
    i32 13, label %sw.bb.64
  ]

sw.bb:                                            ; preds = %if.then.48
  %call49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.90, i32 0, i32 0))
  br label %sw.epilog

sw.bb.50:                                         ; preds = %if.then.48
  %call51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.91, i32 0, i32 0))
  br label %sw.epilog

sw.bb.52:                                         ; preds = %if.then.48
  %call53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.92, i32 0, i32 0))
  br label %sw.epilog

sw.bb.54:                                         ; preds = %if.then.48
  %call55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.93, i32 0, i32 0))
  br label %sw.epilog

sw.bb.56:                                         ; preds = %if.then.48
  %call57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.94, i32 0, i32 0))
  br label %sw.epilog

sw.bb.58:                                         ; preds = %if.then.48
  %call59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.95, i32 0, i32 0))
  br label %sw.epilog

sw.bb.60:                                         ; preds = %if.then.48
  %call61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.96, i32 0, i32 0))
  br label %sw.epilog

sw.bb.62:                                         ; preds = %if.then.48
  %call63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.97, i32 0, i32 0))
  br label %sw.epilog

sw.bb.64:                                         ; preds = %if.then.48
  %call65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.98, i32 0, i32 0))
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.48
  %call66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.64, %sw.bb.62, %sw.bb.60, %sw.bb.58, %sw.bb.56, %sw.bb.54, %sw.bb.52, %sw.bb.50, %sw.bb
  br label %if.end.67

if.end.67:                                        ; preds = %sw.epilog, %if.end.45
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.68

if.end.68:                                        ; preds = %while.end, %if.then
  ret void
}

declare void @GET_LINE(...) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
