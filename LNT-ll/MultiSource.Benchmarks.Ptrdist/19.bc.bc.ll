; ModuleID = './MultiSource.Benchmarks.Ptrdist/19.bc.bc.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.YYSTYPE = type { i8*, i8, i32, %struct.arg_list* }
%struct.arg_list = type { i32, %struct.arg_list* }

@yyexca = global [10 x i16] [i16 -1, i16 1, i16 0, i16 -1, i16 257, i16 6, i16 59, i16 6, i16 -2, i16 0], align 16
@yyact = global [706 x i16] [i16 27, i16 65, i16 149, i16 145, i16 48, i16 25, i16 57, i16 45, i16 58, i16 46, i16 105, i16 135, i16 41, i16 125, i16 86, i16 86, i16 38, i16 66, i16 34, i16 35, i16 141, i16 109, i16 53, i16 54, i16 36, i16 6, i16 134, i16 11, i16 159, i16 88, i16 104, i16 48, i16 150, i16 27, i16 136, i16 62, i16 62, i16 62, i16 25, i16 142, i16 126, i16 63, i16 151, i16 127, i16 125, i16 118, i16 115, i16 162, i16 139, i16 124, i16 8, i16 117, i16 59, i16 60, i16 108, i16 61, i16 40, i16 102, i16 48, i16 84, i16 82, i16 72, i16 71, i16 70, i16 69, i16 68, i16 27, i16 67, i16 51, i16 49, i16 23, i16 25, i16 75, i16 76, i16 77, i16 78, i16 79, i16 81, i16 74, i16 83, i16 87, i16 73, i16 92, i16 21, i16 91, i16 163, i16 140, i16 119, i16 63, i16 153, i16 96, i16 98, i16 152, i16 89, i16 56, i16 99, i16 100, i16 101, i16 27, i16 129, i16 64, i16 106, i16 107, i16 25, i16 52, i16 144, i16 40, i16 128, i16 164, i16 113, i16 110, i16 155, i16 112, i16 137, i16 50, i16 4, i16 21, i16 3, i16 2, i16 95, i16 116, i16 94, i16 148, i16 103, i16 80, i16 1, i16 0, i16 27, i16 0, i16 0, i16 0, i16 0, i16 25, i16 0, i16 0, i16 0, i16 0, i16 114, i16 0, i16 0, i16 0, i16 0, i16 0, i16 91, i16 0, i16 130, i16 131, i16 98, i16 0, i16 21, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 27, i16 0, i16 0, i16 143, i16 0, i16 25, i16 0, i16 0, i16 0, i16 110, i16 27, i16 0, i16 98, i16 0, i16 0, i16 25, i16 0, i16 0, i16 47, i16 0, i16 157, i16 160, i16 0, i16 138, i16 154, i16 21, i16 0, i16 110, i16 0, i16 113, i16 0, i16 0, i16 0, i16 0, i16 146, i16 0, i16 27, i16 0, i16 0, i16 0, i16 0, i16 25, i16 0, i16 0, i16 0, i16 0, i16 27, i16 156, i16 0, i16 0, i16 0, i16 25, i16 0, i16 147, i16 21, i16 0, i16 85, i16 161, i16 37, i16 165, i16 55, i16 0, i16 0, i16 133, i16 24, i16 12, i16 28, i16 26, i16 0, i16 0, i16 158, i16 29, i16 47, i16 13, i16 15, i16 30, i16 17, i16 18, i16 19, i16 20, i16 31, i16 0, i16 32, i16 34, i16 35, i16 0, i16 33, i16 9, i16 16, i16 36, i16 14, i16 22, i16 10, i16 5, i16 0, i16 0, i16 27, i16 24, i16 12, i16 28, i16 26, i16 25, i16 0, i16 0, i16 29, i16 7, i16 13, i16 15, i16 30, i16 17, i16 18, i16 19, i16 20, i16 31, i16 0, i16 32, i16 34, i16 35, i16 0, i16 33, i16 9, i16 16, i16 36, i16 14, i16 22, i16 10, i16 55, i16 0, i16 0, i16 27, i16 24, i16 12, i16 28, i16 26, i16 25, i16 0, i16 0, i16 29, i16 0, i16 13, i16 15, i16 30, i16 17, i16 18, i16 19, i16 20, i16 31, i16 0, i16 32, i16 34, i16 35, i16 0, i16 33, i16 9, i16 16, i16 36, i16 14, i16 22, i16 10, i16 39, i16 0, i16 0, i16 24, i16 12, i16 28, i16 26, i16 0, i16 0, i16 0, i16 29, i16 0, i16 13, i16 15, i16 30, i16 17, i16 18, i16 19, i16 20, i16 31, i16 0, i16 32, i16 34, i16 35, i16 0, i16 33, i16 9, i16 16, i16 36, i16 14, i16 22, i16 10, i16 24, i16 12, i16 28, i16 26, i16 0, i16 0, i16 0, i16 29, i16 0, i16 13, i16 15, i16 30, i16 17, i16 18, i16 19, i16 20, i16 31, i16 0, i16 32, i16 34, i16 35, i16 0, i16 33, i16 9, i16 16, i16 36, i16 14, i16 22, i16 10, i16 24, i16 0, i16 28, i16 26, i16 0, i16 0, i16 0, i16 29, i16 0, i16 0, i16 24, i16 30, i16 28, i16 26, i16 0, i16 0, i16 31, i16 29, i16 32, i16 34, i16 35, i16 30, i16 33, i16 0, i16 0, i16 36, i16 31, i16 0, i16 32, i16 34, i16 35, i16 45, i16 33, i16 46, i16 0, i16 36, i16 24, i16 90, i16 28, i16 26, i16 123, i16 0, i16 45, i16 29, i16 46, i16 0, i16 24, i16 30, i16 28, i16 26, i16 0, i16 0, i16 31, i16 29, i16 32, i16 34, i16 35, i16 30, i16 33, i16 0, i16 0, i16 36, i16 31, i16 0, i16 32, i16 34, i16 35, i16 0, i16 33, i16 0, i16 122, i16 36, i16 45, i16 121, i16 46, i16 45, i16 45, i16 46, i16 46, i16 0, i16 0, i16 120, i16 48, i16 0, i16 111, i16 0, i16 45, i16 0, i16 46, i16 0, i16 45, i16 0, i16 46, i16 48, i16 0, i16 0, i16 24, i16 0, i16 132, i16 26, i16 93, i16 0, i16 45, i16 29, i16 46, i16 0, i16 45, i16 30, i16 46, i16 0, i16 0, i16 0, i16 31, i16 0, i16 32, i16 34, i16 35, i16 0, i16 33, i16 0, i16 0, i16 36, i16 0, i16 48, i16 0, i16 0, i16 48, i16 48, i16 0, i16 24, i16 0, i16 97, i16 26, i16 0, i16 0, i16 0, i16 29, i16 48, i16 0, i16 0, i16 30, i16 48, i16 0, i16 0, i16 0, i16 31, i16 0, i16 32, i16 34, i16 35, i16 0, i16 33, i16 0, i16 48, i16 36, i16 0, i16 0, i16 48, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 42, i16 43, i16 0, i16 0, i16 0, i16 0, i16 47, i16 0, i16 44, i16 0, i16 0, i16 42, i16 43, i16 0, i16 0, i16 0, i16 0, i16 47, i16 0, i16 44, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 42, i16 43, i16 0, i16 42, i16 43, i16 0, i16 47, i16 0, i16 44, i16 47, i16 47, i16 44, i16 44, i16 0, i16 42, i16 43, i16 0, i16 0, i16 42, i16 43, i16 47, i16 0, i16 44, i16 0, i16 47, i16 0, i16 44, i16 0, i16 0, i16 0, i16 42, i16 43, i16 0, i16 0, i16 42, i16 0, i16 47, i16 0, i16 44, i16 0, i16 47, i16 0, i16 44], align 16
@yypact = global [166 x i16] [i16 -1000, i16 -7, i16 -1000, i16 -43, i16 -1000, i16 58, i16 -1000, i16 -250, i16 -1000, i16 -1000, i16 -1000, i16 423, i16 -1000, i16 -1000, i16 -1000, i16 -1000, i16 -1000, i16 29, i16 -1000, i16 28, i16 -1000, i16 26, i16 -1000, i16 -259, i16 162, i16 162, i16 -1000, i16 162, i16 -3, i16 -261, i16 27, i16 25, i16 24, i16 23, i16 -1000, i16 -1000, i16 -1000, i16 -1000, i16 26, i16 -1000, i16 -1000, i16 21, i16 -1000, i16 -1000, i16 162, i16 162, i16 162, i16 162, i16 162, i16 162, i16 20, i16 162, i16 19, i16 -45, i16 -1000, i16 87, i16 152, i16 -1000, i16 -1000, i16 409, i16 -1000, i16 435, i16 245, i16 162, i16 -1000, i16 -50, i16 -1000, i16 162, i16 162, i16 162, i16 16, i16 -1000, i16 -252, i16 162, i16 162, i16 -36, i16 -90, i16 -90, i16 -63, i16 -63, i16 13, i16 423, i16 162, i16 419, i16 162, i16 26, i16 87, i16 -1000, i16 -1000, i16 2, i16 -1000, i16 423, i16 162, i16 -1000, i16 10, i16 1, i16 423, i16 -4, i16 364, i16 408, i16 405, i16 375, i16 -1000, i16 8, i16 0, i16 -51, i16 409, i16 439, i16 -1000, i16 -16, i16 423, i16 -1000, i16 423, i16 -1000, i16 -1000, i16 152, i16 -36, i16 -1000, i16 212, i16 126, i16 -1000, i16 -1000, i16 -1000, i16 -1000, i16 -97, i16 -251, i16 -59, i16 -1000, i16 87, i16 7, i16 -1000, i16 423, i16 -5, i16 -1000, i16 -237, i16 -52, i16 -1000, i16 162, i16 -274, i16 87, i16 116, i16 -279, i16 -61, i16 -17, i16 -1000, i16 -1000, i16 -1000, i16 -1000, i16 -1000, i16 -252, i16 -1000, i16 -1000, i16 87, i16 26, i16 -31, i16 162, i16 -1000, i16 -44, i16 -1000, i16 -1000, i16 6, i16 -40, i16 -1000, i16 -1000, i16 87, i16 -1000], align 16
@yypgo = global [33 x i16] [i16 0, i16 125, i16 27, i16 124, i16 70, i16 21, i16 123, i16 122, i16 30, i16 121, i16 119, i16 118, i16 117, i16 22, i16 50, i16 115, i16 23, i16 114, i16 113, i16 111, i16 108, i16 107, i16 105, i16 104, i16 99, i16 94, i16 29, i16 93, i16 92, i16 89, i16 82, i16 81, i16 78], align 16
@yyr1 = global [98 x i16] [i16 0, i16 1, i16 1, i16 11, i16 11, i16 11, i16 12, i16 12, i16 12, i16 12, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 16, i16 16, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 17, i16 18, i16 19, i16 20, i16 14, i16 21, i16 14, i16 23, i16 24, i16 14, i16 14, i16 25, i16 14, i16 26, i16 26, i16 27, i16 27, i16 22, i16 28, i16 22, i16 29, i16 15, i16 6, i16 6, i16 7, i16 7, i16 7, i16 8, i16 8, i16 8, i16 8, i16 9, i16 9, i16 10, i16 10, i16 10, i16 10, i16 5, i16 5, i16 3, i16 3, i16 30, i16 2, i16 31, i16 2, i16 32, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4], align 16
@yyr2 = global [98 x i16] [i16 0, i16 0, i16 2, i16 2, i16 1, i16 2, i16 0, i16 1, i16 3, i16 2, i16 0, i16 1, i16 2, i16 3, i16 2, i16 3, i16 1, i16 2, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 4, i16 0, i16 0, i16 0, i16 0, i16 13, i16 0, i16 7, i16 0, i16 0, i16 7, i16 3, i16 0, i16 3, i16 1, i16 3, i16 1, i16 1, i16 0, i16 0, i16 3, i16 0, i16 12, i16 0, i16 1, i16 0, i16 3, i16 3, i16 1, i16 3, i16 3, i16 5, i16 0, i16 1, i16 1, i16 3, i16 3, i16 5, i16 0, i16 1, i16 0, i16 1, i16 0, i16 4, i16 0, i16 4, i16 0, i16 4, i16 2, i16 3, i16 3, i16 3, i16 3, i16 3, i16 2, i16 1, i16 1, i16 3, i16 4, i16 2, i16 2, i16 4, i16 4, i16 4, i16 3, i16 1, i16 4, i16 1, i16 1, i16 1, i16 1], align 16
@yychk = global [166 x i16] [i16 -1000, i16 -1, i16 -11, i16 -12, i16 -15, i16 256, i16 -16, i16 268, i16 -14, i16 283, i16 288, i16 -2, i16 261, i16 269, i16 286, i16 270, i16 284, i16 272, i16 273, i16 274, i16 275, i16 123, i16 287, i16 -4, i16 260, i16 45, i16 263, i16 40, i16 262, i16 267, i16 271, i16 276, i16 278, i16 282, i16 279, i16 280, i16 285, i16 257, i16 59, i16 257, i16 -14, i16 262, i16 258, i16 259, i16 266, i16 43, i16 45, i16 264, i16 94, i16 40, i16 -17, i16 40, i16 -23, i16 -13, i16 -16, i16 256, i16 -25, i16 265, i16 267, i16 -2, i16 -2, i16 -2, i16 40, i16 91, i16 -4, i16 262, i16 278, i16 40, i16 40, i16 40, i16 40, i16 -16, i16 40, i16 -31, i16 -32, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -3, i16 -2, i16 40, i16 -2, i16 40, i16 257, i16 59, i16 125, i16 -26, i16 -27, i16 261, i16 -2, i16 -30, i16 41, i16 -9, i16 -10, i16 -2, i16 262, i16 -2, i16 -2, i16 -2, i16 -2, i16 41, i16 -6, i16 -8, i16 262, i16 -2, i16 -2, i16 41, i16 -5, i16 -2, i16 41, i16 -2, i16 -16, i16 -14, i16 44, i16 -2, i16 41, i16 44, i16 91, i16 93, i16 41, i16 41, i16 41, i16 41, i16 44, i16 91, i16 59, i16 -21, i16 -24, i16 -26, i16 -2, i16 262, i16 93, i16 123, i16 262, i16 93, i16 -18, i16 -14, i16 41, i16 91, i16 257, i16 91, i16 -5, i16 -22, i16 277, i16 -14, i16 93, i16 -7, i16 281, i16 93, i16 59, i16 -28, i16 -29, i16 -8, i16 -19, i16 -14, i16 -13, i16 257, i16 59, i16 -5, i16 257, i16 41, i16 125, i16 -20, i16 -14], align 16
@yydef = global [166 x i16] [i16 1, i16 -2, i16 2, i16 0, i16 4, i16 0, i16 7, i16 0, i16 16, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 28, i16 0, i16 35, i16 10, i16 39, i16 82, i16 0, i16 0, i16 83, i16 0, i16 92, i16 0, i16 0, i16 0, i16 96, i16 0, i16 94, i16 95, i16 97, i16 3, i16 9, i16 5, i16 17, i16 0, i16 71, i16 73, i16 0, i16 0, i16 0, i16 0, i16 0, i16 67, i16 0, i16 0, i16 0, i16 0, i16 11, i16 0, i16 0, i16 69, i16 87, i16 75, i16 81, i16 0, i16 59, i16 0, i16 86, i16 92, i16 96, i16 0, i16 0, i16 0, i16 0, i16 8, i16 50, i16 0, i16 0, i16 76, i16 77, i16 78, i16 79, i16 80, i16 0, i16 68, i16 65, i16 0, i16 0, i16 12, i16 14, i16 38, i16 40, i16 41, i16 43, i16 44, i16 0, i16 84, i16 0, i16 60, i16 61, i16 92, i16 0, i16 0, i16 0, i16 0, i16 91, i16 0, i16 51, i16 55, i16 72, i16 74, i16 27, i16 0, i16 66, i16 33, i16 36, i16 13, i16 15, i16 0, i16 70, i16 85, i16 0, i16 0, i16 93, i16 88, i16 89, i16 90, i16 0, i16 0, i16 0, i16 29, i16 0, i16 0, i16 42, i16 63, i16 92, i16 62, i16 0, i16 57, i16 56, i16 65, i16 45, i16 0, i16 0, i16 52, i16 0, i16 0, i16 34, i16 46, i16 37, i16 64, i16 48, i16 0, i16 58, i16 30, i16 0, i16 10, i16 0, i16 65, i16 47, i16 0, i16 53, i16 54, i16 0, i16 12, i16 31, i16 49, i16 0, i16 32], align 16
@yychar = global i32 -1, align 4
@yynerrs = global i32 0, align 4
@yyerrflag = global i16 0, align 2
@yyv = common global [150 x %struct.YYSTYPE] zeroinitializer, align 16
@.str = private unnamed_addr constant [20 x i8] c"yacc stack overflow\00", align 1
@yyval = common global %struct.YYSTYPE zeroinitializer, align 8
@yylval = common global %struct.YYSTYPE zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"syntax error\00", align 1
@interactive = external global i8, align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [76 x i8] c"bc 1.02 (Mar 3, 92) Copyright (C) 1991, 1992 Free Software Foundation, Inc.\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"comparison in expression\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"W\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@break_label = external global i32, align 4
@.str.9 = private unnamed_addr constant [26 x i8] c"Break outside a for/while\00", align 1
@genstr = external global [80 x i8], align 16
@.str.10 = private unnamed_addr constant [6 x i8] c"J%1d:\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"Continue statement\00", align 1
@continue_label = external global i32, align 4
@.str.12 = private unnamed_addr constant [23 x i8] c"Continue outside a for\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"0R\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@next_label = external global i32, align 4
@.str.16 = private unnamed_addr constant [35 x i8] c"Comparison in first for expression\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"N%1d:\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"pN%1d:\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"B%1d:J%1d:\00", align 1
@.str.21 = private unnamed_addr constant [35 x i8] c"Comparison in third for expression\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"J%1d:N%1d:\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"pJ%1d:N%1d:\00", align 1
@if_label = external global i32, align 4
@.str.24 = private unnamed_addr constant [6 x i8] c"Z%1d:\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"print statement\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.28 = private unnamed_addr constant [28 x i8] c"else clause in if statement\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"J%d:N%1d:\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"F%d,%s.%s[\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"0R]\00", align 1
@.str.32 = private unnamed_addr constant [23 x i8] c"comparison in argument\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"K%d:\00", align 1
@.str.34 = private unnamed_addr constant [36 x i8] c"Missing expression in for statement\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.36 = private unnamed_addr constant [31 x i8] c"comparison in return expresion\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"DL%d:\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"l%d:\00", align 1
@.str.39 = private unnamed_addr constant [25 x i8] c"comparison in assignment\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"S%d:\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"s%d:\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"&& operator\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"DZ%d:p\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c"DZ%d:p1N%d:\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"|| operator\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"B%d:\00", align 1
@.str.48 = private unnamed_addr constant [19 x i8] c"B%d:0J%d:N%d:1N%d:\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"! operator\00", align 1
@.str.50 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.51 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.52 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.53 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.54 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.55 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.56 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.57 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.58 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.59 = private unnamed_addr constant [2 x i8] c"^\00", align 1
@.str.60 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c"L%d:\00", align 1
@.str.62 = private unnamed_addr constant [2 x i8] c"K\00", align 1
@.str.63 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.64 = private unnamed_addr constant [8 x i8] c"C%d,%s:\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"C%d:\00", align 1
@.str.66 = private unnamed_addr constant [10 x i8] c"DA%d:L%d:\00", align 1
@.str.67 = private unnamed_addr constant [10 x i8] c"DM%d:L%d:\00", align 1
@.str.68 = private unnamed_addr constant [9 x i8] c"i%d:l%d:\00", align 1
@.str.69 = private unnamed_addr constant [9 x i8] c"d%d:l%d:\00", align 1
@.str.70 = private unnamed_addr constant [7 x i8] c"DL%d:x\00", align 1
@.str.71 = private unnamed_addr constant [5 x i8] c"A%d:\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"M%d:\00", align 1
@.str.73 = private unnamed_addr constant [5 x i8] c"i%d:\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"d%d:\00", align 1
@.str.75 = private unnamed_addr constant [3 x i8] c"cL\00", align 1
@.str.76 = private unnamed_addr constant [3 x i8] c"cR\00", align 1
@.str.77 = private unnamed_addr constant [3 x i8] c"cS\00", align 1
@.str.78 = private unnamed_addr constant [14 x i8] c"read function\00", align 1
@.str.79 = private unnamed_addr constant [3 x i8] c"cI\00", align 1
@.str.80 = private unnamed_addr constant [24 x i8] c"comparison in subscript\00", align 1

; Function Attrs: nounwind uwtable
define i32 @yyparse() #0 {
entry:
  %retval = alloca i32, align 4
  %yys = alloca [150 x i16], align 16
  %yyj = alloca i16, align 2
  %yym = alloca i16, align 2
  %yypvt = alloca %struct.YYSTYPE*, align 8
  %yystate = alloca i16, align 2
  %yyps = alloca i16*, align 8
  %yyn = alloca i16, align 2
  %yypv = alloca %struct.YYSTYPE*, align 8
  %yyxi = alloca i16*, align 8
  %tmplab = alloca i32, align 4
  %length = alloca i32, align 4
  store i16 0, i16* %yystate, align 2
  store i32 -1, i32* @yychar, align 4
  store i32 0, i32* @yynerrs, align 4
  store i16 0, i16* @yyerrflag, align 2
  %arrayidx = getelementptr inbounds [150 x i16], [150 x i16]* %yys, i32 0, i64 -1
  store i16* %arrayidx, i16** %yyps, align 8
  store %struct.YYSTYPE* getelementptr inbounds ([150 x %struct.YYSTYPE], [150 x %struct.YYSTYPE]* @yyv, i32 0, i64 -1), %struct.YYSTYPE** %yypv, align 8
  br label %yystack

yystack:                                          ; preds = %sw.epilog.762, %if.then.108, %if.end.38, %entry
  %0 = load i16*, i16** %yyps, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %0, i32 1
  store i16* %incdec.ptr, i16** %yyps, align 8
  %arrayidx1 = getelementptr inbounds [150 x i16], [150 x i16]* %yys, i32 0, i64 150
  %cmp = icmp ugt i16* %incdec.ptr, %arrayidx1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %yystack
  call void (i8*, ...) @yyerror(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %yystack
  %1 = load i16, i16* %yystate, align 2
  %2 = load i16*, i16** %yyps, align 8
  store i16 %1, i16* %2, align 2
  %3 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypv, align 8
  %incdec.ptr2 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %3, i32 1
  store %struct.YYSTYPE* %incdec.ptr2, %struct.YYSTYPE** %yypv, align 8
  %4 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypv, align 8
  %5 = bitcast %struct.YYSTYPE* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* bitcast (%struct.YYSTYPE* @yyval to i8*), i64 24, i32 8, i1 false)
  br label %yynewstate

yynewstate:                                       ; preds = %if.end.121, %if.end
  %6 = load i16, i16* %yystate, align 2
  %idxprom = sext i16 %6 to i64
  %arrayidx3 = getelementptr inbounds [166 x i16], [166 x i16]* @yypact, i32 0, i64 %idxprom
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
  %cmp22 = icmp sge i32 %conv21, 706
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %lor.lhs.false, %if.end.15
  br label %yydefault

if.end.25:                                        ; preds = %lor.lhs.false
  %13 = load i16, i16* %yyn, align 2
  %idxprom26 = sext i16 %13 to i64
  %arrayidx27 = getelementptr inbounds [706 x i16], [706 x i16]* @yyact, i32 0, i64 %idxprom26
  %14 = load i16, i16* %arrayidx27, align 2
  store i16 %14, i16* %yyn, align 2
  %idxprom28 = sext i16 %14 to i64
  %arrayidx29 = getelementptr inbounds [166 x i16], [166 x i16]* @yychk, i32 0, i64 %idxprom28
  %15 = load i16, i16* %arrayidx29, align 2
  %conv30 = sext i16 %15 to i32
  %16 = load i32, i32* @yychar, align 4
  %cmp31 = icmp eq i32 %conv30, %16
  br i1 %cmp31, label %if.then.33, label %if.end.39

if.then.33:                                       ; preds = %if.end.25
  store i32 -1, i32* @yychar, align 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.YYSTYPE* @yyval to i8*), i8* bitcast (%struct.YYSTYPE* @yylval to i8*), i64 24, i32 8, i1 false)
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
  %arrayidx41 = getelementptr inbounds [166 x i16], [166 x i16]* @yydef, i32 0, i64 %idxprom40
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
  store i16* getelementptr inbounds ([10 x i16], [10 x i16]* @yyexca, i32 0, i32 0), i16** %yyxi, align 8
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
  call void (i8*, ...) @yyerror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0))
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
  %arrayidx90 = getelementptr inbounds [166 x i16], [166 x i16]* @yypact, i32 0, i64 %idxprom89
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
  %cmp98 = icmp slt i32 %conv97, 706
  br i1 %cmp98, label %land.lhs.true.100, label %if.end.111

land.lhs.true.100:                                ; preds = %land.lhs.true
  %46 = load i16, i16* %yyn, align 2
  %idxprom101 = sext i16 %46 to i64
  %arrayidx102 = getelementptr inbounds [706 x i16], [706 x i16]* @yyact, i32 0, i64 %idxprom101
  %47 = load i16, i16* %arrayidx102, align 2
  %idxprom103 = sext i16 %47 to i64
  %arrayidx104 = getelementptr inbounds [166 x i16], [166 x i16]* @yychk, i32 0, i64 %idxprom103
  %48 = load i16, i16* %arrayidx104, align 2
  %conv105 = sext i16 %48 to i32
  %cmp106 = icmp eq i32 %conv105, 256
  br i1 %cmp106, label %if.then.108, label %if.end.111

if.then.108:                                      ; preds = %land.lhs.true.100
  %49 = load i16, i16* %yyn, align 2
  %idxprom109 = sext i16 %49 to i64
  %arrayidx110 = getelementptr inbounds [706 x i16], [706 x i16]* @yyact, i32 0, i64 %idxprom109
  %50 = load i16, i16* %arrayidx110, align 2
  store i16 %50, i16* %yystate, align 2
  br label %yystack

if.end.111:                                       ; preds = %land.lhs.true.100, %land.lhs.true, %while.body.88
  %51 = load i16*, i16** %yyps, align 8
  %52 = load i16, i16* %51, align 2
  %idxprom112 = sext i16 %52 to i64
  %arrayidx113 = getelementptr inbounds [166 x i16], [166 x i16]* @yypact, i32 0, i64 %idxprom112
  %53 = load i16, i16* %arrayidx113, align 2
  store i16 %53, i16* %yyn, align 2
  %54 = load i16*, i16** %yyps, align 8
  %incdec.ptr114 = getelementptr inbounds i16, i16* %54, i32 -1
  store i16* %incdec.ptr114, i16** %yyps, align 8
  %55 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypv, align 8
  %incdec.ptr115 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %55, i32 -1
  store %struct.YYSTYPE* %incdec.ptr115, %struct.YYSTYPE** %yypv, align 8
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
  %arrayidx124 = getelementptr inbounds [98 x i16], [98 x i16]* @yyr2, i32 0, i64 %idxprom123
  %58 = load i16, i16* %arrayidx124, align 2
  %conv125 = sext i16 %58 to i32
  %59 = load i16*, i16** %yyps, align 8
  %idx.ext = sext i32 %conv125 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr126 = getelementptr inbounds i16, i16* %59, i64 %idx.neg
  store i16* %add.ptr126, i16** %yyps, align 8
  %60 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypv, align 8
  store %struct.YYSTYPE* %60, %struct.YYSTYPE** %yypvt, align 8
  %61 = load i16, i16* %yyn, align 2
  %idxprom127 = sext i16 %61 to i64
  %arrayidx128 = getelementptr inbounds [98 x i16], [98 x i16]* @yyr2, i32 0, i64 %idxprom127
  %62 = load i16, i16* %arrayidx128, align 2
  %conv129 = sext i16 %62 to i32
  %63 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypv, align 8
  %idx.ext130 = sext i32 %conv129 to i64
  %idx.neg131 = sub i64 0, %idx.ext130
  %add.ptr132 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %63, i64 %idx.neg131
  store %struct.YYSTYPE* %add.ptr132, %struct.YYSTYPE** %yypv, align 8
  %64 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypv, align 8
  %arrayidx133 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %64, i64 1
  %65 = bitcast %struct.YYSTYPE* %arrayidx133 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.YYSTYPE* @yyval to i8*), i8* %65, i64 24, i32 8, i1 false)
  %66 = load i16, i16* %yyn, align 2
  store i16 %66, i16* %yym, align 2
  %67 = load i16, i16* %yyn, align 2
  %idxprom134 = sext i16 %67 to i64
  %arrayidx135 = getelementptr inbounds [98 x i16], [98 x i16]* @yyr1, i32 0, i64 %idxprom134
  %68 = load i16, i16* %arrayidx135, align 2
  store i16 %68, i16* %yyn, align 2
  %69 = load i16, i16* %yyn, align 2
  %idxprom136 = sext i16 %69 to i64
  %arrayidx137 = getelementptr inbounds [33 x i16], [33 x i16]* @yypgo, i32 0, i64 %idxprom136
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
  %cmp144 = icmp sge i32 %conv143, 706
  br i1 %cmp144, label %if.then.155, label %lor.lhs.false.146

lor.lhs.false.146:                                ; preds = %if.end.122
  %74 = load i16, i16* %yyj, align 2
  %idxprom147 = sext i16 %74 to i64
  %arrayidx148 = getelementptr inbounds [706 x i16], [706 x i16]* @yyact, i32 0, i64 %idxprom147
  %75 = load i16, i16* %arrayidx148, align 2
  store i16 %75, i16* %yystate, align 2
  %idxprom149 = sext i16 %75 to i64
  %arrayidx150 = getelementptr inbounds [166 x i16], [166 x i16]* @yychk, i32 0, i64 %idxprom149
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
  %arrayidx157 = getelementptr inbounds [33 x i16], [33 x i16]* @yypgo, i32 0, i64 %idxprom156
  %79 = load i16, i16* %arrayidx157, align 2
  %idxprom158 = sext i16 %79 to i64
  %arrayidx159 = getelementptr inbounds [706 x i16], [706 x i16]* @yyact, i32 0, i64 %idxprom158
  %80 = load i16, i16* %arrayidx159, align 2
  store i16 %80, i16* %yystate, align 2
  br label %if.end.160

if.end.160:                                       ; preds = %if.then.155, %lor.lhs.false.146
  %81 = load i16, i16* %yym, align 2
  %conv161 = sext i16 %81 to i32
  switch i32 %conv161, label %sw.epilog.762 [
    i32 1, label %sw.bb.162
    i32 3, label %sw.bb.166
    i32 4, label %sw.bb.167
    i32 5, label %sw.bb.168
    i32 6, label %sw.bb.169
    i32 10, label %sw.bb.170
    i32 17, label %sw.bb.171
    i32 18, label %sw.bb.173
    i32 19, label %sw.bb.174
    i32 20, label %sw.bb.175
    i32 21, label %sw.bb.187
    i32 22, label %sw.bb.191
    i32 23, label %sw.bb.198
    i32 24, label %sw.bb.205
    i32 25, label %sw.bb.206
    i32 26, label %sw.bb.207
    i32 27, label %sw.bb.208
    i32 28, label %sw.bb.209
    i32 29, label %sw.bb.213
    i32 30, label %sw.bb.236
    i32 31, label %sw.bb.251
    i32 32, label %sw.bb.275
    i32 33, label %sw.bb.281
    i32 34, label %sw.bb.286
    i32 35, label %sw.bb.290
    i32 36, label %sw.bb.297
    i32 37, label %sw.bb.302
    i32 38, label %sw.bb.308
    i32 39, label %sw.bb.309
    i32 43, label %sw.bb.310
    i32 44, label %sw.bb.315
    i32 46, label %sw.bb.316
    i32 48, label %sw.bb.325
    i32 49, label %sw.bb.345
    i32 50, label %sw.bb.348
    i32 52, label %sw.bb.349
    i32 53, label %sw.bb.350
    i32 54, label %sw.bb.353
    i32 55, label %sw.bb.356
    i32 56, label %sw.bb.362
    i32 57, label %sw.bb.368
    i32 58, label %sw.bb.376
    i32 59, label %sw.bb.384
    i32 61, label %sw.bb.385
    i32 62, label %sw.bb.393
    i32 63, label %sw.bb.400
    i32 64, label %sw.bb.410
    i32 65, label %sw.bb.419
    i32 67, label %sw.bb.420
    i32 68, label %sw.bb.421
    i32 69, label %sw.bb.428
    i32 70, label %sw.bb.449
    i32 71, label %sw.bb.481
    i32 72, label %sw.bb.488
    i32 73, label %sw.bb.498
    i32 74, label %sw.bb.505
    i32 75, label %sw.bb.517
    i32 76, label %sw.bb.520
    i32 77, label %sw.bb.547
    i32 78, label %sw.bb.553
    i32 79, label %sw.bb.559
    i32 80, label %sw.bb.567
    i32 81, label %sw.bb.573
    i32 82, label %sw.bb.576
    i32 83, label %sw.bb.591
    i32 84, label %sw.bb.622
    i32 85, label %sw.bb.626
    i32 86, label %sw.bb.647
    i32 87, label %sw.bb.695
    i32 88, label %sw.bb.740
    i32 89, label %sw.bb.741
    i32 90, label %sw.bb.742
    i32 91, label %sw.bb.743
    i32 92, label %sw.bb.744
    i32 93, label %sw.bb.748
    i32 94, label %sw.bb.758
    i32 95, label %sw.bb.759
    i32 96, label %sw.bb.760
    i32 97, label %sw.bb.761
  ]

sw.bb.162:                                        ; preds = %if.end.160
  store i32 0, i32* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 2), align 4
  %82 = load i8, i8* @interactive, align 1
  %tobool = icmp ne i8 %82, 0
  br i1 %tobool, label %if.then.163, label %if.end.165

if.then.163:                                      ; preds = %sw.bb.162
  %call164 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.3, i32 0, i32 0))
  call void @welcome()
  br label %if.end.165

if.end.165:                                       ; preds = %if.then.163, %sw.bb.162
  br label %sw.epilog.762

sw.bb.166:                                        ; preds = %if.end.160
  call void @run_code()
  br label %sw.epilog.762

sw.bb.167:                                        ; preds = %if.end.160
  call void @run_code()
  br label %sw.epilog.762

sw.bb.168:                                        ; preds = %if.end.160
  store i16 0, i16* @yyerrflag, align 2
  call void @init_gen()
  br label %sw.epilog.762

sw.bb.169:                                        ; preds = %if.end.160
  store i32 0, i32* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 2), align 4
  br label %sw.epilog.762

sw.bb.170:                                        ; preds = %if.end.160
  store i32 0, i32* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 2), align 4
  br label %sw.epilog.762

sw.bb.171:                                        ; preds = %if.end.160
  %83 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx172 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %83, i64 0
  %i_value = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx172, i32 0, i32 2
  %84 = load i32, i32* %i_value, align 4
  store i32 %84, i32* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 2), align 4
  br label %sw.epilog.762

sw.bb.173:                                        ; preds = %if.end.160
  call void @warranty(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0))
  br label %sw.epilog.762

sw.bb.174:                                        ; preds = %if.end.160
  call void @limits()
  br label %sw.epilog.762

sw.bb.175:                                        ; preds = %if.end.160
  %85 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx176 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %85, i64 0
  %i_value177 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx176, i32 0, i32 2
  %86 = load i32, i32* %i_value177, align 4
  %and = and i32 %86, 2
  %tobool178 = icmp ne i32 %and, 0
  br i1 %tobool178, label %if.then.179, label %if.end.180

if.then.179:                                      ; preds = %sw.bb.175
  call void (i8*, ...) @warn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.180

if.end.180:                                       ; preds = %if.then.179, %sw.bb.175
  %87 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx181 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %87, i64 0
  %i_value182 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx181, i32 0, i32 2
  %88 = load i32, i32* %i_value182, align 4
  %and183 = and i32 %88, 1
  %tobool184 = icmp ne i32 %and183, 0
  br i1 %tobool184, label %if.then.185, label %if.else

if.then.185:                                      ; preds = %if.end.180
  call void @generate(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.186

if.else:                                          ; preds = %if.end.180
  call void @generate(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.186

if.end.186:                                       ; preds = %if.else, %if.then.185
  br label %sw.epilog.762

sw.bb.187:                                        ; preds = %if.end.160
  store i32 0, i32* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 2), align 4
  call void @generate(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0))
  %89 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx188 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %89, i64 0
  %s_value = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx188, i32 0, i32 0
  %90 = load i8*, i8** %s_value, align 8
  call void @generate(i8* %90)
  %91 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx189 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %91, i64 0
  %s_value190 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx189, i32 0, i32 0
  %92 = load i8*, i8** %s_value190, align 8
  call void @free(i8* %92) #2
  br label %sw.epilog.762

sw.bb.191:                                        ; preds = %if.end.160
  %93 = load i32, i32* @break_label, align 4
  %cmp192 = icmp eq i32 %93, 0
  br i1 %cmp192, label %if.then.194, label %if.else.195

if.then.194:                                      ; preds = %sw.bb.191
  call void (i8*, ...) @yyerror(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.197

if.else.195:                                      ; preds = %sw.bb.191
  %94 = load i32, i32* @break_label, align 4
  %call196 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i32 %94) #2
  call void @generate(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i32 0, i32 0))
  br label %if.end.197

if.end.197:                                       ; preds = %if.else.195, %if.then.194
  br label %sw.epilog.762

sw.bb.198:                                        ; preds = %if.end.160
  call void (i8*, ...) @warn(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i32 0, i32 0))
  %95 = load i32, i32* @continue_label, align 4
  %cmp199 = icmp eq i32 %95, 0
  br i1 %cmp199, label %if.then.201, label %if.else.202

if.then.201:                                      ; preds = %sw.bb.198
  call void (i8*, ...) @yyerror(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.204

if.else.202:                                      ; preds = %sw.bb.198
  %96 = load i32, i32* @continue_label, align 4
  %call203 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i32 %96) #2
  call void @generate(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i32 0, i32 0))
  br label %if.end.204

if.end.204:                                       ; preds = %if.else.202, %if.then.201
  br label %sw.epilog.762

sw.bb.205:                                        ; preds = %if.end.160
  call void @exit(i32 0) #6
  unreachable

sw.bb.206:                                        ; preds = %if.end.160
  call void @generate(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0))
  br label %sw.epilog.762

sw.bb.207:                                        ; preds = %if.end.160
  call void @generate(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0))
  br label %sw.epilog.762

sw.bb.208:                                        ; preds = %if.end.160
  call void @generate(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0))
  br label %sw.epilog.762

sw.bb.209:                                        ; preds = %if.end.160
  %97 = load i32, i32* @break_label, align 4
  %98 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx210 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %98, i64 0
  %i_value211 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx210, i32 0, i32 2
  store i32 %97, i32* %i_value211, align 4
  %99 = load i32, i32* @next_label, align 4
  %inc212 = add nsw i32 %99, 1
  store i32 %inc212, i32* @next_label, align 4
  store i32 %99, i32* @break_label, align 4
  br label %sw.epilog.762

sw.bb.213:                                        ; preds = %if.end.160
  %100 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx214 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %100, i64 -1
  %i_value215 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx214, i32 0, i32 2
  %101 = load i32, i32* %i_value215, align 4
  %cmp216 = icmp sgt i32 %101, 1
  br i1 %cmp216, label %if.then.218, label %if.end.219

if.then.218:                                      ; preds = %sw.bb.213
  call void (i8*, ...) @warn(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.16, i32 0, i32 0))
  br label %if.end.219

if.end.219:                                       ; preds = %if.then.218, %sw.bb.213
  %102 = load i32, i32* @next_label, align 4
  %inc220 = add nsw i32 %102, 1
  store i32 %inc220, i32* @next_label, align 4
  %103 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx221 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %103, i64 -1
  %i_value222 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx221, i32 0, i32 2
  store i32 %102, i32* %i_value222, align 4
  %104 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx223 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %104, i64 -1
  %i_value224 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx223, i32 0, i32 2
  %105 = load i32, i32* %i_value224, align 4
  %cmp225 = icmp slt i32 %105, 0
  br i1 %cmp225, label %if.then.227, label %if.else.231

if.then.227:                                      ; preds = %if.end.219
  %106 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx228 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %106, i64 -1
  %i_value229 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx228, i32 0, i32 2
  %107 = load i32, i32* %i_value229, align 4
  %call230 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i32 %107) #2
  br label %if.end.235

if.else.231:                                      ; preds = %if.end.219
  %108 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx232 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %108, i64 -1
  %i_value233 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx232, i32 0, i32 2
  %109 = load i32, i32* %i_value233, align 4
  %call234 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), i32 %109) #2
  br label %if.end.235

if.end.235:                                       ; preds = %if.else.231, %if.then.227
  call void @generate(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i32 0, i32 0))
  br label %sw.epilog.762

sw.bb.236:                                        ; preds = %if.end.160
  %110 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx237 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %110, i64 -1
  %i_value238 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx237, i32 0, i32 2
  %111 = load i32, i32* %i_value238, align 4
  %cmp239 = icmp slt i32 %111, 0
  br i1 %cmp239, label %if.then.241, label %if.end.242

if.then.241:                                      ; preds = %sw.bb.236
  call void @generate(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0))
  br label %if.end.242

if.end.242:                                       ; preds = %if.then.241, %sw.bb.236
  %112 = load i32, i32* @next_label, align 4
  %inc243 = add nsw i32 %112, 1
  store i32 %inc243, i32* @next_label, align 4
  %113 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx244 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %113, i64 -1
  %i_value245 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx244, i32 0, i32 2
  store i32 %112, i32* %i_value245, align 4
  %114 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx246 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %114, i64 -1
  %i_value247 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx246, i32 0, i32 2
  %115 = load i32, i32* %i_value247, align 4
  %116 = load i32, i32* @break_label, align 4
  %call248 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i32 0, i32 0), i32 %115, i32 %116) #2
  call void @generate(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i32 0, i32 0))
  %117 = load i32, i32* @continue_label, align 4
  store i32 %117, i32* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 2), align 4
  %118 = load i32, i32* @next_label, align 4
  %inc249 = add nsw i32 %118, 1
  store i32 %inc249, i32* @next_label, align 4
  store i32 %118, i32* @continue_label, align 4
  %119 = load i32, i32* @continue_label, align 4
  %call250 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i32 %119) #2
  call void @generate(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i32 0, i32 0))
  br label %sw.epilog.762

sw.bb.251:                                        ; preds = %if.end.160
  %120 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx252 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %120, i64 -1
  %i_value253 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx252, i32 0, i32 2
  %121 = load i32, i32* %i_value253, align 4
  %cmp254 = icmp sgt i32 %121, 1
  br i1 %cmp254, label %if.then.256, label %if.end.257

if.then.256:                                      ; preds = %sw.bb.251
  call void (i8*, ...) @warn(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.21, i32 0, i32 0))
  br label %if.end.257

if.end.257:                                       ; preds = %if.then.256, %sw.bb.251
  %122 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx258 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %122, i64 -1
  %i_value259 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx258, i32 0, i32 2
  %123 = load i32, i32* %i_value259, align 4
  %cmp260 = icmp slt i32 %123, 0
  br i1 %cmp260, label %if.then.262, label %if.else.268

if.then.262:                                      ; preds = %if.end.257
  %124 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx263 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %124, i64 -7
  %i_value264 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx263, i32 0, i32 2
  %125 = load i32, i32* %i_value264, align 4
  %126 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx265 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %126, i64 -4
  %i_value266 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx265, i32 0, i32 2
  %127 = load i32, i32* %i_value266, align 4
  %call267 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0), i32 %125, i32 %127) #2
  br label %if.end.274

if.else.268:                                      ; preds = %if.end.257
  %128 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx269 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %128, i64 -7
  %i_value270 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx269, i32 0, i32 2
  %129 = load i32, i32* %i_value270, align 4
  %130 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx271 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %130, i64 -4
  %i_value272 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx271, i32 0, i32 2
  %131 = load i32, i32* %i_value272, align 4
  %call273 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i32 0, i32 0), i32 %129, i32 %131) #2
  br label %if.end.274

if.end.274:                                       ; preds = %if.else.268, %if.then.262
  call void @generate(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i32 0, i32 0))
  br label %sw.epilog.762

sw.bb.275:                                        ; preds = %if.end.160
  %132 = load i32, i32* @continue_label, align 4
  %133 = load i32, i32* @break_label, align 4
  %call276 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0), i32 %132, i32 %133) #2
  call void @generate(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i32 0, i32 0))
  %134 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx277 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %134, i64 -12
  %i_value278 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx277, i32 0, i32 2
  %135 = load i32, i32* %i_value278, align 4
  store i32 %135, i32* @break_label, align 4
  %136 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx279 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %136, i64 -4
  %i_value280 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx279, i32 0, i32 2
  %137 = load i32, i32* %i_value280, align 4
  store i32 %137, i32* @continue_label, align 4
  br label %sw.epilog.762

sw.bb.281:                                        ; preds = %if.end.160
  %138 = load i32, i32* @if_label, align 4
  %139 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx282 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %139, i64 -1
  %i_value283 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx282, i32 0, i32 2
  store i32 %138, i32* %i_value283, align 4
  %140 = load i32, i32* @next_label, align 4
  %inc284 = add nsw i32 %140, 1
  store i32 %inc284, i32* @next_label, align 4
  store i32 %140, i32* @if_label, align 4
  %141 = load i32, i32* @if_label, align 4
  %call285 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %141) #2
  call void @generate(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i32 0, i32 0))
  br label %sw.epilog.762

sw.bb.286:                                        ; preds = %if.end.160
  %142 = load i32, i32* @if_label, align 4
  %call287 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i32 %142) #2
  call void @generate(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i32 0, i32 0))
  %143 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx288 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %143, i64 -4
  %i_value289 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx288, i32 0, i32 2
  %144 = load i32, i32* %i_value289, align 4
  store i32 %144, i32* @if_label, align 4
  br label %sw.epilog.762

sw.bb.290:                                        ; preds = %if.end.160
  %145 = load i32, i32* @next_label, align 4
  %inc291 = add nsw i32 %145, 1
  store i32 %inc291, i32* @next_label, align 4
  %146 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx292 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %146, i64 0
  %i_value293 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx292, i32 0, i32 2
  store i32 %145, i32* %i_value293, align 4
  %147 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx294 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %147, i64 0
  %i_value295 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx294, i32 0, i32 2
  %148 = load i32, i32* %i_value295, align 4
  %call296 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i32 %148) #2
  call void @generate(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i32 0, i32 0))
  br label %sw.epilog.762

sw.bb.297:                                        ; preds = %if.end.160
  %149 = load i32, i32* @break_label, align 4
  %150 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx298 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %150, i64 0
  %i_value299 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx298, i32 0, i32 2
  store i32 %149, i32* %i_value299, align 4
  %151 = load i32, i32* @next_label, align 4
  %inc300 = add nsw i32 %151, 1
  store i32 %inc300, i32* @next_label, align 4
  store i32 %151, i32* @break_label, align 4
  %152 = load i32, i32* @break_label, align 4
  %call301 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %152) #2
  call void @generate(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i32 0, i32 0))
  br label %sw.epilog.762

sw.bb.302:                                        ; preds = %if.end.160
  %153 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx303 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %153, i64 -6
  %i_value304 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx303, i32 0, i32 2
  %154 = load i32, i32* %i_value304, align 4
  %155 = load i32, i32* @break_label, align 4
  %call305 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0), i32 %154, i32 %155) #2
  call void @generate(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i32 0, i32 0))
  %156 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx306 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %156, i64 -3
  %i_value307 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx306, i32 0, i32 2
  %157 = load i32, i32* %i_value307, align 4
  store i32 %157, i32* @break_label, align 4
  br label %sw.epilog.762

sw.bb.308:                                        ; preds = %if.end.160
  store i32 0, i32* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 2), align 4
  br label %sw.epilog.762

sw.bb.309:                                        ; preds = %if.end.160
  call void (i8*, ...) @warn(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i32 0, i32 0))
  br label %sw.epilog.762

sw.bb.310:                                        ; preds = %if.end.160
  call void @generate(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i32 0, i32 0))
  %158 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx311 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %158, i64 0
  %s_value312 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx311, i32 0, i32 0
  %159 = load i8*, i8** %s_value312, align 8
  call void @generate(i8* %159)
  %160 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx313 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %160, i64 0
  %s_value314 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx313, i32 0, i32 0
  %161 = load i8*, i8** %s_value314, align 8
  call void @free(i8* %161) #2
  br label %sw.epilog.762

sw.bb.315:                                        ; preds = %if.end.160
  call void @generate(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0))
  br label %sw.epilog.762

sw.bb.316:                                        ; preds = %if.end.160
  call void (i8*, ...) @warn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.28, i32 0, i32 0))
  %162 = load i32, i32* @next_label, align 4
  %inc317 = add nsw i32 %162, 1
  store i32 %inc317, i32* @next_label, align 4
  %163 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx318 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %163, i64 0
  %i_value319 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx318, i32 0, i32 2
  store i32 %162, i32* %i_value319, align 4
  %164 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx320 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %164, i64 0
  %i_value321 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx320, i32 0, i32 2
  %165 = load i32, i32* %i_value321, align 4
  %166 = load i32, i32* @if_label, align 4
  %call322 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i32 %165, i32 %166) #2
  call void @generate(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i32 0, i32 0))
  %167 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx323 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %167, i64 0
  %i_value324 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx323, i32 0, i32 2
  %168 = load i32, i32* %i_value324, align 4
  store i32 %168, i32* @if_label, align 4
  br label %sw.epilog.762

sw.bb.325:                                        ; preds = %if.end.160
  %169 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx326 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %169, i64 -4
  %a_value = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx326, i32 0, i32 3
  %170 = load %struct.arg_list*, %struct.arg_list** %a_value, align 8
  %171 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx327 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %171, i64 0
  %a_value328 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx327, i32 0, i32 3
  %172 = load %struct.arg_list*, %struct.arg_list** %a_value328, align 8
  call void @check_params(%struct.arg_list* %170, %struct.arg_list* %172)
  %173 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx329 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %173, i64 -6
  %s_value330 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx329, i32 0, i32 0
  %174 = load i8*, i8** %s_value330, align 8
  %call331 = call i32 @lookup(i8* %174, i32 2)
  %175 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx332 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %175, i64 -4
  %a_value333 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx332, i32 0, i32 3
  %176 = load %struct.arg_list*, %struct.arg_list** %a_value333, align 8
  %call334 = call i8* @arg_str(%struct.arg_list* %176, i32 1)
  %177 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx335 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %177, i64 0
  %a_value336 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx335, i32 0, i32 3
  %178 = load %struct.arg_list*, %struct.arg_list** %a_value336, align 8
  %call337 = call i8* @arg_str(%struct.arg_list* %178, i32 1)
  %call338 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i32 0, i32 0), i32 %call331, i8* %call334, i8* %call337) #2
  call void @generate(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i32 0, i32 0))
  %179 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx339 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %179, i64 -4
  %a_value340 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx339, i32 0, i32 3
  %180 = load %struct.arg_list*, %struct.arg_list** %a_value340, align 8
  call void @free_args(%struct.arg_list* %180)
  %181 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx341 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %181, i64 0
  %a_value342 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx341, i32 0, i32 3
  %182 = load %struct.arg_list*, %struct.arg_list** %a_value342, align 8
  call void @free_args(%struct.arg_list* %182)
  %183 = load i32, i32* @next_label, align 4
  %184 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx343 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %184, i64 -7
  %i_value344 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx343, i32 0, i32 2
  store i32 %183, i32* %i_value344, align 4
  store i32 0, i32* @next_label, align 4
  br label %sw.epilog.762

sw.bb.345:                                        ; preds = %if.end.160
  call void @generate(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i32 0, i32 0))
  %185 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx346 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %185, i64 -11
  %i_value347 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx346, i32 0, i32 2
  %186 = load i32, i32* %i_value347, align 4
  store i32 %186, i32* @next_label, align 4
  br label %sw.epilog.762

sw.bb.348:                                        ; preds = %if.end.160
  store %struct.arg_list* null, %struct.arg_list** getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 3), align 8
  br label %sw.epilog.762

sw.bb.349:                                        ; preds = %if.end.160
  store %struct.arg_list* null, %struct.arg_list** getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 3), align 8
  br label %sw.epilog.762

sw.bb.350:                                        ; preds = %if.end.160
  %187 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx351 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %187, i64 -1
  %a_value352 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx351, i32 0, i32 3
  %188 = load %struct.arg_list*, %struct.arg_list** %a_value352, align 8
  store %struct.arg_list* %188, %struct.arg_list** getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 3), align 8
  br label %sw.epilog.762

sw.bb.353:                                        ; preds = %if.end.160
  %189 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx354 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %189, i64 -1
  %a_value355 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx354, i32 0, i32 3
  %190 = load %struct.arg_list*, %struct.arg_list** %a_value355, align 8
  store %struct.arg_list* %190, %struct.arg_list** getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 3), align 8
  br label %sw.epilog.762

sw.bb.356:                                        ; preds = %if.end.160
  %191 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx357 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %191, i64 0
  %s_value358 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx357, i32 0, i32 0
  %192 = load i8*, i8** %s_value358, align 8
  %call359 = call i32 @lookup(i8* %192, i32 0)
  %conv360 = trunc i32 %call359 to i8
  %call361 = call %struct.arg_list* @nextarg(%struct.arg_list* null, i8 signext %conv360)
  store %struct.arg_list* %call361, %struct.arg_list** getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 3), align 8
  br label %sw.epilog.762

sw.bb.362:                                        ; preds = %if.end.160
  %193 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx363 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %193, i64 -2
  %s_value364 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx363, i32 0, i32 0
  %194 = load i8*, i8** %s_value364, align 8
  %call365 = call i32 @lookup(i8* %194, i32 1)
  %conv366 = trunc i32 %call365 to i8
  %call367 = call %struct.arg_list* @nextarg(%struct.arg_list* null, i8 signext %conv366)
  store %struct.arg_list* %call367, %struct.arg_list** getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 3), align 8
  br label %sw.epilog.762

sw.bb.368:                                        ; preds = %if.end.160
  %195 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx369 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %195, i64 -2
  %a_value370 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx369, i32 0, i32 3
  %196 = load %struct.arg_list*, %struct.arg_list** %a_value370, align 8
  %197 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx371 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %197, i64 0
  %s_value372 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx371, i32 0, i32 0
  %198 = load i8*, i8** %s_value372, align 8
  %call373 = call i32 @lookup(i8* %198, i32 0)
  %conv374 = trunc i32 %call373 to i8
  %call375 = call %struct.arg_list* @nextarg(%struct.arg_list* %196, i8 signext %conv374)
  store %struct.arg_list* %call375, %struct.arg_list** getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 3), align 8
  br label %sw.epilog.762

sw.bb.376:                                        ; preds = %if.end.160
  %199 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx377 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %199, i64 -4
  %a_value378 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx377, i32 0, i32 3
  %200 = load %struct.arg_list*, %struct.arg_list** %a_value378, align 8
  %201 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx379 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %201, i64 -2
  %s_value380 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx379, i32 0, i32 0
  %202 = load i8*, i8** %s_value380, align 8
  %call381 = call i32 @lookup(i8* %202, i32 1)
  %conv382 = trunc i32 %call381 to i8
  %call383 = call %struct.arg_list* @nextarg(%struct.arg_list* %200, i8 signext %conv382)
  store %struct.arg_list* %call383, %struct.arg_list** getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 3), align 8
  br label %sw.epilog.762

sw.bb.384:                                        ; preds = %if.end.160
  store %struct.arg_list* null, %struct.arg_list** getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 3), align 8
  br label %sw.epilog.762

sw.bb.385:                                        ; preds = %if.end.160
  %203 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx386 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %203, i64 0
  %i_value387 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx386, i32 0, i32 2
  %204 = load i32, i32* %i_value387, align 4
  %cmp388 = icmp sgt i32 %204, 1
  br i1 %cmp388, label %if.then.390, label %if.end.391

if.then.390:                                      ; preds = %sw.bb.385
  call void (i8*, ...) @warn(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.32, i32 0, i32 0))
  br label %if.end.391

if.end.391:                                       ; preds = %if.then.390, %sw.bb.385
  %call392 = call %struct.arg_list* @nextarg(%struct.arg_list* null, i8 signext 0)
  store %struct.arg_list* %call392, %struct.arg_list** getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 3), align 8
  br label %sw.epilog.762

sw.bb.393:                                        ; preds = %if.end.160
  %205 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx394 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %205, i64 -2
  %s_value395 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx394, i32 0, i32 0
  %206 = load i8*, i8** %s_value395, align 8
  %call396 = call i32 @lookup(i8* %206, i32 1)
  %sub397 = sub nsw i32 0, %call396
  %call398 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0), i32 %sub397) #2
  call void @generate(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i32 0, i32 0))
  %call399 = call %struct.arg_list* @nextarg(%struct.arg_list* null, i8 signext 1)
  store %struct.arg_list* %call399, %struct.arg_list** getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 3), align 8
  br label %sw.epilog.762

sw.bb.400:                                        ; preds = %if.end.160
  %207 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx401 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %207, i64 0
  %i_value402 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx401, i32 0, i32 2
  %208 = load i32, i32* %i_value402, align 4
  %cmp403 = icmp sgt i32 %208, 1
  br i1 %cmp403, label %if.then.405, label %if.end.406

if.then.405:                                      ; preds = %sw.bb.400
  call void (i8*, ...) @warn(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.32, i32 0, i32 0))
  br label %if.end.406

if.end.406:                                       ; preds = %if.then.405, %sw.bb.400
  %209 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx407 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %209, i64 -2
  %a_value408 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx407, i32 0, i32 3
  %210 = load %struct.arg_list*, %struct.arg_list** %a_value408, align 8
  %call409 = call %struct.arg_list* @nextarg(%struct.arg_list* %210, i8 signext 0)
  store %struct.arg_list* %call409, %struct.arg_list** getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 3), align 8
  br label %sw.epilog.762

sw.bb.410:                                        ; preds = %if.end.160
  %211 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx411 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %211, i64 -2
  %s_value412 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx411, i32 0, i32 0
  %212 = load i8*, i8** %s_value412, align 8
  %call413 = call i32 @lookup(i8* %212, i32 1)
  %sub414 = sub nsw i32 0, %call413
  %call415 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0), i32 %sub414) #2
  call void @generate(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i32 0, i32 0))
  %213 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx416 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %213, i64 -4
  %a_value417 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx416, i32 0, i32 3
  %214 = load %struct.arg_list*, %struct.arg_list** %a_value417, align 8
  %call418 = call %struct.arg_list* @nextarg(%struct.arg_list* %214, i8 signext 1)
  store %struct.arg_list* %call418, %struct.arg_list** getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 3), align 8
  br label %sw.epilog.762

sw.bb.419:                                        ; preds = %if.end.160
  store i32 -1, i32* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 2), align 4
  call void (i8*, ...) @warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.34, i32 0, i32 0))
  br label %sw.epilog.762

sw.bb.420:                                        ; preds = %if.end.160
  store i32 0, i32* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 2), align 4
  call void @generate(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i32 0, i32 0))
  br label %sw.epilog.762

sw.bb.421:                                        ; preds = %if.end.160
  %215 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx422 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %215, i64 0
  %i_value423 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx422, i32 0, i32 2
  %216 = load i32, i32* %i_value423, align 4
  %cmp424 = icmp sgt i32 %216, 1
  br i1 %cmp424, label %if.then.426, label %if.end.427

if.then.426:                                      ; preds = %sw.bb.421
  call void (i8*, ...) @warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.36, i32 0, i32 0))
  br label %if.end.427

if.end.427:                                       ; preds = %if.then.426, %sw.bb.421
  br label %sw.epilog.762

sw.bb.428:                                        ; preds = %if.end.160
  %217 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx429 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %217, i64 0
  %c_value = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx429, i32 0, i32 1
  %218 = load i8, i8* %c_value, align 1
  %conv430 = sext i8 %218 to i32
  %cmp431 = icmp ne i32 %conv430, 61
  br i1 %cmp431, label %if.then.433, label %if.end.448

if.then.433:                                      ; preds = %sw.bb.428
  %219 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx434 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %219, i64 -1
  %i_value435 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx434, i32 0, i32 2
  %220 = load i32, i32* %i_value435, align 4
  %cmp436 = icmp slt i32 %220, 0
  br i1 %cmp436, label %if.then.438, label %if.else.443

if.then.438:                                      ; preds = %if.then.433
  %221 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx439 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %221, i64 -1
  %i_value440 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx439, i32 0, i32 2
  %222 = load i32, i32* %i_value440, align 4
  %sub441 = sub nsw i32 0, %222
  %call442 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), i32 %sub441) #2
  br label %if.end.447

if.else.443:                                      ; preds = %if.then.433
  %223 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx444 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %223, i64 -1
  %i_value445 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx444, i32 0, i32 2
  %224 = load i32, i32* %i_value445, align 4
  %call446 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i32 %224) #2
  br label %if.end.447

if.end.447:                                       ; preds = %if.else.443, %if.then.438
  call void @generate(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i32 0, i32 0))
  br label %if.end.448

if.end.448:                                       ; preds = %if.end.447, %sw.bb.428
  br label %sw.epilog.762

sw.bb.449:                                        ; preds = %if.end.160
  %225 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx450 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %225, i64 0
  %i_value451 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx450, i32 0, i32 2
  %226 = load i32, i32* %i_value451, align 4
  %cmp452 = icmp sgt i32 %226, 1
  br i1 %cmp452, label %if.then.454, label %if.end.455

if.then.454:                                      ; preds = %sw.bb.449
  call void (i8*, ...) @warn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.39, i32 0, i32 0))
  br label %if.end.455

if.end.455:                                       ; preds = %if.then.454, %sw.bb.449
  %227 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx456 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %227, i64 -2
  %c_value457 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx456, i32 0, i32 1
  %228 = load i8, i8* %c_value457, align 1
  %conv458 = sext i8 %228 to i32
  %cmp459 = icmp ne i32 %conv458, 61
  br i1 %cmp459, label %if.then.461, label %if.end.466

if.then.461:                                      ; preds = %if.end.455
  %229 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx462 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %229, i64 -2
  %c_value463 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx462, i32 0, i32 1
  %230 = load i8, i8* %c_value463, align 1
  %conv464 = sext i8 %230 to i32
  %call465 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i32 0, i32 0), i32 %conv464) #2
  call void @generate(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i32 0, i32 0))
  br label %if.end.466

if.end.466:                                       ; preds = %if.then.461, %if.end.455
  %231 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx467 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %231, i64 -3
  %i_value468 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx467, i32 0, i32 2
  %232 = load i32, i32* %i_value468, align 4
  %cmp469 = icmp slt i32 %232, 0
  br i1 %cmp469, label %if.then.471, label %if.else.476

if.then.471:                                      ; preds = %if.end.466
  %233 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx472 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %233, i64 -3
  %i_value473 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx472, i32 0, i32 2
  %234 = load i32, i32* %i_value473, align 4
  %sub474 = sub nsw i32 0, %234
  %call475 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i32 0, i32 0), i32 %sub474) #2
  br label %if.end.480

if.else.476:                                      ; preds = %if.end.466
  %235 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx477 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %235, i64 -3
  %i_value478 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx477, i32 0, i32 2
  %236 = load i32, i32* %i_value478, align 4
  %call479 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i32 0, i32 0), i32 %236) #2
  br label %if.end.480

if.end.480:                                       ; preds = %if.else.476, %if.then.471
  call void @generate(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i32 0, i32 0))
  store i32 0, i32* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 2), align 4
  br label %sw.epilog.762

sw.bb.481:                                        ; preds = %if.end.160
  call void (i8*, ...) @warn(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i32 0, i32 0))
  %237 = load i32, i32* @next_label, align 4
  %inc482 = add nsw i32 %237, 1
  store i32 %inc482, i32* @next_label, align 4
  %238 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx483 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %238, i64 0
  %i_value484 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx483, i32 0, i32 2
  store i32 %237, i32* %i_value484, align 4
  %239 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx485 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %239, i64 0
  %i_value486 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx485, i32 0, i32 2
  %240 = load i32, i32* %i_value486, align 4
  %call487 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i32 0, i32 0), i32 %240) #2
  call void @generate(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i32 0, i32 0))
  br label %sw.epilog.762

sw.bb.488:                                        ; preds = %if.end.160
  %241 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx489 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %241, i64 -2
  %i_value490 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx489, i32 0, i32 2
  %242 = load i32, i32* %i_value490, align 4
  %243 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx491 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %243, i64 -2
  %i_value492 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx491, i32 0, i32 2
  %244 = load i32, i32* %i_value492, align 4
  %call493 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i32 0, i32 0), i32 %242, i32 %244) #2
  call void @generate(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i32 0, i32 0))
  %245 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx494 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %245, i64 -3
  %i_value495 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx494, i32 0, i32 2
  %246 = load i32, i32* %i_value495, align 4
  %247 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx496 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %247, i64 0
  %i_value497 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx496, i32 0, i32 2
  %248 = load i32, i32* %i_value497, align 4
  %or = or i32 %246, %248
  store i32 %or, i32* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 2), align 4
  br label %sw.epilog.762

sw.bb.498:                                        ; preds = %if.end.160
  call void (i8*, ...) @warn(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i32 0, i32 0))
  %249 = load i32, i32* @next_label, align 4
  %inc499 = add nsw i32 %249, 1
  store i32 %inc499, i32* @next_label, align 4
  %250 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx500 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %250, i64 0
  %i_value501 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx500, i32 0, i32 2
  store i32 %249, i32* %i_value501, align 4
  %251 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx502 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %251, i64 0
  %i_value503 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx502, i32 0, i32 2
  %252 = load i32, i32* %i_value503, align 4
  %call504 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0), i32 %252) #2
  call void @generate(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i32 0, i32 0))
  br label %sw.epilog.762

sw.bb.505:                                        ; preds = %if.end.160
  %253 = load i32, i32* @next_label, align 4
  %inc506 = add nsw i32 %253, 1
  store i32 %inc506, i32* @next_label, align 4
  store i32 %253, i32* %tmplab, align 4
  %254 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx507 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %254, i64 -2
  %i_value508 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx507, i32 0, i32 2
  %255 = load i32, i32* %i_value508, align 4
  %256 = load i32, i32* %tmplab, align 4
  %257 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx509 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %257, i64 -2
  %i_value510 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx509, i32 0, i32 2
  %258 = load i32, i32* %i_value510, align 4
  %259 = load i32, i32* %tmplab, align 4
  %call511 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.48, i32 0, i32 0), i32 %255, i32 %256, i32 %258, i32 %259) #2
  call void @generate(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i32 0, i32 0))
  %260 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx512 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %260, i64 -3
  %i_value513 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx512, i32 0, i32 2
  %261 = load i32, i32* %i_value513, align 4
  %262 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx514 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %262, i64 0
  %i_value515 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx514, i32 0, i32 2
  %263 = load i32, i32* %i_value515, align 4
  %or516 = or i32 %261, %263
  store i32 %or516, i32* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 2), align 4
  br label %sw.epilog.762

sw.bb.517:                                        ; preds = %if.end.160
  %264 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx518 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %264, i64 0
  %i_value519 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx518, i32 0, i32 2
  %265 = load i32, i32* %i_value519, align 4
  store i32 %265, i32* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 2), align 4
  call void (i8*, ...) @warn(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.49, i32 0, i32 0))
  call void @generate(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i32 0, i32 0))
  br label %sw.epilog.762

sw.bb.520:                                        ; preds = %if.end.160
  store i32 3, i32* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 2), align 4
  %266 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx521 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %266, i64 -1
  %s_value522 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx521, i32 0, i32 0
  %267 = load i8*, i8** %s_value522, align 8
  %268 = load i8, i8* %267, align 1
  %conv523 = sext i8 %268 to i32
  switch i32 %conv523, label %sw.epilog.546 [
    i32 61, label %sw.bb.524
    i32 33, label %sw.bb.525
    i32 60, label %sw.bb.526
    i32 62, label %sw.bb.536
  ]

sw.bb.524:                                        ; preds = %sw.bb.520
  call void @generate(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i32 0, i32 0))
  br label %sw.epilog.546

sw.bb.525:                                        ; preds = %sw.bb.520
  call void @generate(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i32 0, i32 0))
  br label %sw.epilog.546

sw.bb.526:                                        ; preds = %sw.bb.520
  %269 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx527 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %269, i64 -1
  %s_value528 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx527, i32 0, i32 0
  %270 = load i8*, i8** %s_value528, align 8
  %arrayidx529 = getelementptr inbounds i8, i8* %270, i64 1
  %271 = load i8, i8* %arrayidx529, align 1
  %conv530 = sext i8 %271 to i32
  %cmp531 = icmp eq i32 %conv530, 61
  br i1 %cmp531, label %if.then.533, label %if.else.534

if.then.533:                                      ; preds = %sw.bb.526
  call void @generate(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.53, i32 0, i32 0))
  br label %if.end.535

if.else.534:                                      ; preds = %sw.bb.526
  call void @generate(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i32 0, i32 0))
  br label %if.end.535

if.end.535:                                       ; preds = %if.else.534, %if.then.533
  br label %sw.epilog.546

sw.bb.536:                                        ; preds = %sw.bb.520
  %272 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx537 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %272, i64 -1
  %s_value538 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx537, i32 0, i32 0
  %273 = load i8*, i8** %s_value538, align 8
  %arrayidx539 = getelementptr inbounds i8, i8* %273, i64 1
  %274 = load i8, i8* %arrayidx539, align 1
  %conv540 = sext i8 %274 to i32
  %cmp541 = icmp eq i32 %conv540, 61
  br i1 %cmp541, label %if.then.543, label %if.else.544

if.then.543:                                      ; preds = %sw.bb.536
  call void @generate(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.55, i32 0, i32 0))
  br label %if.end.545

if.else.544:                                      ; preds = %sw.bb.536
  call void @generate(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i32 0, i32 0))
  br label %if.end.545

if.end.545:                                       ; preds = %if.else.544, %if.then.543
  br label %sw.epilog.546

sw.epilog.546:                                    ; preds = %sw.bb.520, %if.end.545, %if.end.535, %sw.bb.525, %sw.bb.524
  br label %sw.epilog.762

sw.bb.547:                                        ; preds = %if.end.160
  call void @generate(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.57, i32 0, i32 0))
  %275 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx548 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %275, i64 -2
  %i_value549 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx548, i32 0, i32 2
  %276 = load i32, i32* %i_value549, align 4
  %277 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx550 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %277, i64 0
  %i_value551 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx550, i32 0, i32 2
  %278 = load i32, i32* %i_value551, align 4
  %or552 = or i32 %276, %278
  store i32 %or552, i32* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 2), align 4
  br label %sw.epilog.762

sw.bb.553:                                        ; preds = %if.end.160
  call void @generate(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i32 0, i32 0))
  %279 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx554 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %279, i64 -2
  %i_value555 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx554, i32 0, i32 2
  %280 = load i32, i32* %i_value555, align 4
  %281 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx556 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %281, i64 0
  %i_value557 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx556, i32 0, i32 2
  %282 = load i32, i32* %i_value557, align 4
  %or558 = or i32 %280, %282
  store i32 %or558, i32* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 2), align 4
  br label %sw.epilog.762

sw.bb.559:                                        ; preds = %if.end.160
  %283 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx560 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %283, i64 -1
  %c_value561 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx560, i32 0, i32 1
  %284 = load i8, i8* %c_value561, align 1
  store i8 %284, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i32 0, i64 0), align 1
  store i8 0, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i32 0, i64 1), align 1
  call void @generate(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i32 0, i32 0))
  %285 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx562 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %285, i64 -2
  %i_value563 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx562, i32 0, i32 2
  %286 = load i32, i32* %i_value563, align 4
  %287 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx564 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %287, i64 0
  %i_value565 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx564, i32 0, i32 2
  %288 = load i32, i32* %i_value565, align 4
  %or566 = or i32 %286, %288
  store i32 %or566, i32* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 2), align 4
  br label %sw.epilog.762

sw.bb.567:                                        ; preds = %if.end.160
  call void @generate(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i32 0, i32 0))
  %289 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx568 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %289, i64 -2
  %i_value569 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx568, i32 0, i32 2
  %290 = load i32, i32* %i_value569, align 4
  %291 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx570 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %291, i64 0
  %i_value571 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx570, i32 0, i32 2
  %292 = load i32, i32* %i_value571, align 4
  %or572 = or i32 %290, %292
  store i32 %or572, i32* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 2), align 4
  br label %sw.epilog.762

sw.bb.573:                                        ; preds = %if.end.160
  call void @generate(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i32 0, i32 0))
  %293 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx574 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %293, i64 0
  %i_value575 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx574, i32 0, i32 2
  %294 = load i32, i32* %i_value575, align 4
  store i32 %294, i32* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 2), align 4
  br label %sw.epilog.762

sw.bb.576:                                        ; preds = %if.end.160
  store i32 1, i32* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 2), align 4
  %295 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx577 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %295, i64 0
  %i_value578 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx577, i32 0, i32 2
  %296 = load i32, i32* %i_value578, align 4
  %cmp579 = icmp slt i32 %296, 0
  br i1 %cmp579, label %if.then.581, label %if.else.586

if.then.581:                                      ; preds = %sw.bb.576
  %297 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx582 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %297, i64 0
  %i_value583 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx582, i32 0, i32 2
  %298 = load i32, i32* %i_value583, align 4
  %sub584 = sub nsw i32 0, %298
  %call585 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.61, i32 0, i32 0), i32 %sub584) #2
  br label %if.end.590

if.else.586:                                      ; preds = %sw.bb.576
  %299 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx587 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %299, i64 0
  %i_value588 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx587, i32 0, i32 2
  %300 = load i32, i32* %i_value588, align 4
  %call589 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i32 %300) #2
  br label %if.end.590

if.end.590:                                       ; preds = %if.else.586, %if.then.581
  call void @generate(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i32 0, i32 0))
  br label %sw.epilog.762

sw.bb.591:                                        ; preds = %if.end.160
  %301 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx592 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %301, i64 0
  %s_value593 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx592, i32 0, i32 0
  %302 = load i8*, i8** %s_value593, align 8
  %call594 = call i64 @strlen(i8* %302) #7
  %conv595 = trunc i64 %call594 to i32
  store i32 %conv595, i32* %length, align 4
  store i32 1, i32* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 2), align 4
  %303 = load i32, i32* %length, align 4
  %cmp596 = icmp eq i32 %303, 1
  br i1 %cmp596, label %land.lhs.true.598, label %if.else.605

land.lhs.true.598:                                ; preds = %sw.bb.591
  %304 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx599 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %304, i64 0
  %s_value600 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx599, i32 0, i32 0
  %305 = load i8*, i8** %s_value600, align 8
  %306 = load i8, i8* %305, align 1
  %conv601 = sext i8 %306 to i32
  %cmp602 = icmp eq i32 %conv601, 48
  br i1 %cmp602, label %if.then.604, label %if.else.605

if.then.604:                                      ; preds = %land.lhs.true.598
  call void @generate(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i32 0, i32 0))
  br label %if.end.619

if.else.605:                                      ; preds = %land.lhs.true.598, %sw.bb.591
  %307 = load i32, i32* %length, align 4
  %cmp606 = icmp eq i32 %307, 1
  br i1 %cmp606, label %land.lhs.true.608, label %if.else.615

land.lhs.true.608:                                ; preds = %if.else.605
  %308 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx609 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %308, i64 0
  %s_value610 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx609, i32 0, i32 0
  %309 = load i8*, i8** %s_value610, align 8
  %310 = load i8, i8* %309, align 1
  %conv611 = sext i8 %310 to i32
  %cmp612 = icmp eq i32 %conv611, 49
  br i1 %cmp612, label %if.then.614, label %if.else.615

if.then.614:                                      ; preds = %land.lhs.true.608
  call void @generate(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0))
  br label %if.end.618

if.else.615:                                      ; preds = %land.lhs.true.608, %if.else.605
  call void @generate(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.62, i32 0, i32 0))
  %311 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx616 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %311, i64 0
  %s_value617 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx616, i32 0, i32 0
  %312 = load i8*, i8** %s_value617, align 8
  call void @generate(i8* %312)
  call void @generate(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i32 0, i32 0))
  br label %if.end.618

if.end.618:                                       ; preds = %if.else.615, %if.then.614
  br label %if.end.619

if.end.619:                                       ; preds = %if.end.618, %if.then.604
  %313 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx620 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %313, i64 0
  %s_value621 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx620, i32 0, i32 0
  %314 = load i8*, i8** %s_value621, align 8
  call void @free(i8* %314) #2
  br label %sw.epilog.762

sw.bb.622:                                        ; preds = %if.end.160
  %315 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx623 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %315, i64 -1
  %i_value624 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx623, i32 0, i32 2
  %316 = load i32, i32* %i_value624, align 4
  %or625 = or i32 %316, 1
  store i32 %or625, i32* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 2), align 4
  br label %sw.epilog.762

sw.bb.626:                                        ; preds = %if.end.160
  store i32 1, i32* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 2), align 4
  %317 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx627 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %317, i64 -1
  %a_value628 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx627, i32 0, i32 3
  %318 = load %struct.arg_list*, %struct.arg_list** %a_value628, align 8
  %cmp629 = icmp ne %struct.arg_list* %318, null
  br i1 %cmp629, label %if.then.631, label %if.else.641

if.then.631:                                      ; preds = %sw.bb.626
  %319 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx632 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %319, i64 -3
  %s_value633 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx632, i32 0, i32 0
  %320 = load i8*, i8** %s_value633, align 8
  %call634 = call i32 @lookup(i8* %320, i32 2)
  %321 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx635 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %321, i64 -1
  %a_value636 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx635, i32 0, i32 3
  %322 = load %struct.arg_list*, %struct.arg_list** %a_value636, align 8
  %call637 = call i8* @arg_str(%struct.arg_list* %322, i32 0)
  %call638 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.64, i32 0, i32 0), i32 %call634, i8* %call637) #2
  %323 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx639 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %323, i64 -1
  %a_value640 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx639, i32 0, i32 3
  %324 = load %struct.arg_list*, %struct.arg_list** %a_value640, align 8
  call void @free_args(%struct.arg_list* %324)
  br label %if.end.646

if.else.641:                                      ; preds = %sw.bb.626
  %325 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx642 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %325, i64 -3
  %s_value643 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx642, i32 0, i32 0
  %326 = load i8*, i8** %s_value643, align 8
  %call644 = call i32 @lookup(i8* %326, i32 2)
  %call645 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i32 0, i32 0), i32 %call644) #2
  br label %if.end.646

if.end.646:                                       ; preds = %if.else.641, %if.then.631
  call void @generate(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i32 0, i32 0))
  br label %sw.epilog.762

sw.bb.647:                                        ; preds = %if.end.160
  store i32 1, i32* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 2), align 4
  %327 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx648 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %327, i64 0
  %i_value649 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx648, i32 0, i32 2
  %328 = load i32, i32* %i_value649, align 4
  %cmp650 = icmp slt i32 %328, 0
  br i1 %cmp650, label %if.then.652, label %if.else.675

if.then.652:                                      ; preds = %sw.bb.647
  %329 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx653 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %329, i64 -1
  %c_value654 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx653, i32 0, i32 1
  %330 = load i8, i8* %c_value654, align 1
  %conv655 = sext i8 %330 to i32
  %cmp656 = icmp eq i32 %conv655, 43
  br i1 %cmp656, label %if.then.658, label %if.else.666

if.then.658:                                      ; preds = %if.then.652
  %331 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx659 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %331, i64 0
  %i_value660 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx659, i32 0, i32 2
  %332 = load i32, i32* %i_value660, align 4
  %sub661 = sub nsw i32 0, %332
  %333 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx662 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %333, i64 0
  %i_value663 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx662, i32 0, i32 2
  %334 = load i32, i32* %i_value663, align 4
  %sub664 = sub nsw i32 0, %334
  %call665 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.66, i32 0, i32 0), i32 %sub661, i32 %sub664) #2
  br label %if.end.674

if.else.666:                                      ; preds = %if.then.652
  %335 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx667 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %335, i64 0
  %i_value668 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx667, i32 0, i32 2
  %336 = load i32, i32* %i_value668, align 4
  %sub669 = sub nsw i32 0, %336
  %337 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx670 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %337, i64 0
  %i_value671 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx670, i32 0, i32 2
  %338 = load i32, i32* %i_value671, align 4
  %sub672 = sub nsw i32 0, %338
  %call673 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.67, i32 0, i32 0), i32 %sub669, i32 %sub672) #2
  br label %if.end.674

if.end.674:                                       ; preds = %if.else.666, %if.then.658
  br label %if.end.694

if.else.675:                                      ; preds = %sw.bb.647
  %339 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx676 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %339, i64 -1
  %c_value677 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx676, i32 0, i32 1
  %340 = load i8, i8* %c_value677, align 1
  %conv678 = sext i8 %340 to i32
  %cmp679 = icmp eq i32 %conv678, 43
  br i1 %cmp679, label %if.then.681, label %if.else.687

if.then.681:                                      ; preds = %if.else.675
  %341 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx682 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %341, i64 0
  %i_value683 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx682, i32 0, i32 2
  %342 = load i32, i32* %i_value683, align 4
  %343 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx684 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %343, i64 0
  %i_value685 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx684, i32 0, i32 2
  %344 = load i32, i32* %i_value685, align 4
  %call686 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.68, i32 0, i32 0), i32 %342, i32 %344) #2
  br label %if.end.693

if.else.687:                                      ; preds = %if.else.675
  %345 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx688 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %345, i64 0
  %i_value689 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx688, i32 0, i32 2
  %346 = load i32, i32* %i_value689, align 4
  %347 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx690 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %347, i64 0
  %i_value691 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx690, i32 0, i32 2
  %348 = load i32, i32* %i_value691, align 4
  %call692 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.69, i32 0, i32 0), i32 %346, i32 %348) #2
  br label %if.end.693

if.end.693:                                       ; preds = %if.else.687, %if.then.681
  br label %if.end.694

if.end.694:                                       ; preds = %if.end.693, %if.end.674
  call void @generate(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i32 0, i32 0))
  br label %sw.epilog.762

sw.bb.695:                                        ; preds = %if.end.160
  store i32 1, i32* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 2), align 4
  %349 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx696 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %349, i64 -1
  %i_value697 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx696, i32 0, i32 2
  %350 = load i32, i32* %i_value697, align 4
  %cmp698 = icmp slt i32 %350, 0
  br i1 %cmp698, label %if.then.700, label %if.else.721

if.then.700:                                      ; preds = %sw.bb.695
  %351 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx701 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %351, i64 -1
  %i_value702 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx701, i32 0, i32 2
  %352 = load i32, i32* %i_value702, align 4
  %sub703 = sub nsw i32 0, %352
  %call704 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.70, i32 0, i32 0), i32 %sub703) #2
  call void @generate(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i32 0, i32 0))
  %353 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx705 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %353, i64 0
  %c_value706 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx705, i32 0, i32 1
  %354 = load i8, i8* %c_value706, align 1
  %conv707 = sext i8 %354 to i32
  %cmp708 = icmp eq i32 %conv707, 43
  br i1 %cmp708, label %if.then.710, label %if.else.715

if.then.710:                                      ; preds = %if.then.700
  %355 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx711 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %355, i64 -1
  %i_value712 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx711, i32 0, i32 2
  %356 = load i32, i32* %i_value712, align 4
  %sub713 = sub nsw i32 0, %356
  %call714 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.71, i32 0, i32 0), i32 %sub713) #2
  br label %if.end.720

if.else.715:                                      ; preds = %if.then.700
  %357 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx716 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %357, i64 -1
  %i_value717 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx716, i32 0, i32 2
  %358 = load i32, i32* %i_value717, align 4
  %sub718 = sub nsw i32 0, %358
  %call719 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i32 0, i32 0), i32 %sub718) #2
  br label %if.end.720

if.end.720:                                       ; preds = %if.else.715, %if.then.710
  br label %if.end.739

if.else.721:                                      ; preds = %sw.bb.695
  %359 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx722 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %359, i64 -1
  %i_value723 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx722, i32 0, i32 2
  %360 = load i32, i32* %i_value723, align 4
  %call724 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i32 %360) #2
  call void @generate(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i32 0, i32 0))
  %361 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx725 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %361, i64 0
  %c_value726 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx725, i32 0, i32 1
  %362 = load i8, i8* %c_value726, align 1
  %conv727 = sext i8 %362 to i32
  %cmp728 = icmp eq i32 %conv727, 43
  br i1 %cmp728, label %if.then.730, label %if.else.734

if.then.730:                                      ; preds = %if.else.721
  %363 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx731 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %363, i64 -1
  %i_value732 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx731, i32 0, i32 2
  %364 = load i32, i32* %i_value732, align 4
  %call733 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i32 0, i32 0), i32 %364) #2
  br label %if.end.738

if.else.734:                                      ; preds = %if.else.721
  %365 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx735 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %365, i64 -1
  %i_value736 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx735, i32 0, i32 2
  %366 = load i32, i32* %i_value736, align 4
  %call737 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.74, i32 0, i32 0), i32 %366) #2
  br label %if.end.738

if.end.738:                                       ; preds = %if.else.734, %if.then.730
  br label %if.end.739

if.end.739:                                       ; preds = %if.end.738, %if.end.720
  call void @generate(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @genstr, i32 0, i32 0))
  br label %sw.epilog.762

sw.bb.740:                                        ; preds = %if.end.160
  call void @generate(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.75, i32 0, i32 0))
  store i32 1, i32* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 2), align 4
  br label %sw.epilog.762

sw.bb.741:                                        ; preds = %if.end.160
  call void @generate(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.76, i32 0, i32 0))
  store i32 1, i32* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 2), align 4
  br label %sw.epilog.762

sw.bb.742:                                        ; preds = %if.end.160
  call void @generate(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.77, i32 0, i32 0))
  store i32 1, i32* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 2), align 4
  br label %sw.epilog.762

sw.bb.743:                                        ; preds = %if.end.160
  call void (i8*, ...) @warn(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.78, i32 0, i32 0))
  call void @generate(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.79, i32 0, i32 0))
  store i32 1, i32* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 2), align 4
  br label %sw.epilog.762

sw.bb.744:                                        ; preds = %if.end.160
  %367 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx745 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %367, i64 0
  %s_value746 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx745, i32 0, i32 0
  %368 = load i8*, i8** %s_value746, align 8
  %call747 = call i32 @lookup(i8* %368, i32 0)
  store i32 %call747, i32* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 2), align 4
  br label %sw.epilog.762

sw.bb.748:                                        ; preds = %if.end.160
  %369 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx749 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %369, i64 -1
  %i_value750 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx749, i32 0, i32 2
  %370 = load i32, i32* %i_value750, align 4
  %cmp751 = icmp sgt i32 %370, 1
  br i1 %cmp751, label %if.then.753, label %if.end.754

if.then.753:                                      ; preds = %sw.bb.748
  call void (i8*, ...) @warn(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.80, i32 0, i32 0))
  br label %if.end.754

if.end.754:                                       ; preds = %if.then.753, %sw.bb.748
  %371 = load %struct.YYSTYPE*, %struct.YYSTYPE** %yypvt, align 8
  %arrayidx755 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %371, i64 -3
  %s_value756 = getelementptr inbounds %struct.YYSTYPE, %struct.YYSTYPE* %arrayidx755, i32 0, i32 0
  %372 = load i8*, i8** %s_value756, align 8
  %call757 = call i32 @lookup(i8* %372, i32 1)
  store i32 %call757, i32* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 2), align 4
  br label %sw.epilog.762

sw.bb.758:                                        ; preds = %if.end.160
  store i32 0, i32* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 2), align 4
  br label %sw.epilog.762

sw.bb.759:                                        ; preds = %if.end.160
  store i32 1, i32* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 2), align 4
  br label %sw.epilog.762

sw.bb.760:                                        ; preds = %if.end.160
  store i32 2, i32* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 2), align 4
  br label %sw.epilog.762

sw.bb.761:                                        ; preds = %if.end.160
  store i32 3, i32* getelementptr inbounds (%struct.YYSTYPE, %struct.YYSTYPE* @yyval, i32 0, i32 2), align 4
  br label %sw.epilog.762

sw.epilog.762:                                    ; preds = %if.end.160, %sw.bb.761, %sw.bb.760, %sw.bb.759, %sw.bb.758, %if.end.754, %sw.bb.744, %sw.bb.743, %sw.bb.742, %sw.bb.741, %sw.bb.740, %if.end.739, %if.end.694, %if.end.646, %sw.bb.622, %if.end.619, %if.end.590, %sw.bb.573, %sw.bb.567, %sw.bb.559, %sw.bb.553, %sw.bb.547, %sw.epilog.546, %sw.bb.517, %sw.bb.505, %sw.bb.498, %sw.bb.488, %sw.bb.481, %if.end.480, %if.end.448, %if.end.427, %sw.bb.420, %sw.bb.419, %sw.bb.410, %if.end.406, %sw.bb.393, %if.end.391, %sw.bb.384, %sw.bb.376, %sw.bb.368, %sw.bb.362, %sw.bb.356, %sw.bb.353, %sw.bb.350, %sw.bb.349, %sw.bb.348, %sw.bb.345, %sw.bb.325, %sw.bb.316, %sw.bb.315, %sw.bb.310, %sw.bb.309, %sw.bb.308, %sw.bb.302, %sw.bb.297, %sw.bb.290, %sw.bb.286, %sw.bb.281, %sw.bb.275, %if.end.274, %if.end.242, %if.end.235, %sw.bb.209, %sw.bb.208, %sw.bb.207, %sw.bb.206, %if.end.204, %if.end.197, %sw.bb.187, %if.end.186, %sw.bb.174, %sw.bb.173, %sw.bb.171, %sw.bb.170, %sw.bb.169, %sw.bb.168, %sw.bb.167, %sw.bb.166, %if.end.165
  br label %yystack

return:                                           ; preds = %yyabort, %if.then.76, %if.then
  %373 = load i32, i32* %retval
  ret i32 %373
}

declare void @yyerror(i8*, ...) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare i32 @yylex() #1

declare i32 @printf(i8*, ...) #1

declare void @welcome() #1

declare void @run_code() #1

declare void @init_gen() #1

declare void @warranty(i8*) #1

declare void @limits() #1

declare void @warn(i8*, ...) #1

declare void @generate(i8*) #1

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

declare void @check_params(%struct.arg_list*, %struct.arg_list*) #1

declare i32 @lookup(i8*, i32) #1

declare i8* @arg_str(%struct.arg_list*, i32) #1

declare void @free_args(%struct.arg_list*) #1

declare %struct.arg_list* @nextarg(%struct.arg_list*, i8 signext) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
