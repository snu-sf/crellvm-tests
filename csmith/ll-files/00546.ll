; ModuleID = '00546.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_2 = internal global i32 1, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"g_2\00", align 1
@g_10 = internal global i16 -1, align 2
@.str.2 = private unnamed_addr constant [5 x i8] c"g_10\00", align 1
@g_12 = internal global [10 x i64] [i64 -4498200764838502545, i64 -4498200764838502545, i64 -4498200764838502545, i64 -4498200764838502545, i64 -4498200764838502545, i64 -4498200764838502545, i64 -4498200764838502545, i64 -4498200764838502545, i64 -4498200764838502545, i64 -4498200764838502545], align 16
@.str.3 = private unnamed_addr constant [8 x i8] c"g_12[i]\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_18 = internal global [10 x i32] zeroinitializer, align 16
@.str.5 = private unnamed_addr constant [8 x i8] c"g_18[i]\00", align 1
@g_20 = internal global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"g_20\00", align 1
@g_68 = internal global [7 x [5 x i32]] [[5 x i32] [i32 -616586290, i32 -8, i32 -8, i32 -616586290, i32 -8], [5 x i32] [i32 1, i32 1, i32 5, i32 1, i32 1], [5 x i32] [i32 -8, i32 -616586290, i32 -8, i32 -8, i32 -616586290], [5 x i32] [i32 1, i32 1846210120, i32 1846210120, i32 1, i32 1846210120], [5 x i32] [i32 -616586290, i32 -616586290, i32 -61079664, i32 -616586290, i32 -616586290], [5 x i32] [i32 1846210120, i32 1846210120, i32 5, i32 5, i32 1846210120], [5 x i32] [i32 -8, i32 -61079664, i32 -61079664, i32 -8, i32 -61079664]], align 16
@.str.7 = private unnamed_addr constant [11 x i8] c"g_68[i][j]\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@g_105 = internal global i32 -1553789485, align 4
@.str.9 = private unnamed_addr constant [6 x i8] c"g_105\00", align 1
@g_137 = internal global i8 -17, align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"g_137\00", align 1
@g_149 = internal global i8 0, align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"g_149\00", align 1
@g_202 = internal global i8 41, align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"g_202\00", align 1
@g_229 = internal global i8 0, align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"g_229\00", align 1
@g_269 = internal global i8 -42, align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"g_269\00", align 1
@g_280 = internal global i32 683716274, align 4
@.str.15 = private unnamed_addr constant [6 x i8] c"g_280\00", align 1
@g_289 = internal global i64 1, align 8
@.str.16 = private unnamed_addr constant [6 x i8] c"g_289\00", align 1
@g_294 = internal global [8 x [8 x i16]] [[8 x i16] [i16 0, i16 -2, i16 -2, i16 -25657, i16 -2, i16 -2, i16 0, i16 1], [8 x i16] [i16 8305, i16 1, i16 -2, i16 1, i16 -10, i16 1, i16 -2, i16 1], [8 x i16] [i16 -2, i16 21641, i16 29575, i16 -25657, i16 -10, i16 1, i16 -10, i16 -25657], [8 x i16] [i16 8305, i16 21641, i16 8305, i16 1, i16 -2, i16 1, i16 -10, i16 1], [8 x i16] [i16 0, i16 1, i16 29575, i16 1, i16 0, i16 -2, i16 -2, i16 -25657], [8 x i16] [i16 0, i16 -2, i16 -2, i16 -25657, i16 -2, i16 -2, i16 0, i16 1], [8 x i16] [i16 8305, i16 1, i16 -2, i16 1, i16 -10, i16 1, i16 -2, i16 1], [8 x i16] [i16 -2, i16 21641, i16 29575, i16 -25657, i16 -10, i16 1, i16 -10, i16 -25657]], align 16
@.str.17 = private unnamed_addr constant [12 x i8] c"g_294[i][j]\00", align 1
@g_309 = internal global i64 -7349681022149934289, align 8
@.str.18 = private unnamed_addr constant [6 x i8] c"g_309\00", align 1
@g_339 = internal global [1 x [8 x [9 x i16]]] [[8 x [9 x i16]] [[9 x i16] [i16 23220, i16 1, i16 23220, i16 -17751, i16 -4, i16 23220, i16 -9, i16 -6, i16 -17751], [9 x i16] [i16 23220, i16 -4, i16 -17751, i16 23220, i16 1, i16 23220, i16 -17751, i16 -4, i16 23220], [9 x i16] [i16 -22583, i16 -4, i16 0, i16 -17751, i16 -15784, i16 -22583, i16 -17751, i16 6, i16 -17751], [9 x i16] [i16 -17751, i16 1, i16 0, i16 0, i16 1, i16 -17751, i16 -9, i16 6, i16 0], [9 x i16] [i16 -22583, i16 -15784, i16 -17751, i16 0, i16 -4, i16 -22583, i16 -22583, i16 -4, i16 0], [9 x i16] [i16 23220, i16 1, i16 23220, i16 -17751, i16 -4, i16 23220, i16 -9, i16 -6, i16 -17751], [9 x i16] [i16 23220, i16 -4, i16 -17751, i16 23220, i16 1, i16 23220, i16 -17751, i16 -4, i16 23220], [9 x i16] [i16 -22583, i16 -4, i16 0, i16 -17751, i16 -15784, i16 -22583, i16 -17751, i16 6, i16 -17751]]], align 16
@.str.19 = private unnamed_addr constant [15 x i8] c"g_339[i][j][k]\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"index = [%d][%d][%d]\0A\00", align 1
@g_340 = internal global i64 -4221968131264300641, align 8
@.str.21 = private unnamed_addr constant [6 x i8] c"g_340\00", align 1
@g_347 = internal global [1 x [3 x [10 x i16]]] [[3 x [10 x i16]] [[10 x i16] [i16 30904, i16 -1, i16 30904, i16 -1, i16 30904, i16 -1, i16 30904, i16 -1, i16 30904, i16 -1], [10 x i16] [i16 -7, i16 -1, i16 -7, i16 -1, i16 -7, i16 -1, i16 -7, i16 -1, i16 -7, i16 -1], [10 x i16] [i16 30904, i16 -1, i16 30904, i16 -1, i16 30904, i16 -1, i16 30904, i16 -1, i16 30904, i16 -1]]], align 16
@.str.22 = private unnamed_addr constant [15 x i8] c"g_347[i][j][k]\00", align 1
@g_387 = internal global i32 0, align 4
@.str.23 = private unnamed_addr constant [6 x i8] c"g_387\00", align 1
@g_459 = internal global i32 6, align 4
@.str.24 = private unnamed_addr constant [6 x i8] c"g_459\00", align 1
@g_596 = internal global i64 -7, align 8
@.str.25 = private unnamed_addr constant [6 x i8] c"g_596\00", align 1
@g_603 = internal global i64 -2820512164288731652, align 8
@.str.26 = private unnamed_addr constant [6 x i8] c"g_603\00", align 1
@g_640 = internal global i32 0, align 4
@.str.27 = private unnamed_addr constant [6 x i8] c"g_640\00", align 1
@g_705 = internal global i8 -91, align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"g_705\00", align 1
@g_887 = internal global i16 0, align 2
@.str.29 = private unnamed_addr constant [6 x i8] c"g_887\00", align 1
@g_989 = internal global i8 -126, align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"g_989\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"g_993\00", align 1
@g_995 = internal constant [3 x i32] [i32 377449023, i32 377449023, i32 377449023], align 4
@.str.32 = private unnamed_addr constant [9 x i8] c"g_995[i]\00", align 1
@g_1176 = internal global i8 116, align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"g_1176\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"g_1224\00", align 1
@g_1310 = internal global i64 5426572993978915427, align 8
@.str.35 = private unnamed_addr constant [7 x i8] c"g_1310\00", align 1
@g_1905 = internal global i64 2, align 8
@.str.36 = private unnamed_addr constant [7 x i8] c"g_1905\00", align 1
@g_1935 = internal global i32 -937772912, align 4
@.str.37 = private unnamed_addr constant [7 x i8] c"g_1935\00", align 1
@g_2081 = internal global [8 x i16] [i16 12096, i16 12096, i16 12096, i16 12096, i16 12096, i16 12096, i16 12096, i16 12096], align 16
@.str.38 = private unnamed_addr constant [10 x i8] c"g_2081[i]\00", align 1
@g_2107 = internal global i32 -1, align 4
@.str.39 = private unnamed_addr constant [7 x i8] c"g_2107\00", align 1
@g_2128 = internal global i64 1, align 8
@.str.40 = private unnamed_addr constant [7 x i8] c"g_2128\00", align 1
@g_2181 = internal global i64 0, align 8
@.str.41 = private unnamed_addr constant [7 x i8] c"g_2181\00", align 1
@g_2195 = internal global [7 x [7 x [5 x i32]]] [[7 x [5 x i32]] [[5 x i32] [i32 1, i32 5, i32 -576795345, i32 -576795345, i32 5], [5 x i32] [i32 5, i32 1421449396, i32 1, i32 5, i32 -576795345], [5 x i32] [i32 0, i32 5, i32 6, i32 5, i32 0], [5 x i32] [i32 1, i32 -1, i32 1421449396, i32 -576795345, i32 -1], [5 x i32] [i32 0, i32 1421449396, i32 1421449396, i32 0, i32 -576795345], [5 x i32] [i32 5, i32 0, i32 6, i32 -1, i32 -1], [5 x i32] [i32 1, i32 0, i32 1, i32 -576795345, i32 0]], [7 x [5 x i32]] [[5 x i32] [i32 -1, i32 1421449396, i32 -576795345, i32 -1, i32 -576795345], [5 x i32] [i32 -1, i32 -1, i32 6, i32 0, i32 5], [5 x i32] [i32 1, i32 5, i32 -576795345, i32 -576795345, i32 5], [5 x i32] [i32 5, i32 1421449396, i32 1, i32 5, i32 -576795345], [5 x i32] [i32 0, i32 5, i32 6, i32 5, i32 0], [5 x i32] [i32 1, i32 -1, i32 1421449396, i32 -576795345, i32 -1], [5 x i32] [i32 0, i32 1421449396, i32 1421449396, i32 0, i32 -576795345]], [7 x [5 x i32]] [[5 x i32] [i32 5, i32 0, i32 6, i32 -1, i32 -1], [5 x i32] [i32 1, i32 0, i32 1, i32 -576795345, i32 0], [5 x i32] [i32 -1, i32 1421449396, i32 -576795345, i32 -1, i32 -576795345], [5 x i32] [i32 -1, i32 -1, i32 6, i32 0, i32 5], [5 x i32] [i32 1, i32 5, i32 -576795345, i32 -576795345, i32 5], [5 x i32] [i32 5, i32 1421449396, i32 1, i32 5, i32 -576795345], [5 x i32] [i32 0, i32 5, i32 6, i32 5, i32 0]], [7 x [5 x i32]] [[5 x i32] [i32 1, i32 -1, i32 1421449396, i32 -576795345, i32 -1], [5 x i32] [i32 0, i32 1421449396, i32 1421449396, i32 0, i32 -576795345], [5 x i32] [i32 5, i32 0, i32 6, i32 -1, i32 -1], [5 x i32] [i32 1, i32 0, i32 1, i32 -576795345, i32 1421449396], [5 x i32] [i32 1, i32 6, i32 0, i32 1, i32 0], [5 x i32] [i32 1, i32 1, i32 -1, i32 1421449396, i32 -576795345], [5 x i32] [i32 -583791219, i32 -576795345, i32 0, i32 0, i32 -576795345]], [7 x [5 x i32]] [[5 x i32] [i32 -576795345, i32 6, i32 -583791219, i32 -576795345, i32 0], [5 x i32] [i32 1421449396, i32 -576795345, i32 -1, i32 -576795345, i32 1421449396], [5 x i32] [i32 -583791219, i32 1, i32 6, i32 0, i32 1], [5 x i32] [i32 1421449396, i32 6, i32 6, i32 1421449396, i32 0], [5 x i32] [i32 -576795345, i32 1421449396, i32 -1, i32 1, i32 1], [5 x i32] [i32 -583791219, i32 1421449396, i32 -583791219, i32 0, i32 1421449396], [5 x i32] [i32 1, i32 6, i32 0, i32 1, i32 0]], [7 x [5 x i32]] [[5 x i32] [i32 1, i32 1, i32 -1, i32 1421449396, i32 -576795345], [5 x i32] [i32 -583791219, i32 -576795345, i32 0, i32 0, i32 -576795345], [5 x i32] [i32 -576795345, i32 6, i32 -583791219, i32 -576795345, i32 0], [5 x i32] [i32 1421449396, i32 -576795345, i32 -1, i32 -576795345, i32 1421449396], [5 x i32] [i32 -583791219, i32 1, i32 6, i32 0, i32 1], [5 x i32] [i32 1421449396, i32 6, i32 6, i32 1421449396, i32 0], [5 x i32] [i32 -576795345, i32 1421449396, i32 -1, i32 1, i32 1]], [7 x [5 x i32]] [[5 x i32] [i32 -583791219, i32 1421449396, i32 -583791219, i32 0, i32 1421449396], [5 x i32] [i32 1, i32 6, i32 0, i32 1, i32 0], [5 x i32] [i32 1, i32 1, i32 -1, i32 1421449396, i32 -576795345], [5 x i32] [i32 -583791219, i32 -576795345, i32 0, i32 0, i32 -576795345], [5 x i32] [i32 -576795345, i32 6, i32 -583791219, i32 -576795345, i32 0], [5 x i32] [i32 1421449396, i32 -576795345, i32 -1, i32 -576795345, i32 1421449396], [5 x i32] [i32 -583791219, i32 1, i32 6, i32 0, i32 1]]], align 16
@.str.42 = private unnamed_addr constant [16 x i8] c"g_2195[i][j][k]\00", align 1
@g_2196 = internal global i32 906702361, align 4
@.str.43 = private unnamed_addr constant [7 x i8] c"g_2196\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@g_113 = internal global [3 x i32**] [i32** @g_114, i32** @g_114, i32** @g_114], align 16
@func_1.l_2060 = private unnamed_addr constant [5 x [10 x [3 x i16]]] [[10 x [3 x i16]] [[3 x i16] [i16 -1, i16 7945, i16 -3], [3 x i16] [i16 -16817, i16 -4, i16 2], [3 x i16] [i16 0, i16 -17193, i16 1], [3 x i16] [i16 2, i16 -11198, i16 -17857], [3 x i16] [i16 -4, i16 -6, i16 -17857], [3 x i16] [i16 7354, i16 1, i16 1], [3 x i16] [i16 -3, i16 -1, i16 2], [3 x i16] [i16 -1, i16 -1, i16 -3], [3 x i16] [i16 -8391, i16 -1, i16 -247], [3 x i16] [i16 20168, i16 -1, i16 7354]], [10 x [3 x i16]] [[3 x i16] [i16 -11198, i16 -1, i16 -6], [3 x i16] [i16 -4773, i16 -1, i16 5], [3 x i16] [i16 31550, i16 -1, i16 2], [3 x i16] [i16 -17193, i16 1, i16 -9466], [3 x i16] [i16 1, i16 -6, i16 -1], [3 x i16] [i16 1, i16 -11198, i16 31550], [3 x i16] [i16 -17193, i16 -17193, i16 20168], [3 x i16] [i16 31550, i16 -4, i16 -1], [3 x i16] [i16 -4773, i16 7945, i16 5249], [3 x i16] [i16 -11198, i16 5249, i16 1]], [10 x [3 x i16]] [[3 x i16] [i16 20168, i16 -4773, i16 5249], [3 x i16] [i16 -8391, i16 2, i16 -1], [3 x i16] [i16 -1, i16 -17857, i16 20168], [3 x i16] [i16 -3, i16 7354, i16 -6], [3 x i16] [i16 1, i16 -9466, i16 -247], [3 x i16] [i16 -11198, i16 -9466, i16 -17857], [3 x i16] [i16 -8391, i16 7354, i16 -8391], [3 x i16] [i16 2, i16 0, i16 -9466], [3 x i16] [i16 20168, i16 828, i16 -4773], [3 x i16] [i16 -16817, i16 -1, i16 1]], [10 x [3 x i16]] [[3 x i16] [i16 -9466, i16 -1, i16 1], [3 x i16] [i16 -16817, i16 31550, i16 -881], [3 x i16] [i16 20168, i16 -11198, i16 828], [3 x i16] [i16 2, i16 -5, i16 7945], [3 x i16] [i16 -8391, i16 5, i16 0], [3 x i16] [i16 -11198, i16 -4773, i16 0], [3 x i16] [i16 1, i16 7945, i16 7945], [3 x i16] [i16 -881, i16 -16817, i16 828], [3 x i16] [i16 7354, i16 5249, i16 -881], [3 x i16] [i16 11078, i16 -1, i16 1]], [10 x [3 x i16]] [[3 x i16] [i16 -17193, i16 -247, i16 1], [3 x i16] [i16 5, i16 -1, i16 -4773], [3 x i16] [i16 -1, i16 5249, i16 -9466], [3 x i16] [i16 -6, i16 -16817, i16 -8391], [3 x i16] [i16 -5, i16 7945, i16 -17857], [3 x i16] [i16 7945, i16 -4773, i16 -247], [3 x i16] [i16 7945, i16 5, i16 -6], [3 x i16] [i16 -5, i16 -5, i16 -17193], [3 x i16] [i16 -6, i16 -11198, i16 7354], [3 x i16] [i16 -1, i16 31550, i16 -1]]], align 16
@g_543 = internal global i32* getelementptr inbounds ([10 x i32], [10 x i32]* @g_18, i32 0, i32 0), align 8
@g_1284 = internal global i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_18 to i8*), i64 24) to i32*), align 8
@func_1.l_2040 = private unnamed_addr constant [10 x [6 x i32**]] [[6 x i32**] [i32** @g_1284, i32** @g_543, i32** @g_543, i32** @g_543, i32** @g_543, i32** @g_1284], [6 x i32**] [i32** @g_1284, i32** @g_1284, i32** @g_543, i32** null, i32** null, i32** @g_543], [6 x i32**] [i32** @g_543, i32** @g_543, i32** @g_1284, i32** @g_1284, i32** null, i32** @g_1284], [6 x i32**] [i32** @g_1284, i32** @g_543, i32** @g_1284, i32** @g_543, i32** @g_543, i32** @g_1284], [6 x i32**] [i32** @g_1284, i32** @g_1284, i32** @g_1284, i32** @g_543, i32** @g_543, i32** @g_1284], [6 x i32**] [i32** @g_1284, i32** @g_543, i32** @g_1284, i32** @g_543, i32** @g_1284, i32** @g_543], [6 x i32**] [i32** @g_543, i32** @g_1284, i32** @g_543, i32** @g_1284, i32** @g_543, i32** @g_1284], [6 x i32**] [i32** @g_1284, i32** @g_543, i32** @g_543, i32** @g_1284, i32** @g_1284, i32** @g_1284], [6 x i32**] [i32** @g_1284, i32** @g_543, i32** @g_543, i32** @g_1284, i32** @g_543, i32** @g_1284], [6 x i32**] [i32** @g_1284, i32** null, i32** @g_1284, i32** @g_1284, i32** @g_543, i32** @g_543]], align 16
@g_114 = internal global i32* @g_105, align 8
@.str.44 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@.str.45 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %print_hash_value = alloca i32, align 4
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %4 = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1
  store i32 %argc, i32* %2, align 4, !tbaa !1
  store i8** %argv, i8*** %3, align 8, !tbaa !5
  %6 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 0, i32* %print_hash_value, align 4, !tbaa !1
  %10 = load i32, i32* %2, align 4, !tbaa !1
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %89

; <label>:12                                      ; preds = %0
  %13 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i64 1) to i64), i64 ptrtoint ([2 x i8]* @.str to i64)), i64 1), label %15, label %77

; <label>:15                                      ; preds = %12
  store i64 1, i64* %__s2_len, align 8, !tbaa !7
  %16 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %17 = icmp ult i64 %16, 4
  br i1 %17, label %18, label %77

; <label>:18                                      ; preds = %15
  %19 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  %20 = load i8**, i8*** %3, align 8, !tbaa !5
  %21 = getelementptr inbounds i8*, i8** %20, i64 1
  %22 = load i8*, i8** %21, align 8, !tbaa !5
  store i8* %22, i8** %__s1, align 8, !tbaa !5
  %23 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = load i8*, i8** %__s1, align 8, !tbaa !5
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1, !tbaa !9
  %27 = zext i8 %26 to i32
  %28 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), align 1, !tbaa !9
  %29 = zext i8 %28 to i32
  %30 = sub nsw i32 %27, %29
  store i32 %30, i32* %__result, align 4, !tbaa !1
  %31 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %32 = icmp ugt i64 %31, 0
  br i1 %32, label %33, label %72

; <label>:33                                      ; preds = %18
  %34 = load i32, i32* %__result, align 4, !tbaa !1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %72

; <label>:36                                      ; preds = %33
  %37 = load i8*, i8** %__s1, align 8, !tbaa !5
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  %39 = load i8, i8* %38, align 1, !tbaa !9
  %40 = zext i8 %39 to i32
  %41 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i64 1), align 1, !tbaa !9
  %42 = zext i8 %41 to i32
  %43 = sub nsw i32 %40, %42
  store i32 %43, i32* %__result, align 4, !tbaa !1
  %44 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %45 = icmp ugt i64 %44, 1
  br i1 %45, label %46, label %71

; <label>:46                                      ; preds = %36
  %47 = load i32, i32* %__result, align 4, !tbaa !1
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %71

; <label>:49                                      ; preds = %46
  %50 = load i8*, i8** %__s1, align 8, !tbaa !5
  %51 = getelementptr inbounds i8, i8* %50, i64 2
  %52 = load i8, i8* %51, align 1, !tbaa !9
  %53 = zext i8 %52 to i32
  %54 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i64 2), align 1, !tbaa !9
  %55 = zext i8 %54 to i32
  %56 = sub nsw i32 %53, %55
  store i32 %56, i32* %__result, align 4, !tbaa !1
  %57 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %58 = icmp ugt i64 %57, 2
  br i1 %58, label %59, label %70

; <label>:59                                      ; preds = %49
  %60 = load i32, i32* %__result, align 4, !tbaa !1
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %70

; <label>:62                                      ; preds = %59
  %63 = load i8*, i8** %__s1, align 8, !tbaa !5
  %64 = getelementptr inbounds i8, i8* %63, i64 3
  %65 = load i8, i8* %64, align 1, !tbaa !9
  %66 = zext i8 %65 to i32
  %67 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i64 3), align 1, !tbaa !9
  %68 = zext i8 %67 to i32
  %69 = sub nsw i32 %66, %68
  store i32 %69, i32* %__result, align 4, !tbaa !1
  br label %70

; <label>:70                                      ; preds = %62, %59, %49
  br label %71

; <label>:71                                      ; preds = %70, %46, %36
  br label %72

; <label>:72                                      ; preds = %71, %33, %18
  %73 = load i32, i32* %__result, align 4, !tbaa !1
  store i32 %73, i32* %5, !tbaa !1
  %74 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #1
  %75 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #1
  %76 = load i32, i32* %5, !tbaa !1
  br label %82

; <label>:77                                      ; preds = %15, %12
  %78 = load i8**, i8*** %3, align 8, !tbaa !5
  %79 = getelementptr inbounds i8*, i8** %78, i64 1
  %80 = load i8*, i8** %79, align 8, !tbaa !5
  %81 = call i32 @strcmp(i8* %80, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0)) #1
  br label %82

; <label>:82                                      ; preds = %77, %72
  %83 = phi i32 [ %76, %72 ], [ %81, %77 ]
  store i32 %83, i32* %4, !tbaa !1
  %84 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %84) #1
  %85 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %85) #1
  %86 = load i32, i32* %4, !tbaa !1
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %89

; <label>:88                                      ; preds = %82
  store i32 1, i32* %print_hash_value, align 4, !tbaa !1
  br label %89

; <label>:89                                      ; preds = %88, %82, %0
  call void @platform_main_begin()
  call void @crc32_gentab()
  %90 = call i32 @func_1()
  %91 = load i32, i32* @g_2, align 4, !tbaa !1
  %92 = sext i32 %91 to i64
  %93 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %93)
  %94 = load i16, i16* @g_10, align 2, !tbaa !10
  %95 = sext i16 %94 to i64
  %96 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %95, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 %96)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %97

; <label>:97                                      ; preds = %112, %89
  %98 = load i32, i32* %i, align 4, !tbaa !1
  %99 = icmp slt i32 %98, 10
  br i1 %99, label %100, label %115

; <label>:100                                     ; preds = %97
  %101 = load i32, i32* %i, align 4, !tbaa !1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [10 x i64], [10 x i64]* @g_12, i32 0, i64 %102
  %104 = load i64, i64* %103, align 8, !tbaa !7
  %105 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %104, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 %105)
  %106 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

; <label>:108                                     ; preds = %100
  %109 = load i32, i32* %i, align 4, !tbaa !1
  %110 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i32 %109)
  br label %111

; <label>:111                                     ; preds = %108, %100
  br label %112

; <label>:112                                     ; preds = %111
  %113 = load i32, i32* %i, align 4, !tbaa !1
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %i, align 4, !tbaa !1
  br label %97

; <label>:115                                     ; preds = %97
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %116

; <label>:116                                     ; preds = %132, %115
  %117 = load i32, i32* %i, align 4, !tbaa !1
  %118 = icmp slt i32 %117, 10
  br i1 %118, label %119, label %135

; <label>:119                                     ; preds = %116
  %120 = load i32, i32* %i, align 4, !tbaa !1
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [10 x i32], [10 x i32]* @g_18, i32 0, i64 %121
  %123 = load i32, i32* %122, align 4, !tbaa !1
  %124 = zext i32 %123 to i64
  %125 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %124, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32 %125)
  %126 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

; <label>:128                                     ; preds = %119
  %129 = load i32, i32* %i, align 4, !tbaa !1
  %130 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i32 %129)
  br label %131

; <label>:131                                     ; preds = %128, %119
  br label %132

; <label>:132                                     ; preds = %131
  %133 = load i32, i32* %i, align 4, !tbaa !1
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %i, align 4, !tbaa !1
  br label %116

; <label>:135                                     ; preds = %116
  %136 = load i32, i32* @g_20, align 4, !tbaa !1
  %137 = sext i32 %136 to i64
  %138 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %137, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 %138)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %139

; <label>:139                                     ; preds = %167, %135
  %140 = load i32, i32* %i, align 4, !tbaa !1
  %141 = icmp slt i32 %140, 7
  br i1 %141, label %142, label %170

; <label>:142                                     ; preds = %139
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %143

; <label>:143                                     ; preds = %163, %142
  %144 = load i32, i32* %j, align 4, !tbaa !1
  %145 = icmp slt i32 %144, 5
  br i1 %145, label %146, label %166

; <label>:146                                     ; preds = %143
  %147 = load i32, i32* %j, align 4, !tbaa !1
  %148 = sext i32 %147 to i64
  %149 = load i32, i32* %i, align 4, !tbaa !1
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [7 x [5 x i32]], [7 x [5 x i32]]* @g_68, i32 0, i64 %150
  %152 = getelementptr inbounds [5 x i32], [5 x i32]* %151, i32 0, i64 %148
  %153 = load i32, i32* %152, align 4, !tbaa !1
  %154 = sext i32 %153 to i64
  %155 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %154, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i32 %155)
  %156 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %162

; <label>:158                                     ; preds = %146
  %159 = load i32, i32* %i, align 4, !tbaa !1
  %160 = load i32, i32* %j, align 4, !tbaa !1
  %161 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i32 0, i32 0), i32 %159, i32 %160)
  br label %162

; <label>:162                                     ; preds = %158, %146
  br label %163

; <label>:163                                     ; preds = %162
  %164 = load i32, i32* %j, align 4, !tbaa !1
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %j, align 4, !tbaa !1
  br label %143

; <label>:166                                     ; preds = %143
  br label %167

; <label>:167                                     ; preds = %166
  %168 = load i32, i32* %i, align 4, !tbaa !1
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %i, align 4, !tbaa !1
  br label %139

; <label>:170                                     ; preds = %139
  %171 = load i32, i32* @g_105, align 4, !tbaa !1
  %172 = zext i32 %171 to i64
  %173 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %172, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 %173)
  %174 = load i8, i8* @g_137, align 1, !tbaa !9
  %175 = zext i8 %174 to i64
  %176 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %175, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i32 %176)
  %177 = load i8, i8* @g_149, align 1, !tbaa !9
  %178 = sext i8 %177 to i64
  %179 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %178, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i32 %179)
  %180 = load i8, i8* @g_202, align 1, !tbaa !9
  %181 = sext i8 %180 to i64
  %182 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %181, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i32 %182)
  %183 = load i8, i8* @g_229, align 1, !tbaa !9
  %184 = zext i8 %183 to i64
  %185 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %184, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i32 %185)
  %186 = load volatile i8, i8* @g_269, align 1, !tbaa !9
  %187 = zext i8 %186 to i64
  %188 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %187, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 %188)
  %189 = load i32, i32* @g_280, align 4, !tbaa !1
  %190 = zext i32 %189 to i64
  %191 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %190, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 %191)
  %192 = load i64, i64* @g_289, align 8, !tbaa !7
  %193 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %192, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i32 %193)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %194

; <label>:194                                     ; preds = %222, %170
  %195 = load i32, i32* %i, align 4, !tbaa !1
  %196 = icmp slt i32 %195, 8
  br i1 %196, label %197, label %225

; <label>:197                                     ; preds = %194
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %198

; <label>:198                                     ; preds = %218, %197
  %199 = load i32, i32* %j, align 4, !tbaa !1
  %200 = icmp slt i32 %199, 8
  br i1 %200, label %201, label %221

; <label>:201                                     ; preds = %198
  %202 = load i32, i32* %j, align 4, !tbaa !1
  %203 = sext i32 %202 to i64
  %204 = load i32, i32* %i, align 4, !tbaa !1
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* @g_294, i32 0, i64 %205
  %207 = getelementptr inbounds [8 x i16], [8 x i16]* %206, i32 0, i64 %203
  %208 = load i16, i16* %207, align 2, !tbaa !10
  %209 = sext i16 %208 to i64
  %210 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %209, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0), i32 %210)
  %211 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %217

; <label>:213                                     ; preds = %201
  %214 = load i32, i32* %i, align 4, !tbaa !1
  %215 = load i32, i32* %j, align 4, !tbaa !1
  %216 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i32 0, i32 0), i32 %214, i32 %215)
  br label %217

; <label>:217                                     ; preds = %213, %201
  br label %218

; <label>:218                                     ; preds = %217
  %219 = load i32, i32* %j, align 4, !tbaa !1
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %j, align 4, !tbaa !1
  br label %198

; <label>:221                                     ; preds = %198
  br label %222

; <label>:222                                     ; preds = %221
  %223 = load i32, i32* %i, align 4, !tbaa !1
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %i, align 4, !tbaa !1
  br label %194

; <label>:225                                     ; preds = %194
  %226 = load i64, i64* @g_309, align 8, !tbaa !7
  %227 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %226, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i32 %227)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %228

; <label>:228                                     ; preds = %268, %225
  %229 = load i32, i32* %i, align 4, !tbaa !1
  %230 = icmp slt i32 %229, 1
  br i1 %230, label %231, label %271

; <label>:231                                     ; preds = %228
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %232

; <label>:232                                     ; preds = %264, %231
  %233 = load i32, i32* %j, align 4, !tbaa !1
  %234 = icmp slt i32 %233, 8
  br i1 %234, label %235, label %267

; <label>:235                                     ; preds = %232
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %236

; <label>:236                                     ; preds = %260, %235
  %237 = load i32, i32* %k, align 4, !tbaa !1
  %238 = icmp slt i32 %237, 9
  br i1 %238, label %239, label %263

; <label>:239                                     ; preds = %236
  %240 = load i32, i32* %k, align 4, !tbaa !1
  %241 = sext i32 %240 to i64
  %242 = load i32, i32* %j, align 4, !tbaa !1
  %243 = sext i32 %242 to i64
  %244 = load i32, i32* %i, align 4, !tbaa !1
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds [1 x [8 x [9 x i16]]], [1 x [8 x [9 x i16]]]* @g_339, i32 0, i64 %245
  %247 = getelementptr inbounds [8 x [9 x i16]], [8 x [9 x i16]]* %246, i32 0, i64 %243
  %248 = getelementptr inbounds [9 x i16], [9 x i16]* %247, i32 0, i64 %241
  %249 = load i16, i16* %248, align 2, !tbaa !10
  %250 = zext i16 %249 to i64
  %251 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %250, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0), i32 %251)
  %252 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %259

; <label>:254                                     ; preds = %239
  %255 = load i32, i32* %i, align 4, !tbaa !1
  %256 = load i32, i32* %j, align 4, !tbaa !1
  %257 = load i32, i32* %k, align 4, !tbaa !1
  %258 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i32 0, i32 0), i32 %255, i32 %256, i32 %257)
  br label %259

; <label>:259                                     ; preds = %254, %239
  br label %260

; <label>:260                                     ; preds = %259
  %261 = load i32, i32* %k, align 4, !tbaa !1
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %k, align 4, !tbaa !1
  br label %236

; <label>:263                                     ; preds = %236
  br label %264

; <label>:264                                     ; preds = %263
  %265 = load i32, i32* %j, align 4, !tbaa !1
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %j, align 4, !tbaa !1
  br label %232

; <label>:267                                     ; preds = %232
  br label %268

; <label>:268                                     ; preds = %267
  %269 = load i32, i32* %i, align 4, !tbaa !1
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %i, align 4, !tbaa !1
  br label %228

; <label>:271                                     ; preds = %228
  %272 = load i64, i64* @g_340, align 8, !tbaa !7
  %273 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %272, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i32 %273)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %274

; <label>:274                                     ; preds = %314, %271
  %275 = load i32, i32* %i, align 4, !tbaa !1
  %276 = icmp slt i32 %275, 1
  br i1 %276, label %277, label %317

; <label>:277                                     ; preds = %274
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %278

; <label>:278                                     ; preds = %310, %277
  %279 = load i32, i32* %j, align 4, !tbaa !1
  %280 = icmp slt i32 %279, 3
  br i1 %280, label %281, label %313

; <label>:281                                     ; preds = %278
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %282

; <label>:282                                     ; preds = %306, %281
  %283 = load i32, i32* %k, align 4, !tbaa !1
  %284 = icmp slt i32 %283, 10
  br i1 %284, label %285, label %309

; <label>:285                                     ; preds = %282
  %286 = load i32, i32* %k, align 4, !tbaa !1
  %287 = sext i32 %286 to i64
  %288 = load i32, i32* %j, align 4, !tbaa !1
  %289 = sext i32 %288 to i64
  %290 = load i32, i32* %i, align 4, !tbaa !1
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds [1 x [3 x [10 x i16]]], [1 x [3 x [10 x i16]]]* @g_347, i32 0, i64 %291
  %293 = getelementptr inbounds [3 x [10 x i16]], [3 x [10 x i16]]* %292, i32 0, i64 %289
  %294 = getelementptr inbounds [10 x i16], [10 x i16]* %293, i32 0, i64 %287
  %295 = load i16, i16* %294, align 2, !tbaa !10
  %296 = zext i16 %295 to i64
  %297 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %296, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0), i32 %297)
  %298 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %305

; <label>:300                                     ; preds = %285
  %301 = load i32, i32* %i, align 4, !tbaa !1
  %302 = load i32, i32* %j, align 4, !tbaa !1
  %303 = load i32, i32* %k, align 4, !tbaa !1
  %304 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i32 0, i32 0), i32 %301, i32 %302, i32 %303)
  br label %305

; <label>:305                                     ; preds = %300, %285
  br label %306

; <label>:306                                     ; preds = %305
  %307 = load i32, i32* %k, align 4, !tbaa !1
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %k, align 4, !tbaa !1
  br label %282

; <label>:309                                     ; preds = %282
  br label %310

; <label>:310                                     ; preds = %309
  %311 = load i32, i32* %j, align 4, !tbaa !1
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* %j, align 4, !tbaa !1
  br label %278

; <label>:313                                     ; preds = %278
  br label %314

; <label>:314                                     ; preds = %313
  %315 = load i32, i32* %i, align 4, !tbaa !1
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %i, align 4, !tbaa !1
  br label %274

; <label>:317                                     ; preds = %274
  %318 = load i32, i32* @g_387, align 4, !tbaa !1
  %319 = sext i32 %318 to i64
  %320 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %319, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 %320)
  %321 = load i32, i32* @g_459, align 4, !tbaa !1
  %322 = zext i32 %321 to i64
  %323 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %322, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %323)
  %324 = load i64, i64* @g_596, align 8, !tbaa !7
  %325 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %324, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i32 %325)
  %326 = load volatile i64, i64* @g_603, align 8, !tbaa !7
  %327 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %326, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i32 %327)
  %328 = load volatile i32, i32* @g_640, align 4, !tbaa !1
  %329 = zext i32 %328 to i64
  %330 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %329, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 %330)
  %331 = load i8, i8* @g_705, align 1, !tbaa !9
  %332 = sext i8 %331 to i64
  %333 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %332, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i32 %333)
  %334 = load i16, i16* @g_887, align 2, !tbaa !10
  %335 = zext i16 %334 to i64
  %336 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %335, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i32 %336)
  %337 = load i8, i8* @g_989, align 1, !tbaa !9
  %338 = zext i8 %337 to i64
  %339 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %338, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i32 %339)
  %340 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 3741011825, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i32 %340)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %341

; <label>:341                                     ; preds = %357, %317
  %342 = load i32, i32* %i, align 4, !tbaa !1
  %343 = icmp slt i32 %342, 3
  br i1 %343, label %344, label %360

; <label>:344                                     ; preds = %341
  %345 = load i32, i32* %i, align 4, !tbaa !1
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds [3 x i32], [3 x i32]* @g_995, i32 0, i64 %346
  %348 = load i32, i32* %347, align 4, !tbaa !1
  %349 = zext i32 %348 to i64
  %350 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %349, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0), i32 %350)
  %351 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %356

; <label>:353                                     ; preds = %344
  %354 = load i32, i32* %i, align 4, !tbaa !1
  %355 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i32 %354)
  br label %356

; <label>:356                                     ; preds = %353, %344
  br label %357

; <label>:357                                     ; preds = %356
  %358 = load i32, i32* %i, align 4, !tbaa !1
  %359 = add nsw i32 %358, 1
  store i32 %359, i32* %i, align 4, !tbaa !1
  br label %341

; <label>:360                                     ; preds = %341
  %361 = load i8, i8* @g_1176, align 1, !tbaa !9
  %362 = sext i8 %361 to i64
  %363 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %362, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), i32 %363)
  %364 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0), i32 %364)
  %365 = load volatile i64, i64* @g_1310, align 8, !tbaa !7
  %366 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %365, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0), i32 %366)
  %367 = load i64, i64* @g_1905, align 8, !tbaa !7
  %368 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %367, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), i32 %368)
  %369 = load i32, i32* @g_1935, align 4, !tbaa !1
  %370 = sext i32 %369 to i64
  %371 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %370, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), i32 %371)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %372

; <label>:372                                     ; preds = %388, %360
  %373 = load i32, i32* %i, align 4, !tbaa !1
  %374 = icmp slt i32 %373, 8
  br i1 %374, label %375, label %391

; <label>:375                                     ; preds = %372
  %376 = load i32, i32* %i, align 4, !tbaa !1
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds [8 x i16], [8 x i16]* @g_2081, i32 0, i64 %377
  %379 = load i16, i16* %378, align 2, !tbaa !10
  %380 = sext i16 %379 to i64
  %381 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %380, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i32 0, i32 0), i32 %381)
  %382 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %387

; <label>:384                                     ; preds = %375
  %385 = load i32, i32* %i, align 4, !tbaa !1
  %386 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i32 %385)
  br label %387

; <label>:387                                     ; preds = %384, %375
  br label %388

; <label>:388                                     ; preds = %387
  %389 = load i32, i32* %i, align 4, !tbaa !1
  %390 = add nsw i32 %389, 1
  store i32 %390, i32* %i, align 4, !tbaa !1
  br label %372

; <label>:391                                     ; preds = %372
  %392 = load i32, i32* @g_2107, align 4, !tbaa !1
  %393 = zext i32 %392 to i64
  %394 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %393, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i32 0, i32 0), i32 %394)
  %395 = load i64, i64* @g_2128, align 8, !tbaa !7
  %396 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %395, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0), i32 %396)
  %397 = load i64, i64* @g_2181, align 8, !tbaa !7
  %398 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %397, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0), i32 %398)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %399

; <label>:399                                     ; preds = %439, %391
  %400 = load i32, i32* %i, align 4, !tbaa !1
  %401 = icmp slt i32 %400, 7
  br i1 %401, label %402, label %442

; <label>:402                                     ; preds = %399
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %403

; <label>:403                                     ; preds = %435, %402
  %404 = load i32, i32* %j, align 4, !tbaa !1
  %405 = icmp slt i32 %404, 7
  br i1 %405, label %406, label %438

; <label>:406                                     ; preds = %403
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %407

; <label>:407                                     ; preds = %431, %406
  %408 = load i32, i32* %k, align 4, !tbaa !1
  %409 = icmp slt i32 %408, 5
  br i1 %409, label %410, label %434

; <label>:410                                     ; preds = %407
  %411 = load i32, i32* %k, align 4, !tbaa !1
  %412 = sext i32 %411 to i64
  %413 = load i32, i32* %j, align 4, !tbaa !1
  %414 = sext i32 %413 to i64
  %415 = load i32, i32* %i, align 4, !tbaa !1
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds [7 x [7 x [5 x i32]]], [7 x [7 x [5 x i32]]]* @g_2195, i32 0, i64 %416
  %418 = getelementptr inbounds [7 x [5 x i32]], [7 x [5 x i32]]* %417, i32 0, i64 %414
  %419 = getelementptr inbounds [5 x i32], [5 x i32]* %418, i32 0, i64 %412
  %420 = load i32, i32* %419, align 4, !tbaa !1
  %421 = sext i32 %420 to i64
  %422 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %421, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.42, i32 0, i32 0), i32 %422)
  %423 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %424 = icmp ne i32 %423, 0
  br i1 %424, label %425, label %430

; <label>:425                                     ; preds = %410
  %426 = load i32, i32* %i, align 4, !tbaa !1
  %427 = load i32, i32* %j, align 4, !tbaa !1
  %428 = load i32, i32* %k, align 4, !tbaa !1
  %429 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i32 0, i32 0), i32 %426, i32 %427, i32 %428)
  br label %430

; <label>:430                                     ; preds = %425, %410
  br label %431

; <label>:431                                     ; preds = %430
  %432 = load i32, i32* %k, align 4, !tbaa !1
  %433 = add nsw i32 %432, 1
  store i32 %433, i32* %k, align 4, !tbaa !1
  br label %407

; <label>:434                                     ; preds = %407
  br label %435

; <label>:435                                     ; preds = %434
  %436 = load i32, i32* %j, align 4, !tbaa !1
  %437 = add nsw i32 %436, 1
  store i32 %437, i32* %j, align 4, !tbaa !1
  br label %403

; <label>:438                                     ; preds = %403
  br label %439

; <label>:439                                     ; preds = %438
  %440 = load i32, i32* %i, align 4, !tbaa !1
  %441 = add nsw i32 %440, 1
  store i32 %441, i32* %i, align 4, !tbaa !1
  br label %399

; <label>:442                                     ; preds = %399
  %443 = load i32, i32* @g_2196, align 4, !tbaa !1
  %444 = sext i32 %443 to i64
  %445 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %444, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), i32 %445)
  %446 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %447 = zext i32 %446 to i64
  %448 = xor i64 %447, 4294967295
  %449 = trunc i64 %448 to i32
  %450 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %449, i32 %450)
  %451 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %451) #1
  %452 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %452) #1
  %453 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %453) #1
  %454 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %454) #1
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @platform_main_begin() #0 {
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @crc32_gentab() #0 {
  %crc = alloca i32, align 4
  %poly = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %1 = bitcast i32* %crc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %poly to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 -306674912, i32* %poly, align 4, !tbaa !1
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %5

; <label>:5                                       ; preds = %33, %0
  %6 = load i32, i32* %i, align 4, !tbaa !1
  %7 = icmp slt i32 %6, 256
  br i1 %7, label %8, label %36

; <label>:8                                       ; preds = %5
  %9 = load i32, i32* %i, align 4, !tbaa !1
  store i32 %9, i32* %crc, align 4, !tbaa !1
  store i32 8, i32* %j, align 4, !tbaa !1
  br label %10

; <label>:10                                      ; preds = %25, %8
  %11 = load i32, i32* %j, align 4, !tbaa !1
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %28

; <label>:13                                      ; preds = %10
  %14 = load i32, i32* %crc, align 4, !tbaa !1
  %15 = and i32 %14, 1
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

; <label>:17                                      ; preds = %13
  %18 = load i32, i32* %crc, align 4, !tbaa !1
  %19 = lshr i32 %18, 1
  %20 = xor i32 %19, -306674912
  store i32 %20, i32* %crc, align 4, !tbaa !1
  br label %24

; <label>:21                                      ; preds = %13
  %22 = load i32, i32* %crc, align 4, !tbaa !1
  %23 = lshr i32 %22, 1
  store i32 %23, i32* %crc, align 4, !tbaa !1
  br label %24

; <label>:24                                      ; preds = %21, %17
  br label %25

; <label>:25                                      ; preds = %24
  %26 = load i32, i32* %j, align 4, !tbaa !1
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %j, align 4, !tbaa !1
  br label %10

; <label>:28                                      ; preds = %10
  %29 = load i32, i32* %crc, align 4, !tbaa !1
  %30 = load i32, i32* %i, align 4, !tbaa !1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [256 x i32], [256 x i32]* @crc32_tab, i32 0, i64 %31
  store i32 %29, i32* %32, align 4, !tbaa !1
  br label %33

; <label>:33                                      ; preds = %28
  %34 = load i32, i32* %i, align 4, !tbaa !1
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %i, align 4, !tbaa !1
  br label %5

; <label>:36                                      ; preds = %5
  %37 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %38 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %39 = bitcast i32* %poly to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %40 = bitcast i32* %crc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @func_1() #0 {
  %l_9 = alloca i32, align 4
  %l_56 = alloca i32*, align 8
  %l_1917 = alloca i32, align 4
  %l_2007 = alloca i32, align 4
  %l_2024 = alloca i32, align 4
  %l_2031 = alloca i64, align 8
  %l_2058 = alloca i32***, align 8
  %l_2060 = alloca [5 x [10 x [3 x i16]]], align 16
  %l_2085 = alloca i8*, align 8
  %l_2123 = alloca i32, align 4
  %l_2124 = alloca i32, align 4
  %l_2125 = alloca i16*, align 8
  %l_2135 = alloca i16, align 2
  %l_2167 = alloca i32**, align 8
  %l_2177 = alloca i32, align 4
  %l_2202 = alloca i32, align 4
  %l_2204 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l_61 = alloca i8, align 1
  %l_1959 = alloca i32, align 4
  %l_1975 = alloca i32, align 4
  %l_2006 = alloca i32, align 4
  %l_2040 = alloca [10 x [6 x i32**]], align 16
  %l_2101 = alloca i64, align 8
  %i1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  %1 = bitcast i32* %l_9 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 9, i32* %l_9, align 4, !tbaa !1
  %2 = bitcast i32** %l_56 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store i32* @g_2, i32** %l_56, align 8, !tbaa !5
  %3 = bitcast i32* %l_1917 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 1437220415, i32* %l_1917, align 4, !tbaa !1
  %4 = bitcast i32* %l_2007 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 1161282503, i32* %l_2007, align 4, !tbaa !1
  %5 = bitcast i32* %l_2024 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 -149823990, i32* %l_2024, align 4, !tbaa !1
  %6 = bitcast i64* %l_2031 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i64 9, i64* %l_2031, align 8, !tbaa !7
  %7 = bitcast i32**** %l_2058 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store i32*** getelementptr inbounds ([3 x i32**], [3 x i32**]* @g_113, i32 0, i64 0), i32**** %l_2058, align 8, !tbaa !5
  %8 = bitcast [5 x [10 x [3 x i16]]]* %l_2060 to i8*
  call void @llvm.lifetime.start(i64 300, i8* %8) #1
  %9 = bitcast [5 x [10 x [3 x i16]]]* %l_2060 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* bitcast ([5 x [10 x [3 x i16]]]* @func_1.l_2060 to i8*), i64 300, i32 16, i1 false)
  %10 = bitcast i8** %l_2085 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i8* @g_149, i8** %l_2085, align 8, !tbaa !5
  %11 = bitcast i32* %l_2123 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  store i32 -1296233386, i32* %l_2123, align 4, !tbaa !1
  %12 = bitcast i32* %l_2124 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  store i32 0, i32* %l_2124, align 4, !tbaa !1
  %13 = bitcast i16** %l_2125 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  store i16* getelementptr inbounds ([8 x i16], [8 x i16]* @g_2081, i32 0, i64 2), i16** %l_2125, align 8, !tbaa !5
  %14 = bitcast i16* %l_2135 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %14) #1
  store i16 8, i16* %l_2135, align 2, !tbaa !10
  %15 = bitcast i32*** %l_2167 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  store i32** @g_543, i32*** %l_2167, align 8, !tbaa !5
  %16 = bitcast i32* %l_2177 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  store i32 1111468267, i32* %l_2177, align 4, !tbaa !1
  %17 = bitcast i32* %l_2202 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  store i32 -6, i32* %l_2202, align 4, !tbaa !1
  %18 = bitcast i32* %l_2204 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  store i32 -10, i32* %l_2204, align 4, !tbaa !1
  %19 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  store i32 -18, i32* @g_2, align 4, !tbaa !1
  br label %22

; <label>:22                                      ; preds = %41, %0
  %23 = load i32, i32* @g_2, align 4, !tbaa !1
  %24 = icmp sle i32 %23, -22
  br i1 %24, label %25, label %44

; <label>:25                                      ; preds = %22
  call void @llvm.lifetime.start(i64 1, i8* %l_61) #1
  store i8 101, i8* %l_61, align 1, !tbaa !9
  %26 = bitcast i32* %l_1959 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #1
  store i32 1405723716, i32* %l_1959, align 4, !tbaa !1
  %27 = bitcast i32* %l_1975 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  store i32 0, i32* %l_1975, align 4, !tbaa !1
  %28 = bitcast i32* %l_2006 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #1
  store i32 59711973, i32* %l_2006, align 4, !tbaa !1
  %29 = bitcast [10 x [6 x i32**]]* %l_2040 to i8*
  call void @llvm.lifetime.start(i64 480, i8* %29) #1
  %30 = bitcast [10 x [6 x i32**]]* %l_2040 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* bitcast ([10 x [6 x i32**]]* @func_1.l_2040 to i8*), i64 480, i32 16, i1 false)
  %31 = bitcast i64* %l_2101 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %31) #1
  store i64 5253033753399799485, i64* %l_2101, align 8, !tbaa !7
  %32 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #1
  %33 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #1
  %34 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = bitcast i64* %l_2101 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  %37 = bitcast [10 x [6 x i32**]]* %l_2040 to i8*
  call void @llvm.lifetime.end(i64 480, i8* %37) #1
  %38 = bitcast i32* %l_2006 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %39 = bitcast i32* %l_1975 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %40 = bitcast i32* %l_1959 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_61) #1
  br label %41

; <label>:41                                      ; preds = %25
  %42 = load i32, i32* @g_2, align 4, !tbaa !1
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* @g_2, align 4, !tbaa !1
  br label %22

; <label>:44                                      ; preds = %22
  %45 = load i32*, i32** %l_56, align 8, !tbaa !5
  %46 = load i32, i32* %45, align 4, !tbaa !1
  %47 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #1
  %48 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  %49 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  %50 = bitcast i32* %l_2204 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #1
  %51 = bitcast i32* %l_2202 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #1
  %52 = bitcast i32* %l_2177 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  %53 = bitcast i32*** %l_2167 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #1
  %54 = bitcast i16* %l_2135 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %54) #1
  %55 = bitcast i16** %l_2125 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #1
  %56 = bitcast i32* %l_2124 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #1
  %57 = bitcast i32* %l_2123 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #1
  %58 = bitcast i8** %l_2085 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #1
  %59 = bitcast [5 x [10 x [3 x i16]]]* %l_2060 to i8*
  call void @llvm.lifetime.end(i64 300, i8* %59) #1
  %60 = bitcast i32**** %l_2058 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #1
  %61 = bitcast i64* %l_2031 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #1
  %62 = bitcast i32* %l_2024 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #1
  %63 = bitcast i32* %l_2007 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #1
  %64 = bitcast i32* %l_1917 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  %65 = bitcast i32** %l_56 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #1
  %66 = bitcast i32* %l_9 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  ret i32 %46
}

; Function Attrs: nounwind uwtable
define internal void @transparent_crc(i64 %val, i8* %vname, i32 %flag) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i64 %val, i64* %1, align 8, !tbaa !7
  store i8* %vname, i8** %2, align 8, !tbaa !5
  store i32 %flag, i32* %3, align 4, !tbaa !1
  %4 = load i64, i64* %1, align 8, !tbaa !7
  call void @crc32_8bytes(i64 %4)
  %5 = load i32, i32* %3, align 4, !tbaa !1
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %13

; <label>:7                                       ; preds = %0
  %8 = load i8*, i8** %2, align 8, !tbaa !5
  %9 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %10 = zext i32 %9 to i64
  %11 = xor i64 %10, 4294967295
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.44, i32 0, i32 0), i8* %8, i64 %11)
  br label %13

; <label>:13                                      ; preds = %7, %0
  ret void
}

declare i32 @printf(i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal void @platform_main_end(i32 %crc, i32 %flag) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %crc, i32* %1, align 4, !tbaa !1
  store i32 %flag, i32* %2, align 4, !tbaa !1
  %3 = load i32, i32* %1, align 4, !tbaa !1
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.45, i32 0, i32 0), i32 %3)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal void @crc32_8bytes(i64 %val) #0 {
  %1 = alloca i64, align 8
  store i64 %val, i64* %1, align 8, !tbaa !7
  %2 = load i64, i64* %1, align 8, !tbaa !7
  %3 = lshr i64 %2, 0
  %4 = and i64 %3, 255
  %5 = trunc i64 %4 to i8
  call void @crc32_byte(i8 zeroext %5)
  %6 = load i64, i64* %1, align 8, !tbaa !7
  %7 = lshr i64 %6, 8
  %8 = and i64 %7, 255
  %9 = trunc i64 %8 to i8
  call void @crc32_byte(i8 zeroext %9)
  %10 = load i64, i64* %1, align 8, !tbaa !7
  %11 = lshr i64 %10, 16
  %12 = and i64 %11, 255
  %13 = trunc i64 %12 to i8
  call void @crc32_byte(i8 zeroext %13)
  %14 = load i64, i64* %1, align 8, !tbaa !7
  %15 = lshr i64 %14, 24
  %16 = and i64 %15, 255
  %17 = trunc i64 %16 to i8
  call void @crc32_byte(i8 zeroext %17)
  %18 = load i64, i64* %1, align 8, !tbaa !7
  %19 = lshr i64 %18, 32
  %20 = and i64 %19, 255
  %21 = trunc i64 %20 to i8
  call void @crc32_byte(i8 zeroext %21)
  %22 = load i64, i64* %1, align 8, !tbaa !7
  %23 = lshr i64 %22, 40
  %24 = and i64 %23, 255
  %25 = trunc i64 %24 to i8
  call void @crc32_byte(i8 zeroext %25)
  %26 = load i64, i64* %1, align 8, !tbaa !7
  %27 = lshr i64 %26, 48
  %28 = and i64 %27, 255
  %29 = trunc i64 %28 to i8
  call void @crc32_byte(i8 zeroext %29)
  %30 = load i64, i64* %1, align 8, !tbaa !7
  %31 = lshr i64 %30, 56
  %32 = and i64 %31, 255
  %33 = trunc i64 %32 to i8
  call void @crc32_byte(i8 zeroext %33)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @crc32_byte(i8 zeroext %b) #0 {
  %1 = alloca i8, align 1
  store i8 %b, i8* %1, align 1, !tbaa !9
  %2 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %3 = lshr i32 %2, 8
  %4 = and i32 %3, 16777215
  %5 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %6 = load i8, i8* %1, align 1, !tbaa !9
  %7 = zext i8 %6 to i32
  %8 = xor i32 %5, %7
  %9 = and i32 %8, 255
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds [256 x i32], [256 x i32]* @crc32_tab, i32 0, i64 %10
  %12 = load i32, i32* %11, align 4, !tbaa !1
  %13 = xor i32 %4, %12
  store i32 %13, i32* @crc32_context, align 4, !tbaa !1
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.1 (tags/RELEASE_371/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"int", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !3, i64 0}
!7 = !{!8, !8, i64 0}
!8 = !{!"long", !3, i64 0}
!9 = !{!3, !3, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"short", !3, i64 0}
