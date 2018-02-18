; ModuleID = '00285.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_16 = internal global i16 1, align 2
@.str.1 = private unnamed_addr constant [5 x i8] c"g_16\00", align 1
@g_18 = internal global i8 -10, align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"g_18\00", align 1
@g_46 = internal global i8 120, align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"g_46\00", align 1
@g_48 = internal global i32 -871786429, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"g_48\00", align 1
@g_50 = internal global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"g_50\00", align 1
@g_60 = internal global i32 -10, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"g_60\00", align 1
@g_93 = internal global i32 -5, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"g_93\00", align 1
@g_95 = internal global i32 852224771, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"g_95\00", align 1
@g_122 = internal global i64 -7668387728399352572, align 8
@.str.9 = private unnamed_addr constant [6 x i8] c"g_122\00", align 1
@g_125 = internal global i8 6, align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"g_125\00", align 1
@g_128 = internal global i64 1, align 8
@.str.11 = private unnamed_addr constant [6 x i8] c"g_128\00", align 1
@g_154 = internal global i8 0, align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"g_154\00", align 1
@g_156 = internal global i16 9, align 2
@.str.13 = private unnamed_addr constant [6 x i8] c"g_156\00", align 1
@g_164 = internal global i16 -6, align 2
@.str.14 = private unnamed_addr constant [6 x i8] c"g_164\00", align 1
@g_168 = internal global [2 x i16] [i16 -21169, i16 -21169], align 2
@.str.15 = private unnamed_addr constant [9 x i8] c"g_168[i]\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_248 = internal global i64 6, align 8
@.str.17 = private unnamed_addr constant [6 x i8] c"g_248\00", align 1
@g_255 = internal global [4 x i16] [i16 11235, i16 11235, i16 11235, i16 11235], align 2
@.str.18 = private unnamed_addr constant [9 x i8] c"g_255[i]\00", align 1
@g_313 = internal global i64 1, align 8
@.str.19 = private unnamed_addr constant [6 x i8] c"g_313\00", align 1
@g_337 = internal global i16 -5, align 2
@.str.20 = private unnamed_addr constant [6 x i8] c"g_337\00", align 1
@g_345 = internal global i64 -5, align 8
@.str.21 = private unnamed_addr constant [6 x i8] c"g_345\00", align 1
@g_520 = internal global [1 x i16] [i16 1], align 2
@.str.22 = private unnamed_addr constant [9 x i8] c"g_520[i]\00", align 1
@g_570 = internal global i64 -1, align 8
@.str.23 = private unnamed_addr constant [6 x i8] c"g_570\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"g_604\00", align 1
@g_963 = internal constant [5 x [9 x [2 x i32]]] [[9 x [2 x i32]] [[2 x i32] [i32 488154422, i32 -447468416], [2 x i32] [i32 -1, i32 1154510814], [2 x i32] [i32 -2078065109, i32 -2078065109], [2 x i32] [i32 1, i32 3], [2 x i32] [i32 2, i32 1], [2 x i32] [i32 488154422, i32 0], [2 x i32] [i32 5, i32 488154422], [2 x i32] [i32 1120732877, i32 -2078065109], [2 x i32] [i32 1120732877, i32 488154422]], [9 x [2 x i32]] [[2 x i32] [i32 5, i32 0], [2 x i32] [i32 488154422, i32 1], [2 x i32] [i32 2, i32 3], [2 x i32] [i32 1, i32 -2078065109], [2 x i32] [i32 -2078065109, i32 1154510814], [2 x i32] [i32 -1, i32 -447468416], [2 x i32] [i32 488154422, i32 -2], [2 x i32] [i32 -65401388, i32 0], [2 x i32] [i32 -9, i32 -2078065109]], [9 x [2 x i32]] [[2 x i32] [i32 -7, i32 120013805], [2 x i32] [i32 -2081296737, i32 740645567], [2 x i32] [i32 488154422, i32 740645567], [2 x i32] [i32 -2081296737, i32 120013805], [2 x i32] [i32 -7, i32 -2078065109], [2 x i32] [i32 -9, i32 0], [2 x i32] [i32 -65401388, i32 -2], [2 x i32] [i32 488154422, i32 -447468416], [2 x i32] [i32 -1, i32 1154510814]], [9 x [2 x i32]] [[2 x i32] [i32 -2078065109, i32 -2078065109], [2 x i32] [i32 1, i32 3], [2 x i32] [i32 2, i32 1], [2 x i32] [i32 488154422, i32 0], [2 x i32] [i32 5, i32 488154422], [2 x i32] [i32 1120732877, i32 -2078065109], [2 x i32] [i32 1120732877, i32 488154422], [2 x i32] [i32 5, i32 0], [2 x i32] [i32 488154422, i32 1]], [9 x [2 x i32]] [[2 x i32] [i32 2, i32 3], [2 x i32] [i32 1, i32 -2078065109], [2 x i32] [i32 -2078065109, i32 1154510814], [2 x i32] [i32 -1, i32 -447468416], [2 x i32] [i32 488154422, i32 -2], [2 x i32] [i32 -65401388, i32 0], [2 x i32] [i32 -9, i32 -2078065109], [2 x i32] [i32 -7, i32 120013805], [2 x i32] [i32 -2081296737, i32 740645567]]], align 16
@.str.25 = private unnamed_addr constant [15 x i8] c"g_963[i][j][k]\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"index = [%d][%d][%d]\0A\00", align 1
@g_1034 = internal global i32 1851105643, align 4
@.str.27 = private unnamed_addr constant [7 x i8] c"g_1034\00", align 1
@g_1109 = internal global i16 -19317, align 2
@.str.28 = private unnamed_addr constant [7 x i8] c"g_1109\00", align 1
@g_1180 = internal global i8 21, align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"g_1180\00", align 1
@g_1199 = internal global i8 -50, align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"g_1199\00", align 1
@g_1253 = internal global i32 -7, align 4
@.str.31 = private unnamed_addr constant [7 x i8] c"g_1253\00", align 1
@g_1256 = internal global i32 547627603, align 4
@.str.32 = private unnamed_addr constant [7 x i8] c"g_1256\00", align 1
@g_1450 = internal global i8 5, align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"g_1450\00", align 1
@g_1562 = internal global i32 -1589612045, align 4
@.str.34 = private unnamed_addr constant [7 x i8] c"g_1562\00", align 1
@g_1585 = internal global i16 -31988, align 2
@.str.35 = private unnamed_addr constant [7 x i8] c"g_1585\00", align 1
@g_1591 = internal global i32 3, align 4
@.str.36 = private unnamed_addr constant [7 x i8] c"g_1591\00", align 1
@g_1856 = internal global i8 -62, align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"g_1856\00", align 1
@g_1867 = internal global [5 x [10 x [4 x i8]]] [[10 x [4 x i8]] [[4 x i8] c"\DB\01\DB)", [4 x i8] c"\DB))\DB", [4 x i8] c"0)s)", [4 x i8] c")\01ss", [4 x i8] c"00)s", [4 x i8] c"\DB\01\DB)", [4 x i8] c"\DB))\DB", [4 x i8] c"0)s)", [4 x i8] c")\01ss", [4 x i8] c"00)s"], [10 x [4 x i8]] [[4 x i8] c"\DB\01\DB)", [4 x i8] c"\DB))\DB", [4 x i8] c"0)s)", [4 x i8] c")\01ss", [4 x i8] c"00)s", [4 x i8] c"\DB\01\DB)", [4 x i8] c"\DB))\DB", [4 x i8] c"0)s)", [4 x i8] c")\01ss", [4 x i8] c"00)s"], [10 x [4 x i8]] [[4 x i8] c"\DB\01\DB)", [4 x i8] c"\DB))\DB", [4 x i8] c"0)s)", [4 x i8] c")\01ss", [4 x i8] c"00)s", [4 x i8] c"\DB\01\DB)", [4 x i8] c"\DB))\DB", [4 x i8] c"0)s)", [4 x i8] c")\01ss", [4 x i8] c"00)s"], [10 x [4 x i8]] [[4 x i8] c"\DB\01\DB)", [4 x i8] c"\DB))\DB", [4 x i8] c"0)s)", [4 x i8] c")\01ss", [4 x i8] c"00)s", [4 x i8] c"\DB\01\DB)", [4 x i8] c"\DB))\DB", [4 x i8] c"0)s)", [4 x i8] c")\01ss", [4 x i8] c"00)s"], [10 x [4 x i8]] [[4 x i8] c"\DB\01\DB)", [4 x i8] c"\DB))\DB", [4 x i8] c"0\DB\01\DB", [4 x i8] c"\DB0\01\01", [4 x i8] c"))\DB\01", [4 x i8] c"s0s\DB", [4 x i8] c"s\DB\DBs", [4 x i8] c")\DB\01\DB", [4 x i8] c"\DB0\01\01", [4 x i8] c"))\DB\01"]], align 16
@.str.38 = private unnamed_addr constant [16 x i8] c"g_1867[i][j][k]\00", align 1
@g_2378 = internal global i64 0, align 8
@.str.39 = private unnamed_addr constant [7 x i8] c"g_2378\00", align 1
@g_2379 = internal global i32 2104762803, align 4
@.str.40 = private unnamed_addr constant [7 x i8] c"g_2379\00", align 1
@g_2411 = internal global i32 2058194315, align 4
@.str.41 = private unnamed_addr constant [7 x i8] c"g_2411\00", align 1
@g_2492 = internal global [3 x [5 x [8 x i32]]] [[5 x [8 x i32]] [[8 x i32] [i32 161011727, i32 161011727, i32 8, i32 339643788, i32 8, i32 161011727, i32 161011727, i32 8], [8 x i32] [i32 0, i32 8, i32 8, i32 0, i32 5, i32 0, i32 8, i32 8], [8 x i32] [i32 8, i32 5, i32 339643788, i32 339643788, i32 5, i32 8, i32 5, i32 339643788], [8 x i32] [i32 0, i32 5, i32 0, i32 8, i32 8, i32 0, i32 5, i32 0], [8 x i32] [i32 161011727, i32 8, i32 339643788, i32 8, i32 161011727, i32 161011727, i32 8, i32 339643788]], [5 x [8 x i32]] [[8 x i32] [i32 161011727, i32 161011727, i32 8, i32 339643788, i32 8, i32 161011727, i32 161011727, i32 8], [8 x i32] [i32 0, i32 8, i32 8, i32 0, i32 5, i32 0, i32 8, i32 8], [8 x i32] [i32 8, i32 5, i32 339643788, i32 339643788, i32 5, i32 8, i32 5, i32 339643788], [8 x i32] [i32 0, i32 161011727, i32 339643788, i32 0, i32 0, i32 339643788, i32 161011727, i32 339643788], [8 x i32] [i32 8, i32 0, i32 5, i32 0, i32 8, i32 8, i32 0, i32 5]], [5 x [8 x i32]] [[8 x i32] [i32 8, i32 8, i32 0, i32 5, i32 0, i32 8, i32 8, i32 0], [8 x i32] [i32 339643788, i32 0, i32 0, i32 339643788, i32 161011727, i32 339643788, i32 0, i32 0], [8 x i32] [i32 0, i32 161011727, i32 5, i32 5, i32 161011727, i32 0, i32 161011727, i32 5], [8 x i32] [i32 339643788, i32 161011727, i32 339643788, i32 0, i32 0, i32 339643788, i32 161011727, i32 339643788], [8 x i32] [i32 8, i32 0, i32 5, i32 0, i32 8, i32 8, i32 0, i32 5]]], align 16
@.str.42 = private unnamed_addr constant [16 x i8] c"g_2492[i][j][k]\00", align 1
@g_2510 = internal global [1 x i32] [i32 -804784401], align 4
@.str.43 = private unnamed_addr constant [10 x i8] c"g_2510[i]\00", align 1
@g_2526 = internal constant [8 x i64] [i64 -9, i64 -9, i64 -6903687518640346277, i64 -9, i64 -9, i64 -6903687518640346277, i64 -9, i64 -9], align 16
@.str.44 = private unnamed_addr constant [10 x i8] c"g_2526[i]\00", align 1
@g_2641 = internal global i32 429707083, align 4
@.str.45 = private unnamed_addr constant [7 x i8] c"g_2641\00", align 1
@g_2657 = internal global i64 0, align 8
@.str.46 = private unnamed_addr constant [7 x i8] c"g_2657\00", align 1
@g_2841 = internal global i8 -1, align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"g_2841\00", align 1
@g_3036 = internal global [6 x [6 x [1 x i16]]] [[6 x [1 x i16]] [[1 x i16] zeroinitializer, [1 x i16] [i16 17192], [1 x i16] zeroinitializer, [1 x i16] [i16 17192], [1 x i16] zeroinitializer, [1 x i16] [i16 17192]], [6 x [1 x i16]] [[1 x i16] zeroinitializer, [1 x i16] [i16 17192], [1 x i16] zeroinitializer, [1 x i16] [i16 17192], [1 x i16] zeroinitializer, [1 x i16] [i16 17192]], [6 x [1 x i16]] [[1 x i16] zeroinitializer, [1 x i16] [i16 17192], [1 x i16] zeroinitializer, [1 x i16] [i16 17192], [1 x i16] zeroinitializer, [1 x i16] [i16 17192]], [6 x [1 x i16]] [[1 x i16] zeroinitializer, [1 x i16] [i16 17192], [1 x i16] zeroinitializer, [1 x i16] [i16 17192], [1 x i16] zeroinitializer, [1 x i16] [i16 17192]], [6 x [1 x i16]] [[1 x i16] zeroinitializer, [1 x i16] [i16 17192], [1 x i16] zeroinitializer, [1 x i16] [i16 17192], [1 x i16] zeroinitializer, [1 x i16] [i16 17192]], [6 x [1 x i16]] [[1 x i16] zeroinitializer, [1 x i16] [i16 17192], [1 x i16] zeroinitializer, [1 x i16] [i16 17192], [1 x i16] zeroinitializer, [1 x i16] [i16 17192]]], align 16
@.str.48 = private unnamed_addr constant [16 x i8] c"g_3036[i][j][k]\00", align 1
@g_3436 = internal global i16 -23123, align 2
@.str.49 = private unnamed_addr constant [7 x i8] c"g_3436\00", align 1
@g_3442 = internal global [5 x i8] c"\C5\C5\C5\C5\C5", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"g_3442[i]\00", align 1
@g_3463 = internal global i64 -1, align 8
@.str.51 = private unnamed_addr constant [7 x i8] c"g_3463\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@g_1857 = internal global [4 x i8**] [i8** @g_1858, i8** @g_1858, i8** @g_1858, i8** @g_1858], align 16
@g_2381 = internal global i64** null, align 8
@g_1417 = internal global i32*** bitcast (i8* getelementptr (i8, i8* bitcast ([2 x i32**]* @g_927 to i8*), i64 8) to i32***), align 8
@func_1.l_2912 = private unnamed_addr constant [5 x [8 x i8]] [[8 x i8] c"-\01\DF\DF\01-\01\DF", [8 x i8] c"\D1\01\D1--\D1\01\D1", [8 x i8] c"\02-\DF-\02\02-\DF", [8 x i8] c"\02\02-\DF-\02\02-", [8 x i8] c"\D1--\D1\01\D1--"], align 16
@g_908 = internal global i32** @g_909, align 8
@g_906 = internal global i64* @g_313, align 8
@g_1858 = internal global i8* @g_1450, align 8
@g_927 = internal global [2 x i32**] [i32** @g_928, i32** @g_928], align 16
@g_928 = internal global i32* @g_50, align 8
@g_909 = internal global i32* @g_93, align 8
@.str.52 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@.str.53 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

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
  %90 = call signext i16 @func_1()
  %91 = load i16, i16* @g_16, align 2, !tbaa !10
  %92 = zext i16 %91 to i64
  %93 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %92, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 %93)
  %94 = load i8, i8* @g_18, align 1, !tbaa !9
  %95 = zext i8 %94 to i64
  %96 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %95, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 %96)
  %97 = load i8, i8* @g_46, align 1, !tbaa !9
  %98 = zext i8 %97 to i64
  %99 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 %99)
  %100 = load i32, i32* @g_48, align 4, !tbaa !1
  %101 = sext i32 %100 to i64
  %102 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %101, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %102)
  %103 = load i32, i32* @g_50, align 4, !tbaa !1
  %104 = zext i32 %103 to i64
  %105 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %104, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 %105)
  %106 = load volatile i32, i32* @g_60, align 4, !tbaa !1
  %107 = zext i32 %106 to i64
  %108 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %107, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 %108)
  %109 = load i32, i32* @g_93, align 4, !tbaa !1
  %110 = zext i32 %109 to i64
  %111 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %110, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 %111)
  %112 = load i32, i32* @g_95, align 4, !tbaa !1
  %113 = sext i32 %112 to i64
  %114 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %113, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 %114)
  %115 = load volatile i64, i64* @g_122, align 8, !tbaa !7
  %116 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %115, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 %116)
  %117 = load i8, i8* @g_125, align 1, !tbaa !9
  %118 = zext i8 %117 to i64
  %119 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %118, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i32 %119)
  %120 = load volatile i64, i64* @g_128, align 8, !tbaa !7
  %121 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %120, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i32 %121)
  %122 = load i8, i8* @g_154, align 1, !tbaa !9
  %123 = sext i8 %122 to i64
  %124 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %123, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i32 %124)
  %125 = load i16, i16* @g_156, align 2, !tbaa !10
  %126 = zext i16 %125 to i64
  %127 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %126, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i32 %127)
  %128 = load i16, i16* @g_164, align 2, !tbaa !10
  %129 = zext i16 %128 to i64
  %130 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %129, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 %130)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %131

; <label>:131                                     ; preds = %147, %89
  %132 = load i32, i32* %i, align 4, !tbaa !1
  %133 = icmp slt i32 %132, 2
  br i1 %133, label %134, label %150

; <label>:134                                     ; preds = %131
  %135 = load i32, i32* %i, align 4, !tbaa !1
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [2 x i16], [2 x i16]* @g_168, i32 0, i64 %136
  %138 = load i16, i16* %137, align 2, !tbaa !10
  %139 = sext i16 %138 to i64
  %140 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %139, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i32 %140)
  %141 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %146

; <label>:143                                     ; preds = %134
  %144 = load i32, i32* %i, align 4, !tbaa !1
  %145 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), i32 %144)
  br label %146

; <label>:146                                     ; preds = %143, %134
  br label %147

; <label>:147                                     ; preds = %146
  %148 = load i32, i32* %i, align 4, !tbaa !1
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %i, align 4, !tbaa !1
  br label %131

; <label>:150                                     ; preds = %131
  %151 = load i64, i64* @g_248, align 8, !tbaa !7
  %152 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %151, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i32 %152)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %153

; <label>:153                                     ; preds = %169, %150
  %154 = load i32, i32* %i, align 4, !tbaa !1
  %155 = icmp slt i32 %154, 4
  br i1 %155, label %156, label %172

; <label>:156                                     ; preds = %153
  %157 = load i32, i32* %i, align 4, !tbaa !1
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [4 x i16], [4 x i16]* @g_255, i32 0, i64 %158
  %160 = load i16, i16* %159, align 2, !tbaa !10
  %161 = sext i16 %160 to i64
  %162 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %161, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i32 %162)
  %163 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %168

; <label>:165                                     ; preds = %156
  %166 = load i32, i32* %i, align 4, !tbaa !1
  %167 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), i32 %166)
  br label %168

; <label>:168                                     ; preds = %165, %156
  br label %169

; <label>:169                                     ; preds = %168
  %170 = load i32, i32* %i, align 4, !tbaa !1
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %i, align 4, !tbaa !1
  br label %153

; <label>:172                                     ; preds = %153
  %173 = load i64, i64* @g_313, align 8, !tbaa !7
  %174 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %173, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i32 %174)
  %175 = load i16, i16* @g_337, align 2, !tbaa !10
  %176 = zext i16 %175 to i64
  %177 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %176, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 %177)
  %178 = load i64, i64* @g_345, align 8, !tbaa !7
  %179 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %178, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i32 %179)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %180

; <label>:180                                     ; preds = %196, %172
  %181 = load i32, i32* %i, align 4, !tbaa !1
  %182 = icmp slt i32 %181, 1
  br i1 %182, label %183, label %199

; <label>:183                                     ; preds = %180
  %184 = load i32, i32* %i, align 4, !tbaa !1
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [1 x i16], [1 x i16]* @g_520, i32 0, i64 %185
  %187 = load volatile i16, i16* %186, align 2, !tbaa !10
  %188 = zext i16 %187 to i64
  %189 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %188, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i32 %189)
  %190 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %195

; <label>:192                                     ; preds = %183
  %193 = load i32, i32* %i, align 4, !tbaa !1
  %194 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), i32 %193)
  br label %195

; <label>:195                                     ; preds = %192, %183
  br label %196

; <label>:196                                     ; preds = %195
  %197 = load i32, i32* %i, align 4, !tbaa !1
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %i, align 4, !tbaa !1
  br label %180

; <label>:199                                     ; preds = %180
  %200 = load i64, i64* @g_570, align 8, !tbaa !7
  %201 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %200, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 %201)
  %202 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %202)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %203

; <label>:203                                     ; preds = %243, %199
  %204 = load i32, i32* %i, align 4, !tbaa !1
  %205 = icmp slt i32 %204, 5
  br i1 %205, label %206, label %246

; <label>:206                                     ; preds = %203
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %207

; <label>:207                                     ; preds = %239, %206
  %208 = load i32, i32* %j, align 4, !tbaa !1
  %209 = icmp slt i32 %208, 9
  br i1 %209, label %210, label %242

; <label>:210                                     ; preds = %207
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %211

; <label>:211                                     ; preds = %235, %210
  %212 = load i32, i32* %k, align 4, !tbaa !1
  %213 = icmp slt i32 %212, 2
  br i1 %213, label %214, label %238

; <label>:214                                     ; preds = %211
  %215 = load i32, i32* %k, align 4, !tbaa !1
  %216 = sext i32 %215 to i64
  %217 = load i32, i32* %j, align 4, !tbaa !1
  %218 = sext i32 %217 to i64
  %219 = load i32, i32* %i, align 4, !tbaa !1
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds [5 x [9 x [2 x i32]]], [5 x [9 x [2 x i32]]]* @g_963, i32 0, i64 %220
  %222 = getelementptr inbounds [9 x [2 x i32]], [9 x [2 x i32]]* %221, i32 0, i64 %218
  %223 = getelementptr inbounds [2 x i32], [2 x i32]* %222, i32 0, i64 %216
  %224 = load i32, i32* %223, align 4, !tbaa !1
  %225 = sext i32 %224 to i64
  %226 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %225, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0), i32 %226)
  %227 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %234

; <label>:229                                     ; preds = %214
  %230 = load i32, i32* %i, align 4, !tbaa !1
  %231 = load i32, i32* %j, align 4, !tbaa !1
  %232 = load i32, i32* %k, align 4, !tbaa !1
  %233 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.26, i32 0, i32 0), i32 %230, i32 %231, i32 %232)
  br label %234

; <label>:234                                     ; preds = %229, %214
  br label %235

; <label>:235                                     ; preds = %234
  %236 = load i32, i32* %k, align 4, !tbaa !1
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %k, align 4, !tbaa !1
  br label %211

; <label>:238                                     ; preds = %211
  br label %239

; <label>:239                                     ; preds = %238
  %240 = load i32, i32* %j, align 4, !tbaa !1
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %j, align 4, !tbaa !1
  br label %207

; <label>:242                                     ; preds = %207
  br label %243

; <label>:243                                     ; preds = %242
  %244 = load i32, i32* %i, align 4, !tbaa !1
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %i, align 4, !tbaa !1
  br label %203

; <label>:246                                     ; preds = %203
  %247 = load i32, i32* @g_1034, align 4, !tbaa !1
  %248 = zext i32 %247 to i64
  %249 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %248, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), i32 %249)
  %250 = load i16, i16* @g_1109, align 2, !tbaa !10
  %251 = sext i16 %250 to i64
  %252 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %251, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0), i32 %252)
  %253 = load i8, i8* @g_1180, align 1, !tbaa !9
  %254 = zext i8 %253 to i64
  %255 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %254, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), i32 %255)
  %256 = load i8, i8* @g_1199, align 1, !tbaa !9
  %257 = sext i8 %256 to i64
  %258 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %257, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0), i32 %258)
  %259 = load i32, i32* @g_1253, align 4, !tbaa !1
  %260 = sext i32 %259 to i64
  %261 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %260, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), i32 %261)
  %262 = load i32, i32* @g_1256, align 4, !tbaa !1
  %263 = sext i32 %262 to i64
  %264 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %263, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), i32 %264)
  %265 = load i8, i8* @g_1450, align 1, !tbaa !9
  %266 = zext i8 %265 to i64
  %267 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %266, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), i32 %267)
  %268 = load volatile i32, i32* @g_1562, align 4, !tbaa !1
  %269 = zext i32 %268 to i64
  %270 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %269, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0), i32 %270)
  %271 = load i16, i16* @g_1585, align 2, !tbaa !10
  %272 = sext i16 %271 to i64
  %273 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %272, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0), i32 %273)
  %274 = load volatile i32, i32* @g_1591, align 4, !tbaa !1
  %275 = sext i32 %274 to i64
  %276 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %275, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), i32 %276)
  %277 = load volatile i8, i8* @g_1856, align 1, !tbaa !9
  %278 = zext i8 %277 to i64
  %279 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %278, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), i32 %279)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %280

; <label>:280                                     ; preds = %320, %246
  %281 = load i32, i32* %i, align 4, !tbaa !1
  %282 = icmp slt i32 %281, 5
  br i1 %282, label %283, label %323

; <label>:283                                     ; preds = %280
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %284

; <label>:284                                     ; preds = %316, %283
  %285 = load i32, i32* %j, align 4, !tbaa !1
  %286 = icmp slt i32 %285, 10
  br i1 %286, label %287, label %319

; <label>:287                                     ; preds = %284
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %288

; <label>:288                                     ; preds = %312, %287
  %289 = load i32, i32* %k, align 4, !tbaa !1
  %290 = icmp slt i32 %289, 4
  br i1 %290, label %291, label %315

; <label>:291                                     ; preds = %288
  %292 = load i32, i32* %k, align 4, !tbaa !1
  %293 = sext i32 %292 to i64
  %294 = load i32, i32* %j, align 4, !tbaa !1
  %295 = sext i32 %294 to i64
  %296 = load i32, i32* %i, align 4, !tbaa !1
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds [5 x [10 x [4 x i8]]], [5 x [10 x [4 x i8]]]* @g_1867, i32 0, i64 %297
  %299 = getelementptr inbounds [10 x [4 x i8]], [10 x [4 x i8]]* %298, i32 0, i64 %295
  %300 = getelementptr inbounds [4 x i8], [4 x i8]* %299, i32 0, i64 %293
  %301 = load i8, i8* %300, align 1, !tbaa !9
  %302 = sext i8 %301 to i64
  %303 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %302, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.38, i32 0, i32 0), i32 %303)
  %304 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %311

; <label>:306                                     ; preds = %291
  %307 = load i32, i32* %i, align 4, !tbaa !1
  %308 = load i32, i32* %j, align 4, !tbaa !1
  %309 = load i32, i32* %k, align 4, !tbaa !1
  %310 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.26, i32 0, i32 0), i32 %307, i32 %308, i32 %309)
  br label %311

; <label>:311                                     ; preds = %306, %291
  br label %312

; <label>:312                                     ; preds = %311
  %313 = load i32, i32* %k, align 4, !tbaa !1
  %314 = add nsw i32 %313, 1
  store i32 %314, i32* %k, align 4, !tbaa !1
  br label %288

; <label>:315                                     ; preds = %288
  br label %316

; <label>:316                                     ; preds = %315
  %317 = load i32, i32* %j, align 4, !tbaa !1
  %318 = add nsw i32 %317, 1
  store i32 %318, i32* %j, align 4, !tbaa !1
  br label %284

; <label>:319                                     ; preds = %284
  br label %320

; <label>:320                                     ; preds = %319
  %321 = load i32, i32* %i, align 4, !tbaa !1
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %i, align 4, !tbaa !1
  br label %280

; <label>:323                                     ; preds = %280
  %324 = load i64, i64* @g_2378, align 8, !tbaa !7
  %325 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %324, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i32 0, i32 0), i32 %325)
  %326 = load i32, i32* @g_2379, align 4, !tbaa !1
  %327 = zext i32 %326 to i64
  %328 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %327, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0), i32 %328)
  %329 = load volatile i32, i32* @g_2411, align 4, !tbaa !1
  %330 = sext i32 %329 to i64
  %331 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %330, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0), i32 %331)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %332

; <label>:332                                     ; preds = %372, %323
  %333 = load i32, i32* %i, align 4, !tbaa !1
  %334 = icmp slt i32 %333, 3
  br i1 %334, label %335, label %375

; <label>:335                                     ; preds = %332
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %336

; <label>:336                                     ; preds = %368, %335
  %337 = load i32, i32* %j, align 4, !tbaa !1
  %338 = icmp slt i32 %337, 5
  br i1 %338, label %339, label %371

; <label>:339                                     ; preds = %336
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %340

; <label>:340                                     ; preds = %364, %339
  %341 = load i32, i32* %k, align 4, !tbaa !1
  %342 = icmp slt i32 %341, 8
  br i1 %342, label %343, label %367

; <label>:343                                     ; preds = %340
  %344 = load i32, i32* %k, align 4, !tbaa !1
  %345 = sext i32 %344 to i64
  %346 = load i32, i32* %j, align 4, !tbaa !1
  %347 = sext i32 %346 to i64
  %348 = load i32, i32* %i, align 4, !tbaa !1
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds [3 x [5 x [8 x i32]]], [3 x [5 x [8 x i32]]]* @g_2492, i32 0, i64 %349
  %351 = getelementptr inbounds [5 x [8 x i32]], [5 x [8 x i32]]* %350, i32 0, i64 %347
  %352 = getelementptr inbounds [8 x i32], [8 x i32]* %351, i32 0, i64 %345
  %353 = load i32, i32* %352, align 4, !tbaa !1
  %354 = sext i32 %353 to i64
  %355 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %354, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.42, i32 0, i32 0), i32 %355)
  %356 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %363

; <label>:358                                     ; preds = %343
  %359 = load i32, i32* %i, align 4, !tbaa !1
  %360 = load i32, i32* %j, align 4, !tbaa !1
  %361 = load i32, i32* %k, align 4, !tbaa !1
  %362 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.26, i32 0, i32 0), i32 %359, i32 %360, i32 %361)
  br label %363

; <label>:363                                     ; preds = %358, %343
  br label %364

; <label>:364                                     ; preds = %363
  %365 = load i32, i32* %k, align 4, !tbaa !1
  %366 = add nsw i32 %365, 1
  store i32 %366, i32* %k, align 4, !tbaa !1
  br label %340

; <label>:367                                     ; preds = %340
  br label %368

; <label>:368                                     ; preds = %367
  %369 = load i32, i32* %j, align 4, !tbaa !1
  %370 = add nsw i32 %369, 1
  store i32 %370, i32* %j, align 4, !tbaa !1
  br label %336

; <label>:371                                     ; preds = %336
  br label %372

; <label>:372                                     ; preds = %371
  %373 = load i32, i32* %i, align 4, !tbaa !1
  %374 = add nsw i32 %373, 1
  store i32 %374, i32* %i, align 4, !tbaa !1
  br label %332

; <label>:375                                     ; preds = %332
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %376

; <label>:376                                     ; preds = %392, %375
  %377 = load i32, i32* %i, align 4, !tbaa !1
  %378 = icmp slt i32 %377, 1
  br i1 %378, label %379, label %395

; <label>:379                                     ; preds = %376
  %380 = load i32, i32* %i, align 4, !tbaa !1
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds [1 x i32], [1 x i32]* @g_2510, i32 0, i64 %381
  %383 = load i32, i32* %382, align 4, !tbaa !1
  %384 = sext i32 %383 to i64
  %385 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %384, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i32 0, i32 0), i32 %385)
  %386 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %388, label %391

; <label>:388                                     ; preds = %379
  %389 = load i32, i32* %i, align 4, !tbaa !1
  %390 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), i32 %389)
  br label %391

; <label>:391                                     ; preds = %388, %379
  br label %392

; <label>:392                                     ; preds = %391
  %393 = load i32, i32* %i, align 4, !tbaa !1
  %394 = add nsw i32 %393, 1
  store i32 %394, i32* %i, align 4, !tbaa !1
  br label %376

; <label>:395                                     ; preds = %376
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %396

; <label>:396                                     ; preds = %411, %395
  %397 = load i32, i32* %i, align 4, !tbaa !1
  %398 = icmp slt i32 %397, 8
  br i1 %398, label %399, label %414

; <label>:399                                     ; preds = %396
  %400 = load i32, i32* %i, align 4, !tbaa !1
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds [8 x i64], [8 x i64]* @g_2526, i32 0, i64 %401
  %403 = load i64, i64* %402, align 8, !tbaa !7
  %404 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %403, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i32 0, i32 0), i32 %404)
  %405 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %407, label %410

; <label>:407                                     ; preds = %399
  %408 = load i32, i32* %i, align 4, !tbaa !1
  %409 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), i32 %408)
  br label %410

; <label>:410                                     ; preds = %407, %399
  br label %411

; <label>:411                                     ; preds = %410
  %412 = load i32, i32* %i, align 4, !tbaa !1
  %413 = add nsw i32 %412, 1
  store i32 %413, i32* %i, align 4, !tbaa !1
  br label %396

; <label>:414                                     ; preds = %396
  %415 = load i32, i32* @g_2641, align 4, !tbaa !1
  %416 = sext i32 %415 to i64
  %417 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %416, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), i32 %417)
  %418 = load volatile i64, i64* @g_2657, align 8, !tbaa !7
  %419 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %418, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0), i32 %419)
  %420 = load volatile i8, i8* @g_2841, align 1, !tbaa !9
  %421 = zext i8 %420 to i64
  %422 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %421, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i32 0, i32 0), i32 %422)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %423

; <label>:423                                     ; preds = %463, %414
  %424 = load i32, i32* %i, align 4, !tbaa !1
  %425 = icmp slt i32 %424, 6
  br i1 %425, label %426, label %466

; <label>:426                                     ; preds = %423
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %427

; <label>:427                                     ; preds = %459, %426
  %428 = load i32, i32* %j, align 4, !tbaa !1
  %429 = icmp slt i32 %428, 6
  br i1 %429, label %430, label %462

; <label>:430                                     ; preds = %427
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %431

; <label>:431                                     ; preds = %455, %430
  %432 = load i32, i32* %k, align 4, !tbaa !1
  %433 = icmp slt i32 %432, 1
  br i1 %433, label %434, label %458

; <label>:434                                     ; preds = %431
  %435 = load i32, i32* %k, align 4, !tbaa !1
  %436 = sext i32 %435 to i64
  %437 = load i32, i32* %j, align 4, !tbaa !1
  %438 = sext i32 %437 to i64
  %439 = load i32, i32* %i, align 4, !tbaa !1
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds [6 x [6 x [1 x i16]]], [6 x [6 x [1 x i16]]]* @g_3036, i32 0, i64 %440
  %442 = getelementptr inbounds [6 x [1 x i16]], [6 x [1 x i16]]* %441, i32 0, i64 %438
  %443 = getelementptr inbounds [1 x i16], [1 x i16]* %442, i32 0, i64 %436
  %444 = load i16, i16* %443, align 2, !tbaa !10
  %445 = zext i16 %444 to i64
  %446 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %445, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.48, i32 0, i32 0), i32 %446)
  %447 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %448 = icmp ne i32 %447, 0
  br i1 %448, label %449, label %454

; <label>:449                                     ; preds = %434
  %450 = load i32, i32* %i, align 4, !tbaa !1
  %451 = load i32, i32* %j, align 4, !tbaa !1
  %452 = load i32, i32* %k, align 4, !tbaa !1
  %453 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.26, i32 0, i32 0), i32 %450, i32 %451, i32 %452)
  br label %454

; <label>:454                                     ; preds = %449, %434
  br label %455

; <label>:455                                     ; preds = %454
  %456 = load i32, i32* %k, align 4, !tbaa !1
  %457 = add nsw i32 %456, 1
  store i32 %457, i32* %k, align 4, !tbaa !1
  br label %431

; <label>:458                                     ; preds = %431
  br label %459

; <label>:459                                     ; preds = %458
  %460 = load i32, i32* %j, align 4, !tbaa !1
  %461 = add nsw i32 %460, 1
  store i32 %461, i32* %j, align 4, !tbaa !1
  br label %427

; <label>:462                                     ; preds = %427
  br label %463

; <label>:463                                     ; preds = %462
  %464 = load i32, i32* %i, align 4, !tbaa !1
  %465 = add nsw i32 %464, 1
  store i32 %465, i32* %i, align 4, !tbaa !1
  br label %423

; <label>:466                                     ; preds = %423
  %467 = load i16, i16* @g_3436, align 2, !tbaa !10
  %468 = sext i16 %467 to i64
  %469 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %468, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0), i32 %469)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %470

; <label>:470                                     ; preds = %486, %466
  %471 = load i32, i32* %i, align 4, !tbaa !1
  %472 = icmp slt i32 %471, 5
  br i1 %472, label %473, label %489

; <label>:473                                     ; preds = %470
  %474 = load i32, i32* %i, align 4, !tbaa !1
  %475 = sext i32 %474 to i64
  %476 = getelementptr inbounds [5 x i8], [5 x i8]* @g_3442, i32 0, i64 %475
  %477 = load i8, i8* %476, align 1, !tbaa !9
  %478 = zext i8 %477 to i64
  %479 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %478, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i32 0, i32 0), i32 %479)
  %480 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %481 = icmp ne i32 %480, 0
  br i1 %481, label %482, label %485

; <label>:482                                     ; preds = %473
  %483 = load i32, i32* %i, align 4, !tbaa !1
  %484 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), i32 %483)
  br label %485

; <label>:485                                     ; preds = %482, %473
  br label %486

; <label>:486                                     ; preds = %485
  %487 = load i32, i32* %i, align 4, !tbaa !1
  %488 = add nsw i32 %487, 1
  store i32 %488, i32* %i, align 4, !tbaa !1
  br label %470

; <label>:489                                     ; preds = %470
  %490 = load i64, i64* @g_3463, align 8, !tbaa !7
  %491 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %490, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), i32 %491)
  %492 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %493 = zext i32 %492 to i64
  %494 = xor i64 %493, 4294967295
  %495 = trunc i64 %494 to i32
  %496 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %495, i32 %496)
  %497 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %497) #1
  %498 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %498) #1
  %499 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %499) #1
  %500 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %500) #1
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
define internal signext i16 @func_1() #0 {
  %l_2 = alloca i8, align 1
  %l_45 = alloca i8*, align 8
  %l_52 = alloca i32, align 4
  %l_53 = alloca [1 x i32], align 4
  %l_2776 = alloca i8***, align 8
  %l_2813 = alloca i32, align 4
  %l_2816 = alloca i64***, align 8
  %l_2815 = alloca [7 x [8 x i64****]], align 16
  %l_2819 = alloca i32, align 4
  %l_2823 = alloca i32****, align 8
  %l_2830 = alloca i32*****, align 8
  %l_2840 = alloca [6 x i32], align 16
  %l_2849 = alloca i32*, align 8
  %l_2848 = alloca i32**, align 8
  %l_2854 = alloca i16*, align 8
  %l_2868 = alloca i64, align 8
  %l_2912 = alloca [5 x [8 x i8]], align 16
  %l_2950 = alloca i32, align 4
  %l_2989 = alloca i32***, align 8
  %l_3056 = alloca i32, align 4
  %l_3057 = alloca i32, align 4
  %l_3058 = alloca [2 x i8*], align 16
  %l_3059 = alloca i16*, align 8
  %l_3096 = alloca i8, align 1
  %l_3118 = alloca i64, align 8
  %l_3137 = alloca i32***, align 8
  %l_3136 = alloca i32****, align 8
  %l_3144 = alloca i32, align 4
  %l_3145 = alloca i8, align 1
  %l_3222 = alloca i16, align 2
  %l_3243 = alloca i32*, align 8
  %l_3272 = alloca [2 x i32], align 4
  %l_3358 = alloca i32*, align 8
  %l_3405 = alloca i16, align 2
  %l_3438 = alloca i64**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  call void @llvm.lifetime.start(i64 1, i8* %l_2) #1
  store i8 8, i8* %l_2, align 1, !tbaa !9
  %1 = bitcast i8** %l_45 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store i8* @g_46, i8** %l_45, align 8, !tbaa !5
  %2 = bitcast i32* %l_52 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 -1, i32* %l_52, align 4, !tbaa !1
  %3 = bitcast [1 x i32]* %l_53 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i8**** %l_2776 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store i8*** getelementptr inbounds ([4 x i8**], [4 x i8**]* @g_1857, i32 0, i64 0), i8**** %l_2776, align 8, !tbaa !5
  %5 = bitcast i32* %l_2813 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 1414887672, i32* %l_2813, align 4, !tbaa !1
  %6 = bitcast i64**** %l_2816 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i64*** @g_2381, i64**** %l_2816, align 8, !tbaa !5
  %7 = bitcast [7 x [8 x i64****]]* %l_2815 to i8*
  call void @llvm.lifetime.start(i64 448, i8* %7) #1
  %8 = getelementptr inbounds [7 x [8 x i64****]], [7 x [8 x i64****]]* %l_2815, i64 0, i64 0
  %9 = getelementptr inbounds [8 x i64****], [8 x i64****]* %8, i64 0, i64 0
  store i64**** null, i64***** %9, !tbaa !5
  %10 = getelementptr inbounds i64****, i64***** %9, i64 1
  store i64**** %l_2816, i64***** %10, !tbaa !5
  %11 = getelementptr inbounds i64****, i64***** %10, i64 1
  store i64**** %l_2816, i64***** %11, !tbaa !5
  %12 = getelementptr inbounds i64****, i64***** %11, i64 1
  store i64**** %l_2816, i64***** %12, !tbaa !5
  %13 = getelementptr inbounds i64****, i64***** %12, i64 1
  store i64**** %l_2816, i64***** %13, !tbaa !5
  %14 = getelementptr inbounds i64****, i64***** %13, i64 1
  store i64**** %l_2816, i64***** %14, !tbaa !5
  %15 = getelementptr inbounds i64****, i64***** %14, i64 1
  store i64**** %l_2816, i64***** %15, !tbaa !5
  %16 = getelementptr inbounds i64****, i64***** %15, i64 1
  store i64**** %l_2816, i64***** %16, !tbaa !5
  %17 = getelementptr inbounds [8 x i64****], [8 x i64****]* %8, i64 1
  %18 = getelementptr inbounds [8 x i64****], [8 x i64****]* %17, i64 0, i64 0
  store i64**** %l_2816, i64***** %18, !tbaa !5
  %19 = getelementptr inbounds i64****, i64***** %18, i64 1
  store i64**** %l_2816, i64***** %19, !tbaa !5
  %20 = getelementptr inbounds i64****, i64***** %19, i64 1
  store i64**** %l_2816, i64***** %20, !tbaa !5
  %21 = getelementptr inbounds i64****, i64***** %20, i64 1
  store i64**** %l_2816, i64***** %21, !tbaa !5
  %22 = getelementptr inbounds i64****, i64***** %21, i64 1
  store i64**** %l_2816, i64***** %22, !tbaa !5
  %23 = getelementptr inbounds i64****, i64***** %22, i64 1
  store i64**** null, i64***** %23, !tbaa !5
  %24 = getelementptr inbounds i64****, i64***** %23, i64 1
  store i64**** null, i64***** %24, !tbaa !5
  %25 = getelementptr inbounds i64****, i64***** %24, i64 1
  store i64**** %l_2816, i64***** %25, !tbaa !5
  %26 = getelementptr inbounds [8 x i64****], [8 x i64****]* %17, i64 1
  %27 = getelementptr inbounds [8 x i64****], [8 x i64****]* %26, i64 0, i64 0
  store i64**** %l_2816, i64***** %27, !tbaa !5
  %28 = getelementptr inbounds i64****, i64***** %27, i64 1
  store i64**** null, i64***** %28, !tbaa !5
  %29 = getelementptr inbounds i64****, i64***** %28, i64 1
  store i64**** null, i64***** %29, !tbaa !5
  %30 = getelementptr inbounds i64****, i64***** %29, i64 1
  store i64**** %l_2816, i64***** %30, !tbaa !5
  %31 = getelementptr inbounds i64****, i64***** %30, i64 1
  store i64**** null, i64***** %31, !tbaa !5
  %32 = getelementptr inbounds i64****, i64***** %31, i64 1
  store i64**** null, i64***** %32, !tbaa !5
  %33 = getelementptr inbounds i64****, i64***** %32, i64 1
  store i64**** %l_2816, i64***** %33, !tbaa !5
  %34 = getelementptr inbounds i64****, i64***** %33, i64 1
  store i64**** %l_2816, i64***** %34, !tbaa !5
  %35 = getelementptr inbounds [8 x i64****], [8 x i64****]* %26, i64 1
  %36 = getelementptr inbounds [8 x i64****], [8 x i64****]* %35, i64 0, i64 0
  store i64**** null, i64***** %36, !tbaa !5
  %37 = getelementptr inbounds i64****, i64***** %36, i64 1
  store i64**** null, i64***** %37, !tbaa !5
  %38 = getelementptr inbounds i64****, i64***** %37, i64 1
  store i64**** %l_2816, i64***** %38, !tbaa !5
  %39 = getelementptr inbounds i64****, i64***** %38, i64 1
  store i64**** %l_2816, i64***** %39, !tbaa !5
  %40 = getelementptr inbounds i64****, i64***** %39, i64 1
  store i64**** %l_2816, i64***** %40, !tbaa !5
  %41 = getelementptr inbounds i64****, i64***** %40, i64 1
  store i64**** %l_2816, i64***** %41, !tbaa !5
  %42 = getelementptr inbounds i64****, i64***** %41, i64 1
  store i64**** %l_2816, i64***** %42, !tbaa !5
  %43 = getelementptr inbounds i64****, i64***** %42, i64 1
  store i64**** %l_2816, i64***** %43, !tbaa !5
  %44 = getelementptr inbounds [8 x i64****], [8 x i64****]* %35, i64 1
  %45 = getelementptr inbounds [8 x i64****], [8 x i64****]* %44, i64 0, i64 0
  store i64**** %l_2816, i64***** %45, !tbaa !5
  %46 = getelementptr inbounds i64****, i64***** %45, i64 1
  store i64**** %l_2816, i64***** %46, !tbaa !5
  %47 = getelementptr inbounds i64****, i64***** %46, i64 1
  store i64**** %l_2816, i64***** %47, !tbaa !5
  %48 = getelementptr inbounds i64****, i64***** %47, i64 1
  store i64**** %l_2816, i64***** %48, !tbaa !5
  %49 = getelementptr inbounds i64****, i64***** %48, i64 1
  store i64**** %l_2816, i64***** %49, !tbaa !5
  %50 = getelementptr inbounds i64****, i64***** %49, i64 1
  store i64**** %l_2816, i64***** %50, !tbaa !5
  %51 = getelementptr inbounds i64****, i64***** %50, i64 1
  store i64**** %l_2816, i64***** %51, !tbaa !5
  %52 = getelementptr inbounds i64****, i64***** %51, i64 1
  store i64**** %l_2816, i64***** %52, !tbaa !5
  %53 = getelementptr inbounds [8 x i64****], [8 x i64****]* %44, i64 1
  %54 = getelementptr inbounds [8 x i64****], [8 x i64****]* %53, i64 0, i64 0
  store i64**** null, i64***** %54, !tbaa !5
  %55 = getelementptr inbounds i64****, i64***** %54, i64 1
  store i64**** %l_2816, i64***** %55, !tbaa !5
  %56 = getelementptr inbounds i64****, i64***** %55, i64 1
  store i64**** null, i64***** %56, !tbaa !5
  %57 = getelementptr inbounds i64****, i64***** %56, i64 1
  store i64**** %l_2816, i64***** %57, !tbaa !5
  %58 = getelementptr inbounds i64****, i64***** %57, i64 1
  store i64**** null, i64***** %58, !tbaa !5
  %59 = getelementptr inbounds i64****, i64***** %58, i64 1
  store i64**** %l_2816, i64***** %59, !tbaa !5
  %60 = getelementptr inbounds i64****, i64***** %59, i64 1
  store i64**** null, i64***** %60, !tbaa !5
  %61 = getelementptr inbounds i64****, i64***** %60, i64 1
  store i64**** %l_2816, i64***** %61, !tbaa !5
  %62 = getelementptr inbounds [8 x i64****], [8 x i64****]* %53, i64 1
  %63 = getelementptr inbounds [8 x i64****], [8 x i64****]* %62, i64 0, i64 0
  store i64**** %l_2816, i64***** %63, !tbaa !5
  %64 = getelementptr inbounds i64****, i64***** %63, i64 1
  store i64**** %l_2816, i64***** %64, !tbaa !5
  %65 = getelementptr inbounds i64****, i64***** %64, i64 1
  store i64**** %l_2816, i64***** %65, !tbaa !5
  %66 = getelementptr inbounds i64****, i64***** %65, i64 1
  store i64**** null, i64***** %66, !tbaa !5
  %67 = getelementptr inbounds i64****, i64***** %66, i64 1
  store i64**** %l_2816, i64***** %67, !tbaa !5
  %68 = getelementptr inbounds i64****, i64***** %67, i64 1
  store i64**** %l_2816, i64***** %68, !tbaa !5
  %69 = getelementptr inbounds i64****, i64***** %68, i64 1
  store i64**** %l_2816, i64***** %69, !tbaa !5
  %70 = getelementptr inbounds i64****, i64***** %69, i64 1
  store i64**** %l_2816, i64***** %70, !tbaa !5
  %71 = bitcast i32* %l_2819 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %71) #1
  store i32 0, i32* %l_2819, align 4, !tbaa !1
  %72 = bitcast i32***** %l_2823 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %72) #1
  store i32**** @g_1417, i32***** %l_2823, align 8, !tbaa !5
  %73 = bitcast i32****** %l_2830 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %73) #1
  store i32***** null, i32****** %l_2830, align 8, !tbaa !5
  %74 = bitcast [6 x i32]* %l_2840 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %74) #1
  %75 = bitcast [6 x i32]* %l_2840 to i8*
  call void @llvm.memset.p0i8.i64(i8* %75, i8 0, i64 24, i32 16, i1 false)
  %76 = bitcast i32** %l_2849 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %76) #1
  store i32* null, i32** %l_2849, align 8, !tbaa !5
  %77 = bitcast i32*** %l_2848 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %77) #1
  store i32** %l_2849, i32*** %l_2848, align 8, !tbaa !5
  %78 = bitcast i16** %l_2854 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %78) #1
  store i16* null, i16** %l_2854, align 8, !tbaa !5
  %79 = bitcast i64* %l_2868 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %79) #1
  store i64 1663108833009915786, i64* %l_2868, align 8, !tbaa !7
  %80 = bitcast [5 x [8 x i8]]* %l_2912 to i8*
  call void @llvm.lifetime.start(i64 40, i8* %80) #1
  %81 = bitcast [5 x [8 x i8]]* %l_2912 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %81, i8* getelementptr inbounds ([5 x [8 x i8]], [5 x [8 x i8]]* @func_1.l_2912, i32 0, i32 0, i32 0), i64 40, i32 16, i1 false)
  %82 = bitcast i32* %l_2950 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %82) #1
  store i32 -2, i32* %l_2950, align 4, !tbaa !1
  %83 = bitcast i32**** %l_2989 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %83) #1
  store i32*** %l_2848, i32**** %l_2989, align 8, !tbaa !5
  %84 = bitcast i32* %l_3056 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %84) #1
  store i32 6, i32* %l_3056, align 4, !tbaa !1
  %85 = bitcast i32* %l_3057 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %85) #1
  store i32 1081801406, i32* %l_3057, align 4, !tbaa !1
  %86 = bitcast [2 x i8*]* %l_3058 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %86) #1
  %87 = bitcast i16** %l_3059 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %87) #1
  store i16* getelementptr inbounds ([4 x i16], [4 x i16]* @g_255, i32 0, i64 2), i16** %l_3059, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_3096) #1
  store i8 -4, i8* %l_3096, align 1, !tbaa !9
  %88 = bitcast i64* %l_3118 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %88) #1
  store i64 -10, i64* %l_3118, align 8, !tbaa !7
  %89 = bitcast i32**** %l_3137 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %89) #1
  store i32*** @g_908, i32**** %l_3137, align 8, !tbaa !5
  %90 = bitcast i32***** %l_3136 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %90) #1
  store i32**** %l_3137, i32***** %l_3136, align 8, !tbaa !5
  %91 = bitcast i32* %l_3144 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %91) #1
  store i32 0, i32* %l_3144, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %l_3145) #1
  store i8 2, i8* %l_3145, align 1, !tbaa !9
  %92 = bitcast i16* %l_3222 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %92) #1
  store i16 -16460, i16* %l_3222, align 2, !tbaa !10
  %93 = bitcast i32** %l_3243 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %93) #1
  %94 = getelementptr inbounds [1 x i32], [1 x i32]* %l_53, i32 0, i64 0
  store i32* %94, i32** %l_3243, align 8, !tbaa !5
  %95 = bitcast [2 x i32]* %l_3272 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %95) #1
  %96 = bitcast i32** %l_3358 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %96) #1
  store i32* @g_1256, i32** %l_3358, align 8, !tbaa !5
  %97 = bitcast i16* %l_3405 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %97) #1
  store i16 19967, i16* %l_3405, align 2, !tbaa !10
  %98 = bitcast i64*** %l_3438 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %98) #1
  store i64** @g_906, i64*** %l_3438, align 8, !tbaa !5
  %99 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %99) #1
  %100 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %100) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %101

; <label>:101                                     ; preds = %108, %0
  %102 = load i32, i32* %i, align 4, !tbaa !1
  %103 = icmp slt i32 %102, 1
  br i1 %103, label %104, label %111

; <label>:104                                     ; preds = %101
  %105 = load i32, i32* %i, align 4, !tbaa !1
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [1 x i32], [1 x i32]* %l_53, i32 0, i64 %106
  store i32 -872974812, i32* %107, align 4, !tbaa !1
  br label %108

; <label>:108                                     ; preds = %104
  %109 = load i32, i32* %i, align 4, !tbaa !1
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %i, align 4, !tbaa !1
  br label %101

; <label>:111                                     ; preds = %101
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %112

; <label>:112                                     ; preds = %119, %111
  %113 = load i32, i32* %i, align 4, !tbaa !1
  %114 = icmp slt i32 %113, 2
  br i1 %114, label %115, label %122

; <label>:115                                     ; preds = %112
  %116 = load i32, i32* %i, align 4, !tbaa !1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [2 x i8*], [2 x i8*]* %l_3058, i32 0, i64 %117
  store i8* @g_1199, i8** %118, align 8, !tbaa !5
  br label %119

; <label>:119                                     ; preds = %115
  %120 = load i32, i32* %i, align 4, !tbaa !1
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %i, align 4, !tbaa !1
  br label %112

; <label>:122                                     ; preds = %112
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %123

; <label>:123                                     ; preds = %130, %122
  %124 = load i32, i32* %i, align 4, !tbaa !1
  %125 = icmp slt i32 %124, 2
  br i1 %125, label %126, label %133

; <label>:126                                     ; preds = %123
  %127 = load i32, i32* %i, align 4, !tbaa !1
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [2 x i32], [2 x i32]* %l_3272, i32 0, i64 %128
  store i32 -13669489, i32* %129, align 4, !tbaa !1
  br label %130

; <label>:130                                     ; preds = %126
  %131 = load i32, i32* %i, align 4, !tbaa !1
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %i, align 4, !tbaa !1
  br label %123

; <label>:133                                     ; preds = %123
  %134 = load i32*, i32** %l_3358, align 8, !tbaa !5
  %135 = load i32, i32* %134, align 4, !tbaa !1
  %136 = trunc i32 %135 to i16
  %137 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %137) #1
  %138 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %138) #1
  %139 = bitcast i64*** %l_3438 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %139) #1
  %140 = bitcast i16* %l_3405 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %140) #1
  %141 = bitcast i32** %l_3358 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %141) #1
  %142 = bitcast [2 x i32]* %l_3272 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %142) #1
  %143 = bitcast i32** %l_3243 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %143) #1
  %144 = bitcast i16* %l_3222 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %144) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_3145) #1
  %145 = bitcast i32* %l_3144 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %145) #1
  %146 = bitcast i32***** %l_3136 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %146) #1
  %147 = bitcast i32**** %l_3137 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %147) #1
  %148 = bitcast i64* %l_3118 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %148) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_3096) #1
  %149 = bitcast i16** %l_3059 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %149) #1
  %150 = bitcast [2 x i8*]* %l_3058 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %150) #1
  %151 = bitcast i32* %l_3057 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %151) #1
  %152 = bitcast i32* %l_3056 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %152) #1
  %153 = bitcast i32**** %l_2989 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %153) #1
  %154 = bitcast i32* %l_2950 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %154) #1
  %155 = bitcast [5 x [8 x i8]]* %l_2912 to i8*
  call void @llvm.lifetime.end(i64 40, i8* %155) #1
  %156 = bitcast i64* %l_2868 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %156) #1
  %157 = bitcast i16** %l_2854 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %157) #1
  %158 = bitcast i32*** %l_2848 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %158) #1
  %159 = bitcast i32** %l_2849 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %159) #1
  %160 = bitcast [6 x i32]* %l_2840 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %160) #1
  %161 = bitcast i32****** %l_2830 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %161) #1
  %162 = bitcast i32***** %l_2823 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %162) #1
  %163 = bitcast i32* %l_2819 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %163) #1
  %164 = bitcast [7 x [8 x i64****]]* %l_2815 to i8*
  call void @llvm.lifetime.end(i64 448, i8* %164) #1
  %165 = bitcast i64**** %l_2816 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %165) #1
  %166 = bitcast i32* %l_2813 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %166) #1
  %167 = bitcast i8**** %l_2776 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %167) #1
  %168 = bitcast [1 x i32]* %l_53 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %168) #1
  %169 = bitcast i32* %l_52 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %169) #1
  %170 = bitcast i8** %l_45 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %170) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_2) #1
  ret i16 %136
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
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.52, i32 0, i32 0), i8* %8, i64 %11)
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
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.53, i32 0, i32 0), i32 %3)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

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
