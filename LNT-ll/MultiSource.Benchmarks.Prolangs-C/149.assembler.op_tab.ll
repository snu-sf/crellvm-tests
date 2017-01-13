; ModuleID = './MultiSource.Benchmarks.Prolangs-C/149.assembler.op_tab.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.OP_ENTRY = type { i8*, i32, i8*, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"18\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"ADDR\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"90\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"AND\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"40\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"BYTE\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"CLEAR\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"B4\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"COMP\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"28\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"COMPR\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"A0\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"CSECT\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"DIV\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"24\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"DIVR\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"9C\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"END\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"EQU\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"EXTDEF\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"EXTREF\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"HIO\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"F4\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"J\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"3C\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"JEQ\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"30\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"JGT\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"34\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"JLT\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"38\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"JSUB\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"48\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"LDA\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"00\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"LDB\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"68\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"LDCH\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"50\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"LDL\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"08\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"LDS\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"6C\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"LDT\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c"74\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"LDX\00", align 1
@.str.48 = private unnamed_addr constant [3 x i8] c"04\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"LPS\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c"D0\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"MUL\00", align 1
@.str.52 = private unnamed_addr constant [3 x i8] c"20\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"MULR\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"98\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c"OR\00", align 1
@.str.56 = private unnamed_addr constant [3 x i8] c"44\00", align 1
@.str.57 = private unnamed_addr constant [3 x i8] c"RD\00", align 1
@.str.58 = private unnamed_addr constant [3 x i8] c"D8\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"RESB\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"RESW\00", align 1
@.str.61 = private unnamed_addr constant [4 x i8] c"RMO\00", align 1
@.str.62 = private unnamed_addr constant [3 x i8] c"AC\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"RSUB\00", align 1
@.str.64 = private unnamed_addr constant [3 x i8] c"4C\00", align 1
@.str.65 = private unnamed_addr constant [7 x i8] c"SHIFTL\00", align 1
@.str.66 = private unnamed_addr constant [3 x i8] c"A4\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"SHIFTR\00", align 1
@.str.68 = private unnamed_addr constant [3 x i8] c"A8\00", align 1
@.str.69 = private unnamed_addr constant [4 x i8] c"SIO\00", align 1
@.str.70 = private unnamed_addr constant [3 x i8] c"F0\00", align 1
@.str.71 = private unnamed_addr constant [4 x i8] c"SSK\00", align 1
@.str.72 = private unnamed_addr constant [3 x i8] c"EC\00", align 1
@.str.73 = private unnamed_addr constant [4 x i8] c"STA\00", align 1
@.str.74 = private unnamed_addr constant [3 x i8] c"0C\00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c"START\00", align 1
@.str.76 = private unnamed_addr constant [4 x i8] c"STB\00", align 1
@.str.77 = private unnamed_addr constant [3 x i8] c"78\00", align 1
@.str.78 = private unnamed_addr constant [5 x i8] c"STCH\00", align 1
@.str.79 = private unnamed_addr constant [3 x i8] c"54\00", align 1
@.str.80 = private unnamed_addr constant [4 x i8] c"STI\00", align 1
@.str.81 = private unnamed_addr constant [3 x i8] c"D4\00", align 1
@.str.82 = private unnamed_addr constant [4 x i8] c"STL\00", align 1
@.str.83 = private unnamed_addr constant [3 x i8] c"14\00", align 1
@.str.84 = private unnamed_addr constant [4 x i8] c"STS\00", align 1
@.str.85 = private unnamed_addr constant [3 x i8] c"7C\00", align 1
@.str.86 = private unnamed_addr constant [5 x i8] c"STSW\00", align 1
@.str.87 = private unnamed_addr constant [3 x i8] c"E8\00", align 1
@.str.88 = private unnamed_addr constant [4 x i8] c"STT\00", align 1
@.str.89 = private unnamed_addr constant [3 x i8] c"84\00", align 1
@.str.90 = private unnamed_addr constant [4 x i8] c"STX\00", align 1
@.str.91 = private unnamed_addr constant [3 x i8] c"10\00", align 1
@.str.92 = private unnamed_addr constant [4 x i8] c"SUB\00", align 1
@.str.93 = private unnamed_addr constant [3 x i8] c"1C\00", align 1
@.str.94 = private unnamed_addr constant [5 x i8] c"SUBR\00", align 1
@.str.95 = private unnamed_addr constant [3 x i8] c"94\00", align 1
@.str.96 = private unnamed_addr constant [4 x i8] c"SVC\00", align 1
@.str.97 = private unnamed_addr constant [3 x i8] c"B0\00", align 1
@.str.98 = private unnamed_addr constant [3 x i8] c"TD\00", align 1
@.str.99 = private unnamed_addr constant [3 x i8] c"E0\00", align 1
@.str.100 = private unnamed_addr constant [4 x i8] c"TIO\00", align 1
@.str.101 = private unnamed_addr constant [3 x i8] c"F8\00", align 1
@.str.102 = private unnamed_addr constant [4 x i8] c"TIX\00", align 1
@.str.103 = private unnamed_addr constant [3 x i8] c"2C\00", align 1
@.str.104 = private unnamed_addr constant [5 x i8] c"TIXR\00", align 1
@.str.105 = private unnamed_addr constant [3 x i8] c"B8\00", align 1
@.str.106 = private unnamed_addr constant [3 x i8] c"WD\00", align 1
@.str.107 = private unnamed_addr constant [3 x i8] c"DC\00", align 1
@.str.108 = private unnamed_addr constant [5 x i8] c"WORD\00", align 1
@.str.109 = private unnamed_addr constant [15 x i8] c"*END OF TABLE*\00", align 1
@OP_TABLE = global [60 x %struct.OP_ENTRY] [%struct.OP_ENTRY { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32 3, i32 0 }, %struct.OP_ENTRY { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i32 2, i32 0 }, %struct.OP_ENTRY { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i32 3, i32 0 }, %struct.OP_ENTRY { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i32 6, i32 1 }, %struct.OP_ENTRY { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i32 1, i32 0 }, %struct.OP_ENTRY { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i32 3, i32 0 }, %struct.OP_ENTRY { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0), i32 2, i32 0 }, %struct.OP_ENTRY { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i32 8, i32 2 }, %struct.OP_ENTRY { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0), i32 3, i32 0 }, %struct.OP_ENTRY { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i32 2, i32 0 }, %struct.OP_ENTRY { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i32 6, i32 3 }, %struct.OP_ENTRY { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i32 8, i32 4 }, %struct.OP_ENTRY { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i32 7, i32 5 }, %struct.OP_ENTRY { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i32 7, i32 6 }, %struct.OP_ENTRY { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0), i32 0, i32 0 }, %struct.OP_ENTRY { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0), i32 3, i32 0 }, %struct.OP_ENTRY { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i32 0, i32 0), i32 3, i32 0 }, %struct.OP_ENTRY { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0), i32 3, i32 0 }, %struct.OP_ENTRY { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i32 0, i32 0), i32 3, i32 0 }, %struct.OP_ENTRY { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i32 0, i32 0), i32 3, i32 0 }, %struct.OP_ENTRY { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i32 0, i32 0), i32 3, i32 0 }, %struct.OP_ENTRY { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i32 0, i32 0), i32 3, i32 0 }, %struct.OP_ENTRY { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i32 0, i32 0), i32 3, i32 0 }, %struct.OP_ENTRY { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i32 0, i32 0), i32 3, i32 0 }, %struct.OP_ENTRY { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i32 0, i32 0), i32 3, i32 0 }, %struct.OP_ENTRY { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i32 0, i32 0), i32 3, i32 0 }, %struct.OP_ENTRY { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.48, i32 0, i32 0), i32 3, i32 0 }, %struct.OP_ENTRY { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i32 0, i32 0), i32 3, i32 0 }, %struct.OP_ENTRY { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.51, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i32 0, i32 0), i32 3, i32 0 }, %struct.OP_ENTRY { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i32 0, i32 0), i32 2, i32 0 }, %struct.OP_ENTRY { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i32 0, i32 0), i32 3, i32 0 }, %struct.OP_ENTRY { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.57, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.58, i32 0, i32 0), i32 3, i32 0 }, %struct.OP_ENTRY { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i32 6, i32 7 }, %struct.OP_ENTRY { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i32 6, i32 8 }, %struct.OP_ENTRY { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.61, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i32 0, i32 0), i32 2, i32 0 }, %struct.OP_ENTRY { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.64, i32 0, i32 0), i32 0, i32 0 }, %struct.OP_ENTRY { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.65, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.66, i32 0, i32 0), i32 4, i32 0 }, %struct.OP_ENTRY { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.67, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.68, i32 0, i32 0), i32 4, i32 0 }, %struct.OP_ENTRY { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.70, i32 0, i32 0), i32 0, i32 0 }, %struct.OP_ENTRY { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.71, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.72, i32 0, i32 0), i32 3, i32 0 }, %struct.OP_ENTRY { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.73, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.74, i32 0, i32 0), i32 3, i32 0 }, %struct.OP_ENTRY { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.75, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i32 8, i32 9 }, %struct.OP_ENTRY { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.77, i32 0, i32 0), i32 3, i32 0 }, %struct.OP_ENTRY { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.78, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.79, i32 0, i32 0), i32 3, i32 0 }, %struct.OP_ENTRY { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.80, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.81, i32 0, i32 0), i32 3, i32 0 }, %struct.OP_ENTRY { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.82, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.83, i32 0, i32 0), i32 3, i32 0 }, %struct.OP_ENTRY { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.84, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.85, i32 0, i32 0), i32 3, i32 0 }, %struct.OP_ENTRY { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.86, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.87, i32 0, i32 0), i32 3, i32 0 }, %struct.OP_ENTRY { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.88, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.89, i32 0, i32 0), i32 3, i32 0 }, %struct.OP_ENTRY { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.91, i32 0, i32 0), i32 3, i32 0 }, %struct.OP_ENTRY { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.92, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.93, i32 0, i32 0), i32 3, i32 0 }, %struct.OP_ENTRY { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.94, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.95, i32 0, i32 0), i32 2, i32 0 }, %struct.OP_ENTRY { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.96, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.97, i32 0, i32 0), i32 5, i32 0 }, %struct.OP_ENTRY { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.98, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.99, i32 0, i32 0), i32 3, i32 0 }, %struct.OP_ENTRY { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.100, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.101, i32 0, i32 0), i32 0, i32 0 }, %struct.OP_ENTRY { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.102, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.103, i32 0, i32 0), i32 3, i32 0 }, %struct.OP_ENTRY { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.104, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.105, i32 0, i32 0), i32 1, i32 0 }, %struct.OP_ENTRY { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.106, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.107, i32 0, i32 0), i32 3, i32 0 }, %struct.OP_ENTRY { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.108, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i32 6, i32 10 }, %struct.OP_ENTRY { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.109, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i32 0, i32 0), i32 0, i32 0 }], align 16

; Function Attrs: nounwind uwtable
define %struct.OP_ENTRY* @LOOK_UP_OP(i8* %OP) #0 {
entry:
  %retval = alloca %struct.OP_ENTRY*, align 8
  %OP.addr = alloca i8*, align 8
  %LOW = alloca i32, align 4
  %HIGH = alloca i32, align 4
  %MIDDLE = alloca i32, align 4
  %CMP = alloca i32, align 4
  store i8* %OP, i8** %OP.addr, align 8
  store i32 0, i32* %LOW, align 4
  store i32 58, i32* %HIGH, align 4
  store i32 0, i32* %MIDDLE, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.6, %entry
  %0 = load i32, i32* %LOW, align 4
  %1 = load i32, i32* %HIGH, align 4
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %HIGH, align 4
  %3 = load i32, i32* %LOW, align 4
  %add = add nsw i32 %2, %3
  %div = sdiv i32 %add, 2
  store i32 %div, i32* %MIDDLE, align 4
  %4 = load i32, i32* %MIDDLE, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [60 x %struct.OP_ENTRY], [60 x %struct.OP_ENTRY]* @OP_TABLE, i32 0, i64 %idxprom
  %MNEMONIC = getelementptr inbounds %struct.OP_ENTRY, %struct.OP_ENTRY* %arrayidx, i32 0, i32 0
  %5 = load i8*, i8** %MNEMONIC, align 8
  %6 = load i8*, i8** %OP.addr, align 8
  %call = call i32 @strcmp(i8* %5, i8* %6) #2
  store i32 %call, i32* %CMP, align 4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  %7 = load i32, i32* %MIDDLE, align 4
  %idxprom1 = sext i32 %7 to i64
  %arrayidx2 = getelementptr inbounds [60 x %struct.OP_ENTRY], [60 x %struct.OP_ENTRY]* @OP_TABLE, i32 0, i64 %idxprom1
  store %struct.OP_ENTRY* %arrayidx2, %struct.OP_ENTRY** %retval
  br label %return

if.end:                                           ; preds = %while.body
  %8 = load i32, i32* %CMP, align 4
  %cmp3 = icmp sgt i32 %8, 0
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  %9 = load i32, i32* %MIDDLE, align 4
  %sub = sub nsw i32 %9, 1
  store i32 %sub, i32* %HIGH, align 4
  br label %if.end.6

if.else:                                          ; preds = %if.end
  %10 = load i32, i32* %MIDDLE, align 4
  %add5 = add nsw i32 %10, 1
  store i32 %add5, i32* %LOW, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store %struct.OP_ENTRY* getelementptr inbounds ([60 x %struct.OP_ENTRY], [60 x %struct.OP_ENTRY]* @OP_TABLE, i32 0, i64 59), %struct.OP_ENTRY** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %11 = load %struct.OP_ENTRY*, %struct.OP_ENTRY** %retval
  ret %struct.OP_ENTRY* %11
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
