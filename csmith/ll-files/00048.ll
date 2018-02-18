; ModuleID = '00048.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_4 = internal global [3 x i32] [i32 -1, i32 -1, i32 -1], align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"g_4[i]\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_5 = internal global i32 -632486081, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"g_5\00", align 1
@g_6 = internal global i32 -5, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"g_6\00", align 1
@g_20 = internal global i32 -324614071, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"g_20\00", align 1
@g_32 = internal global [4 x [9 x i16]] [[9 x i16] [i16 -1, i16 0, i16 -1, i16 -1, i16 0, i16 -1, i16 -1, i16 0, i16 -1], [9 x i16] [i16 -1, i16 0, i16 -1, i16 -1, i16 0, i16 -1, i16 -1, i16 0, i16 -1], [9 x i16] [i16 -1, i16 0, i16 -1, i16 -1, i16 0, i16 -1, i16 -1, i16 0, i16 -1], [9 x i16] [i16 -1, i16 0, i16 -1, i16 -1, i16 0, i16 -1, i16 -1, i16 0, i16 -1]], align 16
@.str.6 = private unnamed_addr constant [11 x i8] c"g_32[i][j]\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@g_46 = internal global i64 2, align 8
@.str.8 = private unnamed_addr constant [5 x i8] c"g_46\00", align 1
@g_50 = internal global i64 0, align 8
@.str.9 = private unnamed_addr constant [5 x i8] c"g_50\00", align 1
@g_53 = internal global i8 0, align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"g_53\00", align 1
@g_90 = internal global i32 1, align 4
@.str.11 = private unnamed_addr constant [5 x i8] c"g_90\00", align 1
@g_173 = internal global i8 0, align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"g_173\00", align 1
@g_183 = internal global [2 x i32] zeroinitializer, align 4
@.str.13 = private unnamed_addr constant [9 x i8] c"g_183[i]\00", align 1
@g_203 = internal global [9 x [7 x [4 x i16]]] [[7 x [4 x i16]] [[4 x i16] [i16 22759, i16 -5, i16 0, i16 23668], [4 x i16] [i16 -14144, i16 1, i16 30059, i16 0], [4 x i16] [i16 -1, i16 1, i16 -2, i16 23668], [4 x i16] [i16 1, i16 -5, i16 0, i16 -1], [4 x i16] [i16 -9, i16 18054, i16 0, i16 -9], [4 x i16] [i16 -2, i16 23668, i16 -10272, i16 -22720], [4 x i16] [i16 1, i16 -9, i16 -14144, i16 3]], [7 x [4 x i16]] [[4 x i16] [i16 30059, i16 -1, i16 30059, i16 -8378], [4 x i16] [i16 -8017, i16 -2, i16 6738, i16 -22720], [4 x i16] [i16 22759, i16 -26505, i16 -9, i16 -2], [4 x i16] [i16 0, i16 18054, i16 -9, i16 30059], [4 x i16] [i16 22759, i16 -32255, i16 6738, i16 23668], [4 x i16] [i16 -8017, i16 0, i16 30059, i16 1], [4 x i16] [i16 30059, i16 1, i16 -14144, i16 -26505]], [7 x [4 x i16]] [[4 x i16] [i16 1, i16 -32255, i16 -10272, i16 -1], [4 x i16] [i16 -2, i16 0, i16 0, i16 -2], [4 x i16] [i16 -9, i16 23668, i16 0, i16 6142], [4 x i16] [i16 1, i16 -2, i16 -2, i16 3], [4 x i16] [i16 -1, i16 -4075, i16 30059, i16 3], [4 x i16] [i16 -14144, i16 -2, i16 0, i16 6142], [4 x i16] [i16 22759, i16 23668, i16 1, i16 -2]], [7 x [4 x i16]] [[4 x i16] [i16 18054, i16 0, i16 -9, i16 -1], [4 x i16] [i16 0, i16 -32255, i16 0, i16 -26505], [4 x i16] [i16 -8017, i16 1, i16 0, i16 1], [4 x i16] [i16 -1, i16 0, i16 -14144, i16 23668], [4 x i16] [i16 0, i16 -32255, i16 0, i16 30059], [4 x i16] [i16 -2, i16 18054, i16 -2, i16 -2], [4 x i16] [i16 -2, i16 -26505, i16 0, i16 -22720]], [7 x [4 x i16]] [[4 x i16] [i16 0, i16 -2, i16 -14144, i16 -8378], [4 x i16] [i16 -1, i16 -1, i16 0, i16 3], [4 x i16] [i16 -8017, i16 -9, i16 0, i16 -22720], [4 x i16] [i16 0, i16 23668, i16 -9, i16 -9], [4 x i16] [i16 18054, i16 18054, i16 1, i16 -1], [4 x i16] [i16 22759, i16 -5, i16 0, i16 23668], [4 x i16] [i16 -14144, i16 1, i16 30059, i16 0]], [7 x [4 x i16]] [[4 x i16] [i16 -1, i16 1, i16 -2, i16 23668], [4 x i16] [i16 1, i16 -5, i16 0, i16 -1], [4 x i16] [i16 -9, i16 18054, i16 0, i16 -9], [4 x i16] [i16 -2, i16 23668, i16 -10272, i16 -22720], [4 x i16] [i16 1, i16 -9, i16 -14144, i16 3], [4 x i16] [i16 30059, i16 -1, i16 30059, i16 -8378], [4 x i16] [i16 -8017, i16 -2, i16 6738, i16 -22720]], [7 x [4 x i16]] [[4 x i16] [i16 22759, i16 -26505, i16 -9, i16 -2], [4 x i16] [i16 0, i16 18054, i16 -9, i16 30059], [4 x i16] [i16 22759, i16 -32255, i16 6738, i16 23668], [4 x i16] [i16 -8017, i16 0, i16 30059, i16 1], [4 x i16] [i16 2, i16 -4075, i16 -10272, i16 1], [4 x i16] [i16 -4075, i16 -14144, i16 -1, i16 -26505], [4 x i16] [i16 0, i16 -4, i16 -4, i16 0]], [7 x [4 x i16]] [[4 x i16] [i16 -2, i16 -9, i16 0, i16 7848], [4 x i16] [i16 -4075, i16 0, i16 22759, i16 0], [4 x i16] [i16 -26505, i16 29617, i16 2, i16 0], [4 x i16] [i16 -10272, i16 0, i16 17388, i16 7848], [4 x i16] [i16 30059, i16 -9, i16 18054, i16 0], [4 x i16] [i16 -8378, i16 -4, i16 -2, i16 -26505], [4 x i16] [i16 0, i16 -14144, i16 17388, i16 1]], [7 x [4 x i16]] [[4 x i16] [i16 0, i16 -4075, i16 23668, i16 -4075], [4 x i16] [i16 -26505, i16 17388, i16 -10272, i16 -9], [4 x i16] [i16 17388, i16 -14144, i16 0, i16 2], [4 x i16] [i16 0, i16 -8378, i16 3, i16 0], [4 x i16] [i16 0, i16 1, i16 0, i16 -5], [4 x i16] [i16 17388, i16 0, i16 -10272, i16 6738], [4 x i16] [i16 -26505, i16 6142, i16 23668, i16 0]]], align 16
@.str.14 = private unnamed_addr constant [15 x i8] c"g_203[i][j][k]\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"index = [%d][%d][%d]\0A\00", align 1
@g_208 = internal global i64 -7287535014430147075, align 8
@.str.16 = private unnamed_addr constant [6 x i8] c"g_208\00", align 1
@g_229 = internal global [9 x [1 x [4 x i16]]] [[1 x [4 x i16]] [[4 x i16] [i16 9, i16 6126, i16 6126, i16 9]], [1 x [4 x i16]] [[4 x i16] [i16 6126, i16 9, i16 6126, i16 6126]], [1 x [4 x i16]] [[4 x i16] [i16 9, i16 9, i16 -1, i16 9]], [1 x [4 x i16]] [[4 x i16] [i16 9, i16 6126, i16 6126, i16 9]], [1 x [4 x i16]] [[4 x i16] [i16 6126, i16 9, i16 6126, i16 6126]], [1 x [4 x i16]] [[4 x i16] [i16 9, i16 9, i16 -1, i16 9]], [1 x [4 x i16]] [[4 x i16] [i16 9, i16 6126, i16 6126, i16 9]], [1 x [4 x i16]] [[4 x i16] [i16 6126, i16 9, i16 6126, i16 6126]], [1 x [4 x i16]] [[4 x i16] [i16 9, i16 9, i16 -1, i16 9]]], align 16
@.str.17 = private unnamed_addr constant [15 x i8] c"g_229[i][j][k]\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"g_293\00", align 1
@g_318 = internal global i8 35, align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"g_318\00", align 1
@g_323 = internal global i32 1331681368, align 4
@.str.20 = private unnamed_addr constant [6 x i8] c"g_323\00", align 1
@g_325 = internal global i8 -72, align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"g_325\00", align 1
@g_632 = internal global i32 183977628, align 4
@.str.22 = private unnamed_addr constant [6 x i8] c"g_632\00", align 1
@g_712 = internal global i16 2417, align 2
@.str.23 = private unnamed_addr constant [6 x i8] c"g_712\00", align 1
@g_882 = internal global [7 x [9 x [2 x i64]]] [[9 x [2 x i64]] [[2 x i64] [i64 2890998586254676017, i64 2890998586254676017], [2 x i64] [i64 2890998586254676017, i64 2890998586254676017], [2 x i64] [i64 2890998586254676017, i64 2890998586254676017], [2 x i64] [i64 2890998586254676017, i64 2890998586254676017], [2 x i64] [i64 2890998586254676017, i64 2890998586254676017], [2 x i64] [i64 2890998586254676017, i64 2890998586254676017], [2 x i64] [i64 2890998586254676017, i64 2890998586254676017], [2 x i64] [i64 2890998586254676017, i64 2890998586254676017], [2 x i64] [i64 2890998586254676017, i64 2890998586254676017]], [9 x [2 x i64]] [[2 x i64] [i64 2890998586254676017, i64 2890998586254676017], [2 x i64] [i64 2890998586254676017, i64 2890998586254676017], [2 x i64] [i64 2890998586254676017, i64 2890998586254676017], [2 x i64] [i64 2890998586254676017, i64 2890998586254676017], [2 x i64] [i64 2890998586254676017, i64 2890998586254676017], [2 x i64] [i64 2890998586254676017, i64 2890998586254676017], [2 x i64] [i64 2890998586254676017, i64 2890998586254676017], [2 x i64] [i64 2890998586254676017, i64 2890998586254676017], [2 x i64] [i64 2890998586254676017, i64 2890998586254676017]], [9 x [2 x i64]] [[2 x i64] [i64 2890998586254676017, i64 2890998586254676017], [2 x i64] [i64 2890998586254676017, i64 2890998586254676017], [2 x i64] [i64 2890998586254676017, i64 2890998586254676017], [2 x i64] [i64 2890998586254676017, i64 2890998586254676017], [2 x i64] [i64 2890998586254676017, i64 2890998586254676017], [2 x i64] [i64 2890998586254676017, i64 2890998586254676017], [2 x i64] [i64 2890998586254676017, i64 2890998586254676017], [2 x i64] [i64 2890998586254676017, i64 2890998586254676017], [2 x i64] [i64 2890998586254676017, i64 2890998586254676017]], [9 x [2 x i64]] [[2 x i64] [i64 2890998586254676017, i64 2890998586254676017], [2 x i64] [i64 2890998586254676017, i64 2890998586254676017], [2 x i64] [i64 2890998586254676017, i64 2890998586254676017], [2 x i64] [i64 2890998586254676017, i64 2890998586254676017], [2 x i64] [i64 2890998586254676017, i64 2890998586254676017], [2 x i64] [i64 2890998586254676017, i64 2890998586254676017], [2 x i64] [i64 2890998586254676017, i64 2890998586254676017], [2 x i64] [i64 2890998586254676017, i64 2890998586254676017], [2 x i64] [i64 2890998586254676017, i64 2890998586254676017]], [9 x [2 x i64]] [[2 x i64] [i64 2890998586254676017, i64 2890998586254676017], [2 x i64] [i64 2890998586254676017, i64 2890998586254676017], [2 x i64] [i64 2890998586254676017, i64 2890998586254676017], [2 x i64] [i64 2890998586254676017, i64 2890998586254676017], [2 x i64] [i64 2890998586254676017, i64 2890998586254676017], [2 x i64] [i64 2890998586254676017, i64 2890998586254676017], [2 x i64] [i64 2890998586254676017, i64 2890998586254676017], [2 x i64] [i64 2890998586254676017, i64 2890998586254676017], [2 x i64] [i64 2890998586254676017, i64 2890998586254676017]], [9 x [2 x i64]] [[2 x i64] [i64 2890998586254676017, i64 2890998586254676017], [2 x i64] [i64 2890998586254676017, i64 2890998586254676017], [2 x i64] [i64 2890998586254676017, i64 2890998586254676017], [2 x i64] [i64 2890998586254676017, i64 2890998586254676017], [2 x i64] [i64 2890998586254676017, i64 2890998586254676017], [2 x i64] [i64 2890998586254676017, i64 2890998586254676017], [2 x i64] [i64 2890998586254676017, i64 2890998586254676017], [2 x i64] [i64 2890998586254676017, i64 2890998586254676017], [2 x i64] [i64 2890998586254676017, i64 2890998586254676017]], [9 x [2 x i64]] [[2 x i64] [i64 2890998586254676017, i64 2890998586254676017], [2 x i64] [i64 2890998586254676017, i64 2890998586254676017], [2 x i64] [i64 2890998586254676017, i64 2890998586254676017], [2 x i64] [i64 2890998586254676017, i64 2890998586254676017], [2 x i64] [i64 2890998586254676017, i64 2890998586254676017], [2 x i64] [i64 2890998586254676017, i64 2890998586254676017], [2 x i64] [i64 2890998586254676017, i64 2890998586254676017], [2 x i64] [i64 2890998586254676017, i64 2890998586254676017], [2 x i64] [i64 2890998586254676017, i64 2890998586254676017]]], align 16
@.str.24 = private unnamed_addr constant [15 x i8] c"g_882[i][j][k]\00", align 1
@g_894 = internal global i64 4, align 8
@.str.25 = private unnamed_addr constant [6 x i8] c"g_894\00", align 1
@g_895 = internal global i32 0, align 4
@.str.26 = private unnamed_addr constant [6 x i8] c"g_895\00", align 1
@g_932 = internal global i64 5359975603671093585, align 8
@.str.27 = private unnamed_addr constant [6 x i8] c"g_932\00", align 1
@g_1129 = internal global i64 -2, align 8
@.str.28 = private unnamed_addr constant [7 x i8] c"g_1129\00", align 1
@g_1197 = internal global i16 7526, align 2
@.str.29 = private unnamed_addr constant [7 x i8] c"g_1197\00", align 1
@g_1213 = internal global i32 -10, align 4
@.str.30 = private unnamed_addr constant [7 x i8] c"g_1213\00", align 1
@g_1235 = internal global [6 x [2 x i32]] [[2 x i32] [i32 1254904844, i32 1254904844], [2 x i32] [i32 1254904844, i32 1254904844], [2 x i32] [i32 1254904844, i32 1254904844], [2 x i32] [i32 1254904844, i32 1254904844], [2 x i32] [i32 1254904844, i32 1254904844], [2 x i32] [i32 1254904844, i32 1254904844]], align 16
@.str.31 = private unnamed_addr constant [13 x i8] c"g_1235[i][j]\00", align 1
@g_1457 = internal global i32 1, align 4
@.str.32 = private unnamed_addr constant [7 x i8] c"g_1457\00", align 1
@g_1626 = internal global i8 -1, align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"g_1626\00", align 1
@g_1692 = internal global [2 x i8] c"\F6\F6", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"g_1692[i]\00", align 1
@g_1707 = internal global i32 -748571518, align 4
@.str.35 = private unnamed_addr constant [7 x i8] c"g_1707\00", align 1
@g_1798 = internal global i16 32605, align 2
@.str.36 = private unnamed_addr constant [7 x i8] c"g_1798\00", align 1
@g_1943 = internal global [9 x [8 x i8]] [[8 x i8] c"\01\91\01O\F6\09\01\01", [8 x i8] c"\91O\0B\F7O\09\05\09", [8 x i8] c"\07\91\00\91\07\01\F7\07", [8 x i8] c"\09\01\01\09\F6O\01\91", [8 x i8] c"\01\01\01\F7\03\03\F7\01", [8 x i8] c"\F6\F6\00\07\1A\EE\05\F6", [8 x i8] c"\01\01\0B\03\05\0B\01\F6", [8 x i8] c"\01\09\01\07\01\09\01\01", [8 x i8] c"\91\07\01\F7\07\01\05\91"], align 16
@.str.37 = private unnamed_addr constant [13 x i8] c"g_1943[i][j]\00", align 1
@g_1947 = internal global i16 1, align 2
@.str.38 = private unnamed_addr constant [7 x i8] c"g_1947\00", align 1
@g_2130 = internal global i32 1759396390, align 4
@.str.39 = private unnamed_addr constant [7 x i8] c"g_2130\00", align 1
@g_2342 = internal global [4 x [3 x [6 x i32]]] [[3 x [6 x i32]] [[6 x i32] [i32 428559349, i32 -7, i32 1769690993, i32 -7, i32 428559349, i32 621868706], [6 x i32] [i32 -7, i32 428559349, i32 621868706, i32 621868706, i32 428559349, i32 -7], [6 x i32] [i32 0, i32 -7, i32 847655746, i32 428559349, i32 847655746, i32 -7]], [3 x [6 x i32]] [[6 x i32] [i32 847655746, i32 0, i32 621868706, i32 1769690993, i32 1769690993, i32 621868706], [6 x i32] [i32 847655746, i32 847655746, i32 1769690993, i32 428559349, i32 8, i32 428559349], [6 x i32] [i32 0, i32 847655746, i32 0, i32 621868706, i32 1769690993, i32 1769690993]], [3 x [6 x i32]] [[6 x i32] [i32 -7, i32 0, i32 0, i32 -7, i32 847655746, i32 428559349], [6 x i32] [i32 428559349, i32 -7, i32 1769690993, i32 -7, i32 428559349, i32 621868706], [6 x i32] [i32 -7, i32 428559349, i32 1769690993, i32 1769690993, i32 621868706, i32 0]], [3 x [6 x i32]] [[6 x i32] [i32 428559349, i32 0, i32 8, i32 621868706, i32 8, i32 0], [6 x i32] [i32 8, i32 428559349, i32 1769690993, i32 847655746, i32 847655746, i32 1769690993], [6 x i32] [i32 8, i32 8, i32 847655746, i32 621868706, i32 -7, i32 621868706]]], align 16
@.str.40 = private unnamed_addr constant [16 x i8] c"g_2342[i][j][k]\00", align 1
@g_2417 = internal global i32 4, align 4
@.str.41 = private unnamed_addr constant [7 x i8] c"g_2417\00", align 1
@g_2632 = internal global i32 -1702128888, align 4
@.str.42 = private unnamed_addr constant [7 x i8] c"g_2632\00", align 1
@g_2664 = internal global i16 -6, align 2
@.str.43 = private unnamed_addr constant [7 x i8] c"g_2664\00", align 1
@g_2726 = internal global [4 x i8] c"\A0\A0\A0\A0", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"g_2726[i]\00", align 1
@g_2733 = internal global i32 0, align 4
@.str.45 = private unnamed_addr constant [7 x i8] c"g_2733\00", align 1
@g_2793 = internal global i32 9, align 4
@.str.46 = private unnamed_addr constant [7 x i8] c"g_2793\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@g_2760 = internal global [8 x i64**] [i64** @g_2761, i64** @g_2761, i64** @g_2761, i64** @g_2761, i64** @g_2761, i64** @g_2761, i64** @g_2761, i64** @g_2761], align 16
@g_799 = internal global i32* bitcast (i8* getelementptr (i8, i8* bitcast ([2 x i32]* @g_183 to i8*), i64 4) to i32*), align 8
@func_1.l_2817 = private unnamed_addr constant [5 x [4 x i32**]] [[4 x i32**] [i32** @g_799, i32** @g_799, i32** @g_799, i32** null], [4 x i32**] [i32** null, i32** @g_799, i32** @g_799, i32** null], [4 x i32**] [i32** @g_799, i32** @g_799, i32** @g_799, i32** @g_799], [4 x i32**] [i32** @g_799, i32** null, i32** @g_799, i32** null], [4 x i32**] [i32** @g_799, i32** null, i32** @g_799, i32** null]], align 16
@func_1.l_2967 = private unnamed_addr constant [3 x [9 x i8]] [[9 x i8] c"\95\01\0B\01\95\95\01\0B\01", [9 x i8] c"\01\5C&&\5C\01\5C&&", [9 x i8] c"\95\95\01\0B\01\95\95\01\0B"], align 16
@func_1.l_2772 = private unnamed_addr constant [8 x [2 x [4 x i32]]] [[2 x [4 x i32]] [[4 x i32] [i32 7, i32 7, i32 1601288856, i32 18834628], [4 x i32] [i32 -986565934, i32 422884940, i32 833619900, i32 -1365552414]], [2 x [4 x i32]] [[4 x i32] [i32 -6, i32 833619900, i32 18834628, i32 833619900], [4 x i32] [i32 18834628, i32 833619900, i32 -6, i32 -1365552414]], [2 x [4 x i32]] [[4 x i32] [i32 833619900, i32 422884940, i32 -986565934, i32 18834628], [4 x i32] [i32 1601288856, i32 7, i32 7, i32 1601288856]], [2 x [4 x i32]] [[4 x i32] [i32 1601288856, i32 -1365552414, i32 -986565934, i32 -2144440951], [4 x i32] [i32 833619900, i32 1601288856, i32 -6, i32 1642974368]], [2 x [4 x i32]] [[4 x i32] [i32 18834628, i32 -492469597, i32 18834628, i32 1642974368], [4 x i32] [i32 -6, i32 1601288856, i32 833619900, i32 -2144440951]], [2 x [4 x i32]] [[4 x i32] [i32 -986565934, i32 -1365552414, i32 1601288856, i32 1601288856], [4 x i32] [i32 7, i32 7, i32 1601288856, i32 18834628]], [2 x [4 x i32]] [[4 x i32] [i32 -986565934, i32 -6, i32 -492469597, i32 1601288856], [4 x i32] [i32 -986565934, i32 -492469597, i32 -1365552414, i32 -492469597]], [2 x [4 x i32]] [[4 x i32] [i32 -1365552414, i32 -492469597, i32 -986565934, i32 1601288856], [4 x i32] [i32 -492469597, i32 -6, i32 18834628, i32 -1365552414]]], align 16
@func_1.l_2777 = internal constant [5 x [4 x i16*]] [[4 x i16*] [i16* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x [7 x [4 x i16]]]* @g_203 to i8*), i64 366) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x [1 x [4 x i16]]]* @g_229 to i8*), i64 60) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x [7 x [4 x i16]]]* @g_203 to i8*), i64 366) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x [7 x [4 x i16]]]* @g_203 to i8*), i64 366) to i16*)], [4 x i16*] [i16* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x [1 x [4 x i16]]]* @g_229 to i8*), i64 60) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x [1 x [4 x i16]]]* @g_229 to i8*), i64 60) to i16*), i16* @g_1798, i16* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x [1 x [4 x i16]]]* @g_229 to i8*), i64 60) to i16*)], [4 x i16*] [i16* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x [1 x [4 x i16]]]* @g_229 to i8*), i64 60) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x [7 x [4 x i16]]]* @g_203 to i8*), i64 366) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x [7 x [4 x i16]]]* @g_203 to i8*), i64 366) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x [1 x [4 x i16]]]* @g_229 to i8*), i64 60) to i16*)], [4 x i16*] [i16* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x [7 x [4 x i16]]]* @g_203 to i8*), i64 366) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x [1 x [4 x i16]]]* @g_229 to i8*), i64 60) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x [7 x [4 x i16]]]* @g_203 to i8*), i64 366) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x [7 x [4 x i16]]]* @g_203 to i8*), i64 366) to i16*)], [4 x i16*] [i16* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x [1 x [4 x i16]]]* @g_229 to i8*), i64 60) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x [1 x [4 x i16]]]* @g_229 to i8*), i64 60) to i16*), i16* @g_1798, i16* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x [1 x [4 x i16]]]* @g_229 to i8*), i64 60) to i16*)]], align 16
@g_2063 = internal global i16** @g_2064, align 8
@func_1.l_2771 = private unnamed_addr constant [1 x [10 x [5 x i32]]] [[10 x [5 x i32]] [[5 x i32] [i32 -818288149, i32 -818288149, i32 -818288149, i32 -818288149, i32 -818288149], [5 x i32] [i32 4, i32 4, i32 4, i32 4, i32 4], [5 x i32] [i32 -818288149, i32 -818288149, i32 -818288149, i32 -818288149, i32 -818288149], [5 x i32] [i32 4, i32 4, i32 4, i32 4, i32 4], [5 x i32] [i32 -818288149, i32 -818288149, i32 -818288149, i32 -818288149, i32 -818288149], [5 x i32] [i32 4, i32 4, i32 4, i32 4, i32 4], [5 x i32] [i32 -818288149, i32 -818288149, i32 -818288149, i32 -818288149, i32 -818288149], [5 x i32] [i32 4, i32 4, i32 4, i32 4, i32 4], [5 x i32] [i32 -818288149, i32 -818288149, i32 -818288149, i32 -818288149, i32 -818288149], [5 x i32] [i32 4, i32 4, i32 4, i32 4, i32 4]]], align 16
@g_2761 = internal global i64* @g_894, align 8
@g_2064 = internal global i16* bitcast (i8* getelementptr (i8, i8* bitcast ([4 x [9 x i16]]* @g_32 to i8*), i64 34) to i16*), align 8
@.str.47 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

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
  %90 = call i64 @func_1()
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %91

; <label>:91                                      ; preds = %107, %89
  %92 = load i32, i32* %i, align 4, !tbaa !1
  %93 = icmp slt i32 %92, 3
  br i1 %93, label %94, label %110

; <label>:94                                      ; preds = %91
  %95 = load i32, i32* %i, align 4, !tbaa !1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [3 x i32], [3 x i32]* @g_4, i32 0, i64 %96
  %98 = load i32, i32* %97, align 4, !tbaa !1
  %99 = sext i32 %98 to i64
  %100 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %99, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 %100)
  %101 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

; <label>:103                                     ; preds = %94
  %104 = load i32, i32* %i, align 4, !tbaa !1
  %105 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 %104)
  br label %106

; <label>:106                                     ; preds = %103, %94
  br label %107

; <label>:107                                     ; preds = %106
  %108 = load i32, i32* %i, align 4, !tbaa !1
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %i, align 4, !tbaa !1
  br label %91

; <label>:110                                     ; preds = %91
  %111 = load i32, i32* @g_5, align 4, !tbaa !1
  %112 = sext i32 %111 to i64
  %113 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %112, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i32 %113)
  %114 = load i32, i32* @g_6, align 4, !tbaa !1
  %115 = sext i32 %114 to i64
  %116 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %115, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i32 %116)
  %117 = load i32, i32* @g_20, align 4, !tbaa !1
  %118 = sext i32 %117 to i64
  %119 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %118, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 %119)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %120

; <label>:120                                     ; preds = %148, %110
  %121 = load i32, i32* %i, align 4, !tbaa !1
  %122 = icmp slt i32 %121, 4
  br i1 %122, label %123, label %151

; <label>:123                                     ; preds = %120
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %124

; <label>:124                                     ; preds = %144, %123
  %125 = load i32, i32* %j, align 4, !tbaa !1
  %126 = icmp slt i32 %125, 9
  br i1 %126, label %127, label %147

; <label>:127                                     ; preds = %124
  %128 = load i32, i32* %j, align 4, !tbaa !1
  %129 = sext i32 %128 to i64
  %130 = load i32, i32* %i, align 4, !tbaa !1
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [4 x [9 x i16]], [4 x [9 x i16]]* @g_32, i32 0, i64 %131
  %133 = getelementptr inbounds [9 x i16], [9 x i16]* %132, i32 0, i64 %129
  %134 = load i16, i16* %133, align 2, !tbaa !10
  %135 = zext i16 %134 to i64
  %136 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %135, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i32 %136)
  %137 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %143

; <label>:139                                     ; preds = %127
  %140 = load i32, i32* %i, align 4, !tbaa !1
  %141 = load i32, i32* %j, align 4, !tbaa !1
  %142 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0), i32 %140, i32 %141)
  br label %143

; <label>:143                                     ; preds = %139, %127
  br label %144

; <label>:144                                     ; preds = %143
  %145 = load i32, i32* %j, align 4, !tbaa !1
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %j, align 4, !tbaa !1
  br label %124

; <label>:147                                     ; preds = %124
  br label %148

; <label>:148                                     ; preds = %147
  %149 = load i32, i32* %i, align 4, !tbaa !1
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %i, align 4, !tbaa !1
  br label %120

; <label>:151                                     ; preds = %120
  %152 = load i64, i64* @g_46, align 8, !tbaa !7
  %153 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %152, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 %153)
  %154 = load i64, i64* @g_50, align 8, !tbaa !7
  %155 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %154, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i32 %155)
  %156 = load i8, i8* @g_53, align 1, !tbaa !9
  %157 = sext i8 %156 to i64
  %158 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %157, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32 %158)
  %159 = load i32, i32* @g_90, align 4, !tbaa !1
  %160 = zext i32 %159 to i64
  %161 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %160, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i32 %161)
  %162 = load i8, i8* @g_173, align 1, !tbaa !9
  %163 = zext i8 %162 to i64
  %164 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %163, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i32 %164)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %165

; <label>:165                                     ; preds = %181, %151
  %166 = load i32, i32* %i, align 4, !tbaa !1
  %167 = icmp slt i32 %166, 2
  br i1 %167, label %168, label %184

; <label>:168                                     ; preds = %165
  %169 = load i32, i32* %i, align 4, !tbaa !1
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds [2 x i32], [2 x i32]* @g_183, i32 0, i64 %170
  %172 = load i32, i32* %171, align 4, !tbaa !1
  %173 = zext i32 %172 to i64
  %174 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %173, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i32 %174)
  %175 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %180

; <label>:177                                     ; preds = %168
  %178 = load i32, i32* %i, align 4, !tbaa !1
  %179 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 %178)
  br label %180

; <label>:180                                     ; preds = %177, %168
  br label %181

; <label>:181                                     ; preds = %180
  %182 = load i32, i32* %i, align 4, !tbaa !1
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %i, align 4, !tbaa !1
  br label %165

; <label>:184                                     ; preds = %165
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %185

; <label>:185                                     ; preds = %225, %184
  %186 = load i32, i32* %i, align 4, !tbaa !1
  %187 = icmp slt i32 %186, 9
  br i1 %187, label %188, label %228

; <label>:188                                     ; preds = %185
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %189

; <label>:189                                     ; preds = %221, %188
  %190 = load i32, i32* %j, align 4, !tbaa !1
  %191 = icmp slt i32 %190, 7
  br i1 %191, label %192, label %224

; <label>:192                                     ; preds = %189
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %193

; <label>:193                                     ; preds = %217, %192
  %194 = load i32, i32* %k, align 4, !tbaa !1
  %195 = icmp slt i32 %194, 4
  br i1 %195, label %196, label %220

; <label>:196                                     ; preds = %193
  %197 = load i32, i32* %k, align 4, !tbaa !1
  %198 = sext i32 %197 to i64
  %199 = load i32, i32* %j, align 4, !tbaa !1
  %200 = sext i32 %199 to i64
  %201 = load i32, i32* %i, align 4, !tbaa !1
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [9 x [7 x [4 x i16]]], [9 x [7 x [4 x i16]]]* @g_203, i32 0, i64 %202
  %204 = getelementptr inbounds [7 x [4 x i16]], [7 x [4 x i16]]* %203, i32 0, i64 %200
  %205 = getelementptr inbounds [4 x i16], [4 x i16]* %204, i32 0, i64 %198
  %206 = load i16, i16* %205, align 2, !tbaa !10
  %207 = sext i16 %206 to i64
  %208 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %207, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i32 %208)
  %209 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %216

; <label>:211                                     ; preds = %196
  %212 = load i32, i32* %i, align 4, !tbaa !1
  %213 = load i32, i32* %j, align 4, !tbaa !1
  %214 = load i32, i32* %k, align 4, !tbaa !1
  %215 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i32 0, i32 0), i32 %212, i32 %213, i32 %214)
  br label %216

; <label>:216                                     ; preds = %211, %196
  br label %217

; <label>:217                                     ; preds = %216
  %218 = load i32, i32* %k, align 4, !tbaa !1
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %k, align 4, !tbaa !1
  br label %193

; <label>:220                                     ; preds = %193
  br label %221

; <label>:221                                     ; preds = %220
  %222 = load i32, i32* %j, align 4, !tbaa !1
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %j, align 4, !tbaa !1
  br label %189

; <label>:224                                     ; preds = %189
  br label %225

; <label>:225                                     ; preds = %224
  %226 = load i32, i32* %i, align 4, !tbaa !1
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %i, align 4, !tbaa !1
  br label %185

; <label>:228                                     ; preds = %185
  %229 = load i64, i64* @g_208, align 8, !tbaa !7
  %230 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %229, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i32 %230)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %231

; <label>:231                                     ; preds = %271, %228
  %232 = load i32, i32* %i, align 4, !tbaa !1
  %233 = icmp slt i32 %232, 9
  br i1 %233, label %234, label %274

; <label>:234                                     ; preds = %231
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %235

; <label>:235                                     ; preds = %267, %234
  %236 = load i32, i32* %j, align 4, !tbaa !1
  %237 = icmp slt i32 %236, 1
  br i1 %237, label %238, label %270

; <label>:238                                     ; preds = %235
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %239

; <label>:239                                     ; preds = %263, %238
  %240 = load i32, i32* %k, align 4, !tbaa !1
  %241 = icmp slt i32 %240, 4
  br i1 %241, label %242, label %266

; <label>:242                                     ; preds = %239
  %243 = load i32, i32* %k, align 4, !tbaa !1
  %244 = sext i32 %243 to i64
  %245 = load i32, i32* %j, align 4, !tbaa !1
  %246 = sext i32 %245 to i64
  %247 = load i32, i32* %i, align 4, !tbaa !1
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds [9 x [1 x [4 x i16]]], [9 x [1 x [4 x i16]]]* @g_229, i32 0, i64 %248
  %250 = getelementptr inbounds [1 x [4 x i16]], [1 x [4 x i16]]* %249, i32 0, i64 %246
  %251 = getelementptr inbounds [4 x i16], [4 x i16]* %250, i32 0, i64 %244
  %252 = load i16, i16* %251, align 2, !tbaa !10
  %253 = sext i16 %252 to i64
  %254 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %253, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0), i32 %254)
  %255 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %262

; <label>:257                                     ; preds = %242
  %258 = load i32, i32* %i, align 4, !tbaa !1
  %259 = load i32, i32* %j, align 4, !tbaa !1
  %260 = load i32, i32* %k, align 4, !tbaa !1
  %261 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i32 0, i32 0), i32 %258, i32 %259, i32 %260)
  br label %262

; <label>:262                                     ; preds = %257, %242
  br label %263

; <label>:263                                     ; preds = %262
  %264 = load i32, i32* %k, align 4, !tbaa !1
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %k, align 4, !tbaa !1
  br label %239

; <label>:266                                     ; preds = %239
  br label %267

; <label>:267                                     ; preds = %266
  %268 = load i32, i32* %j, align 4, !tbaa !1
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %j, align 4, !tbaa !1
  br label %235

; <label>:270                                     ; preds = %235
  br label %271

; <label>:271                                     ; preds = %270
  %272 = load i32, i32* %i, align 4, !tbaa !1
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %i, align 4, !tbaa !1
  br label %231

; <label>:274                                     ; preds = %231
  %275 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i32 %275)
  %276 = load i8, i8* @g_318, align 1, !tbaa !9
  %277 = sext i8 %276 to i64
  %278 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %277, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i32 %278)
  %279 = load i32, i32* @g_323, align 4, !tbaa !1
  %280 = sext i32 %279 to i64
  %281 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %280, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 %281)
  %282 = load i8, i8* @g_325, align 1, !tbaa !9
  %283 = sext i8 %282 to i64
  %284 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %283, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i32 %284)
  %285 = load i32, i32* @g_632, align 4, !tbaa !1
  %286 = sext i32 %285 to i64
  %287 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %286, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i32 %287)
  %288 = load volatile i16, i16* @g_712, align 2, !tbaa !10
  %289 = sext i16 %288 to i64
  %290 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %289, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 %290)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %291

; <label>:291                                     ; preds = %330, %274
  %292 = load i32, i32* %i, align 4, !tbaa !1
  %293 = icmp slt i32 %292, 7
  br i1 %293, label %294, label %333

; <label>:294                                     ; preds = %291
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %295

; <label>:295                                     ; preds = %326, %294
  %296 = load i32, i32* %j, align 4, !tbaa !1
  %297 = icmp slt i32 %296, 9
  br i1 %297, label %298, label %329

; <label>:298                                     ; preds = %295
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %299

; <label>:299                                     ; preds = %322, %298
  %300 = load i32, i32* %k, align 4, !tbaa !1
  %301 = icmp slt i32 %300, 2
  br i1 %301, label %302, label %325

; <label>:302                                     ; preds = %299
  %303 = load i32, i32* %k, align 4, !tbaa !1
  %304 = sext i32 %303 to i64
  %305 = load i32, i32* %j, align 4, !tbaa !1
  %306 = sext i32 %305 to i64
  %307 = load i32, i32* %i, align 4, !tbaa !1
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds [7 x [9 x [2 x i64]]], [7 x [9 x [2 x i64]]]* @g_882, i32 0, i64 %308
  %310 = getelementptr inbounds [9 x [2 x i64]], [9 x [2 x i64]]* %309, i32 0, i64 %306
  %311 = getelementptr inbounds [2 x i64], [2 x i64]* %310, i32 0, i64 %304
  %312 = load i64, i64* %311, align 8, !tbaa !7
  %313 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %312, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i32 0, i32 0), i32 %313)
  %314 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %321

; <label>:316                                     ; preds = %302
  %317 = load i32, i32* %i, align 4, !tbaa !1
  %318 = load i32, i32* %j, align 4, !tbaa !1
  %319 = load i32, i32* %k, align 4, !tbaa !1
  %320 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i32 0, i32 0), i32 %317, i32 %318, i32 %319)
  br label %321

; <label>:321                                     ; preds = %316, %302
  br label %322

; <label>:322                                     ; preds = %321
  %323 = load i32, i32* %k, align 4, !tbaa !1
  %324 = add nsw i32 %323, 1
  store i32 %324, i32* %k, align 4, !tbaa !1
  br label %299

; <label>:325                                     ; preds = %299
  br label %326

; <label>:326                                     ; preds = %325
  %327 = load i32, i32* %j, align 4, !tbaa !1
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %j, align 4, !tbaa !1
  br label %295

; <label>:329                                     ; preds = %295
  br label %330

; <label>:330                                     ; preds = %329
  %331 = load i32, i32* %i, align 4, !tbaa !1
  %332 = add nsw i32 %331, 1
  store i32 %332, i32* %i, align 4, !tbaa !1
  br label %291

; <label>:333                                     ; preds = %291
  %334 = load i64, i64* @g_894, align 8, !tbaa !7
  %335 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %334, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i32 %335)
  %336 = load i32, i32* @g_895, align 4, !tbaa !1
  %337 = zext i32 %336 to i64
  %338 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %337, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i32 %338)
  %339 = load i64, i64* @g_932, align 8, !tbaa !7
  %340 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %339, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 %340)
  %341 = load i64, i64* @g_1129, align 8, !tbaa !7
  %342 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %341, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0), i32 %342)
  %343 = load volatile i16, i16* @g_1197, align 2, !tbaa !10
  %344 = sext i16 %343 to i64
  %345 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %344, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), i32 %345)
  %346 = load volatile i32, i32* @g_1213, align 4, !tbaa !1
  %347 = sext i32 %346 to i64
  %348 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %347, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0), i32 %348)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %349

; <label>:349                                     ; preds = %377, %333
  %350 = load i32, i32* %i, align 4, !tbaa !1
  %351 = icmp slt i32 %350, 6
  br i1 %351, label %352, label %380

; <label>:352                                     ; preds = %349
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %353

; <label>:353                                     ; preds = %373, %352
  %354 = load i32, i32* %j, align 4, !tbaa !1
  %355 = icmp slt i32 %354, 2
  br i1 %355, label %356, label %376

; <label>:356                                     ; preds = %353
  %357 = load i32, i32* %j, align 4, !tbaa !1
  %358 = sext i32 %357 to i64
  %359 = load i32, i32* %i, align 4, !tbaa !1
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds [6 x [2 x i32]], [6 x [2 x i32]]* @g_1235, i32 0, i64 %360
  %362 = getelementptr inbounds [2 x i32], [2 x i32]* %361, i32 0, i64 %358
  %363 = load i32, i32* %362, align 4, !tbaa !1
  %364 = zext i32 %363 to i64
  %365 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %364, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i32 0, i32 0), i32 %365)
  %366 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %372

; <label>:368                                     ; preds = %356
  %369 = load i32, i32* %i, align 4, !tbaa !1
  %370 = load i32, i32* %j, align 4, !tbaa !1
  %371 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0), i32 %369, i32 %370)
  br label %372

; <label>:372                                     ; preds = %368, %356
  br label %373

; <label>:373                                     ; preds = %372
  %374 = load i32, i32* %j, align 4, !tbaa !1
  %375 = add nsw i32 %374, 1
  store i32 %375, i32* %j, align 4, !tbaa !1
  br label %353

; <label>:376                                     ; preds = %353
  br label %377

; <label>:377                                     ; preds = %376
  %378 = load i32, i32* %i, align 4, !tbaa !1
  %379 = add nsw i32 %378, 1
  store i32 %379, i32* %i, align 4, !tbaa !1
  br label %349

; <label>:380                                     ; preds = %349
  %381 = load volatile i32, i32* @g_1457, align 4, !tbaa !1
  %382 = zext i32 %381 to i64
  %383 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %382, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), i32 %383)
  %384 = load volatile i8, i8* @g_1626, align 1, !tbaa !9
  %385 = zext i8 %384 to i64
  %386 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %385, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), i32 %386)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %387

; <label>:387                                     ; preds = %403, %380
  %388 = load i32, i32* %i, align 4, !tbaa !1
  %389 = icmp slt i32 %388, 2
  br i1 %389, label %390, label %406

; <label>:390                                     ; preds = %387
  %391 = load i32, i32* %i, align 4, !tbaa !1
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds [2 x i8], [2 x i8]* @g_1692, i32 0, i64 %392
  %394 = load volatile i8, i8* %393, align 1, !tbaa !9
  %395 = sext i8 %394 to i64
  %396 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %395, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0), i32 %396)
  %397 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %399, label %402

; <label>:399                                     ; preds = %390
  %400 = load i32, i32* %i, align 4, !tbaa !1
  %401 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 %400)
  br label %402

; <label>:402                                     ; preds = %399, %390
  br label %403

; <label>:403                                     ; preds = %402
  %404 = load i32, i32* %i, align 4, !tbaa !1
  %405 = add nsw i32 %404, 1
  store i32 %405, i32* %i, align 4, !tbaa !1
  br label %387

; <label>:406                                     ; preds = %387
  %407 = load i32, i32* @g_1707, align 4, !tbaa !1
  %408 = sext i32 %407 to i64
  %409 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %408, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0), i32 %409)
  %410 = load i16, i16* @g_1798, align 2, !tbaa !10
  %411 = sext i16 %410 to i64
  %412 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %411, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), i32 %412)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %413

; <label>:413                                     ; preds = %441, %406
  %414 = load i32, i32* %i, align 4, !tbaa !1
  %415 = icmp slt i32 %414, 9
  br i1 %415, label %416, label %444

; <label>:416                                     ; preds = %413
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %417

; <label>:417                                     ; preds = %437, %416
  %418 = load i32, i32* %j, align 4, !tbaa !1
  %419 = icmp slt i32 %418, 8
  br i1 %419, label %420, label %440

; <label>:420                                     ; preds = %417
  %421 = load i32, i32* %j, align 4, !tbaa !1
  %422 = sext i32 %421 to i64
  %423 = load i32, i32* %i, align 4, !tbaa !1
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds [9 x [8 x i8]], [9 x [8 x i8]]* @g_1943, i32 0, i64 %424
  %426 = getelementptr inbounds [8 x i8], [8 x i8]* %425, i32 0, i64 %422
  %427 = load i8, i8* %426, align 1, !tbaa !9
  %428 = sext i8 %427 to i64
  %429 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %428, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i32 0, i32 0), i32 %429)
  %430 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %431 = icmp ne i32 %430, 0
  br i1 %431, label %432, label %436

; <label>:432                                     ; preds = %420
  %433 = load i32, i32* %i, align 4, !tbaa !1
  %434 = load i32, i32* %j, align 4, !tbaa !1
  %435 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0), i32 %433, i32 %434)
  br label %436

; <label>:436                                     ; preds = %432, %420
  br label %437

; <label>:437                                     ; preds = %436
  %438 = load i32, i32* %j, align 4, !tbaa !1
  %439 = add nsw i32 %438, 1
  store i32 %439, i32* %j, align 4, !tbaa !1
  br label %417

; <label>:440                                     ; preds = %417
  br label %441

; <label>:441                                     ; preds = %440
  %442 = load i32, i32* %i, align 4, !tbaa !1
  %443 = add nsw i32 %442, 1
  store i32 %443, i32* %i, align 4, !tbaa !1
  br label %413

; <label>:444                                     ; preds = %413
  %445 = load volatile i16, i16* @g_1947, align 2, !tbaa !10
  %446 = zext i16 %445 to i64
  %447 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %446, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), i32 %447)
  %448 = load i32, i32* @g_2130, align 4, !tbaa !1
  %449 = sext i32 %448 to i64
  %450 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %449, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i32 0, i32 0), i32 %450)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %451

; <label>:451                                     ; preds = %491, %444
  %452 = load i32, i32* %i, align 4, !tbaa !1
  %453 = icmp slt i32 %452, 4
  br i1 %453, label %454, label %494

; <label>:454                                     ; preds = %451
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %455

; <label>:455                                     ; preds = %487, %454
  %456 = load i32, i32* %j, align 4, !tbaa !1
  %457 = icmp slt i32 %456, 3
  br i1 %457, label %458, label %490

; <label>:458                                     ; preds = %455
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %459

; <label>:459                                     ; preds = %483, %458
  %460 = load i32, i32* %k, align 4, !tbaa !1
  %461 = icmp slt i32 %460, 6
  br i1 %461, label %462, label %486

; <label>:462                                     ; preds = %459
  %463 = load i32, i32* %k, align 4, !tbaa !1
  %464 = sext i32 %463 to i64
  %465 = load i32, i32* %j, align 4, !tbaa !1
  %466 = sext i32 %465 to i64
  %467 = load i32, i32* %i, align 4, !tbaa !1
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds [4 x [3 x [6 x i32]]], [4 x [3 x [6 x i32]]]* @g_2342, i32 0, i64 %468
  %470 = getelementptr inbounds [3 x [6 x i32]], [3 x [6 x i32]]* %469, i32 0, i64 %466
  %471 = getelementptr inbounds [6 x i32], [6 x i32]* %470, i32 0, i64 %464
  %472 = load volatile i32, i32* %471, align 4, !tbaa !1
  %473 = sext i32 %472 to i64
  %474 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %473, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.40, i32 0, i32 0), i32 %474)
  %475 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %476 = icmp ne i32 %475, 0
  br i1 %476, label %477, label %482

; <label>:477                                     ; preds = %462
  %478 = load i32, i32* %i, align 4, !tbaa !1
  %479 = load i32, i32* %j, align 4, !tbaa !1
  %480 = load i32, i32* %k, align 4, !tbaa !1
  %481 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i32 0, i32 0), i32 %478, i32 %479, i32 %480)
  br label %482

; <label>:482                                     ; preds = %477, %462
  br label %483

; <label>:483                                     ; preds = %482
  %484 = load i32, i32* %k, align 4, !tbaa !1
  %485 = add nsw i32 %484, 1
  store i32 %485, i32* %k, align 4, !tbaa !1
  br label %459

; <label>:486                                     ; preds = %459
  br label %487

; <label>:487                                     ; preds = %486
  %488 = load i32, i32* %j, align 4, !tbaa !1
  %489 = add nsw i32 %488, 1
  store i32 %489, i32* %j, align 4, !tbaa !1
  br label %455

; <label>:490                                     ; preds = %455
  br label %491

; <label>:491                                     ; preds = %490
  %492 = load i32, i32* %i, align 4, !tbaa !1
  %493 = add nsw i32 %492, 1
  store i32 %493, i32* %i, align 4, !tbaa !1
  br label %451

; <label>:494                                     ; preds = %451
  %495 = load volatile i32, i32* @g_2417, align 4, !tbaa !1
  %496 = zext i32 %495 to i64
  %497 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %496, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0), i32 %497)
  %498 = load i32, i32* @g_2632, align 4, !tbaa !1
  %499 = sext i32 %498 to i64
  %500 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %499, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), i32 %500)
  %501 = load volatile i16, i16* @g_2664, align 2, !tbaa !10
  %502 = sext i16 %501 to i64
  %503 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %502, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), i32 %503)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %504

; <label>:504                                     ; preds = %520, %494
  %505 = load i32, i32* %i, align 4, !tbaa !1
  %506 = icmp slt i32 %505, 4
  br i1 %506, label %507, label %523

; <label>:507                                     ; preds = %504
  %508 = load i32, i32* %i, align 4, !tbaa !1
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds [4 x i8], [4 x i8]* @g_2726, i32 0, i64 %509
  %511 = load volatile i8, i8* %510, align 1, !tbaa !9
  %512 = sext i8 %511 to i64
  %513 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %512, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i32 0, i32 0), i32 %513)
  %514 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %515 = icmp ne i32 %514, 0
  br i1 %515, label %516, label %519

; <label>:516                                     ; preds = %507
  %517 = load i32, i32* %i, align 4, !tbaa !1
  %518 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 %517)
  br label %519

; <label>:519                                     ; preds = %516, %507
  br label %520

; <label>:520                                     ; preds = %519
  %521 = load i32, i32* %i, align 4, !tbaa !1
  %522 = add nsw i32 %521, 1
  store i32 %522, i32* %i, align 4, !tbaa !1
  br label %504

; <label>:523                                     ; preds = %504
  %524 = load volatile i32, i32* @g_2733, align 4, !tbaa !1
  %525 = sext i32 %524 to i64
  %526 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %525, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), i32 %526)
  %527 = load i32, i32* @g_2793, align 4, !tbaa !1
  %528 = zext i32 %527 to i64
  %529 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %528, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0), i32 %529)
  %530 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %531 = zext i32 %530 to i64
  %532 = xor i64 %531, 4294967295
  %533 = trunc i64 %532 to i32
  %534 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %533, i32 %534)
  %535 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %535) #1
  %536 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %536) #1
  %537 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %537) #1
  %538 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %538) #1
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
define internal i64 @func_1() #0 {
  %l_3 = alloca i32*, align 8
  %l_2 = alloca i32**, align 8
  %l_2776 = alloca i16*, align 8
  %l_2778 = alloca i64***, align 8
  %l_2782 = alloca i16*, align 8
  %l_2787 = alloca i32, align 4
  %l_2791 = alloca i32, align 4
  %l_2792 = alloca i32, align 4
  %l_2817 = alloca [5 x [4 x i32**]], align 16
  %l_2816 = alloca i32***, align 8
  %l_2819 = alloca i64*, align 8
  %l_2930 = alloca i32****, align 8
  %l_2933 = alloca i32, align 4
  %l_2936 = alloca i32*, align 8
  %l_2948 = alloca i64*, align 8
  %l_2955 = alloca i64, align 8
  %l_2965 = alloca i32, align 4
  %l_2966 = alloca i32, align 4
  %l_2967 = alloca [3 x [9 x i8]], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %l_14 = alloca i64, align 8
  %l_2772 = alloca [8 x [2 x [4 x i32]]], align 16
  %l_2779 = alloca i16*, align 8
  %l_2818 = alloca i64*, align 8
  %l_2852 = alloca i16***, align 8
  %l_2874 = alloca i8***, align 8
  %l_2898 = alloca i32*, align 8
  %l_2951 = alloca i32, align 4
  %l_2964 = alloca i32, align 4
  %i1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  %k = alloca i32, align 4
  %l_2771 = alloca [1 x [10 x [5 x i32]]], align 16
  %i3 = alloca i32, align 4
  %j4 = alloca i32, align 4
  %k5 = alloca i32, align 4
  %1 = alloca i32
  %2 = bitcast i32** %l_3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store i32* getelementptr inbounds ([3 x i32], [3 x i32]* @g_4, i32 0, i64 1), i32** %l_3, align 8, !tbaa !5
  %3 = bitcast i32*** %l_2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store i32** %l_3, i32*** %l_2, align 8, !tbaa !5
  %4 = bitcast i16** %l_2776 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store i16* getelementptr inbounds ([9 x [7 x [4 x i16]]], [9 x [7 x [4 x i16]]]* @g_203, i32 0, i64 3, i64 6, i64 1), i16** %l_2776, align 8, !tbaa !5
  %5 = bitcast i64**** %l_2778 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store i64*** getelementptr inbounds ([8 x i64**], [8 x i64**]* @g_2760, i32 0, i64 2), i64**** %l_2778, align 8, !tbaa !5
  %6 = bitcast i16** %l_2782 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i16* getelementptr inbounds ([9 x [1 x [4 x i16]]], [9 x [1 x [4 x i16]]]* @g_229, i32 0, i64 1, i64 0, i64 0), i16** %l_2782, align 8, !tbaa !5
  %7 = bitcast i32* %l_2787 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 7, i32* %l_2787, align 4, !tbaa !1
  %8 = bitcast i32* %l_2791 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  store i32 2, i32* %l_2791, align 4, !tbaa !1
  %9 = bitcast i32* %l_2792 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 1092665162, i32* %l_2792, align 4, !tbaa !1
  %10 = bitcast [5 x [4 x i32**]]* %l_2817 to i8*
  call void @llvm.lifetime.start(i64 160, i8* %10) #1
  %11 = bitcast [5 x [4 x i32**]]* %l_2817 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* bitcast ([5 x [4 x i32**]]* @func_1.l_2817 to i8*), i64 160, i32 16, i1 false)
  %12 = bitcast i32**** %l_2816 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = getelementptr inbounds [5 x [4 x i32**]], [5 x [4 x i32**]]* %l_2817, i32 0, i64 1
  %14 = getelementptr inbounds [4 x i32**], [4 x i32**]* %13, i32 0, i64 0
  store i32*** %14, i32**** %l_2816, align 8, !tbaa !5
  %15 = bitcast i64** %l_2819 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  store i64* getelementptr inbounds ([7 x [9 x [2 x i64]]], [7 x [9 x [2 x i64]]]* @g_882, i32 0, i64 3, i64 1, i64 1), i64** %l_2819, align 8, !tbaa !5
  %16 = bitcast i32***** %l_2930 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  store i32**** null, i32***** %l_2930, align 8, !tbaa !5
  %17 = bitcast i32* %l_2933 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  store i32 1, i32* %l_2933, align 4, !tbaa !1
  %18 = bitcast i32** %l_2936 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  store i32* %l_2787, i32** %l_2936, align 8, !tbaa !5
  %19 = bitcast i64** %l_2948 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  store i64* @g_894, i64** %l_2948, align 8, !tbaa !5
  %20 = bitcast i64* %l_2955 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  store i64 0, i64* %l_2955, align 8, !tbaa !7
  %21 = bitcast i32* %l_2965 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  store i32 -845180225, i32* %l_2965, align 4, !tbaa !1
  %22 = bitcast i32* %l_2966 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  store i32 -1, i32* %l_2966, align 4, !tbaa !1
  %23 = bitcast [3 x [9 x i8]]* %l_2967 to i8*
  call void @llvm.lifetime.start(i64 27, i8* %23) #1
  %24 = bitcast [3 x [9 x i8]]* %l_2967 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* getelementptr inbounds ([3 x [9 x i8]], [3 x [9 x i8]]* @func_1.l_2967, i32 0, i32 0, i32 0), i64 27, i32 16, i1 false)
  %25 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #1
  %26 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #1
  %27 = load i32**, i32*** %l_2, align 8, !tbaa !5
  store i32* null, i32** %27, align 8, !tbaa !5
  %28 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @g_4, i32 0, i64 0), align 4, !tbaa !1
  %29 = sext i32 %28 to i64
  %30 = xor i64 %29, 3706310747
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @g_4, i32 0, i64 0), align 4, !tbaa !1
  store i32 0, i32* @g_5, align 4, !tbaa !1
  br label %32

; <label>:32                                      ; preds = %87, %0
  %33 = load i32, i32* @g_5, align 4, !tbaa !1
  %34 = icmp sle i32 %33, 2
  br i1 %34, label %35, label %90

; <label>:35                                      ; preds = %32
  %36 = bitcast i64* %l_14 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %36) #1
  store i64 -7970855030344027561, i64* %l_14, align 8, !tbaa !7
  %37 = bitcast [8 x [2 x [4 x i32]]]* %l_2772 to i8*
  call void @llvm.lifetime.start(i64 256, i8* %37) #1
  %38 = bitcast [8 x [2 x [4 x i32]]]* %l_2772 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* bitcast ([8 x [2 x [4 x i32]]]* @func_1.l_2772 to i8*), i64 256, i32 16, i1 false)
  %39 = bitcast i16** %l_2779 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %39) #1
  store i16* getelementptr inbounds ([9 x [1 x [4 x i16]]], [9 x [1 x [4 x i16]]]* @g_229, i32 0, i64 6, i64 0, i64 1), i16** %l_2779, align 8, !tbaa !5
  %40 = bitcast i64** %l_2818 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %40) #1
  store i64* getelementptr inbounds ([7 x [9 x [2 x i64]]], [7 x [9 x [2 x i64]]]* @g_882, i32 0, i64 3, i64 1, i64 1), i64** %l_2818, align 8, !tbaa !5
  %41 = bitcast i16**** %l_2852 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %41) #1
  store i16*** @g_2063, i16**** %l_2852, align 8, !tbaa !5
  %42 = bitcast i8**** %l_2874 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %42) #1
  store i8*** null, i8**** %l_2874, align 8, !tbaa !5
  %43 = bitcast i32** %l_2898 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %43) #1
  store i32* @g_90, i32** %l_2898, align 8, !tbaa !5
  %44 = bitcast i32* %l_2951 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %44) #1
  store i32 0, i32* %l_2951, align 4, !tbaa !1
  %45 = bitcast i32* %l_2964 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %45) #1
  store i32 -9, i32* %l_2964, align 4, !tbaa !1
  %46 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %46) #1
  %47 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %47) #1
  %48 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %48) #1
  store i32 2, i32* @g_6, align 4, !tbaa !1
  br label %49

; <label>:49                                      ; preds = %62, %35
  %50 = load i32, i32* @g_6, align 4, !tbaa !1
  %51 = icmp sge i32 %50, 0
  br i1 %51, label %52, label %65

; <label>:52                                      ; preds = %49
  %53 = bitcast [1 x [10 x [5 x i32]]]* %l_2771 to i8*
  call void @llvm.lifetime.start(i64 200, i8* %53) #1
  %54 = bitcast [1 x [10 x [5 x i32]]]* %l_2771 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %54, i8* bitcast ([1 x [10 x [5 x i32]]]* @func_1.l_2771 to i8*), i64 200, i32 16, i1 false)
  %55 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %55) #1
  %56 = bitcast i32* %j4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %56) #1
  %57 = bitcast i32* %k5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %57) #1
  %58 = bitcast i32* %k5 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #1
  %59 = bitcast i32* %j4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #1
  %60 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #1
  %61 = bitcast [1 x [10 x [5 x i32]]]* %l_2771 to i8*
  call void @llvm.lifetime.end(i64 200, i8* %61) #1
  br label %62

; <label>:62                                      ; preds = %52
  %63 = load i32, i32* @g_6, align 4, !tbaa !1
  %64 = sub nsw i32 %63, 1
  store i32 %64, i32* @g_6, align 4, !tbaa !1
  br label %49

; <label>:65                                      ; preds = %49
  %66 = load i32, i32* @g_5, align 4, !tbaa !1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [3 x i32], [3 x i32]* @g_4, i32 0, i64 %67
  %69 = load i32, i32* %68, align 4, !tbaa !1
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

; <label>:71                                      ; preds = %65
  store i32 4, i32* %1
  br label %73

; <label>:72                                      ; preds = %65
  store i32 0, i32* %1
  br label %73

; <label>:73                                      ; preds = %72, %71
  %74 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #1
  %75 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #1
  %76 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #1
  %77 = bitcast i32* %l_2964 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #1
  %78 = bitcast i32* %l_2951 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #1
  %79 = bitcast i32** %l_2898 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %79) #1
  %80 = bitcast i8**** %l_2874 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #1
  %81 = bitcast i16**** %l_2852 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #1
  %82 = bitcast i64** %l_2818 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %82) #1
  %83 = bitcast i16** %l_2779 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %83) #1
  %84 = bitcast [8 x [2 x [4 x i32]]]* %l_2772 to i8*
  call void @llvm.lifetime.end(i64 256, i8* %84) #1
  %85 = bitcast i64* %l_14 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %85) #1
  %cleanup.dest = load i32, i32* %1
  switch i32 %cleanup.dest, label %113 [
    i32 0, label %86
    i32 4, label %87
  ]

; <label>:86                                      ; preds = %73
  br label %87

; <label>:87                                      ; preds = %86, %73
  %88 = load i32, i32* @g_5, align 4, !tbaa !1
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* @g_5, align 4, !tbaa !1
  br label %32

; <label>:90                                      ; preds = %32
  %91 = load i64, i64* getelementptr inbounds ([7 x [9 x [2 x i64]]], [7 x [9 x [2 x i64]]]* @g_882, i32 0, i64 5, i64 5, i64 1), align 8, !tbaa !7
  store i32 1, i32* %1
  %92 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %92) #1
  %93 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %93) #1
  %94 = bitcast [3 x [9 x i8]]* %l_2967 to i8*
  call void @llvm.lifetime.end(i64 27, i8* %94) #1
  %95 = bitcast i32* %l_2966 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %95) #1
  %96 = bitcast i32* %l_2965 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %96) #1
  %97 = bitcast i64* %l_2955 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %97) #1
  %98 = bitcast i64** %l_2948 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %98) #1
  %99 = bitcast i32** %l_2936 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %99) #1
  %100 = bitcast i32* %l_2933 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %100) #1
  %101 = bitcast i32***** %l_2930 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %101) #1
  %102 = bitcast i64** %l_2819 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %102) #1
  %103 = bitcast i32**** %l_2816 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %103) #1
  %104 = bitcast [5 x [4 x i32**]]* %l_2817 to i8*
  call void @llvm.lifetime.end(i64 160, i8* %104) #1
  %105 = bitcast i32* %l_2792 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %105) #1
  %106 = bitcast i32* %l_2791 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %106) #1
  %107 = bitcast i32* %l_2787 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %107) #1
  %108 = bitcast i16** %l_2782 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %108) #1
  %109 = bitcast i64**** %l_2778 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %109) #1
  %110 = bitcast i16** %l_2776 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %110) #1
  %111 = bitcast i32*** %l_2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %111) #1
  %112 = bitcast i32** %l_3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %112) #1
  ret i64 %91

; <label>:113                                     ; preds = %73
  unreachable
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
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.47, i32 0, i32 0), i8* %8, i64 %11)
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
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i32 0, i32 0), i32 %3)
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
