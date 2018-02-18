; ModuleID = '00391.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.U0 = type { i64 }

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_4 = internal constant i8 -18, align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"g_4\00", align 1
@g_11 = internal constant [9 x [6 x [2 x i64]]] [[6 x [2 x i64]] [[2 x i64] [i64 -8098556590650835370, i64 0], [2 x i64] [i64 -8098556590650835370, i64 -8098556590650835370], [2 x i64] [i64 -8098556590650835370, i64 0], [2 x i64] [i64 -8098556590650835370, i64 -8098556590650835370], [2 x i64] [i64 -8098556590650835370, i64 0], [2 x i64] [i64 -8098556590650835370, i64 -8098556590650835370]], [6 x [2 x i64]] [[2 x i64] [i64 -8098556590650835370, i64 0], [2 x i64] [i64 -8098556590650835370, i64 -8098556590650835370], [2 x i64] [i64 -8098556590650835370, i64 0], [2 x i64] [i64 -8098556590650835370, i64 -8098556590650835370], [2 x i64] [i64 -8098556590650835370, i64 0], [2 x i64] [i64 -8098556590650835370, i64 -8098556590650835370]], [6 x [2 x i64]] [[2 x i64] [i64 -8098556590650835370, i64 0], [2 x i64] [i64 -8098556590650835370, i64 -8098556590650835370], [2 x i64] [i64 -8098556590650835370, i64 0], [2 x i64] [i64 -8098556590650835370, i64 -8098556590650835370], [2 x i64] [i64 -8098556590650835370, i64 0], [2 x i64] [i64 -8098556590650835370, i64 -8098556590650835370]], [6 x [2 x i64]] [[2 x i64] [i64 -8098556590650835370, i64 0], [2 x i64] [i64 -8098556590650835370, i64 -8098556590650835370], [2 x i64] [i64 -8098556590650835370, i64 0], [2 x i64] [i64 -8098556590650835370, i64 -8098556590650835370], [2 x i64] [i64 -8098556590650835370, i64 0], [2 x i64] [i64 -8098556590650835370, i64 -8098556590650835370]], [6 x [2 x i64]] [[2 x i64] [i64 -8098556590650835370, i64 0], [2 x i64] [i64 -8098556590650835370, i64 -8098556590650835370], [2 x i64] [i64 -8098556590650835370, i64 0], [2 x i64] [i64 -8098556590650835370, i64 -8098556590650835370], [2 x i64] [i64 -8098556590650835370, i64 0], [2 x i64] [i64 -8098556590650835370, i64 -8098556590650835370]], [6 x [2 x i64]] [[2 x i64] [i64 -8098556590650835370, i64 0], [2 x i64] [i64 -8098556590650835370, i64 -8098556590650835370], [2 x i64] [i64 -8098556590650835370, i64 0], [2 x i64] [i64 -8098556590650835370, i64 -8098556590650835370], [2 x i64] [i64 -8098556590650835370, i64 0], [2 x i64] [i64 -8098556590650835370, i64 -8098556590650835370]], [6 x [2 x i64]] [[2 x i64] [i64 -8098556590650835370, i64 0], [2 x i64] [i64 -8098556590650835370, i64 -8098556590650835370], [2 x i64] [i64 -8098556590650835370, i64 0], [2 x i64] [i64 -8098556590650835370, i64 -8098556590650835370], [2 x i64] [i64 -8098556590650835370, i64 0], [2 x i64] [i64 -8098556590650835370, i64 -8098556590650835370]], [6 x [2 x i64]] [[2 x i64] [i64 -8098556590650835370, i64 0], [2 x i64] [i64 -8098556590650835370, i64 -8098556590650835370], [2 x i64] [i64 -8098556590650835370, i64 0], [2 x i64] [i64 -8098556590650835370, i64 -8098556590650835370], [2 x i64] [i64 -8098556590650835370, i64 0], [2 x i64] [i64 -8098556590650835370, i64 -8098556590650835370]], [6 x [2 x i64]] [[2 x i64] [i64 -8098556590650835370, i64 0], [2 x i64] [i64 -8098556590650835370, i64 -8098556590650835370], [2 x i64] [i64 -8098556590650835370, i64 0], [2 x i64] [i64 -8098556590650835370, i64 -8098556590650835370], [2 x i64] [i64 -8098556590650835370, i64 0], [2 x i64] [i64 -8098556590650835370, i64 -8098556590650835370]]], align 16
@.str.2 = private unnamed_addr constant [14 x i8] c"g_11[i][j][k]\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"index = [%d][%d][%d]\0A\00", align 1
@g_23 = internal global [5 x i64] [i64 4034102899603490642, i64 4034102899603490642, i64 4034102899603490642, i64 4034102899603490642, i64 4034102899603490642], align 16
@.str.4 = private unnamed_addr constant [8 x i8] c"g_23[i]\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_25 = internal global i32 292689520, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"g_25\00", align 1
@g_87 = internal global i32 -990700604, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"g_87\00", align 1
@g_91 = internal global i32 -1113629856, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"g_91\00", align 1
@g_94 = internal global i32 -1, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"g_94\00", align 1
@g_123 = internal global i8 21, align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"g_123\00", align 1
@g_174 = internal global i16 15238, align 2
@.str.11 = private unnamed_addr constant [6 x i8] c"g_174\00", align 1
@g_183 = internal global [4 x i16] [i16 4, i16 4, i16 4, i16 4], align 2
@.str.12 = private unnamed_addr constant [9 x i8] c"g_183[i]\00", align 1
@g_201 = internal global [3 x i16] [i16 1, i16 1, i16 1], align 2
@.str.13 = private unnamed_addr constant [9 x i8] c"g_201[i]\00", align 1
@g_202 = internal global i32 5, align 4
@.str.14 = private unnamed_addr constant [6 x i8] c"g_202\00", align 1
@g_222 = internal global i32 1, align 4
@.str.15 = private unnamed_addr constant [6 x i8] c"g_222\00", align 1
@g_227 = internal global i8 -101, align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"g_227\00", align 1
@g_232 = internal global i16 28746, align 2
@.str.17 = private unnamed_addr constant [6 x i8] c"g_232\00", align 1
@g_243 = internal global i64 -613503637594493250, align 8
@.str.18 = private unnamed_addr constant [6 x i8] c"g_243\00", align 1
@g_246 = internal global i64 -5731046414211345284, align 8
@.str.19 = private unnamed_addr constant [6 x i8] c"g_246\00", align 1
@g_313 = internal global i8 -1, align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"g_313\00", align 1
@g_314 = internal global i64 -3557631357140509924, align 8
@.str.21 = private unnamed_addr constant [6 x i8] c"g_314\00", align 1
@g_328 = internal global i32 3, align 4
@.str.22 = private unnamed_addr constant [6 x i8] c"g_328\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"g_357\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"g_364\00", align 1
@g_416 = internal global %union.U0 { i64 -6 }, align 8
@.str.25 = private unnamed_addr constant [9 x i8] c"g_416.f0\00", align 1
@g_431 = internal global [7 x i32] [i32 1301994562, i32 -465376221, i32 1301994562, i32 1301994562, i32 -465376221, i32 1301994562, i32 1301994562], align 16
@.str.26 = private unnamed_addr constant [9 x i8] c"g_431[i]\00", align 1
@g_468 = internal global i32 -886306936, align 4
@.str.27 = private unnamed_addr constant [6 x i8] c"g_468\00", align 1
@g_478 = internal global i8 -104, align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"g_478\00", align 1
@g_512 = internal global i8 4, align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"g_512\00", align 1
@g_513 = internal global [7 x [1 x [4 x i32]]] [[1 x [4 x i32]] [[4 x i32] [i32 0, i32 2029196558, i32 -1, i32 6]], [1 x [4 x i32]] [[4 x i32] [i32 -2086711996, i32 0, i32 -1869801619, i32 -1347073307]], [1 x [4 x i32]] [[4 x i32] [i32 -813194895, i32 -6, i32 2029196558, i32 -2086711996]], [1 x [4 x i32]] [[4 x i32] [i32 -1, i32 -1549285068, i32 -6, i32 -7]], [1 x [4 x i32]] [[4 x i32] [i32 -813194895, i32 0, i32 -1549285068, i32 -1549285068]], [1 x [4 x i32]] [[4 x i32] [i32 -1347073307, i32 -1347073307, i32 -1549285068, i32 2029196558]], [1 x [4 x i32]] [[4 x i32] [i32 -813194895, i32 -1869801619, i32 -6, i32 0]]], align 16
@.str.30 = private unnamed_addr constant [15 x i8] c"g_513[i][j][k]\00", align 1
@g_514 = internal global i32 -1232338056, align 4
@.str.31 = private unnamed_addr constant [6 x i8] c"g_514\00", align 1
@g_577 = internal global i64 7, align 8
@.str.32 = private unnamed_addr constant [6 x i8] c"g_577\00", align 1
@g_578 = internal global i64 3473693309929201371, align 8
@.str.33 = private unnamed_addr constant [6 x i8] c"g_578\00", align 1
@g_579 = internal global [1 x [9 x [2 x i8]]] [[9 x [2 x i8]] [[2 x i8] c")\91", [2 x i8] c"\12)", [2 x i8] c"BB", [2 x i8] c"B)", [2 x i8] c"\12\91", [2 x i8] c")\91", [2 x i8] c"\12)", [2 x i8] c"BB", [2 x i8] c"B)"]], align 16
@.str.34 = private unnamed_addr constant [15 x i8] c"g_579[i][j][k]\00", align 1
@g_584 = internal global i32 -764352573, align 4
@.str.35 = private unnamed_addr constant [6 x i8] c"g_584\00", align 1
@g_625 = internal global i16 -10, align 2
@.str.36 = private unnamed_addr constant [6 x i8] c"g_625\00", align 1
@g_626 = internal global [4 x i16] [i16 -7547, i16 -7547, i16 -7547, i16 -7547], align 2
@.str.37 = private unnamed_addr constant [9 x i8] c"g_626[i]\00", align 1
@g_627 = internal global i32 -2110934634, align 4
@.str.38 = private unnamed_addr constant [6 x i8] c"g_627\00", align 1
@g_628 = internal global i32 0, align 4
@.str.39 = private unnamed_addr constant [6 x i8] c"g_628\00", align 1
@g_629 = internal global i32 0, align 4
@.str.40 = private unnamed_addr constant [6 x i8] c"g_629\00", align 1
@g_631 = internal global i32 -1282704489, align 4
@.str.41 = private unnamed_addr constant [6 x i8] c"g_631\00", align 1
@g_705 = internal global i64 1, align 8
@.str.42 = private unnamed_addr constant [6 x i8] c"g_705\00", align 1
@g_724 = internal global i8 -1, align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"g_724\00", align 1
@g_726 = internal global [8 x [5 x [6 x i8]]] [[5 x [6 x i8]] [[6 x i8] c"\FF\FF\ED\FF\FF\ED", [6 x i8] c"\FF\FF\ED\FF\FF\ED", [6 x i8] c"\FF\FF\ED\FF\FF\ED", [6 x i8] c"\FF\FF\ED\FF\FF\ED", [6 x i8] c"\FF\FF\ED\FF\FF\ED"], [5 x [6 x i8]] [[6 x i8] c"\FF\FF\ED\FF\FF\ED", [6 x i8] c"\FF\FF\ED\FF\FF\ED", [6 x i8] c"\FF\FF\ED\FF\FF\ED", [6 x i8] c"\FF\FF\ED\FF\FF\ED", [6 x i8] c"\FF\FF\ED\FF\FF\ED"], [5 x [6 x i8]] [[6 x i8] c"\FF\FF\ED\FF\FF\ED", [6 x i8] c"\FF\FF\ED\FF\FF\ED", [6 x i8] c"\FF\FF\ED\FF\FF\ED", [6 x i8] c"\FF\FF\ED\FF\FF\ED", [6 x i8] c"\FF\FF\ED\FF\FF\ED"], [5 x [6 x i8]] [[6 x i8] c"\FF\FF\ED\FF\FF\ED", [6 x i8] c"\FF\FF\ED\FF\FF\ED", [6 x i8] c"\FF\FF\ED\FF\FF\ED", [6 x i8] c"\FF\FF\ED\FF\FF\ED", [6 x i8] c"\FF\FF\ED\FF\FF\ED"], [5 x [6 x i8]] [[6 x i8] c"\FF\FF\ED\FF\FF\ED", [6 x i8] c"\FF\FF\ED\FF\FF\ED", [6 x i8] c"\FF\FF\ED\FF\FF\ED", [6 x i8] c"\FF\FF\ED\FF\FF\ED", [6 x i8] c"\FF\FF\ED\FF\FF\ED"], [5 x [6 x i8]] [[6 x i8] c"\FA\FA\FF\FA\FA\FF", [6 x i8] c"\FA\FA\FF\FA\FA\FF", [6 x i8] c"\FA\FA\FF\FA\FA\FF", [6 x i8] c"\FA\FA\FF\FA\FA\FF", [6 x i8] c"\FA\FA\FF\FA\FA\FF"], [5 x [6 x i8]] [[6 x i8] c"\FA\FA\FF\FA\FA\FF", [6 x i8] c"\FA\FA\FF\FA\FA\FF", [6 x i8] c"\FA\FA\FF\FA\FA\FF", [6 x i8] c"\FA\FA\FF\FA\FA\FF", [6 x i8] c"\FA\FA\FF\FA\FA\FF"], [5 x [6 x i8]] [[6 x i8] c"\FA\FA\FF\FA\FA\FF", [6 x i8] c"\FA\FA\FF\FA\FA\FF", [6 x i8] c"\FA\FA\FF\FA\FA\FF", [6 x i8] c"\FA\FA\FF\FA\FA\FF", [6 x i8] c"\FA\FA\FF\FA\FA\FF"]], align 16
@.str.44 = private unnamed_addr constant [15 x i8] c"g_726[i][j][k]\00", align 1
@g_730 = internal global [6 x [1 x [4 x i32]]] [[1 x [4 x i32]] [[4 x i32] [i32 -633432146, i32 -10, i32 -633432146, i32 -10]], [1 x [4 x i32]] [[4 x i32] [i32 -633432146, i32 -10, i32 -633432146, i32 -10]], [1 x [4 x i32]] [[4 x i32] [i32 -633432146, i32 -10, i32 -633432146, i32 -10]], [1 x [4 x i32]] [[4 x i32] [i32 -633432146, i32 -10, i32 -633432146, i32 -10]], [1 x [4 x i32]] [[4 x i32] [i32 -633432146, i32 -10, i32 -633432146, i32 -10]], [1 x [4 x i32]] [[4 x i32] [i32 -633432146, i32 -10, i32 -633432146, i32 -10]]], align 16
@.str.45 = private unnamed_addr constant [15 x i8] c"g_730[i][j][k]\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"g_769\00", align 1
@g_779 = internal global i8 0, align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"g_779\00", align 1
@g_899 = internal global i32 -1, align 4
@.str.48 = private unnamed_addr constant [6 x i8] c"g_899\00", align 1
@g_921 = internal global i8 -2, align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"g_921\00", align 1
@g_935 = internal global [2 x [9 x i32]] zeroinitializer, align 16
@.str.50 = private unnamed_addr constant [12 x i8] c"g_935[i][j]\00", align 1
@.str.51 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@g_937 = internal global i64 2398279386005800370, align 8
@.str.52 = private unnamed_addr constant [6 x i8] c"g_937\00", align 1
@g_985 = internal global i16 9, align 2
@.str.53 = private unnamed_addr constant [6 x i8] c"g_985\00", align 1
@g_1008 = internal global i8 61, align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"g_1008\00", align 1
@g_1033 = internal global i64 1, align 8
@.str.55 = private unnamed_addr constant [7 x i8] c"g_1033\00", align 1
@g_1054 = internal global [10 x i8] c"\14\14\14\14\14\14\14\14\14\14", align 1
@.str.56 = private unnamed_addr constant [10 x i8] c"g_1054[i]\00", align 1
@g_1056 = internal global i64 -4894264307410611888, align 8
@.str.57 = private unnamed_addr constant [7 x i8] c"g_1056\00", align 1
@g_1057 = internal global i32 1231817500, align 4
@.str.58 = private unnamed_addr constant [7 x i8] c"g_1057\00", align 1
@g_1161 = internal global [2 x i32] zeroinitializer, align 4
@.str.59 = private unnamed_addr constant [10 x i8] c"g_1161[i]\00", align 1
@g_1291 = internal global i64 1, align 8
@.str.60 = private unnamed_addr constant [7 x i8] c"g_1291\00", align 1
@g_1315 = internal global i8 1, align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"g_1315\00", align 1
@g_1408 = internal global i32 -1, align 4
@.str.62 = private unnamed_addr constant [7 x i8] c"g_1408\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@func_1.l_17 = private unnamed_addr constant [9 x i64] [i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1], align 16
@func_1.l_1031 = private unnamed_addr constant [8 x i32] [i32 -1, i32 5, i32 -1, i32 5, i32 -1, i32 5, i32 -1, i32 5], align 16
@func_1.l_1062 = private unnamed_addr constant %union.U0 { i64 1 }, align 8
@func_1.l_1102 = private unnamed_addr constant [9 x [1 x i8*]] [[1 x i8*] [i8* @g_478], [1 x i8*] zeroinitializer, [1 x i8*] [i8* @g_478], [1 x i8*] zeroinitializer, [1 x i8*] [i8* @g_478], [1 x i8*] zeroinitializer, [1 x i8*] [i8* @g_478], [1 x i8*] zeroinitializer, [1 x i8*] [i8* @g_478]], align 16
@g_143 = internal global i64* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x i64]* @g_23 to i8*), i64 32) to i64*), align 8
@g_1137 = internal global %union.U0* @g_416, align 8
@func_1.l_957 = private unnamed_addr constant [1 x [9 x [10 x i16]]] [[9 x [10 x i16]] [[10 x i16] [i16 -8, i16 1, i16 1, i16 -8, i16 1, i16 1, i16 -8, i16 1, i16 1, i16 -8], [10 x i16] [i16 1, i16 -8, i16 1, i16 1, i16 -8, i16 1, i16 1, i16 -8, i16 1, i16 1], [10 x i16] [i16 -8, i16 -8, i16 8178, i16 -8, i16 -8, i16 8178, i16 -8, i16 -8, i16 8178, i16 -8], [10 x i16] [i16 -8, i16 1, i16 1, i16 -8, i16 1, i16 1, i16 -8, i16 1, i16 1, i16 -8], [10 x i16] [i16 1, i16 -8, i16 1, i16 1, i16 -8, i16 1, i16 1, i16 -8, i16 1, i16 1], [10 x i16] [i16 -8, i16 -8, i16 8178, i16 -8, i16 -8, i16 8178, i16 -8, i16 -8, i16 8178, i16 -8], [10 x i16] [i16 -8, i16 1, i16 1, i16 -8, i16 1, i16 1, i16 -8, i16 1, i16 1, i16 -8], [10 x i16] [i16 1, i16 -8, i16 1, i16 1, i16 -8, i16 1, i16 1, i16 -8, i16 1, i16 1], [10 x i16] [i16 1, i16 1, i16 -8, i16 1, i16 1, i16 -8, i16 1, i16 1, i16 -8, i16 1]]], align 16
@g_497 = internal global %union.U0** @g_498, align 8
@g_983 = internal global i16** @g_984, align 8
@g_984 = internal global i16* @g_985, align 8
@func_1.l_996 = private unnamed_addr constant [9 x i32*] [i32* @g_25, i32* @g_25, i32* @g_25, i32* @g_25, i32* @g_25, i32* @g_25, i32* @g_25, i32* @g_25, i32* @g_25], align 16
@func_1.l_1023 = private unnamed_addr constant [9 x i32] [i32 788232372, i32 1092531395, i32 1092531395, i32 788232372, i32 1092531395, i32 1092531395, i32 788232372, i32 1092531395, i32 1092531395], align 16
@func_1.l_1029 = private unnamed_addr constant [10 x i32*] [i32* @g_629, i32* @g_628, i32* @g_629, i32* @g_629, i32* @g_629, i32* @g_629, i32* @g_628, i32* @g_629, i32* @g_629, i32* @g_629], align 16
@g_1006 = internal global i8** bitcast (i8* getelementptr (i8, i8* bitcast ([8 x [5 x [6 x i8*]]]* @g_1007 to i8*), i64 648) to i8**), align 8
@g_591 = internal global i32** @g_529, align 8
@g_1042 = internal global i32**** @g_1043, align 8
@g_1048 = internal constant i32* @g_91, align 8
@g_783 = internal global i32* @g_25, align 8
@g_702 = internal global i64*** @g_703, align 8
@g_142 = internal global i64** @g_143, align 8
@func_1.l_1167 = private unnamed_addr constant [4 x [6 x i32]] [[6 x i32] [i32 1, i32 1, i32 -58092095, i32 -58092095, i32 1, i32 1], [6 x i32] [i32 1, i32 -58092095, i32 -58092095, i32 1, i32 1, i32 -58092095], [6 x i32] [i32 1, i32 1, i32 -58092095, i32 -58092095, i32 1, i32 1], [6 x i32] [i32 1, i32 -58092095, i32 -58092095, i32 1, i32 1, i32 -58092095]], align 16
@g_554 = internal global i32* null, align 8
@g_1043 = internal global i32*** @g_591, align 8
@func_1.l_1217 = private unnamed_addr constant %union.U0 { i64 -1 }, align 8
@g_467 = internal global i32* @g_468, align 8
@func_1.l_1133 = private unnamed_addr constant [7 x i8] c"q\00qq\00qq", align 1
@func_1.l_1132 = private unnamed_addr constant [10 x i64] [i64 -3, i64 -3, i64 -3, i64 -3, i64 -3, i64 -3, i64 -3, i64 -3, i64 -3, i64 -3], align 16
@g_1136 = internal global %union.U0** @g_1137, align 8
@func_1.l_1166 = private unnamed_addr constant [3 x [7 x [7 x i32]]] [[7 x [7 x i32]] [[7 x i32] [i32 -1808017926, i32 -976728600, i32 9, i32 -9, i32 9, i32 -976728600, i32 -1808017926], [7 x i32] [i32 1515901584, i32 1644150289, i32 3, i32 -976728600, i32 0, i32 -1, i32 -1], [7 x i32] [i32 -441365733, i32 5, i32 9, i32 -517598960, i32 2139642603, i32 1790002276, i32 2063493235], [7 x i32] [i32 1537737392, i32 -1, i32 3, i32 2024754173, i32 1, i32 0, i32 -1940566457], [7 x i32] [i32 -9, i32 388659419, i32 9, i32 -1297966953, i32 -517598960, i32 1644150289, i32 -1], [7 x i32] [i32 -1933524233, i32 1599908711, i32 1471375966, i32 1, i32 1372944383, i32 -747280696, i32 1515901584], [7 x i32] [i32 -517598960, i32 -9, i32 1515901584, i32 5, i32 -1458559273, i32 -1, i32 -1]], [7 x [7 x i32]] [[7 x i32] [i32 3, i32 -1, i32 9, i32 -1, i32 3, i32 -517598960, i32 0], [7 x i32] [i32 -1, i32 1471375966, i32 0, i32 -1926421691, i32 -2009994135, i32 1790002276, i32 -1808017926], [7 x i32] [i32 9, i32 0, i32 2139642603, i32 1, i32 -517598960, i32 -1458559273, i32 2], [7 x i32] [i32 -1, i32 -1926421691, i32 1, i32 0, i32 1515901584, i32 2024754173, i32 -747280696], [7 x i32] [i32 3, i32 -2009994135, i32 -517598960, i32 1515901584, i32 388659419, i32 -1808017926, i32 9], [7 x i32] [i32 -517598960, i32 1790002276, i32 -1458559273, i32 2024754173, i32 -1808017926, i32 -1, i32 9], [7 x i32] [i32 0, i32 -1808017926, i32 2, i32 -747280696, i32 9, i32 9, i32 -747280696]], [7 x [7 x i32]] [[7 x i32] [i32 -7, i32 2139642603, i32 -7, i32 -1458559273, i32 -1, i32 1644150289, i32 2], [7 x i32] [i32 1884165090, i32 -1940566457, i32 -976728600, i32 2063493235, i32 -7, i32 1, i32 -1808017926], [7 x i32] [i32 2, i32 2039577268, i32 -5, i32 9, i32 -1926421691, i32 1644150289, i32 0], [7 x i32] [i32 2024754173, i32 -1933524233, i32 -1433759462, i32 1884165090, i32 2039577268, i32 9, i32 -1], [7 x i32] [i32 1, i32 0, i32 9, i32 -1297966953, i32 2063493235, i32 -1, i32 1515901584], [7 x i32] [i32 -1955342441, i32 1644150289, i32 -2009994135, i32 1599908711, i32 2063493235, i32 -1808017926, i32 1471375966], [7 x i32] [i32 -1297966953, i32 -1, i32 2024754173, i32 2039577268, i32 2039577268, i32 2024754173, i32 -1]]], align 16
@func_1.l_1214 = private unnamed_addr constant [8 x i16] [i16 -1712, i16 -20881, i16 -20881, i16 -1712, i16 -20881, i16 -20881, i16 -1712, i16 -20881], align 16
@g_1148 = internal global %union.U0***** @g_1149, align 8
@g_1179 = internal constant %union.U0***** @g_1149, align 8
@g_701 = internal global i64**** @g_702, align 8
@func_1.l_1220 = private unnamed_addr constant [6 x i16] [i16 11572, i16 11572, i16 11572, i16 11572, i16 11572, i16 11572], align 2
@g_703 = internal global i64** @g_704, align 8
@func_1.l_1256 = private unnamed_addr constant %union.U0 { i64 5239894139919551012 }, align 8
@g_1150 = internal global %union.U0*** @g_1136, align 8
@func_1.l_1390 = private unnamed_addr constant [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -1], align 16
@g_226 = internal global i8* @g_227, align 8
@g_1149 = internal global %union.U0**** @g_1150, align 8
@func_1.l_1292 = private unnamed_addr constant [3 x [4 x [8 x i32]]] [[4 x [8 x i32]] [[8 x i32] [i32 542678104, i32 0, i32 -1, i32 -1459373935, i32 120824485, i32 -187879902, i32 -1, i32 -1], [8 x i32] [i32 542678104, i32 -1, i32 1755428001, i32 1755428001, i32 -1, i32 542678104, i32 1578843903, i32 -1992470666], [8 x i32] [i32 0, i32 -5, i32 -187879902, i32 1578843903, i32 -1, i32 0, i32 887948269, i32 928549896], [8 x i32] [i32 120824485, i32 -1992470666, i32 0, i32 1578843903, i32 -977212311, i32 1578843903, i32 0, i32 -1992470666]], [4 x [8 x i32]] [[8 x i32] [i32 887948269, i32 -977212311, i32 -1459373935, i32 1755428001, i32 928549896, i32 1551777334, i32 120824485, i32 -1], [8 x i32] [i32 1755428001, i32 -1257177853, i32 -1992470666, i32 -1459373935, i32 887948269, i32 120824485, i32 120824485, i32 887948269], [8 x i32] [i32 1551777334, i32 -1459373935, i32 -1459373935, i32 1551777334, i32 -1992470666, i32 928549896, i32 0, i32 542678104], [8 x i32] [i32 -1992470666, i32 928549896, i32 0, i32 542678104, i32 -3, i32 0, i32 887948269, i32 -1257177853]], [4 x [8 x i32]] [[8 x i32] [i32 1578843903, i32 928549896, i32 -187879902, i32 -1, i32 -187879902, i32 928549896, i32 1578843903, i32 1755428001], [8 x i32] [i32 -977212311, i32 -1459373935, i32 1755428001, i32 928549896, i32 1551777334, i32 120824485, i32 -1, i32 -5], [8 x i32] [i32 -5, i32 -1257177853, i32 -1, i32 -3, i32 1551777334, i32 1551777334, i32 -3, i32 -1], [8 x i32] [i32 -977212311, i32 -977212311, i32 0, i32 -5, i32 -187879902, i32 1578843903, i32 -1, i32 0]]], align 16
@func_1.l_1335 = private unnamed_addr constant %union.U0 { i64 1590569200832049398 }, align 8
@g_327 = internal global i32* @g_328, align 8
@g_1326 = internal global i16** null, align 8
@g_1330 = internal global i64* null, align 8
@func_1.l_1359 = private unnamed_addr constant [10 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], align 16
@g_1373 = internal global i8** @g_1374, align 8
@func_1.l_1375 = private unnamed_addr constant [5 x [3 x [10 x i8***]]] [[3 x [10 x i8***]] [[10 x i8***] [i8*** @g_1373, i8*** null, i8*** null, i8*** @g_1373, i8*** @g_1373, i8*** @g_1373, i8*** @g_1373, i8*** @g_1373, i8*** @g_1373, i8*** @g_1373], [10 x i8***] [i8*** @g_1373, i8*** null, i8*** @g_1373, i8*** @g_1373, i8*** null, i8*** @g_1373, i8*** @g_1373, i8*** @g_1373, i8*** @g_1373, i8*** @g_1373], [10 x i8***] [i8*** null, i8*** @g_1373, i8*** @g_1373, i8*** @g_1373, i8*** @g_1373, i8*** @g_1373, i8*** @g_1373, i8*** @g_1373, i8*** null, i8*** @g_1373]], [3 x [10 x i8***]] [[10 x i8***] [i8*** @g_1373, i8*** @g_1373, i8*** @g_1373, i8*** @g_1373, i8*** @g_1373, i8*** null, i8*** @g_1373, i8*** @g_1373, i8*** @g_1373, i8*** @g_1373], [10 x i8***] [i8*** @g_1373, i8*** @g_1373, i8*** @g_1373, i8*** @g_1373, i8*** @g_1373, i8*** @g_1373, i8*** null, i8*** @g_1373, i8*** @g_1373, i8*** @g_1373], [10 x i8***] [i8*** @g_1373, i8*** @g_1373, i8*** @g_1373, i8*** @g_1373, i8*** @g_1373, i8*** null, i8*** @g_1373, i8*** @g_1373, i8*** @g_1373, i8*** @g_1373]], [3 x [10 x i8***]] [[10 x i8***] [i8*** @g_1373, i8*** @g_1373, i8*** @g_1373, i8*** null, i8*** @g_1373, i8*** @g_1373, i8*** @g_1373, i8*** @g_1373, i8*** null, i8*** @g_1373], [10 x i8***] [i8*** null, i8*** @g_1373, i8*** @g_1373, i8*** @g_1373, i8*** @g_1373, i8*** @g_1373, i8*** @g_1373, i8*** @g_1373, i8*** @g_1373, i8*** null], [10 x i8***] [i8*** @g_1373, i8*** @g_1373, i8*** null, i8*** @g_1373, i8*** @g_1373, i8*** @g_1373, i8*** @g_1373, i8*** null, i8*** null, i8*** null]], [3 x [10 x i8***]] [[10 x i8***] [i8*** @g_1373, i8*** @g_1373, i8*** @g_1373, i8*** @g_1373, i8*** @g_1373, i8*** @g_1373, i8*** null, i8*** @g_1373, i8*** @g_1373, i8*** null], [10 x i8***] [i8*** @g_1373, i8*** @g_1373, i8*** @g_1373, i8*** @g_1373, i8*** @g_1373, i8*** @g_1373, i8*** @g_1373, i8*** @g_1373, i8*** @g_1373, i8*** @g_1373], [10 x i8***] [i8*** @g_1373, i8*** @g_1373, i8*** @g_1373, i8*** @g_1373, i8*** @g_1373, i8*** @g_1373, i8*** @g_1373, i8*** @g_1373, i8*** null, i8*** @g_1373]], [3 x [10 x i8***]] [[10 x i8***] [i8*** @g_1373, i8*** @g_1373, i8*** @g_1373, i8*** @g_1373, i8*** @g_1373, i8*** @g_1373, i8*** @g_1373, i8*** @g_1373, i8*** @g_1373, i8*** @g_1373], [10 x i8***] [i8*** @g_1373, i8*** @g_1373, i8*** @g_1373, i8*** null, i8*** @g_1373, i8*** @g_1373, i8*** @g_1373, i8*** @g_1373, i8*** @g_1373, i8*** @g_1373], [10 x i8***] [i8*** @g_1373, i8*** @g_1373, i8*** @g_1373, i8*** @g_1373, i8*** @g_1373, i8*** @g_1373, i8*** @g_1373, i8*** @g_1373, i8*** @g_1373, i8*** @g_1373]]], align 16
@g_1431 = internal global [3 x i32*] [i32* @g_629, i32* @g_629, i32* @g_629], align 16
@func_12.l_909 = private unnamed_addr constant [4 x [4 x i32]] [[4 x i32] [i32 0, i32 -531688810, i32 0, i32 -531688810], [4 x i32] [i32 0, i32 -531688810, i32 0, i32 -531688810], [4 x i32] [i32 0, i32 -531688810, i32 0, i32 -531688810], [4 x i32] [i32 0, i32 -531688810, i32 0, i32 -531688810]], align 16
@func_12.l_930 = private unnamed_addr constant [6 x i32*] [i32* @g_25, i32* @g_629, i32* @g_25, i32* @g_25, i32* @g_629, i32* @g_25], align 16
@g_529 = internal global i32* @g_91, align 8
@func_37.l_550 = private unnamed_addr constant [7 x [3 x [3 x i32*]]] [[3 x [3 x i32*]] [[3 x i32*] [i32* @g_87, i32* @g_222, i32* @g_87], [3 x i32*] [i32* @g_87, i32* @g_94, i32* @g_87], [3 x i32*] [i32* @g_222, i32* @g_87, i32* @g_87]], [3 x [3 x i32*]] [[3 x i32*] [i32* @g_94, i32* @g_94, i32* @g_87], [3 x i32*] [i32* @g_94, i32* @g_87, i32* @g_87], [3 x i32*] [i32* @g_87, i32* @g_94, i32* @g_94]], [3 x [3 x i32*]] [[3 x i32*] [i32* @g_94, i32* @g_222, i32* @g_94], [3 x i32*] [i32* @g_94, i32* @g_87, i32* @g_94], [3 x i32*] [i32* @g_222, i32* @g_222, i32* @g_87]], [3 x [3 x i32*]] [[3 x i32*] [i32* @g_87, i32* @g_87, i32* @g_87], [3 x i32*] [i32* @g_87, i32* @g_222, i32* @g_222], [3 x i32*] [i32* @g_94, i32* @g_94, i32* @g_94]], [3 x [3 x i32*]] [[3 x i32*] [i32* @g_87, i32* @g_94, i32* @g_222], [3 x i32*] [i32* @g_87, i32* @g_87, i32* @g_87], [3 x i32*] [i32* @g_87, i32* @g_94, i32* @g_94]], [3 x [3 x i32*]] [[3 x i32*] [i32* @g_87, i32* @g_94, i32* @g_94], [3 x i32*] [i32* @g_87, i32* @g_222, i32* @g_87], [3 x i32*] [i32* @g_87, i32* @g_87, i32* @g_94]], [3 x [3 x i32*]] [[3 x i32*] [i32* @g_87, i32* @g_87, i32* @g_94], [3 x i32*] [i32* @g_94, i32* @g_87, i32* @g_87], [3 x i32*] [i32* @g_94, i32* @g_222, i32* @g_222]]], align 16
@func_37.l_575 = private unnamed_addr constant [7 x i32*] [i32* @g_25, i32* @g_25, i32* @g_25, i32* @g_25, i32* @g_25, i32* @g_25, i32* @g_25], align 16
@func_37.l_624 = private unnamed_addr constant [7 x i32*] [i32* @g_25, i32* @g_25, i32* @g_25, i32* @g_25, i32* @g_25, i32* @g_25, i32* @g_25], align 16
@func_54.l_336 = private unnamed_addr constant [9 x i8*] [i8* @g_227, i8* @g_227, i8* @g_227, i8* @g_227, i8* @g_227, i8* @g_227, i8* @g_227, i8* @g_227, i8* @g_227], align 16
@g_357 = internal constant i8 2, align 1
@func_54.l_309 = private unnamed_addr constant [7 x i32] [i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2], align 16
@func_54.l_350 = private unnamed_addr constant %union.U0 { i64 1 }, align 8
@func_64.l_90 = private unnamed_addr constant [7 x [1 x i32*]] [[1 x i32*] zeroinitializer, [1 x i32*] [i32* @g_91], [1 x i32*] zeroinitializer, [1 x i32*] [i32* @g_91], [1 x i32*] zeroinitializer, [1 x i32*] [i32* @g_91], [1 x i32*] zeroinitializer], align 16
@func_64.l_234 = internal constant %union.U0 { i64 5 }, align 8
@g_498 = internal global %union.U0* @g_416, align 8
@g_1007 = internal global [8 x [5 x [6 x i8*]]] [[5 x [6 x i8*]] [[6 x i8*] [i8* @g_1008, i8* @g_1008, i8* @g_1008, i8* @g_1008, i8* @g_1008, i8* @g_1008], [6 x i8*] [i8* @g_1008, i8* @g_1008, i8* @g_1008, i8* @g_1008, i8* @g_1008, i8* null], [6 x i8*] [i8* @g_1008, i8* null, i8* @g_1008, i8* @g_1008, i8* @g_1008, i8* @g_1008], [6 x i8*] [i8* null, i8* @g_1008, i8* @g_1008, i8* @g_1008, i8* @g_1008, i8* null], [6 x i8*] [i8* @g_1008, i8* null, i8* null, i8* @g_1008, i8* @g_1008, i8* @g_1008]], [5 x [6 x i8*]] [[6 x i8*] [i8* @g_1008, i8* null, i8* null, i8* null, i8* @g_1008, i8* null], [6 x i8*] [i8* @g_1008, i8* @g_1008, i8* @g_1008, i8* null, i8* null, i8* null], [6 x i8*] [i8* @g_1008, i8* @g_1008, i8* @g_1008, i8* @g_1008, i8* null, i8* null], [6 x i8*] [i8* @g_1008, i8* @g_1008, i8* @g_1008, i8* @g_1008, i8* @g_1008, i8* null], [6 x i8*] [i8* null, i8* @g_1008, i8* null, i8* @g_1008, i8* @g_1008, i8* @g_1008]], [5 x [6 x i8*]] [[6 x i8*] [i8* @g_1008, i8* @g_1008, i8* @g_1008, i8* @g_1008, i8* @g_1008, i8* @g_1008], [6 x i8*] [i8* @g_1008, i8* @g_1008, i8* @g_1008, i8* @g_1008, i8* @g_1008, i8* @g_1008], [6 x i8*] [i8* @g_1008, i8* @g_1008, i8* @g_1008, i8* @g_1008, i8* @g_1008, i8* @g_1008], [6 x i8*] [i8* @g_1008, i8* @g_1008, i8* @g_1008, i8* @g_1008, i8* @g_1008, i8* null], [6 x i8*] [i8* @g_1008, i8* @g_1008, i8* @g_1008, i8* @g_1008, i8* @g_1008, i8* null]], [5 x [6 x i8*]] [[6 x i8*] [i8* null, i8* @g_1008, i8* @g_1008, i8* @g_1008, i8* @g_1008, i8* @g_1008], [6 x i8*] [i8* @g_1008, i8* @g_1008, i8* @g_1008, i8* @g_1008, i8* @g_1008, i8* null], [6 x i8*] [i8* @g_1008, i8* @g_1008, i8* @g_1008, i8* @g_1008, i8* @g_1008, i8* @g_1008], [6 x i8*] [i8* @g_1008, i8* @g_1008, i8* @g_1008, i8* @g_1008, i8* @g_1008, i8* @g_1008], [6 x i8*] [i8* @g_1008, i8* @g_1008, i8* @g_1008, i8* @g_1008, i8* @g_1008, i8* @g_1008]], [5 x [6 x i8*]] [[6 x i8*] [i8* null, i8* @g_1008, i8* @g_1008, i8* @g_1008, i8* @g_1008, i8* @g_1008], [6 x i8*] [i8* @g_1008, i8* null, i8* @g_1008, i8* @g_1008, i8* @g_1008, i8* @g_1008], [6 x i8*] [i8* @g_1008, i8* @g_1008, i8* null, i8* @g_1008, i8* @g_1008, i8* @g_1008], [6 x i8*] [i8* @g_1008, i8* @g_1008, i8* null, i8* @g_1008, i8* @g_1008, i8* @g_1008], [6 x i8*] [i8* @g_1008, i8* @g_1008, i8* @g_1008, i8* @g_1008, i8* @g_1008, i8* @g_1008]], [5 x [6 x i8*]] [[6 x i8*] [i8* @g_1008, i8* @g_1008, i8* @g_1008, i8* @g_1008, i8* @g_1008, i8* @g_1008], [6 x i8*] [i8* null, i8* @g_1008, i8* @g_1008, i8* @g_1008, i8* @g_1008, i8* @g_1008], [6 x i8*] [i8* @g_1008, i8* null, i8* @g_1008, i8* @g_1008, i8* null, i8* @g_1008], [6 x i8*] [i8* @g_1008, i8* null, i8* null, i8* @g_1008, i8* @g_1008, i8* null], [6 x i8*] [i8* @g_1008, i8* @g_1008, i8* @g_1008, i8* @g_1008, i8* @g_1008, i8* @g_1008]], [5 x [6 x i8*]] [[6 x i8*] [i8* @g_1008, i8* null, i8* @g_1008, i8* @g_1008, i8* @g_1008, i8* @g_1008], [6 x i8*] [i8* null, i8* @g_1008, i8* @g_1008, i8* @g_1008, i8* @g_1008, i8* @g_1008], [6 x i8*] [i8* @g_1008, i8* @g_1008, i8* @g_1008, i8* @g_1008, i8* @g_1008, i8* null], [6 x i8*] [i8* @g_1008, i8* @g_1008, i8* null, i8* @g_1008, i8* @g_1008, i8* @g_1008], [6 x i8*] [i8* @g_1008, i8* @g_1008, i8* @g_1008, i8* @g_1008, i8* @g_1008, i8* @g_1008]], [5 x [6 x i8*]] [[6 x i8*] [i8* @g_1008, i8* @g_1008, i8* @g_1008, i8* @g_1008, i8* null, i8* @g_1008], [6 x i8*] [i8* @g_1008, i8* @g_1008, i8* @g_1008, i8* @g_1008, i8* @g_1008, i8* @g_1008], [6 x i8*] [i8* @g_1008, i8* @g_1008, i8* @g_1008, i8* @g_1008, i8* @g_1008, i8* @g_1008], [6 x i8*] [i8* @g_1008, i8* @g_1008, i8* null, i8* @g_1008, i8* @g_1008, i8* @g_1008], [6 x i8*] [i8* @g_1008, i8* @g_1008, i8* null, i8* @g_1008, i8* @g_1008, i8* @g_1008]]], align 16
@func_30.l_688 = private unnamed_addr constant [5 x [4 x [5 x i64***]]] [[4 x [5 x i64***]] [[5 x i64***] [i64*** @g_142, i64*** @g_142, i64*** @g_142, i64*** @g_142, i64*** @g_142], [5 x i64***] [i64*** @g_142, i64*** @g_142, i64*** @g_142, i64*** @g_142, i64*** @g_142], [5 x i64***] [i64*** @g_142, i64*** null, i64*** null, i64*** @g_142, i64*** @g_142], [5 x i64***] [i64*** @g_142, i64*** @g_142, i64*** @g_142, i64*** @g_142, i64*** @g_142]], [4 x [5 x i64***]] [[5 x i64***] [i64*** @g_142, i64*** @g_142, i64*** @g_142, i64*** @g_142, i64*** @g_142], [5 x i64***] [i64*** @g_142, i64*** @g_142, i64*** @g_142, i64*** @g_142, i64*** null], [5 x i64***] [i64*** @g_142, i64*** @g_142, i64*** @g_142, i64*** @g_142, i64*** @g_142], [5 x i64***] [i64*** @g_142, i64*** @g_142, i64*** @g_142, i64*** @g_142, i64*** null]], [4 x [5 x i64***]] [[5 x i64***] [i64*** @g_142, i64*** @g_142, i64*** @g_142, i64*** @g_142, i64*** @g_142], [5 x i64***] [i64*** null, i64*** null, i64*** @g_142, i64*** @g_142, i64*** @g_142], [5 x i64***] [i64*** @g_142, i64*** @g_142, i64*** @g_142, i64*** @g_142, i64*** @g_142], [5 x i64***] [i64*** @g_142, i64*** @g_142, i64*** @g_142, i64*** @g_142, i64*** @g_142]], [4 x [5 x i64***]] [[5 x i64***] [i64*** @g_142, i64*** @g_142, i64*** @g_142, i64*** @g_142, i64*** @g_142], [5 x i64***] [i64*** @g_142, i64*** null, i64*** null, i64*** @g_142, i64*** @g_142], [5 x i64***] [i64*** @g_142, i64*** @g_142, i64*** @g_142, i64*** @g_142, i64*** @g_142], [5 x i64***] [i64*** @g_142, i64*** @g_142, i64*** @g_142, i64*** @g_142, i64*** @g_142]], [4 x [5 x i64***]] [[5 x i64***] [i64*** @g_142, i64*** @g_142, i64*** @g_142, i64*** @g_142, i64*** null], [5 x i64***] [i64*** @g_142, i64*** @g_142, i64*** @g_142, i64*** @g_142, i64*** @g_142], [5 x i64***] [i64*** @g_142, i64*** @g_142, i64*** @g_142, i64*** @g_142, i64*** null], [5 x i64***] [i64*** @g_142, i64*** @g_142, i64*** @g_142, i64*** @g_142, i64*** @g_142]]], align 16
@func_30.l_718 = private unnamed_addr constant [2 x [6 x i32]] [[6 x i32] [i32 -869936097, i32 -573895171, i32 -573895171, i32 -869936097, i32 9, i32 -869936097], [6 x i32] [i32 -869936097, i32 9, i32 -869936097, i32 -573895171, i32 -573895171, i32 -869936097]], align 16
@func_30.l_801 = private unnamed_addr constant [10 x i32*] [i32* @g_629, i32* @g_629, i32* @g_91, i32* null, i32* @g_91, i32* @g_629, i32* @g_629, i32* @g_91, i32* null, i32* @g_91], align 16
@func_30.l_658 = private unnamed_addr constant [7 x [10 x [3 x i8*]]] [[10 x [3 x i8*]] [[3 x i8*] [i8* @g_512, i8* null, i8* null], [3 x i8*] [i8* @g_512, i8* null, i8* @g_313], [3 x i8*] [i8* @g_512, i8* null, i8* null], [3 x i8*] [i8* null, i8* @g_512, i8* @g_313], [3 x i8*] [i8* @g_313, i8* null, i8* @g_512], [3 x i8*] [i8* @g_123, i8* null, i8* @g_512], [3 x i8*] [i8* @g_123, i8* null, i8* @g_512], [3 x i8*] [i8* @g_512, i8* @g_512, i8* @g_313], [3 x i8*] [i8* @g_123, i8* null, i8* @g_123], [3 x i8*] [i8* null, i8* null, i8* @g_313]], [10 x [3 x i8*]] [[3 x i8*] [i8* @g_313, i8* null, i8* null], [3 x i8*] [i8* @g_123, i8* null, i8* null], [3 x i8*] [i8* @g_512, i8* @g_512, i8* @g_123], [3 x i8*] [i8* @g_313, i8* null, i8* @g_313], [3 x i8*] [i8* null, i8* @g_512, i8* @g_123], [3 x i8*] [i8* @g_123, i8* null, i8* @g_313], [3 x i8*] [i8* null, i8* @g_512, i8* @g_512], [3 x i8*] zeroinitializer, [3 x i8*] [i8* null, i8* @g_512, i8* @g_512], [3 x i8*] [i8* @g_313, i8* null, i8* @g_313]], [10 x [3 x i8*]] [[3 x i8*] [i8* @g_123, i8* @g_512, i8* null], [3 x i8*] [i8* @g_123, i8* null, i8* @g_313], [3 x i8*] [i8* @g_512, i8* @g_512, i8* null], [3 x i8*] zeroinitializer, [3 x i8*] [i8* @g_512, i8* @g_512, i8* @g_123], [3 x i8*] [i8* @g_313, i8* null, i8* @g_313], [3 x i8*] [i8* null, i8* @g_512, i8* @g_123], [3 x i8*] [i8* @g_123, i8* null, i8* @g_313], [3 x i8*] [i8* null, i8* @g_512, i8* @g_512], [3 x i8*] zeroinitializer], [10 x [3 x i8*]] [[3 x i8*] [i8* null, i8* @g_512, i8* @g_512], [3 x i8*] [i8* @g_313, i8* null, i8* @g_313], [3 x i8*] [i8* @g_123, i8* @g_512, i8* null], [3 x i8*] [i8* @g_123, i8* null, i8* @g_313], [3 x i8*] [i8* @g_512, i8* @g_512, i8* null], [3 x i8*] zeroinitializer, [3 x i8*] [i8* @g_512, i8* @g_512, i8* @g_123], [3 x i8*] [i8* @g_313, i8* null, i8* @g_313], [3 x i8*] [i8* null, i8* @g_512, i8* @g_123], [3 x i8*] [i8* @g_123, i8* null, i8* @g_313]], [10 x [3 x i8*]] [[3 x i8*] [i8* null, i8* @g_512, i8* @g_512], [3 x i8*] zeroinitializer, [3 x i8*] [i8* null, i8* @g_512, i8* @g_512], [3 x i8*] [i8* @g_313, i8* null, i8* @g_313], [3 x i8*] [i8* @g_123, i8* @g_512, i8* null], [3 x i8*] [i8* @g_123, i8* null, i8* @g_313], [3 x i8*] [i8* @g_512, i8* @g_512, i8* null], [3 x i8*] zeroinitializer, [3 x i8*] [i8* @g_512, i8* @g_512, i8* @g_123], [3 x i8*] [i8* @g_313, i8* null, i8* @g_313]], [10 x [3 x i8*]] [[3 x i8*] [i8* null, i8* @g_512, i8* @g_123], [3 x i8*] [i8* @g_123, i8* null, i8* @g_313], [3 x i8*] [i8* null, i8* @g_512, i8* @g_512], [3 x i8*] zeroinitializer, [3 x i8*] [i8* null, i8* @g_512, i8* @g_512], [3 x i8*] [i8* @g_313, i8* null, i8* @g_313], [3 x i8*] [i8* @g_123, i8* @g_512, i8* null], [3 x i8*] [i8* @g_123, i8* null, i8* @g_313], [3 x i8*] [i8* @g_512, i8* @g_512, i8* null], [3 x i8*] zeroinitializer], [10 x [3 x i8*]] [[3 x i8*] [i8* @g_512, i8* @g_512, i8* @g_123], [3 x i8*] [i8* @g_313, i8* null, i8* @g_313], [3 x i8*] [i8* null, i8* @g_512, i8* @g_123], [3 x i8*] [i8* @g_123, i8* null, i8* @g_313], [3 x i8*] [i8* null, i8* @g_512, i8* @g_512], [3 x i8*] zeroinitializer, [3 x i8*] [i8* null, i8* @g_512, i8* @g_512], [3 x i8*] [i8* @g_313, i8* null, i8* @g_313], [3 x i8*] [i8* @g_123, i8* @g_512, i8* null], [3 x i8*] [i8* @g_123, i8* null, i8* @g_313]]], align 16
@func_30.l_659 = private unnamed_addr constant [10 x [9 x i32]] [[9 x i32] [i32 1163544826, i32 1167743713, i32 -2026173760, i32 -941695269, i32 -2026173760, i32 1167743713, i32 1163544826, i32 -2026173760, i32 180295159], [9 x i32] [i32 -7, i32 -1, i32 -7, i32 -1892078992, i32 -1, i32 -7, i32 0, i32 3, i32 261220786], [9 x i32] [i32 180295159, i32 -8, i32 -8, i32 180295159, i32 -1970473246, i32 -1, i32 -201356283, i32 -8, i32 -1], [9 x i32] [i32 -1, i32 261220786, i32 1104975864, i32 -7, i32 1, i32 1, i32 -7, i32 1104975864, i32 261220786], [9 x i32] [i32 -201356283, i32 -1970473246, i32 9, i32 1, i32 -1970473246, i32 -8, i32 1167743713, i32 9, i32 9], [9 x i32] [i32 -1, i32 1, i32 261220786, i32 -1, i32 261220786, i32 1, i32 -1, i32 261220786, i32 1104975864], [9 x i32] [i32 180295159, i32 -1970473246, i32 -1, i32 -201356283, i32 -8, i32 -1, i32 1167743713, i32 -1, i32 -8], [9 x i32] [i32 0, i32 261220786, i32 261220786, i32 0, i32 -849104258, i32 3, i32 -7, i32 261220786, i32 3], [9 x i32] [i32 -2026173760, i32 -8, i32 9, i32 -201356283, i32 4, i32 4, i32 -201356283, i32 9, i32 -8], [9 x i32] [i32 -7, i32 -849104258, i32 1104975864, i32 -1, i32 -849104258, i32 261220786, i32 0, i32 1104975864, i32 1104975864]], align 16
@func_30.l_799 = private unnamed_addr constant [10 x [1 x i64*]] [[1 x i64*] [i64* getelementptr inbounds (%union.U0, %union.U0* @g_416, i32 0, i32 0)], [1 x i64*] [i64* @g_314], [1 x i64*] [i64* getelementptr inbounds (%union.U0, %union.U0* @g_416, i32 0, i32 0)], [1 x i64*] [i64* @g_314], [1 x i64*] [i64* getelementptr inbounds (%union.U0, %union.U0* @g_416, i32 0, i32 0)], [1 x i64*] [i64* @g_314], [1 x i64*] [i64* getelementptr inbounds (%union.U0, %union.U0* @g_416, i32 0, i32 0)], [1 x i64*] [i64* @g_314], [1 x i64*] [i64* getelementptr inbounds (%union.U0, %union.U0* @g_416, i32 0, i32 0)], [1 x i64*] [i64* @g_314]], align 16
@func_30.l_723 = private unnamed_addr constant [9 x [5 x [4 x i32]]] [[5 x [4 x i32]] [[4 x i32] [i32 1764071699, i32 -887384611, i32 9, i32 4], [4 x i32] [i32 -1957727841, i32 1764071699, i32 -10, i32 2076050003], [4 x i32] [i32 0, i32 -33665001, i32 0, i32 2076050003], [4 x i32] [i32 -10, i32 1764071699, i32 -1957727841, i32 4], [4 x i32] [i32 9, i32 -887384611, i32 1764071699, i32 1764071699]], [5 x [4 x i32]] [[4 x i32] [i32 229849447, i32 229849447, i32 1764071699, i32 0], [4 x i32] [i32 9, i32 0, i32 -1957727841, i32 -887384611], [4 x i32] [i32 -10, i32 -1957727841, i32 0, i32 -1957727841], [4 x i32] [i32 0, i32 -1957727841, i32 -10, i32 -887384611], [4 x i32] [i32 -1957727841, i32 0, i32 9, i32 0]], [5 x [4 x i32]] [[4 x i32] [i32 1764071699, i32 229849447, i32 229849447, i32 1764071699], [4 x i32] [i32 1764071699, i32 -887384611, i32 9, i32 4], [4 x i32] [i32 -1957727841, i32 1764071699, i32 -10, i32 2076050003], [4 x i32] [i32 0, i32 -33665001, i32 0, i32 2076050003], [4 x i32] [i32 -10, i32 1764071699, i32 -1957727841, i32 4]], [5 x [4 x i32]] [[4 x i32] [i32 9, i32 -887384611, i32 1764071699, i32 1764071699], [4 x i32] [i32 229849447, i32 229849447, i32 1764071699, i32 0], [4 x i32] [i32 9, i32 0, i32 -1957727841, i32 -887384611], [4 x i32] [i32 -10, i32 -1957727841, i32 0, i32 -1957727841], [4 x i32] [i32 0, i32 -1957727841, i32 -10, i32 -887384611]], [5 x [4 x i32]] [[4 x i32] [i32 -1957727841, i32 0, i32 9, i32 0], [4 x i32] [i32 1764071699, i32 229849447, i32 229849447, i32 1764071699], [4 x i32] [i32 1764071699, i32 -887384611, i32 9, i32 4], [4 x i32] [i32 -1957727841, i32 1764071699, i32 -10, i32 2076050003], [4 x i32] [i32 0, i32 -33665001, i32 0, i32 2076050003]], [5 x [4 x i32]] [[4 x i32] [i32 -10, i32 1764071699, i32 -1957727841, i32 4], [4 x i32] [i32 9, i32 1764071699, i32 229849447, i32 229849447], [4 x i32] [i32 2076050003, i32 2076050003, i32 229849447, i32 -887384611], [4 x i32] [i32 0, i32 -10, i32 -33665001, i32 1764071699], [4 x i32] [i32 9, i32 -33665001, i32 -887384611, i32 -33665001]], [5 x [4 x i32]] [[4 x i32] [i32 -887384611, i32 -33665001, i32 9, i32 1764071699], [4 x i32] [i32 -33665001, i32 -10, i32 0, i32 -887384611], [4 x i32] [i32 229849447, i32 2076050003, i32 2076050003, i32 229849447], [4 x i32] [i32 229849447, i32 1764071699, i32 0, i32 0], [4 x i32] [i32 -33665001, i32 229849447, i32 9, i32 -1957727841]], [5 x [4 x i32]] [[4 x i32] [i32 -887384611, i32 4, i32 -887384611, i32 -1957727841], [4 x i32] [i32 9, i32 229849447, i32 -33665001, i32 0], [4 x i32] [i32 0, i32 1764071699, i32 229849447, i32 229849447], [4 x i32] [i32 2076050003, i32 2076050003, i32 229849447, i32 -887384611], [4 x i32] [i32 0, i32 -10, i32 -33665001, i32 1764071699]], [5 x [4 x i32]] [[4 x i32] [i32 9, i32 -33665001, i32 -887384611, i32 -33665001], [4 x i32] [i32 -887384611, i32 -33665001, i32 9, i32 1764071699], [4 x i32] [i32 -33665001, i32 -10, i32 0, i32 -887384611], [4 x i32] [i32 229849447, i32 2076050003, i32 2076050003, i32 229849447], [4 x i32] [i32 229849447, i32 1764071699, i32 0, i32 0]]], align 16
@func_30.l_727 = private unnamed_addr constant [3 x [2 x i32]] [[2 x i32] [i32 1, i32 1], [2 x i32] [i32 1, i32 1], [2 x i32] [i32 1, i32 1]], align 16
@func_30.l_778 = private unnamed_addr constant [6 x [2 x i16]] [[2 x i16] [i16 0, i16 5874], [2 x i16] [i16 5874, i16 0], [2 x i16] [i16 5874, i16 5874], [2 x i16] [i16 0, i16 5874], [2 x i16] [i16 5874, i16 0], [2 x i16] [i16 5874, i16 5874]], align 16
@func_50.l_509 = private unnamed_addr constant [9 x [7 x [1 x i32*]]] [[7 x [1 x i32*]] [[1 x i32*] [i32* @g_25], [1 x i32*] zeroinitializer, [1 x i32*] [i32* @g_25], [1 x i32*] [i32* @g_91], [1 x i32*] [i32* @g_91], [1 x i32*] [i32* @g_91], [1 x i32*] [i32* @g_91]], [7 x [1 x i32*]] [[1 x i32*] [i32* @g_25], [1 x i32*] zeroinitializer, [1 x i32*] [i32* @g_25], [1 x i32*] [i32* @g_91], [1 x i32*] [i32* @g_25], [1 x i32*] [i32* @g_91], [1 x i32*] [i32* @g_25]], [7 x [1 x i32*]] [[1 x i32*] zeroinitializer, [1 x i32*] zeroinitializer, [1 x i32*] [i32* @g_25], [1 x i32*] zeroinitializer, [1 x i32*] zeroinitializer, [1 x i32*] [i32* @g_25], [1 x i32*] [i32* @g_91]], [7 x [1 x i32*]] [[1 x i32*] [i32* @g_25], [1 x i32*] [i32* @g_91], [1 x i32*] [i32* @g_25], [1 x i32*] zeroinitializer, [1 x i32*] [i32* @g_25], [1 x i32*] [i32* @g_91], [1 x i32*] [i32* @g_91]], [7 x [1 x i32*]] [[1 x i32*] [i32* @g_91], [1 x i32*] [i32* @g_91], [1 x i32*] [i32* @g_25], [1 x i32*] zeroinitializer, [1 x i32*] [i32* @g_25], [1 x i32*] [i32* @g_91], [1 x i32*] [i32* @g_25]], [7 x [1 x i32*]] [[1 x i32*] [i32* @g_91], [1 x i32*] [i32* @g_25], [1 x i32*] zeroinitializer, [1 x i32*] zeroinitializer, [1 x i32*] [i32* @g_25], [1 x i32*] zeroinitializer, [1 x i32*] zeroinitializer], [7 x [1 x i32*]] [[1 x i32*] [i32* @g_25], [1 x i32*] [i32* @g_91], [1 x i32*] [i32* @g_25], [1 x i32*] [i32* @g_91], [1 x i32*] [i32* @g_25], [1 x i32*] zeroinitializer, [1 x i32*] [i32* @g_25]], [7 x [1 x i32*]] [[1 x i32*] [i32* @g_91], [1 x i32*] [i32* @g_91], [1 x i32*] [i32* @g_91], [1 x i32*] [i32* @g_91], [1 x i32*] [i32* @g_25], [1 x i32*] zeroinitializer, [1 x i32*] [i32* @g_25]], [7 x [1 x i32*]] [[1 x i32*] [i32* @g_91], [1 x i32*] [i32* @g_25], [1 x i32*] [i32* @g_91], [1 x i32*] [i32* @g_25], [1 x i32*] zeroinitializer, [1 x i32*] zeroinitializer, [1 x i32*] [i32* @g_25]]], align 16
@func_50.l_510 = private unnamed_addr constant %union.U0 { i64 -2356741795944255025 }, align 8
@func_35.l_634 = private unnamed_addr constant [9 x [4 x [7 x i32*]]] [[4 x [7 x i32*]] [[7 x i32*] [i32* null, i32* @g_628, i32* null, i32* null, i32* @g_25, i32* null, i32* null], [7 x i32*] [i32* @g_91, i32* null, i32* @g_25, i32* @g_25, i32* null, i32* @g_91, i32* @g_25], [7 x i32*] [i32* @g_91, i32* @g_25, i32* @g_25, i32* @g_91, i32* @g_629, i32* @g_25, i32* @g_91], [7 x i32*] [i32* @g_628, i32* @g_629, i32* @g_91, i32* null, i32* @g_629, i32* @g_25, i32* @g_628]], [4 x [7 x i32*]] [[7 x i32*] [i32* @g_91, i32* @g_25, i32* null, i32* null, i32* null, i32* @g_25, i32* @g_91], [7 x i32*] [i32* @g_25, i32* null, i32* @g_628, i32* @g_25, i32* @g_628, i32* @g_629, i32* @g_628], [7 x i32*] [i32* @g_25, i32* @g_628, i32* @g_25, i32* @g_25, i32* @g_629, i32* @g_25, i32* @g_629], [7 x i32*] [i32* @g_628, i32* @g_629, i32* @g_628, i32* @g_628, i32* @g_628, i32* @g_628, i32* @g_629]], [4 x [7 x i32*]] [[7 x i32*] [i32* @g_91, i32* @g_25, i32* null, i32* @g_25, i32* null, i32* null, i32* @g_91], [7 x i32*] [i32* @g_629, i32* @g_628, i32* @g_91, i32* @g_628, i32* @g_629, i32* null, i32* @g_628], [7 x i32*] [i32* @g_629, i32* @g_25, i32* @g_25, i32* @g_25, i32* @g_91, i32* @g_25, i32* @g_25], [7 x i32*] [i32* @g_628, i32* @g_628, i32* @g_25, i32* @g_628, i32* @g_25, i32* null, i32* @g_628]], [4 x [7 x i32*]] [[7 x i32*] [i32* null, i32* @g_25, i32* null, i32* @g_25, i32* @g_629, i32* @g_628, i32* @g_629], [7 x i32*] [i32* @g_629, i32* @g_25, i32* @g_629, i32* @g_629, i32* @g_629, i32* @g_629, i32* @g_629], [7 x i32*] [i32* null, i32* @g_91, i32* null, i32* @g_25, i32* @g_629, i32* @g_628, i32* @g_629], [7 x i32*] [i32* @g_91, i32* @g_628, i32* @g_628, i32* @g_628, i32* @g_91, i32* @g_628, i32* @g_629]], [4 x [7 x i32*]] [[7 x i32*] [i32* null, i32* @g_25, i32* @g_91, i32* @g_25, i32* @g_91, i32* @g_628, i32* @g_91], [7 x i32*] [i32* @g_628, i32* null, i32* null, i32* @g_628, i32* null, i32* @g_629, i32* @g_628], [7 x i32*] [i32* @g_25, i32* @g_628, i32* @g_629, i32* @g_25, i32* null, i32* null, i32* @g_91], [7 x i32*] [i32* null, i32* @g_629, i32* @g_628, i32* @g_25, i32* null, i32* @g_628, i32* @g_628]], [4 x [7 x i32*]] [[7 x i32*] [i32* null, i32* @g_629, i32* @g_629, i32* @g_629, i32* null, i32* @g_25, i32* @g_91], [7 x i32*] [i32* @g_628, i32* @g_629, i32* @g_629, i32* @g_25, i32* @g_25, i32* @g_25, i32* @g_629], [7 x i32*] [i32* @g_629, i32* null, i32* @g_25, i32* @g_25, i32* @g_91, i32* @g_25, i32* @g_629], [7 x i32*] [i32* @g_628, i32* @g_25, i32* @g_628, i32* @g_628, i32* @g_25, i32* @g_91, i32* @g_629]], [4 x [7 x i32*]] [[7 x i32*] [i32* null, i32* @g_628, i32* null, i32* @g_25, i32* null, i32* @g_628, i32* @g_25], [7 x i32*] [i32* null, i32* @g_629, i32* null, i32* @g_628, i32* @g_25, i32* @g_91, i32* @g_91], [7 x i32*] [i32* @g_25, i32* @g_628, i32* @g_629, i32* @g_25, i32* @g_629, i32* @g_628, i32* @g_25], [7 x i32*] [i32* @g_628, i32* @g_25, i32* @g_91, i32* @g_25, i32* null, i32* @g_628, i32* null]], [4 x [7 x i32*]] [[7 x i32*] [i32* null, i32* null, i32* @g_91, i32* @g_628, i32* @g_629, i32* @g_628, i32* @g_91], [7 x i32*] [i32* @g_91, i32* @g_629, i32* @g_91, i32* null, i32* null, i32* @g_628, i32* @g_25], [7 x i32*] [i32* null, i32* @g_629, i32* @g_629, i32* @g_25, i32* @g_629, i32* @g_25, i32* @g_25], [7 x i32*] [i32* @g_91, i32* @g_629, i32* null, i32* @g_91, i32* @g_91, i32* @g_25, i32* null]], [4 x [7 x i32*]] [[7 x i32*] [i32* @g_91, i32* @g_628, i32* null, i32* @g_25, i32* @g_25, i32* @g_25, i32* null], [7 x i32*] [i32* null, i32* null, i32* @g_628, i32* null, i32* @g_629, i32* @g_628, i32* @g_91], [7 x i32*] [i32* @g_629, i32* @g_25, i32* @g_25, i32* @g_628, i32* @g_25, i32* null, i32* @g_629], [7 x i32*] [i32* @g_91, i32* @g_628, i32* @g_629, i32* @g_25, i32* @g_629, i32* @g_25, i32* @g_629]]], align 16
@g_704 = internal global i64* @g_705, align 8
@func_40.l_511 = private unnamed_addr constant [10 x i32*] [i32* @g_91, i32* @g_91, i32* @g_91, i32* @g_91, i32* @g_25, i32* @g_91, i32* @g_91, i32* @g_91, i32* @g_91, i32* @g_25], align 16
@g_1374 = internal global i8* null, align 8
@.str.63 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@.str.64 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

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
  %91 = load volatile i8, i8* @g_4, align 1, !tbaa !9
  %92 = sext i8 %91 to i64
  %93 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %93)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %94

; <label>:94                                      ; preds = %133, %89
  %95 = load i32, i32* %i, align 4, !tbaa !1
  %96 = icmp slt i32 %95, 9
  br i1 %96, label %97, label %136

; <label>:97                                      ; preds = %94
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %98

; <label>:98                                      ; preds = %129, %97
  %99 = load i32, i32* %j, align 4, !tbaa !1
  %100 = icmp slt i32 %99, 6
  br i1 %100, label %101, label %132

; <label>:101                                     ; preds = %98
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %102

; <label>:102                                     ; preds = %125, %101
  %103 = load i32, i32* %k, align 4, !tbaa !1
  %104 = icmp slt i32 %103, 2
  br i1 %104, label %105, label %128

; <label>:105                                     ; preds = %102
  %106 = load i32, i32* %k, align 4, !tbaa !1
  %107 = sext i32 %106 to i64
  %108 = load i32, i32* %j, align 4, !tbaa !1
  %109 = sext i32 %108 to i64
  %110 = load i32, i32* %i, align 4, !tbaa !1
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [9 x [6 x [2 x i64]]], [9 x [6 x [2 x i64]]]* @g_11, i32 0, i64 %111
  %113 = getelementptr inbounds [6 x [2 x i64]], [6 x [2 x i64]]* %112, i32 0, i64 %109
  %114 = getelementptr inbounds [2 x i64], [2 x i64]* %113, i32 0, i64 %107
  %115 = load i64, i64* %114, align 8, !tbaa !7
  %116 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %115, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 %116)
  %117 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %124

; <label>:119                                     ; preds = %105
  %120 = load i32, i32* %i, align 4, !tbaa !1
  %121 = load i32, i32* %j, align 4, !tbaa !1
  %122 = load i32, i32* %k, align 4, !tbaa !1
  %123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i32 %120, i32 %121, i32 %122)
  br label %124

; <label>:124                                     ; preds = %119, %105
  br label %125

; <label>:125                                     ; preds = %124
  %126 = load i32, i32* %k, align 4, !tbaa !1
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %k, align 4, !tbaa !1
  br label %102

; <label>:128                                     ; preds = %102
  br label %129

; <label>:129                                     ; preds = %128
  %130 = load i32, i32* %j, align 4, !tbaa !1
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %j, align 4, !tbaa !1
  br label %98

; <label>:132                                     ; preds = %98
  br label %133

; <label>:133                                     ; preds = %132
  %134 = load i32, i32* %i, align 4, !tbaa !1
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %i, align 4, !tbaa !1
  br label %94

; <label>:136                                     ; preds = %94
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %137

; <label>:137                                     ; preds = %152, %136
  %138 = load i32, i32* %i, align 4, !tbaa !1
  %139 = icmp slt i32 %138, 5
  br i1 %139, label %140, label %155

; <label>:140                                     ; preds = %137
  %141 = load i32, i32* %i, align 4, !tbaa !1
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [5 x i64], [5 x i64]* @g_23, i32 0, i64 %142
  %144 = load i64, i64* %143, align 8, !tbaa !7
  %145 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %144, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 %145)
  %146 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %151

; <label>:148                                     ; preds = %140
  %149 = load i32, i32* %i, align 4, !tbaa !1
  %150 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i32 %149)
  br label %151

; <label>:151                                     ; preds = %148, %140
  br label %152

; <label>:152                                     ; preds = %151
  %153 = load i32, i32* %i, align 4, !tbaa !1
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %i, align 4, !tbaa !1
  br label %137

; <label>:155                                     ; preds = %137
  %156 = load i32, i32* @g_25, align 4, !tbaa !1
  %157 = sext i32 %156 to i64
  %158 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %157, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 %158)
  %159 = load i32, i32* @g_87, align 4, !tbaa !1
  %160 = zext i32 %159 to i64
  %161 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %160, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 %161)
  %162 = load i32, i32* @g_91, align 4, !tbaa !1
  %163 = sext i32 %162 to i64
  %164 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %163, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 %164)
  %165 = load i32, i32* @g_94, align 4, !tbaa !1
  %166 = zext i32 %165 to i64
  %167 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %166, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i32 %167)
  %168 = load i8, i8* @g_123, align 1, !tbaa !9
  %169 = sext i8 %168 to i64
  %170 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %169, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i32 %170)
  %171 = load i16, i16* @g_174, align 2, !tbaa !10
  %172 = zext i16 %171 to i64
  %173 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %172, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i32 %173)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %174

; <label>:174                                     ; preds = %190, %155
  %175 = load i32, i32* %i, align 4, !tbaa !1
  %176 = icmp slt i32 %175, 4
  br i1 %176, label %177, label %193

; <label>:177                                     ; preds = %174
  %178 = load i32, i32* %i, align 4, !tbaa !1
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [4 x i16], [4 x i16]* @g_183, i32 0, i64 %179
  %181 = load i16, i16* %180, align 2, !tbaa !10
  %182 = sext i16 %181 to i64
  %183 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %182, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i32 %183)
  %184 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %189

; <label>:186                                     ; preds = %177
  %187 = load i32, i32* %i, align 4, !tbaa !1
  %188 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i32 %187)
  br label %189

; <label>:189                                     ; preds = %186, %177
  br label %190

; <label>:190                                     ; preds = %189
  %191 = load i32, i32* %i, align 4, !tbaa !1
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %i, align 4, !tbaa !1
  br label %174

; <label>:193                                     ; preds = %174
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %194

; <label>:194                                     ; preds = %210, %193
  %195 = load i32, i32* %i, align 4, !tbaa !1
  %196 = icmp slt i32 %195, 3
  br i1 %196, label %197, label %213

; <label>:197                                     ; preds = %194
  %198 = load i32, i32* %i, align 4, !tbaa !1
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds [3 x i16], [3 x i16]* @g_201, i32 0, i64 %199
  %201 = load i16, i16* %200, align 2, !tbaa !10
  %202 = sext i16 %201 to i64
  %203 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %202, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i32 %203)
  %204 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %209

; <label>:206                                     ; preds = %197
  %207 = load i32, i32* %i, align 4, !tbaa !1
  %208 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i32 %207)
  br label %209

; <label>:209                                     ; preds = %206, %197
  br label %210

; <label>:210                                     ; preds = %209
  %211 = load i32, i32* %i, align 4, !tbaa !1
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %i, align 4, !tbaa !1
  br label %194

; <label>:213                                     ; preds = %194
  %214 = load i32, i32* @g_202, align 4, !tbaa !1
  %215 = sext i32 %214 to i64
  %216 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %215, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 %216)
  %217 = load i32, i32* @g_222, align 4, !tbaa !1
  %218 = zext i32 %217 to i64
  %219 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %218, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 %219)
  %220 = load i8, i8* @g_227, align 1, !tbaa !9
  %221 = zext i8 %220 to i64
  %222 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %221, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i32 %222)
  %223 = load i16, i16* @g_232, align 2, !tbaa !10
  %224 = zext i16 %223 to i64
  %225 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %224, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i32 %225)
  %226 = load i64, i64* @g_243, align 8, !tbaa !7
  %227 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %226, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i32 %227)
  %228 = load i64, i64* @g_246, align 8, !tbaa !7
  %229 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %228, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i32 %229)
  %230 = load i8, i8* @g_313, align 1, !tbaa !9
  %231 = sext i8 %230 to i64
  %232 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %231, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 %232)
  %233 = load i64, i64* @g_314, align 8, !tbaa !7
  %234 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %233, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i32 %234)
  %235 = load volatile i32, i32* @g_328, align 4, !tbaa !1
  %236 = zext i32 %235 to i64
  %237 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %236, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i32 %237)
  %238 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 %238)
  %239 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %239)
  %240 = load i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_416, i32 0, i32 0), align 8, !tbaa !7
  %241 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %240, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), i32 %241)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %242

; <label>:242                                     ; preds = %258, %213
  %243 = load i32, i32* %i, align 4, !tbaa !1
  %244 = icmp slt i32 %243, 7
  br i1 %244, label %245, label %261

; <label>:245                                     ; preds = %242
  %246 = load i32, i32* %i, align 4, !tbaa !1
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds [7 x i32], [7 x i32]* @g_431, i32 0, i64 %247
  %249 = load i32, i32* %248, align 4, !tbaa !1
  %250 = zext i32 %249 to i64
  %251 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %250, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), i32 %251)
  %252 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %257

; <label>:254                                     ; preds = %245
  %255 = load i32, i32* %i, align 4, !tbaa !1
  %256 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i32 %255)
  br label %257

; <label>:257                                     ; preds = %254, %245
  br label %258

; <label>:258                                     ; preds = %257
  %259 = load i32, i32* %i, align 4, !tbaa !1
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %i, align 4, !tbaa !1
  br label %242

; <label>:261                                     ; preds = %242
  %262 = load volatile i32, i32* @g_468, align 4, !tbaa !1
  %263 = zext i32 %262 to i64
  %264 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %263, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 %264)
  %265 = load i8, i8* @g_478, align 1, !tbaa !9
  %266 = zext i8 %265 to i64
  %267 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %266, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i32 %267)
  %268 = load i8, i8* @g_512, align 1, !tbaa !9
  %269 = sext i8 %268 to i64
  %270 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %269, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i32 %270)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %271

; <label>:271                                     ; preds = %311, %261
  %272 = load i32, i32* %i, align 4, !tbaa !1
  %273 = icmp slt i32 %272, 7
  br i1 %273, label %274, label %314

; <label>:274                                     ; preds = %271
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %275

; <label>:275                                     ; preds = %307, %274
  %276 = load i32, i32* %j, align 4, !tbaa !1
  %277 = icmp slt i32 %276, 1
  br i1 %277, label %278, label %310

; <label>:278                                     ; preds = %275
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %279

; <label>:279                                     ; preds = %303, %278
  %280 = load i32, i32* %k, align 4, !tbaa !1
  %281 = icmp slt i32 %280, 4
  br i1 %281, label %282, label %306

; <label>:282                                     ; preds = %279
  %283 = load i32, i32* %k, align 4, !tbaa !1
  %284 = sext i32 %283 to i64
  %285 = load i32, i32* %j, align 4, !tbaa !1
  %286 = sext i32 %285 to i64
  %287 = load i32, i32* %i, align 4, !tbaa !1
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds [7 x [1 x [4 x i32]]], [7 x [1 x [4 x i32]]]* @g_513, i32 0, i64 %288
  %290 = getelementptr inbounds [1 x [4 x i32]], [1 x [4 x i32]]* %289, i32 0, i64 %286
  %291 = getelementptr inbounds [4 x i32], [4 x i32]* %290, i32 0, i64 %284
  %292 = load i32, i32* %291, align 4, !tbaa !1
  %293 = sext i32 %292 to i64
  %294 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %293, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i32 0, i32 0), i32 %294)
  %295 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %302

; <label>:297                                     ; preds = %282
  %298 = load i32, i32* %i, align 4, !tbaa !1
  %299 = load i32, i32* %j, align 4, !tbaa !1
  %300 = load i32, i32* %k, align 4, !tbaa !1
  %301 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i32 %298, i32 %299, i32 %300)
  br label %302

; <label>:302                                     ; preds = %297, %282
  br label %303

; <label>:303                                     ; preds = %302
  %304 = load i32, i32* %k, align 4, !tbaa !1
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %k, align 4, !tbaa !1
  br label %279

; <label>:306                                     ; preds = %279
  br label %307

; <label>:307                                     ; preds = %306
  %308 = load i32, i32* %j, align 4, !tbaa !1
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %j, align 4, !tbaa !1
  br label %275

; <label>:310                                     ; preds = %275
  br label %311

; <label>:311                                     ; preds = %310
  %312 = load i32, i32* %i, align 4, !tbaa !1
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %i, align 4, !tbaa !1
  br label %271

; <label>:314                                     ; preds = %271
  %315 = load i32, i32* @g_514, align 4, !tbaa !1
  %316 = zext i32 %315 to i64
  %317 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %316, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i32 %317)
  %318 = load i64, i64* @g_577, align 8, !tbaa !7
  %319 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %318, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i32 %319)
  %320 = load i64, i64* @g_578, align 8, !tbaa !7
  %321 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %320, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i32 %321)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %322

; <label>:322                                     ; preds = %362, %314
  %323 = load i32, i32* %i, align 4, !tbaa !1
  %324 = icmp slt i32 %323, 1
  br i1 %324, label %325, label %365

; <label>:325                                     ; preds = %322
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %326

; <label>:326                                     ; preds = %358, %325
  %327 = load i32, i32* %j, align 4, !tbaa !1
  %328 = icmp slt i32 %327, 9
  br i1 %328, label %329, label %361

; <label>:329                                     ; preds = %326
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %330

; <label>:330                                     ; preds = %354, %329
  %331 = load i32, i32* %k, align 4, !tbaa !1
  %332 = icmp slt i32 %331, 2
  br i1 %332, label %333, label %357

; <label>:333                                     ; preds = %330
  %334 = load i32, i32* %k, align 4, !tbaa !1
  %335 = sext i32 %334 to i64
  %336 = load i32, i32* %j, align 4, !tbaa !1
  %337 = sext i32 %336 to i64
  %338 = load i32, i32* %i, align 4, !tbaa !1
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds [1 x [9 x [2 x i8]]], [1 x [9 x [2 x i8]]]* @g_579, i32 0, i64 %339
  %341 = getelementptr inbounds [9 x [2 x i8]], [9 x [2 x i8]]* %340, i32 0, i64 %337
  %342 = getelementptr inbounds [2 x i8], [2 x i8]* %341, i32 0, i64 %335
  %343 = load i8, i8* %342, align 1, !tbaa !9
  %344 = zext i8 %343 to i64
  %345 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %344, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i32 0, i32 0), i32 %345)
  %346 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %353

; <label>:348                                     ; preds = %333
  %349 = load i32, i32* %i, align 4, !tbaa !1
  %350 = load i32, i32* %j, align 4, !tbaa !1
  %351 = load i32, i32* %k, align 4, !tbaa !1
  %352 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i32 %349, i32 %350, i32 %351)
  br label %353

; <label>:353                                     ; preds = %348, %333
  br label %354

; <label>:354                                     ; preds = %353
  %355 = load i32, i32* %k, align 4, !tbaa !1
  %356 = add nsw i32 %355, 1
  store i32 %356, i32* %k, align 4, !tbaa !1
  br label %330

; <label>:357                                     ; preds = %330
  br label %358

; <label>:358                                     ; preds = %357
  %359 = load i32, i32* %j, align 4, !tbaa !1
  %360 = add nsw i32 %359, 1
  store i32 %360, i32* %j, align 4, !tbaa !1
  br label %326

; <label>:361                                     ; preds = %326
  br label %362

; <label>:362                                     ; preds = %361
  %363 = load i32, i32* %i, align 4, !tbaa !1
  %364 = add nsw i32 %363, 1
  store i32 %364, i32* %i, align 4, !tbaa !1
  br label %322

; <label>:365                                     ; preds = %322
  %366 = load i32, i32* @g_584, align 4, !tbaa !1
  %367 = zext i32 %366 to i64
  %368 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %367, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), i32 %368)
  %369 = load i16, i16* @g_625, align 2, !tbaa !10
  %370 = sext i16 %369 to i64
  %371 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %370, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i32 %371)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %372

; <label>:372                                     ; preds = %388, %365
  %373 = load i32, i32* %i, align 4, !tbaa !1
  %374 = icmp slt i32 %373, 4
  br i1 %374, label %375, label %391

; <label>:375                                     ; preds = %372
  %376 = load i32, i32* %i, align 4, !tbaa !1
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds [4 x i16], [4 x i16]* @g_626, i32 0, i64 %377
  %379 = load i16, i16* %378, align 2, !tbaa !10
  %380 = sext i16 %379 to i64
  %381 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %380, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i32 0, i32 0), i32 %381)
  %382 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %387

; <label>:384                                     ; preds = %375
  %385 = load i32, i32* %i, align 4, !tbaa !1
  %386 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i32 %385)
  br label %387

; <label>:387                                     ; preds = %384, %375
  br label %388

; <label>:388                                     ; preds = %387
  %389 = load i32, i32* %i, align 4, !tbaa !1
  %390 = add nsw i32 %389, 1
  store i32 %390, i32* %i, align 4, !tbaa !1
  br label %372

; <label>:391                                     ; preds = %372
  %392 = load i32, i32* @g_627, align 4, !tbaa !1
  %393 = sext i32 %392 to i64
  %394 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %393, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0), i32 %394)
  %395 = load i32, i32* @g_628, align 4, !tbaa !1
  %396 = sext i32 %395 to i64
  %397 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %396, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), i32 %397)
  %398 = load i32, i32* @g_629, align 4, !tbaa !1
  %399 = sext i32 %398 to i64
  %400 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %399, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0), i32 %400)
  %401 = load i32, i32* @g_631, align 4, !tbaa !1
  %402 = zext i32 %401 to i64
  %403 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %402, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i32 0, i32 0), i32 %403)
  %404 = load volatile i64, i64* @g_705, align 8, !tbaa !7
  %405 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %404, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i32 %405)
  %406 = load i8, i8* @g_724, align 1, !tbaa !9
  %407 = sext i8 %406 to i64
  %408 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %407, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0), i32 %408)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %409

; <label>:409                                     ; preds = %449, %391
  %410 = load i32, i32* %i, align 4, !tbaa !1
  %411 = icmp slt i32 %410, 8
  br i1 %411, label %412, label %452

; <label>:412                                     ; preds = %409
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %413

; <label>:413                                     ; preds = %445, %412
  %414 = load i32, i32* %j, align 4, !tbaa !1
  %415 = icmp slt i32 %414, 5
  br i1 %415, label %416, label %448

; <label>:416                                     ; preds = %413
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %417

; <label>:417                                     ; preds = %441, %416
  %418 = load i32, i32* %k, align 4, !tbaa !1
  %419 = icmp slt i32 %418, 6
  br i1 %419, label %420, label %444

; <label>:420                                     ; preds = %417
  %421 = load i32, i32* %k, align 4, !tbaa !1
  %422 = sext i32 %421 to i64
  %423 = load i32, i32* %j, align 4, !tbaa !1
  %424 = sext i32 %423 to i64
  %425 = load i32, i32* %i, align 4, !tbaa !1
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds [8 x [5 x [6 x i8]]], [8 x [5 x [6 x i8]]]* @g_726, i32 0, i64 %426
  %428 = getelementptr inbounds [5 x [6 x i8]], [5 x [6 x i8]]* %427, i32 0, i64 %424
  %429 = getelementptr inbounds [6 x i8], [6 x i8]* %428, i32 0, i64 %422
  %430 = load i8, i8* %429, align 1, !tbaa !9
  %431 = sext i8 %430 to i64
  %432 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %431, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i32 0, i32 0), i32 %432)
  %433 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %434 = icmp ne i32 %433, 0
  br i1 %434, label %435, label %440

; <label>:435                                     ; preds = %420
  %436 = load i32, i32* %i, align 4, !tbaa !1
  %437 = load i32, i32* %j, align 4, !tbaa !1
  %438 = load i32, i32* %k, align 4, !tbaa !1
  %439 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i32 %436, i32 %437, i32 %438)
  br label %440

; <label>:440                                     ; preds = %435, %420
  br label %441

; <label>:441                                     ; preds = %440
  %442 = load i32, i32* %k, align 4, !tbaa !1
  %443 = add nsw i32 %442, 1
  store i32 %443, i32* %k, align 4, !tbaa !1
  br label %417

; <label>:444                                     ; preds = %417
  br label %445

; <label>:445                                     ; preds = %444
  %446 = load i32, i32* %j, align 4, !tbaa !1
  %447 = add nsw i32 %446, 1
  store i32 %447, i32* %j, align 4, !tbaa !1
  br label %413

; <label>:448                                     ; preds = %413
  br label %449

; <label>:449                                     ; preds = %448
  %450 = load i32, i32* %i, align 4, !tbaa !1
  %451 = add nsw i32 %450, 1
  store i32 %451, i32* %i, align 4, !tbaa !1
  br label %409

; <label>:452                                     ; preds = %409
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %453

; <label>:453                                     ; preds = %493, %452
  %454 = load i32, i32* %i, align 4, !tbaa !1
  %455 = icmp slt i32 %454, 6
  br i1 %455, label %456, label %496

; <label>:456                                     ; preds = %453
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %457

; <label>:457                                     ; preds = %489, %456
  %458 = load i32, i32* %j, align 4, !tbaa !1
  %459 = icmp slt i32 %458, 1
  br i1 %459, label %460, label %492

; <label>:460                                     ; preds = %457
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %461

; <label>:461                                     ; preds = %485, %460
  %462 = load i32, i32* %k, align 4, !tbaa !1
  %463 = icmp slt i32 %462, 4
  br i1 %463, label %464, label %488

; <label>:464                                     ; preds = %461
  %465 = load i32, i32* %k, align 4, !tbaa !1
  %466 = sext i32 %465 to i64
  %467 = load i32, i32* %j, align 4, !tbaa !1
  %468 = sext i32 %467 to i64
  %469 = load i32, i32* %i, align 4, !tbaa !1
  %470 = sext i32 %469 to i64
  %471 = getelementptr inbounds [6 x [1 x [4 x i32]]], [6 x [1 x [4 x i32]]]* @g_730, i32 0, i64 %470
  %472 = getelementptr inbounds [1 x [4 x i32]], [1 x [4 x i32]]* %471, i32 0, i64 %468
  %473 = getelementptr inbounds [4 x i32], [4 x i32]* %472, i32 0, i64 %466
  %474 = load i32, i32* %473, align 4, !tbaa !1
  %475 = zext i32 %474 to i64
  %476 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %475, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.45, i32 0, i32 0), i32 %476)
  %477 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %478 = icmp ne i32 %477, 0
  br i1 %478, label %479, label %484

; <label>:479                                     ; preds = %464
  %480 = load i32, i32* %i, align 4, !tbaa !1
  %481 = load i32, i32* %j, align 4, !tbaa !1
  %482 = load i32, i32* %k, align 4, !tbaa !1
  %483 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i32 %480, i32 %481, i32 %482)
  br label %484

; <label>:484                                     ; preds = %479, %464
  br label %485

; <label>:485                                     ; preds = %484
  %486 = load i32, i32* %k, align 4, !tbaa !1
  %487 = add nsw i32 %486, 1
  store i32 %487, i32* %k, align 4, !tbaa !1
  br label %461

; <label>:488                                     ; preds = %461
  br label %489

; <label>:489                                     ; preds = %488
  %490 = load i32, i32* %j, align 4, !tbaa !1
  %491 = add nsw i32 %490, 1
  store i32 %491, i32* %j, align 4, !tbaa !1
  br label %457

; <label>:492                                     ; preds = %457
  br label %493

; <label>:493                                     ; preds = %492
  %494 = load i32, i32* %i, align 4, !tbaa !1
  %495 = add nsw i32 %494, 1
  store i32 %495, i32* %i, align 4, !tbaa !1
  br label %453

; <label>:496                                     ; preds = %453
  %497 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 -8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0), i32 %497)
  %498 = load i8, i8* @g_779, align 1, !tbaa !9
  %499 = zext i8 %498 to i64
  %500 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %499, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i32 0, i32 0), i32 %500)
  %501 = load i32, i32* @g_899, align 4, !tbaa !1
  %502 = zext i32 %501 to i64
  %503 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %502, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i32 0, i32 0), i32 %503)
  %504 = load i8, i8* @g_921, align 1, !tbaa !9
  %505 = zext i8 %504 to i64
  %506 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %505, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0), i32 %506)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %507

; <label>:507                                     ; preds = %535, %496
  %508 = load i32, i32* %i, align 4, !tbaa !1
  %509 = icmp slt i32 %508, 2
  br i1 %509, label %510, label %538

; <label>:510                                     ; preds = %507
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %511

; <label>:511                                     ; preds = %531, %510
  %512 = load i32, i32* %j, align 4, !tbaa !1
  %513 = icmp slt i32 %512, 9
  br i1 %513, label %514, label %534

; <label>:514                                     ; preds = %511
  %515 = load i32, i32* %j, align 4, !tbaa !1
  %516 = sext i32 %515 to i64
  %517 = load i32, i32* %i, align 4, !tbaa !1
  %518 = sext i32 %517 to i64
  %519 = getelementptr inbounds [2 x [9 x i32]], [2 x [9 x i32]]* @g_935, i32 0, i64 %518
  %520 = getelementptr inbounds [9 x i32], [9 x i32]* %519, i32 0, i64 %516
  %521 = load i32, i32* %520, align 4, !tbaa !1
  %522 = sext i32 %521 to i64
  %523 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %522, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.50, i32 0, i32 0), i32 %523)
  %524 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %525 = icmp ne i32 %524, 0
  br i1 %525, label %526, label %530

; <label>:526                                     ; preds = %514
  %527 = load i32, i32* %i, align 4, !tbaa !1
  %528 = load i32, i32* %j, align 4, !tbaa !1
  %529 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.51, i32 0, i32 0), i32 %527, i32 %528)
  br label %530

; <label>:530                                     ; preds = %526, %514
  br label %531

; <label>:531                                     ; preds = %530
  %532 = load i32, i32* %j, align 4, !tbaa !1
  %533 = add nsw i32 %532, 1
  store i32 %533, i32* %j, align 4, !tbaa !1
  br label %511

; <label>:534                                     ; preds = %511
  br label %535

; <label>:535                                     ; preds = %534
  %536 = load i32, i32* %i, align 4, !tbaa !1
  %537 = add nsw i32 %536, 1
  store i32 %537, i32* %i, align 4, !tbaa !1
  br label %507

; <label>:538                                     ; preds = %507
  %539 = load i64, i64* @g_937, align 8, !tbaa !7
  %540 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %539, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i32 0, i32 0), i32 %540)
  %541 = load i16, i16* @g_985, align 2, !tbaa !10
  %542 = zext i16 %541 to i64
  %543 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %542, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.53, i32 0, i32 0), i32 %543)
  %544 = load volatile i8, i8* @g_1008, align 1, !tbaa !9
  %545 = sext i8 %544 to i64
  %546 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %545, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i32 0, i32 0), i32 %546)
  %547 = load volatile i64, i64* @g_1033, align 8, !tbaa !7
  %548 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %547, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i32 0, i32 0), i32 %548)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %549

; <label>:549                                     ; preds = %565, %538
  %550 = load i32, i32* %i, align 4, !tbaa !1
  %551 = icmp slt i32 %550, 10
  br i1 %551, label %552, label %568

; <label>:552                                     ; preds = %549
  %553 = load i32, i32* %i, align 4, !tbaa !1
  %554 = sext i32 %553 to i64
  %555 = getelementptr inbounds [10 x i8], [10 x i8]* @g_1054, i32 0, i64 %554
  %556 = load i8, i8* %555, align 1, !tbaa !9
  %557 = sext i8 %556 to i64
  %558 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %557, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.56, i32 0, i32 0), i32 %558)
  %559 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %560 = icmp ne i32 %559, 0
  br i1 %560, label %561, label %564

; <label>:561                                     ; preds = %552
  %562 = load i32, i32* %i, align 4, !tbaa !1
  %563 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i32 %562)
  br label %564

; <label>:564                                     ; preds = %561, %552
  br label %565

; <label>:565                                     ; preds = %564
  %566 = load i32, i32* %i, align 4, !tbaa !1
  %567 = add nsw i32 %566, 1
  store i32 %567, i32* %i, align 4, !tbaa !1
  br label %549

; <label>:568                                     ; preds = %549
  %569 = load volatile i64, i64* @g_1056, align 8, !tbaa !7
  %570 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %569, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i32 0, i32 0), i32 %570)
  %571 = load volatile i32, i32* @g_1057, align 4, !tbaa !1
  %572 = zext i32 %571 to i64
  %573 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %572, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i32 0, i32 0), i32 %573)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %574

; <label>:574                                     ; preds = %590, %568
  %575 = load i32, i32* %i, align 4, !tbaa !1
  %576 = icmp slt i32 %575, 2
  br i1 %576, label %577, label %593

; <label>:577                                     ; preds = %574
  %578 = load i32, i32* %i, align 4, !tbaa !1
  %579 = sext i32 %578 to i64
  %580 = getelementptr inbounds [2 x i32], [2 x i32]* @g_1161, i32 0, i64 %579
  %581 = load i32, i32* %580, align 4, !tbaa !1
  %582 = sext i32 %581 to i64
  %583 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %582, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i32 0, i32 0), i32 %583)
  %584 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %585 = icmp ne i32 %584, 0
  br i1 %585, label %586, label %589

; <label>:586                                     ; preds = %577
  %587 = load i32, i32* %i, align 4, !tbaa !1
  %588 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i32 %587)
  br label %589

; <label>:589                                     ; preds = %586, %577
  br label %590

; <label>:590                                     ; preds = %589
  %591 = load i32, i32* %i, align 4, !tbaa !1
  %592 = add nsw i32 %591, 1
  store i32 %592, i32* %i, align 4, !tbaa !1
  br label %574

; <label>:593                                     ; preds = %574
  %594 = load volatile i64, i64* @g_1291, align 8, !tbaa !7
  %595 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %594, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i32 0, i32 0), i32 %595)
  %596 = load volatile i8, i8* @g_1315, align 1, !tbaa !9
  %597 = zext i8 %596 to i64
  %598 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %597, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.61, i32 0, i32 0), i32 %598)
  %599 = load i32, i32* @g_1408, align 4, !tbaa !1
  %600 = sext i32 %599 to i64
  %601 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %600, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i32 0, i32 0), i32 %601)
  %602 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %603 = zext i32 %602 to i64
  %604 = xor i64 %603, 4294967295
  %605 = trunc i64 %604 to i32
  %606 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %605, i32 %606)
  %607 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %607) #1
  %608 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %608) #1
  %609 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %609) #1
  %610 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %610) #1
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
  %1 = alloca i64, align 8
  %l_17 = alloca [9 x i64], align 16
  %l_940 = alloca i32*, align 8
  %l_941 = alloca [5 x i16], align 2
  %l_942 = alloca i32*, align 8
  %l_943 = alloca i32*, align 8
  %l_966 = alloca [5 x i64], align 16
  %l_992 = alloca i16, align 2
  %l_1028 = alloca i32, align 4
  %l_1031 = alloca [8 x i32], align 16
  %l_1062 = alloca %union.U0, align 8
  %l_1072 = alloca i32, align 4
  %l_1082 = alloca i8, align 1
  %l_1085 = alloca i32, align 4
  %l_1091 = alloca i64, align 8
  %l_1100 = alloca %union.U0*, align 8
  %l_1099 = alloca %union.U0**, align 8
  %l_1098 = alloca %union.U0***, align 8
  %l_1101 = alloca i8*, align 8
  %l_1102 = alloca [9 x [1 x i8*]], align 16
  %l_1103 = alloca i32*, align 8
  %l_1108 = alloca [6 x i16], align 2
  %l_1129 = alloca i64**, align 8
  %l_1140 = alloca %union.U0**, align 8
  %l_1271 = alloca [3 x [1 x i32]], align 4
  %l_1385 = alloca i8, align 1
  %l_1401 = alloca i16, align 2
  %l_1405 = alloca i16, align 2
  %l_1425 = alloca i16*, align 8
  %l_1426 = alloca i64, align 8
  %l_1427 = alloca i32, align 4
  %l_1428 = alloca i32, align 4
  %l_1429 = alloca i64, align 8
  %l_1430 = alloca [10 x [8 x i32**]], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %2 = alloca %union.U0, align 8
  %l_950 = alloca i16*, align 8
  %l_957 = alloca [1 x [9 x [10 x i16]]], align 16
  %l_958 = alloca i8*, align 8
  %l_959 = alloca i64*, align 8
  %l_967 = alloca i16*, align 8
  %l_968 = alloca i64*, align 8
  %l_997 = alloca i32, align 4
  %l_1000 = alloca i32, align 4
  %i1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  %k = alloca i32, align 4
  %l_976 = alloca i16*, align 8
  %l_979 = alloca i16*, align 8
  %l_993 = alloca i32, align 4
  %l_1001 = alloca i32, align 4
  %l_1024 = alloca i32, align 4
  %l_1027 = alloca [8 x i32], align 16
  %l_1053 = alloca i8, align 1
  %i3 = alloca i32, align 4
  %3 = alloca i32
  %l_995 = alloca i32, align 4
  %l_998 = alloca i32, align 4
  %l_999 = alloca i32, align 4
  %l_1030 = alloca i32, align 4
  %l_1032 = alloca i32, align 4
  %l_996 = alloca [9 x i32*], align 16
  %i4 = alloca i32, align 4
  %l_1023 = alloca [9 x i32], align 16
  %l_1025 = alloca i32*, align 8
  %l_1026 = alloca i32*, align 8
  %l_1029 = alloca [10 x i32*], align 16
  %i5 = alloca i32, align 4
  %l_1041 = alloca i32***, align 8
  %l_1055 = alloca i32, align 4
  %i6 = alloca i32, align 4
  %l_1049 = alloca i32*, align 8
  %l_1050 = alloca i32*, align 8
  %l_1051 = alloca i32*, align 8
  %l_1052 = alloca [6 x [4 x [1 x i32*]]], align 16
  %i7 = alloca i32, align 4
  %j8 = alloca i32, align 4
  %k9 = alloca i32, align 4
  %l_1060 = alloca i32*, align 8
  %l_1068 = alloca i32**, align 8
  %l_1067 = alloca i32***, align 8
  %l_1075 = alloca i8, align 1
  %4 = alloca %union.U0, align 8
  %l_1126 = alloca i8, align 1
  %l_1147 = alloca %union.U0****, align 8
  %l_1167 = alloca [4 x [6 x i32]], align 16
  %l_1219 = alloca [2 x [3 x [7 x i32*]]], align 16
  %l_1337 = alloca i32**, align 8
  %l_1336 = alloca i32***, align 8
  %l_1388 = alloca i16, align 2
  %i12 = alloca i32, align 4
  %j13 = alloca i32, align 4
  %k14 = alloca i32, align 4
  %l_1114 = alloca [6 x i64], align 16
  %l_1115 = alloca i16*, align 8
  %l_1159 = alloca i32, align 4
  %l_1165 = alloca i32, align 4
  %l_1168 = alloca i32, align 4
  %l_1169 = alloca i32, align 4
  %l_1174 = alloca i32, align 4
  %l_1196 = alloca i32*, align 8
  %l_1217 = alloca %union.U0, align 8
  %l_1240 = alloca i16, align 2
  %i15 = alloca i32, align 4
  %l_1133 = alloca [7 x i8], align 1
  %i16 = alloca i32, align 4
  %l_1132 = alloca [10 x i64], align 16
  %l_1141 = alloca i32*, align 8
  %i17 = alloca i32, align 4
  %l_1156 = alloca i32, align 4
  %l_1157 = alloca i32, align 4
  %l_1158 = alloca i32, align 4
  %l_1163 = alloca i32, align 4
  %l_1166 = alloca [3 x [7 x [7 x i32]]], align 16
  %l_1175 = alloca i16, align 2
  %l_1214 = alloca [8 x i16], align 16
  %l_1239 = alloca [7 x i64*], align 16
  %l_1241 = alloca i16*, align 8
  %i18 = alloca i32, align 4
  %j19 = alloca i32, align 4
  %k20 = alloca i32, align 4
  %l_1160 = alloca i8, align 1
  %l_1162 = alloca i32, align 4
  %l_1164 = alloca i32, align 4
  %l_1170 = alloca i32, align 4
  %l_1171 = alloca i32, align 4
  %l_1172 = alloca i32, align 4
  %l_1173 = alloca i32, align 4
  %l_1187 = alloca [6 x i16**], align 16
  %l_1197 = alloca i64**, align 8
  %l_1215 = alloca i32**, align 8
  %l_1216 = alloca i8*, align 8
  %l_1222 = alloca i32, align 4
  %i21 = alloca i32, align 4
  %l_1146 = alloca i32, align 4
  %l_1151 = alloca i32*, align 8
  %l_1152 = alloca i32*, align 8
  %l_1153 = alloca i32*, align 8
  %l_1154 = alloca i32*, align 8
  %l_1155 = alloca [6 x [9 x i32*]], align 16
  %l_1186 = alloca [7 x [5 x i16**]], align 16
  %l_1195 = alloca i32*, align 8
  %l_1194 = alloca i32**, align 8
  %i22 = alloca i32, align 4
  %j23 = alloca i32, align 4
  %l_1218 = alloca [1 x [9 x i32**]], align 16
  %i24 = alloca i32, align 4
  %j25 = alloca i32, align 4
  %l_1220 = alloca [6 x i16], align 2
  %l_1221 = alloca i32, align 4
  %i26 = alloca i32, align 4
  %l_1249 = alloca i8, align 1
  %l_1256 = alloca %union.U0, align 8
  %l_1267 = alloca i8, align 1
  %l_1274 = alloca i32, align 4
  %l_1279 = alloca %union.U0****, align 8
  %l_1331 = alloca i16, align 2
  %l_1334 = alloca i16, align 2
  %l_1376 = alloca i8**, align 8
  %l_1389 = alloca i32, align 4
  %l_1390 = alloca [4 x i32], align 16
  %l_1391 = alloca i8, align 1
  %l_1392 = alloca i32, align 4
  %i28 = alloca i32, align 4
  %l_1268 = alloca [4 x i32], align 16
  %l_1272 = alloca i16*, align 8
  %l_1273 = alloca [7 x i16*], align 16
  %l_1280 = alloca [2 x [8 x [5 x %union.U0****]]], align 16
  %l_1292 = alloca [3 x [4 x [8 x i32]]], align 16
  %l_1296 = alloca i64, align 8
  %l_1301 = alloca i64*, align 8
  %l_1302 = alloca i64*, align 8
  %l_1309 = alloca i16, align 2
  %l_1310 = alloca i16*, align 8
  %l_1335 = alloca %union.U0, align 8
  %i29 = alloca i32, align 4
  %j30 = alloca i32, align 4
  %k31 = alloca i32, align 4
  %l_1313 = alloca i32, align 4
  %l_1314 = alloca [4 x i32], align 16
  %l_1327 = alloca i64**, align 8
  %l_1329 = alloca i64*, align 8
  %l_1328 = alloca [9 x i64**], align 16
  %i32 = alloca i32, align 4
  %5 = alloca %union.U0, align 8
  %l_1343 = alloca i64, align 8
  %l_1359 = alloca [10 x i32], align 16
  %l_1360 = alloca i8*, align 8
  %l_1375 = alloca [5 x [3 x [10 x i8***]]], align 16
  %l_1377 = alloca i8***, align 8
  %l_1378 = alloca i16, align 2
  %l_1379 = alloca i64*, align 8
  %l_1380 = alloca i16*, align 8
  %l_1381 = alloca i16*, align 8
  %i36 = alloca i32, align 4
  %j37 = alloca i32, align 4
  %k38 = alloca i32, align 4
  %l_1384 = alloca i16, align 2
  %6 = bitcast [9 x i64]* %l_17 to i8*
  call void @llvm.lifetime.start(i64 72, i8* %6) #1
  %7 = bitcast [9 x i64]* %l_17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* bitcast ([9 x i64]* @func_1.l_17 to i8*), i64 72, i32 16, i1 false)
  %8 = bitcast i32** %l_940 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i32* @g_25, i32** %l_940, align 8, !tbaa !5
  %9 = bitcast [5 x i16]* %l_941 to i8*
  call void @llvm.lifetime.start(i64 10, i8* %9) #1
  %10 = bitcast i32** %l_942 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i32* null, i32** %l_942, align 8, !tbaa !5
  %11 = bitcast i32** %l_943 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store i32* @g_94, i32** %l_943, align 8, !tbaa !5
  %12 = bitcast [5 x i64]* %l_966 to i8*
  call void @llvm.lifetime.start(i64 40, i8* %12) #1
  %13 = bitcast i16* %l_992 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %13) #1
  store i16 -6, i16* %l_992, align 2, !tbaa !10
  %14 = bitcast i32* %l_1028 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  store i32 0, i32* %l_1028, align 4, !tbaa !1
  %15 = bitcast [8 x i32]* %l_1031 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %15) #1
  %16 = bitcast [8 x i32]* %l_1031 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* bitcast ([8 x i32]* @func_1.l_1031 to i8*), i64 32, i32 16, i1 false)
  %17 = bitcast %union.U0* %l_1062 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  %18 = bitcast %union.U0* %l_1062 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* bitcast (%union.U0* @func_1.l_1062 to i8*), i64 8, i32 8, i1 false)
  %19 = bitcast i32* %l_1072 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  store i32 -1074472072, i32* %l_1072, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %l_1082) #1
  store i8 98, i8* %l_1082, align 1, !tbaa !9
  %20 = bitcast i32* %l_1085 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  store i32 130584626, i32* %l_1085, align 4, !tbaa !1
  %21 = bitcast i64* %l_1091 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  store i64 -827935114199309966, i64* %l_1091, align 8, !tbaa !7
  %22 = bitcast %union.U0** %l_1100 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #1
  store %union.U0* @g_416, %union.U0** %l_1100, align 8, !tbaa !5
  %23 = bitcast %union.U0*** %l_1099 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #1
  store %union.U0** %l_1100, %union.U0*** %l_1099, align 8, !tbaa !5
  %24 = bitcast %union.U0**** %l_1098 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #1
  store %union.U0*** %l_1099, %union.U0**** %l_1098, align 8, !tbaa !5
  %25 = bitcast i8** %l_1101 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #1
  store i8* getelementptr inbounds ([1 x [9 x [2 x i8]]], [1 x [9 x [2 x i8]]]* @g_579, i32 0, i64 0, i64 3, i64 0), i8** %l_1101, align 8, !tbaa !5
  %26 = bitcast [9 x [1 x i8*]]* %l_1102 to i8*
  call void @llvm.lifetime.start(i64 72, i8* %26) #1
  %27 = bitcast [9 x [1 x i8*]]* %l_1102 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* bitcast ([9 x [1 x i8*]]* @func_1.l_1102 to i8*), i64 72, i32 16, i1 false)
  %28 = bitcast i32** %l_1103 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %28) #1
  store i32* null, i32** %l_1103, align 8, !tbaa !5
  %29 = bitcast [6 x i16]* %l_1108 to i8*
  call void @llvm.lifetime.start(i64 12, i8* %29) #1
  %30 = bitcast i64*** %l_1129 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %30) #1
  store i64** @g_143, i64*** %l_1129, align 8, !tbaa !5
  %31 = bitcast %union.U0*** %l_1140 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %31) #1
  store %union.U0** @g_1137, %union.U0*** %l_1140, align 8, !tbaa !5
  %32 = bitcast [3 x [1 x i32]]* %l_1271 to i8*
  call void @llvm.lifetime.start(i64 12, i8* %32) #1
  call void @llvm.lifetime.start(i64 1, i8* %l_1385) #1
  store i8 -35, i8* %l_1385, align 1, !tbaa !9
  %33 = bitcast i16* %l_1401 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %33) #1
  store i16 30993, i16* %l_1401, align 2, !tbaa !10
  %34 = bitcast i16* %l_1405 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %34) #1
  store i16 -1, i16* %l_1405, align 2, !tbaa !10
  %35 = bitcast i16** %l_1425 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %35) #1
  %36 = getelementptr inbounds [5 x i16], [5 x i16]* %l_941, i32 0, i64 4
  store i16* %36, i16** %l_1425, align 8, !tbaa !5
  %37 = bitcast i64* %l_1426 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %37) #1
  store i64 1034319414057913754, i64* %l_1426, align 8, !tbaa !7
  %38 = bitcast i32* %l_1427 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %38) #1
  store i32 -1, i32* %l_1427, align 4, !tbaa !1
  %39 = bitcast i32* %l_1428 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %39) #1
  store i32 0, i32* %l_1428, align 4, !tbaa !1
  %40 = bitcast i64* %l_1429 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %40) #1
  store i64 0, i64* %l_1429, align 8, !tbaa !7
  %41 = bitcast [10 x [8 x i32**]]* %l_1430 to i8*
  call void @llvm.lifetime.start(i64 640, i8* %41) #1
  %42 = getelementptr inbounds [10 x [8 x i32**]], [10 x [8 x i32**]]* %l_1430, i64 0, i64 0
  %43 = getelementptr inbounds [8 x i32**], [8 x i32**]* %42, i64 0, i64 0
  store i32** %l_1103, i32*** %43, !tbaa !5
  %44 = getelementptr inbounds i32**, i32*** %43, i64 1
  store i32** %l_940, i32*** %44, !tbaa !5
  %45 = getelementptr inbounds i32**, i32*** %44, i64 1
  store i32** %l_940, i32*** %45, !tbaa !5
  %46 = getelementptr inbounds i32**, i32*** %45, i64 1
  store i32** %l_1103, i32*** %46, !tbaa !5
  %47 = getelementptr inbounds i32**, i32*** %46, i64 1
  store i32** null, i32*** %47, !tbaa !5
  %48 = getelementptr inbounds i32**, i32*** %47, i64 1
  store i32** %l_940, i32*** %48, !tbaa !5
  %49 = getelementptr inbounds i32**, i32*** %48, i64 1
  store i32** %l_1103, i32*** %49, !tbaa !5
  %50 = getelementptr inbounds i32**, i32*** %49, i64 1
  store i32** null, i32*** %50, !tbaa !5
  %51 = getelementptr inbounds [8 x i32**], [8 x i32**]* %42, i64 1
  %52 = getelementptr inbounds [8 x i32**], [8 x i32**]* %51, i64 0, i64 0
  store i32** null, i32*** %52, !tbaa !5
  %53 = getelementptr inbounds i32**, i32*** %52, i64 1
  store i32** %l_940, i32*** %53, !tbaa !5
  %54 = getelementptr inbounds i32**, i32*** %53, i64 1
  store i32** %l_940, i32*** %54, !tbaa !5
  %55 = getelementptr inbounds i32**, i32*** %54, i64 1
  store i32** %l_1103, i32*** %55, !tbaa !5
  %56 = getelementptr inbounds i32**, i32*** %55, i64 1
  store i32** %l_1103, i32*** %56, !tbaa !5
  %57 = getelementptr inbounds i32**, i32*** %56, i64 1
  store i32** %l_940, i32*** %57, !tbaa !5
  %58 = getelementptr inbounds i32**, i32*** %57, i64 1
  store i32** %l_940, i32*** %58, !tbaa !5
  %59 = getelementptr inbounds i32**, i32*** %58, i64 1
  store i32** null, i32*** %59, !tbaa !5
  %60 = getelementptr inbounds [8 x i32**], [8 x i32**]* %51, i64 1
  %61 = getelementptr inbounds [8 x i32**], [8 x i32**]* %60, i64 0, i64 0
  store i32** %l_1103, i32*** %61, !tbaa !5
  %62 = getelementptr inbounds i32**, i32*** %61, i64 1
  store i32** %l_940, i32*** %62, !tbaa !5
  %63 = getelementptr inbounds i32**, i32*** %62, i64 1
  store i32** %l_940, i32*** %63, !tbaa !5
  %64 = getelementptr inbounds i32**, i32*** %63, i64 1
  store i32** %l_1103, i32*** %64, !tbaa !5
  %65 = getelementptr inbounds i32**, i32*** %64, i64 1
  store i32** null, i32*** %65, !tbaa !5
  %66 = getelementptr inbounds i32**, i32*** %65, i64 1
  store i32** %l_940, i32*** %66, !tbaa !5
  %67 = getelementptr inbounds i32**, i32*** %66, i64 1
  store i32** %l_1103, i32*** %67, !tbaa !5
  %68 = getelementptr inbounds i32**, i32*** %67, i64 1
  store i32** null, i32*** %68, !tbaa !5
  %69 = getelementptr inbounds [8 x i32**], [8 x i32**]* %60, i64 1
  %70 = getelementptr inbounds [8 x i32**], [8 x i32**]* %69, i64 0, i64 0
  store i32** null, i32*** %70, !tbaa !5
  %71 = getelementptr inbounds i32**, i32*** %70, i64 1
  store i32** %l_940, i32*** %71, !tbaa !5
  %72 = getelementptr inbounds i32**, i32*** %71, i64 1
  store i32** %l_940, i32*** %72, !tbaa !5
  %73 = getelementptr inbounds i32**, i32*** %72, i64 1
  store i32** %l_1103, i32*** %73, !tbaa !5
  %74 = getelementptr inbounds i32**, i32*** %73, i64 1
  store i32** %l_1103, i32*** %74, !tbaa !5
  %75 = getelementptr inbounds i32**, i32*** %74, i64 1
  store i32** %l_940, i32*** %75, !tbaa !5
  %76 = getelementptr inbounds i32**, i32*** %75, i64 1
  store i32** %l_940, i32*** %76, !tbaa !5
  %77 = getelementptr inbounds i32**, i32*** %76, i64 1
  store i32** null, i32*** %77, !tbaa !5
  %78 = getelementptr inbounds [8 x i32**], [8 x i32**]* %69, i64 1
  %79 = getelementptr inbounds [8 x i32**], [8 x i32**]* %78, i64 0, i64 0
  store i32** %l_1103, i32*** %79, !tbaa !5
  %80 = getelementptr inbounds i32**, i32*** %79, i64 1
  store i32** %l_940, i32*** %80, !tbaa !5
  %81 = getelementptr inbounds i32**, i32*** %80, i64 1
  store i32** %l_940, i32*** %81, !tbaa !5
  %82 = getelementptr inbounds i32**, i32*** %81, i64 1
  store i32** %l_1103, i32*** %82, !tbaa !5
  %83 = getelementptr inbounds i32**, i32*** %82, i64 1
  store i32** null, i32*** %83, !tbaa !5
  %84 = getelementptr inbounds i32**, i32*** %83, i64 1
  store i32** %l_940, i32*** %84, !tbaa !5
  %85 = getelementptr inbounds i32**, i32*** %84, i64 1
  store i32** %l_1103, i32*** %85, !tbaa !5
  %86 = getelementptr inbounds i32**, i32*** %85, i64 1
  store i32** null, i32*** %86, !tbaa !5
  %87 = getelementptr inbounds [8 x i32**], [8 x i32**]* %78, i64 1
  %88 = getelementptr inbounds [8 x i32**], [8 x i32**]* %87, i64 0, i64 0
  store i32** null, i32*** %88, !tbaa !5
  %89 = getelementptr inbounds i32**, i32*** %88, i64 1
  store i32** %l_940, i32*** %89, !tbaa !5
  %90 = getelementptr inbounds i32**, i32*** %89, i64 1
  store i32** %l_940, i32*** %90, !tbaa !5
  %91 = getelementptr inbounds i32**, i32*** %90, i64 1
  store i32** %l_1103, i32*** %91, !tbaa !5
  %92 = getelementptr inbounds i32**, i32*** %91, i64 1
  store i32** %l_1103, i32*** %92, !tbaa !5
  %93 = getelementptr inbounds i32**, i32*** %92, i64 1
  store i32** %l_940, i32*** %93, !tbaa !5
  %94 = getelementptr inbounds i32**, i32*** %93, i64 1
  store i32** %l_940, i32*** %94, !tbaa !5
  %95 = getelementptr inbounds i32**, i32*** %94, i64 1
  store i32** null, i32*** %95, !tbaa !5
  %96 = getelementptr inbounds [8 x i32**], [8 x i32**]* %87, i64 1
  %97 = getelementptr inbounds [8 x i32**], [8 x i32**]* %96, i64 0, i64 0
  store i32** %l_1103, i32*** %97, !tbaa !5
  %98 = getelementptr inbounds i32**, i32*** %97, i64 1
  store i32** %l_940, i32*** %98, !tbaa !5
  %99 = getelementptr inbounds i32**, i32*** %98, i64 1
  store i32** %l_940, i32*** %99, !tbaa !5
  %100 = getelementptr inbounds i32**, i32*** %99, i64 1
  store i32** %l_1103, i32*** %100, !tbaa !5
  %101 = getelementptr inbounds i32**, i32*** %100, i64 1
  store i32** null, i32*** %101, !tbaa !5
  %102 = getelementptr inbounds i32**, i32*** %101, i64 1
  store i32** %l_940, i32*** %102, !tbaa !5
  %103 = getelementptr inbounds i32**, i32*** %102, i64 1
  store i32** %l_1103, i32*** %103, !tbaa !5
  %104 = getelementptr inbounds i32**, i32*** %103, i64 1
  store i32** null, i32*** %104, !tbaa !5
  %105 = getelementptr inbounds [8 x i32**], [8 x i32**]* %96, i64 1
  %106 = getelementptr inbounds [8 x i32**], [8 x i32**]* %105, i64 0, i64 0
  store i32** null, i32*** %106, !tbaa !5
  %107 = getelementptr inbounds i32**, i32*** %106, i64 1
  store i32** %l_940, i32*** %107, !tbaa !5
  %108 = getelementptr inbounds i32**, i32*** %107, i64 1
  store i32** %l_940, i32*** %108, !tbaa !5
  %109 = getelementptr inbounds i32**, i32*** %108, i64 1
  store i32** %l_1103, i32*** %109, !tbaa !5
  %110 = getelementptr inbounds i32**, i32*** %109, i64 1
  store i32** %l_1103, i32*** %110, !tbaa !5
  %111 = getelementptr inbounds i32**, i32*** %110, i64 1
  store i32** %l_940, i32*** %111, !tbaa !5
  %112 = getelementptr inbounds i32**, i32*** %111, i64 1
  store i32** %l_940, i32*** %112, !tbaa !5
  %113 = getelementptr inbounds i32**, i32*** %112, i64 1
  store i32** null, i32*** %113, !tbaa !5
  %114 = getelementptr inbounds [8 x i32**], [8 x i32**]* %105, i64 1
  %115 = getelementptr inbounds [8 x i32**], [8 x i32**]* %114, i64 0, i64 0
  store i32** %l_1103, i32*** %115, !tbaa !5
  %116 = getelementptr inbounds i32**, i32*** %115, i64 1
  store i32** %l_940, i32*** %116, !tbaa !5
  %117 = getelementptr inbounds i32**, i32*** %116, i64 1
  store i32** %l_940, i32*** %117, !tbaa !5
  %118 = getelementptr inbounds i32**, i32*** %117, i64 1
  store i32** %l_1103, i32*** %118, !tbaa !5
  %119 = getelementptr inbounds i32**, i32*** %118, i64 1
  store i32** null, i32*** %119, !tbaa !5
  %120 = getelementptr inbounds i32**, i32*** %119, i64 1
  store i32** %l_940, i32*** %120, !tbaa !5
  %121 = getelementptr inbounds i32**, i32*** %120, i64 1
  store i32** %l_1103, i32*** %121, !tbaa !5
  %122 = getelementptr inbounds i32**, i32*** %121, i64 1
  store i32** null, i32*** %122, !tbaa !5
  %123 = getelementptr inbounds [8 x i32**], [8 x i32**]* %114, i64 1
  %124 = getelementptr inbounds [8 x i32**], [8 x i32**]* %123, i64 0, i64 0
  store i32** null, i32*** %124, !tbaa !5
  %125 = getelementptr inbounds i32**, i32*** %124, i64 1
  store i32** %l_940, i32*** %125, !tbaa !5
  %126 = getelementptr inbounds i32**, i32*** %125, i64 1
  store i32** %l_940, i32*** %126, !tbaa !5
  %127 = getelementptr inbounds i32**, i32*** %126, i64 1
  store i32** %l_1103, i32*** %127, !tbaa !5
  %128 = getelementptr inbounds i32**, i32*** %127, i64 1
  store i32** %l_1103, i32*** %128, !tbaa !5
  %129 = getelementptr inbounds i32**, i32*** %128, i64 1
  store i32** %l_940, i32*** %129, !tbaa !5
  %130 = getelementptr inbounds i32**, i32*** %129, i64 1
  store i32** %l_940, i32*** %130, !tbaa !5
  %131 = getelementptr inbounds i32**, i32*** %130, i64 1
  store i32** null, i32*** %131, !tbaa !5
  %132 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %132) #1
  %133 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %133) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %134

; <label>:134                                     ; preds = %141, %0
  %135 = load i32, i32* %i, align 4, !tbaa !1
  %136 = icmp slt i32 %135, 5
  br i1 %136, label %137, label %144

; <label>:137                                     ; preds = %134
  %138 = load i32, i32* %i, align 4, !tbaa !1
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [5 x i16], [5 x i16]* %l_941, i32 0, i64 %139
  store i16 1, i16* %140, align 2, !tbaa !10
  br label %141

; <label>:141                                     ; preds = %137
  %142 = load i32, i32* %i, align 4, !tbaa !1
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %i, align 4, !tbaa !1
  br label %134

; <label>:144                                     ; preds = %134
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %145

; <label>:145                                     ; preds = %152, %144
  %146 = load i32, i32* %i, align 4, !tbaa !1
  %147 = icmp slt i32 %146, 5
  br i1 %147, label %148, label %155

; <label>:148                                     ; preds = %145
  %149 = load i32, i32* %i, align 4, !tbaa !1
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [5 x i64], [5 x i64]* %l_966, i32 0, i64 %150
  store i64 -288333905208035055, i64* %151, align 8, !tbaa !7
  br label %152

; <label>:152                                     ; preds = %148
  %153 = load i32, i32* %i, align 4, !tbaa !1
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %i, align 4, !tbaa !1
  br label %145

; <label>:155                                     ; preds = %145
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %156

; <label>:156                                     ; preds = %163, %155
  %157 = load i32, i32* %i, align 4, !tbaa !1
  %158 = icmp slt i32 %157, 6
  br i1 %158, label %159, label %166

; <label>:159                                     ; preds = %156
  %160 = load i32, i32* %i, align 4, !tbaa !1
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [6 x i16], [6 x i16]* %l_1108, i32 0, i64 %161
  store i16 -29297, i16* %162, align 2, !tbaa !10
  br label %163

; <label>:163                                     ; preds = %159
  %164 = load i32, i32* %i, align 4, !tbaa !1
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %i, align 4, !tbaa !1
  br label %156

; <label>:166                                     ; preds = %156
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %167

; <label>:167                                     ; preds = %185, %166
  %168 = load i32, i32* %i, align 4, !tbaa !1
  %169 = icmp slt i32 %168, 3
  br i1 %169, label %170, label %188

; <label>:170                                     ; preds = %167
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %171

; <label>:171                                     ; preds = %181, %170
  %172 = load i32, i32* %j, align 4, !tbaa !1
  %173 = icmp slt i32 %172, 1
  br i1 %173, label %174, label %184

; <label>:174                                     ; preds = %171
  %175 = load i32, i32* %j, align 4, !tbaa !1
  %176 = sext i32 %175 to i64
  %177 = load i32, i32* %i, align 4, !tbaa !1
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [3 x [1 x i32]], [3 x [1 x i32]]* %l_1271, i32 0, i64 %178
  %180 = getelementptr inbounds [1 x i32], [1 x i32]* %179, i32 0, i64 %176
  store i32 1577929155, i32* %180, align 4, !tbaa !1
  br label %181

; <label>:181                                     ; preds = %174
  %182 = load i32, i32* %j, align 4, !tbaa !1
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %j, align 4, !tbaa !1
  br label %171

; <label>:184                                     ; preds = %171
  br label %185

; <label>:185                                     ; preds = %184
  %186 = load i32, i32* %i, align 4, !tbaa !1
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %i, align 4, !tbaa !1
  br label %167

; <label>:188                                     ; preds = %167
  br label %189

; <label>:189                                     ; preds = %2556, %188
  %190 = load volatile i8, i8* @g_4, align 1, !tbaa !9
  %191 = sext i8 %190 to i32
  %192 = load i64, i64* getelementptr inbounds ([9 x [6 x [2 x i64]]], [9 x [6 x [2 x i64]]]* @g_11, i32 0, i64 8, i64 1, i64 0), align 8, !tbaa !7
  %193 = trunc i64 %192 to i16
  %194 = load i64, i64* getelementptr inbounds ([9 x [6 x [2 x i64]]], [9 x [6 x [2 x i64]]]* @g_11, i32 0, i64 8, i64 1, i64 0), align 8, !tbaa !7
  %195 = trunc i64 %194 to i16
  %196 = load i64, i64* getelementptr inbounds ([9 x [6 x [2 x i64]]], [9 x [6 x [2 x i64]]]* @g_11, i32 0, i64 8, i64 1, i64 0), align 8, !tbaa !7
  %197 = getelementptr inbounds [9 x i64], [9 x i64]* %l_17, i32 0, i64 3
  %198 = load i64, i64* %197, align 8, !tbaa !7
  %199 = load i64, i64* getelementptr inbounds ([9 x [6 x [2 x i64]]], [9 x [6 x [2 x i64]]]* @g_11, i32 0, i64 8, i64 1, i64 0), align 8, !tbaa !7
  %200 = trunc i64 %199 to i32
  %201 = call i64 @func_18(i32 %200)
  %202 = getelementptr %union.U0, %union.U0* %2, i32 0, i32 0
  store i64 %201, i64* %202, align 8
  %203 = getelementptr inbounds [9 x i64], [9 x i64]* %l_17, i32 0, i64 3
  %204 = load i64, i64* %203, align 8, !tbaa !7
  %205 = trunc i64 %204 to i32
  %206 = getelementptr %union.U0, %union.U0* %2, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = call zeroext i16 @func_12(i16 zeroext %195, i64 %198, i64 %207, i32 %205)
  %209 = call signext i16 @safe_div_func_int16_t_s_s(i16 signext %193, i16 signext %208)
  %210 = trunc i16 %209 to i8
  %211 = call signext i8 @safe_div_func_int8_t_s_s(i8 signext %210, i8 signext 94)
  %212 = sext i8 %211 to i16
  %213 = load i32, i32* getelementptr inbounds ([7 x i32], [7 x i32]* @g_431, i32 0, i64 2), align 4, !tbaa !1
  %214 = trunc i32 %213 to i16
  %215 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %212, i16 signext %214)
  %216 = sext i16 %215 to i32
  %217 = call i32 @safe_mod_func_int32_t_s_s(i32 %191, i32 %216)
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %223, label %219

; <label>:219                                     ; preds = %189
  %220 = getelementptr inbounds [9 x i64], [9 x i64]* %l_17, i32 0, i64 1
  %221 = load i64, i64* %220, align 8, !tbaa !7
  %222 = icmp ne i64 %221, 0
  br label %223

; <label>:223                                     ; preds = %219, %189
  %224 = phi i1 [ true, %189 ], [ %222, %219 ]
  %225 = zext i1 %224 to i32
  %226 = load i32*, i32** %l_940, align 8, !tbaa !5
  store i32 %225, i32* %226, align 4, !tbaa !1
  %227 = sext i32 %225 to i64
  %228 = icmp sle i64 %227, 3997459350
  %229 = zext i1 %228 to i32
  %230 = getelementptr inbounds [5 x i16], [5 x i16]* %l_941, i32 0, i64 4
  %231 = load i16, i16* %230, align 2, !tbaa !10
  %232 = zext i16 %231 to i32
  %233 = icmp sge i32 %229, %232
  %234 = zext i1 %233 to i32
  %235 = load i32*, i32** %l_943, align 8, !tbaa !5
  store i32 %234, i32* %235, align 4, !tbaa !1
  %236 = load i32*, i32** %l_940, align 8, !tbaa !5
  %237 = load i32, i32* %236, align 4, !tbaa !1
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %727

; <label>:239                                     ; preds = %223
  %240 = bitcast i16** %l_950 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %240) #1
  store i16* getelementptr inbounds ([4 x i16], [4 x i16]* @g_626, i32 0, i64 1), i16** %l_950, align 8, !tbaa !5
  %241 = bitcast [1 x [9 x [10 x i16]]]* %l_957 to i8*
  call void @llvm.lifetime.start(i64 180, i8* %241) #1
  %242 = bitcast [1 x [9 x [10 x i16]]]* %l_957 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %242, i8* bitcast ([1 x [9 x [10 x i16]]]* @func_1.l_957 to i8*), i64 180, i32 16, i1 false)
  %243 = bitcast i8** %l_958 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %243) #1
  store i8* @g_724, i8** %l_958, align 8, !tbaa !5
  %244 = bitcast i64** %l_959 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %244) #1
  store i64* getelementptr inbounds (%union.U0, %union.U0* @g_416, i32 0, i32 0), i64** %l_959, align 8, !tbaa !5
  %245 = bitcast i16** %l_967 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %245) #1
  store i16* getelementptr inbounds ([3 x i16], [3 x i16]* @g_201, i32 0, i64 1), i16** %l_967, align 8, !tbaa !5
  %246 = bitcast i64** %l_968 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %246) #1
  store i64* @g_314, i64** %l_968, align 8, !tbaa !5
  %247 = bitcast i32* %l_997 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %247) #1
  store i32 460984839, i32* %l_997, align 4, !tbaa !1
  %248 = bitcast i32* %l_1000 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %248) #1
  store i32 492145791, i32* %l_1000, align 4, !tbaa !1
  %249 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %249) #1
  %250 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %250) #1
  %251 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %251) #1
  %252 = load i8, i8* @g_921, align 1, !tbaa !9
  %253 = zext i8 %252 to i32
  %254 = load i32, i32* @g_94, align 4, !tbaa !1
  %255 = load i16, i16* getelementptr inbounds ([4 x i16], [4 x i16]* @g_183, i32 0, i64 1), align 2, !tbaa !10
  %256 = sext i16 %255 to i32
  %257 = load i16*, i16** %l_950, align 8, !tbaa !5
  %258 = load i16, i16* %257, align 2, !tbaa !10
  %259 = sext i16 %258 to i32
  %260 = or i32 %259, %256
  %261 = trunc i32 %260 to i16
  store i16 %261, i16* %257, align 2, !tbaa !10
  %262 = sext i16 %261 to i32
  %263 = xor i32 %254, %262
  %264 = trunc i32 %263 to i8
  %265 = load i8, i8* @g_512, align 1, !tbaa !9
  %266 = sext i8 %265 to i32
  %267 = icmp sgt i32 1, %266
  %268 = zext i1 %267 to i32
  %269 = sext i32 %268 to i64
  %270 = load i64*, i64** %l_968, align 8, !tbaa !5
  store i64 %269, i64* %270, align 8, !tbaa !7
  %271 = getelementptr inbounds [1 x [9 x [10 x i16]]], [1 x [9 x [10 x i16]]]* %l_957, i32 0, i64 0
  %272 = getelementptr inbounds [9 x [10 x i16]], [9 x [10 x i16]]* %271, i32 0, i64 2
  %273 = getelementptr inbounds [10 x i16], [10 x i16]* %272, i32 0, i64 9
  %274 = load i16, i16* %273, align 2, !tbaa !10
  %275 = zext i16 %274 to i64
  %276 = or i64 %269, %275
  %277 = trunc i64 %276 to i16
  %278 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %277, i16 zeroext 0)
  %279 = trunc i16 %278 to i8
  %280 = getelementptr inbounds [1 x [9 x [10 x i16]]], [1 x [9 x [10 x i16]]]* %l_957, i32 0, i64 0
  %281 = getelementptr inbounds [9 x [10 x i16]], [9 x [10 x i16]]* %280, i32 0, i64 2
  %282 = getelementptr inbounds [10 x i16], [10 x i16]* %281, i32 0, i64 1
  %283 = load i16, i16* %282, align 2, !tbaa !10
  %284 = trunc i16 %283 to i8
  %285 = call signext i8 @safe_add_func_int8_t_s_s(i8 signext %279, i8 signext %284)
  %286 = call signext i8 @safe_mod_func_int8_t_s_s(i8 signext %264, i8 signext %285)
  %287 = sext i8 %286 to i32
  %288 = and i32 %253, %287
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds [1 x [9 x [10 x i16]]], [1 x [9 x [10 x i16]]]* %l_957, i32 0, i64 0
  %291 = getelementptr inbounds [9 x [10 x i16]], [9 x [10 x i16]]* %290, i32 0, i64 2
  %292 = getelementptr inbounds [10 x i16], [10 x i16]* %291, i32 0, i64 1
  %293 = load i16, i16* %292, align 2, !tbaa !10
  %294 = zext i16 %293 to i64
  %295 = call i64 @safe_div_func_uint64_t_u_u(i64 %289, i64 %294)
  %296 = load i32*, i32** %l_940, align 8, !tbaa !5
  %297 = load i32, i32* %296, align 4, !tbaa !1
  %298 = getelementptr inbounds [1 x [9 x [10 x i16]]], [1 x [9 x [10 x i16]]]* %l_957, i32 0, i64 0
  %299 = getelementptr inbounds [9 x [10 x i16]], [9 x [10 x i16]]* %298, i32 0, i64 2
  %300 = getelementptr inbounds [10 x i16], [10 x i16]* %299, i32 0, i64 1
  %301 = load i16, i16* %300, align 2, !tbaa !10
  %302 = zext i16 %301 to i32
  %303 = call signext i16 @safe_lshift_func_int16_t_s_s(i16 signext 1, i32 %302)
  %304 = sext i16 %303 to i64
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %309

; <label>:306                                     ; preds = %239
  br label %307

; <label>:307                                     ; preds = %703, %306
  %308 = load %union.U0**, %union.U0*** @g_497, align 8, !tbaa !5
  store %union.U0* null, %union.U0** %308, align 8, !tbaa !5
  br label %712

; <label>:309                                     ; preds = %239
  %310 = bitcast i16** %l_976 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %310) #1
  store i16* @g_174, i16** %l_976, align 8, !tbaa !5
  %311 = bitcast i16** %l_979 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %311) #1
  store i16* @g_232, i16** %l_979, align 8, !tbaa !5
  %312 = bitcast i32* %l_993 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %312) #1
  store i32 1904448585, i32* %l_993, align 4, !tbaa !1
  %313 = bitcast i32* %l_1001 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %313) #1
  store i32 -1833939114, i32* %l_1001, align 4, !tbaa !1
  %314 = bitcast i32* %l_1024 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %314) #1
  store i32 1311582778, i32* %l_1024, align 4, !tbaa !1
  %315 = bitcast [8 x i32]* %l_1027 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %315) #1
  call void @llvm.lifetime.start(i64 1, i8* %l_1053) #1
  store i8 -9, i8* %l_1053, align 1, !tbaa !9
  %316 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %316) #1
  store i32 0, i32* %i3, align 4, !tbaa !1
  br label %317

; <label>:317                                     ; preds = %324, %309
  %318 = load i32, i32* %i3, align 4, !tbaa !1
  %319 = icmp slt i32 %318, 8
  br i1 %319, label %320, label %327

; <label>:320                                     ; preds = %317
  %321 = load i32, i32* %i3, align 4, !tbaa !1
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds [8 x i32], [8 x i32]* %l_1027, i32 0, i64 %322
  store i32 1, i32* %323, align 4, !tbaa !1
  br label %324

; <label>:324                                     ; preds = %320
  %325 = load i32, i32* %i3, align 4, !tbaa !1
  %326 = add nsw i32 %325, 1
  store i32 %326, i32* %i3, align 4, !tbaa !1
  br label %317

; <label>:327                                     ; preds = %317
  %328 = load i16*, i16** %l_976, align 8, !tbaa !5
  %329 = load i16, i16* %328, align 2, !tbaa !10
  %330 = add i16 %329, 1
  store i16 %330, i16* %328, align 2, !tbaa !10
  %331 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %329, i16 zeroext 0)
  %332 = load i16*, i16** %l_979, align 8, !tbaa !5
  store i16 %331, i16* %332, align 2, !tbaa !10
  %333 = getelementptr inbounds [1 x [9 x [10 x i16]]], [1 x [9 x [10 x i16]]]* %l_957, i32 0, i64 0
  %334 = getelementptr inbounds [9 x [10 x i16]], [9 x [10 x i16]]* %333, i32 0, i64 2
  %335 = getelementptr inbounds [10 x i16], [10 x i16]* %334, i32 0, i64 1
  %336 = load i16, i16* %335, align 2, !tbaa !10
  %337 = zext i16 %336 to i64
  %338 = load i64, i64* getelementptr inbounds ([9 x [6 x [2 x i64]]], [9 x [6 x [2 x i64]]]* @g_11, i32 0, i64 8, i64 1, i64 0), align 8, !tbaa !7
  %339 = icmp ugt i64 %337, %338
  %340 = zext i1 %339 to i32
  %341 = load volatile i16**, i16*** @g_983, align 8, !tbaa !5
  %342 = icmp ne i16** %341, null
  %343 = zext i1 %342 to i32
  %344 = load i64, i64* @g_246, align 8, !tbaa !7
  %345 = load volatile i16**, i16*** @g_983, align 8, !tbaa !5
  %346 = load i16*, i16** %345, align 8, !tbaa !5
  %347 = load i16, i16* %346, align 2, !tbaa !10
  %348 = load i16, i16* %l_992, align 2, !tbaa !10
  %349 = sext i16 %348 to i32
  %350 = call i32 @safe_sub_func_uint32_t_u_u(i32 %349, i32 1904448585)
  %351 = load i16*, i16** @g_984, align 8, !tbaa !5
  %352 = load i16, i16* %351, align 2, !tbaa !10
  %353 = zext i16 %352 to i32
  %354 = icmp uge i32 %350, %353
  %355 = zext i1 %354 to i32
  %356 = trunc i32 %355 to i16
  %357 = call zeroext i16 @safe_add_func_uint16_t_u_u(i16 zeroext %347, i16 zeroext %356)
  %358 = load i64, i64* @g_937, align 8, !tbaa !7
  %359 = trunc i64 %358 to i16
  %360 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %357, i16 signext %359)
  %361 = sext i16 %360 to i64
  %362 = xor i64 %344, %361
  %363 = icmp ne i64 %362, 0
  %364 = zext i1 %363 to i32
  %365 = load i8, i8* getelementptr inbounds ([8 x [5 x [6 x i8]]], [8 x [5 x [6 x i8]]]* @g_726, i32 0, i64 0, i64 1, i64 0), align 1, !tbaa !9
  %366 = sext i8 %365 to i32
  %367 = icmp slt i32 %364, %366
  %368 = zext i1 %367 to i32
  %369 = trunc i32 %368 to i16
  %370 = load i32*, i32** %l_940, align 8, !tbaa !5
  %371 = load i32, i32* %370, align 4, !tbaa !1
  %372 = call zeroext i16 @safe_rshift_func_uint16_t_u_s(i16 zeroext %369, i32 %371)
  %373 = call zeroext i16 @safe_mod_func_uint16_t_u_u(i16 zeroext %331, i16 zeroext %372)
  %374 = zext i16 %373 to i32
  %375 = getelementptr inbounds [1 x [9 x [10 x i16]]], [1 x [9 x [10 x i16]]]* %l_957, i32 0, i64 0
  %376 = getelementptr inbounds [9 x [10 x i16]], [9 x [10 x i16]]* %375, i32 0, i64 2
  %377 = getelementptr inbounds [10 x i16], [10 x i16]* %376, i32 0, i64 1
  %378 = load i16, i16* %377, align 2, !tbaa !10
  %379 = zext i16 %378 to i32
  %380 = icmp ne i32 %374, %379
  %381 = zext i1 %380 to i32
  %382 = sext i32 %381 to i64
  %383 = call i64 @safe_sub_func_int64_t_s_s(i64 %382, i64 -1)
  %384 = load i32*, i32** %l_940, align 8, !tbaa !5
  %385 = load i32, i32* %384, align 4, !tbaa !1
  %386 = sext i32 %385 to i64
  %387 = xor i64 %383, %386
  %388 = icmp eq i64 %387, 1904448585
  %389 = zext i1 %388 to i32
  %390 = trunc i32 %389 to i8
  %391 = call signext i8 @safe_unary_minus_func_int8_t_s(i8 signext %390)
  %392 = icmp ne i8 %391, 0
  br i1 %392, label %393, label %398

; <label>:393                                     ; preds = %327
  %394 = load i8, i8* @g_478, align 1, !tbaa !9
  %395 = icmp ne i8 %394, 0
  br i1 %395, label %396, label %397

; <label>:396                                     ; preds = %393
  store i32 18, i32* %3
  br label %703

; <label>:397                                     ; preds = %393
  br label %537

; <label>:398                                     ; preds = %327
  %399 = bitcast i32* %l_995 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %399) #1
  store i32 -4, i32* %l_995, align 4, !tbaa !1
  %400 = bitcast i32* %l_998 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %400) #1
  store i32 -10, i32* %l_998, align 4, !tbaa !1
  %401 = bitcast i32* %l_999 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %401) #1
  store i32 -10, i32* %l_999, align 4, !tbaa !1
  %402 = bitcast i32* %l_1030 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %402) #1
  store i32 -1, i32* %l_1030, align 4, !tbaa !1
  %403 = bitcast i32* %l_1032 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %403) #1
  store i32 -1, i32* %l_1032, align 4, !tbaa !1
  %404 = getelementptr inbounds [1 x [9 x [10 x i16]]], [1 x [9 x [10 x i16]]]* %l_957, i32 0, i64 0
  %405 = getelementptr inbounds [9 x [10 x i16]], [9 x [10 x i16]]* %404, i32 0, i64 2
  %406 = getelementptr inbounds [10 x i16], [10 x i16]* %405, i32 0, i64 1
  %407 = load i16, i16* %406, align 2, !tbaa !10
  %408 = icmp ne i16 %407, 0
  br i1 %408, label %409, label %420

; <label>:409                                     ; preds = %398
  %410 = bitcast [9 x i32*]* %l_996 to i8*
  call void @llvm.lifetime.start(i64 72, i8* %410) #1
  %411 = bitcast [9 x i32*]* %l_996 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %411, i8* bitcast ([9 x i32*]* @func_1.l_996 to i8*), i64 72, i32 16, i1 false)
  %412 = bitcast i32* %i4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %412) #1
  %413 = load i32, i32* %l_1001, align 4, !tbaa !1
  %414 = add i32 %413, -1
  store i32 %414, i32* %l_1001, align 4, !tbaa !1
  %415 = load i32*, i32** %l_940, align 8, !tbaa !5
  %416 = load i32, i32* %415, align 4, !tbaa !1
  %417 = sext i32 %416 to i64
  store i64 %417, i64* %1
  store i32 1, i32* %3
  %418 = bitcast i32* %i4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %418) #1
  %419 = bitcast [9 x i32*]* %l_996 to i8*
  call void @llvm.lifetime.end(i64 72, i8* %419) #1
  br label %530

; <label>:420                                     ; preds = %398
  %421 = bitcast [9 x i32]* %l_1023 to i8*
  call void @llvm.lifetime.start(i64 36, i8* %421) #1
  %422 = bitcast [9 x i32]* %l_1023 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %422, i8* bitcast ([9 x i32]* @func_1.l_1023 to i8*), i64 36, i32 16, i1 false)
  %423 = bitcast i32** %l_1025 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %423) #1
  store i32* %l_997, i32** %l_1025, align 8, !tbaa !5
  %424 = bitcast i32** %l_1026 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %424) #1
  store i32* %l_1000, i32** %l_1026, align 8, !tbaa !5
  %425 = bitcast [10 x i32*]* %l_1029 to i8*
  call void @llvm.lifetime.start(i64 80, i8* %425) #1
  %426 = bitcast [10 x i32*]* %l_1029 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %426, i8* bitcast ([10 x i32*]* @func_1.l_1029 to i8*), i64 80, i32 16, i1 false)
  %427 = bitcast i32* %i5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %427) #1
  %428 = load volatile i8**, i8*** @g_1006, align 8, !tbaa !5
  %429 = load i16*, i16** @g_984, align 8, !tbaa !5
  %430 = load i16, i16* %429, align 2, !tbaa !10
  %431 = load i32, i32* %l_1000, align 4, !tbaa !1
  %432 = icmp ne i32 %431, 0
  %433 = xor i1 %432, true
  %434 = zext i1 %433 to i32
  %435 = load i8, i8* @g_512, align 1, !tbaa !9
  %436 = sext i8 %435 to i32
  %437 = call i32 @safe_add_func_int32_t_s_s(i32 %434, i32 %436)
  %438 = load i32, i32* @g_628, align 4, !tbaa !1
  %439 = icmp eq i32 %437, %438
  %440 = zext i1 %439 to i32
  %441 = call zeroext i16 @safe_rshift_func_uint16_t_u_u(i16 zeroext -6, i32 %440)
  %442 = zext i16 %441 to i32
  %443 = getelementptr inbounds [9 x i32], [9 x i32]* %l_1023, i32 0, i64 3
  %444 = load i32, i32* %443, align 4, !tbaa !1
  %445 = getelementptr inbounds [9 x i32], [9 x i32]* %l_1023, i32 0, i64 0
  %446 = load i32, i32* %445, align 4, !tbaa !1
  %447 = icmp ne i32 %446, 0
  br i1 %447, label %452, label %448

; <label>:448                                     ; preds = %420
  %449 = load i32, i32* %l_995, align 4, !tbaa !1
  %450 = load i32, i32* %l_1024, align 4, !tbaa !1
  %451 = icmp ne i32 %450, 0
  br label %452

; <label>:452                                     ; preds = %448, %420
  %453 = phi i1 [ true, %420 ], [ %451, %448 ]
  %454 = zext i1 %453 to i32
  %455 = icmp eq i32 %444, %454
  %456 = zext i1 %455 to i32
  %457 = load i32*, i32** %l_940, align 8, !tbaa !5
  %458 = load i32, i32* %457, align 4, !tbaa !1
  %459 = icmp sgt i32 %456, %458
  %460 = zext i1 %459 to i32
  %461 = trunc i32 %460 to i8
  store i8 %461, i8* @g_478, align 1, !tbaa !9
  %462 = zext i8 %461 to i32
  %463 = icmp sle i32 %442, %462
  %464 = zext i1 %463 to i32
  %465 = icmp ne i32 %464, 1904448585
  %466 = xor i1 %465, true
  %467 = zext i1 %466 to i32
  %468 = load i32*, i32** %l_940, align 8, !tbaa !5
  store i32 %467, i32* %468, align 4, !tbaa !1
  %469 = sext i32 %467 to i64
  %470 = icmp sle i64 %469, 3987780020
  %471 = zext i1 %470 to i32
  %472 = trunc i32 %471 to i16
  %473 = call signext i16 @safe_rshift_func_int16_t_s_s(i16 signext %472, i32 5)
  %474 = sext i16 %473 to i64
  %475 = getelementptr inbounds [1 x [9 x [10 x i16]]], [1 x [9 x [10 x i16]]]* %l_957, i32 0, i64 0
  %476 = getelementptr inbounds [9 x [10 x i16]], [9 x [10 x i16]]* %475, i32 0, i64 2
  %477 = getelementptr inbounds [10 x i16], [10 x i16]* %476, i32 0, i64 1
  %478 = load i16, i16* %477, align 2, !tbaa !10
  %479 = zext i16 %478 to i64
  %480 = call i64 @safe_mod_func_int64_t_s_s(i64 %474, i64 %479)
  %481 = trunc i64 %480 to i16
  %482 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %430, i16 zeroext %481)
  %483 = zext i16 %482 to i32
  %484 = icmp ne i32 %483, 0
  br i1 %484, label %485, label %488

; <label>:485                                     ; preds = %452
  %486 = load i32, i32* @g_91, align 4, !tbaa !1
  %487 = icmp ne i32 %486, 0
  br label %488

; <label>:488                                     ; preds = %485, %452
  %489 = phi i1 [ false, %452 ], [ %487, %485 ]
  %490 = zext i1 %489 to i32
  %491 = trunc i32 %490 to i16
  %492 = load i16*, i16** @g_984, align 8, !tbaa !5
  %493 = load i16, i16* %492, align 2, !tbaa !10
  %494 = zext i16 %493 to i32
  %495 = call signext i16 @safe_lshift_func_int16_t_s_u(i16 signext %491, i32 %494)
  %496 = icmp eq i8** %428, null
  %497 = zext i1 %496 to i32
  %498 = trunc i32 %497 to i16
  %499 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %498, i16 zeroext 0)
  %500 = zext i16 %499 to i32
  %501 = load i32, i32* %l_998, align 4, !tbaa !1
  %502 = icmp sle i32 %500, %501
  %503 = zext i1 %502 to i32
  %504 = load i32*, i32** %l_1025, align 8, !tbaa !5
  %505 = load i32, i32* %504, align 4, !tbaa !1
  %506 = and i32 %505, %503
  store i32 %506, i32* %504, align 4, !tbaa !1
  %507 = load volatile i64, i64* @g_1033, align 8, !tbaa !7
  %508 = add i64 %507, 1
  store volatile i64 %508, i64* @g_1033, align 8, !tbaa !7
  store i16 0, i16* @g_232, align 2, !tbaa !10
  br label %509

; <label>:509                                     ; preds = %519, %488
  %510 = load i16, i16* @g_232, align 2, !tbaa !10
  %511 = zext i16 %510 to i32
  %512 = icmp eq i32 %511, 31
  br i1 %512, label %513, label %522

; <label>:513                                     ; preds = %509
  %514 = load i32*, i32** %l_940, align 8, !tbaa !5
  %515 = load i32, i32* %514, align 4, !tbaa !1
  %516 = icmp ne i32 %515, 0
  br i1 %516, label %517, label %518

; <label>:517                                     ; preds = %513
  br label %522

; <label>:518                                     ; preds = %513
  br label %519

; <label>:519                                     ; preds = %518
  %520 = load i16, i16* @g_232, align 2, !tbaa !10
  %521 = add i16 %520, 1
  store i16 %521, i16* @g_232, align 2, !tbaa !10
  br label %509

; <label>:522                                     ; preds = %517, %509
  %523 = load i32**, i32*** @g_591, align 8, !tbaa !5
  store i32* %l_1032, i32** %523, align 8, !tbaa !5
  %524 = bitcast i32* %i5 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %524) #1
  %525 = bitcast [10 x i32*]* %l_1029 to i8*
  call void @llvm.lifetime.end(i64 80, i8* %525) #1
  %526 = bitcast i32** %l_1026 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %526) #1
  %527 = bitcast i32** %l_1025 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %527) #1
  %528 = bitcast [9 x i32]* %l_1023 to i8*
  call void @llvm.lifetime.end(i64 36, i8* %528) #1
  br label %529

; <label>:529                                     ; preds = %522
  store i32 0, i32* %3
  br label %530

; <label>:530                                     ; preds = %529, %409
  %531 = bitcast i32* %l_1032 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %531) #1
  %532 = bitcast i32* %l_1030 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %532) #1
  %533 = bitcast i32* %l_999 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %533) #1
  %534 = bitcast i32* %l_998 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %534) #1
  %535 = bitcast i32* %l_995 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %535) #1
  %cleanup.dest = load i32, i32* %3
  switch i32 %cleanup.dest, label %703 [
    i32 0, label %536
  ]

; <label>:536                                     ; preds = %530
  br label %537

; <label>:537                                     ; preds = %536, %397
  store i8 0, i8* @g_313, align 1, !tbaa !9
  br label %538

; <label>:538                                     ; preds = %697, %537
  %539 = load i8, i8* @g_313, align 1, !tbaa !9
  %540 = sext i8 %539 to i32
  %541 = icmp sgt i32 %540, -25
  br i1 %541, label %542, label %702

; <label>:542                                     ; preds = %538
  %543 = bitcast i32**** %l_1041 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %543) #1
  store i32*** @g_591, i32**** %l_1041, align 8, !tbaa !5
  %544 = bitcast i32* %l_1055 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %544) #1
  store i32 -1897192615, i32* %l_1055, align 4, !tbaa !1
  store i8 0, i8* @g_478, align 1, !tbaa !9
  br label %545

; <label>:545                                     ; preds = %608, %542
  %546 = load i8, i8* @g_478, align 1, !tbaa !9
  %547 = zext i8 %546 to i32
  %548 = icmp sle i32 %547, 4
  br i1 %548, label %549, label %613

; <label>:549                                     ; preds = %545
  store i8 1, i8* @g_512, align 1, !tbaa !9
  br label %550

; <label>:550                                     ; preds = %602, %549
  %551 = load i8, i8* @g_512, align 1, !tbaa !9
  %552 = sext i8 %551 to i32
  %553 = icmp sle i32 %552, 4
  br i1 %553, label %554, label %607

; <label>:554                                     ; preds = %550
  %555 = bitcast i32* %i6 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %555) #1
  %556 = load i8, i8* @g_478, align 1, !tbaa !9
  %557 = zext i8 %556 to i64
  %558 = getelementptr inbounds [5 x i64], [5 x i64]* @g_23, i32 0, i64 %557
  %559 = load i64, i64* %558, align 8, !tbaa !7
  %560 = load i8, i8* @g_478, align 1, !tbaa !9
  %561 = zext i8 %560 to i64
  %562 = getelementptr inbounds [5 x i64], [5 x i64]* @g_23, i32 0, i64 %561
  %563 = load i64, i64* %562, align 8, !tbaa !7
  %564 = load i32*, i32** %l_940, align 8, !tbaa !5
  %565 = load i32, i32* %564, align 4, !tbaa !1
  %566 = sext i32 %565 to i64
  %567 = and i64 %566, %563
  %568 = trunc i64 %567 to i32
  store i32 %568, i32* %564, align 4, !tbaa !1
  %569 = load i32***, i32**** %l_1041, align 8, !tbaa !5
  %570 = load volatile i32****, i32***** @g_1042, align 8, !tbaa !5
  store i32*** %569, i32**** %570, align 8, !tbaa !5
  %571 = load i16, i16* getelementptr inbounds ([4 x i16], [4 x i16]* @g_183, i32 0, i64 2), align 2, !tbaa !10
  %572 = sext i16 %571 to i32
  %573 = icmp ne i32 %572, 0
  br i1 %573, label %574, label %591

; <label>:574                                     ; preds = %554
  %575 = load i32*, i32** %l_940, align 8, !tbaa !5
  %576 = load i32, i32* %575, align 4, !tbaa !1
  %577 = getelementptr inbounds [1 x [9 x [10 x i16]]], [1 x [9 x [10 x i16]]]* %l_957, i32 0, i64 0
  %578 = getelementptr inbounds [9 x [10 x i16]], [9 x [10 x i16]]* %577, i32 0, i64 2
  %579 = getelementptr inbounds [10 x i16], [10 x i16]* %578, i32 0, i64 1
  %580 = load i16, i16* %579, align 2, !tbaa !10
  %581 = trunc i16 %580 to i8
  %582 = call zeroext i8 @safe_lshift_func_uint8_t_u_u(i8 zeroext %581, i32 5)
  %583 = load i8, i8* @g_478, align 1, !tbaa !9
  %584 = zext i8 %583 to i64
  %585 = getelementptr inbounds [5 x i64], [5 x i64]* @g_23, i32 0, i64 %584
  %586 = load i64, i64* %585, align 8, !tbaa !7
  %587 = trunc i64 %586 to i8
  %588 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %582, i8 zeroext %587)
  %589 = zext i8 %588 to i32
  %590 = icmp ne i32 %589, 0
  br label %591

; <label>:591                                     ; preds = %574, %554
  %592 = phi i1 [ false, %554 ], [ %590, %574 ]
  %593 = zext i1 %592 to i32
  %594 = sext i32 %593 to i64
  %595 = and i64 6, %594
  %596 = load volatile i32*, i32** @g_1048, align 8, !tbaa !5
  %597 = load i32, i32* %596, align 4, !tbaa !1
  %598 = sext i32 %597 to i64
  %599 = xor i64 %598, %595
  %600 = trunc i64 %599 to i32
  store i32 %600, i32* %596, align 4, !tbaa !1
  %601 = bitcast i32* %i6 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %601) #1
  br label %602

; <label>:602                                     ; preds = %591
  %603 = load i8, i8* @g_512, align 1, !tbaa !9
  %604 = sext i8 %603 to i32
  %605 = add nsw i32 %604, 1
  %606 = trunc i32 %605 to i8
  store i8 %606, i8* @g_512, align 1, !tbaa !9
  br label %550

; <label>:607                                     ; preds = %550
  br label %608

; <label>:608                                     ; preds = %607
  %609 = load i8, i8* @g_478, align 1, !tbaa !9
  %610 = zext i8 %609 to i32
  %611 = add nsw i32 %610, 1
  %612 = trunc i32 %611 to i8
  store i8 %612, i8* @g_478, align 1, !tbaa !9
  br label %545

; <label>:613                                     ; preds = %545
  store i8 0, i8* @g_724, align 1, !tbaa !9
  br label %614

; <label>:614                                     ; preds = %689, %613
  %615 = load i8, i8* @g_724, align 1, !tbaa !9
  %616 = sext i8 %615 to i32
  %617 = icmp sle i32 %616, 2
  br i1 %617, label %618, label %694

; <label>:618                                     ; preds = %614
  %619 = bitcast i32** %l_1049 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %619) #1
  store i32* @g_91, i32** %l_1049, align 8, !tbaa !5
  %620 = bitcast i32** %l_1050 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %620) #1
  store i32* %l_1028, i32** %l_1050, align 8, !tbaa !5
  %621 = bitcast i32** %l_1051 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %621) #1
  store i32* %l_1000, i32** %l_1051, align 8, !tbaa !5
  %622 = bitcast [6 x [4 x [1 x i32*]]]* %l_1052 to i8*
  call void @llvm.lifetime.start(i64 192, i8* %622) #1
  %623 = getelementptr inbounds [6 x [4 x [1 x i32*]]], [6 x [4 x [1 x i32*]]]* %l_1052, i64 0, i64 0
  %624 = getelementptr inbounds [4 x [1 x i32*]], [4 x [1 x i32*]]* %623, i64 0, i64 0
  %625 = getelementptr inbounds [1 x i32*], [1 x i32*]* %624, i64 0, i64 0
  store i32* @g_25, i32** %625, !tbaa !5
  %626 = getelementptr inbounds [1 x i32*], [1 x i32*]* %624, i64 1
  %627 = getelementptr inbounds [1 x i32*], [1 x i32*]* %626, i64 0, i64 0
  store i32* %l_1000, i32** %627, !tbaa !5
  %628 = getelementptr inbounds [1 x i32*], [1 x i32*]* %626, i64 1
  %629 = getelementptr inbounds [1 x i32*], [1 x i32*]* %628, i64 0, i64 0
  store i32* @g_25, i32** %629, !tbaa !5
  %630 = getelementptr inbounds [1 x i32*], [1 x i32*]* %628, i64 1
  %631 = getelementptr inbounds [1 x i32*], [1 x i32*]* %630, i64 0, i64 0
  store i32* %l_1028, i32** %631, !tbaa !5
  %632 = getelementptr inbounds [4 x [1 x i32*]], [4 x [1 x i32*]]* %623, i64 1
  %633 = getelementptr inbounds [4 x [1 x i32*]], [4 x [1 x i32*]]* %632, i64 0, i64 0
  %634 = getelementptr inbounds [1 x i32*], [1 x i32*]* %633, i64 0, i64 0
  store i32* @g_25, i32** %634, !tbaa !5
  %635 = getelementptr inbounds [1 x i32*], [1 x i32*]* %633, i64 1
  %636 = getelementptr inbounds [1 x i32*], [1 x i32*]* %635, i64 0, i64 0
  store i32* %l_1000, i32** %636, !tbaa !5
  %637 = getelementptr inbounds [1 x i32*], [1 x i32*]* %635, i64 1
  %638 = getelementptr inbounds [1 x i32*], [1 x i32*]* %637, i64 0, i64 0
  store i32* @g_25, i32** %638, !tbaa !5
  %639 = getelementptr inbounds [1 x i32*], [1 x i32*]* %637, i64 1
  %640 = getelementptr inbounds [1 x i32*], [1 x i32*]* %639, i64 0, i64 0
  store i32* %l_1028, i32** %640, !tbaa !5
  %641 = getelementptr inbounds [4 x [1 x i32*]], [4 x [1 x i32*]]* %632, i64 1
  %642 = getelementptr inbounds [4 x [1 x i32*]], [4 x [1 x i32*]]* %641, i64 0, i64 0
  %643 = getelementptr inbounds [1 x i32*], [1 x i32*]* %642, i64 0, i64 0
  store i32* @g_25, i32** %643, !tbaa !5
  %644 = getelementptr inbounds [1 x i32*], [1 x i32*]* %642, i64 1
  %645 = getelementptr inbounds [1 x i32*], [1 x i32*]* %644, i64 0, i64 0
  store i32* %l_1000, i32** %645, !tbaa !5
  %646 = getelementptr inbounds [1 x i32*], [1 x i32*]* %644, i64 1
  %647 = getelementptr inbounds [1 x i32*], [1 x i32*]* %646, i64 0, i64 0
  store i32* @g_25, i32** %647, !tbaa !5
  %648 = getelementptr inbounds [1 x i32*], [1 x i32*]* %646, i64 1
  %649 = getelementptr inbounds [1 x i32*], [1 x i32*]* %648, i64 0, i64 0
  store i32* %l_1028, i32** %649, !tbaa !5
  %650 = getelementptr inbounds [4 x [1 x i32*]], [4 x [1 x i32*]]* %641, i64 1
  %651 = getelementptr inbounds [4 x [1 x i32*]], [4 x [1 x i32*]]* %650, i64 0, i64 0
  %652 = getelementptr inbounds [1 x i32*], [1 x i32*]* %651, i64 0, i64 0
  store i32* @g_25, i32** %652, !tbaa !5
  %653 = getelementptr inbounds [1 x i32*], [1 x i32*]* %651, i64 1
  %654 = getelementptr inbounds [1 x i32*], [1 x i32*]* %653, i64 0, i64 0
  store i32* %l_1000, i32** %654, !tbaa !5
  %655 = getelementptr inbounds [1 x i32*], [1 x i32*]* %653, i64 1
  %656 = getelementptr inbounds [1 x i32*], [1 x i32*]* %655, i64 0, i64 0
  store i32* @g_25, i32** %656, !tbaa !5
  %657 = getelementptr inbounds [1 x i32*], [1 x i32*]* %655, i64 1
  %658 = getelementptr inbounds [1 x i32*], [1 x i32*]* %657, i64 0, i64 0
  store i32* %l_1028, i32** %658, !tbaa !5
  %659 = getelementptr inbounds [4 x [1 x i32*]], [4 x [1 x i32*]]* %650, i64 1
  %660 = getelementptr inbounds [4 x [1 x i32*]], [4 x [1 x i32*]]* %659, i64 0, i64 0
  %661 = getelementptr inbounds [1 x i32*], [1 x i32*]* %660, i64 0, i64 0
  store i32* @g_25, i32** %661, !tbaa !5
  %662 = getelementptr inbounds [1 x i32*], [1 x i32*]* %660, i64 1
  %663 = getelementptr inbounds [1 x i32*], [1 x i32*]* %662, i64 0, i64 0
  store i32* %l_1000, i32** %663, !tbaa !5
  %664 = getelementptr inbounds [1 x i32*], [1 x i32*]* %662, i64 1
  %665 = getelementptr inbounds [1 x i32*], [1 x i32*]* %664, i64 0, i64 0
  store i32* @g_25, i32** %665, !tbaa !5
  %666 = getelementptr inbounds [1 x i32*], [1 x i32*]* %664, i64 1
  %667 = getelementptr inbounds [1 x i32*], [1 x i32*]* %666, i64 0, i64 0
  store i32* %l_1028, i32** %667, !tbaa !5
  %668 = getelementptr inbounds [4 x [1 x i32*]], [4 x [1 x i32*]]* %659, i64 1
  %669 = getelementptr inbounds [4 x [1 x i32*]], [4 x [1 x i32*]]* %668, i64 0, i64 0
  %670 = getelementptr inbounds [1 x i32*], [1 x i32*]* %669, i64 0, i64 0
  store i32* @g_25, i32** %670, !tbaa !5
  %671 = getelementptr inbounds [1 x i32*], [1 x i32*]* %669, i64 1
  %672 = getelementptr inbounds [1 x i32*], [1 x i32*]* %671, i64 0, i64 0
  store i32* %l_1000, i32** %672, !tbaa !5
  %673 = getelementptr inbounds [1 x i32*], [1 x i32*]* %671, i64 1
  %674 = getelementptr inbounds [1 x i32*], [1 x i32*]* %673, i64 0, i64 0
  store i32* @g_25, i32** %674, !tbaa !5
  %675 = getelementptr inbounds [1 x i32*], [1 x i32*]* %673, i64 1
  %676 = getelementptr inbounds [1 x i32*], [1 x i32*]* %675, i64 0, i64 0
  store i32* %l_1028, i32** %676, !tbaa !5
  %677 = bitcast i32* %i7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %677) #1
  %678 = bitcast i32* %j8 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %678) #1
  %679 = bitcast i32* %k9 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %679) #1
  %680 = load volatile i32, i32* @g_1057, align 4, !tbaa !1
  %681 = add i32 %680, -1
  store volatile i32 %681, i32* @g_1057, align 4, !tbaa !1
  %682 = bitcast i32* %k9 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %682) #1
  %683 = bitcast i32* %j8 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %683) #1
  %684 = bitcast i32* %i7 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %684) #1
  %685 = bitcast [6 x [4 x [1 x i32*]]]* %l_1052 to i8*
  call void @llvm.lifetime.end(i64 192, i8* %685) #1
  %686 = bitcast i32** %l_1051 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %686) #1
  %687 = bitcast i32** %l_1050 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %687) #1
  %688 = bitcast i32** %l_1049 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %688) #1
  br label %689

; <label>:689                                     ; preds = %618
  %690 = load i8, i8* @g_724, align 1, !tbaa !9
  %691 = sext i8 %690 to i32
  %692 = add nsw i32 %691, 1
  %693 = trunc i32 %692 to i8
  store i8 %693, i8* @g_724, align 1, !tbaa !9
  br label %614

; <label>:694                                     ; preds = %614
  %695 = bitcast i32* %l_1055 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %695) #1
  %696 = bitcast i32**** %l_1041 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %696) #1
  br label %697

; <label>:697                                     ; preds = %694
  %698 = load i8, i8* @g_313, align 1, !tbaa !9
  %699 = sext i8 %698 to i32
  %700 = call i32 @safe_sub_func_int32_t_s_s(i32 %699, i32 6)
  %701 = trunc i32 %700 to i8
  store i8 %701, i8* @g_313, align 1, !tbaa !9
  br label %538

; <label>:702                                     ; preds = %538
  store i32 0, i32* %3
  br label %703

; <label>:703                                     ; preds = %702, %530, %396
  %704 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %704) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1053) #1
  %705 = bitcast [8 x i32]* %l_1027 to i8*
  call void @llvm.lifetime.end(i64 32, i8* %705) #1
  %706 = bitcast i32* %l_1024 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %706) #1
  %707 = bitcast i32* %l_1001 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %707) #1
  %708 = bitcast i32* %l_993 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %708) #1
  %709 = bitcast i16** %l_979 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %709) #1
  %710 = bitcast i16** %l_976 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %710) #1
  %cleanup.dest.10 = load i32, i32* %3
  switch i32 %cleanup.dest.10, label %715 [
    i32 0, label %711
    i32 18, label %307
  ]

; <label>:711                                     ; preds = %703
  br label %712

; <label>:712                                     ; preds = %711, %307
  %713 = load i32, i32* %l_997, align 4, !tbaa !1
  %714 = sext i32 %713 to i64
  store i64 %714, i64* %1
  store i32 1, i32* %3
  br label %715

; <label>:715                                     ; preds = %712, %703
  %716 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %716) #1
  %717 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %717) #1
  %718 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %718) #1
  %719 = bitcast i32* %l_1000 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %719) #1
  %720 = bitcast i32* %l_997 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %720) #1
  %721 = bitcast i64** %l_968 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %721) #1
  %722 = bitcast i16** %l_967 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %722) #1
  %723 = bitcast i64** %l_959 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %723) #1
  %724 = bitcast i8** %l_958 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %724) #1
  %725 = bitcast [1 x [9 x [10 x i16]]]* %l_957 to i8*
  call void @llvm.lifetime.end(i64 180, i8* %725) #1
  %726 = bitcast i16** %l_950 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %726) #1
  br label %2663

; <label>:727                                     ; preds = %223
  %728 = bitcast i32** %l_1060 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %728) #1
  %729 = getelementptr inbounds [8 x i32], [8 x i32]* %l_1031, i32 0, i64 1
  store i32* %729, i32** %l_1060, align 8, !tbaa !5
  %730 = bitcast i32*** %l_1068 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %730) #1
  store i32** @g_783, i32*** %l_1068, align 8, !tbaa !5
  %731 = bitcast i32**** %l_1067 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %731) #1
  store i32*** %l_1068, i32**** %l_1067, align 8, !tbaa !5
  %732 = load i32*, i32** %l_1060, align 8, !tbaa !5
  %733 = load i32*, i32** %l_1060, align 8, !tbaa !5
  %734 = load i32, i32* %733, align 4, !tbaa !1
  %735 = load i32***, i32**** %l_1067, align 8, !tbaa !5
  %736 = icmp ne i32*** null, %735
  %737 = zext i1 %736 to i32
  %738 = sext i32 %737 to i64
  %739 = icmp ne i64 %738, 0
  br i1 %739, label %740, label %743

; <label>:740                                     ; preds = %727
  %741 = load i32, i32* @g_202, align 4, !tbaa !1
  %742 = icmp ne i32 %741, 0
  br label %743

; <label>:743                                     ; preds = %740, %727
  %744 = phi i1 [ false, %727 ], [ %742, %740 ]
  %745 = zext i1 %744 to i32
  %746 = trunc i32 %745 to i8
  %747 = load i32, i32* getelementptr inbounds ([6 x [1 x [4 x i32]]], [6 x [1 x [4 x i32]]]* @g_730, i32 0, i64 3, i64 0, i64 0), align 4, !tbaa !1
  %748 = icmp ne i32 %747, 0
  br i1 %748, label %749, label %753

; <label>:749                                     ; preds = %743
  %750 = call zeroext i8 @safe_rshift_func_uint8_t_u_u(i8 zeroext 108, i32 2)
  %751 = zext i8 %750 to i32
  %752 = icmp ne i32 %751, 0
  br label %753

; <label>:753                                     ; preds = %749, %743
  %754 = phi i1 [ false, %743 ], [ %752, %749 ]
  %755 = zext i1 %754 to i32
  %756 = call signext i16 @safe_unary_minus_func_int16_t_s(i16 signext 1)
  %757 = trunc i16 %756 to i8
  %758 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %746, i8 zeroext %757)
  %759 = zext i8 %758 to i32
  %760 = xor i32 %734, %759
  %761 = trunc i32 %760 to i16
  %762 = load i32*, i32** %l_940, align 8, !tbaa !5
  %763 = load i32, i32* %762, align 4, !tbaa !1
  %764 = sext i32 %763 to i64
  %765 = load i32*, i32** %l_1060, align 8, !tbaa !5
  %766 = call i32* @func_30(i32* %732, i16 signext %761, i64 %764, i32* %765)
  %767 = load i32**, i32*** @g_591, align 8, !tbaa !5
  store i32* %766, i32** %767, align 8, !tbaa !5
  %768 = load i32*, i32** %l_1060, align 8, !tbaa !5
  %769 = load i32, i32* %768, align 4, !tbaa !1
  store i32 %769, i32* %l_1072, align 4, !tbaa !1
  %770 = load i32*, i32** %l_940, align 8, !tbaa !5
  %771 = load i32, i32* %770, align 4, !tbaa !1
  %772 = xor i32 %771, %769
  store i32 %772, i32* %770, align 4, !tbaa !1
  store i64 0, i64* @g_314, align 8, !tbaa !7
  br label %773

; <label>:773                                     ; preds = %779, %753
  %774 = load i64, i64* @g_314, align 8, !tbaa !7
  %775 = icmp ugt i64 %774, 54
  br i1 %775, label %776, label %782

; <label>:776                                     ; preds = %773
  call void @llvm.lifetime.start(i64 1, i8* %l_1075) #1
  store i8 59, i8* %l_1075, align 1, !tbaa !9
  %777 = load i8, i8* %l_1075, align 1, !tbaa !9
  %778 = zext i8 %777 to i64
  store i64 %778, i64* %1
  store i32 1, i32* %3
  call void @llvm.lifetime.end(i64 1, i8* %l_1075) #1
  br label %783
                                                  ; No predecessors!
  %780 = load i64, i64* @g_314, align 8, !tbaa !7
  %781 = add i64 %780, 1
  store i64 %781, i64* @g_314, align 8, !tbaa !7
  br label %773

; <label>:782                                     ; preds = %773
  store i32 0, i32* %3
  br label %783

; <label>:783                                     ; preds = %782, %776
  %784 = bitcast i32**** %l_1067 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %784) #1
  %785 = bitcast i32*** %l_1068 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %785) #1
  %786 = bitcast i32** %l_1060 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %786) #1
  %cleanup.dest.11 = load i32, i32* %3
  switch i32 %cleanup.dest.11, label %2663 [
    i32 0, label %787
  ]

; <label>:787                                     ; preds = %783
  br label %788

; <label>:788                                     ; preds = %787
  %789 = load i32*, i32** %l_940, align 8, !tbaa !5
  %790 = load i32, i32* %789, align 4, !tbaa !1
  %791 = getelementptr inbounds [5 x i64], [5 x i64]* %l_966, i32 0, i64 1
  %792 = load i8, i8* %l_1082, align 1, !tbaa !9
  %793 = load i32, i32* %l_1085, align 4, !tbaa !1
  %794 = trunc i32 %793 to i16
  %795 = load i8, i8* getelementptr inbounds ([1 x [9 x [2 x i8]]], [1 x [9 x [2 x i8]]]* @g_579, i32 0, i64 0, i64 8, i64 0), align 1, !tbaa !9
  %796 = load i64, i64* %l_1091, align 8, !tbaa !7
  %797 = trunc i64 %796 to i8
  %798 = call signext i8 @safe_lshift_func_int8_t_s_s(i8 signext %797, i32 2)
  %799 = sext i8 %798 to i32
  %800 = xor i32 %799, -1
  %801 = sext i32 %800 to i64
  %802 = icmp ne i64 %801, 71
  %803 = zext i1 %802 to i32
  %804 = sext i32 %803 to i64
  %805 = load %union.U0***, %union.U0**** %l_1098, align 8, !tbaa !5
  store %union.U0** null, %union.U0*** %805, align 8, !tbaa !5
  %806 = call signext i8 @safe_lshift_func_int8_t_s_s(i8 signext 1, i32 3)
  %807 = sext i8 %806 to i64
  %808 = xor i64 %807, 0
  %809 = trunc i64 %808 to i16
  %810 = load volatile i16**, i16*** @g_983, align 8, !tbaa !5
  %811 = load i16*, i16** %810, align 8, !tbaa !5
  %812 = load i16, i16* %811, align 2, !tbaa !10
  %813 = zext i16 %812 to i32
  %814 = call zeroext i16 @safe_rshift_func_uint16_t_u_u(i16 zeroext %809, i32 %813)
  %815 = zext i16 %814 to i64
  %816 = icmp sgt i64 %815, 48943
  %817 = zext i1 %816 to i32
  %818 = sext i32 %817 to i64
  %819 = call i64 @safe_sub_func_uint64_t_u_u(i64 %818, i64 -6463071816900098944)
  %820 = icmp ne i64 %804, %819
  %821 = zext i1 %820 to i32
  %822 = sext i32 %821 to i64
  %823 = xor i64 %822, 17028
  %824 = trunc i64 %823 to i8
  store i8 %824, i8* @g_779, align 1, !tbaa !9
  %825 = load i8*, i8** %l_1101, align 8, !tbaa !5
  store i8 %824, i8* %825, align 1, !tbaa !9
  store i8 %824, i8* @g_227, align 1, !tbaa !9
  %826 = call signext i8 @safe_sub_func_int8_t_s_s(i8 signext 61, i8 signext %824)
  %827 = sext i8 %826 to i32
  %828 = load i32, i32* getelementptr inbounds ([6 x [1 x [4 x i32]]], [6 x [1 x [4 x i32]]]* @g_730, i32 0, i64 3, i64 0, i64 0), align 4, !tbaa !1
  %829 = and i32 %827, %828
  %830 = zext i32 %829 to i64
  %831 = icmp eq i64 %830, 1095929023
  %832 = zext i1 %831 to i32
  %833 = trunc i32 %832 to i16
  %834 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %794, i16 signext %833)
  %835 = trunc i16 %834 to i8
  %836 = call i64 @func_50(i64* %791, i8 signext %792, i8 zeroext %835)
  %837 = getelementptr %union.U0, %union.U0* %4, i32 0, i32 0
  store i64 %836, i64* %837, align 8
  %838 = load volatile i32****, i32***** @g_1042, align 8, !tbaa !5
  %839 = load i32***, i32**** %838, align 8, !tbaa !5
  %840 = icmp ne i32*** %839, @g_591
  %841 = zext i1 %840 to i32
  %842 = trunc i32 %841 to i8
  %843 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %842, i8 signext -8)
  %844 = sext i8 %843 to i32
  %845 = getelementptr inbounds [5 x i16], [5 x i16]* %l_941, i32 0, i64 2
  %846 = load i16, i16* %845, align 2, !tbaa !10
  %847 = zext i16 %846 to i32
  %848 = icmp sle i32 %844, %847
  %849 = zext i1 %848 to i32
  %850 = trunc i32 %849 to i16
  %851 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %850, i16 zeroext 6)
  %852 = zext i16 %851 to i32
  %853 = icmp ne i32 %852, 0
  br i1 %853, label %855, label %854

; <label>:854                                     ; preds = %788
  br label %855

; <label>:855                                     ; preds = %854, %788
  %856 = phi i1 [ true, %788 ], [ false, %854 ]
  %857 = zext i1 %856 to i32
  %858 = load i64***, i64**** @g_702, align 8, !tbaa !5
  %859 = load i64**, i64*** %858, align 8, !tbaa !5
  %860 = load volatile i64*, i64** %859, align 8, !tbaa !5
  %861 = load volatile i64, i64* %860, align 8, !tbaa !7
  %862 = load i64*, i64** @g_143, align 8, !tbaa !5
  store i64 %861, i64* %862, align 8, !tbaa !7
  %863 = getelementptr inbounds [8 x i32], [8 x i32]* %l_1031, i32 0, i64 1
  %864 = load i32, i32* %863, align 4, !tbaa !1
  %865 = sext i32 %864 to i64
  %866 = and i64 %861, %865
  %867 = load i32, i32* %l_1072, align 4, !tbaa !1
  %868 = sext i32 %867 to i64
  %869 = or i64 %868, %866
  %870 = trunc i64 %869 to i32
  store i32 %870, i32* %l_1072, align 4, !tbaa !1
  %871 = icmp ne i32 %870, 0
  br i1 %871, label %872, label %876

; <label>:872                                     ; preds = %855
  %873 = load i32*, i32** %l_940, align 8, !tbaa !5
  %874 = load i32, i32* %873, align 4, !tbaa !1
  %875 = icmp ne i32 %874, 0
  br label %876

; <label>:876                                     ; preds = %872, %855
  %877 = phi i1 [ false, %855 ], [ %875, %872 ]
  %878 = zext i1 %877 to i32
  %879 = sext i32 %878 to i64
  %880 = getelementptr inbounds [5 x i16], [5 x i16]* %l_941, i32 0, i64 4
  %881 = load i16, i16* %880, align 2, !tbaa !10
  %882 = zext i16 %881 to i64
  %883 = call i64 @safe_add_func_int64_t_s_s(i64 %879, i64 %882)
  %884 = load i16, i16* getelementptr inbounds ([3 x i16], [3 x i16]* @g_201, i32 0, i64 1), align 2, !tbaa !10
  %885 = sext i16 %884 to i64
  %886 = xor i64 %883, %885
  %887 = icmp ne i64 %886, 0
  br i1 %887, label %888, label %892

; <label>:888                                     ; preds = %876
  %889 = load i64**, i64*** @g_142, align 8, !tbaa !5
  %890 = load i64*, i64** %889, align 8, !tbaa !5
  %891 = load i64, i64* %890, align 8, !tbaa !7
  store i64 %891, i64* %1
  store i32 1, i32* %3
  br label %2663

; <label>:892                                     ; preds = %876
  call void @llvm.lifetime.start(i64 1, i8* %l_1126) #1
  store i8 -1, i8* %l_1126, align 1, !tbaa !9
  %893 = bitcast %union.U0***** %l_1147 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %893) #1
  store %union.U0**** %l_1098, %union.U0***** %l_1147, align 8, !tbaa !5
  %894 = bitcast [4 x [6 x i32]]* %l_1167 to i8*
  call void @llvm.lifetime.start(i64 96, i8* %894) #1
  %895 = bitcast [4 x [6 x i32]]* %l_1167 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %895, i8* bitcast ([4 x [6 x i32]]* @func_1.l_1167 to i8*), i64 96, i32 16, i1 false)
  %896 = bitcast [2 x [3 x [7 x i32*]]]* %l_1219 to i8*
  call void @llvm.lifetime.start(i64 336, i8* %896) #1
  %897 = getelementptr inbounds [2 x [3 x [7 x i32*]]], [2 x [3 x [7 x i32*]]]* %l_1219, i64 0, i64 0
  %898 = getelementptr inbounds [3 x [7 x i32*]], [3 x [7 x i32*]]* %897, i64 0, i64 0
  %899 = getelementptr inbounds [7 x i32*], [7 x i32*]* %898, i64 0, i64 0
  store i32* @g_628, i32** %899, !tbaa !5
  %900 = getelementptr inbounds i32*, i32** %899, i64 1
  %901 = getelementptr inbounds [4 x [6 x i32]], [4 x [6 x i32]]* %l_1167, i32 0, i64 1
  %902 = getelementptr inbounds [6 x i32], [6 x i32]* %901, i32 0, i64 3
  store i32* %902, i32** %900, !tbaa !5
  %903 = getelementptr inbounds i32*, i32** %900, i64 1
  store i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_1161, i32 0, i64 1), i32** %903, !tbaa !5
  %904 = getelementptr inbounds i32*, i32** %903, i64 1
  store i32* null, i32** %904, !tbaa !5
  %905 = getelementptr inbounds i32*, i32** %904, i64 1
  store i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_1161, i32 0, i64 1), i32** %905, !tbaa !5
  %906 = getelementptr inbounds i32*, i32** %905, i64 1
  %907 = getelementptr inbounds [4 x [6 x i32]], [4 x [6 x i32]]* %l_1167, i32 0, i64 1
  %908 = getelementptr inbounds [6 x i32], [6 x i32]* %907, i32 0, i64 3
  store i32* %908, i32** %906, !tbaa !5
  %909 = getelementptr inbounds i32*, i32** %906, i64 1
  store i32* @g_628, i32** %909, !tbaa !5
  %910 = getelementptr inbounds [7 x i32*], [7 x i32*]* %898, i64 1
  %911 = getelementptr inbounds [7 x i32*], [7 x i32*]* %910, i64 0, i64 0
  store i32* @g_25, i32** %911, !tbaa !5
  %912 = getelementptr inbounds i32*, i32** %911, i64 1
  store i32* null, i32** %912, !tbaa !5
  %913 = getelementptr inbounds i32*, i32** %912, i64 1
  %914 = getelementptr inbounds [4 x [6 x i32]], [4 x [6 x i32]]* %l_1167, i32 0, i64 1
  %915 = getelementptr inbounds [6 x i32], [6 x i32]* %914, i32 0, i64 3
  store i32* %915, i32** %913, !tbaa !5
  %916 = getelementptr inbounds i32*, i32** %913, i64 1
  %917 = getelementptr inbounds [8 x i32], [8 x i32]* %l_1031, i32 0, i64 6
  store i32* %917, i32** %916, !tbaa !5
  %918 = getelementptr inbounds i32*, i32** %916, i64 1
  store i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_1161, i32 0, i64 1), i32** %918, !tbaa !5
  %919 = getelementptr inbounds i32*, i32** %918, i64 1
  store i32* %l_1072, i32** %919, !tbaa !5
  %920 = getelementptr inbounds i32*, i32** %919, i64 1
  store i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_1161, i32 0, i64 1), i32** %920, !tbaa !5
  %921 = getelementptr inbounds [7 x i32*], [7 x i32*]* %910, i64 1
  %922 = getelementptr inbounds [7 x i32*], [7 x i32*]* %921, i64 0, i64 0
  %923 = getelementptr inbounds [4 x [6 x i32]], [4 x [6 x i32]]* %l_1167, i32 0, i64 3
  %924 = getelementptr inbounds [6 x i32], [6 x i32]* %923, i32 0, i64 2
  store i32* %924, i32** %922, !tbaa !5
  %925 = getelementptr inbounds i32*, i32** %922, i64 1
  store i32* %l_1072, i32** %925, !tbaa !5
  %926 = getelementptr inbounds i32*, i32** %925, i64 1
  store i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_1161, i32 0, i64 1), i32** %926, !tbaa !5
  %927 = getelementptr inbounds i32*, i32** %926, i64 1
  store i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_1161, i32 0, i64 1), i32** %927, !tbaa !5
  %928 = getelementptr inbounds i32*, i32** %927, i64 1
  store i32* null, i32** %928, !tbaa !5
  %929 = getelementptr inbounds i32*, i32** %928, i64 1
  store i32* null, i32** %929, !tbaa !5
  %930 = getelementptr inbounds i32*, i32** %929, i64 1
  store i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_1161, i32 0, i64 1), i32** %930, !tbaa !5
  %931 = getelementptr inbounds [3 x [7 x i32*]], [3 x [7 x i32*]]* %897, i64 1
  %932 = getelementptr inbounds [3 x [7 x i32*]], [3 x [7 x i32*]]* %931, i64 0, i64 0
  %933 = getelementptr inbounds [7 x i32*], [7 x i32*]* %932, i64 0, i64 0
  %934 = getelementptr inbounds [4 x [6 x i32]], [4 x [6 x i32]]* %l_1167, i32 0, i64 1
  %935 = getelementptr inbounds [6 x i32], [6 x i32]* %934, i32 0, i64 3
  store i32* %935, i32** %933, !tbaa !5
  %936 = getelementptr inbounds i32*, i32** %933, i64 1
  %937 = getelementptr inbounds [4 x [6 x i32]], [4 x [6 x i32]]* %l_1167, i32 0, i64 3
  %938 = getelementptr inbounds [6 x i32], [6 x i32]* %937, i32 0, i64 2
  store i32* %938, i32** %936, !tbaa !5
  %939 = getelementptr inbounds i32*, i32** %936, i64 1
  %940 = getelementptr inbounds [4 x [6 x i32]], [4 x [6 x i32]]* %l_1167, i32 0, i64 1
  %941 = getelementptr inbounds [6 x i32], [6 x i32]* %940, i32 0, i64 3
  store i32* %941, i32** %939, !tbaa !5
  %942 = getelementptr inbounds i32*, i32** %939, i64 1
  store i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_1161, i32 0, i64 1), i32** %942, !tbaa !5
  %943 = getelementptr inbounds i32*, i32** %942, i64 1
  %944 = getelementptr inbounds [4 x [6 x i32]], [4 x [6 x i32]]* %l_1167, i32 0, i64 1
  %945 = getelementptr inbounds [6 x i32], [6 x i32]* %944, i32 0, i64 0
  store i32* %945, i32** %943, !tbaa !5
  %946 = getelementptr inbounds i32*, i32** %943, i64 1
  %947 = getelementptr inbounds [4 x [6 x i32]], [4 x [6 x i32]]* %l_1167, i32 0, i64 3
  %948 = getelementptr inbounds [6 x i32], [6 x i32]* %947, i32 0, i64 2
  store i32* %948, i32** %946, !tbaa !5
  %949 = getelementptr inbounds i32*, i32** %946, i64 1
  store i32* %l_1072, i32** %949, !tbaa !5
  %950 = getelementptr inbounds [7 x i32*], [7 x i32*]* %932, i64 1
  %951 = getelementptr inbounds [7 x i32*], [7 x i32*]* %950, i64 0, i64 0
  %952 = getelementptr inbounds [4 x [6 x i32]], [4 x [6 x i32]]* %l_1167, i32 0, i64 1
  %953 = getelementptr inbounds [6 x i32], [6 x i32]* %952, i32 0, i64 3
  store i32* %953, i32** %951, !tbaa !5
  %954 = getelementptr inbounds i32*, i32** %951, i64 1
  %955 = getelementptr inbounds [8 x i32], [8 x i32]* %l_1031, i32 0, i64 6
  store i32* %955, i32** %954, !tbaa !5
  %956 = getelementptr inbounds i32*, i32** %954, i64 1
  store i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_1161, i32 0, i64 1), i32** %956, !tbaa !5
  %957 = getelementptr inbounds i32*, i32** %956, i64 1
  store i32* %l_1072, i32** %957, !tbaa !5
  %958 = getelementptr inbounds i32*, i32** %957, i64 1
  store i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_1161, i32 0, i64 1), i32** %958, !tbaa !5
  %959 = getelementptr inbounds i32*, i32** %958, i64 1
  %960 = getelementptr inbounds [4 x [6 x i32]], [4 x [6 x i32]]* %l_1167, i32 0, i64 3
  %961 = getelementptr inbounds [6 x i32], [6 x i32]* %960, i32 0, i64 2
  store i32* %961, i32** %959, !tbaa !5
  %962 = getelementptr inbounds i32*, i32** %959, i64 1
  %963 = getelementptr inbounds [4 x [6 x i32]], [4 x [6 x i32]]* %l_1167, i32 0, i64 3
  %964 = getelementptr inbounds [6 x i32], [6 x i32]* %963, i32 0, i64 2
  store i32* %964, i32** %962, !tbaa !5
  %965 = getelementptr inbounds [7 x i32*], [7 x i32*]* %950, i64 1
  %966 = getelementptr inbounds [7 x i32*], [7 x i32*]* %965, i64 0, i64 0
  %967 = getelementptr inbounds [4 x [6 x i32]], [4 x [6 x i32]]* %l_1167, i32 0, i64 3
  %968 = getelementptr inbounds [6 x i32], [6 x i32]* %967, i32 0, i64 2
  store i32* %968, i32** %966, !tbaa !5
  %969 = getelementptr inbounds i32*, i32** %966, i64 1
  store i32* @g_25, i32** %969, !tbaa !5
  %970 = getelementptr inbounds i32*, i32** %969, i64 1
  %971 = getelementptr inbounds [4 x [6 x i32]], [4 x [6 x i32]]* %l_1167, i32 0, i64 1
  %972 = getelementptr inbounds [6 x i32], [6 x i32]* %971, i32 0, i64 3
  store i32* %972, i32** %970, !tbaa !5
  %973 = getelementptr inbounds i32*, i32** %970, i64 1
  %974 = getelementptr inbounds [4 x [6 x i32]], [4 x [6 x i32]]* %l_1167, i32 0, i64 1
  %975 = getelementptr inbounds [6 x i32], [6 x i32]* %974, i32 0, i64 3
  store i32* %975, i32** %973, !tbaa !5
  %976 = getelementptr inbounds i32*, i32** %973, i64 1
  store i32* @g_25, i32** %976, !tbaa !5
  %977 = getelementptr inbounds i32*, i32** %976, i64 1
  %978 = getelementptr inbounds [4 x [6 x i32]], [4 x [6 x i32]]* %l_1167, i32 0, i64 3
  %979 = getelementptr inbounds [6 x i32], [6 x i32]* %978, i32 0, i64 2
  store i32* %979, i32** %977, !tbaa !5
  %980 = getelementptr inbounds i32*, i32** %977, i64 1
  store i32* @g_628, i32** %980, !tbaa !5
  %981 = bitcast i32*** %l_1337 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %981) #1
  store i32** @g_554, i32*** %l_1337, align 8, !tbaa !5
  %982 = bitcast i32**** %l_1336 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %982) #1
  store i32*** %l_1337, i32**** %l_1336, align 8, !tbaa !5
  %983 = bitcast i16* %l_1388 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %983) #1
  store i16 0, i16* %l_1388, align 2, !tbaa !10
  %984 = bitcast i32* %i12 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %984) #1
  %985 = bitcast i32* %j13 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %985) #1
  %986 = bitcast i32* %k14 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %986) #1
  %987 = load i32*, i32** %l_1103, align 8, !tbaa !5
  %988 = load i32***, i32**** @g_1043, align 8, !tbaa !5
  %989 = load i32**, i32*** %988, align 8, !tbaa !5
  store i32* %987, i32** %989, align 8, !tbaa !5
  store i64 -6, i64* %l_1091, align 8, !tbaa !7
  br label %990

; <label>:990                                     ; preds = %1671, %892
  %991 = load i64, i64* %l_1091, align 8, !tbaa !7
  %992 = icmp ugt i64 %991, 40
  br i1 %992, label %993, label %1674

; <label>:993                                     ; preds = %990
  %994 = bitcast [6 x i64]* %l_1114 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %994) #1
  %995 = bitcast [6 x i64]* %l_1114 to i8*
  call void @llvm.memset.p0i8.i64(i8* %995, i8 0, i64 48, i32 16, i1 false)
  %996 = bitcast i8* %995 to [6 x i64]*
  %997 = getelementptr [6 x i64], [6 x i64]* %996, i32 0, i32 1
  store i64 -4560645857541913640, i64* %997
  %998 = getelementptr [6 x i64], [6 x i64]* %996, i32 0, i32 4
  store i64 -4560645857541913640, i64* %998
  %999 = bitcast i16** %l_1115 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %999) #1
  store i16* getelementptr inbounds ([4 x i16], [4 x i16]* @g_626, i32 0, i64 3), i16** %l_1115, align 8, !tbaa !5
  %1000 = bitcast i32* %l_1159 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1000) #1
  store i32 7, i32* %l_1159, align 4, !tbaa !1
  %1001 = bitcast i32* %l_1165 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1001) #1
  store i32 868681529, i32* %l_1165, align 4, !tbaa !1
  %1002 = bitcast i32* %l_1168 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1002) #1
  store i32 1, i32* %l_1168, align 4, !tbaa !1
  %1003 = bitcast i32* %l_1169 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1003) #1
  store i32 -7, i32* %l_1169, align 4, !tbaa !1
  %1004 = bitcast i32* %l_1174 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1004) #1
  store i32 -1, i32* %l_1174, align 4, !tbaa !1
  %1005 = bitcast i32** %l_1196 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1005) #1
  store i32* null, i32** %l_1196, align 8, !tbaa !5
  %1006 = bitcast %union.U0* %l_1217 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1006) #1
  %1007 = bitcast %union.U0* %l_1217 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1007, i8* bitcast (%union.U0* @func_1.l_1217 to i8*), i64 8, i32 8, i1 false)
  %1008 = bitcast i16* %l_1240 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %1008) #1
  store i16 -1, i16* %l_1240, align 2, !tbaa !10
  %1009 = bitcast i32* %i15 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1009) #1
  %1010 = bitcast %union.U0* %l_1062 to i64*
  store i64 14, i64* %1010, align 8, !tbaa !7
  br label %1011

; <label>:1011                                    ; preds = %1019, %993
  %1012 = bitcast %union.U0* %l_1062 to i64*
  %1013 = load i64, i64* %1012, align 8, !tbaa !7
  %1014 = icmp ugt i64 %1013, 28
  br i1 %1014, label %1015, label %1023

; <label>:1015                                    ; preds = %1011
  %1016 = getelementptr inbounds [6 x i16], [6 x i16]* %l_1108, i32 0, i64 0
  %1017 = load i16, i16* %1016, align 2, !tbaa !10
  %1018 = zext i16 %1017 to i64
  store i64 %1018, i64* %1
  store i32 1, i32* %3
  br label %1658
                                                  ; No predecessors!
  %1020 = bitcast %union.U0* %l_1062 to i64*
  %1021 = load i64, i64* %1020, align 8, !tbaa !7
  %1022 = add i64 %1021, 1
  store i64 %1022, i64* %1020, align 8, !tbaa !7
  br label %1011

; <label>:1023                                    ; preds = %1011
  %1024 = load i16*, i16** @g_984, align 8, !tbaa !5
  store i16 1, i16* %1024, align 2, !tbaa !10
  %1025 = load i32*, i32** %l_940, align 8, !tbaa !5
  %1026 = load i32, i32* %1025, align 4, !tbaa !1
  %1027 = load i32*, i32** %l_940, align 8, !tbaa !5
  %1028 = load i32, i32* %1027, align 4, !tbaa !1
  %1029 = load i32*, i32** %l_940, align 8, !tbaa !5
  %1030 = load i32, i32* %1029, align 4, !tbaa !1
  %1031 = sext i32 %1030 to i64
  %1032 = getelementptr inbounds [6 x i64], [6 x i64]* %l_1114, i32 0, i64 5
  %1033 = load i64, i64* %1032, align 8, !tbaa !7
  %1034 = icmp slt i64 %1031, %1033
  %1035 = zext i1 %1034 to i32
  %1036 = icmp sgt i32 %1028, %1035
  %1037 = zext i1 %1036 to i32
  %1038 = load i32*, i32** @g_467, align 8, !tbaa !5
  %1039 = load volatile i32, i32* %1038, align 4, !tbaa !1
  %1040 = or i32 %1037, %1039
  %1041 = xor i32 %1040, -1
  %1042 = load i32*, i32** %l_943, align 8, !tbaa !5
  %1043 = load i32, i32* %1042, align 4, !tbaa !1
  %1044 = or i32 %1043, %1041
  store i32 %1044, i32* %1042, align 4, !tbaa !1
  %1045 = load i32*, i32** %l_940, align 8, !tbaa !5
  %1046 = load i32, i32* %1045, align 4, !tbaa !1
  %1047 = trunc i32 %1046 to i16
  %1048 = load i16*, i16** %l_1115, align 8, !tbaa !5
  store i16 %1047, i16* %1048, align 2, !tbaa !10
  %1049 = load i32, i32* @g_631, align 4, !tbaa !1
  %1050 = trunc i32 %1049 to i16
  %1051 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %1047, i16 signext %1050)
  %1052 = sext i16 %1051 to i32
  %1053 = xor i32 %1026, %1052
  %1054 = load i32, i32* @g_25, align 4, !tbaa !1
  %1055 = trunc i32 %1054 to i16
  %1056 = call zeroext i16 @safe_add_func_uint16_t_u_u(i16 zeroext 1, i16 zeroext %1055)
  %1057 = icmp ne i16 %1056, 0
  br i1 %1057, label %1058, label %1162

; <label>:1058                                    ; preds = %1023
  store i32 24, i32* @g_627, align 4, !tbaa !1
  br label %1059

; <label>:1059                                    ; preds = %1158, %1058
  %1060 = load i32, i32* @g_627, align 4, !tbaa !1
  %1061 = icmp ne i32 %1060, 14
  br i1 %1061, label %1062, label %1161

; <label>:1062                                    ; preds = %1059
  %1063 = bitcast [7 x i8]* %l_1133 to i8*
  call void @llvm.lifetime.start(i64 7, i8* %1063) #1
  %1064 = bitcast [7 x i8]* %l_1133 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1064, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @func_1.l_1133, i32 0, i32 0), i64 7, i32 1, i1 false)
  %1065 = bitcast i32* %i16 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1065) #1
  %1066 = load i32**, i32*** @g_591, align 8, !tbaa !5
  %1067 = load i32*, i32** %1066, align 8, !tbaa !5
  %1068 = load i32**, i32*** @g_591, align 8, !tbaa !5
  store i32* %1067, i32** %1068, align 8, !tbaa !5
  store i32 0, i32* @g_628, align 4, !tbaa !1
  br label %1069

; <label>:1069                                    ; preds = %1076, %1062
  %1070 = load i32, i32* @g_628, align 4, !tbaa !1
  %1071 = icmp slt i32 %1070, -26
  br i1 %1071, label %1072, label %1081

; <label>:1072                                    ; preds = %1069
  %1073 = getelementptr inbounds [8 x i32], [8 x i32]* %l_1031, i32 0, i64 2
  %1074 = load i32***, i32**** @g_1043, align 8, !tbaa !5
  %1075 = load i32**, i32*** %1074, align 8, !tbaa !5
  store i32* %1073, i32** %1075, align 8, !tbaa !5
  br label %1076

; <label>:1076                                    ; preds = %1072
  %1077 = load i32, i32* @g_628, align 4, !tbaa !1
  %1078 = sext i32 %1077 to i64
  %1079 = call i64 @safe_sub_func_int64_t_s_s(i64 %1078, i64 8)
  %1080 = trunc i64 %1079 to i32
  store i32 %1080, i32* @g_628, align 4, !tbaa !1
  br label %1069

; <label>:1081                                    ; preds = %1069
  store i64 2, i64* @g_577, align 8, !tbaa !7
  br label %1082

; <label>:1082                                    ; preds = %1152, %1081
  %1083 = load i64, i64* @g_577, align 8, !tbaa !7
  %1084 = icmp sle i64 %1083, -2
  br i1 %1084, label %1085, label %1155

; <label>:1085                                    ; preds = %1082
  %1086 = bitcast [10 x i64]* %l_1132 to i8*
  call void @llvm.lifetime.start(i64 80, i8* %1086) #1
  %1087 = bitcast [10 x i64]* %l_1132 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1087, i8* bitcast ([10 x i64]* @func_1.l_1132 to i8*), i64 80, i32 16, i1 false)
  %1088 = bitcast i32** %l_1141 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1088) #1
  store i32* @g_91, i32** %l_1141, align 8, !tbaa !5
  %1089 = bitcast i32* %i17 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1089) #1
  %1090 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext 1, i16 zeroext -1)
  %1091 = zext i16 %1090 to i32
  %1092 = load i32*, i32** %l_940, align 8, !tbaa !5
  %1093 = load i32, i32* %1092, align 4, !tbaa !1
  %1094 = or i32 %1093, %1091
  store i32 %1094, i32* %1092, align 4, !tbaa !1
  %1095 = load i64**, i64*** %l_1129, align 8, !tbaa !5
  %1096 = icmp eq i64** null, %1095
  %1097 = zext i1 %1096 to i32
  %1098 = trunc i32 %1097 to i8
  %1099 = load volatile i16**, i16*** @g_983, align 8, !tbaa !5
  %1100 = load i16*, i16** %1099, align 8, !tbaa !5
  %1101 = load i16, i16* %1100, align 2, !tbaa !10
  %1102 = zext i16 %1101 to i32
  %1103 = getelementptr inbounds [10 x i64], [10 x i64]* %l_1132, i32 0, i64 4
  %1104 = load i64, i64* %1103, align 8, !tbaa !7
  %1105 = trunc i64 %1104 to i32
  %1106 = load i32*, i32** %l_940, align 8, !tbaa !5
  store i32 %1105, i32* %1106, align 4, !tbaa !1
  %1107 = getelementptr inbounds [7 x i8], [7 x i8]* %l_1133, i32 0, i64 2
  %1108 = load i8, i8* %1107, align 1, !tbaa !9
  %1109 = sext i8 %1108 to i32
  %1110 = icmp eq i32 %1105, %1109
  %1111 = zext i1 %1110 to i32
  %1112 = load i64**, i64*** @g_142, align 8, !tbaa !5
  %1113 = load i64*, i64** %1112, align 8, !tbaa !5
  %1114 = load i64, i64* %1113, align 8, !tbaa !7
  %1115 = load %union.U0**, %union.U0*** @g_1136, align 8, !tbaa !5
  %1116 = load %union.U0***, %union.U0**** %l_1098, align 8, !tbaa !5
  store %union.U0** %1115, %union.U0*** %1116, align 8, !tbaa !5
  %1117 = getelementptr inbounds [10 x i64], [10 x i64]* %l_1132, i32 0, i64 4
  %1118 = load i64, i64* %1117, align 8, !tbaa !7
  %1119 = load i16, i16* @g_232, align 2, !tbaa !10
  %1120 = load %union.U0**, %union.U0*** %l_1140, align 8, !tbaa !5
  %1121 = icmp eq %union.U0** %1115, %1120
  %1122 = zext i1 %1121 to i32
  %1123 = trunc i32 %1122 to i8
  %1124 = getelementptr inbounds [7 x i8], [7 x i8]* %l_1133, i32 0, i64 2
  %1125 = load i8, i8* %1124, align 1, !tbaa !9
  %1126 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %1123, i8 zeroext %1125)
  %1127 = zext i8 %1126 to i64
  %1128 = icmp sle i64 %1114, %1127
  %1129 = zext i1 %1128 to i32
  %1130 = load i32*, i32** %l_943, align 8, !tbaa !5
  store i32 %1129, i32* %1130, align 4, !tbaa !1
  %1131 = zext i32 %1129 to i64
  %1132 = icmp ugt i64 %1131, 4294967295
  %1133 = zext i1 %1132 to i32
  %1134 = getelementptr inbounds [7 x i8], [7 x i8]* %l_1133, i32 0, i64 2
  %1135 = load i8, i8* %1134, align 1, !tbaa !9
  %1136 = sext i8 %1135 to i32
  %1137 = and i32 %1133, %1136
  %1138 = icmp ne i32 %1111, %1137
  %1139 = zext i1 %1138 to i32
  %1140 = icmp sgt i32 %1102, %1139
  %1141 = zext i1 %1140 to i32
  %1142 = load i32, i32* @g_627, align 4, !tbaa !1
  %1143 = icmp ne i32 %1141, %1142
  %1144 = zext i1 %1143 to i32
  %1145 = trunc i32 %1144 to i8
  %1146 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %1098, i8 signext %1145)
  %1147 = sext i8 %1146 to i32
  %1148 = load i32*, i32** %l_1141, align 8, !tbaa !5
  store i32 %1147, i32* %1148, align 4, !tbaa !1
  %1149 = bitcast i32* %i17 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1149) #1
  %1150 = bitcast i32** %l_1141 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1150) #1
  %1151 = bitcast [10 x i64]* %l_1132 to i8*
  call void @llvm.lifetime.end(i64 80, i8* %1151) #1
  br label %1152

; <label>:1152                                    ; preds = %1085
  %1153 = load i64, i64* @g_577, align 8, !tbaa !7
  %1154 = add nsw i64 %1153, -1
  store i64 %1154, i64* @g_577, align 8, !tbaa !7
  br label %1082

; <label>:1155                                    ; preds = %1082
  %1156 = bitcast i32* %i16 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1156) #1
  %1157 = bitcast [7 x i8]* %l_1133 to i8*
  call void @llvm.lifetime.end(i64 7, i8* %1157) #1
  br label %1158

; <label>:1158                                    ; preds = %1155
  %1159 = load i32, i32* @g_627, align 4, !tbaa !1
  %1160 = add nsw i32 %1159, -1
  store i32 %1160, i32* @g_627, align 4, !tbaa !1
  br label %1059

; <label>:1161                                    ; preds = %1059
  br label %1657

; <label>:1162                                    ; preds = %1023
  %1163 = bitcast i32* %l_1156 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1163) #1
  store i32 1, i32* %l_1156, align 4, !tbaa !1
  %1164 = bitcast i32* %l_1157 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1164) #1
  store i32 -1113363551, i32* %l_1157, align 4, !tbaa !1
  %1165 = bitcast i32* %l_1158 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1165) #1
  store i32 9, i32* %l_1158, align 4, !tbaa !1
  %1166 = bitcast i32* %l_1163 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1166) #1
  store i32 -351238658, i32* %l_1163, align 4, !tbaa !1
  %1167 = bitcast [3 x [7 x [7 x i32]]]* %l_1166 to i8*
  call void @llvm.lifetime.start(i64 588, i8* %1167) #1
  %1168 = bitcast [3 x [7 x [7 x i32]]]* %l_1166 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1168, i8* bitcast ([3 x [7 x [7 x i32]]]* @func_1.l_1166 to i8*), i64 588, i32 16, i1 false)
  %1169 = bitcast i16* %l_1175 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %1169) #1
  store i16 -1, i16* %l_1175, align 2, !tbaa !10
  %1170 = bitcast [8 x i16]* %l_1214 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1170) #1
  %1171 = bitcast [8 x i16]* %l_1214 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1171, i8* bitcast ([8 x i16]* @func_1.l_1214 to i8*), i64 16, i32 16, i1 false)
  %1172 = bitcast [7 x i64*]* %l_1239 to i8*
  call void @llvm.lifetime.start(i64 56, i8* %1172) #1
  %1173 = bitcast i16** %l_1241 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1173) #1
  store i16* @g_174, i16** %l_1241, align 8, !tbaa !5
  %1174 = bitcast i32* %i18 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1174) #1
  %1175 = bitcast i32* %j19 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1175) #1
  %1176 = bitcast i32* %k20 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1176) #1
  store i32 0, i32* %i18, align 4, !tbaa !1
  br label %1177

; <label>:1177                                    ; preds = %1185, %1162
  %1178 = load i32, i32* %i18, align 4, !tbaa !1
  %1179 = icmp slt i32 %1178, 7
  br i1 %1179, label %1180, label %1188

; <label>:1180                                    ; preds = %1177
  %1181 = getelementptr inbounds [9 x i64], [9 x i64]* %l_17, i32 0, i64 3
  %1182 = load i32, i32* %i18, align 4, !tbaa !1
  %1183 = sext i32 %1182 to i64
  %1184 = getelementptr inbounds [7 x i64*], [7 x i64*]* %l_1239, i32 0, i64 %1183
  store i64* %1181, i64** %1184, align 8, !tbaa !5
  br label %1185

; <label>:1185                                    ; preds = %1180
  %1186 = load i32, i32* %i18, align 4, !tbaa !1
  %1187 = add nsw i32 %1186, 1
  store i32 %1187, i32* %i18, align 4, !tbaa !1
  br label %1177

; <label>:1188                                    ; preds = %1177
  store i8 0, i8* @g_123, align 1, !tbaa !9
  br label %1189

; <label>:1189                                    ; preds = %1550, %1188
  %1190 = load i8, i8* @g_123, align 1, !tbaa !9
  %1191 = sext i8 %1190 to i32
  %1192 = icmp ne i32 %1191, 2
  br i1 %1192, label %1193, label %1553

; <label>:1193                                    ; preds = %1189
  call void @llvm.lifetime.start(i64 1, i8* %l_1160) #1
  store i8 -1, i8* %l_1160, align 1, !tbaa !9
  %1194 = bitcast i32* %l_1162 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1194) #1
  store i32 170056350, i32* %l_1162, align 4, !tbaa !1
  %1195 = bitcast i32* %l_1164 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1195) #1
  store i32 0, i32* %l_1164, align 4, !tbaa !1
  %1196 = bitcast i32* %l_1170 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1196) #1
  store i32 0, i32* %l_1170, align 4, !tbaa !1
  %1197 = bitcast i32* %l_1171 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1197) #1
  store i32 1, i32* %l_1171, align 4, !tbaa !1
  %1198 = bitcast i32* %l_1172 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1198) #1
  store i32 4, i32* %l_1172, align 4, !tbaa !1
  %1199 = bitcast i32* %l_1173 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1199) #1
  store i32 -525535954, i32* %l_1173, align 4, !tbaa !1
  %1200 = bitcast [6 x i16**]* %l_1187 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %1200) #1
  %1201 = getelementptr inbounds [6 x i16**], [6 x i16**]* %l_1187, i64 0, i64 0
  store i16** %l_1115, i16*** %1201, !tbaa !5
  %1202 = getelementptr inbounds i16**, i16*** %1201, i64 1
  store i16** %l_1115, i16*** %1202, !tbaa !5
  %1203 = getelementptr inbounds i16**, i16*** %1202, i64 1
  store i16** %l_1115, i16*** %1203, !tbaa !5
  %1204 = getelementptr inbounds i16**, i16*** %1203, i64 1
  store i16** %l_1115, i16*** %1204, !tbaa !5
  %1205 = getelementptr inbounds i16**, i16*** %1204, i64 1
  store i16** %l_1115, i16*** %1205, !tbaa !5
  %1206 = getelementptr inbounds i16**, i16*** %1205, i64 1
  store i16** %l_1115, i16*** %1206, !tbaa !5
  %1207 = bitcast i64*** %l_1197 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1207) #1
  store i64** @g_143, i64*** %l_1197, align 8, !tbaa !5
  %1208 = bitcast i32*** %l_1215 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1208) #1
  store i32** %l_942, i32*** %l_1215, align 8, !tbaa !5
  %1209 = bitcast i8** %l_1216 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1209) #1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @g_1054, i32 0, i64 3), i8** %l_1216, align 8, !tbaa !5
  %1210 = bitcast i32* %l_1222 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1210) #1
  store i32 -1308051801, i32* %l_1222, align 4, !tbaa !1
  %1211 = bitcast i32* %i21 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1211) #1
  store i16 4, i16* @g_985, align 2, !tbaa !10
  br label %1212

; <label>:1212                                    ; preds = %1376, %1193
  %1213 = load i16, i16* @g_985, align 2, !tbaa !10
  %1214 = zext i16 %1213 to i32
  %1215 = icmp slt i32 %1214, 39
  br i1 %1215, label %1216, label %1379

; <label>:1216                                    ; preds = %1212
  %1217 = bitcast i32* %l_1146 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1217) #1
  store i32 1219948306, i32* %l_1146, align 4, !tbaa !1
  %1218 = bitcast i32** %l_1151 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1218) #1
  store i32* @g_91, i32** %l_1151, align 8, !tbaa !5
  %1219 = bitcast i32** %l_1152 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1219) #1
  store i32* %l_1072, i32** %l_1152, align 8, !tbaa !5
  %1220 = bitcast i32** %l_1153 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1220) #1
  store i32* %l_1072, i32** %l_1153, align 8, !tbaa !5
  %1221 = bitcast i32** %l_1154 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1221) #1
  store i32* @g_628, i32** %l_1154, align 8, !tbaa !5
  %1222 = bitcast [6 x [9 x i32*]]* %l_1155 to i8*
  call void @llvm.lifetime.start(i64 432, i8* %1222) #1
  %1223 = bitcast [7 x [5 x i16**]]* %l_1186 to i8*
  call void @llvm.lifetime.start(i64 280, i8* %1223) #1
  %1224 = getelementptr inbounds [7 x [5 x i16**]], [7 x [5 x i16**]]* %l_1186, i64 0, i64 0
  %1225 = getelementptr inbounds [5 x i16**], [5 x i16**]* %1224, i64 0, i64 0
  store i16** %l_1115, i16*** %1225, !tbaa !5
  %1226 = getelementptr inbounds i16**, i16*** %1225, i64 1
  store i16** %l_1115, i16*** %1226, !tbaa !5
  %1227 = getelementptr inbounds i16**, i16*** %1226, i64 1
  store i16** %l_1115, i16*** %1227, !tbaa !5
  %1228 = getelementptr inbounds i16**, i16*** %1227, i64 1
  store i16** %l_1115, i16*** %1228, !tbaa !5
  %1229 = getelementptr inbounds i16**, i16*** %1228, i64 1
  store i16** %l_1115, i16*** %1229, !tbaa !5
  %1230 = getelementptr inbounds [5 x i16**], [5 x i16**]* %1224, i64 1
  %1231 = getelementptr inbounds [5 x i16**], [5 x i16**]* %1230, i64 0, i64 0
  store i16** null, i16*** %1231, !tbaa !5
  %1232 = getelementptr inbounds i16**, i16*** %1231, i64 1
  store i16** %l_1115, i16*** %1232, !tbaa !5
  %1233 = getelementptr inbounds i16**, i16*** %1232, i64 1
  store i16** null, i16*** %1233, !tbaa !5
  %1234 = getelementptr inbounds i16**, i16*** %1233, i64 1
  store i16** null, i16*** %1234, !tbaa !5
  %1235 = getelementptr inbounds i16**, i16*** %1234, i64 1
  store i16** %l_1115, i16*** %1235, !tbaa !5
  %1236 = getelementptr inbounds [5 x i16**], [5 x i16**]* %1230, i64 1
  %1237 = getelementptr inbounds [5 x i16**], [5 x i16**]* %1236, i64 0, i64 0
  store i16** %l_1115, i16*** %1237, !tbaa !5
  %1238 = getelementptr inbounds i16**, i16*** %1237, i64 1
  store i16** %l_1115, i16*** %1238, !tbaa !5
  %1239 = getelementptr inbounds i16**, i16*** %1238, i64 1
  store i16** %l_1115, i16*** %1239, !tbaa !5
  %1240 = getelementptr inbounds i16**, i16*** %1239, i64 1
  store i16** %l_1115, i16*** %1240, !tbaa !5
  %1241 = getelementptr inbounds i16**, i16*** %1240, i64 1
  store i16** %l_1115, i16*** %1241, !tbaa !5
  %1242 = getelementptr inbounds [5 x i16**], [5 x i16**]* %1236, i64 1
  %1243 = getelementptr inbounds [5 x i16**], [5 x i16**]* %1242, i64 0, i64 0
  store i16** %l_1115, i16*** %1243, !tbaa !5
  %1244 = getelementptr inbounds i16**, i16*** %1243, i64 1
  store i16** %l_1115, i16*** %1244, !tbaa !5
  %1245 = getelementptr inbounds i16**, i16*** %1244, i64 1
  store i16** null, i16*** %1245, !tbaa !5
  %1246 = getelementptr inbounds i16**, i16*** %1245, i64 1
  store i16** %l_1115, i16*** %1246, !tbaa !5
  %1247 = getelementptr inbounds i16**, i16*** %1246, i64 1
  store i16** %l_1115, i16*** %1247, !tbaa !5
  %1248 = getelementptr inbounds [5 x i16**], [5 x i16**]* %1242, i64 1
  %1249 = getelementptr inbounds [5 x i16**], [5 x i16**]* %1248, i64 0, i64 0
  store i16** %l_1115, i16*** %1249, !tbaa !5
  %1250 = getelementptr inbounds i16**, i16*** %1249, i64 1
  store i16** %l_1115, i16*** %1250, !tbaa !5
  %1251 = getelementptr inbounds i16**, i16*** %1250, i64 1
  store i16** %l_1115, i16*** %1251, !tbaa !5
  %1252 = getelementptr inbounds i16**, i16*** %1251, i64 1
  store i16** %l_1115, i16*** %1252, !tbaa !5
  %1253 = getelementptr inbounds i16**, i16*** %1252, i64 1
  store i16** %l_1115, i16*** %1253, !tbaa !5
  %1254 = getelementptr inbounds [5 x i16**], [5 x i16**]* %1248, i64 1
  %1255 = getelementptr inbounds [5 x i16**], [5 x i16**]* %1254, i64 0, i64 0
  store i16** %l_1115, i16*** %1255, !tbaa !5
  %1256 = getelementptr inbounds i16**, i16*** %1255, i64 1
  store i16** null, i16*** %1256, !tbaa !5
  %1257 = getelementptr inbounds i16**, i16*** %1256, i64 1
  store i16** null, i16*** %1257, !tbaa !5
  %1258 = getelementptr inbounds i16**, i16*** %1257, i64 1
  store i16** %l_1115, i16*** %1258, !tbaa !5
  %1259 = getelementptr inbounds i16**, i16*** %1258, i64 1
  store i16** null, i16*** %1259, !tbaa !5
  %1260 = getelementptr inbounds [5 x i16**], [5 x i16**]* %1254, i64 1
  %1261 = getelementptr inbounds [5 x i16**], [5 x i16**]* %1260, i64 0, i64 0
  store i16** %l_1115, i16*** %1261, !tbaa !5
  %1262 = getelementptr inbounds i16**, i16*** %1261, i64 1
  store i16** %l_1115, i16*** %1262, !tbaa !5
  %1263 = getelementptr inbounds i16**, i16*** %1262, i64 1
  store i16** %l_1115, i16*** %1263, !tbaa !5
  %1264 = getelementptr inbounds i16**, i16*** %1263, i64 1
  store i16** %l_1115, i16*** %1264, !tbaa !5
  %1265 = getelementptr inbounds i16**, i16*** %1264, i64 1
  store i16** %l_1115, i16*** %1265, !tbaa !5
  %1266 = bitcast i32** %l_1195 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1266) #1
  store i32* getelementptr inbounds ([7 x [1 x [4 x i32]]], [7 x [1 x [4 x i32]]]* @g_513, i32 0, i64 1, i64 0, i64 2), i32** %l_1195, align 8, !tbaa !5
  %1267 = bitcast i32*** %l_1194 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1267) #1
  store i32** %l_1195, i32*** %l_1194, align 8, !tbaa !5
  %1268 = bitcast i32* %i22 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1268) #1
  %1269 = bitcast i32* %j23 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1269) #1
  store i32 0, i32* %i22, align 4, !tbaa !1
  br label %1270

; <label>:1270                                    ; preds = %1288, %1216
  %1271 = load i32, i32* %i22, align 4, !tbaa !1
  %1272 = icmp slt i32 %1271, 6
  br i1 %1272, label %1273, label %1291

; <label>:1273                                    ; preds = %1270
  store i32 0, i32* %j23, align 4, !tbaa !1
  br label %1274

; <label>:1274                                    ; preds = %1284, %1273
  %1275 = load i32, i32* %j23, align 4, !tbaa !1
  %1276 = icmp slt i32 %1275, 9
  br i1 %1276, label %1277, label %1287

; <label>:1277                                    ; preds = %1274
  %1278 = load i32, i32* %j23, align 4, !tbaa !1
  %1279 = sext i32 %1278 to i64
  %1280 = load i32, i32* %i22, align 4, !tbaa !1
  %1281 = sext i32 %1280 to i64
  %1282 = getelementptr inbounds [6 x [9 x i32*]], [6 x [9 x i32*]]* %l_1155, i32 0, i64 %1281
  %1283 = getelementptr inbounds [9 x i32*], [9 x i32*]* %1282, i32 0, i64 %1279
  store i32* @g_629, i32** %1283, align 8, !tbaa !5
  br label %1284

; <label>:1284                                    ; preds = %1277
  %1285 = load i32, i32* %j23, align 4, !tbaa !1
  %1286 = add nsw i32 %1285, 1
  store i32 %1286, i32* %j23, align 4, !tbaa !1
  br label %1274

; <label>:1287                                    ; preds = %1274
  br label %1288

; <label>:1288                                    ; preds = %1287
  %1289 = load i32, i32* %i22, align 4, !tbaa !1
  %1290 = add nsw i32 %1289, 1
  store i32 %1290, i32* %i22, align 4, !tbaa !1
  br label %1270

; <label>:1291                                    ; preds = %1270
  %1292 = load i32, i32* %l_1146, align 4, !tbaa !1
  %1293 = load %union.U0****, %union.U0***** %l_1147, align 8, !tbaa !5
  %1294 = load volatile %union.U0*****, %union.U0****** @g_1148, align 8, !tbaa !5
  store %union.U0**** %1293, %union.U0***** %1294, align 8, !tbaa !5
  %1295 = load i16, i16* %l_1175, align 2, !tbaa !10
  %1296 = add i16 %1295, -1
  store i16 %1296, i16* %l_1175, align 2, !tbaa !10
  %1297 = load volatile %union.U0*****, %union.U0****** @g_1148, align 8, !tbaa !5
  %1298 = load %union.U0****, %union.U0***** %1297, align 8, !tbaa !5
  %1299 = load volatile %union.U0*****, %union.U0****** @g_1179, align 8, !tbaa !5
  store %union.U0**** %1298, %union.U0***** %1299, align 8, !tbaa !5
  %1300 = load i64****, i64***** @g_701, align 8, !tbaa !5
  %1301 = load volatile i64***, i64**** %1300, align 8, !tbaa !5
  %1302 = load i64**, i64*** %1301, align 8, !tbaa !5
  %1303 = load i8, i8* @g_724, align 1, !tbaa !9
  %1304 = sext i8 %1303 to i32
  %1305 = load i64***, i64**** @g_702, align 8, !tbaa !5
  %1306 = load i64**, i64*** %1305, align 8, !tbaa !5
  %1307 = load volatile i64*, i64** %1306, align 8, !tbaa !5
  %1308 = load volatile i64, i64* %1307, align 8, !tbaa !7
  %1309 = getelementptr inbounds [7 x [5 x i16**]], [7 x [5 x i16**]]* %l_1186, i32 0, i64 0
  %1310 = getelementptr inbounds [5 x i16**], [5 x i16**]* %1309, i32 0, i64 0
  %1311 = load i16**, i16*** %1310, align 8, !tbaa !5
  %1312 = getelementptr inbounds [6 x i16**], [6 x i16**]* %l_1187, i32 0, i64 2
  %1313 = load i16**, i16*** %1312, align 8, !tbaa !5
  %1314 = icmp ne i16** %1311, %1313
  %1315 = zext i1 %1314 to i32
  %1316 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @g_23, i32 0, i64 4), align 8, !tbaa !7
  %1317 = trunc i64 %1316 to i8
  %1318 = getelementptr inbounds [3 x [7 x [7 x i32]]], [3 x [7 x [7 x i32]]]* %l_1166, i32 0, i64 0
  %1319 = getelementptr inbounds [7 x [7 x i32]], [7 x [7 x i32]]* %1318, i32 0, i64 5
  %1320 = getelementptr inbounds [7 x i32], [7 x i32]* %1319, i32 0, i64 1
  %1321 = load i32, i32* %1320, align 4, !tbaa !1
  store i32 %1321, i32* @g_87, align 4, !tbaa !1
  %1322 = load i8*, i8** %l_1101, align 8, !tbaa !5
  %1323 = load i8, i8* %1322, align 1, !tbaa !9
  %1324 = zext i8 %1323 to i64
  %1325 = or i64 %1324, 246
  %1326 = trunc i64 %1325 to i8
  store i8 %1326, i8* %1322, align 1, !tbaa !9
  %1327 = getelementptr inbounds [6 x [9 x i32*]], [6 x [9 x i32*]]* %l_1155, i32 0, i64 0
  %1328 = getelementptr inbounds [9 x i32*], [9 x i32*]* %1327, i32 0, i64 1
  %1329 = load i32*, i32** %1328, align 8, !tbaa !5
  %1330 = load i32**, i32*** %l_1194, align 8, !tbaa !5
  store i32* %1329, i32** %1330, align 8, !tbaa !5
  %1331 = load i32*, i32** %l_1196, align 8, !tbaa !5
  %1332 = icmp ne i32* %1329, %1331
  %1333 = zext i1 %1332 to i32
  %1334 = call zeroext i8 @safe_rshift_func_uint8_t_u_u(i8 zeroext %1326, i32 %1333)
  %1335 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %1317, i8 zeroext %1334)
  %1336 = call zeroext i8 @safe_rshift_func_uint8_t_u_s(i8 zeroext %1335, i32 4)
  %1337 = zext i8 %1336 to i32
  %1338 = and i32 %1315, %1337
  %1339 = trunc i32 %1338 to i8
  %1340 = load i8, i8* @g_478, align 1, !tbaa !9
  %1341 = zext i8 %1340 to i32
  %1342 = call zeroext i8 @safe_rshift_func_uint8_t_u_u(i8 zeroext %1339, i32 %1341)
  %1343 = zext i8 %1342 to i64
  %1344 = xor i64 %1308, %1343
  %1345 = load i8, i8* getelementptr inbounds ([8 x [5 x [6 x i8]]], [8 x [5 x [6 x i8]]]* @g_726, i32 0, i64 2, i64 1, i64 2), align 1, !tbaa !9
  %1346 = sext i8 %1345 to i64
  %1347 = icmp slt i64 %1344, %1346
  %1348 = zext i1 %1347 to i32
  %1349 = load i32*, i32** %l_940, align 8, !tbaa !5
  %1350 = load i32, i32* %1349, align 4, !tbaa !1
  %1351 = call i32 @safe_add_func_uint32_t_u_u(i32 %1348, i32 %1350)
  %1352 = trunc i32 %1351 to i8
  store i8 %1352, i8* @g_779, align 1, !tbaa !9
  %1353 = zext i8 %1352 to i32
  %1354 = icmp ne i32 %1304, %1353
  %1355 = zext i1 %1354 to i32
  %1356 = load i64**, i64*** %l_1197, align 8, !tbaa !5
  %1357 = icmp ne i64** %1302, %1356
  %1358 = zext i1 %1357 to i32
  %1359 = trunc i32 %1358 to i16
  %1360 = load i32*, i32** %l_1152, align 8, !tbaa !5
  %1361 = load i32, i32* %1360, align 4, !tbaa !1
  %1362 = call zeroext i16 @safe_lshift_func_uint16_t_u_u(i16 zeroext %1359, i32 %1361)
  %1363 = zext i16 %1362 to i32
  %1364 = load i32*, i32** %l_1152, align 8, !tbaa !5
  store i32 %1363, i32* %1364, align 4, !tbaa !1
  %1365 = bitcast i32* %j23 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1365) #1
  %1366 = bitcast i32* %i22 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1366) #1
  %1367 = bitcast i32*** %l_1194 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1367) #1
  %1368 = bitcast i32** %l_1195 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1368) #1
  %1369 = bitcast [7 x [5 x i16**]]* %l_1186 to i8*
  call void @llvm.lifetime.end(i64 280, i8* %1369) #1
  %1370 = bitcast [6 x [9 x i32*]]* %l_1155 to i8*
  call void @llvm.lifetime.end(i64 432, i8* %1370) #1
  %1371 = bitcast i32** %l_1154 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1371) #1
  %1372 = bitcast i32** %l_1153 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1372) #1
  %1373 = bitcast i32** %l_1152 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1373) #1
  %1374 = bitcast i32** %l_1151 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1374) #1
  %1375 = bitcast i32* %l_1146 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1375) #1
  br label %1376

; <label>:1376                                    ; preds = %1291
  %1377 = load i16, i16* @g_985, align 2, !tbaa !10
  %1378 = add i16 %1377, 1
  store i16 %1378, i16* @g_985, align 2, !tbaa !10
  br label %1212

; <label>:1379                                    ; preds = %1212
  %1380 = call zeroext i8 @safe_rshift_func_uint8_t_u_u(i8 zeroext -7, i32 5)
  %1381 = zext i8 %1380 to i64
  %1382 = icmp sle i64 %1381, 0
  %1383 = zext i1 %1382 to i32
  %1384 = load i32*, i32** %l_943, align 8, !tbaa !5
  store i32 %1383, i32* %1384, align 4, !tbaa !1
  br i1 %1382, label %1385, label %1464

; <label>:1385                                    ; preds = %1379
  %1386 = getelementptr inbounds [3 x [7 x [7 x i32]]], [3 x [7 x [7 x i32]]]* %l_1166, i32 0, i64 1
  %1387 = getelementptr inbounds [7 x [7 x i32]], [7 x [7 x i32]]* %1386, i32 0, i64 3
  %1388 = getelementptr inbounds [7 x i32], [7 x i32]* %1387, i32 0, i64 5
  %1389 = load i32, i32* %1388, align 4, !tbaa !1
  %1390 = load i32, i32* %l_1170, align 4, !tbaa !1
  %1391 = trunc i32 %1390 to i16
  %1392 = getelementptr inbounds [8 x i16], [8 x i16]* %l_1214, i32 0, i64 4
  %1393 = load i16, i16* %1392, align 2, !tbaa !10
  %1394 = sext i16 %1393 to i32
  %1395 = icmp ne i32 %1394, 0
  br i1 %1395, label %1396, label %1426

; <label>:1396                                    ; preds = %1385
  %1397 = load i16, i16* @g_985, align 2, !tbaa !10
  %1398 = zext i16 %1397 to i64
  %1399 = icmp sle i64 %1398, 1270339993854421939
  br i1 %1399, label %1424, label %1400

; <label>:1400                                    ; preds = %1396
  %1401 = load volatile i32*, i32** @g_1048, align 8, !tbaa !5
  %1402 = load i32, i32* %1401, align 4, !tbaa !1
  %1403 = load i32, i32* getelementptr inbounds ([6 x [1 x [4 x i32]]], [6 x [1 x [4 x i32]]]* @g_730, i32 0, i64 3, i64 0, i64 0), align 4, !tbaa !1
  %1404 = zext i32 %1403 to i64
  %1405 = call i32* @func_35(i64 %1404)
  %1406 = load i32**, i32*** %l_1215, align 8, !tbaa !5
  store i32* %1405, i32** %1406, align 8, !tbaa !5
  %1407 = icmp eq i32* %1405, @g_631
  %1408 = zext i1 %1407 to i32
  %1409 = icmp sge i32 %1402, %1408
  %1410 = zext i1 %1409 to i32
  %1411 = load i32, i32* %l_1174, align 4, !tbaa !1
  %1412 = getelementptr inbounds [4 x [6 x i32]], [4 x [6 x i32]]* %l_1167, i32 0, i64 3
  %1413 = getelementptr inbounds [6 x i32], [6 x i32]* %1412, i32 0, i64 5
  %1414 = load i32, i32* %1413, align 4, !tbaa !1
  %1415 = icmp sge i32 %1411, %1414
  %1416 = zext i1 %1415 to i32
  %1417 = load i32, i32* getelementptr inbounds ([6 x [1 x [4 x i32]]], [6 x [1 x [4 x i32]]]* @g_730, i32 0, i64 3, i64 0, i64 0), align 4, !tbaa !1
  %1418 = icmp ugt i32 %1416, %1417
  br i1 %1418, label %1422, label %1419

; <label>:1419                                    ; preds = %1400
  %1420 = load i32, i32* %l_1158, align 4, !tbaa !1
  %1421 = icmp ne i32 %1420, 0
  br label %1422

; <label>:1422                                    ; preds = %1419, %1400
  %1423 = phi i1 [ true, %1400 ], [ %1421, %1419 ]
  br label %1424

; <label>:1424                                    ; preds = %1422, %1396
  %1425 = phi i1 [ true, %1396 ], [ %1423, %1422 ]
  br label %1426

; <label>:1426                                    ; preds = %1424, %1385
  %1427 = phi i1 [ false, %1385 ], [ %1425, %1424 ]
  %1428 = zext i1 %1427 to i32
  %1429 = trunc i32 %1428 to i16
  %1430 = call signext i16 @safe_div_func_int16_t_s_s(i16 signext %1391, i16 signext %1429)
  %1431 = sext i16 %1430 to i32
  %1432 = load i8*, i8** %l_1216, align 8, !tbaa !5
  %1433 = load i8, i8* %1432, align 1, !tbaa !9
  %1434 = sext i8 %1433 to i32
  %1435 = and i32 %1434, %1431
  %1436 = trunc i32 %1435 to i8
  store i8 %1436, i8* %1432, align 1, !tbaa !9
  %1437 = sext i8 %1436 to i32
  %1438 = and i32 %1389, %1437
  %1439 = sext i32 %1438 to i64
  %1440 = getelementptr inbounds [3 x [7 x [7 x i32]]], [3 x [7 x [7 x i32]]]* %l_1166, i32 0, i64 0
  %1441 = getelementptr inbounds [7 x [7 x i32]], [7 x [7 x i32]]* %1440, i32 0, i64 5
  %1442 = getelementptr inbounds [7 x i32], [7 x i32]* %1441, i32 0, i64 4
  %1443 = load i32, i32* %1442, align 4, !tbaa !1
  %1444 = sext i32 %1443 to i64
  %1445 = call i64 @safe_add_func_int64_t_s_s(i64 %1439, i64 %1444)
  %1446 = getelementptr inbounds [3 x [7 x [7 x i32]]], [3 x [7 x [7 x i32]]]* %l_1166, i32 0, i64 2
  %1447 = getelementptr inbounds [7 x [7 x i32]], [7 x [7 x i32]]* %1446, i32 0, i64 1
  %1448 = getelementptr inbounds [7 x i32], [7 x i32]* %1447, i32 0, i64 2
  %1449 = load i32, i32* %1448, align 4, !tbaa !1
  %1450 = sext i32 %1449 to i64
  %1451 = icmp sgt i64 %1445, %1450
  %1452 = zext i1 %1451 to i32
  %1453 = load i32*, i32** %l_940, align 8, !tbaa !5
  %1454 = load i32, i32* %1453, align 4, !tbaa !1
  %1455 = icmp eq i32 %1452, %1454
  %1456 = zext i1 %1455 to i32
  %1457 = load i16, i16* getelementptr inbounds ([4 x i16], [4 x i16]* @g_183, i32 0, i64 3), align 2, !tbaa !10
  %1458 = sext i16 %1457 to i32
  %1459 = icmp eq i32 %1456, %1458
  %1460 = zext i1 %1459 to i32
  %1461 = load i32*, i32** %l_940, align 8, !tbaa !5
  %1462 = load i32, i32* %1461, align 4, !tbaa !1
  %1463 = icmp ne i32 %1462, 0
  br label %1464

; <label>:1464                                    ; preds = %1426, %1379
  %1465 = phi i1 [ false, %1379 ], [ %1463, %1426 ]
  %1466 = zext i1 %1465 to i32
  %1467 = trunc i32 %1466 to i8
  %1468 = call signext i8 @safe_lshift_func_int8_t_s_u(i8 signext %1467, i32 2)
  %1469 = load i32*, i32** %l_940, align 8, !tbaa !5
  %1470 = load i32, i32* %1469, align 4, !tbaa !1
  %1471 = sext i32 %1470 to i64
  %1472 = call i64 @safe_add_func_uint64_t_u_u(i64 5978520996763009426, i64 %1471)
  %1473 = trunc i64 %1472 to i32
  %1474 = load i32*, i32** %l_940, align 8, !tbaa !5
  store i32 %1473, i32* %1474, align 4, !tbaa !1
  %1475 = sext i32 %1473 to i64
  %1476 = icmp slt i64 %1475, 3503466508
  %1477 = zext i1 %1476 to i32
  %1478 = trunc i32 %1477 to i8
  %1479 = load i32, i32* %l_1157, align 4, !tbaa !1
  %1480 = trunc i32 %1479 to i8
  %1481 = call zeroext i8 @safe_sub_func_uint8_t_u_u(i8 zeroext %1478, i8 zeroext %1480)
  %1482 = zext i8 %1481 to i16
  %1483 = call signext i16 @safe_rshift_func_int16_t_s_s(i16 signext %1482, i32 11)
  %1484 = sext i16 %1483 to i32
  %1485 = load i16, i16* getelementptr inbounds ([3 x i16], [3 x i16]* @g_201, i32 0, i64 2), align 2, !tbaa !10
  %1486 = sext i16 %1485 to i32
  %1487 = icmp sge i32 %1484, %1486
  %1488 = zext i1 %1487 to i32
  %1489 = sext i32 %1488 to i64
  %1490 = icmp eq i64 %1489, 54064
  %1491 = zext i1 %1490 to i32
  %1492 = load i32, i32* @g_631, align 4, !tbaa !1
  %1493 = or i32 %1491, %1492
  %1494 = trunc i32 %1493 to i8
  %1495 = load i32, i32* %l_1159, align 4, !tbaa !1
  %1496 = call zeroext i8 @safe_rshift_func_uint8_t_u_u(i8 zeroext %1494, i32 %1495)
  %1497 = zext i8 %1496 to i64
  %1498 = icmp ugt i64 %1497, 1
  %1499 = zext i1 %1498 to i32
  %1500 = load i8, i8* %l_1160, align 1, !tbaa !9
  %1501 = sext i8 %1500 to i32
  %1502 = icmp slt i32 %1499, %1501
  br i1 %1502, label %1503, label %1527

; <label>:1503                                    ; preds = %1464
  %1504 = bitcast [1 x [9 x i32**]]* %l_1218 to i8*
  call void @llvm.lifetime.start(i64 72, i8* %1504) #1
  %1505 = getelementptr inbounds [1 x [9 x i32**]], [1 x [9 x i32**]]* %l_1218, i64 0, i64 0
  %1506 = getelementptr inbounds [9 x i32**], [9 x i32**]* %1505, i64 0, i64 0
  store i32** %l_1103, i32*** %1506, !tbaa !5
  %1507 = getelementptr inbounds i32**, i32*** %1506, i64 1
  store i32** %l_1103, i32*** %1507, !tbaa !5
  %1508 = getelementptr inbounds i32**, i32*** %1507, i64 1
  store i32** %l_1103, i32*** %1508, !tbaa !5
  %1509 = getelementptr inbounds i32**, i32*** %1508, i64 1
  store i32** %l_1103, i32*** %1509, !tbaa !5
  %1510 = getelementptr inbounds i32**, i32*** %1509, i64 1
  store i32** %l_1103, i32*** %1510, !tbaa !5
  %1511 = getelementptr inbounds i32**, i32*** %1510, i64 1
  store i32** %l_1103, i32*** %1511, !tbaa !5
  %1512 = getelementptr inbounds i32**, i32*** %1511, i64 1
  store i32** %l_1103, i32*** %1512, !tbaa !5
  %1513 = getelementptr inbounds i32**, i32*** %1512, i64 1
  store i32** %l_1103, i32*** %1513, !tbaa !5
  %1514 = getelementptr inbounds i32**, i32*** %1513, i64 1
  store i32** %l_1103, i32*** %1514, !tbaa !5
  %1515 = bitcast i32* %i24 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1515) #1
  %1516 = bitcast i32* %j25 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1516) #1
  %1517 = load i32**, i32*** @g_591, align 8, !tbaa !5
  %1518 = load i32*, i32** %1517, align 8, !tbaa !5
  %1519 = load i32***, i32**** @g_1043, align 8, !tbaa !5
  %1520 = load i32**, i32*** %1519, align 8, !tbaa !5
  store i32* %1518, i32** %1520, align 8, !tbaa !5
  %1521 = getelementptr inbounds [2 x [3 x [7 x i32*]]], [2 x [3 x [7 x i32*]]]* %l_1219, i32 0, i64 0
  %1522 = getelementptr inbounds [3 x [7 x i32*]], [3 x [7 x i32*]]* %1521, i32 0, i64 0
  %1523 = getelementptr inbounds [7 x i32*], [7 x i32*]* %1522, i32 0, i64 1
  store i32* %1518, i32** %1523, align 8, !tbaa !5
  %1524 = bitcast i32* %j25 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1524) #1
  %1525 = bitcast i32* %i24 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1525) #1
  %1526 = bitcast [1 x [9 x i32**]]* %l_1218 to i8*
  call void @llvm.lifetime.end(i64 72, i8* %1526) #1
  br label %1537

; <label>:1527                                    ; preds = %1464
  %1528 = bitcast [6 x i16]* %l_1220 to i8*
  call void @llvm.lifetime.start(i64 12, i8* %1528) #1
  %1529 = bitcast [6 x i16]* %l_1220 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1529, i8* bitcast ([6 x i16]* @func_1.l_1220 to i8*), i64 12, i32 2, i1 false)
  %1530 = bitcast i32* %l_1221 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1530) #1
  store i32 -941228121, i32* %l_1221, align 4, !tbaa !1
  %1531 = bitcast i32* %i26 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1531) #1
  %1532 = load i32, i32* %l_1222, align 4, !tbaa !1
  %1533 = add i32 %1532, 1
  store i32 %1533, i32* %l_1222, align 4, !tbaa !1
  %1534 = bitcast i32* %i26 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1534) #1
  %1535 = bitcast i32* %l_1221 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1535) #1
  %1536 = bitcast [6 x i16]* %l_1220 to i8*
  call void @llvm.lifetime.end(i64 12, i8* %1536) #1
  br label %1537

; <label>:1537                                    ; preds = %1527, %1503
  %1538 = bitcast i32* %i21 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1538) #1
  %1539 = bitcast i32* %l_1222 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1539) #1
  %1540 = bitcast i8** %l_1216 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1540) #1
  %1541 = bitcast i32*** %l_1215 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1541) #1
  %1542 = bitcast i64*** %l_1197 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1542) #1
  %1543 = bitcast [6 x i16**]* %l_1187 to i8*
  call void @llvm.lifetime.end(i64 48, i8* %1543) #1
  %1544 = bitcast i32* %l_1173 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1544) #1
  %1545 = bitcast i32* %l_1172 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1545) #1
  %1546 = bitcast i32* %l_1171 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1546) #1
  %1547 = bitcast i32* %l_1170 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1547) #1
  %1548 = bitcast i32* %l_1164 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1548) #1
  %1549 = bitcast i32* %l_1162 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1549) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1160) #1
  br label %1550

; <label>:1550                                    ; preds = %1537
  %1551 = load i8, i8* @g_123, align 1, !tbaa !9
  %1552 = add i8 %1551, 1
  store i8 %1552, i8* @g_123, align 1, !tbaa !9
  br label %1189

; <label>:1553                                    ; preds = %1189
  %1554 = load i64**, i64*** @g_703, align 8, !tbaa !5
  %1555 = load volatile i64*, i64** %1554, align 8, !tbaa !5
  %1556 = load volatile i64, i64* %1555, align 8, !tbaa !7
  %1557 = load i32, i32* getelementptr inbounds ([6 x [1 x [4 x i32]]], [6 x [1 x [4 x i32]]]* @g_730, i32 0, i64 3, i64 0, i64 0), align 4, !tbaa !1
  %1558 = load i16*, i16** @g_984, align 8, !tbaa !5
  %1559 = load i16, i16* %1558, align 2, !tbaa !10
  %1560 = load %union.U0**, %union.U0*** @g_497, align 8, !tbaa !5
  %1561 = load %union.U0*, %union.U0** %1560, align 8, !tbaa !5
  %1562 = load i32*, i32** %l_940, align 8, !tbaa !5
  %1563 = load i32, i32* %1562, align 4, !tbaa !1
  %1564 = load i16, i16* %l_1240, align 2, !tbaa !10
  %1565 = sext i16 %1564 to i32
  %1566 = or i32 %1565, %1563
  %1567 = trunc i32 %1566 to i16
  store i16 %1567, i16* %l_1240, align 2, !tbaa !10
  %1568 = sext i16 %1567 to i32
  %1569 = icmp ne i32 %1568, 0
  br i1 %1569, label %1570, label %1582

; <label>:1570                                    ; preds = %1553
  store i16 0, i16* getelementptr inbounds ([3 x i16], [3 x i16]* @g_201, i32 0, i64 1), align 2, !tbaa !10
  %1571 = getelementptr inbounds [3 x [7 x [7 x i32]]], [3 x [7 x [7 x i32]]]* %l_1166, i32 0, i64 0
  %1572 = getelementptr inbounds [7 x [7 x i32]], [7 x [7 x i32]]* %1571, i32 0, i64 5
  %1573 = getelementptr inbounds [7 x i32], [7 x i32]* %1572, i32 0, i64 1
  %1574 = load i32, i32* %1573, align 4, !tbaa !1
  %1575 = load i16*, i16** %l_1241, align 8, !tbaa !5
  %1576 = load i16, i16* %1575, align 2, !tbaa !10
  %1577 = zext i16 %1576 to i64
  %1578 = xor i64 %1577, 44893
  %1579 = trunc i64 %1578 to i16
  store i16 %1579, i16* %1575, align 2, !tbaa !10
  %1580 = zext i16 %1579 to i32
  %1581 = icmp slt i32 0, %1580
  br label %1582

; <label>:1582                                    ; preds = %1570, %1553
  %1583 = phi i1 [ false, %1553 ], [ %1581, %1570 ]
  %1584 = zext i1 %1583 to i32
  %1585 = sext i32 %1584 to i64
  %1586 = load i8, i8* @g_123, align 1, !tbaa !9
  %1587 = sext i8 %1586 to i64
  %1588 = call i64 @safe_div_func_uint64_t_u_u(i64 %1585, i64 %1587)
  store i64 %1588, i64* getelementptr inbounds (%union.U0, %union.U0* @g_416, i32 0, i32 0), align 8, !tbaa !7
  %1589 = icmp ne i64 %1588, 0
  br i1 %1589, label %1590, label %1594

; <label>:1590                                    ; preds = %1582
  %1591 = getelementptr inbounds [6 x i64], [6 x i64]* %l_1114, i32 0, i64 0
  %1592 = load i64, i64* %1591, align 8, !tbaa !7
  %1593 = icmp ne i64 %1592, 0
  br label %1594

; <label>:1594                                    ; preds = %1590, %1582
  %1595 = phi i1 [ false, %1582 ], [ %1593, %1590 ]
  %1596 = zext i1 %1595 to i32
  %1597 = load i16, i16* @g_985, align 2, !tbaa !10
  %1598 = zext i16 %1597 to i32
  %1599 = icmp sgt i32 %1596, %1598
  %1600 = zext i1 %1599 to i32
  %1601 = trunc i32 %1600 to i8
  %1602 = load i16, i16* getelementptr inbounds ([4 x i16], [4 x i16]* @g_183, i32 0, i64 2), align 2, !tbaa !10
  %1603 = sext i16 %1602 to i32
  %1604 = call signext i8 @safe_lshift_func_int8_t_s_s(i8 signext %1601, i32 %1603)
  %1605 = sext i8 %1604 to i32
  %1606 = call zeroext i16 @safe_lshift_func_uint16_t_u_s(i16 zeroext %1559, i32 %1605)
  %1607 = zext i16 %1606 to i64
  %1608 = call i64 @safe_add_func_int64_t_s_s(i64 %1607, i64 -1320261811368744012)
  %1609 = load i32, i32* %l_1157, align 4, !tbaa !1
  %1610 = sext i32 %1609 to i64
  %1611 = icmp ne i64 %1608, %1610
  %1612 = zext i1 %1611 to i32
  %1613 = sext i32 %1612 to i64
  %1614 = icmp ne i64 %1556, %1613
  %1615 = zext i1 %1614 to i32
  %1616 = sext i32 %1615 to i64
  %1617 = icmp sge i64 %1616, 33723
  %1618 = zext i1 %1617 to i32
  %1619 = sext i32 %1618 to i64
  %1620 = or i64 169, %1619
  %1621 = load i32, i32* %l_1174, align 4, !tbaa !1
  %1622 = sext i32 %1621 to i64
  %1623 = xor i64 %1620, %1622
  %1624 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_1161, i32 0, i64 1), align 4, !tbaa !1
  %1625 = sext i32 %1624 to i64
  %1626 = icmp ne i64 %1623, %1625
  %1627 = zext i1 %1626 to i32
  %1628 = trunc i32 %1627 to i8
  %1629 = getelementptr inbounds [3 x [7 x [7 x i32]]], [3 x [7 x [7 x i32]]]* %l_1166, i32 0, i64 2
  %1630 = getelementptr inbounds [7 x [7 x i32]], [7 x [7 x i32]]* %1629, i32 0, i64 4
  %1631 = getelementptr inbounds [7 x i32], [7 x i32]* %1630, i32 0, i64 0
  %1632 = load i32, i32* %1631, align 4, !tbaa !1
  %1633 = trunc i32 %1632 to i8
  %1634 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %1628, i8 signext %1633)
  %1635 = sext i8 %1634 to i16
  %1636 = load i32, i32* %l_1163, align 4, !tbaa !1
  %1637 = call signext i16 @safe_rshift_func_int16_t_s_u(i16 signext %1635, i32 %1636)
  %1638 = trunc i16 %1637 to i8
  %1639 = load i32, i32* @g_91, align 4, !tbaa !1
  %1640 = trunc i32 %1639 to i8
  %1641 = call zeroext i8 @safe_div_func_uint8_t_u_u(i8 zeroext %1638, i8 zeroext %1640)
  %1642 = zext i8 %1641 to i32
  %1643 = load i32, i32* @g_628, align 4, !tbaa !1
  %1644 = xor i32 %1643, %1642
  store i32 %1644, i32* @g_628, align 4, !tbaa !1
  %1645 = bitcast i32* %k20 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1645) #1
  %1646 = bitcast i32* %j19 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1646) #1
  %1647 = bitcast i32* %i18 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1647) #1
  %1648 = bitcast i16** %l_1241 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1648) #1
  %1649 = bitcast [7 x i64*]* %l_1239 to i8*
  call void @llvm.lifetime.end(i64 56, i8* %1649) #1
  %1650 = bitcast [8 x i16]* %l_1214 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %1650) #1
  %1651 = bitcast i16* %l_1175 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %1651) #1
  %1652 = bitcast [3 x [7 x [7 x i32]]]* %l_1166 to i8*
  call void @llvm.lifetime.end(i64 588, i8* %1652) #1
  %1653 = bitcast i32* %l_1163 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1653) #1
  %1654 = bitcast i32* %l_1158 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1654) #1
  %1655 = bitcast i32* %l_1157 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1655) #1
  %1656 = bitcast i32* %l_1156 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1656) #1
  br label %1657

; <label>:1657                                    ; preds = %1594, %1161
  store i32 0, i32* %3
  br label %1658

; <label>:1658                                    ; preds = %1657, %1015
  %1659 = bitcast i32* %i15 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1659) #1
  %1660 = bitcast i16* %l_1240 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %1660) #1
  %1661 = bitcast %union.U0* %l_1217 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1661) #1
  %1662 = bitcast i32** %l_1196 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1662) #1
  %1663 = bitcast i32* %l_1174 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1663) #1
  %1664 = bitcast i32* %l_1169 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1664) #1
  %1665 = bitcast i32* %l_1168 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1665) #1
  %1666 = bitcast i32* %l_1165 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1666) #1
  %1667 = bitcast i32* %l_1159 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1667) #1
  %1668 = bitcast i16** %l_1115 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1668) #1
  %1669 = bitcast [6 x i64]* %l_1114 to i8*
  call void @llvm.lifetime.end(i64 48, i8* %1669) #1
  %cleanup.dest.27 = load i32, i32* %3
  switch i32 %cleanup.dest.27, label %2556 [
    i32 0, label %1670
  ]

; <label>:1670                                    ; preds = %1658
  br label %1671

; <label>:1671                                    ; preds = %1670
  %1672 = load i64, i64* %l_1091, align 8, !tbaa !7
  %1673 = call i64 @safe_add_func_int64_t_s_s(i64 %1672, i64 4)
  store i64 %1673, i64* %l_1091, align 8, !tbaa !7
  br label %990

; <label>:1674                                    ; preds = %990
  store i16 0, i16* %l_992, align 2, !tbaa !10
  br label %1675

; <label>:1675                                    ; preds = %2552, %1674
  %1676 = load i16, i16* %l_992, align 2, !tbaa !10
  %1677 = sext i16 %1676 to i32
  %1678 = icmp sle i32 %1677, 21
  br i1 %1678, label %1679, label %2555

; <label>:1679                                    ; preds = %1675
  call void @llvm.lifetime.start(i64 1, i8* %l_1249) #1
  store i8 -104, i8* %l_1249, align 1, !tbaa !9
  %1680 = bitcast %union.U0* %l_1256 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1680) #1
  %1681 = bitcast %union.U0* %l_1256 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1681, i8* bitcast (%union.U0* @func_1.l_1256 to i8*), i64 8, i32 8, i1 false)
  call void @llvm.lifetime.start(i64 1, i8* %l_1267) #1
  store i8 72, i8* %l_1267, align 1, !tbaa !9
  %1682 = bitcast i32* %l_1274 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1682) #1
  store i32 -277130433, i32* %l_1274, align 4, !tbaa !1
  %1683 = bitcast %union.U0***** %l_1279 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1683) #1
  store %union.U0**** @g_1150, %union.U0***** %l_1279, align 8, !tbaa !5
  %1684 = bitcast i16* %l_1331 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %1684) #1
  store i16 -29983, i16* %l_1331, align 2, !tbaa !10
  %1685 = bitcast i16* %l_1334 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %1685) #1
  store i16 0, i16* %l_1334, align 2, !tbaa !10
  %1686 = bitcast i8*** %l_1376 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1686) #1
  store i8** null, i8*** %l_1376, align 8, !tbaa !5
  %1687 = bitcast i32* %l_1389 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1687) #1
  store i32 1074130078, i32* %l_1389, align 4, !tbaa !1
  %1688 = bitcast [4 x i32]* %l_1390 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1688) #1
  %1689 = bitcast [4 x i32]* %l_1390 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1689, i8* bitcast ([4 x i32]* @func_1.l_1390 to i8*), i64 16, i32 16, i1 false)
  call void @llvm.lifetime.start(i64 1, i8* %l_1391) #1
  store i8 -76, i8* %l_1391, align 1, !tbaa !9
  %1690 = bitcast i32* %l_1392 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1690) #1
  store i32 2128255313, i32* %l_1392, align 4, !tbaa !1
  %1691 = bitcast i32* %i28 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1691) #1
  %1692 = load i32, i32* @g_87, align 4, !tbaa !1
  %1693 = zext i32 %1692 to i64
  %1694 = icmp eq i64 8, %1693
  %1695 = zext i1 %1694 to i32
  %1696 = load i32*, i32** %l_943, align 8, !tbaa !5
  store i32 -1183438220, i32* %1696, align 4, !tbaa !1
  store i8 116, i8* %l_1249, align 1, !tbaa !9
  %1697 = call i32 @safe_add_func_int32_t_s_s(i32 %1695, i32 116)
  %1698 = load volatile i16**, i16*** @g_983, align 8, !tbaa !5
  %1699 = load i16*, i16** %1698, align 8, !tbaa !5
  %1700 = load i16, i16* %1699, align 2, !tbaa !10
  %1701 = add i16 %1700, 1
  store i16 %1701, i16* %1699, align 2, !tbaa !10
  %1702 = load i32*, i32** %l_940, align 8, !tbaa !5
  %1703 = load i32, i32* %1702, align 4, !tbaa !1
  %1704 = call zeroext i16 @safe_lshift_func_uint16_t_u_u(i16 zeroext %1701, i32 %1703)
  %1705 = zext i16 %1704 to i32
  %1706 = load %union.U0****, %union.U0***** @g_1149, align 8, !tbaa !5
  %1707 = load %union.U0***, %union.U0**** %1706, align 8, !tbaa !5
  %1708 = icmp eq %union.U0*** %1707, null
  br i1 %1708, label %1713, label %1709

; <label>:1709                                    ; preds = %1679
  %1710 = load i32*, i32** %l_940, align 8, !tbaa !5
  %1711 = load i32, i32* %1710, align 4, !tbaa !1
  %1712 = icmp ne i32 %1711, 0
  br label %1713

; <label>:1713                                    ; preds = %1709, %1679
  %1714 = phi i1 [ true, %1679 ], [ %1712, %1709 ]
  %1715 = zext i1 %1714 to i32
  %1716 = trunc i32 %1715 to i8
  %1717 = load i8*, i8** %l_1101, align 8, !tbaa !5
  store i8 %1716, i8* %1717, align 1, !tbaa !9
  %1718 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %1716, i8 zeroext 1)
  %1719 = bitcast %union.U0* %l_1256 to i64*
  %1720 = load i64, i64* %1719, align 8, !tbaa !7
  %1721 = trunc i64 %1720 to i32
  %1722 = call i32 @safe_unary_minus_func_int32_t_s(i32 %1721)
  %1723 = sext i32 %1722 to i64
  %1724 = icmp sge i64 48875, %1723
  %1725 = zext i1 %1724 to i32
  %1726 = sext i32 %1725 to i64
  %1727 = load i64, i64* @g_578, align 8, !tbaa !7
  %1728 = call i64 @safe_mod_func_uint64_t_u_u(i64 %1726, i64 %1727)
  %1729 = load i64, i64* @g_246, align 8, !tbaa !7
  %1730 = icmp ne i8** @g_226, %l_1101
  %1731 = zext i1 %1730 to i32
  %1732 = icmp slt i32 %1705, %1731
  %1733 = zext i1 %1732 to i32
  %1734 = trunc i32 %1733 to i8
  %1735 = load i8, i8* @g_512, align 1, !tbaa !9
  %1736 = sext i8 %1735 to i32
  %1737 = call zeroext i8 @safe_rshift_func_uint8_t_u_s(i8 zeroext %1734, i32 %1736)
  %1738 = zext i8 %1737 to i32
  %1739 = icmp ne i32 %1738, 0
  br i1 %1739, label %1740, label %1741

; <label>:1740                                    ; preds = %1713
  br label %1741

; <label>:1741                                    ; preds = %1740, %1713
  %1742 = phi i1 [ false, %1713 ], [ true, %1740 ]
  %1743 = zext i1 %1742 to i32
  %1744 = sext i32 %1743 to i64
  %1745 = icmp eq i64 1, %1744
  %1746 = zext i1 %1745 to i32
  %1747 = sext i32 %1746 to i64
  %1748 = icmp uge i64 %1747, 4294967295
  %1749 = zext i1 %1748 to i32
  %1750 = or i32 %1697, %1749
  %1751 = icmp ne i32 %1750, 0
  br i1 %1751, label %1752, label %1756

; <label>:1752                                    ; preds = %1741
  %1753 = bitcast %union.U0* %l_1256 to i64*
  %1754 = load i64, i64* %1753, align 8, !tbaa !7
  %1755 = icmp ne i64 %1754, 0
  br label %1756

; <label>:1756                                    ; preds = %1752, %1741
  %1757 = phi i1 [ false, %1741 ], [ %1755, %1752 ]
  %1758 = zext i1 %1757 to i32
  %1759 = sext i32 %1758 to i64
  %1760 = bitcast %union.U0* %l_1256 to i64*
  %1761 = load i64, i64* %1760, align 8, !tbaa !7
  %1762 = or i64 %1759, %1761
  %1763 = trunc i64 %1762 to i16
  %1764 = call signext i16 @safe_lshift_func_int16_t_s_u(i16 signext %1763, i32 3)
  %1765 = icmp ne i16 %1764, 0
  br i1 %1765, label %2300, label %1766

; <label>:1766                                    ; preds = %1756
  %1767 = bitcast [4 x i32]* %l_1268 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1767) #1
  %1768 = bitcast i16** %l_1272 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1768) #1
  store i16* null, i16** %l_1272, align 8, !tbaa !5
  %1769 = bitcast [7 x i16*]* %l_1273 to i8*
  call void @llvm.lifetime.start(i64 56, i8* %1769) #1
  %1770 = bitcast [2 x [8 x [5 x %union.U0****]]]* %l_1280 to i8*
  call void @llvm.lifetime.start(i64 640, i8* %1770) #1
  %1771 = getelementptr inbounds [2 x [8 x [5 x %union.U0****]]], [2 x [8 x [5 x %union.U0****]]]* %l_1280, i64 0, i64 0
  %1772 = getelementptr inbounds [8 x [5 x %union.U0****]], [8 x [5 x %union.U0****]]* %1771, i64 0, i64 0
  %1773 = getelementptr inbounds [5 x %union.U0****], [5 x %union.U0****]* %1772, i64 0, i64 0
  store %union.U0**** @g_1150, %union.U0***** %1773, !tbaa !5
  %1774 = getelementptr inbounds %union.U0****, %union.U0***** %1773, i64 1
  store %union.U0**** @g_1150, %union.U0***** %1774, !tbaa !5
  %1775 = getelementptr inbounds %union.U0****, %union.U0***** %1774, i64 1
  store %union.U0**** @g_1150, %union.U0***** %1775, !tbaa !5
  %1776 = getelementptr inbounds %union.U0****, %union.U0***** %1775, i64 1
  store %union.U0**** @g_1150, %union.U0***** %1776, !tbaa !5
  %1777 = getelementptr inbounds %union.U0****, %union.U0***** %1776, i64 1
  store %union.U0**** @g_1150, %union.U0***** %1777, !tbaa !5
  %1778 = getelementptr inbounds [5 x %union.U0****], [5 x %union.U0****]* %1772, i64 1
  %1779 = getelementptr inbounds [5 x %union.U0****], [5 x %union.U0****]* %1778, i64 0, i64 0
  store %union.U0**** %l_1098, %union.U0***** %1779, !tbaa !5
  %1780 = getelementptr inbounds %union.U0****, %union.U0***** %1779, i64 1
  store %union.U0**** @g_1150, %union.U0***** %1780, !tbaa !5
  %1781 = getelementptr inbounds %union.U0****, %union.U0***** %1780, i64 1
  store %union.U0**** @g_1150, %union.U0***** %1781, !tbaa !5
  %1782 = getelementptr inbounds %union.U0****, %union.U0***** %1781, i64 1
  store %union.U0**** %l_1098, %union.U0***** %1782, !tbaa !5
  %1783 = getelementptr inbounds %union.U0****, %union.U0***** %1782, i64 1
  store %union.U0**** %l_1098, %union.U0***** %1783, !tbaa !5
  %1784 = getelementptr inbounds [5 x %union.U0****], [5 x %union.U0****]* %1778, i64 1
  %1785 = getelementptr inbounds [5 x %union.U0****], [5 x %union.U0****]* %1784, i64 0, i64 0
  store %union.U0**** @g_1150, %union.U0***** %1785, !tbaa !5
  %1786 = getelementptr inbounds %union.U0****, %union.U0***** %1785, i64 1
  store %union.U0**** null, %union.U0***** %1786, !tbaa !5
  %1787 = getelementptr inbounds %union.U0****, %union.U0***** %1786, i64 1
  store %union.U0**** @g_1150, %union.U0***** %1787, !tbaa !5
  %1788 = getelementptr inbounds %union.U0****, %union.U0***** %1787, i64 1
  store %union.U0**** @g_1150, %union.U0***** %1788, !tbaa !5
  %1789 = getelementptr inbounds %union.U0****, %union.U0***** %1788, i64 1
  store %union.U0**** %l_1098, %union.U0***** %1789, !tbaa !5
  %1790 = getelementptr inbounds [5 x %union.U0****], [5 x %union.U0****]* %1784, i64 1
  %1791 = getelementptr inbounds [5 x %union.U0****], [5 x %union.U0****]* %1790, i64 0, i64 0
  store %union.U0**** %l_1098, %union.U0***** %1791, !tbaa !5
  %1792 = getelementptr inbounds %union.U0****, %union.U0***** %1791, i64 1
  store %union.U0**** %l_1098, %union.U0***** %1792, !tbaa !5
  %1793 = getelementptr inbounds %union.U0****, %union.U0***** %1792, i64 1
  store %union.U0**** @g_1150, %union.U0***** %1793, !tbaa !5
  %1794 = getelementptr inbounds %union.U0****, %union.U0***** %1793, i64 1
  store %union.U0**** %l_1098, %union.U0***** %1794, !tbaa !5
  %1795 = getelementptr inbounds %union.U0****, %union.U0***** %1794, i64 1
  store %union.U0**** %l_1098, %union.U0***** %1795, !tbaa !5
  %1796 = getelementptr inbounds [5 x %union.U0****], [5 x %union.U0****]* %1790, i64 1
  %1797 = getelementptr inbounds [5 x %union.U0****], [5 x %union.U0****]* %1796, i64 0, i64 0
  store %union.U0**** %l_1098, %union.U0***** %1797, !tbaa !5
  %1798 = getelementptr inbounds %union.U0****, %union.U0***** %1797, i64 1
  store %union.U0**** @g_1150, %union.U0***** %1798, !tbaa !5
  %1799 = getelementptr inbounds %union.U0****, %union.U0***** %1798, i64 1
  store %union.U0**** %l_1098, %union.U0***** %1799, !tbaa !5
  %1800 = getelementptr inbounds %union.U0****, %union.U0***** %1799, i64 1
  store %union.U0**** @g_1150, %union.U0***** %1800, !tbaa !5
  %1801 = getelementptr inbounds %union.U0****, %union.U0***** %1800, i64 1
  store %union.U0**** null, %union.U0***** %1801, !tbaa !5
  %1802 = getelementptr inbounds [5 x %union.U0****], [5 x %union.U0****]* %1796, i64 1
  %1803 = getelementptr inbounds [5 x %union.U0****], [5 x %union.U0****]* %1802, i64 0, i64 0
  store %union.U0**** %l_1098, %union.U0***** %1803, !tbaa !5
  %1804 = getelementptr inbounds %union.U0****, %union.U0***** %1803, i64 1
  store %union.U0**** %l_1098, %union.U0***** %1804, !tbaa !5
  %1805 = getelementptr inbounds %union.U0****, %union.U0***** %1804, i64 1
  store %union.U0**** %l_1098, %union.U0***** %1805, !tbaa !5
  %1806 = getelementptr inbounds %union.U0****, %union.U0***** %1805, i64 1
  store %union.U0**** %l_1098, %union.U0***** %1806, !tbaa !5
  %1807 = getelementptr inbounds %union.U0****, %union.U0***** %1806, i64 1
  store %union.U0**** %l_1098, %union.U0***** %1807, !tbaa !5
  %1808 = getelementptr inbounds [5 x %union.U0****], [5 x %union.U0****]* %1802, i64 1
  %1809 = getelementptr inbounds [5 x %union.U0****], [5 x %union.U0****]* %1808, i64 0, i64 0
  store %union.U0**** null, %union.U0***** %1809, !tbaa !5
  %1810 = getelementptr inbounds %union.U0****, %union.U0***** %1809, i64 1
  store %union.U0**** @g_1150, %union.U0***** %1810, !tbaa !5
  %1811 = getelementptr inbounds %union.U0****, %union.U0***** %1810, i64 1
  store %union.U0**** @g_1150, %union.U0***** %1811, !tbaa !5
  %1812 = getelementptr inbounds %union.U0****, %union.U0***** %1811, i64 1
  store %union.U0**** @g_1150, %union.U0***** %1812, !tbaa !5
  %1813 = getelementptr inbounds %union.U0****, %union.U0***** %1812, i64 1
  store %union.U0**** null, %union.U0***** %1813, !tbaa !5
  %1814 = getelementptr inbounds [5 x %union.U0****], [5 x %union.U0****]* %1808, i64 1
  %1815 = getelementptr inbounds [5 x %union.U0****], [5 x %union.U0****]* %1814, i64 0, i64 0
  store %union.U0**** %l_1098, %union.U0***** %1815, !tbaa !5
  %1816 = getelementptr inbounds %union.U0****, %union.U0***** %1815, i64 1
  store %union.U0**** %l_1098, %union.U0***** %1816, !tbaa !5
  %1817 = getelementptr inbounds %union.U0****, %union.U0***** %1816, i64 1
  store %union.U0**** %l_1098, %union.U0***** %1817, !tbaa !5
  %1818 = getelementptr inbounds %union.U0****, %union.U0***** %1817, i64 1
  store %union.U0**** %l_1098, %union.U0***** %1818, !tbaa !5
  %1819 = getelementptr inbounds %union.U0****, %union.U0***** %1818, i64 1
  store %union.U0**** %l_1098, %union.U0***** %1819, !tbaa !5
  %1820 = getelementptr inbounds [8 x [5 x %union.U0****]], [8 x [5 x %union.U0****]]* %1771, i64 1
  %1821 = getelementptr inbounds [8 x [5 x %union.U0****]], [8 x [5 x %union.U0****]]* %1820, i64 0, i64 0
  %1822 = getelementptr inbounds [5 x %union.U0****], [5 x %union.U0****]* %1821, i64 0, i64 0
  store %union.U0**** null, %union.U0***** %1822, !tbaa !5
  %1823 = getelementptr inbounds %union.U0****, %union.U0***** %1822, i64 1
  store %union.U0**** @g_1150, %union.U0***** %1823, !tbaa !5
  %1824 = getelementptr inbounds %union.U0****, %union.U0***** %1823, i64 1
  store %union.U0**** %l_1098, %union.U0***** %1824, !tbaa !5
  %1825 = getelementptr inbounds %union.U0****, %union.U0***** %1824, i64 1
  store %union.U0**** @g_1150, %union.U0***** %1825, !tbaa !5
  %1826 = getelementptr inbounds %union.U0****, %union.U0***** %1825, i64 1
  store %union.U0**** %l_1098, %union.U0***** %1826, !tbaa !5
  %1827 = getelementptr inbounds [5 x %union.U0****], [5 x %union.U0****]* %1821, i64 1
  %1828 = getelementptr inbounds [5 x %union.U0****], [5 x %union.U0****]* %1827, i64 0, i64 0
  store %union.U0**** %l_1098, %union.U0***** %1828, !tbaa !5
  %1829 = getelementptr inbounds %union.U0****, %union.U0***** %1828, i64 1
  store %union.U0**** %l_1098, %union.U0***** %1829, !tbaa !5
  %1830 = getelementptr inbounds %union.U0****, %union.U0***** %1829, i64 1
  store %union.U0**** @g_1150, %union.U0***** %1830, !tbaa !5
  %1831 = getelementptr inbounds %union.U0****, %union.U0***** %1830, i64 1
  store %union.U0**** %l_1098, %union.U0***** %1831, !tbaa !5
  %1832 = getelementptr inbounds %union.U0****, %union.U0***** %1831, i64 1
  store %union.U0**** %l_1098, %union.U0***** %1832, !tbaa !5
  %1833 = getelementptr inbounds [5 x %union.U0****], [5 x %union.U0****]* %1827, i64 1
  %1834 = getelementptr inbounds [5 x %union.U0****], [5 x %union.U0****]* %1833, i64 0, i64 0
  store %union.U0**** %l_1098, %union.U0***** %1834, !tbaa !5
  %1835 = getelementptr inbounds %union.U0****, %union.U0***** %1834, i64 1
  store %union.U0**** @g_1150, %union.U0***** %1835, !tbaa !5
  %1836 = getelementptr inbounds %union.U0****, %union.U0***** %1835, i64 1
  store %union.U0**** %l_1098, %union.U0***** %1836, !tbaa !5
  %1837 = getelementptr inbounds %union.U0****, %union.U0***** %1836, i64 1
  store %union.U0**** @g_1150, %union.U0***** %1837, !tbaa !5
  %1838 = getelementptr inbounds %union.U0****, %union.U0***** %1837, i64 1
  store %union.U0**** null, %union.U0***** %1838, !tbaa !5
  %1839 = getelementptr inbounds [5 x %union.U0****], [5 x %union.U0****]* %1833, i64 1
  %1840 = getelementptr inbounds [5 x %union.U0****], [5 x %union.U0****]* %1839, i64 0, i64 0
  store %union.U0**** %l_1098, %union.U0***** %1840, !tbaa !5
  %1841 = getelementptr inbounds %union.U0****, %union.U0***** %1840, i64 1
  store %union.U0**** %l_1098, %union.U0***** %1841, !tbaa !5
  %1842 = getelementptr inbounds %union.U0****, %union.U0***** %1841, i64 1
  store %union.U0**** %l_1098, %union.U0***** %1842, !tbaa !5
  %1843 = getelementptr inbounds %union.U0****, %union.U0***** %1842, i64 1
  store %union.U0**** %l_1098, %union.U0***** %1843, !tbaa !5
  %1844 = getelementptr inbounds %union.U0****, %union.U0***** %1843, i64 1
  store %union.U0**** %l_1098, %union.U0***** %1844, !tbaa !5
  %1845 = getelementptr inbounds [5 x %union.U0****], [5 x %union.U0****]* %1839, i64 1
  %1846 = getelementptr inbounds [5 x %union.U0****], [5 x %union.U0****]* %1845, i64 0, i64 0
  store %union.U0**** null, %union.U0***** %1846, !tbaa !5
  %1847 = getelementptr inbounds %union.U0****, %union.U0***** %1846, i64 1
  store %union.U0**** @g_1150, %union.U0***** %1847, !tbaa !5
  %1848 = getelementptr inbounds %union.U0****, %union.U0***** %1847, i64 1
  store %union.U0**** @g_1150, %union.U0***** %1848, !tbaa !5
  %1849 = getelementptr inbounds %union.U0****, %union.U0***** %1848, i64 1
  store %union.U0**** @g_1150, %union.U0***** %1849, !tbaa !5
  %1850 = getelementptr inbounds %union.U0****, %union.U0***** %1849, i64 1
  store %union.U0**** null, %union.U0***** %1850, !tbaa !5
  %1851 = getelementptr inbounds [5 x %union.U0****], [5 x %union.U0****]* %1845, i64 1
  %1852 = getelementptr inbounds [5 x %union.U0****], [5 x %union.U0****]* %1851, i64 0, i64 0
  store %union.U0**** %l_1098, %union.U0***** %1852, !tbaa !5
  %1853 = getelementptr inbounds %union.U0****, %union.U0***** %1852, i64 1
  store %union.U0**** %l_1098, %union.U0***** %1853, !tbaa !5
  %1854 = getelementptr inbounds %union.U0****, %union.U0***** %1853, i64 1
  store %union.U0**** %l_1098, %union.U0***** %1854, !tbaa !5
  %1855 = getelementptr inbounds %union.U0****, %union.U0***** %1854, i64 1
  store %union.U0**** %l_1098, %union.U0***** %1855, !tbaa !5
  %1856 = getelementptr inbounds %union.U0****, %union.U0***** %1855, i64 1
  store %union.U0**** %l_1098, %union.U0***** %1856, !tbaa !5
  %1857 = getelementptr inbounds [5 x %union.U0****], [5 x %union.U0****]* %1851, i64 1
  %1858 = getelementptr inbounds [5 x %union.U0****], [5 x %union.U0****]* %1857, i64 0, i64 0
  store %union.U0**** null, %union.U0***** %1858, !tbaa !5
  %1859 = getelementptr inbounds %union.U0****, %union.U0***** %1858, i64 1
  store %union.U0**** @g_1150, %union.U0***** %1859, !tbaa !5
  %1860 = getelementptr inbounds %union.U0****, %union.U0***** %1859, i64 1
  store %union.U0**** %l_1098, %union.U0***** %1860, !tbaa !5
  %1861 = getelementptr inbounds %union.U0****, %union.U0***** %1860, i64 1
  store %union.U0**** @g_1150, %union.U0***** %1861, !tbaa !5
  %1862 = getelementptr inbounds %union.U0****, %union.U0***** %1861, i64 1
  store %union.U0**** %l_1098, %union.U0***** %1862, !tbaa !5
  %1863 = getelementptr inbounds [5 x %union.U0****], [5 x %union.U0****]* %1857, i64 1
  %1864 = getelementptr inbounds [5 x %union.U0****], [5 x %union.U0****]* %1863, i64 0, i64 0
  store %union.U0**** %l_1098, %union.U0***** %1864, !tbaa !5
  %1865 = getelementptr inbounds %union.U0****, %union.U0***** %1864, i64 1
  store %union.U0**** %l_1098, %union.U0***** %1865, !tbaa !5
  %1866 = getelementptr inbounds %union.U0****, %union.U0***** %1865, i64 1
  store %union.U0**** @g_1150, %union.U0***** %1866, !tbaa !5
  %1867 = getelementptr inbounds %union.U0****, %union.U0***** %1866, i64 1
  store %union.U0**** %l_1098, %union.U0***** %1867, !tbaa !5
  %1868 = getelementptr inbounds %union.U0****, %union.U0***** %1867, i64 1
  store %union.U0**** %l_1098, %union.U0***** %1868, !tbaa !5
  %1869 = bitcast [3 x [4 x [8 x i32]]]* %l_1292 to i8*
  call void @llvm.lifetime.start(i64 384, i8* %1869) #1
  %1870 = bitcast [3 x [4 x [8 x i32]]]* %l_1292 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1870, i8* bitcast ([3 x [4 x [8 x i32]]]* @func_1.l_1292 to i8*), i64 384, i32 16, i1 false)
  %1871 = bitcast i64* %l_1296 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1871) #1
  store i64 -7559517567075081080, i64* %l_1296, align 8, !tbaa !7
  %1872 = bitcast i64** %l_1301 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1872) #1
  store i64* null, i64** %l_1301, align 8, !tbaa !5
  %1873 = bitcast i64** %l_1302 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1873) #1
  store i64* @g_314, i64** %l_1302, align 8, !tbaa !5
  %1874 = bitcast i16* %l_1309 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %1874) #1
  store i16 -10, i16* %l_1309, align 2, !tbaa !10
  %1875 = bitcast i16** %l_1310 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1875) #1
  store i16* getelementptr inbounds ([3 x i16], [3 x i16]* @g_201, i32 0, i64 1), i16** %l_1310, align 8, !tbaa !5
  %1876 = bitcast %union.U0* %l_1335 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1876) #1
  %1877 = bitcast %union.U0* %l_1335 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1877, i8* bitcast (%union.U0* @func_1.l_1335 to i8*), i64 8, i32 8, i1 false)
  %1878 = bitcast i32* %i29 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1878) #1
  %1879 = bitcast i32* %j30 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1879) #1
  %1880 = bitcast i32* %k31 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1880) #1
  store i32 0, i32* %i29, align 4, !tbaa !1
  br label %1881

; <label>:1881                                    ; preds = %1888, %1766
  %1882 = load i32, i32* %i29, align 4, !tbaa !1
  %1883 = icmp slt i32 %1882, 4
  br i1 %1883, label %1884, label %1891

; <label>:1884                                    ; preds = %1881
  %1885 = load i32, i32* %i29, align 4, !tbaa !1
  %1886 = sext i32 %1885 to i64
  %1887 = getelementptr inbounds [4 x i32], [4 x i32]* %l_1268, i32 0, i64 %1886
  store i32 1946959687, i32* %1887, align 4, !tbaa !1
  br label %1888

; <label>:1888                                    ; preds = %1884
  %1889 = load i32, i32* %i29, align 4, !tbaa !1
  %1890 = add nsw i32 %1889, 1
  store i32 %1890, i32* %i29, align 4, !tbaa !1
  br label %1881

; <label>:1891                                    ; preds = %1881
  store i32 0, i32* %i29, align 4, !tbaa !1
  br label %1892

; <label>:1892                                    ; preds = %1900, %1891
  %1893 = load i32, i32* %i29, align 4, !tbaa !1
  %1894 = icmp slt i32 %1893, 7
  br i1 %1894, label %1895, label %1903

; <label>:1895                                    ; preds = %1892
  %1896 = getelementptr inbounds [6 x i16], [6 x i16]* %l_1108, i32 0, i64 0
  %1897 = load i32, i32* %i29, align 4, !tbaa !1
  %1898 = sext i32 %1897 to i64
  %1899 = getelementptr inbounds [7 x i16*], [7 x i16*]* %l_1273, i32 0, i64 %1898
  store i16* %1896, i16** %1899, align 8, !tbaa !5
  br label %1900

; <label>:1900                                    ; preds = %1895
  %1901 = load i32, i32* %i29, align 4, !tbaa !1
  %1902 = add nsw i32 %1901, 1
  store i32 %1902, i32* %i29, align 4, !tbaa !1
  br label %1892

; <label>:1903                                    ; preds = %1892
  %1904 = load i8, i8* %l_1267, align 1, !tbaa !9
  %1905 = getelementptr inbounds [4 x i32], [4 x i32]* %l_1268, i32 0, i64 3
  %1906 = load i32, i32* %1905, align 4, !tbaa !1
  %1907 = add i32 %1906, -1
  store i32 %1907, i32* %1905, align 4, !tbaa !1
  %1908 = trunc i32 %1907 to i8
  %1909 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %1904, i8 signext %1908)
  %1910 = sext i8 %1909 to i64
  %1911 = call i64 @safe_unary_minus_func_int64_t_s(i64 %1910)
  %1912 = trunc i64 %1911 to i8
  %1913 = getelementptr inbounds [3 x [1 x i32]], [3 x [1 x i32]]* %l_1271, i32 0, i64 1
  %1914 = getelementptr inbounds [1 x i32], [1 x i32]* %1913, i32 0, i64 0
  %1915 = load i32, i32* %1914, align 4, !tbaa !1
  %1916 = icmp ne i32 %1915, 0
  br i1 %1916, label %1918, label %1917

; <label>:1917                                    ; preds = %1903
  br label %1918

; <label>:1918                                    ; preds = %1917, %1903
  %1919 = phi i1 [ true, %1903 ], [ true, %1917 ]
  %1920 = zext i1 %1919 to i32
  %1921 = load i16*, i16** @g_984, align 8, !tbaa !5
  %1922 = load i16, i16* %1921, align 2, !tbaa !10
  %1923 = zext i16 %1922 to i32
  %1924 = or i32 %1923, %1920
  %1925 = trunc i32 %1924 to i16
  store i16 %1925, i16* %1921, align 2, !tbaa !10
  %1926 = zext i16 %1925 to i32
  store i32 %1926, i32* %l_1274, align 4, !tbaa !1
  %1927 = sext i32 %1926 to i64
  %1928 = or i64 -1, %1927
  %1929 = load i32*, i32** %l_940, align 8, !tbaa !5
  %1930 = load i32, i32* %1929, align 4, !tbaa !1
  br i1 true, label %1931, label %1935

; <label>:1931                                    ; preds = %1918
  %1932 = load i32*, i32** %l_940, align 8, !tbaa !5
  %1933 = load i32, i32* %1932, align 4, !tbaa !1
  %1934 = icmp ne i32 %1933, 0
  br label %1935

; <label>:1935                                    ; preds = %1931, %1918
  %1936 = phi i1 [ false, %1918 ], [ %1934, %1931 ]
  %1937 = zext i1 %1936 to i32
  %1938 = call zeroext i8 @safe_rshift_func_uint8_t_u_s(i8 zeroext 0, i32 %1937)
  %1939 = load %union.U0***, %union.U0**** @g_1150, align 8, !tbaa !5
  %1940 = load %union.U0**, %union.U0*** %1939, align 8, !tbaa !5
  %1941 = load %union.U0*, %union.U0** %1940, align 8, !tbaa !5
  %1942 = load %union.U0****, %union.U0***** %l_1279, align 8, !tbaa !5
  %1943 = getelementptr inbounds [2 x [8 x [5 x %union.U0****]]], [2 x [8 x [5 x %union.U0****]]]* %l_1280, i32 0, i64 1
  %1944 = getelementptr inbounds [8 x [5 x %union.U0****]], [8 x [5 x %union.U0****]]* %1943, i32 0, i64 1
  %1945 = getelementptr inbounds [5 x %union.U0****], [5 x %union.U0****]* %1944, i32 0, i64 1
  %1946 = load %union.U0****, %union.U0***** %1945, align 8, !tbaa !5
  %1947 = icmp ne %union.U0**** %1942, %1946
  %1948 = zext i1 %1947 to i32
  %1949 = trunc i32 %1948 to i8
  %1950 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %1938, i8 zeroext %1949)
  %1951 = zext i8 %1950 to i64
  %1952 = icmp ne i64 %1928, %1951
  %1953 = zext i1 %1952 to i32
  %1954 = trunc i32 %1953 to i8
  %1955 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %1912, i8 zeroext %1954)
  %1956 = zext i8 %1955 to i32
  %1957 = load i32*, i32** %l_940, align 8, !tbaa !5
  store i32 %1956, i32* %1957, align 4, !tbaa !1
  %1958 = load volatile i64, i64* @g_1291, align 8, !tbaa !7
  %1959 = load i32, i32* @g_94, align 4, !tbaa !1
  %1960 = zext i32 %1959 to i64
  %1961 = icmp ult i64 %1958, %1960
  %1962 = zext i1 %1961 to i32
  %1963 = trunc i32 %1962 to i16
  %1964 = getelementptr inbounds [3 x [4 x [8 x i32]]], [3 x [4 x [8 x i32]]]* %l_1292, i32 0, i64 0
  %1965 = getelementptr inbounds [4 x [8 x i32]], [4 x [8 x i32]]* %1964, i32 0, i64 3
  %1966 = getelementptr inbounds [8 x i32], [8 x i32]* %1965, i32 0, i64 0
  %1967 = load i32, i32* %1966, align 4, !tbaa !1
  %1968 = load i64, i64* %l_1296, align 8, !tbaa !7
  %1969 = and i64 %1968, 0
  store i64 %1969, i64* %l_1296, align 8, !tbaa !7
  %1970 = trunc i64 %1969 to i8
  %1971 = bitcast %union.U0* %l_1256 to i64*
  %1972 = load i64, i64* %1971, align 8, !tbaa !7
  %1973 = icmp ne i64 -6469431041116775060, %1972
  %1974 = zext i1 %1973 to i32
  %1975 = sext i32 %1974 to i64
  %1976 = load i64*, i64** %l_1302, align 8, !tbaa !5
  %1977 = load i64, i64* %1976, align 8, !tbaa !7
  %1978 = and i64 %1977, %1975
  store i64 %1978, i64* %1976, align 8, !tbaa !7
  %1979 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_1161, i32 0, i64 1), align 4, !tbaa !1
  %1980 = load i8*, i8** %l_1101, align 8, !tbaa !5
  %1981 = load i8, i8* %1980, align 1, !tbaa !9
  %1982 = zext i8 %1981 to i32
  %1983 = xor i32 %1982, %1979
  %1984 = trunc i32 %1983 to i8
  store i8 %1984, i8* %1980, align 1, !tbaa !9
  %1985 = zext i8 %1984 to i64
  %1986 = load i8, i8* %l_1267, align 1, !tbaa !9
  %1987 = zext i8 %1986 to i64
  %1988 = load i64, i64* @g_243, align 8, !tbaa !7
  %1989 = or i64 %1987, %1988
  %1990 = trunc i64 %1989 to i16
  %1991 = call signext i16 @safe_lshift_func_int16_t_s_s(i16 signext %1990, i32 2)
  %1992 = icmp ne i64 %1985, 255
  br i1 %1992, label %1993, label %1996

; <label>:1993                                    ; preds = %1935
  %1994 = load i32, i32* getelementptr inbounds ([7 x [1 x [4 x i32]]], [7 x [1 x [4 x i32]]]* @g_513, i32 0, i64 1, i64 0, i64 2), align 4, !tbaa !1
  %1995 = icmp ne i32 %1994, 0
  br label %1996

; <label>:1996                                    ; preds = %1993, %1935
  %1997 = phi i1 [ false, %1935 ], [ %1995, %1993 ]
  %1998 = zext i1 %1997 to i32
  %1999 = trunc i32 %1998 to i8
  %2000 = load i8, i8* @g_512, align 1, !tbaa !9
  %2001 = call signext i8 @safe_add_func_int8_t_s_s(i8 signext %1999, i8 signext %2000)
  %2002 = sext i8 %2001 to i16
  %2003 = load i32, i32* @g_631, align 4, !tbaa !1
  %2004 = trunc i32 %2003 to i16
  %2005 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %2002, i16 zeroext %2004)
  %2006 = zext i16 %2005 to i64
  %2007 = call i64 @safe_sub_func_uint64_t_u_u(i64 %1978, i64 %2006)
  %2008 = trunc i64 %2007 to i8
  %2009 = load i16, i16* %l_1309, align 2, !tbaa !10
  %2010 = trunc i16 %2009 to i8
  %2011 = call signext i8 @safe_sub_func_int8_t_s_s(i8 signext %2008, i8 signext %2010)
  %2012 = sext i8 %2011 to i32
  %2013 = load i16*, i16** %l_1310, align 8, !tbaa !5
  %2014 = load i16, i16* %2013, align 2, !tbaa !10
  %2015 = sext i16 %2014 to i32
  %2016 = and i32 %2015, %2012
  %2017 = trunc i32 %2016 to i16
  store i16 %2017, i16* %2013, align 2, !tbaa !10
  %2018 = load i32, i32* getelementptr inbounds ([2 x [9 x i32]], [2 x [9 x i32]]* @g_935, i32 0, i64 1, i64 1), align 4, !tbaa !1
  %2019 = call zeroext i8 @safe_rshift_func_uint8_t_u_u(i8 zeroext %1970, i32 %2018)
  %2020 = zext i8 %2019 to i32
  %2021 = icmp sle i32 %1967, %2020
  %2022 = zext i1 %2021 to i32
  %2023 = trunc i32 %2022 to i16
  %2024 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %1963, i16 zeroext %2023)
  %2025 = trunc i16 %2024 to i8
  %2026 = call signext i8 @safe_lshift_func_int8_t_s_s(i8 signext %2025, i32 2)
  %2027 = sext i8 %2026 to i16
  %2028 = bitcast %union.U0* %l_1256 to i64*
  %2029 = load i64, i64* %2028, align 8, !tbaa !7
  %2030 = trunc i64 %2029 to i16
  %2031 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %2027, i16 signext %2030)
  %2032 = sext i16 %2031 to i64
  %2033 = load i64*, i64** @g_143, align 8, !tbaa !5
  %2034 = load i64, i64* %2033, align 8, !tbaa !7
  %2035 = call i64 @safe_add_func_int64_t_s_s(i64 %2032, i64 %2034)
  %2036 = trunc i64 %2035 to i32
  %2037 = getelementptr inbounds [4 x i32], [4 x i32]* %l_1268, i32 0, i64 3
  %2038 = load i32, i32* %2037, align 4, !tbaa !1
  %2039 = call i32 @safe_div_func_uint32_t_u_u(i32 %2036, i32 %2038)
  store i32 %2039, i32* %l_1274, align 4, !tbaa !1
  %2040 = load i8, i8* %l_1267, align 1, !tbaa !9
  %2041 = icmp ne i8 %2040, 0
  br i1 %2041, label %2042, label %2058

; <label>:2042                                    ; preds = %1996
  %2043 = getelementptr inbounds [3 x [4 x [8 x i32]]], [3 x [4 x [8 x i32]]]* %l_1292, i32 0, i64 0
  %2044 = getelementptr inbounds [4 x [8 x i32]], [4 x [8 x i32]]* %2043, i32 0, i64 3
  %2045 = getelementptr inbounds [8 x i32], [8 x i32]* %2044, i32 0, i64 0
  %2046 = load i32**, i32*** @g_591, align 8, !tbaa !5
  store i32* %2045, i32** %2046, align 8, !tbaa !5
  %2047 = load i32**, i32*** @g_591, align 8, !tbaa !5
  %2048 = load i32*, i32** %2047, align 8, !tbaa !5
  %2049 = load i32***, i32**** @g_1043, align 8, !tbaa !5
  %2050 = load i32**, i32*** %2049, align 8, !tbaa !5
  store i32* %2048, i32** %2050, align 8, !tbaa !5
  %2051 = load i32*, i32** %l_940, align 8, !tbaa !5
  %2052 = load i32, i32* %2051, align 4, !tbaa !1
  %2053 = icmp ne i32 %2052, 0
  br i1 %2053, label %2054, label %2055

; <label>:2054                                    ; preds = %2042
  store i32 72, i32* %3
  br label %2284

; <label>:2055                                    ; preds = %2042
  %2056 = load i64*, i64** @g_143, align 8, !tbaa !5
  %2057 = load i64, i64* %2056, align 8, !tbaa !7
  store i64 %2057, i64* %1
  store i32 1, i32* %3
  br label %2284

; <label>:2058                                    ; preds = %1996
  %2059 = bitcast i32* %l_1313 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2059) #1
  store i32 1, i32* %l_1313, align 4, !tbaa !1
  store i32 26, i32* @g_87, align 4, !tbaa !1
  br label %2060

; <label>:2060                                    ; preds = %2186, %2058
  %2061 = load i32, i32* @g_87, align 4, !tbaa !1
  %2062 = icmp eq i32 %2061, 7
  br i1 %2062, label %2063, label %2189

; <label>:2063                                    ; preds = %2060
  %2064 = bitcast [4 x i32]* %l_1314 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %2064) #1
  %2065 = bitcast i64*** %l_1327 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2065) #1
  store i64** null, i64*** %l_1327, align 8, !tbaa !5
  %2066 = bitcast i64** %l_1329 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2066) #1
  store i64* @g_578, i64** %l_1329, align 8, !tbaa !5
  %2067 = bitcast [9 x i64**]* %l_1328 to i8*
  call void @llvm.lifetime.start(i64 72, i8* %2067) #1
  %2068 = getelementptr inbounds [9 x i64**], [9 x i64**]* %l_1328, i64 0, i64 0
  store i64** %l_1329, i64*** %2068, !tbaa !5
  %2069 = getelementptr inbounds i64**, i64*** %2068, i64 1
  store i64** %l_1329, i64*** %2069, !tbaa !5
  %2070 = getelementptr inbounds i64**, i64*** %2069, i64 1
  store i64** %l_1329, i64*** %2070, !tbaa !5
  %2071 = getelementptr inbounds i64**, i64*** %2070, i64 1
  store i64** %l_1329, i64*** %2071, !tbaa !5
  %2072 = getelementptr inbounds i64**, i64*** %2071, i64 1
  store i64** %l_1329, i64*** %2072, !tbaa !5
  %2073 = getelementptr inbounds i64**, i64*** %2072, i64 1
  store i64** %l_1329, i64*** %2073, !tbaa !5
  %2074 = getelementptr inbounds i64**, i64*** %2073, i64 1
  store i64** %l_1329, i64*** %2074, !tbaa !5
  %2075 = getelementptr inbounds i64**, i64*** %2074, i64 1
  store i64** %l_1329, i64*** %2075, !tbaa !5
  %2076 = getelementptr inbounds i64**, i64*** %2075, i64 1
  store i64** %l_1329, i64*** %2076, !tbaa !5
  %2077 = bitcast i32* %i32 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2077) #1
  store i32 0, i32* %i32, align 4, !tbaa !1
  br label %2078

; <label>:2078                                    ; preds = %2085, %2063
  %2079 = load i32, i32* %i32, align 4, !tbaa !1
  %2080 = icmp slt i32 %2079, 4
  br i1 %2080, label %2081, label %2088

; <label>:2081                                    ; preds = %2078
  %2082 = load i32, i32* %i32, align 4, !tbaa !1
  %2083 = sext i32 %2082 to i64
  %2084 = getelementptr inbounds [4 x i32], [4 x i32]* %l_1314, i32 0, i64 %2083
  store i32 -157522951, i32* %2084, align 4, !tbaa !1
  br label %2085

; <label>:2085                                    ; preds = %2081
  %2086 = load i32, i32* %i32, align 4, !tbaa !1
  %2087 = add nsw i32 %2086, 1
  store i32 %2087, i32* %i32, align 4, !tbaa !1
  br label %2078

; <label>:2088                                    ; preds = %2078
  %2089 = load i32, i32* %l_1313, align 4, !tbaa !1
  %2090 = load i32*, i32** %l_940, align 8, !tbaa !5
  %2091 = load i32, i32* %2090, align 4, !tbaa !1
  %2092 = xor i32 %2091, %2089
  store i32 %2092, i32* %2090, align 4, !tbaa !1
  %2093 = load volatile i8, i8* @g_1315, align 1, !tbaa !9
  %2094 = add i8 %2093, 1
  store volatile i8 %2094, i8* @g_1315, align 1, !tbaa !9
  %2095 = load i64*, i64** @g_143, align 8, !tbaa !5
  %2096 = load i64, i64* %2095, align 8, !tbaa !7
  %2097 = or i64 %2096, -1
  %2098 = trunc i64 %2097 to i8
  %2099 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext -114, i8 signext %2098)
  %2100 = sext i8 %2099 to i32
  %2101 = load i32, i32* @g_627, align 4, !tbaa !1
  %2102 = load i32, i32* getelementptr inbounds ([7 x i32], [7 x i32]* @g_431, i32 0, i64 2), align 4, !tbaa !1
  %2103 = zext i32 %2102 to i64
  %2104 = load i16*, i16** @g_984, align 8, !tbaa !5
  %2105 = load i16, i16* %2104, align 2, !tbaa !10
  %2106 = load volatile i32*, i32** @g_1048, align 8, !tbaa !5
  %2107 = load i32, i32* %2106, align 4, !tbaa !1
  %2108 = icmp ne i32 %2107, 0
  br i1 %2108, label %2119, label %2109

; <label>:2109                                    ; preds = %2088
  %2110 = load i64**, i64*** @g_142, align 8, !tbaa !5
  %2111 = load i64*, i64** %2110, align 8, !tbaa !5
  %2112 = getelementptr inbounds [4 x i32], [4 x i32]* %l_1314, i32 0, i64 0
  %2113 = load i32, i32* %2112, align 4, !tbaa !1
  %2114 = trunc i32 %2113 to i8
  %2115 = load i64, i64* @g_577, align 8, !tbaa !7
  %2116 = trunc i64 %2115 to i8
  %2117 = call i64 @func_50(i64* %2111, i8 signext %2114, i8 zeroext %2116)
  %2118 = getelementptr %union.U0, %union.U0* %5, i32 0, i32 0
  store i64 %2117, i64* %2118, align 8
  br label %2119

; <label>:2119                                    ; preds = %2109, %2088
  %2120 = phi i1 [ true, %2088 ], [ false, %2109 ]
  %2121 = zext i1 %2120 to i32
  %2122 = trunc i32 %2121 to i16
  %2123 = call zeroext i16 @safe_add_func_uint16_t_u_u(i16 zeroext %2105, i16 zeroext %2122)
  %2124 = zext i16 %2123 to i32
  %2125 = icmp ne i32 %2124, 0
  br i1 %2125, label %2126, label %2130

; <label>:2126                                    ; preds = %2119
  %2127 = load i32*, i32** @g_327, align 8, !tbaa !5
  %2128 = load volatile i32, i32* %2127, align 4, !tbaa !1
  %2129 = icmp ne i32 %2128, 0
  br label %2130

; <label>:2130                                    ; preds = %2126, %2119
  %2131 = phi i1 [ false, %2119 ], [ %2129, %2126 ]
  %2132 = zext i1 %2131 to i32
  %2133 = load i32, i32* %l_1313, align 4, !tbaa !1
  %2134 = getelementptr inbounds [3 x [4 x [8 x i32]]], [3 x [4 x [8 x i32]]]* %l_1292, i32 0, i64 2
  %2135 = getelementptr inbounds [4 x [8 x i32]], [4 x [8 x i32]]* %2134, i32 0, i64 3
  %2136 = getelementptr inbounds [8 x i32], [8 x i32]* %2135, i32 0, i64 6
  %2137 = load i32, i32* %2136, align 4, !tbaa !1
  %2138 = icmp ugt i32 %2133, %2137
  %2139 = zext i1 %2138 to i32
  %2140 = load i16**, i16*** @g_1326, align 8, !tbaa !5
  %2141 = load i16**, i16*** @g_1326, align 8, !tbaa !5
  %2142 = icmp eq i16** %2140, %2141
  %2143 = zext i1 %2142 to i32
  %2144 = sext i32 %2143 to i64
  %2145 = and i64 6, %2144
  %2146 = icmp eq i64 %2103, %2145
  %2147 = zext i1 %2146 to i32
  %2148 = sext i32 %2147 to i64
  %2149 = load i64*, i64** @g_143, align 8, !tbaa !5
  %2150 = load i64, i64* %2149, align 8, !tbaa !7
  %2151 = icmp ne i64 %2148, %2150
  %2152 = zext i1 %2151 to i32
  %2153 = sext i32 %2152 to i64
  %2154 = icmp sge i64 %2153, 4660963952586511407
  %2155 = zext i1 %2154 to i32
  %2156 = load i8*, i8** %l_1101, align 8, !tbaa !5
  %2157 = load i8, i8* %2156, align 1, !tbaa !9
  %2158 = zext i8 %2157 to i32
  %2159 = and i32 %2158, %2155
  %2160 = trunc i32 %2159 to i8
  store i8 %2160, i8* %2156, align 1, !tbaa !9
  %2161 = load i16, i16* %l_1309, align 2, !tbaa !10
  %2162 = trunc i16 %2161 to i8
  %2163 = call i64* @func_40(i32 %2101, i8 zeroext %2160, i8 zeroext %2162)
  store i64* %2163, i64** @g_1330, align 8, !tbaa !5
  %2164 = load i64**, i64*** @g_142, align 8, !tbaa !5
  %2165 = load i64*, i64** %2164, align 8, !tbaa !5
  %2166 = icmp eq i64* %2163, %2165
  %2167 = zext i1 %2166 to i32
  %2168 = sext i32 %2167 to i64
  %2169 = load i16, i16* %l_1331, align 2, !tbaa !10
  %2170 = zext i16 %2169 to i64
  %2171 = call i64 @safe_sub_func_int64_t_s_s(i64 %2168, i64 %2170)
  %2172 = trunc i64 %2171 to i32
  %2173 = call i32 @safe_mod_func_int32_t_s_s(i32 %2100, i32 %2172)
  %2174 = load volatile i32****, i32***** @g_1042, align 8, !tbaa !5
  %2175 = load i32***, i32**** %2174, align 8, !tbaa !5
  %2176 = load i32**, i32*** %2175, align 8, !tbaa !5
  %2177 = load i32***, i32**** @g_1043, align 8, !tbaa !5
  store i32** %2176, i32*** %2177, align 8, !tbaa !5
  %2178 = icmp ne i32** %2176, @g_783
  %2179 = zext i1 %2178 to i32
  %2180 = load volatile i32*, i32** @g_1048, align 8, !tbaa !5
  store i32 %2179, i32* %2180, align 4, !tbaa !1
  %2181 = bitcast i32* %i32 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2181) #1
  %2182 = bitcast [9 x i64**]* %l_1328 to i8*
  call void @llvm.lifetime.end(i64 72, i8* %2182) #1
  %2183 = bitcast i64** %l_1329 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2183) #1
  %2184 = bitcast i64*** %l_1327 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2184) #1
  %2185 = bitcast [4 x i32]* %l_1314 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %2185) #1
  br label %2186

; <label>:2186                                    ; preds = %2130
  %2187 = load i32, i32* @g_87, align 4, !tbaa !1
  %2188 = add i32 %2187, -1
  store i32 %2188, i32* @g_87, align 4, !tbaa !1
  br label %2060

; <label>:2189                                    ; preds = %2060
  %2190 = load i64, i64* @g_246, align 8, !tbaa !7
  %2191 = load i16, i16* %l_1334, align 2, !tbaa !10
  %2192 = zext i16 %2191 to i64
  %2193 = icmp eq i64 %2190, %2192
  %2194 = zext i1 %2193 to i32
  %2195 = load i16*, i16** @g_984, align 8, !tbaa !5
  %2196 = load i16, i16* %2195, align 2, !tbaa !10
  %2197 = load i32, i32* %l_1313, align 4, !tbaa !1
  %2198 = zext i32 %2197 to i64
  %2199 = load i64*, i64** %l_1302, align 8, !tbaa !5
  store i64 %2198, i64* %2199, align 8, !tbaa !7
  %2200 = load i32***, i32**** %l_1336, align 8, !tbaa !5
  %2201 = icmp ne i32*** %2200, null
  %2202 = zext i1 %2201 to i32
  %2203 = sext i32 %2202 to i64
  %2204 = load i64**, i64*** %l_1129, align 8, !tbaa !5
  %2205 = load i64*, i64** %2204, align 8, !tbaa !5
  store i64 %2203, i64* %2205, align 8, !tbaa !7
  %2206 = load i32, i32* @g_627, align 4, !tbaa !1
  %2207 = sext i32 %2206 to i64
  %2208 = load i64*, i64** %l_1302, align 8, !tbaa !5
  %2209 = load i64, i64* %2208, align 8, !tbaa !7
  %2210 = xor i64 %2209, %2207
  store i64 %2210, i64* %2208, align 8, !tbaa !7
  %2211 = load i32, i32* %l_1313, align 4, !tbaa !1
  %2212 = zext i32 %2211 to i64
  %2213 = icmp eq i64 -1, %2212
  %2214 = zext i1 %2213 to i32
  %2215 = load i32, i32* %l_1313, align 4, !tbaa !1
  %2216 = icmp ule i32 %2214, %2215
  %2217 = zext i1 %2216 to i32
  %2218 = load i32*, i32** @g_467, align 8, !tbaa !5
  %2219 = load volatile i32, i32* %2218, align 4, !tbaa !1
  %2220 = or i32 %2217, %2219
  %2221 = load i16*, i16** @g_984, align 8, !tbaa !5
  %2222 = load i16, i16* %2221, align 2, !tbaa !10
  %2223 = zext i16 %2222 to i32
  %2224 = icmp ugt i32 %2220, %2223
  %2225 = zext i1 %2224 to i32
  %2226 = sext i32 %2225 to i64
  %2227 = load i32*, i32** %l_940, align 8, !tbaa !5
  %2228 = load i32, i32* %2227, align 4, !tbaa !1
  %2229 = sext i32 %2228 to i64
  %2230 = call i64 @safe_div_func_int64_t_s_s(i64 %2226, i64 %2229)
  %2231 = load i32, i32* %l_1313, align 4, !tbaa !1
  %2232 = zext i32 %2231 to i64
  %2233 = icmp sgt i64 %2230, %2232
  %2234 = zext i1 %2233 to i32
  %2235 = load i16, i16* @g_232, align 2, !tbaa !10
  %2236 = zext i16 %2235 to i32
  %2237 = icmp sgt i32 %2234, %2236
  %2238 = zext i1 %2237 to i32
  %2239 = sext i32 %2238 to i64
  %2240 = icmp ult i64 %2210, %2239
  br i1 %2240, label %2242, label %2241

; <label>:2241                                    ; preds = %2189
  br label %2242

; <label>:2242                                    ; preds = %2241, %2189
  %2243 = phi i1 [ true, %2189 ], [ true, %2241 ]
  %2244 = zext i1 %2243 to i32
  %2245 = load i8, i8* @g_313, align 1, !tbaa !9
  %2246 = sext i8 %2245 to i32
  %2247 = icmp sge i32 %2244, %2246
  %2248 = zext i1 %2247 to i32
  %2249 = load volatile i16**, i16*** @g_983, align 8, !tbaa !5
  %2250 = load i16*, i16** %2249, align 8, !tbaa !5
  %2251 = icmp ne i16* %2250, null
  %2252 = zext i1 %2251 to i32
  %2253 = sext i32 %2252 to i64
  %2254 = call i64 @safe_sub_func_int64_t_s_s(i64 %2253, i64 8)
  %2255 = getelementptr inbounds [9 x i64], [9 x i64]* %l_17, i32 0, i64 3
  %2256 = icmp ne i64* @g_1291, %2255
  %2257 = zext i1 %2256 to i32
  %2258 = load volatile i32*, i32** @g_1048, align 8, !tbaa !5
  store i32 %2257, i32* %2258, align 4, !tbaa !1
  store i32 28, i32* @g_87, align 4, !tbaa !1
  br label %2259

; <label>:2259                                    ; preds = %2276, %2242
  %2260 = load i32, i32* @g_87, align 4, !tbaa !1
  %2261 = icmp ult i32 %2260, 31
  br i1 %2261, label %2262, label %2279

; <label>:2262                                    ; preds = %2259
  %2263 = bitcast i64* %l_1343 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2263) #1
  store i64 4, i64* %l_1343, align 8, !tbaa !7
  %2264 = load volatile i32*, i32** @g_1048, align 8, !tbaa !5
  %2265 = load i32, i32* %2264, align 4, !tbaa !1
  %2266 = icmp ne i32 %2265, 0
  br i1 %2266, label %2267, label %2268

; <label>:2267                                    ; preds = %2262
  store i32 85, i32* %3
  br label %2273

; <label>:2268                                    ; preds = %2262
  %2269 = load i64, i64* %l_1091, align 8, !tbaa !7
  %2270 = icmp ne i64 %2269, 0
  br i1 %2270, label %2271, label %2272

; <label>:2271                                    ; preds = %2268
  store i32 17, i32* %3
  br label %2273

; <label>:2272                                    ; preds = %2268
  store i64 -10, i64* %l_1343, align 8, !tbaa !7
  store i32 0, i32* %3
  br label %2273

; <label>:2273                                    ; preds = %2272, %2271, %2267
  %2274 = bitcast i64* %l_1343 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2274) #1
  %cleanup.dest.33 = load i32, i32* %3
  switch i32 %cleanup.dest.33, label %2280 [
    i32 0, label %2275
    i32 85, label %2279
  ]

; <label>:2275                                    ; preds = %2273
  br label %2276

; <label>:2276                                    ; preds = %2275
  %2277 = load i32, i32* @g_87, align 4, !tbaa !1
  %2278 = add i32 %2277, 1
  store i32 %2278, i32* @g_87, align 4, !tbaa !1
  br label %2259

; <label>:2279                                    ; preds = %2273, %2259
  store i32 0, i32* %3
  br label %2280

; <label>:2280                                    ; preds = %2279, %2273
  %2281 = bitcast i32* %l_1313 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2281) #1
  %cleanup.dest.34 = load i32, i32* %3
  switch i32 %cleanup.dest.34, label %2284 [
    i32 0, label %2282
  ]

; <label>:2282                                    ; preds = %2280
  br label %2283

; <label>:2283                                    ; preds = %2282
  store i32 0, i32* %3
  br label %2284

; <label>:2284                                    ; preds = %2283, %2280, %2055, %2054
  %2285 = bitcast i32* %k31 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2285) #1
  %2286 = bitcast i32* %j30 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2286) #1
  %2287 = bitcast i32* %i29 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2287) #1
  %2288 = bitcast %union.U0* %l_1335 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2288) #1
  %2289 = bitcast i16** %l_1310 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2289) #1
  %2290 = bitcast i16* %l_1309 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %2290) #1
  %2291 = bitcast i64** %l_1302 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2291) #1
  %2292 = bitcast i64** %l_1301 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2292) #1
  %2293 = bitcast i64* %l_1296 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2293) #1
  %2294 = bitcast [3 x [4 x [8 x i32]]]* %l_1292 to i8*
  call void @llvm.lifetime.end(i64 384, i8* %2294) #1
  %2295 = bitcast [2 x [8 x [5 x %union.U0****]]]* %l_1280 to i8*
  call void @llvm.lifetime.end(i64 640, i8* %2295) #1
  %2296 = bitcast [7 x i16*]* %l_1273 to i8*
  call void @llvm.lifetime.end(i64 56, i8* %2296) #1
  %2297 = bitcast i16** %l_1272 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2297) #1
  %2298 = bitcast [4 x i32]* %l_1268 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %2298) #1
  %cleanup.dest.35 = load i32, i32* %3
  switch i32 %cleanup.dest.35, label %2541 [
    i32 0, label %2299
  ]

; <label>:2299                                    ; preds = %2284
  br label %2521

; <label>:2300                                    ; preds = %1756
  %2301 = bitcast [10 x i32]* %l_1359 to i8*
  call void @llvm.lifetime.start(i64 40, i8* %2301) #1
  %2302 = bitcast [10 x i32]* %l_1359 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2302, i8* bitcast ([10 x i32]* @func_1.l_1359 to i8*), i64 40, i32 16, i1 false)
  %2303 = bitcast i8** %l_1360 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2303) #1
  store i8* getelementptr inbounds ([8 x [5 x [6 x i8]]], [8 x [5 x [6 x i8]]]* @g_726, i32 0, i64 0, i64 1, i64 0), i8** %l_1360, align 8, !tbaa !5
  %2304 = bitcast [5 x [3 x [10 x i8***]]]* %l_1375 to i8*
  call void @llvm.lifetime.start(i64 1200, i8* %2304) #1
  %2305 = bitcast [5 x [3 x [10 x i8***]]]* %l_1375 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2305, i8* bitcast ([5 x [3 x [10 x i8***]]]* @func_1.l_1375 to i8*), i64 1200, i32 16, i1 false)
  %2306 = bitcast i8**** %l_1377 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2306) #1
  store i8*** %l_1376, i8**** %l_1377, align 8, !tbaa !5
  %2307 = bitcast i16* %l_1378 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %2307) #1
  store i16 0, i16* %l_1378, align 2, !tbaa !10
  %2308 = bitcast i64** %l_1379 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2308) #1
  store i64* @g_243, i64** %l_1379, align 8, !tbaa !5
  %2309 = bitcast i16** %l_1380 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2309) #1
  store i16* null, i16** %l_1380, align 8, !tbaa !5
  %2310 = bitcast i16** %l_1381 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2310) #1
  store i16* getelementptr inbounds ([3 x i16], [3 x i16]* @g_201, i32 0, i64 1), i16** %l_1381, align 8, !tbaa !5
  %2311 = bitcast i32* %i36 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2311) #1
  %2312 = bitcast i32* %j37 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2312) #1
  %2313 = bitcast i32* %k38 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2313) #1
  %2314 = load i16, i16* %l_1331, align 2, !tbaa !10
  %2315 = zext i16 %2314 to i32
  %2316 = load i8*, i8** %l_1101, align 8, !tbaa !5
  store i8 -110, i8* %2316, align 1, !tbaa !9
  %2317 = load i32, i32* @g_899, align 4, !tbaa !1
  %2318 = zext i32 %2317 to i64
  %2319 = xor i64 %2318, 8
  %2320 = trunc i64 %2319 to i16
  %2321 = call zeroext i16 @safe_lshift_func_uint16_t_u_s(i16 zeroext %2320, i32 7)
  %2322 = zext i16 %2321 to i32
  %2323 = getelementptr inbounds [10 x i32], [10 x i32]* %l_1359, i32 0, i64 1
  %2324 = load i32, i32* %2323, align 4, !tbaa !1
  %2325 = or i32 %2322, %2324
  %2326 = icmp ne i32 %2325, 0
  %2327 = xor i1 %2326, true
  %2328 = zext i1 %2327 to i32
  %2329 = trunc i32 %2328 to i8
  %2330 = load i8*, i8** %l_1360, align 8, !tbaa !5
  store i8 %2329, i8* %2330, align 1, !tbaa !9
  %2331 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext -110, i8 zeroext %2329)
  %2332 = zext i8 %2331 to i16
  %2333 = load i8**, i8*** @g_1373, align 8, !tbaa !5
  store i8** %2333, i8*** @g_1373, align 8, !tbaa !5
  %2334 = load i8**, i8*** %l_1376, align 8, !tbaa !5
  %2335 = load i8***, i8**** %l_1377, align 8, !tbaa !5
  store i8** %2334, i8*** %2335, align 8, !tbaa !5
  %2336 = icmp ne i8** %2333, %2334
  %2337 = zext i1 %2336 to i32
  %2338 = getelementptr inbounds [10 x i32], [10 x i32]* %l_1359, i32 0, i64 1
  %2339 = load i32, i32* %2338, align 4, !tbaa !1
  %2340 = trunc i32 %2339 to i8
  %2341 = call zeroext i8 @safe_lshift_func_uint8_t_u_u(i8 zeroext %2340, i32 2)
  %2342 = load %union.U0****, %union.U0***** @g_1149, align 8, !tbaa !5
  %2343 = load %union.U0***, %union.U0**** %2342, align 8, !tbaa !5
  %2344 = load %union.U0**, %union.U0*** %2343, align 8, !tbaa !5
  %2345 = load volatile %union.U0*****, %union.U0****** @g_1179, align 8, !tbaa !5
  %2346 = load %union.U0****, %union.U0***** %2345, align 8, !tbaa !5
  %2347 = load %union.U0***, %union.U0**** %2346, align 8, !tbaa !5
  %2348 = load %union.U0**, %union.U0*** %2347, align 8, !tbaa !5
  %2349 = icmp ne %union.U0** %2344, %2348
  %2350 = zext i1 %2349 to i32
  %2351 = sext i32 %2350 to i64
  %2352 = icmp ult i64 65532, %2351
  %2353 = zext i1 %2352 to i32
  %2354 = trunc i32 %2353 to i16
  %2355 = load i16, i16* getelementptr inbounds ([3 x i16], [3 x i16]* @g_201, i32 0, i64 2), align 2, !tbaa !10
  %2356 = sext i16 %2355 to i32
  %2357 = call zeroext i16 @safe_lshift_func_uint16_t_u_s(i16 zeroext %2354, i32 %2356)
  %2358 = call zeroext i16 @safe_lshift_func_uint16_t_u_s(i16 zeroext %2357, i32 4)
  %2359 = trunc i16 %2358 to i8
  %2360 = call signext i8 @safe_rshift_func_int8_t_s_u(i8 signext %2359, i32 0)
  %2361 = sext i8 %2360 to i32
  %2362 = getelementptr inbounds [10 x i32], [10 x i32]* %l_1359, i32 0, i64 1
  %2363 = load i32, i32* %2362, align 4, !tbaa !1
  %2364 = xor i32 %2361, %2363
  %2365 = load i16, i16* %l_1378, align 2, !tbaa !10
  %2366 = trunc i16 %2365 to i8
  %2367 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext 1, i8 signext %2366)
  %2368 = getelementptr inbounds [10 x i32], [10 x i32]* %l_1359, i32 0, i64 3
  %2369 = load i32, i32* %2368, align 4, !tbaa !1
  %2370 = trunc i32 %2369 to i8
  %2371 = call signext i8 @safe_add_func_int8_t_s_s(i8 signext %2367, i8 signext %2370)
  %2372 = sext i8 %2371 to i32
  %2373 = icmp ne i32 %2372, 0
  br i1 %2373, label %2379, label %2374

; <label>:2374                                    ; preds = %2300
  %2375 = load i64**, i64*** @g_142, align 8, !tbaa !5
  %2376 = load i64*, i64** %2375, align 8, !tbaa !5
  %2377 = load i64, i64* %2376, align 8, !tbaa !7
  %2378 = icmp ne i64 %2377, 0
  br label %2379

; <label>:2379                                    ; preds = %2374, %2300
  %2380 = phi i1 [ true, %2300 ], [ %2378, %2374 ]
  %2381 = zext i1 %2380 to i32
  %2382 = getelementptr inbounds [10 x i32], [10 x i32]* %l_1359, i32 0, i64 7
  %2383 = load i32, i32* %2382, align 4, !tbaa !1
  %2384 = trunc i32 %2383 to i16
  %2385 = call signext i16 @safe_sub_func_int16_t_s_s(i16 signext %2332, i16 signext %2384)
  %2386 = sext i16 %2385 to i32
  %2387 = xor i32 %2386, -1
  %2388 = load i32, i32* @g_628, align 4, !tbaa !1
  %2389 = icmp sgt i32 %2387, %2388
  %2390 = zext i1 %2389 to i32
  %2391 = load i8, i8* @g_779, align 1, !tbaa !9
  %2392 = zext i8 %2391 to i64
  %2393 = icmp uge i64 0, %2392
  %2394 = zext i1 %2393 to i32
  %2395 = load i32, i32* %l_1274, align 4, !tbaa !1
  %2396 = or i32 %2395, %2394
  store i32 %2396, i32* %l_1274, align 4, !tbaa !1
  %2397 = trunc i32 %2396 to i8
  %2398 = getelementptr inbounds [10 x i32], [10 x i32]* %l_1359, i32 0, i64 1
  %2399 = load i32, i32* %2398, align 4, !tbaa !1
  %2400 = trunc i32 %2399 to i8
  %2401 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %2397, i8 zeroext %2400)
  store i8 %2401, i8* @g_921, align 1, !tbaa !9
  %2402 = load i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_416, i32 0, i32 0), align 8, !tbaa !7
  %2403 = trunc i64 %2402 to i8
  %2404 = call zeroext i8 @safe_sub_func_uint8_t_u_u(i8 zeroext %2401, i8 zeroext %2403)
  %2405 = zext i8 %2404 to i64
  %2406 = load i64*, i64** %l_1379, align 8, !tbaa !5
  store i64 %2405, i64* %2406, align 8, !tbaa !7
  %2407 = icmp ule i64 %2405, 0
  %2408 = zext i1 %2407 to i32
  %2409 = load i8, i8* @g_227, align 1, !tbaa !9
  %2410 = icmp ne i8 %2409, 0
  %2411 = xor i1 %2410, true
  %2412 = zext i1 %2411 to i32
  %2413 = load i16, i16* getelementptr inbounds ([4 x i16], [4 x i16]* @g_183, i32 0, i64 2), align 2, !tbaa !10
  %2414 = sext i16 %2413 to i32
  %2415 = icmp sge i32 %2412, %2414
  %2416 = zext i1 %2415 to i32
  %2417 = load i8, i8* %l_1249, align 1, !tbaa !9
  %2418 = sext i8 %2417 to i64
  %2419 = or i64 %2418, 1
  %2420 = icmp sle i64 8517742210762413805, %2419
  %2421 = zext i1 %2420 to i32
  %2422 = trunc i32 %2421 to i16
  %2423 = load i16*, i16** %l_1381, align 8, !tbaa !5
  store i16 %2422, i16* %2423, align 2, !tbaa !10
  %2424 = sext i16 %2422 to i32
  %2425 = load i32, i32* @g_94, align 4, !tbaa !1
  %2426 = icmp ne i32 %2424, %2425
  %2427 = zext i1 %2426 to i32
  %2428 = icmp slt i32 %2315, %2427
  br i1 %2428, label %2429, label %2469

; <label>:2429                                    ; preds = %2379
  store i32 0, i32* @g_87, align 4, !tbaa !1
  br label %2430

; <label>:2430                                    ; preds = %2465, %2429
  %2431 = load i32, i32* @g_87, align 4, !tbaa !1
  %2432 = icmp ult i32 %2431, 6
  br i1 %2432, label %2433, label %2468

; <label>:2433                                    ; preds = %2430
  store i16 0, i16* @g_232, align 2, !tbaa !10
  br label %2434

; <label>:2434                                    ; preds = %2459, %2433
  %2435 = load i16, i16* @g_232, align 2, !tbaa !10
  %2436 = zext i16 %2435 to i32
  %2437 = icmp slt i32 %2436, 1
  br i1 %2437, label %2438, label %2464

; <label>:2438                                    ; preds = %2434
  store i8 0, i8* @g_123, align 1, !tbaa !9
  br label %2439

; <label>:2439                                    ; preds = %2453, %2438
  %2440 = load i8, i8* @g_123, align 1, !tbaa !9
  %2441 = sext i8 %2440 to i32
  %2442 = icmp slt i32 %2441, 4
  br i1 %2442, label %2443, label %2458

; <label>:2443                                    ; preds = %2439
  %2444 = load i8, i8* @g_123, align 1, !tbaa !9
  %2445 = sext i8 %2444 to i64
  %2446 = load i16, i16* @g_232, align 2, !tbaa !10
  %2447 = zext i16 %2446 to i64
  %2448 = load i32, i32* @g_87, align 4, !tbaa !1
  %2449 = zext i32 %2448 to i64
  %2450 = getelementptr inbounds [6 x [1 x [4 x i32]]], [6 x [1 x [4 x i32]]]* @g_730, i32 0, i64 %2449
  %2451 = getelementptr inbounds [1 x [4 x i32]], [1 x [4 x i32]]* %2450, i32 0, i64 %2447
  %2452 = getelementptr inbounds [4 x i32], [4 x i32]* %2451, i32 0, i64 %2445
  store i32 -1577544958, i32* %2452, align 4, !tbaa !1
  br label %2453

; <label>:2453                                    ; preds = %2443
  %2454 = load i8, i8* @g_123, align 1, !tbaa !9
  %2455 = sext i8 %2454 to i32
  %2456 = add nsw i32 %2455, 1
  %2457 = trunc i32 %2456 to i8
  store i8 %2457, i8* @g_123, align 1, !tbaa !9
  br label %2439

; <label>:2458                                    ; preds = %2439
  br label %2459

; <label>:2459                                    ; preds = %2458
  %2460 = load i16, i16* @g_232, align 2, !tbaa !10
  %2461 = zext i16 %2460 to i32
  %2462 = add nsw i32 %2461, 1
  %2463 = trunc i32 %2462 to i16
  store i16 %2463, i16* @g_232, align 2, !tbaa !10
  br label %2434

; <label>:2464                                    ; preds = %2434
  br label %2465

; <label>:2465                                    ; preds = %2464
  %2466 = load i32, i32* @g_87, align 4, !tbaa !1
  %2467 = add i32 %2466, 1
  store i32 %2467, i32* @g_87, align 4, !tbaa !1
  br label %2430

; <label>:2468                                    ; preds = %2430
  br label %2506

; <label>:2469                                    ; preds = %2379
  %2470 = bitcast i16* %l_1384 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %2470) #1
  store i16 20172, i16* %l_1384, align 2, !tbaa !10
  %2471 = load i32*, i32** %l_940, align 8, !tbaa !5
  %2472 = load i32, i32* %2471, align 4, !tbaa !1
  %2473 = load i16, i16* %l_1384, align 2, !tbaa !10
  %2474 = trunc i16 %2473 to i8
  %2475 = load i8, i8* %l_1385, align 1, !tbaa !9
  %2476 = load i32*, i32** %l_940, align 8, !tbaa !5
  %2477 = load i32, i32* %2476, align 4, !tbaa !1
  %2478 = load i16, i16* %l_1384, align 2, !tbaa !10
  %2479 = zext i16 %2478 to i32
  %2480 = load i16, i16* %l_1384, align 2, !tbaa !10
  %2481 = zext i16 %2480 to i32
  %2482 = icmp sgt i32 %2479, %2481
  %2483 = zext i1 %2482 to i32
  %2484 = icmp slt i32 %2477, %2483
  %2485 = zext i1 %2484 to i32
  %2486 = load i32*, i32** %l_940, align 8, !tbaa !5
  %2487 = load i32, i32* %2486, align 4, !tbaa !1
  %2488 = sext i32 %2487 to i64
  %2489 = call i64 @safe_div_func_uint64_t_u_u(i64 %2488, i64 -7469771386440840555)
  %2490 = and i64 693886530, %2489
  %2491 = icmp eq i32* %l_1085, null
  %2492 = zext i1 %2491 to i32
  %2493 = sext i32 %2492 to i64
  %2494 = icmp eq i64 7, %2493
  %2495 = zext i1 %2494 to i32
  %2496 = and i32 %2485, %2495
  %2497 = trunc i32 %2496 to i8
  %2498 = call signext i8 @safe_add_func_int8_t_s_s(i8 signext %2474, i8 signext %2497)
  %2499 = sext i8 %2498 to i32
  %2500 = icmp eq i32 %2472, %2499
  %2501 = zext i1 %2500 to i32
  %2502 = load i16, i16* %l_1331, align 2, !tbaa !10
  %2503 = zext i16 %2502 to i32
  %2504 = load i32*, i32** %l_940, align 8, !tbaa !5
  store i32 %2503, i32* %2504, align 4, !tbaa !1
  %2505 = bitcast i16* %l_1384 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %2505) #1
  br label %2506

; <label>:2506                                    ; preds = %2469, %2468
  %2507 = getelementptr inbounds [10 x i32], [10 x i32]* %l_1359, i32 0, i64 1
  %2508 = load i32, i32* %2507, align 4, !tbaa !1
  %2509 = trunc i32 %2508 to i16
  store i16 %2509, i16* %l_1388, align 2, !tbaa !10
  %2510 = bitcast i32* %k38 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2510) #1
  %2511 = bitcast i32* %j37 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2511) #1
  %2512 = bitcast i32* %i36 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2512) #1
  %2513 = bitcast i16** %l_1381 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2513) #1
  %2514 = bitcast i16** %l_1380 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2514) #1
  %2515 = bitcast i64** %l_1379 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2515) #1
  %2516 = bitcast i16* %l_1378 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %2516) #1
  %2517 = bitcast i8**** %l_1377 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2517) #1
  %2518 = bitcast [5 x [3 x [10 x i8***]]]* %l_1375 to i8*
  call void @llvm.lifetime.end(i64 1200, i8* %2518) #1
  %2519 = bitcast i8** %l_1360 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2519) #1
  %2520 = bitcast [10 x i32]* %l_1359 to i8*
  call void @llvm.lifetime.end(i64 40, i8* %2520) #1
  br label %2521

; <label>:2521                                    ; preds = %2506, %2299
  %2522 = load i32, i32* %l_1392, align 4, !tbaa !1
  %2523 = add i32 %2522, 1
  store i32 %2523, i32* %l_1392, align 4, !tbaa !1
  store i8 0, i8* @g_123, align 1, !tbaa !9
  br label %2524

; <label>:2524                                    ; preds = %2532, %2521
  %2525 = load i8, i8* @g_123, align 1, !tbaa !9
  %2526 = sext i8 %2525 to i32
  %2527 = icmp sge i32 %2526, -3
  br i1 %2527, label %2528, label %2537

; <label>:2528                                    ; preds = %2524
  %2529 = load i32*, i32** %l_940, align 8, !tbaa !5
  %2530 = load i32, i32* %2529, align 4, !tbaa !1
  %2531 = sext i32 %2530 to i64
  store i64 %2531, i64* %1
  store i32 1, i32* %3
  br label %2541
                                                  ; No predecessors!
  %2533 = load i8, i8* @g_123, align 1, !tbaa !9
  %2534 = sext i8 %2533 to i32
  %2535 = call i32 @safe_sub_func_int32_t_s_s(i32 %2534, i32 6)
  %2536 = trunc i32 %2535 to i8
  store i8 %2536, i8* @g_123, align 1, !tbaa !9
  br label %2524

; <label>:2537                                    ; preds = %2524
  %2538 = load i64**, i64*** @g_142, align 8, !tbaa !5
  %2539 = load i64*, i64** %2538, align 8, !tbaa !5
  %2540 = load i64, i64* %2539, align 8, !tbaa !7
  store i64 %2540, i64* %1
  store i32 1, i32* %3
  br label %2541

; <label>:2541                                    ; preds = %2537, %2528, %2284
  %2542 = bitcast i32* %i28 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2542) #1
  %2543 = bitcast i32* %l_1392 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2543) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1391) #1
  %2544 = bitcast [4 x i32]* %l_1390 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %2544) #1
  %2545 = bitcast i32* %l_1389 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2545) #1
  %2546 = bitcast i8*** %l_1376 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2546) #1
  %2547 = bitcast i16* %l_1334 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %2547) #1
  %2548 = bitcast i16* %l_1331 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %2548) #1
  %2549 = bitcast %union.U0***** %l_1279 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2549) #1
  %2550 = bitcast i32* %l_1274 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2550) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1267) #1
  %2551 = bitcast %union.U0* %l_1256 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2551) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1249) #1
  %cleanup.dest.39 = load i32, i32* %3
  switch i32 %cleanup.dest.39, label %2556 [
    i32 72, label %2552
  ]

; <label>:2552                                    ; preds = %2541
  %2553 = load i16, i16* %l_992, align 2, !tbaa !10
  %2554 = call signext i16 @safe_add_func_int16_t_s_s(i16 signext %2553, i16 signext 8)
  store i16 %2554, i16* %l_992, align 2, !tbaa !10
  br label %1675

; <label>:2555                                    ; preds = %1675
  store i32 0, i32* %3
  br label %2556

; <label>:2556                                    ; preds = %2555, %2541, %1658
  %2557 = bitcast i32* %k14 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2557) #1
  %2558 = bitcast i32* %j13 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2558) #1
  %2559 = bitcast i32* %i12 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2559) #1
  %2560 = bitcast i16* %l_1388 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %2560) #1
  %2561 = bitcast i32**** %l_1336 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2561) #1
  %2562 = bitcast i32*** %l_1337 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2562) #1
  %2563 = bitcast [2 x [3 x [7 x i32*]]]* %l_1219 to i8*
  call void @llvm.lifetime.end(i64 336, i8* %2563) #1
  %2564 = bitcast [4 x [6 x i32]]* %l_1167 to i8*
  call void @llvm.lifetime.end(i64 96, i8* %2564) #1
  %2565 = bitcast %union.U0***** %l_1147 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2565) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1126) #1
  %cleanup.dest.40 = load i32, i32* %3
  switch i32 %cleanup.dest.40, label %2663 [
    i32 0, label %2566
    i32 17, label %189
  ]

; <label>:2566                                    ; preds = %2556
  br label %2567

; <label>:2567                                    ; preds = %2566
  %2568 = load i32*, i32** %l_940, align 8, !tbaa !5
  %2569 = load i32, i32* %2568, align 4, !tbaa !1
  %2570 = sext i32 %2569 to i64
  %2571 = load i32*, i32** %l_940, align 8, !tbaa !5
  %2572 = load i32, i32* %2571, align 4, !tbaa !1
  %2573 = sext i32 %2572 to i64
  %2574 = call i64 @safe_add_func_int64_t_s_s(i64 %2570, i64 %2573)
  %2575 = load i32*, i32** %l_940, align 8, !tbaa !5
  %2576 = load i32, i32* %2575, align 4, !tbaa !1
  %2577 = sext i32 %2576 to i64
  %2578 = and i64 %2574, %2577
  %2579 = load i32*, i32** %l_940, align 8, !tbaa !5
  %2580 = load i32, i32* %2579, align 4, !tbaa !1
  %2581 = load i16, i16* %l_1401, align 2, !tbaa !10
  %2582 = zext i16 %2581 to i32
  %2583 = call i32 @safe_sub_func_uint32_t_u_u(i32 %2582, i32 1)
  %2584 = and i32 %2580, %2583
  %2585 = zext i32 %2584 to i64
  %2586 = call i32* @func_35(i64 %2585)
  %2587 = load i32**, i32*** @g_591, align 8, !tbaa !5
  store i32* %2586, i32** %2587, align 8, !tbaa !5
  %2588 = load i32*, i32** %l_940, align 8, !tbaa !5
  %2589 = load i32, i32* %2588, align 4, !tbaa !1
  %2590 = trunc i32 %2589 to i16
  %2591 = load i16*, i16** @g_984, align 8, !tbaa !5
  store i16 %2590, i16* %2591, align 2, !tbaa !10
  %2592 = zext i16 %2590 to i32
  %2593 = load i32*, i32** %l_940, align 8, !tbaa !5
  %2594 = load i32, i32* %2593, align 4, !tbaa !1
  %2595 = trunc i32 %2594 to i16
  %2596 = call signext i16 @safe_rshift_func_int16_t_s_u(i16 signext %2595, i32 14)
  %2597 = sext i16 %2596 to i64
  %2598 = icmp ne i64 %2597, -10
  br i1 %2598, label %2603, label %2599

; <label>:2599                                    ; preds = %2567
  %2600 = load i32*, i32** %l_940, align 8, !tbaa !5
  %2601 = load i32, i32* %2600, align 4, !tbaa !1
  %2602 = icmp ne i32 %2601, 0
  br label %2603

; <label>:2603                                    ; preds = %2599, %2567
  %2604 = phi i1 [ true, %2567 ], [ %2602, %2599 ]
  %2605 = zext i1 %2604 to i32
  %2606 = load i64**, i64*** @g_142, align 8, !tbaa !5
  %2607 = load i64*, i64** %2606, align 8, !tbaa !5
  %2608 = load i64**, i64*** @g_142, align 8, !tbaa !5
  %2609 = load i64*, i64** %2608, align 8, !tbaa !5
  %2610 = icmp eq i64* %2607, %2609
  %2611 = zext i1 %2610 to i32
  %2612 = trunc i32 %2611 to i16
  %2613 = load i16*, i16** %l_1425, align 8, !tbaa !5
  store i16 %2612, i16* %2613, align 2, !tbaa !10
  %2614 = call zeroext i16 @safe_lshift_func_uint16_t_u_u(i16 zeroext %2612, i32 2)
  %2615 = load i32*, i32** %l_940, align 8, !tbaa !5
  %2616 = load i32, i32* %2615, align 4, !tbaa !1
  %2617 = and i32 1, %2616
  %2618 = trunc i32 %2617 to i8
  %2619 = call zeroext i8 @safe_lshift_func_uint8_t_u_u(i8 zeroext %2618, i32 3)
  %2620 = load i32, i32* %l_1427, align 4, !tbaa !1
  %2621 = call zeroext i8 @safe_rshift_func_uint8_t_u_u(i8 zeroext %2619, i32 %2620)
  %2622 = zext i8 %2621 to i64
  %2623 = load i32*, i32** %l_940, align 8, !tbaa !5
  %2624 = load i32, i32* %2623, align 4, !tbaa !1
  %2625 = sext i32 %2624 to i64
  %2626 = call i64 @safe_sub_func_int64_t_s_s(i64 %2622, i64 %2625)
  %2627 = or i64 %2626, 3175409659
  %2628 = icmp ule i64 %2627, -5
  %2629 = zext i1 %2628 to i32
  %2630 = load i32, i32* %l_1428, align 4, !tbaa !1
  %2631 = trunc i32 %2630 to i16
  %2632 = load i64, i64* %l_1429, align 8, !tbaa !7
  %2633 = trunc i64 %2632 to i16
  %2634 = call signext i16 @safe_add_func_int16_t_s_s(i16 signext %2631, i16 signext %2633)
  %2635 = sext i16 %2634 to i32
  %2636 = icmp ne i32 %2635, 0
  br i1 %2636, label %2641, label %2637

; <label>:2637                                    ; preds = %2603
  %2638 = load i32*, i32** %l_940, align 8, !tbaa !5
  %2639 = load i32, i32* %2638, align 4, !tbaa !1
  %2640 = icmp ne i32 %2639, 0
  br label %2641

; <label>:2641                                    ; preds = %2637, %2603
  %2642 = phi i1 [ true, %2603 ], [ %2640, %2637 ]
  %2643 = zext i1 %2642 to i32
  %2644 = trunc i32 %2643 to i8
  %2645 = call zeroext i8 @safe_div_func_uint8_t_u_u(i8 zeroext %2644, i8 zeroext 35)
  %2646 = load i32*, i32** %l_940, align 8, !tbaa !5
  %2647 = load i32, i32* %2646, align 4, !tbaa !1
  %2648 = trunc i32 %2647 to i8
  %2649 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %2645, i8 signext %2648)
  %2650 = sext i8 %2649 to i32
  %2651 = icmp slt i32 %2592, %2650
  %2652 = zext i1 %2651 to i32
  %2653 = trunc i32 %2652 to i16
  %2654 = load i64*, i64** @g_143, align 8, !tbaa !5
  %2655 = load i64, i64* %2654, align 8, !tbaa !7
  %2656 = getelementptr inbounds [8 x i32], [8 x i32]* %l_1031, i32 0, i64 1
  %2657 = call i32* @func_30(i32* %l_1072, i16 signext %2653, i64 %2655, i32* %2656)
  %2658 = load i32***, i32**** @g_1043, align 8, !tbaa !5
  %2659 = load i32**, i32*** %2658, align 8, !tbaa !5
  store i32* %2657, i32** %2659, align 8, !tbaa !5
  store i32* %2657, i32** getelementptr inbounds ([3 x i32*], [3 x i32*]* @g_1431, i32 0, i64 2), align 8, !tbaa !5
  %2660 = load i64**, i64*** @g_142, align 8, !tbaa !5
  %2661 = load i64*, i64** %2660, align 8, !tbaa !5
  %2662 = load i64, i64* %2661, align 8, !tbaa !7
  store i64 %2662, i64* %1
  store i32 1, i32* %3
  br label %2663

; <label>:2663                                    ; preds = %2641, %2556, %888, %783, %715
  %2664 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2664) #1
  %2665 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2665) #1
  %2666 = bitcast [10 x [8 x i32**]]* %l_1430 to i8*
  call void @llvm.lifetime.end(i64 640, i8* %2666) #1
  %2667 = bitcast i64* %l_1429 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2667) #1
  %2668 = bitcast i32* %l_1428 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2668) #1
  %2669 = bitcast i32* %l_1427 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2669) #1
  %2670 = bitcast i64* %l_1426 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2670) #1
  %2671 = bitcast i16** %l_1425 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2671) #1
  %2672 = bitcast i16* %l_1405 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %2672) #1
  %2673 = bitcast i16* %l_1401 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %2673) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1385) #1
  %2674 = bitcast [3 x [1 x i32]]* %l_1271 to i8*
  call void @llvm.lifetime.end(i64 12, i8* %2674) #1
  %2675 = bitcast %union.U0*** %l_1140 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2675) #1
  %2676 = bitcast i64*** %l_1129 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2676) #1
  %2677 = bitcast [6 x i16]* %l_1108 to i8*
  call void @llvm.lifetime.end(i64 12, i8* %2677) #1
  %2678 = bitcast i32** %l_1103 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2678) #1
  %2679 = bitcast [9 x [1 x i8*]]* %l_1102 to i8*
  call void @llvm.lifetime.end(i64 72, i8* %2679) #1
  %2680 = bitcast i8** %l_1101 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2680) #1
  %2681 = bitcast %union.U0**** %l_1098 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2681) #1
  %2682 = bitcast %union.U0*** %l_1099 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2682) #1
  %2683 = bitcast %union.U0** %l_1100 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2683) #1
  %2684 = bitcast i64* %l_1091 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2684) #1
  %2685 = bitcast i32* %l_1085 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2685) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1082) #1
  %2686 = bitcast i32* %l_1072 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2686) #1
  %2687 = bitcast %union.U0* %l_1062 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2687) #1
  %2688 = bitcast [8 x i32]* %l_1031 to i8*
  call void @llvm.lifetime.end(i64 32, i8* %2688) #1
  %2689 = bitcast i32* %l_1028 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2689) #1
  %2690 = bitcast i16* %l_992 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %2690) #1
  %2691 = bitcast [5 x i64]* %l_966 to i8*
  call void @llvm.lifetime.end(i64 40, i8* %2691) #1
  %2692 = bitcast i32** %l_943 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2692) #1
  %2693 = bitcast i32** %l_942 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2693) #1
  %2694 = bitcast [5 x i16]* %l_941 to i8*
  call void @llvm.lifetime.end(i64 10, i8* %2694) #1
  %2695 = bitcast i32** %l_940 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2695) #1
  %2696 = bitcast [9 x i64]* %l_17 to i8*
  call void @llvm.lifetime.end(i64 72, i8* %2696) #1
  %2697 = load i64, i64* %1
  ret i64 %2697
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
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.63, i32 0, i32 0), i8* %8, i64 %11)
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
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.64, i32 0, i32 0), i32 %3)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal i32 @safe_mod_func_int32_t_s_s(i32 %si1, i32 %si2) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %si1, i32* %1, align 4, !tbaa !1
  store i32 %si2, i32* %2, align 4, !tbaa !1
  %3 = load i32, i32* %2, align 4, !tbaa !1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %11, label %5

; <label>:5                                       ; preds = %0
  %6 = load i32, i32* %1, align 4, !tbaa !1
  %7 = icmp eq i32 %6, -2147483648
  br i1 %7, label %8, label %13

; <label>:8                                       ; preds = %5
  %9 = load i32, i32* %2, align 4, !tbaa !1
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %13

; <label>:11                                      ; preds = %8, %0
  %12 = load i32, i32* %1, align 4, !tbaa !1
  br label %17

; <label>:13                                      ; preds = %8, %5
  %14 = load i32, i32* %1, align 4, !tbaa !1
  %15 = load i32, i32* %2, align 4, !tbaa !1
  %16 = srem i32 %14, %15
  br label %17

; <label>:17                                      ; preds = %13, %11
  %18 = phi i32 [ %12, %11 ], [ %16, %13 ]
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal signext i16 @safe_mul_func_int16_t_s_s(i16 signext %si1, i16 signext %si2) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i16, align 2
  store i16 %si1, i16* %1, align 2, !tbaa !10
  store i16 %si2, i16* %2, align 2, !tbaa !10
  %3 = load i16, i16* %1, align 2, !tbaa !10
  %4 = sext i16 %3 to i32
  %5 = load i16, i16* %2, align 2, !tbaa !10
  %6 = sext i16 %5 to i32
  %7 = mul nsw i32 %4, %6
  %8 = trunc i32 %7 to i16
  ret i16 %8
}

; Function Attrs: nounwind uwtable
define internal signext i8 @safe_div_func_int8_t_s_s(i8 signext %si1, i8 signext %si2) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  store i8 %si1, i8* %1, align 1, !tbaa !9
  store i8 %si2, i8* %2, align 1, !tbaa !9
  %3 = load i8, i8* %2, align 1, !tbaa !9
  %4 = sext i8 %3 to i32
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %14, label %6

; <label>:6                                       ; preds = %0
  %7 = load i8, i8* %1, align 1, !tbaa !9
  %8 = sext i8 %7 to i32
  %9 = icmp eq i32 %8, -128
  br i1 %9, label %10, label %17

; <label>:10                                      ; preds = %6
  %11 = load i8, i8* %2, align 1, !tbaa !9
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %17

; <label>:14                                      ; preds = %10, %0
  %15 = load i8, i8* %1, align 1, !tbaa !9
  %16 = sext i8 %15 to i32
  br label %23

; <label>:17                                      ; preds = %10, %6
  %18 = load i8, i8* %1, align 1, !tbaa !9
  %19 = sext i8 %18 to i32
  %20 = load i8, i8* %2, align 1, !tbaa !9
  %21 = sext i8 %20 to i32
  %22 = sdiv i32 %19, %21
  br label %23

; <label>:23                                      ; preds = %17, %14
  %24 = phi i32 [ %16, %14 ], [ %22, %17 ]
  %25 = trunc i32 %24 to i8
  ret i8 %25
}

; Function Attrs: nounwind uwtable
define internal signext i16 @safe_div_func_int16_t_s_s(i16 signext %si1, i16 signext %si2) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i16, align 2
  store i16 %si1, i16* %1, align 2, !tbaa !10
  store i16 %si2, i16* %2, align 2, !tbaa !10
  %3 = load i16, i16* %2, align 2, !tbaa !10
  %4 = sext i16 %3 to i32
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %14, label %6

; <label>:6                                       ; preds = %0
  %7 = load i16, i16* %1, align 2, !tbaa !10
  %8 = sext i16 %7 to i32
  %9 = icmp eq i32 %8, -32768
  br i1 %9, label %10, label %17

; <label>:10                                      ; preds = %6
  %11 = load i16, i16* %2, align 2, !tbaa !10
  %12 = sext i16 %11 to i32
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %17

; <label>:14                                      ; preds = %10, %0
  %15 = load i16, i16* %1, align 2, !tbaa !10
  %16 = sext i16 %15 to i32
  br label %23

; <label>:17                                      ; preds = %10, %6
  %18 = load i16, i16* %1, align 2, !tbaa !10
  %19 = sext i16 %18 to i32
  %20 = load i16, i16* %2, align 2, !tbaa !10
  %21 = sext i16 %20 to i32
  %22 = sdiv i32 %19, %21
  br label %23

; <label>:23                                      ; preds = %17, %14
  %24 = phi i32 [ %16, %14 ], [ %22, %17 ]
  %25 = trunc i32 %24 to i16
  ret i16 %25
}

; Function Attrs: nounwind uwtable
define internal zeroext i16 @func_12(i16 zeroext %p_13, i64 %p_14, i64 %p_15.coerce, i32 %p_16) #0 {
  %p_15 = alloca %union.U0, align 8
  %1 = alloca i16, align 2
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %l_29 = alloca i16, align 2
  %l_61 = alloca i32, align 4
  %l_635 = alloca i32*, align 8
  %l_912 = alloca i32, align 4
  %l_917 = alloca i32, align 4
  %l_920 = alloca i32, align 4
  %l_931 = alloca [1 x i64], align 8
  %l_932 = alloca i32, align 4
  %l_933 = alloca i32, align 4
  %l_934 = alloca i32, align 4
  %l_936 = alloca i32, align 4
  %i = alloca i32, align 4
  %4 = alloca %union.U0, align 8
  %l_907 = alloca i32*, align 8
  %l_908 = alloca i32*, align 8
  %l_909 = alloca [4 x [4 x i32]], align 16
  %l_910 = alloca i32*, align 8
  %l_911 = alloca i32*, align 8
  %l_913 = alloca i32*, align 8
  %l_914 = alloca i32*, align 8
  %l_915 = alloca i32*, align 8
  %l_916 = alloca i32*, align 8
  %l_918 = alloca i32*, align 8
  %l_919 = alloca [8 x [8 x [1 x i32*]]], align 16
  %i1 = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l_924 = alloca i32*, align 8
  %l_925 = alloca i32*, align 8
  %l_926 = alloca i32*, align 8
  %l_927 = alloca i32, align 4
  %l_928 = alloca i32*, align 8
  %l_929 = alloca i32*, align 8
  %l_930 = alloca [6 x i32*], align 16
  %i2 = alloca i32, align 4
  %5 = getelementptr %union.U0, %union.U0* %p_15, i32 0, i32 0
  store i64 %p_15.coerce, i64* %5, align 8
  store i16 %p_13, i16* %1, align 2, !tbaa !10
  store i64 %p_14, i64* %2, align 8, !tbaa !7
  store i32 %p_16, i32* %3, align 4, !tbaa !1
  %6 = bitcast i16* %l_29 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %6) #1
  store i16 1, i16* %l_29, align 2, !tbaa !10
  %7 = bitcast i32* %l_61 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 0, i32* %l_61, align 4, !tbaa !1
  %8 = bitcast i32** %l_635 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i32* @g_628, i32** %l_635, align 8, !tbaa !5
  %9 = bitcast i32* %l_912 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 0, i32* %l_912, align 4, !tbaa !1
  %10 = bitcast i32* %l_917 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  store i32 1, i32* %l_917, align 4, !tbaa !1
  %11 = bitcast i32* %l_920 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  store i32 1085158881, i32* %l_920, align 4, !tbaa !1
  %12 = bitcast [1 x i64]* %l_931 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = bitcast i32* %l_932 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  store i32 457926949, i32* %l_932, align 4, !tbaa !1
  %14 = bitcast i32* %l_933 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  store i32 -8, i32* %l_933, align 4, !tbaa !1
  %15 = bitcast i32* %l_934 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  store i32 1908906329, i32* %l_934, align 4, !tbaa !1
  %16 = bitcast i32* %l_936 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  store i32 -1249234441, i32* %l_936, align 4, !tbaa !1
  %17 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %18

; <label>:18                                      ; preds = %25, %0
  %19 = load i32, i32* %i, align 4, !tbaa !1
  %20 = icmp slt i32 %19, 1
  br i1 %20, label %21, label %28

; <label>:21                                      ; preds = %18
  %22 = load i32, i32* %i, align 4, !tbaa !1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [1 x i64], [1 x i64]* %l_931, i32 0, i64 %23
  store i64 -3158707850730678457, i64* %24, align 8, !tbaa !7
  br label %25

; <label>:25                                      ; preds = %21
  %26 = load i32, i32* %i, align 4, !tbaa !1
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %i, align 4, !tbaa !1
  br label %18

; <label>:28                                      ; preds = %18
  %29 = load i16, i16* %l_29, align 2, !tbaa !10
  %30 = trunc i16 %29 to i8
  %31 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %30, i8 signext -18)
  %32 = load i16, i16* %l_29, align 2, !tbaa !10
  %33 = load i64, i64* getelementptr inbounds ([9 x [6 x [2 x i64]]], [9 x [6 x [2 x i64]]]* @g_11, i32 0, i64 5, i64 4, i64 1), align 8, !tbaa !7
  %34 = load i32, i32* %3, align 4, !tbaa !1
  %35 = load i64, i64* getelementptr inbounds ([9 x [6 x [2 x i64]]], [9 x [6 x [2 x i64]]]* @g_11, i32 0, i64 8, i64 1, i64 0), align 8, !tbaa !7
  %36 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @g_23, i32 0, i64 4), align 8, !tbaa !7
  %37 = trunc i64 %36 to i32
  %38 = load i64, i64* getelementptr inbounds ([9 x [6 x [2 x i64]]], [9 x [6 x [2 x i64]]]* @g_11, i32 0, i64 8, i64 1, i64 0), align 8, !tbaa !7
  %39 = load i16, i16* %l_29, align 2, !tbaa !10
  %40 = sext i16 %39 to i32
  %41 = load i16, i16* %l_29, align 2, !tbaa !10
  %42 = sext i16 %41 to i32
  %43 = call i32 @safe_mod_func_uint32_t_u_u(i32 %40, i32 %42)
  %44 = trunc i32 %43 to i8
  %45 = load i32, i32* %3, align 4, !tbaa !1
  %46 = call zeroext i8 @safe_rshift_func_uint8_t_u_u(i8 zeroext %44, i32 %45)
  %47 = load i32, i32* %l_61, align 4, !tbaa !1
  %48 = trunc i32 %47 to i8
  %49 = call i64* @func_54(i32 %37, i8 zeroext %48)
  %50 = load i64**, i64*** @g_142, align 8, !tbaa !5
  store i64* %49, i64** %50, align 8, !tbaa !5
  %51 = bitcast %union.U0* %p_15 to i64*
  %52 = load i64, i64* %51, align 8, !tbaa !7
  %53 = trunc i64 %52 to i8
  %54 = load i16, i16* %l_29, align 2, !tbaa !10
  %55 = trunc i16 %54 to i8
  %56 = call i64 @func_50(i64* %49, i8 signext %53, i8 zeroext %55)
  %57 = getelementptr %union.U0, %union.U0* %4, i32 0, i32 0
  store i64 %56, i64* %57, align 8
  %58 = call signext i16 @safe_sub_func_int16_t_s_s(i16 signext -17838, i16 signext -1)
  %59 = load i32, i32* getelementptr inbounds ([7 x i32], [7 x i32]* @g_431, i32 0, i64 0), align 4, !tbaa !1
  %60 = trunc i32 %59 to i16
  %61 = call signext i16 @safe_div_func_int16_t_s_s(i16 signext %58, i16 signext %60)
  %62 = sext i16 %61 to i64
  %63 = call i64 @safe_mod_func_uint64_t_u_u(i64 %35, i64 %62)
  %64 = trunc i64 %63 to i8
  %65 = load i16, i16* %l_29, align 2, !tbaa !10
  %66 = trunc i16 %65 to i8
  %67 = call i64* @func_40(i32 %34, i8 zeroext %64, i8 zeroext %66)
  %68 = load i8, i8* @g_313, align 1, !tbaa !9
  %69 = sext i8 %68 to i32
  %70 = call i64 @func_37(i64* %67, i32 %69)
  %71 = call i32* @func_35(i64 %70)
  %72 = load i64, i64* %2, align 8, !tbaa !7
  %73 = trunc i64 %72 to i16
  %74 = load i16, i16* %l_29, align 2, !tbaa !10
  %75 = sext i16 %74 to i64
  %76 = load i32*, i32** %l_635, align 8, !tbaa !5
  %77 = call i32* @func_30(i32* %71, i16 signext %73, i64 %75, i32* %76)
  %78 = load i32*, i32** %l_635, align 8, !tbaa !5
  %79 = icmp ne i32* %77, %78
  %80 = zext i1 %79 to i32
  %81 = load i32, i32* %l_61, align 4, !tbaa !1
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %277

; <label>:83                                      ; preds = %28
  %84 = bitcast i32** %l_907 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %84) #1
  store i32* @g_25, i32** %l_907, align 8, !tbaa !5
  %85 = bitcast i32** %l_908 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %85) #1
  store i32* @g_25, i32** %l_908, align 8, !tbaa !5
  %86 = bitcast [4 x [4 x i32]]* %l_909 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %86) #1
  %87 = bitcast [4 x [4 x i32]]* %l_909 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %87, i8* bitcast ([4 x [4 x i32]]* @func_12.l_909 to i8*), i64 64, i32 16, i1 false)
  %88 = bitcast i32** %l_910 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %88) #1
  %89 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %l_909, i32 0, i64 0
  %90 = getelementptr inbounds [4 x i32], [4 x i32]* %89, i32 0, i64 3
  store i32* %90, i32** %l_910, align 8, !tbaa !5
  %91 = bitcast i32** %l_911 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %91) #1
  %92 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %l_909, i32 0, i64 3
  %93 = getelementptr inbounds [4 x i32], [4 x i32]* %92, i32 0, i64 0
  store i32* %93, i32** %l_911, align 8, !tbaa !5
  %94 = bitcast i32** %l_913 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %94) #1
  %95 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %l_909, i32 0, i64 1
  %96 = getelementptr inbounds [4 x i32], [4 x i32]* %95, i32 0, i64 2
  store i32* %96, i32** %l_913, align 8, !tbaa !5
  %97 = bitcast i32** %l_914 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %97) #1
  %98 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %l_909, i32 0, i64 2
  %99 = getelementptr inbounds [4 x i32], [4 x i32]* %98, i32 0, i64 2
  store i32* %99, i32** %l_914, align 8, !tbaa !5
  %100 = bitcast i32** %l_915 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %100) #1
  store i32* @g_629, i32** %l_915, align 8, !tbaa !5
  %101 = bitcast i32** %l_916 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %101) #1
  store i32* @g_91, i32** %l_916, align 8, !tbaa !5
  %102 = bitcast i32** %l_918 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %102) #1
  store i32* @g_91, i32** %l_918, align 8, !tbaa !5
  %103 = bitcast [8 x [8 x [1 x i32*]]]* %l_919 to i8*
  call void @llvm.lifetime.start(i64 512, i8* %103) #1
  %104 = getelementptr inbounds [8 x [8 x [1 x i32*]]], [8 x [8 x [1 x i32*]]]* %l_919, i64 0, i64 0
  %105 = getelementptr inbounds [8 x [1 x i32*]], [8 x [1 x i32*]]* %104, i64 0, i64 0
  %106 = getelementptr inbounds [1 x i32*], [1 x i32*]* %105, i64 0, i64 0
  store i32* %l_912, i32** %106, !tbaa !5
  %107 = getelementptr inbounds [1 x i32*], [1 x i32*]* %105, i64 1
  %108 = getelementptr inbounds [1 x i32*], [1 x i32*]* %107, i64 0, i64 0
  store i32* null, i32** %108, !tbaa !5
  %109 = getelementptr inbounds [1 x i32*], [1 x i32*]* %107, i64 1
  %110 = getelementptr inbounds [1 x i32*], [1 x i32*]* %109, i64 0, i64 0
  store i32* @g_91, i32** %110, !tbaa !5
  %111 = getelementptr inbounds [1 x i32*], [1 x i32*]* %109, i64 1
  %112 = getelementptr inbounds [1 x i32*], [1 x i32*]* %111, i64 0, i64 0
  store i32* @g_25, i32** %112, !tbaa !5
  %113 = getelementptr inbounds [1 x i32*], [1 x i32*]* %111, i64 1
  %114 = getelementptr inbounds [1 x i32*], [1 x i32*]* %113, i64 0, i64 0
  store i32* %l_917, i32** %114, !tbaa !5
  %115 = getelementptr inbounds [1 x i32*], [1 x i32*]* %113, i64 1
  %116 = getelementptr inbounds [1 x i32*], [1 x i32*]* %115, i64 0, i64 0
  %117 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %l_909, i32 0, i64 2
  %118 = getelementptr inbounds [4 x i32], [4 x i32]* %117, i32 0, i64 2
  store i32* %118, i32** %116, !tbaa !5
  %119 = getelementptr inbounds [1 x i32*], [1 x i32*]* %115, i64 1
  %120 = getelementptr inbounds [1 x i32*], [1 x i32*]* %119, i64 0, i64 0
  store i32* %l_917, i32** %120, !tbaa !5
  %121 = getelementptr inbounds [1 x i32*], [1 x i32*]* %119, i64 1
  %122 = getelementptr inbounds [1 x i32*], [1 x i32*]* %121, i64 0, i64 0
  store i32* @g_25, i32** %122, !tbaa !5
  %123 = getelementptr inbounds [8 x [1 x i32*]], [8 x [1 x i32*]]* %104, i64 1
  %124 = getelementptr inbounds [8 x [1 x i32*]], [8 x [1 x i32*]]* %123, i64 0, i64 0
  %125 = getelementptr inbounds [1 x i32*], [1 x i32*]* %124, i64 0, i64 0
  store i32* @g_91, i32** %125, !tbaa !5
  %126 = getelementptr inbounds [1 x i32*], [1 x i32*]* %124, i64 1
  %127 = getelementptr inbounds [1 x i32*], [1 x i32*]* %126, i64 0, i64 0
  store i32* null, i32** %127, !tbaa !5
  %128 = getelementptr inbounds [1 x i32*], [1 x i32*]* %126, i64 1
  %129 = getelementptr inbounds [1 x i32*], [1 x i32*]* %128, i64 0, i64 0
  store i32* %l_912, i32** %129, !tbaa !5
  %130 = getelementptr inbounds [1 x i32*], [1 x i32*]* %128, i64 1
  %131 = getelementptr inbounds [1 x i32*], [1 x i32*]* %130, i64 0, i64 0
  store i32* %l_912, i32** %131, !tbaa !5
  %132 = getelementptr inbounds [1 x i32*], [1 x i32*]* %130, i64 1
  %133 = getelementptr inbounds [1 x i32*], [1 x i32*]* %132, i64 0, i64 0
  store i32* null, i32** %133, !tbaa !5
  %134 = getelementptr inbounds [1 x i32*], [1 x i32*]* %132, i64 1
  %135 = getelementptr inbounds [1 x i32*], [1 x i32*]* %134, i64 0, i64 0
  store i32* @g_91, i32** %135, !tbaa !5
  %136 = getelementptr inbounds [1 x i32*], [1 x i32*]* %134, i64 1
  %137 = getelementptr inbounds [1 x i32*], [1 x i32*]* %136, i64 0, i64 0
  store i32* @g_25, i32** %137, !tbaa !5
  %138 = getelementptr inbounds [1 x i32*], [1 x i32*]* %136, i64 1
  %139 = getelementptr inbounds [1 x i32*], [1 x i32*]* %138, i64 0, i64 0
  store i32* %l_917, i32** %139, !tbaa !5
  %140 = getelementptr inbounds [8 x [1 x i32*]], [8 x [1 x i32*]]* %123, i64 1
  %141 = getelementptr inbounds [8 x [1 x i32*]], [8 x [1 x i32*]]* %140, i64 0, i64 0
  %142 = getelementptr inbounds [1 x i32*], [1 x i32*]* %141, i64 0, i64 0
  %143 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %l_909, i32 0, i64 2
  %144 = getelementptr inbounds [4 x i32], [4 x i32]* %143, i32 0, i64 2
  store i32* %144, i32** %142, !tbaa !5
  %145 = getelementptr inbounds [1 x i32*], [1 x i32*]* %141, i64 1
  %146 = getelementptr inbounds [1 x i32*], [1 x i32*]* %145, i64 0, i64 0
  store i32* %l_917, i32** %146, !tbaa !5
  %147 = getelementptr inbounds [1 x i32*], [1 x i32*]* %145, i64 1
  %148 = getelementptr inbounds [1 x i32*], [1 x i32*]* %147, i64 0, i64 0
  store i32* @g_25, i32** %148, !tbaa !5
  %149 = getelementptr inbounds [1 x i32*], [1 x i32*]* %147, i64 1
  %150 = getelementptr inbounds [1 x i32*], [1 x i32*]* %149, i64 0, i64 0
  store i32* @g_91, i32** %150, !tbaa !5
  %151 = getelementptr inbounds [1 x i32*], [1 x i32*]* %149, i64 1
  %152 = getelementptr inbounds [1 x i32*], [1 x i32*]* %151, i64 0, i64 0
  store i32* null, i32** %152, !tbaa !5
  %153 = getelementptr inbounds [1 x i32*], [1 x i32*]* %151, i64 1
  %154 = getelementptr inbounds [1 x i32*], [1 x i32*]* %153, i64 0, i64 0
  store i32* %l_912, i32** %154, !tbaa !5
  %155 = getelementptr inbounds [1 x i32*], [1 x i32*]* %153, i64 1
  %156 = getelementptr inbounds [1 x i32*], [1 x i32*]* %155, i64 0, i64 0
  store i32* %l_912, i32** %156, !tbaa !5
  %157 = getelementptr inbounds [1 x i32*], [1 x i32*]* %155, i64 1
  %158 = getelementptr inbounds [1 x i32*], [1 x i32*]* %157, i64 0, i64 0
  store i32* null, i32** %158, !tbaa !5
  %159 = getelementptr inbounds [8 x [1 x i32*]], [8 x [1 x i32*]]* %140, i64 1
  %160 = getelementptr inbounds [8 x [1 x i32*]], [8 x [1 x i32*]]* %159, i64 0, i64 0
  %161 = getelementptr inbounds [1 x i32*], [1 x i32*]* %160, i64 0, i64 0
  store i32* @g_91, i32** %161, !tbaa !5
  %162 = getelementptr inbounds [1 x i32*], [1 x i32*]* %160, i64 1
  %163 = getelementptr inbounds [1 x i32*], [1 x i32*]* %162, i64 0, i64 0
  store i32* @g_25, i32** %163, !tbaa !5
  %164 = getelementptr inbounds [1 x i32*], [1 x i32*]* %162, i64 1
  %165 = getelementptr inbounds [1 x i32*], [1 x i32*]* %164, i64 0, i64 0
  store i32* %l_917, i32** %165, !tbaa !5
  %166 = getelementptr inbounds [1 x i32*], [1 x i32*]* %164, i64 1
  %167 = getelementptr inbounds [1 x i32*], [1 x i32*]* %166, i64 0, i64 0
  %168 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %l_909, i32 0, i64 2
  %169 = getelementptr inbounds [4 x i32], [4 x i32]* %168, i32 0, i64 2
  store i32* %169, i32** %167, !tbaa !5
  %170 = getelementptr inbounds [1 x i32*], [1 x i32*]* %166, i64 1
  %171 = getelementptr inbounds [1 x i32*], [1 x i32*]* %170, i64 0, i64 0
  store i32* %l_917, i32** %171, !tbaa !5
  %172 = getelementptr inbounds [1 x i32*], [1 x i32*]* %170, i64 1
  %173 = getelementptr inbounds [1 x i32*], [1 x i32*]* %172, i64 0, i64 0
  store i32* @g_25, i32** %173, !tbaa !5
  %174 = getelementptr inbounds [1 x i32*], [1 x i32*]* %172, i64 1
  %175 = getelementptr inbounds [1 x i32*], [1 x i32*]* %174, i64 0, i64 0
  store i32* @g_91, i32** %175, !tbaa !5
  %176 = getelementptr inbounds [1 x i32*], [1 x i32*]* %174, i64 1
  %177 = getelementptr inbounds [1 x i32*], [1 x i32*]* %176, i64 0, i64 0
  store i32* null, i32** %177, !tbaa !5
  %178 = getelementptr inbounds [8 x [1 x i32*]], [8 x [1 x i32*]]* %159, i64 1
  %179 = getelementptr inbounds [8 x [1 x i32*]], [8 x [1 x i32*]]* %178, i64 0, i64 0
  %180 = getelementptr inbounds [1 x i32*], [1 x i32*]* %179, i64 0, i64 0
  store i32* %l_912, i32** %180, !tbaa !5
  %181 = getelementptr inbounds [1 x i32*], [1 x i32*]* %179, i64 1
  %182 = getelementptr inbounds [1 x i32*], [1 x i32*]* %181, i64 0, i64 0
  store i32* %l_912, i32** %182, !tbaa !5
  %183 = getelementptr inbounds [1 x i32*], [1 x i32*]* %181, i64 1
  %184 = getelementptr inbounds [1 x i32*], [1 x i32*]* %183, i64 0, i64 0
  store i32* null, i32** %184, !tbaa !5
  %185 = getelementptr inbounds [1 x i32*], [1 x i32*]* %183, i64 1
  %186 = getelementptr inbounds [1 x i32*], [1 x i32*]* %185, i64 0, i64 0
  store i32* null, i32** %186, !tbaa !5
  %187 = getelementptr inbounds [1 x i32*], [1 x i32*]* %185, i64 1
  %188 = getelementptr inbounds [1 x i32*], [1 x i32*]* %187, i64 0, i64 0
  %189 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %l_909, i32 0, i64 2
  %190 = getelementptr inbounds [4 x i32], [4 x i32]* %189, i32 0, i64 2
  store i32* %190, i32** %188, !tbaa !5
  %191 = getelementptr inbounds [1 x i32*], [1 x i32*]* %187, i64 1
  %192 = getelementptr inbounds [1 x i32*], [1 x i32*]* %191, i64 0, i64 0
  store i32* @g_629, i32** %192, !tbaa !5
  %193 = getelementptr inbounds [1 x i32*], [1 x i32*]* %191, i64 1
  %194 = getelementptr inbounds [1 x i32*], [1 x i32*]* %193, i64 0, i64 0
  store i32* %l_912, i32** %194, !tbaa !5
  %195 = getelementptr inbounds [1 x i32*], [1 x i32*]* %193, i64 1
  %196 = getelementptr inbounds [1 x i32*], [1 x i32*]* %195, i64 0, i64 0
  store i32* @g_629, i32** %196, !tbaa !5
  %197 = getelementptr inbounds [8 x [1 x i32*]], [8 x [1 x i32*]]* %178, i64 1
  %198 = getelementptr inbounds [8 x [1 x i32*]], [8 x [1 x i32*]]* %197, i64 0, i64 0
  %199 = getelementptr inbounds [1 x i32*], [1 x i32*]* %198, i64 0, i64 0
  %200 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %l_909, i32 0, i64 2
  %201 = getelementptr inbounds [4 x i32], [4 x i32]* %200, i32 0, i64 2
  store i32* %201, i32** %199, !tbaa !5
  %202 = getelementptr inbounds [1 x i32*], [1 x i32*]* %198, i64 1
  %203 = getelementptr inbounds [1 x i32*], [1 x i32*]* %202, i64 0, i64 0
  store i32* null, i32** %203, !tbaa !5
  %204 = getelementptr inbounds [1 x i32*], [1 x i32*]* %202, i64 1
  %205 = getelementptr inbounds [1 x i32*], [1 x i32*]* %204, i64 0, i64 0
  store i32* %l_917, i32** %205, !tbaa !5
  %206 = getelementptr inbounds [1 x i32*], [1 x i32*]* %204, i64 1
  %207 = getelementptr inbounds [1 x i32*], [1 x i32*]* %206, i64 0, i64 0
  store i32* %l_917, i32** %207, !tbaa !5
  %208 = getelementptr inbounds [1 x i32*], [1 x i32*]* %206, i64 1
  %209 = getelementptr inbounds [1 x i32*], [1 x i32*]* %208, i64 0, i64 0
  store i32* %l_917, i32** %209, !tbaa !5
  %210 = getelementptr inbounds [1 x i32*], [1 x i32*]* %208, i64 1
  %211 = getelementptr inbounds [1 x i32*], [1 x i32*]* %210, i64 0, i64 0
  store i32* %l_917, i32** %211, !tbaa !5
  %212 = getelementptr inbounds [1 x i32*], [1 x i32*]* %210, i64 1
  %213 = getelementptr inbounds [1 x i32*], [1 x i32*]* %212, i64 0, i64 0
  store i32* null, i32** %213, !tbaa !5
  %214 = getelementptr inbounds [1 x i32*], [1 x i32*]* %212, i64 1
  %215 = getelementptr inbounds [1 x i32*], [1 x i32*]* %214, i64 0, i64 0
  %216 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %l_909, i32 0, i64 2
  %217 = getelementptr inbounds [4 x i32], [4 x i32]* %216, i32 0, i64 2
  store i32* %217, i32** %215, !tbaa !5
  %218 = getelementptr inbounds [8 x [1 x i32*]], [8 x [1 x i32*]]* %197, i64 1
  %219 = getelementptr inbounds [8 x [1 x i32*]], [8 x [1 x i32*]]* %218, i64 0, i64 0
  %220 = getelementptr inbounds [1 x i32*], [1 x i32*]* %219, i64 0, i64 0
  store i32* @g_629, i32** %220, !tbaa !5
  %221 = getelementptr inbounds [1 x i32*], [1 x i32*]* %219, i64 1
  %222 = getelementptr inbounds [1 x i32*], [1 x i32*]* %221, i64 0, i64 0
  store i32* %l_912, i32** %222, !tbaa !5
  %223 = getelementptr inbounds [1 x i32*], [1 x i32*]* %221, i64 1
  %224 = getelementptr inbounds [1 x i32*], [1 x i32*]* %223, i64 0, i64 0
  store i32* @g_629, i32** %224, !tbaa !5
  %225 = getelementptr inbounds [1 x i32*], [1 x i32*]* %223, i64 1
  %226 = getelementptr inbounds [1 x i32*], [1 x i32*]* %225, i64 0, i64 0
  %227 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %l_909, i32 0, i64 2
  %228 = getelementptr inbounds [4 x i32], [4 x i32]* %227, i32 0, i64 2
  store i32* %228, i32** %226, !tbaa !5
  %229 = getelementptr inbounds [1 x i32*], [1 x i32*]* %225, i64 1
  %230 = getelementptr inbounds [1 x i32*], [1 x i32*]* %229, i64 0, i64 0
  store i32* null, i32** %230, !tbaa !5
  %231 = getelementptr inbounds [1 x i32*], [1 x i32*]* %229, i64 1
  %232 = getelementptr inbounds [1 x i32*], [1 x i32*]* %231, i64 0, i64 0
  store i32* %l_917, i32** %232, !tbaa !5
  %233 = getelementptr inbounds [1 x i32*], [1 x i32*]* %231, i64 1
  %234 = getelementptr inbounds [1 x i32*], [1 x i32*]* %233, i64 0, i64 0
  store i32* %l_917, i32** %234, !tbaa !5
  %235 = getelementptr inbounds [1 x i32*], [1 x i32*]* %233, i64 1
  %236 = getelementptr inbounds [1 x i32*], [1 x i32*]* %235, i64 0, i64 0
  store i32* %l_917, i32** %236, !tbaa !5
  %237 = getelementptr inbounds [8 x [1 x i32*]], [8 x [1 x i32*]]* %218, i64 1
  %238 = getelementptr inbounds [8 x [1 x i32*]], [8 x [1 x i32*]]* %237, i64 0, i64 0
  %239 = getelementptr inbounds [1 x i32*], [1 x i32*]* %238, i64 0, i64 0
  store i32* %l_917, i32** %239, !tbaa !5
  %240 = getelementptr inbounds [1 x i32*], [1 x i32*]* %238, i64 1
  %241 = getelementptr inbounds [1 x i32*], [1 x i32*]* %240, i64 0, i64 0
  store i32* null, i32** %241, !tbaa !5
  %242 = getelementptr inbounds [1 x i32*], [1 x i32*]* %240, i64 1
  %243 = getelementptr inbounds [1 x i32*], [1 x i32*]* %242, i64 0, i64 0
  %244 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %l_909, i32 0, i64 2
  %245 = getelementptr inbounds [4 x i32], [4 x i32]* %244, i32 0, i64 2
  store i32* %245, i32** %243, !tbaa !5
  %246 = getelementptr inbounds [1 x i32*], [1 x i32*]* %242, i64 1
  %247 = getelementptr inbounds [1 x i32*], [1 x i32*]* %246, i64 0, i64 0
  store i32* @g_629, i32** %247, !tbaa !5
  %248 = getelementptr inbounds [1 x i32*], [1 x i32*]* %246, i64 1
  %249 = getelementptr inbounds [1 x i32*], [1 x i32*]* %248, i64 0, i64 0
  store i32* %l_912, i32** %249, !tbaa !5
  %250 = getelementptr inbounds [1 x i32*], [1 x i32*]* %248, i64 1
  %251 = getelementptr inbounds [1 x i32*], [1 x i32*]* %250, i64 0, i64 0
  store i32* @g_629, i32** %251, !tbaa !5
  %252 = getelementptr inbounds [1 x i32*], [1 x i32*]* %250, i64 1
  %253 = getelementptr inbounds [1 x i32*], [1 x i32*]* %252, i64 0, i64 0
  %254 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %l_909, i32 0, i64 2
  %255 = getelementptr inbounds [4 x i32], [4 x i32]* %254, i32 0, i64 2
  store i32* %255, i32** %253, !tbaa !5
  %256 = getelementptr inbounds [1 x i32*], [1 x i32*]* %252, i64 1
  %257 = getelementptr inbounds [1 x i32*], [1 x i32*]* %256, i64 0, i64 0
  store i32* null, i32** %257, !tbaa !5
  %258 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %258) #1
  %259 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %259) #1
  %260 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %260) #1
  %261 = load i8, i8* @g_921, align 1, !tbaa !9
  %262 = add i8 %261, -1
  store i8 %262, i8* @g_921, align 1, !tbaa !9
  %263 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %263) #1
  %264 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %264) #1
  %265 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %265) #1
  %266 = bitcast [8 x [8 x [1 x i32*]]]* %l_919 to i8*
  call void @llvm.lifetime.end(i64 512, i8* %266) #1
  %267 = bitcast i32** %l_918 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %267) #1
  %268 = bitcast i32** %l_916 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %268) #1
  %269 = bitcast i32** %l_915 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %269) #1
  %270 = bitcast i32** %l_914 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %270) #1
  %271 = bitcast i32** %l_913 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %271) #1
  %272 = bitcast i32** %l_911 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %272) #1
  %273 = bitcast i32** %l_910 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %273) #1
  %274 = bitcast [4 x [4 x i32]]* %l_909 to i8*
  call void @llvm.lifetime.end(i64 64, i8* %274) #1
  %275 = bitcast i32** %l_908 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %275) #1
  %276 = bitcast i32** %l_907 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %276) #1
  br label %302

; <label>:277                                     ; preds = %28
  %278 = bitcast i32** %l_924 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %278) #1
  store i32* @g_629, i32** %l_924, align 8, !tbaa !5
  %279 = bitcast i32** %l_925 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %279) #1
  store i32* @g_629, i32** %l_925, align 8, !tbaa !5
  %280 = bitcast i32** %l_926 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %280) #1
  store i32* %l_912, i32** %l_926, align 8, !tbaa !5
  %281 = bitcast i32* %l_927 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %281) #1
  store i32 -1362576519, i32* %l_927, align 4, !tbaa !1
  %282 = bitcast i32** %l_928 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %282) #1
  store i32* @g_628, i32** %l_928, align 8, !tbaa !5
  %283 = bitcast i32** %l_929 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %283) #1
  store i32* null, i32** %l_929, align 8, !tbaa !5
  %284 = bitcast [6 x i32*]* %l_930 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %284) #1
  %285 = bitcast [6 x i32*]* %l_930 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %285, i8* bitcast ([6 x i32*]* @func_12.l_930 to i8*), i64 48, i32 16, i1 false)
  %286 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %286) #1
  %287 = load i64, i64* @g_937, align 8, !tbaa !7
  %288 = add i64 %287, 1
  store i64 %288, i64* @g_937, align 8, !tbaa !7
  %289 = load i32*, i32** %l_635, align 8, !tbaa !5
  %290 = load i32, i32* %289, align 4, !tbaa !1
  %291 = load i32*, i32** %l_924, align 8, !tbaa !5
  %292 = load i32, i32* %291, align 4, !tbaa !1
  %293 = or i32 %292, %290
  store i32 %293, i32* %291, align 4, !tbaa !1
  %294 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %294) #1
  %295 = bitcast [6 x i32*]* %l_930 to i8*
  call void @llvm.lifetime.end(i64 48, i8* %295) #1
  %296 = bitcast i32** %l_929 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %296) #1
  %297 = bitcast i32** %l_928 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %297) #1
  %298 = bitcast i32* %l_927 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %298) #1
  %299 = bitcast i32** %l_926 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %299) #1
  %300 = bitcast i32** %l_925 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %300) #1
  %301 = bitcast i32** %l_924 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %301) #1
  br label %302

; <label>:302                                     ; preds = %277, %83
  %303 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @g_23, i32 0, i64 4), align 8, !tbaa !7
  %304 = trunc i64 %303 to i16
  %305 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %305) #1
  %306 = bitcast i32* %l_936 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %306) #1
  %307 = bitcast i32* %l_934 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %307) #1
  %308 = bitcast i32* %l_933 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %308) #1
  %309 = bitcast i32* %l_932 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %309) #1
  %310 = bitcast [1 x i64]* %l_931 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %310) #1
  %311 = bitcast i32* %l_920 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %311) #1
  %312 = bitcast i32* %l_917 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %312) #1
  %313 = bitcast i32* %l_912 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %313) #1
  %314 = bitcast i32** %l_635 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %314) #1
  %315 = bitcast i32* %l_61 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %315) #1
  %316 = bitcast i16* %l_29 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %316) #1
  ret i16 %304
}

; Function Attrs: nounwind uwtable
define internal i64 @func_18(i32 %p_19) #0 {
  %1 = alloca %union.U0, align 8
  %2 = alloca i32, align 4
  %l_22 = alloca i64*, align 8
  %l_24 = alloca i32*, align 8
  %l_26 = alloca %union.U0, align 8
  store i32 %p_19, i32* %2, align 4, !tbaa !1
  %3 = bitcast i64** %l_22 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store i64* getelementptr inbounds ([5 x i64], [5 x i64]* @g_23, i32 0, i64 4), i64** %l_22, align 8, !tbaa !5
  %4 = bitcast i32** %l_24 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store i32* @g_25, i32** %l_24, align 8, !tbaa !5
  %5 = bitcast %union.U0* %l_26 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast %union.U0* %l_26 to i8*
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 8, i32 8, i1 false)
  %7 = call signext i8 @safe_rshift_func_int8_t_s_s(i8 signext 1, i32 2)
  %8 = sext i8 %7 to i32
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i32
  %11 = load i32*, i32** %l_24, align 8, !tbaa !5
  %12 = load i32, i32* %11, align 4, !tbaa !1
  %13 = or i32 %12, %10
  store i32 %13, i32* %11, align 4, !tbaa !1
  %14 = bitcast %union.U0* %1 to i8*
  %15 = bitcast %union.U0* %l_26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 8, i32 8, i1 false), !tbaa.struct !12
  %16 = bitcast %union.U0* %l_26 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  %17 = bitcast i32** %l_24 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  %18 = bitcast i64** %l_22 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  %19 = getelementptr %union.U0, %union.U0* %1, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  ret i64 %20
}

; Function Attrs: nounwind uwtable
define internal signext i16 @safe_lshift_func_int16_t_s_s(i16 signext %left, i32 %right) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i32, align 4
  store i16 %left, i16* %1, align 2, !tbaa !10
  store i32 %right, i32* %2, align 4, !tbaa !1
  %3 = load i16, i16* %1, align 2, !tbaa !10
  %4 = sext i16 %3 to i32
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %18, label %6

; <label>:6                                       ; preds = %0
  %7 = load i32, i32* %2, align 4, !tbaa !1
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %18, label %9

; <label>:9                                       ; preds = %6
  %10 = load i32, i32* %2, align 4, !tbaa !1
  %11 = icmp sge i32 %10, 32
  br i1 %11, label %18, label %12

; <label>:12                                      ; preds = %9
  %13 = load i16, i16* %1, align 2, !tbaa !10
  %14 = sext i16 %13 to i32
  %15 = load i32, i32* %2, align 4, !tbaa !1
  %16 = ashr i32 32767, %15
  %17 = icmp sgt i32 %14, %16
  br i1 %17, label %18, label %21

; <label>:18                                      ; preds = %12, %9, %6, %0
  %19 = load i16, i16* %1, align 2, !tbaa !10
  %20 = sext i16 %19 to i32
  br label %26

; <label>:21                                      ; preds = %12
  %22 = load i16, i16* %1, align 2, !tbaa !10
  %23 = sext i16 %22 to i32
  %24 = load i32, i32* %2, align 4, !tbaa !1
  %25 = shl i32 %23, %24
  br label %26

; <label>:26                                      ; preds = %21, %18
  %27 = phi i32 [ %20, %18 ], [ %25, %21 ]
  %28 = trunc i32 %27 to i16
  ret i16 %28
}

; Function Attrs: nounwind uwtable
define internal i64 @safe_div_func_uint64_t_u_u(i64 %ui1, i64 %ui2) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 %ui1, i64* %1, align 8, !tbaa !7
  store i64 %ui2, i64* %2, align 8, !tbaa !7
  %3 = load i64, i64* %2, align 8, !tbaa !7
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %7

; <label>:5                                       ; preds = %0
  %6 = load i64, i64* %1, align 8, !tbaa !7
  br label %11

; <label>:7                                       ; preds = %0
  %8 = load i64, i64* %1, align 8, !tbaa !7
  %9 = load i64, i64* %2, align 8, !tbaa !7
  %10 = udiv i64 %8, %9
  br label %11

; <label>:11                                      ; preds = %7, %5
  %12 = phi i64 [ %6, %5 ], [ %10, %7 ]
  ret i64 %12
}

; Function Attrs: nounwind uwtable
define internal signext i8 @safe_mod_func_int8_t_s_s(i8 signext %si1, i8 signext %si2) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  store i8 %si1, i8* %1, align 1, !tbaa !9
  store i8 %si2, i8* %2, align 1, !tbaa !9
  %3 = load i8, i8* %2, align 1, !tbaa !9
  %4 = sext i8 %3 to i32
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %14, label %6

; <label>:6                                       ; preds = %0
  %7 = load i8, i8* %1, align 1, !tbaa !9
  %8 = sext i8 %7 to i32
  %9 = icmp eq i32 %8, -128
  br i1 %9, label %10, label %17

; <label>:10                                      ; preds = %6
  %11 = load i8, i8* %2, align 1, !tbaa !9
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %17

; <label>:14                                      ; preds = %10, %0
  %15 = load i8, i8* %1, align 1, !tbaa !9
  %16 = sext i8 %15 to i32
  br label %23

; <label>:17                                      ; preds = %10, %6
  %18 = load i8, i8* %1, align 1, !tbaa !9
  %19 = sext i8 %18 to i32
  %20 = load i8, i8* %2, align 1, !tbaa !9
  %21 = sext i8 %20 to i32
  %22 = srem i32 %19, %21
  br label %23

; <label>:23                                      ; preds = %17, %14
  %24 = phi i32 [ %16, %14 ], [ %22, %17 ]
  %25 = trunc i32 %24 to i8
  ret i8 %25
}

; Function Attrs: nounwind uwtable
define internal signext i8 @safe_add_func_int8_t_s_s(i8 signext %si1, i8 signext %si2) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  store i8 %si1, i8* %1, align 1, !tbaa !9
  store i8 %si2, i8* %2, align 1, !tbaa !9
  %3 = load i8, i8* %1, align 1, !tbaa !9
  %4 = sext i8 %3 to i32
  %5 = load i8, i8* %2, align 1, !tbaa !9
  %6 = sext i8 %5 to i32
  %7 = add nsw i32 %4, %6
  %8 = trunc i32 %7 to i8
  ret i8 %8
}

; Function Attrs: nounwind uwtable
define internal zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %ui1, i16 zeroext %ui2) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i16, align 2
  store i16 %ui1, i16* %1, align 2, !tbaa !10
  store i16 %ui2, i16* %2, align 2, !tbaa !10
  %3 = load i16, i16* %1, align 2, !tbaa !10
  %4 = zext i16 %3 to i32
  %5 = load i16, i16* %2, align 2, !tbaa !10
  %6 = zext i16 %5 to i32
  %7 = mul i32 %4, %6
  %8 = trunc i32 %7 to i16
  ret i16 %8
}

; Function Attrs: nounwind uwtable
define internal signext i8 @safe_unary_minus_func_int8_t_s(i8 signext %si) #0 {
  %1 = alloca i8, align 1
  store i8 %si, i8* %1, align 1, !tbaa !9
  %2 = load i8, i8* %1, align 1, !tbaa !9
  %3 = sext i8 %2 to i32
  %4 = sub nsw i32 0, %3
  %5 = trunc i32 %4 to i8
  ret i8 %5
}

; Function Attrs: nounwind uwtable
define internal i64 @safe_sub_func_int64_t_s_s(i64 %si1, i64 %si2) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 %si1, i64* %1, align 8, !tbaa !7
  store i64 %si2, i64* %2, align 8, !tbaa !7
  %3 = load i64, i64* %1, align 8, !tbaa !7
  %4 = load i64, i64* %2, align 8, !tbaa !7
  %5 = xor i64 %3, %4
  %6 = load i64, i64* %1, align 8, !tbaa !7
  %7 = load i64, i64* %1, align 8, !tbaa !7
  %8 = load i64, i64* %2, align 8, !tbaa !7
  %9 = xor i64 %7, %8
  %10 = and i64 %9, -9223372036854775808
  %11 = xor i64 %6, %10
  %12 = load i64, i64* %2, align 8, !tbaa !7
  %13 = sub nsw i64 %11, %12
  %14 = load i64, i64* %2, align 8, !tbaa !7
  %15 = xor i64 %13, %14
  %16 = and i64 %5, %15
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %20

; <label>:18                                      ; preds = %0
  %19 = load i64, i64* %1, align 8, !tbaa !7
  br label %24

; <label>:20                                      ; preds = %0
  %21 = load i64, i64* %1, align 8, !tbaa !7
  %22 = load i64, i64* %2, align 8, !tbaa !7
  %23 = sub nsw i64 %21, %22
  br label %24

; <label>:24                                      ; preds = %20, %18
  %25 = phi i64 [ %19, %18 ], [ %23, %20 ]
  ret i64 %25
}

; Function Attrs: nounwind uwtable
define internal zeroext i16 @safe_mod_func_uint16_t_u_u(i16 zeroext %ui1, i16 zeroext %ui2) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i16, align 2
  store i16 %ui1, i16* %1, align 2, !tbaa !10
  store i16 %ui2, i16* %2, align 2, !tbaa !10
  %3 = load i16, i16* %2, align 2, !tbaa !10
  %4 = zext i16 %3 to i32
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

; <label>:6                                       ; preds = %0
  %7 = load i16, i16* %1, align 2, !tbaa !10
  %8 = zext i16 %7 to i32
  br label %15

; <label>:9                                       ; preds = %0
  %10 = load i16, i16* %1, align 2, !tbaa !10
  %11 = zext i16 %10 to i32
  %12 = load i16, i16* %2, align 2, !tbaa !10
  %13 = zext i16 %12 to i32
  %14 = srem i32 %11, %13
  br label %15

; <label>:15                                      ; preds = %9, %6
  %16 = phi i32 [ %8, %6 ], [ %14, %9 ]
  %17 = trunc i32 %16 to i16
  ret i16 %17
}

; Function Attrs: nounwind uwtable
define internal zeroext i16 @safe_rshift_func_uint16_t_u_s(i16 zeroext %left, i32 %right) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i32, align 4
  store i16 %left, i16* %1, align 2, !tbaa !10
  store i32 %right, i32* %2, align 4, !tbaa !1
  %3 = load i32, i32* %2, align 4, !tbaa !1
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %8, label %5

; <label>:5                                       ; preds = %0
  %6 = load i32, i32* %2, align 4, !tbaa !1
  %7 = icmp sge i32 %6, 32
  br i1 %7, label %8, label %11

; <label>:8                                       ; preds = %5, %0
  %9 = load i16, i16* %1, align 2, !tbaa !10
  %10 = zext i16 %9 to i32
  br label %16

; <label>:11                                      ; preds = %5
  %12 = load i16, i16* %1, align 2, !tbaa !10
  %13 = zext i16 %12 to i32
  %14 = load i32, i32* %2, align 4, !tbaa !1
  %15 = ashr i32 %13, %14
  br label %16

; <label>:16                                      ; preds = %11, %8
  %17 = phi i32 [ %10, %8 ], [ %15, %11 ]
  %18 = trunc i32 %17 to i16
  ret i16 %18
}

; Function Attrs: nounwind uwtable
define internal zeroext i16 @safe_add_func_uint16_t_u_u(i16 zeroext %ui1, i16 zeroext %ui2) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i16, align 2
  store i16 %ui1, i16* %1, align 2, !tbaa !10
  store i16 %ui2, i16* %2, align 2, !tbaa !10
  %3 = load i16, i16* %1, align 2, !tbaa !10
  %4 = zext i16 %3 to i32
  %5 = load i16, i16* %2, align 2, !tbaa !10
  %6 = zext i16 %5 to i32
  %7 = add nsw i32 %4, %6
  %8 = trunc i32 %7 to i16
  ret i16 %8
}

; Function Attrs: nounwind uwtable
define internal i32 @safe_sub_func_uint32_t_u_u(i32 %ui1, i32 %ui2) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %ui1, i32* %1, align 4, !tbaa !1
  store i32 %ui2, i32* %2, align 4, !tbaa !1
  %3 = load i32, i32* %1, align 4, !tbaa !1
  %4 = load i32, i32* %2, align 4, !tbaa !1
  %5 = sub i32 %3, %4
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define internal signext i16 @safe_lshift_func_int16_t_s_u(i16 signext %left, i32 %right) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i32, align 4
  store i16 %left, i16* %1, align 2, !tbaa !10
  store i32 %right, i32* %2, align 4, !tbaa !1
  %3 = load i16, i16* %1, align 2, !tbaa !10
  %4 = sext i16 %3 to i32
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %15, label %6

; <label>:6                                       ; preds = %0
  %7 = load i32, i32* %2, align 4, !tbaa !1
  %8 = icmp uge i32 %7, 32
  br i1 %8, label %15, label %9

; <label>:9                                       ; preds = %6
  %10 = load i16, i16* %1, align 2, !tbaa !10
  %11 = sext i16 %10 to i32
  %12 = load i32, i32* %2, align 4, !tbaa !1
  %13 = ashr i32 32767, %12
  %14 = icmp sgt i32 %11, %13
  br i1 %14, label %15, label %18

; <label>:15                                      ; preds = %9, %6, %0
  %16 = load i16, i16* %1, align 2, !tbaa !10
  %17 = sext i16 %16 to i32
  br label %23

; <label>:18                                      ; preds = %9
  %19 = load i16, i16* %1, align 2, !tbaa !10
  %20 = sext i16 %19 to i32
  %21 = load i32, i32* %2, align 4, !tbaa !1
  %22 = shl i32 %20, %21
  br label %23

; <label>:23                                      ; preds = %18, %15
  %24 = phi i32 [ %17, %15 ], [ %22, %18 ]
  %25 = trunc i32 %24 to i16
  ret i16 %25
}

; Function Attrs: nounwind uwtable
define internal i64 @safe_mod_func_int64_t_s_s(i64 %si1, i64 %si2) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 %si1, i64* %1, align 8, !tbaa !7
  store i64 %si2, i64* %2, align 8, !tbaa !7
  %3 = load i64, i64* %2, align 8, !tbaa !7
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %11, label %5

; <label>:5                                       ; preds = %0
  %6 = load i64, i64* %1, align 8, !tbaa !7
  %7 = icmp eq i64 %6, -9223372036854775808
  br i1 %7, label %8, label %13

; <label>:8                                       ; preds = %5
  %9 = load i64, i64* %2, align 8, !tbaa !7
  %10 = icmp eq i64 %9, -1
  br i1 %10, label %11, label %13

; <label>:11                                      ; preds = %8, %0
  %12 = load i64, i64* %1, align 8, !tbaa !7
  br label %17

; <label>:13                                      ; preds = %8, %5
  %14 = load i64, i64* %1, align 8, !tbaa !7
  %15 = load i64, i64* %2, align 8, !tbaa !7
  %16 = srem i64 %14, %15
  br label %17

; <label>:17                                      ; preds = %13, %11
  %18 = phi i64 [ %12, %11 ], [ %16, %13 ]
  ret i64 %18
}

; Function Attrs: nounwind uwtable
define internal signext i16 @safe_rshift_func_int16_t_s_s(i16 signext %left, i32 %right) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i32, align 4
  store i16 %left, i16* %1, align 2, !tbaa !10
  store i32 %right, i32* %2, align 4, !tbaa !1
  %3 = load i16, i16* %1, align 2, !tbaa !10
  %4 = sext i16 %3 to i32
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %12, label %6

; <label>:6                                       ; preds = %0
  %7 = load i32, i32* %2, align 4, !tbaa !1
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %12, label %9

; <label>:9                                       ; preds = %6
  %10 = load i32, i32* %2, align 4, !tbaa !1
  %11 = icmp sge i32 %10, 32
  br i1 %11, label %12, label %15

; <label>:12                                      ; preds = %9, %6, %0
  %13 = load i16, i16* %1, align 2, !tbaa !10
  %14 = sext i16 %13 to i32
  br label %20

; <label>:15                                      ; preds = %9
  %16 = load i16, i16* %1, align 2, !tbaa !10
  %17 = sext i16 %16 to i32
  %18 = load i32, i32* %2, align 4, !tbaa !1
  %19 = ashr i32 %17, %18
  br label %20

; <label>:20                                      ; preds = %15, %12
  %21 = phi i32 [ %14, %12 ], [ %19, %15 ]
  %22 = trunc i32 %21 to i16
  ret i16 %22
}

; Function Attrs: nounwind uwtable
define internal zeroext i16 @safe_rshift_func_uint16_t_u_u(i16 zeroext %left, i32 %right) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i32, align 4
  store i16 %left, i16* %1, align 2, !tbaa !10
  store i32 %right, i32* %2, align 4, !tbaa !1
  %3 = load i32, i32* %2, align 4, !tbaa !1
  %4 = icmp uge i32 %3, 32
  br i1 %4, label %5, label %8

; <label>:5                                       ; preds = %0
  %6 = load i16, i16* %1, align 2, !tbaa !10
  %7 = zext i16 %6 to i32
  br label %13

; <label>:8                                       ; preds = %0
  %9 = load i16, i16* %1, align 2, !tbaa !10
  %10 = zext i16 %9 to i32
  %11 = load i32, i32* %2, align 4, !tbaa !1
  %12 = ashr i32 %10, %11
  br label %13

; <label>:13                                      ; preds = %8, %5
  %14 = phi i32 [ %7, %5 ], [ %12, %8 ]
  %15 = trunc i32 %14 to i16
  ret i16 %15
}

; Function Attrs: nounwind uwtable
define internal i32 @safe_add_func_int32_t_s_s(i32 %si1, i32 %si2) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %si1, i32* %1, align 4, !tbaa !1
  store i32 %si2, i32* %2, align 4, !tbaa !1
  %3 = load i32, i32* %1, align 4, !tbaa !1
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %13

; <label>:5                                       ; preds = %0
  %6 = load i32, i32* %2, align 4, !tbaa !1
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %13

; <label>:8                                       ; preds = %5
  %9 = load i32, i32* %1, align 4, !tbaa !1
  %10 = load i32, i32* %2, align 4, !tbaa !1
  %11 = sub nsw i32 2147483647, %10
  %12 = icmp sgt i32 %9, %11
  br i1 %12, label %24, label %13

; <label>:13                                      ; preds = %8, %5, %0
  %14 = load i32, i32* %1, align 4, !tbaa !1
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %26

; <label>:16                                      ; preds = %13
  %17 = load i32, i32* %2, align 4, !tbaa !1
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %26

; <label>:19                                      ; preds = %16
  %20 = load i32, i32* %1, align 4, !tbaa !1
  %21 = load i32, i32* %2, align 4, !tbaa !1
  %22 = sub nsw i32 -2147483648, %21
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %26

; <label>:24                                      ; preds = %19, %8
  %25 = load i32, i32* %1, align 4, !tbaa !1
  br label %30

; <label>:26                                      ; preds = %19, %16, %13
  %27 = load i32, i32* %1, align 4, !tbaa !1
  %28 = load i32, i32* %2, align 4, !tbaa !1
  %29 = add nsw i32 %27, %28
  br label %30

; <label>:30                                      ; preds = %26, %24
  %31 = phi i32 [ %25, %24 ], [ %29, %26 ]
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %ui1, i8 zeroext %ui2) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  store i8 %ui1, i8* %1, align 1, !tbaa !9
  store i8 %ui2, i8* %2, align 1, !tbaa !9
  %3 = load i8, i8* %1, align 1, !tbaa !9
  %4 = zext i8 %3 to i32
  %5 = load i8, i8* %2, align 1, !tbaa !9
  %6 = zext i8 %5 to i32
  %7 = mul i32 %4, %6
  %8 = trunc i32 %7 to i8
  ret i8 %8
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @safe_lshift_func_uint8_t_u_u(i8 zeroext %left, i32 %right) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i32, align 4
  store i8 %left, i8* %1, align 1, !tbaa !9
  store i32 %right, i32* %2, align 4, !tbaa !1
  %3 = load i32, i32* %2, align 4, !tbaa !1
  %4 = icmp uge i32 %3, 32
  br i1 %4, label %11, label %5

; <label>:5                                       ; preds = %0
  %6 = load i8, i8* %1, align 1, !tbaa !9
  %7 = zext i8 %6 to i32
  %8 = load i32, i32* %2, align 4, !tbaa !1
  %9 = ashr i32 255, %8
  %10 = icmp sgt i32 %7, %9
  br i1 %10, label %11, label %14

; <label>:11                                      ; preds = %5, %0
  %12 = load i8, i8* %1, align 1, !tbaa !9
  %13 = zext i8 %12 to i32
  br label %19

; <label>:14                                      ; preds = %5
  %15 = load i8, i8* %1, align 1, !tbaa !9
  %16 = zext i8 %15 to i32
  %17 = load i32, i32* %2, align 4, !tbaa !1
  %18 = shl i32 %16, %17
  br label %19

; <label>:19                                      ; preds = %14, %11
  %20 = phi i32 [ %13, %11 ], [ %18, %14 ]
  %21 = trunc i32 %20 to i8
  ret i8 %21
}

; Function Attrs: nounwind uwtable
define internal i32 @safe_sub_func_int32_t_s_s(i32 %si1, i32 %si2) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %si1, i32* %1, align 4, !tbaa !1
  store i32 %si2, i32* %2, align 4, !tbaa !1
  %3 = load i32, i32* %1, align 4, !tbaa !1
  %4 = load i32, i32* %2, align 4, !tbaa !1
  %5 = xor i32 %3, %4
  %6 = load i32, i32* %1, align 4, !tbaa !1
  %7 = load i32, i32* %1, align 4, !tbaa !1
  %8 = load i32, i32* %2, align 4, !tbaa !1
  %9 = xor i32 %7, %8
  %10 = and i32 %9, -2147483648
  %11 = xor i32 %6, %10
  %12 = load i32, i32* %2, align 4, !tbaa !1
  %13 = sub nsw i32 %11, %12
  %14 = load i32, i32* %2, align 4, !tbaa !1
  %15 = xor i32 %13, %14
  %16 = and i32 %5, %15
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

; <label>:18                                      ; preds = %0
  %19 = load i32, i32* %1, align 4, !tbaa !1
  br label %24

; <label>:20                                      ; preds = %0
  %21 = load i32, i32* %1, align 4, !tbaa !1
  %22 = load i32, i32* %2, align 4, !tbaa !1
  %23 = sub nsw i32 %21, %22
  br label %24

; <label>:24                                      ; preds = %20, %18
  %25 = phi i32 [ %19, %18 ], [ %23, %20 ]
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define internal i32* @func_30(i32* %p_31, i16 signext %p_32, i64 %p_33, i32* %p_34) #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i16, align 2
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %l_636 = alloca i64, align 8
  %l_638 = alloca i16*, align 8
  %l_637 = alloca i16**, align 8
  %l_646 = alloca i32*, align 8
  %l_681 = alloca %union.U0*, align 8
  %l_688 = alloca [5 x [4 x [5 x i64***]]], align 16
  %l_690 = alloca i8, align 1
  %l_691 = alloca i32*, align 8
  %l_715 = alloca i32, align 4
  %l_718 = alloca [2 x [6 x i32]], align 16
  %l_801 = alloca [10 x i32*], align 16
  %l_807 = alloca i32, align 4
  %l_834 = alloca i32**, align 8
  %l_868 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %6 = alloca i32
  %l_645 = alloca i32, align 4
  %l_658 = alloca [7 x [10 x [3 x i8*]]], align 16
  %l_659 = alloca [10 x [9 x i32]], align 16
  %l_677 = alloca i64****, align 8
  %l_678 = alloca i64****, align 8
  %l_680 = alloca i64***, align 8
  %l_679 = alloca i64****, align 8
  %l_687 = alloca %union.U0*, align 8
  %l_689 = alloca i64, align 8
  %i1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  %k3 = alloca i32, align 4
  %l_662 = alloca i64, align 8
  %l_696 = alloca i16, align 2
  %l_713 = alloca i32, align 4
  %l_716 = alloca i32, align 4
  %l_717 = alloca i32, align 4
  %l_720 = alloca i32, align 4
  %l_729 = alloca i32, align 4
  %l_799 = alloca [10 x [1 x i64*]], align 16
  %l_805 = alloca i32**, align 8
  %l_806 = alloca i16*, align 8
  %l_810 = alloca i8*, align 8
  %l_853 = alloca %union.U0*, align 8
  %l_874 = alloca i64, align 8
  %i5 = alloca i32, align 4
  %j6 = alloca i32, align 4
  %l_697 = alloca i32, align 4
  %l_714 = alloca i32, align 4
  %l_719 = alloca i32, align 4
  %l_722 = alloca i32, align 4
  %l_723 = alloca [9 x [5 x [4 x i32]]], align 16
  %l_770 = alloca i16, align 2
  %l_790 = alloca i32**, align 8
  %i7 = alloca i32, align 4
  %j8 = alloca i32, align 4
  %k9 = alloca i32, align 4
  %l_721 = alloca i8, align 1
  %l_725 = alloca i32, align 4
  %l_727 = alloca [3 x [2 x i32]], align 16
  %l_735 = alloca i16*, align 8
  %i10 = alloca i32, align 4
  %j11 = alloca i32, align 4
  %l_707 = alloca i8*, align 8
  %l_709 = alloca i8*, align 8
  %l_708 = alloca i8**, align 8
  %l_710 = alloca i32, align 4
  %l_728 = alloca i32, align 4
  %l_711 = alloca i32*, align 8
  %l_712 = alloca [8 x [4 x [6 x i32*]]], align 16
  %l_736 = alloca i16**, align 8
  %l_739 = alloca i16*, align 8
  %i12 = alloca i32, align 4
  %j13 = alloca i32, align 4
  %k14 = alloca i32, align 4
  %l_754 = alloca i32, align 4
  %l_778 = alloca [6 x [2 x i16]], align 16
  %i16 = alloca i32, align 4
  %j17 = alloca i32, align 4
  %l_777 = alloca [4 x i32*], align 16
  %i18 = alloca i32, align 4
  %l_791 = alloca i64****, align 8
  %l_792 = alloca i8*, align 8
  %l_793 = alloca i8*, align 8
  %l_794 = alloca i8*, align 8
  %l_795 = alloca i8*, align 8
  %l_798 = alloca i16*, align 8
  %l_800 = alloca i8*, align 8
  %l_821 = alloca i32, align 4
  %l_827 = alloca i32, align 4
  %l_828 = alloca i32, align 4
  %l_829 = alloca i32, align 4
  %l_850 = alloca %union.U0*, align 8
  %l_852 = alloca %union.U0*, align 8
  %l_869 = alloca i8, align 1
  %l_870 = alloca i64****, align 8
  %l_875 = alloca i64, align 8
  %l_904 = alloca i32, align 4
  store i32* %p_31, i32** %2, align 8, !tbaa !5
  store i16 %p_32, i16* %3, align 2, !tbaa !10
  store i64 %p_33, i64* %4, align 8, !tbaa !7
  store i32* %p_34, i32** %5, align 8, !tbaa !5
  %7 = bitcast i64* %l_636 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store i64 1, i64* %l_636, align 8, !tbaa !7
  %8 = bitcast i16** %l_638 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i16* getelementptr inbounds ([3 x i16], [3 x i16]* @g_201, i32 0, i64 2), i16** %l_638, align 8, !tbaa !5
  %9 = bitcast i16*** %l_637 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store i16** %l_638, i16*** %l_637, align 8, !tbaa !5
  %10 = bitcast i32** %l_646 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i32* @g_628, i32** %l_646, align 8, !tbaa !5
  %11 = bitcast %union.U0** %l_681 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store %union.U0* @g_416, %union.U0** %l_681, align 8, !tbaa !5
  %12 = bitcast [5 x [4 x [5 x i64***]]]* %l_688 to i8*
  call void @llvm.lifetime.start(i64 800, i8* %12) #1
  %13 = bitcast [5 x [4 x [5 x i64***]]]* %l_688 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* bitcast ([5 x [4 x [5 x i64***]]]* @func_30.l_688 to i8*), i64 800, i32 16, i1 false)
  call void @llvm.lifetime.start(i64 1, i8* %l_690) #1
  store i8 -1, i8* %l_690, align 1, !tbaa !9
  %14 = bitcast i32** %l_691 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  store i32* @g_628, i32** %l_691, align 8, !tbaa !5
  %15 = bitcast i32* %l_715 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  store i32 -1440492113, i32* %l_715, align 4, !tbaa !1
  %16 = bitcast [2 x [6 x i32]]* %l_718 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %16) #1
  %17 = bitcast [2 x [6 x i32]]* %l_718 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* bitcast ([2 x [6 x i32]]* @func_30.l_718 to i8*), i64 48, i32 16, i1 false)
  %18 = bitcast [10 x i32*]* %l_801 to i8*
  call void @llvm.lifetime.start(i64 80, i8* %18) #1
  %19 = bitcast [10 x i32*]* %l_801 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* bitcast ([10 x i32*]* @func_30.l_801 to i8*), i64 80, i32 16, i1 false)
  %20 = bitcast i32* %l_807 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  store i32 -1, i32* %l_807, align 4, !tbaa !1
  %21 = bitcast i32*** %l_834 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  store i32** null, i32*** %l_834, align 8, !tbaa !5
  %22 = bitcast i32* %l_868 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  store i32 -731869726, i32* %l_868, align 4, !tbaa !1
  %23 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #1
  %26 = load i64, i64* %l_636, align 8, !tbaa !7
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

; <label>:28                                      ; preds = %0
  %29 = load i32**, i32*** @g_591, align 8, !tbaa !5
  %30 = load i32*, i32** %29, align 8, !tbaa !5
  store i32* %30, i32** %1
  store i32 1, i32* %6
  br label %1104

; <label>:31                                      ; preds = %0
  %32 = load i16**, i16*** %l_637, align 8, !tbaa !5
  store i16** %32, i16*** %l_637, align 8, !tbaa !5
  br label %33

; <label>:33                                      ; preds = %31
  br label %34

; <label>:34                                      ; preds = %1082, %33
  store i32 0, i32* @g_514, align 4, !tbaa !1
  br label %35

; <label>:35                                      ; preds = %287, %34
  %36 = load i32, i32* @g_514, align 4, !tbaa !1
  %37 = icmp ule i32 %36, 0
  br i1 %37, label %38, label %290

; <label>:38                                      ; preds = %35
  %39 = bitcast i32* %l_645 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %39) #1
  store i32 -1, i32* %l_645, align 4, !tbaa !1
  %40 = bitcast [7 x [10 x [3 x i8*]]]* %l_658 to i8*
  call void @llvm.lifetime.start(i64 1680, i8* %40) #1
  %41 = bitcast [7 x [10 x [3 x i8*]]]* %l_658 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* bitcast ([7 x [10 x [3 x i8*]]]* @func_30.l_658 to i8*), i64 1680, i32 16, i1 false)
  %42 = bitcast [10 x [9 x i32]]* %l_659 to i8*
  call void @llvm.lifetime.start(i64 360, i8* %42) #1
  %43 = bitcast [10 x [9 x i32]]* %l_659 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* bitcast ([10 x [9 x i32]]* @func_30.l_659 to i8*), i64 360, i32 16, i1 false)
  %44 = bitcast i64***** %l_677 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %44) #1
  store i64**** null, i64***** %l_677, align 8, !tbaa !5
  %45 = bitcast i64***** %l_678 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %45) #1
  store i64**** null, i64***** %l_678, align 8, !tbaa !5
  %46 = bitcast i64**** %l_680 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %46) #1
  store i64*** @g_142, i64**** %l_680, align 8, !tbaa !5
  %47 = bitcast i64***** %l_679 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %47) #1
  store i64**** %l_680, i64***** %l_679, align 8, !tbaa !5
  %48 = bitcast %union.U0** %l_687 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %48) #1
  store %union.U0* @g_416, %union.U0** %l_687, align 8, !tbaa !5
  %49 = bitcast i64* %l_689 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %49) #1
  store i64 -3105502163760765166, i64* %l_689, align 8, !tbaa !7
  %50 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %50) #1
  %51 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %51) #1
  %52 = bitcast i32* %k3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %52) #1
  %53 = load i64, i64* %l_636, align 8, !tbaa !7
  %54 = trunc i64 %53 to i32
  %55 = load i32, i32* %l_645, align 4, !tbaa !1
  %56 = load i32*, i32** %l_646, align 8, !tbaa !5
  %57 = load i32**, i32*** @g_591, align 8, !tbaa !5
  %58 = load i32*, i32** %57, align 8, !tbaa !5
  %59 = load i32**, i32*** @g_591, align 8, !tbaa !5
  store i32* %58, i32** %59, align 8, !tbaa !5
  %60 = icmp eq i32* %56, %58
  %61 = zext i1 %60 to i32
  %62 = trunc i32 %61 to i8
  %63 = call zeroext i8 @safe_lshift_func_uint8_t_u_u(i8 zeroext %62, i32 2)
  %64 = zext i8 %63 to i32
  %65 = call zeroext i8 @safe_lshift_func_uint8_t_u_s(i8 zeroext 1, i32 7)
  %66 = zext i8 %65 to i32
  %67 = getelementptr inbounds [10 x [9 x i32]], [10 x [9 x i32]]* %l_659, i32 0, i64 6
  %68 = getelementptr inbounds [9 x i32], [9 x i32]* %67, i32 0, i64 5
  store i32 %66, i32* %68, align 4, !tbaa !1
  %69 = load i16, i16* %3, align 2, !tbaa !10
  %70 = trunc i16 %69 to i8
  %71 = load i64, i64* %4, align 8, !tbaa !7
  %72 = trunc i64 %71 to i8
  %73 = call zeroext i8 @safe_sub_func_uint8_t_u_u(i8 zeroext %70, i8 zeroext %72)
  %74 = load i16, i16* @g_174, align 2, !tbaa !10
  %75 = zext i16 %74 to i32
  %76 = call zeroext i8 @safe_lshift_func_uint8_t_u_s(i8 zeroext %73, i32 %75)
  %77 = icmp ne i8 %76, 0
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  %80 = trunc i32 %79 to i8
  %81 = load i16, i16* %3, align 2, !tbaa !10
  %82 = sext i16 %81 to i32
  %83 = call signext i8 @safe_rshift_func_int8_t_s_u(i8 signext %80, i32 %82)
  %84 = sext i8 %83 to i32
  %85 = load i16, i16* %3, align 2, !tbaa !10
  %86 = sext i16 %85 to i32
  %87 = icmp slt i32 %84, %86
  %88 = zext i1 %87 to i32
  %89 = trunc i32 %88 to i8
  %90 = load i16, i16* %3, align 2, !tbaa !10
  %91 = trunc i16 %90 to i8
  %92 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %89, i8 zeroext %91)
  %93 = zext i8 %92 to i64
  %94 = xor i64 %93, 0
  %95 = icmp ule i64 %94, 0
  %96 = zext i1 %95 to i32
  %97 = load i32*, i32** %l_646, align 8, !tbaa !5
  store i32 %96, i32* %97, align 4, !tbaa !1
  %98 = sext i32 %96 to i64
  %99 = load i64, i64* %4, align 8, !tbaa !7
  %100 = icmp sgt i64 %98, %99
  %101 = zext i1 %100 to i32
  %102 = load i16, i16* %3, align 2, !tbaa !10
  %103 = sext i16 %102 to i32
  %104 = icmp eq i32 %64, %103
  %105 = zext i1 %104 to i32
  %106 = sext i32 %105 to i64
  %107 = load i64, i64* %4, align 8, !tbaa !7
  %108 = icmp slt i64 %106, %107
  %109 = zext i1 %108 to i32
  %110 = sext i32 %109 to i64
  %111 = icmp eq i64 %110, -2
  %112 = zext i1 %111 to i32
  %113 = load i32, i32* @g_94, align 4, !tbaa !1
  %114 = and i32 %113, %112
  store i32 %114, i32* @g_94, align 4, !tbaa !1
  %115 = load i16, i16* %3, align 2, !tbaa !10
  %116 = sext i16 %115 to i32
  %117 = icmp eq i32 %114, %116
  %118 = zext i1 %117 to i32
  %119 = call i32 @safe_sub_func_int32_t_s_s(i32 %54, i32 %118)
  %120 = load i32, i32* %l_645, align 4, !tbaa !1
  %121 = icmp uge i32 %119, %120
  %122 = zext i1 %121 to i32
  %123 = sext i32 %122 to i64
  %124 = load i16, i16* %3, align 2, !tbaa !10
  %125 = sext i16 %124 to i64
  %126 = call i64 @safe_sub_func_uint64_t_u_u(i64 %123, i64 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %134

; <label>:128                                     ; preds = %38
  %129 = load i32*, i32** %5, align 8, !tbaa !5
  %130 = load i32, i32* %129, align 4, !tbaa !1
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

; <label>:132                                     ; preds = %128
  store i32 3, i32* %6
  br label %273

; <label>:133                                     ; preds = %128
  br label %145

; <label>:134                                     ; preds = %38
  %135 = bitcast i64* %l_662 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %135) #1
  store i64 1, i64* %l_662, align 8, !tbaa !7
  %136 = load i32*, i32** %5, align 8, !tbaa !5
  %137 = load i32, i32* %136, align 4, !tbaa !1
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

; <label>:139                                     ; preds = %134
  store i32 3, i32* %6
  br label %142

; <label>:140                                     ; preds = %134
  store i64 -9, i64* %l_662, align 8, !tbaa !7
  %141 = load i32*, i32** %l_646, align 8, !tbaa !5
  store i32 -1759846218, i32* %141, align 4, !tbaa !1
  store i32 0, i32* %6
  br label %142

; <label>:142                                     ; preds = %140, %139
  %143 = bitcast i64* %l_662 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %143) #1
  %cleanup.dest = load i32, i32* %6
  switch i32 %cleanup.dest, label %273 [
    i32 0, label %144
  ]

; <label>:144                                     ; preds = %142
  br label %145

; <label>:145                                     ; preds = %144, %133
  %146 = load i16, i16* %3, align 2, !tbaa !10
  %147 = load i8, i8* @g_478, align 1, !tbaa !9
  %148 = zext i8 %147 to i32
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %216, label %150

; <label>:150                                     ; preds = %145
  %151 = call zeroext i8 @safe_lshift_func_uint8_t_u_u(i8 zeroext 1, i32 5)
  %152 = zext i8 %151 to i32
  %153 = getelementptr inbounds [10 x [9 x i32]], [10 x [9 x i32]]* %l_659, i32 0, i64 6
  %154 = getelementptr inbounds [9 x i32], [9 x i32]* %153, i32 0, i64 5
  %155 = load i32, i32* %154, align 4, !tbaa !1
  %156 = sext i32 %155 to i64
  %157 = load i64****, i64***** %l_679, align 8, !tbaa !5
  store i64*** null, i64**** %157, align 8, !tbaa !5
  %158 = load %union.U0*, %union.U0** %l_681, align 8, !tbaa !5
  %159 = load i32*, i32** %l_646, align 8, !tbaa !5
  %160 = load i32, i32* %159, align 4, !tbaa !1
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %163

; <label>:162                                     ; preds = %150
  br label %163

; <label>:163                                     ; preds = %162, %150
  %164 = phi i1 [ false, %150 ], [ true, %162 ]
  %165 = zext i1 %164 to i32
  %166 = load i32*, i32** %l_646, align 8, !tbaa !5
  %167 = load i32, i32* %166, align 4, !tbaa !1
  %168 = trunc i32 %167 to i8
  %169 = load i16, i16* %3, align 2, !tbaa !10
  %170 = trunc i16 %169 to i8
  %171 = call zeroext i8 @safe_div_func_uint8_t_u_u(i8 zeroext %168, i8 zeroext %170)
  %172 = zext i8 %171 to i16
  %173 = call signext i16 @safe_lshift_func_int16_t_s_s(i16 signext %172, i32 1)
  %174 = sext i16 %173 to i32
  %175 = xor i32 %165, %174
  %176 = load %union.U0*, %union.U0** %l_687, align 8, !tbaa !5
  %177 = icmp eq %union.U0* %158, %176
  %178 = zext i1 %177 to i32
  %179 = load i32*, i32** %l_646, align 8, !tbaa !5
  %180 = load i32, i32* %179, align 4, !tbaa !1
  %181 = icmp eq i32 %178, %180
  br i1 %181, label %187, label %182

; <label>:182                                     ; preds = %163
  br i1 true, label %187, label %183

; <label>:183                                     ; preds = %182
  %184 = load i32*, i32** %l_646, align 8, !tbaa !5
  %185 = load i32, i32* %184, align 4, !tbaa !1
  %186 = icmp ne i32 %185, 0
  br label %187

; <label>:187                                     ; preds = %183, %182, %163
  %188 = phi i1 [ true, %182 ], [ true, %163 ], [ %186, %183 ]
  %189 = zext i1 %188 to i32
  %190 = load i32, i32* getelementptr inbounds ([7 x i32], [7 x i32]* @g_431, i32 0, i64 3), align 4, !tbaa !1
  %191 = icmp eq i32 %189, %190
  %192 = zext i1 %191 to i32
  %193 = getelementptr inbounds [5 x [4 x [5 x i64***]]], [5 x [4 x [5 x i64***]]]* %l_688, i32 0, i64 4
  %194 = getelementptr inbounds [4 x [5 x i64***]], [4 x [5 x i64***]]* %193, i32 0, i64 3
  %195 = getelementptr inbounds [5 x i64***], [5 x i64***]* %194, i32 0, i64 2
  %196 = load i64***, i64**** %195, align 8, !tbaa !5
  %197 = icmp eq i64*** null, %196
  %198 = zext i1 %197 to i32
  %199 = sext i32 %198 to i64
  %200 = or i64 %199, 53059
  %201 = call i64 @safe_mod_func_int64_t_s_s(i64 %200, i64 -1)
  %202 = icmp sle i64 %156, %201
  br i1 %202, label %204, label %203

; <label>:203                                     ; preds = %187
  br label %204

; <label>:204                                     ; preds = %203, %187
  %205 = phi i1 [ true, %187 ], [ true, %203 ]
  %206 = zext i1 %205 to i32
  %207 = load i32*, i32** %l_646, align 8, !tbaa !5
  store i32 %206, i32* %207, align 4, !tbaa !1
  br i1 %205, label %208, label %212

; <label>:208                                     ; preds = %204
  %209 = load i32*, i32** %l_646, align 8, !tbaa !5
  %210 = load i32, i32* %209, align 4, !tbaa !1
  %211 = icmp ne i32 %210, 0
  br label %212

; <label>:212                                     ; preds = %208, %204
  %213 = phi i1 [ false, %204 ], [ %211, %208 ]
  %214 = zext i1 %213 to i32
  %215 = icmp slt i32 %152, %214
  br label %216

; <label>:216                                     ; preds = %212, %145
  %217 = phi i1 [ true, %145 ], [ %215, %212 ]
  %218 = zext i1 %217 to i32
  %219 = sext i32 %218 to i64
  %220 = load i8, i8* @g_478, align 1, !tbaa !9
  %221 = zext i8 %220 to i64
  %222 = call i64 @safe_div_func_uint64_t_u_u(i64 %219, i64 %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %225

; <label>:224                                     ; preds = %216
  br label %225

; <label>:225                                     ; preds = %224, %216
  %226 = phi i1 [ false, %216 ], [ true, %224 ]
  %227 = zext i1 %226 to i32
  %228 = sext i32 %227 to i64
  %229 = load i64, i64* %4, align 8, !tbaa !7
  %230 = icmp sge i64 %228, %229
  %231 = zext i1 %230 to i32
  %232 = trunc i32 %231 to i8
  %233 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %232, i8 zeroext 1)
  %234 = zext i8 %233 to i32
  %235 = load i16, i16* %3, align 2, !tbaa !10
  %236 = sext i16 %235 to i32
  %237 = or i32 %234, %236
  %238 = icmp ne i64* @g_246, %l_636
  %239 = zext i1 %238 to i32
  %240 = trunc i32 %239 to i8
  %241 = load i64, i64* @g_243, align 8, !tbaa !7
  %242 = trunc i64 %241 to i8
  %243 = call signext i8 @safe_sub_func_int8_t_s_s(i8 signext %240, i8 signext %242)
  %244 = load i64, i64* @g_243, align 8, !tbaa !7
  %245 = trunc i64 %244 to i8
  %246 = call zeroext i8 @safe_div_func_uint8_t_u_u(i8 zeroext %243, i8 zeroext %245)
  %247 = zext i8 %246 to i64
  store i64 %247, i64* %l_689, align 8, !tbaa !7
  %248 = trunc i64 %247 to i32
  %249 = getelementptr inbounds [10 x [9 x i32]], [10 x [9 x i32]]* %l_659, i32 0, i64 4
  %250 = getelementptr inbounds [9 x i32], [9 x i32]* %249, i32 0, i64 3
  store i32 %248, i32* %250, align 4, !tbaa !1
  store i8 0, i8* @g_227, align 1, !tbaa !9
  br label %251

; <label>:251                                     ; preds = %267, %225
  %252 = load i8, i8* @g_227, align 1, !tbaa !9
  %253 = zext i8 %252 to i32
  %254 = icmp sle i32 %253, 0
  br i1 %254, label %255, label %272

; <label>:255                                     ; preds = %251
  %256 = load i8, i8* %l_690, align 1, !tbaa !9
  %257 = zext i8 %256 to i32
  store i32 %257, i32* @g_629, align 4, !tbaa !1
  store i32 0, i32* @g_25, align 4, !tbaa !1
  br label %258

; <label>:258                                     ; preds = %263, %255
  %259 = load i32, i32* @g_25, align 4, !tbaa !1
  %260 = icmp sle i32 %259, 0
  br i1 %260, label %261, label %266

; <label>:261                                     ; preds = %258
  %262 = load i32*, i32** %l_691, align 8, !tbaa !5
  store i32* %262, i32** %1
  store i32 1, i32* %6
  br label %273
                                                  ; No predecessors!
  %264 = load i32, i32* @g_25, align 4, !tbaa !1
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* @g_25, align 4, !tbaa !1
  br label %258

; <label>:266                                     ; preds = %258
  br label %267

; <label>:267                                     ; preds = %266
  %268 = load i8, i8* @g_227, align 1, !tbaa !9
  %269 = zext i8 %268 to i32
  %270 = add nsw i32 %269, 1
  %271 = trunc i32 %270 to i8
  store i8 %271, i8* @g_227, align 1, !tbaa !9
  br label %251

; <label>:272                                     ; preds = %251
  store i32 0, i32* %6
  br label %273

; <label>:273                                     ; preds = %272, %261, %142, %132
  %274 = bitcast i32* %k3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %274) #1
  %275 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %275) #1
  %276 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %276) #1
  %277 = bitcast i64* %l_689 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %277) #1
  %278 = bitcast %union.U0** %l_687 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %278) #1
  %279 = bitcast i64***** %l_679 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %279) #1
  %280 = bitcast i64**** %l_680 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %280) #1
  %281 = bitcast i64***** %l_678 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %281) #1
  %282 = bitcast i64***** %l_677 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %282) #1
  %283 = bitcast [10 x [9 x i32]]* %l_659 to i8*
  call void @llvm.lifetime.end(i64 360, i8* %283) #1
  %284 = bitcast [7 x [10 x [3 x i8*]]]* %l_658 to i8*
  call void @llvm.lifetime.end(i64 1680, i8* %284) #1
  %285 = bitcast i32* %l_645 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %285) #1
  %cleanup.dest.4 = load i32, i32* %6
  switch i32 %cleanup.dest.4, label %1104 [
    i32 0, label %286
    i32 3, label %290
  ]

; <label>:286                                     ; preds = %273
  br label %287

; <label>:287                                     ; preds = %286
  %288 = load i32, i32* @g_514, align 4, !tbaa !1
  %289 = add i32 %288, 1
  store i32 %289, i32* @g_514, align 4, !tbaa !1
  br label %35

; <label>:290                                     ; preds = %273, %35
  br label %291

; <label>:291                                     ; preds = %1082, %290
  %292 = load i16, i16* getelementptr inbounds ([3 x i16], [3 x i16]* @g_201, i32 0, i64 1), align 2, !tbaa !10
  %293 = sext i16 %292 to i64
  %294 = icmp ne i64 5482, %293
  %295 = zext i1 %294 to i32
  %296 = load i32*, i32** %5, align 8, !tbaa !5
  %297 = load i32, i32* %296, align 4, !tbaa !1
  %298 = or i32 %297, %295
  store i32 %298, i32* %296, align 4, !tbaa !1
  store i8 -11, i8* @g_512, align 1, !tbaa !9
  br label %299

; <label>:299                                     ; preds = %1098, %291
  %300 = load i8, i8* @g_512, align 1, !tbaa !9
  %301 = sext i8 %300 to i32
  %302 = icmp sgt i32 %301, -11
  br i1 %302, label %303, label %1101

; <label>:303                                     ; preds = %299
  %304 = bitcast i16* %l_696 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %304) #1
  store i16 -25545, i16* %l_696, align 2, !tbaa !10
  %305 = bitcast i32* %l_713 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %305) #1
  store i32 1, i32* %l_713, align 4, !tbaa !1
  %306 = bitcast i32* %l_716 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %306) #1
  store i32 1945106434, i32* %l_716, align 4, !tbaa !1
  %307 = bitcast i32* %l_717 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %307) #1
  store i32 1668122137, i32* %l_717, align 4, !tbaa !1
  %308 = bitcast i32* %l_720 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %308) #1
  store i32 -931067793, i32* %l_720, align 4, !tbaa !1
  %309 = bitcast i32* %l_729 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %309) #1
  store i32 -131038889, i32* %l_729, align 4, !tbaa !1
  %310 = bitcast [10 x [1 x i64*]]* %l_799 to i8*
  call void @llvm.lifetime.start(i64 80, i8* %310) #1
  %311 = bitcast [10 x [1 x i64*]]* %l_799 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %311, i8* bitcast ([10 x [1 x i64*]]* @func_30.l_799 to i8*), i64 80, i32 16, i1 false)
  %312 = bitcast i32*** %l_805 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %312) #1
  store i32** %l_691, i32*** %l_805, align 8, !tbaa !5
  %313 = bitcast i16** %l_806 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %313) #1
  store i16* @g_232, i16** %l_806, align 8, !tbaa !5
  %314 = bitcast i8** %l_810 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %314) #1
  store i8* getelementptr inbounds ([8 x [5 x [6 x i8]]], [8 x [5 x [6 x i8]]]* @g_726, i32 0, i64 0, i64 1, i64 0), i8** %l_810, align 8, !tbaa !5
  %315 = bitcast %union.U0** %l_853 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %315) #1
  store %union.U0* @g_416, %union.U0** %l_853, align 8, !tbaa !5
  %316 = bitcast i64* %l_874 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %316) #1
  store i64 -6211534636046466568, i64* %l_874, align 8, !tbaa !7
  %317 = bitcast i32* %i5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %317) #1
  %318 = bitcast i32* %j6 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %318) #1
  store i8 0, i8* @g_227, align 1, !tbaa !9
  br label %319

; <label>:319                                     ; preds = %1003, %303
  %320 = load i8, i8* @g_227, align 1, !tbaa !9
  %321 = zext i8 %320 to i32
  %322 = icmp eq i32 %321, 47
  br i1 %322, label %323, label %1006

; <label>:323                                     ; preds = %319
  %324 = bitcast i32* %l_697 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %324) #1
  store i32 2, i32* %l_697, align 4, !tbaa !1
  %325 = bitcast i32* %l_714 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %325) #1
  store i32 2078906544, i32* %l_714, align 4, !tbaa !1
  %326 = bitcast i32* %l_719 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %326) #1
  store i32 7, i32* %l_719, align 4, !tbaa !1
  %327 = bitcast i32* %l_722 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %327) #1
  store i32 -360166421, i32* %l_722, align 4, !tbaa !1
  %328 = bitcast [9 x [5 x [4 x i32]]]* %l_723 to i8*
  call void @llvm.lifetime.start(i64 720, i8* %328) #1
  %329 = bitcast [9 x [5 x [4 x i32]]]* %l_723 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %329, i8* bitcast ([9 x [5 x [4 x i32]]]* @func_30.l_723 to i8*), i64 720, i32 16, i1 false)
  %330 = bitcast i16* %l_770 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %330) #1
  store i16 -2, i16* %l_770, align 2, !tbaa !10
  %331 = bitcast i32*** %l_790 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %331) #1
  store i32** @g_554, i32*** %l_790, align 8, !tbaa !5
  %332 = bitcast i32* %i7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %332) #1
  %333 = bitcast i32* %j8 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %333) #1
  %334 = bitcast i32* %k9 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %334) #1
  %335 = load i16, i16* %l_696, align 2, !tbaa !10
  %336 = icmp ne i16 %335, 0
  br i1 %336, label %337, label %931

; <label>:337                                     ; preds = %323
  call void @llvm.lifetime.start(i64 1, i8* %l_721) #1
  store i8 -111, i8* %l_721, align 1, !tbaa !9
  %338 = bitcast i32* %l_725 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %338) #1
  store i32 -8, i32* %l_725, align 4, !tbaa !1
  %339 = bitcast [3 x [2 x i32]]* %l_727 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %339) #1
  %340 = bitcast [3 x [2 x i32]]* %l_727 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %340, i8* bitcast ([3 x [2 x i32]]* @func_30.l_727 to i8*), i64 24, i32 16, i1 false)
  %341 = bitcast i16** %l_735 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %341) #1
  store i16* getelementptr inbounds ([4 x i16], [4 x i16]* @g_626, i32 0, i64 3), i16** %l_735, align 8, !tbaa !5
  %342 = bitcast i32* %i10 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %342) #1
  %343 = bitcast i32* %j11 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %343) #1
  %344 = load i32*, i32** %5, align 8, !tbaa !5
  %345 = load i32, i32* %344, align 4, !tbaa !1
  store i32 %345, i32* %l_697, align 4, !tbaa !1
  store i8 -23, i8* @g_123, align 1, !tbaa !9
  br label %346

; <label>:346                                     ; preds = %781, %337
  %347 = load i8, i8* @g_123, align 1, !tbaa !9
  %348 = sext i8 %347 to i32
  %349 = icmp slt i32 %348, 0
  br i1 %349, label %350, label %786

; <label>:350                                     ; preds = %346
  %351 = bitcast i8** %l_707 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %351) #1
  store i8* @g_313, i8** %l_707, align 8, !tbaa !5
  %352 = bitcast i8** %l_709 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %352) #1
  store i8* @g_512, i8** %l_709, align 8, !tbaa !5
  %353 = bitcast i8*** %l_708 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %353) #1
  store i8** %l_709, i8*** %l_708, align 8, !tbaa !5
  %354 = bitcast i32* %l_710 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %354) #1
  store i32 -1, i32* %l_710, align 4, !tbaa !1
  %355 = bitcast i32* %l_728 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %355) #1
  store i32 -1953762330, i32* %l_728, align 4, !tbaa !1
  %356 = load i32*, i32** %5, align 8, !tbaa !5
  %357 = load i32**, i32*** @g_591, align 8, !tbaa !5
  store i32* %356, i32** %357, align 8, !tbaa !5
  %358 = load i32, i32* getelementptr inbounds ([7 x [1 x [4 x i32]]], [7 x [1 x [4 x i32]]]* @g_513, i32 0, i64 1, i64 0, i64 2), align 4, !tbaa !1
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %366

; <label>:360                                     ; preds = %350
  %361 = load i64, i64* %4, align 8, !tbaa !7
  %362 = trunc i64 %361 to i16
  %363 = call signext i16 @safe_unary_minus_func_int16_t_s(i16 signext %362)
  %364 = sext i16 %363 to i32
  %365 = icmp ne i32 %364, 0
  br label %366

; <label>:366                                     ; preds = %360, %350
  %367 = phi i1 [ false, %350 ], [ %365, %360 ]
  %368 = zext i1 %367 to i32
  %369 = sext i32 %368 to i64
  %370 = icmp eq i64 1, %369
  br i1 %370, label %390, label %371

; <label>:371                                     ; preds = %366
  %372 = load i64*, i64** @g_143, align 8, !tbaa !5
  %373 = load i64, i64* %372, align 8, !tbaa !7
  %374 = icmp ne i64 %373, 0
  br i1 %374, label %383, label %375

; <label>:375                                     ; preds = %371
  %376 = load i64****, i64***** @g_701, align 8, !tbaa !5
  %377 = load i8*, i8** %l_707, align 8, !tbaa !5
  %378 = load i8**, i8*** %l_708, align 8, !tbaa !5
  store i8* @g_123, i8** %378, align 8, !tbaa !5
  %379 = icmp eq i8* %377, @g_123
  %380 = zext i1 %379 to i32
  %381 = load i16, i16* %3, align 2, !tbaa !10
  %382 = icmp ne i64**** %376, @g_702
  br label %383

; <label>:383                                     ; preds = %375, %371
  %384 = phi i1 [ true, %371 ], [ %382, %375 ]
  %385 = zext i1 %384 to i32
  %386 = trunc i32 %385 to i16
  %387 = load i16*, i16** %l_638, align 8, !tbaa !5
  store i16 %386, i16* %387, align 2, !tbaa !10
  %388 = load i32, i32* @g_631, align 4, !tbaa !1
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %390, label %756

; <label>:390                                     ; preds = %383, %366
  %391 = bitcast i32** %l_711 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %391) #1
  store i32* @g_91, i32** %l_711, align 8, !tbaa !5
  %392 = bitcast [8 x [4 x [6 x i32*]]]* %l_712 to i8*
  call void @llvm.lifetime.start(i64 1536, i8* %392) #1
  %393 = getelementptr inbounds [8 x [4 x [6 x i32*]]], [8 x [4 x [6 x i32*]]]* %l_712, i64 0, i64 0
  %394 = getelementptr inbounds [4 x [6 x i32*]], [4 x [6 x i32*]]* %393, i64 0, i64 0
  %395 = getelementptr inbounds [6 x i32*], [6 x i32*]* %394, i64 0, i64 0
  store i32* null, i32** %395, !tbaa !5
  %396 = getelementptr inbounds i32*, i32** %395, i64 1
  store i32* @g_25, i32** %396, !tbaa !5
  %397 = getelementptr inbounds i32*, i32** %396, i64 1
  store i32* @g_628, i32** %397, !tbaa !5
  %398 = getelementptr inbounds i32*, i32** %397, i64 1
  store i32* @g_629, i32** %398, !tbaa !5
  %399 = getelementptr inbounds i32*, i32** %398, i64 1
  store i32* @g_25, i32** %399, !tbaa !5
  %400 = getelementptr inbounds i32*, i32** %399, i64 1
  store i32* @g_25, i32** %400, !tbaa !5
  %401 = getelementptr inbounds [6 x i32*], [6 x i32*]* %394, i64 1
  %402 = getelementptr inbounds [6 x i32*], [6 x i32*]* %401, i64 0, i64 0
  store i32* @g_25, i32** %402, !tbaa !5
  %403 = getelementptr inbounds i32*, i32** %402, i64 1
  store i32* null, i32** %403, !tbaa !5
  %404 = getelementptr inbounds i32*, i32** %403, i64 1
  store i32* @g_628, i32** %404, !tbaa !5
  %405 = getelementptr inbounds i32*, i32** %404, i64 1
  store i32* null, i32** %405, !tbaa !5
  %406 = getelementptr inbounds i32*, i32** %405, i64 1
  store i32* @g_25, i32** %406, !tbaa !5
  %407 = getelementptr inbounds i32*, i32** %406, i64 1
  store i32* null, i32** %407, !tbaa !5
  %408 = getelementptr inbounds [6 x i32*], [6 x i32*]* %401, i64 1
  %409 = getelementptr inbounds [6 x i32*], [6 x i32*]* %408, i64 0, i64 0
  store i32* null, i32** %409, !tbaa !5
  %410 = getelementptr inbounds i32*, i32** %409, i64 1
  store i32* @g_25, i32** %410, !tbaa !5
  %411 = getelementptr inbounds i32*, i32** %410, i64 1
  store i32* null, i32** %411, !tbaa !5
  %412 = getelementptr inbounds i32*, i32** %411, i64 1
  store i32* @g_628, i32** %412, !tbaa !5
  %413 = getelementptr inbounds i32*, i32** %412, i64 1
  store i32* %l_710, i32** %413, !tbaa !5
  %414 = getelementptr inbounds i32*, i32** %413, i64 1
  store i32* null, i32** %414, !tbaa !5
  %415 = getelementptr inbounds [6 x i32*], [6 x i32*]* %408, i64 1
  %416 = getelementptr inbounds [6 x i32*], [6 x i32*]* %415, i64 0, i64 0
  store i32* null, i32** %416, !tbaa !5
  %417 = getelementptr inbounds i32*, i32** %416, i64 1
  store i32* %l_710, i32** %417, !tbaa !5
  %418 = getelementptr inbounds i32*, i32** %417, i64 1
  store i32* @g_25, i32** %418, !tbaa !5
  %419 = getelementptr inbounds i32*, i32** %418, i64 1
  store i32* @g_25, i32** %419, !tbaa !5
  %420 = getelementptr inbounds i32*, i32** %419, i64 1
  store i32* @g_628, i32** %420, !tbaa !5
  %421 = getelementptr inbounds i32*, i32** %420, i64 1
  store i32* null, i32** %421, !tbaa !5
  %422 = getelementptr inbounds [4 x [6 x i32*]], [4 x [6 x i32*]]* %393, i64 1
  %423 = getelementptr inbounds [4 x [6 x i32*]], [4 x [6 x i32*]]* %422, i64 0, i64 0
  %424 = getelementptr inbounds [6 x i32*], [6 x i32*]* %423, i64 0, i64 0
  store i32* @g_629, i32** %424, !tbaa !5
  %425 = getelementptr inbounds i32*, i32** %424, i64 1
  store i32* @g_629, i32** %425, !tbaa !5
  %426 = getelementptr inbounds i32*, i32** %425, i64 1
  store i32* null, i32** %426, !tbaa !5
  %427 = getelementptr inbounds i32*, i32** %426, i64 1
  store i32* @g_628, i32** %427, !tbaa !5
  %428 = getelementptr inbounds i32*, i32** %427, i64 1
  store i32* %l_710, i32** %428, !tbaa !5
  %429 = getelementptr inbounds i32*, i32** %428, i64 1
  store i32* null, i32** %429, !tbaa !5
  %430 = getelementptr inbounds [6 x i32*], [6 x i32*]* %423, i64 1
  %431 = getelementptr inbounds [6 x i32*], [6 x i32*]* %430, i64 0, i64 0
  store i32* @g_628, i32** %431, !tbaa !5
  %432 = getelementptr inbounds i32*, i32** %431, i64 1
  store i32* @g_25, i32** %432, !tbaa !5
  %433 = getelementptr inbounds i32*, i32** %432, i64 1
  store i32* @g_628, i32** %433, !tbaa !5
  %434 = getelementptr inbounds i32*, i32** %433, i64 1
  store i32* @g_25, i32** %434, !tbaa !5
  %435 = getelementptr inbounds i32*, i32** %434, i64 1
  store i32* @g_628, i32** %435, !tbaa !5
  %436 = getelementptr inbounds i32*, i32** %435, i64 1
  store i32* @g_25, i32** %436, !tbaa !5
  %437 = getelementptr inbounds [6 x i32*], [6 x i32*]* %430, i64 1
  %438 = getelementptr inbounds [6 x i32*], [6 x i32*]* %437, i64 0, i64 0
  store i32* @g_629, i32** %438, !tbaa !5
  %439 = getelementptr inbounds i32*, i32** %438, i64 1
  store i32* @g_628, i32** %439, !tbaa !5
  %440 = getelementptr inbounds i32*, i32** %439, i64 1
  store i32* @g_628, i32** %440, !tbaa !5
  %441 = getelementptr inbounds i32*, i32** %440, i64 1
  store i32* null, i32** %441, !tbaa !5
  %442 = getelementptr inbounds i32*, i32** %441, i64 1
  store i32* @g_628, i32** %442, !tbaa !5
  %443 = getelementptr inbounds i32*, i32** %442, i64 1
  store i32* @g_628, i32** %443, !tbaa !5
  %444 = getelementptr inbounds [6 x i32*], [6 x i32*]* %437, i64 1
  %445 = getelementptr inbounds [6 x i32*], [6 x i32*]* %444, i64 0, i64 0
  store i32* null, i32** %445, !tbaa !5
  %446 = getelementptr inbounds i32*, i32** %445, i64 1
  store i32* @g_628, i32** %446, !tbaa !5
  %447 = getelementptr inbounds i32*, i32** %446, i64 1
  store i32* @g_628, i32** %447, !tbaa !5
  %448 = getelementptr inbounds i32*, i32** %447, i64 1
  store i32* null, i32** %448, !tbaa !5
  %449 = getelementptr inbounds i32*, i32** %448, i64 1
  store i32* @g_25, i32** %449, !tbaa !5
  %450 = getelementptr inbounds i32*, i32** %449, i64 1
  store i32* @g_25, i32** %450, !tbaa !5
  %451 = getelementptr inbounds [4 x [6 x i32*]], [4 x [6 x i32*]]* %422, i64 1
  %452 = getelementptr inbounds [4 x [6 x i32*]], [4 x [6 x i32*]]* %451, i64 0, i64 0
  %453 = getelementptr inbounds [6 x i32*], [6 x i32*]* %452, i64 0, i64 0
  store i32* @g_25, i32** %453, !tbaa !5
  %454 = getelementptr inbounds i32*, i32** %453, i64 1
  store i32* %l_710, i32** %454, !tbaa !5
  %455 = getelementptr inbounds i32*, i32** %454, i64 1
  store i32* @g_91, i32** %455, !tbaa !5
  %456 = getelementptr inbounds i32*, i32** %455, i64 1
  store i32* null, i32** %456, !tbaa !5
  %457 = getelementptr inbounds i32*, i32** %456, i64 1
  store i32* @g_25, i32** %457, !tbaa !5
  %458 = getelementptr inbounds i32*, i32** %457, i64 1
  store i32* @g_628, i32** %458, !tbaa !5
  %459 = getelementptr inbounds [6 x i32*], [6 x i32*]* %452, i64 1
  %460 = getelementptr inbounds [6 x i32*], [6 x i32*]* %459, i64 0, i64 0
  store i32* @g_629, i32** %460, !tbaa !5
  %461 = getelementptr inbounds i32*, i32** %460, i64 1
  store i32* @g_25, i32** %461, !tbaa !5
  %462 = getelementptr inbounds i32*, i32** %461, i64 1
  store i32* null, i32** %462, !tbaa !5
  %463 = getelementptr inbounds i32*, i32** %462, i64 1
  store i32* @g_25, i32** %463, !tbaa !5
  %464 = getelementptr inbounds i32*, i32** %463, i64 1
  store i32* @g_25, i32** %464, !tbaa !5
  %465 = getelementptr inbounds i32*, i32** %464, i64 1
  store i32* @g_629, i32** %465, !tbaa !5
  %466 = getelementptr inbounds [6 x i32*], [6 x i32*]* %459, i64 1
  %467 = getelementptr inbounds [6 x i32*], [6 x i32*]* %466, i64 0, i64 0
  store i32* @g_628, i32** %467, !tbaa !5
  %468 = getelementptr inbounds i32*, i32** %467, i64 1
  store i32* %l_710, i32** %468, !tbaa !5
  %469 = getelementptr inbounds i32*, i32** %468, i64 1
  store i32* @g_628, i32** %469, !tbaa !5
  %470 = getelementptr inbounds i32*, i32** %469, i64 1
  store i32* @g_25, i32** %470, !tbaa !5
  %471 = getelementptr inbounds i32*, i32** %470, i64 1
  store i32* @g_25, i32** %471, !tbaa !5
  %472 = getelementptr inbounds i32*, i32** %471, i64 1
  store i32* null, i32** %472, !tbaa !5
  %473 = getelementptr inbounds [6 x i32*], [6 x i32*]* %466, i64 1
  %474 = getelementptr inbounds [6 x i32*], [6 x i32*]* %473, i64 0, i64 0
  store i32* @g_629, i32** %474, !tbaa !5
  %475 = getelementptr inbounds i32*, i32** %474, i64 1
  store i32* @g_628, i32** %475, !tbaa !5
  %476 = getelementptr inbounds i32*, i32** %475, i64 1
  store i32* @g_25, i32** %476, !tbaa !5
  %477 = getelementptr inbounds i32*, i32** %476, i64 1
  store i32* %l_710, i32** %477, !tbaa !5
  %478 = getelementptr inbounds i32*, i32** %477, i64 1
  store i32* @g_628, i32** %478, !tbaa !5
  %479 = getelementptr inbounds i32*, i32** %478, i64 1
  store i32* null, i32** %479, !tbaa !5
  %480 = getelementptr inbounds [4 x [6 x i32*]], [4 x [6 x i32*]]* %451, i64 1
  %481 = getelementptr inbounds [4 x [6 x i32*]], [4 x [6 x i32*]]* %480, i64 0, i64 0
  %482 = getelementptr inbounds [6 x i32*], [6 x i32*]* %481, i64 0, i64 0
  store i32* @g_25, i32** %482, !tbaa !5
  %483 = getelementptr inbounds i32*, i32** %482, i64 1
  store i32* @g_628, i32** %483, !tbaa !5
  %484 = getelementptr inbounds i32*, i32** %483, i64 1
  store i32* %l_710, i32** %484, !tbaa !5
  %485 = getelementptr inbounds i32*, i32** %484, i64 1
  store i32* @g_25, i32** %485, !tbaa !5
  %486 = getelementptr inbounds i32*, i32** %485, i64 1
  store i32* @g_628, i32** %486, !tbaa !5
  %487 = getelementptr inbounds i32*, i32** %486, i64 1
  store i32* @g_25, i32** %487, !tbaa !5
  %488 = getelementptr inbounds [6 x i32*], [6 x i32*]* %481, i64 1
  %489 = getelementptr inbounds [6 x i32*], [6 x i32*]* %488, i64 0, i64 0
  store i32* null, i32** %489, !tbaa !5
  %490 = getelementptr inbounds i32*, i32** %489, i64 1
  store i32* @g_25, i32** %490, !tbaa !5
  %491 = getelementptr inbounds i32*, i32** %490, i64 1
  store i32* null, i32** %491, !tbaa !5
  %492 = getelementptr inbounds i32*, i32** %491, i64 1
  store i32* null, i32** %492, !tbaa !5
  %493 = getelementptr inbounds i32*, i32** %492, i64 1
  store i32* %l_710, i32** %493, !tbaa !5
  %494 = getelementptr inbounds i32*, i32** %493, i64 1
  store i32* @g_91, i32** %494, !tbaa !5
  %495 = getelementptr inbounds [6 x i32*], [6 x i32*]* %488, i64 1
  %496 = getelementptr inbounds [6 x i32*], [6 x i32*]* %495, i64 0, i64 0
  store i32* @g_629, i32** %496, !tbaa !5
  %497 = getelementptr inbounds i32*, i32** %496, i64 1
  store i32* @g_629, i32** %497, !tbaa !5
  %498 = getelementptr inbounds i32*, i32** %497, i64 1
  store i32* @g_628, i32** %498, !tbaa !5
  %499 = getelementptr inbounds i32*, i32** %498, i64 1
  store i32* @g_629, i32** %499, !tbaa !5
  %500 = getelementptr inbounds i32*, i32** %499, i64 1
  store i32* @g_628, i32** %500, !tbaa !5
  %501 = getelementptr inbounds i32*, i32** %500, i64 1
  store i32* @g_25, i32** %501, !tbaa !5
  %502 = getelementptr inbounds [6 x i32*], [6 x i32*]* %495, i64 1
  %503 = getelementptr inbounds [6 x i32*], [6 x i32*]* %502, i64 0, i64 0
  store i32* @g_25, i32** %503, !tbaa !5
  %504 = getelementptr inbounds i32*, i32** %503, i64 1
  store i32* %l_710, i32** %504, !tbaa !5
  %505 = getelementptr inbounds i32*, i32** %504, i64 1
  store i32* @g_628, i32** %505, !tbaa !5
  %506 = getelementptr inbounds i32*, i32** %505, i64 1
  store i32* @g_629, i32** %506, !tbaa !5
  %507 = getelementptr inbounds i32*, i32** %506, i64 1
  store i32* %l_710, i32** %507, !tbaa !5
  %508 = getelementptr inbounds i32*, i32** %507, i64 1
  store i32* null, i32** %508, !tbaa !5
  %509 = getelementptr inbounds [4 x [6 x i32*]], [4 x [6 x i32*]]* %480, i64 1
  %510 = getelementptr inbounds [4 x [6 x i32*]], [4 x [6 x i32*]]* %509, i64 0, i64 0
  %511 = getelementptr inbounds [6 x i32*], [6 x i32*]* %510, i64 0, i64 0
  store i32* @g_629, i32** %511, !tbaa !5
  %512 = getelementptr inbounds i32*, i32** %511, i64 1
  store i32* @g_25, i32** %512, !tbaa !5
  %513 = getelementptr inbounds i32*, i32** %512, i64 1
  store i32* @g_25, i32** %513, !tbaa !5
  %514 = getelementptr inbounds i32*, i32** %513, i64 1
  store i32* null, i32** %514, !tbaa !5
  %515 = getelementptr inbounds i32*, i32** %514, i64 1
  store i32* @g_25, i32** %515, !tbaa !5
  %516 = getelementptr inbounds i32*, i32** %515, i64 1
  store i32* @g_629, i32** %516, !tbaa !5
  %517 = getelementptr inbounds [6 x i32*], [6 x i32*]* %510, i64 1
  %518 = getelementptr inbounds [6 x i32*], [6 x i32*]* %517, i64 0, i64 0
  store i32* null, i32** %518, !tbaa !5
  %519 = getelementptr inbounds i32*, i32** %518, i64 1
  store i32* null, i32** %519, !tbaa !5
  %520 = getelementptr inbounds i32*, i32** %519, i64 1
  store i32* @g_628, i32** %520, !tbaa !5
  %521 = getelementptr inbounds i32*, i32** %520, i64 1
  store i32* @g_25, i32** %521, !tbaa !5
  %522 = getelementptr inbounds i32*, i32** %521, i64 1
  store i32* @g_25, i32** %522, !tbaa !5
  %523 = getelementptr inbounds i32*, i32** %522, i64 1
  store i32* null, i32** %523, !tbaa !5
  %524 = getelementptr inbounds [6 x i32*], [6 x i32*]* %517, i64 1
  %525 = getelementptr inbounds [6 x i32*], [6 x i32*]* %524, i64 0, i64 0
  store i32* @g_25, i32** %525, !tbaa !5
  %526 = getelementptr inbounds i32*, i32** %525, i64 1
  store i32* @g_25, i32** %526, !tbaa !5
  %527 = getelementptr inbounds i32*, i32** %526, i64 1
  store i32* @g_628, i32** %527, !tbaa !5
  %528 = getelementptr inbounds i32*, i32** %527, i64 1
  store i32* @g_25, i32** %528, !tbaa !5
  %529 = getelementptr inbounds i32*, i32** %528, i64 1
  store i32* @g_25, i32** %529, !tbaa !5
  %530 = getelementptr inbounds i32*, i32** %529, i64 1
  store i32* @g_628, i32** %530, !tbaa !5
  %531 = getelementptr inbounds [6 x i32*], [6 x i32*]* %524, i64 1
  %532 = getelementptr inbounds [6 x i32*], [6 x i32*]* %531, i64 0, i64 0
  store i32* @g_25, i32** %532, !tbaa !5
  %533 = getelementptr inbounds i32*, i32** %532, i64 1
  store i32* @g_25, i32** %533, !tbaa !5
  %534 = getelementptr inbounds i32*, i32** %533, i64 1
  store i32* @g_25, i32** %534, !tbaa !5
  %535 = getelementptr inbounds i32*, i32** %534, i64 1
  store i32* %l_710, i32** %535, !tbaa !5
  %536 = getelementptr inbounds i32*, i32** %535, i64 1
  store i32* null, i32** %536, !tbaa !5
  %537 = getelementptr inbounds i32*, i32** %536, i64 1
  store i32* null, i32** %537, !tbaa !5
  %538 = getelementptr inbounds [4 x [6 x i32*]], [4 x [6 x i32*]]* %509, i64 1
  %539 = getelementptr inbounds [4 x [6 x i32*]], [4 x [6 x i32*]]* %538, i64 0, i64 0
  %540 = getelementptr inbounds [6 x i32*], [6 x i32*]* %539, i64 0, i64 0
  store i32* @g_25, i32** %540, !tbaa !5
  %541 = getelementptr inbounds i32*, i32** %540, i64 1
  store i32* @g_91, i32** %541, !tbaa !5
  %542 = getelementptr inbounds i32*, i32** %541, i64 1
  store i32* %l_710, i32** %542, !tbaa !5
  %543 = getelementptr inbounds i32*, i32** %542, i64 1
  store i32* @g_628, i32** %543, !tbaa !5
  %544 = getelementptr inbounds i32*, i32** %543, i64 1
  store i32* @g_629, i32** %544, !tbaa !5
  %545 = getelementptr inbounds i32*, i32** %544, i64 1
  store i32* @g_25, i32** %545, !tbaa !5
  %546 = getelementptr inbounds [6 x i32*], [6 x i32*]* %539, i64 1
  %547 = getelementptr inbounds [6 x i32*], [6 x i32*]* %546, i64 0, i64 0
  store i32* @g_628, i32** %547, !tbaa !5
  %548 = getelementptr inbounds i32*, i32** %547, i64 1
  store i32* @g_25, i32** %548, !tbaa !5
  %549 = getelementptr inbounds i32*, i32** %548, i64 1
  store i32* %l_710, i32** %549, !tbaa !5
  %550 = getelementptr inbounds i32*, i32** %549, i64 1
  store i32* null, i32** %550, !tbaa !5
  %551 = getelementptr inbounds i32*, i32** %550, i64 1
  store i32* @g_25, i32** %551, !tbaa !5
  %552 = getelementptr inbounds i32*, i32** %551, i64 1
  store i32* null, i32** %552, !tbaa !5
  %553 = getelementptr inbounds [6 x i32*], [6 x i32*]* %546, i64 1
  %554 = getelementptr inbounds [6 x i32*], [6 x i32*]* %553, i64 0, i64 0
  store i32* @g_25, i32** %554, !tbaa !5
  %555 = getelementptr inbounds i32*, i32** %554, i64 1
  store i32* null, i32** %555, !tbaa !5
  %556 = getelementptr inbounds i32*, i32** %555, i64 1
  store i32* @g_25, i32** %556, !tbaa !5
  %557 = getelementptr inbounds i32*, i32** %556, i64 1
  store i32* @g_628, i32** %557, !tbaa !5
  %558 = getelementptr inbounds i32*, i32** %557, i64 1
  store i32* null, i32** %558, !tbaa !5
  %559 = getelementptr inbounds i32*, i32** %558, i64 1
  store i32* @g_628, i32** %559, !tbaa !5
  %560 = getelementptr inbounds [6 x i32*], [6 x i32*]* %553, i64 1
  %561 = getelementptr inbounds [6 x i32*], [6 x i32*]* %560, i64 0, i64 0
  store i32* @g_628, i32** %561, !tbaa !5
  %562 = getelementptr inbounds i32*, i32** %561, i64 1
  store i32* null, i32** %562, !tbaa !5
  %563 = getelementptr inbounds i32*, i32** %562, i64 1
  store i32* @g_628, i32** %563, !tbaa !5
  %564 = getelementptr inbounds i32*, i32** %563, i64 1
  store i32* @g_91, i32** %564, !tbaa !5
  %565 = getelementptr inbounds i32*, i32** %564, i64 1
  store i32* @g_628, i32** %565, !tbaa !5
  %566 = getelementptr inbounds i32*, i32** %565, i64 1
  store i32* @g_628, i32** %566, !tbaa !5
  %567 = getelementptr inbounds [4 x [6 x i32*]], [4 x [6 x i32*]]* %538, i64 1
  %568 = getelementptr inbounds [4 x [6 x i32*]], [4 x [6 x i32*]]* %567, i64 0, i64 0
  %569 = getelementptr inbounds [6 x i32*], [6 x i32*]* %568, i64 0, i64 0
  store i32* @g_25, i32** %569, !tbaa !5
  %570 = getelementptr inbounds i32*, i32** %569, i64 1
  store i32* @g_628, i32** %570, !tbaa !5
  %571 = getelementptr inbounds i32*, i32** %570, i64 1
  store i32* %l_710, i32** %571, !tbaa !5
  %572 = getelementptr inbounds i32*, i32** %571, i64 1
  store i32* %l_710, i32** %572, !tbaa !5
  %573 = getelementptr inbounds i32*, i32** %572, i64 1
  store i32* %l_710, i32** %573, !tbaa !5
  %574 = getelementptr inbounds i32*, i32** %573, i64 1
  store i32* @g_628, i32** %574, !tbaa !5
  %575 = getelementptr inbounds [6 x i32*], [6 x i32*]* %568, i64 1
  %576 = getelementptr inbounds [6 x i32*], [6 x i32*]* %575, i64 0, i64 0
  store i32* %l_710, i32** %576, !tbaa !5
  %577 = getelementptr inbounds i32*, i32** %576, i64 1
  store i32* @g_25, i32** %577, !tbaa !5
  %578 = getelementptr inbounds i32*, i32** %577, i64 1
  store i32* @g_628, i32** %578, !tbaa !5
  %579 = getelementptr inbounds i32*, i32** %578, i64 1
  store i32* @g_25, i32** %579, !tbaa !5
  %580 = getelementptr inbounds i32*, i32** %579, i64 1
  store i32* @g_629, i32** %580, !tbaa !5
  %581 = getelementptr inbounds i32*, i32** %580, i64 1
  store i32* @g_91, i32** %581, !tbaa !5
  %582 = getelementptr inbounds [6 x i32*], [6 x i32*]* %575, i64 1
  %583 = getelementptr inbounds [6 x i32*], [6 x i32*]* %582, i64 0, i64 0
  store i32* @g_25, i32** %583, !tbaa !5
  %584 = getelementptr inbounds i32*, i32** %583, i64 1
  store i32* %l_710, i32** %584, !tbaa !5
  %585 = getelementptr inbounds i32*, i32** %584, i64 1
  store i32* @g_25, i32** %585, !tbaa !5
  %586 = getelementptr inbounds i32*, i32** %585, i64 1
  store i32* @g_628, i32** %586, !tbaa !5
  %587 = getelementptr inbounds i32*, i32** %586, i64 1
  store i32* null, i32** %587, !tbaa !5
  %588 = getelementptr inbounds i32*, i32** %587, i64 1
  store i32* null, i32** %588, !tbaa !5
  %589 = getelementptr inbounds [6 x i32*], [6 x i32*]* %582, i64 1
  %590 = getelementptr inbounds [6 x i32*], [6 x i32*]* %589, i64 0, i64 0
  store i32* @g_25, i32** %590, !tbaa !5
  %591 = getelementptr inbounds i32*, i32** %590, i64 1
  store i32* %l_710, i32** %591, !tbaa !5
  %592 = getelementptr inbounds i32*, i32** %591, i64 1
  store i32* @g_25, i32** %592, !tbaa !5
  %593 = getelementptr inbounds i32*, i32** %592, i64 1
  store i32* @g_628, i32** %593, !tbaa !5
  %594 = getelementptr inbounds i32*, i32** %593, i64 1
  store i32* @g_629, i32** %594, !tbaa !5
  %595 = getelementptr inbounds i32*, i32** %594, i64 1
  store i32* @g_628, i32** %595, !tbaa !5
  %596 = getelementptr inbounds [4 x [6 x i32*]], [4 x [6 x i32*]]* %567, i64 1
  %597 = getelementptr inbounds [4 x [6 x i32*]], [4 x [6 x i32*]]* %596, i64 0, i64 0
  %598 = getelementptr inbounds [6 x i32*], [6 x i32*]* %597, i64 0, i64 0
  store i32* @g_628, i32** %598, !tbaa !5
  %599 = getelementptr inbounds i32*, i32** %598, i64 1
  store i32* @g_25, i32** %599, !tbaa !5
  %600 = getelementptr inbounds i32*, i32** %599, i64 1
  store i32* @g_25, i32** %600, !tbaa !5
  %601 = getelementptr inbounds i32*, i32** %600, i64 1
  store i32* null, i32** %601, !tbaa !5
  %602 = getelementptr inbounds i32*, i32** %601, i64 1
  store i32* %l_710, i32** %602, !tbaa !5
  %603 = getelementptr inbounds i32*, i32** %602, i64 1
  store i32* @g_25, i32** %603, !tbaa !5
  %604 = getelementptr inbounds [6 x i32*], [6 x i32*]* %597, i64 1
  %605 = getelementptr inbounds [6 x i32*], [6 x i32*]* %604, i64 0, i64 0
  store i32* null, i32** %605, !tbaa !5
  %606 = getelementptr inbounds i32*, i32** %605, i64 1
  store i32* @g_628, i32** %606, !tbaa !5
  %607 = getelementptr inbounds i32*, i32** %606, i64 1
  store i32* @g_25, i32** %607, !tbaa !5
  %608 = getelementptr inbounds i32*, i32** %607, i64 1
  store i32* @g_25, i32** %608, !tbaa !5
  %609 = getelementptr inbounds i32*, i32** %608, i64 1
  store i32* @g_628, i32** %609, !tbaa !5
  %610 = getelementptr inbounds i32*, i32** %609, i64 1
  store i32* %l_710, i32** %610, !tbaa !5
  %611 = getelementptr inbounds [6 x i32*], [6 x i32*]* %604, i64 1
  %612 = getelementptr inbounds [6 x i32*], [6 x i32*]* %611, i64 0, i64 0
  store i32* null, i32** %612, !tbaa !5
  %613 = getelementptr inbounds i32*, i32** %612, i64 1
  store i32* null, i32** %613, !tbaa !5
  %614 = getelementptr inbounds i32*, i32** %613, i64 1
  store i32* @g_628, i32** %614, !tbaa !5
  %615 = getelementptr inbounds i32*, i32** %614, i64 1
  store i32* @g_628, i32** %615, !tbaa !5
  %616 = getelementptr inbounds i32*, i32** %615, i64 1
  store i32* null, i32** %616, !tbaa !5
  %617 = getelementptr inbounds i32*, i32** %616, i64 1
  store i32* null, i32** %617, !tbaa !5
  %618 = getelementptr inbounds [6 x i32*], [6 x i32*]* %611, i64 1
  %619 = getelementptr inbounds [6 x i32*], [6 x i32*]* %618, i64 0, i64 0
  store i32* @g_25, i32** %619, !tbaa !5
  %620 = getelementptr inbounds i32*, i32** %619, i64 1
  store i32* null, i32** %620, !tbaa !5
  %621 = getelementptr inbounds i32*, i32** %620, i64 1
  store i32* @g_628, i32** %621, !tbaa !5
  %622 = getelementptr inbounds i32*, i32** %621, i64 1
  store i32* @g_628, i32** %622, !tbaa !5
  %623 = getelementptr inbounds i32*, i32** %622, i64 1
  store i32* @g_25, i32** %623, !tbaa !5
  %624 = getelementptr inbounds i32*, i32** %623, i64 1
  store i32* @g_628, i32** %624, !tbaa !5
  %625 = bitcast i16*** %l_736 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %625) #1
  store i16** %l_638, i16*** %l_736, align 8, !tbaa !5
  %626 = bitcast i16** %l_739 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %626) #1
  store i16* %l_696, i16** %l_739, align 8, !tbaa !5
  %627 = bitcast i32* %i12 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %627) #1
  %628 = bitcast i32* %j13 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %628) #1
  %629 = bitcast i32* %k14 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %629) #1
  %630 = load i32, i32* getelementptr inbounds ([6 x [1 x [4 x i32]]], [6 x [1 x [4 x i32]]]* @g_730, i32 0, i64 3, i64 0, i64 0), align 4, !tbaa !1
  %631 = add i32 %630, -1
  store i32 %631, i32* getelementptr inbounds ([6 x [1 x [4 x i32]]], [6 x [1 x [4 x i32]]]* @g_730, i32 0, i64 3, i64 0, i64 0), align 4, !tbaa !1
  %632 = load i16*, i16** %l_735, align 8, !tbaa !5
  %633 = icmp ne i16* %632, null
  %634 = zext i1 %633 to i32
  %635 = trunc i32 %634 to i8
  %636 = load i16**, i16*** %l_736, align 8, !tbaa !5
  %637 = icmp eq i16** %l_735, %636
  %638 = zext i1 %637 to i32
  %639 = load i16, i16* %3, align 2, !tbaa !10
  %640 = load i16, i16* %3, align 2, !tbaa !10
  %641 = trunc i16 %640 to i8
  %642 = load i8*, i8** %l_707, align 8, !tbaa !5
  store i8 %641, i8* %642, align 1, !tbaa !9
  %643 = load i32*, i32** %5, align 8, !tbaa !5
  %644 = load i32, i32* %643, align 4, !tbaa !1
  %645 = sext i32 %644 to i64
  %646 = icmp ne i64 %645, 779313184
  %647 = zext i1 %646 to i32
  %648 = load i16, i16* %3, align 2, !tbaa !10
  %649 = sext i16 %648 to i32
  %650 = or i32 %647, %649
  %651 = trunc i32 %650 to i8
  %652 = call signext i8 @safe_add_func_int8_t_s_s(i8 signext %641, i8 signext %651)
  %653 = icmp ne i32** %2, @g_529
  %654 = zext i1 %653 to i32
  %655 = load i16*, i16** %l_739, align 8, !tbaa !5
  %656 = load i16, i16* %655, align 2, !tbaa !10
  %657 = zext i16 %656 to i32
  %658 = or i32 %657, %654
  %659 = trunc i32 %658 to i16
  store i16 %659, i16* %655, align 2, !tbaa !10
  %660 = zext i16 %659 to i32
  %661 = load i32, i32* %l_729, align 4, !tbaa !1
  %662 = icmp sle i32 %660, %661
  %663 = zext i1 %662 to i32
  %664 = load i32, i32* %l_725, align 4, !tbaa !1
  %665 = icmp slt i32 %663, %664
  %666 = zext i1 %665 to i32
  %667 = load i64, i64* %4, align 8, !tbaa !7
  %668 = trunc i64 %667 to i8
  %669 = call zeroext i8 @safe_div_func_uint8_t_u_u(i8 zeroext %635, i8 zeroext %668)
  %670 = zext i8 %669 to i32
  %671 = icmp ne i32 %670, 0
  br i1 %671, label %673, label %672

; <label>:672                                     ; preds = %390
  br label %673

; <label>:673                                     ; preds = %672, %390
  %674 = phi i1 [ true, %390 ], [ true, %672 ]
  %675 = zext i1 %674 to i32
  %676 = load i32*, i32** %l_691, align 8, !tbaa !5
  store i32 %675, i32* %676, align 4, !tbaa !1
  %677 = load i32*, i32** %l_711, align 8, !tbaa !5
  %678 = load i32, i32* %677, align 4, !tbaa !1
  %679 = or i32 %678, %675
  store i32 %679, i32* %677, align 4, !tbaa !1
  %680 = load i32*, i32** %l_691, align 8, !tbaa !5
  %681 = load i32, i32* %680, align 4, !tbaa !1
  %682 = trunc i32 %681 to i8
  %683 = load i16, i16* getelementptr inbounds ([4 x i16], [4 x i16]* @g_626, i32 0, i64 3), align 2, !tbaa !10
  %684 = trunc i16 %683 to i8
  %685 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %684, i8 signext 0)
  %686 = sext i8 %685 to i32
  %687 = icmp ne i32 %686, 0
  br i1 %687, label %688, label %724

; <label>:688                                     ; preds = %673
  %689 = load i32, i32* @g_631, align 4, !tbaa !1
  %690 = zext i32 %689 to i64
  %691 = call i32* @func_35(i64 %690)
  %692 = icmp eq i32* %691, null
  %693 = zext i1 %692 to i32
  %694 = trunc i32 %693 to i16
  %695 = call signext i16 @safe_mod_func_int16_t_s_s(i16 signext %694, i16 signext -6)
  %696 = sext i16 %695 to i32
  %697 = icmp ne i32 %696, 0
  br i1 %697, label %698, label %704

; <label>:698                                     ; preds = %688
  %699 = getelementptr inbounds [9 x [5 x [4 x i32]]], [9 x [5 x [4 x i32]]]* %l_723, i32 0, i64 6
  %700 = getelementptr inbounds [5 x [4 x i32]], [5 x [4 x i32]]* %699, i32 0, i64 0
  %701 = getelementptr inbounds [4 x i32], [4 x i32]* %700, i32 0, i64 1
  %702 = load i32, i32* %701, align 4, !tbaa !1
  %703 = icmp ne i32 %702, 0
  br label %704

; <label>:704                                     ; preds = %698, %688
  %705 = phi i1 [ false, %688 ], [ %703, %698 ]
  %706 = zext i1 %705 to i32
  %707 = trunc i32 %706 to i8
  %708 = load i32, i32* %l_710, align 4, !tbaa !1
  %709 = call zeroext i8 @safe_lshift_func_uint8_t_u_u(i8 zeroext %707, i32 %708)
  %710 = zext i8 %709 to i64
  %711 = icmp sge i64 %710, 1
  %712 = zext i1 %711 to i32
  %713 = sext i32 %712 to i64
  %714 = icmp eq i64 %713, 9
  %715 = zext i1 %714 to i32
  %716 = load i16, i16* %3, align 2, !tbaa !10
  %717 = sext i16 %716 to i32
  %718 = icmp slt i32 %715, %717
  %719 = zext i1 %718 to i32
  %720 = icmp ne i16* %l_696, @g_174
  br i1 %720, label %721, label %724

; <label>:721                                     ; preds = %704
  %722 = load i64, i64* %4, align 8, !tbaa !7
  %723 = icmp ne i64 %722, 0
  br label %724

; <label>:724                                     ; preds = %721, %704, %673
  %725 = phi i1 [ false, %704 ], [ false, %673 ], [ %723, %721 ]
  %726 = zext i1 %725 to i32
  %727 = trunc i32 %726 to i16
  %728 = load i16**, i16*** %l_637, align 8, !tbaa !5
  %729 = load i16*, i16** %728, align 8, !tbaa !5
  store i16 %727, i16* %729, align 2, !tbaa !10
  %730 = sext i16 %727 to i32
  %731 = load i8, i8* @g_512, align 1, !tbaa !9
  %732 = sext i8 %731 to i32
  %733 = and i32 %730, %732
  %734 = sext i32 %733 to i64
  %735 = call i64 @safe_mod_func_uint64_t_u_u(i64 %734, i64 -1)
  %736 = icmp eq i64 %735, 0
  %737 = zext i1 %736 to i32
  %738 = sext i32 %737 to i64
  %739 = icmp sle i64 %738, 39571
  %740 = zext i1 %739 to i32
  %741 = trunc i32 %740 to i8
  %742 = load i8*, i8** %l_707, align 8, !tbaa !5
  store i8 %741, i8* %742, align 1, !tbaa !9
  %743 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %682, i8 zeroext %741)
  %744 = zext i8 %743 to i32
  %745 = load i32*, i32** %l_711, align 8, !tbaa !5
  %746 = load i32, i32* %745, align 4, !tbaa !1
  %747 = and i32 %746, %744
  store i32 %747, i32* %745, align 4, !tbaa !1
  %748 = load i32*, i32** %2, align 8, !tbaa !5
  store i32* %748, i32** %1
  store i32 1, i32* %6
  %749 = bitcast i32* %k14 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %749) #1
  %750 = bitcast i32* %j13 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %750) #1
  %751 = bitcast i32* %i12 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %751) #1
  %752 = bitcast i16** %l_739 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %752) #1
  %753 = bitcast i16*** %l_736 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %753) #1
  %754 = bitcast [8 x [4 x [6 x i32*]]]* %l_712 to i8*
  call void @llvm.lifetime.end(i64 1536, i8* %754) #1
  %755 = bitcast i32** %l_711 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %755) #1
  br label %775

; <label>:756                                     ; preds = %383
  %757 = bitcast i32* %l_754 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %757) #1
  store i32 -2054928997, i32* %l_754, align 4, !tbaa !1
  %758 = load i32, i32* %l_722, align 4, !tbaa !1
  %759 = icmp ne i32 %758, 0
  br i1 %759, label %760, label %761

; <label>:760                                     ; preds = %756
  store i32 19, i32* %6
  br label %773

; <label>:761                                     ; preds = %756
  %762 = load i32*, i32** @g_529, align 8, !tbaa !5
  %763 = load i32, i32* %762, align 4, !tbaa !1
  %764 = icmp ne i32 %763, 0
  br i1 %764, label %765, label %766

; <label>:765                                     ; preds = %761
  store i32 21, i32* %6
  br label %773

; <label>:766                                     ; preds = %761
  %767 = load i32, i32* %l_754, align 4, !tbaa !1
  %768 = icmp ne i32 %767, 0
  br i1 %768, label %769, label %770

; <label>:769                                     ; preds = %766
  store i32 21, i32* %6
  br label %773

; <label>:770                                     ; preds = %766
  %771 = load i32**, i32*** @g_591, align 8, !tbaa !5
  %772 = load i32*, i32** %771, align 8, !tbaa !5
  store i32* %772, i32** %1
  store i32 1, i32* %6
  br label %773

; <label>:773                                     ; preds = %770, %769, %765, %760
  %774 = bitcast i32* %l_754 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %774) #1
  br label %775

; <label>:775                                     ; preds = %773, %724
  %776 = bitcast i32* %l_728 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %776) #1
  %777 = bitcast i32* %l_710 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %777) #1
  %778 = bitcast i8*** %l_708 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %778) #1
  %779 = bitcast i8** %l_709 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %779) #1
  %780 = bitcast i8** %l_707 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %780) #1
  %cleanup.dest.15 = load i32, i32* %6
  switch i32 %cleanup.dest.15, label %924 [
    i32 19, label %786
    i32 21, label %781
  ]

; <label>:781                                     ; preds = %775
  %782 = load i8, i8* @g_123, align 1, !tbaa !9
  %783 = sext i8 %782 to i64
  %784 = call i64 @safe_add_func_uint64_t_u_u(i64 %783, i64 8)
  %785 = trunc i64 %784 to i8
  store i8 %785, i8* @g_123, align 1, !tbaa !9
  br label %346

; <label>:786                                     ; preds = %775, %346
  %787 = load i64, i64* @g_314, align 8, !tbaa !7
  %788 = icmp ne i64 %787, 0
  br i1 %788, label %789, label %847

; <label>:789                                     ; preds = %786
  %790 = load i32, i32* @g_94, align 4, !tbaa !1
  %791 = load i32, i32* %l_714, align 4, !tbaa !1
  %792 = load i32, i32* %l_722, align 4, !tbaa !1
  %793 = icmp sgt i32 %791, %792
  %794 = zext i1 %793 to i32
  %795 = icmp eq i32 %794, -8
  %796 = zext i1 %795 to i32
  %797 = sext i32 %796 to i64
  %798 = call i64 @safe_sub_func_uint64_t_u_u(i64 %797, i64 -4521120667087255288)
  %799 = trunc i64 %798 to i8
  %800 = load i16, i16* %l_770, align 2, !tbaa !10
  %801 = sext i16 %800 to i32
  %802 = load i8, i8* @g_123, align 1, !tbaa !9
  %803 = sext i8 %802 to i64
  %804 = load i64, i64* @g_314, align 8, !tbaa !7
  %805 = and i64 %804, 4
  %806 = trunc i64 %805 to i8
  %807 = load i32, i32* %l_719, align 4, !tbaa !1
  %808 = trunc i32 %807 to i8
  %809 = call signext i8 @safe_div_func_int8_t_s_s(i8 signext %806, i8 signext %808)
  %810 = sext i8 %809 to i32
  %811 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %l_727, i32 0, i64 0
  %812 = getelementptr inbounds [2 x i32], [2 x i32]* %811, i32 0, i64 0
  store i32 %810, i32* %812, align 4, !tbaa !1
  %813 = sext i32 %810 to i64
  %814 = call i64 @safe_add_func_uint64_t_u_u(i64 %803, i64 %813)
  %815 = icmp ule i64 %814, 8
  %816 = zext i1 %815 to i32
  %817 = icmp eq i32 %801, %816
  %818 = zext i1 %817 to i32
  %819 = trunc i32 %818 to i8
  %820 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %799, i8 signext %819)
  %821 = sext i8 %820 to i32
  %822 = call i32 @safe_mod_func_int32_t_s_s(i32 %821, i32 17165216)
  %823 = load i16, i16* %3, align 2, !tbaa !10
  %824 = getelementptr inbounds [9 x [5 x [4 x i32]]], [9 x [5 x [4 x i32]]]* %l_723, i32 0, i64 3
  %825 = getelementptr inbounds [5 x [4 x i32]], [5 x [4 x i32]]* %824, i32 0, i64 1
  %826 = getelementptr inbounds [4 x i32], [4 x i32]* %825, i32 0, i64 0
  %827 = load i32, i32* %826, align 4, !tbaa !1
  %828 = load i32, i32* getelementptr inbounds ([6 x [1 x [4 x i32]]], [6 x [1 x [4 x i32]]]* @g_730, i32 0, i64 4, i64 0, i64 1), align 4, !tbaa !1
  %829 = icmp ule i32 %827, %828
  %830 = zext i1 %829 to i32
  %831 = trunc i32 %830 to i8
  %832 = call signext i8 @safe_lshift_func_int8_t_s_s(i8 signext %831, i32 2)
  %833 = sext i8 %832 to i32
  %834 = load i32, i32* %l_713, align 4, !tbaa !1
  %835 = call i32 @safe_add_func_uint32_t_u_u(i32 %833, i32 %834)
  %836 = icmp ne i32 %835, 0
  br i1 %836, label %837, label %838

; <label>:837                                     ; preds = %789
  br label %838

; <label>:838                                     ; preds = %837, %789
  %839 = phi i1 [ false, %789 ], [ true, %837 ]
  %840 = zext i1 %839 to i32
  %841 = trunc i32 %840 to i16
  %842 = load i32*, i32** %l_691, align 8, !tbaa !5
  %843 = load i32, i32* %842, align 4, !tbaa !1
  %844 = call signext i16 @safe_lshift_func_int16_t_s_s(i16 signext %841, i32 %843)
  %845 = sext i16 %844 to i32
  %846 = icmp ne i32 %845, 0
  br label %847

; <label>:847                                     ; preds = %838, %786
  %848 = phi i1 [ false, %786 ], [ %846, %838 ]
  %849 = zext i1 %848 to i32
  %850 = trunc i32 %849 to i16
  %851 = load i64, i64* %4, align 8, !tbaa !7
  %852 = trunc i64 %851 to i32
  %853 = call zeroext i16 @safe_rshift_func_uint16_t_u_u(i16 zeroext %850, i32 %852)
  br i1 false, label %854, label %905

; <label>:854                                     ; preds = %847
  %855 = bitcast [6 x [2 x i16]]* %l_778 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %855) #1
  %856 = bitcast [6 x [2 x i16]]* %l_778 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %856, i8* bitcast ([6 x [2 x i16]]* @func_30.l_778 to i8*), i64 24, i32 16, i1 false)
  %857 = bitcast i32* %i16 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %857) #1
  %858 = bitcast i32* %j17 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %858) #1
  store i32 0, i32* @g_627, align 4, !tbaa !1
  br label %859

; <label>:859                                     ; preds = %895, %854
  %860 = load i32, i32* @g_627, align 4, !tbaa !1
  %861 = icmp ne i32 %860, -18
  br i1 %861, label %862, label %898

; <label>:862                                     ; preds = %859
  %863 = bitcast [4 x i32*]* %l_777 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %863) #1
  %864 = getelementptr inbounds [4 x i32*], [4 x i32*]* %l_777, i64 0, i64 0
  %865 = getelementptr inbounds [2 x [6 x i32]], [2 x [6 x i32]]* %l_718, i32 0, i64 0
  %866 = getelementptr inbounds [6 x i32], [6 x i32]* %865, i32 0, i64 5
  store i32* %866, i32** %864, !tbaa !5
  %867 = getelementptr inbounds i32*, i32** %864, i64 1
  %868 = getelementptr inbounds [2 x [6 x i32]], [2 x [6 x i32]]* %l_718, i32 0, i64 0
  %869 = getelementptr inbounds [6 x i32], [6 x i32]* %868, i32 0, i64 5
  store i32* %869, i32** %867, !tbaa !5
  %870 = getelementptr inbounds i32*, i32** %867, i64 1
  %871 = getelementptr inbounds [2 x [6 x i32]], [2 x [6 x i32]]* %l_718, i32 0, i64 0
  %872 = getelementptr inbounds [6 x i32], [6 x i32]* %871, i32 0, i64 5
  store i32* %872, i32** %870, !tbaa !5
  %873 = getelementptr inbounds i32*, i32** %870, i64 1
  %874 = getelementptr inbounds [2 x [6 x i32]], [2 x [6 x i32]]* %l_718, i32 0, i64 0
  %875 = getelementptr inbounds [6 x i32], [6 x i32]* %874, i32 0, i64 5
  store i32* %875, i32** %873, !tbaa !5
  %876 = bitcast i32* %i18 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %876) #1
  %877 = load i8, i8* @g_779, align 1, !tbaa !9
  %878 = add i8 %877, -1
  store i8 %878, i8* @g_779, align 1, !tbaa !9
  %879 = load i32, i32* @g_631, align 4, !tbaa !1
  %880 = icmp ne i32 %879, 0
  br i1 %880, label %881, label %882

; <label>:881                                     ; preds = %862
  store i32 12, i32* %6
  br label %891

; <label>:882                                     ; preds = %862
  %883 = getelementptr inbounds [6 x [2 x i16]], [6 x [2 x i16]]* %l_778, i32 0, i64 3
  %884 = getelementptr inbounds [2 x i16], [2 x i16]* %883, i32 0, i64 0
  %885 = load i16, i16* %884, align 2, !tbaa !10
  %886 = sext i16 %885 to i32
  %887 = load i32*, i32** %5, align 8, !tbaa !5
  %888 = load i32, i32* %887, align 4, !tbaa !1
  %889 = or i32 %888, %886
  store i32 %889, i32* %887, align 4, !tbaa !1
  %890 = load i32**, i32*** @g_591, align 8, !tbaa !5
  store i32* null, i32** %890, align 8, !tbaa !5
  store i32* null, i32** @g_783, align 8, !tbaa !5
  store i32 0, i32* %6
  br label %891

; <label>:891                                     ; preds = %882, %881
  %892 = bitcast i32* %i18 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %892) #1
  %893 = bitcast [4 x i32*]* %l_777 to i8*
  call void @llvm.lifetime.end(i64 32, i8* %893) #1
  %cleanup.dest.19 = load i32, i32* %6
  switch i32 %cleanup.dest.19, label %900 [
    i32 0, label %894
  ]

; <label>:894                                     ; preds = %891
  br label %895

; <label>:895                                     ; preds = %894
  %896 = load i32, i32* @g_627, align 4, !tbaa !1
  %897 = add nsw i32 %896, -1
  store i32 %897, i32* @g_627, align 4, !tbaa !1
  br label %859

; <label>:898                                     ; preds = %859
  %899 = load i32*, i32** %l_691, align 8, !tbaa !5
  store i32 5, i32* %899, align 4, !tbaa !1
  store i32 0, i32* %6
  br label %900

; <label>:900                                     ; preds = %898, %891
  %901 = bitcast i32* %j17 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %901) #1
  %902 = bitcast i32* %i16 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %902) #1
  %903 = bitcast [6 x [2 x i16]]* %l_778 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %903) #1
  %cleanup.dest.20 = load i32, i32* %6
  switch i32 %cleanup.dest.20, label %924 [
    i32 0, label %904
  ]

; <label>:904                                     ; preds = %900
  br label %916

; <label>:905                                     ; preds = %847
  store i16 8, i16* %3, align 2, !tbaa !10
  br label %906

; <label>:906                                     ; preds = %912, %905
  %907 = load i16, i16* %3, align 2, !tbaa !10
  %908 = sext i16 %907 to i32
  %909 = icmp eq i32 %908, -20
  br i1 %909, label %910, label %915

; <label>:910                                     ; preds = %906
  %911 = load i32**, i32*** @g_591, align 8, !tbaa !5
  store i32* null, i32** %911, align 8, !tbaa !5
  br label %912

; <label>:912                                     ; preds = %910
  %913 = load i16, i16* %3, align 2, !tbaa !10
  %914 = add i16 %913, -1
  store i16 %914, i16* %3, align 2, !tbaa !10
  br label %906

; <label>:915                                     ; preds = %906
  br label %916

; <label>:916                                     ; preds = %915, %904
  %917 = getelementptr inbounds [9 x [5 x [4 x i32]]], [9 x [5 x [4 x i32]]]* %l_723, i32 0, i64 8
  %918 = getelementptr inbounds [5 x [4 x i32]], [5 x [4 x i32]]* %917, i32 0, i64 4
  %919 = getelementptr inbounds [4 x i32], [4 x i32]* %918, i32 0, i64 3
  %920 = load i32, i32* %919, align 4, !tbaa !1
  %921 = icmp ne i32 %920, 0
  br i1 %921, label %922, label %923

; <label>:922                                     ; preds = %916
  store i32 18, i32* %6
  br label %924

; <label>:923                                     ; preds = %916
  store i32 0, i32* %6
  br label %924

; <label>:924                                     ; preds = %923, %922, %900, %775
  %925 = bitcast i32* %j11 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %925) #1
  %926 = bitcast i32* %i10 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %926) #1
  %927 = bitcast i16** %l_735 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %927) #1
  %928 = bitcast [3 x [2 x i32]]* %l_727 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %928) #1
  %929 = bitcast i32* %l_725 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %929) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_721) #1
  %cleanup.dest.21 = load i32, i32* %6
  switch i32 %cleanup.dest.21, label %991 [
    i32 0, label %930
  ]

; <label>:930                                     ; preds = %924
  br label %983

; <label>:931                                     ; preds = %323
  %932 = bitcast i64***** %l_791 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %932) #1
  store i64**** null, i64***** %l_791, align 8, !tbaa !5
  %933 = bitcast i8** %l_792 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %933) #1
  store i8* null, i8** %l_792, align 8, !tbaa !5
  %934 = bitcast i8** %l_793 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %934) #1
  store i8* null, i8** %l_793, align 8, !tbaa !5
  %935 = bitcast i8** %l_794 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %935) #1
  store i8* null, i8** %l_794, align 8, !tbaa !5
  %936 = bitcast i8** %l_795 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %936) #1
  store i8* getelementptr inbounds ([1 x [9 x [2 x i8]]], [1 x [9 x [2 x i8]]]* @g_579, i32 0, i64 0, i64 0, i64 0), i8** %l_795, align 8, !tbaa !5
  %937 = bitcast i16** %l_798 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %937) #1
  store i16* @g_232, i16** %l_798, align 8, !tbaa !5
  %938 = bitcast i8** %l_800 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %938) #1
  store i8* getelementptr inbounds ([8 x [5 x [6 x i8]]], [8 x [5 x [6 x i8]]]* @g_726, i32 0, i64 0, i64 1, i64 0), i8** %l_800, align 8, !tbaa !5
  %939 = load i32**, i32*** %l_790, align 8, !tbaa !5
  %940 = icmp ne i32** %939, null
  %941 = zext i1 %940 to i32
  %942 = call signext i8 @safe_lshift_func_int8_t_s_u(i8 signext 1, i32 %941)
  %943 = sext i8 %942 to i32
  %944 = load i64****, i64***** %l_791, align 8, !tbaa !5
  %945 = icmp ne i64**** null, %944
  %946 = zext i1 %945 to i32
  %947 = icmp sgt i32 %943, %946
  %948 = zext i1 %947 to i32
  %949 = load i64, i64* %4, align 8, !tbaa !7
  %950 = trunc i64 %949 to i8
  %951 = load i8*, i8** %l_795, align 8, !tbaa !5
  store i8 %950, i8* %951, align 1, !tbaa !9
  %952 = zext i8 %950 to i32
  %953 = and i32 %948, %952
  %954 = trunc i32 %953 to i8
  %955 = load i16, i16* %3, align 2, !tbaa !10
  %956 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %955, i16 zeroext -1)
  %957 = load i16*, i16** %l_798, align 8, !tbaa !5
  store i16 %956, i16* %957, align 2, !tbaa !10
  %958 = zext i16 %956 to i32
  %959 = getelementptr inbounds [10 x [1 x i64*]], [10 x [1 x i64*]]* %l_799, i32 0, i64 0
  %960 = getelementptr inbounds [1 x i64*], [1 x i64*]* %959, i32 0, i64 0
  %961 = load i64*, i64** %960, align 8, !tbaa !5
  %962 = getelementptr inbounds [10 x [1 x i64*]], [10 x [1 x i64*]]* %l_799, i32 0, i64 0
  %963 = getelementptr inbounds [1 x i64*], [1 x i64*]* %962, i32 0, i64 0
  %964 = load i64*, i64** %963, align 8, !tbaa !5
  %965 = icmp ne i64* %961, %964
  %966 = zext i1 %965 to i32
  %967 = or i32 %958, %966
  %968 = trunc i32 %967 to i8
  %969 = load i8*, i8** %l_800, align 8, !tbaa !5
  store i8 %968, i8* %969, align 1, !tbaa !9
  %970 = call zeroext i8 @safe_mod_func_uint8_t_u_u(i8 zeroext %954, i8 zeroext %968)
  %971 = zext i8 %970 to i32
  %972 = load i32*, i32** %l_691, align 8, !tbaa !5
  %973 = load i32, i32* %972, align 4, !tbaa !1
  %974 = xor i32 %973, %971
  store i32 %974, i32* %972, align 4, !tbaa !1
  %975 = load i32*, i32** %5, align 8, !tbaa !5
  store i32* %975, i32** %1
  store i32 1, i32* %6
  %976 = bitcast i8** %l_800 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %976) #1
  %977 = bitcast i16** %l_798 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %977) #1
  %978 = bitcast i8** %l_795 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %978) #1
  %979 = bitcast i8** %l_794 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %979) #1
  %980 = bitcast i8** %l_793 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %980) #1
  %981 = bitcast i8** %l_792 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %981) #1
  %982 = bitcast i64***** %l_791 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %982) #1
  br label %991

; <label>:983                                     ; preds = %930
  %984 = load i32**, i32*** @g_591, align 8, !tbaa !5
  %985 = load i32*, i32** %984, align 8, !tbaa !5
  %986 = getelementptr inbounds [10 x i32*], [10 x i32*]* %l_801, i32 0, i64 3
  store i32* %985, i32** %986, align 8, !tbaa !5
  %987 = load i8, i8* @g_779, align 1, !tbaa !9
  %988 = icmp ne i8 %987, 0
  br i1 %988, label %989, label %990

; <label>:989                                     ; preds = %983
  store i32 2, i32* %6
  br label %991

; <label>:990                                     ; preds = %983
  store i32 0, i32* %6
  br label %991

; <label>:991                                     ; preds = %990, %989, %931, %924
  %992 = bitcast i32* %k9 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %992) #1
  %993 = bitcast i32* %j8 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %993) #1
  %994 = bitcast i32* %i7 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %994) #1
  %995 = bitcast i32*** %l_790 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %995) #1
  %996 = bitcast i16* %l_770 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %996) #1
  %997 = bitcast [9 x [5 x [4 x i32]]]* %l_723 to i8*
  call void @llvm.lifetime.end(i64 720, i8* %997) #1
  %998 = bitcast i32* %l_722 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %998) #1
  %999 = bitcast i32* %l_719 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %999) #1
  %1000 = bitcast i32* %l_714 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1000) #1
  %1001 = bitcast i32* %l_697 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1001) #1
  %cleanup.dest.22 = load i32, i32* %6
  switch i32 %cleanup.dest.22, label %1082 [
    i32 0, label %1002
    i32 18, label %1003
  ]

; <label>:1002                                    ; preds = %991
  br label %1003

; <label>:1003                                    ; preds = %1002, %991
  %1004 = load i8, i8* @g_227, align 1, !tbaa !9
  %1005 = add i8 %1004, 1
  store i8 %1005, i8* @g_227, align 1, !tbaa !9
  br label %319

; <label>:1006                                    ; preds = %319
  %1007 = load i32**, i32*** %l_805, align 8, !tbaa !5
  %1008 = icmp eq i32** null, %1007
  %1009 = zext i1 %1008 to i32
  %1010 = load i16*, i16** %l_806, align 8, !tbaa !5
  %1011 = load i16, i16* %1010, align 2, !tbaa !10
  %1012 = zext i16 %1011 to i32
  %1013 = and i32 %1012, %1009
  %1014 = trunc i32 %1013 to i16
  store i16 %1014, i16* %1010, align 2, !tbaa !10
  %1015 = load i32**, i32*** %l_805, align 8, !tbaa !5
  %1016 = load i32*, i32** %1015, align 8, !tbaa !5
  %1017 = load i32, i32* %1016, align 4, !tbaa !1
  %1018 = sext i32 %1017 to i64
  %1019 = and i64 1802898419, %1018
  %1020 = load i32, i32* %l_807, align 4, !tbaa !1
  %1021 = sext i32 %1020 to i64
  %1022 = and i64 %1019, %1021
  %1023 = trunc i64 %1022 to i32
  %1024 = load i32**, i32*** %l_805, align 8, !tbaa !5
  %1025 = load i32*, i32** %1024, align 8, !tbaa !5
  %1026 = load i32, i32* %1025, align 4, !tbaa !1
  %1027 = load i32**, i32*** %l_805, align 8, !tbaa !5
  %1028 = load i32*, i32** %1027, align 8, !tbaa !5
  %1029 = load i32, i32* %1028, align 4, !tbaa !1
  %1030 = trunc i32 %1029 to i8
  %1031 = load i8*, i8** %l_810, align 8, !tbaa !5
  store i8 %1030, i8* %1031, align 1, !tbaa !9
  %1032 = call signext i8 @safe_lshift_func_int8_t_s_s(i8 signext %1030, i32 4)
  %1033 = sext i8 %1032 to i64
  %1034 = load i32**, i32*** %l_805, align 8, !tbaa !5
  %1035 = load i32*, i32** %1034, align 8, !tbaa !5
  %1036 = load i32, i32* %1035, align 4, !tbaa !1
  %1037 = trunc i32 %1036 to i16
  %1038 = call signext i16 @safe_lshift_func_int16_t_s_s(i16 signext %1037, i32 14)
  %1039 = sext i16 %1038 to i32
  %1040 = load i32*, i32** %l_691, align 8, !tbaa !5
  %1041 = load i32, i32* %1040, align 4, !tbaa !1
  %1042 = load i32, i32* %l_713, align 4, !tbaa !1
  %1043 = or i32 %1042, %1041
  store i32 %1043, i32* %l_713, align 4, !tbaa !1
  %1044 = call i32 @safe_div_func_int32_t_s_s(i32 %1039, i32 %1043)
  %1045 = sext i32 %1044 to i64
  %1046 = call i64 @safe_div_func_uint64_t_u_u(i64 %1045, i64 1122467864798410427)
  %1047 = or i64 %1033, %1046
  %1048 = trunc i64 %1047 to i32
  %1049 = call i32 @safe_add_func_int32_t_s_s(i32 %1023, i32 %1048)
  %1050 = sext i32 %1049 to i64
  %1051 = call i32* @func_35(i64 %1050)
  %1052 = load i32**, i32*** @g_591, align 8, !tbaa !5
  store i32* %1051, i32** %1052, align 8, !tbaa !5
  store i32 9, i32* @g_628, align 4, !tbaa !1
  br label %1053

; <label>:1053                                    ; preds = %1078, %1006
  %1054 = load i32, i32* @g_628, align 4, !tbaa !1
  %1055 = icmp sle i32 %1054, 3
  br i1 %1055, label %1056, label %1081

; <label>:1056                                    ; preds = %1053
  %1057 = bitcast i32* %l_821 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1057) #1
  store i32 1, i32* %l_821, align 4, !tbaa !1
  %1058 = bitcast i32* %l_827 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1058) #1
  store i32 1217432041, i32* %l_827, align 4, !tbaa !1
  %1059 = bitcast i32* %l_828 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1059) #1
  store i32 -1301997992, i32* %l_828, align 4, !tbaa !1
  %1060 = bitcast i32* %l_829 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1060) #1
  store i32 -8, i32* %l_829, align 4, !tbaa !1
  %1061 = bitcast %union.U0** %l_850 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1061) #1
  store %union.U0* null, %union.U0** %l_850, align 8, !tbaa !5
  %1062 = bitcast %union.U0** %l_852 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1062) #1
  store %union.U0* @g_416, %union.U0** %l_852, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_869) #1
  store i8 86, i8* %l_869, align 1, !tbaa !9
  %1063 = bitcast i64***** %l_870 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1063) #1
  %1064 = getelementptr inbounds [5 x [4 x [5 x i64***]]], [5 x [4 x [5 x i64***]]]* %l_688, i32 0, i64 2
  %1065 = getelementptr inbounds [4 x [5 x i64***]], [4 x [5 x i64***]]* %1064, i32 0, i64 0
  %1066 = getelementptr inbounds [5 x i64***], [5 x i64***]* %1065, i32 0, i64 4
  store i64**** %1066, i64***** %l_870, align 8, !tbaa !5
  %1067 = bitcast i64* %l_875 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1067) #1
  store i64 0, i64* %l_875, align 8, !tbaa !7
  %1068 = bitcast i32* %l_904 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1068) #1
  store i32 -1625522119, i32* %l_904, align 4, !tbaa !1
  %1069 = bitcast i32* %l_904 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1069) #1
  %1070 = bitcast i64* %l_875 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1070) #1
  %1071 = bitcast i64***** %l_870 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1071) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_869) #1
  %1072 = bitcast %union.U0** %l_852 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1072) #1
  %1073 = bitcast %union.U0** %l_850 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1073) #1
  %1074 = bitcast i32* %l_829 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1074) #1
  %1075 = bitcast i32* %l_828 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1075) #1
  %1076 = bitcast i32* %l_827 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1076) #1
  %1077 = bitcast i32* %l_821 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1077) #1
  br label %1078

; <label>:1078                                    ; preds = %1056
  %1079 = load i32, i32* @g_628, align 4, !tbaa !1
  %1080 = add nsw i32 %1079, -1
  store i32 %1080, i32* @g_628, align 4, !tbaa !1
  br label %1053

; <label>:1081                                    ; preds = %1053
  store i32 0, i32* %6
  br label %1082

; <label>:1082                                    ; preds = %1081, %991
  %1083 = bitcast i32* %j6 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1083) #1
  %1084 = bitcast i32* %i5 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1084) #1
  %1085 = bitcast i64* %l_874 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1085) #1
  %1086 = bitcast %union.U0** %l_853 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1086) #1
  %1087 = bitcast i8** %l_810 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1087) #1
  %1088 = bitcast i16** %l_806 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1088) #1
  %1089 = bitcast i32*** %l_805 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1089) #1
  %1090 = bitcast [10 x [1 x i64*]]* %l_799 to i8*
  call void @llvm.lifetime.end(i64 80, i8* %1090) #1
  %1091 = bitcast i32* %l_729 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1091) #1
  %1092 = bitcast i32* %l_720 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1092) #1
  %1093 = bitcast i32* %l_717 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1093) #1
  %1094 = bitcast i32* %l_716 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1094) #1
  %1095 = bitcast i32* %l_713 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1095) #1
  %1096 = bitcast i16* %l_696 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %1096) #1
  %cleanup.dest.23 = load i32, i32* %6
  switch i32 %cleanup.dest.23, label %1104 [
    i32 0, label %1097
    i32 12, label %291
    i32 2, label %34
  ]

; <label>:1097                                    ; preds = %1082
  br label %1098

; <label>:1098                                    ; preds = %1097
  %1099 = load i8, i8* @g_512, align 1, !tbaa !9
  %1100 = add i8 %1099, 1
  store i8 %1100, i8* @g_512, align 1, !tbaa !9
  br label %299

; <label>:1101                                    ; preds = %299
  %1102 = load i32**, i32*** @g_591, align 8, !tbaa !5
  %1103 = load i32*, i32** %1102, align 8, !tbaa !5
  store i32* %1103, i32** %1
  store i32 1, i32* %6
  br label %1104

; <label>:1104                                    ; preds = %1101, %1082, %273, %28
  %1105 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1105) #1
  %1106 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1106) #1
  %1107 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1107) #1
  %1108 = bitcast i32* %l_868 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1108) #1
  %1109 = bitcast i32*** %l_834 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1109) #1
  %1110 = bitcast i32* %l_807 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1110) #1
  %1111 = bitcast [10 x i32*]* %l_801 to i8*
  call void @llvm.lifetime.end(i64 80, i8* %1111) #1
  %1112 = bitcast [2 x [6 x i32]]* %l_718 to i8*
  call void @llvm.lifetime.end(i64 48, i8* %1112) #1
  %1113 = bitcast i32* %l_715 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1113) #1
  %1114 = bitcast i32** %l_691 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1114) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_690) #1
  %1115 = bitcast [5 x [4 x [5 x i64***]]]* %l_688 to i8*
  call void @llvm.lifetime.end(i64 800, i8* %1115) #1
  %1116 = bitcast %union.U0** %l_681 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1116) #1
  %1117 = bitcast i32** %l_646 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1117) #1
  %1118 = bitcast i16*** %l_637 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1118) #1
  %1119 = bitcast i16** %l_638 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1119) #1
  %1120 = bitcast i64* %l_636 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1120) #1
  %1121 = load i32*, i32** %1
  ret i32* %1121
}

; Function Attrs: nounwind uwtable
define internal signext i16 @safe_unary_minus_func_int16_t_s(i16 signext %si) #0 {
  %1 = alloca i16, align 2
  store i16 %si, i16* %1, align 2, !tbaa !10
  %2 = load i16, i16* %1, align 2, !tbaa !10
  %3 = sext i16 %2 to i32
  %4 = sub nsw i32 0, %3
  %5 = trunc i32 %4 to i16
  ret i16 %5
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @safe_rshift_func_uint8_t_u_u(i8 zeroext %left, i32 %right) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i32, align 4
  store i8 %left, i8* %1, align 1, !tbaa !9
  store i32 %right, i32* %2, align 4, !tbaa !1
  %3 = load i32, i32* %2, align 4, !tbaa !1
  %4 = icmp uge i32 %3, 32
  br i1 %4, label %5, label %8

; <label>:5                                       ; preds = %0
  %6 = load i8, i8* %1, align 1, !tbaa !9
  %7 = zext i8 %6 to i32
  br label %13

; <label>:8                                       ; preds = %0
  %9 = load i8, i8* %1, align 1, !tbaa !9
  %10 = zext i8 %9 to i32
  %11 = load i32, i32* %2, align 4, !tbaa !1
  %12 = ashr i32 %10, %11
  br label %13

; <label>:13                                      ; preds = %8, %5
  %14 = phi i32 [ %7, %5 ], [ %12, %8 ]
  %15 = trunc i32 %14 to i8
  ret i8 %15
}

; Function Attrs: nounwind uwtable
define internal i64 @safe_add_func_int64_t_s_s(i64 %si1, i64 %si2) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 %si1, i64* %1, align 8, !tbaa !7
  store i64 %si2, i64* %2, align 8, !tbaa !7
  %3 = load i64, i64* %1, align 8, !tbaa !7
  %4 = icmp sgt i64 %3, 0
  br i1 %4, label %5, label %13

; <label>:5                                       ; preds = %0
  %6 = load i64, i64* %2, align 8, !tbaa !7
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %8, label %13

; <label>:8                                       ; preds = %5
  %9 = load i64, i64* %1, align 8, !tbaa !7
  %10 = load i64, i64* %2, align 8, !tbaa !7
  %11 = sub nsw i64 9223372036854775807, %10
  %12 = icmp sgt i64 %9, %11
  br i1 %12, label %24, label %13

; <label>:13                                      ; preds = %8, %5, %0
  %14 = load i64, i64* %1, align 8, !tbaa !7
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %26

; <label>:16                                      ; preds = %13
  %17 = load i64, i64* %2, align 8, !tbaa !7
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %26

; <label>:19                                      ; preds = %16
  %20 = load i64, i64* %1, align 8, !tbaa !7
  %21 = load i64, i64* %2, align 8, !tbaa !7
  %22 = sub nsw i64 -9223372036854775808, %21
  %23 = icmp slt i64 %20, %22
  br i1 %23, label %24, label %26

; <label>:24                                      ; preds = %19, %8
  %25 = load i64, i64* %1, align 8, !tbaa !7
  br label %30

; <label>:26                                      ; preds = %19, %16, %13
  %27 = load i64, i64* %1, align 8, !tbaa !7
  %28 = load i64, i64* %2, align 8, !tbaa !7
  %29 = add nsw i64 %27, %28
  br label %30

; <label>:30                                      ; preds = %26, %24
  %31 = phi i64 [ %25, %24 ], [ %29, %26 ]
  ret i64 %31
}

; Function Attrs: nounwind uwtable
define internal zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %ui1, i16 zeroext %ui2) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i16, align 2
  store i16 %ui1, i16* %1, align 2, !tbaa !10
  store i16 %ui2, i16* %2, align 2, !tbaa !10
  %3 = load i16, i16* %1, align 2, !tbaa !10
  %4 = zext i16 %3 to i32
  %5 = load i16, i16* %2, align 2, !tbaa !10
  %6 = zext i16 %5 to i32
  %7 = sub nsw i32 %4, %6
  %8 = trunc i32 %7 to i16
  ret i16 %8
}

; Function Attrs: nounwind uwtable
define internal signext i8 @safe_mul_func_int8_t_s_s(i8 signext %si1, i8 signext %si2) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  store i8 %si1, i8* %1, align 1, !tbaa !9
  store i8 %si2, i8* %2, align 1, !tbaa !9
  %3 = load i8, i8* %1, align 1, !tbaa !9
  %4 = sext i8 %3 to i32
  %5 = load i8, i8* %2, align 1, !tbaa !9
  %6 = sext i8 %5 to i32
  %7 = mul nsw i32 %4, %6
  %8 = trunc i32 %7 to i8
  ret i8 %8
}

; Function Attrs: nounwind uwtable
define internal i64 @func_50(i64* %p_51, i8 signext %p_52, i8 zeroext %p_53) #0 {
  %1 = alloca %union.U0, align 8
  %2 = alloca i64*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %l_508 = alloca i16, align 2
  %l_509 = alloca [9 x [7 x [1 x i32*]]], align 16
  %l_510 = alloca %union.U0, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i64* %p_51, i64** %2, align 8, !tbaa !5
  store i8 %p_52, i8* %3, align 1, !tbaa !9
  store i8 %p_53, i8* %4, align 1, !tbaa !9
  %5 = bitcast i16* %l_508 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %5) #1
  store i16 -1, i16* %l_508, align 2, !tbaa !10
  %6 = bitcast [9 x [7 x [1 x i32*]]]* %l_509 to i8*
  call void @llvm.lifetime.start(i64 504, i8* %6) #1
  %7 = bitcast [9 x [7 x [1 x i32*]]]* %l_509 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* bitcast ([9 x [7 x [1 x i32*]]]* @func_50.l_509 to i8*), i64 504, i32 16, i1 false)
  %8 = bitcast %union.U0* %l_510 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast %union.U0* %l_510 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* bitcast (%union.U0* @func_50.l_510 to i8*), i64 8, i32 8, i1 false)
  %10 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load i16, i16* %l_508, align 2, !tbaa !10
  %14 = zext i16 %13 to i64
  %15 = and i64 %14, 255
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* @g_25, align 4, !tbaa !1
  %17 = bitcast %union.U0* %1 to i8*
  %18 = bitcast %union.U0* %l_510 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 8, i32 8, i1 false), !tbaa.struct !12
  %19 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  %20 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  %21 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %22 = bitcast %union.U0* %l_510 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = bitcast [9 x [7 x [1 x i32*]]]* %l_509 to i8*
  call void @llvm.lifetime.end(i64 504, i8* %23) #1
  %24 = bitcast i16* %l_508 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %24) #1
  %25 = getelementptr %union.U0, %union.U0* %1, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  ret i64 %26
}

; Function Attrs: nounwind uwtable
define internal signext i8 @safe_sub_func_int8_t_s_s(i8 signext %si1, i8 signext %si2) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  store i8 %si1, i8* %1, align 1, !tbaa !9
  store i8 %si2, i8* %2, align 1, !tbaa !9
  %3 = load i8, i8* %1, align 1, !tbaa !9
  %4 = sext i8 %3 to i32
  %5 = load i8, i8* %2, align 1, !tbaa !9
  %6 = sext i8 %5 to i32
  %7 = sub nsw i32 %4, %6
  %8 = trunc i32 %7 to i8
  ret i8 %8
}

; Function Attrs: nounwind uwtable
define internal signext i8 @safe_lshift_func_int8_t_s_s(i8 signext %left, i32 %right) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i32, align 4
  store i8 %left, i8* %1, align 1, !tbaa !9
  store i32 %right, i32* %2, align 4, !tbaa !1
  %3 = load i8, i8* %1, align 1, !tbaa !9
  %4 = sext i8 %3 to i32
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %18, label %6

; <label>:6                                       ; preds = %0
  %7 = load i32, i32* %2, align 4, !tbaa !1
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %18, label %9

; <label>:9                                       ; preds = %6
  %10 = load i32, i32* %2, align 4, !tbaa !1
  %11 = icmp sge i32 %10, 32
  br i1 %11, label %18, label %12

; <label>:12                                      ; preds = %9
  %13 = load i8, i8* %1, align 1, !tbaa !9
  %14 = sext i8 %13 to i32
  %15 = load i32, i32* %2, align 4, !tbaa !1
  %16 = ashr i32 127, %15
  %17 = icmp sgt i32 %14, %16
  br i1 %17, label %18, label %21

; <label>:18                                      ; preds = %12, %9, %6, %0
  %19 = load i8, i8* %1, align 1, !tbaa !9
  %20 = sext i8 %19 to i32
  br label %26

; <label>:21                                      ; preds = %12
  %22 = load i8, i8* %1, align 1, !tbaa !9
  %23 = sext i8 %22 to i32
  %24 = load i32, i32* %2, align 4, !tbaa !1
  %25 = shl i32 %23, %24
  br label %26

; <label>:26                                      ; preds = %21, %18
  %27 = phi i32 [ %20, %18 ], [ %25, %21 ]
  %28 = trunc i32 %27 to i8
  ret i8 %28
}

; Function Attrs: nounwind uwtable
define internal i64 @safe_sub_func_uint64_t_u_u(i64 %ui1, i64 %ui2) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 %ui1, i64* %1, align 8, !tbaa !7
  store i64 %ui2, i64* %2, align 8, !tbaa !7
  %3 = load i64, i64* %1, align 8, !tbaa !7
  %4 = load i64, i64* %2, align 8, !tbaa !7
  %5 = sub i64 %3, %4
  ret i64 %5
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %ui1, i8 zeroext %ui2) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  store i8 %ui1, i8* %1, align 1, !tbaa !9
  store i8 %ui2, i8* %2, align 1, !tbaa !9
  %3 = load i8, i8* %1, align 1, !tbaa !9
  %4 = zext i8 %3 to i32
  %5 = load i8, i8* %2, align 1, !tbaa !9
  %6 = zext i8 %5 to i32
  %7 = add nsw i32 %4, %6
  %8 = trunc i32 %7 to i8
  ret i8 %8
}

; Function Attrs: nounwind uwtable
define internal zeroext i16 @safe_lshift_func_uint16_t_u_u(i16 zeroext %left, i32 %right) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i32, align 4
  store i16 %left, i16* %1, align 2, !tbaa !10
  store i32 %right, i32* %2, align 4, !tbaa !1
  %3 = load i32, i32* %2, align 4, !tbaa !1
  %4 = icmp uge i32 %3, 32
  br i1 %4, label %11, label %5

; <label>:5                                       ; preds = %0
  %6 = load i16, i16* %1, align 2, !tbaa !10
  %7 = zext i16 %6 to i32
  %8 = load i32, i32* %2, align 4, !tbaa !1
  %9 = ashr i32 65535, %8
  %10 = icmp sgt i32 %7, %9
  br i1 %10, label %11, label %14

; <label>:11                                      ; preds = %5, %0
  %12 = load i16, i16* %1, align 2, !tbaa !10
  %13 = zext i16 %12 to i32
  br label %19

; <label>:14                                      ; preds = %5
  %15 = load i16, i16* %1, align 2, !tbaa !10
  %16 = zext i16 %15 to i32
  %17 = load i32, i32* %2, align 4, !tbaa !1
  %18 = shl i32 %16, %17
  br label %19

; <label>:19                                      ; preds = %14, %11
  %20 = phi i32 [ %13, %11 ], [ %18, %14 ]
  %21 = trunc i32 %20 to i16
  ret i16 %21
}

; Function Attrs: nounwind uwtable
define internal i32 @safe_add_func_uint32_t_u_u(i32 %ui1, i32 %ui2) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %ui1, i32* %1, align 4, !tbaa !1
  store i32 %ui2, i32* %2, align 4, !tbaa !1
  %3 = load i32, i32* %1, align 4, !tbaa !1
  %4 = load i32, i32* %2, align 4, !tbaa !1
  %5 = add i32 %3, %4
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @safe_rshift_func_uint8_t_u_s(i8 zeroext %left, i32 %right) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i32, align 4
  store i8 %left, i8* %1, align 1, !tbaa !9
  store i32 %right, i32* %2, align 4, !tbaa !1
  %3 = load i32, i32* %2, align 4, !tbaa !1
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %8, label %5

; <label>:5                                       ; preds = %0
  %6 = load i32, i32* %2, align 4, !tbaa !1
  %7 = icmp sge i32 %6, 32
  br i1 %7, label %8, label %11

; <label>:8                                       ; preds = %5, %0
  %9 = load i8, i8* %1, align 1, !tbaa !9
  %10 = zext i8 %9 to i32
  br label %16

; <label>:11                                      ; preds = %5
  %12 = load i8, i8* %1, align 1, !tbaa !9
  %13 = zext i8 %12 to i32
  %14 = load i32, i32* %2, align 4, !tbaa !1
  %15 = ashr i32 %13, %14
  br label %16

; <label>:16                                      ; preds = %11, %8
  %17 = phi i32 [ %10, %8 ], [ %15, %11 ]
  %18 = trunc i32 %17 to i8
  ret i8 %18
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @safe_sub_func_uint8_t_u_u(i8 zeroext %ui1, i8 zeroext %ui2) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  store i8 %ui1, i8* %1, align 1, !tbaa !9
  store i8 %ui2, i8* %2, align 1, !tbaa !9
  %3 = load i8, i8* %1, align 1, !tbaa !9
  %4 = zext i8 %3 to i32
  %5 = load i8, i8* %2, align 1, !tbaa !9
  %6 = zext i8 %5 to i32
  %7 = sub nsw i32 %4, %6
  %8 = trunc i32 %7 to i8
  ret i8 %8
}

; Function Attrs: nounwind uwtable
define internal i64 @safe_add_func_uint64_t_u_u(i64 %ui1, i64 %ui2) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 %ui1, i64* %1, align 8, !tbaa !7
  store i64 %ui2, i64* %2, align 8, !tbaa !7
  %3 = load i64, i64* %1, align 8, !tbaa !7
  %4 = load i64, i64* %2, align 8, !tbaa !7
  %5 = add i64 %3, %4
  ret i64 %5
}

; Function Attrs: nounwind uwtable
define internal signext i8 @safe_lshift_func_int8_t_s_u(i8 signext %left, i32 %right) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i32, align 4
  store i8 %left, i8* %1, align 1, !tbaa !9
  store i32 %right, i32* %2, align 4, !tbaa !1
  %3 = load i8, i8* %1, align 1, !tbaa !9
  %4 = sext i8 %3 to i32
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %15, label %6

; <label>:6                                       ; preds = %0
  %7 = load i32, i32* %2, align 4, !tbaa !1
  %8 = icmp uge i32 %7, 32
  br i1 %8, label %15, label %9

; <label>:9                                       ; preds = %6
  %10 = load i8, i8* %1, align 1, !tbaa !9
  %11 = sext i8 %10 to i32
  %12 = load i32, i32* %2, align 4, !tbaa !1
  %13 = ashr i32 127, %12
  %14 = icmp sgt i32 %11, %13
  br i1 %14, label %15, label %18

; <label>:15                                      ; preds = %9, %6, %0
  %16 = load i8, i8* %1, align 1, !tbaa !9
  %17 = sext i8 %16 to i32
  br label %23

; <label>:18                                      ; preds = %9
  %19 = load i8, i8* %1, align 1, !tbaa !9
  %20 = sext i8 %19 to i32
  %21 = load i32, i32* %2, align 4, !tbaa !1
  %22 = shl i32 %20, %21
  br label %23

; <label>:23                                      ; preds = %18, %15
  %24 = phi i32 [ %17, %15 ], [ %22, %18 ]
  %25 = trunc i32 %24 to i8
  ret i8 %25
}

; Function Attrs: nounwind uwtable
define internal i32* @func_35(i64 %p_36) #0 {
  %1 = alloca i64, align 8
  %l_634 = alloca [9 x [4 x [7 x i32*]]], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i64 %p_36, i64* %1, align 8, !tbaa !7
  %2 = bitcast [9 x [4 x [7 x i32*]]]* %l_634 to i8*
  call void @llvm.lifetime.start(i64 2016, i8* %2) #1
  %3 = bitcast [9 x [4 x [7 x i32*]]]* %l_634 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* bitcast ([9 x [4 x [7 x i32*]]]* @func_35.l_634 to i8*), i64 2016, i32 16, i1 false)
  %4 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load i32, i32* @g_629, align 4, !tbaa !1
  %8 = sext i32 %7 to i64
  %9 = or i64 %8, 1
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* @g_629, align 4, !tbaa !1
  %11 = getelementptr inbounds [9 x [4 x [7 x i32*]]], [9 x [4 x [7 x i32*]]]* %l_634, i32 0, i64 5
  %12 = getelementptr inbounds [4 x [7 x i32*]], [4 x [7 x i32*]]* %11, i32 0, i64 2
  %13 = getelementptr inbounds [7 x i32*], [7 x i32*]* %12, i32 0, i64 0
  %14 = load i32*, i32** %13, align 8, !tbaa !5
  %15 = load i32**, i32*** @g_591, align 8, !tbaa !5
  store i32* %14, i32** %15, align 8, !tbaa !5
  %16 = load i32**, i32*** @g_591, align 8, !tbaa !5
  %17 = load i32*, i32** %16, align 8, !tbaa !5
  %18 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #1
  %19 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  %20 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  %21 = bitcast [9 x [4 x [7 x i32*]]]* %l_634 to i8*
  call void @llvm.lifetime.end(i64 2016, i8* %21) #1
  ret i32* %17
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @safe_div_func_uint8_t_u_u(i8 zeroext %ui1, i8 zeroext %ui2) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  store i8 %ui1, i8* %1, align 1, !tbaa !9
  store i8 %ui2, i8* %2, align 1, !tbaa !9
  %3 = load i8, i8* %2, align 1, !tbaa !9
  %4 = zext i8 %3 to i32
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

; <label>:6                                       ; preds = %0
  %7 = load i8, i8* %1, align 1, !tbaa !9
  %8 = zext i8 %7 to i32
  br label %15

; <label>:9                                       ; preds = %0
  %10 = load i8, i8* %1, align 1, !tbaa !9
  %11 = zext i8 %10 to i32
  %12 = load i8, i8* %2, align 1, !tbaa !9
  %13 = zext i8 %12 to i32
  %14 = sdiv i32 %11, %13
  br label %15

; <label>:15                                      ; preds = %9, %6
  %16 = phi i32 [ %8, %6 ], [ %14, %9 ]
  %17 = trunc i32 %16 to i8
  ret i8 %17
}

; Function Attrs: nounwind uwtable
define internal signext i16 @safe_rshift_func_int16_t_s_u(i16 signext %left, i32 %right) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i32, align 4
  store i16 %left, i16* %1, align 2, !tbaa !10
  store i32 %right, i32* %2, align 4, !tbaa !1
  %3 = load i16, i16* %1, align 2, !tbaa !10
  %4 = sext i16 %3 to i32
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %9, label %6

; <label>:6                                       ; preds = %0
  %7 = load i32, i32* %2, align 4, !tbaa !1
  %8 = icmp uge i32 %7, 32
  br i1 %8, label %9, label %12

; <label>:9                                       ; preds = %6, %0
  %10 = load i16, i16* %1, align 2, !tbaa !10
  %11 = sext i16 %10 to i32
  br label %17

; <label>:12                                      ; preds = %6
  %13 = load i16, i16* %1, align 2, !tbaa !10
  %14 = sext i16 %13 to i32
  %15 = load i32, i32* %2, align 4, !tbaa !1
  %16 = ashr i32 %14, %15
  br label %17

; <label>:17                                      ; preds = %12, %9
  %18 = phi i32 [ %11, %9 ], [ %16, %12 ]
  %19 = trunc i32 %18 to i16
  ret i16 %19
}

; Function Attrs: nounwind uwtable
define internal zeroext i16 @safe_lshift_func_uint16_t_u_s(i16 zeroext %left, i32 %right) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i32, align 4
  store i16 %left, i16* %1, align 2, !tbaa !10
  store i32 %right, i32* %2, align 4, !tbaa !1
  %3 = load i32, i32* %2, align 4, !tbaa !1
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %14, label %5

; <label>:5                                       ; preds = %0
  %6 = load i32, i32* %2, align 4, !tbaa !1
  %7 = icmp sge i32 %6, 32
  br i1 %7, label %14, label %8

; <label>:8                                       ; preds = %5
  %9 = load i16, i16* %1, align 2, !tbaa !10
  %10 = zext i16 %9 to i32
  %11 = load i32, i32* %2, align 4, !tbaa !1
  %12 = ashr i32 65535, %11
  %13 = icmp sgt i32 %10, %12
  br i1 %13, label %14, label %17

; <label>:14                                      ; preds = %8, %5, %0
  %15 = load i16, i16* %1, align 2, !tbaa !10
  %16 = zext i16 %15 to i32
  br label %22

; <label>:17                                      ; preds = %8
  %18 = load i16, i16* %1, align 2, !tbaa !10
  %19 = zext i16 %18 to i32
  %20 = load i32, i32* %2, align 4, !tbaa !1
  %21 = shl i32 %19, %20
  br label %22

; <label>:22                                      ; preds = %17, %14
  %23 = phi i32 [ %16, %14 ], [ %21, %17 ]
  %24 = trunc i32 %23 to i16
  ret i16 %24
}

; Function Attrs: nounwind uwtable
define internal i64 @safe_mod_func_uint64_t_u_u(i64 %ui1, i64 %ui2) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 %ui1, i64* %1, align 8, !tbaa !7
  store i64 %ui2, i64* %2, align 8, !tbaa !7
  %3 = load i64, i64* %2, align 8, !tbaa !7
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %7

; <label>:5                                       ; preds = %0
  %6 = load i64, i64* %1, align 8, !tbaa !7
  br label %11

; <label>:7                                       ; preds = %0
  %8 = load i64, i64* %1, align 8, !tbaa !7
  %9 = load i64, i64* %2, align 8, !tbaa !7
  %10 = urem i64 %8, %9
  br label %11

; <label>:11                                      ; preds = %7, %5
  %12 = phi i64 [ %6, %5 ], [ %10, %7 ]
  ret i64 %12
}

; Function Attrs: nounwind uwtable
define internal i32 @safe_unary_minus_func_int32_t_s(i32 %si) #0 {
  %1 = alloca i32, align 4
  store i32 %si, i32* %1, align 4, !tbaa !1
  %2 = load i32, i32* %1, align 4, !tbaa !1
  %3 = icmp eq i32 %2, -2147483648
  br i1 %3, label %4, label %6

; <label>:4                                       ; preds = %0
  %5 = load i32, i32* %1, align 4, !tbaa !1
  br label %9

; <label>:6                                       ; preds = %0
  %7 = load i32, i32* %1, align 4, !tbaa !1
  %8 = sub nsw i32 0, %7
  br label %9

; <label>:9                                       ; preds = %6, %4
  %10 = phi i32 [ %5, %4 ], [ %8, %6 ]
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal i64 @safe_unary_minus_func_int64_t_s(i64 %si) #0 {
  %1 = alloca i64, align 8
  store i64 %si, i64* %1, align 8, !tbaa !7
  %2 = load i64, i64* %1, align 8, !tbaa !7
  %3 = icmp eq i64 %2, -9223372036854775808
  br i1 %3, label %4, label %6

; <label>:4                                       ; preds = %0
  %5 = load i64, i64* %1, align 8, !tbaa !7
  br label %9

; <label>:6                                       ; preds = %0
  %7 = load i64, i64* %1, align 8, !tbaa !7
  %8 = sub nsw i64 0, %7
  br label %9

; <label>:9                                       ; preds = %6, %4
  %10 = phi i64 [ %5, %4 ], [ %8, %6 ]
  ret i64 %10
}

; Function Attrs: nounwind uwtable
define internal i32 @safe_div_func_uint32_t_u_u(i32 %ui1, i32 %ui2) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %ui1, i32* %1, align 4, !tbaa !1
  store i32 %ui2, i32* %2, align 4, !tbaa !1
  %3 = load i32, i32* %2, align 4, !tbaa !1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

; <label>:5                                       ; preds = %0
  %6 = load i32, i32* %1, align 4, !tbaa !1
  br label %11

; <label>:7                                       ; preds = %0
  %8 = load i32, i32* %1, align 4, !tbaa !1
  %9 = load i32, i32* %2, align 4, !tbaa !1
  %10 = udiv i32 %8, %9
  br label %11

; <label>:11                                      ; preds = %7, %5
  %12 = phi i32 [ %6, %5 ], [ %10, %7 ]
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal i64* @func_40(i32 %p_41, i8 zeroext %p_42, i8 zeroext %p_43) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %l_511 = alloca [10 x i32*], align 16
  %l_523 = alloca i32**, align 8
  %l_524 = alloca [7 x i64*], align 16
  %i = alloca i32, align 4
  store i32 %p_41, i32* %1, align 4, !tbaa !1
  store i8 %p_42, i8* %2, align 1, !tbaa !9
  store i8 %p_43, i8* %3, align 1, !tbaa !9
  %4 = bitcast [10 x i32*]* %l_511 to i8*
  call void @llvm.lifetime.start(i64 80, i8* %4) #1
  %5 = bitcast [10 x i32*]* %l_511 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* bitcast ([10 x i32*]* @func_40.l_511 to i8*), i64 80, i32 16, i1 false)
  %6 = bitcast i32*** %l_523 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = getelementptr inbounds [10 x i32*], [10 x i32*]* %l_511, i32 0, i64 1
  store i32** %7, i32*** %l_523, align 8, !tbaa !5
  %8 = bitcast [7 x i64*]* %l_524 to i8*
  call void @llvm.lifetime.start(i64 56, i8* %8) #1
  %9 = bitcast [7 x i64*]* %l_524 to i8*
  call void @llvm.memset.p0i8.i64(i8* %9, i8 0, i64 56, i32 16, i1 false)
  %10 = bitcast i8* %9 to [7 x i64*]*
  %11 = getelementptr [7 x i64*], [7 x i64*]* %10, i32 0, i32 1
  store i64* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x i64]* @g_23 to i8*), i64 32) to i64*), i64** %11
  %12 = getelementptr [7 x i64*], [7 x i64*]* %10, i32 0, i32 4
  store i64* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x i64]* @g_23 to i8*), i64 32) to i64*), i64** %12
  %13 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = load i32, i32* @g_514, align 4, !tbaa !1
  %15 = add i32 %14, 1
  store i32 %15, i32* @g_514, align 4, !tbaa !1
  %16 = load i8, i8* %2, align 1, !tbaa !9
  %17 = zext i8 %16 to i16
  %18 = load i8, i8* %2, align 1, !tbaa !9
  %19 = zext i8 %18 to i16
  %20 = load i64, i64* getelementptr inbounds ([9 x [6 x [2 x i64]]], [9 x [6 x [2 x i64]]]* @g_11, i32 0, i64 8, i64 1, i64 0), align 8, !tbaa !7
  %21 = trunc i64 %20 to i16
  %22 = call signext i16 @safe_mod_func_int16_t_s_s(i16 signext %19, i16 signext %21)
  %23 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %17, i16 zeroext %22)
  %24 = call zeroext i8 @safe_lshift_func_uint8_t_u_u(i8 zeroext -9, i32 2)
  %25 = zext i8 %24 to i32
  %26 = load i32, i32* @g_25, align 4, !tbaa !1
  %27 = or i32 %26, %25
  store i32 %27, i32* @g_25, align 4, !tbaa !1
  %28 = getelementptr inbounds [10 x i32*], [10 x i32*]* %l_511, i32 0, i64 1
  %29 = load i32*, i32** %28, align 8, !tbaa !5
  %30 = load i32**, i32*** %l_523, align 8, !tbaa !5
  store i32* %29, i32** %30, align 8, !tbaa !5
  %31 = getelementptr inbounds [7 x i64*], [7 x i64*]* %l_524, i32 0, i64 3
  %32 = load i64*, i64** %31, align 8, !tbaa !5
  %33 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  %34 = bitcast [7 x i64*]* %l_524 to i8*
  call void @llvm.lifetime.end(i64 56, i8* %34) #1
  %35 = bitcast i32*** %l_523 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  %36 = bitcast [10 x i32*]* %l_511 to i8*
  call void @llvm.lifetime.end(i64 80, i8* %36) #1
  ret i64* %32
}

; Function Attrs: nounwind uwtable
define internal i64 @safe_div_func_int64_t_s_s(i64 %si1, i64 %si2) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 %si1, i64* %1, align 8, !tbaa !7
  store i64 %si2, i64* %2, align 8, !tbaa !7
  %3 = load i64, i64* %2, align 8, !tbaa !7
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %11, label %5

; <label>:5                                       ; preds = %0
  %6 = load i64, i64* %1, align 8, !tbaa !7
  %7 = icmp eq i64 %6, -9223372036854775808
  br i1 %7, label %8, label %13

; <label>:8                                       ; preds = %5
  %9 = load i64, i64* %2, align 8, !tbaa !7
  %10 = icmp eq i64 %9, -1
  br i1 %10, label %11, label %13

; <label>:11                                      ; preds = %8, %0
  %12 = load i64, i64* %1, align 8, !tbaa !7
  br label %17

; <label>:13                                      ; preds = %8, %5
  %14 = load i64, i64* %1, align 8, !tbaa !7
  %15 = load i64, i64* %2, align 8, !tbaa !7
  %16 = sdiv i64 %14, %15
  br label %17

; <label>:17                                      ; preds = %13, %11
  %18 = phi i64 [ %12, %11 ], [ %16, %13 ]
  ret i64 %18
}

; Function Attrs: nounwind uwtable
define internal signext i16 @safe_sub_func_int16_t_s_s(i16 signext %si1, i16 signext %si2) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i16, align 2
  store i16 %si1, i16* %1, align 2, !tbaa !10
  store i16 %si2, i16* %2, align 2, !tbaa !10
  %3 = load i16, i16* %1, align 2, !tbaa !10
  %4 = sext i16 %3 to i32
  %5 = load i16, i16* %2, align 2, !tbaa !10
  %6 = sext i16 %5 to i32
  %7 = sub nsw i32 %4, %6
  %8 = trunc i32 %7 to i16
  ret i16 %8
}

; Function Attrs: nounwind uwtable
define internal signext i8 @safe_rshift_func_int8_t_s_u(i8 signext %left, i32 %right) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i32, align 4
  store i8 %left, i8* %1, align 1, !tbaa !9
  store i32 %right, i32* %2, align 4, !tbaa !1
  %3 = load i8, i8* %1, align 1, !tbaa !9
  %4 = sext i8 %3 to i32
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %9, label %6

; <label>:6                                       ; preds = %0
  %7 = load i32, i32* %2, align 4, !tbaa !1
  %8 = icmp uge i32 %7, 32
  br i1 %8, label %9, label %12

; <label>:9                                       ; preds = %6, %0
  %10 = load i8, i8* %1, align 1, !tbaa !9
  %11 = sext i8 %10 to i32
  br label %17

; <label>:12                                      ; preds = %6
  %13 = load i8, i8* %1, align 1, !tbaa !9
  %14 = sext i8 %13 to i32
  %15 = load i32, i32* %2, align 4, !tbaa !1
  %16 = ashr i32 %14, %15
  br label %17

; <label>:17                                      ; preds = %12, %9
  %18 = phi i32 [ %11, %9 ], [ %16, %12 ]
  %19 = trunc i32 %18 to i8
  ret i8 %19
}

; Function Attrs: nounwind uwtable
define internal signext i16 @safe_add_func_int16_t_s_s(i16 signext %si1, i16 signext %si2) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i16, align 2
  store i16 %si1, i16* %1, align 2, !tbaa !10
  store i16 %si2, i16* %2, align 2, !tbaa !10
  %3 = load i16, i16* %1, align 2, !tbaa !10
  %4 = sext i16 %3 to i32
  %5 = load i16, i16* %2, align 2, !tbaa !10
  %6 = sext i16 %5 to i32
  %7 = add nsw i32 %4, %6
  %8 = trunc i32 %7 to i16
  ret i16 %8
}

; Function Attrs: nounwind uwtable
define internal i64 @func_37(i64* %p_38, i32 %p_39) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64*, align 8
  %3 = alloca i32, align 4
  %l_526 = alloca i32*, align 8
  %l_525 = alloca i32**, align 8
  %l_557 = alloca i16*, align 8
  %l_563 = alloca i16*, align 8
  %l_562 = alloca i16**, align 8
  %l_568 = alloca i32, align 4
  %l_576 = alloca [9 x i32], align 16
  %l_592 = alloca i32**, align 8
  %l_619 = alloca i64, align 8
  %l_621 = alloca i32, align 4
  %i = alloca i32, align 4
  %4 = alloca %union.U0, align 8
  %l_561 = alloca i16*, align 8
  %l_560 = alloca i16**, align 8
  %l_565 = alloca i32, align 4
  %l_547 = alloca i32, align 4
  %l_550 = alloca [7 x [3 x [3 x i32*]]], align 16
  %l_551 = alloca i32**, align 8
  %l_552 = alloca i32**, align 8
  %l_553 = alloca i32*, align 8
  %l_559 = alloca i16*, align 8
  %l_558 = alloca i16**, align 8
  %l_564 = alloca i8*, align 8
  %i1 = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %5 = alloca i32
  %l_569 = alloca i32*, align 8
  %l_570 = alloca i32*, align 8
  %l_571 = alloca i32*, align 8
  %l_572 = alloca i32*, align 8
  %l_573 = alloca i32*, align 8
  %l_574 = alloca i32*, align 8
  %l_575 = alloca [7 x i32*], align 16
  %l_596 = alloca i16*, align 8
  %l_595 = alloca i16**, align 8
  %l_597 = alloca i16*, align 8
  %l_617 = alloca i32*, align 8
  %l_618 = alloca i8*, align 8
  %l_620 = alloca [7 x [1 x i32*]], align 16
  %i2 = alloca i32, align 4
  %j3 = alloca i32, align 4
  %l_589 = alloca i32***, align 8
  %l_590 = alloca [1 x [10 x [5 x i32***]]], align 16
  %i4 = alloca i32, align 4
  %j5 = alloca i32, align 4
  %k6 = alloca i32, align 4
  %l_622 = alloca i32, align 4
  %l_623 = alloca i32*, align 8
  %l_624 = alloca [7 x i32*], align 16
  %l_630 = alloca i16, align 2
  %i8 = alloca i32, align 4
  store i64* %p_38, i64** %2, align 8, !tbaa !5
  store i32 %p_39, i32* %3, align 4, !tbaa !1
  %6 = bitcast i32** %l_526 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i32* @g_25, i32** %l_526, align 8, !tbaa !5
  %7 = bitcast i32*** %l_525 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store i32** %l_526, i32*** %l_525, align 8, !tbaa !5
  %8 = bitcast i16** %l_557 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i16* null, i16** %l_557, align 8, !tbaa !5
  %9 = bitcast i16** %l_563 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store i16* @g_232, i16** %l_563, align 8, !tbaa !5
  %10 = bitcast i16*** %l_562 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i16** %l_563, i16*** %l_562, align 8, !tbaa !5
  %11 = bitcast i32* %l_568 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  store i32 -1, i32* %l_568, align 4, !tbaa !1
  %12 = bitcast [9 x i32]* %l_576 to i8*
  call void @llvm.lifetime.start(i64 36, i8* %12) #1
  %13 = bitcast i32*** %l_592 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  store i32** @g_529, i32*** %l_592, align 8, !tbaa !5
  %14 = bitcast i64* %l_619 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  store i64 1, i64* %l_619, align 8, !tbaa !7
  %15 = bitcast i32* %l_621 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  store i32 2109099124, i32* %l_621, align 4, !tbaa !1
  %16 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %17

; <label>:17                                      ; preds = %24, %0
  %18 = load i32, i32* %i, align 4, !tbaa !1
  %19 = icmp slt i32 %18, 9
  br i1 %19, label %20, label %27

; <label>:20                                      ; preds = %17
  %21 = load i32, i32* %i, align 4, !tbaa !1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [9 x i32], [9 x i32]* %l_576, i32 0, i64 %22
  store i32 558439623, i32* %23, align 4, !tbaa !1
  br label %24

; <label>:24                                      ; preds = %20
  %25 = load i32, i32* %i, align 4, !tbaa !1
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %i, align 4, !tbaa !1
  br label %17

; <label>:27                                      ; preds = %17
  %28 = load i32, i32* @g_514, align 4, !tbaa !1
  %29 = call i64 @func_18(i32 %28)
  %30 = getelementptr %union.U0, %union.U0* %4, i32 0, i32 0
  store i64 %29, i64* %30, align 8
  %31 = load i32**, i32*** %l_525, align 8, !tbaa !5
  store i32* @g_91, i32** %31, align 8, !tbaa !5
  store i64 -5, i64* @g_246, align 8, !tbaa !7
  br label %32

; <label>:32                                      ; preds = %156, %27
  %33 = load i64, i64* @g_246, align 8, !tbaa !7
  %34 = icmp ule i64 %33, 47
  br i1 %34, label %35, label %159

; <label>:35                                      ; preds = %32
  %36 = bitcast i16** %l_561 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %36) #1
  store i16* null, i16** %l_561, align 8, !tbaa !5
  %37 = bitcast i16*** %l_560 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %37) #1
  store i16** %l_561, i16*** %l_560, align 8, !tbaa !5
  %38 = bitcast i32* %l_565 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %38) #1
  store i32 653882422, i32* %l_565, align 4, !tbaa !1
  store i32* null, i32** @g_529, align 8, !tbaa !5
  %39 = load i32, i32* getelementptr inbounds ([7 x [1 x [4 x i32]]], [7 x [1 x [4 x i32]]]* @g_513, i32 0, i64 5, i64 0, i64 2), align 4, !tbaa !1
  %40 = load i32**, i32*** %l_525, align 8, !tbaa !5
  %41 = load i32*, i32** %40, align 8, !tbaa !5
  store i32 %39, i32* %41, align 4, !tbaa !1
  store i64 0, i64* @g_314, align 8, !tbaa !7
  br label %42

; <label>:42                                      ; preds = %147, %35
  %43 = load i64, i64* @g_314, align 8, !tbaa !7
  %44 = icmp ne i64 %43, 18
  br i1 %44, label %45, label %150

; <label>:45                                      ; preds = %42
  %46 = bitcast i32* %l_547 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %46) #1
  store i32 -1707192105, i32* %l_547, align 4, !tbaa !1
  %47 = bitcast [7 x [3 x [3 x i32*]]]* %l_550 to i8*
  call void @llvm.lifetime.start(i64 504, i8* %47) #1
  %48 = bitcast [7 x [3 x [3 x i32*]]]* %l_550 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %48, i8* bitcast ([7 x [3 x [3 x i32*]]]* @func_37.l_550 to i8*), i64 504, i32 16, i1 false)
  %49 = bitcast i32*** %l_551 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %49) #1
  store i32** null, i32*** %l_551, align 8, !tbaa !5
  %50 = bitcast i32*** %l_552 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %50) #1
  %51 = getelementptr inbounds [7 x [3 x [3 x i32*]]], [7 x [3 x [3 x i32*]]]* %l_550, i32 0, i64 3
  %52 = getelementptr inbounds [3 x [3 x i32*]], [3 x [3 x i32*]]* %51, i32 0, i64 0
  %53 = getelementptr inbounds [3 x i32*], [3 x i32*]* %52, i32 0, i64 0
  store i32** %53, i32*** %l_552, align 8, !tbaa !5
  %54 = bitcast i32** %l_553 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %54) #1
  store i32* @g_222, i32** %l_553, align 8, !tbaa !5
  %55 = bitcast i16** %l_559 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %55) #1
  store i16* @g_174, i16** %l_559, align 8, !tbaa !5
  %56 = bitcast i16*** %l_558 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %56) #1
  store i16** %l_559, i16*** %l_558, align 8, !tbaa !5
  %57 = bitcast i8** %l_564 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %57) #1
  store i8* @g_512, i8** %l_564, align 8, !tbaa !5
  %58 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %58) #1
  %59 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %59) #1
  %60 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %60) #1
  %61 = load i8, i8* @g_123, align 1, !tbaa !9
  %62 = sext i8 %61 to i16
  %63 = load i32, i32* %3, align 4, !tbaa !1
  %64 = trunc i32 %63 to i8
  %65 = load i8, i8* @g_227, align 1, !tbaa !9
  %66 = zext i8 %65 to i32
  %67 = load i32, i32* %l_547, align 4, !tbaa !1
  %68 = trunc i32 %67 to i16
  %69 = getelementptr inbounds [7 x [3 x [3 x i32*]]], [7 x [3 x [3 x i32*]]]* %l_550, i32 0, i64 5
  %70 = getelementptr inbounds [3 x [3 x i32*]], [3 x [3 x i32*]]* %69, i32 0, i64 2
  %71 = getelementptr inbounds [3 x i32*], [3 x i32*]* %70, i32 0, i64 2
  %72 = load i32*, i32** %71, align 8, !tbaa !5
  %73 = load i32**, i32*** %l_552, align 8, !tbaa !5
  store i32* %72, i32** %73, align 8, !tbaa !5
  %74 = load i32*, i32** %l_553, align 8, !tbaa !5
  store i32* %74, i32** @g_554, align 8, !tbaa !5
  %75 = icmp ne i32* %72, %74
  %76 = zext i1 %75 to i32
  %77 = load i16, i16* getelementptr inbounds ([3 x i16], [3 x i16]* @g_201, i32 0, i64 0), align 2, !tbaa !10
  %78 = sext i16 %77 to i32
  %79 = load i16*, i16** %l_557, align 8, !tbaa !5
  %80 = load i16*, i16** %l_557, align 8, !tbaa !5
  %81 = icmp ne i16* %79, %80
  %82 = zext i1 %81 to i32
  %83 = load i32, i32* %3, align 4, !tbaa !1
  %84 = icmp sge i32 %82, %83
  %85 = zext i1 %84 to i32
  %86 = load i32*, i32** %l_526, align 8, !tbaa !5
  %87 = load i32, i32* %86, align 4, !tbaa !1
  %88 = or i32 %85, %87
  %89 = load i16**, i16*** %l_558, align 8, !tbaa !5
  store i16** %89, i16*** %l_560, align 8, !tbaa !5
  %90 = load i16**, i16*** %l_562, align 8, !tbaa !5
  %91 = icmp eq i16** %89, %90
  %92 = zext i1 %91 to i32
  %93 = and i32 %78, %92
  %94 = trunc i32 %93 to i16
  %95 = load i32, i32* %3, align 4, !tbaa !1
  %96 = call signext i16 @safe_rshift_func_int16_t_s_s(i16 signext %94, i32 %95)
  %97 = sext i16 %96 to i64
  %98 = icmp sge i64 %97, 8
  %99 = zext i1 %98 to i32
  %100 = load i32, i32* @g_202, align 4, !tbaa !1
  %101 = or i32 %99, %100
  %102 = icmp slt i32 %76, %101
  %103 = zext i1 %102 to i32
  %104 = trunc i32 %103 to i16
  %105 = call signext i16 @safe_add_func_int16_t_s_s(i16 signext %104, i16 signext -1)
  %106 = call zeroext i16 @safe_add_func_uint16_t_u_u(i16 zeroext %68, i16 zeroext %105)
  %107 = zext i16 %106 to i32
  %108 = xor i32 %107, -1
  %109 = call i32 @safe_sub_func_uint32_t_u_u(i32 %66, i32 -1)
  %110 = icmp ne i16** %l_557, null
  %111 = zext i1 %110 to i32
  %112 = load i8*, i8** %l_564, align 8, !tbaa !5
  %113 = load i8, i8* %112, align 1, !tbaa !9
  %114 = sext i8 %113 to i32
  %115 = xor i32 %114, %111
  %116 = trunc i32 %115 to i8
  store i8 %116, i8* %112, align 1, !tbaa !9
  %117 = call signext i8 @safe_div_func_int8_t_s_s(i8 signext %64, i8 signext %116)
  %118 = sext i8 %117 to i32
  %119 = load i32, i32* %3, align 4, !tbaa !1
  %120 = call i32 @safe_mod_func_int32_t_s_s(i32 %118, i32 %119)
  %121 = trunc i32 %120 to i8
  %122 = call zeroext i8 @safe_rshift_func_uint8_t_u_s(i8 zeroext %121, i32 7)
  %123 = zext i8 %122 to i64
  %124 = xor i64 %123, 4294967291
  %125 = trunc i64 %124 to i16
  %126 = call zeroext i16 @safe_div_func_uint16_t_u_u(i16 zeroext %62, i16 zeroext %125)
  %127 = trunc i16 %126 to i8
  %128 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %127, i8 zeroext 1)
  %129 = zext i8 %128 to i32
  %130 = load i32, i32* @g_25, align 4, !tbaa !1
  %131 = or i32 %130, %129
  store i32 %131, i32* @g_25, align 4, !tbaa !1
  %132 = load i32*, i32** %l_526, align 8, !tbaa !5
  store i32 %131, i32* %132, align 4, !tbaa !1
  %133 = load i32**, i32*** %l_525, align 8, !tbaa !5
  store i32* null, i32** %133, align 8, !tbaa !5
  %134 = load i32, i32* %l_565, align 4, !tbaa !1
  %135 = sext i32 %134 to i64
  store i64 %135, i64* %1
  store i32 1, i32* %5
  %136 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %136) #1
  %137 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %137) #1
  %138 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %138) #1
  %139 = bitcast i8** %l_564 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %139) #1
  %140 = bitcast i16*** %l_558 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %140) #1
  %141 = bitcast i16** %l_559 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %141) #1
  %142 = bitcast i32** %l_553 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %142) #1
  %143 = bitcast i32*** %l_552 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %143) #1
  %144 = bitcast i32*** %l_551 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %144) #1
  %145 = bitcast [7 x [3 x [3 x i32*]]]* %l_550 to i8*
  call void @llvm.lifetime.end(i64 504, i8* %145) #1
  %146 = bitcast i32* %l_547 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %146) #1
  br label %151
                                                  ; No predecessors!
  %148 = load i64, i64* @g_314, align 8, !tbaa !7
  %149 = add i64 %148, 1
  store i64 %149, i64* @g_314, align 8, !tbaa !7
  br label %42

; <label>:150                                     ; preds = %42
  store i32 0, i32* %5
  br label %151

; <label>:151                                     ; preds = %150, %45
  %152 = bitcast i32* %l_565 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %152) #1
  %153 = bitcast i16*** %l_560 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %153) #1
  %154 = bitcast i16** %l_561 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %154) #1
  %cleanup.dest = load i32, i32* %5
  switch i32 %cleanup.dest, label %470 [
    i32 0, label %155
  ]

; <label>:155                                     ; preds = %151
  br label %156

; <label>:156                                     ; preds = %155
  %157 = load i64, i64* @g_246, align 8, !tbaa !7
  %158 = call i64 @safe_add_func_int64_t_s_s(i64 %157, i64 2)
  store i64 %158, i64* @g_246, align 8, !tbaa !7
  br label %32

; <label>:159                                     ; preds = %32
  store i16 -29, i16* @g_174, align 2, !tbaa !10
  br label %160

; <label>:160                                     ; preds = %436, %159
  %161 = load i16, i16* @g_174, align 2, !tbaa !10
  %162 = zext i16 %161 to i32
  %163 = icmp sge i32 %162, 1
  br i1 %163, label %164, label %439

; <label>:164                                     ; preds = %160
  %165 = bitcast i32** %l_569 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %165) #1
  store i32* @g_91, i32** %l_569, align 8, !tbaa !5
  %166 = bitcast i32** %l_570 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %166) #1
  store i32* @g_91, i32** %l_570, align 8, !tbaa !5
  %167 = bitcast i32** %l_571 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %167) #1
  store i32* %l_568, i32** %l_571, align 8, !tbaa !5
  %168 = bitcast i32** %l_572 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %168) #1
  store i32* @g_25, i32** %l_572, align 8, !tbaa !5
  %169 = bitcast i32** %l_573 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %169) #1
  store i32* @g_91, i32** %l_573, align 8, !tbaa !5
  %170 = bitcast i32** %l_574 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %170) #1
  store i32* null, i32** %l_574, align 8, !tbaa !5
  %171 = bitcast [7 x i32*]* %l_575 to i8*
  call void @llvm.lifetime.start(i64 56, i8* %171) #1
  %172 = bitcast [7 x i32*]* %l_575 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %172, i8* bitcast ([7 x i32*]* @func_37.l_575 to i8*), i64 56, i32 16, i1 false)
  %173 = bitcast i16** %l_596 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %173) #1
  store i16* @g_232, i16** %l_596, align 8, !tbaa !5
  %174 = bitcast i16*** %l_595 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %174) #1
  store i16** %l_596, i16*** %l_595, align 8, !tbaa !5
  %175 = bitcast i16** %l_597 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %175) #1
  store i16* getelementptr inbounds ([3 x i16], [3 x i16]* @g_201, i32 0, i64 1), i16** %l_597, align 8, !tbaa !5
  %176 = bitcast i32** %l_617 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %176) #1
  store i32* @g_222, i32** %l_617, align 8, !tbaa !5
  %177 = bitcast i8** %l_618 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %177) #1
  store i8* @g_313, i8** %l_618, align 8, !tbaa !5
  %178 = bitcast [7 x [1 x i32*]]* %l_620 to i8*
  call void @llvm.lifetime.start(i64 56, i8* %178) #1
  %179 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %179) #1
  %180 = bitcast i32* %j3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %180) #1
  store i32 0, i32* %i2, align 4, !tbaa !1
  br label %181

; <label>:181                                     ; preds = %199, %164
  %182 = load i32, i32* %i2, align 4, !tbaa !1
  %183 = icmp slt i32 %182, 7
  br i1 %183, label %184, label %202

; <label>:184                                     ; preds = %181
  store i32 0, i32* %j3, align 4, !tbaa !1
  br label %185

; <label>:185                                     ; preds = %195, %184
  %186 = load i32, i32* %j3, align 4, !tbaa !1
  %187 = icmp slt i32 %186, 1
  br i1 %187, label %188, label %198

; <label>:188                                     ; preds = %185
  %189 = load i32, i32* %j3, align 4, !tbaa !1
  %190 = sext i32 %189 to i64
  %191 = load i32, i32* %i2, align 4, !tbaa !1
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds [7 x [1 x i32*]], [7 x [1 x i32*]]* %l_620, i32 0, i64 %192
  %194 = getelementptr inbounds [1 x i32*], [1 x i32*]* %193, i32 0, i64 %190
  store i32* getelementptr inbounds ([7 x [1 x [4 x i32]]], [7 x [1 x [4 x i32]]]* @g_513, i32 0, i64 6, i64 0, i64 0), i32** %194, align 8, !tbaa !5
  br label %195

; <label>:195                                     ; preds = %188
  %196 = load i32, i32* %j3, align 4, !tbaa !1
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %j3, align 4, !tbaa !1
  br label %185

; <label>:198                                     ; preds = %185
  br label %199

; <label>:199                                     ; preds = %198
  %200 = load i32, i32* %i2, align 4, !tbaa !1
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %i2, align 4, !tbaa !1
  br label %181

; <label>:202                                     ; preds = %181
  %203 = load i8, i8* getelementptr inbounds ([1 x [9 x [2 x i8]]], [1 x [9 x [2 x i8]]]* @g_579, i32 0, i64 0, i64 0, i64 0), align 1, !tbaa !9
  %204 = add i8 %203, -1
  store i8 %204, i8* getelementptr inbounds ([1 x [9 x [2 x i8]]], [1 x [9 x [2 x i8]]]* @g_579, i32 0, i64 0, i64 0, i64 0), align 1, !tbaa !9
  store i32 0, i32* @g_91, align 4, !tbaa !1
  br label %205

; <label>:205                                     ; preds = %306, %202
  %206 = load i32, i32* @g_91, align 4, !tbaa !1
  %207 = icmp sgt i32 %206, 11
  br i1 %207, label %208, label %311

; <label>:208                                     ; preds = %205
  %209 = load i32, i32* @g_584, align 4, !tbaa !1
  %210 = add i32 %209, 1
  store i32 %210, i32* @g_584, align 4, !tbaa !1
  store i64 0, i64* @g_314, align 8, !tbaa !7
  br label %211

; <label>:211                                     ; preds = %302, %208
  %212 = load i64, i64* @g_314, align 8, !tbaa !7
  %213 = icmp ule i64 %212, 52
  br i1 %213, label %214, label %305

; <label>:214                                     ; preds = %211
  store i64 0, i64* getelementptr inbounds (%union.U0, %union.U0* @g_416, i32 0, i32 0), align 8, !tbaa !7
  br label %215

; <label>:215                                     ; preds = %298, %214
  %216 = load i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_416, i32 0, i32 0), align 8, !tbaa !7
  %217 = icmp ule i64 %216, 4
  br i1 %217, label %218, label %301

; <label>:218                                     ; preds = %215
  %219 = bitcast i32**** %l_589 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %219) #1
  store i32*** null, i32**** %l_589, align 8, !tbaa !5
  %220 = bitcast [1 x [10 x [5 x i32***]]]* %l_590 to i8*
  call void @llvm.lifetime.start(i64 400, i8* %220) #1
  %221 = getelementptr inbounds [1 x [10 x [5 x i32***]]], [1 x [10 x [5 x i32***]]]* %l_590, i64 0, i64 0
  %222 = getelementptr inbounds [10 x [5 x i32***]], [10 x [5 x i32***]]* %221, i64 0, i64 0
  %223 = getelementptr inbounds [5 x i32***], [5 x i32***]* %222, i64 0, i64 0
  store i32*** %l_525, i32**** %223, !tbaa !5
  %224 = getelementptr inbounds i32***, i32**** %223, i64 1
  store i32*** null, i32**** %224, !tbaa !5
  %225 = getelementptr inbounds i32***, i32**** %224, i64 1
  store i32*** null, i32**** %225, !tbaa !5
  %226 = getelementptr inbounds i32***, i32**** %225, i64 1
  store i32*** %l_525, i32**** %226, !tbaa !5
  %227 = getelementptr inbounds i32***, i32**** %226, i64 1
  store i32*** null, i32**** %227, !tbaa !5
  %228 = getelementptr inbounds [5 x i32***], [5 x i32***]* %222, i64 1
  %229 = getelementptr inbounds [5 x i32***], [5 x i32***]* %228, i64 0, i64 0
  store i32*** %l_525, i32**** %229, !tbaa !5
  %230 = getelementptr inbounds i32***, i32**** %229, i64 1
  store i32*** %l_525, i32**** %230, !tbaa !5
  %231 = getelementptr inbounds i32***, i32**** %230, i64 1
  store i32*** %l_525, i32**** %231, !tbaa !5
  %232 = getelementptr inbounds i32***, i32**** %231, i64 1
  store i32*** %l_525, i32**** %232, !tbaa !5
  %233 = getelementptr inbounds i32***, i32**** %232, i64 1
  store i32*** %l_525, i32**** %233, !tbaa !5
  %234 = getelementptr inbounds [5 x i32***], [5 x i32***]* %228, i64 1
  %235 = getelementptr inbounds [5 x i32***], [5 x i32***]* %234, i64 0, i64 0
  store i32*** null, i32**** %235, !tbaa !5
  %236 = getelementptr inbounds i32***, i32**** %235, i64 1
  store i32*** %l_525, i32**** %236, !tbaa !5
  %237 = getelementptr inbounds i32***, i32**** %236, i64 1
  store i32*** null, i32**** %237, !tbaa !5
  %238 = getelementptr inbounds i32***, i32**** %237, i64 1
  store i32*** null, i32**** %238, !tbaa !5
  %239 = getelementptr inbounds i32***, i32**** %238, i64 1
  store i32*** %l_525, i32**** %239, !tbaa !5
  %240 = getelementptr inbounds [5 x i32***], [5 x i32***]* %234, i64 1
  %241 = getelementptr inbounds [5 x i32***], [5 x i32***]* %240, i64 0, i64 0
  store i32*** %l_525, i32**** %241, !tbaa !5
  %242 = getelementptr inbounds i32***, i32**** %241, i64 1
  store i32*** null, i32**** %242, !tbaa !5
  %243 = getelementptr inbounds i32***, i32**** %242, i64 1
  store i32*** null, i32**** %243, !tbaa !5
  %244 = getelementptr inbounds i32***, i32**** %243, i64 1
  store i32*** %l_525, i32**** %244, !tbaa !5
  %245 = getelementptr inbounds i32***, i32**** %244, i64 1
  store i32*** null, i32**** %245, !tbaa !5
  %246 = getelementptr inbounds [5 x i32***], [5 x i32***]* %240, i64 1
  %247 = getelementptr inbounds [5 x i32***], [5 x i32***]* %246, i64 0, i64 0
  store i32*** %l_525, i32**** %247, !tbaa !5
  %248 = getelementptr inbounds i32***, i32**** %247, i64 1
  store i32*** %l_525, i32**** %248, !tbaa !5
  %249 = getelementptr inbounds i32***, i32**** %248, i64 1
  store i32*** %l_525, i32**** %249, !tbaa !5
  %250 = getelementptr inbounds i32***, i32**** %249, i64 1
  store i32*** %l_525, i32**** %250, !tbaa !5
  %251 = getelementptr inbounds i32***, i32**** %250, i64 1
  store i32*** %l_525, i32**** %251, !tbaa !5
  %252 = getelementptr inbounds [5 x i32***], [5 x i32***]* %246, i64 1
  %253 = getelementptr inbounds [5 x i32***], [5 x i32***]* %252, i64 0, i64 0
  store i32*** null, i32**** %253, !tbaa !5
  %254 = getelementptr inbounds i32***, i32**** %253, i64 1
  store i32*** %l_525, i32**** %254, !tbaa !5
  %255 = getelementptr inbounds i32***, i32**** %254, i64 1
  store i32*** null, i32**** %255, !tbaa !5
  %256 = getelementptr inbounds i32***, i32**** %255, i64 1
  store i32*** null, i32**** %256, !tbaa !5
  %257 = getelementptr inbounds i32***, i32**** %256, i64 1
  store i32*** %l_525, i32**** %257, !tbaa !5
  %258 = getelementptr inbounds [5 x i32***], [5 x i32***]* %252, i64 1
  %259 = getelementptr inbounds [5 x i32***], [5 x i32***]* %258, i64 0, i64 0
  store i32*** %l_525, i32**** %259, !tbaa !5
  %260 = getelementptr inbounds i32***, i32**** %259, i64 1
  store i32*** null, i32**** %260, !tbaa !5
  %261 = getelementptr inbounds i32***, i32**** %260, i64 1
  store i32*** null, i32**** %261, !tbaa !5
  %262 = getelementptr inbounds i32***, i32**** %261, i64 1
  store i32*** %l_525, i32**** %262, !tbaa !5
  %263 = getelementptr inbounds i32***, i32**** %262, i64 1
  store i32*** null, i32**** %263, !tbaa !5
  %264 = getelementptr inbounds [5 x i32***], [5 x i32***]* %258, i64 1
  %265 = getelementptr inbounds [5 x i32***], [5 x i32***]* %264, i64 0, i64 0
  store i32*** %l_525, i32**** %265, !tbaa !5
  %266 = getelementptr inbounds i32***, i32**** %265, i64 1
  store i32*** %l_525, i32**** %266, !tbaa !5
  %267 = getelementptr inbounds i32***, i32**** %266, i64 1
  store i32*** %l_525, i32**** %267, !tbaa !5
  %268 = getelementptr inbounds i32***, i32**** %267, i64 1
  store i32*** %l_525, i32**** %268, !tbaa !5
  %269 = getelementptr inbounds i32***, i32**** %268, i64 1
  store i32*** %l_525, i32**** %269, !tbaa !5
  %270 = getelementptr inbounds [5 x i32***], [5 x i32***]* %264, i64 1
  %271 = getelementptr inbounds [5 x i32***], [5 x i32***]* %270, i64 0, i64 0
  store i32*** null, i32**** %271, !tbaa !5
  %272 = getelementptr inbounds i32***, i32**** %271, i64 1
  store i32*** %l_525, i32**** %272, !tbaa !5
  %273 = getelementptr inbounds i32***, i32**** %272, i64 1
  store i32*** null, i32**** %273, !tbaa !5
  %274 = getelementptr inbounds i32***, i32**** %273, i64 1
  store i32*** null, i32**** %274, !tbaa !5
  %275 = getelementptr inbounds i32***, i32**** %274, i64 1
  store i32*** %l_525, i32**** %275, !tbaa !5
  %276 = getelementptr inbounds [5 x i32***], [5 x i32***]* %270, i64 1
  %277 = getelementptr inbounds [5 x i32***], [5 x i32***]* %276, i64 0, i64 0
  store i32*** %l_525, i32**** %277, !tbaa !5
  %278 = getelementptr inbounds i32***, i32**** %277, i64 1
  store i32*** null, i32**** %278, !tbaa !5
  %279 = getelementptr inbounds i32***, i32**** %278, i64 1
  store i32*** null, i32**** %279, !tbaa !5
  %280 = getelementptr inbounds i32***, i32**** %279, i64 1
  store i32*** %l_525, i32**** %280, !tbaa !5
  %281 = getelementptr inbounds i32***, i32**** %280, i64 1
  store i32*** null, i32**** %281, !tbaa !5
  %282 = bitcast i32* %i4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %282) #1
  %283 = bitcast i32* %j5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %283) #1
  %284 = bitcast i32* %k6 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %284) #1
  store i32** @g_529, i32*** @g_591, align 8, !tbaa !5
  store i32** @g_529, i32*** %l_592, align 8, !tbaa !5
  %285 = load i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_416, i32 0, i32 0), align 8, !tbaa !7
  %286 = getelementptr inbounds [5 x i64], [5 x i64]* @g_23, i32 0, i64 %285
  %287 = load i64, i64* %286, align 8, !tbaa !7
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %290

; <label>:289                                     ; preds = %218
  store i32 28, i32* %5
  br label %291

; <label>:290                                     ; preds = %218
  store i32 0, i32* %5
  br label %291

; <label>:291                                     ; preds = %290, %289
  %292 = bitcast i32* %k6 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %292) #1
  %293 = bitcast i32* %j5 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %293) #1
  %294 = bitcast i32* %i4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %294) #1
  %295 = bitcast [1 x [10 x [5 x i32***]]]* %l_590 to i8*
  call void @llvm.lifetime.end(i64 400, i8* %295) #1
  %296 = bitcast i32**** %l_589 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %296) #1
  %cleanup.dest.7 = load i32, i32* %5
  switch i32 %cleanup.dest.7, label %483 [
    i32 0, label %297
    i32 28, label %298
  ]

; <label>:297                                     ; preds = %291
  br label %298

; <label>:298                                     ; preds = %297, %291
  %299 = load i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_416, i32 0, i32 0), align 8, !tbaa !7
  %300 = add i64 %299, 1
  store i64 %300, i64* getelementptr inbounds (%union.U0, %union.U0* @g_416, i32 0, i32 0), align 8, !tbaa !7
  br label %215

; <label>:301                                     ; preds = %215
  br label %302

; <label>:302                                     ; preds = %301
  %303 = load i64, i64* @g_314, align 8, !tbaa !7
  %304 = add i64 %303, 1
  store i64 %304, i64* @g_314, align 8, !tbaa !7
  br label %211

; <label>:305                                     ; preds = %211
  br label %306

; <label>:306                                     ; preds = %305
  %307 = load i32, i32* @g_91, align 4, !tbaa !1
  %308 = trunc i32 %307 to i8
  %309 = call signext i8 @safe_add_func_int8_t_s_s(i8 signext %308, i8 signext 1)
  %310 = sext i8 %309 to i32
  store i32 %310, i32* @g_91, align 4, !tbaa !1
  br label %205

; <label>:311                                     ; preds = %205
  %312 = load i32, i32* %3, align 4, !tbaa !1
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %412

; <label>:314                                     ; preds = %311
  %315 = load i16**, i16*** %l_595, align 8, !tbaa !5
  %316 = icmp ne i16** null, %315
  %317 = zext i1 %316 to i32
  %318 = trunc i32 %317 to i16
  %319 = load i16*, i16** %l_597, align 8, !tbaa !5
  store i16 %318, i16* %319, align 2, !tbaa !10
  %320 = sext i16 %318 to i32
  %321 = load i32*, i32** %l_569, align 8, !tbaa !5
  %322 = load i32, i32* %321, align 4, !tbaa !1
  %323 = load i32, i32* %3, align 4, !tbaa !1
  %324 = load i8, i8* @g_478, align 1, !tbaa !9
  %325 = add i8 %324, -1
  store i8 %325, i8* @g_478, align 1, !tbaa !9
  %326 = load i64*, i64** %2, align 8, !tbaa !5
  %327 = load i64*, i64** %2, align 8, !tbaa !5
  %328 = icmp ne i64* %326, %327
  %329 = zext i1 %328 to i32
  %330 = trunc i32 %329 to i16
  %331 = load i32, i32* %3, align 4, !tbaa !1
  %332 = trunc i32 %331 to i16
  %333 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %330, i16 zeroext %332)
  %334 = zext i16 %333 to i64
  %335 = icmp ugt i64 65535, %334
  %336 = zext i1 %335 to i32
  %337 = load i32, i32* %3, align 4, !tbaa !1
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %340, label %339

; <label>:339                                     ; preds = %314
  br label %340

; <label>:340                                     ; preds = %339, %314
  %341 = phi i1 [ true, %314 ], [ true, %339 ]
  %342 = zext i1 %341 to i32
  %343 = sext i32 %342 to i64
  %344 = icmp slt i64 %343, 1
  %345 = zext i1 %344 to i32
  %346 = trunc i32 %345 to i8
  %347 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %325, i8 zeroext %346)
  %348 = load i32*, i32** %l_571, align 8, !tbaa !5
  %349 = load i32, i32* %348, align 4, !tbaa !1
  %350 = load i32*, i32** %l_572, align 8, !tbaa !5
  %351 = load i32, i32* %350, align 4, !tbaa !1
  %352 = icmp sge i32 %349, %351
  %353 = zext i1 %352 to i32
  %354 = sext i32 %353 to i64
  %355 = icmp sgt i64 %354, 64
  %356 = zext i1 %355 to i32
  %357 = trunc i32 %356 to i8
  %358 = load i32, i32* %3, align 4, !tbaa !1
  %359 = trunc i32 %358 to i8
  %360 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %357, i8 zeroext %359)
  %361 = zext i8 %360 to i32
  %362 = icmp sgt i32 %323, %361
  %363 = zext i1 %362 to i32
  %364 = load i32*, i32** %l_526, align 8, !tbaa !5
  %365 = load i32, i32* %364, align 4, !tbaa !1
  %366 = icmp ne i32 %363, %365
  %367 = zext i1 %366 to i32
  %368 = call i32 @safe_add_func_int32_t_s_s(i32 %322, i32 %367)
  %369 = load i32*, i32** %l_526, align 8, !tbaa !5
  %370 = load i32, i32* %369, align 4, !tbaa !1
  %371 = call i32 @safe_add_func_uint32_t_u_u(i32 -4, i32 %370)
  %372 = zext i32 %371 to i64
  %373 = icmp slt i64 %372, 1
  %374 = zext i1 %373 to i32
  %375 = trunc i32 %374 to i8
  %376 = load i32, i32* %3, align 4, !tbaa !1
  %377 = trunc i32 %376 to i8
  %378 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %375, i8 signext %377)
  %379 = sext i8 %378 to i64
  %380 = call i64 @safe_mod_func_uint64_t_u_u(i64 %379, i64 1096197034162002707)
  %381 = load i32*, i32** %l_617, align 8, !tbaa !5
  %382 = load i32, i32* %381, align 4, !tbaa !1
  %383 = zext i32 %382 to i64
  %384 = xor i64 %383, %380
  %385 = trunc i64 %384 to i32
  store i32 %385, i32* %381, align 4, !tbaa !1
  %386 = load i32, i32* %3, align 4, !tbaa !1
  %387 = call i32 @safe_mod_func_uint32_t_u_u(i32 %385, i32 %386)
  %388 = trunc i32 %387 to i8
  %389 = load i8*, i8** %l_618, align 8, !tbaa !5
  store i8 %388, i8* %389, align 1, !tbaa !9
  %390 = call signext i8 @safe_unary_minus_func_int8_t_s(i8 signext %388)
  %391 = sext i8 %390 to i32
  %392 = icmp eq i32 %320, %391
  %393 = zext i1 %392 to i32
  %394 = load i32, i32* getelementptr inbounds ([7 x i32], [7 x i32]* @g_431, i32 0, i64 3), align 4, !tbaa !1
  %395 = icmp ne i32 %393, %394
  %396 = zext i1 %395 to i32
  %397 = load i32, i32* %3, align 4, !tbaa !1
  %398 = icmp sgt i32 %396, %397
  %399 = zext i1 %398 to i32
  %400 = sext i32 %399 to i64
  %401 = icmp ule i64 %400, 3
  %402 = zext i1 %401 to i32
  %403 = trunc i32 %402 to i8
  %404 = load i64, i64* %l_619, align 8, !tbaa !7
  %405 = trunc i64 %404 to i32
  %406 = call signext i8 @safe_lshift_func_int8_t_s_u(i8 signext %403, i32 %405)
  %407 = sext i8 %406 to i32
  %408 = load i32, i32* getelementptr inbounds ([7 x [1 x [4 x i32]]], [7 x [1 x [4 x i32]]]* @g_513, i32 0, i64 1, i64 0, i64 2), align 4, !tbaa !1
  %409 = and i32 %408, %407
  store i32 %409, i32* getelementptr inbounds ([7 x [1 x [4 x i32]]], [7 x [1 x [4 x i32]]]* @g_513, i32 0, i64 1, i64 0, i64 2), align 4, !tbaa !1
  %410 = load i32, i32* %l_621, align 4, !tbaa !1
  %411 = icmp ne i32 %410, 0
  br label %412

; <label>:412                                     ; preds = %340, %311
  %413 = phi i1 [ false, %311 ], [ %411, %340 ]
  %414 = zext i1 %413 to i32
  %415 = getelementptr inbounds [9 x i32], [9 x i32]* %l_576, i32 0, i64 4
  %416 = load i32, i32* %415, align 4, !tbaa !1
  %417 = and i32 %416, %414
  store i32 %417, i32* %415, align 4, !tbaa !1
  %418 = load i32*, i32** %l_526, align 8, !tbaa !5
  %419 = load i32, i32* %418, align 4, !tbaa !1
  %420 = sext i32 %419 to i64
  store i64 %420, i64* %1
  store i32 1, i32* %5
  %421 = bitcast i32* %j3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %421) #1
  %422 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %422) #1
  %423 = bitcast [7 x [1 x i32*]]* %l_620 to i8*
  call void @llvm.lifetime.end(i64 56, i8* %423) #1
  %424 = bitcast i8** %l_618 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %424) #1
  %425 = bitcast i32** %l_617 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %425) #1
  %426 = bitcast i16** %l_597 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %426) #1
  %427 = bitcast i16*** %l_595 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %427) #1
  %428 = bitcast i16** %l_596 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %428) #1
  %429 = bitcast [7 x i32*]* %l_575 to i8*
  call void @llvm.lifetime.end(i64 56, i8* %429) #1
  %430 = bitcast i32** %l_574 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %430) #1
  %431 = bitcast i32** %l_573 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %431) #1
  %432 = bitcast i32** %l_572 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %432) #1
  %433 = bitcast i32** %l_571 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %433) #1
  %434 = bitcast i32** %l_570 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %434) #1
  %435 = bitcast i32** %l_569 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %435) #1
  br label %470
                                                  ; No predecessors!
  %437 = load i16, i16* @g_174, align 2, !tbaa !10
  %438 = add i16 %437, 1
  store i16 %438, i16* @g_174, align 2, !tbaa !10
  br label %160

; <label>:439                                     ; preds = %160
  %440 = load i64, i64* @g_577, align 8, !tbaa !7
  %441 = load i32*, i32** %l_526, align 8, !tbaa !5
  %442 = load i32, i32* %441, align 4, !tbaa !1
  %443 = icmp ne i32 %442, 0
  br i1 %443, label %444, label %452

; <label>:444                                     ; preds = %439
  %445 = bitcast i32* %l_622 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %445) #1
  store i32 -2135026532, i32* %l_622, align 4, !tbaa !1
  %446 = load i32, i32* %3, align 4, !tbaa !1
  %447 = load i32**, i32*** %l_525, align 8, !tbaa !5
  %448 = load i32*, i32** %447, align 8, !tbaa !5
  store i32 %446, i32* %448, align 4, !tbaa !1
  %449 = load i32, i32* %l_622, align 4, !tbaa !1
  %450 = zext i32 %449 to i64
  store i64 %450, i64* %1
  store i32 1, i32* %5
  %451 = bitcast i32* %l_622 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %451) #1
  br label %470

; <label>:452                                     ; preds = %439
  %453 = bitcast i32** %l_623 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %453) #1
  %454 = getelementptr inbounds [9 x i32], [9 x i32]* %l_576, i32 0, i64 4
  store i32* %454, i32** %l_623, align 8, !tbaa !5
  %455 = bitcast [7 x i32*]* %l_624 to i8*
  call void @llvm.lifetime.start(i64 56, i8* %455) #1
  %456 = bitcast [7 x i32*]* %l_624 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %456, i8* bitcast ([7 x i32*]* @func_37.l_624 to i8*), i64 56, i32 16, i1 false)
  %457 = bitcast i16* %l_630 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %457) #1
  store i16 -17224, i16* %l_630, align 2, !tbaa !10
  %458 = bitcast i32* %i8 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %458) #1
  %459 = load i32*, i32** %l_623, align 8, !tbaa !5
  %460 = load i32**, i32*** %l_525, align 8, !tbaa !5
  store i32* %459, i32** %460, align 8, !tbaa !5
  %461 = load i32, i32* @g_631, align 4, !tbaa !1
  %462 = add i32 %461, -1
  store i32 %462, i32* @g_631, align 4, !tbaa !1
  %463 = bitcast i32* %i8 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %463) #1
  %464 = bitcast i16* %l_630 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %464) #1
  %465 = bitcast [7 x i32*]* %l_624 to i8*
  call void @llvm.lifetime.end(i64 56, i8* %465) #1
  %466 = bitcast i32** %l_623 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %466) #1
  br label %467

; <label>:467                                     ; preds = %452
  %468 = load i32, i32* @g_87, align 4, !tbaa !1
  %469 = zext i32 %468 to i64
  store i64 %469, i64* %1
  store i32 1, i32* %5
  br label %470

; <label>:470                                     ; preds = %467, %444, %412, %151
  %471 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %471) #1
  %472 = bitcast i32* %l_621 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %472) #1
  %473 = bitcast i64* %l_619 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %473) #1
  %474 = bitcast i32*** %l_592 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %474) #1
  %475 = bitcast [9 x i32]* %l_576 to i8*
  call void @llvm.lifetime.end(i64 36, i8* %475) #1
  %476 = bitcast i32* %l_568 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %476) #1
  %477 = bitcast i16*** %l_562 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %477) #1
  %478 = bitcast i16** %l_563 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %478) #1
  %479 = bitcast i16** %l_557 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %479) #1
  %480 = bitcast i32*** %l_525 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %480) #1
  %481 = bitcast i32** %l_526 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %481) #1
  %482 = load i64, i64* %1
  ret i64 %482

; <label>:483                                     ; preds = %291
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i64* @func_54(i32 %p_55, i8 zeroext %p_56) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  %l_75 = alloca i64**, align 8
  %l_86 = alloca i32, align 4
  %l_312 = alloca [10 x i32], align 16
  %l_336 = alloca [9 x i8*], align 16
  %l_344 = alloca i16, align 2
  %l_354 = alloca i8, align 1
  %l_374 = alloca i32*, align 8
  %l_373 = alloca i32**, align 8
  %l_435 = alloca %union.U0*, align 8
  %l_434 = alloca %union.U0**, align 8
  %l_437 = alloca i32*, align 8
  %i = alloca i32, align 4
  %l_85 = alloca i8, align 1
  %l_247 = alloca i64*, align 8
  %l_308 = alloca i32, align 4
  %l_310 = alloca i32, align 4
  %l_353 = alloca i16**, align 8
  %l_356 = alloca i8*, align 8
  %l_436 = alloca %union.U0**, align 8
  %l_477 = alloca i16, align 2
  %l_82 = alloca i64*, align 8
  %l_84 = alloca i64*, align 8
  %l_259 = alloca i32, align 4
  %l_288 = alloca i64***, align 8
  %l_309 = alloca [7 x i32], align 16
  %l_325 = alloca i64*, align 8
  %l_350 = alloca %union.U0, align 8
  %l_376 = alloca i32**, align 8
  %i1 = alloca i32, align 4
  %l_74 = alloca [9 x i32], align 16
  %l_83 = alloca i64**, align 8
  %l_235 = alloca i64***, align 8
  %l_242 = alloca i64*, align 8
  %l_244 = alloca i64*, align 8
  %l_245 = alloca i64*, align 8
  %l_256 = alloca i32*, align 8
  %l_257 = alloca i32*, align 8
  %l_258 = alloca i8*, align 8
  %l_289 = alloca i64***, align 8
  %l_311 = alloca [4 x [9 x i32*]], align 16
  %l_343 = alloca i32, align 4
  %i2 = alloca i32, align 4
  %j = alloca i32, align 4
  %l_262 = alloca i8*, align 8
  %l_275 = alloca i32, align 4
  %l_276 = alloca i8*, align 8
  %l_277 = alloca [6 x [3 x [10 x i8*]]], align 16
  %l_278 = alloca i32*, align 8
  %i3 = alloca i32, align 4
  %j4 = alloca i32, align 4
  %k = alloca i32, align 4
  %l_285 = alloca i32*, align 8
  %l_307 = alloca i32, align 4
  %l_326 = alloca i64*, align 8
  %l_330 = alloca i32, align 4
  %l_342 = alloca i16*, align 8
  %l_324 = alloca i64*, align 8
  %l_329 = alloca i32, align 4
  %l_331 = alloca i32, align 4
  %l_332 = alloca i32, align 4
  %l_340 = alloca i16*, align 8
  %l_341 = alloca i16**, align 8
  %3 = alloca i32
  %l_506 = alloca i32*, align 8
  %l_507 = alloca i32**, align 8
  store i32 %p_55, i32* %1, align 4, !tbaa !1
  store i8 %p_56, i8* %2, align 1, !tbaa !9
  %4 = bitcast i64*** %l_75 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store i64** null, i64*** %l_75, align 8, !tbaa !5
  %5 = bitcast i32* %l_86 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 0, i32* %l_86, align 4, !tbaa !1
  %6 = bitcast [10 x i32]* %l_312 to i8*
  call void @llvm.lifetime.start(i64 40, i8* %6) #1
  %7 = bitcast [9 x i8*]* %l_336 to i8*
  call void @llvm.lifetime.start(i64 72, i8* %7) #1
  %8 = bitcast [9 x i8*]* %l_336 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* bitcast ([9 x i8*]* @func_54.l_336 to i8*), i64 72, i32 16, i1 false)
  %9 = bitcast i16* %l_344 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %9) #1
  store i16 -6, i16* %l_344, align 2, !tbaa !10
  call void @llvm.lifetime.start(i64 1, i8* %l_354) #1
  store i8 -113, i8* %l_354, align 1, !tbaa !9
  %10 = bitcast i32** %l_374 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i32* null, i32** %l_374, align 8, !tbaa !5
  %11 = bitcast i32*** %l_373 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store i32** %l_374, i32*** %l_373, align 8, !tbaa !5
  %12 = bitcast %union.U0** %l_435 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  store %union.U0* @g_416, %union.U0** %l_435, align 8, !tbaa !5
  %13 = bitcast %union.U0*** %l_434 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  store %union.U0** %l_435, %union.U0*** %l_434, align 8, !tbaa !5
  %14 = bitcast i32** %l_437 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = getelementptr inbounds [10 x i32], [10 x i32]* %l_312, i32 0, i64 3
  store i32* %15, i32** %l_437, align 8, !tbaa !5
  %16 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %17

; <label>:17                                      ; preds = %24, %0
  %18 = load i32, i32* %i, align 4, !tbaa !1
  %19 = icmp slt i32 %18, 10
  br i1 %19, label %20, label %27

; <label>:20                                      ; preds = %17
  %21 = load i32, i32* %i, align 4, !tbaa !1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [10 x i32], [10 x i32]* %l_312, i32 0, i64 %22
  store i32 -459183350, i32* %23, align 4, !tbaa !1
  br label %24

; <label>:24                                      ; preds = %20
  %25 = load i32, i32* %i, align 4, !tbaa !1
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %i, align 4, !tbaa !1
  br label %17

; <label>:27                                      ; preds = %17
  store i32 -24, i32* @g_25, align 4, !tbaa !1
  br label %28

; <label>:28                                      ; preds = %870, %27
  %29 = load i32, i32* @g_25, align 4, !tbaa !1
  %30 = icmp slt i32 %29, 12
  br i1 %30, label %31, label %873

; <label>:31                                      ; preds = %28
  call void @llvm.lifetime.start(i64 1, i8* %l_85) #1
  store i8 0, i8* %l_85, align 1, !tbaa !9
  %32 = bitcast i64** %l_247 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %32) #1
  store i64* getelementptr inbounds ([5 x i64], [5 x i64]* @g_23, i32 0, i64 3), i64** %l_247, align 8, !tbaa !5
  %33 = bitcast i32* %l_308 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #1
  store i32 9, i32* %l_308, align 4, !tbaa !1
  %34 = bitcast i32* %l_310 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #1
  store i32 -1453005677, i32* %l_310, align 4, !tbaa !1
  %35 = bitcast i16*** %l_353 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %35) #1
  store i16** null, i16*** %l_353, align 8, !tbaa !5
  %36 = bitcast i8** %l_356 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %36) #1
  store i8* @g_357, i8** %l_356, align 8, !tbaa !5
  %37 = bitcast %union.U0*** %l_436 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %37) #1
  store %union.U0** %l_435, %union.U0*** %l_436, align 8, !tbaa !5
  %38 = bitcast i16* %l_477 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %38) #1
  store i16 11137, i16* %l_477, align 2, !tbaa !10
  store i32 0, i32* %1, align 4, !tbaa !1
  br label %39

; <label>:39                                      ; preds = %859, %31
  %40 = load i32, i32* %1, align 4, !tbaa !1
  %41 = icmp ule i32 %40, 4
  br i1 %41, label %42, label %862

; <label>:42                                      ; preds = %39
  %43 = bitcast i64** %l_82 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %43) #1
  store i64* null, i64** %l_82, align 8, !tbaa !5
  %44 = bitcast i64** %l_84 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %44) #1
  store i64* getelementptr inbounds ([5 x i64], [5 x i64]* @g_23, i32 0, i64 0), i64** %l_84, align 8, !tbaa !5
  %45 = bitcast i32* %l_259 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %45) #1
  store i32 0, i32* %l_259, align 4, !tbaa !1
  %46 = bitcast i64**** %l_288 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %46) #1
  store i64*** null, i64**** %l_288, align 8, !tbaa !5
  %47 = bitcast [7 x i32]* %l_309 to i8*
  call void @llvm.lifetime.start(i64 28, i8* %47) #1
  %48 = bitcast [7 x i32]* %l_309 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %48, i8* bitcast ([7 x i32]* @func_54.l_309 to i8*), i64 28, i32 16, i1 false)
  %49 = bitcast i64** %l_325 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %49) #1
  store i64* null, i64** %l_325, align 8, !tbaa !5
  %50 = bitcast %union.U0* %l_350 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %50) #1
  %51 = bitcast %union.U0* %l_350 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %51, i8* bitcast (%union.U0* @func_54.l_350 to i8*), i64 8, i32 8, i1 false)
  %52 = bitcast i32*** %l_376 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %52) #1
  store i32** %l_374, i32*** %l_376, align 8, !tbaa !5
  %53 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %53) #1
  store i8 0, i8* %2, align 1, !tbaa !9
  br label %54

; <label>:54                                      ; preds = %844, %42
  %55 = load i8, i8* %2, align 1, !tbaa !9
  %56 = zext i8 %55 to i32
  %57 = icmp sle i32 %56, 4
  br i1 %57, label %58, label %849

; <label>:58                                      ; preds = %54
  %59 = bitcast [9 x i32]* %l_74 to i8*
  call void @llvm.lifetime.start(i64 36, i8* %59) #1
  %60 = bitcast [9 x i32]* %l_74 to i8*
  call void @llvm.memset.p0i8.i64(i8* %60, i8 0, i64 36, i32 16, i1 false)
  %61 = bitcast i8* %60 to [9 x i32]*
  %62 = getelementptr [9 x i32], [9 x i32]* %61, i32 0, i32 1
  store i32 -1603945511, i32* %62
  %63 = getelementptr [9 x i32], [9 x i32]* %61, i32 0, i32 2
  store i32 -1603945511, i32* %63
  %64 = getelementptr [9 x i32], [9 x i32]* %61, i32 0, i32 4
  store i32 -1603945511, i32* %64
  %65 = getelementptr [9 x i32], [9 x i32]* %61, i32 0, i32 5
  store i32 -1603945511, i32* %65
  %66 = getelementptr [9 x i32], [9 x i32]* %61, i32 0, i32 7
  store i32 -1603945511, i32* %66
  %67 = getelementptr [9 x i32], [9 x i32]* %61, i32 0, i32 8
  store i32 -1603945511, i32* %67
  %68 = bitcast i64*** %l_83 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %68) #1
  store i64** %l_82, i64*** %l_83, align 8, !tbaa !5
  %69 = bitcast i64**** %l_235 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %69) #1
  store i64*** %l_75, i64**** %l_235, align 8, !tbaa !5
  %70 = bitcast i64** %l_242 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %70) #1
  store i64* @g_243, i64** %l_242, align 8, !tbaa !5
  %71 = bitcast i64** %l_244 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %71) #1
  store i64* null, i64** %l_244, align 8, !tbaa !5
  %72 = bitcast i64** %l_245 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %72) #1
  store i64* @g_246, i64** %l_245, align 8, !tbaa !5
  %73 = bitcast i32** %l_256 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %73) #1
  store i32* null, i32** %l_256, align 8, !tbaa !5
  %74 = bitcast i32** %l_257 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %74) #1
  store i32* @g_94, i32** %l_257, align 8, !tbaa !5
  %75 = bitcast i8** %l_258 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %75) #1
  store i8* null, i8** %l_258, align 8, !tbaa !5
  %76 = bitcast i64**** %l_289 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %76) #1
  store i64*** null, i64**** %l_289, align 8, !tbaa !5
  %77 = bitcast [4 x [9 x i32*]]* %l_311 to i8*
  call void @llvm.lifetime.start(i64 288, i8* %77) #1
  %78 = getelementptr inbounds [4 x [9 x i32*]], [4 x [9 x i32*]]* %l_311, i64 0, i64 0
  %79 = getelementptr inbounds [9 x i32*], [9 x i32*]* %78, i64 0, i64 0
  %80 = getelementptr inbounds [9 x i32], [9 x i32]* %l_74, i32 0, i64 2
  store i32* %80, i32** %79, !tbaa !5
  %81 = getelementptr inbounds i32*, i32** %79, i64 1
  %82 = getelementptr inbounds [9 x i32], [9 x i32]* %l_74, i32 0, i64 2
  store i32* %82, i32** %81, !tbaa !5
  %83 = getelementptr inbounds i32*, i32** %81, i64 1
  store i32* %l_310, i32** %83, !tbaa !5
  %84 = getelementptr inbounds i32*, i32** %83, i64 1
  store i32* %l_310, i32** %84, !tbaa !5
  %85 = getelementptr inbounds i32*, i32** %84, i64 1
  %86 = getelementptr inbounds [9 x i32], [9 x i32]* %l_74, i32 0, i64 6
  store i32* %86, i32** %85, !tbaa !5
  %87 = getelementptr inbounds i32*, i32** %85, i64 1
  %88 = getelementptr inbounds [9 x i32], [9 x i32]* %l_74, i32 0, i64 0
  store i32* %88, i32** %87, !tbaa !5
  %89 = getelementptr inbounds i32*, i32** %87, i64 1
  store i32* %l_310, i32** %89, !tbaa !5
  %90 = getelementptr inbounds i32*, i32** %89, i64 1
  %91 = getelementptr inbounds [9 x i32], [9 x i32]* %l_74, i32 0, i64 0
  store i32* %91, i32** %90, !tbaa !5
  %92 = getelementptr inbounds i32*, i32** %90, i64 1
  %93 = getelementptr inbounds [9 x i32], [9 x i32]* %l_74, i32 0, i64 6
  store i32* %93, i32** %92, !tbaa !5
  %94 = getelementptr inbounds [9 x i32*], [9 x i32*]* %78, i64 1
  %95 = getelementptr inbounds [9 x i32*], [9 x i32*]* %94, i64 0, i64 0
  store i32* %l_310, i32** %95, !tbaa !5
  %96 = getelementptr inbounds i32*, i32** %95, i64 1
  %97 = getelementptr inbounds [9 x i32], [9 x i32]* %l_74, i32 0, i64 2
  store i32* %97, i32** %96, !tbaa !5
  %98 = getelementptr inbounds i32*, i32** %96, i64 1
  %99 = getelementptr inbounds [9 x i32], [9 x i32]* %l_74, i32 0, i64 2
  store i32* %99, i32** %98, !tbaa !5
  %100 = getelementptr inbounds i32*, i32** %98, i64 1
  store i32* %l_310, i32** %100, !tbaa !5
  %101 = getelementptr inbounds i32*, i32** %100, i64 1
  store i32* %l_310, i32** %101, !tbaa !5
  %102 = getelementptr inbounds i32*, i32** %101, i64 1
  %103 = getelementptr inbounds [9 x i32], [9 x i32]* %l_74, i32 0, i64 6
  store i32* %103, i32** %102, !tbaa !5
  %104 = getelementptr inbounds i32*, i32** %102, i64 1
  %105 = getelementptr inbounds [9 x i32], [9 x i32]* %l_74, i32 0, i64 0
  store i32* %105, i32** %104, !tbaa !5
  %106 = getelementptr inbounds i32*, i32** %104, i64 1
  store i32* %l_310, i32** %106, !tbaa !5
  %107 = getelementptr inbounds i32*, i32** %106, i64 1
  %108 = getelementptr inbounds [9 x i32], [9 x i32]* %l_74, i32 0, i64 0
  store i32* %108, i32** %107, !tbaa !5
  %109 = getelementptr inbounds [9 x i32*], [9 x i32*]* %94, i64 1
  %110 = getelementptr inbounds [9 x i32*], [9 x i32*]* %109, i64 0, i64 0
  store i32* %l_310, i32** %110, !tbaa !5
  %111 = getelementptr inbounds i32*, i32** %110, i64 1
  store i32* %l_86, i32** %111, !tbaa !5
  %112 = getelementptr inbounds i32*, i32** %111, i64 1
  store i32* %l_310, i32** %112, !tbaa !5
  %113 = getelementptr inbounds i32*, i32** %112, i64 1
  store i32* %l_310, i32** %113, !tbaa !5
  %114 = getelementptr inbounds i32*, i32** %113, i64 1
  store i32* %l_86, i32** %114, !tbaa !5
  %115 = getelementptr inbounds i32*, i32** %114, i64 1
  store i32* %l_310, i32** %115, !tbaa !5
  %116 = getelementptr inbounds i32*, i32** %115, i64 1
  store i32* %l_86, i32** %116, !tbaa !5
  %117 = getelementptr inbounds i32*, i32** %116, i64 1
  %118 = getelementptr inbounds [9 x i32], [9 x i32]* %l_74, i32 0, i64 2
  store i32* %118, i32** %117, !tbaa !5
  %119 = getelementptr inbounds i32*, i32** %117, i64 1
  store i32* null, i32** %119, !tbaa !5
  %120 = getelementptr inbounds [9 x i32*], [9 x i32*]* %109, i64 1
  %121 = getelementptr inbounds [9 x i32*], [9 x i32*]* %120, i64 0, i64 0
  %122 = getelementptr inbounds [7 x i32], [7 x i32]* %l_309, i32 0, i64 0
  store i32* %122, i32** %121, !tbaa !5
  %123 = getelementptr inbounds i32*, i32** %121, i64 1
  %124 = getelementptr inbounds [9 x i32], [9 x i32]* %l_74, i32 0, i64 6
  store i32* %124, i32** %123, !tbaa !5
  %125 = getelementptr inbounds i32*, i32** %123, i64 1
  store i32* %l_310, i32** %125, !tbaa !5
  %126 = getelementptr inbounds i32*, i32** %125, i64 1
  store i32* %l_310, i32** %126, !tbaa !5
  %127 = getelementptr inbounds i32*, i32** %126, i64 1
  store i32* %l_310, i32** %127, !tbaa !5
  %128 = getelementptr inbounds i32*, i32** %127, i64 1
  store i32* %l_310, i32** %128, !tbaa !5
  %129 = getelementptr inbounds i32*, i32** %128, i64 1
  %130 = getelementptr inbounds [9 x i32], [9 x i32]* %l_74, i32 0, i64 6
  store i32* %130, i32** %129, !tbaa !5
  %131 = getelementptr inbounds i32*, i32** %129, i64 1
  %132 = getelementptr inbounds [7 x i32], [7 x i32]* %l_309, i32 0, i64 0
  store i32* %132, i32** %131, !tbaa !5
  %133 = getelementptr inbounds i32*, i32** %131, i64 1
  store i32* %l_86, i32** %133, !tbaa !5
  %134 = bitcast i32* %l_343 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %134) #1
  store i32 -202288559, i32* %l_343, align 4, !tbaa !1
  %135 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %135) #1
  %136 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %136) #1
  %137 = load i32, i32* %1, align 4, !tbaa !1
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds [5 x i64], [5 x i64]* @g_23, i32 0, i64 %138
  %140 = load i64, i64* %139, align 8, !tbaa !7
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %145

; <label>:142                                     ; preds = %58
  %143 = load i32, i32* %1, align 4, !tbaa !1
  %144 = icmp ne i32 %143, 0
  br label %145

; <label>:145                                     ; preds = %142, %58
  %146 = phi i1 [ false, %58 ], [ %144, %142 ]
  %147 = zext i1 %146 to i32
  %148 = load i64, i64* getelementptr inbounds ([9 x [6 x [2 x i64]]], [9 x [6 x [2 x i64]]]* @g_11, i32 0, i64 4, i64 2, i64 1), align 8, !tbaa !7
  %149 = load i32, i32* %1, align 4, !tbaa !1
  %150 = getelementptr inbounds [9 x i32], [9 x i32]* %l_74, i32 0, i64 6
  store i32 %149, i32* %150, align 4, !tbaa !1
  %151 = load i64**, i64*** %l_75, align 8, !tbaa !5
  %152 = icmp eq i64** null, %151
  %153 = zext i1 %152 to i32
  %154 = or i32 %149, %153
  %155 = load i64, i64* getelementptr inbounds ([9 x [6 x [2 x i64]]], [9 x [6 x [2 x i64]]]* @g_11, i32 0, i64 8, i64 1, i64 0), align 8, !tbaa !7
  %156 = load i64*, i64** %l_82, align 8, !tbaa !5
  %157 = load i64**, i64*** %l_83, align 8, !tbaa !5
  store i64* %156, i64** %157, align 8, !tbaa !5
  %158 = load i64*, i64** %l_84, align 8, !tbaa !5
  %159 = icmp eq i64* %156, %158
  %160 = zext i1 %159 to i32
  %161 = trunc i32 %160 to i16
  %162 = load i32, i32* %1, align 4, !tbaa !1
  %163 = trunc i32 %162 to i16
  %164 = call zeroext i16 @safe_div_func_uint16_t_u_u(i16 zeroext %161, i16 zeroext %163)
  %165 = trunc i16 %164 to i8
  %166 = load i8, i8* %l_85, align 1, !tbaa !9
  %167 = zext i8 %166 to i32
  %168 = call zeroext i8 @safe_lshift_func_uint8_t_u_u(i8 zeroext %165, i32 %167)
  %169 = zext i8 %168 to i16
  %170 = load i32, i32* %l_86, align 4, !tbaa !1
  %171 = trunc i32 %170 to i16
  %172 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %169, i16 zeroext %171)
  %173 = zext i16 %172 to i64
  %174 = and i64 %155, %173
  %175 = load i8, i8* %l_85, align 1, !tbaa !9
  %176 = zext i8 %175 to i64
  %177 = icmp ult i64 %174, %176
  %178 = zext i1 %177 to i32
  %179 = sext i32 %178 to i64
  %180 = icmp ugt i64 %148, %179
  %181 = zext i1 %180 to i32
  %182 = sext i32 %181 to i64
  %183 = load i32, i32* %1, align 4, !tbaa !1
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds [5 x i64], [5 x i64]* @g_23, i32 0, i64 %184
  %186 = load i64, i64* %185, align 8, !tbaa !7
  %187 = and i64 %182, %186
  %188 = trunc i64 %187 to i8
  %189 = load i32, i32* @g_25, align 4, !tbaa !1
  %190 = trunc i32 %189 to i8
  %191 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %188, i8 zeroext %190)
  %192 = zext i8 %191 to i32
  %193 = load i8, i8* %2, align 1, !tbaa !9
  %194 = zext i8 %193 to i32
  %195 = icmp ne i32 %192, %194
  %196 = zext i1 %195 to i32
  %197 = load i32, i32* %l_86, align 4, !tbaa !1
  %198 = icmp sle i32 %196, %197
  %199 = zext i1 %198 to i32
  %200 = trunc i32 %199 to i16
  %201 = load i32, i32* %l_86, align 4, !tbaa !1
  %202 = call signext i16 @safe_rshift_func_int16_t_s_u(i16 signext %200, i32 %201)
  %203 = sext i16 %202 to i64
  %204 = icmp slt i64 %203, 161
  %205 = zext i1 %204 to i32
  %206 = sext i32 %205 to i64
  %207 = icmp eq i64 %206, 29596
  %208 = zext i1 %207 to i32
  %209 = trunc i32 %208 to i8
  %210 = load i32, i32* %1, align 4, !tbaa !1
  %211 = trunc i32 %210 to i8
  %212 = call i64** @func_64(i8 zeroext %209, i8 signext %211, i32* @g_25)
  %213 = load i64***, i64**** %l_235, align 8, !tbaa !5
  store i64** %212, i64*** %213, align 8, !tbaa !5
  %214 = load i16, i16* @g_232, align 2, !tbaa !10
  %215 = zext i16 %214 to i32
  %216 = load i64*, i64** %l_242, align 8, !tbaa !5
  %217 = load i64, i64* %216, align 8, !tbaa !7
  %218 = or i64 %217, -3668738030004991106
  store i64 %218, i64* %216, align 8, !tbaa !7
  %219 = load i64*, i64** %l_245, align 8, !tbaa !5
  store i64 %218, i64* %219, align 8, !tbaa !7
  %220 = load i64**, i64*** @g_142, align 8, !tbaa !5
  %221 = load i64*, i64** %220, align 8, !tbaa !5
  store i64* %221, i64** %l_82, align 8, !tbaa !5
  %222 = load i64*, i64** %l_247, align 8, !tbaa !5
  %223 = icmp eq i64* %221, %222
  %224 = zext i1 %223 to i32
  %225 = icmp ne i32 %215, %224
  %226 = zext i1 %225 to i32
  %227 = trunc i32 %226 to i16
  %228 = load i8, i8* %2, align 1, !tbaa !9
  %229 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @g_23, i32 0, i64 3), align 8, !tbaa !7
  %230 = and i64 0, %229
  %231 = trunc i64 %230 to i16
  %232 = load i32, i32* %1, align 4, !tbaa !1
  %233 = call zeroext i16 @safe_rshift_func_uint16_t_u_s(i16 zeroext %231, i32 %232)
  %234 = zext i16 %233 to i32
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %239

; <label>:236                                     ; preds = %145
  %237 = load i32, i32* %l_86, align 4, !tbaa !1
  %238 = icmp ne i32 %237, 0
  br label %239

; <label>:239                                     ; preds = %236, %145
  %240 = phi i1 [ false, %145 ], [ %238, %236 ]
  %241 = zext i1 %240 to i32
  %242 = load i16, i16* @g_174, align 2, !tbaa !10
  %243 = zext i16 %242 to i32
  %244 = call zeroext i16 @safe_rshift_func_uint16_t_u_s(i16 zeroext 0, i32 %243)
  %245 = zext i16 %244 to i32
  %246 = load i32*, i32** %l_257, align 8, !tbaa !5
  store i32 %245, i32* %246, align 4, !tbaa !1
  %247 = load i8, i8* %2, align 1, !tbaa !9
  %248 = zext i8 %247 to i32
  %249 = icmp ule i32 %245, %248
  %250 = zext i1 %249 to i32
  %251 = load i8, i8* @g_123, align 1, !tbaa !9
  %252 = sext i8 %251 to i32
  %253 = and i32 %252, %250
  %254 = trunc i32 %253 to i8
  store i8 %254, i8* @g_123, align 1, !tbaa !9
  %255 = call signext i8 @safe_rshift_func_int8_t_s_u(i8 signext %254, i32 1)
  %256 = call signext i8 @safe_mod_func_int8_t_s_s(i8 signext %228, i8 signext 101)
  %257 = sext i8 %256 to i32
  %258 = load i32, i32* %l_259, align 4, !tbaa !1
  %259 = or i32 %257, %258
  %260 = load i32, i32* %1, align 4, !tbaa !1
  %261 = trunc i32 %260 to i16
  %262 = call signext i16 @safe_div_func_int16_t_s_s(i16 signext %227, i16 signext %261)
  %263 = call signext i16 @safe_div_func_int16_t_s_s(i16 signext 1, i16 signext %262)
  %264 = sext i16 %263 to i32
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %270

; <label>:266                                     ; preds = %239
  %267 = load i8, i8* %2, align 1, !tbaa !9
  %268 = zext i8 %267 to i32
  %269 = icmp ne i32 %268, 0
  br label %270

; <label>:270                                     ; preds = %266, %239
  %271 = phi i1 [ false, %239 ], [ %269, %266 ]
  %272 = zext i1 %271 to i32
  %273 = load i16, i16* getelementptr inbounds ([4 x i16], [4 x i16]* @g_183, i32 0, i64 0), align 2, !tbaa !10
  %274 = sext i16 %273 to i32
  %275 = icmp sgt i32 %272, %274
  %276 = zext i1 %275 to i32
  %277 = load i8, i8* %l_85, align 1, !tbaa !9
  %278 = zext i8 %277 to i32
  %279 = xor i32 %276, %278
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %578

; <label>:281                                     ; preds = %270
  %282 = bitcast i8** %l_262 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %282) #1
  store i8* @g_123, i8** %l_262, align 8, !tbaa !5
  %283 = bitcast i32* %l_275 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %283) #1
  store i32 1198009629, i32* %l_275, align 4, !tbaa !1
  %284 = bitcast i8** %l_276 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %284) #1
  store i8* null, i8** %l_276, align 8, !tbaa !5
  %285 = bitcast [6 x [3 x [10 x i8*]]]* %l_277 to i8*
  call void @llvm.lifetime.start(i64 1440, i8* %285) #1
  %286 = getelementptr inbounds [6 x [3 x [10 x i8*]]], [6 x [3 x [10 x i8*]]]* %l_277, i64 0, i64 0
  %287 = getelementptr inbounds [3 x [10 x i8*]], [3 x [10 x i8*]]* %286, i64 0, i64 0
  %288 = getelementptr inbounds [10 x i8*], [10 x i8*]* %287, i64 0, i64 0
  store i8* @g_227, i8** %288, !tbaa !5
  %289 = getelementptr inbounds i8*, i8** %288, i64 1
  store i8* null, i8** %289, !tbaa !5
  %290 = getelementptr inbounds i8*, i8** %289, i64 1
  store i8* @g_227, i8** %290, !tbaa !5
  %291 = getelementptr inbounds i8*, i8** %290, i64 1
  store i8* %l_85, i8** %291, !tbaa !5
  %292 = getelementptr inbounds i8*, i8** %291, i64 1
  store i8* @g_227, i8** %292, !tbaa !5
  %293 = getelementptr inbounds i8*, i8** %292, i64 1
  store i8* %l_85, i8** %293, !tbaa !5
  %294 = getelementptr inbounds i8*, i8** %293, i64 1
  store i8* @g_227, i8** %294, !tbaa !5
  %295 = getelementptr inbounds i8*, i8** %294, i64 1
  store i8* %l_85, i8** %295, !tbaa !5
  %296 = getelementptr inbounds i8*, i8** %295, i64 1
  store i8* @g_227, i8** %296, !tbaa !5
  %297 = getelementptr inbounds i8*, i8** %296, i64 1
  store i8* null, i8** %297, !tbaa !5
  %298 = getelementptr inbounds [10 x i8*], [10 x i8*]* %287, i64 1
  %299 = getelementptr inbounds [10 x i8*], [10 x i8*]* %298, i64 0, i64 0
  store i8* @g_227, i8** %299, !tbaa !5
  %300 = getelementptr inbounds i8*, i8** %299, i64 1
  store i8* null, i8** %300, !tbaa !5
  %301 = getelementptr inbounds i8*, i8** %300, i64 1
  store i8* %l_85, i8** %301, !tbaa !5
  %302 = getelementptr inbounds i8*, i8** %301, i64 1
  store i8* %l_85, i8** %302, !tbaa !5
  %303 = getelementptr inbounds i8*, i8** %302, i64 1
  store i8* %l_85, i8** %303, !tbaa !5
  %304 = getelementptr inbounds i8*, i8** %303, i64 1
  store i8* %l_85, i8** %304, !tbaa !5
  %305 = getelementptr inbounds i8*, i8** %304, i64 1
  store i8* %l_85, i8** %305, !tbaa !5
  %306 = getelementptr inbounds i8*, i8** %305, i64 1
  store i8* @g_227, i8** %306, !tbaa !5
  %307 = getelementptr inbounds i8*, i8** %306, i64 1
  store i8* %l_85, i8** %307, !tbaa !5
  %308 = getelementptr inbounds i8*, i8** %307, i64 1
  store i8* %l_85, i8** %308, !tbaa !5
  %309 = getelementptr inbounds [10 x i8*], [10 x i8*]* %298, i64 1
  %310 = getelementptr inbounds [10 x i8*], [10 x i8*]* %309, i64 0, i64 0
  store i8* @g_227, i8** %310, !tbaa !5
  %311 = getelementptr inbounds i8*, i8** %310, i64 1
  store i8* %l_85, i8** %311, !tbaa !5
  %312 = getelementptr inbounds i8*, i8** %311, i64 1
  store i8* @g_227, i8** %312, !tbaa !5
  %313 = getelementptr inbounds i8*, i8** %312, i64 1
  store i8* %l_85, i8** %313, !tbaa !5
  %314 = getelementptr inbounds i8*, i8** %313, i64 1
  store i8* @g_227, i8** %314, !tbaa !5
  %315 = getelementptr inbounds i8*, i8** %314, i64 1
  store i8* %l_85, i8** %315, !tbaa !5
  %316 = getelementptr inbounds i8*, i8** %315, i64 1
  store i8* %l_85, i8** %316, !tbaa !5
  %317 = getelementptr inbounds i8*, i8** %316, i64 1
  store i8* %l_85, i8** %317, !tbaa !5
  %318 = getelementptr inbounds i8*, i8** %317, i64 1
  store i8* @g_227, i8** %318, !tbaa !5
  %319 = getelementptr inbounds i8*, i8** %318, i64 1
  store i8* %l_85, i8** %319, !tbaa !5
  %320 = getelementptr inbounds [3 x [10 x i8*]], [3 x [10 x i8*]]* %286, i64 1
  %321 = getelementptr inbounds [3 x [10 x i8*]], [3 x [10 x i8*]]* %320, i64 0, i64 0
  %322 = getelementptr inbounds [10 x i8*], [10 x i8*]* %321, i64 0, i64 0
  store i8* @g_227, i8** %322, !tbaa !5
  %323 = getelementptr inbounds i8*, i8** %322, i64 1
  store i8* @g_227, i8** %323, !tbaa !5
  %324 = getelementptr inbounds i8*, i8** %323, i64 1
  store i8* %l_85, i8** %324, !tbaa !5
  %325 = getelementptr inbounds i8*, i8** %324, i64 1
  store i8* %l_85, i8** %325, !tbaa !5
  %326 = getelementptr inbounds i8*, i8** %325, i64 1
  store i8* null, i8** %326, !tbaa !5
  %327 = getelementptr inbounds i8*, i8** %326, i64 1
  store i8* %l_85, i8** %327, !tbaa !5
  %328 = getelementptr inbounds i8*, i8** %327, i64 1
  store i8* %l_85, i8** %328, !tbaa !5
  %329 = getelementptr inbounds i8*, i8** %328, i64 1
  store i8* @g_227, i8** %329, !tbaa !5
  %330 = getelementptr inbounds i8*, i8** %329, i64 1
  store i8* @g_227, i8** %330, !tbaa !5
  %331 = getelementptr inbounds i8*, i8** %330, i64 1
  store i8* %l_85, i8** %331, !tbaa !5
  %332 = getelementptr inbounds [10 x i8*], [10 x i8*]* %321, i64 1
  %333 = getelementptr inbounds [10 x i8*], [10 x i8*]* %332, i64 0, i64 0
  store i8* @g_227, i8** %333, !tbaa !5
  %334 = getelementptr inbounds i8*, i8** %333, i64 1
  store i8* %l_85, i8** %334, !tbaa !5
  %335 = getelementptr inbounds i8*, i8** %334, i64 1
  store i8* %l_85, i8** %335, !tbaa !5
  %336 = getelementptr inbounds i8*, i8** %335, i64 1
  store i8* %l_85, i8** %336, !tbaa !5
  %337 = getelementptr inbounds i8*, i8** %336, i64 1
  store i8* @g_227, i8** %337, !tbaa !5
  %338 = getelementptr inbounds i8*, i8** %337, i64 1
  store i8* %l_85, i8** %338, !tbaa !5
  %339 = getelementptr inbounds i8*, i8** %338, i64 1
  store i8* @g_227, i8** %339, !tbaa !5
  %340 = getelementptr inbounds i8*, i8** %339, i64 1
  store i8* %l_85, i8** %340, !tbaa !5
  %341 = getelementptr inbounds i8*, i8** %340, i64 1
  store i8* @g_227, i8** %341, !tbaa !5
  %342 = getelementptr inbounds i8*, i8** %341, i64 1
  store i8* %l_85, i8** %342, !tbaa !5
  %343 = getelementptr inbounds [10 x i8*], [10 x i8*]* %332, i64 1
  %344 = getelementptr inbounds [10 x i8*], [10 x i8*]* %343, i64 0, i64 0
  store i8* %l_85, i8** %344, !tbaa !5
  %345 = getelementptr inbounds i8*, i8** %344, i64 1
  store i8* @g_227, i8** %345, !tbaa !5
  %346 = getelementptr inbounds i8*, i8** %345, i64 1
  store i8* %l_85, i8** %346, !tbaa !5
  %347 = getelementptr inbounds i8*, i8** %346, i64 1
  store i8* %l_85, i8** %347, !tbaa !5
  %348 = getelementptr inbounds i8*, i8** %347, i64 1
  store i8* %l_85, i8** %348, !tbaa !5
  %349 = getelementptr inbounds i8*, i8** %348, i64 1
  store i8* %l_85, i8** %349, !tbaa !5
  %350 = getelementptr inbounds i8*, i8** %349, i64 1
  store i8* %l_85, i8** %350, !tbaa !5
  %351 = getelementptr inbounds i8*, i8** %350, i64 1
  store i8* null, i8** %351, !tbaa !5
  %352 = getelementptr inbounds i8*, i8** %351, i64 1
  store i8* @g_227, i8** %352, !tbaa !5
  %353 = getelementptr inbounds i8*, i8** %352, i64 1
  store i8* null, i8** %353, !tbaa !5
  %354 = getelementptr inbounds [3 x [10 x i8*]], [3 x [10 x i8*]]* %320, i64 1
  %355 = getelementptr inbounds [3 x [10 x i8*]], [3 x [10 x i8*]]* %354, i64 0, i64 0
  %356 = getelementptr inbounds [10 x i8*], [10 x i8*]* %355, i64 0, i64 0
  store i8* @g_227, i8** %356, !tbaa !5
  %357 = getelementptr inbounds i8*, i8** %356, i64 1
  store i8* %l_85, i8** %357, !tbaa !5
  %358 = getelementptr inbounds i8*, i8** %357, i64 1
  store i8* @g_227, i8** %358, !tbaa !5
  %359 = getelementptr inbounds i8*, i8** %358, i64 1
  store i8* %l_85, i8** %359, !tbaa !5
  %360 = getelementptr inbounds i8*, i8** %359, i64 1
  store i8* @g_227, i8** %360, !tbaa !5
  %361 = getelementptr inbounds i8*, i8** %360, i64 1
  store i8* %l_85, i8** %361, !tbaa !5
  %362 = getelementptr inbounds i8*, i8** %361, i64 1
  store i8* @g_227, i8** %362, !tbaa !5
  %363 = getelementptr inbounds i8*, i8** %362, i64 1
  store i8* null, i8** %363, !tbaa !5
  %364 = getelementptr inbounds i8*, i8** %363, i64 1
  store i8* @g_227, i8** %364, !tbaa !5
  %365 = getelementptr inbounds i8*, i8** %364, i64 1
  store i8* @g_227, i8** %365, !tbaa !5
  %366 = getelementptr inbounds [10 x i8*], [10 x i8*]* %355, i64 1
  %367 = getelementptr inbounds [10 x i8*], [10 x i8*]* %366, i64 0, i64 0
  store i8* null, i8** %367, !tbaa !5
  %368 = getelementptr inbounds i8*, i8** %367, i64 1
  store i8* null, i8** %368, !tbaa !5
  %369 = getelementptr inbounds i8*, i8** %368, i64 1
  store i8* %l_85, i8** %369, !tbaa !5
  %370 = getelementptr inbounds i8*, i8** %369, i64 1
  store i8* %l_85, i8** %370, !tbaa !5
  %371 = getelementptr inbounds i8*, i8** %370, i64 1
  store i8* @g_227, i8** %371, !tbaa !5
  %372 = getelementptr inbounds i8*, i8** %371, i64 1
  store i8* %l_85, i8** %372, !tbaa !5
  %373 = getelementptr inbounds i8*, i8** %372, i64 1
  store i8* @g_227, i8** %373, !tbaa !5
  %374 = getelementptr inbounds i8*, i8** %373, i64 1
  store i8* %l_85, i8** %374, !tbaa !5
  %375 = getelementptr inbounds i8*, i8** %374, i64 1
  store i8* %l_85, i8** %375, !tbaa !5
  %376 = getelementptr inbounds i8*, i8** %375, i64 1
  store i8* null, i8** %376, !tbaa !5
  %377 = getelementptr inbounds [10 x i8*], [10 x i8*]* %366, i64 1
  %378 = getelementptr inbounds [10 x i8*], [10 x i8*]* %377, i64 0, i64 0
  store i8* @g_227, i8** %378, !tbaa !5
  %379 = getelementptr inbounds i8*, i8** %378, i64 1
  store i8* null, i8** %379, !tbaa !5
  %380 = getelementptr inbounds i8*, i8** %379, i64 1
  store i8* %l_85, i8** %380, !tbaa !5
  %381 = getelementptr inbounds i8*, i8** %380, i64 1
  store i8* %l_85, i8** %381, !tbaa !5
  %382 = getelementptr inbounds i8*, i8** %381, i64 1
  store i8* @g_227, i8** %382, !tbaa !5
  %383 = getelementptr inbounds i8*, i8** %382, i64 1
  store i8* %l_85, i8** %383, !tbaa !5
  %384 = getelementptr inbounds i8*, i8** %383, i64 1
  store i8* @g_227, i8** %384, !tbaa !5
  %385 = getelementptr inbounds i8*, i8** %384, i64 1
  store i8* @g_227, i8** %385, !tbaa !5
  %386 = getelementptr inbounds i8*, i8** %385, i64 1
  store i8* @g_227, i8** %386, !tbaa !5
  %387 = getelementptr inbounds i8*, i8** %386, i64 1
  store i8* %l_85, i8** %387, !tbaa !5
  %388 = getelementptr inbounds [3 x [10 x i8*]], [3 x [10 x i8*]]* %354, i64 1
  %389 = getelementptr inbounds [3 x [10 x i8*]], [3 x [10 x i8*]]* %388, i64 0, i64 0
  %390 = getelementptr inbounds [10 x i8*], [10 x i8*]* %389, i64 0, i64 0
  store i8* @g_227, i8** %390, !tbaa !5
  %391 = getelementptr inbounds i8*, i8** %390, i64 1
  store i8* %l_85, i8** %391, !tbaa !5
  %392 = getelementptr inbounds i8*, i8** %391, i64 1
  store i8* %l_85, i8** %392, !tbaa !5
  %393 = getelementptr inbounds i8*, i8** %392, i64 1
  store i8* %l_85, i8** %393, !tbaa !5
  %394 = getelementptr inbounds i8*, i8** %393, i64 1
  store i8* @g_227, i8** %394, !tbaa !5
  %395 = getelementptr inbounds i8*, i8** %394, i64 1
  store i8* %l_85, i8** %395, !tbaa !5
  %396 = getelementptr inbounds i8*, i8** %395, i64 1
  store i8* %l_85, i8** %396, !tbaa !5
  %397 = getelementptr inbounds i8*, i8** %396, i64 1
  store i8* %l_85, i8** %397, !tbaa !5
  %398 = getelementptr inbounds i8*, i8** %397, i64 1
  store i8* null, i8** %398, !tbaa !5
  %399 = getelementptr inbounds i8*, i8** %398, i64 1
  store i8* %l_85, i8** %399, !tbaa !5
  %400 = getelementptr inbounds [10 x i8*], [10 x i8*]* %389, i64 1
  %401 = getelementptr inbounds [10 x i8*], [10 x i8*]* %400, i64 0, i64 0
  store i8* @g_227, i8** %401, !tbaa !5
  %402 = getelementptr inbounds i8*, i8** %401, i64 1
  store i8* @g_227, i8** %402, !tbaa !5
  %403 = getelementptr inbounds i8*, i8** %402, i64 1
  store i8* @g_227, i8** %403, !tbaa !5
  %404 = getelementptr inbounds i8*, i8** %403, i64 1
  store i8* %l_85, i8** %404, !tbaa !5
  %405 = getelementptr inbounds i8*, i8** %404, i64 1
  store i8* null, i8** %405, !tbaa !5
  %406 = getelementptr inbounds i8*, i8** %405, i64 1
  store i8* %l_85, i8** %406, !tbaa !5
  %407 = getelementptr inbounds i8*, i8** %406, i64 1
  store i8* @g_227, i8** %407, !tbaa !5
  %408 = getelementptr inbounds i8*, i8** %407, i64 1
  store i8* @g_227, i8** %408, !tbaa !5
  %409 = getelementptr inbounds i8*, i8** %408, i64 1
  store i8* @g_227, i8** %409, !tbaa !5
  %410 = getelementptr inbounds i8*, i8** %409, i64 1
  store i8* %l_85, i8** %410, !tbaa !5
  %411 = getelementptr inbounds [10 x i8*], [10 x i8*]* %400, i64 1
  %412 = getelementptr inbounds [10 x i8*], [10 x i8*]* %411, i64 0, i64 0
  store i8* null, i8** %412, !tbaa !5
  %413 = getelementptr inbounds i8*, i8** %412, i64 1
  store i8* %l_85, i8** %413, !tbaa !5
  %414 = getelementptr inbounds i8*, i8** %413, i64 1
  store i8* %l_85, i8** %414, !tbaa !5
  %415 = getelementptr inbounds i8*, i8** %414, i64 1
  store i8* %l_85, i8** %415, !tbaa !5
  %416 = getelementptr inbounds i8*, i8** %415, i64 1
  store i8* @g_227, i8** %416, !tbaa !5
  %417 = getelementptr inbounds i8*, i8** %416, i64 1
  store i8* %l_85, i8** %417, !tbaa !5
  %418 = getelementptr inbounds i8*, i8** %417, i64 1
  store i8* %l_85, i8** %418, !tbaa !5
  %419 = getelementptr inbounds i8*, i8** %418, i64 1
  store i8* %l_85, i8** %419, !tbaa !5
  %420 = getelementptr inbounds i8*, i8** %419, i64 1
  store i8* @g_227, i8** %420, !tbaa !5
  %421 = getelementptr inbounds i8*, i8** %420, i64 1
  store i8* %l_85, i8** %421, !tbaa !5
  %422 = getelementptr inbounds [3 x [10 x i8*]], [3 x [10 x i8*]]* %388, i64 1
  %423 = getelementptr inbounds [3 x [10 x i8*]], [3 x [10 x i8*]]* %422, i64 0, i64 0
  %424 = getelementptr inbounds [10 x i8*], [10 x i8*]* %423, i64 0, i64 0
  store i8* @g_227, i8** %424, !tbaa !5
  %425 = getelementptr inbounds i8*, i8** %424, i64 1
  store i8* @g_227, i8** %425, !tbaa !5
  %426 = getelementptr inbounds i8*, i8** %425, i64 1
  store i8* @g_227, i8** %426, !tbaa !5
  %427 = getelementptr inbounds i8*, i8** %426, i64 1
  store i8* %l_85, i8** %427, !tbaa !5
  %428 = getelementptr inbounds i8*, i8** %427, i64 1
  store i8* @g_227, i8** %428, !tbaa !5
  %429 = getelementptr inbounds i8*, i8** %428, i64 1
  store i8* %l_85, i8** %429, !tbaa !5
  %430 = getelementptr inbounds i8*, i8** %429, i64 1
  store i8* %l_85, i8** %430, !tbaa !5
  %431 = getelementptr inbounds i8*, i8** %430, i64 1
  store i8* null, i8** %431, !tbaa !5
  %432 = getelementptr inbounds i8*, i8** %431, i64 1
  store i8* @g_227, i8** %432, !tbaa !5
  %433 = getelementptr inbounds i8*, i8** %432, i64 1
  store i8* null, i8** %433, !tbaa !5
  %434 = getelementptr inbounds [10 x i8*], [10 x i8*]* %423, i64 1
  %435 = getelementptr inbounds [10 x i8*], [10 x i8*]* %434, i64 0, i64 0
  store i8* %l_85, i8** %435, !tbaa !5
  %436 = getelementptr inbounds i8*, i8** %435, i64 1
  store i8* %l_85, i8** %436, !tbaa !5
  %437 = getelementptr inbounds i8*, i8** %436, i64 1
  store i8* @g_227, i8** %437, !tbaa !5
  %438 = getelementptr inbounds i8*, i8** %437, i64 1
  store i8* %l_85, i8** %438, !tbaa !5
  %439 = getelementptr inbounds i8*, i8** %438, i64 1
  store i8* @g_227, i8** %439, !tbaa !5
  %440 = getelementptr inbounds i8*, i8** %439, i64 1
  store i8* %l_85, i8** %440, !tbaa !5
  %441 = getelementptr inbounds i8*, i8** %440, i64 1
  store i8* %l_85, i8** %441, !tbaa !5
  %442 = getelementptr inbounds i8*, i8** %441, i64 1
  store i8* null, i8** %442, !tbaa !5
  %443 = getelementptr inbounds i8*, i8** %442, i64 1
  store i8* null, i8** %443, !tbaa !5
  %444 = getelementptr inbounds i8*, i8** %443, i64 1
  store i8* @g_227, i8** %444, !tbaa !5
  %445 = getelementptr inbounds [10 x i8*], [10 x i8*]* %434, i64 1
  %446 = getelementptr inbounds [10 x i8*], [10 x i8*]* %445, i64 0, i64 0
  store i8* @g_227, i8** %446, !tbaa !5
  %447 = getelementptr inbounds i8*, i8** %446, i64 1
  store i8* null, i8** %447, !tbaa !5
  %448 = getelementptr inbounds i8*, i8** %447, i64 1
  store i8* @g_227, i8** %448, !tbaa !5
  %449 = getelementptr inbounds i8*, i8** %448, i64 1
  store i8* %l_85, i8** %449, !tbaa !5
  %450 = getelementptr inbounds i8*, i8** %449, i64 1
  store i8* @g_227, i8** %450, !tbaa !5
  %451 = getelementptr inbounds i8*, i8** %450, i64 1
  store i8* %l_85, i8** %451, !tbaa !5
  %452 = getelementptr inbounds i8*, i8** %451, i64 1
  store i8* null, i8** %452, !tbaa !5
  %453 = getelementptr inbounds i8*, i8** %452, i64 1
  store i8* null, i8** %453, !tbaa !5
  %454 = getelementptr inbounds i8*, i8** %453, i64 1
  store i8* @g_227, i8** %454, !tbaa !5
  %455 = getelementptr inbounds i8*, i8** %454, i64 1
  store i8* %l_85, i8** %455, !tbaa !5
  %456 = getelementptr inbounds [3 x [10 x i8*]], [3 x [10 x i8*]]* %422, i64 1
  %457 = getelementptr inbounds [3 x [10 x i8*]], [3 x [10 x i8*]]* %456, i64 0, i64 0
  %458 = getelementptr inbounds [10 x i8*], [10 x i8*]* %457, i64 0, i64 0
  store i8* null, i8** %458, !tbaa !5
  %459 = getelementptr inbounds i8*, i8** %458, i64 1
  store i8* %l_85, i8** %459, !tbaa !5
  %460 = getelementptr inbounds i8*, i8** %459, i64 1
  store i8* %l_85, i8** %460, !tbaa !5
  %461 = getelementptr inbounds i8*, i8** %460, i64 1
  store i8* @g_227, i8** %461, !tbaa !5
  %462 = getelementptr inbounds i8*, i8** %461, i64 1
  store i8* @g_227, i8** %462, !tbaa !5
  %463 = getelementptr inbounds i8*, i8** %462, i64 1
  store i8* %l_85, i8** %463, !tbaa !5
  %464 = getelementptr inbounds i8*, i8** %463, i64 1
  store i8* @g_227, i8** %464, !tbaa !5
  %465 = getelementptr inbounds i8*, i8** %464, i64 1
  store i8* @g_227, i8** %465, !tbaa !5
  %466 = getelementptr inbounds i8*, i8** %465, i64 1
  store i8* @g_227, i8** %466, !tbaa !5
  %467 = getelementptr inbounds i8*, i8** %466, i64 1
  store i8* %l_85, i8** %467, !tbaa !5
  %468 = getelementptr inbounds [10 x i8*], [10 x i8*]* %457, i64 1
  %469 = getelementptr inbounds [10 x i8*], [10 x i8*]* %468, i64 0, i64 0
  store i8* %l_85, i8** %469, !tbaa !5
  %470 = getelementptr inbounds i8*, i8** %469, i64 1
  store i8* null, i8** %470, !tbaa !5
  %471 = getelementptr inbounds i8*, i8** %470, i64 1
  store i8* @g_227, i8** %471, !tbaa !5
  %472 = getelementptr inbounds i8*, i8** %471, i64 1
  store i8* null, i8** %472, !tbaa !5
  %473 = getelementptr inbounds i8*, i8** %472, i64 1
  store i8* %l_85, i8** %473, !tbaa !5
  %474 = getelementptr inbounds i8*, i8** %473, i64 1
  store i8* %l_85, i8** %474, !tbaa !5
  %475 = getelementptr inbounds i8*, i8** %474, i64 1
  store i8* @g_227, i8** %475, !tbaa !5
  %476 = getelementptr inbounds i8*, i8** %475, i64 1
  store i8* %l_85, i8** %476, !tbaa !5
  %477 = getelementptr inbounds i8*, i8** %476, i64 1
  store i8* @g_227, i8** %477, !tbaa !5
  %478 = getelementptr inbounds i8*, i8** %477, i64 1
  store i8* @g_227, i8** %478, !tbaa !5
  %479 = getelementptr inbounds [10 x i8*], [10 x i8*]* %468, i64 1
  %480 = getelementptr inbounds [10 x i8*], [10 x i8*]* %479, i64 0, i64 0
  store i8* null, i8** %480, !tbaa !5
  %481 = getelementptr inbounds i8*, i8** %480, i64 1
  store i8* @g_227, i8** %481, !tbaa !5
  %482 = getelementptr inbounds i8*, i8** %481, i64 1
  store i8* @g_227, i8** %482, !tbaa !5
  %483 = getelementptr inbounds i8*, i8** %482, i64 1
  store i8* %l_85, i8** %483, !tbaa !5
  %484 = getelementptr inbounds i8*, i8** %483, i64 1
  store i8* null, i8** %484, !tbaa !5
  %485 = getelementptr inbounds i8*, i8** %484, i64 1
  store i8* %l_85, i8** %485, !tbaa !5
  %486 = getelementptr inbounds i8*, i8** %485, i64 1
  store i8* @g_227, i8** %486, !tbaa !5
  %487 = getelementptr inbounds i8*, i8** %486, i64 1
  store i8* @g_227, i8** %487, !tbaa !5
  %488 = getelementptr inbounds i8*, i8** %487, i64 1
  store i8* null, i8** %488, !tbaa !5
  %489 = getelementptr inbounds i8*, i8** %488, i64 1
  store i8* @g_227, i8** %489, !tbaa !5
  %490 = bitcast i32** %l_278 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %490) #1
  store i32* @g_91, i32** %l_278, align 8, !tbaa !5
  %491 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %491) #1
  %492 = bitcast i32* %j4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %492) #1
  %493 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %493) #1
  %494 = load i32, i32* %l_86, align 4, !tbaa !1
  %495 = load i8*, i8** %l_262, align 8, !tbaa !5
  %496 = load i8, i8* %495, align 1, !tbaa !9
  %497 = sext i8 %496 to i32
  %498 = xor i32 %497, %494
  %499 = trunc i32 %498 to i8
  store i8 %499, i8* %495, align 1, !tbaa !9
  %500 = sext i8 %499 to i64
  %501 = icmp sle i64 %500, 192
  %502 = zext i1 %501 to i32
  %503 = sext i32 %502 to i64
  %504 = load i32, i32* %1, align 4, !tbaa !1
  %505 = zext i32 %504 to i64
  %506 = getelementptr inbounds [5 x i64], [5 x i64]* @g_23, i32 0, i64 %505
  %507 = load i64, i64* %506, align 8, !tbaa !7
  %508 = load i32, i32* %1, align 4, !tbaa !1
  %509 = zext i32 %508 to i64
  %510 = icmp slt i64 %507, %509
  %511 = zext i1 %510 to i32
  %512 = sext i32 %511 to i64
  %513 = load i32, i32* %l_86, align 4, !tbaa !1
  %514 = load i8, i8* %2, align 1, !tbaa !9
  %515 = zext i8 %514 to i32
  %516 = icmp slt i32 %513, %515
  %517 = zext i1 %516 to i32
  %518 = sext i32 %517 to i64
  %519 = call i64 @safe_sub_func_uint64_t_u_u(i64 %512, i64 %518)
  %520 = icmp uge i64 %503, %519
  %521 = zext i1 %520 to i32
  %522 = load i32, i32* %1, align 4, !tbaa !1
  %523 = load i64, i64* getelementptr inbounds ([9 x [6 x [2 x i64]]], [9 x [6 x [2 x i64]]]* @g_11, i32 0, i64 6, i64 2, i64 1), align 8, !tbaa !7
  %524 = icmp ne i64 %523, 0
  br i1 %524, label %525, label %531

; <label>:525                                     ; preds = %281
  %526 = load i32, i32* %1, align 4, !tbaa !1
  %527 = trunc i32 %526 to i8
  %528 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext 63, i8 zeroext %527)
  %529 = zext i8 %528 to i32
  %530 = icmp ne i32 %529, 0
  br label %531

; <label>:531                                     ; preds = %525, %281
  %532 = phi i1 [ false, %281 ], [ %530, %525 ]
  %533 = zext i1 %532 to i32
  %534 = trunc i32 %533 to i8
  %535 = call signext i8 @safe_rshift_func_int8_t_s_u(i8 signext %534, i32 0)
  %536 = sext i8 %535 to i32
  %537 = load i32, i32* %l_275, align 4, !tbaa !1
  %538 = icmp ne i32 %536, %537
  %539 = zext i1 %538 to i32
  %540 = trunc i32 %539 to i8
  %541 = call signext i8 @safe_lshift_func_int8_t_s_s(i8 signext %540, i32 1)
  %542 = sext i8 %541 to i32
  %543 = load i8, i8* @g_227, align 1, !tbaa !9
  %544 = zext i8 %543 to i32
  %545 = xor i32 %544, %542
  %546 = trunc i32 %545 to i8
  store i8 %546, i8* @g_227, align 1, !tbaa !9
  %547 = load i8, i8* %2, align 1, !tbaa !9
  %548 = call zeroext i8 @safe_div_func_uint8_t_u_u(i8 zeroext %546, i8 zeroext %547)
  %549 = zext i8 %548 to i32
  %550 = load i32, i32* %1, align 4, !tbaa !1
  %551 = icmp ne i32 %549, %550
  %552 = zext i1 %551 to i32
  %553 = trunc i32 %552 to i8
  %554 = load i8, i8* %l_85, align 1, !tbaa !9
  %555 = zext i8 %554 to i32
  %556 = call signext i8 @safe_lshift_func_int8_t_s_u(i8 signext %553, i32 %555)
  %557 = sext i8 %556 to i32
  %558 = call i32 @safe_div_func_int32_t_s_s(i32 %521, i32 %557)
  %559 = sext i32 %558 to i64
  %560 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @g_23, i32 0, i64 4), align 8, !tbaa !7
  %561 = icmp slt i64 %559, %560
  %562 = zext i1 %561 to i32
  %563 = load i16, i16* getelementptr inbounds ([3 x i16], [3 x i16]* @g_201, i32 0, i64 2), align 2, !tbaa !10
  %564 = sext i16 %563 to i32
  %565 = and i32 %562, %564
  %566 = load i32, i32* %l_259, align 4, !tbaa !1
  %567 = load i32*, i32** %l_278, align 8, !tbaa !5
  %568 = load i32, i32* %567, align 4, !tbaa !1
  %569 = or i32 %568, %566
  store i32 %569, i32* %567, align 4, !tbaa !1
  %570 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %570) #1
  %571 = bitcast i32* %j4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %571) #1
  %572 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %572) #1
  %573 = bitcast i32** %l_278 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %573) #1
  %574 = bitcast [6 x [3 x [10 x i8*]]]* %l_277 to i8*
  call void @llvm.lifetime.end(i64 1440, i8* %574) #1
  %575 = bitcast i8** %l_276 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %575) #1
  %576 = bitcast i32* %l_275 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %576) #1
  %577 = bitcast i8** %l_262 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %577) #1
  br label %723

; <label>:578                                     ; preds = %270
  %579 = bitcast i32** %l_285 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %579) #1
  store i32* @g_202, i32** %l_285, align 8, !tbaa !5
  %580 = bitcast i32* %l_307 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %580) #1
  store i32 -375283416, i32* %l_307, align 4, !tbaa !1
  %581 = load i8, i8* %2, align 1, !tbaa !9
  %582 = load i16, i16* getelementptr inbounds ([4 x i16], [4 x i16]* @g_183, i32 0, i64 2), align 2, !tbaa !10
  %583 = sext i16 %582 to i32
  %584 = load i32*, i32** %l_285, align 8, !tbaa !5
  %585 = load i32, i32* %584, align 4, !tbaa !1
  %586 = or i32 %585, %583
  store i32 %586, i32* %584, align 4, !tbaa !1
  %587 = load i32, i32* %1, align 4, !tbaa !1
  %588 = zext i32 %587 to i64
  %589 = icmp ugt i64 %588, 1
  %590 = zext i1 %589 to i32
  %591 = load i64***, i64**** %l_288, align 8, !tbaa !5
  store i64*** @g_142, i64**** %l_289, align 8, !tbaa !5
  %592 = icmp eq i64*** %591, @g_142
  %593 = zext i1 %592 to i32
  %594 = load i32, i32* %1, align 4, !tbaa !1
  %595 = icmp ne i32 %594, 0
  br i1 %595, label %662, label %596

; <label>:596                                     ; preds = %578
  %597 = load i64, i64* getelementptr inbounds ([9 x [6 x [2 x i64]]], [9 x [6 x [2 x i64]]]* @g_11, i32 0, i64 1, i64 1, i64 0), align 8, !tbaa !7
  %598 = icmp ne i64 %597, 0
  br i1 %598, label %599, label %652

; <label>:599                                     ; preds = %596
  %600 = load i32, i32* %l_307, align 4, !tbaa !1
  %601 = load i32, i32* %1, align 4, !tbaa !1
  %602 = icmp uge i32 %600, %601
  %603 = zext i1 %602 to i32
  %604 = load i32, i32* %l_86, align 4, !tbaa !1
  %605 = icmp sge i32 %603, %604
  %606 = zext i1 %605 to i32
  %607 = load i32, i32* %1, align 4, !tbaa !1
  %608 = icmp eq i32 %606, %607
  %609 = zext i1 %608 to i32
  %610 = call i32 @safe_unary_minus_func_int32_t_s(i32 %609)
  %611 = load i32, i32* @g_87, align 4, !tbaa !1
  %612 = or i32 %610, %611
  %613 = icmp ne i32 %612, 0
  br i1 %613, label %617, label %614

; <label>:614                                     ; preds = %599
  %615 = load i32, i32* %l_259, align 4, !tbaa !1
  %616 = icmp ne i32 %615, 0
  br label %617

; <label>:617                                     ; preds = %614, %599
  %618 = phi i1 [ true, %599 ], [ %616, %614 ]
  %619 = zext i1 %618 to i32
  %620 = xor i32 %619, -1
  %621 = load i16, i16* getelementptr inbounds ([4 x i16], [4 x i16]* @g_183, i32 0, i64 2), align 2, !tbaa !10
  %622 = call i64 @safe_sub_func_int64_t_s_s(i64 1, i64 0)
  %623 = trunc i64 %622 to i8
  %624 = call signext i8 @safe_sub_func_int8_t_s_s(i8 signext %623, i8 signext 8)
  %625 = sext i8 %624 to i32
  %626 = icmp ne i32 %625, 0
  br i1 %626, label %631, label %627

; <label>:627                                     ; preds = %617
  %628 = load i16, i16* getelementptr inbounds ([3 x i16], [3 x i16]* @g_201, i32 0, i64 1), align 2, !tbaa !10
  %629 = sext i16 %628 to i32
  %630 = icmp ne i32 %629, 0
  br label %631

; <label>:631                                     ; preds = %627, %617
  %632 = phi i1 [ true, %617 ], [ %630, %627 ]
  %633 = zext i1 %632 to i32
  %634 = xor i32 %633, -1
  %635 = trunc i32 %634 to i16
  %636 = load i32, i32* %l_259, align 4, !tbaa !1
  %637 = call zeroext i16 @safe_lshift_func_uint16_t_u_u(i16 zeroext %635, i32 %636)
  %638 = zext i16 %637 to i64
  %639 = load i64*, i64** %l_245, align 8, !tbaa !5
  store i64 %638, i64* %639, align 8, !tbaa !7
  %640 = getelementptr inbounds [9 x i32], [9 x i32]* %l_74, i32 0, i64 0
  %641 = load i32, i32* %640, align 4, !tbaa !1
  %642 = sext i32 %641 to i64
  %643 = call i64 @safe_mod_func_uint64_t_u_u(i64 %638, i64 %642)
  %644 = icmp ugt i64 %643, 4018953146
  %645 = zext i1 %644 to i32
  %646 = trunc i32 %645 to i8
  %647 = load i32, i32* %1, align 4, !tbaa !1
  %648 = trunc i32 %647 to i8
  %649 = call signext i8 @safe_add_func_int8_t_s_s(i8 signext %646, i8 signext %648)
  %650 = sext i8 %649 to i32
  %651 = icmp ne i32 %650, 0
  br label %652

; <label>:652                                     ; preds = %631, %596
  %653 = phi i1 [ false, %596 ], [ %651, %631 ]
  %654 = zext i1 %653 to i32
  %655 = load i32, i32* %l_307, align 4, !tbaa !1
  %656 = call i32 @safe_mod_func_int32_t_s_s(i32 %654, i32 %655)
  %657 = sext i32 %656 to i64
  %658 = icmp ne i64 %657, 0
  %659 = zext i1 %658 to i32
  %660 = load i32, i32* %l_307, align 4, !tbaa !1
  %661 = icmp sgt i32 %659, %660
  br label %662

; <label>:662                                     ; preds = %652, %578
  %663 = phi i1 [ true, %578 ], [ %661, %652 ]
  %664 = zext i1 %663 to i32
  %665 = sext i32 %664 to i64
  %666 = icmp ne i64 %665, 7056367218247298121
  %667 = zext i1 %666 to i32
  %668 = icmp sge i32 %593, %667
  %669 = zext i1 %668 to i32
  %670 = load i16, i16* getelementptr inbounds ([4 x i16], [4 x i16]* @g_183, i32 0, i64 2), align 2, !tbaa !10
  %671 = sext i16 %670 to i32
  %672 = call i32 @safe_sub_func_int32_t_s_s(i32 %669, i32 %671)
  %673 = load i8, i8* %l_85, align 1, !tbaa !9
  %674 = zext i8 %673 to i32
  %675 = icmp eq i32 %672, %674
  %676 = zext i1 %675 to i32
  store i32 %676, i32* %l_308, align 4, !tbaa !1
  %677 = load i32, i32* @g_87, align 4, !tbaa !1
  %678 = zext i32 %677 to i64
  %679 = icmp ne i64 26044, %678
  %680 = zext i1 %679 to i32
  %681 = load i16, i16* getelementptr inbounds ([3 x i16], [3 x i16]* @g_201, i32 0, i64 0), align 2, !tbaa !10
  %682 = sext i16 %681 to i32
  %683 = load i8, i8* %l_85, align 1, !tbaa !9
  %684 = zext i8 %683 to i32
  %685 = xor i32 %682, %684
  %686 = getelementptr inbounds [7 x i32], [7 x i32]* %l_309, i32 0, i64 0
  %687 = load i32, i32* %686, align 4, !tbaa !1
  %688 = or i32 %687, %685
  store i32 %688, i32* %686, align 4, !tbaa !1
  %689 = icmp ne i32 %688, 0
  br i1 %689, label %694, label %690

; <label>:690                                     ; preds = %662
  %691 = load i8, i8* %2, align 1, !tbaa !9
  %692 = zext i8 %691 to i32
  %693 = icmp ne i32 %692, 0
  br label %694

; <label>:694                                     ; preds = %690, %662
  %695 = phi i1 [ true, %662 ], [ %693, %690 ]
  %696 = zext i1 %695 to i32
  %697 = trunc i32 %696 to i8
  %698 = call zeroext i8 @safe_lshift_func_uint8_t_u_u(i8 zeroext %697, i32 0)
  %699 = zext i8 %698 to i32
  %700 = icmp ne i32 %699, 0
  br i1 %700, label %701, label %702

; <label>:701                                     ; preds = %694
  br label %702

; <label>:702                                     ; preds = %701, %694
  %703 = phi i1 [ false, %694 ], [ true, %701 ]
  %704 = zext i1 %703 to i32
  %705 = trunc i32 %704 to i16
  %706 = getelementptr inbounds [9 x i32], [9 x i32]* %l_74, i32 0, i64 6
  %707 = load i32, i32* %706, align 4, !tbaa !1
  %708 = trunc i32 %707 to i16
  %709 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %705, i16 signext %708)
  %710 = sext i16 %709 to i32
  %711 = call zeroext i8 @safe_rshift_func_uint8_t_u_u(i8 zeroext %581, i32 %710)
  %712 = zext i8 %711 to i64
  %713 = load i32, i32* %1, align 4, !tbaa !1
  %714 = zext i32 %713 to i64
  %715 = getelementptr inbounds [5 x i64], [5 x i64]* @g_23, i32 0, i64 %714
  %716 = load i64, i64* %715, align 8, !tbaa !7
  %717 = and i64 %712, %716
  %718 = and i64 %717, 2145125394
  %719 = icmp sge i64 %718, -5
  %720 = zext i1 %719 to i32
  store i32 %720, i32* %l_310, align 4, !tbaa !1
  %721 = bitcast i32* %l_307 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %721) #1
  %722 = bitcast i32** %l_285 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %722) #1
  br label %723

; <label>:723                                     ; preds = %702, %531
  %724 = load i64, i64* @g_314, align 8, !tbaa !7
  %725 = add i64 %724, 1
  store i64 %725, i64* @g_314, align 8, !tbaa !7
  store i32 4, i32* %l_86, align 4, !tbaa !1
  br label %726

; <label>:726                                     ; preds = %826, %723
  %727 = load i32, i32* %l_86, align 4, !tbaa !1
  %728 = icmp sge i32 %727, 1
  br i1 %728, label %729, label %829

; <label>:729                                     ; preds = %726
  %730 = bitcast i64** %l_326 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %730) #1
  store i64* getelementptr inbounds ([5 x i64], [5 x i64]* @g_23, i32 0, i64 3), i64** %l_326, align 8, !tbaa !5
  %731 = bitcast i32* %l_330 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %731) #1
  store i32 -4, i32* %l_330, align 4, !tbaa !1
  %732 = bitcast i16** %l_342 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %732) #1
  store i16* getelementptr inbounds ([4 x i16], [4 x i16]* @g_183, i32 0, i64 3), i16** %l_342, align 8, !tbaa !5
  store i32 0, i32* @g_222, align 4, !tbaa !1
  br label %733

; <label>:733                                     ; preds = %797, %729
  %734 = load i32, i32* @g_222, align 4, !tbaa !1
  %735 = icmp ule i32 %734, 4
  br i1 %735, label %736, label %800

; <label>:736                                     ; preds = %733
  %737 = bitcast i64** %l_324 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %737) #1
  %738 = load i32, i32* %1, align 4, !tbaa !1
  %739 = zext i32 %738 to i64
  %740 = getelementptr inbounds [5 x i64], [5 x i64]* @g_23, i32 0, i64 %739
  store i64* %740, i64** %l_324, align 8, !tbaa !5
  %741 = bitcast i32* %l_329 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %741) #1
  store i32 -1700233357, i32* %l_329, align 4, !tbaa !1
  %742 = bitcast i32* %l_331 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %742) #1
  store i32 0, i32* %l_331, align 4, !tbaa !1
  %743 = bitcast i32* %l_332 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %743) #1
  store i32 1, i32* %l_332, align 4, !tbaa !1
  %744 = load i64*, i64** %l_324, align 8, !tbaa !5
  %745 = load i64*, i64** %l_325, align 8, !tbaa !5
  %746 = icmp ne i64* %744, %745
  %747 = zext i1 %746 to i32
  %748 = getelementptr inbounds [4 x [9 x i32*]], [4 x [9 x i32*]]* %l_311, i32 0, i64 1
  %749 = getelementptr inbounds [9 x i32*], [9 x i32*]* %748, i32 0, i64 0
  %750 = load i64*, i64** %l_326, align 8, !tbaa !5
  %751 = load i32*, i32** @g_327, align 8, !tbaa !5
  %752 = icmp eq i32* %751, @g_222
  %753 = zext i1 %752 to i32
  store i32 %753, i32* %l_329, align 4, !tbaa !1
  %754 = load i64*, i64** %l_247, align 8, !tbaa !5
  %755 = icmp ne i64* %750, %754
  %756 = zext i1 %755 to i32
  %757 = getelementptr inbounds [4 x [9 x i32*]], [4 x [9 x i32*]]* %l_311, i32 0, i64 3
  %758 = getelementptr inbounds [9 x i32*], [9 x i32*]* %757, i32 0, i64 8
  %759 = icmp ne i32** %749, %758
  %760 = zext i1 %759 to i32
  %761 = icmp slt i32 %747, %760
  %762 = zext i1 %761 to i32
  %763 = sext i32 %762 to i64
  %764 = call i64 @safe_sub_func_uint64_t_u_u(i64 %763, i64 -1)
  %765 = icmp eq i64 %764, -6
  %766 = zext i1 %765 to i32
  %767 = getelementptr inbounds [10 x i32], [10 x i32]* %l_312, i32 0, i64 3
  %768 = load i32, i32* %767, align 4, !tbaa !1
  %769 = and i32 %766, %768
  %770 = load i32, i32* @g_87, align 4, !tbaa !1
  %771 = zext i32 %770 to i64
  %772 = and i64 1, %771
  %773 = load i32, i32* %l_330, align 4, !tbaa !1
  %774 = sext i32 %773 to i64
  %775 = xor i64 %772, %774
  %776 = or i64 %775, 2
  %777 = icmp ugt i64 %776, 0
  %778 = zext i1 %777 to i32
  %779 = sext i32 %778 to i64
  %780 = icmp sge i64 %779, 2352939981598251362
  %781 = zext i1 %780 to i32
  store i32 %781, i32* %l_331, align 4, !tbaa !1
  %782 = trunc i32 %781 to i16
  %783 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %782, i16 zeroext -14799)
  %784 = load i8, i8* %2, align 1, !tbaa !9
  %785 = zext i8 %784 to i32
  %786 = xor i32 %785, -1
  %787 = load i32, i32* %l_308, align 4, !tbaa !1
  %788 = trunc i32 %787 to i16
  %789 = load i64, i64* @g_246, align 8, !tbaa !7
  %790 = trunc i64 %789 to i32
  %791 = call signext i16 @safe_rshift_func_int16_t_s_u(i16 signext %788, i32 %790)
  %792 = sext i16 %791 to i32
  store i32 %792, i32* %l_330, align 4, !tbaa !1
  store i32 %792, i32* %l_332, align 4, !tbaa !1
  %793 = bitcast i32* %l_332 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %793) #1
  %794 = bitcast i32* %l_331 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %794) #1
  %795 = bitcast i32* %l_329 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %795) #1
  %796 = bitcast i64** %l_324 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %796) #1
  br label %797

; <label>:797                                     ; preds = %736
  %798 = load i32, i32* @g_222, align 4, !tbaa !1
  %799 = add i32 %798, 1
  store i32 %799, i32* @g_222, align 4, !tbaa !1
  br label %733

; <label>:800                                     ; preds = %733
  store i32 0, i32* @g_87, align 4, !tbaa !1
  br label %801

; <label>:801                                     ; preds = %819, %800
  %802 = load i32, i32* @g_87, align 4, !tbaa !1
  %803 = icmp ule i32 %802, 4
  br i1 %803, label %804, label %822

; <label>:804                                     ; preds = %801
  %805 = bitcast i16** %l_340 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %805) #1
  store i16* getelementptr inbounds ([4 x i16], [4 x i16]* @g_183, i32 0, i64 2), i16** %l_340, align 8, !tbaa !5
  %806 = bitcast i16*** %l_341 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %806) #1
  store i16** %l_340, i16*** %l_341, align 8, !tbaa !5
  %807 = load i8, i8* %2, align 1, !tbaa !9
  %808 = icmp ne i8 %807, 0
  br i1 %808, label %809, label %810

; <label>:809                                     ; preds = %804
  store i32 20, i32* %3
  br label %815

; <label>:810                                     ; preds = %804
  %811 = load i32, i32* %l_330, align 4, !tbaa !1
  %812 = icmp ne i32 1, %811
  %813 = zext i1 %812 to i32
  %814 = getelementptr inbounds [10 x i32], [10 x i32]* %l_312, i32 0, i64 6
  store i32 %813, i32* %814, align 4, !tbaa !1
  store i32 0, i32* %3
  br label %815

; <label>:815                                     ; preds = %810, %809
  %816 = bitcast i16*** %l_341 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %816) #1
  %817 = bitcast i16** %l_340 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %817) #1
  %cleanup.dest = load i32, i32* %3
  switch i32 %cleanup.dest, label %903 [
    i32 0, label %818
    i32 20, label %822
  ]

; <label>:818                                     ; preds = %815
  br label %819

; <label>:819                                     ; preds = %818
  %820 = load i32, i32* @g_87, align 4, !tbaa !1
  %821 = add i32 %820, 1
  store i32 %821, i32* @g_87, align 4, !tbaa !1
  br label %801

; <label>:822                                     ; preds = %815, %801
  %823 = bitcast i16** %l_342 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %823) #1
  %824 = bitcast i32* %l_330 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %824) #1
  %825 = bitcast i64** %l_326 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %825) #1
  br label %826

; <label>:826                                     ; preds = %822
  %827 = load i32, i32* %l_86, align 4, !tbaa !1
  %828 = sub nsw i32 %827, 1
  store i32 %828, i32* %l_86, align 4, !tbaa !1
  br label %726

; <label>:829                                     ; preds = %726
  %830 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %830) #1
  %831 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %831) #1
  %832 = bitcast i32* %l_343 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %832) #1
  %833 = bitcast [4 x [9 x i32*]]* %l_311 to i8*
  call void @llvm.lifetime.end(i64 288, i8* %833) #1
  %834 = bitcast i64**** %l_289 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %834) #1
  %835 = bitcast i8** %l_258 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %835) #1
  %836 = bitcast i32** %l_257 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %836) #1
  %837 = bitcast i32** %l_256 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %837) #1
  %838 = bitcast i64** %l_245 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %838) #1
  %839 = bitcast i64** %l_244 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %839) #1
  %840 = bitcast i64** %l_242 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %840) #1
  %841 = bitcast i64**** %l_235 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %841) #1
  %842 = bitcast i64*** %l_83 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %842) #1
  %843 = bitcast [9 x i32]* %l_74 to i8*
  call void @llvm.lifetime.end(i64 36, i8* %843) #1
  br label %844

; <label>:844                                     ; preds = %829
  %845 = load i8, i8* %2, align 1, !tbaa !9
  %846 = zext i8 %845 to i32
  %847 = add nsw i32 %846, 1
  %848 = trunc i32 %847 to i8
  store i8 %848, i8* %2, align 1, !tbaa !9
  br label %54

; <label>:849                                     ; preds = %54
  %850 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %850) #1
  %851 = bitcast i32*** %l_376 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %851) #1
  %852 = bitcast %union.U0* %l_350 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %852) #1
  %853 = bitcast i64** %l_325 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %853) #1
  %854 = bitcast [7 x i32]* %l_309 to i8*
  call void @llvm.lifetime.end(i64 28, i8* %854) #1
  %855 = bitcast i64**** %l_288 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %855) #1
  %856 = bitcast i32* %l_259 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %856) #1
  %857 = bitcast i64** %l_84 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %857) #1
  %858 = bitcast i64** %l_82 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %858) #1
  br label %859

; <label>:859                                     ; preds = %849
  %860 = load i32, i32* %1, align 4, !tbaa !1
  %861 = add i32 %860, 1
  store i32 %861, i32* %1, align 4, !tbaa !1
  br label %39

; <label>:862                                     ; preds = %39
  %863 = bitcast i16* %l_477 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %863) #1
  %864 = bitcast %union.U0*** %l_436 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %864) #1
  %865 = bitcast i8** %l_356 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %865) #1
  %866 = bitcast i16*** %l_353 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %866) #1
  %867 = bitcast i32* %l_310 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %867) #1
  %868 = bitcast i32* %l_308 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %868) #1
  %869 = bitcast i64** %l_247 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %869) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_85) #1
  br label %870

; <label>:870                                     ; preds = %862
  %871 = load i32, i32* @g_25, align 4, !tbaa !1
  %872 = call i32 @safe_add_func_int32_t_s_s(i32 %871, i32 7)
  store i32 %872, i32* @g_25, align 4, !tbaa !1
  br label %28

; <label>:873                                     ; preds = %28
  store i8 -14, i8* @g_478, align 1, !tbaa !9
  br label %874

; <label>:874                                     ; preds = %886, %873
  %875 = load i8, i8* @g_478, align 1, !tbaa !9
  %876 = zext i8 %875 to i32
  %877 = icmp ne i32 %876, 18
  br i1 %877, label %878, label %889

; <label>:878                                     ; preds = %874
  %879 = bitcast i32** %l_506 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %879) #1
  %880 = getelementptr inbounds [10 x i32], [10 x i32]* %l_312, i32 0, i64 4
  store i32* %880, i32** %l_506, align 8, !tbaa !5
  %881 = bitcast i32*** %l_507 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %881) #1
  store i32** %l_437, i32*** %l_507, align 8, !tbaa !5
  %882 = load i32*, i32** %l_506, align 8, !tbaa !5
  %883 = load i32**, i32*** %l_507, align 8, !tbaa !5
  store i32* %882, i32** %883, align 8, !tbaa !5
  %884 = bitcast i32*** %l_507 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %884) #1
  %885 = bitcast i32** %l_506 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %885) #1
  br label %886

; <label>:886                                     ; preds = %878
  %887 = load i8, i8* @g_478, align 1, !tbaa !9
  %888 = add i8 %887, 1
  store i8 %888, i8* @g_478, align 1, !tbaa !9
  br label %874

; <label>:889                                     ; preds = %874
  %890 = load i64**, i64*** @g_142, align 8, !tbaa !5
  %891 = load i64*, i64** %890, align 8, !tbaa !5
  store i32 1, i32* %3
  %892 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %892) #1
  %893 = bitcast i32** %l_437 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %893) #1
  %894 = bitcast %union.U0*** %l_434 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %894) #1
  %895 = bitcast %union.U0** %l_435 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %895) #1
  %896 = bitcast i32*** %l_373 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %896) #1
  %897 = bitcast i32** %l_374 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %897) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_354) #1
  %898 = bitcast i16* %l_344 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %898) #1
  %899 = bitcast [9 x i8*]* %l_336 to i8*
  call void @llvm.lifetime.end(i64 72, i8* %899) #1
  %900 = bitcast [10 x i32]* %l_312 to i8*
  call void @llvm.lifetime.end(i64 40, i8* %900) #1
  %901 = bitcast i32* %l_86 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %901) #1
  %902 = bitcast i64*** %l_75 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %902) #1
  ret i64* %891

; <label>:903                                     ; preds = %815
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @safe_mod_func_uint32_t_u_u(i32 %ui1, i32 %ui2) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %ui1, i32* %1, align 4, !tbaa !1
  store i32 %ui2, i32* %2, align 4, !tbaa !1
  %3 = load i32, i32* %2, align 4, !tbaa !1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

; <label>:5                                       ; preds = %0
  %6 = load i32, i32* %1, align 4, !tbaa !1
  br label %11

; <label>:7                                       ; preds = %0
  %8 = load i32, i32* %1, align 4, !tbaa !1
  %9 = load i32, i32* %2, align 4, !tbaa !1
  %10 = urem i32 %8, %9
  br label %11

; <label>:11                                      ; preds = %7, %5
  %12 = phi i32 [ %6, %5 ], [ %10, %7 ]
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal zeroext i16 @safe_div_func_uint16_t_u_u(i16 zeroext %ui1, i16 zeroext %ui2) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i16, align 2
  store i16 %ui1, i16* %1, align 2, !tbaa !10
  store i16 %ui2, i16* %2, align 2, !tbaa !10
  %3 = load i16, i16* %2, align 2, !tbaa !10
  %4 = zext i16 %3 to i32
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

; <label>:6                                       ; preds = %0
  %7 = load i16, i16* %1, align 2, !tbaa !10
  %8 = zext i16 %7 to i32
  br label %15

; <label>:9                                       ; preds = %0
  %10 = load i16, i16* %1, align 2, !tbaa !10
  %11 = zext i16 %10 to i32
  %12 = load i16, i16* %2, align 2, !tbaa !10
  %13 = zext i16 %12 to i32
  %14 = sdiv i32 %11, %13
  br label %15

; <label>:15                                      ; preds = %9, %6
  %16 = phi i32 [ %8, %6 ], [ %14, %9 ]
  %17 = trunc i32 %16 to i16
  ret i16 %17
}

; Function Attrs: nounwind uwtable
define internal i64** @func_64(i8 zeroext %p_65, i8 signext %p_66, i32* %p_67) #0 {
  %1 = alloca i64**, align 8
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i32*, align 8
  %l_90 = alloca [7 x [1 x i32*]], align 16
  %l_97 = alloca i64*, align 8
  %l_138 = alloca i64, align 8
  %l_152 = alloca [5 x i32], align 16
  %l_184 = alloca i16*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %l_101 = alloca i32, align 4
  %l_103 = alloca i32, align 4
  %l_117 = alloca i32*, align 8
  %l_121 = alloca i32, align 4
  %l_139 = alloca i8, align 1
  %l_141 = alloca i64**, align 8
  %l_148 = alloca i32*, align 8
  %l_153 = alloca i8, align 1
  %l_154 = alloca [6 x i32], align 16
  %l_172 = alloca i64, align 8
  %l_175 = alloca i64**, align 8
  %i1 = alloca i32, align 4
  %l_98 = alloca i64**, align 8
  %l_102 = alloca [9 x [4 x [5 x i32*]]], align 16
  %l_118 = alloca i32, align 4
  %l_122 = alloca i8*, align 8
  %l_124 = alloca i32, align 4
  %i2 = alloca i32, align 4
  %j3 = alloca i32, align 4
  %k = alloca i32, align 4
  %l_129 = alloca i64***, align 8
  %l_130 = alloca i64**, align 8
  %l_135 = alloca [6 x [1 x i32]], align 16
  %l_140 = alloca i32**, align 8
  %i4 = alloca i32, align 4
  %j5 = alloca i32, align 4
  %5 = alloca i32
  %l_146 = alloca i32**, align 8
  %l_147 = alloca [1 x [2 x [2 x i32**]]], align 16
  %l_157 = alloca i8*, align 8
  %l_173 = alloca i16*, align 8
  %i6 = alloca i32, align 4
  %j7 = alloca i32, align 4
  %k8 = alloca i32, align 4
  %l_209 = alloca i8, align 1
  %l_214 = alloca i32*, align 8
  %l_213 = alloca i32**, align 8
  %l_221 = alloca [5 x [8 x [4 x i64*]]], align 16
  %l_225 = alloca [1 x i8**], align 8
  %l_233 = alloca [10 x i32], align 16
  %i9 = alloca i32, align 4
  %j10 = alloca i32, align 4
  %k11 = alloca i32, align 4
  %l_180 = alloca [6 x i64], align 16
  %l_204 = alloca i32*, align 8
  %i12 = alloca i32, align 4
  %l_178 = alloca i32*, align 8
  %l_179 = alloca i32**, align 8
  %l_181 = alloca i16*, align 8
  %l_182 = alloca i16*, align 8
  %l_185 = alloca i16**, align 8
  %l_200 = alloca i8*, align 8
  %l_203 = alloca i32, align 4
  store i8 %p_65, i8* %2, align 1, !tbaa !9
  store i8 %p_66, i8* %3, align 1, !tbaa !9
  store i32* %p_67, i32** %4, align 8, !tbaa !5
  %6 = bitcast [7 x [1 x i32*]]* %l_90 to i8*
  call void @llvm.lifetime.start(i64 56, i8* %6) #1
  %7 = bitcast [7 x [1 x i32*]]* %l_90 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* bitcast ([7 x [1 x i32*]]* @func_64.l_90 to i8*), i64 56, i32 16, i1 false)
  %8 = bitcast i64** %l_97 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i64* getelementptr inbounds ([5 x i64], [5 x i64]* @g_23, i32 0, i64 4), i64** %l_97, align 8, !tbaa !5
  %9 = bitcast i64* %l_138 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store i64 -2020524520583404220, i64* %l_138, align 8, !tbaa !7
  %10 = bitcast [5 x i32]* %l_152 to i8*
  call void @llvm.lifetime.start(i64 20, i8* %10) #1
  %11 = bitcast i16** %l_184 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store i16* @g_174, i16** %l_184, align 8, !tbaa !5
  %12 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %14

; <label>:14                                      ; preds = %21, %0
  %15 = load i32, i32* %i, align 4, !tbaa !1
  %16 = icmp slt i32 %15, 5
  br i1 %16, label %17, label %24

; <label>:17                                      ; preds = %14
  %18 = load i32, i32* %i, align 4, !tbaa !1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [5 x i32], [5 x i32]* %l_152, i32 0, i64 %19
  store i32 1855559133, i32* %20, align 4, !tbaa !1
  br label %21

; <label>:21                                      ; preds = %17
  %22 = load i32, i32* %i, align 4, !tbaa !1
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %i, align 4, !tbaa !1
  br label %14

; <label>:24                                      ; preds = %14
  %25 = load i32, i32* @g_87, align 4, !tbaa !1
  %26 = add i32 %25, 1
  store i32 %26, i32* @g_87, align 4, !tbaa !1
  %27 = load i32, i32* @g_25, align 4, !tbaa !1
  store i32 %27, i32* @g_91, align 4, !tbaa !1
  store i32 0, i32* @g_87, align 4, !tbaa !1
  br label %28

; <label>:28                                      ; preds = %1124, %24
  %29 = load i32, i32* @g_87, align 4, !tbaa !1
  %30 = icmp uge i32 %29, 3
  br i1 %30, label %31, label %1129

; <label>:31                                      ; preds = %28
  %32 = bitcast i32* %l_101 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #1
  store i32 1, i32* %l_101, align 4, !tbaa !1
  %33 = bitcast i32* %l_103 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #1
  store i32 6, i32* %l_103, align 4, !tbaa !1
  %34 = bitcast i32** %l_117 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %34) #1
  store i32* @g_91, i32** %l_117, align 8, !tbaa !5
  %35 = bitcast i32* %l_121 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #1
  store i32 0, i32* %l_121, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %l_139) #1
  store i8 105, i8* %l_139, align 1, !tbaa !9
  %36 = bitcast i64*** %l_141 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %36) #1
  store i64** %l_97, i64*** %l_141, align 8, !tbaa !5
  %37 = bitcast i32** %l_148 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %37) #1
  store i32* %l_103, i32** %l_148, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_153) #1
  store i8 1, i8* %l_153, align 1, !tbaa !9
  %38 = bitcast [6 x i32]* %l_154 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %38) #1
  %39 = bitcast i64* %l_172 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %39) #1
  store i64 4, i64* %l_172, align 8, !tbaa !7
  %40 = bitcast i64*** %l_175 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %40) #1
  store i64** null, i64*** %l_175, align 8, !tbaa !5
  %41 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %41) #1
  store i32 0, i32* %i1, align 4, !tbaa !1
  br label %42

; <label>:42                                      ; preds = %49, %31
  %43 = load i32, i32* %i1, align 4, !tbaa !1
  %44 = icmp slt i32 %43, 6
  br i1 %44, label %45, label %52

; <label>:45                                      ; preds = %42
  %46 = load i32, i32* %i1, align 4, !tbaa !1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [6 x i32], [6 x i32]* %l_154, i32 0, i64 %47
  store i32 855287354, i32* %48, align 4, !tbaa !1
  br label %49

; <label>:49                                      ; preds = %45
  %50 = load i32, i32* %i1, align 4, !tbaa !1
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %i1, align 4, !tbaa !1
  br label %42

; <label>:52                                      ; preds = %42
  store i8 4, i8* %3, align 1, !tbaa !9
  br label %53

; <label>:53                                      ; preds = %492, %52
  %54 = load i8, i8* %3, align 1, !tbaa !9
  %55 = sext i8 %54 to i32
  %56 = icmp sge i32 %55, 0
  br i1 %56, label %57, label %497

; <label>:57                                      ; preds = %53
  %58 = bitcast i64*** %l_98 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %58) #1
  store i64** %l_97, i64*** %l_98, align 8, !tbaa !5
  %59 = bitcast [9 x [4 x [5 x i32*]]]* %l_102 to i8*
  call void @llvm.lifetime.start(i64 1440, i8* %59) #1
  %60 = getelementptr inbounds [9 x [4 x [5 x i32*]]], [9 x [4 x [5 x i32*]]]* %l_102, i64 0, i64 0
  %61 = getelementptr inbounds [4 x [5 x i32*]], [4 x [5 x i32*]]* %60, i64 0, i64 0
  %62 = getelementptr inbounds [5 x i32*], [5 x i32*]* %61, i64 0, i64 0
  store i32* @g_87, i32** %62, !tbaa !5
  %63 = getelementptr inbounds i32*, i32** %62, i64 1
  store i32* @g_87, i32** %63, !tbaa !5
  %64 = getelementptr inbounds i32*, i32** %63, i64 1
  store i32* %l_101, i32** %64, !tbaa !5
  %65 = getelementptr inbounds i32*, i32** %64, i64 1
  store i32* @g_94, i32** %65, !tbaa !5
  %66 = getelementptr inbounds i32*, i32** %65, i64 1
  store i32* @g_87, i32** %66, !tbaa !5
  %67 = getelementptr inbounds [5 x i32*], [5 x i32*]* %61, i64 1
  %68 = getelementptr inbounds [5 x i32*], [5 x i32*]* %67, i64 0, i64 0
  store i32* %l_101, i32** %68, !tbaa !5
  %69 = getelementptr inbounds i32*, i32** %68, i64 1
  store i32* @g_94, i32** %69, !tbaa !5
  %70 = getelementptr inbounds i32*, i32** %69, i64 1
  store i32* @g_94, i32** %70, !tbaa !5
  %71 = getelementptr inbounds i32*, i32** %70, i64 1
  store i32* @g_87, i32** %71, !tbaa !5
  %72 = getelementptr inbounds i32*, i32** %71, i64 1
  store i32* @g_94, i32** %72, !tbaa !5
  %73 = getelementptr inbounds [5 x i32*], [5 x i32*]* %67, i64 1
  %74 = getelementptr inbounds [5 x i32*], [5 x i32*]* %73, i64 0, i64 0
  store i32* %l_101, i32** %74, !tbaa !5
  %75 = getelementptr inbounds i32*, i32** %74, i64 1
  store i32* @g_87, i32** %75, !tbaa !5
  %76 = getelementptr inbounds i32*, i32** %75, i64 1
  store i32* null, i32** %76, !tbaa !5
  %77 = getelementptr inbounds i32*, i32** %76, i64 1
  store i32* @g_94, i32** %77, !tbaa !5
  %78 = getelementptr inbounds i32*, i32** %77, i64 1
  store i32* null, i32** %78, !tbaa !5
  %79 = getelementptr inbounds [5 x i32*], [5 x i32*]* %73, i64 1
  %80 = getelementptr inbounds [5 x i32*], [5 x i32*]* %79, i64 0, i64 0
  store i32* @g_87, i32** %80, !tbaa !5
  %81 = getelementptr inbounds i32*, i32** %80, i64 1
  store i32* null, i32** %81, !tbaa !5
  %82 = getelementptr inbounds i32*, i32** %81, i64 1
  store i32* @g_94, i32** %82, !tbaa !5
  %83 = getelementptr inbounds i32*, i32** %82, i64 1
  store i32* @g_94, i32** %83, !tbaa !5
  %84 = getelementptr inbounds i32*, i32** %83, i64 1
  store i32* null, i32** %84, !tbaa !5
  %85 = getelementptr inbounds [4 x [5 x i32*]], [4 x [5 x i32*]]* %60, i64 1
  %86 = getelementptr inbounds [4 x [5 x i32*]], [4 x [5 x i32*]]* %85, i64 0, i64 0
  %87 = getelementptr inbounds [5 x i32*], [5 x i32*]* %86, i64 0, i64 0
  store i32* @g_87, i32** %87, !tbaa !5
  %88 = getelementptr inbounds i32*, i32** %87, i64 1
  store i32* @g_94, i32** %88, !tbaa !5
  %89 = getelementptr inbounds i32*, i32** %88, i64 1
  store i32* %l_101, i32** %89, !tbaa !5
  %90 = getelementptr inbounds i32*, i32** %89, i64 1
  store i32* @g_94, i32** %90, !tbaa !5
  %91 = getelementptr inbounds i32*, i32** %90, i64 1
  store i32* @g_94, i32** %91, !tbaa !5
  %92 = getelementptr inbounds [5 x i32*], [5 x i32*]* %86, i64 1
  %93 = getelementptr inbounds [5 x i32*], [5 x i32*]* %92, i64 0, i64 0
  store i32* %l_101, i32** %93, !tbaa !5
  %94 = getelementptr inbounds i32*, i32** %93, i64 1
  store i32* null, i32** %94, !tbaa !5
  %95 = getelementptr inbounds i32*, i32** %94, i64 1
  store i32* null, i32** %95, !tbaa !5
  %96 = getelementptr inbounds i32*, i32** %95, i64 1
  store i32* @g_94, i32** %96, !tbaa !5
  %97 = getelementptr inbounds i32*, i32** %96, i64 1
  store i32* @g_87, i32** %97, !tbaa !5
  %98 = getelementptr inbounds [5 x i32*], [5 x i32*]* %92, i64 1
  %99 = getelementptr inbounds [5 x i32*], [5 x i32*]* %98, i64 0, i64 0
  store i32* @g_87, i32** %99, !tbaa !5
  %100 = getelementptr inbounds i32*, i32** %99, i64 1
  store i32* @g_87, i32** %100, !tbaa !5
  %101 = getelementptr inbounds i32*, i32** %100, i64 1
  store i32* null, i32** %101, !tbaa !5
  %102 = getelementptr inbounds i32*, i32** %101, i64 1
  store i32* @g_94, i32** %102, !tbaa !5
  %103 = getelementptr inbounds i32*, i32** %102, i64 1
  store i32* @g_87, i32** %103, !tbaa !5
  %104 = getelementptr inbounds [5 x i32*], [5 x i32*]* %98, i64 1
  %105 = getelementptr inbounds [5 x i32*], [5 x i32*]* %104, i64 0, i64 0
  store i32* %l_101, i32** %105, !tbaa !5
  %106 = getelementptr inbounds i32*, i32** %105, i64 1
  store i32* @g_94, i32** %106, !tbaa !5
  %107 = getelementptr inbounds i32*, i32** %106, i64 1
  store i32* null, i32** %107, !tbaa !5
  %108 = getelementptr inbounds i32*, i32** %107, i64 1
  store i32* @g_94, i32** %108, !tbaa !5
  %109 = getelementptr inbounds i32*, i32** %108, i64 1
  store i32* @g_94, i32** %109, !tbaa !5
  %110 = getelementptr inbounds [4 x [5 x i32*]], [4 x [5 x i32*]]* %85, i64 1
  %111 = getelementptr inbounds [4 x [5 x i32*]], [4 x [5 x i32*]]* %110, i64 0, i64 0
  %112 = getelementptr inbounds [5 x i32*], [5 x i32*]* %111, i64 0, i64 0
  store i32* @g_87, i32** %112, !tbaa !5
  %113 = getelementptr inbounds i32*, i32** %112, i64 1
  store i32* @g_87, i32** %113, !tbaa !5
  %114 = getelementptr inbounds i32*, i32** %113, i64 1
  store i32* null, i32** %114, !tbaa !5
  %115 = getelementptr inbounds i32*, i32** %114, i64 1
  store i32* @g_87, i32** %115, !tbaa !5
  %116 = getelementptr inbounds i32*, i32** %115, i64 1
  store i32* @g_87, i32** %116, !tbaa !5
  %117 = getelementptr inbounds [5 x i32*], [5 x i32*]* %111, i64 1
  %118 = getelementptr inbounds [5 x i32*], [5 x i32*]* %117, i64 0, i64 0
  store i32* @g_87, i32** %118, !tbaa !5
  %119 = getelementptr inbounds i32*, i32** %118, i64 1
  store i32* @g_87, i32** %119, !tbaa !5
  %120 = getelementptr inbounds i32*, i32** %119, i64 1
  store i32* %l_101, i32** %120, !tbaa !5
  %121 = getelementptr inbounds i32*, i32** %120, i64 1
  store i32* @g_94, i32** %121, !tbaa !5
  %122 = getelementptr inbounds i32*, i32** %121, i64 1
  store i32* @g_87, i32** %122, !tbaa !5
  %123 = getelementptr inbounds [5 x i32*], [5 x i32*]* %117, i64 1
  %124 = getelementptr inbounds [5 x i32*], [5 x i32*]* %123, i64 0, i64 0
  store i32* %l_101, i32** %124, !tbaa !5
  %125 = getelementptr inbounds i32*, i32** %124, i64 1
  store i32* @g_94, i32** %125, !tbaa !5
  %126 = getelementptr inbounds i32*, i32** %125, i64 1
  store i32* @g_94, i32** %126, !tbaa !5
  %127 = getelementptr inbounds i32*, i32** %126, i64 1
  store i32* @g_87, i32** %127, !tbaa !5
  %128 = getelementptr inbounds i32*, i32** %127, i64 1
  store i32* @g_94, i32** %128, !tbaa !5
  %129 = getelementptr inbounds [5 x i32*], [5 x i32*]* %123, i64 1
  %130 = getelementptr inbounds [5 x i32*], [5 x i32*]* %129, i64 0, i64 0
  store i32* %l_101, i32** %130, !tbaa !5
  %131 = getelementptr inbounds i32*, i32** %130, i64 1
  store i32* @g_87, i32** %131, !tbaa !5
  %132 = getelementptr inbounds i32*, i32** %131, i64 1
  store i32* null, i32** %132, !tbaa !5
  %133 = getelementptr inbounds i32*, i32** %132, i64 1
  store i32* @g_94, i32** %133, !tbaa !5
  %134 = getelementptr inbounds i32*, i32** %133, i64 1
  store i32* null, i32** %134, !tbaa !5
  %135 = getelementptr inbounds [4 x [5 x i32*]], [4 x [5 x i32*]]* %110, i64 1
  %136 = getelementptr inbounds [4 x [5 x i32*]], [4 x [5 x i32*]]* %135, i64 0, i64 0
  %137 = getelementptr inbounds [5 x i32*], [5 x i32*]* %136, i64 0, i64 0
  store i32* @g_87, i32** %137, !tbaa !5
  %138 = getelementptr inbounds i32*, i32** %137, i64 1
  store i32* null, i32** %138, !tbaa !5
  %139 = getelementptr inbounds i32*, i32** %138, i64 1
  store i32* @g_94, i32** %139, !tbaa !5
  %140 = getelementptr inbounds i32*, i32** %139, i64 1
  store i32* @g_94, i32** %140, !tbaa !5
  %141 = getelementptr inbounds i32*, i32** %140, i64 1
  store i32* null, i32** %141, !tbaa !5
  %142 = getelementptr inbounds [5 x i32*], [5 x i32*]* %136, i64 1
  %143 = getelementptr inbounds [5 x i32*], [5 x i32*]* %142, i64 0, i64 0
  store i32* @g_87, i32** %143, !tbaa !5
  %144 = getelementptr inbounds i32*, i32** %143, i64 1
  store i32* @g_94, i32** %144, !tbaa !5
  %145 = getelementptr inbounds i32*, i32** %144, i64 1
  store i32* %l_101, i32** %145, !tbaa !5
  %146 = getelementptr inbounds i32*, i32** %145, i64 1
  store i32* @g_94, i32** %146, !tbaa !5
  %147 = getelementptr inbounds i32*, i32** %146, i64 1
  store i32* @g_94, i32** %147, !tbaa !5
  %148 = getelementptr inbounds [5 x i32*], [5 x i32*]* %142, i64 1
  %149 = getelementptr inbounds [5 x i32*], [5 x i32*]* %148, i64 0, i64 0
  store i32* %l_101, i32** %149, !tbaa !5
  %150 = getelementptr inbounds i32*, i32** %149, i64 1
  store i32* null, i32** %150, !tbaa !5
  %151 = getelementptr inbounds i32*, i32** %150, i64 1
  store i32* null, i32** %151, !tbaa !5
  %152 = getelementptr inbounds i32*, i32** %151, i64 1
  store i32* @g_94, i32** %152, !tbaa !5
  %153 = getelementptr inbounds i32*, i32** %152, i64 1
  store i32* @g_87, i32** %153, !tbaa !5
  %154 = getelementptr inbounds [5 x i32*], [5 x i32*]* %148, i64 1
  %155 = getelementptr inbounds [5 x i32*], [5 x i32*]* %154, i64 0, i64 0
  store i32* @g_87, i32** %155, !tbaa !5
  %156 = getelementptr inbounds i32*, i32** %155, i64 1
  store i32* @g_87, i32** %156, !tbaa !5
  %157 = getelementptr inbounds i32*, i32** %156, i64 1
  store i32* null, i32** %157, !tbaa !5
  %158 = getelementptr inbounds i32*, i32** %157, i64 1
  store i32* @g_94, i32** %158, !tbaa !5
  %159 = getelementptr inbounds i32*, i32** %158, i64 1
  store i32* @g_87, i32** %159, !tbaa !5
  %160 = getelementptr inbounds [4 x [5 x i32*]], [4 x [5 x i32*]]* %135, i64 1
  %161 = getelementptr inbounds [4 x [5 x i32*]], [4 x [5 x i32*]]* %160, i64 0, i64 0
  %162 = getelementptr inbounds [5 x i32*], [5 x i32*]* %161, i64 0, i64 0
  store i32* %l_101, i32** %162, !tbaa !5
  %163 = getelementptr inbounds i32*, i32** %162, i64 1
  store i32* @g_94, i32** %163, !tbaa !5
  %164 = getelementptr inbounds i32*, i32** %163, i64 1
  store i32* null, i32** %164, !tbaa !5
  %165 = getelementptr inbounds i32*, i32** %164, i64 1
  store i32* @g_94, i32** %165, !tbaa !5
  %166 = getelementptr inbounds i32*, i32** %165, i64 1
  store i32* @g_94, i32** %166, !tbaa !5
  %167 = getelementptr inbounds [5 x i32*], [5 x i32*]* %161, i64 1
  %168 = getelementptr inbounds [5 x i32*], [5 x i32*]* %167, i64 0, i64 0
  store i32* @g_87, i32** %168, !tbaa !5
  %169 = getelementptr inbounds i32*, i32** %168, i64 1
  store i32* @g_87, i32** %169, !tbaa !5
  %170 = getelementptr inbounds i32*, i32** %169, i64 1
  store i32* null, i32** %170, !tbaa !5
  %171 = getelementptr inbounds i32*, i32** %170, i64 1
  store i32* @g_87, i32** %171, !tbaa !5
  %172 = getelementptr inbounds i32*, i32** %171, i64 1
  store i32* @g_87, i32** %172, !tbaa !5
  %173 = getelementptr inbounds [5 x i32*], [5 x i32*]* %167, i64 1
  %174 = getelementptr inbounds [5 x i32*], [5 x i32*]* %173, i64 0, i64 0
  store i32* @g_87, i32** %174, !tbaa !5
  %175 = getelementptr inbounds i32*, i32** %174, i64 1
  store i32* @g_87, i32** %175, !tbaa !5
  %176 = getelementptr inbounds i32*, i32** %175, i64 1
  store i32* %l_101, i32** %176, !tbaa !5
  %177 = getelementptr inbounds i32*, i32** %176, i64 1
  store i32* @g_94, i32** %177, !tbaa !5
  %178 = getelementptr inbounds i32*, i32** %177, i64 1
  store i32* @g_87, i32** %178, !tbaa !5
  %179 = getelementptr inbounds [5 x i32*], [5 x i32*]* %173, i64 1
  %180 = getelementptr inbounds [5 x i32*], [5 x i32*]* %179, i64 0, i64 0
  store i32* %l_101, i32** %180, !tbaa !5
  %181 = getelementptr inbounds i32*, i32** %180, i64 1
  store i32* @g_94, i32** %181, !tbaa !5
  %182 = getelementptr inbounds i32*, i32** %181, i64 1
  store i32* @g_94, i32** %182, !tbaa !5
  %183 = getelementptr inbounds i32*, i32** %182, i64 1
  store i32* @g_87, i32** %183, !tbaa !5
  %184 = getelementptr inbounds i32*, i32** %183, i64 1
  store i32* @g_94, i32** %184, !tbaa !5
  %185 = getelementptr inbounds [4 x [5 x i32*]], [4 x [5 x i32*]]* %160, i64 1
  %186 = getelementptr inbounds [4 x [5 x i32*]], [4 x [5 x i32*]]* %185, i64 0, i64 0
  %187 = getelementptr inbounds [5 x i32*], [5 x i32*]* %186, i64 0, i64 0
  store i32* %l_101, i32** %187, !tbaa !5
  %188 = getelementptr inbounds i32*, i32** %187, i64 1
  store i32* @g_87, i32** %188, !tbaa !5
  %189 = getelementptr inbounds i32*, i32** %188, i64 1
  store i32* null, i32** %189, !tbaa !5
  %190 = getelementptr inbounds i32*, i32** %189, i64 1
  store i32* @g_94, i32** %190, !tbaa !5
  %191 = getelementptr inbounds i32*, i32** %190, i64 1
  store i32* null, i32** %191, !tbaa !5
  %192 = getelementptr inbounds [5 x i32*], [5 x i32*]* %186, i64 1
  %193 = getelementptr inbounds [5 x i32*], [5 x i32*]* %192, i64 0, i64 0
  store i32* @g_87, i32** %193, !tbaa !5
  %194 = getelementptr inbounds i32*, i32** %193, i64 1
  store i32* null, i32** %194, !tbaa !5
  %195 = getelementptr inbounds i32*, i32** %194, i64 1
  store i32* @g_94, i32** %195, !tbaa !5
  %196 = getelementptr inbounds i32*, i32** %195, i64 1
  store i32* @g_94, i32** %196, !tbaa !5
  %197 = getelementptr inbounds i32*, i32** %196, i64 1
  store i32* null, i32** %197, !tbaa !5
  %198 = getelementptr inbounds [5 x i32*], [5 x i32*]* %192, i64 1
  %199 = getelementptr inbounds [5 x i32*], [5 x i32*]* %198, i64 0, i64 0
  store i32* @g_87, i32** %199, !tbaa !5
  %200 = getelementptr inbounds i32*, i32** %199, i64 1
  store i32* @g_94, i32** %200, !tbaa !5
  %201 = getelementptr inbounds i32*, i32** %200, i64 1
  store i32* %l_101, i32** %201, !tbaa !5
  %202 = getelementptr inbounds i32*, i32** %201, i64 1
  store i32* @g_94, i32** %202, !tbaa !5
  %203 = getelementptr inbounds i32*, i32** %202, i64 1
  store i32* @g_94, i32** %203, !tbaa !5
  %204 = getelementptr inbounds [5 x i32*], [5 x i32*]* %198, i64 1
  %205 = getelementptr inbounds [5 x i32*], [5 x i32*]* %204, i64 0, i64 0
  store i32* %l_101, i32** %205, !tbaa !5
  %206 = getelementptr inbounds i32*, i32** %205, i64 1
  store i32* null, i32** %206, !tbaa !5
  %207 = getelementptr inbounds i32*, i32** %206, i64 1
  store i32* null, i32** %207, !tbaa !5
  %208 = getelementptr inbounds i32*, i32** %207, i64 1
  store i32* @g_94, i32** %208, !tbaa !5
  %209 = getelementptr inbounds i32*, i32** %208, i64 1
  store i32* @g_87, i32** %209, !tbaa !5
  %210 = getelementptr inbounds [4 x [5 x i32*]], [4 x [5 x i32*]]* %185, i64 1
  %211 = getelementptr inbounds [4 x [5 x i32*]], [4 x [5 x i32*]]* %210, i64 0, i64 0
  %212 = getelementptr inbounds [5 x i32*], [5 x i32*]* %211, i64 0, i64 0
  store i32* @g_87, i32** %212, !tbaa !5
  %213 = getelementptr inbounds i32*, i32** %212, i64 1
  store i32* @g_87, i32** %213, !tbaa !5
  %214 = getelementptr inbounds i32*, i32** %213, i64 1
  store i32* null, i32** %214, !tbaa !5
  %215 = getelementptr inbounds i32*, i32** %214, i64 1
  store i32* @g_94, i32** %215, !tbaa !5
  %216 = getelementptr inbounds i32*, i32** %215, i64 1
  store i32* @g_87, i32** %216, !tbaa !5
  %217 = getelementptr inbounds [5 x i32*], [5 x i32*]* %211, i64 1
  %218 = getelementptr inbounds [5 x i32*], [5 x i32*]* %217, i64 0, i64 0
  store i32* %l_101, i32** %218, !tbaa !5
  %219 = getelementptr inbounds i32*, i32** %218, i64 1
  store i32* @g_94, i32** %219, !tbaa !5
  %220 = getelementptr inbounds i32*, i32** %219, i64 1
  store i32* null, i32** %220, !tbaa !5
  %221 = getelementptr inbounds i32*, i32** %220, i64 1
  store i32* @g_94, i32** %221, !tbaa !5
  %222 = getelementptr inbounds i32*, i32** %221, i64 1
  store i32* @g_94, i32** %222, !tbaa !5
  %223 = getelementptr inbounds [5 x i32*], [5 x i32*]* %217, i64 1
  %224 = getelementptr inbounds [5 x i32*], [5 x i32*]* %223, i64 0, i64 0
  store i32* @g_87, i32** %224, !tbaa !5
  %225 = getelementptr inbounds i32*, i32** %224, i64 1
  store i32* @g_87, i32** %225, !tbaa !5
  %226 = getelementptr inbounds i32*, i32** %225, i64 1
  store i32* null, i32** %226, !tbaa !5
  %227 = getelementptr inbounds i32*, i32** %226, i64 1
  store i32* @g_87, i32** %227, !tbaa !5
  %228 = getelementptr inbounds i32*, i32** %227, i64 1
  store i32* @g_87, i32** %228, !tbaa !5
  %229 = getelementptr inbounds [5 x i32*], [5 x i32*]* %223, i64 1
  %230 = getelementptr inbounds [5 x i32*], [5 x i32*]* %229, i64 0, i64 0
  store i32* @g_87, i32** %230, !tbaa !5
  %231 = getelementptr inbounds i32*, i32** %230, i64 1
  store i32* @g_87, i32** %231, !tbaa !5
  %232 = getelementptr inbounds i32*, i32** %231, i64 1
  store i32* %l_101, i32** %232, !tbaa !5
  %233 = getelementptr inbounds i32*, i32** %232, i64 1
  store i32* @g_94, i32** %233, !tbaa !5
  %234 = getelementptr inbounds i32*, i32** %233, i64 1
  store i32* @g_87, i32** %234, !tbaa !5
  %235 = getelementptr inbounds [4 x [5 x i32*]], [4 x [5 x i32*]]* %210, i64 1
  %236 = getelementptr inbounds [4 x [5 x i32*]], [4 x [5 x i32*]]* %235, i64 0, i64 0
  %237 = getelementptr inbounds [5 x i32*], [5 x i32*]* %236, i64 0, i64 0
  store i32* %l_101, i32** %237, !tbaa !5
  %238 = getelementptr inbounds i32*, i32** %237, i64 1
  store i32* @g_94, i32** %238, !tbaa !5
  %239 = getelementptr inbounds i32*, i32** %238, i64 1
  store i32* @g_94, i32** %239, !tbaa !5
  %240 = getelementptr inbounds i32*, i32** %239, i64 1
  store i32* @g_87, i32** %240, !tbaa !5
  %241 = getelementptr inbounds i32*, i32** %240, i64 1
  store i32* @g_94, i32** %241, !tbaa !5
  %242 = getelementptr inbounds [5 x i32*], [5 x i32*]* %236, i64 1
  %243 = getelementptr inbounds [5 x i32*], [5 x i32*]* %242, i64 0, i64 0
  store i32* %l_101, i32** %243, !tbaa !5
  %244 = getelementptr inbounds i32*, i32** %243, i64 1
  store i32* @g_87, i32** %244, !tbaa !5
  %245 = getelementptr inbounds i32*, i32** %244, i64 1
  store i32* null, i32** %245, !tbaa !5
  %246 = getelementptr inbounds i32*, i32** %245, i64 1
  store i32* @g_94, i32** %246, !tbaa !5
  %247 = getelementptr inbounds i32*, i32** %246, i64 1
  store i32* @g_94, i32** %247, !tbaa !5
  %248 = getelementptr inbounds [5 x i32*], [5 x i32*]* %242, i64 1
  %249 = getelementptr inbounds [5 x i32*], [5 x i32*]* %248, i64 0, i64 0
  store i32* @g_94, i32** %249, !tbaa !5
  %250 = getelementptr inbounds i32*, i32** %249, i64 1
  store i32* @g_94, i32** %250, !tbaa !5
  %251 = getelementptr inbounds i32*, i32** %250, i64 1
  store i32* null, i32** %251, !tbaa !5
  %252 = getelementptr inbounds i32*, i32** %251, i64 1
  store i32* null, i32** %252, !tbaa !5
  %253 = getelementptr inbounds i32*, i32** %252, i64 1
  store i32* @g_94, i32** %253, !tbaa !5
  %254 = getelementptr inbounds [5 x i32*], [5 x i32*]* %248, i64 1
  %255 = getelementptr inbounds [5 x i32*], [5 x i32*]* %254, i64 0, i64 0
  store i32* @g_94, i32** %255, !tbaa !5
  %256 = getelementptr inbounds i32*, i32** %255, i64 1
  store i32* null, i32** %256, !tbaa !5
  %257 = getelementptr inbounds i32*, i32** %256, i64 1
  store i32* @g_87, i32** %257, !tbaa !5
  %258 = getelementptr inbounds i32*, i32** %257, i64 1
  store i32* @g_94, i32** %258, !tbaa !5
  %259 = getelementptr inbounds i32*, i32** %258, i64 1
  store i32* %l_101, i32** %259, !tbaa !5
  %260 = getelementptr inbounds [4 x [5 x i32*]], [4 x [5 x i32*]]* %235, i64 1
  %261 = getelementptr inbounds [4 x [5 x i32*]], [4 x [5 x i32*]]* %260, i64 0, i64 0
  %262 = getelementptr inbounds [5 x i32*], [5 x i32*]* %261, i64 0, i64 0
  store i32* null, i32** %262, !tbaa !5
  %263 = getelementptr inbounds i32*, i32** %262, i64 1
  store i32* @g_94, i32** %263, !tbaa !5
  %264 = getelementptr inbounds i32*, i32** %263, i64 1
  store i32* @g_87, i32** %264, !tbaa !5
  %265 = getelementptr inbounds i32*, i32** %264, i64 1
  store i32* @g_94, i32** %265, !tbaa !5
  %266 = getelementptr inbounds i32*, i32** %265, i64 1
  store i32* @g_94, i32** %266, !tbaa !5
  %267 = getelementptr inbounds [5 x i32*], [5 x i32*]* %261, i64 1
  %268 = getelementptr inbounds [5 x i32*], [5 x i32*]* %267, i64 0, i64 0
  store i32* @g_94, i32** %268, !tbaa !5
  %269 = getelementptr inbounds i32*, i32** %268, i64 1
  store i32* @g_94, i32** %269, !tbaa !5
  %270 = getelementptr inbounds i32*, i32** %269, i64 1
  store i32* null, i32** %270, !tbaa !5
  %271 = getelementptr inbounds i32*, i32** %270, i64 1
  store i32* null, i32** %271, !tbaa !5
  %272 = getelementptr inbounds i32*, i32** %271, i64 1
  store i32* @g_94, i32** %272, !tbaa !5
  %273 = getelementptr inbounds [5 x i32*], [5 x i32*]* %267, i64 1
  %274 = getelementptr inbounds [5 x i32*], [5 x i32*]* %273, i64 0, i64 0
  store i32* null, i32** %274, !tbaa !5
  %275 = getelementptr inbounds i32*, i32** %274, i64 1
  store i32* null, i32** %275, !tbaa !5
  %276 = getelementptr inbounds i32*, i32** %275, i64 1
  store i32* null, i32** %276, !tbaa !5
  %277 = getelementptr inbounds i32*, i32** %276, i64 1
  store i32* @g_94, i32** %277, !tbaa !5
  %278 = getelementptr inbounds i32*, i32** %277, i64 1
  store i32* %l_101, i32** %278, !tbaa !5
  %279 = getelementptr inbounds [5 x i32*], [5 x i32*]* %273, i64 1
  %280 = getelementptr inbounds [5 x i32*], [5 x i32*]* %279, i64 0, i64 0
  store i32* @g_94, i32** %280, !tbaa !5
  %281 = getelementptr inbounds i32*, i32** %280, i64 1
  store i32* @g_94, i32** %281, !tbaa !5
  %282 = getelementptr inbounds i32*, i32** %281, i64 1
  store i32* @g_87, i32** %282, !tbaa !5
  %283 = getelementptr inbounds i32*, i32** %282, i64 1
  store i32* null, i32** %283, !tbaa !5
  %284 = getelementptr inbounds i32*, i32** %283, i64 1
  store i32* @g_94, i32** %284, !tbaa !5
  %285 = bitcast i32* %l_118 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %285) #1
  store i32 -1458850549, i32* %l_118, align 4, !tbaa !1
  %286 = bitcast i8** %l_122 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %286) #1
  store i8* @g_123, i8** %l_122, align 8, !tbaa !5
  %287 = bitcast i32* %l_124 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %287) #1
  store i32 282735835, i32* %l_124, align 4, !tbaa !1
  %288 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %288) #1
  %289 = bitcast i32* %j3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %289) #1
  %290 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %290) #1
  %291 = load i32, i32* @g_94, align 4, !tbaa !1
  %292 = add i32 %291, -1
  store i32 %292, i32* @g_94, align 4, !tbaa !1
  %293 = load i64*, i64** %l_97, align 8, !tbaa !5
  %294 = load i64**, i64*** %l_98, align 8, !tbaa !5
  store i64* %293, i64** %294, align 8, !tbaa !5
  %295 = icmp ne i64* %293, null
  br i1 %295, label %296, label %370

; <label>:296                                     ; preds = %57
  %297 = load i8, i8* %3, align 1, !tbaa !9
  %298 = sext i8 %297 to i64
  %299 = getelementptr inbounds [5 x i64], [5 x i64]* @g_23, i32 0, i64 %298
  %300 = load i64, i64* %299, align 8, !tbaa !7
  %301 = load i32, i32* %l_101, align 4, !tbaa !1
  store i32 %301, i32* %l_103, align 4, !tbaa !1
  %302 = sext i32 %301 to i64
  %303 = icmp ne i64 %300, %302
  %304 = zext i1 %303 to i32
  %305 = load i32, i32* @g_91, align 4, !tbaa !1
  store i32* null, i32** %l_117, align 8, !tbaa !5
  store i32 1, i32* %l_118, align 4, !tbaa !1
  %306 = load i32, i32* %l_121, align 4, !tbaa !1
  %307 = and i32 0, %306
  %308 = trunc i32 %307 to i8
  %309 = load i8, i8* %3, align 1, !tbaa !9
  %310 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %308, i8 zeroext %309)
  %311 = zext i8 %310 to i32
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %317

; <label>:313                                     ; preds = %296
  %314 = load i32*, i32** %4, align 8, !tbaa !5
  %315 = load i32, i32* %314, align 4, !tbaa !1
  %316 = icmp ne i32 %315, 0
  br label %317

; <label>:317                                     ; preds = %313, %296
  %318 = phi i1 [ false, %296 ], [ %316, %313 ]
  %319 = zext i1 %318 to i32
  %320 = trunc i32 %319 to i8
  %321 = load i32, i32* @g_91, align 4, !tbaa !1
  %322 = trunc i32 %321 to i8
  %323 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %320, i8 zeroext %322)
  %324 = zext i8 %323 to i32
  %325 = load i32, i32* %l_121, align 4, !tbaa !1
  %326 = and i32 %324, %325
  %327 = load i8*, i8** %l_122, align 8, !tbaa !5
  %328 = load i8, i8* %327, align 1, !tbaa !9
  %329 = sext i8 %328 to i32
  %330 = or i32 %329, %326
  %331 = trunc i32 %330 to i8
  store i8 %331, i8* %327, align 1, !tbaa !9
  %332 = call signext i8 @safe_rshift_func_int8_t_s_s(i8 signext %331, i32 3)
  %333 = sext i8 %332 to i64
  %334 = icmp ule i64 0, %333
  %335 = zext i1 %334 to i32
  %336 = trunc i32 %335 to i8
  %337 = call signext i8 @safe_sub_func_int8_t_s_s(i8 signext %336, i8 signext -89)
  %338 = sext i8 %337 to i64
  %339 = icmp sgt i64 %338, 0
  %340 = zext i1 %339 to i32
  %341 = trunc i32 %340 to i16
  %342 = load i32, i32* @g_25, align 4, !tbaa !1
  %343 = trunc i32 %342 to i16
  %344 = call signext i16 @safe_mod_func_int16_t_s_s(i16 signext %341, i16 signext %343)
  %345 = sext i16 %344 to i32
  %346 = load i32, i32* @g_94, align 4, !tbaa !1
  %347 = icmp ule i32 %345, %346
  %348 = zext i1 %347 to i32
  %349 = load i8, i8* %3, align 1, !tbaa !9
  %350 = sext i8 %349 to i32
  %351 = icmp sge i32 %348, %350
  %352 = zext i1 %351 to i32
  %353 = load i32, i32* @g_94, align 4, !tbaa !1
  %354 = icmp ule i32 %352, %353
  %355 = zext i1 %354 to i32
  %356 = trunc i32 %355 to i16
  %357 = load i8, i8* %3, align 1, !tbaa !9
  %358 = sext i8 %357 to i16
  %359 = call signext i16 @safe_mod_func_int16_t_s_s(i16 signext %356, i16 signext %358)
  %360 = sext i16 %359 to i32
  %361 = or i32 %304, %360
  %362 = trunc i32 %361 to i16
  %363 = load i8, i8* %3, align 1, !tbaa !9
  %364 = sext i8 %363 to i16
  %365 = call signext i16 @safe_sub_func_int16_t_s_s(i16 signext %362, i16 signext %364)
  %366 = sext i16 %365 to i32
  store i32 %366, i32* %l_124, align 4, !tbaa !1
  %367 = sext i32 %366 to i64
  %368 = load i64, i64* getelementptr inbounds ([9 x [6 x [2 x i64]]], [9 x [6 x [2 x i64]]]* @g_11, i32 0, i64 6, i64 3, i64 0), align 8, !tbaa !7
  %369 = icmp ult i64 %367, %368
  br label %370

; <label>:370                                     ; preds = %317, %57
  %371 = phi i1 [ false, %57 ], [ %369, %317 ]
  %372 = zext i1 %371 to i32
  %373 = sext i32 %372 to i64
  %374 = icmp sgt i64 %373, 1
  %375 = zext i1 %374 to i32
  store i32 %375, i32* @g_91, align 4, !tbaa !1
  store i32 0, i32* %l_121, align 4, !tbaa !1
  br label %376

; <label>:376                                     ; preds = %478, %370
  %377 = load i32, i32* %l_121, align 4, !tbaa !1
  %378 = icmp ule i32 %377, 0
  br i1 %378, label %379, label %481

; <label>:379                                     ; preds = %376
  %380 = bitcast i64**** %l_129 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %380) #1
  store i64*** %l_98, i64**** %l_129, align 8, !tbaa !5
  %381 = bitcast i64*** %l_130 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %381) #1
  store i64** null, i64*** %l_130, align 8, !tbaa !5
  %382 = bitcast [6 x [1 x i32]]* %l_135 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %382) #1
  %383 = bitcast i32*** %l_140 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %383) #1
  %384 = getelementptr inbounds [9 x [4 x [5 x i32*]]], [9 x [4 x [5 x i32*]]]* %l_102, i32 0, i64 5
  %385 = getelementptr inbounds [4 x [5 x i32*]], [4 x [5 x i32*]]* %384, i32 0, i64 2
  %386 = getelementptr inbounds [5 x i32*], [5 x i32*]* %385, i32 0, i64 4
  store i32** %386, i32*** %l_140, align 8, !tbaa !5
  %387 = bitcast i32* %i4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %387) #1
  %388 = bitcast i32* %j5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %388) #1
  store i32 0, i32* %i4, align 4, !tbaa !1
  br label %389

; <label>:389                                     ; preds = %407, %379
  %390 = load i32, i32* %i4, align 4, !tbaa !1
  %391 = icmp slt i32 %390, 6
  br i1 %391, label %392, label %410

; <label>:392                                     ; preds = %389
  store i32 0, i32* %j5, align 4, !tbaa !1
  br label %393

; <label>:393                                     ; preds = %403, %392
  %394 = load i32, i32* %j5, align 4, !tbaa !1
  %395 = icmp slt i32 %394, 1
  br i1 %395, label %396, label %406

; <label>:396                                     ; preds = %393
  %397 = load i32, i32* %j5, align 4, !tbaa !1
  %398 = sext i32 %397 to i64
  %399 = load i32, i32* %i4, align 4, !tbaa !1
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds [6 x [1 x i32]], [6 x [1 x i32]]* %l_135, i32 0, i64 %400
  %402 = getelementptr inbounds [1 x i32], [1 x i32]* %401, i32 0, i64 %398
  store i32 -1552853124, i32* %402, align 4, !tbaa !1
  br label %403

; <label>:403                                     ; preds = %396
  %404 = load i32, i32* %j5, align 4, !tbaa !1
  %405 = add nsw i32 %404, 1
  store i32 %405, i32* %j5, align 4, !tbaa !1
  br label %393

; <label>:406                                     ; preds = %393
  br label %407

; <label>:407                                     ; preds = %406
  %408 = load i32, i32* %i4, align 4, !tbaa !1
  %409 = add nsw i32 %408, 1
  store i32 %409, i32* %i4, align 4, !tbaa !1
  br label %389

; <label>:410                                     ; preds = %389
  %411 = load i32, i32* @g_25, align 4, !tbaa !1
  %412 = load i64, i64* getelementptr inbounds ([9 x [6 x [2 x i64]]], [9 x [6 x [2 x i64]]]* @g_11, i32 0, i64 8, i64 1, i64 0), align 8, !tbaa !7
  %413 = icmp ne i64 %412, 0
  br i1 %413, label %414, label %458

; <label>:414                                     ; preds = %410
  %415 = load i64**, i64*** %l_98, align 8, !tbaa !5
  %416 = load i64***, i64**** %l_129, align 8, !tbaa !5
  store i64** %415, i64*** %416, align 8, !tbaa !5
  %417 = load i64**, i64*** %l_130, align 8, !tbaa !5
  %418 = icmp eq i64** %415, %417
  %419 = zext i1 %418 to i32
  %420 = trunc i32 %419 to i8
  %421 = load i8, i8* %3, align 1, !tbaa !9
  %422 = sext i8 %421 to i16
  %423 = call signext i16 @safe_lshift_func_int16_t_s_u(i16 signext %422, i32 5)
  %424 = sext i16 %423 to i32
  %425 = getelementptr inbounds [6 x [1 x i32]], [6 x [1 x i32]]* %l_135, i32 0, i64 2
  %426 = getelementptr inbounds [1 x i32], [1 x i32]* %425, i32 0, i64 0
  %427 = load i32, i32* %426, align 4, !tbaa !1
  %428 = icmp slt i32 %424, %427
  %429 = zext i1 %428 to i32
  %430 = load i32, i32* @g_87, align 4, !tbaa !1
  %431 = zext i32 %430 to i64
  %432 = load i8, i8* %2, align 1, !tbaa !9
  %433 = zext i8 %432 to i64
  %434 = call i64 @safe_add_func_uint64_t_u_u(i64 %431, i64 %433)
  %435 = and i64 %434, 2303409714296473594
  %436 = load i64, i64* %l_138, align 8, !tbaa !7
  %437 = and i64 %435, %436
  %438 = load i32*, i32** %4, align 8, !tbaa !5
  %439 = load i32, i32* %438, align 4, !tbaa !1
  %440 = sext i32 %439 to i64
  %441 = icmp ult i64 %437, %440
  %442 = zext i1 %441 to i32
  %443 = sext i32 %442 to i64
  %444 = icmp sge i64 %443, 3
  %445 = zext i1 %444 to i32
  %446 = load i8, i8* %l_139, align 1, !tbaa !9
  %447 = load i32, i32* @g_25, align 4, !tbaa !1
  %448 = icmp sle i32 0, %447
  %449 = zext i1 %448 to i32
  %450 = icmp sgt i32 %429, %449
  %451 = zext i1 %450 to i32
  %452 = load i32**, i32*** %l_140, align 8, !tbaa !5
  store i32* %l_101, i32** %452, align 8, !tbaa !5
  %453 = icmp eq i32* %l_101, null
  %454 = zext i1 %453 to i32
  %455 = trunc i32 %454 to i8
  %456 = call signext i8 @safe_rshift_func_int8_t_s_s(i8 signext %455, i32 4)
  %457 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %420, i8 zeroext %456)
  br label %458

; <label>:458                                     ; preds = %414, %410
  %459 = phi i1 [ false, %410 ], [ false, %414 ]
  %460 = zext i1 %459 to i32
  %461 = getelementptr inbounds [6 x [1 x i32]], [6 x [1 x i32]]* %l_135, i32 0, i64 2
  %462 = getelementptr inbounds [1 x i32], [1 x i32]* %461, i32 0, i64 0
  %463 = load i32, i32* %462, align 4, !tbaa !1
  %464 = or i32 %460, %463
  %465 = trunc i32 %464 to i8
  %466 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @g_23, i32 0, i64 4), align 8, !tbaa !7
  %467 = trunc i64 %466 to i32
  %468 = call zeroext i8 @safe_rshift_func_uint8_t_u_u(i8 zeroext %465, i32 %467)
  %469 = zext i8 %468 to i32
  %470 = xor i32 %411, %469
  store i32 332695525, i32* %l_103, align 4, !tbaa !1
  %471 = load i64**, i64*** @g_142, align 8, !tbaa !5
  store i64** %471, i64*** %1
  store i32 1, i32* %5
  %472 = bitcast i32* %j5 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %472) #1
  %473 = bitcast i32* %i4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %473) #1
  %474 = bitcast i32*** %l_140 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %474) #1
  %475 = bitcast [6 x [1 x i32]]* %l_135 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %475) #1
  %476 = bitcast i64*** %l_130 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %476) #1
  %477 = bitcast i64**** %l_129 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %477) #1
  br label %482
                                                  ; No predecessors!
  %479 = load i32, i32* %l_121, align 4, !tbaa !1
  %480 = add i32 %479, 1
  store i32 %480, i32* %l_121, align 4, !tbaa !1
  br label %376

; <label>:481                                     ; preds = %376
  store i32 0, i32* %5
  br label %482

; <label>:482                                     ; preds = %481, %458
  %483 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %483) #1
  %484 = bitcast i32* %j3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %484) #1
  %485 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %485) #1
  %486 = bitcast i32* %l_124 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %486) #1
  %487 = bitcast i8** %l_122 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %487) #1
  %488 = bitcast i32* %l_118 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %488) #1
  %489 = bitcast [9 x [4 x [5 x i32*]]]* %l_102 to i8*
  call void @llvm.lifetime.end(i64 1440, i8* %489) #1
  %490 = bitcast i64*** %l_98 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %490) #1
  %cleanup.dest = load i32, i32* %5
  switch i32 %cleanup.dest, label %1112 [
    i32 0, label %491
  ]

; <label>:491                                     ; preds = %482
  br label %492

; <label>:492                                     ; preds = %491
  %493 = load i8, i8* %3, align 1, !tbaa !9
  %494 = sext i8 %493 to i32
  %495 = sub nsw i32 %494, 1
  %496 = trunc i32 %495 to i8
  store i8 %496, i8* %3, align 1, !tbaa !9
  br label %53

; <label>:497                                     ; preds = %53
  store i32 0, i32* %l_121, align 4, !tbaa !1
  br label %498

; <label>:498                                     ; preds = %1087, %497
  %499 = load i32, i32* %l_121, align 4, !tbaa !1
  %500 = icmp ult i32 %499, 13
  br i1 %500, label %501, label %1092

; <label>:501                                     ; preds = %498
  %502 = bitcast i32*** %l_146 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %502) #1
  %503 = getelementptr inbounds [7 x [1 x i32*]], [7 x [1 x i32*]]* %l_90, i32 0, i64 2
  %504 = getelementptr inbounds [1 x i32*], [1 x i32*]* %503, i32 0, i64 0
  store i32** %504, i32*** %l_146, align 8, !tbaa !5
  %505 = bitcast [1 x [2 x [2 x i32**]]]* %l_147 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %505) #1
  %506 = getelementptr inbounds [1 x [2 x [2 x i32**]]], [1 x [2 x [2 x i32**]]]* %l_147, i64 0, i64 0
  %507 = getelementptr inbounds [2 x [2 x i32**]], [2 x [2 x i32**]]* %506, i64 0, i64 0
  %508 = getelementptr inbounds [2 x i32**], [2 x i32**]* %507, i64 0, i64 0
  store i32** %l_117, i32*** %508, !tbaa !5
  %509 = getelementptr inbounds i32**, i32*** %508, i64 1
  store i32** %l_117, i32*** %509, !tbaa !5
  %510 = getelementptr inbounds [2 x i32**], [2 x i32**]* %507, i64 1
  %511 = getelementptr inbounds [2 x i32**], [2 x i32**]* %510, i64 0, i64 0
  store i32** %l_117, i32*** %511, !tbaa !5
  %512 = getelementptr inbounds i32**, i32*** %511, i64 1
  store i32** %l_117, i32*** %512, !tbaa !5
  %513 = bitcast i8** %l_157 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %513) #1
  store i8* %l_153, i8** %l_157, align 8, !tbaa !5
  %514 = bitcast i16** %l_173 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %514) #1
  store i16* @g_174, i16** %l_173, align 8, !tbaa !5
  %515 = bitcast i32* %i6 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %515) #1
  %516 = bitcast i32* %j7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %516) #1
  %517 = bitcast i32* %k8 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %517) #1
  %518 = load i32**, i32*** %l_146, align 8, !tbaa !5
  store i32* @g_91, i32** %518, align 8, !tbaa !5
  store i32* @g_91, i32** %l_148, align 8, !tbaa !5
  %519 = load i32**, i32*** %l_146, align 8, !tbaa !5
  store i32* null, i32** %519, align 8, !tbaa !5
  %520 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @g_23, i32 0, i64 4), align 8, !tbaa !7
  %521 = getelementptr inbounds [5 x i32], [5 x i32]* %l_152, i32 0, i64 4
  %522 = load i32, i32* %521, align 4, !tbaa !1
  %523 = trunc i32 %522 to i16
  %524 = call zeroext i16 @safe_div_func_uint16_t_u_u(i16 zeroext 1, i16 zeroext %523)
  %525 = zext i16 %524 to i32
  %526 = icmp eq i32 0, %525
  %527 = zext i1 %526 to i32
  %528 = load i8, i8* %l_153, align 1, !tbaa !9
  %529 = zext i8 %528 to i64
  %530 = icmp ult i64 0, %529
  %531 = zext i1 %530 to i32
  %532 = icmp sge i32 %527, %531
  %533 = zext i1 %532 to i32
  %534 = load i64**, i64*** @g_142, align 8, !tbaa !5
  %535 = load i64*, i64** %534, align 8, !tbaa !5
  %536 = icmp eq i64* %535, null
  %537 = zext i1 %536 to i32
  %538 = getelementptr inbounds [6 x i32], [6 x i32]* %l_154, i32 0, i64 5
  %539 = load i32, i32* %538, align 4, !tbaa !1
  %540 = icmp uge i32 %537, %539
  %541 = zext i1 %540 to i32
  %542 = load i32*, i32** %l_148, align 8, !tbaa !5
  %543 = load i32, i32* %542, align 4, !tbaa !1
  %544 = xor i32 %543, %541
  store i32 %544, i32* %542, align 4, !tbaa !1
  %545 = load i8, i8* %2, align 1, !tbaa !9
  %546 = zext i8 %545 to i32
  %547 = load i8*, i8** %l_157, align 8, !tbaa !5
  %548 = load i8, i8* %547, align 1, !tbaa !9
  %549 = add i8 %548, 1
  store i8 %549, i8* %547, align 1, !tbaa !9
  %550 = zext i8 %549 to i32
  %551 = load i32*, i32** %l_148, align 8, !tbaa !5
  %552 = load i32, i32* %551, align 4, !tbaa !1
  %553 = sext i32 %552 to i64
  %554 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @g_23, i32 0, i64 1), align 8, !tbaa !7
  %555 = trunc i64 %554 to i8
  %556 = load i32, i32* @g_25, align 4, !tbaa !1
  %557 = load i8, i8* @g_123, align 1, !tbaa !9
  %558 = sext i8 %557 to i32
  %559 = call i32 @safe_mod_func_uint32_t_u_u(i32 %556, i32 %558)
  %560 = call zeroext i8 @safe_lshift_func_uint8_t_u_u(i8 zeroext %555, i32 %559)
  %561 = zext i8 %560 to i64
  %562 = load i64, i64* %l_172, align 8, !tbaa !7
  %563 = load i8, i8* %2, align 1, !tbaa !9
  %564 = icmp ne i32** %4, null
  %565 = zext i1 %564 to i32
  %566 = sext i32 %565 to i64
  %567 = xor i64 0, %566
  %568 = icmp ne i64 %567, 0
  %569 = zext i1 %568 to i32
  %570 = sext i32 %569 to i64
  %571 = load i64, i64* getelementptr inbounds ([9 x [6 x [2 x i64]]], [9 x [6 x [2 x i64]]]* @g_11, i32 0, i64 8, i64 1, i64 0), align 8, !tbaa !7
  %572 = xor i64 %570, %571
  %573 = icmp ule i64 %572, 1
  %574 = zext i1 %573 to i32
  %575 = sext i32 %574 to i64
  %576 = call i64 @safe_add_func_uint64_t_u_u(i64 %561, i64 %575)
  %577 = trunc i64 %576 to i8
  %578 = load i8, i8* %2, align 1, !tbaa !9
  %579 = zext i8 %578 to i32
  %580 = call signext i8 @safe_rshift_func_int8_t_s_u(i8 signext %577, i32 %579)
  %581 = sext i8 %580 to i32
  %582 = load i8, i8* %3, align 1, !tbaa !9
  %583 = sext i8 %582 to i32
  %584 = icmp sgt i32 %581, %583
  %585 = zext i1 %584 to i32
  %586 = load i32*, i32** %4, align 8, !tbaa !5
  %587 = load i32, i32* %586, align 4, !tbaa !1
  %588 = or i32 %585, %587
  %589 = sext i32 %588 to i64
  %590 = call i64 @safe_div_func_int64_t_s_s(i64 %553, i64 %589)
  %591 = trunc i64 %590 to i16
  %592 = load i16*, i16** %l_173, align 8, !tbaa !5
  store i16 %591, i16* %592, align 2, !tbaa !10
  %593 = load i8, i8* %3, align 1, !tbaa !9
  %594 = sext i8 %593 to i16
  %595 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %591, i16 zeroext %594)
  %596 = zext i16 %595 to i32
  %597 = load i8, i8* %2, align 1, !tbaa !9
  %598 = zext i8 %597 to i32
  %599 = xor i32 %596, %598
  %600 = icmp sgt i32 %550, %599
  %601 = zext i1 %600 to i32
  %602 = or i32 %546, %601
  %603 = icmp ne i32 %602, 0
  br i1 %603, label %604, label %606

; <label>:604                                     ; preds = %501
  %605 = load i64**, i64*** %l_175, align 8, !tbaa !5
  store i64** %605, i64*** %1
  store i32 1, i32* %5
  br label %1078

; <label>:606                                     ; preds = %501
  call void @llvm.lifetime.start(i64 1, i8* %l_209) #1
  store i8 114, i8* %l_209, align 1, !tbaa !9
  %607 = bitcast i32** %l_214 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %607) #1
  store i32* null, i32** %l_214, align 8, !tbaa !5
  %608 = bitcast i32*** %l_213 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %608) #1
  store i32** %l_214, i32*** %l_213, align 8, !tbaa !5
  %609 = bitcast [5 x [8 x [4 x i64*]]]* %l_221 to i8*
  call void @llvm.lifetime.start(i64 1280, i8* %609) #1
  %610 = getelementptr inbounds [5 x [8 x [4 x i64*]]], [5 x [8 x [4 x i64*]]]* %l_221, i64 0, i64 0
  %611 = getelementptr inbounds [8 x [4 x i64*]], [8 x [4 x i64*]]* %610, i64 0, i64 0
  %612 = getelementptr inbounds [4 x i64*], [4 x i64*]* %611, i64 0, i64 0
  store i64* %l_138, i64** %612, !tbaa !5
  %613 = getelementptr inbounds i64*, i64** %612, i64 1
  store i64* %l_172, i64** %613, !tbaa !5
  %614 = getelementptr inbounds i64*, i64** %613, i64 1
  store i64* %l_138, i64** %614, !tbaa !5
  %615 = getelementptr inbounds i64*, i64** %614, i64 1
  store i64* null, i64** %615, !tbaa !5
  %616 = getelementptr inbounds [4 x i64*], [4 x i64*]* %611, i64 1
  %617 = getelementptr inbounds [4 x i64*], [4 x i64*]* %616, i64 0, i64 0
  store i64* %l_172, i64** %617, !tbaa !5
  %618 = getelementptr inbounds i64*, i64** %617, i64 1
  store i64* %l_138, i64** %618, !tbaa !5
  %619 = getelementptr inbounds i64*, i64** %618, i64 1
  store i64* null, i64** %619, !tbaa !5
  %620 = getelementptr inbounds i64*, i64** %619, i64 1
  store i64* %l_172, i64** %620, !tbaa !5
  %621 = getelementptr inbounds [4 x i64*], [4 x i64*]* %616, i64 1
  %622 = getelementptr inbounds [4 x i64*], [4 x i64*]* %621, i64 0, i64 0
  store i64* %l_172, i64** %622, !tbaa !5
  %623 = getelementptr inbounds i64*, i64** %622, i64 1
  store i64* %l_172, i64** %623, !tbaa !5
  %624 = getelementptr inbounds i64*, i64** %623, i64 1
  store i64* null, i64** %624, !tbaa !5
  %625 = getelementptr inbounds i64*, i64** %624, i64 1
  store i64* %l_172, i64** %625, !tbaa !5
  %626 = getelementptr inbounds [4 x i64*], [4 x i64*]* %621, i64 1
  %627 = getelementptr inbounds [4 x i64*], [4 x i64*]* %626, i64 0, i64 0
  store i64* %l_138, i64** %627, !tbaa !5
  %628 = getelementptr inbounds i64*, i64** %627, i64 1
  store i64* null, i64** %628, !tbaa !5
  %629 = getelementptr inbounds i64*, i64** %628, i64 1
  store i64* %l_172, i64** %629, !tbaa !5
  %630 = getelementptr inbounds i64*, i64** %629, i64 1
  store i64* %l_138, i64** %630, !tbaa !5
  %631 = getelementptr inbounds [4 x i64*], [4 x i64*]* %626, i64 1
  %632 = getelementptr inbounds [4 x i64*], [4 x i64*]* %631, i64 0, i64 0
  store i64* %l_172, i64** %632, !tbaa !5
  %633 = getelementptr inbounds i64*, i64** %632, i64 1
  store i64* %l_138, i64** %633, !tbaa !5
  %634 = getelementptr inbounds i64*, i64** %633, i64 1
  store i64* %l_172, i64** %634, !tbaa !5
  %635 = getelementptr inbounds i64*, i64** %634, i64 1
  store i64* %l_172, i64** %635, !tbaa !5
  %636 = getelementptr inbounds [4 x i64*], [4 x i64*]* %631, i64 1
  %637 = getelementptr inbounds [4 x i64*], [4 x i64*]* %636, i64 0, i64 0
  store i64* null, i64** %637, !tbaa !5
  %638 = getelementptr inbounds i64*, i64** %637, i64 1
  store i64* %l_172, i64** %638, !tbaa !5
  %639 = getelementptr inbounds i64*, i64** %638, i64 1
  store i64* %l_172, i64** %639, !tbaa !5
  %640 = getelementptr inbounds i64*, i64** %639, i64 1
  store i64* %l_172, i64** %640, !tbaa !5
  %641 = getelementptr inbounds [4 x i64*], [4 x i64*]* %636, i64 1
  %642 = getelementptr inbounds [4 x i64*], [4 x i64*]* %641, i64 0, i64 0
  store i64* %l_172, i64** %642, !tbaa !5
  %643 = getelementptr inbounds i64*, i64** %642, i64 1
  store i64* %l_172, i64** %643, !tbaa !5
  %644 = getelementptr inbounds i64*, i64** %643, i64 1
  store i64* %l_172, i64** %644, !tbaa !5
  %645 = getelementptr inbounds i64*, i64** %644, i64 1
  store i64* %l_138, i64** %645, !tbaa !5
  %646 = getelementptr inbounds [4 x i64*], [4 x i64*]* %641, i64 1
  %647 = getelementptr inbounds [4 x i64*], [4 x i64*]* %646, i64 0, i64 0
  store i64* %l_172, i64** %647, !tbaa !5
  %648 = getelementptr inbounds i64*, i64** %647, i64 1
  store i64* %l_138, i64** %648, !tbaa !5
  %649 = getelementptr inbounds i64*, i64** %648, i64 1
  store i64* %l_172, i64** %649, !tbaa !5
  %650 = getelementptr inbounds i64*, i64** %649, i64 1
  store i64* %l_172, i64** %650, !tbaa !5
  %651 = getelementptr inbounds [8 x [4 x i64*]], [8 x [4 x i64*]]* %610, i64 1
  %652 = getelementptr inbounds [8 x [4 x i64*]], [8 x [4 x i64*]]* %651, i64 0, i64 0
  %653 = getelementptr inbounds [4 x i64*], [4 x i64*]* %652, i64 0, i64 0
  store i64* %l_172, i64** %653, !tbaa !5
  %654 = getelementptr inbounds i64*, i64** %653, i64 1
  store i64* %l_138, i64** %654, !tbaa !5
  %655 = getelementptr inbounds i64*, i64** %654, i64 1
  store i64* %l_138, i64** %655, !tbaa !5
  %656 = getelementptr inbounds i64*, i64** %655, i64 1
  store i64* %l_172, i64** %656, !tbaa !5
  %657 = getelementptr inbounds [4 x i64*], [4 x i64*]* %652, i64 1
  %658 = getelementptr inbounds [4 x i64*], [4 x i64*]* %657, i64 0, i64 0
  store i64* %l_172, i64** %658, !tbaa !5
  %659 = getelementptr inbounds i64*, i64** %658, i64 1
  store i64* %l_138, i64** %659, !tbaa !5
  %660 = getelementptr inbounds i64*, i64** %659, i64 1
  store i64* %l_172, i64** %660, !tbaa !5
  %661 = getelementptr inbounds i64*, i64** %660, i64 1
  store i64* %l_172, i64** %661, !tbaa !5
  %662 = getelementptr inbounds [4 x i64*], [4 x i64*]* %657, i64 1
  %663 = getelementptr inbounds [4 x i64*], [4 x i64*]* %662, i64 0, i64 0
  store i64* %l_138, i64** %663, !tbaa !5
  %664 = getelementptr inbounds i64*, i64** %663, i64 1
  store i64* %l_138, i64** %664, !tbaa !5
  %665 = getelementptr inbounds i64*, i64** %664, i64 1
  store i64* %l_172, i64** %665, !tbaa !5
  %666 = getelementptr inbounds i64*, i64** %665, i64 1
  store i64* %l_138, i64** %666, !tbaa !5
  %667 = getelementptr inbounds [4 x i64*], [4 x i64*]* %662, i64 1
  %668 = getelementptr inbounds [4 x i64*], [4 x i64*]* %667, i64 0, i64 0
  store i64* null, i64** %668, !tbaa !5
  %669 = getelementptr inbounds i64*, i64** %668, i64 1
  store i64* %l_172, i64** %669, !tbaa !5
  %670 = getelementptr inbounds i64*, i64** %669, i64 1
  store i64* %l_138, i64** %670, !tbaa !5
  %671 = getelementptr inbounds i64*, i64** %670, i64 1
  store i64* %l_172, i64** %671, !tbaa !5
  %672 = getelementptr inbounds [4 x i64*], [4 x i64*]* %667, i64 1
  %673 = getelementptr inbounds [4 x i64*], [4 x i64*]* %672, i64 0, i64 0
  store i64* %l_172, i64** %673, !tbaa !5
  %674 = getelementptr inbounds i64*, i64** %673, i64 1
  store i64* %l_172, i64** %674, !tbaa !5
  %675 = getelementptr inbounds i64*, i64** %674, i64 1
  store i64* %l_138, i64** %675, !tbaa !5
  %676 = getelementptr inbounds i64*, i64** %675, i64 1
  store i64* %l_172, i64** %676, !tbaa !5
  %677 = getelementptr inbounds [4 x i64*], [4 x i64*]* %672, i64 1
  %678 = getelementptr inbounds [4 x i64*], [4 x i64*]* %677, i64 0, i64 0
  store i64* %l_172, i64** %678, !tbaa !5
  %679 = getelementptr inbounds i64*, i64** %678, i64 1
  store i64* %l_138, i64** %679, !tbaa !5
  %680 = getelementptr inbounds i64*, i64** %679, i64 1
  store i64* %l_172, i64** %680, !tbaa !5
  %681 = getelementptr inbounds i64*, i64** %680, i64 1
  store i64* %l_138, i64** %681, !tbaa !5
  %682 = getelementptr inbounds [4 x i64*], [4 x i64*]* %677, i64 1
  %683 = getelementptr inbounds [4 x i64*], [4 x i64*]* %682, i64 0, i64 0
  store i64* null, i64** %683, !tbaa !5
  %684 = getelementptr inbounds i64*, i64** %683, i64 1
  store i64* null, i64** %684, !tbaa !5
  %685 = getelementptr inbounds i64*, i64** %684, i64 1
  store i64* %l_172, i64** %685, !tbaa !5
  %686 = getelementptr inbounds i64*, i64** %685, i64 1
  store i64* %l_172, i64** %686, !tbaa !5
  %687 = getelementptr inbounds [4 x i64*], [4 x i64*]* %682, i64 1
  %688 = getelementptr inbounds [4 x i64*], [4 x i64*]* %687, i64 0, i64 0
  store i64* %l_172, i64** %688, !tbaa !5
  %689 = getelementptr inbounds i64*, i64** %688, i64 1
  store i64* %l_172, i64** %689, !tbaa !5
  %690 = getelementptr inbounds i64*, i64** %689, i64 1
  store i64* %l_172, i64** %690, !tbaa !5
  %691 = getelementptr inbounds i64*, i64** %690, i64 1
  store i64* %l_172, i64** %691, !tbaa !5
  %692 = getelementptr inbounds [8 x [4 x i64*]], [8 x [4 x i64*]]* %651, i64 1
  %693 = getelementptr inbounds [8 x [4 x i64*]], [8 x [4 x i64*]]* %692, i64 0, i64 0
  %694 = getelementptr inbounds [4 x i64*], [4 x i64*]* %693, i64 0, i64 0
  store i64* %l_138, i64** %694, !tbaa !5
  %695 = getelementptr inbounds i64*, i64** %694, i64 1
  store i64* %l_138, i64** %695, !tbaa !5
  %696 = getelementptr inbounds i64*, i64** %695, i64 1
  store i64* %l_172, i64** %696, !tbaa !5
  %697 = getelementptr inbounds i64*, i64** %696, i64 1
  store i64* null, i64** %697, !tbaa !5
  %698 = getelementptr inbounds [4 x i64*], [4 x i64*]* %693, i64 1
  %699 = getelementptr inbounds [4 x i64*], [4 x i64*]* %698, i64 0, i64 0
  store i64* %l_138, i64** %699, !tbaa !5
  %700 = getelementptr inbounds i64*, i64** %699, i64 1
  store i64* %l_172, i64** %700, !tbaa !5
  %701 = getelementptr inbounds i64*, i64** %700, i64 1
  store i64* %l_172, i64** %701, !tbaa !5
  %702 = getelementptr inbounds i64*, i64** %701, i64 1
  store i64* %l_172, i64** %702, !tbaa !5
  %703 = getelementptr inbounds [4 x i64*], [4 x i64*]* %698, i64 1
  %704 = getelementptr inbounds [4 x i64*], [4 x i64*]* %703, i64 0, i64 0
  store i64* %l_172, i64** %704, !tbaa !5
  %705 = getelementptr inbounds i64*, i64** %704, i64 1
  store i64* %l_172, i64** %705, !tbaa !5
  %706 = getelementptr inbounds i64*, i64** %705, i64 1
  store i64* null, i64** %706, !tbaa !5
  %707 = getelementptr inbounds i64*, i64** %706, i64 1
  store i64* %l_138, i64** %707, !tbaa !5
  %708 = getelementptr inbounds [4 x i64*], [4 x i64*]* %703, i64 1
  %709 = getelementptr inbounds [4 x i64*], [4 x i64*]* %708, i64 0, i64 0
  store i64* %l_172, i64** %709, !tbaa !5
  %710 = getelementptr inbounds i64*, i64** %709, i64 1
  store i64* %l_172, i64** %710, !tbaa !5
  %711 = getelementptr inbounds i64*, i64** %710, i64 1
  store i64* %l_172, i64** %711, !tbaa !5
  %712 = getelementptr inbounds i64*, i64** %711, i64 1
  store i64* %l_172, i64** %712, !tbaa !5
  %713 = getelementptr inbounds [4 x i64*], [4 x i64*]* %708, i64 1
  %714 = getelementptr inbounds [4 x i64*], [4 x i64*]* %713, i64 0, i64 0
  store i64* %l_172, i64** %714, !tbaa !5
  %715 = getelementptr inbounds i64*, i64** %714, i64 1
  store i64* null, i64** %715, !tbaa !5
  %716 = getelementptr inbounds i64*, i64** %715, i64 1
  store i64* %l_138, i64** %716, !tbaa !5
  %717 = getelementptr inbounds i64*, i64** %716, i64 1
  store i64* %l_138, i64** %717, !tbaa !5
  %718 = getelementptr inbounds [4 x i64*], [4 x i64*]* %713, i64 1
  %719 = getelementptr inbounds [4 x i64*], [4 x i64*]* %718, i64 0, i64 0
  store i64* %l_172, i64** %719, !tbaa !5
  %720 = getelementptr inbounds i64*, i64** %719, i64 1
  store i64* %l_138, i64** %720, !tbaa !5
  %721 = getelementptr inbounds i64*, i64** %720, i64 1
  store i64* %l_172, i64** %721, !tbaa !5
  %722 = getelementptr inbounds i64*, i64** %721, i64 1
  store i64* null, i64** %722, !tbaa !5
  %723 = getelementptr inbounds [4 x i64*], [4 x i64*]* %718, i64 1
  %724 = getelementptr inbounds [4 x i64*], [4 x i64*]* %723, i64 0, i64 0
  store i64* %l_172, i64** %724, !tbaa !5
  %725 = getelementptr inbounds i64*, i64** %724, i64 1
  store i64* null, i64** %725, !tbaa !5
  %726 = getelementptr inbounds i64*, i64** %725, i64 1
  store i64* %l_172, i64** %726, !tbaa !5
  %727 = getelementptr inbounds i64*, i64** %726, i64 1
  store i64* %l_138, i64** %727, !tbaa !5
  %728 = getelementptr inbounds [4 x i64*], [4 x i64*]* %723, i64 1
  %729 = getelementptr inbounds [4 x i64*], [4 x i64*]* %728, i64 0, i64 0
  store i64* %l_172, i64** %729, !tbaa !5
  %730 = getelementptr inbounds i64*, i64** %729, i64 1
  store i64* %l_138, i64** %730, !tbaa !5
  %731 = getelementptr inbounds i64*, i64** %730, i64 1
  store i64* %l_138, i64** %731, !tbaa !5
  %732 = getelementptr inbounds i64*, i64** %731, i64 1
  store i64* %l_138, i64** %732, !tbaa !5
  %733 = getelementptr inbounds [8 x [4 x i64*]], [8 x [4 x i64*]]* %692, i64 1
  %734 = getelementptr inbounds [8 x [4 x i64*]], [8 x [4 x i64*]]* %733, i64 0, i64 0
  %735 = getelementptr inbounds [4 x i64*], [4 x i64*]* %734, i64 0, i64 0
  store i64* %l_172, i64** %735, !tbaa !5
  %736 = getelementptr inbounds i64*, i64** %735, i64 1
  store i64* %l_172, i64** %736, !tbaa !5
  %737 = getelementptr inbounds i64*, i64** %736, i64 1
  store i64* %l_172, i64** %737, !tbaa !5
  %738 = getelementptr inbounds i64*, i64** %737, i64 1
  store i64* %l_172, i64** %738, !tbaa !5
  %739 = getelementptr inbounds [4 x i64*], [4 x i64*]* %734, i64 1
  %740 = getelementptr inbounds [4 x i64*], [4 x i64*]* %739, i64 0, i64 0
  store i64* %l_172, i64** %740, !tbaa !5
  %741 = getelementptr inbounds i64*, i64** %740, i64 1
  store i64* %l_172, i64** %741, !tbaa !5
  %742 = getelementptr inbounds i64*, i64** %741, i64 1
  store i64* null, i64** %742, !tbaa !5
  %743 = getelementptr inbounds i64*, i64** %742, i64 1
  store i64* %l_138, i64** %743, !tbaa !5
  %744 = getelementptr inbounds [4 x i64*], [4 x i64*]* %739, i64 1
  %745 = getelementptr inbounds [4 x i64*], [4 x i64*]* %744, i64 0, i64 0
  store i64* %l_172, i64** %745, !tbaa !5
  %746 = getelementptr inbounds i64*, i64** %745, i64 1
  store i64* %l_138, i64** %746, !tbaa !5
  %747 = getelementptr inbounds i64*, i64** %746, i64 1
  store i64* %l_172, i64** %747, !tbaa !5
  %748 = getelementptr inbounds i64*, i64** %747, i64 1
  store i64* %l_138, i64** %748, !tbaa !5
  %749 = getelementptr inbounds [4 x i64*], [4 x i64*]* %744, i64 1
  %750 = getelementptr inbounds [4 x i64*], [4 x i64*]* %749, i64 0, i64 0
  store i64* %l_138, i64** %750, !tbaa !5
  %751 = getelementptr inbounds i64*, i64** %750, i64 1
  store i64* %l_172, i64** %751, !tbaa !5
  %752 = getelementptr inbounds i64*, i64** %751, i64 1
  store i64* %l_172, i64** %752, !tbaa !5
  %753 = getelementptr inbounds i64*, i64** %752, i64 1
  store i64* %l_172, i64** %753, !tbaa !5
  %754 = getelementptr inbounds [4 x i64*], [4 x i64*]* %749, i64 1
  %755 = getelementptr inbounds [4 x i64*], [4 x i64*]* %754, i64 0, i64 0
  store i64* %l_138, i64** %755, !tbaa !5
  %756 = getelementptr inbounds i64*, i64** %755, i64 1
  store i64* %l_172, i64** %756, !tbaa !5
  %757 = getelementptr inbounds i64*, i64** %756, i64 1
  store i64* %l_172, i64** %757, !tbaa !5
  %758 = getelementptr inbounds i64*, i64** %757, i64 1
  store i64* null, i64** %758, !tbaa !5
  %759 = getelementptr inbounds [4 x i64*], [4 x i64*]* %754, i64 1
  %760 = getelementptr inbounds [4 x i64*], [4 x i64*]* %759, i64 0, i64 0
  store i64* %l_172, i64** %760, !tbaa !5
  %761 = getelementptr inbounds i64*, i64** %760, i64 1
  store i64* %l_172, i64** %761, !tbaa !5
  %762 = getelementptr inbounds i64*, i64** %761, i64 1
  store i64* %l_172, i64** %762, !tbaa !5
  %763 = getelementptr inbounds i64*, i64** %762, i64 1
  store i64* null, i64** %763, !tbaa !5
  %764 = getelementptr inbounds [4 x i64*], [4 x i64*]* %759, i64 1
  %765 = getelementptr inbounds [4 x i64*], [4 x i64*]* %764, i64 0, i64 0
  store i64* null, i64** %765, !tbaa !5
  %766 = getelementptr inbounds i64*, i64** %765, i64 1
  store i64* %l_172, i64** %766, !tbaa !5
  %767 = getelementptr inbounds i64*, i64** %766, i64 1
  store i64* %l_172, i64** %767, !tbaa !5
  %768 = getelementptr inbounds i64*, i64** %767, i64 1
  store i64* null, i64** %768, !tbaa !5
  %769 = getelementptr inbounds [4 x i64*], [4 x i64*]* %764, i64 1
  %770 = getelementptr inbounds [4 x i64*], [4 x i64*]* %769, i64 0, i64 0
  store i64* %l_172, i64** %770, !tbaa !5
  %771 = getelementptr inbounds i64*, i64** %770, i64 1
  store i64* %l_138, i64** %771, !tbaa !5
  %772 = getelementptr inbounds i64*, i64** %771, i64 1
  store i64* %l_138, i64** %772, !tbaa !5
  %773 = getelementptr inbounds i64*, i64** %772, i64 1
  store i64* %l_172, i64** %773, !tbaa !5
  %774 = getelementptr inbounds [8 x [4 x i64*]], [8 x [4 x i64*]]* %733, i64 1
  %775 = getelementptr inbounds [8 x [4 x i64*]], [8 x [4 x i64*]]* %774, i64 0, i64 0
  %776 = getelementptr inbounds [4 x i64*], [4 x i64*]* %775, i64 0, i64 0
  store i64* %l_172, i64** %776, !tbaa !5
  %777 = getelementptr inbounds i64*, i64** %776, i64 1
  store i64* %l_138, i64** %777, !tbaa !5
  %778 = getelementptr inbounds i64*, i64** %777, i64 1
  store i64* %l_138, i64** %778, !tbaa !5
  %779 = getelementptr inbounds i64*, i64** %778, i64 1
  store i64* %l_172, i64** %779, !tbaa !5
  %780 = getelementptr inbounds [4 x i64*], [4 x i64*]* %775, i64 1
  %781 = getelementptr inbounds [4 x i64*], [4 x i64*]* %780, i64 0, i64 0
  store i64* null, i64** %781, !tbaa !5
  %782 = getelementptr inbounds i64*, i64** %781, i64 1
  store i64* %l_172, i64** %782, !tbaa !5
  %783 = getelementptr inbounds i64*, i64** %782, i64 1
  store i64* %l_172, i64** %783, !tbaa !5
  %784 = getelementptr inbounds i64*, i64** %783, i64 1
  store i64* %l_138, i64** %784, !tbaa !5
  %785 = getelementptr inbounds [4 x i64*], [4 x i64*]* %780, i64 1
  %786 = getelementptr inbounds [4 x i64*], [4 x i64*]* %785, i64 0, i64 0
  store i64* %l_138, i64** %786, !tbaa !5
  %787 = getelementptr inbounds i64*, i64** %786, i64 1
  store i64* null, i64** %787, !tbaa !5
  %788 = getelementptr inbounds i64*, i64** %787, i64 1
  store i64* %l_172, i64** %788, !tbaa !5
  %789 = getelementptr inbounds i64*, i64** %788, i64 1
  store i64* %l_138, i64** %789, !tbaa !5
  %790 = getelementptr inbounds [4 x i64*], [4 x i64*]* %785, i64 1
  %791 = getelementptr inbounds [4 x i64*], [4 x i64*]* %790, i64 0, i64 0
  store i64* %l_172, i64** %791, !tbaa !5
  %792 = getelementptr inbounds i64*, i64** %791, i64 1
  store i64* %l_138, i64** %792, !tbaa !5
  %793 = getelementptr inbounds i64*, i64** %792, i64 1
  store i64* %l_138, i64** %793, !tbaa !5
  %794 = getelementptr inbounds i64*, i64** %793, i64 1
  store i64* %l_138, i64** %794, !tbaa !5
  %795 = getelementptr inbounds [4 x i64*], [4 x i64*]* %790, i64 1
  %796 = getelementptr inbounds [4 x i64*], [4 x i64*]* %795, i64 0, i64 0
  store i64* %l_172, i64** %796, !tbaa !5
  %797 = getelementptr inbounds i64*, i64** %796, i64 1
  store i64* null, i64** %797, !tbaa !5
  %798 = getelementptr inbounds i64*, i64** %797, i64 1
  store i64* %l_172, i64** %798, !tbaa !5
  %799 = getelementptr inbounds i64*, i64** %798, i64 1
  store i64* %l_138, i64** %799, !tbaa !5
  %800 = getelementptr inbounds [4 x i64*], [4 x i64*]* %795, i64 1
  %801 = getelementptr inbounds [4 x i64*], [4 x i64*]* %800, i64 0, i64 0
  store i64* %l_172, i64** %801, !tbaa !5
  %802 = getelementptr inbounds i64*, i64** %801, i64 1
  store i64* %l_172, i64** %802, !tbaa !5
  %803 = getelementptr inbounds i64*, i64** %802, i64 1
  store i64* %l_172, i64** %803, !tbaa !5
  %804 = getelementptr inbounds i64*, i64** %803, i64 1
  store i64* %l_172, i64** %804, !tbaa !5
  %805 = getelementptr inbounds [4 x i64*], [4 x i64*]* %800, i64 1
  %806 = getelementptr inbounds [4 x i64*], [4 x i64*]* %805, i64 0, i64 0
  store i64* %l_172, i64** %806, !tbaa !5
  %807 = getelementptr inbounds i64*, i64** %806, i64 1
  store i64* %l_138, i64** %807, !tbaa !5
  %808 = getelementptr inbounds i64*, i64** %807, i64 1
  store i64* %l_172, i64** %808, !tbaa !5
  %809 = getelementptr inbounds i64*, i64** %808, i64 1
  store i64* %l_172, i64** %809, !tbaa !5
  %810 = getelementptr inbounds [4 x i64*], [4 x i64*]* %805, i64 1
  %811 = getelementptr inbounds [4 x i64*], [4 x i64*]* %810, i64 0, i64 0
  store i64* %l_172, i64** %811, !tbaa !5
  %812 = getelementptr inbounds i64*, i64** %811, i64 1
  store i64* null, i64** %812, !tbaa !5
  %813 = getelementptr inbounds i64*, i64** %812, i64 1
  store i64* %l_138, i64** %813, !tbaa !5
  %814 = getelementptr inbounds i64*, i64** %813, i64 1
  store i64* null, i64** %814, !tbaa !5
  %815 = bitcast [1 x i8**]* %l_225 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %815) #1
  %816 = bitcast [10 x i32]* %l_233 to i8*
  call void @llvm.lifetime.start(i64 40, i8* %816) #1
  %817 = bitcast i32* %i9 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %817) #1
  %818 = bitcast i32* %j10 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %818) #1
  %819 = bitcast i32* %k11 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %819) #1
  store i32 0, i32* %i9, align 4, !tbaa !1
  br label %820

; <label>:820                                     ; preds = %827, %606
  %821 = load i32, i32* %i9, align 4, !tbaa !1
  %822 = icmp slt i32 %821, 1
  br i1 %822, label %823, label %830

; <label>:823                                     ; preds = %820
  %824 = load i32, i32* %i9, align 4, !tbaa !1
  %825 = sext i32 %824 to i64
  %826 = getelementptr inbounds [1 x i8**], [1 x i8**]* %l_225, i32 0, i64 %825
  store i8** %l_157, i8*** %826, align 8, !tbaa !5
  br label %827

; <label>:827                                     ; preds = %823
  %828 = load i32, i32* %i9, align 4, !tbaa !1
  %829 = add nsw i32 %828, 1
  store i32 %829, i32* %i9, align 4, !tbaa !1
  br label %820

; <label>:830                                     ; preds = %820
  store i32 0, i32* %i9, align 4, !tbaa !1
  br label %831

; <label>:831                                     ; preds = %838, %830
  %832 = load i32, i32* %i9, align 4, !tbaa !1
  %833 = icmp slt i32 %832, 10
  br i1 %833, label %834, label %841

; <label>:834                                     ; preds = %831
  %835 = load i32, i32* %i9, align 4, !tbaa !1
  %836 = sext i32 %835 to i64
  %837 = getelementptr inbounds [10 x i32], [10 x i32]* %l_233, i32 0, i64 %836
  store i32 -1437941548, i32* %837, align 4, !tbaa !1
  br label %838

; <label>:838                                     ; preds = %834
  %839 = load i32, i32* %i9, align 4, !tbaa !1
  %840 = add nsw i32 %839, 1
  store i32 %840, i32* %i9, align 4, !tbaa !1
  br label %831

; <label>:841                                     ; preds = %831
  store i8 14, i8* %2, align 1, !tbaa !9
  br label %842

; <label>:842                                     ; preds = %973, %841
  %843 = load i8, i8* %2, align 1, !tbaa !9
  %844 = zext i8 %843 to i32
  %845 = icmp slt i32 %844, 28
  br i1 %845, label %846, label %976

; <label>:846                                     ; preds = %842
  %847 = bitcast [6 x i64]* %l_180 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %847) #1
  %848 = bitcast [6 x i64]* %l_180 to i8*
  call void @llvm.memset.p0i8.i64(i8* %848, i8 0, i64 48, i32 16, i1 false)
  %849 = bitcast i8* %848 to [6 x i64]*
  %850 = getelementptr [6 x i64], [6 x i64]* %849, i32 0, i32 0
  store i64 4, i64* %850
  %851 = getelementptr [6 x i64], [6 x i64]* %849, i32 0, i32 1
  store i64 8816445563274633022, i64* %851
  %852 = getelementptr [6 x i64], [6 x i64]* %849, i32 0, i32 2
  store i64 8816445563274633022, i64* %852
  %853 = getelementptr [6 x i64], [6 x i64]* %849, i32 0, i32 3
  store i64 4, i64* %853
  %854 = getelementptr [6 x i64], [6 x i64]* %849, i32 0, i32 4
  store i64 8816445563274633022, i64* %854
  %855 = getelementptr [6 x i64], [6 x i64]* %849, i32 0, i32 5
  store i64 8816445563274633022, i64* %855
  %856 = bitcast i32** %l_204 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %856) #1
  store i32* @g_91, i32** %l_204, align 8, !tbaa !5
  %857 = bitcast i32* %i12 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %857) #1
  %858 = load i32*, i32** %l_148, align 8, !tbaa !5
  %859 = load i32, i32* %858, align 4, !tbaa !1
  %860 = icmp ne i32 %859, 0
  br i1 %860, label %861, label %871

; <label>:861                                     ; preds = %846
  %862 = bitcast i32** %l_178 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %862) #1
  store i32* @g_91, i32** %l_178, align 8, !tbaa !5
  %863 = bitcast i32*** %l_179 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %863) #1
  store i32** null, i32*** %l_179, align 8, !tbaa !5
  %864 = load i32*, i32** %l_178, align 8, !tbaa !5
  %865 = load i32**, i32*** %l_146, align 8, !tbaa !5
  store i32* %864, i32** %865, align 8, !tbaa !5
  %866 = load i32*, i32** %4, align 8, !tbaa !5
  %867 = getelementptr inbounds [7 x [1 x i32*]], [7 x [1 x i32*]]* %l_90, i32 0, i64 1
  %868 = getelementptr inbounds [1 x i32*], [1 x i32*]* %867, i32 0, i64 0
  store i32* %866, i32** %868, align 8, !tbaa !5
  %869 = bitcast i32*** %l_179 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %869) #1
  %870 = bitcast i32** %l_178 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %870) #1
  br label %967

; <label>:871                                     ; preds = %846
  %872 = bitcast i16** %l_181 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %872) #1
  store i16* null, i16** %l_181, align 8, !tbaa !5
  %873 = bitcast i16** %l_182 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %873) #1
  store i16* getelementptr inbounds ([4 x i16], [4 x i16]* @g_183, i32 0, i64 2), i16** %l_182, align 8, !tbaa !5
  %874 = bitcast i16*** %l_185 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %874) #1
  store i16** %l_184, i16*** %l_185, align 8, !tbaa !5
  %875 = bitcast i8** %l_200 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %875) #1
  store i8* @g_123, i8** %l_200, align 8, !tbaa !5
  %876 = bitcast i32* %l_203 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %876) #1
  store i32 1, i32* %l_203, align 4, !tbaa !1
  %877 = load i8, i8* @g_123, align 1, !tbaa !9
  %878 = sext i8 %877 to i32
  %879 = icmp ne i32 %878, 0
  br i1 %879, label %880, label %938

; <label>:880                                     ; preds = %871
  %881 = getelementptr inbounds [6 x i64], [6 x i64]* %l_180, i32 0, i64 3
  %882 = load i64, i64* %881, align 8, !tbaa !7
  %883 = trunc i64 %882 to i16
  %884 = load i16*, i16** %l_182, align 8, !tbaa !5
  store i16 %883, i16* %884, align 2, !tbaa !10
  %885 = sext i16 %883 to i32
  %886 = load i16*, i16** %l_184, align 8, !tbaa !5
  %887 = load i16**, i16*** %l_185, align 8, !tbaa !5
  store i16* %886, i16** %887, align 8, !tbaa !5
  %888 = icmp eq i16* %886, @g_174
  %889 = zext i1 %888 to i32
  %890 = load i8*, i8** %l_157, align 8, !tbaa !5
  store i8 7, i8* %890, align 1, !tbaa !9
  %891 = getelementptr inbounds [6 x i64], [6 x i64]* %l_180, i32 0, i64 3
  %892 = load i64, i64* %891, align 8, !tbaa !7
  %893 = load i8, i8* %2, align 1, !tbaa !9
  %894 = load i32*, i32** %4, align 8, !tbaa !5
  %895 = load i32, i32* %894, align 4, !tbaa !1
  %896 = load i16*, i16** %l_173, align 8, !tbaa !5
  store i16 -10236, i16* %896, align 2, !tbaa !10
  %897 = load i32*, i32** %l_148, align 8, !tbaa !5
  %898 = load i32, i32* %897, align 4, !tbaa !1
  %899 = trunc i32 %898 to i16
  %900 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext -10236, i16 zeroext %899)
  %901 = zext i16 %900 to i32
  %902 = call i32 @safe_div_func_int32_t_s_s(i32 %895, i32 %901)
  %903 = trunc i32 %902 to i8
  %904 = load i8*, i8** %l_200, align 8, !tbaa !5
  store i8 %903, i8* %904, align 1, !tbaa !9
  %905 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %893, i8 signext %903)
  %906 = sext i8 %905 to i64
  %907 = and i64 %906, 1
  %908 = trunc i64 %907 to i32
  %909 = call i32 @safe_add_func_uint32_t_u_u(i32 %908, i32 1372954201)
  %910 = zext i32 %909 to i64
  %911 = call i64 @safe_mod_func_int64_t_s_s(i64 %892, i64 %910)
  %912 = load i32, i32* @g_94, align 4, !tbaa !1
  %913 = load i64, i64* getelementptr inbounds ([9 x [6 x [2 x i64]]], [9 x [6 x [2 x i64]]]* @g_11, i32 0, i64 7, i64 3, i64 0), align 8, !tbaa !7
  %914 = load i16, i16* getelementptr inbounds ([3 x i16], [3 x i16]* @g_201, i32 0, i64 1), align 2, !tbaa !10
  %915 = sext i16 %914 to i64
  %916 = icmp uge i64 %913, %915
  %917 = zext i1 %916 to i32
  %918 = trunc i32 %917 to i8
  store i8 %918, i8* %3, align 1, !tbaa !9
  %919 = sext i8 %918 to i32
  %920 = icmp ne i32 %919, 0
  br i1 %920, label %921, label %922

; <label>:921                                     ; preds = %880
  br label %922

; <label>:922                                     ; preds = %921, %880
  %923 = phi i1 [ false, %880 ], [ true, %921 ]
  %924 = zext i1 %923 to i32
  %925 = load i32, i32* @g_87, align 4, !tbaa !1
  %926 = call i32 @safe_add_func_uint32_t_u_u(i32 %924, i32 %925)
  %927 = icmp ult i32 7, %926
  %928 = xor i1 %927, true
  %929 = zext i1 %928 to i32
  %930 = xor i32 %929, -1
  %931 = sext i32 %930 to i64
  %932 = icmp sge i64 %931, 220
  %933 = zext i1 %932 to i32
  %934 = icmp eq i32 %889, %933
  %935 = zext i1 %934 to i32
  %936 = or i32 %885, %935
  %937 = icmp ne i32 %936, 0
  br label %938

; <label>:938                                     ; preds = %922, %871
  %939 = phi i1 [ false, %871 ], [ %937, %922 ]
  %940 = zext i1 %939 to i32
  %941 = sext i32 %940 to i64
  %942 = icmp eq i64 %941, 59664
  %943 = zext i1 %942 to i32
  %944 = load i32, i32* @g_202, align 4, !tbaa !1
  %945 = or i32 %944, %943
  store i32 %945, i32* @g_202, align 4, !tbaa !1
  %946 = load i32, i32* @g_94, align 4, !tbaa !1
  %947 = icmp ne i32 %946, 0
  br i1 %947, label %952, label %948

; <label>:948                                     ; preds = %938
  %949 = load i8, i8* %2, align 1, !tbaa !9
  %950 = zext i8 %949 to i32
  %951 = icmp ne i32 %950, 0
  br label %952

; <label>:952                                     ; preds = %948, %938
  %953 = phi i1 [ true, %938 ], [ %951, %948 ]
  %954 = zext i1 %953 to i32
  store i32 %954, i32* @g_91, align 4, !tbaa !1
  %955 = load i32, i32* %l_203, align 4, !tbaa !1
  %956 = icmp ne i32 %955, 0
  br i1 %956, label %957, label %958

; <label>:957                                     ; preds = %952
  store i32 34, i32* %5
  br label %960

; <label>:958                                     ; preds = %952
  %959 = load i32**, i32*** %l_146, align 8, !tbaa !5
  store i32* null, i32** %959, align 8, !tbaa !5
  store i32* null, i32** %l_204, align 8, !tbaa !5
  store i32 0, i32* %5
  br label %960

; <label>:960                                     ; preds = %958, %957
  %961 = bitcast i32* %l_203 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %961) #1
  %962 = bitcast i8** %l_200 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %962) #1
  %963 = bitcast i16*** %l_185 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %963) #1
  %964 = bitcast i16** %l_182 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %964) #1
  %965 = bitcast i16** %l_181 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %965) #1
  %cleanup.dest.13 = load i32, i32* %5
  switch i32 %cleanup.dest.13, label %968 [
    i32 0, label %966
  ]

; <label>:966                                     ; preds = %960
  br label %967

; <label>:967                                     ; preds = %966, %861
  store i32 0, i32* %5
  br label %968

; <label>:968                                     ; preds = %967, %960
  %969 = bitcast i32* %i12 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %969) #1
  %970 = bitcast i32** %l_204 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %970) #1
  %971 = bitcast [6 x i64]* %l_180 to i8*
  call void @llvm.lifetime.end(i64 48, i8* %971) #1
  %cleanup.dest.14 = load i32, i32* %5
  switch i32 %cleanup.dest.14, label %1139 [
    i32 0, label %972
    i32 34, label %973
  ]

; <label>:972                                     ; preds = %968
  br label %973

; <label>:973                                     ; preds = %972, %968
  %974 = load i8, i8* %2, align 1, !tbaa !9
  %975 = add i8 %974, 1
  store i8 %975, i8* %2, align 1, !tbaa !9
  br label %842

; <label>:976                                     ; preds = %842
  %977 = load i8, i8* %l_209, align 1, !tbaa !9
  %978 = sext i8 %977 to i16
  %979 = load i32**, i32*** %l_213, align 8, !tbaa !5
  store i32* %l_101, i32** %979, align 8, !tbaa !5
  %980 = load i32*, i32** %4, align 8, !tbaa !5
  %981 = load i32, i32* %980, align 4, !tbaa !1
  %982 = load i32, i32* @g_222, align 4, !tbaa !1
  %983 = add i32 %982, 1
  store i32 %983, i32* @g_222, align 4, !tbaa !1
  %984 = zext i32 %983 to i64
  %985 = icmp ule i64 %984, -1
  %986 = zext i1 %985 to i32
  store i8* null, i8** @g_226, align 8, !tbaa !5
  %987 = icmp eq i8* null, %l_139
  %988 = zext i1 %987 to i32
  %989 = trunc i32 %988 to i8
  %990 = load i8, i8* %2, align 1, !tbaa !9
  %991 = zext i8 %990 to i64
  %992 = load i8, i8* %l_209, align 1, !tbaa !9
  %993 = xor i64 %991, 0
  %994 = trunc i64 %993 to i8
  %995 = load i8, i8* @g_123, align 1, !tbaa !9
  %996 = sext i8 %995 to i32
  %997 = call zeroext i8 @safe_rshift_func_uint8_t_u_s(i8 zeroext %994, i32 %996)
  %998 = zext i8 %997 to i32
  %999 = load i8, i8* %l_209, align 1, !tbaa !9
  %1000 = sext i8 %999 to i32
  %1001 = call i32 @safe_sub_func_int32_t_s_s(i32 %998, i32 %1000)
  %1002 = trunc i32 %1001 to i8
  %1003 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %989, i8 signext %1002)
  %1004 = sext i8 %1003 to i64
  %1005 = xor i64 %1004, 1122456199
  %1006 = trunc i64 %1005 to i8
  %1007 = load i16, i16* getelementptr inbounds ([3 x i16], [3 x i16]* @g_201, i32 0, i64 2), align 2, !tbaa !10
  %1008 = trunc i16 %1007 to i8
  %1009 = call zeroext i8 @safe_sub_func_uint8_t_u_u(i8 zeroext %1006, i8 zeroext %1008)
  %1010 = zext i8 %1009 to i32
  %1011 = icmp ne i32 %1010, 0
  br i1 %1011, label %1012, label %1016

; <label>:1012                                    ; preds = %976
  %1013 = load i32*, i32** %l_148, align 8, !tbaa !5
  %1014 = load i32, i32* %1013, align 4, !tbaa !1
  %1015 = icmp ne i32 %1014, 0
  br label %1016

; <label>:1016                                    ; preds = %1012, %976
  %1017 = phi i1 [ false, %976 ], [ %1015, %1012 ]
  %1018 = zext i1 %1017 to i32
  %1019 = trunc i32 %1018 to i16
  %1020 = load i16, i16* getelementptr inbounds ([3 x i16], [3 x i16]* @g_201, i32 0, i64 1), align 2, !tbaa !10
  %1021 = call signext i16 @safe_add_func_int16_t_s_s(i16 signext %1019, i16 signext %1020)
  %1022 = icmp ne i32* %l_101, null
  %1023 = zext i1 %1022 to i32
  %1024 = load i8, i8* %2, align 1, !tbaa !9
  %1025 = zext i8 %1024 to i32
  %1026 = icmp eq i32 %1023, %1025
  %1027 = zext i1 %1026 to i32
  %1028 = sext i32 %1027 to i64
  %1029 = icmp eq i64 1, %1028
  %1030 = zext i1 %1029 to i32
  %1031 = load i32, i32* @g_25, align 4, !tbaa !1
  %1032 = xor i32 %1030, %1031
  %1033 = trunc i32 %1032 to i16
  %1034 = call zeroext i16 @safe_rshift_func_uint16_t_u_u(i16 zeroext %1033, i32 6)
  %1035 = zext i16 %1034 to i32
  %1036 = load i16, i16* @g_232, align 2, !tbaa !10
  %1037 = zext i16 %1036 to i32
  %1038 = and i32 %1035, %1037
  %1039 = trunc i32 %1038 to i8
  %1040 = load i8*, i8** %l_157, align 8, !tbaa !5
  store i8 %1039, i8* %1040, align 1, !tbaa !9
  %1041 = call zeroext i8 @safe_unary_minus_func_uint8_t_u(i8 zeroext %1039)
  %1042 = zext i8 %1041 to i32
  %1043 = getelementptr inbounds [10 x i32], [10 x i32]* %l_233, i32 0, i64 4
  %1044 = load i32, i32* %1043, align 4, !tbaa !1
  %1045 = and i32 %1042, %1044
  %1046 = icmp ne i32 %1045, 0
  br i1 %1046, label %1047, label %1051

; <label>:1047                                    ; preds = %1016
  %1048 = load i8, i8* %3, align 1, !tbaa !9
  %1049 = sext i8 %1048 to i32
  %1050 = icmp ne i32 %1049, 0
  br label %1051

; <label>:1051                                    ; preds = %1047, %1016
  %1052 = phi i1 [ false, %1016 ], [ %1050, %1047 ]
  %1053 = zext i1 %1052 to i32
  %1054 = load i8, i8* %l_209, align 1, !tbaa !9
  %1055 = load i16, i16* getelementptr inbounds ([4 x i16], [4 x i16]* @g_183, i32 0, i64 2), align 2, !tbaa !10
  %1056 = call zeroext i16 @safe_mod_func_uint16_t_u_u(i16 zeroext %978, i16 zeroext -1)
  %1057 = zext i16 %1056 to i64
  %1058 = load i8, i8* %3, align 1, !tbaa !9
  %1059 = sext i8 %1058 to i64
  %1060 = call i64 @safe_mod_func_int64_t_s_s(i64 %1057, i64 %1059)
  %1061 = trunc i64 %1060 to i32
  store i32 %1061, i32* @g_91, align 4, !tbaa !1
  %1062 = load i32*, i32** %l_148, align 8, !tbaa !5
  %1063 = load i32, i32* %1062, align 4, !tbaa !1
  %1064 = icmp ne i32 %1063, 0
  br i1 %1064, label %1065, label %1066

; <label>:1065                                    ; preds = %1051
  store i32 23, i32* %5
  br label %1067

; <label>:1066                                    ; preds = %1051
  store i32 0, i32* %5
  br label %1067

; <label>:1067                                    ; preds = %1066, %1065
  %1068 = bitcast i32* %k11 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1068) #1
  %1069 = bitcast i32* %j10 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1069) #1
  %1070 = bitcast i32* %i9 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1070) #1
  %1071 = bitcast [10 x i32]* %l_233 to i8*
  call void @llvm.lifetime.end(i64 40, i8* %1071) #1
  %1072 = bitcast [1 x i8**]* %l_225 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1072) #1
  %1073 = bitcast [5 x [8 x [4 x i64*]]]* %l_221 to i8*
  call void @llvm.lifetime.end(i64 1280, i8* %1073) #1
  %1074 = bitcast i32*** %l_213 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1074) #1
  %1075 = bitcast i32** %l_214 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1075) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_209) #1
  %cleanup.dest.15 = load i32, i32* %5
  switch i32 %cleanup.dest.15, label %1078 [
    i32 0, label %1076
  ]

; <label>:1076                                    ; preds = %1067
  br label %1077

; <label>:1077                                    ; preds = %1076
  store i32 0, i32* %5
  br label %1078

; <label>:1078                                    ; preds = %1077, %1067, %604
  %1079 = bitcast i32* %k8 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1079) #1
  %1080 = bitcast i32* %j7 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1080) #1
  %1081 = bitcast i32* %i6 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1081) #1
  %1082 = bitcast i16** %l_173 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1082) #1
  %1083 = bitcast i8** %l_157 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1083) #1
  %1084 = bitcast [1 x [2 x [2 x i32**]]]* %l_147 to i8*
  call void @llvm.lifetime.end(i64 32, i8* %1084) #1
  %1085 = bitcast i32*** %l_146 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1085) #1
  %cleanup.dest.16 = load i32, i32* %5
  switch i32 %cleanup.dest.16, label %1112 [
    i32 0, label %1086
    i32 23, label %1092
  ]

; <label>:1086                                    ; preds = %1078
  br label %1087

; <label>:1087                                    ; preds = %1086
  %1088 = load i32, i32* %l_121, align 4, !tbaa !1
  %1089 = zext i32 %1088 to i64
  %1090 = call i64 @safe_add_func_int64_t_s_s(i64 %1089, i64 6)
  %1091 = trunc i64 %1090 to i32
  store i32 %1091, i32* %l_121, align 4, !tbaa !1
  br label %498

; <label>:1092                                    ; preds = %1078, %498
  store i8 0, i8* @g_123, align 1, !tbaa !9
  br label %1093

; <label>:1093                                    ; preds = %1101, %1092
  %1094 = load i8, i8* @g_123, align 1, !tbaa !9
  %1095 = sext i8 %1094 to i32
  %1096 = icmp slt i32 %1095, 6
  br i1 %1096, label %1097, label %1106

; <label>:1097                                    ; preds = %1093
  %1098 = load i8, i8* @g_123, align 1, !tbaa !9
  %1099 = sext i8 %1098 to i64
  %1100 = getelementptr inbounds [6 x i32], [6 x i32]* %l_154, i32 0, i64 %1099
  store i32 311976850, i32* %1100, align 4, !tbaa !1
  br label %1101

; <label>:1101                                    ; preds = %1097
  %1102 = load i8, i8* @g_123, align 1, !tbaa !9
  %1103 = sext i8 %1102 to i32
  %1104 = add nsw i32 %1103, 1
  %1105 = trunc i32 %1104 to i8
  store i8 %1105, i8* @g_123, align 1, !tbaa !9
  br label %1093

; <label>:1106                                    ; preds = %1093
  %1107 = load i32*, i32** %l_148, align 8, !tbaa !5
  %1108 = load i32, i32* %1107, align 4, !tbaa !1
  %1109 = icmp ne i32 %1108, 0
  br i1 %1109, label %1110, label %1111

; <label>:1110                                    ; preds = %1106
  store i32 7, i32* %5
  br label %1112

; <label>:1111                                    ; preds = %1106
  store i32 0, i32* %5
  br label %1112

; <label>:1112                                    ; preds = %1111, %1110, %1078, %482
  %1113 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1113) #1
  %1114 = bitcast i64*** %l_175 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1114) #1
  %1115 = bitcast i64* %l_172 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1115) #1
  %1116 = bitcast [6 x i32]* %l_154 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %1116) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_153) #1
  %1117 = bitcast i32** %l_148 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1117) #1
  %1118 = bitcast i64*** %l_141 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1118) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_139) #1
  %1119 = bitcast i32* %l_121 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1119) #1
  %1120 = bitcast i32** %l_117 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1120) #1
  %1121 = bitcast i32* %l_103 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1121) #1
  %1122 = bitcast i32* %l_101 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1122) #1
  %cleanup.dest.17 = load i32, i32* %5
  switch i32 %cleanup.dest.17, label %1130 [
    i32 0, label %1123
    i32 7, label %1124
  ]

; <label>:1123                                    ; preds = %1112
  br label %1124

; <label>:1124                                    ; preds = %1123, %1112
  %1125 = load i32, i32* @g_87, align 4, !tbaa !1
  %1126 = trunc i32 %1125 to i8
  %1127 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %1126, i8 zeroext 2)
  %1128 = zext i8 %1127 to i32
  store i32 %1128, i32* @g_87, align 4, !tbaa !1
  br label %28

; <label>:1129                                    ; preds = %28
  store i64** @g_143, i64*** %1
  store i32 1, i32* %5
  br label %1130

; <label>:1130                                    ; preds = %1129, %1112
  %1131 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1131) #1
  %1132 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1132) #1
  %1133 = bitcast i16** %l_184 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1133) #1
  %1134 = bitcast [5 x i32]* %l_152 to i8*
  call void @llvm.lifetime.end(i64 20, i8* %1134) #1
  %1135 = bitcast i64* %l_138 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1135) #1
  %1136 = bitcast i64** %l_97 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1136) #1
  %1137 = bitcast [7 x [1 x i32*]]* %l_90 to i8*
  call void @llvm.lifetime.end(i64 56, i8* %1137) #1
  %1138 = load i64**, i64*** %1
  ret i64** %1138

; <label>:1139                                    ; preds = %968
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @safe_div_func_int32_t_s_s(i32 %si1, i32 %si2) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %si1, i32* %1, align 4, !tbaa !1
  store i32 %si2, i32* %2, align 4, !tbaa !1
  %3 = load i32, i32* %2, align 4, !tbaa !1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %11, label %5

; <label>:5                                       ; preds = %0
  %6 = load i32, i32* %1, align 4, !tbaa !1
  %7 = icmp eq i32 %6, -2147483648
  br i1 %7, label %8, label %13

; <label>:8                                       ; preds = %5
  %9 = load i32, i32* %2, align 4, !tbaa !1
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %13

; <label>:11                                      ; preds = %8, %0
  %12 = load i32, i32* %1, align 4, !tbaa !1
  br label %17

; <label>:13                                      ; preds = %8, %5
  %14 = load i32, i32* %1, align 4, !tbaa !1
  %15 = load i32, i32* %2, align 4, !tbaa !1
  %16 = sdiv i32 %14, %15
  br label %17

; <label>:17                                      ; preds = %13, %11
  %18 = phi i32 [ %12, %11 ], [ %16, %13 ]
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal signext i16 @safe_mod_func_int16_t_s_s(i16 signext %si1, i16 signext %si2) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i16, align 2
  store i16 %si1, i16* %1, align 2, !tbaa !10
  store i16 %si2, i16* %2, align 2, !tbaa !10
  %3 = load i16, i16* %2, align 2, !tbaa !10
  %4 = sext i16 %3 to i32
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %14, label %6

; <label>:6                                       ; preds = %0
  %7 = load i16, i16* %1, align 2, !tbaa !10
  %8 = sext i16 %7 to i32
  %9 = icmp eq i32 %8, -32768
  br i1 %9, label %10, label %17

; <label>:10                                      ; preds = %6
  %11 = load i16, i16* %2, align 2, !tbaa !10
  %12 = sext i16 %11 to i32
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %17

; <label>:14                                      ; preds = %10, %0
  %15 = load i16, i16* %1, align 2, !tbaa !10
  %16 = sext i16 %15 to i32
  br label %23

; <label>:17                                      ; preds = %10, %6
  %18 = load i16, i16* %1, align 2, !tbaa !10
  %19 = sext i16 %18 to i32
  %20 = load i16, i16* %2, align 2, !tbaa !10
  %21 = sext i16 %20 to i32
  %22 = srem i32 %19, %21
  br label %23

; <label>:23                                      ; preds = %17, %14
  %24 = phi i32 [ %16, %14 ], [ %22, %17 ]
  %25 = trunc i32 %24 to i16
  ret i16 %25
}

; Function Attrs: nounwind uwtable
define internal signext i8 @safe_rshift_func_int8_t_s_s(i8 signext %left, i32 %right) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i32, align 4
  store i8 %left, i8* %1, align 1, !tbaa !9
  store i32 %right, i32* %2, align 4, !tbaa !1
  %3 = load i8, i8* %1, align 1, !tbaa !9
  %4 = sext i8 %3 to i32
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %12, label %6

; <label>:6                                       ; preds = %0
  %7 = load i32, i32* %2, align 4, !tbaa !1
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %12, label %9

; <label>:9                                       ; preds = %6
  %10 = load i32, i32* %2, align 4, !tbaa !1
  %11 = icmp sge i32 %10, 32
  br i1 %11, label %12, label %15

; <label>:12                                      ; preds = %9, %6, %0
  %13 = load i8, i8* %1, align 1, !tbaa !9
  %14 = sext i8 %13 to i32
  br label %20

; <label>:15                                      ; preds = %9
  %16 = load i8, i8* %1, align 1, !tbaa !9
  %17 = sext i8 %16 to i32
  %18 = load i32, i32* %2, align 4, !tbaa !1
  %19 = ashr i32 %17, %18
  br label %20

; <label>:20                                      ; preds = %15, %12
  %21 = phi i32 [ %14, %12 ], [ %19, %15 ]
  %22 = trunc i32 %21 to i8
  ret i8 %22
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @safe_unary_minus_func_uint8_t_u(i8 zeroext %ui) #0 {
  %1 = alloca i8, align 1
  store i8 %ui, i8* %1, align 1, !tbaa !9
  %2 = load i8, i8* %1, align 1, !tbaa !9
  %3 = zext i8 %2 to i32
  %4 = sub nsw i32 0, %3
  %5 = trunc i32 %4 to i8
  ret i8 %5
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @safe_lshift_func_uint8_t_u_s(i8 zeroext %left, i32 %right) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i32, align 4
  store i8 %left, i8* %1, align 1, !tbaa !9
  store i32 %right, i32* %2, align 4, !tbaa !1
  %3 = load i32, i32* %2, align 4, !tbaa !1
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %14, label %5

; <label>:5                                       ; preds = %0
  %6 = load i32, i32* %2, align 4, !tbaa !1
  %7 = icmp sge i32 %6, 32
  br i1 %7, label %14, label %8

; <label>:8                                       ; preds = %5
  %9 = load i8, i8* %1, align 1, !tbaa !9
  %10 = zext i8 %9 to i32
  %11 = load i32, i32* %2, align 4, !tbaa !1
  %12 = ashr i32 255, %11
  %13 = icmp sgt i32 %10, %12
  br i1 %13, label %14, label %17

; <label>:14                                      ; preds = %8, %5, %0
  %15 = load i8, i8* %1, align 1, !tbaa !9
  %16 = zext i8 %15 to i32
  br label %22

; <label>:17                                      ; preds = %8
  %18 = load i8, i8* %1, align 1, !tbaa !9
  %19 = zext i8 %18 to i32
  %20 = load i32, i32* %2, align 4, !tbaa !1
  %21 = shl i32 %19, %20
  br label %22

; <label>:22                                      ; preds = %17, %14
  %23 = phi i32 [ %16, %14 ], [ %21, %17 ]
  %24 = trunc i32 %23 to i8
  ret i8 %24
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @safe_mod_func_uint8_t_u_u(i8 zeroext %ui1, i8 zeroext %ui2) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  store i8 %ui1, i8* %1, align 1, !tbaa !9
  store i8 %ui2, i8* %2, align 1, !tbaa !9
  %3 = load i8, i8* %2, align 1, !tbaa !9
  %4 = zext i8 %3 to i32
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

; <label>:6                                       ; preds = %0
  %7 = load i8, i8* %1, align 1, !tbaa !9
  %8 = zext i8 %7 to i32
  br label %15

; <label>:9                                       ; preds = %0
  %10 = load i8, i8* %1, align 1, !tbaa !9
  %11 = zext i8 %10 to i32
  %12 = load i8, i8* %2, align 1, !tbaa !9
  %13 = zext i8 %12 to i32
  %14 = srem i32 %11, %13
  br label %15

; <label>:15                                      ; preds = %9, %6
  %16 = phi i32 [ %8, %6 ], [ %14, %9 ]
  %17 = trunc i32 %16 to i8
  ret i8 %17
}

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
!12 = !{i64 0, i64 8, !7}
