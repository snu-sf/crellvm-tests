; ModuleID = './MultiSource.Benchmarks.Prolangs-C/80.cdecl.cdecl.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.YYSTYPE = type { %struct.anon }
%struct.anon = type { i8*, i8*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.yywork = type { i8, i8 }
%struct.yysvf = type { %struct.yywork*, %struct.yysvf*, i32* }
%struct.anon.0 = type { i8*, i32 }
%struct.helpstruct = type { i8*, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@cdeclsccsid = global [24 x i8] c"@(#)cdecl.c\092.4 3/31/88\00", align 16
@modbits = global i32 0, align 4
@arbdims = global i32 1, align 4
@savedname = global i8* null, align 8
@unknown_name = global [13 x i8] c"unknown_name\00", align 1
@prev = global i8 0, align 1
@RitchieFlag = global i32 0, align 4
@MkProgramFlag = global i32 0, align 4
@PreANSIFlag = global i32 0, align 4
@CplusplusFlag = global i32 0, align 4
@OnATty = global i32 0, align 4
@Interactive = global i32 0, align 4
@KeywordName = global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"cdecl\00", align 1
@progname = global i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), align 8
@cdgramsccsid = global [25 x i8] c"@(#)cdgram.y\092.2 3/30/88\00", align 16
@yyexca = global [46 x i16] [i16 -1, i16 1, i16 0, i16 -1, i16 -2, i16 0, i16 -1, i16 27, i16 282, i16 81, i16 40, i16 81, i16 42, i16 81, i16 38, i16 81, i16 -2, i16 87, i16 -1, i16 37, i16 260, i16 31, i16 41, i16 31, i16 -2, i16 81, i16 -1, i16 87, i16 282, i16 82, i16 40, i16 82, i16 42, i16 82, i16 38, i16 82, i16 -2, i16 80, i16 -1, i16 92, i16 260, i16 31, i16 41, i16 31, i16 -2, i16 81], align 16
@yyact = global [322 x i16] [i16 67, i16 79, i16 28, i16 69, i16 72, i16 68, i16 66, i16 76, i16 159, i16 13, i16 77, i16 75, i16 78, i16 73, i16 74, i16 70, i16 79, i16 16, i16 17, i16 18, i16 19, i16 16, i16 17, i16 18, i16 19, i16 67, i16 129, i16 78, i16 69, i16 103, i16 68, i16 66, i16 125, i16 25, i16 76, i16 39, i16 23, i16 77, i16 75, i16 128, i16 70, i16 74, i16 118, i16 22, i16 115, i16 137, i16 117, i16 118, i16 85, i16 115, i16 86, i16 117, i16 83, i16 23, i16 152, i16 25, i16 30, i16 100, i16 23, i16 10, i16 22, i16 56, i16 25, i16 23, i16 47, i16 22, i16 60, i16 59, i16 37, i16 97, i16 22, i16 121, i16 25, i16 40, i16 41, i16 123, i16 58, i16 25, i16 20, i16 34, i16 139, i16 110, i16 25, i16 161, i16 144, i16 93, i16 145, i16 92, i16 94, i16 32, i16 24, i16 57, i16 147, i16 71, i16 126, i16 29, i16 81, i16 21, i16 42, i16 55, i16 8, i16 136, i16 108, i16 150, i16 12, i16 135, i16 33, i16 106, i16 11, i16 114, i16 31, i16 10, i16 62, i16 151, i16 132, i16 134, i16 44, i16 45, i16 48, i16 49, i16 156, i16 43, i16 35, i16 2, i16 63, i16 15, i16 53, i16 1, i16 54, i16 14, i16 50, i16 64, i16 27, i16 65, i16 52, i16 101, i16 26, i16 46, i16 87, i16 82, i16 61, i16 38, i16 0, i16 90, i16 80, i16 88, i16 0, i16 0, i16 89, i16 0, i16 95, i16 96, i16 98, i16 108, i16 91, i16 108, i16 0, i16 0, i16 108, i16 0, i16 11, i16 0, i16 51, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 109, i16 0, i16 111, i16 104, i16 102, i16 0, i16 0, i16 0, i16 105, i16 112, i16 107, i16 0, i16 122, i16 99, i16 0, i16 113, i16 0, i16 119, i16 120, i16 0, i16 0, i16 0, i16 0, i16 127, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 124, i16 131, i16 0, i16 133, i16 0, i16 0, i16 0, i16 0, i16 142, i16 0, i16 0, i16 130, i16 143, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 138, i16 146, i16 140, i16 141, i16 148, i16 0, i16 149, i16 0, i16 0, i16 0, i16 0, i16 127, i16 0, i16 0, i16 0, i16 153, i16 0, i16 0, i16 25, i16 158, i16 0, i16 0, i16 127, i16 0, i16 128, i16 155, i16 160, i16 16, i16 17, i16 18, i16 19, i16 154, i16 0, i16 0, i16 0, i16 0, i16 157, i16 0, i16 0, i16 0, i16 0, i16 0, i16 25, i16 0, i16 0, i16 0, i16 0, i16 0, i16 128, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 116, i16 0, i16 0, i16 0, i16 0, i16 116, i16 84, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 36, i16 0, i16 0, i16 145, i16 145, i16 92, i16 9, i16 0, i16 0, i16 5, i16 0, i16 4, i16 0, i16 6, i16 0, i16 3, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 7], align 16
@yypact = global [162 x i16] [i16 -1000, i16 49, i16 -1000, i16 101, i16 -273, i16 -204, i16 -38, i16 -226, i16 -1000, i16 101, i16 -1000, i16 -1000, i16 -1000, i16 -169, i16 -194, i16 -1000, i16 -1000, i16 -1000, i16 -1000, i16 -1000, i16 -187, i16 101, i16 28, i16 -248, i16 -196, i16 -214, i16 -212, i16 -214, i16 -214, i16 101, i16 -1000, i16 -1000, i16 -269, i16 101, i16 -194, i16 -1000, i16 -194, i16 -221, i16 -191, i16 -1000, i16 -206, i16 -207, i16 -1000, i16 -274, i16 -1000, i16 -1000, i16 10, i16 -214, i16 10, i16 -1000, i16 -1000, i16 -194, i16 -1000, i16 101, i16 -1000, i16 44, i16 -170, i16 -1000, i16 -194, i16 -199, i16 -194, i16 -1000, i16 -249, i16 -1000, i16 -225, i16 -247, i16 -1000, i16 -1000, i16 -1000, i16 -1000, i16 -1000, i16 -1000, i16 -1000, i16 -1000, i16 -1000, i16 -1000, i16 -1000, i16 -1000, i16 -1000, i16 -1000, i16 10, i16 101, i16 67, i16 -214, i16 -181, i16 -214, i16 10, i16 -1000, i16 101, i16 9, i16 101, i16 -1000, i16 -221, i16 -200, i16 -194, i16 -1000, i16 -1000, i16 -192, i16 -1000, i16 -1000, i16 -1000, i16 -1000, i16 -1000, i16 -1000, i16 101, i16 -1000, i16 -9, i16 -1000, i16 -67, i16 10, i16 72, i16 10, i16 74, i16 -1000, i16 64, i16 4, i16 -182, i16 9, i16 9, i16 -1000, i16 -173, i16 -194, i16 -1000, i16 -259, i16 -1000, i16 -1000, i16 43, i16 -1000, i16 -1000, i16 -1000, i16 -1, i16 -1000, i16 10, i16 -1000, i16 -1000, i16 -226, i16 -1000, i16 -1000, i16 62, i16 71, i16 11, i16 11, i16 -1000, i16 -228, i16 -1000, i16 -243, i16 9, i16 -1000, i16 -1000, i16 101, i16 80, i16 9, i16 -194, i16 -174, i16 11, i16 -1000, i16 -33, i16 11, i16 -1000, i16 -1000, i16 42, i16 -1000], align 16
@yypgo = global [26 x i16] [i16 0, i16 99, i16 141, i16 140, i16 109, i16 94, i16 96, i16 139, i16 101, i16 137, i16 93, i16 112, i16 135, i16 133, i16 90, i16 95, i16 129, i16 125, i16 131, i16 124, i16 98, i16 91, i16 127, i16 123, i16 100, i16 121], align 16
@yyr1 = global [89 x i16] [i16 0, i16 22, i16 22, i16 23, i16 23, i16 23, i16 23, i16 23, i16 23, i16 23, i16 23, i16 23, i16 23, i16 23, i16 23, i16 24, i16 24, i16 15, i16 15, i16 6, i16 6, i16 6, i16 6, i16 7, i16 7, i16 7, i16 7, i16 7, i16 5, i16 5, i16 5, i16 1, i16 1, i16 1, i16 1, i16 1, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 8, i16 8, i16 21, i16 21, i16 21, i16 21, i16 21, i16 21, i16 21, i16 2, i16 2, i16 20, i16 25, i16 3, i16 3, i16 3, i16 3, i16 18, i16 18, i16 18, i16 10, i16 10, i16 19, i16 19, i16 19, i16 19, i16 19, i16 11, i16 11, i16 12, i16 12, i16 13, i16 13, i16 13, i16 13, i16 14, i16 14, i16 9, i16 17, i16 17, i16 17, i16 17, i16 16, i16 16], align 16
@yyr2 = global [89 x i16] [i16 0, i16 0, i16 2, i16 2, i16 6, i16 4, i16 5, i16 3, i16 6, i16 5, i16 5, i16 8, i16 3, i16 1, i16 2, i16 1, i16 1, i16 1, i16 0, i16 1, i16 3, i16 4, i16 3, i16 3, i16 4, i16 2, i16 3, i16 1, i16 3, i16 3, i16 1, i16 0, i16 3, i16 1, i16 1, i16 3, i16 0, i16 2, i16 5, i16 6, i16 3, i16 4, i16 2, i16 2, i16 2, i16 2, i16 3, i16 3, i16 6, i16 4, i16 4, i16 8, i16 4, i16 2, i16 0, i16 1, i16 2, i16 0, i16 1, i16 1, i16 2, i16 2, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 2, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 2, i16 0, i16 2, i16 1, i16 1, i16 1, i16 1, i16 1, i16 0], align 16
@yychk = global [162 x i16] [i16 -1000, i16 -22, i16 -23, i16 265, i16 261, i16 259, i16 263, i16 272, i16 -24, i16 256, i16 10, i16 59, i16 -24, i16 282, i16 -16, i16 -17, i16 290, i16 291, i16 292, i16 293, i16 282, i16 -21, i16 264, i16 257, i16 -14, i16 276, i16 -16, i16 -17, i16 40, i16 -15, i16 282, i16 -24, i16 258, i16 -21, i16 266, i16 -24, i16 271, i16 40, i16 -2, i16 283, i16 269, i16 270, i16 -20, i16 -25, i16 -14, i16 -14, i16 -9, i16 276, i16 -14, i16 -14, i16 -24, i16 -16, i16 -24, i16 -21, i16 -21, i16 -1, i16 282, i16 -21, i16 267, i16 273, i16 273, i16 -3, i16 -11, i16 -19, i16 -18, i16 -13, i16 280, i16 274, i16 279, i16 277, i16 289, i16 -10, i16 278, i16 287, i16 288, i16 285, i16 281, i16 284, i16 286, i16 275, i16 -20, i16 -6, i16 -7, i16 42, i16 282, i16 38, i16 40, i16 -14, i16 -6, i16 -20, i16 -21, i16 -24, i16 260, i16 41, i16 258, i16 -21, i16 -21, i16 268, i16 -21, i16 -19, i16 282, i16 -12, i16 -11, i16 276, i16 -6, i16 -24, i16 40, i16 -8, i16 91, i16 -14, i16 262, i16 -14, i16 -6, i16 -24, i16 -4, i16 40, i16 282, i16 42, i16 38, i16 -24, i16 -1, i16 271, i16 -21, i16 267, i16 -24, i16 41, i16 -5, i16 -14, i16 282, i16 93, i16 283, i16 -6, i16 42, i16 -6, i16 41, i16 41, i16 -8, i16 41, i16 -4, i16 262, i16 -4, i16 -4, i16 -21, i16 -10, i16 41, i16 260, i16 -20, i16 93, i16 -6, i16 -15, i16 41, i16 42, i16 282, i16 -5, i16 -4, i16 -24, i16 40, i16 -4, i16 -21, i16 41, i16 -5, i16 41], align 16
@yydef = global [162 x i16] [i16 1, i16 -2, i16 2, i16 0, i16 88, i16 81, i16 88, i16 18, i16 13, i16 0, i16 15, i16 16, i16 3, i16 0, i16 81, i16 87, i16 83, i16 84, i16 85, i16 86, i16 0, i16 0, i16 0, i16 54, i16 57, i16 81, i16 81, i16 -2, i16 81, i16 0, i16 17, i16 14, i16 88, i16 0, i16 81, i16 7, i16 81, i16 -2, i16 0, i16 55, i16 0, i16 0, i16 53, i16 0, i16 80, i16 57, i16 0, i16 81, i16 0, i16 57, i16 12, i16 81, i16 5, i16 0, i16 47, i16 0, i16 33, i16 34, i16 81, i16 81, i16 81, i16 56, i16 58, i16 59, i16 0, i16 73, i16 67, i16 68, i16 69, i16 70, i16 71, i16 62, i16 63, i16 64, i16 76, i16 77, i16 78, i16 79, i16 65, i16 66, i16 0, i16 0, i16 19, i16 81, i16 27, i16 81, i16 0, i16 -2, i16 0, i16 36, i16 0, i16 6, i16 -2, i16 0, i16 81, i16 49, i16 50, i16 0, i16 52, i16 60, i16 61, i16 72, i16 74, i16 75, i16 0, i16 10, i16 81, i16 25, i16 0, i16 0, i16 0, i16 0, i16 0, i16 9, i16 0, i16 36, i16 0, i16 36, i16 36, i16 4, i16 32, i16 81, i16 35, i16 0, i16 8, i16 23, i16 0, i16 57, i16 30, i16 45, i16 0, i16 20, i16 0, i16 22, i16 26, i16 18, i16 44, i16 37, i16 0, i16 0, i16 42, i16 43, i16 48, i16 0, i16 24, i16 81, i16 36, i16 46, i16 21, i16 0, i16 40, i16 36, i16 81, i16 28, i16 29, i16 11, i16 81, i16 41, i16 51, i16 38, i16 0, i16 39], align 16
@yychar = global i32 -1, align 4
@yynerrs = global i32 0, align 4
@yyerrflag = global i16 0, align 2
@yyv = common global [150 x %union.YYSTYPE] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [20 x i8] c"yacc stack overflow\00", align 1
@yyval = common global %union.YYSTYPE zeroinitializer, align 8
@yylval = common global %union.YYSTYPE zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"syntax error\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c" pointer to \00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"pointer to \00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"pointer to member of class\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"pointer to member of class \00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"reference\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c" reference to \00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"reference to \00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"function returning \00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"function (\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c") returning \00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"array \00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"of \00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c" of \00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"Function returning function\00", align 1
@.str.20 = private unnamed_addr constant [39 x i8] c"function returning pointer to function\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"Function returning array\00", align 1
@.str.22 = private unnamed_addr constant [27 x i8] c"function returning pointer\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"()\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"Array of function\00", align 1
@.str.27 = private unnamed_addr constant [29 x i8] c"array of pointer to function\00", align 1
@.str.28 = private unnamed_addr constant [32 x i8] c"Inner array of unspecified size\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"array of pointer\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"Array of void\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"pointer to void\00", align 1
@.str.32 = private unnamed_addr constant [42 x i8] c"Pointer to array of unspecified dimension\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"pointer to object\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"::*\00", align 1
@.str.36 = private unnamed_addr constant [18 x i8] c"Reference to void\00", align 1
@.str.37 = private unnamed_addr constant [44 x i8] c"Reference to array of unspecified dimension\00", align 1
@.str.38 = private unnamed_addr constant [20 x i8] c"reference to object\00", align 1
@.str.39 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"struct\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"[]\00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.45 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.46 = private unnamed_addr constant [21 x i8] c" (Pre-ANSI Compiler)\00", align 1
@.str.47 = private unnamed_addr constant [20 x i8] c" (Ritchie Compiler)\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"noalias\00", align 1
@yyin = global %struct._IO_FILE* null, align 8
@yyout = global %struct._IO_FILE* null, align 8
@cdlexsccsid = global [24 x i8] c"@(#)cdlex.l\092.2 3/30/88\00", align 16
@stdin = external global %struct._IO_FILE*, align 8
@stdout = external global %struct._IO_FILE*, align 8
@yytext = common global [8192 x i8] zeroinitializer, align 16
@.str.49 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"const\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"enum\00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.53 = private unnamed_addr constant [20 x i8] c"bad character '%s'\0A\00", align 1
@.str.54 = private unnamed_addr constant [21 x i8] c"bad switch yylook %d\00", align 1
@yyvstop = global [496 x i32] [i32 0, i32 56, i32 0, i32 54, i32 56, i32 0, i32 55, i32 0, i32 53, i32 56, i32 0, i32 55, i32 56, i32 0, i32 25, i32 56, i32 0, i32 52, i32 56, i32 0, i32 56, i32 0, i32 24, i32 56, i32 0, i32 51, i32 56, i32 0, i32 51, i32 56, i32 0, i32 51, i32 56, i32 0, i32 51, i32 56, i32 0, i32 51, i32 56, i32 0, i32 51, i32 56, i32 0, i32 51, i32 56, i32 0, i32 51, i32 56, i32 0, i32 51, i32 56, i32 0, i32 51, i32 56, i32 0, i32 51, i32 56, i32 0, i32 51, i32 56, i32 0, i32 51, i32 56, i32 0, i32 51, i32 56, i32 0, i32 51, i32 56, i32 0, i32 51, i32 56, i32 0, i32 51, i32 56, i32 0, i32 51, i32 56, i32 0, i32 51, i32 56, i32 0, i32 53, i32 0, i32 52, i32 0, i32 23, i32 0, i32 51, i32 0, i32 51, i32 0, i32 2, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 12, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 21, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 38, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 14, i32 51, i32 0, i32 51, i32 0, i32 17, i32 51, i32 0, i32 51, i32 0, i32 19, i32 51, i32 0, i32 20, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 26, i32 51, i32 0, i32 3, i32 51, i32 0, i32 28, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 34, i32 51, i32 0, i32 5, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 8, i32 51, i32 0, i32 9, i32 51, i32 0, i32 51, i32 0, i32 10, i32 51, i32 0, i32 39, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 15, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 49, i32 51, i32 0, i32 51, i32 0, i32 1, i32 51, i32 0, i32 51, i32 0, i32 29, i32 51, i32 0, i32 31, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 36, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 42, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 47, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 32, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 35, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 11, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 43, i32 51, i32 0, i32 44, i32 51, i32 0, i32 46, i32 51, i32 0, i32 51, i32 0, i32 22, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 4, i32 51, i32 0, i32 51, i32 0, i32 6, i32 51, i32 0, i32 51, i32 0, i32 37, i32 51, i32 0, i32 40, i32 51, i32 0, i32 13, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 30, i32 51, i32 0, i32 51, i32 0, i32 7, i32 51, i32 0, i32 51, i32 0, i32 41, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 48, i32 51, i32 0, i32 50, i32 51, i32 0, i32 27, i32 51, i32 0, i32 51, i32 0, i32 16, i32 51, i32 0, i32 18, i32 51, i32 0, i32 45, i32 51, i32 0, i32 51, i32 0, i32 33, i32 51, i32 0, i32 0], align 16
@yycrank = global [377 x %struct.yywork] [%struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork { i8 1, i8 3 }, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork { i8 6, i8 31 }, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork { i8 1, i8 4 }, %struct.yywork { i8 1, i8 5 }, %struct.yywork { i8 31, i8 0 }, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork { i8 6, i8 31 }, %struct.yywork { i8 6, i8 0 }, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork { i8 1, i8 6 }, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork { i8 1, i8 7 }, %struct.yywork zeroinitializer, %struct.yywork { i8 6, i8 31 }, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork { i8 6, i8 31 }, %struct.yywork { i8 1, i8 8 }, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork { i8 1, i8 9 }, %struct.yywork { i8 6, i8 31 }, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork { i8 6, i8 31 }, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork { i8 1, i8 10 }, %struct.yywork { i8 10, i8 33 }, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork { i8 1, i8 11 }, %struct.yywork zeroinitializer, %struct.yywork { i8 1, i8 12 }, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork { i8 6, i8 31 }, %struct.yywork zeroinitializer, %struct.yywork { i8 6, i8 31 }, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork { i8 2, i8 10 }, %struct.yywork { i8 9, i8 32 }, %struct.yywork { i8 9, i8 32 }, %struct.yywork { i8 9, i8 32 }, %struct.yywork { i8 9, i8 32 }, %struct.yywork { i8 9, i8 32 }, %struct.yywork { i8 9, i8 32 }, %struct.yywork { i8 9, i8 32 }, %struct.yywork { i8 9, i8 32 }, %struct.yywork { i8 9, i8 32 }, %struct.yywork { i8 9, i8 32 }, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork { i8 1, i8 13 }, %struct.yywork { i8 39, i8 69 }, %struct.yywork { i8 1, i8 14 }, %struct.yywork { i8 1, i8 15 }, %struct.yywork { i8 1, i8 16 }, %struct.yywork { i8 1, i8 17 }, %struct.yywork { i8 18, i8 48 }, %struct.yywork { i8 1, i8 18 }, %struct.yywork { i8 1, i8 19 }, %struct.yywork { i8 21, i8 51 }, %struct.yywork { i8 23, i8 53 }, %struct.yywork { i8 1, i8 20 }, %struct.yywork { i8 1, i8 21 }, %struct.yywork { i8 1, i8 22 }, %struct.yywork { i8 1, i8 23 }, %struct.yywork { i8 1, i8 24 }, %struct.yywork { i8 1, i8 25 }, %struct.yywork { i8 1, i8 26 }, %struct.yywork { i8 1, i8 27 }, %struct.yywork { i8 1, i8 28 }, %struct.yywork { i8 1, i8 29 }, %struct.yywork { i8 1, i8 30 }, %struct.yywork { i8 2, i8 13 }, %struct.yywork { i8 17, i8 46 }, %struct.yywork { i8 2, i8 14 }, %struct.yywork { i8 2, i8 15 }, %struct.yywork { i8 2, i8 16 }, %struct.yywork { i8 2, i8 17 }, %struct.yywork { i8 19, i8 49 }, %struct.yywork { i8 2, i8 18 }, %struct.yywork { i8 2, i8 19 }, %struct.yywork { i8 20, i8 50 }, %struct.yywork { i8 17, i8 47 }, %struct.yywork { i8 2, i8 20 }, %struct.yywork { i8 2, i8 21 }, %struct.yywork { i8 2, i8 22 }, %struct.yywork { i8 2, i8 23 }, %struct.yywork { i8 2, i8 24 }, %struct.yywork { i8 2, i8 25 }, %struct.yywork { i8 2, i8 26 }, %struct.yywork { i8 2, i8 27 }, %struct.yywork { i8 2, i8 28 }, %struct.yywork { i8 2, i8 29 }, %struct.yywork { i8 2, i8 30 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 13, i8 35 }, %struct.yywork { i8 13, i8 36 }, %struct.yywork { i8 22, i8 52 }, %struct.yywork { i8 13, i8 37 }, %struct.yywork { i8 25, i8 56 }, %struct.yywork { i8 26, i8 57 }, %struct.yywork { i8 28, i8 62 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 24, i8 54 }, %struct.yywork { i8 29, i8 63 }, %struct.yywork { i8 35, i8 66 }, %struct.yywork { i8 37, i8 67 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 24, i8 55 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 14, i8 38 }, %struct.yywork { i8 27, i8 58 }, %struct.yywork { i8 15, i8 42 }, %struct.yywork { i8 16, i8 44 }, %struct.yywork { i8 27, i8 59 }, %struct.yywork { i8 27, i8 60 }, %struct.yywork { i8 38, i8 68 }, %struct.yywork { i8 14, i8 39 }, %struct.yywork { i8 30, i8 64 }, %struct.yywork { i8 40, i8 70 }, %struct.yywork { i8 41, i8 71 }, %struct.yywork { i8 14, i8 40 }, %struct.yywork { i8 15, i8 43 }, %struct.yywork { i8 16, i8 45 }, %struct.yywork { i8 14, i8 41 }, %struct.yywork { i8 42, i8 72 }, %struct.yywork { i8 27, i8 61 }, %struct.yywork { i8 43, i8 73 }, %struct.yywork { i8 30, i8 65 }, %struct.yywork { i8 44, i8 74 }, %struct.yywork { i8 45, i8 75 }, %struct.yywork { i8 46, i8 78 }, %struct.yywork { i8 47, i8 79 }, %struct.yywork { i8 48, i8 80 }, %struct.yywork { i8 49, i8 81 }, %struct.yywork { i8 50, i8 82 }, %struct.yywork { i8 51, i8 83 }, %struct.yywork { i8 45, i8 76 }, %struct.yywork { i8 52, i8 84 }, %struct.yywork { i8 54, i8 85 }, %struct.yywork { i8 55, i8 86 }, %struct.yywork { i8 45, i8 77 }, %struct.yywork { i8 56, i8 87 }, %struct.yywork { i8 57, i8 88 }, %struct.yywork { i8 57, i8 89 }, %struct.yywork { i8 58, i8 91 }, %struct.yywork { i8 59, i8 92 }, %struct.yywork { i8 60, i8 93 }, %struct.yywork { i8 61, i8 94 }, %struct.yywork { i8 63, i8 96 }, %struct.yywork { i8 64, i8 98 }, %struct.yywork { i8 65, i8 99 }, %struct.yywork { i8 66, i8 101 }, %struct.yywork { i8 67, i8 102 }, %struct.yywork { i8 65, i8 100 }, %struct.yywork { i8 68, i8 103 }, %struct.yywork { i8 69, i8 104 }, %struct.yywork { i8 57, i8 90 }, %struct.yywork { i8 70, i8 105 }, %struct.yywork { i8 63, i8 97 }, %struct.yywork { i8 71, i8 106 }, %struct.yywork { i8 72, i8 107 }, %struct.yywork { i8 73, i8 108 }, %struct.yywork { i8 74, i8 109 }, %struct.yywork { i8 75, i8 110 }, %struct.yywork { i8 61, i8 95 }, %struct.yywork { i8 76, i8 111 }, %struct.yywork { i8 77, i8 112 }, %struct.yywork { i8 78, i8 113 }, %struct.yywork { i8 79, i8 114 }, %struct.yywork { i8 80, i8 115 }, %struct.yywork { i8 81, i8 116 }, %struct.yywork { i8 82, i8 118 }, %struct.yywork { i8 83, i8 119 }, %struct.yywork { i8 84, i8 120 }, %struct.yywork { i8 85, i8 121 }, %struct.yywork { i8 87, i8 122 }, %struct.yywork { i8 88, i8 123 }, %struct.yywork { i8 89, i8 124 }, %struct.yywork { i8 90, i8 125 }, %struct.yywork { i8 92, i8 126 }, %struct.yywork { i8 81, i8 117 }, %struct.yywork { i8 93, i8 127 }, %struct.yywork { i8 94, i8 -128 }, %struct.yywork { i8 95, i8 -127 }, %struct.yywork { i8 96, i8 -126 }, %struct.yywork { i8 97, i8 -125 }, %struct.yywork { i8 98, i8 -124 }, %struct.yywork { i8 99, i8 -123 }, %struct.yywork { i8 100, i8 -122 }, %struct.yywork { i8 101, i8 -121 }, %struct.yywork { i8 104, i8 -120 }, %struct.yywork { i8 105, i8 -119 }, %struct.yywork { i8 106, i8 -118 }, %struct.yywork { i8 107, i8 -117 }, %struct.yywork { i8 108, i8 -116 }, %struct.yywork { i8 109, i8 -115 }, %struct.yywork { i8 111, i8 -114 }, %struct.yywork { i8 112, i8 -113 }, %struct.yywork { i8 113, i8 -112 }, %struct.yywork { i8 114, i8 -111 }, %struct.yywork { i8 116, i8 -110 }, %struct.yywork { i8 119, i8 -109 }, %struct.yywork { i8 120, i8 -108 }, %struct.yywork { i8 121, i8 -107 }, %struct.yywork { i8 123, i8 -106 }, %struct.yywork { i8 124, i8 -105 }, %struct.yywork { i8 125, i8 -104 }, %struct.yywork { i8 126, i8 -103 }, %struct.yywork { i8 127, i8 -102 }, %struct.yywork { i8 -128, i8 -101 }, %struct.yywork { i8 -127, i8 -100 }, %struct.yywork { i8 -126, i8 -99 }, %struct.yywork { i8 -125, i8 -98 }, %struct.yywork { i8 -124, i8 -97 }, %struct.yywork { i8 -122, i8 -96 }, %struct.yywork { i8 -120, i8 -95 }, %struct.yywork { i8 -118, i8 -94 }, %struct.yywork { i8 -117, i8 -93 }, %struct.yywork { i8 -116, i8 -92 }, %struct.yywork { i8 -115, i8 -91 }, %struct.yywork { i8 -114, i8 -90 }, %struct.yywork { i8 -113, i8 -89 }, %struct.yywork { i8 -111, i8 -88 }, %struct.yywork { i8 -110, i8 -87 }, %struct.yywork { i8 -109, i8 -86 }, %struct.yywork { i8 -108, i8 -85 }, %struct.yywork { i8 -107, i8 -84 }, %struct.yywork { i8 -106, i8 -83 }, %struct.yywork { i8 -105, i8 -82 }, %struct.yywork { i8 -104, i8 -81 }, %struct.yywork { i8 -102, i8 -80 }, %struct.yywork { i8 -101, i8 -79 }, %struct.yywork { i8 -100, i8 -78 }, %struct.yywork { i8 -98, i8 -77 }, %struct.yywork { i8 -97, i8 -76 }, %struct.yywork { i8 -96, i8 -75 }, %struct.yywork { i8 -95, i8 -74 }, %struct.yywork { i8 -94, i8 -73 }, %struct.yywork { i8 -93, i8 -72 }, %struct.yywork { i8 -91, i8 -71 }, %struct.yywork { i8 -90, i8 -70 }, %struct.yywork { i8 -88, i8 -69 }, %struct.yywork { i8 -87, i8 -68 }, %struct.yywork { i8 -85, i8 -67 }, %struct.yywork { i8 -84, i8 -66 }, %struct.yywork { i8 -83, i8 -65 }, %struct.yywork { i8 -82, i8 -64 }, %struct.yywork { i8 -81, i8 -63 }, %struct.yywork { i8 -78, i8 -62 }, %struct.yywork { i8 -77, i8 -61 }, %struct.yywork { i8 -75, i8 -60 }, %struct.yywork { i8 -74, i8 -59 }, %struct.yywork { i8 -73, i8 -58 }, %struct.yywork { i8 -71, i8 -57 }, %struct.yywork { i8 -69, i8 -56 }, %struct.yywork { i8 -65, i8 -55 }, %struct.yywork { i8 -64, i8 -54 }, %struct.yywork { i8 -63, i8 -53 }, %struct.yywork { i8 -62, i8 -52 }, %struct.yywork { i8 -61, i8 -51 }, %struct.yywork { i8 -60, i8 -50 }, %struct.yywork { i8 -59, i8 -49 }, %struct.yywork { i8 -57, i8 -48 }, %struct.yywork { i8 -55, i8 -47 }, %struct.yywork { i8 -53, i8 -46 }, %struct.yywork { i8 -52, i8 -45 }, %struct.yywork { i8 -48, i8 -44 }, %struct.yywork { i8 -44, i8 -43 }, %struct.yywork zeroinitializer], align 16
@yysvec = global [215 x %struct.yysvf] [%struct.yysvf zeroinitializer, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 -2) to %struct.yywork*), %struct.yysvf* null, i32* null }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 -46) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 24) to %struct.yysvf*), i32* null }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 4) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 12) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 24) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 -12) to %struct.yywork*), %struct.yysvf* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 32) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 44) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 56) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 68) to %struct.yywork*), %struct.yysvf* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 68) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 4) to %struct.yywork*), %struct.yysvf* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 80) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 88) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 188) to %struct.yywork*), %struct.yysvf* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 100) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 76) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 112) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 240) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 124) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 236) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 136) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 220) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 148) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 26) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 160) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 6) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 172) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 32) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 184) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 36) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 196) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 12) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 208) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 86) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 220) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 12) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 232) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 148) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 244) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 78) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 256) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 112) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 268) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 234) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 280) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 94) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 292) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 152) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 304) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 248) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 316) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 -4) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 144) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 328) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 216) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 336) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 344) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 352) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 146) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 360) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 368) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 144) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 380) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 216) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 388) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 4) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 396) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 258) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 404) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 234) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 412) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 266) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 420) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 234) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 428) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 238) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 436) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 264) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 444) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 254) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 452) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 258) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 460) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 264) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 468) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 250) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 476) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 264) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 484) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 268) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 492) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 296) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 500) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 508) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 282) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 520) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 266) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 528) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 288) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 536) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 296) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 544) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 272) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 552) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 284) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 560) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 302) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 568) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 316) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 576) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 584) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 302) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 596) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 316) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 604) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 306) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 612) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 324) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 620) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 298) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 628) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 292) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 636) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 298) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 644) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 300) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 652) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 304) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 660) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 320) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 668) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 342) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 676) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 322) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 684) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 310) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 692) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 330) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 700) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 346) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 708) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 356) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 716) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 354) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 724) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 330) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 732) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 354) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 740) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 352) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 752) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 364) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 760) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 346) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 768) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 344) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 776) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 784) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 334) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 796) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 366) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 804) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 360) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 816) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 338) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 824) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 836) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 346) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 848) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 358) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 856) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 348) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 864) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 348) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 872) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 362) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 880) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 376) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 888) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 356) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 896) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 390) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 904) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 398) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 912) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 352) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 920) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 928) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 940) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 402) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 952) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 368) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 964) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 368) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 972) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 408) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 980) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 388) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 988) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 404) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 996) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1008) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 414) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1020) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 382) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1028) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 380) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1036) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 382) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1044) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1056) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 410) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1068) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1076) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1088) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 416) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1100) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 410) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1108) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 390) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1116) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1124) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 396) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1136) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 396) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1144) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 400) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1152) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 398) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1160) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 430) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1168) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 424) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1176) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 438) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1184) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 418) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1192) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 434) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1200) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 420) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1208) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1216) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 412) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1228) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1236) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 448) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1248) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1256) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 454) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1268) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 422) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1280) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 450) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1288) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 426) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1296) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 446) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1304) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 438) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1312) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1320) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 450) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1332) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 460) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1340) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 436) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1348) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 472) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1356) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 466) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1364) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 468) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1372) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 440) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1380) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 454) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1388) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1396) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 476) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1408) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 480) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1416) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 448) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1424) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1432) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 462) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1444) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 456) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1452) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 476) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1460) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 456) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1468) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 470) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1476) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 490) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1484) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1492) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 500) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1504) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 476) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1512) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1520) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 476) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1532) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 472) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1540) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1548) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 472) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1560) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 476) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1568) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 486) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1576) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 506) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1584) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 500) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1592) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1600) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1612) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 478) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1624) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 512) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1636) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1644) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 500) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1656) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 516) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1664) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 488) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1672) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1680) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 490) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1692) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1700) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 504) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1712) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1720) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1732) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1744) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 528) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1756) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 500) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1764) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 510) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1772) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 504) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1780) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 534) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1788) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 534) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1796) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 510) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1804) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1812) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 530) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1824) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1832) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 540) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1844) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1852) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 538) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1864) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 544) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1872) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1880) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1892) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1904) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 526) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1916) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1924) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1936) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1948) to i32*) }, %struct.yysvf { %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 530) to %struct.yywork*), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1960) to i32*) }, %struct.yysvf { %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 288) to %struct.yysvf*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([496 x i32]* @yyvstop to i8*), i64 1968) to i32*) }, %struct.yysvf zeroinitializer], align 16
@yytop = global %struct.yywork* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0, i32 0), i64 750) to %struct.yywork*), align 8
@yybgin = global %struct.yysvf* bitcast (i8* getelementptr (i8, i8* bitcast ([215 x %struct.yysvf]* @yysvec to i8*), i64 24) to %struct.yysvf*), align 8
@yymatch = global [257 x i8] c"\00\01\01\01\01\01\01\01\01\09\0A\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\09\01\01#\01\01&\01&&&\01,\01\01\010000000000\01&\01\01\01?\01AAAAAAAAAAAAAAAAAAAAAAAAAA&\01&\01A\01AAAAAAAAAAAAAAAAAAAAAAAAAA\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00", align 16
@yyextra = global [65 x i8] zeroinitializer, align 16
@yylineno = global i32 1, align 4
@yysbuf = common global [8192 x i8] zeroinitializer, align 16
@yysptr = global i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @yysbuf, i32 0, i32 0), align 8
@yyprevious = global i32 10, align 4
@yymorfg = common global i32 0, align 4
@yyleng = common global i32 0, align 4
@yylstate = common global [8192 x %struct.yysvf*] zeroinitializer, align 16
@yyestate = common global %struct.yysvf* null, align 8
@yytchar = common global i32 0, align 4
@.str.55 = private unnamed_addr constant [33 x i8] c"Input string too long, limit %d\0A\00", align 1
@yyfnd = common global i32* null, align 8
@yyolsp = common global %struct.yysvf** null, align 8
@yylsp = common global %struct.yysvf** null, align 8
@crosscheck = global [9 x [9 x i8]] [[9 x i8] zeroinitializer, [9 x i8] zeroinitializer, [9 x i8] c"\01\00\00\00\00\00\00\00\00", [9 x i8] c"\01\01\01\00\00\00\00\00\00", [9 x i8] c"\01\01\01\01\00\00\00\00\00", [9 x i8] c"\02\00\02\02\01\00\00\00\00", [9 x i8] c"\03\03\03\03\01\01\00\00\00", [9 x i8] c"\04\01\01\01\01\01\01\00\00", [9 x i8] c"\03\01\01\01\01\01\01\01\00"], align 16
@.str.56 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@.str.58 = private unnamed_addr constant [9 x i8] c"unsigned\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"signed\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@crosstypes = global [9 x %struct.anon.0] [%struct.anon.0 { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i32 0, i32 0), i32 2 }, %struct.anon.0 { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52, i32 0, i32 0), i32 8 }, %struct.anon.0 { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i32 0, i32 0), i32 1 }, %struct.anon.0 { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0), i32 16 }, %struct.anon.0 { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0), i32 128 }, %struct.anon.0 { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.58, i32 0, i32 0), i32 4 }, %struct.anon.0 { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i32 0, i32 0), i32 256 }, %struct.anon.0 { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.60, i32 0, i32 0), i32 32 }, %struct.anon.0 { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.61, i32 0, i32 0), i32 64 }], align 16
@.str.62 = private unnamed_addr constant [17 x i8] c" (ANSI Compiler)\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.63 = private unnamed_addr constant [45 x i8] c"%s: Internal error in crosscheck[%d,%d]=%d!\0A\00", align 1
@.str.64 = private unnamed_addr constant [24 x i8] c"\09(maybe you mean \22%s\22)\0A\00", align 1
@.str.65 = private unnamed_addr constant [49 x i8] c"Warning: Unsupported in%s C%s -- '%s' with '%s'\0A\00", align 1
@.str.66 = private unnamed_addr constant [3 x i8] c"++\00", align 1
@.str.67 = private unnamed_addr constant [39 x i8] c"Warning: Unsupported in%s C%s -- '%s'\0A\00", align 1
@.str.68 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.69 = private unnamed_addr constant [39 x i8] c"%s: out of malloc space within cat()!\0A\00", align 1
@.str.70 = private unnamed_addr constant [22 x i8] c"%s: malloc() failed!\0A\00", align 1
@visible.buf = internal global [5 x i8] zeroinitializer, align 1
@.str.71 = private unnamed_addr constant [6 x i8] c"\5C%03o\00", align 1
@.str.72 = private unnamed_addr constant [66 x i8] c"[] means optional; {} means 1 or more; <> means defined elsewhere\00", align 1
@.str.73 = private unnamed_addr constant [45 x i8] c"  commands are separated by ';' and newlines\00", align 1
@.str.74 = private unnamed_addr constant [9 x i8] c"command:\00", align 1
@.str.75 = private unnamed_addr constant [30 x i8] c"  declare <name> as <english>\00", align 1
@.str.76 = private unnamed_addr constant [29 x i8] c"  cast <name> into <english>\00", align 1
@.str.77 = private unnamed_addr constant [22 x i8] c"  explain <gibberish>\00", align 1
@.str.78 = private unnamed_addr constant [21 x i8] c"  set or set options\00", align 1
@.str.79 = private unnamed_addr constant [10 x i8] c"  help, ?\00", align 1
@.str.80 = private unnamed_addr constant [15 x i8] c"  quit or exit\00", align 1
@.str.81 = private unnamed_addr constant [9 x i8] c"english:\00", align 1
@.str.82 = private unnamed_addr constant [49 x i8] c"  function [( <decl-list> )] returning <english>\00", align 1
@.str.83 = private unnamed_addr constant [32 x i8] c"  array [<number>] of <english>\00", align 1
@.str.84 = private unnamed_addr constant [56 x i8] c"  [{ const | volatile | noalias }] pointer to <english>\00", align 1
@.str.85 = private unnamed_addr constant [79 x i8] c"  [{const|volatile}] {pointer|reference} to [member of class <name>] <english>\00", align 1
@.str.86 = private unnamed_addr constant [9 x i8] c"  <type>\00", align 1
@.str.87 = private unnamed_addr constant [6 x i8] c"type:\00", align 1
@.str.88 = private unnamed_addr constant [48 x i8] c"  {[<storage-class>] [{<modifier>}] [<C-type>]}\00", align 1
@.str.89 = private unnamed_addr constant [35 x i8] c"  { struct | union | enum } <name>\00", align 1
@.str.90 = private unnamed_addr constant [35 x i8] c"  {struct|class|union|enum} <name>\00", align 1
@.str.91 = private unnamed_addr constant [77 x i8] c"decllist: a comma separated list of <name>, <english> or <name> as <english>\00", align 1
@.str.92 = private unnamed_addr constant [21 x i8] c"name: a C identifier\00", align 1
@.str.93 = private unnamed_addr constant [68 x i8] c"gibberish: a C declaration, like 'int *x', or cast, like '(int *)x'\00", align 1
@.str.94 = private unnamed_addr constant [46 x i8] c"storage-class: extern, static, auto, register\00", align 1
@.str.95 = private unnamed_addr constant [42 x i8] c"C-type: int, char, float, double, or void\00", align 1
@.str.96 = private unnamed_addr constant [69 x i8] c"modifier: short, long, signed, unsigned, const, volatile, or noalias\00", align 1
@.str.97 = private unnamed_addr constant [60 x i8] c"modifier: short, long, signed, unsigned, const, or volatile\00", align 1
@helptext = global [24 x %struct.helpstruct] [%struct.helpstruct { i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.72, i32 0, i32 0), i8* null }, %struct.helpstruct { i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.73, i32 0, i32 0), i8* null }, %struct.helpstruct { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i32 0, i32 0), i8* null }, %struct.helpstruct { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.75, i32 0, i32 0), i8* null }, %struct.helpstruct { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.76, i32 0, i32 0), i8* null }, %struct.helpstruct { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.77, i32 0, i32 0), i8* null }, %struct.helpstruct { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.78, i32 0, i32 0), i8* null }, %struct.helpstruct { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.79, i32 0, i32 0), i8* null }, %struct.helpstruct { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.80, i32 0, i32 0), i8* null }, %struct.helpstruct { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.81, i32 0, i32 0), i8* null }, %struct.helpstruct { i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.82, i32 0, i32 0), i8* null }, %struct.helpstruct { i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.83, i32 0, i32 0), i8* null }, %struct.helpstruct { i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.85, i32 0, i32 0) }, %struct.helpstruct { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.86, i32 0, i32 0), i8* null }, %struct.helpstruct { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.87, i32 0, i32 0), i8* null }, %struct.helpstruct { i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.88, i32 0, i32 0), i8* null }, %struct.helpstruct { i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.90, i32 0, i32 0) }, %struct.helpstruct { i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.91, i32 0, i32 0), i8* null }, %struct.helpstruct { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.92, i32 0, i32 0), i8* null }, %struct.helpstruct { i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.93, i32 0, i32 0), i8* null }, %struct.helpstruct { i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.94, i32 0, i32 0), i8* null }, %struct.helpstruct { i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.95, i32 0, i32 0), i8* null }, %struct.helpstruct { i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.97, i32 0, i32 0) }, %struct.helpstruct zeroinitializer], align 16
@.str.98 = private unnamed_addr constant [5 x i8] c" %s\0A\00", align 1
@.str.99 = private unnamed_addr constant [5 x i8] c"\09%s\0A\00", align 1
@.str.100 = private unnamed_addr constant [46 x i8] c"Usage: %s [-r|-p|-a|-+] [-ci%s%s] [files...]\0A\00", align 1
@.str.101 = private unnamed_addr constant [42 x i8] c"\09-r Check against Ritchie PDP C Compiler\0A\00", align 1
@.str.102 = private unnamed_addr constant [39 x i8] c"\09-p Check against Pre-ANSI C Compiler\0A\00", align 1
@.str.103 = private unnamed_addr constant [37 x i8] c"\09-a Check against ANSI C Compiler%s\0A\00", align 1
@.str.104 = private unnamed_addr constant [15 x i8] c" (the default)\00", align 1
@.str.105 = private unnamed_addr constant [34 x i8] c"\09-+ Check against C++ Compiler%s\0A\00", align 1
@.str.106 = private unnamed_addr constant [49 x i8] c"\09-c Create compilable output (include ; and {})\0A\00", align 1
@.str.107 = private unnamed_addr constant [28 x i8] c"\09-i Force interactive mode\0A\00", align 1
@prompting = internal global i32 1, align 4
@.str.108 = private unnamed_addr constant [5 x i8] c"%s> \00", align 1
@namedkeyword.cmdlist = internal global [7 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.114, i32 0, i32 0), i8* null], align 16
@.str.109 = private unnamed_addr constant [8 x i8] c"explain\00", align 1
@.str.110 = private unnamed_addr constant [8 x i8] c"declare\00", align 1
@.str.111 = private unnamed_addr constant [5 x i8] c"cast\00", align 1
@.str.112 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.113 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.114 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.115 = private unnamed_addr constant [29 x i8] c"Type `help' or `?' for help\0A\00", align 1
@.str.116 = private unnamed_addr constant [27 x i8] c"%s: cannot open temp file\0A\00", align 1
@.str.117 = private unnamed_addr constant [32 x i8] c"%s: error writing to temp file\0A\00", align 1
@optind = external global i32, align 4
@.str.118 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.119 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.120 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.121 = private unnamed_addr constant [20 x i8] c"%s: cannot open %s\0A\00", align 1
@.str.122 = private unnamed_addr constant [19 x i8] c"Cast into function\00", align 1
@.str.123 = private unnamed_addr constant [30 x i8] c"cast into pointer to function\00", align 1
@.str.124 = private unnamed_addr constant [16 x i8] c"Cast into array\00", align 1
@.str.125 = private unnamed_addr constant [18 x i8] c"cast into pointer\00", align 1
@.str.126 = private unnamed_addr constant [13 x i8] c"(%s%*s%s)%s\0A\00", align 1
@.str.127 = private unnamed_addr constant [11 x i8] c"expression\00", align 1
@.str.128 = private unnamed_addr constant [22 x i8] c"Variable of type void\00", align 1
@.str.129 = private unnamed_addr constant [33 x i8] c"variable of type pointer to void\00", align 1
@.str.130 = private unnamed_addr constant [18 x i8] c"Register function\00", align 1
@.str.131 = private unnamed_addr constant [15 x i8] c"Register array\00", align 1
@.str.132 = private unnamed_addr constant [22 x i8] c"Register struct/class\00", align 1
@.str.133 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.134 = private unnamed_addr constant [10 x i8] c"%s %s%s%s\00", align 1
@.str.135 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.136 = private unnamed_addr constant [4 x i8] c"var\00", align 1
@.str.137 = private unnamed_addr constant [6 x i8] c" { }\0A\00", align 1
@.str.138 = private unnamed_addr constant [3 x i8] c";\0A\00", align 1
@.str.139 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.140 = private unnamed_addr constant [19 x i8] c"array of type void\00", align 1
@.str.141 = private unnamed_addr constant [30 x i8] c"array of type pointer to void\00", align 1
@.str.142 = private unnamed_addr constant [23 x i8] c"reference to type void\00", align 1
@.str.143 = private unnamed_addr constant [33 x i8] c"Register struct/union/enum/class\00", align 1
@.str.144 = private unnamed_addr constant [15 x i8] c"declare %s as \00", align 1
@.str.145 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.146 = private unnamed_addr constant [16 x i8] c"cast %s into %s\00", align 1
@.str.147 = private unnamed_addr constant [7 x i8] c"create\00", align 1
@.str.148 = private unnamed_addr constant [9 x i8] c"nocreate\00", align 1
@.str.149 = private unnamed_addr constant [12 x i8] c"interactive\00", align 1
@.str.150 = private unnamed_addr constant [14 x i8] c"nointeractive\00", align 1
@.str.151 = private unnamed_addr constant [8 x i8] c"ritchie\00", align 1
@.str.152 = private unnamed_addr constant [8 x i8] c"preansi\00", align 1
@.str.153 = private unnamed_addr constant [5 x i8] c"ansi\00", align 1
@.str.154 = private unnamed_addr constant [10 x i8] c"cplusplus\00", align 1
@.str.155 = private unnamed_addr constant [8 x i8] c"options\00", align 1
@.str.156 = private unnamed_addr constant [26 x i8] c"Unknown set option: '%s'\0A\00", align 1
@.str.157 = private unnamed_addr constant [55 x i8] c"Valid set options (and command line equivalents) are:\0A\00", align 1
@.str.158 = private unnamed_addr constant [10 x i8] c"\09options\0A\00", align 1
@.str.159 = private unnamed_addr constant [24 x i8] c"\09create (-c), nocreate\0A\00", align 1
@.str.160 = private unnamed_addr constant [34 x i8] c"\09interactive (-i), nointeractive\0A\00", align 1
@.str.161 = private unnamed_addr constant [58 x i8] c"\09ritchie (-r), preansi (-p), ansi (-a) or cplusplus (-+)\0A\00", align 1
@.str.162 = private unnamed_addr constant [26 x i8] c"\0ACurrent set values are:\0A\00", align 1
@.str.163 = private unnamed_addr constant [11 x i8] c"\09%screate\0A\00", align 1
@.str.164 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.165 = private unnamed_addr constant [4 x i8] c" no\00", align 1
@.str.166 = private unnamed_addr constant [16 x i8] c"\09%sinteractive\0A\00", align 1
@.str.167 = private unnamed_addr constant [13 x i8] c"\09   ritchie\0A\00", align 1
@.str.168 = private unnamed_addr constant [14 x i8] c"\09(noritchie)\0A\00", align 1
@.str.169 = private unnamed_addr constant [13 x i8] c"\09   preansi\0A\00", align 1
@.str.170 = private unnamed_addr constant [14 x i8] c"\09(nopreansi)\0A\00", align 1
@.str.171 = private unnamed_addr constant [10 x i8] c"\09   ansi\0A\00", align 1
@.str.172 = private unnamed_addr constant [11 x i8] c"\09(noansi)\0A\00", align 1
@.str.173 = private unnamed_addr constant [15 x i8] c"\09   cplusplus\0A\00", align 1
@.str.174 = private unnamed_addr constant [16 x i8] c"\09(nocplusplus)\0A\00", align 1
@.str.175 = private unnamed_addr constant [22 x i8] c"Version:\0A\09%s\0A\09%s\0A\09%s\0A\00", align 1
@.str.176 = private unnamed_addr constant [8 x i8] c"c++decl\00", align 1
@.str.177 = private unnamed_addr constant [10 x i8] c"cirpa+dDV\00", align 1

; Function Attrs: nounwind uwtable
define i32 @yyparse() #0 {
entry:
  %retval = alloca i32, align 4
  %yys = alloca [150 x i16], align 16
  %yyj = alloca i16, align 2
  %yym = alloca i16, align 2
  %yypvt = alloca %union.YYSTYPE*, align 8
  %yystate = alloca i16, align 2
  %yyps = alloca i16*, align 8
  %yyn = alloca i16, align 2
  %yypv = alloca %union.YYSTYPE*, align 8
  %yyxi = alloca i16*, align 8
  %op = alloca i8*, align 8
  %cp = alloca i8*, align 8
  %sp = alloca i8*, align 8
  %op568 = alloca i8*, align 8
  %cp569 = alloca i8*, align 8
  %sp570 = alloca i8*, align 8
  %op620 = alloca i8*, align 8
  %cp621 = alloca i8*, align 8
  %sp622 = alloca i8*, align 8
  store i16 0, i16* %yystate, align 2
  store i32 -1, i32* @yychar, align 4
  store i32 0, i32* @yynerrs, align 4
  store i16 0, i16* @yyerrflag, align 2
  %arrayidx = getelementptr inbounds [150 x i16], [150 x i16]* %yys, i32 0, i64 -1
  store i16* %arrayidx, i16** %yyps, align 8
  store %union.YYSTYPE* getelementptr inbounds ([150 x %union.YYSTYPE], [150 x %union.YYSTYPE]* @yyv, i32 0, i64 -1), %union.YYSTYPE** %yypv, align 8
  br label %yystack

yystack:                                          ; preds = %sw.epilog.903, %if.then.108, %if.end.38, %entry
  %0 = load i16*, i16** %yyps, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %0, i32 1
  store i16* %incdec.ptr, i16** %yyps, align 8
  %arrayidx1 = getelementptr inbounds [150 x i16], [150 x i16]* %yys, i32 0, i64 150
  %cmp = icmp uge i16* %incdec.ptr, %arrayidx1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %yystack
  call void @yyerror(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %yystack
  %1 = load i16, i16* %yystate, align 2
  %2 = load i16*, i16** %yyps, align 8
  store i16 %1, i16* %2, align 2
  %3 = load %union.YYSTYPE*, %union.YYSTYPE** %yypv, align 8
  %incdec.ptr2 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %3, i32 1
  store %union.YYSTYPE* %incdec.ptr2, %union.YYSTYPE** %yypv, align 8
  %4 = load %union.YYSTYPE*, %union.YYSTYPE** %yypv, align 8
  %5 = bitcast %union.YYSTYPE* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* bitcast (%union.YYSTYPE* @yyval to i8*), i64 24, i32 8, i1 false)
  br label %yynewstate

yynewstate:                                       ; preds = %if.end.121, %if.end
  %6 = load i16, i16* %yystate, align 2
  %idxprom = sext i16 %6 to i64
  %arrayidx3 = getelementptr inbounds [162 x i16], [162 x i16]* @yypact, i32 0, i64 %idxprom
  %7 = load i16, i16* %arrayidx3, align 2
  store i16 %7, i16* %yyn, align 2
  %8 = load i16, i16* %yyn, align 2
  %conv = sext i16 %8 to i32
  %cmp4 = icmp sle i32 %conv, -1000
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %yynewstate
  br label %yydefault

if.end.7:                                         ; preds = %yynewstate
  %9 = load i32, i32* @yychar, align 4
  %cmp8 = icmp slt i32 %9, 0
  br i1 %cmp8, label %if.then.10, label %if.end.15

if.then.10:                                       ; preds = %if.end.7
  %call = call i32 @yylex()
  store i32 %call, i32* @yychar, align 4
  %cmp11 = icmp slt i32 %call, 0
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.then.10
  store i32 0, i32* @yychar, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.then.10
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.end.7
  %10 = load i32, i32* @yychar, align 4
  %11 = load i16, i16* %yyn, align 2
  %conv16 = sext i16 %11 to i32
  %add = add nsw i32 %conv16, %10
  %conv17 = trunc i32 %add to i16
  store i16 %conv17, i16* %yyn, align 2
  %conv18 = sext i16 %conv17 to i32
  %cmp19 = icmp slt i32 %conv18, 0
  br i1 %cmp19, label %if.then.24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.15
  %12 = load i16, i16* %yyn, align 2
  %conv21 = sext i16 %12 to i32
  %cmp22 = icmp sge i32 %conv21, 322
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %lor.lhs.false, %if.end.15
  br label %yydefault

if.end.25:                                        ; preds = %lor.lhs.false
  %13 = load i16, i16* %yyn, align 2
  %idxprom26 = sext i16 %13 to i64
  %arrayidx27 = getelementptr inbounds [322 x i16], [322 x i16]* @yyact, i32 0, i64 %idxprom26
  %14 = load i16, i16* %arrayidx27, align 2
  store i16 %14, i16* %yyn, align 2
  %idxprom28 = sext i16 %14 to i64
  %arrayidx29 = getelementptr inbounds [162 x i16], [162 x i16]* @yychk, i32 0, i64 %idxprom28
  %15 = load i16, i16* %arrayidx29, align 2
  %conv30 = sext i16 %15 to i32
  %16 = load i32, i32* @yychar, align 4
  %cmp31 = icmp eq i32 %conv30, %16
  br i1 %cmp31, label %if.then.33, label %if.end.39

if.then.33:                                       ; preds = %if.end.25
  store i32 -1, i32* @yychar, align 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%union.YYSTYPE* @yyval to i8*), i8* bitcast (%union.YYSTYPE* @yylval to i8*), i64 24, i32 8, i1 false)
  %17 = load i16, i16* %yyn, align 2
  store i16 %17, i16* %yystate, align 2
  %18 = load i16, i16* @yyerrflag, align 2
  %conv34 = sext i16 %18 to i32
  %cmp35 = icmp sgt i32 %conv34, 0
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.then.33
  %19 = load i16, i16* @yyerrflag, align 2
  %dec = add i16 %19, -1
  store i16 %dec, i16* @yyerrflag, align 2
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %if.then.33
  br label %yystack

if.end.39:                                        ; preds = %if.end.25
  br label %yydefault

yydefault:                                        ; preds = %if.end.39, %if.then.24, %if.then.6
  %20 = load i16, i16* %yystate, align 2
  %idxprom40 = sext i16 %20 to i64
  %arrayidx41 = getelementptr inbounds [162 x i16], [162 x i16]* @yydef, i32 0, i64 %idxprom40
  %21 = load i16, i16* %arrayidx41, align 2
  store i16 %21, i16* %yyn, align 2
  %conv42 = sext i16 %21 to i32
  %cmp43 = icmp eq i32 %conv42, -2
  br i1 %cmp43, label %if.then.45, label %if.end.78

if.then.45:                                       ; preds = %yydefault
  %22 = load i32, i32* @yychar, align 4
  %cmp46 = icmp slt i32 %22, 0
  br i1 %cmp46, label %if.then.48, label %if.end.54

if.then.48:                                       ; preds = %if.then.45
  %call49 = call i32 @yylex()
  store i32 %call49, i32* @yychar, align 4
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.then.48
  store i32 0, i32* @yychar, align 4
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.52, %if.then.48
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %if.then.45
  store i16* getelementptr inbounds ([46 x i16], [46 x i16]* @yyexca, i32 0, i32 0), i16** %yyxi, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.54
  %23 = load i16*, i16** %yyxi, align 8
  %24 = load i16, i16* %23, align 2
  %conv55 = sext i16 %24 to i32
  %cmp56 = icmp ne i32 %conv55, -1
  br i1 %cmp56, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %for.cond
  %25 = load i16*, i16** %yyxi, align 8
  %arrayidx58 = getelementptr inbounds i16, i16* %25, i64 1
  %26 = load i16, i16* %arrayidx58, align 2
  %conv59 = sext i16 %26 to i32
  %27 = load i16, i16* %yystate, align 2
  %conv60 = sext i16 %27 to i32
  %cmp61 = icmp ne i32 %conv59, %conv60
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.cond
  %28 = phi i1 [ true, %for.cond ], [ %cmp61, %lor.rhs ]
  br i1 %28, label %for.body, label %for.end

for.body:                                         ; preds = %lor.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %29 = load i16*, i16** %yyxi, align 8
  %add.ptr = getelementptr inbounds i16, i16* %29, i64 2
  store i16* %add.ptr, i16** %yyxi, align 8
  br label %for.cond

for.end:                                          ; preds = %lor.end
  br label %while.cond

while.cond:                                       ; preds = %if.end.71, %for.end
  %30 = load i16*, i16** %yyxi, align 8
  %add.ptr63 = getelementptr inbounds i16, i16* %30, i64 2
  store i16* %add.ptr63, i16** %yyxi, align 8
  %31 = load i16, i16* %add.ptr63, align 2
  %conv64 = sext i16 %31 to i32
  %cmp65 = icmp sge i32 %conv64, 0
  br i1 %cmp65, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %32 = load i16*, i16** %yyxi, align 8
  %33 = load i16, i16* %32, align 2
  %conv67 = sext i16 %33 to i32
  %34 = load i32, i32* @yychar, align 4
  %cmp68 = icmp eq i32 %conv67, %34
  br i1 %cmp68, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %while.body
  br label %while.end

if.end.71:                                        ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %if.then.70, %while.cond
  %35 = load i16*, i16** %yyxi, align 8
  %arrayidx72 = getelementptr inbounds i16, i16* %35, i64 1
  %36 = load i16, i16* %arrayidx72, align 2
  store i16 %36, i16* %yyn, align 2
  %conv73 = sext i16 %36 to i32
  %cmp74 = icmp slt i32 %conv73, 0
  br i1 %cmp74, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %while.end
  store i32 0, i32* %retval
  br label %return

if.end.77:                                        ; preds = %while.end
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %yydefault
  %37 = load i16, i16* %yyn, align 2
  %conv79 = sext i16 %37 to i32
  %cmp80 = icmp eq i32 %conv79, 0
  br i1 %cmp80, label %if.then.82, label %if.end.122

if.then.82:                                       ; preds = %if.end.78
  %38 = load i16, i16* @yyerrflag, align 2
  %conv83 = sext i16 %38 to i32
  switch i32 %conv83, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.84
    i32 2, label %sw.bb.84
    i32 3, label %sw.bb.117
  ]

sw.bb:                                            ; preds = %if.then.82
  call void @yyerror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0))
  br label %yyerrlab

yyerrlab:                                         ; preds = %sw.bb
  %39 = load i32, i32* @yynerrs, align 4
  %inc = add nsw i32 %39, 1
  store i32 %inc, i32* @yynerrs, align 4
  br label %sw.bb.84

sw.bb.84:                                         ; preds = %if.then.82, %if.then.82, %yyerrlab
  store i16 3, i16* @yyerrflag, align 2
  br label %while.cond.85

while.cond.85:                                    ; preds = %if.end.111, %sw.bb.84
  %40 = load i16*, i16** %yyps, align 8
  %arraydecay = getelementptr inbounds [150 x i16], [150 x i16]* %yys, i32 0, i32 0
  %cmp86 = icmp uge i16* %40, %arraydecay
  br i1 %cmp86, label %while.body.88, label %while.end.116

while.body.88:                                    ; preds = %while.cond.85
  %41 = load i16*, i16** %yyps, align 8
  %42 = load i16, i16* %41, align 2
  %idxprom89 = sext i16 %42 to i64
  %arrayidx90 = getelementptr inbounds [162 x i16], [162 x i16]* @yypact, i32 0, i64 %idxprom89
  %43 = load i16, i16* %arrayidx90, align 2
  %conv91 = sext i16 %43 to i32
  %add92 = add nsw i32 %conv91, 256
  %conv93 = trunc i32 %add92 to i16
  store i16 %conv93, i16* %yyn, align 2
  %44 = load i16, i16* %yyn, align 2
  %conv94 = sext i16 %44 to i32
  %cmp95 = icmp sge i32 %conv94, 0
  br i1 %cmp95, label %land.lhs.true, label %if.end.111

land.lhs.true:                                    ; preds = %while.body.88
  %45 = load i16, i16* %yyn, align 2
  %conv97 = sext i16 %45 to i32
  %cmp98 = icmp slt i32 %conv97, 322
  br i1 %cmp98, label %land.lhs.true.100, label %if.end.111

land.lhs.true.100:                                ; preds = %land.lhs.true
  %46 = load i16, i16* %yyn, align 2
  %idxprom101 = sext i16 %46 to i64
  %arrayidx102 = getelementptr inbounds [322 x i16], [322 x i16]* @yyact, i32 0, i64 %idxprom101
  %47 = load i16, i16* %arrayidx102, align 2
  %idxprom103 = sext i16 %47 to i64
  %arrayidx104 = getelementptr inbounds [162 x i16], [162 x i16]* @yychk, i32 0, i64 %idxprom103
  %48 = load i16, i16* %arrayidx104, align 2
  %conv105 = sext i16 %48 to i32
  %cmp106 = icmp eq i32 %conv105, 256
  br i1 %cmp106, label %if.then.108, label %if.end.111

if.then.108:                                      ; preds = %land.lhs.true.100
  %49 = load i16, i16* %yyn, align 2
  %idxprom109 = sext i16 %49 to i64
  %arrayidx110 = getelementptr inbounds [322 x i16], [322 x i16]* @yyact, i32 0, i64 %idxprom109
  %50 = load i16, i16* %arrayidx110, align 2
  store i16 %50, i16* %yystate, align 2
  br label %yystack

if.end.111:                                       ; preds = %land.lhs.true.100, %land.lhs.true, %while.body.88
  %51 = load i16*, i16** %yyps, align 8
  %52 = load i16, i16* %51, align 2
  %idxprom112 = sext i16 %52 to i64
  %arrayidx113 = getelementptr inbounds [162 x i16], [162 x i16]* @yypact, i32 0, i64 %idxprom112
  %53 = load i16, i16* %arrayidx113, align 2
  store i16 %53, i16* %yyn, align 2
  %54 = load i16*, i16** %yyps, align 8
  %incdec.ptr114 = getelementptr inbounds i16, i16* %54, i32 -1
  store i16* %incdec.ptr114, i16** %yyps, align 8
  %55 = load %union.YYSTYPE*, %union.YYSTYPE** %yypv, align 8
  %incdec.ptr115 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %55, i32 -1
  store %union.YYSTYPE* %incdec.ptr115, %union.YYSTYPE** %yypv, align 8
  br label %while.cond.85

while.end.116:                                    ; preds = %while.cond.85
  br label %yyabort

yyabort:                                          ; preds = %if.then.120, %while.end.116
  store i32 1, i32* %retval
  br label %return

sw.bb.117:                                        ; preds = %if.then.82
  %56 = load i32, i32* @yychar, align 4
  %cmp118 = icmp eq i32 %56, 0
  br i1 %cmp118, label %if.then.120, label %if.end.121

if.then.120:                                      ; preds = %sw.bb.117
  br label %yyabort

if.end.121:                                       ; preds = %sw.bb.117
  store i32 -1, i32* @yychar, align 4
  br label %yynewstate

sw.epilog:                                        ; preds = %if.then.82
  br label %if.end.122

if.end.122:                                       ; preds = %sw.epilog, %if.end.78
  %57 = load i16, i16* %yyn, align 2
  %idxprom123 = sext i16 %57 to i64
  %arrayidx124 = getelementptr inbounds [89 x i16], [89 x i16]* @yyr2, i32 0, i64 %idxprom123
  %58 = load i16, i16* %arrayidx124, align 2
  %conv125 = sext i16 %58 to i32
  %59 = load i16*, i16** %yyps, align 8
  %idx.ext = sext i32 %conv125 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr126 = getelementptr inbounds i16, i16* %59, i64 %idx.neg
  store i16* %add.ptr126, i16** %yyps, align 8
  %60 = load %union.YYSTYPE*, %union.YYSTYPE** %yypv, align 8
  store %union.YYSTYPE* %60, %union.YYSTYPE** %yypvt, align 8
  %61 = load i16, i16* %yyn, align 2
  %idxprom127 = sext i16 %61 to i64
  %arrayidx128 = getelementptr inbounds [89 x i16], [89 x i16]* @yyr2, i32 0, i64 %idxprom127
  %62 = load i16, i16* %arrayidx128, align 2
  %conv129 = sext i16 %62 to i32
  %63 = load %union.YYSTYPE*, %union.YYSTYPE** %yypv, align 8
  %idx.ext130 = sext i32 %conv129 to i64
  %idx.neg131 = sub i64 0, %idx.ext130
  %add.ptr132 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %63, i64 %idx.neg131
  store %union.YYSTYPE* %add.ptr132, %union.YYSTYPE** %yypv, align 8
  %64 = load %union.YYSTYPE*, %union.YYSTYPE** %yypv, align 8
  %arrayidx133 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %64, i64 1
  %65 = bitcast %union.YYSTYPE* %arrayidx133 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%union.YYSTYPE* @yyval to i8*), i8* %65, i64 24, i32 8, i1 false)
  %66 = load i16, i16* %yyn, align 2
  store i16 %66, i16* %yym, align 2
  %67 = load i16, i16* %yyn, align 2
  %idxprom134 = sext i16 %67 to i64
  %arrayidx135 = getelementptr inbounds [89 x i16], [89 x i16]* @yyr1, i32 0, i64 %idxprom134
  %68 = load i16, i16* %arrayidx135, align 2
  store i16 %68, i16* %yyn, align 2
  %69 = load i16, i16* %yyn, align 2
  %idxprom136 = sext i16 %69 to i64
  %arrayidx137 = getelementptr inbounds [26 x i16], [26 x i16]* @yypgo, i32 0, i64 %idxprom136
  %70 = load i16, i16* %arrayidx137, align 2
  %conv138 = sext i16 %70 to i32
  %71 = load i16*, i16** %yyps, align 8
  %72 = load i16, i16* %71, align 2
  %conv139 = sext i16 %72 to i32
  %add140 = add nsw i32 %conv138, %conv139
  %add141 = add nsw i32 %add140, 1
  %conv142 = trunc i32 %add141 to i16
  store i16 %conv142, i16* %yyj, align 2
  %73 = load i16, i16* %yyj, align 2
  %conv143 = sext i16 %73 to i32
  %cmp144 = icmp sge i32 %conv143, 322
  br i1 %cmp144, label %if.then.155, label %lor.lhs.false.146

lor.lhs.false.146:                                ; preds = %if.end.122
  %74 = load i16, i16* %yyj, align 2
  %idxprom147 = sext i16 %74 to i64
  %arrayidx148 = getelementptr inbounds [322 x i16], [322 x i16]* @yyact, i32 0, i64 %idxprom147
  %75 = load i16, i16* %arrayidx148, align 2
  store i16 %75, i16* %yystate, align 2
  %idxprom149 = sext i16 %75 to i64
  %arrayidx150 = getelementptr inbounds [162 x i16], [162 x i16]* @yychk, i32 0, i64 %idxprom149
  %76 = load i16, i16* %arrayidx150, align 2
  %conv151 = sext i16 %76 to i32
  %77 = load i16, i16* %yyn, align 2
  %conv152 = sext i16 %77 to i32
  %sub = sub nsw i32 0, %conv152
  %cmp153 = icmp ne i32 %conv151, %sub
  br i1 %cmp153, label %if.then.155, label %if.end.160

if.then.155:                                      ; preds = %lor.lhs.false.146, %if.end.122
  %78 = load i16, i16* %yyn, align 2
  %idxprom156 = sext i16 %78 to i64
  %arrayidx157 = getelementptr inbounds [26 x i16], [26 x i16]* @yypgo, i32 0, i64 %idxprom156
  %79 = load i16, i16* %arrayidx157, align 2
  %idxprom158 = sext i16 %79 to i64
  %arrayidx159 = getelementptr inbounds [322 x i16], [322 x i16]* @yyact, i32 0, i64 %idxprom158
  %80 = load i16, i16* %arrayidx159, align 2
  store i16 %80, i16* %yystate, align 2
  br label %if.end.160

if.end.160:                                       ; preds = %if.then.155, %lor.lhs.false.146
  %81 = load i16, i16* %yym, align 2
  %conv161 = sext i16 %81 to i32
  switch i32 %conv161, label %sw.epilog.903 [
    i32 2, label %sw.bb.162
    i32 3, label %sw.bb.163
    i32 4, label %sw.bb.164
    i32 5, label %sw.bb.173
    i32 6, label %sw.bb.185
    i32 7, label %sw.bb.197
    i32 8, label %sw.bb.207
    i32 9, label %sw.bb.216
    i32 10, label %sw.bb.223
    i32 11, label %sw.bb.230
    i32 12, label %sw.bb.239
    i32 14, label %sw.bb.242
    i32 15, label %sw.bb.243
    i32 16, label %sw.bb.244
    i32 17, label %sw.bb.245
    i32 18, label %sw.bb.248
    i32 20, label %sw.bb.250
    i32 21, label %sw.bb.260
    i32 22, label %sw.bb.271
    i32 23, label %sw.bb.286
    i32 24, label %sw.bb.291
    i32 25, label %sw.bb.299
    i32 26, label %sw.bb.306
    i32 27, label %sw.bb.309
    i32 28, label %sw.bb.313
    i32 29, label %sw.bb.320
    i32 30, label %sw.bb.334
    i32 31, label %sw.bb.337
    i32 32, label %sw.bb.339
    i32 33, label %sw.bb.346
    i32 34, label %sw.bb.349
    i32 35, label %sw.bb.361
    i32 36, label %sw.bb.375
    i32 37, label %sw.bb.377
    i32 38, label %sw.bb.379
    i32 39, label %sw.bb.384
    i32 40, label %sw.bb.392
    i32 41, label %sw.bb.395
    i32 42, label %sw.bb.406
    i32 43, label %sw.bb.411
    i32 44, label %sw.bb.419
    i32 45, label %sw.bb.426
    i32 46, label %sw.bb.428
    i32 47, label %sw.bb.433
    i32 48, label %sw.bb.459
    i32 49, label %sw.bb.489
    i32 50, label %sw.bb.523
    i32 51, label %sw.bb.567
    i32 52, label %sw.bb.619
    i32 53, label %sw.bb.675
    i32 54, label %sw.bb.711
    i32 55, label %sw.bb.713
    i32 56, label %sw.bb.719
    i32 57, label %sw.bb.722
    i32 58, label %sw.bb.723
    i32 59, label %sw.bb.726
    i32 60, label %sw.bb.729
    i32 61, label %sw.bb.736
    i32 64, label %sw.bb.743
    i32 66, label %sw.bb.746
    i32 67, label %sw.bb.749
    i32 68, label %sw.bb.752
    i32 69, label %sw.bb.756
    i32 70, label %sw.bb.760
    i32 71, label %sw.bb.764
    i32 72, label %sw.bb.768
    i32 73, label %sw.bb.775
    i32 74, label %sw.bb.778
    i32 75, label %sw.bb.781
    i32 76, label %sw.bb.807
    i32 77, label %sw.bb.811
    i32 78, label %sw.bb.815
    i32 79, label %sw.bb.819
    i32 80, label %sw.bb.823
    i32 81, label %sw.bb.858
    i32 82, label %sw.bb.860
    i32 86, label %sw.bb.895
    i32 87, label %sw.bb.898
    i32 88, label %sw.bb.901
  ]

sw.bb.162:                                        ; preds = %if.end.160
  call void @prompt()
  store i8 0, i8* @prev, align 1
  br label %sw.epilog.903

sw.bb.163:                                        ; preds = %if.end.160
  call void @dohelp()
  br label %sw.epilog.903

sw.bb.164:                                        ; preds = %if.end.160
  %82 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx165 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %82, i64 -4
  %dynstr = bitcast %union.YYSTYPE* %arrayidx165 to i8**
  %83 = load i8*, i8** %dynstr, align 8
  %84 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx166 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %84, i64 -2
  %dynstr167 = bitcast %union.YYSTYPE* %arrayidx166 to i8**
  %85 = load i8*, i8** %dynstr167, align 8
  %86 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx168 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %86, i64 -1
  %halves = bitcast %union.YYSTYPE* %arrayidx168 to %struct.anon*
  %left = getelementptr inbounds %struct.anon, %struct.anon* %halves, i32 0, i32 0
  %87 = load i8*, i8** %left, align 8
  %88 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx169 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %88, i64 -1
  %halves170 = bitcast %union.YYSTYPE* %arrayidx169 to %struct.anon*
  %right = getelementptr inbounds %struct.anon, %struct.anon* %halves170, i32 0, i32 1
  %89 = load i8*, i8** %right, align 8
  %90 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx171 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %90, i64 -1
  %halves172 = bitcast %union.YYSTYPE* %arrayidx171 to %struct.anon*
  %type = getelementptr inbounds %struct.anon, %struct.anon* %halves172, i32 0, i32 2
  %91 = load i8*, i8** %type, align 8
  call void @dodeclare(i8* %83, i8* %85, i8* %87, i8* %89, i8* %91)
  br label %sw.epilog.903

sw.bb.173:                                        ; preds = %if.end.160
  %92 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx174 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %92, i64 -2
  %dynstr175 = bitcast %union.YYSTYPE* %arrayidx174 to i8**
  %93 = load i8*, i8** %dynstr175, align 8
  %94 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx176 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %94, i64 -1
  %halves177 = bitcast %union.YYSTYPE* %arrayidx176 to %struct.anon*
  %left178 = getelementptr inbounds %struct.anon, %struct.anon* %halves177, i32 0, i32 0
  %95 = load i8*, i8** %left178, align 8
  %96 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx179 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %96, i64 -1
  %halves180 = bitcast %union.YYSTYPE* %arrayidx179 to %struct.anon*
  %right181 = getelementptr inbounds %struct.anon, %struct.anon* %halves180, i32 0, i32 1
  %97 = load i8*, i8** %right181, align 8
  %98 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx182 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %98, i64 -1
  %halves183 = bitcast %union.YYSTYPE* %arrayidx182 to %struct.anon*
  %type184 = getelementptr inbounds %struct.anon, %struct.anon* %halves183, i32 0, i32 2
  %99 = load i8*, i8** %type184, align 8
  call void @dodeclare(i8* null, i8* %93, i8* %95, i8* %97, i8* %99)
  br label %sw.epilog.903

sw.bb.185:                                        ; preds = %if.end.160
  %100 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx186 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %100, i64 -3
  %dynstr187 = bitcast %union.YYSTYPE* %arrayidx186 to i8**
  %101 = load i8*, i8** %dynstr187, align 8
  %102 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx188 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %102, i64 -1
  %halves189 = bitcast %union.YYSTYPE* %arrayidx188 to %struct.anon*
  %left190 = getelementptr inbounds %struct.anon, %struct.anon* %halves189, i32 0, i32 0
  %103 = load i8*, i8** %left190, align 8
  %104 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx191 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 -1
  %halves192 = bitcast %union.YYSTYPE* %arrayidx191 to %struct.anon*
  %right193 = getelementptr inbounds %struct.anon, %struct.anon* %halves192, i32 0, i32 1
  %105 = load i8*, i8** %right193, align 8
  %106 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx194 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %106, i64 -1
  %halves195 = bitcast %union.YYSTYPE* %arrayidx194 to %struct.anon*
  %type196 = getelementptr inbounds %struct.anon, %struct.anon* %halves195, i32 0, i32 2
  %107 = load i8*, i8** %type196, align 8
  call void @docast(i8* %101, i8* %103, i8* %105, i8* %107)
  br label %sw.epilog.903

sw.bb.197:                                        ; preds = %if.end.160
  %108 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx198 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %108, i64 -1
  %halves199 = bitcast %union.YYSTYPE* %arrayidx198 to %struct.anon*
  %left200 = getelementptr inbounds %struct.anon, %struct.anon* %halves199, i32 0, i32 0
  %109 = load i8*, i8** %left200, align 8
  %110 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx201 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %110, i64 -1
  %halves202 = bitcast %union.YYSTYPE* %arrayidx201 to %struct.anon*
  %right203 = getelementptr inbounds %struct.anon, %struct.anon* %halves202, i32 0, i32 1
  %111 = load i8*, i8** %right203, align 8
  %112 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx204 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %112, i64 -1
  %halves205 = bitcast %union.YYSTYPE* %arrayidx204 to %struct.anon*
  %type206 = getelementptr inbounds %struct.anon, %struct.anon* %halves205, i32 0, i32 2
  %113 = load i8*, i8** %type206, align 8
  call void @docast(i8* null, i8* %109, i8* %111, i8* %113)
  br label %sw.epilog.903

sw.bb.207:                                        ; preds = %if.end.160
  %114 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx208 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %114, i64 -4
  %dynstr209 = bitcast %union.YYSTYPE* %arrayidx208 to i8**
  %115 = load i8*, i8** %dynstr209, align 8
  %116 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx210 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %116, i64 -3
  %dynstr211 = bitcast %union.YYSTYPE* %arrayidx210 to i8**
  %117 = load i8*, i8** %dynstr211, align 8
  %118 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx212 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %118, i64 -2
  %dynstr213 = bitcast %union.YYSTYPE* %arrayidx212 to i8**
  %119 = load i8*, i8** %dynstr213, align 8
  %120 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx214 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %120, i64 -1
  %dynstr215 = bitcast %union.YYSTYPE* %arrayidx214 to i8**
  %121 = load i8*, i8** %dynstr215, align 8
  call void @dodexplain(i8* %115, i8* %117, i8* %119, i8* %121)
  br label %sw.epilog.903

sw.bb.216:                                        ; preds = %if.end.160
  %122 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx217 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %122, i64 -3
  %dynstr218 = bitcast %union.YYSTYPE* %arrayidx217 to i8**
  %123 = load i8*, i8** %dynstr218, align 8
  %124 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx219 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %124, i64 -2
  %dynstr220 = bitcast %union.YYSTYPE* %arrayidx219 to i8**
  %125 = load i8*, i8** %dynstr220, align 8
  %126 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx221 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %126, i64 -1
  %dynstr222 = bitcast %union.YYSTYPE* %arrayidx221 to i8**
  %127 = load i8*, i8** %dynstr222, align 8
  call void @dodexplain(i8* %123, i8* %125, i8* null, i8* %127)
  br label %sw.epilog.903

sw.bb.223:                                        ; preds = %if.end.160
  %128 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx224 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %128, i64 -3
  %dynstr225 = bitcast %union.YYSTYPE* %arrayidx224 to i8**
  %129 = load i8*, i8** %dynstr225, align 8
  %130 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx226 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %130, i64 -2
  %dynstr227 = bitcast %union.YYSTYPE* %arrayidx226 to i8**
  %131 = load i8*, i8** %dynstr227, align 8
  %132 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx228 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %132, i64 -1
  %dynstr229 = bitcast %union.YYSTYPE* %arrayidx228 to i8**
  %133 = load i8*, i8** %dynstr229, align 8
  call void @dodexplain(i8* %129, i8* %131, i8* null, i8* %133)
  br label %sw.epilog.903

sw.bb.230:                                        ; preds = %if.end.160
  %134 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx231 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %134, i64 -5
  %dynstr232 = bitcast %union.YYSTYPE* %arrayidx231 to i8**
  %135 = load i8*, i8** %dynstr232, align 8
  %136 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx233 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %136, i64 -4
  %dynstr234 = bitcast %union.YYSTYPE* %arrayidx233 to i8**
  %137 = load i8*, i8** %dynstr234, align 8
  %138 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx235 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %138, i64 -3
  %dynstr236 = bitcast %union.YYSTYPE* %arrayidx235 to i8**
  %139 = load i8*, i8** %dynstr236, align 8
  %140 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx237 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %140, i64 -1
  %dynstr238 = bitcast %union.YYSTYPE* %arrayidx237 to i8**
  %141 = load i8*, i8** %dynstr238, align 8
  call void @docexplain(i8* %135, i8* %137, i8* %139, i8* %141)
  br label %sw.epilog.903

sw.bb.239:                                        ; preds = %if.end.160
  %142 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx240 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %142, i64 -1
  %dynstr241 = bitcast %union.YYSTYPE* %arrayidx240 to i8**
  %143 = load i8*, i8** %dynstr241, align 8
  call void @doset(i8* %143)
  br label %sw.epilog.903

sw.bb.242:                                        ; preds = %if.end.160
  store i16 0, i16* @yyerrflag, align 2
  br label %sw.epilog.903

sw.bb.243:                                        ; preds = %if.end.160
  call void @doprompt()
  br label %sw.epilog.903

sw.bb.244:                                        ; preds = %if.end.160
  call void @noprompt()
  br label %sw.epilog.903

sw.bb.245:                                        ; preds = %if.end.160
  %144 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx246 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %144, i64 0
  %dynstr247 = bitcast %union.YYSTYPE* %arrayidx246 to i8**
  %145 = load i8*, i8** %dynstr247, align 8
  store i8* %145, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  br label %sw.epilog.903

sw.bb.248:                                        ; preds = %if.end.160
  %call249 = call i8* @ds(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @unknown_name, i32 0, i32 0))
  store i8* %call249, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  br label %sw.epilog.903

sw.bb.250:                                        ; preds = %if.end.160
  %146 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx251 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %146, i64 0
  %dynstr252 = bitcast %union.YYSTYPE* %arrayidx251 to i8**
  %147 = load i8*, i8** %dynstr252, align 8
  %148 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx253 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %148, i64 -1
  %dynstr254 = bitcast %union.YYSTYPE* %arrayidx253 to i8**
  %149 = load i8*, i8** %dynstr254, align 8
  %150 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx255 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %150, i64 -1
  %dynstr256 = bitcast %union.YYSTYPE* %arrayidx255 to i8**
  %151 = load i8*, i8** %dynstr256, align 8
  %call257 = call i64 @strlen(i8* %151) #7
  %tobool = icmp ne i64 %call257, 0
  %cond = select i1 %tobool, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0)
  %call258 = call i8* @ds(i8* %cond)
  %call259 = call i8* (i8*, ...) @cat(i8* %147, i8* %149, i8* %call258, i8* null)
  store i8* %call259, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  store i8 112, i8* @prev, align 1
  br label %sw.epilog.903

sw.bb.260:                                        ; preds = %if.end.160
  %152 = load i32, i32* @CplusplusFlag, align 4
  %tobool261 = icmp ne i32 %152, 0
  br i1 %tobool261, label %if.end.263, label %if.then.262

if.then.262:                                      ; preds = %sw.bb.260
  call void @unsupp(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i32 0, i32 0), i8* null)
  br label %if.end.263

if.end.263:                                       ; preds = %if.then.262, %sw.bb.260
  %153 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx264 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %153, i64 0
  %dynstr265 = bitcast %union.YYSTYPE* %arrayidx264 to i8**
  %154 = load i8*, i8** %dynstr265, align 8
  %call266 = call i8* @ds(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i32 0, i32 0))
  %155 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx267 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %155, i64 -3
  %dynstr268 = bitcast %union.YYSTYPE* %arrayidx267 to i8**
  %156 = load i8*, i8** %dynstr268, align 8
  %call269 = call i8* @ds(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  %call270 = call i8* (i8*, ...) @cat(i8* %154, i8* %call266, i8* %156, i8* %call269, i8* null)
  store i8* %call270, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  store i8 112, i8* @prev, align 1
  br label %sw.epilog.903

sw.bb.271:                                        ; preds = %if.end.160
  %157 = load i32, i32* @CplusplusFlag, align 4
  %tobool272 = icmp ne i32 %157, 0
  br i1 %tobool272, label %if.end.274, label %if.then.273

if.then.273:                                      ; preds = %sw.bb.271
  call void @unsupp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* null)
  br label %if.end.274

if.end.274:                                       ; preds = %if.then.273, %sw.bb.271
  %158 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx275 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %158, i64 0
  %dynstr276 = bitcast %union.YYSTYPE* %arrayidx275 to i8**
  %159 = load i8*, i8** %dynstr276, align 8
  %160 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx277 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %160, i64 -1
  %dynstr278 = bitcast %union.YYSTYPE* %arrayidx277 to i8**
  %161 = load i8*, i8** %dynstr278, align 8
  %162 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx279 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %162, i64 -1
  %dynstr280 = bitcast %union.YYSTYPE* %arrayidx279 to i8**
  %163 = load i8*, i8** %dynstr280, align 8
  %call281 = call i64 @strlen(i8* %163) #7
  %tobool282 = icmp ne i64 %call281, 0
  %cond283 = select i1 %tobool282, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0)
  %call284 = call i8* @ds(i8* %cond283)
  %call285 = call i8* (i8*, ...) @cat(i8* %159, i8* %161, i8* %call284, i8* null)
  store i8* %call285, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  store i8 114, i8* @prev, align 1
  br label %sw.epilog.903

sw.bb.286:                                        ; preds = %if.end.160
  %164 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx287 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %164, i64 -2
  %dynstr288 = bitcast %union.YYSTYPE* %arrayidx287 to i8**
  %165 = load i8*, i8** %dynstr288, align 8
  %call289 = call i8* @ds(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i32 0, i32 0))
  %call290 = call i8* (i8*, ...) @cat(i8* %165, i8* %call289, i8* null)
  store i8* %call290, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  store i8 102, i8* @prev, align 1
  br label %sw.epilog.903

sw.bb.291:                                        ; preds = %if.end.160
  %166 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx292 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %166, i64 -3
  %dynstr293 = bitcast %union.YYSTYPE* %arrayidx292 to i8**
  %167 = load i8*, i8** %dynstr293, align 8
  %call294 = call i8* @ds(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0))
  %168 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx295 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %168, i64 -1
  %dynstr296 = bitcast %union.YYSTYPE* %arrayidx295 to i8**
  %169 = load i8*, i8** %dynstr296, align 8
  %call297 = call i8* @ds(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0))
  %call298 = call i8* (i8*, ...) @cat(i8* %167, i8* %call294, i8* %169, i8* %call297, i8* null)
  store i8* %call298, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  store i8 102, i8* @prev, align 1
  br label %sw.epilog.903

sw.bb.299:                                        ; preds = %if.end.160
  %170 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx300 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %170, i64 -1
  %dynstr301 = bitcast %union.YYSTYPE* %arrayidx300 to i8**
  %171 = load i8*, i8** %dynstr301, align 8
  %call302 = call i8* @ds(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0))
  %172 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx303 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %172, i64 0
  %dynstr304 = bitcast %union.YYSTYPE* %arrayidx303 to i8**
  %173 = load i8*, i8** %dynstr304, align 8
  %call305 = call i8* (i8*, ...) @cat(i8* %171, i8* %call302, i8* %173, i8* null)
  store i8* %call305, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  store i8 97, i8* @prev, align 1
  br label %sw.epilog.903

sw.bb.306:                                        ; preds = %if.end.160
  %174 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx307 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %174, i64 -1
  %dynstr308 = bitcast %union.YYSTYPE* %arrayidx307 to i8**
  %175 = load i8*, i8** %dynstr308, align 8
  store i8* %175, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  br label %sw.epilog.903

sw.bb.309:                                        ; preds = %if.end.160
  %176 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx310 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %176, i64 0
  %dynstr311 = bitcast %union.YYSTYPE* %arrayidx310 to i8**
  %177 = load i8*, i8** %dynstr311, align 8
  store i8* %177, i8** @savedname, align 8
  %call312 = call i8* @ds(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i32 0, i32 0))
  store i8* %call312, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  store i8 110, i8* @prev, align 1
  br label %sw.epilog.903

sw.bb.313:                                        ; preds = %if.end.160
  %178 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx314 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %178, i64 -2
  %dynstr315 = bitcast %union.YYSTYPE* %arrayidx314 to i8**
  %179 = load i8*, i8** %dynstr315, align 8
  %call316 = call i8* @ds(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0))
  %180 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx317 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %180, i64 0
  %dynstr318 = bitcast %union.YYSTYPE* %arrayidx317 to i8**
  %181 = load i8*, i8** %dynstr318, align 8
  %call319 = call i8* (i8*, ...) @cat(i8* %179, i8* %call316, i8* %181, i8* null)
  store i8* %call319, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  br label %sw.epilog.903

sw.bb.320:                                        ; preds = %if.end.160
  %182 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx321 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %182, i64 0
  %dynstr322 = bitcast %union.YYSTYPE* %arrayidx321 to i8**
  %183 = load i8*, i8** %dynstr322, align 8
  %184 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx323 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %184, i64 -2
  %dynstr324 = bitcast %union.YYSTYPE* %arrayidx323 to i8**
  %185 = load i8*, i8** %dynstr324, align 8
  %186 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx325 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %186, i64 -2
  %dynstr326 = bitcast %union.YYSTYPE* %arrayidx325 to i8**
  %187 = load i8*, i8** %dynstr326, align 8
  %call327 = call i64 @strlen(i8* %187) #7
  %tobool328 = icmp ne i64 %call327, 0
  %cond329 = select i1 %tobool328, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i32 0, i32 0)
  %call330 = call i8* @ds(i8* %cond329)
  %188 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx331 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %188, i64 -1
  %dynstr332 = bitcast %union.YYSTYPE* %arrayidx331 to i8**
  %189 = load i8*, i8** %dynstr332, align 8
  %call333 = call i8* (i8*, ...) @cat(i8* %183, i8* %185, i8* %call330, i8* %189, i8* null)
  store i8* %call333, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  br label %sw.epilog.903

sw.bb.334:                                        ; preds = %if.end.160
  %190 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx335 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %190, i64 0
  %dynstr336 = bitcast %union.YYSTYPE* %arrayidx335 to i8**
  %191 = load i8*, i8** %dynstr336, align 8
  store i8* %191, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  br label %sw.epilog.903

sw.bb.337:                                        ; preds = %if.end.160
  %call338 = call i8* @ds(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i32 0, i32 0))
  store i8* %call338, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  br label %sw.epilog.903

sw.bb.339:                                        ; preds = %if.end.160
  %192 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx340 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %192, i64 -2
  %dynstr341 = bitcast %union.YYSTYPE* %arrayidx340 to i8**
  %193 = load i8*, i8** %dynstr341, align 8
  %call342 = call i8* @ds(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0))
  %194 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx343 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %194, i64 0
  %dynstr344 = bitcast %union.YYSTYPE* %arrayidx343 to i8**
  %195 = load i8*, i8** %dynstr344, align 8
  %call345 = call i8* (i8*, ...) @cat(i8* %193, i8* %call342, i8* %195, i8* null)
  store i8* %call345, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  br label %sw.epilog.903

sw.bb.346:                                        ; preds = %if.end.160
  %196 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx347 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %196, i64 0
  %dynstr348 = bitcast %union.YYSTYPE* %arrayidx347 to i8**
  %197 = load i8*, i8** %dynstr348, align 8
  store i8* %197, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  br label %sw.epilog.903

sw.bb.349:                                        ; preds = %if.end.160
  %198 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx350 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %198, i64 0
  %halves351 = bitcast %union.YYSTYPE* %arrayidx350 to %struct.anon*
  %type352 = getelementptr inbounds %struct.anon, %struct.anon* %halves351, i32 0, i32 2
  %199 = load i8*, i8** %type352, align 8
  %call353 = call i8* @ds(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  %200 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx354 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %200, i64 0
  %halves355 = bitcast %union.YYSTYPE* %arrayidx354 to %struct.anon*
  %left356 = getelementptr inbounds %struct.anon, %struct.anon* %halves355, i32 0, i32 0
  %201 = load i8*, i8** %left356, align 8
  %202 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx357 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %202, i64 0
  %halves358 = bitcast %union.YYSTYPE* %arrayidx357 to %struct.anon*
  %right359 = getelementptr inbounds %struct.anon, %struct.anon* %halves358, i32 0, i32 1
  %203 = load i8*, i8** %right359, align 8
  %call360 = call i8* (i8*, ...) @cat(i8* %199, i8* %call353, i8* %201, i8* %203, i8* null)
  store i8* %call360, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  br label %sw.epilog.903

sw.bb.361:                                        ; preds = %if.end.160
  %204 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx362 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %204, i64 0
  %halves363 = bitcast %union.YYSTYPE* %arrayidx362 to %struct.anon*
  %type364 = getelementptr inbounds %struct.anon, %struct.anon* %halves363, i32 0, i32 2
  %205 = load i8*, i8** %type364, align 8
  %call365 = call i8* @ds(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  %206 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx366 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %206, i64 0
  %halves367 = bitcast %union.YYSTYPE* %arrayidx366 to %struct.anon*
  %left368 = getelementptr inbounds %struct.anon, %struct.anon* %halves367, i32 0, i32 0
  %207 = load i8*, i8** %left368, align 8
  %208 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx369 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %208, i64 -2
  %dynstr370 = bitcast %union.YYSTYPE* %arrayidx369 to i8**
  %209 = load i8*, i8** %dynstr370, align 8
  %210 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx371 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %210, i64 0
  %halves372 = bitcast %union.YYSTYPE* %arrayidx371 to %struct.anon*
  %right373 = getelementptr inbounds %struct.anon, %struct.anon* %halves372, i32 0, i32 1
  %211 = load i8*, i8** %right373, align 8
  %call374 = call i8* (i8*, ...) @cat(i8* %205, i8* %call365, i8* %207, i8* %209, i8* %211, i8* null)
  store i8* %call374, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  br label %sw.epilog.903

sw.bb.375:                                        ; preds = %if.end.160
  %call376 = call i8* @ds(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i32 0, i32 0))
  store i8* %call376, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  br label %sw.epilog.903

sw.bb.377:                                        ; preds = %if.end.160
  %call378 = call i8* @ds(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i32 0, i32 0))
  store i8* %call378, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  store i8 102, i8* @prev, align 1
  br label %sw.epilog.903

sw.bb.379:                                        ; preds = %if.end.160
  %212 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx380 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %212, i64 -3
  %dynstr381 = bitcast %union.YYSTYPE* %arrayidx380 to i8**
  %213 = load i8*, i8** %dynstr381, align 8
  %call382 = call i8* @ds(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i32 0, i32 0))
  %call383 = call i8* (i8*, ...) @cat(i8* %213, i8* %call382, i8* null)
  store i8* %call383, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  store i8 102, i8* @prev, align 1
  br label %sw.epilog.903

sw.bb.384:                                        ; preds = %if.end.160
  %214 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx385 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %214, i64 -4
  %dynstr386 = bitcast %union.YYSTYPE* %arrayidx385 to i8**
  %215 = load i8*, i8** %dynstr386, align 8
  %call387 = call i8* @ds(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0))
  %216 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx388 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %216, i64 -1
  %dynstr389 = bitcast %union.YYSTYPE* %arrayidx388 to i8**
  %217 = load i8*, i8** %dynstr389, align 8
  %call390 = call i8* @ds(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0))
  %call391 = call i8* (i8*, ...) @cat(i8* %215, i8* %call387, i8* %217, i8* %call390, i8* null)
  store i8* %call391, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  store i8 102, i8* @prev, align 1
  br label %sw.epilog.903

sw.bb.392:                                        ; preds = %if.end.160
  %218 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx393 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %218, i64 -1
  %dynstr394 = bitcast %union.YYSTYPE* %arrayidx393 to i8**
  %219 = load i8*, i8** %dynstr394, align 8
  store i8* %219, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  br label %sw.epilog.903

sw.bb.395:                                        ; preds = %if.end.160
  %220 = load i32, i32* @CplusplusFlag, align 4
  %tobool396 = icmp ne i32 %220, 0
  br i1 %tobool396, label %if.end.398, label %if.then.397

if.then.397:                                      ; preds = %sw.bb.395
  call void @unsupp(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i32 0, i32 0), i8* null)
  br label %if.end.398

if.end.398:                                       ; preds = %if.then.397, %sw.bb.395
  %221 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx399 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %221, i64 0
  %dynstr400 = bitcast %union.YYSTYPE* %arrayidx399 to i8**
  %222 = load i8*, i8** %dynstr400, align 8
  %call401 = call i8* @ds(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i32 0, i32 0))
  %223 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx402 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %223, i64 -3
  %dynstr403 = bitcast %union.YYSTYPE* %arrayidx402 to i8**
  %224 = load i8*, i8** %dynstr403, align 8
  %call404 = call i8* @ds(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  %call405 = call i8* (i8*, ...) @cat(i8* %222, i8* %call401, i8* %224, i8* %call404, i8* null)
  store i8* %call405, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  store i8 112, i8* @prev, align 1
  br label %sw.epilog.903

sw.bb.406:                                        ; preds = %if.end.160
  %225 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx407 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %225, i64 0
  %dynstr408 = bitcast %union.YYSTYPE* %arrayidx407 to i8**
  %226 = load i8*, i8** %dynstr408, align 8
  %call409 = call i8* @ds(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0))
  %call410 = call i8* (i8*, ...) @cat(i8* %226, i8* %call409, i8* null)
  store i8* %call410, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  store i8 112, i8* @prev, align 1
  br label %sw.epilog.903

sw.bb.411:                                        ; preds = %if.end.160
  %227 = load i32, i32* @CplusplusFlag, align 4
  %tobool412 = icmp ne i32 %227, 0
  br i1 %tobool412, label %if.end.414, label %if.then.413

if.then.413:                                      ; preds = %sw.bb.411
  call void @unsupp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* null)
  br label %if.end.414

if.end.414:                                       ; preds = %if.then.413, %sw.bb.411
  %228 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx415 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %228, i64 0
  %dynstr416 = bitcast %union.YYSTYPE* %arrayidx415 to i8**
  %229 = load i8*, i8** %dynstr416, align 8
  %call417 = call i8* @ds(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0))
  %call418 = call i8* (i8*, ...) @cat(i8* %229, i8* %call417, i8* null)
  store i8* %call418, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  store i8 114, i8* @prev, align 1
  br label %sw.epilog.903

sw.bb.419:                                        ; preds = %if.end.160
  %230 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx420 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %230, i64 -1
  %dynstr421 = bitcast %union.YYSTYPE* %arrayidx420 to i8**
  %231 = load i8*, i8** %dynstr421, align 8
  %call422 = call i8* @ds(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0))
  %232 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx423 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %232, i64 0
  %dynstr424 = bitcast %union.YYSTYPE* %arrayidx423 to i8**
  %233 = load i8*, i8** %dynstr424, align 8
  %call425 = call i8* (i8*, ...) @cat(i8* %231, i8* %call422, i8* %233, i8* null)
  store i8* %call425, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  store i8 97, i8* @prev, align 1
  br label %sw.epilog.903

sw.bb.426:                                        ; preds = %if.end.160
  %call427 = call i8* @ds(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0))
  store i8* %call427, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  br label %sw.epilog.903

sw.bb.428:                                        ; preds = %if.end.160
  %234 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx429 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %234, i64 -1
  %dynstr430 = bitcast %union.YYSTYPE* %arrayidx429 to i8**
  %235 = load i8*, i8** %dynstr430, align 8
  %call431 = call i8* @ds(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0))
  %call432 = call i8* (i8*, ...) @cat(i8* %235, i8* %call431, i8* null)
  store i8* %call432, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  br label %sw.epilog.903

sw.bb.433:                                        ; preds = %if.end.160
  %236 = load i8, i8* @prev, align 1
  %conv434 = sext i8 %236 to i32
  %cmp435 = icmp eq i32 %conv434, 102
  br i1 %cmp435, label %if.then.437, label %if.else

if.then.437:                                      ; preds = %sw.bb.433
  call void @unsupp(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.20, i32 0, i32 0))
  br label %if.end.447

if.else:                                          ; preds = %sw.bb.433
  %237 = load i8, i8* @prev, align 1
  %conv438 = sext i8 %237 to i32
  %cmp439 = icmp eq i32 %conv438, 65
  br i1 %cmp439, label %if.then.445, label %lor.lhs.false.441

lor.lhs.false.441:                                ; preds = %if.else
  %238 = load i8, i8* @prev, align 1
  %conv442 = sext i8 %238 to i32
  %cmp443 = icmp eq i32 %conv442, 97
  br i1 %cmp443, label %if.then.445, label %if.end.446

if.then.445:                                      ; preds = %lor.lhs.false.441, %if.else
  call void @unsupp(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.22, i32 0, i32 0))
  br label %if.end.446

if.end.446:                                       ; preds = %if.then.445, %lor.lhs.false.441
  br label %if.end.447

if.end.447:                                       ; preds = %if.end.446, %if.then.437
  %239 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx448 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %239, i64 0
  %halves449 = bitcast %union.YYSTYPE* %arrayidx448 to %struct.anon*
  %left450 = getelementptr inbounds %struct.anon, %struct.anon* %halves449, i32 0, i32 0
  %240 = load i8*, i8** %left450, align 8
  store i8* %240, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  %call451 = call i8* @ds(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0))
  %241 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx452 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %241, i64 0
  %halves453 = bitcast %union.YYSTYPE* %arrayidx452 to %struct.anon*
  %right454 = getelementptr inbounds %struct.anon, %struct.anon* %halves453, i32 0, i32 1
  %242 = load i8*, i8** %right454, align 8
  %call455 = call i8* (i8*, ...) @cat(i8* %call451, i8* %242, i8* null)
  store i8* %call455, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 1), align 8
  %243 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx456 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %243, i64 0
  %halves457 = bitcast %union.YYSTYPE* %arrayidx456 to %struct.anon*
  %type458 = getelementptr inbounds %struct.anon, %struct.anon* %halves457, i32 0, i32 2
  %244 = load i8*, i8** %type458, align 8
  store i8* %244, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 2), align 8
  store i8 102, i8* @prev, align 1
  br label %sw.epilog.903

sw.bb.459:                                        ; preds = %if.end.160
  %245 = load i8, i8* @prev, align 1
  %conv460 = sext i8 %245 to i32
  %cmp461 = icmp eq i32 %conv460, 102
  br i1 %cmp461, label %if.then.463, label %if.else.464

if.then.463:                                      ; preds = %sw.bb.459
  call void @unsupp(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.20, i32 0, i32 0))
  br label %if.end.474

if.else.464:                                      ; preds = %sw.bb.459
  %246 = load i8, i8* @prev, align 1
  %conv465 = sext i8 %246 to i32
  %cmp466 = icmp eq i32 %conv465, 65
  br i1 %cmp466, label %if.then.472, label %lor.lhs.false.468

lor.lhs.false.468:                                ; preds = %if.else.464
  %247 = load i8, i8* @prev, align 1
  %conv469 = sext i8 %247 to i32
  %cmp470 = icmp eq i32 %conv469, 97
  br i1 %cmp470, label %if.then.472, label %if.end.473

if.then.472:                                      ; preds = %lor.lhs.false.468, %if.else.464
  call void @unsupp(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.22, i32 0, i32 0))
  br label %if.end.473

if.end.473:                                       ; preds = %if.then.472, %lor.lhs.false.468
  br label %if.end.474

if.end.474:                                       ; preds = %if.end.473, %if.then.463
  %248 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx475 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %248, i64 0
  %halves476 = bitcast %union.YYSTYPE* %arrayidx475 to %struct.anon*
  %left477 = getelementptr inbounds %struct.anon, %struct.anon* %halves476, i32 0, i32 0
  %249 = load i8*, i8** %left477, align 8
  store i8* %249, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  %call478 = call i8* @ds(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0))
  %250 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx479 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %250, i64 -3
  %dynstr480 = bitcast %union.YYSTYPE* %arrayidx479 to i8**
  %251 = load i8*, i8** %dynstr480, align 8
  %call481 = call i8* @ds(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i32 0, i32 0))
  %252 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx482 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %252, i64 0
  %halves483 = bitcast %union.YYSTYPE* %arrayidx482 to %struct.anon*
  %right484 = getelementptr inbounds %struct.anon, %struct.anon* %halves483, i32 0, i32 1
  %253 = load i8*, i8** %right484, align 8
  %call485 = call i8* (i8*, ...) @cat(i8* %call478, i8* %251, i8* %call481, i8* %253, i8* null)
  store i8* %call485, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 1), align 8
  %254 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx486 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %254, i64 0
  %halves487 = bitcast %union.YYSTYPE* %arrayidx486 to %struct.anon*
  %type488 = getelementptr inbounds %struct.anon, %struct.anon* %halves487, i32 0, i32 2
  %255 = load i8*, i8** %type488, align 8
  store i8* %255, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 2), align 8
  store i8 102, i8* @prev, align 1
  br label %sw.epilog.903

sw.bb.489:                                        ; preds = %if.end.160
  %256 = load i8, i8* @prev, align 1
  %conv490 = sext i8 %256 to i32
  %cmp491 = icmp eq i32 %conv490, 102
  br i1 %cmp491, label %if.then.493, label %if.else.494

if.then.493:                                      ; preds = %sw.bb.489
  call void @unsupp(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.27, i32 0, i32 0))
  br label %if.end.506

if.else.494:                                      ; preds = %sw.bb.489
  %257 = load i8, i8* @prev, align 1
  %conv495 = sext i8 %257 to i32
  %cmp496 = icmp eq i32 %conv495, 97
  br i1 %cmp496, label %if.then.498, label %if.else.499

if.then.498:                                      ; preds = %if.else.494
  call void @unsupp(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.29, i32 0, i32 0))
  br label %if.end.505

if.else.499:                                      ; preds = %if.else.494
  %258 = load i8, i8* @prev, align 1
  %conv500 = sext i8 %258 to i32
  %cmp501 = icmp eq i32 %conv500, 118
  br i1 %cmp501, label %if.then.503, label %if.end.504

if.then.503:                                      ; preds = %if.else.499
  call void @unsupp(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i32 0, i32 0))
  br label %if.end.504

if.end.504:                                       ; preds = %if.then.503, %if.else.499
  br label %if.end.505

if.end.505:                                       ; preds = %if.end.504, %if.then.498
  br label %if.end.506

if.end.506:                                       ; preds = %if.end.505, %if.then.493
  %259 = load i32, i32* @arbdims, align 4
  %tobool507 = icmp ne i32 %259, 0
  br i1 %tobool507, label %if.then.508, label %if.else.509

if.then.508:                                      ; preds = %if.end.506
  store i8 97, i8* @prev, align 1
  br label %if.end.510

if.else.509:                                      ; preds = %if.end.506
  store i8 65, i8* @prev, align 1
  br label %if.end.510

if.end.510:                                       ; preds = %if.else.509, %if.then.508
  %260 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx511 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %260, i64 0
  %halves512 = bitcast %union.YYSTYPE* %arrayidx511 to %struct.anon*
  %left513 = getelementptr inbounds %struct.anon, %struct.anon* %halves512, i32 0, i32 0
  %261 = load i8*, i8** %left513, align 8
  store i8* %261, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  %262 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx514 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %262, i64 -2
  %dynstr515 = bitcast %union.YYSTYPE* %arrayidx514 to i8**
  %263 = load i8*, i8** %dynstr515, align 8
  %264 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx516 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %264, i64 0
  %halves517 = bitcast %union.YYSTYPE* %arrayidx516 to %struct.anon*
  %right518 = getelementptr inbounds %struct.anon, %struct.anon* %halves517, i32 0, i32 1
  %265 = load i8*, i8** %right518, align 8
  %call519 = call i8* (i8*, ...) @cat(i8* %263, i8* %265, i8* null)
  store i8* %call519, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 1), align 8
  %266 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx520 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %266, i64 0
  %halves521 = bitcast %union.YYSTYPE* %arrayidx520 to %struct.anon*
  %type522 = getelementptr inbounds %struct.anon, %struct.anon* %halves521, i32 0, i32 2
  %267 = load i8*, i8** %type522, align 8
  store i8* %267, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 2), align 8
  br label %sw.epilog.903

sw.bb.523:                                        ; preds = %if.end.160
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i32 0, i32 0), i8** %op, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i32 0, i32 0), i8** %cp, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i32 0, i32 0), i8** %sp, align 8
  %268 = load i8, i8* @prev, align 1
  %conv524 = sext i8 %268 to i32
  %cmp525 = icmp eq i32 %conv524, 97
  br i1 %cmp525, label %if.then.527, label %if.end.528

if.then.527:                                      ; preds = %sw.bb.523
  call void @unsupp(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.33, i32 0, i32 0))
  br label %if.end.528

if.end.528:                                       ; preds = %if.then.527, %sw.bb.523
  %269 = load i8, i8* @prev, align 1
  %conv529 = sext i8 %269 to i32
  %cmp530 = icmp eq i32 %conv529, 97
  br i1 %cmp530, label %if.then.540, label %lor.lhs.false.532

lor.lhs.false.532:                                ; preds = %if.end.528
  %270 = load i8, i8* @prev, align 1
  %conv533 = sext i8 %270 to i32
  %cmp534 = icmp eq i32 %conv533, 65
  br i1 %cmp534, label %if.then.540, label %lor.lhs.false.536

lor.lhs.false.536:                                ; preds = %lor.lhs.false.532
  %271 = load i8, i8* @prev, align 1
  %conv537 = sext i8 %271 to i32
  %cmp538 = icmp eq i32 %conv537, 102
  br i1 %cmp538, label %if.then.540, label %if.end.541

if.then.540:                                      ; preds = %lor.lhs.false.536, %lor.lhs.false.532, %if.end.528
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0), i8** %op, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i32 0, i32 0), i8** %cp, align 8
  br label %if.end.541

if.end.541:                                       ; preds = %if.then.540, %lor.lhs.false.536
  %272 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx542 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %272, i64 -3
  %dynstr543 = bitcast %union.YYSTYPE* %arrayidx542 to i8**
  %273 = load i8*, i8** %dynstr543, align 8
  %call544 = call i64 @strlen(i8* %273) #7
  %cmp545 = icmp ne i64 %call544, 0
  br i1 %cmp545, label %if.then.547, label %if.end.548

if.then.547:                                      ; preds = %if.end.541
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i8** %sp, align 8
  br label %if.end.548

if.end.548:                                       ; preds = %if.then.547, %if.end.541
  %274 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx549 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %274, i64 0
  %halves550 = bitcast %union.YYSTYPE* %arrayidx549 to %struct.anon*
  %left551 = getelementptr inbounds %struct.anon, %struct.anon* %halves550, i32 0, i32 0
  %275 = load i8*, i8** %left551, align 8
  %276 = load i8*, i8** %op, align 8
  %call552 = call i8* @ds(i8* %276)
  %call553 = call i8* @ds(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i32 0, i32 0))
  %277 = load i8*, i8** %sp, align 8
  %call554 = call i8* @ds(i8* %277)
  %278 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx555 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %278, i64 -3
  %dynstr556 = bitcast %union.YYSTYPE* %arrayidx555 to i8**
  %279 = load i8*, i8** %dynstr556, align 8
  %280 = load i8*, i8** %sp, align 8
  %call557 = call i8* @ds(i8* %280)
  %call558 = call i8* (i8*, ...) @cat(i8* %275, i8* %call552, i8* %call553, i8* %call554, i8* %279, i8* %call557, i8* null)
  store i8* %call558, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  %281 = load i8*, i8** %cp, align 8
  %call559 = call i8* @ds(i8* %281)
  %282 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx560 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %282, i64 0
  %halves561 = bitcast %union.YYSTYPE* %arrayidx560 to %struct.anon*
  %right562 = getelementptr inbounds %struct.anon, %struct.anon* %halves561, i32 0, i32 1
  %283 = load i8*, i8** %right562, align 8
  %call563 = call i8* (i8*, ...) @cat(i8* %call559, i8* %283, i8* null)
  store i8* %call563, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 1), align 8
  %284 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx564 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %284, i64 0
  %halves565 = bitcast %union.YYSTYPE* %arrayidx564 to %struct.anon*
  %type566 = getelementptr inbounds %struct.anon, %struct.anon* %halves565, i32 0, i32 2
  %285 = load i8*, i8** %type566, align 8
  store i8* %285, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 2), align 8
  store i8 112, i8* @prev, align 1
  br label %sw.epilog.903

sw.bb.567:                                        ; preds = %if.end.160
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i32 0, i32 0), i8** %op568, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i32 0, i32 0), i8** %cp569, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i32 0, i32 0), i8** %sp570, align 8
  %286 = load i32, i32* @CplusplusFlag, align 4
  %tobool571 = icmp ne i32 %286, 0
  br i1 %tobool571, label %if.end.573, label %if.then.572

if.then.572:                                      ; preds = %sw.bb.567
  call void @unsupp(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i32 0, i32 0), i8* null)
  br label %if.end.573

if.end.573:                                       ; preds = %if.then.572, %sw.bb.567
  %287 = load i8, i8* @prev, align 1
  %conv574 = sext i8 %287 to i32
  %cmp575 = icmp eq i32 %conv574, 97
  br i1 %cmp575, label %if.then.577, label %if.end.578

if.then.577:                                      ; preds = %if.end.573
  call void @unsupp(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.33, i32 0, i32 0))
  br label %if.end.578

if.end.578:                                       ; preds = %if.then.577, %if.end.573
  %288 = load i8, i8* @prev, align 1
  %conv579 = sext i8 %288 to i32
  %cmp580 = icmp eq i32 %conv579, 97
  br i1 %cmp580, label %if.then.590, label %lor.lhs.false.582

lor.lhs.false.582:                                ; preds = %if.end.578
  %289 = load i8, i8* @prev, align 1
  %conv583 = sext i8 %289 to i32
  %cmp584 = icmp eq i32 %conv583, 65
  br i1 %cmp584, label %if.then.590, label %lor.lhs.false.586

lor.lhs.false.586:                                ; preds = %lor.lhs.false.582
  %290 = load i8, i8* @prev, align 1
  %conv587 = sext i8 %290 to i32
  %cmp588 = icmp eq i32 %conv587, 102
  br i1 %cmp588, label %if.then.590, label %if.end.591

if.then.590:                                      ; preds = %lor.lhs.false.586, %lor.lhs.false.582, %if.end.578
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0), i8** %op568, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i32 0, i32 0), i8** %cp569, align 8
  br label %if.end.591

if.end.591:                                       ; preds = %if.then.590, %lor.lhs.false.586
  %291 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx592 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %291, i64 -7
  %dynstr593 = bitcast %union.YYSTYPE* %arrayidx592 to i8**
  %292 = load i8*, i8** %dynstr593, align 8
  %call594 = call i64 @strlen(i8* %292) #7
  %cmp595 = icmp ne i64 %call594, 0
  br i1 %cmp595, label %if.then.597, label %if.end.598

if.then.597:                                      ; preds = %if.end.591
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i8** %sp570, align 8
  br label %if.end.598

if.end.598:                                       ; preds = %if.then.597, %if.end.591
  %293 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx599 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %293, i64 0
  %halves600 = bitcast %union.YYSTYPE* %arrayidx599 to %struct.anon*
  %left601 = getelementptr inbounds %struct.anon, %struct.anon* %halves600, i32 0, i32 0
  %294 = load i8*, i8** %left601, align 8
  %295 = load i8*, i8** %op568, align 8
  %call602 = call i8* @ds(i8* %295)
  %296 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx603 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %296, i64 -1
  %dynstr604 = bitcast %union.YYSTYPE* %arrayidx603 to i8**
  %297 = load i8*, i8** %dynstr604, align 8
  %call605 = call i8* @ds(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i32 0, i32 0))
  %298 = load i8*, i8** %sp570, align 8
  %call606 = call i8* @ds(i8* %298)
  %299 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx607 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %299, i64 -7
  %dynstr608 = bitcast %union.YYSTYPE* %arrayidx607 to i8**
  %300 = load i8*, i8** %dynstr608, align 8
  %301 = load i8*, i8** %sp570, align 8
  %call609 = call i8* @ds(i8* %301)
  %call610 = call i8* (i8*, ...) @cat(i8* %294, i8* %call602, i8* %297, i8* %call605, i8* %call606, i8* %300, i8* %call609, i8* null)
  store i8* %call610, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  %302 = load i8*, i8** %cp569, align 8
  %call611 = call i8* @ds(i8* %302)
  %303 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx612 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %303, i64 0
  %halves613 = bitcast %union.YYSTYPE* %arrayidx612 to %struct.anon*
  %right614 = getelementptr inbounds %struct.anon, %struct.anon* %halves613, i32 0, i32 1
  %304 = load i8*, i8** %right614, align 8
  %call615 = call i8* (i8*, ...) @cat(i8* %call611, i8* %304, i8* null)
  store i8* %call615, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 1), align 8
  %305 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx616 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %305, i64 0
  %halves617 = bitcast %union.YYSTYPE* %arrayidx616 to %struct.anon*
  %type618 = getelementptr inbounds %struct.anon, %struct.anon* %halves617, i32 0, i32 2
  %306 = load i8*, i8** %type618, align 8
  store i8* %306, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 2), align 8
  store i8 112, i8* @prev, align 1
  br label %sw.epilog.903

sw.bb.619:                                        ; preds = %if.end.160
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i32 0, i32 0), i8** %op620, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i32 0, i32 0), i8** %cp621, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i32 0, i32 0), i8** %sp622, align 8
  %307 = load i32, i32* @CplusplusFlag, align 4
  %tobool623 = icmp ne i32 %307, 0
  br i1 %tobool623, label %if.end.625, label %if.then.624

if.then.624:                                      ; preds = %sw.bb.619
  call void @unsupp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* null)
  br label %if.end.625

if.end.625:                                       ; preds = %if.then.624, %sw.bb.619
  %308 = load i8, i8* @prev, align 1
  %conv626 = sext i8 %308 to i32
  %cmp627 = icmp eq i32 %conv626, 118
  br i1 %cmp627, label %if.then.629, label %if.else.630

if.then.629:                                      ; preds = %if.end.625
  call void @unsupp(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i32 0, i32 0))
  br label %if.end.636

if.else.630:                                      ; preds = %if.end.625
  %309 = load i8, i8* @prev, align 1
  %conv631 = sext i8 %309 to i32
  %cmp632 = icmp eq i32 %conv631, 97
  br i1 %cmp632, label %if.then.634, label %if.end.635

if.then.634:                                      ; preds = %if.else.630
  call void @unsupp(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.38, i32 0, i32 0))
  br label %if.end.635

if.end.635:                                       ; preds = %if.then.634, %if.else.630
  br label %if.end.636

if.end.636:                                       ; preds = %if.end.635, %if.then.629
  %310 = load i8, i8* @prev, align 1
  %conv637 = sext i8 %310 to i32
  %cmp638 = icmp eq i32 %conv637, 97
  br i1 %cmp638, label %if.then.648, label %lor.lhs.false.640

lor.lhs.false.640:                                ; preds = %if.end.636
  %311 = load i8, i8* @prev, align 1
  %conv641 = sext i8 %311 to i32
  %cmp642 = icmp eq i32 %conv641, 65
  br i1 %cmp642, label %if.then.648, label %lor.lhs.false.644

lor.lhs.false.644:                                ; preds = %lor.lhs.false.640
  %312 = load i8, i8* @prev, align 1
  %conv645 = sext i8 %312 to i32
  %cmp646 = icmp eq i32 %conv645, 102
  br i1 %cmp646, label %if.then.648, label %if.end.649

if.then.648:                                      ; preds = %lor.lhs.false.644, %lor.lhs.false.640, %if.end.636
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0), i8** %op620, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i32 0, i32 0), i8** %cp621, align 8
  br label %if.end.649

if.end.649:                                       ; preds = %if.then.648, %lor.lhs.false.644
  %313 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx650 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %313, i64 -3
  %dynstr651 = bitcast %union.YYSTYPE* %arrayidx650 to i8**
  %314 = load i8*, i8** %dynstr651, align 8
  %call652 = call i64 @strlen(i8* %314) #7
  %cmp653 = icmp ne i64 %call652, 0
  br i1 %cmp653, label %if.then.655, label %if.end.656

if.then.655:                                      ; preds = %if.end.649
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i8** %sp622, align 8
  br label %if.end.656

if.end.656:                                       ; preds = %if.then.655, %if.end.649
  %315 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx657 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %315, i64 0
  %halves658 = bitcast %union.YYSTYPE* %arrayidx657 to %struct.anon*
  %left659 = getelementptr inbounds %struct.anon, %struct.anon* %halves658, i32 0, i32 0
  %316 = load i8*, i8** %left659, align 8
  %317 = load i8*, i8** %op620, align 8
  %call660 = call i8* @ds(i8* %317)
  %call661 = call i8* @ds(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i32 0, i32 0))
  %318 = load i8*, i8** %sp622, align 8
  %call662 = call i8* @ds(i8* %318)
  %319 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx663 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %319, i64 -3
  %dynstr664 = bitcast %union.YYSTYPE* %arrayidx663 to i8**
  %320 = load i8*, i8** %dynstr664, align 8
  %321 = load i8*, i8** %sp622, align 8
  %call665 = call i8* @ds(i8* %321)
  %call666 = call i8* (i8*, ...) @cat(i8* %316, i8* %call660, i8* %call661, i8* %call662, i8* %320, i8* %call665, i8* null)
  store i8* %call666, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  %322 = load i8*, i8** %cp621, align 8
  %call667 = call i8* @ds(i8* %322)
  %323 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx668 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %323, i64 0
  %halves669 = bitcast %union.YYSTYPE* %arrayidx668 to %struct.anon*
  %right670 = getelementptr inbounds %struct.anon, %struct.anon* %halves669, i32 0, i32 1
  %324 = load i8*, i8** %right670, align 8
  %call671 = call i8* (i8*, ...) @cat(i8* %call667, i8* %324, i8* null)
  store i8* %call671, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 1), align 8
  %325 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx672 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %325, i64 0
  %halves673 = bitcast %union.YYSTYPE* %arrayidx672 to %struct.anon*
  %type674 = getelementptr inbounds %struct.anon, %struct.anon* %halves673, i32 0, i32 2
  %326 = load i8*, i8** %type674, align 8
  store i8* %326, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 2), align 8
  store i8 114, i8* @prev, align 1
  br label %sw.epilog.903

sw.bb.675:                                        ; preds = %if.end.160
  %call676 = call i8* @ds(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i32 0, i32 0))
  store i8* %call676, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  %call677 = call i8* @ds(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i32 0, i32 0))
  store i8* %call677, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 1), align 8
  %327 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx678 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %327, i64 0
  %dynstr679 = bitcast %union.YYSTYPE* %arrayidx678 to i8**
  %328 = load i8*, i8** %dynstr679, align 8
  %call680 = call i32 @strcmp(i8* %328, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0)) #7
  %cmp681 = icmp eq i32 %call680, 0
  br i1 %cmp681, label %if.then.683, label %if.else.684

if.then.683:                                      ; preds = %sw.bb.675
  store i8 118, i8* @prev, align 1
  br label %if.end.699

if.else.684:                                      ; preds = %sw.bb.675
  %329 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx685 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %329, i64 0
  %dynstr686 = bitcast %union.YYSTYPE* %arrayidx685 to i8**
  %330 = load i8*, i8** %dynstr686, align 8
  %call687 = call i32 @strncmp(i8* %330, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0), i64 6) #7
  %cmp688 = icmp eq i32 %call687, 0
  br i1 %cmp688, label %if.then.696, label %lor.lhs.false.690

lor.lhs.false.690:                                ; preds = %if.else.684
  %331 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx691 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %331, i64 0
  %dynstr692 = bitcast %union.YYSTYPE* %arrayidx691 to i8**
  %332 = load i8*, i8** %dynstr692, align 8
  %call693 = call i32 @strncmp(i8* %332, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i64 5) #7
  %cmp694 = icmp eq i32 %call693, 0
  br i1 %cmp694, label %if.then.696, label %if.else.697

if.then.696:                                      ; preds = %lor.lhs.false.690, %if.else.684
  store i8 115, i8* @prev, align 1
  br label %if.end.698

if.else.697:                                      ; preds = %lor.lhs.false.690
  store i8 116, i8* @prev, align 1
  br label %if.end.698

if.end.698:                                       ; preds = %if.else.697, %if.then.696
  br label %if.end.699

if.end.699:                                       ; preds = %if.end.698, %if.then.683
  %333 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx700 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %333, i64 -1
  %dynstr701 = bitcast %union.YYSTYPE* %arrayidx700 to i8**
  %334 = load i8*, i8** %dynstr701, align 8
  %335 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx702 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %335, i64 -1
  %dynstr703 = bitcast %union.YYSTYPE* %arrayidx702 to i8**
  %336 = load i8*, i8** %dynstr703, align 8
  %call704 = call i64 @strlen(i8* %336) #7
  %tobool705 = icmp ne i64 %call704, 0
  %cond706 = select i1 %tobool705, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i32 0, i32 0)
  %call707 = call i8* @ds(i8* %cond706)
  %337 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx708 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %337, i64 0
  %dynstr709 = bitcast %union.YYSTYPE* %arrayidx708 to i8**
  %338 = load i8*, i8** %dynstr709, align 8
  %call710 = call i8* (i8*, ...) @cat(i8* %334, i8* %call707, i8* %338, i8* null)
  store i8* %call710, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 2), align 8
  br label %sw.epilog.903

sw.bb.711:                                        ; preds = %if.end.160
  store i32 1, i32* @arbdims, align 4
  %call712 = call i8* @ds(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i32 0, i32 0))
  store i8* %call712, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  br label %sw.epilog.903

sw.bb.713:                                        ; preds = %if.end.160
  store i32 0, i32* @arbdims, align 4
  %call714 = call i8* @ds(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i32 0, i32 0))
  %339 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx715 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %339, i64 0
  %dynstr716 = bitcast %union.YYSTYPE* %arrayidx715 to i8**
  %340 = load i8*, i8** %dynstr716, align 8
  %call717 = call i8* @ds(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i32 0, i32 0))
  %call718 = call i8* (i8*, ...) @cat(i8* %call714, i8* %340, i8* %call717, i8* null)
  store i8* %call718, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  br label %sw.epilog.903

sw.bb.719:                                        ; preds = %if.end.160
  call void @mbcheck()
  %341 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx720 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %341, i64 0
  %dynstr721 = bitcast %union.YYSTYPE* %arrayidx720 to i8**
  %342 = load i8*, i8** %dynstr721, align 8
  store i8* %342, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  br label %sw.epilog.903

sw.bb.722:                                        ; preds = %if.end.160
  store i32 0, i32* @modbits, align 4
  br label %sw.epilog.903

sw.bb.723:                                        ; preds = %if.end.160
  %343 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx724 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %343, i64 0
  %dynstr725 = bitcast %union.YYSTYPE* %arrayidx724 to i8**
  %344 = load i8*, i8** %dynstr725, align 8
  store i8* %344, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  br label %sw.epilog.903

sw.bb.726:                                        ; preds = %if.end.160
  %345 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx727 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %345, i64 0
  %dynstr728 = bitcast %union.YYSTYPE* %arrayidx727 to i8**
  %346 = load i8*, i8** %dynstr728, align 8
  store i8* %346, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  br label %sw.epilog.903

sw.bb.729:                                        ; preds = %if.end.160
  %347 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx730 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %347, i64 -1
  %dynstr731 = bitcast %union.YYSTYPE* %arrayidx730 to i8**
  %348 = load i8*, i8** %dynstr731, align 8
  %call732 = call i8* @ds(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  %349 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx733 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %349, i64 0
  %dynstr734 = bitcast %union.YYSTYPE* %arrayidx733 to i8**
  %350 = load i8*, i8** %dynstr734, align 8
  %call735 = call i8* (i8*, ...) @cat(i8* %348, i8* %call732, i8* %350, i8* null)
  store i8* %call735, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  br label %sw.epilog.903

sw.bb.736:                                        ; preds = %if.end.160
  %351 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx737 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %351, i64 -1
  %dynstr738 = bitcast %union.YYSTYPE* %arrayidx737 to i8**
  %352 = load i8*, i8** %dynstr738, align 8
  %call739 = call i8* @ds(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  %353 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx740 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %353, i64 0
  %dynstr741 = bitcast %union.YYSTYPE* %arrayidx740 to i8**
  %354 = load i8*, i8** %dynstr741, align 8
  %call742 = call i8* (i8*, ...) @cat(i8* %352, i8* %call739, i8* %354, i8* null)
  store i8* %call742, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  br label %sw.epilog.903

sw.bb.743:                                        ; preds = %if.end.160
  %355 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx744 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %355, i64 0
  %dynstr745 = bitcast %union.YYSTYPE* %arrayidx744 to i8**
  %356 = load i8*, i8** %dynstr745, align 8
  store i8* %356, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  br label %sw.epilog.903

sw.bb.746:                                        ; preds = %if.end.160
  %357 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx747 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %357, i64 0
  %dynstr748 = bitcast %union.YYSTYPE* %arrayidx747 to i8**
  %358 = load i8*, i8** %dynstr748, align 8
  store i8* %358, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  br label %sw.epilog.903

sw.bb.749:                                        ; preds = %if.end.160
  %359 = load i32, i32* @modbits, align 4
  %or = or i32 %359, 8
  store i32 %or, i32* @modbits, align 4
  %360 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx750 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %360, i64 0
  %dynstr751 = bitcast %union.YYSTYPE* %arrayidx750 to i8**
  %361 = load i8*, i8** %dynstr751, align 8
  store i8* %361, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  br label %sw.epilog.903

sw.bb.752:                                        ; preds = %if.end.160
  %362 = load i32, i32* @modbits, align 4
  %or753 = or i32 %362, 16
  store i32 %or753, i32* @modbits, align 4
  %363 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx754 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %363, i64 0
  %dynstr755 = bitcast %union.YYSTYPE* %arrayidx754 to i8**
  %364 = load i8*, i8** %dynstr755, align 8
  store i8* %364, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  br label %sw.epilog.903

sw.bb.756:                                        ; preds = %if.end.160
  %365 = load i32, i32* @modbits, align 4
  %or757 = or i32 %365, 32
  store i32 %or757, i32* @modbits, align 4
  %366 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx758 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %366, i64 0
  %dynstr759 = bitcast %union.YYSTYPE* %arrayidx758 to i8**
  %367 = load i8*, i8** %dynstr759, align 8
  store i8* %367, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  br label %sw.epilog.903

sw.bb.760:                                        ; preds = %if.end.160
  %368 = load i32, i32* @modbits, align 4
  %or761 = or i32 %368, 64
  store i32 %or761, i32* @modbits, align 4
  %369 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx762 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %369, i64 0
  %dynstr763 = bitcast %union.YYSTYPE* %arrayidx762 to i8**
  %370 = load i8*, i8** %dynstr763, align 8
  store i8* %370, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  br label %sw.epilog.903

sw.bb.764:                                        ; preds = %if.end.160
  %371 = load i32, i32* @modbits, align 4
  %or765 = or i32 %371, 128
  store i32 %or765, i32* @modbits, align 4
  %372 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx766 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %372, i64 0
  %dynstr767 = bitcast %union.YYSTYPE* %arrayidx766 to i8**
  %373 = load i8*, i8** %dynstr767, align 8
  store i8* %373, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  br label %sw.epilog.903

sw.bb.768:                                        ; preds = %if.end.160
  %374 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx769 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %374, i64 -1
  %dynstr770 = bitcast %union.YYSTYPE* %arrayidx769 to i8**
  %375 = load i8*, i8** %dynstr770, align 8
  %call771 = call i8* @ds(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  %376 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx772 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %376, i64 0
  %dynstr773 = bitcast %union.YYSTYPE* %arrayidx772 to i8**
  %377 = load i8*, i8** %dynstr773, align 8
  %call774 = call i8* (i8*, ...) @cat(i8* %375, i8* %call771, i8* %377, i8* null)
  store i8* %call774, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  br label %sw.epilog.903

sw.bb.775:                                        ; preds = %if.end.160
  %378 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx776 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %378, i64 0
  %dynstr777 = bitcast %union.YYSTYPE* %arrayidx776 to i8**
  %379 = load i8*, i8** %dynstr777, align 8
  store i8* %379, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  br label %sw.epilog.903

sw.bb.778:                                        ; preds = %if.end.160
  %380 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx779 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %380, i64 0
  %dynstr780 = bitcast %union.YYSTYPE* %arrayidx779 to i8**
  %381 = load i8*, i8** %dynstr780, align 8
  store i8* %381, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  br label %sw.epilog.903

sw.bb.781:                                        ; preds = %if.end.160
  %382 = load i32, i32* @PreANSIFlag, align 4
  %tobool782 = icmp ne i32 %382, 0
  br i1 %tobool782, label %if.then.783, label %if.else.786

if.then.783:                                      ; preds = %sw.bb.781
  %383 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx784 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %383, i64 0
  %dynstr785 = bitcast %union.YYSTYPE* %arrayidx784 to i8**
  %384 = load i8*, i8** %dynstr785, align 8
  call void @notsupported(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.46, i32 0, i32 0), i8* %384, i8* null)
  br label %if.end.804

if.else.786:                                      ; preds = %sw.bb.781
  %385 = load i32, i32* @RitchieFlag, align 4
  %tobool787 = icmp ne i32 %385, 0
  br i1 %tobool787, label %if.then.788, label %if.else.791

if.then.788:                                      ; preds = %if.else.786
  %386 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx789 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %386, i64 0
  %dynstr790 = bitcast %union.YYSTYPE* %arrayidx789 to i8**
  %387 = load i8*, i8** %dynstr790, align 8
  call void @notsupported(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i32 0, i32 0), i8* %387, i8* null)
  br label %if.end.803

if.else.791:                                      ; preds = %if.else.786
  %388 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx792 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %388, i64 0
  %dynstr793 = bitcast %union.YYSTYPE* %arrayidx792 to i8**
  %389 = load i8*, i8** %dynstr793, align 8
  %call794 = call i32 @strcmp(i8* %389, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i32 0, i32 0)) #7
  %cmp795 = icmp eq i32 %call794, 0
  br i1 %cmp795, label %land.lhs.true.797, label %if.end.802

land.lhs.true.797:                                ; preds = %if.else.791
  %390 = load i32, i32* @CplusplusFlag, align 4
  %tobool798 = icmp ne i32 %390, 0
  br i1 %tobool798, label %if.then.799, label %if.end.802

if.then.799:                                      ; preds = %land.lhs.true.797
  %391 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx800 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %391, i64 0
  %dynstr801 = bitcast %union.YYSTYPE* %arrayidx800 to i8**
  %392 = load i8*, i8** %dynstr801, align 8
  call void @unsupp(i8* %392, i8* null)
  br label %if.end.802

if.end.802:                                       ; preds = %if.then.799, %land.lhs.true.797, %if.else.791
  br label %if.end.803

if.end.803:                                       ; preds = %if.end.802, %if.then.788
  br label %if.end.804

if.end.804:                                       ; preds = %if.end.803, %if.then.783
  %393 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx805 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %393, i64 0
  %dynstr806 = bitcast %union.YYSTYPE* %arrayidx805 to i8**
  %394 = load i8*, i8** %dynstr806, align 8
  store i8* %394, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  br label %sw.epilog.903

sw.bb.807:                                        ; preds = %if.end.160
  %395 = load i32, i32* @modbits, align 4
  %or808 = or i32 %395, 4
  store i32 %or808, i32* @modbits, align 4
  %396 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx809 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %396, i64 0
  %dynstr810 = bitcast %union.YYSTYPE* %arrayidx809 to i8**
  %397 = load i8*, i8** %dynstr810, align 8
  store i8* %397, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  br label %sw.epilog.903

sw.bb.811:                                        ; preds = %if.end.160
  %398 = load i32, i32* @modbits, align 4
  %or812 = or i32 %398, 256
  store i32 %or812, i32* @modbits, align 4
  %399 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx813 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %399, i64 0
  %dynstr814 = bitcast %union.YYSTYPE* %arrayidx813 to i8**
  %400 = load i8*, i8** %dynstr814, align 8
  store i8* %400, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  br label %sw.epilog.903

sw.bb.815:                                        ; preds = %if.end.160
  %401 = load i32, i32* @modbits, align 4
  %or816 = or i32 %401, 2
  store i32 %or816, i32* @modbits, align 4
  %402 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx817 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %402, i64 0
  %dynstr818 = bitcast %union.YYSTYPE* %arrayidx817 to i8**
  %403 = load i8*, i8** %dynstr818, align 8
  store i8* %403, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  br label %sw.epilog.903

sw.bb.819:                                        ; preds = %if.end.160
  %404 = load i32, i32* @modbits, align 4
  %or820 = or i32 %404, 1
  store i32 %or820, i32* @modbits, align 4
  %405 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx821 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %405, i64 0
  %dynstr822 = bitcast %union.YYSTYPE* %arrayidx821 to i8**
  %406 = load i8*, i8** %dynstr822, align 8
  store i8* %406, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  br label %sw.epilog.903

sw.bb.823:                                        ; preds = %if.end.160
  %407 = load i32, i32* @PreANSIFlag, align 4
  %tobool824 = icmp ne i32 %407, 0
  br i1 %tobool824, label %if.then.825, label %if.else.828

if.then.825:                                      ; preds = %sw.bb.823
  %408 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx826 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %408, i64 -1
  %dynstr827 = bitcast %union.YYSTYPE* %arrayidx826 to i8**
  %409 = load i8*, i8** %dynstr827, align 8
  call void @notsupported(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.46, i32 0, i32 0), i8* %409, i8* null)
  br label %if.end.846

if.else.828:                                      ; preds = %sw.bb.823
  %410 = load i32, i32* @RitchieFlag, align 4
  %tobool829 = icmp ne i32 %410, 0
  br i1 %tobool829, label %if.then.830, label %if.else.833

if.then.830:                                      ; preds = %if.else.828
  %411 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx831 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %411, i64 -1
  %dynstr832 = bitcast %union.YYSTYPE* %arrayidx831 to i8**
  %412 = load i8*, i8** %dynstr832, align 8
  call void @notsupported(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i32 0, i32 0), i8* %412, i8* null)
  br label %if.end.845

if.else.833:                                      ; preds = %if.else.828
  %413 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx834 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %413, i64 -1
  %dynstr835 = bitcast %union.YYSTYPE* %arrayidx834 to i8**
  %414 = load i8*, i8** %dynstr835, align 8
  %call836 = call i32 @strcmp(i8* %414, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i32 0, i32 0)) #7
  %cmp837 = icmp eq i32 %call836, 0
  br i1 %cmp837, label %land.lhs.true.839, label %if.end.844

land.lhs.true.839:                                ; preds = %if.else.833
  %415 = load i32, i32* @CplusplusFlag, align 4
  %tobool840 = icmp ne i32 %415, 0
  br i1 %tobool840, label %if.then.841, label %if.end.844

if.then.841:                                      ; preds = %land.lhs.true.839
  %416 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx842 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %416, i64 -1
  %dynstr843 = bitcast %union.YYSTYPE* %arrayidx842 to i8**
  %417 = load i8*, i8** %dynstr843, align 8
  call void @unsupp(i8* %417, i8* null)
  br label %if.end.844

if.end.844:                                       ; preds = %if.then.841, %land.lhs.true.839, %if.else.833
  br label %if.end.845

if.end.845:                                       ; preds = %if.end.844, %if.then.830
  br label %if.end.846

if.end.846:                                       ; preds = %if.end.845, %if.then.825
  %418 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx847 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %418, i64 -1
  %dynstr848 = bitcast %union.YYSTYPE* %arrayidx847 to i8**
  %419 = load i8*, i8** %dynstr848, align 8
  %420 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx849 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %420, i64 0
  %dynstr850 = bitcast %union.YYSTYPE* %arrayidx849 to i8**
  %421 = load i8*, i8** %dynstr850, align 8
  %call851 = call i64 @strlen(i8* %421) #7
  %tobool852 = icmp ne i64 %call851, 0
  %cond853 = select i1 %tobool852, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i32 0, i32 0)
  %call854 = call i8* @ds(i8* %cond853)
  %422 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx855 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %422, i64 0
  %dynstr856 = bitcast %union.YYSTYPE* %arrayidx855 to i8**
  %423 = load i8*, i8** %dynstr856, align 8
  %call857 = call i8* (i8*, ...) @cat(i8* %419, i8* %call854, i8* %423, i8* null)
  store i8* %call857, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  br label %sw.epilog.903

sw.bb.858:                                        ; preds = %if.end.160
  %call859 = call i8* @ds(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i32 0, i32 0))
  store i8* %call859, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  br label %sw.epilog.903

sw.bb.860:                                        ; preds = %if.end.160
  %424 = load i32, i32* @PreANSIFlag, align 4
  %tobool861 = icmp ne i32 %424, 0
  br i1 %tobool861, label %if.then.862, label %if.else.865

if.then.862:                                      ; preds = %sw.bb.860
  %425 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx863 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %425, i64 -1
  %dynstr864 = bitcast %union.YYSTYPE* %arrayidx863 to i8**
  %426 = load i8*, i8** %dynstr864, align 8
  call void @notsupported(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.46, i32 0, i32 0), i8* %426, i8* null)
  br label %if.end.883

if.else.865:                                      ; preds = %sw.bb.860
  %427 = load i32, i32* @RitchieFlag, align 4
  %tobool866 = icmp ne i32 %427, 0
  br i1 %tobool866, label %if.then.867, label %if.else.870

if.then.867:                                      ; preds = %if.else.865
  %428 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx868 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %428, i64 -1
  %dynstr869 = bitcast %union.YYSTYPE* %arrayidx868 to i8**
  %429 = load i8*, i8** %dynstr869, align 8
  call void @notsupported(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i32 0, i32 0), i8* %429, i8* null)
  br label %if.end.882

if.else.870:                                      ; preds = %if.else.865
  %430 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx871 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %430, i64 -1
  %dynstr872 = bitcast %union.YYSTYPE* %arrayidx871 to i8**
  %431 = load i8*, i8** %dynstr872, align 8
  %call873 = call i32 @strcmp(i8* %431, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i32 0, i32 0)) #7
  %cmp874 = icmp eq i32 %call873, 0
  br i1 %cmp874, label %land.lhs.true.876, label %if.end.881

land.lhs.true.876:                                ; preds = %if.else.870
  %432 = load i32, i32* @CplusplusFlag, align 4
  %tobool877 = icmp ne i32 %432, 0
  br i1 %tobool877, label %if.then.878, label %if.end.881

if.then.878:                                      ; preds = %land.lhs.true.876
  %433 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx879 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %433, i64 -1
  %dynstr880 = bitcast %union.YYSTYPE* %arrayidx879 to i8**
  %434 = load i8*, i8** %dynstr880, align 8
  call void @unsupp(i8* %434, i8* null)
  br label %if.end.881

if.end.881:                                       ; preds = %if.then.878, %land.lhs.true.876, %if.else.870
  br label %if.end.882

if.end.882:                                       ; preds = %if.end.881, %if.then.867
  br label %if.end.883

if.end.883:                                       ; preds = %if.end.882, %if.then.862
  %435 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx884 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %435, i64 -1
  %dynstr885 = bitcast %union.YYSTYPE* %arrayidx884 to i8**
  %436 = load i8*, i8** %dynstr885, align 8
  %437 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx886 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %437, i64 0
  %dynstr887 = bitcast %union.YYSTYPE* %arrayidx886 to i8**
  %438 = load i8*, i8** %dynstr887, align 8
  %call888 = call i64 @strlen(i8* %438) #7
  %tobool889 = icmp ne i64 %call888, 0
  %cond890 = select i1 %tobool889, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i32 0, i32 0)
  %call891 = call i8* @ds(i8* %cond890)
  %439 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx892 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %439, i64 0
  %dynstr893 = bitcast %union.YYSTYPE* %arrayidx892 to i8**
  %440 = load i8*, i8** %dynstr893, align 8
  %call894 = call i8* (i8*, ...) @cat(i8* %436, i8* %call891, i8* %440, i8* null)
  store i8* %call894, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  br label %sw.epilog.903

sw.bb.895:                                        ; preds = %if.end.160
  %441 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx896 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %441, i64 0
  %dynstr897 = bitcast %union.YYSTYPE* %arrayidx896 to i8**
  %442 = load i8*, i8** %dynstr897, align 8
  store i8* %442, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  br label %sw.epilog.903

sw.bb.898:                                        ; preds = %if.end.160
  %443 = load %union.YYSTYPE*, %union.YYSTYPE** %yypvt, align 8
  %arrayidx899 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %443, i64 0
  %dynstr900 = bitcast %union.YYSTYPE* %arrayidx899 to i8**
  %444 = load i8*, i8** %dynstr900, align 8
  store i8* %444, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  br label %sw.epilog.903

sw.bb.901:                                        ; preds = %if.end.160
  %call902 = call i8* @ds(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i32 0, i32 0))
  store i8* %call902, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yyval, i32 0, i32 0, i32 0), align 8
  br label %sw.epilog.903

sw.epilog.903:                                    ; preds = %if.end.160, %sw.bb.901, %sw.bb.898, %sw.bb.895, %if.end.883, %sw.bb.858, %if.end.846, %sw.bb.819, %sw.bb.815, %sw.bb.811, %sw.bb.807, %if.end.804, %sw.bb.778, %sw.bb.775, %sw.bb.768, %sw.bb.764, %sw.bb.760, %sw.bb.756, %sw.bb.752, %sw.bb.749, %sw.bb.746, %sw.bb.743, %sw.bb.736, %sw.bb.729, %sw.bb.726, %sw.bb.723, %sw.bb.722, %sw.bb.719, %sw.bb.713, %sw.bb.711, %if.end.699, %if.end.656, %if.end.598, %if.end.548, %if.end.510, %if.end.474, %if.end.447, %sw.bb.428, %sw.bb.426, %sw.bb.419, %if.end.414, %sw.bb.406, %if.end.398, %sw.bb.392, %sw.bb.384, %sw.bb.379, %sw.bb.377, %sw.bb.375, %sw.bb.361, %sw.bb.349, %sw.bb.346, %sw.bb.339, %sw.bb.337, %sw.bb.334, %sw.bb.320, %sw.bb.313, %sw.bb.309, %sw.bb.306, %sw.bb.299, %sw.bb.291, %sw.bb.286, %if.end.274, %if.end.263, %sw.bb.250, %sw.bb.248, %sw.bb.245, %sw.bb.244, %sw.bb.243, %sw.bb.242, %sw.bb.239, %sw.bb.230, %sw.bb.223, %sw.bb.216, %sw.bb.207, %sw.bb.197, %sw.bb.185, %sw.bb.173, %sw.bb.164, %sw.bb.163, %sw.bb.162
  br label %yystack

return:                                           ; preds = %yyabort, %if.then.76, %if.then
  %445 = load i32, i32* %retval
  ret i32 %445
}

; Function Attrs: nounwind uwtable
define void @yyerror(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i32 0, i32 0), i8* %0)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define void @prompt() #0 {
entry:
  %0 = load i32, i32* @OnATty, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* @Interactive, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false, %entry
  %2 = load i32, i32* @prompting, align 4
  %tobool2 = icmp ne i32 %2, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load i8*, i8** @progname, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.108, i32 0, i32 0), i8* %3)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call3 = call i32 @fflush(%struct._IO_FILE* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %lor.lhs.false
  ret void
}

; Function Attrs: nounwind uwtable
define void @dohelp() #0 {
entry:
  %p = alloca %struct.helpstruct*, align 8
  %fmt = alloca i8*, align 8
  %0 = load i32, i32* @CplusplusFlag, align 4
  %tobool = icmp ne i32 %0, 0
  %cond = select i1 %tobool, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.99, i32 0, i32 0)
  store i8* %cond, i8** %fmt, align 8
  store %struct.helpstruct* getelementptr inbounds ([24 x %struct.helpstruct], [24 x %struct.helpstruct]* @helptext, i32 0, i32 0), %struct.helpstruct** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.helpstruct*, %struct.helpstruct** %p, align 8
  %text = getelementptr inbounds %struct.helpstruct, %struct.helpstruct* %1, i32 0, i32 0
  %2 = load i8*, i8** %text, align 8
  %tobool1 = icmp ne i8* %2, null
  br i1 %tobool1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* @CplusplusFlag, align 4
  %tobool2 = icmp ne i32 %3, 0
  br i1 %tobool2, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %4 = load %struct.helpstruct*, %struct.helpstruct** %p, align 8
  %cpptext = getelementptr inbounds %struct.helpstruct, %struct.helpstruct* %4, i32 0, i32 1
  %5 = load i8*, i8** %cpptext, align 8
  %tobool3 = icmp ne i8* %5, null
  br i1 %tobool3, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %6 = load i8*, i8** %fmt, align 8
  %7 = load %struct.helpstruct*, %struct.helpstruct** %p, align 8
  %cpptext4 = getelementptr inbounds %struct.helpstruct, %struct.helpstruct* %7, i32 0, i32 1
  %8 = load i8*, i8** %cpptext4, align 8
  %call = call i32 (i8*, ...) @printf(i8* %6, i8* %8)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %for.body
  %9 = load i8*, i8** %fmt, align 8
  %10 = load %struct.helpstruct*, %struct.helpstruct** %p, align 8
  %text5 = getelementptr inbounds %struct.helpstruct, %struct.helpstruct* %10, i32 0, i32 0
  %11 = load i8*, i8** %text5, align 8
  %call6 = call i32 (i8*, ...) @printf(i8* %9, i8* %11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load %struct.helpstruct*, %struct.helpstruct** %p, align 8
  %incdec.ptr = getelementptr inbounds %struct.helpstruct, %struct.helpstruct* %12, i32 1
  store %struct.helpstruct* %incdec.ptr, %struct.helpstruct** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @dodeclare(i8* %name, i8* %storage, i8* %left, i8* %right, i8* %type) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %storage.addr = alloca i8*, align 8
  %left.addr = alloca i8*, align 8
  %right.addr = alloca i8*, align 8
  %type.addr = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %storage, i8** %storage.addr, align 8
  store i8* %left, i8** %left.addr, align 8
  store i8* %right, i8** %right.addr, align 8
  store i8* %type, i8** %type.addr, align 8
  %0 = load i8, i8* @prev, align 1
  %conv = sext i8 %0 to i32
  %cmp = icmp eq i32 %conv, 118
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @unsupp(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.128, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.129, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i8*, i8** %storage.addr, align 8
  %2 = load i8, i8* %1, align 1
  %conv2 = sext i8 %2 to i32
  %cmp3 = icmp eq i32 %conv2, 114
  br i1 %cmp3, label %if.then.5, label %if.end.9

if.then.5:                                        ; preds = %if.end
  %3 = load i8, i8* @prev, align 1
  %conv6 = sext i8 %3 to i32
  switch i32 %conv6, label %sw.epilog [
    i32 102, label %sw.bb
    i32 65, label %sw.bb.7
    i32 97, label %sw.bb.7
    i32 115, label %sw.bb.8
  ]

sw.bb:                                            ; preds = %if.then.5
  call void @unsupp(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.130, i32 0, i32 0), i8* null)
  br label %sw.epilog

sw.bb.7:                                          ; preds = %if.then.5, %if.then.5
  call void @unsupp(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.131, i32 0, i32 0), i8* null)
  br label %sw.epilog

sw.bb.8:                                          ; preds = %if.then.5
  call void @unsupp(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.132, i32 0, i32 0), i8* null)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.5, %sw.bb.8, %sw.bb.7, %sw.bb
  br label %if.end.9

if.end.9:                                         ; preds = %sw.epilog, %if.end
  %4 = load i8*, i8** %storage.addr, align 8
  %5 = load i8, i8* %4, align 1
  %tobool = icmp ne i8 %5, 0
  br i1 %tobool, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.9
  %6 = load i8*, i8** %storage.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.133, i32 0, i32 0), i8* %6)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.end.9
  %7 = load i8*, i8** %type.addr, align 8
  %8 = load i8*, i8** %left.addr, align 8
  %9 = load i8*, i8** %name.addr, align 8
  %tobool12 = icmp ne i8* %9, null
  br i1 %tobool12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.11
  %10 = load i8*, i8** %name.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.11
  %11 = load i8, i8* @prev, align 1
  %conv13 = sext i8 %11 to i32
  %cmp14 = icmp eq i32 %conv13, 102
  %cond = select i1 %cmp14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.135, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.136, i32 0, i32 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond16 = phi i8* [ %10, %cond.true ], [ %cond, %cond.false ]
  %12 = load i8*, i8** %right.addr, align 8
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.134, i32 0, i32 0), i8* %7, i8* %8, i8* %cond16, i8* %12)
  %13 = load i32, i32* @MkProgramFlag, align 4
  %tobool18 = icmp ne i32 %13, 0
  br i1 %tobool18, label %if.then.19, label %if.else.30

if.then.19:                                       ; preds = %cond.end
  %14 = load i8, i8* @prev, align 1
  %conv20 = sext i8 %14 to i32
  %cmp21 = icmp eq i32 %conv20, 102
  br i1 %cmp21, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.19
  %15 = load i8*, i8** %storage.addr, align 8
  %16 = load i8, i8* %15, align 1
  %conv23 = sext i8 %16 to i32
  %cmp24 = icmp ne i32 %conv23, 101
  br i1 %cmp24, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %land.lhs.true
  %call27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.137, i32 0, i32 0))
  br label %if.end.29

if.else:                                          ; preds = %land.lhs.true, %if.then.19
  %call28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.138, i32 0, i32 0))
  br label %if.end.29

if.end.29:                                        ; preds = %if.else, %if.then.26
  br label %if.end.32

if.else.30:                                       ; preds = %cond.end
  %call31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.139, i32 0, i32 0))
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.30, %if.end.29
  %17 = load i8*, i8** %storage.addr, align 8
  call void @free(i8* %17) #1
  %18 = load i8*, i8** %left.addr, align 8
  call void @free(i8* %18) #1
  %19 = load i8*, i8** %right.addr, align 8
  call void @free(i8* %19) #1
  %20 = load i8*, i8** %type.addr, align 8
  call void @free(i8* %20) #1
  %21 = load i8*, i8** %name.addr, align 8
  %tobool33 = icmp ne i8* %21, null
  br i1 %tobool33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.end.32
  %22 = load i8*, i8** %name.addr, align 8
  call void @free(i8* %22) #1
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.34, %if.end.32
  ret void
}

; Function Attrs: nounwind uwtable
define void @docast(i8* %name, i8* %left, i8* %right, i8* %type) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %left.addr = alloca i8*, align 8
  %right.addr = alloca i8*, align 8
  %type.addr = alloca i8*, align 8
  %lenl = alloca i32, align 4
  %lenr = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i8* %left, i8** %left.addr, align 8
  store i8* %right, i8** %right.addr, align 8
  store i8* %type, i8** %type.addr, align 8
  %0 = load i8*, i8** %left.addr, align 8
  %call = call i64 @strlen(i8* %0) #7
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %lenl, align 4
  %1 = load i8*, i8** %right.addr, align 8
  %call1 = call i64 @strlen(i8* %1) #7
  %conv2 = trunc i64 %call1 to i32
  store i32 %conv2, i32* %lenr, align 4
  %2 = load i8, i8* @prev, align 1
  %conv3 = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv3, 102
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @unsupp(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.123, i32 0, i32 0))
  br label %if.end.12

if.else:                                          ; preds = %entry
  %3 = load i8, i8* @prev, align 1
  %conv5 = sext i8 %3 to i32
  %cmp6 = icmp eq i32 %conv5, 65
  br i1 %cmp6, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %4 = load i8, i8* @prev, align 1
  %conv8 = sext i8 %4 to i32
  %cmp9 = icmp eq i32 %conv8, 97
  br i1 %cmp9, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %lor.lhs.false, %if.else
  call void @unsupp(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.125, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.11, %lor.lhs.false
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %if.then
  %5 = load i8*, i8** %type.addr, align 8
  %6 = load i32, i32* %lenl, align 4
  %7 = load i32, i32* %lenr, align 4
  %add = add nsw i32 %6, %7
  %tobool = icmp ne i32 %add, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.12
  %8 = load i32, i32* %lenl, align 4
  %add13 = add nsw i32 %8, 1
  br label %cond.end

cond.false:                                       ; preds = %if.end.12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add13, %cond.true ], [ 0, %cond.false ]
  %9 = load i8*, i8** %left.addr, align 8
  %10 = load i8*, i8** %right.addr, align 8
  %11 = load i8*, i8** %name.addr, align 8
  %tobool14 = icmp ne i8* %11, null
  br i1 %tobool14, label %cond.true.15, label %cond.false.16

cond.true.15:                                     ; preds = %cond.end
  %12 = load i8*, i8** %name.addr, align 8
  br label %cond.end.17

cond.false.16:                                    ; preds = %cond.end
  br label %cond.end.17

cond.end.17:                                      ; preds = %cond.false.16, %cond.true.15
  %cond18 = phi i8* [ %12, %cond.true.15 ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.127, i32 0, i32 0), %cond.false.16 ]
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.126, i32 0, i32 0), i8* %5, i32 %cond, i8* %9, i8* %10, i8* %cond18)
  %13 = load i8*, i8** %left.addr, align 8
  call void @free(i8* %13) #1
  %14 = load i8*, i8** %right.addr, align 8
  call void @free(i8* %14) #1
  %15 = load i8*, i8** %type.addr, align 8
  call void @free(i8* %15) #1
  %16 = load i8*, i8** %name.addr, align 8
  %tobool20 = icmp ne i8* %16, null
  br i1 %tobool20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %cond.end.17
  %17 = load i8*, i8** %name.addr, align 8
  call void @free(i8* %17) #1
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %cond.end.17
  ret void
}

; Function Attrs: nounwind uwtable
define void @dodexplain(i8* %storage, i8* %constvol, i8* %type, i8* %decl) #0 {
entry:
  %storage.addr = alloca i8*, align 8
  %constvol.addr = alloca i8*, align 8
  %type.addr = alloca i8*, align 8
  %decl.addr = alloca i8*, align 8
  store i8* %storage, i8** %storage.addr, align 8
  store i8* %constvol, i8** %constvol.addr, align 8
  store i8* %type, i8** %type.addr, align 8
  store i8* %decl, i8** %decl.addr, align 8
  %0 = load i8*, i8** %type.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end.15

land.lhs.true:                                    ; preds = %entry
  %1 = load i8*, i8** %type.addr, align 8
  %call = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0)) #7
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end.15

if.then:                                          ; preds = %land.lhs.true
  %2 = load i8, i8* @prev, align 1
  %conv = sext i8 %2 to i32
  %cmp1 = icmp eq i32 %conv, 110
  br i1 %cmp1, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  call void @unsupp(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.128, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.129, i32 0, i32 0))
  br label %if.end.14

if.else:                                          ; preds = %if.then
  %3 = load i8, i8* @prev, align 1
  %conv4 = sext i8 %3 to i32
  %cmp5 = icmp eq i32 %conv4, 97
  br i1 %cmp5, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %if.else
  call void @unsupp(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.140, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.141, i32 0, i32 0))
  br label %if.end.13

if.else.8:                                        ; preds = %if.else
  %4 = load i8, i8* @prev, align 1
  %conv9 = sext i8 %4 to i32
  %cmp10 = icmp eq i32 %conv9, 114
  br i1 %cmp10, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %if.else.8
  call void @unsupp(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.142, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.12, %if.else.8
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %if.then.7
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.then.3
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %land.lhs.true, %entry
  %5 = load i8*, i8** %storage.addr, align 8
  %6 = load i8, i8* %5, align 1
  %conv16 = sext i8 %6 to i32
  %cmp17 = icmp eq i32 %conv16, 114
  br i1 %cmp17, label %if.then.19, label %if.end.23

if.then.19:                                       ; preds = %if.end.15
  %7 = load i8, i8* @prev, align 1
  %conv20 = sext i8 %7 to i32
  switch i32 %conv20, label %sw.epilog [
    i32 102, label %sw.bb
    i32 65, label %sw.bb.21
    i32 97, label %sw.bb.21
    i32 115, label %sw.bb.22
  ]

sw.bb:                                            ; preds = %if.then.19
  call void @unsupp(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.130, i32 0, i32 0), i8* null)
  br label %sw.epilog

sw.bb.21:                                         ; preds = %if.then.19, %if.then.19
  call void @unsupp(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.131, i32 0, i32 0), i8* null)
  br label %sw.epilog

sw.bb.22:                                         ; preds = %if.then.19
  call void @unsupp(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.143, i32 0, i32 0), i8* null)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.19, %sw.bb.22, %sw.bb.21, %sw.bb
  br label %if.end.23

if.end.23:                                        ; preds = %sw.epilog, %if.end.15
  %8 = load i8*, i8** @savedname, align 8
  %call24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.144, i32 0, i32 0), i8* %8)
  %9 = load i8*, i8** %storage.addr, align 8
  %10 = load i8, i8* %9, align 1
  %tobool25 = icmp ne i8 %10, 0
  br i1 %tobool25, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %if.end.23
  %11 = load i8*, i8** %storage.addr, align 8
  %call27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.133, i32 0, i32 0), i8* %11)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %if.end.23
  %12 = load i8*, i8** %decl.addr, align 8
  %call29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.145, i32 0, i32 0), i8* %12)
  %13 = load i8*, i8** %constvol.addr, align 8
  %14 = load i8, i8* %13, align 1
  %tobool30 = icmp ne i8 %14, 0
  br i1 %tobool30, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %if.end.28
  %15 = load i8*, i8** %constvol.addr, align 8
  %call32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.133, i32 0, i32 0), i8* %15)
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.31, %if.end.28
  %16 = load i8*, i8** %type.addr, align 8
  %tobool34 = icmp ne i8* %16, null
  br i1 %tobool34, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.33
  %17 = load i8*, i8** %type.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.33
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %17, %cond.true ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52, i32 0, i32 0), %cond.false ]
  %call35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i32 0, i32 0), i8* %cond)
  ret void
}

; Function Attrs: nounwind uwtable
define void @docexplain(i8* %constvol, i8* %type, i8* %cast, i8* %name) #0 {
entry:
  %constvol.addr = alloca i8*, align 8
  %type.addr = alloca i8*, align 8
  %cast.addr = alloca i8*, align 8
  %name.addr = alloca i8*, align 8
  store i8* %constvol, i8** %constvol.addr, align 8
  store i8* %type, i8** %type.addr, align 8
  store i8* %cast, i8** %cast.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load i8*, i8** %type.addr, align 8
  %call = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0)) #7
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %1 = load i8, i8* @prev, align 1
  %conv = sext i8 %1 to i32
  %cmp1 = icmp eq i32 %conv, 97
  br i1 %cmp1, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  call void @unsupp(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.140, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.141, i32 0, i32 0))
  br label %if.end.8

if.else:                                          ; preds = %if.then
  %2 = load i8, i8* @prev, align 1
  %conv4 = sext i8 %2 to i32
  %cmp5 = icmp eq i32 %conv4, 114
  br i1 %cmp5, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.else
  call void @unsupp(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.142, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.else
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then.3
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %entry
  %3 = load i8*, i8** %name.addr, align 8
  %4 = load i8*, i8** %cast.addr, align 8
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.146, i32 0, i32 0), i8* %3, i8* %4)
  %5 = load i8*, i8** %constvol.addr, align 8
  %call11 = call i64 @strlen(i8* %5) #7
  %cmp12 = icmp ugt i64 %call11, 0
  br i1 %cmp12, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.end.9
  %6 = load i8*, i8** %constvol.addr, align 8
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.133, i32 0, i32 0), i8* %6)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %if.end.9
  %7 = load i8*, i8** %type.addr, align 8
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i32 0, i32 0), i8* %7)
  ret void
}

; Function Attrs: nounwind uwtable
define void @doset(i8* %opt) #0 {
entry:
  %opt.addr = alloca i8*, align 8
  store i8* %opt, i8** %opt.addr, align 8
  %0 = load i8*, i8** %opt.addr, align 8
  %call = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.147, i32 0, i32 0)) #7
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* @MkProgramFlag, align 4
  br label %if.end.81

if.else:                                          ; preds = %entry
  %1 = load i8*, i8** %opt.addr, align 8
  %call1 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.148, i32 0, i32 0)) #7
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %if.else
  store i32 0, i32* @MkProgramFlag, align 4
  br label %if.end.80

if.else.4:                                        ; preds = %if.else
  %2 = load i8*, i8** %opt.addr, align 8
  %call5 = call i32 @strcmp(i8* %2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.149, i32 0, i32 0)) #7
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %if.else.4
  store i32 1, i32* @Interactive, align 4
  br label %if.end.79

if.else.8:                                        ; preds = %if.else.4
  %3 = load i8*, i8** %opt.addr, align 8
  %call9 = call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.150, i32 0, i32 0)) #7
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %if.else.8
  store i32 0, i32* @Interactive, align 4
  store i32 0, i32* @OnATty, align 4
  br label %if.end.78

if.else.12:                                       ; preds = %if.else.8
  %4 = load i8*, i8** %opt.addr, align 8
  %call13 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.151, i32 0, i32 0)) #7
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %if.else.12
  store i32 0, i32* @CplusplusFlag, align 4
  store i32 1, i32* @RitchieFlag, align 4
  store i32 0, i32* @PreANSIFlag, align 4
  br label %if.end.77

if.else.16:                                       ; preds = %if.else.12
  %5 = load i8*, i8** %opt.addr, align 8
  %call17 = call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.152, i32 0, i32 0)) #7
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %if.else.16
  store i32 0, i32* @CplusplusFlag, align 4
  store i32 0, i32* @RitchieFlag, align 4
  store i32 1, i32* @PreANSIFlag, align 4
  br label %if.end.76

if.else.20:                                       ; preds = %if.else.16
  %6 = load i8*, i8** %opt.addr, align 8
  %call21 = call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.153, i32 0, i32 0)) #7
  %cmp22 = icmp eq i32 %call21, 0
  br i1 %cmp22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %if.else.20
  store i32 0, i32* @CplusplusFlag, align 4
  store i32 0, i32* @RitchieFlag, align 4
  store i32 0, i32* @PreANSIFlag, align 4
  br label %if.end.75

if.else.24:                                       ; preds = %if.else.20
  %7 = load i8*, i8** %opt.addr, align 8
  %call25 = call i32 @strcmp(i8* %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.154, i32 0, i32 0)) #7
  %cmp26 = icmp eq i32 %call25, 0
  br i1 %cmp26, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %if.else.24
  store i32 1, i32* @CplusplusFlag, align 4
  store i32 0, i32* @RitchieFlag, align 4
  store i32 0, i32* @PreANSIFlag, align 4
  br label %if.end.74

if.else.28:                                       ; preds = %if.else.24
  %8 = load i8*, i8** %opt.addr, align 8
  %call29 = call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @unknown_name, i32 0, i32 0)) #7
  %cmp30 = icmp ne i32 %call29, 0
  br i1 %cmp30, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.else.28
  %9 = load i8*, i8** %opt.addr, align 8
  %call31 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.155, i32 0, i32 0)) #7
  %cmp32 = icmp ne i32 %call31, 0
  br i1 %cmp32, label %if.then.33, label %if.end

if.then.33:                                       ; preds = %land.lhs.true
  %10 = load i8*, i8** %opt.addr, align 8
  %call34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.156, i32 0, i32 0), i8* %10)
  br label %if.end

if.end:                                           ; preds = %if.then.33, %land.lhs.true, %if.else.28
  %call35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.157, i32 0, i32 0))
  %call36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.158, i32 0, i32 0))
  %call37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.159, i32 0, i32 0))
  %call38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.160, i32 0, i32 0))
  %call39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.161, i32 0, i32 0))
  %call40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.162, i32 0, i32 0))
  %11 = load i32, i32* @MkProgramFlag, align 4
  %tobool = icmp ne i32 %11, 0
  %cond = select i1 %tobool, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.164, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.165, i32 0, i32 0)
  %call41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.163, i32 0, i32 0), i8* %cond)
  %12 = load i32, i32* @OnATty, align 4
  %tobool42 = icmp ne i32 %12, 0
  br i1 %tobool42, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end
  %13 = load i32, i32* @Interactive, align 4
  %tobool43 = icmp ne i32 %13, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end
  %14 = phi i1 [ true, %if.end ], [ %tobool43, %lor.rhs ]
  %cond44 = select i1 %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.164, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.165, i32 0, i32 0)
  %call45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.166, i32 0, i32 0), i8* %cond44)
  %15 = load i32, i32* @RitchieFlag, align 4
  %tobool46 = icmp ne i32 %15, 0
  br i1 %tobool46, label %if.then.47, label %if.else.49

if.then.47:                                       ; preds = %lor.end
  %call48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.167, i32 0, i32 0))
  br label %if.end.51

if.else.49:                                       ; preds = %lor.end
  %call50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.168, i32 0, i32 0))
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.49, %if.then.47
  %16 = load i32, i32* @PreANSIFlag, align 4
  %tobool52 = icmp ne i32 %16, 0
  br i1 %tobool52, label %if.then.53, label %if.else.55

if.then.53:                                       ; preds = %if.end.51
  %call54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.169, i32 0, i32 0))
  br label %if.end.57

if.else.55:                                       ; preds = %if.end.51
  %call56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.170, i32 0, i32 0))
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.55, %if.then.53
  %17 = load i32, i32* @RitchieFlag, align 4
  %tobool58 = icmp ne i32 %17, 0
  br i1 %tobool58, label %if.else.65, label %land.lhs.true.59

land.lhs.true.59:                                 ; preds = %if.end.57
  %18 = load i32, i32* @PreANSIFlag, align 4
  %tobool60 = icmp ne i32 %18, 0
  br i1 %tobool60, label %if.else.65, label %land.lhs.true.61

land.lhs.true.61:                                 ; preds = %land.lhs.true.59
  %19 = load i32, i32* @CplusplusFlag, align 4
  %tobool62 = icmp ne i32 %19, 0
  br i1 %tobool62, label %if.else.65, label %if.then.63

if.then.63:                                       ; preds = %land.lhs.true.61
  %call64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.171, i32 0, i32 0))
  br label %if.end.67

if.else.65:                                       ; preds = %land.lhs.true.61, %land.lhs.true.59, %if.end.57
  %call66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.172, i32 0, i32 0))
  br label %if.end.67

if.end.67:                                        ; preds = %if.else.65, %if.then.63
  %20 = load i32, i32* @CplusplusFlag, align 4
  %tobool68 = icmp ne i32 %20, 0
  br i1 %tobool68, label %if.then.69, label %if.else.71

if.then.69:                                       ; preds = %if.end.67
  %call70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.173, i32 0, i32 0))
  br label %if.end.73

if.else.71:                                       ; preds = %if.end.67
  %call72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.174, i32 0, i32 0))
  br label %if.end.73

if.end.73:                                        ; preds = %if.else.71, %if.then.69
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.then.27
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %if.then.23
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %if.then.19
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %if.then.15
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %if.then.11
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %if.then.7
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %if.then.3
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @doprompt() #0 {
entry:
  store i32 1, i32* @prompting, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @noprompt() #0 {
entry:
  store i32 0, i32* @prompting, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @ds(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %p = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i64 @strlen(i8* %0) #7
  %add = add i64 %call, 1
  %conv = trunc i64 %add to i32
  %conv1 = zext i32 %conv to i64
  %call2 = call noalias i8* @malloc(i64 %conv1) #1
  store i8* %call2, i8** %p, align 8
  %1 = load i8*, i8** %p, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %p, align 8
  %3 = load i8*, i8** %s.addr, align 8
  %call3 = call i8* @strcpy(i8* %2, i8* %3) #1
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = load i8*, i8** @progname, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.70, i32 0, i32 0), i8* %5)
  call void @exit(i32 1) #8
  unreachable

if.end:                                           ; preds = %if.then
  %6 = load i8*, i8** %p, align 8
  ret i8* %6
}

; Function Attrs: nounwind uwtable
define i8* @cat(i8* %s1, ...) #0 {
entry:
  %s1.addr = alloca i8*, align 8
  %newstr = alloca i8*, align 8
  %len = alloca i32, align 4
  %str = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %s1, i8** %s1.addr, align 8
  store i32 1, i32* %len, align 4
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %s1.addr, align 8
  store i8* %0, i8** %str, align 8
  br label %for.cond

for.cond:                                         ; preds = %vaarg.end, %entry
  %1 = load i8*, i8** %str, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %str, align 8
  %call = call i64 @strlen(i8* %2) #7
  %3 = load i32, i32* %len, align 4
  %conv = zext i32 %3 to i64
  %add = add i64 %conv, %call
  %conv2 = trunc i64 %add to i32
  store i32 %conv2, i32* %len, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay3, i32 0, i32 0
  %gp_offset = load i32, i32* %gp_offset_p
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %for.inc
  %4 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay3, i32 0, i32 3
  %reg_save_area = load i8*, i8** %4
  %5 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset
  %6 = bitcast i8* %5 to i8**
  %7 = add i32 %gp_offset, 8
  store i32 %7, i32* %gp_offset_p
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %for.inc
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay3, i32 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p
  %8 = bitcast i8* %overflow_arg_area to i8**
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi i8** [ %6, %vaarg.in_reg ], [ %8, %vaarg.in_mem ]
  %9 = load i8*, i8** %vaarg.addr
  store i8* %9, i8** %str, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay45 = bitcast %struct.__va_list_tag* %arraydecay4 to i8*
  call void @llvm.va_end(i8* %arraydecay45)
  %10 = load i32, i32* %len, align 4
  %conv6 = zext i32 %10 to i64
  %call7 = call noalias i8* @malloc(i64 %conv6) #1
  store i8* %call7, i8** %newstr, align 8
  %11 = load i8*, i8** %newstr, align 8
  %cmp = icmp eq i8* %11, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %13 = load i8*, i8** @progname, align 8
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.69, i32 0, i32 0), i8* %13)
  call void @exit(i32 1) #8
  unreachable

if.end:                                           ; preds = %for.end
  %14 = load i8*, i8** %newstr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %14, i64 0
  store i8 0, i8* %arrayidx, align 1
  %arraydecay10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1011 = bitcast %struct.__va_list_tag* %arraydecay10 to i8*
  call void @llvm.va_start(i8* %arraydecay1011)
  %15 = load i8*, i8** %s1.addr, align 8
  store i8* %15, i8** %str, align 8
  br label %for.cond.12

for.cond.12:                                      ; preds = %vaarg.end.27, %if.end
  %16 = load i8*, i8** %str, align 8
  %tobool13 = icmp ne i8* %16, null
  br i1 %tobool13, label %for.body.14, label %for.end.29

for.body.14:                                      ; preds = %for.cond.12
  %17 = load i8*, i8** %newstr, align 8
  %18 = load i8*, i8** %str, align 8
  %call15 = call i8* @strcat(i8* %17, i8* %18) #1
  %19 = load i8*, i8** %str, align 8
  call void @free(i8* %19) #1
  br label %for.inc.16

for.inc.16:                                       ; preds = %for.body.14
  %arraydecay17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p18 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay17, i32 0, i32 0
  %gp_offset19 = load i32, i32* %gp_offset_p18
  %fits_in_gp20 = icmp ule i32 %gp_offset19, 40
  br i1 %fits_in_gp20, label %vaarg.in_reg.21, label %vaarg.in_mem.23

vaarg.in_reg.21:                                  ; preds = %for.inc.16
  %20 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay17, i32 0, i32 3
  %reg_save_area22 = load i8*, i8** %20
  %21 = getelementptr i8, i8* %reg_save_area22, i32 %gp_offset19
  %22 = bitcast i8* %21 to i8**
  %23 = add i32 %gp_offset19, 8
  store i32 %23, i32* %gp_offset_p18
  br label %vaarg.end.27

vaarg.in_mem.23:                                  ; preds = %for.inc.16
  %overflow_arg_area_p24 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay17, i32 0, i32 2
  %overflow_arg_area25 = load i8*, i8** %overflow_arg_area_p24
  %24 = bitcast i8* %overflow_arg_area25 to i8**
  %overflow_arg_area.next26 = getelementptr i8, i8* %overflow_arg_area25, i32 8
  store i8* %overflow_arg_area.next26, i8** %overflow_arg_area_p24
  br label %vaarg.end.27

vaarg.end.27:                                     ; preds = %vaarg.in_mem.23, %vaarg.in_reg.21
  %vaarg.addr28 = phi i8** [ %22, %vaarg.in_reg.21 ], [ %24, %vaarg.in_mem.23 ]
  %25 = load i8*, i8** %vaarg.addr28
  store i8* %25, i8** %str, align 8
  br label %for.cond.12

for.end.29:                                       ; preds = %for.cond.12
  %arraydecay30 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay3031 = bitcast %struct.__va_list_tag* %arraydecay30 to i8*
  call void @llvm.va_end(i8* %arraydecay3031)
  %26 = load i8*, i8** %newstr, align 8
  ret i8* %26
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind uwtable
define void @unsupp(i8* %s, i8* %hint) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %hint.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  store i8* %hint, i8** %hint.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  call void @notsupported(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i32 0, i32 0), i8* %0, i8* null)
  %1 = load i8*, i8** %hint.addr, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %3 = load i8*, i8** %hint.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.64, i32 0, i32 0), i8* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define void @mbcheck() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %restrict = alloca i32, align 4
  %t1 = alloca i8*, align 8
  %t2 = alloca i8*, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.54, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 9
  br i1 %cmp, label %for.body, label %for.end.56

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* @modbits, align 4
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [9 x %struct.anon.0], [9 x %struct.anon.0]* @crosstypes, i32 0, i64 %idxprom
  %bit = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx, i32 0, i32 1
  %3 = load i32, i32* %bit, align 4
  %and = and i32 %1, %3
  %cmp1 = icmp ne i32 %and, 0
  br i1 %cmp1, label %if.then, label %if.end.53

if.then:                                          ; preds = %for.body
  store i32 0, i32* %j, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %if.then
  %4 = load i32, i32* %j, align 4
  %5 = load i32, i32* %i, align 4
  %cmp3 = icmp slt i32 %4, %5
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %6 = load i32, i32* @modbits, align 4
  %7 = load i32, i32* %j, align 4
  %idxprom5 = sext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds [9 x %struct.anon.0], [9 x %struct.anon.0]* @crosstypes, i32 0, i64 %idxprom5
  %bit7 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx6, i32 0, i32 1
  %8 = load i32, i32* %bit7, align 4
  %and8 = and i32 %6, %8
  %tobool = icmp ne i32 %and8, 0
  br i1 %tobool, label %if.end, label %if.then.9

if.then.9:                                        ; preds = %for.body.4
  br label %for.inc

if.end:                                           ; preds = %for.body.4
  %9 = load i32, i32* %j, align 4
  %idxprom10 = sext i32 %9 to i64
  %10 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %10 to i64
  %arrayidx12 = getelementptr inbounds [9 x [9 x i8]], [9 x [9 x i8]]* @crosscheck, i32 0, i64 %idxprom11
  %arrayidx13 = getelementptr inbounds [9 x i8], [9 x i8]* %arrayidx12, i32 0, i64 %idxprom10
  %11 = load i8, i8* %arrayidx13, align 1
  %conv = sext i8 %11 to i32
  store i32 %conv, i32* %restrict, align 4
  %12 = load i32, i32* %restrict, align 4
  %cmp14 = icmp eq i32 %12, 0
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end
  br label %for.inc

if.end.17:                                        ; preds = %if.end
  %13 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %13 to i64
  %arrayidx19 = getelementptr inbounds [9 x %struct.anon.0], [9 x %struct.anon.0]* @crosstypes, i32 0, i64 %idxprom18
  %name = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx19, i32 0, i32 0
  %14 = load i8*, i8** %name, align 8
  store i8* %14, i8** %t1, align 8
  %15 = load i32, i32* %j, align 4
  %idxprom20 = sext i32 %15 to i64
  %arrayidx21 = getelementptr inbounds [9 x %struct.anon.0], [9 x %struct.anon.0]* @crosstypes, i32 0, i64 %idxprom20
  %name22 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx21, i32 0, i32 0
  %16 = load i8*, i8** %name22, align 8
  store i8* %16, i8** %t2, align 8
  %17 = load i32, i32* %restrict, align 4
  %cmp23 = icmp eq i32 %17, 1
  br i1 %cmp23, label %if.then.25, label %if.else

if.then.25:                                       ; preds = %if.end.17
  %18 = load i8*, i8** %t1, align 8
  %19 = load i8*, i8** %t2, align 8
  call void @notsupported(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i32 0, i32 0), i8* %18, i8* %19)
  br label %if.end.52

if.else:                                          ; preds = %if.end.17
  %20 = load i32, i32* %restrict, align 4
  %cmp26 = icmp eq i32 %20, 2
  br i1 %cmp26, label %if.then.28, label %if.else.32

if.then.28:                                       ; preds = %if.else
  %21 = load i32, i32* @RitchieFlag, align 4
  %tobool29 = icmp ne i32 %21, 0
  br i1 %tobool29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.then.28
  %22 = load i8*, i8** %t1, align 8
  %23 = load i8*, i8** %t2, align 8
  call void @notsupported(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i32 0, i32 0), i8* %22, i8* %23)
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %if.then.28
  br label %if.end.51

if.else.32:                                       ; preds = %if.else
  %24 = load i32, i32* %restrict, align 4
  %cmp33 = icmp eq i32 %24, 3
  br i1 %cmp33, label %if.then.35, label %if.else.40

if.then.35:                                       ; preds = %if.else.32
  %25 = load i32, i32* @PreANSIFlag, align 4
  %tobool36 = icmp ne i32 %25, 0
  br i1 %tobool36, label %if.then.38, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.35
  %26 = load i32, i32* @RitchieFlag, align 4
  %tobool37 = icmp ne i32 %26, 0
  br i1 %tobool37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %lor.lhs.false, %if.then.35
  %27 = load i8*, i8** %t1, align 8
  %28 = load i8*, i8** %t2, align 8
  call void @notsupported(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.46, i32 0, i32 0), i8* %27, i8* %28)
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.38, %lor.lhs.false
  br label %if.end.50

if.else.40:                                       ; preds = %if.else.32
  %29 = load i32, i32* %restrict, align 4
  %cmp41 = icmp eq i32 %29, 4
  br i1 %cmp41, label %if.then.43, label %if.else.48

if.then.43:                                       ; preds = %if.else.40
  %30 = load i32, i32* @RitchieFlag, align 4
  %tobool44 = icmp ne i32 %30, 0
  br i1 %tobool44, label %if.end.47, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then.43
  %31 = load i32, i32* @PreANSIFlag, align 4
  %tobool45 = icmp ne i32 %31, 0
  br i1 %tobool45, label %if.end.47, label %if.then.46

if.then.46:                                       ; preds = %land.lhs.true
  %32 = load i8*, i8** %t1, align 8
  %33 = load i8*, i8** %t2, align 8
  call void @notsupported(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.62, i32 0, i32 0), i8* %32, i8* %33)
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.46, %land.lhs.true, %if.then.43
  br label %if.end.49

if.else.48:                                       ; preds = %if.else.40
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %35 = load i8*, i8** @progname, align 8
  %36 = load i32, i32* %i, align 4
  %37 = load i32, i32* %j, align 4
  %38 = load i32, i32* %restrict, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.63, i32 0, i32 0), i8* %35, i32 %36, i32 %37, i32 %38)
  call void @exit(i32 1) #8
  unreachable

if.end.49:                                        ; preds = %if.end.47
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.end.39
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.end.31
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.then.25
  br label %for.inc

for.inc:                                          ; preds = %if.end.52, %if.then.16, %if.then.9
  %39 = load i32, i32* %j, align 4
  %inc = add nsw i32 %39, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %if.end.53

if.end.53:                                        ; preds = %for.end, %for.body
  br label %for.inc.54

for.inc.54:                                       ; preds = %if.end.53
  %40 = load i32, i32* %i, align 4
  %inc55 = add nsw i32 %40, 1
  store i32 %inc55, i32* %i, align 4
  br label %for.cond

for.end.56:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @notsupported(i8* %compiler, i8* %type1, i8* %type2) #0 {
entry:
  %compiler.addr = alloca i8*, align 8
  %type1.addr = alloca i8*, align 8
  %type2.addr = alloca i8*, align 8
  store i8* %compiler, i8** %compiler.addr, align 8
  store i8* %type1, i8** %type1.addr, align 8
  store i8* %type2, i8** %type2.addr, align 8
  %0 = load i8*, i8** %type2.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load i8*, i8** %compiler.addr, align 8
  %3 = load i32, i32* @CplusplusFlag, align 4
  %tobool1 = icmp ne i32 %3, 0
  %cond = select i1 %tobool1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i32 0, i32 0)
  %4 = load i8*, i8** %type1.addr, align 8
  %5 = load i8*, i8** %type2.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.65, i32 0, i32 0), i8* %2, i8* %cond, i8* %4, i8* %5)
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %7 = load i8*, i8** %compiler.addr, align 8
  %8 = load i32, i32* @CplusplusFlag, align 4
  %tobool2 = icmp ne i32 %8, 0
  %cond3 = select i1 %tobool2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i32 0, i32 0)
  %9 = load i8*, i8** %type1.addr, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.67, i32 0, i32 0), i8* %7, i8* %cond3, i8* %9)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @yylex() #0 {
entry:
  %retval = alloca i32, align 4
  %nstr = alloca i32, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @yyin, align 8
  %cmp = icmp eq %struct._IO_FILE* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** @yyin, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %2, %struct._IO_FILE** @yyin, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.end
  %call = call i32 @yylook()
  store i32 %call, i32* %nstr, align 4
  %cmp1 = icmp sge i32 %call, 0
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %yyfussy

yyfussy:                                          ; preds = %while.body
  %3 = load i32, i32* %nstr, align 4
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.5
    i32 2, label %sw.bb.6
    i32 3, label %sw.bb.7
    i32 4, label %sw.bb.8
    i32 5, label %sw.bb.9
    i32 6, label %sw.bb.10
    i32 7, label %sw.bb.11
    i32 8, label %sw.bb.12
    i32 9, label %sw.bb.13
    i32 10, label %sw.bb.14
    i32 11, label %sw.bb.15
    i32 12, label %sw.bb.16
    i32 13, label %sw.bb.17
    i32 14, label %sw.bb.18
    i32 15, label %sw.bb.19
    i32 16, label %sw.bb.20
    i32 17, label %sw.bb.21
    i32 18, label %sw.bb.22
    i32 19, label %sw.bb.23
    i32 20, label %sw.bb.24
    i32 21, label %sw.bb.25
    i32 22, label %sw.bb.26
    i32 23, label %sw.bb.27
    i32 24, label %sw.bb.28
    i32 25, label %sw.bb.29
    i32 26, label %sw.bb.30
    i32 27, label %sw.bb.32
    i32 28, label %sw.bb.34
    i32 29, label %sw.bb.36
    i32 30, label %sw.bb.38
    i32 31, label %sw.bb.40
    i32 32, label %sw.bb.42
    i32 33, label %sw.bb.44
    i32 34, label %sw.bb.46
    i32 35, label %sw.bb.48
    i32 36, label %sw.bb.50
    i32 37, label %sw.bb.52
    i32 38, label %sw.bb.54
    i32 39, label %sw.bb.56
    i32 40, label %sw.bb.58
    i32 41, label %sw.bb.60
    i32 42, label %sw.bb.62
    i32 43, label %sw.bb.64
    i32 44, label %sw.bb.66
    i32 45, label %sw.bb.68
    i32 46, label %sw.bb.70
    i32 47, label %sw.bb.72
    i32 48, label %sw.bb.74
    i32 49, label %sw.bb.76
    i32 50, label %sw.bb.78
    i32 51, label %sw.bb.80
    i32 52, label %sw.bb.82
    i32 53, label %sw.bb.84
    i32 54, label %sw.bb.85
    i32 55, label %sw.bb.86
    i32 56, label %sw.bb.87
    i32 -1, label %sw.bb.92
  ]

sw.bb:                                            ; preds = %yyfussy
  %call2 = call i32 @yywrap_nasko()
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %sw.bb
  store i32 0, i32* %retval
  br label %return

if.end.4:                                         ; preds = %sw.bb
  br label %sw.epilog

sw.bb.5:                                          ; preds = %yyfussy
  store i32 257, i32* %retval
  br label %return

sw.bb.6:                                          ; preds = %yyfussy
  store i32 258, i32* %retval
  br label %return

sw.bb.7:                                          ; preds = %yyfussy
  store i32 259, i32* %retval
  br label %return

sw.bb.8:                                          ; preds = %yyfussy
  store i32 261, i32* %retval
  br label %return

sw.bb.9:                                          ; preds = %yyfussy
  store i32 0, i32* %retval
  br label %return

sw.bb.10:                                         ; preds = %yyfussy
  store i32 263, i32* %retval
  br label %return

sw.bb.11:                                         ; preds = %yyfussy
  store i32 264, i32* %retval
  br label %return

sw.bb.12:                                         ; preds = %yyfussy
  store i32 264, i32* %retval
  br label %return

sw.bb.13:                                         ; preds = %yyfussy
  store i32 265, i32* %retval
  br label %return

sw.bb.14:                                         ; preds = %yyfussy
  store i32 266, i32* %retval
  br label %return

sw.bb.15:                                         ; preds = %yyfussy
  store i32 268, i32* %retval
  br label %return

sw.bb.16:                                         ; preds = %yyfussy
  store i32 267, i32* %retval
  br label %return

sw.bb.17:                                         ; preds = %yyfussy
  store i32 269, i32* %retval
  br label %return

sw.bb.18:                                         ; preds = %yyfussy
  store i32 269, i32* %retval
  br label %return

sw.bb.19:                                         ; preds = %yyfussy
  store i32 0, i32* %retval
  br label %return

sw.bb.20:                                         ; preds = %yyfussy
  store i32 270, i32* %retval
  br label %return

sw.bb.21:                                         ; preds = %yyfussy
  store i32 270, i32* %retval
  br label %return

sw.bb.22:                                         ; preds = %yyfussy
  store i32 271, i32* %retval
  br label %return

sw.bb.23:                                         ; preds = %yyfussy
  store i32 271, i32* %retval
  br label %return

sw.bb.24:                                         ; preds = %yyfussy
  store i32 272, i32* %retval
  br label %return

sw.bb.25:                                         ; preds = %yyfussy
  store i32 273, i32* %retval
  br label %return

sw.bb.26:                                         ; preds = %yyfussy
  store i32 257, i32* %retval
  br label %return

sw.bb.27:                                         ; preds = %yyfussy
  store i32 262, i32* %retval
  br label %return

sw.bb.28:                                         ; preds = %yyfussy
  store i32 265, i32* %retval
  br label %return

sw.bb.29:                                         ; preds = %yyfussy
  store i32 260, i32* %retval
  br label %return

sw.bb.30:                                         ; preds = %yyfussy
  %call31 = call i8* @ds(i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @yytext, i32 0, i32 0))
  store i8* %call31, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yylval, i32 0, i32 0, i32 0), align 8
  store i32 290, i32* %retval
  br label %return

sw.bb.32:                                         ; preds = %yyfussy
  %call33 = call i8* @ds(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0))
  store i8* %call33, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yylval, i32 0, i32 0, i32 0), align 8
  store i32 274, i32* %retval
  br label %return

sw.bb.34:                                         ; preds = %yyfussy
  %call35 = call i8* @ds(i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @yytext, i32 0, i32 0))
  store i8* %call35, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yylval, i32 0, i32 0, i32 0), align 8
  store i32 274, i32* %retval
  br label %return

sw.bb.36:                                         ; preds = %yyfussy
  %call37 = call i8* @ds(i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @yytext, i32 0, i32 0))
  store i8* %call37, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yylval, i32 0, i32 0, i32 0), align 8
  store i32 275, i32* %retval
  br label %return

sw.bb.38:                                         ; preds = %yyfussy
  %call39 = call i8* @ds(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i32 0, i32 0))
  store i8* %call39, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yylval, i32 0, i32 0, i32 0), align 8
  store i32 276, i32* %retval
  br label %return

sw.bb.40:                                         ; preds = %yyfussy
  %call41 = call i8* @ds(i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @yytext, i32 0, i32 0))
  store i8* %call41, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yylval, i32 0, i32 0, i32 0), align 8
  store i32 276, i32* %retval
  br label %return

sw.bb.42:                                         ; preds = %yyfussy
  %call43 = call i8* @ds(i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @yytext, i32 0, i32 0))
  store i8* %call43, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yylval, i32 0, i32 0, i32 0), align 8
  store i32 277, i32* %retval
  br label %return

sw.bb.44:                                         ; preds = %yyfussy
  %call45 = call i8* @ds(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i32 0, i32 0))
  store i8* %call45, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yylval, i32 0, i32 0, i32 0), align 8
  store i32 278, i32* %retval
  br label %return

sw.bb.46:                                         ; preds = %yyfussy
  %call47 = call i8* @ds(i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @yytext, i32 0, i32 0))
  store i8* %call47, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yylval, i32 0, i32 0, i32 0), align 8
  store i32 278, i32* %retval
  br label %return

sw.bb.48:                                         ; preds = %yyfussy
  %call49 = call i8* @ds(i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @yytext, i32 0, i32 0))
  store i8* %call49, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yylval, i32 0, i32 0, i32 0), align 8
  store i32 291, i32* %retval
  br label %return

sw.bb.50:                                         ; preds = %yyfussy
  %call51 = call i8* @ds(i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @yytext, i32 0, i32 0))
  store i8* %call51, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yylval, i32 0, i32 0, i32 0), align 8
  store i32 279, i32* %retval
  br label %return

sw.bb.52:                                         ; preds = %yyfussy
  %call53 = call i8* @ds(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52, i32 0, i32 0))
  store i8* %call53, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yylval, i32 0, i32 0, i32 0), align 8
  store i32 280, i32* %retval
  br label %return

sw.bb.54:                                         ; preds = %yyfussy
  %call55 = call i8* @ds(i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @yytext, i32 0, i32 0))
  store i8* %call55, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yylval, i32 0, i32 0, i32 0), align 8
  store i32 280, i32* %retval
  br label %return

sw.bb.56:                                         ; preds = %yyfussy
  %call57 = call i8* @ds(i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @yytext, i32 0, i32 0))
  store i8* %call57, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yylval, i32 0, i32 0, i32 0), align 8
  store i32 281, i32* %retval
  br label %return

sw.bb.58:                                         ; preds = %yyfussy
  %call59 = call i8* @ds(i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @yytext, i32 0, i32 0))
  store i8* %call59, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yylval, i32 0, i32 0, i32 0), align 8
  store i32 276, i32* %retval
  br label %return

sw.bb.60:                                         ; preds = %yyfussy
  %call61 = call i8* @ds(i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @yytext, i32 0, i32 0))
  store i8* %call61, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yylval, i32 0, i32 0, i32 0), align 8
  store i32 292, i32* %retval
  br label %return

sw.bb.62:                                         ; preds = %yyfussy
  %call63 = call i8* @ds(i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @yytext, i32 0, i32 0))
  store i8* %call63, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yylval, i32 0, i32 0, i32 0), align 8
  store i32 284, i32* %retval
  br label %return

sw.bb.64:                                         ; preds = %yyfussy
  %call65 = call i8* @ds(i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @yytext, i32 0, i32 0))
  store i8* %call65, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yylval, i32 0, i32 0, i32 0), align 8
  store i32 285, i32* %retval
  br label %return

sw.bb.66:                                         ; preds = %yyfussy
  %call67 = call i8* @ds(i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @yytext, i32 0, i32 0))
  store i8* %call67, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yylval, i32 0, i32 0, i32 0), align 8
  store i32 293, i32* %retval
  br label %return

sw.bb.68:                                         ; preds = %yyfussy
  %call69 = call i8* @ds(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0))
  store i8* %call69, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yylval, i32 0, i32 0, i32 0), align 8
  store i32 286, i32* %retval
  br label %return

sw.bb.70:                                         ; preds = %yyfussy
  %call71 = call i8* @ds(i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @yytext, i32 0, i32 0))
  store i8* %call71, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yylval, i32 0, i32 0, i32 0), align 8
  store i32 286, i32* %retval
  br label %return

sw.bb.72:                                         ; preds = %yyfussy
  %call73 = call i8* @ds(i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @yytext, i32 0, i32 0))
  store i8* %call73, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yylval, i32 0, i32 0, i32 0), align 8
  store i32 287, i32* %retval
  br label %return

sw.bb.74:                                         ; preds = %yyfussy
  %call75 = call i8* @ds(i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @yytext, i32 0, i32 0))
  store i8* %call75, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yylval, i32 0, i32 0, i32 0), align 8
  store i32 288, i32* %retval
  br label %return

sw.bb.76:                                         ; preds = %yyfussy
  %call77 = call i8* @ds(i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @yytext, i32 0, i32 0))
  store i8* %call77, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yylval, i32 0, i32 0, i32 0), align 8
  store i32 289, i32* %retval
  br label %return

sw.bb.78:                                         ; preds = %yyfussy
  %call79 = call i8* @ds(i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @yytext, i32 0, i32 0))
  store i8* %call79, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yylval, i32 0, i32 0, i32 0), align 8
  store i32 276, i32* %retval
  br label %return

sw.bb.80:                                         ; preds = %yyfussy
  %call81 = call i8* @ds(i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @yytext, i32 0, i32 0))
  store i8* %call81, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yylval, i32 0, i32 0, i32 0), align 8
  store i32 282, i32* %retval
  br label %return

sw.bb.82:                                         ; preds = %yyfussy
  %call83 = call i8* @ds(i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @yytext, i32 0, i32 0))
  store i8* %call83, i8** getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yylval, i32 0, i32 0, i32 0), align 8
  store i32 283, i32* %retval
  br label %return

sw.bb.84:                                         ; preds = %yyfussy
  br label %sw.epilog

sw.bb.85:                                         ; preds = %yyfussy
  br label %sw.epilog

sw.bb.86:                                         ; preds = %yyfussy
  %4 = load i8, i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @yytext, i32 0, i32 0), align 1
  %conv = sext i8 %4 to i32
  store i32 %conv, i32* %retval
  br label %return

sw.bb.87:                                         ; preds = %yyfussy
  %5 = load i8, i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @yytext, i32 0, i32 0), align 1
  %conv88 = sext i8 %5 to i32
  %call89 = call i8* @visible(i32 %conv88)
  %call90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.53, i32 0, i32 0), i8* %call89)
  %6 = load i8, i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @yytext, i32 0, i32 0), align 1
  %conv91 = sext i8 %6 to i32
  store i32 %conv91, i32* %retval
  br label %return

sw.bb.92:                                         ; preds = %yyfussy
  br label %sw.epilog

sw.default:                                       ; preds = %yyfussy
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @yyout, align 8
  %8 = load i32, i32* %nstr, align 4
  %call93 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.54, i32 0, i32 0), i32 %8)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.92, %sw.bb.85, %sw.bb.84, %if.end.4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %sw.bb.87, %sw.bb.86, %sw.bb.82, %sw.bb.80, %sw.bb.78, %sw.bb.76, %sw.bb.74, %sw.bb.72, %sw.bb.70, %sw.bb.68, %sw.bb.66, %sw.bb.64, %sw.bb.62, %sw.bb.60, %sw.bb.58, %sw.bb.56, %sw.bb.54, %sw.bb.52, %sw.bb.50, %sw.bb.48, %sw.bb.46, %sw.bb.44, %sw.bb.42, %sw.bb.40, %sw.bb.38, %sw.bb.36, %sw.bb.34, %sw.bb.32, %sw.bb.30, %sw.bb.29, %sw.bb.28, %sw.bb.27, %sw.bb.26, %sw.bb.25, %sw.bb.24, %sw.bb.23, %sw.bb.22, %sw.bb.21, %sw.bb.20, %sw.bb.19, %sw.bb.18, %sw.bb.17, %sw.bb.16, %sw.bb.15, %sw.bb.14, %sw.bb.13, %sw.bb.12, %sw.bb.11, %sw.bb.10, %sw.bb.9, %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb.5, %if.then.3
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i32 @yylook() #0 {
entry:
  %retval = alloca i32, align 4
  %yystate = alloca %struct.yysvf*, align 8
  %lsp = alloca %struct.yysvf**, align 8
  %yyt = alloca %struct.yywork*, align 8
  %yyz = alloca %struct.yysvf*, align 8
  %yych = alloca i32, align 4
  %yyfirst = alloca i32, align 4
  %yyr = alloca %struct.yywork*, align 8
  %yylastch = alloca i8*, align 8
  store i32 1, i32* %yyfirst, align 4
  %0 = load i32, i32* @yymorfg, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @yytext, i32 0, i32 0), i8** %yylastch, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* @yymorfg, align 4
  %1 = load i32, i32* @yyleng, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8, i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @yytext, i32 0, i32 0), i64 %idx.ext
  store i8* %add.ptr, i8** %yylastch, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.cond

for.cond:                                         ; preds = %if.end.265, %if.end
  store %struct.yysvf** getelementptr inbounds ([8192 x %struct.yysvf*], [8192 x %struct.yysvf*]* @yylstate, i32 0, i32 0), %struct.yysvf*** %lsp, align 8
  %2 = load %struct.yysvf*, %struct.yysvf** @yybgin, align 8
  store %struct.yysvf* %2, %struct.yysvf** %yystate, align 8
  store %struct.yysvf* %2, %struct.yysvf** @yyestate, align 8
  %3 = load i32, i32* @yyprevious, align 4
  %cmp = icmp eq i32 %3, 10
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %for.cond
  %4 = load %struct.yysvf*, %struct.yysvf** %yystate, align 8
  %incdec.ptr = getelementptr inbounds %struct.yysvf, %struct.yysvf* %4, i32 1
  store %struct.yysvf* %incdec.ptr, %struct.yysvf** %yystate, align 8
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %for.cond
  br label %for.cond.3

for.cond.3:                                       ; preds = %contin, %if.end.2
  %5 = load %struct.yysvf*, %struct.yysvf** %yystate, align 8
  %yystoff = getelementptr inbounds %struct.yysvf, %struct.yysvf* %5, i32 0, i32 0
  %6 = load %struct.yywork*, %struct.yywork** %yystoff, align 8
  store %struct.yywork* %6, %struct.yywork** %yyt, align 8
  %7 = load %struct.yywork*, %struct.yywork** %yyt, align 8
  %cmp4 = icmp eq %struct.yywork* %7, getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0)
  br i1 %cmp4, label %land.lhs.true, label %if.end.14

land.lhs.true:                                    ; preds = %for.cond.3
  %8 = load i32, i32* %yyfirst, align 4
  %tobool5 = icmp ne i32 %8, 0
  br i1 %tobool5, label %if.end.14, label %if.then.6

if.then.6:                                        ; preds = %land.lhs.true
  %9 = load %struct.yysvf*, %struct.yysvf** %yystate, align 8
  %yyother = getelementptr inbounds %struct.yysvf, %struct.yysvf* %9, i32 0, i32 1
  %10 = load %struct.yysvf*, %struct.yysvf** %yyother, align 8
  store %struct.yysvf* %10, %struct.yysvf** %yyz, align 8
  %11 = load %struct.yysvf*, %struct.yysvf** %yyz, align 8
  %cmp7 = icmp eq %struct.yysvf* %11, null
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.then.6
  br label %for.end

if.end.9:                                         ; preds = %if.then.6
  %12 = load %struct.yysvf*, %struct.yysvf** %yyz, align 8
  %yystoff10 = getelementptr inbounds %struct.yysvf, %struct.yysvf* %12, i32 0, i32 0
  %13 = load %struct.yywork*, %struct.yywork** %yystoff10, align 8
  %cmp11 = icmp eq %struct.yywork* %13, getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0)
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.9
  br label %for.end

if.end.13:                                        ; preds = %if.end.9
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %land.lhs.true, %for.cond.3
  %14 = load i8*, i8** @yysptr, align 8
  %cmp15 = icmp ugt i8* %14, getelementptr inbounds ([8192 x i8], [8192 x i8]* @yysbuf, i32 0, i32 0)
  br i1 %cmp15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.14
  %15 = load i8*, i8** @yysptr, align 8
  %incdec.ptr16 = getelementptr inbounds i8, i8* %15, i32 -1
  store i8* %incdec.ptr16, i8** @yysptr, align 8
  %16 = load i8, i8* %incdec.ptr16, align 1
  %conv = sext i8 %16 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.end.14
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @yyin, align 8
  %call = call i32 @_IO_getc(%struct._IO_FILE* %17)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %call, %cond.false ]
  store i32 %cond, i32* @yytchar, align 4
  %cmp17 = icmp eq i32 %cond, 10
  br i1 %cmp17, label %cond.true.19, label %cond.false.20

cond.true.19:                                     ; preds = %cond.end
  %18 = load i32, i32* @yylineno, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* @yylineno, align 4
  %19 = load i32, i32* @yytchar, align 4
  br label %cond.end.21

cond.false.20:                                    ; preds = %cond.end
  %20 = load i32, i32* @yytchar, align 4
  br label %cond.end.21

cond.end.21:                                      ; preds = %cond.false.20, %cond.true.19
  %cond22 = phi i32 [ %19, %cond.true.19 ], [ %20, %cond.false.20 ]
  %cmp23 = icmp eq i32 %cond22, -1
  br i1 %cmp23, label %cond.true.25, label %cond.false.26

cond.true.25:                                     ; preds = %cond.end.21
  br label %cond.end.27

cond.false.26:                                    ; preds = %cond.end.21
  %21 = load i32, i32* @yytchar, align 4
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.false.26, %cond.true.25
  %cond28 = phi i32 [ 0, %cond.true.25 ], [ %21, %cond.false.26 ]
  store i32 %cond28, i32* %yych, align 4
  %conv29 = trunc i32 %cond28 to i8
  %22 = load i8*, i8** %yylastch, align 8
  %incdec.ptr30 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr30, i8** %yylastch, align 8
  store i8 %conv29, i8* %22, align 1
  %23 = load i8*, i8** %yylastch, align 8
  %cmp31 = icmp ugt i8* %23, getelementptr inbounds ([8192 x i8], [8192 x i8]* @yytext, i64 1, i64 0)
  br i1 %cmp31, label %if.then.33, label %if.end.35

if.then.33:                                       ; preds = %cond.end.27
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @yyout, align 8
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.55, i32 0, i32 0), i32 8192)
  call void @exit(i32 1) #8
  unreachable

if.end.35:                                        ; preds = %cond.end.27
  store i32 0, i32* %yyfirst, align 4
  br label %tryagain

tryagain:                                         ; preds = %if.then.170, %if.end.35
  %25 = load %struct.yywork*, %struct.yywork** %yyt, align 8
  store %struct.yywork* %25, %struct.yywork** %yyr, align 8
  %26 = load %struct.yywork*, %struct.yywork** %yyt, align 8
  %27 = ptrtoint %struct.yywork* %26 to i32
  %cmp36 = icmp sgt i32 %27, ptrtoint ([377 x %struct.yywork]* @yycrank to i32)
  br i1 %cmp36, label %if.then.38, label %if.else.76

if.then.38:                                       ; preds = %tryagain
  %28 = load %struct.yywork*, %struct.yywork** %yyr, align 8
  %29 = load i32, i32* %yych, align 4
  %idx.ext39 = sext i32 %29 to i64
  %add.ptr40 = getelementptr inbounds %struct.yywork, %struct.yywork* %28, i64 %idx.ext39
  store %struct.yywork* %add.ptr40, %struct.yywork** %yyt, align 8
  %30 = load %struct.yywork*, %struct.yywork** %yyt, align 8
  %31 = load %struct.yywork*, %struct.yywork** @yytop, align 8
  %cmp41 = icmp ule %struct.yywork* %30, %31
  br i1 %cmp41, label %land.lhs.true.43, label %if.end.75

land.lhs.true.43:                                 ; preds = %if.then.38
  %32 = load %struct.yywork*, %struct.yywork** %yyt, align 8
  %verify = getelementptr inbounds %struct.yywork, %struct.yywork* %32, i32 0, i32 0
  %33 = load i8, i8* %verify, align 1
  %conv44 = zext i8 %33 to i32
  %idx.ext45 = sext i32 %conv44 to i64
  %add.ptr46 = getelementptr inbounds %struct.yysvf, %struct.yysvf* getelementptr inbounds ([215 x %struct.yysvf], [215 x %struct.yysvf]* @yysvec, i32 0, i32 0), i64 %idx.ext45
  %34 = load %struct.yysvf*, %struct.yysvf** %yystate, align 8
  %cmp47 = icmp eq %struct.yysvf* %add.ptr46, %34
  br i1 %cmp47, label %if.then.49, label %if.end.75

if.then.49:                                       ; preds = %land.lhs.true.43
  %35 = load %struct.yywork*, %struct.yywork** %yyt, align 8
  %advance = getelementptr inbounds %struct.yywork, %struct.yywork* %35, i32 0, i32 1
  %36 = load i8, i8* %advance, align 1
  %conv50 = zext i8 %36 to i32
  %idx.ext51 = sext i32 %conv50 to i64
  %add.ptr52 = getelementptr inbounds %struct.yysvf, %struct.yysvf* getelementptr inbounds ([215 x %struct.yysvf], [215 x %struct.yysvf]* @yysvec, i32 0, i32 0), i64 %idx.ext51
  %cmp53 = icmp eq %struct.yysvf* %add.ptr52, getelementptr inbounds ([215 x %struct.yysvf], [215 x %struct.yysvf]* @yysvec, i32 0, i32 0)
  br i1 %cmp53, label %if.then.55, label %if.end.64

if.then.55:                                       ; preds = %if.then.49
  %37 = load i8*, i8** %yylastch, align 8
  %incdec.ptr56 = getelementptr inbounds i8, i8* %37, i32 -1
  store i8* %incdec.ptr56, i8** %yylastch, align 8
  %38 = load i8, i8* %incdec.ptr56, align 1
  %conv57 = sext i8 %38 to i32
  store i32 %conv57, i32* @yytchar, align 4
  %39 = load i32, i32* @yytchar, align 4
  %cmp58 = icmp eq i32 %39, 10
  br i1 %cmp58, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %if.then.55
  %40 = load i32, i32* @yylineno, align 4
  %dec = add nsw i32 %40, -1
  store i32 %dec, i32* @yylineno, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.60, %if.then.55
  %41 = load i32, i32* @yytchar, align 4
  %conv62 = trunc i32 %41 to i8
  %42 = load i8*, i8** @yysptr, align 8
  %incdec.ptr63 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr63, i8** @yysptr, align 8
  store i8 %conv62, i8* %42, align 1
  br label %for.end

if.end.64:                                        ; preds = %if.then.49
  %43 = load %struct.yywork*, %struct.yywork** %yyt, align 8
  %advance65 = getelementptr inbounds %struct.yywork, %struct.yywork* %43, i32 0, i32 1
  %44 = load i8, i8* %advance65, align 1
  %conv66 = zext i8 %44 to i32
  %idx.ext67 = sext i32 %conv66 to i64
  %add.ptr68 = getelementptr inbounds %struct.yysvf, %struct.yysvf* getelementptr inbounds ([215 x %struct.yysvf], [215 x %struct.yysvf]* @yysvec, i32 0, i32 0), i64 %idx.ext67
  store %struct.yysvf* %add.ptr68, %struct.yysvf** %yystate, align 8
  %45 = load %struct.yysvf**, %struct.yysvf*** %lsp, align 8
  %incdec.ptr69 = getelementptr inbounds %struct.yysvf*, %struct.yysvf** %45, i32 1
  store %struct.yysvf** %incdec.ptr69, %struct.yysvf*** %lsp, align 8
  store %struct.yysvf* %add.ptr68, %struct.yysvf** %45, align 8
  %46 = load %struct.yysvf**, %struct.yysvf*** %lsp, align 8
  %cmp70 = icmp ugt %struct.yysvf** %46, getelementptr inbounds ([8192 x %struct.yysvf*], [8192 x %struct.yysvf*]* @yylstate, i64 1, i64 0)
  br i1 %cmp70, label %if.then.72, label %if.end.74

if.then.72:                                       ; preds = %if.end.64
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @yyout, align 8
  %call73 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.55, i32 0, i32 0), i32 8192)
  call void @exit(i32 1) #8
  unreachable

if.end.74:                                        ; preds = %if.end.64
  br label %contin

if.end.75:                                        ; preds = %land.lhs.true.43, %if.then.38
  br label %if.end.163

if.else.76:                                       ; preds = %tryagain
  %48 = load %struct.yywork*, %struct.yywork** %yyt, align 8
  %49 = ptrtoint %struct.yywork* %48 to i32
  %cmp77 = icmp slt i32 %49, ptrtoint ([377 x %struct.yywork]* @yycrank to i32)
  br i1 %cmp77, label %if.then.79, label %if.end.162

if.then.79:                                       ; preds = %if.else.76
  %50 = load %struct.yywork*, %struct.yywork** %yyt, align 8
  %sub.ptr.rhs.cast = ptrtoint %struct.yywork* %50 to i64
  %sub.ptr.sub = sub i64 ptrtoint ([377 x %struct.yywork]* @yycrank to i64), %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 2
  %add.ptr80 = getelementptr inbounds %struct.yywork, %struct.yywork* getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0), i64 %sub.ptr.div
  store %struct.yywork* %add.ptr80, %struct.yywork** %yyr, align 8
  store %struct.yywork* %add.ptr80, %struct.yywork** %yyt, align 8
  %51 = load %struct.yywork*, %struct.yywork** %yyt, align 8
  %52 = load i32, i32* %yych, align 4
  %idx.ext81 = sext i32 %52 to i64
  %add.ptr82 = getelementptr inbounds %struct.yywork, %struct.yywork* %51, i64 %idx.ext81
  store %struct.yywork* %add.ptr82, %struct.yywork** %yyt, align 8
  %53 = load %struct.yywork*, %struct.yywork** %yyt, align 8
  %54 = load %struct.yywork*, %struct.yywork** @yytop, align 8
  %cmp83 = icmp ule %struct.yywork* %53, %54
  br i1 %cmp83, label %land.lhs.true.85, label %if.end.120

land.lhs.true.85:                                 ; preds = %if.then.79
  %55 = load %struct.yywork*, %struct.yywork** %yyt, align 8
  %verify86 = getelementptr inbounds %struct.yywork, %struct.yywork* %55, i32 0, i32 0
  %56 = load i8, i8* %verify86, align 1
  %conv87 = zext i8 %56 to i32
  %idx.ext88 = sext i32 %conv87 to i64
  %add.ptr89 = getelementptr inbounds %struct.yysvf, %struct.yysvf* getelementptr inbounds ([215 x %struct.yysvf], [215 x %struct.yysvf]* @yysvec, i32 0, i32 0), i64 %idx.ext88
  %57 = load %struct.yysvf*, %struct.yysvf** %yystate, align 8
  %cmp90 = icmp eq %struct.yysvf* %add.ptr89, %57
  br i1 %cmp90, label %if.then.92, label %if.end.120

if.then.92:                                       ; preds = %land.lhs.true.85
  %58 = load %struct.yywork*, %struct.yywork** %yyt, align 8
  %advance93 = getelementptr inbounds %struct.yywork, %struct.yywork* %58, i32 0, i32 1
  %59 = load i8, i8* %advance93, align 1
  %conv94 = zext i8 %59 to i32
  %idx.ext95 = sext i32 %conv94 to i64
  %add.ptr96 = getelementptr inbounds %struct.yysvf, %struct.yysvf* getelementptr inbounds ([215 x %struct.yysvf], [215 x %struct.yysvf]* @yysvec, i32 0, i32 0), i64 %idx.ext95
  %cmp97 = icmp eq %struct.yysvf* %add.ptr96, getelementptr inbounds ([215 x %struct.yysvf], [215 x %struct.yysvf]* @yysvec, i32 0, i32 0)
  br i1 %cmp97, label %if.then.99, label %if.end.109

if.then.99:                                       ; preds = %if.then.92
  %60 = load i8*, i8** %yylastch, align 8
  %incdec.ptr100 = getelementptr inbounds i8, i8* %60, i32 -1
  store i8* %incdec.ptr100, i8** %yylastch, align 8
  %61 = load i8, i8* %incdec.ptr100, align 1
  %conv101 = sext i8 %61 to i32
  store i32 %conv101, i32* @yytchar, align 4
  %62 = load i32, i32* @yytchar, align 4
  %cmp102 = icmp eq i32 %62, 10
  br i1 %cmp102, label %if.then.104, label %if.end.106

if.then.104:                                      ; preds = %if.then.99
  %63 = load i32, i32* @yylineno, align 4
  %dec105 = add nsw i32 %63, -1
  store i32 %dec105, i32* @yylineno, align 4
  br label %if.end.106

if.end.106:                                       ; preds = %if.then.104, %if.then.99
  %64 = load i32, i32* @yytchar, align 4
  %conv107 = trunc i32 %64 to i8
  %65 = load i8*, i8** @yysptr, align 8
  %incdec.ptr108 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %incdec.ptr108, i8** @yysptr, align 8
  store i8 %conv107, i8* %65, align 1
  br label %for.end

if.end.109:                                       ; preds = %if.then.92
  %66 = load %struct.yywork*, %struct.yywork** %yyt, align 8
  %advance110 = getelementptr inbounds %struct.yywork, %struct.yywork* %66, i32 0, i32 1
  %67 = load i8, i8* %advance110, align 1
  %conv111 = zext i8 %67 to i32
  %idx.ext112 = sext i32 %conv111 to i64
  %add.ptr113 = getelementptr inbounds %struct.yysvf, %struct.yysvf* getelementptr inbounds ([215 x %struct.yysvf], [215 x %struct.yysvf]* @yysvec, i32 0, i32 0), i64 %idx.ext112
  store %struct.yysvf* %add.ptr113, %struct.yysvf** %yystate, align 8
  %68 = load %struct.yysvf**, %struct.yysvf*** %lsp, align 8
  %incdec.ptr114 = getelementptr inbounds %struct.yysvf*, %struct.yysvf** %68, i32 1
  store %struct.yysvf** %incdec.ptr114, %struct.yysvf*** %lsp, align 8
  store %struct.yysvf* %add.ptr113, %struct.yysvf** %68, align 8
  %69 = load %struct.yysvf**, %struct.yysvf*** %lsp, align 8
  %cmp115 = icmp ugt %struct.yysvf** %69, getelementptr inbounds ([8192 x %struct.yysvf*], [8192 x %struct.yysvf*]* @yylstate, i64 1, i64 0)
  br i1 %cmp115, label %if.then.117, label %if.end.119

if.then.117:                                      ; preds = %if.end.109
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @yyout, align 8
  %call118 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %70, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.55, i32 0, i32 0), i32 8192)
  call void @exit(i32 1) #8
  unreachable

if.end.119:                                       ; preds = %if.end.109
  br label %contin

if.end.120:                                       ; preds = %land.lhs.true.85, %if.then.79
  %71 = load %struct.yywork*, %struct.yywork** %yyr, align 8
  %72 = load i32, i32* %yych, align 4
  %idxprom = sext i32 %72 to i64
  %arrayidx = getelementptr inbounds [257 x i8], [257 x i8]* @yymatch, i32 0, i64 %idxprom
  %73 = load i8, i8* %arrayidx, align 1
  %conv121 = sext i8 %73 to i32
  %idx.ext122 = sext i32 %conv121 to i64
  %add.ptr123 = getelementptr inbounds %struct.yywork, %struct.yywork* %71, i64 %idx.ext122
  store %struct.yywork* %add.ptr123, %struct.yywork** %yyt, align 8
  %74 = load %struct.yywork*, %struct.yywork** %yyt, align 8
  %75 = load %struct.yywork*, %struct.yywork** @yytop, align 8
  %cmp124 = icmp ule %struct.yywork* %74, %75
  br i1 %cmp124, label %land.lhs.true.126, label %if.end.161

land.lhs.true.126:                                ; preds = %if.end.120
  %76 = load %struct.yywork*, %struct.yywork** %yyt, align 8
  %verify127 = getelementptr inbounds %struct.yywork, %struct.yywork* %76, i32 0, i32 0
  %77 = load i8, i8* %verify127, align 1
  %conv128 = zext i8 %77 to i32
  %idx.ext129 = sext i32 %conv128 to i64
  %add.ptr130 = getelementptr inbounds %struct.yysvf, %struct.yysvf* getelementptr inbounds ([215 x %struct.yysvf], [215 x %struct.yysvf]* @yysvec, i32 0, i32 0), i64 %idx.ext129
  %78 = load %struct.yysvf*, %struct.yysvf** %yystate, align 8
  %cmp131 = icmp eq %struct.yysvf* %add.ptr130, %78
  br i1 %cmp131, label %if.then.133, label %if.end.161

if.then.133:                                      ; preds = %land.lhs.true.126
  %79 = load %struct.yywork*, %struct.yywork** %yyt, align 8
  %advance134 = getelementptr inbounds %struct.yywork, %struct.yywork* %79, i32 0, i32 1
  %80 = load i8, i8* %advance134, align 1
  %conv135 = zext i8 %80 to i32
  %idx.ext136 = sext i32 %conv135 to i64
  %add.ptr137 = getelementptr inbounds %struct.yysvf, %struct.yysvf* getelementptr inbounds ([215 x %struct.yysvf], [215 x %struct.yysvf]* @yysvec, i32 0, i32 0), i64 %idx.ext136
  %cmp138 = icmp eq %struct.yysvf* %add.ptr137, getelementptr inbounds ([215 x %struct.yysvf], [215 x %struct.yysvf]* @yysvec, i32 0, i32 0)
  br i1 %cmp138, label %if.then.140, label %if.end.150

if.then.140:                                      ; preds = %if.then.133
  %81 = load i8*, i8** %yylastch, align 8
  %incdec.ptr141 = getelementptr inbounds i8, i8* %81, i32 -1
  store i8* %incdec.ptr141, i8** %yylastch, align 8
  %82 = load i8, i8* %incdec.ptr141, align 1
  %conv142 = sext i8 %82 to i32
  store i32 %conv142, i32* @yytchar, align 4
  %83 = load i32, i32* @yytchar, align 4
  %cmp143 = icmp eq i32 %83, 10
  br i1 %cmp143, label %if.then.145, label %if.end.147

if.then.145:                                      ; preds = %if.then.140
  %84 = load i32, i32* @yylineno, align 4
  %dec146 = add nsw i32 %84, -1
  store i32 %dec146, i32* @yylineno, align 4
  br label %if.end.147

if.end.147:                                       ; preds = %if.then.145, %if.then.140
  %85 = load i32, i32* @yytchar, align 4
  %conv148 = trunc i32 %85 to i8
  %86 = load i8*, i8** @yysptr, align 8
  %incdec.ptr149 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %incdec.ptr149, i8** @yysptr, align 8
  store i8 %conv148, i8* %86, align 1
  br label %for.end

if.end.150:                                       ; preds = %if.then.133
  %87 = load %struct.yywork*, %struct.yywork** %yyt, align 8
  %advance151 = getelementptr inbounds %struct.yywork, %struct.yywork* %87, i32 0, i32 1
  %88 = load i8, i8* %advance151, align 1
  %conv152 = zext i8 %88 to i32
  %idx.ext153 = sext i32 %conv152 to i64
  %add.ptr154 = getelementptr inbounds %struct.yysvf, %struct.yysvf* getelementptr inbounds ([215 x %struct.yysvf], [215 x %struct.yysvf]* @yysvec, i32 0, i32 0), i64 %idx.ext153
  store %struct.yysvf* %add.ptr154, %struct.yysvf** %yystate, align 8
  %89 = load %struct.yysvf**, %struct.yysvf*** %lsp, align 8
  %incdec.ptr155 = getelementptr inbounds %struct.yysvf*, %struct.yysvf** %89, i32 1
  store %struct.yysvf** %incdec.ptr155, %struct.yysvf*** %lsp, align 8
  store %struct.yysvf* %add.ptr154, %struct.yysvf** %89, align 8
  %90 = load %struct.yysvf**, %struct.yysvf*** %lsp, align 8
  %cmp156 = icmp ugt %struct.yysvf** %90, getelementptr inbounds ([8192 x %struct.yysvf*], [8192 x %struct.yysvf*]* @yylstate, i64 1, i64 0)
  br i1 %cmp156, label %if.then.158, label %if.end.160

if.then.158:                                      ; preds = %if.end.150
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** @yyout, align 8
  %call159 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %91, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.55, i32 0, i32 0), i32 8192)
  call void @exit(i32 1) #8
  unreachable

if.end.160:                                       ; preds = %if.end.150
  br label %contin

if.end.161:                                       ; preds = %land.lhs.true.126, %if.end.120
  br label %if.end.162

if.end.162:                                       ; preds = %if.end.161, %if.else.76
  br label %if.end.163

if.end.163:                                       ; preds = %if.end.162, %if.end.75
  %92 = load %struct.yysvf*, %struct.yysvf** %yystate, align 8
  %yyother164 = getelementptr inbounds %struct.yysvf, %struct.yysvf* %92, i32 0, i32 1
  %93 = load %struct.yysvf*, %struct.yysvf** %yyother164, align 8
  store %struct.yysvf* %93, %struct.yysvf** %yystate, align 8
  %tobool165 = icmp ne %struct.yysvf* %93, null
  br i1 %tobool165, label %land.lhs.true.166, label %if.else.171

land.lhs.true.166:                                ; preds = %if.end.163
  %94 = load %struct.yysvf*, %struct.yysvf** %yystate, align 8
  %yystoff167 = getelementptr inbounds %struct.yysvf, %struct.yysvf* %94, i32 0, i32 0
  %95 = load %struct.yywork*, %struct.yywork** %yystoff167, align 8
  store %struct.yywork* %95, %struct.yywork** %yyt, align 8
  %cmp168 = icmp ne %struct.yywork* %95, getelementptr inbounds ([377 x %struct.yywork], [377 x %struct.yywork]* @yycrank, i32 0, i32 0)
  br i1 %cmp168, label %if.then.170, label %if.else.171

if.then.170:                                      ; preds = %land.lhs.true.166
  br label %tryagain

if.else.171:                                      ; preds = %land.lhs.true.166, %if.end.163
  %96 = load i8*, i8** %yylastch, align 8
  %incdec.ptr172 = getelementptr inbounds i8, i8* %96, i32 -1
  store i8* %incdec.ptr172, i8** %yylastch, align 8
  %97 = load i8, i8* %incdec.ptr172, align 1
  %conv173 = sext i8 %97 to i32
  store i32 %conv173, i32* @yytchar, align 4
  %98 = load i32, i32* @yytchar, align 4
  %cmp174 = icmp eq i32 %98, 10
  br i1 %cmp174, label %if.then.176, label %if.end.178

if.then.176:                                      ; preds = %if.else.171
  %99 = load i32, i32* @yylineno, align 4
  %dec177 = add nsw i32 %99, -1
  store i32 %dec177, i32* @yylineno, align 4
  br label %if.end.178

if.end.178:                                       ; preds = %if.then.176, %if.else.171
  %100 = load i32, i32* @yytchar, align 4
  %conv179 = trunc i32 %100 to i8
  %101 = load i8*, i8** @yysptr, align 8
  %incdec.ptr180 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %incdec.ptr180, i8** @yysptr, align 8
  store i8 %conv179, i8* %101, align 1
  br label %for.end

contin:                                           ; preds = %if.end.160, %if.end.119, %if.end.74
  br label %for.cond.3

for.end:                                          ; preds = %if.end.178, %if.end.147, %if.end.106, %if.end.61, %if.then.12, %if.then.8
  br label %while.cond

while.cond:                                       ; preds = %if.end.228, %for.end
  %102 = load %struct.yysvf**, %struct.yysvf*** %lsp, align 8
  %incdec.ptr181 = getelementptr inbounds %struct.yysvf*, %struct.yysvf** %102, i32 -1
  store %struct.yysvf** %incdec.ptr181, %struct.yysvf*** %lsp, align 8
  %cmp182 = icmp ugt %struct.yysvf** %102, getelementptr inbounds ([8192 x %struct.yysvf*], [8192 x %struct.yysvf*]* @yylstate, i32 0, i32 0)
  br i1 %cmp182, label %while.body, label %while.end.231

while.body:                                       ; preds = %while.cond
  %103 = load i8*, i8** %yylastch, align 8
  %incdec.ptr184 = getelementptr inbounds i8, i8* %103, i32 -1
  store i8* %incdec.ptr184, i8** %yylastch, align 8
  store i8 0, i8* %103, align 1
  %104 = load %struct.yysvf**, %struct.yysvf*** %lsp, align 8
  %105 = load %struct.yysvf*, %struct.yysvf** %104, align 8
  %cmp185 = icmp ne %struct.yysvf* %105, null
  br i1 %cmp185, label %land.lhs.true.187, label %if.end.222

land.lhs.true.187:                                ; preds = %while.body
  %106 = load %struct.yysvf**, %struct.yysvf*** %lsp, align 8
  %107 = load %struct.yysvf*, %struct.yysvf** %106, align 8
  %yystops = getelementptr inbounds %struct.yysvf, %struct.yysvf* %107, i32 0, i32 2
  %108 = load i32*, i32** %yystops, align 8
  store i32* %108, i32** @yyfnd, align 8
  %tobool188 = icmp ne i32* %108, null
  br i1 %tobool188, label %land.lhs.true.189, label %if.end.222

land.lhs.true.189:                                ; preds = %land.lhs.true.187
  %109 = load i32*, i32** @yyfnd, align 8
  %110 = load i32, i32* %109, align 4
  %cmp190 = icmp sgt i32 %110, 0
  br i1 %cmp190, label %if.then.192, label %if.end.222

if.then.192:                                      ; preds = %land.lhs.true.189
  %111 = load %struct.yysvf**, %struct.yysvf*** %lsp, align 8
  store %struct.yysvf** %111, %struct.yysvf*** @yyolsp, align 8
  %112 = load i32*, i32** @yyfnd, align 8
  %113 = load i32, i32* %112, align 4
  %idxprom193 = sext i32 %113 to i64
  %arrayidx194 = getelementptr inbounds [65 x i8], [65 x i8]* @yyextra, i32 0, i64 %idxprom193
  %114 = load i8, i8* %arrayidx194, align 1
  %tobool195 = icmp ne i8 %114, 0
  br i1 %tobool195, label %if.then.196, label %if.end.215

if.then.196:                                      ; preds = %if.then.192
  br label %while.cond.197

while.cond.197:                                   ; preds = %if.end.212, %if.then.196
  %115 = load %struct.yysvf**, %struct.yysvf*** %lsp, align 8
  %116 = load %struct.yysvf*, %struct.yysvf** %115, align 8
  %yystops198 = getelementptr inbounds %struct.yysvf, %struct.yysvf* %116, i32 0, i32 2
  %117 = load i32*, i32** %yystops198, align 8
  %118 = load i32*, i32** @yyfnd, align 8
  %119 = load i32, i32* %118, align 4
  %sub = sub nsw i32 0, %119
  %call199 = call i32 @yyback(i32* %117, i32 %sub)
  %cmp200 = icmp ne i32 %call199, 1
  br i1 %cmp200, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.197
  %120 = load %struct.yysvf**, %struct.yysvf*** %lsp, align 8
  %cmp202 = icmp ugt %struct.yysvf** %120, getelementptr inbounds ([8192 x %struct.yysvf*], [8192 x %struct.yysvf*]* @yylstate, i32 0, i32 0)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.197
  %121 = phi i1 [ false, %while.cond.197 ], [ %cmp202, %land.rhs ]
  br i1 %121, label %while.body.204, label %while.end

while.body.204:                                   ; preds = %land.end
  %122 = load %struct.yysvf**, %struct.yysvf*** %lsp, align 8
  %incdec.ptr205 = getelementptr inbounds %struct.yysvf*, %struct.yysvf** %122, i32 -1
  store %struct.yysvf** %incdec.ptr205, %struct.yysvf*** %lsp, align 8
  %123 = load i8*, i8** %yylastch, align 8
  %incdec.ptr206 = getelementptr inbounds i8, i8* %123, i32 -1
  store i8* %incdec.ptr206, i8** %yylastch, align 8
  %124 = load i8, i8* %123, align 1
  %conv207 = sext i8 %124 to i32
  store i32 %conv207, i32* @yytchar, align 4
  %125 = load i32, i32* @yytchar, align 4
  %cmp208 = icmp eq i32 %125, 10
  br i1 %cmp208, label %if.then.210, label %if.end.212

if.then.210:                                      ; preds = %while.body.204
  %126 = load i32, i32* @yylineno, align 4
  %dec211 = add nsw i32 %126, -1
  store i32 %dec211, i32* @yylineno, align 4
  br label %if.end.212

if.end.212:                                       ; preds = %if.then.210, %while.body.204
  %127 = load i32, i32* @yytchar, align 4
  %conv213 = trunc i32 %127 to i8
  %128 = load i8*, i8** @yysptr, align 8
  %incdec.ptr214 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %incdec.ptr214, i8** @yysptr, align 8
  store i8 %conv213, i8* %128, align 1
  br label %while.cond.197

while.end:                                        ; preds = %land.end
  br label %if.end.215

if.end.215:                                       ; preds = %while.end, %if.then.192
  %129 = load i8*, i8** %yylastch, align 8
  %130 = load i8, i8* %129, align 1
  %conv216 = sext i8 %130 to i32
  store i32 %conv216, i32* @yyprevious, align 4
  %131 = load %struct.yysvf**, %struct.yysvf*** %lsp, align 8
  store %struct.yysvf** %131, %struct.yysvf*** @yylsp, align 8
  %132 = load i8*, i8** %yylastch, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %132 to i64
  %sub.ptr.sub217 = sub i64 %sub.ptr.lhs.cast, ptrtoint ([8192 x i8]* @yytext to i64)
  %add = add nsw i64 %sub.ptr.sub217, 1
  %conv218 = trunc i64 %add to i32
  store i32 %conv218, i32* @yyleng, align 4
  %133 = load i32, i32* @yyleng, align 4
  %idxprom219 = sext i32 %133 to i64
  %arrayidx220 = getelementptr inbounds [8192 x i8], [8192 x i8]* @yytext, i32 0, i64 %idxprom219
  store i8 0, i8* %arrayidx220, align 1
  %134 = load i32*, i32** @yyfnd, align 8
  %incdec.ptr221 = getelementptr inbounds i32, i32* %134, i32 1
  store i32* %incdec.ptr221, i32** @yyfnd, align 8
  %135 = load i32, i32* %134, align 4
  store i32 %135, i32* %retval
  br label %return

if.end.222:                                       ; preds = %land.lhs.true.189, %land.lhs.true.187, %while.body
  %136 = load i8*, i8** %yylastch, align 8
  %137 = load i8, i8* %136, align 1
  %conv223 = sext i8 %137 to i32
  store i32 %conv223, i32* @yytchar, align 4
  %138 = load i32, i32* @yytchar, align 4
  %cmp224 = icmp eq i32 %138, 10
  br i1 %cmp224, label %if.then.226, label %if.end.228

if.then.226:                                      ; preds = %if.end.222
  %139 = load i32, i32* @yylineno, align 4
  %dec227 = add nsw i32 %139, -1
  store i32 %dec227, i32* @yylineno, align 4
  br label %if.end.228

if.end.228:                                       ; preds = %if.then.226, %if.end.222
  %140 = load i32, i32* @yytchar, align 4
  %conv229 = trunc i32 %140 to i8
  %141 = load i8*, i8** @yysptr, align 8
  %incdec.ptr230 = getelementptr inbounds i8, i8* %141, i32 1
  store i8* %incdec.ptr230, i8** @yysptr, align 8
  store i8 %conv229, i8* %141, align 1
  br label %while.cond

while.end.231:                                    ; preds = %while.cond
  %142 = load i8, i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @yytext, i32 0, i64 0), align 1
  %conv232 = sext i8 %142 to i32
  %cmp233 = icmp eq i32 %conv232, 0
  br i1 %cmp233, label %if.then.235, label %if.end.236

if.then.235:                                      ; preds = %while.end.231
  store i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @yysbuf, i32 0, i32 0), i8** @yysptr, align 8
  store i32 0, i32* %retval
  br label %return

if.end.236:                                       ; preds = %while.end.231
  %143 = load i8*, i8** @yysptr, align 8
  %cmp237 = icmp ugt i8* %143, getelementptr inbounds ([8192 x i8], [8192 x i8]* @yysbuf, i32 0, i32 0)
  br i1 %cmp237, label %cond.true.239, label %cond.false.242

cond.true.239:                                    ; preds = %if.end.236
  %144 = load i8*, i8** @yysptr, align 8
  %incdec.ptr240 = getelementptr inbounds i8, i8* %144, i32 -1
  store i8* %incdec.ptr240, i8** @yysptr, align 8
  %145 = load i8, i8* %incdec.ptr240, align 1
  %conv241 = sext i8 %145 to i32
  br label %cond.end.244

cond.false.242:                                   ; preds = %if.end.236
  %146 = load %struct._IO_FILE*, %struct._IO_FILE** @yyin, align 8
  %call243 = call i32 @_IO_getc(%struct._IO_FILE* %146)
  br label %cond.end.244

cond.end.244:                                     ; preds = %cond.false.242, %cond.true.239
  %cond245 = phi i32 [ %conv241, %cond.true.239 ], [ %call243, %cond.false.242 ]
  store i32 %cond245, i32* @yytchar, align 4
  %cmp246 = icmp eq i32 %cond245, 10
  br i1 %cmp246, label %cond.true.248, label %cond.false.250

cond.true.248:                                    ; preds = %cond.end.244
  %147 = load i32, i32* @yylineno, align 4
  %inc249 = add nsw i32 %147, 1
  store i32 %inc249, i32* @yylineno, align 4
  %148 = load i32, i32* @yytchar, align 4
  br label %cond.end.251

cond.false.250:                                   ; preds = %cond.end.244
  %149 = load i32, i32* @yytchar, align 4
  br label %cond.end.251

cond.end.251:                                     ; preds = %cond.false.250, %cond.true.248
  %cond252 = phi i32 [ %148, %cond.true.248 ], [ %149, %cond.false.250 ]
  %cmp253 = icmp eq i32 %cond252, -1
  br i1 %cmp253, label %cond.true.255, label %cond.false.256

cond.true.255:                                    ; preds = %cond.end.251
  br label %cond.end.257

cond.false.256:                                   ; preds = %cond.end.251
  %150 = load i32, i32* @yytchar, align 4
  br label %cond.end.257

cond.end.257:                                     ; preds = %cond.false.256, %cond.true.255
  %cond258 = phi i32 [ 0, %cond.true.255 ], [ %150, %cond.false.256 ]
  %conv259 = trunc i32 %cond258 to i8
  store i8 %conv259, i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @yytext, i32 0, i64 0), align 1
  %conv260 = sext i8 %conv259 to i32
  store i32 %conv260, i32* @yyprevious, align 4
  %151 = load i32, i32* @yyprevious, align 4
  %cmp261 = icmp sgt i32 %151, 0
  br i1 %cmp261, label %if.then.263, label %if.end.265

if.then.263:                                      ; preds = %cond.end.257
  %152 = load i32, i32* @yyprevious, align 4
  %153 = load %struct._IO_FILE*, %struct._IO_FILE** @yyout, align 8
  %call264 = call i32 @_IO_putc(i32 %152, %struct._IO_FILE* %153)
  br label %if.end.265

if.end.265:                                       ; preds = %if.then.263, %cond.end.257
  store i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @yytext, i32 0, i32 0), i8** %yylastch, align 8
  br label %for.cond

return:                                           ; preds = %if.then.235, %if.end.215
  %154 = load i32, i32* %retval
  ret i32 %154
}

; Function Attrs: nounwind uwtable
define i32 @yywrap_nasko() #0 {
entry:
  ret i32 1
}

declare i32 @printf(i8*, ...) #3

; Function Attrs: nounwind uwtable
define i8* @visible(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %and = and i32 %0, 255
  store i32 %and, i32* %c.addr, align 4
  %1 = load i32, i32* %c.addr, align 4
  %idxprom = sext i32 %1 to i64
  %call = call i16** @__ctype_b_loc() #9
  %2 = load i16*, i16** %call, align 8
  %arrayidx = getelementptr inbounds i16, i16* %2, i64 %idxprom
  %3 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %3 to i32
  %and1 = and i32 %conv, 16384
  %tobool = icmp ne i32 %and1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %c.addr, align 4
  %conv2 = trunc i32 %4 to i8
  store i8 %conv2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @visible.buf, i32 0, i64 0), align 1
  store i8 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @visible.buf, i32 0, i64 1), align 1
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load i32, i32* %c.addr, align 4
  %call3 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @visible.buf, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.71, i32 0, i32 0), i32 %5) #1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i8* getelementptr inbounds ([5 x i8], [5 x i8]* @visible.buf, i32 0, i32 0)
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

declare i32 @_IO_getc(%struct._IO_FILE*) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

; Function Attrs: nounwind uwtable
define i32 @yyback(i32* %p, i32 %m) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i32*, align 8
  %m.addr = alloca i32, align 4
  store i32* %p, i32** %p.addr, align 8
  store i32 %m, i32* %m.addr, align 4
  %0 = load i32*, i32** %p.addr, align 8
  %cmp = icmp eq i32* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.3, %if.end
  %1 = load i32*, i32** %p.addr, align 8
  %2 = load i32, i32* %1, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32*, i32** %p.addr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %3, i32 1
  store i32* %incdec.ptr, i32** %p.addr, align 8
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* %m.addr, align 4
  %cmp1 = icmp eq i32 %4, %5
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %while.body
  store i32 1, i32* %retval
  br label %return

if.end.3:                                         ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.2, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #3

; Function Attrs: nounwind uwtable
define i32 @yyinput() #0 {
entry:
  %0 = load i8*, i8** @yysptr, align 8
  %cmp = icmp ugt i8* %0, getelementptr inbounds ([8192 x i8], [8192 x i8]* @yysbuf, i32 0, i32 0)
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i8*, i8** @yysptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i32 -1
  store i8* %incdec.ptr, i8** @yysptr, align 8
  %2 = load i8, i8* %incdec.ptr, align 1
  %conv = sext i8 %2 to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @yyin, align 8
  %call = call i32 @_IO_getc(%struct._IO_FILE* %3)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %call, %cond.false ]
  store i32 %cond, i32* @yytchar, align 4
  %cmp1 = icmp eq i32 %cond, 10
  br i1 %cmp1, label %cond.true.3, label %cond.false.4

cond.true.3:                                      ; preds = %cond.end
  %4 = load i32, i32* @yylineno, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* @yylineno, align 4
  %5 = load i32, i32* @yytchar, align 4
  br label %cond.end.5

cond.false.4:                                     ; preds = %cond.end
  %6 = load i32, i32* @yytchar, align 4
  br label %cond.end.5

cond.end.5:                                       ; preds = %cond.false.4, %cond.true.3
  %cond6 = phi i32 [ %5, %cond.true.3 ], [ %6, %cond.false.4 ]
  %cmp7 = icmp eq i32 %cond6, -1
  br i1 %cmp7, label %cond.true.9, label %cond.false.10

cond.true.9:                                      ; preds = %cond.end.5
  br label %cond.end.11

cond.false.10:                                    ; preds = %cond.end.5
  %7 = load i32, i32* @yytchar, align 4
  br label %cond.end.11

cond.end.11:                                      ; preds = %cond.false.10, %cond.true.9
  %cond12 = phi i32 [ 0, %cond.true.9 ], [ %7, %cond.false.10 ]
  ret i32 %cond12
}

; Function Attrs: nounwind uwtable
define void @yyoutput(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @yyout, align 8
  %call = call i32 @_IO_putc(i32 %0, %struct._IO_FILE* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define void @yyunput(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  store i32 %0, i32* @yytchar, align 4
  %1 = load i32, i32* @yytchar, align 4
  %cmp = icmp eq i32 %1, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* @yylineno, align 4
  %dec = add nsw i32 %2, -1
  store i32 %dec, i32* @yylineno, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* @yytchar, align 4
  %conv = trunc i32 %3 to i8
  %4 = load i8*, i8** @yysptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** @yysptr, align 8
  store i8 %conv, i8* %4, align 1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #5

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #5

; Function Attrs: nounwind
declare void @free(i8*) #5

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #5

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #6

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #5

; Function Attrs: nounwind uwtable
define void @usage() #0 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %1 = load i8*, i8** @progname, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.100, i32 0, i32 0), i8* %1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i32 0, i32 0))
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.101, i32 0, i32 0))
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.102, i32 0, i32 0))
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = load i32, i32* @CplusplusFlag, align 4
  %tobool = icmp ne i32 %5, 0
  %cond = select i1 %tobool, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.104, i32 0, i32 0)
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.103, i32 0, i32 0), i8* %cond)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %7 = load i32, i32* @CplusplusFlag, align 4
  %tobool4 = icmp ne i32 %7, 0
  %cond5 = select i1 %tobool4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i32 0, i32 0)
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.105, i32 0, i32 0), i8* %cond5)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.106, i32 0, i32 0))
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.107, i32 0, i32 0))
  call void @exit(i32 1) #8
  unreachable

return:                                           ; No predecessors!
  ret void
}

declare i32 @fflush(%struct._IO_FILE*) #3

; Function Attrs: nounwind uwtable
define void @setprogname(i8* %argv0) #0 {
entry:
  %argv0.addr = alloca i8*, align 8
  store i8* %argv0, i8** %argv0.addr, align 8
  %0 = load i8*, i8** %argv0.addr, align 8
  %call = call i8* @strrchr(i8* %0, i32 47) #7
  store i8* %call, i8** @progname, align 8
  %1 = load i8*, i8** @progname, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** @progname, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** @progname, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load i8*, i8** %argv0.addr, align 8
  store i8* %3, i8** @progname, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @namedkeyword(i8* %argn) #0 {
entry:
  %retval = alloca i32, align 4
  %argn.addr = alloca i8*, align 8
  %cmdptr = alloca i8**, align 8
  store i8* %argn, i8** %argn.addr, align 8
  store i8** getelementptr inbounds ([7 x i8*], [7 x i8*]* @namedkeyword.cmdlist, i32 0, i32 0), i8*** %cmdptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8**, i8*** %cmdptr, align 8
  %1 = load i8*, i8** %0, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8**, i8*** %cmdptr, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = load i8*, i8** @progname, align 8
  %call = call i32 @strcmp(i8* %3, i8* %4) #7
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, i32* @KeywordName, align 4
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i8**, i8*** %cmdptr, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %5, i32 1
  store i8** %incdec.ptr, i8*** %cmdptr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i8** getelementptr inbounds ([7 x i8*], [7 x i8*]* @namedkeyword.cmdlist, i32 0, i32 0), i8*** %cmdptr, align 8
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.8, %for.end
  %6 = load i8**, i8*** %cmdptr, align 8
  %7 = load i8*, i8** %6, align 8
  %tobool2 = icmp ne i8* %7, null
  br i1 %tobool2, label %for.body.3, label %for.end.10

for.body.3:                                       ; preds = %for.cond.1
  %8 = load i8**, i8*** %cmdptr, align 8
  %9 = load i8*, i8** %8, align 8
  %10 = load i8*, i8** %argn.addr, align 8
  %call4 = call i32 @strcmp(i8* %9, i8* %10) #7
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %for.body.3
  store i32 1, i32* %retval
  br label %return

if.end.7:                                         ; preds = %for.body.3
  br label %for.inc.8

for.inc.8:                                        ; preds = %if.end.7
  %11 = load i8**, i8*** %cmdptr, align 8
  %incdec.ptr9 = getelementptr inbounds i8*, i8** %11, i32 1
  store i8** %incdec.ptr9, i8*** %cmdptr, align 8
  br label %for.cond.1

for.end.10:                                       ; preds = %for.cond.1
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.10, %if.then.6, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define i32 @dostdin() #0 {
entry:
  %ret = alloca i32, align 4
  %call = call i32 @isatty(i32 0) #1
  store i32 %call, i32* @OnATty, align 4
  %0 = load i32, i32* @OnATty, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* @Interactive, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.115, i32 0, i32 0))
  call void @prompt()
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  store %struct._IO_FILE* %2, %struct._IO_FILE** @yyin, align 8
  %call3 = call i32 @yyparse()
  store i32 %call3, i32* %ret, align 4
  store i32 0, i32* @OnATty, align 4
  %3 = load i32, i32* %ret, align 4
  ret i32 %3
}

; Function Attrs: nounwind
declare i32 @isatty(i32) #5

; Function Attrs: nounwind uwtable
define i32 @dotmpfile(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %ret = alloca i32, align 4
  %tmpfp = alloca %struct._IO_FILE*, align 8
  %sverrno = alloca i32, align 4
  %sverrno8 = alloca i32, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %ret, align 4
  %call = call %struct._IO_FILE* @tmpfile()
  store %struct._IO_FILE* %call, %struct._IO_FILE** %tmpfp, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %tmpfp, align 8
  %tobool = icmp ne %struct._IO_FILE* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32* @__errno_location() #9
  %1 = load i32, i32* %call1, align 4
  store i32 %1, i32* %sverrno, align 4
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %3 = load i8*, i8** @progname, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.116, i32 0, i32 0), i8* %3)
  %4 = load i32, i32* %sverrno, align 4
  %call3 = call i32* @__errno_location() #9
  store i32 %4, i32* %call3, align 4
  %5 = load i8*, i8** @progname, align 8
  call void @perror(i8* %5)
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i32, i32* @KeywordName, align 4
  %tobool4 = icmp ne i32 %6, 0
  br i1 %tobool4, label %if.then.5, label %if.end.14

if.then.5:                                        ; preds = %if.end
  %7 = load i8*, i8** @progname, align 8
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %tmpfp, align 8
  %call6 = call i32 @fputs(i8* %7, %struct._IO_FILE* %8)
  %cmp = icmp eq i32 %call6, -1
  br i1 %cmp, label %if.then.7, label %if.end.13

if.then.7:                                        ; preds = %if.then.5
  br label %errwrite

errwrite:                                         ; preds = %if.then.22, %if.then.18, %if.then.7
  %call9 = call i32* @__errno_location() #9
  %9 = load i32, i32* %call9, align 4
  store i32 %9, i32* %sverrno8, align 4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %11 = load i8*, i8** @progname, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.117, i32 0, i32 0), i8* %11)
  %12 = load i32, i32* %sverrno8, align 4
  %call11 = call i32* @__errno_location() #9
  store i32 %12, i32* %call11, align 4
  %13 = load i8*, i8** @progname, align 8
  call void @perror(i8* %13)
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %tmpfp, align 8
  %call12 = call i32 @fclose(%struct._IO_FILE* %14)
  store i32 1, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.then.5
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.end
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.14
  %15 = load i32, i32* @optind, align 4
  %16 = load i32, i32* %argc.addr, align 4
  %cmp15 = icmp slt i32 %15, %16
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %tmpfp, align 8
  %18 = load i32, i32* @optind, align 4
  %idxprom = sext i32 %18 to i64
  %19 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %19, i64 %idxprom
  %20 = load i8*, i8** %arrayidx, align 8
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.118, i32 0, i32 0), i8* %20)
  %cmp17 = icmp eq i32 %call16, -1
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %for.body
  br label %errwrite

if.end.19:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.19
  %21 = load i32, i32* @optind, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* @optind, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %tmpfp, align 8
  %call20 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %22)
  %cmp21 = icmp eq i32 %call20, -1
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %for.end
  br label %errwrite

if.end.23:                                        ; preds = %for.end
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %tmpfp, align 8
  call void @rewind(%struct._IO_FILE* %23)
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %tmpfp, align 8
  store %struct._IO_FILE* %24, %struct._IO_FILE** @yyin, align 8
  %call24 = call i32 @yyparse()
  %25 = load i32, i32* %ret, align 4
  %add = add nsw i32 %25, %call24
  store i32 %add, i32* %ret, align 4
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %tmpfp, align 8
  %call25 = call i32 @fclose(%struct._IO_FILE* %26)
  %27 = load i32, i32* %ret, align 4
  store i32 %27, i32* %retval
  br label %return

return:                                           ; preds = %if.end.23, %errwrite, %if.then
  %28 = load i32, i32* %retval
  ret i32 %28
}

declare %struct._IO_FILE* @tmpfile() #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #6

declare void @perror(i8*) #3

declare i32 @fputs(i8*, %struct._IO_FILE*) #3

declare i32 @fclose(%struct._IO_FILE*) #3

declare void @rewind(%struct._IO_FILE*) #3

; Function Attrs: nounwind uwtable
define i32 @dofileargs(i32 %argc, i8** %argv) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %ifp = alloca %struct._IO_FILE*, align 8
  %ret = alloca i32, align 4
  %sverrno = alloca i32, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %ret, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* @optind, align 4
  %1 = load i32, i32* %argc.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* @optind, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 %idxprom
  %4 = load i8*, i8** %arrayidx, align 8
  %call = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.119, i32 0, i32 0)) #7
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %call2 = call i32 @dostdin()
  %5 = load i32, i32* %ret, align 4
  %add = add nsw i32 %5, %call2
  store i32 %add, i32* %ret, align 4
  br label %if.end.18

if.else:                                          ; preds = %for.body
  %6 = load i32, i32* @optind, align 4
  %idxprom3 = sext i32 %6 to i64
  %7 = load i8**, i8*** %argv.addr, align 8
  %arrayidx4 = getelementptr inbounds i8*, i8** %7, i64 %idxprom3
  %8 = load i8*, i8** %arrayidx4, align 8
  %call5 = call %struct._IO_FILE* @fopen(i8* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.120, i32 0, i32 0))
  store %struct._IO_FILE* %call5, %struct._IO_FILE** %ifp, align 8
  %cmp6 = icmp eq %struct._IO_FILE* %call5, null
  br i1 %cmp6, label %if.then.7, label %if.else.15

if.then.7:                                        ; preds = %if.else
  %call8 = call i32* @__errno_location() #9
  %9 = load i32, i32* %call8, align 4
  store i32 %9, i32* %sverrno, align 4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %11 = load i8*, i8** @progname, align 8
  %12 = load i32, i32* @optind, align 4
  %idxprom9 = sext i32 %12 to i64
  %13 = load i8**, i8*** %argv.addr, align 8
  %arrayidx10 = getelementptr inbounds i8*, i8** %13, i64 %idxprom9
  %14 = load i8*, i8** %arrayidx10, align 8
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.121, i32 0, i32 0), i8* %11, i8* %14)
  %15 = load i32, i32* %sverrno, align 4
  %call12 = call i32* @__errno_location() #9
  store i32 %15, i32* %call12, align 4
  %16 = load i32, i32* @optind, align 4
  %idxprom13 = sext i32 %16 to i64
  %17 = load i8**, i8*** %argv.addr, align 8
  %arrayidx14 = getelementptr inbounds i8*, i8** %17, i64 %idxprom13
  %18 = load i8*, i8** %arrayidx14, align 8
  call void @perror(i8* %18)
  %19 = load i32, i32* %ret, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %ret, align 4
  br label %if.end

if.else.15:                                       ; preds = %if.else
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %ifp, align 8
  store %struct._IO_FILE* %20, %struct._IO_FILE** @yyin, align 8
  %call16 = call i32 @yyparse()
  %21 = load i32, i32* %ret, align 4
  %add17 = add nsw i32 %21, %call16
  store i32 %add17, i32* %ret, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.15, %if.then.7
  br label %if.end.18

if.end.18:                                        ; preds = %if.end, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end.18
  %22 = load i32, i32* @optind, align 4
  %inc19 = add nsw i32 %22, 1
  store i32 %inc19, i32* @optind, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load i32, i32* %ret, align 4
  ret i32 %23
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define void @versions() #0 {
entry:
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.175, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @cdeclsccsid, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @cdgramsccsid, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @cdlexsccsid, i32 0, i32 0))
  call void @exit(i32 0) #8
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %c = alloca i32, align 4
  %ret = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %ret, align 4
  %0 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 0
  %1 = load i8*, i8** %arrayidx, align 8
  call void @setprogname(i8* %1)
  %2 = load i8*, i8** @progname, align 8
  %call = call i32 @strcmp(i8* %2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.176, i32 0, i32 0)) #7
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* @CplusplusFlag, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.end
  %3 = load i32, i32* %argc.addr, align 4
  %4 = load i8**, i8*** %argv.addr, align 8
  %call1 = call i32 @getopt(i32 %3, i8** %4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.177, i32 0, i32 0)) #1
  store i32 %call1, i32* %c, align 4
  %cmp2 = icmp ne i32 %call1, -1
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i32, i32* %c, align 4
  switch i32 %5, label %sw.epilog [
    i32 99, label %sw.bb
    i32 105, label %sw.bb.3
    i32 114, label %sw.bb.4
    i32 112, label %sw.bb.5
    i32 97, label %sw.bb.6
    i32 43, label %sw.bb.7
    i32 86, label %sw.bb.8
    i32 63, label %sw.bb.9
  ]

sw.bb:                                            ; preds = %while.body
  store i32 1, i32* @MkProgramFlag, align 4
  br label %sw.epilog

sw.bb.3:                                          ; preds = %while.body
  store i32 1, i32* @Interactive, align 4
  br label %sw.epilog

sw.bb.4:                                          ; preds = %while.body
  store i32 0, i32* @CplusplusFlag, align 4
  store i32 1, i32* @RitchieFlag, align 4
  store i32 0, i32* @PreANSIFlag, align 4
  br label %sw.epilog

sw.bb.5:                                          ; preds = %while.body
  store i32 0, i32* @CplusplusFlag, align 4
  store i32 0, i32* @RitchieFlag, align 4
  store i32 1, i32* @PreANSIFlag, align 4
  br label %sw.epilog

sw.bb.6:                                          ; preds = %while.body
  store i32 0, i32* @CplusplusFlag, align 4
  store i32 0, i32* @RitchieFlag, align 4
  store i32 0, i32* @PreANSIFlag, align 4
  br label %sw.epilog

sw.bb.7:                                          ; preds = %while.body
  store i32 1, i32* @CplusplusFlag, align 4
  store i32 0, i32* @RitchieFlag, align 4
  store i32 0, i32* @PreANSIFlag, align 4
  br label %sw.epilog

sw.bb.8:                                          ; preds = %while.body
  call void @versions()
  br label %sw.epilog

sw.bb.9:                                          ; preds = %while.body
  call void @usage()
  br label %sw.epilog

sw.epilog:                                        ; preds = %while.body, %sw.bb.9, %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %6 = load i32, i32* @optind, align 4
  %7 = load i32, i32* %argc.addr, align 4
  %cmp10 = icmp eq i32 %6, %7
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %while.end
  %call12 = call i32 @dostdin()
  %8 = load i32, i32* %ret, align 4
  %add = add nsw i32 %8, %call12
  store i32 %add, i32* %ret, align 4
  br label %if.end.22

if.else:                                          ; preds = %while.end
  %9 = load i32, i32* @optind, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load i8**, i8*** %argv.addr, align 8
  %arrayidx13 = getelementptr inbounds i8*, i8** %10, i64 %idxprom
  %11 = load i8*, i8** %arrayidx13, align 8
  %call14 = call i32 @namedkeyword(i8* %11)
  %tobool = icmp ne i32 %call14, 0
  br i1 %tobool, label %if.then.15, label %if.else.18

if.then.15:                                       ; preds = %if.else
  %12 = load i32, i32* %argc.addr, align 4
  %13 = load i8**, i8*** %argv.addr, align 8
  %call16 = call i32 @dotmpfile(i32 %12, i8** %13)
  %14 = load i32, i32* %ret, align 4
  %add17 = add nsw i32 %14, %call16
  store i32 %add17, i32* %ret, align 4
  br label %if.end.21

if.else.18:                                       ; preds = %if.else
  %15 = load i32, i32* %argc.addr, align 4
  %16 = load i8**, i8*** %argv.addr, align 8
  %call19 = call i32 @dofileargs(i32 %15, i8** %16)
  %17 = load i32, i32* %ret, align 4
  %add20 = add nsw i32 %17, %call19
  store i32 %add20, i32* %ret, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.18, %if.then.15
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.then.11
  %18 = load i32, i32* %ret, align 4
  ret i32 %18
}

; Function Attrs: nounwind
declare i32 @getopt(i32, i8**, i8*) #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
