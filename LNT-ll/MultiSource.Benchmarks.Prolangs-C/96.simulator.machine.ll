; ModuleID = './MultiSource.Benchmarks.Prolangs-C/96.simulator.machine.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.INSTR_INFO = type { i8*, i32, i32 }
%struct.DEVICE_ENTRY = type { i32, %struct._IO_FILE* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.SYMBOL_TABLE_ENTRY = type { [9 x i8], [9 x i8], i32, i32, i32, %struct.SYMBOL_TABLE_ENTRY* }

@MEMORY = global i8* null, align 8
@INTERVAL_TIMER = global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"LDA\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"LDX\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"LDL\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"STA\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"STX\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"STL\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"SUB\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"MUL\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"DIV\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"COMP\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"TIX\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"JEQ\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"JGT\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"JLT\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"J\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"AND\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"OR\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"JSUB\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"RSUB\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"LDCH\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"STCH\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"ADDF\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"SUBF\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"MULF\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"DIVF\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"LDB\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"LDS\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"LDF\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"LDT\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"STB\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"STS\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"STF\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"STT\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"COMPF\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"UNDEF\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"ADDR\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"SUBR\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"MULR\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"DIVR\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"COMPR\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"SHIFTL\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"SHIFTR\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"RMO\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"SVC\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"CLEAR\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"TIXR\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"FLOAT\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"FIX\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"NORM\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"LPS\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"STI\00", align 1
@.str.52 = private unnamed_addr constant [3 x i8] c"RD\00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c"WD\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"TD\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"STSW\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"SSK\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"SIO\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"HIO\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"TIO\00", align 1
@INSTR = global [64 x %struct.INSTR_INFO] [%struct.INSTR_INFO { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 3, i32 22 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 3, i32 1 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 3, i32 2 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i32 3, i32 3 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i32 3, i32 4 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 3, i32 5 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i32 3, i32 6 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i32 3, i32 7 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i32 3, i32 8 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i32 3, i32 9 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32 3, i32 10 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i32 3, i32 11 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i32 3, i32 12 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i32 3, i32 13 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i32 3, i32 14 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), i32 3, i32 15 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0), i32 3, i32 16 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i32 3, i32 17 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i32 3, i32 18 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i32 3, i32 19 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i32 3, i32 20 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i32 3, i32 21 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i32 3, i32 0 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), i32 3, i32 0 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i32 3, i32 0 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i32 3, i32 0 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i32 3, i32 23 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0), i32 3, i32 24 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0), i32 3, i32 0 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0), i32 3, i32 25 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i32 0, i32 0), i32 3, i32 26 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i32 0, i32 0), i32 3, i32 27 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i32 0, i32 0), i32 3, i32 0 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i32 0, i32 0), i32 3, i32 28 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), i32 3, i32 0 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), i32 1, i32 0 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), i32 2, i32 29 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0), i32 2, i32 30 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i32 2, i32 31 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), i32 2, i32 32 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0), i32 2, i32 33 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0), i32 2, i32 34 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), i32 2, i32 35 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i32 0, i32 0), i32 2, i32 36 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i32 0, i32 0), i32 2, i32 37 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0), i32 2, i32 38 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i32 0, i32 0), i32 2, i32 39 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), i32 1, i32 0 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i32 0, i32 0), i32 1, i32 0 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i32 0, i32 0), i32 1, i32 0 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0), i32 1, i32 0 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), i32 1, i32 0 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i32 0, i32 0), i32 3, i32 0 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.51, i32 0, i32 0), i32 3, i32 40 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i32 0, i32 0), i32 3, i32 41 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.53, i32 0, i32 0), i32 3, i32 42 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i32 0, i32 0), i32 3, i32 43 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), i32 1, i32 0 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0), i32 3, i32 44 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.56, i32 0, i32 0), i32 3, i32 0 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i32 0, i32 0), i32 1, i32 0 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.58, i32 0, i32 0), i32 1, i32 0 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i32 0, i32 0), i32 1, i32 0 }, %struct.INSTR_INFO { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), i32 1, i32 0 }], align 16
@REG_NAMES = global [10 x [3 x i8]] [[3 x i8] c"A\00\00", [3 x i8] c"X\00\00", [3 x i8] c"L\00\00", [3 x i8] c"B\00\00", [3 x i8] c"S\00\00", [3 x i8] c"T\00\00", [3 x i8] c"F\00\00", [3 x i8] c"7\00\00", [3 x i8] c"PC\00", [3 x i8] c"SW\00"], align 16
@PRINT_INSTR = global i32 0, align 4
@DEVICE = common global [256 x %struct.DEVICE_ENTRY] zeroinitializer, align 16
@.str.60 = private unnamed_addr constant [7 x i8] c"%S%S%S\00", align 1
@REGISTER = common global [10 x i32] zeroinitializer, align 16
@.str.61 = private unnamed_addr constant [27 x i8] c"SET_CC called improperly.\0A\00", align 1
@stdin = external global %struct._IO_FILE*, align 8
@stdout = external global %struct._IO_FILE*, align 8
@.str.62 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.63 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@SYM_TAB = external global %struct.SYMBOL_TABLE_ENTRY*, align 8
@.str.64 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@TYPE_OUT_MODE = common global [6 x i8] zeroinitializer, align 1
@.str.65 = private unnamed_addr constant [17 x i8] c"%s%s [base 10]%s\00", align 1
@.str.66 = private unnamed_addr constant [17 x i8] c"%s%s [base 16]%s\00", align 1
@.str.67 = private unnamed_addr constant [23 x i8] c"Address out of range.\0A\00", align 1
@.str.68 = private unnamed_addr constant [8 x i8] c"======>\00", align 1
@.str.69 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.70 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.71 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.72 = private unnamed_addr constant [4 x i8] c"%s\09\00", align 1
@.str.73 = private unnamed_addr constant [18 x i8] c"illegal register\0A\00", align 1
@.str.74 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.75 = private unnamed_addr constant [18 x i8] c"illegal argument\0A\00", align 1
@.str.76 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.77 = private unnamed_addr constant [18 x i8] c"illegal register,\00", align 1
@.str.78 = private unnamed_addr constant [4 x i8] c"%s,\00", align 1
@.str.79 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.80 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.81 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.82 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.83 = private unnamed_addr constant [16 x i8] c"invalid address\00", align 1
@.str.84 = private unnamed_addr constant [3 x i8] c",X\00", align 1
@.str.85 = private unnamed_addr constant [7 x i8] c"%d %s \00", align 1
@.str.86 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@RETURN_STATUS = external global i32, align 4

; Function Attrs: nounwind uwtable
define void @CALL_FUNCTION1(i32 %FUNC, i32 %PRINT_EFFECT) #0 {
entry:
  %FUNC.addr = alloca i32, align 4
  %PRINT_EFFECT.addr = alloca i32, align 4
  store i32 %FUNC, i32* %FUNC.addr, align 4
  store i32 %PRINT_EFFECT, i32* %PRINT_EFFECT.addr, align 4
  %0 = load i32, i32* %FUNC.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 22, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.3
    i32 4, label %sw.bb.4
    i32 5, label %sw.bb.5
    i32 6, label %sw.bb.6
    i32 7, label %sw.bb.7
    i32 8, label %sw.bb.8
    i32 9, label %sw.bb.9
    i32 10, label %sw.bb.10
    i32 11, label %sw.bb.11
    i32 12, label %sw.bb.12
    i32 13, label %sw.bb.13
    i32 14, label %sw.bb.14
    i32 15, label %sw.bb.15
    i32 16, label %sw.bb.16
    i32 17, label %sw.bb.17
    i32 18, label %sw.bb.18
    i32 19, label %sw.bb.19
    i32 20, label %sw.bb.20
    i32 21, label %sw.bb.21
    i32 0, label %sw.bb.22
    i32 23, label %sw.bb.23
    i32 24, label %sw.bb.24
    i32 25, label %sw.bb.25
    i32 26, label %sw.bb.26
    i32 27, label %sw.bb.27
    i32 28, label %sw.bb.28
    i32 29, label %sw.bb.29
    i32 30, label %sw.bb.30
    i32 31, label %sw.bb.31
    i32 32, label %sw.bb.32
    i32 33, label %sw.bb.33
    i32 34, label %sw.bb.34
    i32 35, label %sw.bb.35
    i32 36, label %sw.bb.36
    i32 37, label %sw.bb.37
    i32 38, label %sw.bb.38
    i32 39, label %sw.bb.39
    i32 40, label %sw.bb.40
    i32 41, label %sw.bb.41
    i32 42, label %sw.bb.42
    i32 43, label %sw.bb.43
    i32 44, label %sw.bb.44
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i32, i32* %PRINT_EFFECT.addr, align 4
  call void (i32, ...) bitcast (void (...)* @LDA_P to void (i32, ...)*)(i32 %1)
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %2 = load i32, i32* %PRINT_EFFECT.addr, align 4
  call void (i32, ...) bitcast (void (...)* @LDX_P to void (i32, ...)*)(i32 %2)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %3 = load i32, i32* %PRINT_EFFECT.addr, align 4
  call void (i32, ...) bitcast (void (...)* @LDL_P to void (i32, ...)*)(i32 %3)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %4 = load i32, i32* %PRINT_EFFECT.addr, align 4
  call void (i32, ...) bitcast (void (...)* @STA_P to void (i32, ...)*)(i32 %4)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %5 = load i32, i32* %PRINT_EFFECT.addr, align 4
  call void (i32, ...) bitcast (void (...)* @STX_P to void (i32, ...)*)(i32 %5)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %6 = load i32, i32* %PRINT_EFFECT.addr, align 4
  call void (i32, ...) bitcast (void (...)* @STL_P to void (i32, ...)*)(i32 %6)
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %7 = load i32, i32* %PRINT_EFFECT.addr, align 4
  call void (i32, ...) bitcast (void (...)* @ADD_P to void (i32, ...)*)(i32 %7)
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %8 = load i32, i32* %PRINT_EFFECT.addr, align 4
  call void (i32, ...) bitcast (void (...)* @SUB_P to void (i32, ...)*)(i32 %8)
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  %9 = load i32, i32* %PRINT_EFFECT.addr, align 4
  call void (i32, ...) bitcast (void (...)* @MUL_P to void (i32, ...)*)(i32 %9)
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %10 = load i32, i32* %PRINT_EFFECT.addr, align 4
  call void (i32, ...) bitcast (void (...)* @DIV_P to void (i32, ...)*)(i32 %10)
  br label %sw.epilog

sw.bb.10:                                         ; preds = %entry
  %11 = load i32, i32* %PRINT_EFFECT.addr, align 4
  call void (i32, ...) bitcast (void (...)* @COMP_P to void (i32, ...)*)(i32 %11)
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  %12 = load i32, i32* %PRINT_EFFECT.addr, align 4
  call void (i32, ...) bitcast (void (...)* @TIX_P to void (i32, ...)*)(i32 %12)
  br label %sw.epilog

sw.bb.12:                                         ; preds = %entry
  %13 = load i32, i32* %PRINT_EFFECT.addr, align 4
  call void (i32, ...) bitcast (void (...)* @JEQ_P to void (i32, ...)*)(i32 %13)
  br label %sw.epilog

sw.bb.13:                                         ; preds = %entry
  %14 = load i32, i32* %PRINT_EFFECT.addr, align 4
  call void (i32, ...) bitcast (void (...)* @JGT_P to void (i32, ...)*)(i32 %14)
  br label %sw.epilog

sw.bb.14:                                         ; preds = %entry
  %15 = load i32, i32* %PRINT_EFFECT.addr, align 4
  call void (i32, ...) bitcast (void (...)* @JLT_P to void (i32, ...)*)(i32 %15)
  br label %sw.epilog

sw.bb.15:                                         ; preds = %entry
  %16 = load i32, i32* %PRINT_EFFECT.addr, align 4
  call void (i32, ...) bitcast (void (...)* @J_P to void (i32, ...)*)(i32 %16)
  br label %sw.epilog

sw.bb.16:                                         ; preds = %entry
  %17 = load i32, i32* %PRINT_EFFECT.addr, align 4
  call void (i32, ...) bitcast (void (...)* @AND_P to void (i32, ...)*)(i32 %17)
  br label %sw.epilog

sw.bb.17:                                         ; preds = %entry
  %18 = load i32, i32* %PRINT_EFFECT.addr, align 4
  call void (i32, ...) bitcast (void (...)* @OR_P to void (i32, ...)*)(i32 %18)
  br label %sw.epilog

sw.bb.18:                                         ; preds = %entry
  %19 = load i32, i32* %PRINT_EFFECT.addr, align 4
  call void (i32, ...) bitcast (void (...)* @JSUB_P to void (i32, ...)*)(i32 %19)
  br label %sw.epilog

sw.bb.19:                                         ; preds = %entry
  %20 = load i32, i32* %PRINT_EFFECT.addr, align 4
  call void (i32, ...) bitcast (void (...)* @RSUB_P to void (i32, ...)*)(i32 %20)
  br label %sw.epilog

sw.bb.20:                                         ; preds = %entry
  %21 = load i32, i32* %PRINT_EFFECT.addr, align 4
  call void (i32, ...) bitcast (void (...)* @LDCH_P to void (i32, ...)*)(i32 %21)
  br label %sw.epilog

sw.bb.21:                                         ; preds = %entry
  %22 = load i32, i32* %PRINT_EFFECT.addr, align 4
  call void (i32, ...) bitcast (void (...)* @STCH_P to void (i32, ...)*)(i32 %22)
  br label %sw.epilog

sw.bb.22:                                         ; preds = %entry
  br label %sw.epilog

sw.bb.23:                                         ; preds = %entry
  %23 = load i32, i32* %PRINT_EFFECT.addr, align 4
  call void (i32, ...) bitcast (void (...)* @LDB_P to void (i32, ...)*)(i32 %23)
  br label %sw.epilog

sw.bb.24:                                         ; preds = %entry
  %24 = load i32, i32* %PRINT_EFFECT.addr, align 4
  call void (i32, ...) bitcast (void (...)* @LDS_P to void (i32, ...)*)(i32 %24)
  br label %sw.epilog

sw.bb.25:                                         ; preds = %entry
  %25 = load i32, i32* %PRINT_EFFECT.addr, align 4
  call void (i32, ...) bitcast (void (...)* @LDT_P to void (i32, ...)*)(i32 %25)
  br label %sw.epilog

sw.bb.26:                                         ; preds = %entry
  %26 = load i32, i32* %PRINT_EFFECT.addr, align 4
  call void (i32, ...) bitcast (void (...)* @STB_P to void (i32, ...)*)(i32 %26)
  br label %sw.epilog

sw.bb.27:                                         ; preds = %entry
  %27 = load i32, i32* %PRINT_EFFECT.addr, align 4
  call void (i32, ...) bitcast (void (...)* @STS_P to void (i32, ...)*)(i32 %27)
  br label %sw.epilog

sw.bb.28:                                         ; preds = %entry
  %28 = load i32, i32* %PRINT_EFFECT.addr, align 4
  call void (i32, ...) bitcast (void (...)* @STT_P to void (i32, ...)*)(i32 %28)
  br label %sw.epilog

sw.bb.29:                                         ; preds = %entry
  %29 = load i32, i32* %PRINT_EFFECT.addr, align 4
  call void (i32, ...) bitcast (void (...)* @ADDR_P to void (i32, ...)*)(i32 %29)
  br label %sw.epilog

sw.bb.30:                                         ; preds = %entry
  %30 = load i32, i32* %PRINT_EFFECT.addr, align 4
  call void (i32, ...) bitcast (void (...)* @SUBR_P to void (i32, ...)*)(i32 %30)
  br label %sw.epilog

sw.bb.31:                                         ; preds = %entry
  %31 = load i32, i32* %PRINT_EFFECT.addr, align 4
  call void (i32, ...) bitcast (void (...)* @MULR_P to void (i32, ...)*)(i32 %31)
  br label %sw.epilog

sw.bb.32:                                         ; preds = %entry
  %32 = load i32, i32* %PRINT_EFFECT.addr, align 4
  call void (i32, ...) bitcast (void (...)* @DIVR_P to void (i32, ...)*)(i32 %32)
  br label %sw.epilog

sw.bb.33:                                         ; preds = %entry
  %33 = load i32, i32* %PRINT_EFFECT.addr, align 4
  call void (i32, ...) bitcast (void (...)* @COMPR_P to void (i32, ...)*)(i32 %33)
  br label %sw.epilog

sw.bb.34:                                         ; preds = %entry
  %34 = load i32, i32* %PRINT_EFFECT.addr, align 4
  call void (i32, ...) bitcast (void (...)* @SHIFTL_P to void (i32, ...)*)(i32 %34)
  br label %sw.epilog

sw.bb.35:                                         ; preds = %entry
  %35 = load i32, i32* %PRINT_EFFECT.addr, align 4
  call void (i32, ...) bitcast (void (...)* @SHIFTR_P to void (i32, ...)*)(i32 %35)
  br label %sw.epilog

sw.bb.36:                                         ; preds = %entry
  %36 = load i32, i32* %PRINT_EFFECT.addr, align 4
  call void (i32, ...) bitcast (void (...)* @RMO_P to void (i32, ...)*)(i32 %36)
  br label %sw.epilog

sw.bb.37:                                         ; preds = %entry
  %37 = load i32, i32* %PRINT_EFFECT.addr, align 4
  call void (i32, ...) bitcast (void (...)* @SVC_P to void (i32, ...)*)(i32 %37)
  br label %sw.epilog

sw.bb.38:                                         ; preds = %entry
  %38 = load i32, i32* %PRINT_EFFECT.addr, align 4
  call void (i32, ...) bitcast (void (...)* @CLEAR_P to void (i32, ...)*)(i32 %38)
  br label %sw.epilog

sw.bb.39:                                         ; preds = %entry
  %39 = load i32, i32* %PRINT_EFFECT.addr, align 4
  call void (i32, ...) bitcast (void (...)* @TIXR_P to void (i32, ...)*)(i32 %39)
  br label %sw.epilog

sw.bb.40:                                         ; preds = %entry
  %40 = load i32, i32* %PRINT_EFFECT.addr, align 4
  call void (i32, ...) bitcast (void (...)* @STI_P to void (i32, ...)*)(i32 %40)
  br label %sw.epilog

sw.bb.41:                                         ; preds = %entry
  %41 = load i32, i32* %PRINT_EFFECT.addr, align 4
  call void (i32, ...) bitcast (void (...)* @RD_P to void (i32, ...)*)(i32 %41)
  br label %sw.epilog

sw.bb.42:                                         ; preds = %entry
  %42 = load i32, i32* %PRINT_EFFECT.addr, align 4
  call void (i32, ...) bitcast (void (...)* @WD_P to void (i32, ...)*)(i32 %42)
  br label %sw.epilog

sw.bb.43:                                         ; preds = %entry
  %43 = load i32, i32* %PRINT_EFFECT.addr, align 4
  call void (i32, ...) bitcast (void (...)* @TD_P to void (i32, ...)*)(i32 %43)
  br label %sw.epilog

sw.bb.44:                                         ; preds = %entry
  %44 = load i32, i32* %PRINT_EFFECT.addr, align 4
  call void (i32, ...) bitcast (void (...)* @STSW_P to void (i32, ...)*)(i32 %44)
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.44, %sw.bb.43, %sw.bb.42, %sw.bb.41, %sw.bb.40, %sw.bb.39, %sw.bb.38, %sw.bb.37, %sw.bb.36, %sw.bb.35, %sw.bb.34, %sw.bb.33, %sw.bb.32, %sw.bb.31, %sw.bb.30, %sw.bb.29, %sw.bb.28, %sw.bb.27, %sw.bb.26, %sw.bb.25, %sw.bb.24, %sw.bb.23, %sw.bb.22, %sw.bb.21, %sw.bb.20, %sw.bb.19, %sw.bb.18, %sw.bb.17, %sw.bb.16, %sw.bb.15, %sw.bb.14, %sw.bb.13, %sw.bb.12, %sw.bb.11, %sw.bb.10, %sw.bb.9, %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  ret void
}

declare void @LDA_P(...) #1

declare void @LDX_P(...) #1

declare void @LDL_P(...) #1

declare void @STA_P(...) #1

declare void @STX_P(...) #1

declare void @STL_P(...) #1

declare void @ADD_P(...) #1

declare void @SUB_P(...) #1

declare void @MUL_P(...) #1

declare void @DIV_P(...) #1

declare void @COMP_P(...) #1

declare void @TIX_P(...) #1

declare void @JEQ_P(...) #1

declare void @JGT_P(...) #1

declare void @JLT_P(...) #1

declare void @J_P(...) #1

declare void @AND_P(...) #1

declare void @OR_P(...) #1

declare void @JSUB_P(...) #1

declare void @RSUB_P(...) #1

declare void @LDCH_P(...) #1

declare void @STCH_P(...) #1

declare void @LDB_P(...) #1

declare void @LDS_P(...) #1

declare void @LDT_P(...) #1

declare void @STB_P(...) #1

declare void @STS_P(...) #1

declare void @STT_P(...) #1

declare void @ADDR_P(...) #1

declare void @SUBR_P(...) #1

declare void @MULR_P(...) #1

declare void @DIVR_P(...) #1

declare void @COMPR_P(...) #1

declare void @SHIFTL_P(...) #1

declare void @SHIFTR_P(...) #1

declare void @RMO_P(...) #1

declare void @SVC_P(...) #1

declare void @CLEAR_P(...) #1

declare void @TIXR_P(...) #1

declare void @STI_P(...) #1

declare void @RD_P(...) #1

declare void @WD_P(...) #1

declare void @TD_P(...) #1

declare void @STSW_P(...) #1

; Function Attrs: nounwind uwtable
define void @RESET_DEVICES() #0 {
entry:
  %COUNT = alloca i32, align 4
  store i32 0, i32* getelementptr inbounds ([256 x %struct.DEVICE_ENTRY], [256 x %struct.DEVICE_ENTRY]* @DEVICE, i32 0, i64 0, i32 0), align 4
  store %struct._IO_FILE* null, %struct._IO_FILE** getelementptr inbounds ([256 x %struct.DEVICE_ENTRY], [256 x %struct.DEVICE_ENTRY]* @DEVICE, i32 0, i64 0, i32 1), align 8
  store i32 0, i32* getelementptr inbounds ([256 x %struct.DEVICE_ENTRY], [256 x %struct.DEVICE_ENTRY]* @DEVICE, i32 0, i64 128, i32 0), align 4
  store %struct._IO_FILE* null, %struct._IO_FILE** getelementptr inbounds ([256 x %struct.DEVICE_ENTRY], [256 x %struct.DEVICE_ENTRY]* @DEVICE, i32 0, i64 128, i32 1), align 8
  store i32 0, i32* %COUNT, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %COUNT, align 4
  %cmp = icmp slt i32 %0, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %COUNT, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [256 x %struct.DEVICE_ENTRY], [256 x %struct.DEVICE_ENTRY]* @DEVICE, i32 0, i64 %idxprom
  %STATUS = getelementptr inbounds %struct.DEVICE_ENTRY, %struct.DEVICE_ENTRY* %arrayidx, i32 0, i32 0
  %2 = load i32, i32* %STATUS, align 4
  %cmp1 = icmp eq i32 %2, 1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %3 = load i32, i32* %COUNT, align 4
  %idxprom2 = sext i32 %3 to i64
  %arrayidx3 = getelementptr inbounds [256 x %struct.DEVICE_ENTRY], [256 x %struct.DEVICE_ENTRY]* @DEVICE, i32 0, i64 %idxprom2
  %STATUS4 = getelementptr inbounds %struct.DEVICE_ENTRY, %struct.DEVICE_ENTRY* %arrayidx3, i32 0, i32 0
  store i32 0, i32* %STATUS4, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %4 = load i32, i32* %COUNT, align 4
  %idxprom5 = sext i32 %4 to i64
  %arrayidx6 = getelementptr inbounds [256 x %struct.DEVICE_ENTRY], [256 x %struct.DEVICE_ENTRY]* @DEVICE, i32 0, i64 %idxprom5
  %STREAM = getelementptr inbounds %struct.DEVICE_ENTRY, %struct.DEVICE_ENTRY* %arrayidx6, i32 0, i32 1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %STREAM, align 8
  %cmp7 = icmp ne %struct._IO_FILE* %5, null
  br i1 %cmp7, label %if.then.8, label %if.end.15

if.then.8:                                        ; preds = %if.end
  %6 = load i32, i32* %COUNT, align 4
  %idxprom9 = sext i32 %6 to i64
  %arrayidx10 = getelementptr inbounds [256 x %struct.DEVICE_ENTRY], [256 x %struct.DEVICE_ENTRY]* @DEVICE, i32 0, i64 %idxprom9
  %STREAM11 = getelementptr inbounds %struct.DEVICE_ENTRY, %struct.DEVICE_ENTRY* %arrayidx10, i32 0, i32 1
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %STREAM11, align 8
  %call = call i32 @fclose(%struct._IO_FILE* %7)
  %8 = load i32, i32* %COUNT, align 4
  %idxprom12 = sext i32 %8 to i64
  %arrayidx13 = getelementptr inbounds [256 x %struct.DEVICE_ENTRY], [256 x %struct.DEVICE_ENTRY]* @DEVICE, i32 0, i64 %idxprom12
  %STREAM14 = getelementptr inbounds %struct.DEVICE_ENTRY, %struct.DEVICE_ENTRY* %arrayidx13, i32 0, i32 1
  store %struct._IO_FILE* null, %struct._IO_FILE** %STREAM14, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.8, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.15
  %9 = load i32, i32* %COUNT, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %COUNT, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @PRINT_REG_NAME(i8* %STR1, i32 %REG_NUM, i8* %STR2) #0 {
entry:
  %STR1.addr = alloca i8*, align 8
  %REG_NUM.addr = alloca i32, align 4
  %STR2.addr = alloca i8*, align 8
  store i8* %STR1, i8** %STR1.addr, align 8
  store i32 %REG_NUM, i32* %REG_NUM.addr, align 4
  store i8* %STR2, i8** %STR2.addr, align 8
  %0 = load i8*, i8** %STR1.addr, align 8
  %1 = load i32, i32* %REG_NUM.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [10 x [3 x i8]], [10 x [3 x i8]]* @REG_NAMES, i32 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx, i32 0, i32 0
  %2 = load i8*, i8** %STR2.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i32 0, i32 0), i8* %0, i8* %arraydecay, i8* %2)
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @INSTR_CODE(i32 %LOC) #0 {
entry:
  %LOC.addr = alloca i32, align 4
  store i32 %LOC, i32* %LOC.addr, align 4
  %0 = load i32, i32* %LOC.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i8*, i8** @MEMORY, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %call = call i32 (i32, ...) bitcast (i32 (...)* @INT to i32 (i32, ...)*)(i32 %conv)
  %div = sdiv i32 %call, 4
  ret i32 %div
}

declare i32 @INT(...) #1

; Function Attrs: nounwind uwtable
define void @BYTES_TO_BITS(i32 %VAL, i32 %NUM_BYTES, i32* %BINARY) #0 {
entry:
  %VAL.addr = alloca i32, align 4
  %NUM_BYTES.addr = alloca i32, align 4
  %BINARY.addr = alloca i32*, align 8
  %I = alloca i32, align 4
  store i32 %VAL, i32* %VAL.addr, align 4
  store i32 %NUM_BYTES, i32* %NUM_BYTES.addr, align 4
  store i32* %BINARY, i32** %BINARY.addr, align 8
  store i32 1, i32* %I, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %I, align 4
  %1 = load i32, i32* %NUM_BYTES.addr, align 4
  %mul = mul nsw i32 8, %1
  %cmp = icmp sle i32 %0, %mul
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %VAL.addr, align 4
  %3 = load i32, i32* %VAL.addr, align 4
  %div = sdiv i32 %3, 2
  %mul1 = mul nsw i32 %div, 2
  %sub = sub nsw i32 %2, %mul1
  %4 = load i32, i32* %NUM_BYTES.addr, align 4
  %mul2 = mul nsw i32 8, %4
  %5 = load i32, i32* %I, align 4
  %sub3 = sub nsw i32 %mul2, %5
  %idxprom = sext i32 %sub3 to i64
  %6 = load i32*, i32** %BINARY.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %6, i64 %idxprom
  store i32 %sub, i32* %arrayidx, align 4
  %7 = load i32, i32* %VAL.addr, align 4
  %div4 = sdiv i32 %7, 2
  store i32 %div4, i32* %VAL.addr, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %I, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %I, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @BITS_TO_BYTE(i32* %BINARY, i32 %BITS) #0 {
entry:
  %BINARY.addr = alloca i32*, align 8
  %BITS.addr = alloca i32, align 4
  %I = alloca i32, align 4
  %VAL = alloca i32, align 4
  store i32* %BINARY, i32** %BINARY.addr, align 8
  store i32 %BITS, i32* %BITS.addr, align 4
  store i32 0, i32* %VAL, align 4
  store i32 0, i32* %I, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %I, align 4
  %1 = load i32, i32* %BITS.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %VAL, align 4
  %mul = mul nsw i32 %2, 2
  %3 = load i32, i32* %I, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32*, i32** %BINARY.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %add = add nsw i32 %mul, %5
  store i32 %add, i32* %VAL, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %I, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %I, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %VAL, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define void @SET_CC(i32 %CODE) #0 {
entry:
  %CODE.addr = alloca i32, align 4
  %SW = alloca [24 x i32], align 16
  store i32 %CODE, i32* %CODE.addr, align 4
  %0 = load i32, i32* %CODE.addr, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %CODE.addr, align 4
  %cmp1 = icmp sle i32 %1, 3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %2 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 9), align 4
  %arraydecay = getelementptr inbounds [24 x i32], [24 x i32]* %SW, i32 0, i32 0
  call void @BYTES_TO_BITS(i32 %2, i32 3, i32* %arraydecay)
  %3 = load i32, i32* %CODE.addr, align 4
  %div = sdiv i32 %3, 2
  %arrayidx = getelementptr inbounds [24 x i32], [24 x i32]* %SW, i32 0, i64 6
  store i32 %div, i32* %arrayidx, align 4
  %4 = load i32, i32* %CODE.addr, align 4
  %arrayidx2 = getelementptr inbounds [24 x i32], [24 x i32]* %SW, i32 0, i64 6
  %5 = load i32, i32* %arrayidx2, align 4
  %mul = mul nsw i32 %5, 2
  %sub = sub nsw i32 %4, %mul
  %arrayidx3 = getelementptr inbounds [24 x i32], [24 x i32]* %SW, i32 0, i64 7
  store i32 %sub, i32* %arrayidx3, align 4
  %arraydecay4 = getelementptr inbounds [24 x i32], [24 x i32]* %SW, i32 0, i32 0
  %call = call i32 @BITS_TO_BYTE(i32* %arraydecay4, i32 24)
  store i32 %call, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 9), align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.61, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @CC() #0 {
entry:
  %SW = alloca [24 x i32], align 16
  %0 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 9), align 4
  %arraydecay = getelementptr inbounds [24 x i32], [24 x i32]* %SW, i32 0, i32 0
  call void @BYTES_TO_BITS(i32 %0, i32 3, i32* %arraydecay)
  %arrayidx = getelementptr inbounds [24 x i32], [24 x i32]* %SW, i32 0, i64 6
  %1 = load i32, i32* %arrayidx, align 4
  %mul = mul nsw i32 %1, 2
  %arrayidx1 = getelementptr inbounds [24 x i32], [24 x i32]* %SW, i32 0, i64 7
  %2 = load i32, i32* %arrayidx1, align 4
  %add = add nsw i32 %mul, %2
  ret i32 %add
}

; Function Attrs: nounwind uwtable
define i32 @SUPERVISOR_MODE() #0 {
entry:
  %SW = alloca [24 x i32], align 16
  %0 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 9), align 4
  %arraydecay = getelementptr inbounds [24 x i32], [24 x i32]* %SW, i32 0, i32 0
  call void @BYTES_TO_BITS(i32 %0, i32 3, i32* %arraydecay)
  %arrayidx = getelementptr inbounds [24 x i32], [24 x i32]* %SW, i32 0, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  %cmp = icmp eq i32 %1, 1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define signext i8 @DIGIT_TO_CHAR(i32 %DIGIT) #0 {
entry:
  %DIGIT.addr = alloca i32, align 4
  %CH = alloca i8, align 1
  store i32 %DIGIT, i32* %DIGIT.addr, align 4
  %0 = load i32, i32* %DIGIT.addr, align 4
  %cmp = icmp sge i32 9, %0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %DIGIT.addr, align 4
  %add = add nsw i32 %1, 48
  %conv = trunc i32 %add to i8
  store i8 %conv, i8* %CH, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load i32, i32* %DIGIT.addr, align 4
  %sub = sub nsw i32 %2, 10
  %add1 = add nsw i32 %sub, 65
  %conv2 = trunc i32 %add1 to i8
  store i8 %conv2, i8* %CH, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i8, i8* %CH, align 1
  ret i8 %3
}

; Function Attrs: nounwind uwtable
define void @OPEN_DEVICE(i32 %DEV) #0 {
entry:
  %DEV.addr = alloca i32, align 4
  %NAME = alloca [6 x i8], align 1
  store i32 %DEV, i32* %DEV.addr, align 4
  %0 = load i32, i32* %DEV.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [256 x %struct.DEVICE_ENTRY], [256 x %struct.DEVICE_ENTRY]* @DEVICE, i32 0, i64 %idxprom
  %STATUS = getelementptr inbounds %struct.DEVICE_ENTRY, %struct.DEVICE_ENTRY* %arrayidx, i32 0, i32 0
  store i32 1, i32* %STATUS, align 4
  %1 = load i32, i32* %DEV.addr, align 4
  %idxprom1 = sext i32 %1 to i64
  %arrayidx2 = getelementptr inbounds [256 x %struct.DEVICE_ENTRY], [256 x %struct.DEVICE_ENTRY]* @DEVICE, i32 0, i64 %idxprom1
  %STREAM = getelementptr inbounds %struct.DEVICE_ENTRY, %struct.DEVICE_ENTRY* %arrayidx2, i32 0, i32 1
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %STREAM, align 8
  %cmp = icmp eq %struct._IO_FILE* %2, null
  br i1 %cmp, label %if.then, label %if.end.30

if.then:                                          ; preds = %entry
  %arrayidx3 = getelementptr inbounds [6 x i8], [6 x i8]* %NAME, i32 0, i64 0
  store i8 100, i8* %arrayidx3, align 1
  %arrayidx4 = getelementptr inbounds [6 x i8], [6 x i8]* %NAME, i32 0, i64 1
  store i8 101, i8* %arrayidx4, align 1
  %arrayidx5 = getelementptr inbounds [6 x i8], [6 x i8]* %NAME, i32 0, i64 2
  store i8 118, i8* %arrayidx5, align 1
  %arrayidx6 = getelementptr inbounds [6 x i8], [6 x i8]* %NAME, i32 0, i64 5
  store i8 0, i8* %arrayidx6, align 1
  %3 = load i32, i32* %DEV.addr, align 4
  %cmp7 = icmp eq i32 %3, 0
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.then
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  store %struct._IO_FILE* %4, %struct._IO_FILE** getelementptr inbounds ([256 x %struct.DEVICE_ENTRY], [256 x %struct.DEVICE_ENTRY]* @DEVICE, i32 0, i64 0, i32 1), align 8
  br label %if.end.29

if.else:                                          ; preds = %if.then
  %5 = load i32, i32* %DEV.addr, align 4
  %cmp9 = icmp eq i32 %5, 128
  br i1 %cmp9, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %if.else
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %6, %struct._IO_FILE** getelementptr inbounds ([256 x %struct.DEVICE_ENTRY], [256 x %struct.DEVICE_ENTRY]* @DEVICE, i32 0, i64 128, i32 1), align 8
  br label %if.end.28

if.else.11:                                       ; preds = %if.else
  %7 = load i32, i32* %DEV.addr, align 4
  %div = sdiv i32 %7, 16
  %call = call signext i8 @DIGIT_TO_CHAR(i32 %div)
  %arrayidx12 = getelementptr inbounds [6 x i8], [6 x i8]* %NAME, i32 0, i64 3
  store i8 %call, i8* %arrayidx12, align 1
  %8 = load i32, i32* %DEV.addr, align 4
  %9 = load i32, i32* %DEV.addr, align 4
  %div13 = sdiv i32 %9, 16
  %mul = mul nsw i32 %div13, 16
  %sub = sub nsw i32 %8, %mul
  %call14 = call signext i8 @DIGIT_TO_CHAR(i32 %sub)
  %arrayidx15 = getelementptr inbounds [6 x i8], [6 x i8]* %NAME, i32 0, i64 4
  store i8 %call14, i8* %arrayidx15, align 1
  %10 = load i32, i32* %DEV.addr, align 4
  %cmp16 = icmp slt i32 %10, 128
  br i1 %cmp16, label %if.then.17, label %if.else.22

if.then.17:                                       ; preds = %if.else.11
  %arraydecay = getelementptr inbounds [6 x i8], [6 x i8]* %NAME, i32 0, i32 0
  %call18 = call %struct._IO_FILE* @fopen(i8* %arraydecay, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.62, i32 0, i32 0))
  %11 = load i32, i32* %DEV.addr, align 4
  %idxprom19 = sext i32 %11 to i64
  %arrayidx20 = getelementptr inbounds [256 x %struct.DEVICE_ENTRY], [256 x %struct.DEVICE_ENTRY]* @DEVICE, i32 0, i64 %idxprom19
  %STREAM21 = getelementptr inbounds %struct.DEVICE_ENTRY, %struct.DEVICE_ENTRY* %arrayidx20, i32 0, i32 1
  store %struct._IO_FILE* %call18, %struct._IO_FILE** %STREAM21, align 8
  br label %if.end

if.else.22:                                       ; preds = %if.else.11
  %arraydecay23 = getelementptr inbounds [6 x i8], [6 x i8]* %NAME, i32 0, i32 0
  %call24 = call %struct._IO_FILE* @fopen(i8* %arraydecay23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i32 0, i32 0))
  %12 = load i32, i32* %DEV.addr, align 4
  %idxprom25 = sext i32 %12 to i64
  %arrayidx26 = getelementptr inbounds [256 x %struct.DEVICE_ENTRY], [256 x %struct.DEVICE_ENTRY]* @DEVICE, i32 0, i64 %idxprom25
  %STREAM27 = getelementptr inbounds %struct.DEVICE_ENTRY, %struct.DEVICE_ENTRY* %arrayidx26, i32 0, i32 1
  store %struct._IO_FILE* %call24, %struct._IO_FILE** %STREAM27, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.22, %if.then.17
  br label %if.end.28

if.end.28:                                        ; preds = %if.end, %if.then.10
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.then.8
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %entry
  ret void
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define void @PRINT_ADDRESS(i8* %PREFIX, i32 %ADDRESS, i8* %SUFFIX) #0 {
entry:
  %PREFIX.addr = alloca i8*, align 8
  %ADDRESS.addr = alloca i32, align 4
  %SUFFIX.addr = alloca i8*, align 8
  %ADDR = alloca [9 x i8], align 1
  %NEXT = alloca %struct.SYMBOL_TABLE_ENTRY*, align 8
  %COUNT = alloca i32, align 4
  %SAV = alloca i8, align 1
  store i8* %PREFIX, i8** %PREFIX.addr, align 8
  store i32 %ADDRESS, i32* %ADDRESS.addr, align 4
  store i8* %SUFFIX, i8** %SUFFIX.addr, align 8
  %0 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** @SYM_TAB, align 8
  store %struct.SYMBOL_TABLE_ENTRY* %0, %struct.SYMBOL_TABLE_ENTRY** %NEXT, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %NEXT, align 8
  %cmp = icmp ne %struct.SYMBOL_TABLE_ENTRY* %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %NEXT, align 8
  %LOCATION = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %2, i32 0, i32 2
  %3 = load i32, i32* %LOCATION, align 4
  %4 = load i32, i32* %ADDRESS.addr, align 4
  %cmp1 = icmp eq i32 %3, %4
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  store i32 7, i32* %COUNT, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %COUNT, align 4
  %cmp2 = icmp sgt i32 %5, 0
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %6 = load i32, i32* %COUNT, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %NEXT, align 8
  %LABEL = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %7, i32 0, i32 0
  %arrayidx = getelementptr inbounds [9 x i8], [9 x i8]* %LABEL, i32 0, i64 %idxprom
  %8 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %8 to i32
  %cmp3 = icmp eq i32 %conv, 32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %9 = phi i1 [ false, %for.cond ], [ %cmp3, %land.rhs ]
  br i1 %9, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %COUNT, align 4
  %dec = add nsw i32 %10, -1
  store i32 %dec, i32* %COUNT, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %11 = load i32, i32* %COUNT, align 4
  %add = add nsw i32 %11, 1
  %idxprom5 = sext i32 %add to i64
  %12 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %NEXT, align 8
  %LABEL6 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %12, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [9 x i8], [9 x i8]* %LABEL6, i32 0, i64 %idxprom5
  %13 = load i8, i8* %arrayidx7, align 1
  store i8 %13, i8* %SAV, align 1
  %14 = load i32, i32* %COUNT, align 4
  %add8 = add nsw i32 %14, 1
  %idxprom9 = sext i32 %add8 to i64
  %15 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %NEXT, align 8
  %LABEL10 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %15, i32 0, i32 0
  %arrayidx11 = getelementptr inbounds [9 x i8], [9 x i8]* %LABEL10, i32 0, i64 %idxprom9
  store i8 0, i8* %arrayidx11, align 1
  %16 = load i8*, i8** %PREFIX.addr, align 8
  %17 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %NEXT, align 8
  %LABEL12 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %17, i32 0, i32 0
  %arraydecay = getelementptr inbounds [9 x i8], [9 x i8]* %LABEL12, i32 0, i32 0
  %18 = load i8*, i8** %SUFFIX.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.64, i32 0, i32 0), i8* %16, i8* %arraydecay, i8* %18)
  %19 = load i8, i8* %SAV, align 1
  %20 = load i32, i32* %COUNT, align 4
  %add13 = add nsw i32 %20, 1
  %idxprom14 = sext i32 %add13 to i64
  %21 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %NEXT, align 8
  %LABEL15 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %21, i32 0, i32 0
  %arrayidx16 = getelementptr inbounds [9 x i8], [9 x i8]* %LABEL15, i32 0, i64 %idxprom14
  store i8 %19, i8* %arrayidx16, align 1
  store %struct.SYMBOL_TABLE_ENTRY* null, %struct.SYMBOL_TABLE_ENTRY** %NEXT, align 8
  br label %if.end.34

if.else:                                          ; preds = %while.body
  %22 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %NEXT, align 8
  %NEXT17 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, %struct.SYMBOL_TABLE_ENTRY* %22, i32 0, i32 5
  %23 = load %struct.SYMBOL_TABLE_ENTRY*, %struct.SYMBOL_TABLE_ENTRY** %NEXT17, align 8
  store %struct.SYMBOL_TABLE_ENTRY* %23, %struct.SYMBOL_TABLE_ENTRY** %NEXT, align 8
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %24 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @TYPE_OUT_MODE, i32 0, i64 0), align 1
  %conv18 = sext i8 %24 to i32
  %cmp19 = icmp eq i32 %conv18, 68
  br i1 %cmp19, label %if.then.21, label %if.else.25

if.then.21:                                       ; preds = %while.end
  %25 = load i32, i32* %ADDRESS.addr, align 4
  %arraydecay22 = getelementptr inbounds [9 x i8], [9 x i8]* %ADDR, i32 0, i32 0
  call void (i32, i32, i32, i8*, ...) bitcast (void (...)* @NUM_TO_STR to void (i32, i32, i32, i8*, ...)*)(i32 %25, i32 10, i32 8, i8* %arraydecay22)
  %26 = load i8*, i8** %PREFIX.addr, align 8
  %arraydecay23 = getelementptr inbounds [9 x i8], [9 x i8]* %ADDR, i32 0, i32 0
  %27 = load i8*, i8** %SUFFIX.addr, align 8
  %call24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.65, i32 0, i32 0), i8* %26, i8* %arraydecay23, i8* %27)
  br label %if.end.34

if.else.25:                                       ; preds = %while.end
  %28 = load i32, i32* %ADDRESS.addr, align 4
  %arraydecay26 = getelementptr inbounds [9 x i8], [9 x i8]* %ADDR, i32 0, i32 0
  call void (i32, i32, i32, i8*, ...) bitcast (void (...)* @NUM_TO_STR to void (i32, i32, i32, i8*, ...)*)(i32 %28, i32 16, i32 6, i8* %arraydecay26)
  %29 = load i32, i32* @PRINT_INSTR, align 4
  %tobool = icmp ne i32 %29, 0
  br i1 %tobool, label %if.else.30, label %if.then.27

if.then.27:                                       ; preds = %if.else.25
  %30 = load i8*, i8** %PREFIX.addr, align 8
  %arraydecay28 = getelementptr inbounds [9 x i8], [9 x i8]* %ADDR, i32 0, i32 0
  %31 = load i8*, i8** %SUFFIX.addr, align 8
  %call29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.66, i32 0, i32 0), i8* %30, i8* %arraydecay28, i8* %31)
  br label %if.end.33

if.else.30:                                       ; preds = %if.else.25
  %32 = load i8*, i8** %PREFIX.addr, align 8
  %arraydecay31 = getelementptr inbounds [9 x i8], [9 x i8]* %ADDR, i32 0, i32 0
  %33 = load i8*, i8** %SUFFIX.addr, align 8
  %call32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.64, i32 0, i32 0), i8* %32, i8* %arraydecay31, i8* %33)
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.30, %if.then.27
  br label %if.end.34

if.end.34:                                        ; preds = %for.end, %if.end.33, %if.then.21
  ret void
}

declare void @NUM_TO_STR(...) #1

; Function Attrs: nounwind uwtable
define void @PRINT_CONSTANT(i8* %PREFIX, i32 %CONST, i8* %SUFFIX) #0 {
entry:
  %PREFIX.addr = alloca i8*, align 8
  %CONST.addr = alloca i32, align 4
  %SUFFIX.addr = alloca i8*, align 8
  %STR_CONST = alloca [9 x i8], align 1
  %DIGITS = alloca i32, align 4
  store i8* %PREFIX, i8** %PREFIX.addr, align 8
  store i32 %CONST, i32* %CONST.addr, align 4
  store i8* %SUFFIX, i8** %SUFFIX.addr, align 8
  %0 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @TYPE_OUT_MODE, i32 0, i64 0), align 1
  %conv = sext i8 %0 to i32
  %cmp = icmp eq i32 %conv, 68
  br i1 %cmp, label %if.then, label %if.else.10

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %CONST.addr, align 4
  %cmp2 = icmp eq i32 %1, 0
  br i1 %cmp2, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then
  store i32 1, i32* %DIGITS, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %2 = load i32, i32* %CONST.addr, align 4
  %conv5 = sitofp i32 %2 to double
  %mul = fmul double 1.000000e+00, %conv5
  %call = call double @log(double %mul) #3
  %call6 = call double @log(double 1.000000e+01) #3
  %div = fdiv double %call, %call6
  %conv7 = fptosi double %div to i32
  %add = add nsw i32 %conv7, 1
  store i32 %add, i32* %DIGITS, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  %3 = load i32, i32* %CONST.addr, align 4
  %4 = load i32, i32* %DIGITS, align 4
  %arraydecay = getelementptr inbounds [9 x i8], [9 x i8]* %STR_CONST, i32 0, i32 0
  call void (i32, i32, i32, i8*, ...) bitcast (void (...)* @NUM_TO_STR to void (i32, i32, i32, i8*, ...)*)(i32 %3, i32 10, i32 %4, i8* %arraydecay)
  %5 = load i8*, i8** %PREFIX.addr, align 8
  %arraydecay8 = getelementptr inbounds [9 x i8], [9 x i8]* %STR_CONST, i32 0, i32 0
  %6 = load i8*, i8** %SUFFIX.addr, align 8
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.65, i32 0, i32 0), i8* %5, i8* %arraydecay8, i8* %6)
  br label %if.end.31

if.else.10:                                       ; preds = %entry
  %7 = load i32, i32* %CONST.addr, align 4
  %cmp11 = icmp eq i32 %7, 0
  br i1 %cmp11, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %if.else.10
  store i32 1, i32* %DIGITS, align 4
  br label %if.end.22

if.else.14:                                       ; preds = %if.else.10
  %8 = load i32, i32* %CONST.addr, align 4
  %conv15 = sitofp i32 %8 to double
  %mul16 = fmul double 1.000000e+00, %conv15
  %call17 = call double @log(double %mul16) #3
  %call18 = call double @log(double 1.600000e+01) #3
  %div19 = fdiv double %call17, %call18
  %conv20 = fptosi double %div19 to i32
  %add21 = add nsw i32 %conv20, 1
  store i32 %add21, i32* %DIGITS, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.14, %if.then.13
  %9 = load i32, i32* %CONST.addr, align 4
  %10 = load i32, i32* %DIGITS, align 4
  %arraydecay23 = getelementptr inbounds [9 x i8], [9 x i8]* %STR_CONST, i32 0, i32 0
  call void (i32, i32, i32, i8*, ...) bitcast (void (...)* @NUM_TO_STR to void (i32, i32, i32, i8*, ...)*)(i32 %9, i32 16, i32 %10, i8* %arraydecay23)
  %11 = load i32, i32* @PRINT_INSTR, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.else.27, label %if.then.24

if.then.24:                                       ; preds = %if.end.22
  %12 = load i8*, i8** %PREFIX.addr, align 8
  %arraydecay25 = getelementptr inbounds [9 x i8], [9 x i8]* %STR_CONST, i32 0, i32 0
  %13 = load i8*, i8** %SUFFIX.addr, align 8
  %call26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.66, i32 0, i32 0), i8* %12, i8* %arraydecay25, i8* %13)
  br label %if.end.30

if.else.27:                                       ; preds = %if.end.22
  %14 = load i8*, i8** %PREFIX.addr, align 8
  %arraydecay28 = getelementptr inbounds [9 x i8], [9 x i8]* %STR_CONST, i32 0, i32 0
  %15 = load i8*, i8** %SUFFIX.addr, align 8
  %call29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.64, i32 0, i32 0), i8* %14, i8* %arraydecay28, i8* %15)
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.27, %if.then.24
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.end
  ret void
}

; Function Attrs: nounwind
declare double @log(double) #2

; Function Attrs: nounwind uwtable
define void @PRINT_INSTRUCTION(i32 %LOCATION, i32 %PRINT, i32* %BYTES) #0 {
entry:
  %LOCATION.addr = alloca i32, align 4
  %PRINT.addr = alloca i32, align 4
  %BYTES.addr = alloca i32*, align 8
  %BIT_INSTR = alloca [32 x i32], align 16
  %CODE = alloca i32, align 4
  %SAV_PC = alloca i32, align 4
  %REG1 = alloca i32, align 4
  %REG2 = alloca i32, align 4
  %LOCATION130 = alloca i32, align 4
  store i32 %LOCATION, i32* %LOCATION.addr, align 4
  store i32 %PRINT, i32* %PRINT.addr, align 4
  store i32* %BYTES, i32** %BYTES.addr, align 8
  store i32 1, i32* @PRINT_INSTR, align 4
  %0 = load i32, i32* %LOCATION.addr, align 4
  %call = call i32 @INSTR_CODE(i32 %0)
  store i32 %call, i32* %CODE, align 4
  %1 = load i32, i32* %LOCATION.addr, align 4
  %cmp = icmp sgt i32 0, %1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %LOCATION.addr, align 4
  %cmp1 = icmp sle i32 1048576, %2
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load i32*, i32** %BYTES.addr, align 8
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* %PRINT.addr, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.67, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  br label %if.end.44

if.else:                                          ; preds = %lor.lhs.false
  %5 = load i32, i32* %CODE, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [64 x %struct.INSTR_INFO], [64 x %struct.INSTR_INFO]* @INSTR, i32 0, i64 %idxprom
  %FORMAT = getelementptr inbounds %struct.INSTR_INFO, %struct.INSTR_INFO* %arrayidx, i32 0, i32 1
  %6 = load i32, i32* %FORMAT, align 4
  %cmp4 = icmp slt i32 %6, 3
  br i1 %cmp4, label %if.then.5, label %if.else.9

if.then.5:                                        ; preds = %if.else
  %7 = load i32, i32* %CODE, align 4
  %idxprom6 = sext i32 %7 to i64
  %arrayidx7 = getelementptr inbounds [64 x %struct.INSTR_INFO], [64 x %struct.INSTR_INFO]* @INSTR, i32 0, i64 %idxprom6
  %FORMAT8 = getelementptr inbounds %struct.INSTR_INFO, %struct.INSTR_INFO* %arrayidx7, i32 0, i32 1
  %8 = load i32, i32* %FORMAT8, align 4
  %9 = load i32*, i32** %BYTES.addr, align 8
  store i32 %8, i32* %9, align 4
  br label %if.end.43

if.else.9:                                        ; preds = %if.else
  %10 = load i32, i32* %LOCATION.addr, align 4
  %idxprom10 = sext i32 %10 to i64
  %11 = load i8*, i8** @MEMORY, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %11, i64 %idxprom10
  %12 = load i8, i8* %arrayidx11, align 1
  %conv = sext i8 %12 to i32
  %call12 = call i32 (i32, ...) bitcast (i32 (...)* @INT to i32 (i32, ...)*)(i32 %conv)
  %arraydecay = getelementptr inbounds [32 x i32], [32 x i32]* %BIT_INSTR, i32 0, i32 0
  call void @BYTES_TO_BITS(i32 %call12, i32 1, i32* %arraydecay)
  %13 = load i32, i32* %LOCATION.addr, align 4
  %add = add nsw i32 %13, 1
  %idxprom13 = sext i32 %add to i64
  %14 = load i8*, i8** @MEMORY, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %14, i64 %idxprom13
  %15 = load i8, i8* %arrayidx14, align 1
  %conv15 = sext i8 %15 to i32
  %call16 = call i32 (i32, ...) bitcast (i32 (...)* @INT to i32 (i32, ...)*)(i32 %conv15)
  %arrayidx17 = getelementptr inbounds [32 x i32], [32 x i32]* %BIT_INSTR, i32 0, i64 8
  call void @BYTES_TO_BITS(i32 %call16, i32 1, i32* %arrayidx17)
  %16 = load i32, i32* %LOCATION.addr, align 4
  %add18 = add nsw i32 %16, 2
  %idxprom19 = sext i32 %add18 to i64
  %17 = load i8*, i8** @MEMORY, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %17, i64 %idxprom19
  %18 = load i8, i8* %arrayidx20, align 1
  %conv21 = sext i8 %18 to i32
  %call22 = call i32 (i32, ...) bitcast (i32 (...)* @INT to i32 (i32, ...)*)(i32 %conv21)
  %arrayidx23 = getelementptr inbounds [32 x i32], [32 x i32]* %BIT_INSTR, i32 0, i64 16
  call void @BYTES_TO_BITS(i32 %call22, i32 1, i32* %arrayidx23)
  %arrayidx24 = getelementptr inbounds [32 x i32], [32 x i32]* %BIT_INSTR, i32 0, i64 11
  %19 = load i32, i32* %arrayidx24, align 4
  %cmp25 = icmp eq i32 %19, 1
  br i1 %cmp25, label %land.lhs.true, label %if.else.41

land.lhs.true:                                    ; preds = %if.else.9
  %arrayidx27 = getelementptr inbounds [32 x i32], [32 x i32]* %BIT_INSTR, i32 0, i64 6
  %20 = load i32, i32* %arrayidx27, align 4
  %cmp28 = icmp eq i32 %20, 0
  br i1 %cmp28, label %land.lhs.true.30, label %if.then.34

land.lhs.true.30:                                 ; preds = %land.lhs.true
  %arrayidx31 = getelementptr inbounds [32 x i32], [32 x i32]* %BIT_INSTR, i32 0, i64 7
  %21 = load i32, i32* %arrayidx31, align 4
  %cmp32 = icmp eq i32 %21, 0
  br i1 %cmp32, label %if.else.41, label %if.then.34

if.then.34:                                       ; preds = %land.lhs.true.30, %land.lhs.true
  %22 = load i32*, i32** %BYTES.addr, align 8
  store i32 4, i32* %22, align 4
  %23 = load i32, i32* %LOCATION.addr, align 4
  %add35 = add nsw i32 %23, 3
  %idxprom36 = sext i32 %add35 to i64
  %24 = load i8*, i8** @MEMORY, align 8
  %arrayidx37 = getelementptr inbounds i8, i8* %24, i64 %idxprom36
  %25 = load i8, i8* %arrayidx37, align 1
  %conv38 = sext i8 %25 to i32
  %call39 = call i32 (i32, ...) bitcast (i32 (...)* @INT to i32 (i32, ...)*)(i32 %conv38)
  %arrayidx40 = getelementptr inbounds [32 x i32], [32 x i32]* %BIT_INSTR, i32 0, i64 24
  call void @BYTES_TO_BITS(i32 %call39, i32 1, i32* %arrayidx40)
  br label %if.end.42

if.else.41:                                       ; preds = %land.lhs.true.30, %if.else.9
  %26 = load i32*, i32** %BYTES.addr, align 8
  store i32 3, i32* %26, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.41, %if.then.34
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.then.5
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.end
  %27 = load i32, i32* %PRINT.addr, align 4
  %tobool45 = icmp ne i32 %27, 0
  br i1 %tobool45, label %if.then.46, label %if.end.196

if.then.46:                                       ; preds = %if.end.44
  %28 = load i32, i32* %LOCATION.addr, align 4
  call void @PRINT_ADDRESS(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.68, i32 0, i32 0), i32 %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.69, i32 0, i32 0))
  %29 = load i32*, i32** %BYTES.addr, align 8
  %30 = load i32, i32* %29, align 4
  %cmp47 = icmp eq i32 %30, 4
  br i1 %cmp47, label %if.then.49, label %if.else.51

if.then.49:                                       ; preds = %if.then.46
  %call50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i32 0, i32 0))
  br label %if.end.53

if.else.51:                                       ; preds = %if.then.46
  %call52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i32 0, i32 0))
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.51, %if.then.49
  %31 = load i32, i32* %CODE, align 4
  %idxprom54 = sext i32 %31 to i64
  %arrayidx55 = getelementptr inbounds [64 x %struct.INSTR_INFO], [64 x %struct.INSTR_INFO]* @INSTR, i32 0, i64 %idxprom54
  %MNEMONIC = getelementptr inbounds %struct.INSTR_INFO, %struct.INSTR_INFO* %arrayidx55, i32 0, i32 0
  %32 = load i8*, i8** %MNEMONIC, align 8
  %call56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i32 0, i32 0), i8* %32)
  %33 = load i32*, i32** %BYTES.addr, align 8
  %34 = load i32, i32* %33, align 4
  %cmp57 = icmp eq i32 %34, 1
  br i1 %cmp57, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %if.end.53
  store i32 0, i32* @PRINT_INSTR, align 4
  br label %if.end.196

if.end.60:                                        ; preds = %if.end.53
  %35 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 8), align 4
  store i32 %35, i32* %SAV_PC, align 4
  %36 = load i32, i32* %LOCATION.addr, align 4
  store i32 %36, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 8), align 4
  %37 = load i32*, i32** %BYTES.addr, align 8
  %38 = load i32, i32* %37, align 4
  %cmp61 = icmp eq i32 %38, 2
  br i1 %cmp61, label %if.then.63, label %if.end.129

if.then.63:                                       ; preds = %if.end.60
  call void @FORMAT2(i32* %REG1, i32* %REG2)
  %39 = load i32, i32* %SAV_PC, align 4
  store i32 %39, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 8), align 4
  %40 = load i32, i32* %CODE, align 4
  %cmp64 = icmp eq i32 %40, 45
  br i1 %cmp64, label %if.then.69, label %lor.lhs.false.66

lor.lhs.false.66:                                 ; preds = %if.then.63
  %41 = load i32, i32* %CODE, align 4
  %cmp67 = icmp eq i32 %41, 46
  br i1 %cmp67, label %if.then.69, label %if.end.80

if.then.69:                                       ; preds = %lor.lhs.false.66, %if.then.63
  %42 = load i32, i32* %REG1, align 4
  %cmp70 = icmp sge i32 %42, 10
  br i1 %cmp70, label %if.then.72, label %if.else.74

if.then.72:                                       ; preds = %if.then.69
  %call73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.73, i32 0, i32 0))
  br label %if.end.79

if.else.74:                                       ; preds = %if.then.69
  %43 = load i32, i32* %REG1, align 4
  %idxprom75 = sext i32 %43 to i64
  %arrayidx76 = getelementptr inbounds [10 x [3 x i8]], [10 x [3 x i8]]* @REG_NAMES, i32 0, i64 %idxprom75
  %arraydecay77 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx76, i32 0, i32 0
  %call78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.74, i32 0, i32 0), i8* %arraydecay77)
  br label %if.end.79

if.end.79:                                        ; preds = %if.else.74, %if.then.72
  store i32 0, i32* @PRINT_INSTR, align 4
  br label %if.end.196

if.end.80:                                        ; preds = %lor.lhs.false.66
  %44 = load i32, i32* %CODE, align 4
  %cmp81 = icmp eq i32 %44, 44
  br i1 %cmp81, label %if.then.83, label %if.end.91

if.then.83:                                       ; preds = %if.end.80
  %45 = load i32, i32* %REG1, align 4
  %cmp84 = icmp sgt i32 %45, 4
  br i1 %cmp84, label %if.then.86, label %if.else.88

if.then.86:                                       ; preds = %if.then.83
  %call87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.75, i32 0, i32 0))
  br label %if.end.90

if.else.88:                                       ; preds = %if.then.83
  %46 = load i32, i32* %REG1, align 4
  %call89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i32 0, i32 0), i32 %46)
  br label %if.end.90

if.end.90:                                        ; preds = %if.else.88, %if.then.86
  store i32 0, i32* @PRINT_INSTR, align 4
  br label %if.end.196

if.end.91:                                        ; preds = %if.end.80
  %47 = load i32, i32* %CODE, align 4
  %cmp92 = icmp eq i32 %47, 41
  br i1 %cmp92, label %if.then.97, label %lor.lhs.false.94

lor.lhs.false.94:                                 ; preds = %if.end.91
  %48 = load i32, i32* %CODE, align 4
  %cmp95 = icmp eq i32 %48, 42
  br i1 %cmp95, label %if.then.97, label %if.end.108

if.then.97:                                       ; preds = %lor.lhs.false.94, %if.end.91
  %49 = load i32, i32* %REG1, align 4
  %cmp98 = icmp sge i32 %49, 10
  br i1 %cmp98, label %if.then.100, label %if.else.102

if.then.100:                                      ; preds = %if.then.97
  %call101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.77, i32 0, i32 0))
  br label %if.end.107

if.else.102:                                      ; preds = %if.then.97
  %50 = load i32, i32* %REG1, align 4
  %idxprom103 = sext i32 %50 to i64
  %arrayidx104 = getelementptr inbounds [10 x [3 x i8]], [10 x [3 x i8]]* @REG_NAMES, i32 0, i64 %idxprom103
  %arraydecay105 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx104, i32 0, i32 0
  %call106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.78, i32 0, i32 0), i8* %arraydecay105)
  br label %if.end.107

if.end.107:                                       ; preds = %if.else.102, %if.then.100
  %51 = load i32, i32* %REG2, align 4
  call void @PRINT_CONSTANT(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.79, i32 0, i32 0), i32 %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.80, i32 0, i32 0))
  store i32 0, i32* @PRINT_INSTR, align 4
  br label %if.end.196

if.end.108:                                       ; preds = %lor.lhs.false.94
  %52 = load i32, i32* %REG1, align 4
  %cmp109 = icmp sge i32 %52, 10
  br i1 %cmp109, label %if.then.111, label %if.else.113

if.then.111:                                      ; preds = %if.end.108
  %call112 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.77, i32 0, i32 0))
  br label %if.end.118

if.else.113:                                      ; preds = %if.end.108
  %53 = load i32, i32* %REG1, align 4
  %idxprom114 = sext i32 %53 to i64
  %arrayidx115 = getelementptr inbounds [10 x [3 x i8]], [10 x [3 x i8]]* @REG_NAMES, i32 0, i64 %idxprom114
  %arraydecay116 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx115, i32 0, i32 0
  %call117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.78, i32 0, i32 0), i8* %arraydecay116)
  br label %if.end.118

if.end.118:                                       ; preds = %if.else.113, %if.then.111
  %54 = load i32, i32* %REG2, align 4
  %cmp119 = icmp sge i32 %54, 10
  br i1 %cmp119, label %if.then.121, label %if.else.123

if.then.121:                                      ; preds = %if.end.118
  %call122 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.73, i32 0, i32 0))
  br label %if.end.128

if.else.123:                                      ; preds = %if.end.118
  %55 = load i32, i32* %REG2, align 4
  %idxprom124 = sext i32 %55 to i64
  %arrayidx125 = getelementptr inbounds [10 x [3 x i8]], [10 x [3 x i8]]* @REG_NAMES, i32 0, i64 %idxprom124
  %arraydecay126 = getelementptr inbounds [3 x i8], [3 x i8]* %arrayidx125, i32 0, i32 0
  %call127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.74, i32 0, i32 0), i8* %arraydecay126)
  br label %if.end.128

if.end.128:                                       ; preds = %if.else.123, %if.then.121
  store i32 0, i32* @PRINT_INSTR, align 4
  br label %if.end.196

if.end.129:                                       ; preds = %if.end.60
  %arrayidx131 = getelementptr inbounds [32 x i32], [32 x i32]* %BIT_INSTR, i32 0, i64 6
  %56 = load i32, i32* %arrayidx131, align 4
  %cmp132 = icmp eq i32 %56, 1
  br i1 %cmp132, label %land.lhs.true.134, label %if.else.140

land.lhs.true.134:                                ; preds = %if.end.129
  %arrayidx135 = getelementptr inbounds [32 x i32], [32 x i32]* %BIT_INSTR, i32 0, i64 7
  %57 = load i32, i32* %arrayidx135, align 4
  %cmp136 = icmp eq i32 %57, 0
  br i1 %cmp136, label %if.then.138, label %if.else.140

if.then.138:                                      ; preds = %land.lhs.true.134
  %call139 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.81, i32 0, i32 0))
  br label %if.end.153

if.else.140:                                      ; preds = %land.lhs.true.134, %if.end.129
  %arrayidx141 = getelementptr inbounds [32 x i32], [32 x i32]* %BIT_INSTR, i32 0, i64 6
  %58 = load i32, i32* %arrayidx141, align 4
  %cmp142 = icmp eq i32 %58, 0
  br i1 %cmp142, label %land.lhs.true.144, label %if.else.150

land.lhs.true.144:                                ; preds = %if.else.140
  %arrayidx145 = getelementptr inbounds [32 x i32], [32 x i32]* %BIT_INSTR, i32 0, i64 7
  %59 = load i32, i32* %arrayidx145, align 4
  %cmp146 = icmp eq i32 %59, 1
  br i1 %cmp146, label %if.then.148, label %if.else.150

if.then.148:                                      ; preds = %land.lhs.true.144
  %call149 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.82, i32 0, i32 0))
  br label %if.end.152

if.else.150:                                      ; preds = %land.lhs.true.144, %if.else.140
  %call151 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i32 0, i32 0))
  br label %if.end.152

if.end.152:                                       ; preds = %if.else.150, %if.then.148
  br label %if.end.153

if.end.153:                                       ; preds = %if.end.152, %if.then.138
  %60 = load i32*, i32** %BYTES.addr, align 8
  %61 = load i32, i32* %60, align 4
  %cmp154 = icmp eq i32 %61, 3
  br i1 %cmp154, label %if.then.156, label %if.else.179

if.then.156:                                      ; preds = %if.end.153
  %arrayidx157 = getelementptr inbounds [32 x i32], [32 x i32]* %BIT_INSTR, i32 0, i64 12
  %call158 = call i32 @BITS_TO_BYTE(i32* %arrayidx157, i32 12)
  store i32 %call158, i32* %LOCATION130, align 4
  %arrayidx159 = getelementptr inbounds [32 x i32], [32 x i32]* %BIT_INSTR, i32 0, i64 9
  %62 = load i32, i32* %arrayidx159, align 4
  %cmp160 = icmp eq i32 %62, 1
  br i1 %cmp160, label %if.then.162, label %if.end.164

if.then.162:                                      ; preds = %if.then.156
  %63 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 3), align 4
  %64 = load i32, i32* %LOCATION130, align 4
  %add163 = add nsw i32 %64, %63
  store i32 %add163, i32* %LOCATION130, align 4
  br label %if.end.164

if.end.164:                                       ; preds = %if.then.162, %if.then.156
  %arrayidx165 = getelementptr inbounds [32 x i32], [32 x i32]* %BIT_INSTR, i32 0, i64 10
  %65 = load i32, i32* %arrayidx165, align 4
  %cmp166 = icmp eq i32 %65, 1
  br i1 %cmp166, label %if.then.168, label %if.end.178

if.then.168:                                      ; preds = %if.end.164
  %66 = load i32, i32* %LOCATION130, align 4
  %cmp169 = icmp sge i32 %66, 2048
  br i1 %cmp169, label %if.then.171, label %if.else.174

if.then.171:                                      ; preds = %if.then.168
  %67 = load i32, i32* %LOCATION130, align 4
  %sub = sub nsw i32 %67, 4096
  %68 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 8), align 4
  %add172 = add nsw i32 %sub, %68
  %add173 = add nsw i32 %add172, 3
  store i32 %add173, i32* %LOCATION130, align 4
  br label %if.end.177

if.else.174:                                      ; preds = %if.then.168
  %69 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 8), align 4
  %add175 = add nsw i32 %69, 3
  %70 = load i32, i32* %LOCATION130, align 4
  %add176 = add nsw i32 %70, %add175
  store i32 %add176, i32* %LOCATION130, align 4
  br label %if.end.177

if.end.177:                                       ; preds = %if.else.174, %if.then.171
  br label %if.end.178

if.end.178:                                       ; preds = %if.end.177, %if.end.164
  br label %if.end.182

if.else.179:                                      ; preds = %if.end.153
  %arrayidx180 = getelementptr inbounds [32 x i32], [32 x i32]* %BIT_INSTR, i32 0, i64 12
  %call181 = call i32 @BITS_TO_BYTE(i32* %arrayidx180, i32 20)
  store i32 %call181, i32* %LOCATION130, align 4
  br label %if.end.182

if.end.182:                                       ; preds = %if.else.179, %if.end.178
  %71 = load i32, i32* %LOCATION130, align 4
  %cmp183 = icmp slt i32 %71, 1048576
  br i1 %cmp183, label %if.then.185, label %if.else.186

if.then.185:                                      ; preds = %if.end.182
  %72 = load i32, i32* %LOCATION130, align 4
  call void @PRINT_ADDRESS(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.79, i32 0, i32 0), i32 %72, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.79, i32 0, i32 0))
  br label %if.end.188

if.else.186:                                      ; preds = %if.end.182
  %call187 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.83, i32 0, i32 0))
  br label %if.end.188

if.end.188:                                       ; preds = %if.else.186, %if.then.185
  %arrayidx189 = getelementptr inbounds [32 x i32], [32 x i32]* %BIT_INSTR, i32 0, i64 8
  %73 = load i32, i32* %arrayidx189, align 4
  %cmp190 = icmp eq i32 %73, 1
  br i1 %cmp190, label %if.then.192, label %if.end.194

if.then.192:                                      ; preds = %if.end.188
  %call193 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.84, i32 0, i32 0))
  br label %if.end.194

if.end.194:                                       ; preds = %if.then.192, %if.end.188
  %74 = load i32, i32* %SAV_PC, align 4
  store i32 %74, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 8), align 4
  %call195 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.80, i32 0, i32 0))
  store i32 0, i32* @PRINT_INSTR, align 4
  store i32 0, i32* @PRINT_INSTR, align 4
  br label %if.end.196

if.end.196:                                       ; preds = %if.then.59, %if.end.79, %if.end.90, %if.end.107, %if.end.128, %if.end.194, %if.end.44
  ret void
}

declare void @FORMAT2(i32*, i32*) #1

; Function Attrs: nounwind uwtable
define void @EXEC(i32 %DEBUG_MODE, i32 %PRINT_EFFECT) #0 {
entry:
  %DEBUG_MODE.addr = alloca i32, align 4
  %PRINT_EFFECT.addr = alloca i32, align 4
  store i32 %DEBUG_MODE, i32* %DEBUG_MODE.addr, align 4
  store i32 %PRINT_EFFECT, i32* %PRINT_EFFECT.addr, align 4
  br label %do.body

do.body:                                          ; preds = %land.end, %entry
  %0 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 8), align 4
  %call = call i32 @INSTR_CODE(i32 %0)
  %idxprom = sext i32 %call to i64
  %arrayidx = getelementptr inbounds [64 x %struct.INSTR_INFO], [64 x %struct.INSTR_INFO]* @INSTR, i32 0, i64 %idxprom
  %FUNCTION = getelementptr inbounds %struct.INSTR_INFO, %struct.INSTR_INFO* %arrayidx, i32 0, i32 2
  %1 = load i32, i32* %FUNCTION, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else.17

if.then:                                          ; preds = %do.body
  %2 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 8), align 4
  %3 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 8), align 4
  %call1 = call i32 @INSTR_CODE(i32 %3)
  %idxprom2 = sext i32 %call1 to i64
  %arrayidx3 = getelementptr inbounds [64 x %struct.INSTR_INFO], [64 x %struct.INSTR_INFO]* @INSTR, i32 0, i64 %idxprom2
  %MNEMONIC = getelementptr inbounds %struct.INSTR_INFO, %struct.INSTR_INFO* %arrayidx3, i32 0, i32 0
  %4 = load i8*, i8** %MNEMONIC, align 8
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.85, i32 0, i32 0), i32 %2, i8* %4)
  %5 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 8), align 4
  %call5 = call i32 @INSTR_CODE(i32 %5)
  %idxprom6 = sext i32 %call5 to i64
  %arrayidx7 = getelementptr inbounds [64 x %struct.INSTR_INFO], [64 x %struct.INSTR_INFO]* @INSTR, i32 0, i64 %idxprom6
  %FORMAT = getelementptr inbounds %struct.INSTR_INFO, %struct.INSTR_INFO* %arrayidx7, i32 0, i32 1
  %6 = load i32, i32* %FORMAT, align 4
  %cmp8 = icmp eq i32 %6, 3
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then
  %call10 = call i32 @FORMAT3_4(i32 1, i32 3)
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.86, i32 0, i32 0), i32 %call10)
  br label %if.end

if.else:                                          ; preds = %if.then
  %7 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 8), align 4
  %call12 = call i32 @INSTR_CODE(i32 %7)
  %idxprom13 = sext i32 %call12 to i64
  %arrayidx14 = getelementptr inbounds [64 x %struct.INSTR_INFO], [64 x %struct.INSTR_INFO]* @INSTR, i32 0, i64 %idxprom13
  %FORMAT15 = getelementptr inbounds %struct.INSTR_INFO, %struct.INSTR_INFO* %arrayidx14, i32 0, i32 1
  %8 = load i32, i32* %FORMAT15, align 4
  %9 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 8), align 4
  %add = add nsw i32 %9, %8
  store i32 %add, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 8), align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.9
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.80, i32 0, i32 0))
  br label %if.end.22

if.else.17:                                       ; preds = %do.body
  %10 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 8), align 4
  %call18 = call i32 @INSTR_CODE(i32 %10)
  %idxprom19 = sext i32 %call18 to i64
  %arrayidx20 = getelementptr inbounds [64 x %struct.INSTR_INFO], [64 x %struct.INSTR_INFO]* @INSTR, i32 0, i64 %idxprom19
  %FUNCTION21 = getelementptr inbounds %struct.INSTR_INFO, %struct.INSTR_INFO* %arrayidx20, i32 0, i32 2
  %11 = load i32, i32* %FUNCTION21, align 4
  %12 = load i32, i32* %PRINT_EFFECT.addr, align 4
  call void @CALL_FUNCTION1(i32 %11, i32 %12)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.17, %if.end
  %13 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 8), align 4
  %cmp23 = icmp eq i32 %13, 16777215
  br i1 %cmp23, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %if.end.22
  store i32 1, i32* @RETURN_STATUS, align 4
  br label %if.end.32

if.else.25:                                       ; preds = %if.end.22
  %14 = load i32, i32* @INTERVAL_TIMER, align 4
  %cmp26 = icmp sgt i32 %14, 0
  br i1 %cmp26, label %if.then.27, label %if.end.31

if.then.27:                                       ; preds = %if.else.25
  %15 = load i32, i32* @INTERVAL_TIMER, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, i32* @INTERVAL_TIMER, align 4
  %16 = load i32, i32* @INTERVAL_TIMER, align 4
  %cmp28 = icmp eq i32 %16, 0
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.then.27
  call void (i32, i32, ...) bitcast (void (...)* @SIGNAL_INTERUPT to void (i32, i32, ...)*)(i32 3, i32 0)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %if.then.27
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.else.25
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.24
  br label %do.cond

do.cond:                                          ; preds = %if.end.32
  %17 = load i32, i32* %DEBUG_MODE.addr, align 4
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %do.cond
  %18 = load i32, i32* @RETURN_STATUS, align 4
  %cmp33 = icmp eq i32 %18, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %19 = phi i1 [ false, %do.cond ], [ %cmp33, %land.rhs ]
  br i1 %19, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  ret void
}

declare i32 @FORMAT3_4(i32, i32) #1

declare void @SIGNAL_INTERUPT(...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
