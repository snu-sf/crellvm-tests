; ModuleID = '00020.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_2 = internal global [2 x i32] [i32 1, i32 1], align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"g_2[i]\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_3 = internal global [5 x [3 x i32]] [[3 x i32] [i32 -1991769719, i32 -1, i32 -1], [3 x i32] [i32 -3, i32 7, i32 7], [3 x i32] [i32 -1991769719, i32 -1, i32 -1], [3 x i32] [i32 -3, i32 7, i32 7], [3 x i32] [i32 -1991769719, i32 -1, i32 -1]], align 16
@.str.3 = private unnamed_addr constant [10 x i8] c"g_3[i][j]\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@g_6 = internal global i32 -1407620586, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"g_6\00", align 1
@g_17 = internal global i32 -1832456495, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"g_17\00", align 1
@g_66 = internal global i32 -1697302552, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"g_66\00", align 1
@g_75 = internal global i32 1588873213, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"g_75\00", align 1
@g_95 = internal global i32 -6, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"g_95\00", align 1
@g_116 = internal global i16 -3, align 2
@.str.10 = private unnamed_addr constant [6 x i8] c"g_116\00", align 1
@g_157 = internal global i8 -3, align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"g_157\00", align 1
@g_183 = internal global i8 -59, align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"g_183\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"g_196\00", align 1
@g_209 = internal global [7 x [1 x [10 x i32]]] [[1 x [10 x i32]] [[10 x i32] [i32 795562870, i32 -1839066923, i32 4, i32 1915294007, i32 943793069, i32 -3, i32 -2, i32 840173991, i32 4, i32 1586995616]], [1 x [10 x i32]] [[10 x i32] [i32 -123750645, i32 -713232233, i32 -3, i32 -1839066923, i32 -2, i32 -913203874, i32 -913203874, i32 -913203874, i32 -2140312006, i32 3]], [1 x [10 x i32]] [[10 x i32] [i32 -913203874, i32 -913203874, i32 -2, i32 -1839066923, i32 -3, i32 -713232233, i32 -123750645, i32 -1612928249, i32 3, i32 -1839066923]], [1 x [10 x i32]] [[10 x i32] [i32 -1839066923, i32 -509364216, i32 176493160, i32 -1612928249, i32 1, i32 3, i32 -123750645, i32 -7, i32 3, i32 1828763032]], [1 x [10 x i32]] [[10 x i32] [i32 659599282, i32 -913203874, i32 22504968, i32 659599282, i32 -1839066923, i32 1835643122, i32 -1883723005, i32 -123750645, i32 -1883723005, i32 1835643122]], [1 x [10 x i32]] [[10 x i32] [i32 4, i32 -888979961, i32 1586995616, i32 -888979961, i32 4, i32 795562870, i32 -913203874, i32 -1612928249, i32 -713232233, i32 -913203874]], [1 x [10 x i32]] [[10 x i32] [i32 -123750645, i32 -2140312006, i32 659599282, i32 943793069, i32 -2140312006, i32 -7, i32 1828763032, i32 22504968, i32 3, i32 -913203874]]], align 16
@.str.14 = private unnamed_addr constant [15 x i8] c"g_209[i][j][k]\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"index = [%d][%d][%d]\0A\00", align 1
@g_229 = internal global [4 x [1 x [6 x i64]]] [[1 x [6 x i64]] [[6 x i64] [i64 -5985191645000310623, i64 3172201261367677756, i64 -5985191645000310623, i64 3172201261367677756, i64 -5985191645000310623, i64 3172201261367677756]], [1 x [6 x i64]] [[6 x i64] [i64 -1, i64 3172201261367677756, i64 -1, i64 3172201261367677756, i64 -1, i64 3172201261367677756]], [1 x [6 x i64]] [[6 x i64] [i64 -5985191645000310623, i64 3172201261367677756, i64 -5985191645000310623, i64 3172201261367677756, i64 -5985191645000310623, i64 3172201261367677756]], [1 x [6 x i64]] [[6 x i64] [i64 -1, i64 3172201261367677756, i64 -1, i64 3172201261367677756, i64 -1, i64 3172201261367677756]]], align 16
@.str.16 = private unnamed_addr constant [15 x i8] c"g_229[i][j][k]\00", align 1
@g_237 = internal global i16 -1, align 2
@.str.17 = private unnamed_addr constant [6 x i8] c"g_237\00", align 1
@g_238 = internal global i32 -1, align 4
@.str.18 = private unnamed_addr constant [6 x i8] c"g_238\00", align 1
@g_262 = internal global i8 -4, align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"g_262\00", align 1
@g_265 = internal global [7 x [5 x [4 x i8]]] [[5 x [4 x i8]] [[4 x i8] c"\96\FB\FF\90", [4 x i8] c"\FF\00F\00", [4 x i8] c"\F7P\FB\FF", [4 x i8] c"2\FE\F1\90", [4 x i8] c"\F7K\00\F7"], [5 x [4 x i8]] [[4 x i8] c"\FE\AB\00\B1", [4 x i8] c"\BC\FF\AB\01", [4 x i8] c"\FA\FB\FF\F7", [4 x i8] c"\B8\FB\96\09", [4 x i8] c"\BC\F7\FB\FB"], [5 x [4 x i8]] [[4 x i8] c"\00\00\00\94", [4 x i8] c"m\05!\F7", [4 x i8] c"2\FA\81!", [4 x i8] c"\FB\FAF\F7", [4 x i8] c"\FA\05\FB\94"], [5 x [4 x i8]] [[4 x i8] c"\96\00\AB\FB", [4 x i8] c"K\F7\BD\09", [4 x i8] c"\01\FB\F1\F7", [4 x i8] c"\00\FB!\01", [4 x i8] c"\00\FF\BD\B1"], [5 x [4 x i8]] [[4 x i8] c"\F7\AB\04\F7", [4 x i8] c"\96K2\90", [4 x i8] c"\B8\FEF\FF", [4 x i8] c"KP\00\00", [4 x i8] c"2\00\F6\90"], [5 x [4 x i8]] [[4 x i8] c"\94\FB\00\FB", [4 x i8] c"\01\AB\81\CA", [4 x i8] c"\BC\B8\04\01", [4 x i8] c"\FF\F7\04\00", [4 x i8] c"\00\B4\07\F1"], [5 x [4 x i8]] [[4 x i8] c"\85\00\9Bl", [4 x i8] c"\01\09\00\81", [4 x i8] c"\00F\FF\AB", [4 x i8] c"\FF\00\00\08", [4 x i8] c"\AB\90m\04"]], align 16
@.str.20 = private unnamed_addr constant [15 x i8] c"g_265[i][j][k]\00", align 1
@g_285 = internal global [1 x i16] [i16 19887], align 2
@.str.21 = private unnamed_addr constant [9 x i8] c"g_285[i]\00", align 1
@g_317 = internal global i32 -729779432, align 4
@.str.22 = private unnamed_addr constant [6 x i8] c"g_317\00", align 1
@g_515 = internal global [4 x [8 x i16]] [[8 x i16] [i16 -1, i16 -2, i16 -1, i16 -1, i16 -2, i16 -1, i16 -1, i16 -2], [8 x i16] [i16 -2, i16 -1, i16 -1, i16 -2, i16 -1, i16 -1, i16 -2, i16 -1], [8 x i16] [i16 -2, i16 -2, i16 9, i16 -2, i16 -2, i16 9, i16 -2, i16 -2], [8 x i16] [i16 -1, i16 -2, i16 -1, i16 -1, i16 -2, i16 -1, i16 -1, i16 -2]], align 16
@.str.23 = private unnamed_addr constant [12 x i8] c"g_515[i][j]\00", align 1
@g_571 = internal constant i32 1, align 4
@.str.24 = private unnamed_addr constant [6 x i8] c"g_571\00", align 1
@g_612 = internal global [4 x [8 x i32]] [[8 x i32] [i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8], [8 x i32] [i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8], [8 x i32] [i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8], [8 x i32] [i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8]], align 16
@.str.25 = private unnamed_addr constant [12 x i8] c"g_612[i][j]\00", align 1
@g_653 = internal global [8 x i8] c"\01\01\01\01\01\01\01\01", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"g_653[i]\00", align 1
@g_675 = internal global i64 -6, align 8
@.str.27 = private unnamed_addr constant [6 x i8] c"g_675\00", align 1
@g_680 = internal global [8 x i16] [i16 30798, i16 30798, i16 30798, i16 30798, i16 30798, i16 30798, i16 30798, i16 30798], align 16
@.str.28 = private unnamed_addr constant [9 x i8] c"g_680[i]\00", align 1
@g_709 = internal constant [7 x i64] [i64 1040498743246946030, i64 1040498743246946030, i64 1040498743246946030, i64 1040498743246946030, i64 1040498743246946030, i64 1040498743246946030, i64 1040498743246946030], align 16
@.str.29 = private unnamed_addr constant [9 x i8] c"g_709[i]\00", align 1
@g_752 = internal global [1 x [2 x i32]] [[2 x i32] [i32 1651855095, i32 1651855095]], align 4
@.str.30 = private unnamed_addr constant [12 x i8] c"g_752[i][j]\00", align 1
@g_773 = internal global i64 2865086788505291005, align 8
@.str.31 = private unnamed_addr constant [6 x i8] c"g_773\00", align 1
@g_1004 = internal global i16 1, align 2
@.str.32 = private unnamed_addr constant [7 x i8] c"g_1004\00", align 1
@g_1224 = internal global i16 -2528, align 2
@.str.33 = private unnamed_addr constant [7 x i8] c"g_1224\00", align 1
@g_1283 = internal global i32 -2106612752, align 4
@.str.34 = private unnamed_addr constant [7 x i8] c"g_1283\00", align 1
@g_1398 = internal global i32 -850325990, align 4
@.str.35 = private unnamed_addr constant [7 x i8] c"g_1398\00", align 1
@g_1481 = internal global i32 909168545, align 4
@.str.36 = private unnamed_addr constant [7 x i8] c"g_1481\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"g_1623\00", align 1
@g_1810 = internal global i64 912374142011942389, align 8
@.str.38 = private unnamed_addr constant [7 x i8] c"g_1810\00", align 1
@g_2138 = internal global i32 -7, align 4
@.str.39 = private unnamed_addr constant [7 x i8] c"g_2138\00", align 1
@g_2460 = internal global i16 -1, align 2
@.str.40 = private unnamed_addr constant [7 x i8] c"g_2460\00", align 1
@g_2536 = internal global [2 x [7 x i32]] [[7 x i32] [i32 304125694, i32 4, i32 1089371958, i32 4, i32 304125694, i32 304125694, i32 4], [7 x i32] [i32 0, i32 966767393, i32 0, i32 4, i32 4, i32 0, i32 966767393]], align 16
@.str.41 = private unnamed_addr constant [13 x i8] c"g_2536[i][j]\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"g_2644\00", align 1
@g_2696 = internal global i8 -73, align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"g_2696\00", align 1
@g_2727 = internal global i64 5967780238151962815, align 8
@.str.44 = private unnamed_addr constant [7 x i8] c"g_2727\00", align 1
@g_3122 = internal global i16 -1452, align 2
@.str.45 = private unnamed_addr constant [7 x i8] c"g_3122\00", align 1
@g_3131 = internal global i16 -32073, align 2
@.str.46 = private unnamed_addr constant [7 x i8] c"g_3131\00", align 1
@g_3140 = internal global [3 x i16] [i16 -8, i16 -8, i16 -8], align 2
@.str.47 = private unnamed_addr constant [10 x i8] c"g_3140[i]\00", align 1
@g_3182 = internal global i32 -1203280949, align 4
@.str.48 = private unnamed_addr constant [7 x i8] c"g_3182\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"g_3200\00", align 1
@g_3242 = internal global i32 -1, align 4
@.str.50 = private unnamed_addr constant [7 x i8] c"g_3242\00", align 1
@g_3347 = internal global i32 71366278, align 4
@.str.51 = private unnamed_addr constant [7 x i8] c"g_3347\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@g_3136 = internal global i64** @g_1360, align 8
@func_1.l_3204 = private unnamed_addr constant [2 x [7 x i64***]] [[7 x i64***] [i64*** @g_3136, i64*** null, i64*** @g_3136, i64*** @g_3136, i64*** null, i64*** @g_3136, i64*** @g_3136], [7 x i64***] [i64*** null, i64*** null, i64*** @g_3136, i64*** null, i64*** null, i64*** null, i64*** @g_3136]], align 16
@func_1.l_3032 = private unnamed_addr constant [4 x [4 x i32]] [[4 x i32] [i32 -1, i32 363440406, i32 522396161, i32 522396161], [4 x i32] [i32 0, i32 0, i32 -1, i32 522396161], [4 x i32] [i32 -2033293845, i32 363440406, i32 -2033293845, i32 -1], [4 x i32] [i32 -2033293845, i32 -1, i32 -1, i32 -2033293845]], align 16
@g_2559 = internal global i32** @g_862, align 8
@func_1.l_3239 = private unnamed_addr constant [9 x i32] [i32 1109560666, i32 1109560666, i32 1109560666, i32 1109560666, i32 1109560666, i32 1109560666, i32 1109560666, i32 1109560666, i32 1109560666], align 16
@func_1.l_3383 = private unnamed_addr constant [7 x [4 x [2 x i16]]] [[4 x [2 x i16]] [[2 x i16] [i16 -5, i16 -28056], [2 x i16] [i16 1, i16 0], [2 x i16] [i16 -1, i16 -3], [2 x i16] [i16 -1, i16 0]], [4 x [2 x i16]] [[2 x i16] [i16 1, i16 -28056], [2 x i16] [i16 -5, i16 -9], [2 x i16] [i16 -27365, i16 -9], [2 x i16] [i16 -5, i16 -28056]], [4 x [2 x i16]] [[2 x i16] [i16 1, i16 0], [2 x i16] [i16 -1, i16 -3], [2 x i16] [i16 -1, i16 0], [2 x i16] [i16 1, i16 -28056]], [4 x [2 x i16]] [[2 x i16] [i16 -5, i16 -9], [2 x i16] [i16 -27365, i16 -9], [2 x i16] [i16 -5, i16 -28056], [2 x i16] [i16 1, i16 0]], [4 x [2 x i16]] [[2 x i16] [i16 -1, i16 -3], [2 x i16] [i16 -1, i16 0], [2 x i16] [i16 1, i16 -28056], [2 x i16] [i16 -5, i16 -9]], [4 x [2 x i16]] [[2 x i16] [i16 -27365, i16 -9], [2 x i16] [i16 -5, i16 -28056], [2 x i16] [i16 1, i16 0], [2 x i16] [i16 -1, i16 -3]], [4 x [2 x i16]] [[2 x i16] [i16 -1, i16 0], [2 x i16] [i16 1, i16 -28056], [2 x i16] [i16 -5, i16 -9], [2 x i16] [i16 -27365, i16 -9]]], align 16
@g_826 = internal global i8** @g_827, align 8
@g_131 = internal global i32** bitcast (i8* getelementptr (i8, i8* bitcast ([3 x i32*]* @g_132 to i8*), i64 8) to i32**), align 8
@g_1360 = internal global i64* @g_773, align 8
@g_862 = internal global i32* bitcast (i8* getelementptr (i8, i8* bitcast ([4 x [8 x i32]]* @g_612 to i8*), i64 108) to i32*), align 8
@g_827 = internal global i8* null, align 8
@g_132 = internal global [3 x i32*] [i32* @g_6, i32* @g_6, i32* @g_6], align 16
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
  %90 = call i32 @func_1()
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %91

; <label>:91                                      ; preds = %107, %89
  %92 = load i32, i32* %i, align 4, !tbaa !1
  %93 = icmp slt i32 %92, 2
  br i1 %93, label %94, label %110

; <label>:94                                      ; preds = %91
  %95 = load i32, i32* %i, align 4, !tbaa !1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [2 x i32], [2 x i32]* @g_2, i32 0, i64 %96
  %98 = load volatile i32, i32* %97, align 4, !tbaa !1
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
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %111

; <label>:111                                     ; preds = %139, %110
  %112 = load i32, i32* %i, align 4, !tbaa !1
  %113 = icmp slt i32 %112, 5
  br i1 %113, label %114, label %142

; <label>:114                                     ; preds = %111
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %115

; <label>:115                                     ; preds = %135, %114
  %116 = load i32, i32* %j, align 4, !tbaa !1
  %117 = icmp slt i32 %116, 3
  br i1 %117, label %118, label %138

; <label>:118                                     ; preds = %115
  %119 = load i32, i32* %j, align 4, !tbaa !1
  %120 = sext i32 %119 to i64
  %121 = load i32, i32* %i, align 4, !tbaa !1
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [5 x [3 x i32]], [5 x [3 x i32]]* @g_3, i32 0, i64 %122
  %124 = getelementptr inbounds [3 x i32], [3 x i32]* %123, i32 0, i64 %120
  %125 = load i32, i32* %124, align 4, !tbaa !1
  %126 = sext i32 %125 to i64
  %127 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %126, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 %127)
  %128 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %134

; <label>:130                                     ; preds = %118
  %131 = load i32, i32* %i, align 4, !tbaa !1
  %132 = load i32, i32* %j, align 4, !tbaa !1
  %133 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i32 %131, i32 %132)
  br label %134

; <label>:134                                     ; preds = %130, %118
  br label %135

; <label>:135                                     ; preds = %134
  %136 = load i32, i32* %j, align 4, !tbaa !1
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %j, align 4, !tbaa !1
  br label %115

; <label>:138                                     ; preds = %115
  br label %139

; <label>:139                                     ; preds = %138
  %140 = load i32, i32* %i, align 4, !tbaa !1
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %i, align 4, !tbaa !1
  br label %111

; <label>:142                                     ; preds = %111
  %143 = load i32, i32* @g_6, align 4, !tbaa !1
  %144 = sext i32 %143 to i64
  %145 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %144, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 %145)
  %146 = load i32, i32* @g_17, align 4, !tbaa !1
  %147 = sext i32 %146 to i64
  %148 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %147, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 %148)
  %149 = load i32, i32* @g_66, align 4, !tbaa !1
  %150 = sext i32 %149 to i64
  %151 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %150, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 %151)
  %152 = load i32, i32* @g_75, align 4, !tbaa !1
  %153 = sext i32 %152 to i64
  %154 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %153, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 %154)
  %155 = load i32, i32* @g_95, align 4, !tbaa !1
  %156 = sext i32 %155 to i64
  %157 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %156, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i32 %157)
  %158 = load i16, i16* @g_116, align 2, !tbaa !10
  %159 = sext i16 %158 to i64
  %160 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %159, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i32 %160)
  %161 = load volatile i8, i8* @g_157, align 1, !tbaa !9
  %162 = zext i8 %161 to i64
  %163 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %162, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i32 %163)
  %164 = load i8, i8* @g_183, align 1, !tbaa !9
  %165 = zext i8 %164 to i64
  %166 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %165, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i32 %166)
  %167 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 -1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i32 %167)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %168

; <label>:168                                     ; preds = %208, %142
  %169 = load i32, i32* %i, align 4, !tbaa !1
  %170 = icmp slt i32 %169, 7
  br i1 %170, label %171, label %211

; <label>:171                                     ; preds = %168
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %172

; <label>:172                                     ; preds = %204, %171
  %173 = load i32, i32* %j, align 4, !tbaa !1
  %174 = icmp slt i32 %173, 1
  br i1 %174, label %175, label %207

; <label>:175                                     ; preds = %172
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %176

; <label>:176                                     ; preds = %200, %175
  %177 = load i32, i32* %k, align 4, !tbaa !1
  %178 = icmp slt i32 %177, 10
  br i1 %178, label %179, label %203

; <label>:179                                     ; preds = %176
  %180 = load i32, i32* %k, align 4, !tbaa !1
  %181 = sext i32 %180 to i64
  %182 = load i32, i32* %j, align 4, !tbaa !1
  %183 = sext i32 %182 to i64
  %184 = load i32, i32* %i, align 4, !tbaa !1
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [7 x [1 x [10 x i32]]], [7 x [1 x [10 x i32]]]* @g_209, i32 0, i64 %185
  %187 = getelementptr inbounds [1 x [10 x i32]], [1 x [10 x i32]]* %186, i32 0, i64 %183
  %188 = getelementptr inbounds [10 x i32], [10 x i32]* %187, i32 0, i64 %181
  %189 = load i32, i32* %188, align 4, !tbaa !1
  %190 = sext i32 %189 to i64
  %191 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %190, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i32 %191)
  %192 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %199

; <label>:194                                     ; preds = %179
  %195 = load i32, i32* %i, align 4, !tbaa !1
  %196 = load i32, i32* %j, align 4, !tbaa !1
  %197 = load i32, i32* %k, align 4, !tbaa !1
  %198 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i32 0, i32 0), i32 %195, i32 %196, i32 %197)
  br label %199

; <label>:199                                     ; preds = %194, %179
  br label %200

; <label>:200                                     ; preds = %199
  %201 = load i32, i32* %k, align 4, !tbaa !1
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %k, align 4, !tbaa !1
  br label %176

; <label>:203                                     ; preds = %176
  br label %204

; <label>:204                                     ; preds = %203
  %205 = load i32, i32* %j, align 4, !tbaa !1
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %j, align 4, !tbaa !1
  br label %172

; <label>:207                                     ; preds = %172
  br label %208

; <label>:208                                     ; preds = %207
  %209 = load i32, i32* %i, align 4, !tbaa !1
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %i, align 4, !tbaa !1
  br label %168

; <label>:211                                     ; preds = %168
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %212

; <label>:212                                     ; preds = %251, %211
  %213 = load i32, i32* %i, align 4, !tbaa !1
  %214 = icmp slt i32 %213, 4
  br i1 %214, label %215, label %254

; <label>:215                                     ; preds = %212
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %216

; <label>:216                                     ; preds = %247, %215
  %217 = load i32, i32* %j, align 4, !tbaa !1
  %218 = icmp slt i32 %217, 1
  br i1 %218, label %219, label %250

; <label>:219                                     ; preds = %216
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %220

; <label>:220                                     ; preds = %243, %219
  %221 = load i32, i32* %k, align 4, !tbaa !1
  %222 = icmp slt i32 %221, 6
  br i1 %222, label %223, label %246

; <label>:223                                     ; preds = %220
  %224 = load i32, i32* %k, align 4, !tbaa !1
  %225 = sext i32 %224 to i64
  %226 = load i32, i32* %j, align 4, !tbaa !1
  %227 = sext i32 %226 to i64
  %228 = load i32, i32* %i, align 4, !tbaa !1
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds [4 x [1 x [6 x i64]]], [4 x [1 x [6 x i64]]]* @g_229, i32 0, i64 %229
  %231 = getelementptr inbounds [1 x [6 x i64]], [1 x [6 x i64]]* %230, i32 0, i64 %227
  %232 = getelementptr inbounds [6 x i64], [6 x i64]* %231, i32 0, i64 %225
  %233 = load i64, i64* %232, align 8, !tbaa !7
  %234 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %233, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), i32 %234)
  %235 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %242

; <label>:237                                     ; preds = %223
  %238 = load i32, i32* %i, align 4, !tbaa !1
  %239 = load i32, i32* %j, align 4, !tbaa !1
  %240 = load i32, i32* %k, align 4, !tbaa !1
  %241 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i32 0, i32 0), i32 %238, i32 %239, i32 %240)
  br label %242

; <label>:242                                     ; preds = %237, %223
  br label %243

; <label>:243                                     ; preds = %242
  %244 = load i32, i32* %k, align 4, !tbaa !1
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %k, align 4, !tbaa !1
  br label %220

; <label>:246                                     ; preds = %220
  br label %247

; <label>:247                                     ; preds = %246
  %248 = load i32, i32* %j, align 4, !tbaa !1
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %j, align 4, !tbaa !1
  br label %216

; <label>:250                                     ; preds = %216
  br label %251

; <label>:251                                     ; preds = %250
  %252 = load i32, i32* %i, align 4, !tbaa !1
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %i, align 4, !tbaa !1
  br label %212

; <label>:254                                     ; preds = %212
  %255 = load i16, i16* @g_237, align 2, !tbaa !10
  %256 = zext i16 %255 to i64
  %257 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %256, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i32 %257)
  %258 = load i32, i32* @g_238, align 4, !tbaa !1
  %259 = sext i32 %258 to i64
  %260 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %259, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i32 %260)
  %261 = load i8, i8* @g_262, align 1, !tbaa !9
  %262 = sext i8 %261 to i64
  %263 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %262, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i32 %263)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %264

; <label>:264                                     ; preds = %304, %254
  %265 = load i32, i32* %i, align 4, !tbaa !1
  %266 = icmp slt i32 %265, 7
  br i1 %266, label %267, label %307

; <label>:267                                     ; preds = %264
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %268

; <label>:268                                     ; preds = %300, %267
  %269 = load i32, i32* %j, align 4, !tbaa !1
  %270 = icmp slt i32 %269, 5
  br i1 %270, label %271, label %303

; <label>:271                                     ; preds = %268
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %272

; <label>:272                                     ; preds = %296, %271
  %273 = load i32, i32* %k, align 4, !tbaa !1
  %274 = icmp slt i32 %273, 4
  br i1 %274, label %275, label %299

; <label>:275                                     ; preds = %272
  %276 = load i32, i32* %k, align 4, !tbaa !1
  %277 = sext i32 %276 to i64
  %278 = load i32, i32* %j, align 4, !tbaa !1
  %279 = sext i32 %278 to i64
  %280 = load i32, i32* %i, align 4, !tbaa !1
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds [7 x [5 x [4 x i8]]], [7 x [5 x [4 x i8]]]* @g_265, i32 0, i64 %281
  %283 = getelementptr inbounds [5 x [4 x i8]], [5 x [4 x i8]]* %282, i32 0, i64 %279
  %284 = getelementptr inbounds [4 x i8], [4 x i8]* %283, i32 0, i64 %277
  %285 = load i8, i8* %284, align 1, !tbaa !9
  %286 = zext i8 %285 to i64
  %287 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %286, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0), i32 %287)
  %288 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %295

; <label>:290                                     ; preds = %275
  %291 = load i32, i32* %i, align 4, !tbaa !1
  %292 = load i32, i32* %j, align 4, !tbaa !1
  %293 = load i32, i32* %k, align 4, !tbaa !1
  %294 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i32 0, i32 0), i32 %291, i32 %292, i32 %293)
  br label %295

; <label>:295                                     ; preds = %290, %275
  br label %296

; <label>:296                                     ; preds = %295
  %297 = load i32, i32* %k, align 4, !tbaa !1
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %k, align 4, !tbaa !1
  br label %272

; <label>:299                                     ; preds = %272
  br label %300

; <label>:300                                     ; preds = %299
  %301 = load i32, i32* %j, align 4, !tbaa !1
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %j, align 4, !tbaa !1
  br label %268

; <label>:303                                     ; preds = %268
  br label %304

; <label>:304                                     ; preds = %303
  %305 = load i32, i32* %i, align 4, !tbaa !1
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %i, align 4, !tbaa !1
  br label %264

; <label>:307                                     ; preds = %264
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %308

; <label>:308                                     ; preds = %324, %307
  %309 = load i32, i32* %i, align 4, !tbaa !1
  %310 = icmp slt i32 %309, 1
  br i1 %310, label %311, label %327

; <label>:311                                     ; preds = %308
  %312 = load i32, i32* %i, align 4, !tbaa !1
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds [1 x i16], [1 x i16]* @g_285, i32 0, i64 %313
  %315 = load i16, i16* %314, align 2, !tbaa !10
  %316 = zext i16 %315 to i64
  %317 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %316, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i32 %317)
  %318 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %323

; <label>:320                                     ; preds = %311
  %321 = load i32, i32* %i, align 4, !tbaa !1
  %322 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 %321)
  br label %323

; <label>:323                                     ; preds = %320, %311
  br label %324

; <label>:324                                     ; preds = %323
  %325 = load i32, i32* %i, align 4, !tbaa !1
  %326 = add nsw i32 %325, 1
  store i32 %326, i32* %i, align 4, !tbaa !1
  br label %308

; <label>:327                                     ; preds = %308
  %328 = load i32, i32* @g_317, align 4, !tbaa !1
  %329 = zext i32 %328 to i64
  %330 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %329, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i32 %330)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %331

; <label>:331                                     ; preds = %359, %327
  %332 = load i32, i32* %i, align 4, !tbaa !1
  %333 = icmp slt i32 %332, 4
  br i1 %333, label %334, label %362

; <label>:334                                     ; preds = %331
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %335

; <label>:335                                     ; preds = %355, %334
  %336 = load i32, i32* %j, align 4, !tbaa !1
  %337 = icmp slt i32 %336, 8
  br i1 %337, label %338, label %358

; <label>:338                                     ; preds = %335
  %339 = load i32, i32* %j, align 4, !tbaa !1
  %340 = sext i32 %339 to i64
  %341 = load i32, i32* %i, align 4, !tbaa !1
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds [4 x [8 x i16]], [4 x [8 x i16]]* @g_515, i32 0, i64 %342
  %344 = getelementptr inbounds [8 x i16], [8 x i16]* %343, i32 0, i64 %340
  %345 = load i16, i16* %344, align 2, !tbaa !10
  %346 = sext i16 %345 to i64
  %347 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %346, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i32 0, i32 0), i32 %347)
  %348 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %354

; <label>:350                                     ; preds = %338
  %351 = load i32, i32* %i, align 4, !tbaa !1
  %352 = load i32, i32* %j, align 4, !tbaa !1
  %353 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i32 %351, i32 %352)
  br label %354

; <label>:354                                     ; preds = %350, %338
  br label %355

; <label>:355                                     ; preds = %354
  %356 = load i32, i32* %j, align 4, !tbaa !1
  %357 = add nsw i32 %356, 1
  store i32 %357, i32* %j, align 4, !tbaa !1
  br label %335

; <label>:358                                     ; preds = %335
  br label %359

; <label>:359                                     ; preds = %358
  %360 = load i32, i32* %i, align 4, !tbaa !1
  %361 = add nsw i32 %360, 1
  store i32 %361, i32* %i, align 4, !tbaa !1
  br label %331

; <label>:362                                     ; preds = %331
  %363 = load volatile i32, i32* @g_571, align 4, !tbaa !1
  %364 = sext i32 %363 to i64
  %365 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %364, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %365)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %366

; <label>:366                                     ; preds = %394, %362
  %367 = load i32, i32* %i, align 4, !tbaa !1
  %368 = icmp slt i32 %367, 4
  br i1 %368, label %369, label %397

; <label>:369                                     ; preds = %366
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %370

; <label>:370                                     ; preds = %390, %369
  %371 = load i32, i32* %j, align 4, !tbaa !1
  %372 = icmp slt i32 %371, 8
  br i1 %372, label %373, label %393

; <label>:373                                     ; preds = %370
  %374 = load i32, i32* %j, align 4, !tbaa !1
  %375 = sext i32 %374 to i64
  %376 = load i32, i32* %i, align 4, !tbaa !1
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds [4 x [8 x i32]], [4 x [8 x i32]]* @g_612, i32 0, i64 %377
  %379 = getelementptr inbounds [8 x i32], [8 x i32]* %378, i32 0, i64 %375
  %380 = load i32, i32* %379, align 4, !tbaa !1
  %381 = zext i32 %380 to i64
  %382 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %381, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i32 0, i32 0), i32 %382)
  %383 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %385, label %389

; <label>:385                                     ; preds = %373
  %386 = load i32, i32* %i, align 4, !tbaa !1
  %387 = load i32, i32* %j, align 4, !tbaa !1
  %388 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i32 %386, i32 %387)
  br label %389

; <label>:389                                     ; preds = %385, %373
  br label %390

; <label>:390                                     ; preds = %389
  %391 = load i32, i32* %j, align 4, !tbaa !1
  %392 = add nsw i32 %391, 1
  store i32 %392, i32* %j, align 4, !tbaa !1
  br label %370

; <label>:393                                     ; preds = %370
  br label %394

; <label>:394                                     ; preds = %393
  %395 = load i32, i32* %i, align 4, !tbaa !1
  %396 = add nsw i32 %395, 1
  store i32 %396, i32* %i, align 4, !tbaa !1
  br label %366

; <label>:397                                     ; preds = %366
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %398

; <label>:398                                     ; preds = %414, %397
  %399 = load i32, i32* %i, align 4, !tbaa !1
  %400 = icmp slt i32 %399, 8
  br i1 %400, label %401, label %417

; <label>:401                                     ; preds = %398
  %402 = load i32, i32* %i, align 4, !tbaa !1
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds [8 x i8], [8 x i8]* @g_653, i32 0, i64 %403
  %405 = load volatile i8, i8* %404, align 1, !tbaa !9
  %406 = sext i8 %405 to i64
  %407 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %406, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), i32 %407)
  %408 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %410, label %413

; <label>:410                                     ; preds = %401
  %411 = load i32, i32* %i, align 4, !tbaa !1
  %412 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 %411)
  br label %413

; <label>:413                                     ; preds = %410, %401
  br label %414

; <label>:414                                     ; preds = %413
  %415 = load i32, i32* %i, align 4, !tbaa !1
  %416 = add nsw i32 %415, 1
  store i32 %416, i32* %i, align 4, !tbaa !1
  br label %398

; <label>:417                                     ; preds = %398
  %418 = load i64, i64* @g_675, align 8, !tbaa !7
  %419 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %418, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 %419)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %420

; <label>:420                                     ; preds = %436, %417
  %421 = load i32, i32* %i, align 4, !tbaa !1
  %422 = icmp slt i32 %421, 8
  br i1 %422, label %423, label %439

; <label>:423                                     ; preds = %420
  %424 = load i32, i32* %i, align 4, !tbaa !1
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds [8 x i16], [8 x i16]* @g_680, i32 0, i64 %425
  %427 = load i16, i16* %426, align 2, !tbaa !10
  %428 = zext i16 %427 to i64
  %429 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %428, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), i32 %429)
  %430 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %431 = icmp ne i32 %430, 0
  br i1 %431, label %432, label %435

; <label>:432                                     ; preds = %423
  %433 = load i32, i32* %i, align 4, !tbaa !1
  %434 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 %433)
  br label %435

; <label>:435                                     ; preds = %432, %423
  br label %436

; <label>:436                                     ; preds = %435
  %437 = load i32, i32* %i, align 4, !tbaa !1
  %438 = add nsw i32 %437, 1
  store i32 %438, i32* %i, align 4, !tbaa !1
  br label %420

; <label>:439                                     ; preds = %420
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %440

; <label>:440                                     ; preds = %455, %439
  %441 = load i32, i32* %i, align 4, !tbaa !1
  %442 = icmp slt i32 %441, 7
  br i1 %442, label %443, label %458

; <label>:443                                     ; preds = %440
  %444 = load i32, i32* %i, align 4, !tbaa !1
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds [7 x i64], [7 x i64]* @g_709, i32 0, i64 %445
  %447 = load i64, i64* %446, align 8, !tbaa !7
  %448 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %447, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0), i32 %448)
  %449 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %450 = icmp ne i32 %449, 0
  br i1 %450, label %451, label %454

; <label>:451                                     ; preds = %443
  %452 = load i32, i32* %i, align 4, !tbaa !1
  %453 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 %452)
  br label %454

; <label>:454                                     ; preds = %451, %443
  br label %455

; <label>:455                                     ; preds = %454
  %456 = load i32, i32* %i, align 4, !tbaa !1
  %457 = add nsw i32 %456, 1
  store i32 %457, i32* %i, align 4, !tbaa !1
  br label %440

; <label>:458                                     ; preds = %440
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %459

; <label>:459                                     ; preds = %487, %458
  %460 = load i32, i32* %i, align 4, !tbaa !1
  %461 = icmp slt i32 %460, 1
  br i1 %461, label %462, label %490

; <label>:462                                     ; preds = %459
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %463

; <label>:463                                     ; preds = %483, %462
  %464 = load i32, i32* %j, align 4, !tbaa !1
  %465 = icmp slt i32 %464, 2
  br i1 %465, label %466, label %486

; <label>:466                                     ; preds = %463
  %467 = load i32, i32* %j, align 4, !tbaa !1
  %468 = sext i32 %467 to i64
  %469 = load i32, i32* %i, align 4, !tbaa !1
  %470 = sext i32 %469 to i64
  %471 = getelementptr inbounds [1 x [2 x i32]], [1 x [2 x i32]]* @g_752, i32 0, i64 %470
  %472 = getelementptr inbounds [2 x i32], [2 x i32]* %471, i32 0, i64 %468
  %473 = load volatile i32, i32* %472, align 4, !tbaa !1
  %474 = zext i32 %473 to i64
  %475 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %474, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i32 0, i32 0), i32 %475)
  %476 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %477 = icmp ne i32 %476, 0
  br i1 %477, label %478, label %482

; <label>:478                                     ; preds = %466
  %479 = load i32, i32* %i, align 4, !tbaa !1
  %480 = load i32, i32* %j, align 4, !tbaa !1
  %481 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i32 %479, i32 %480)
  br label %482

; <label>:482                                     ; preds = %478, %466
  br label %483

; <label>:483                                     ; preds = %482
  %484 = load i32, i32* %j, align 4, !tbaa !1
  %485 = add nsw i32 %484, 1
  store i32 %485, i32* %j, align 4, !tbaa !1
  br label %463

; <label>:486                                     ; preds = %463
  br label %487

; <label>:487                                     ; preds = %486
  %488 = load i32, i32* %i, align 4, !tbaa !1
  %489 = add nsw i32 %488, 1
  store i32 %489, i32* %i, align 4, !tbaa !1
  br label %459

; <label>:490                                     ; preds = %459
  %491 = load i64, i64* @g_773, align 8, !tbaa !7
  %492 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %491, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i32 %492)
  %493 = load volatile i16, i16* @g_1004, align 2, !tbaa !10
  %494 = zext i16 %493 to i64
  %495 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %494, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), i32 %495)
  %496 = load i16, i16* @g_1224, align 2, !tbaa !10
  %497 = zext i16 %496 to i64
  %498 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %497, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), i32 %498)
  %499 = load volatile i32, i32* @g_1283, align 4, !tbaa !1
  %500 = zext i32 %499 to i64
  %501 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %500, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0), i32 %501)
  %502 = load volatile i32, i32* @g_1398, align 4, !tbaa !1
  %503 = sext i32 %502 to i64
  %504 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %503, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0), i32 %504)
  %505 = load i32, i32* @g_1481, align 4, !tbaa !1
  %506 = sext i32 %505 to i64
  %507 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %506, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), i32 %507)
  %508 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), i32 %508)
  %509 = load i64, i64* @g_1810, align 8, !tbaa !7
  %510 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %509, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), i32 %510)
  %511 = load i32, i32* @g_2138, align 4, !tbaa !1
  %512 = zext i32 %511 to i64
  %513 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %512, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i32 0, i32 0), i32 %513)
  %514 = load i16, i16* @g_2460, align 2, !tbaa !10
  %515 = zext i16 %514 to i64
  %516 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %515, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0), i32 %516)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %517

; <label>:517                                     ; preds = %545, %490
  %518 = load i32, i32* %i, align 4, !tbaa !1
  %519 = icmp slt i32 %518, 2
  br i1 %519, label %520, label %548

; <label>:520                                     ; preds = %517
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %521

; <label>:521                                     ; preds = %541, %520
  %522 = load i32, i32* %j, align 4, !tbaa !1
  %523 = icmp slt i32 %522, 7
  br i1 %523, label %524, label %544

; <label>:524                                     ; preds = %521
  %525 = load i32, i32* %j, align 4, !tbaa !1
  %526 = sext i32 %525 to i64
  %527 = load i32, i32* %i, align 4, !tbaa !1
  %528 = sext i32 %527 to i64
  %529 = getelementptr inbounds [2 x [7 x i32]], [2 x [7 x i32]]* @g_2536, i32 0, i64 %528
  %530 = getelementptr inbounds [7 x i32], [7 x i32]* %529, i32 0, i64 %526
  %531 = load i32, i32* %530, align 4, !tbaa !1
  %532 = zext i32 %531 to i64
  %533 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %532, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.41, i32 0, i32 0), i32 %533)
  %534 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %535 = icmp ne i32 %534, 0
  br i1 %535, label %536, label %540

; <label>:536                                     ; preds = %524
  %537 = load i32, i32* %i, align 4, !tbaa !1
  %538 = load i32, i32* %j, align 4, !tbaa !1
  %539 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i32 %537, i32 %538)
  br label %540

; <label>:540                                     ; preds = %536, %524
  br label %541

; <label>:541                                     ; preds = %540
  %542 = load i32, i32* %j, align 4, !tbaa !1
  %543 = add nsw i32 %542, 1
  store i32 %543, i32* %j, align 4, !tbaa !1
  br label %521

; <label>:544                                     ; preds = %521
  br label %545

; <label>:545                                     ; preds = %544
  %546 = load i32, i32* %i, align 4, !tbaa !1
  %547 = add nsw i32 %546, 1
  store i32 %547, i32* %i, align 4, !tbaa !1
  br label %517

; <label>:548                                     ; preds = %517
  %549 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 252, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), i32 %549)
  %550 = load i8, i8* @g_2696, align 1, !tbaa !9
  %551 = sext i8 %550 to i64
  %552 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %551, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), i32 %552)
  %553 = load volatile i64, i64* @g_2727, align 8, !tbaa !7
  %554 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %553, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i32 0, i32 0), i32 %554)
  %555 = load i16, i16* @g_3122, align 2, !tbaa !10
  %556 = zext i16 %555 to i64
  %557 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %556, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), i32 %557)
  %558 = load i16, i16* @g_3131, align 2, !tbaa !10
  %559 = sext i16 %558 to i64
  %560 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %559, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0), i32 %560)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %561

; <label>:561                                     ; preds = %577, %548
  %562 = load i32, i32* %i, align 4, !tbaa !1
  %563 = icmp slt i32 %562, 3
  br i1 %563, label %564, label %580

; <label>:564                                     ; preds = %561
  %565 = load i32, i32* %i, align 4, !tbaa !1
  %566 = sext i32 %565 to i64
  %567 = getelementptr inbounds [3 x i16], [3 x i16]* @g_3140, i32 0, i64 %566
  %568 = load i16, i16* %567, align 2, !tbaa !10
  %569 = zext i16 %568 to i64
  %570 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %569, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i32 0, i32 0), i32 %570)
  %571 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %572 = icmp ne i32 %571, 0
  br i1 %572, label %573, label %576

; <label>:573                                     ; preds = %564
  %574 = load i32, i32* %i, align 4, !tbaa !1
  %575 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 %574)
  br label %576

; <label>:576                                     ; preds = %573, %564
  br label %577

; <label>:577                                     ; preds = %576
  %578 = load i32, i32* %i, align 4, !tbaa !1
  %579 = add nsw i32 %578, 1
  store i32 %579, i32* %i, align 4, !tbaa !1
  br label %561

; <label>:580                                     ; preds = %561
  %581 = load i32, i32* @g_3182, align 4, !tbaa !1
  %582 = zext i32 %581 to i64
  %583 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %582, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0), i32 %583)
  %584 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0), i32 %584)
  %585 = load volatile i32, i32* @g_3242, align 4, !tbaa !1
  %586 = sext i32 %585 to i64
  %587 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %586, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i32 0, i32 0), i32 %587)
  %588 = load volatile i32, i32* @g_3347, align 4, !tbaa !1
  %589 = sext i32 %588 to i64
  %590 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %589, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), i32 %590)
  %591 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %592 = zext i32 %591 to i64
  %593 = xor i64 %592, 4294967295
  %594 = trunc i64 %593 to i32
  %595 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %594, i32 %595)
  %596 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %596) #1
  %597 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %597) #1
  %598 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %598) #1
  %599 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %599) #1
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
  %1 = alloca i32, align 4
  %l_3019 = alloca [3 x i16], align 2
  %l_3042 = alloca i32, align 4
  %l_3077 = alloca i16*, align 8
  %l_3088 = alloca i16, align 2
  %l_3101 = alloca i32, align 4
  %l_3106 = alloca i32, align 4
  %l_3109 = alloca i32, align 4
  %l_3111 = alloca i32, align 4
  %l_3181 = alloca i32, align 4
  %l_3202 = alloca i64, align 8
  %l_3204 = alloca [2 x [7 x i64***]], align 16
  %l_3253 = alloca i32, align 4
  %l_3288 = alloca i64, align 8
  %l_3351 = alloca i64, align 8
  %l_3393 = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %l_14 = alloca i32, align 4
  %l_18 = alloca i16, align 2
  %l_3022 = alloca i32, align 4
  %l_3024 = alloca i32, align 4
  %l_3032 = alloca [4 x [4 x i32]], align 16
  %l_3057 = alloca i32, align 4
  %l_3095 = alloca i8, align 1
  %l_3113 = alloca i32, align 4
  %l_3114 = alloca i32, align 4
  %l_3206 = alloca i64*, align 8
  %l_3207 = alloca i32***, align 8
  %l_3236 = alloca i16, align 2
  %l_3244 = alloca i32, align 4
  %l_3247 = alloca i64, align 8
  %l_3317 = alloca i16, align 2
  %l_3395 = alloca i32, align 4
  %l_3421 = alloca i32*, align 8
  %l_3420 = alloca i32**, align 8
  %l_3427 = alloca i8*, align 8
  %i1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  %l_9 = alloca i64, align 8
  %2 = alloca i32
  %l_15 = alloca i32*, align 8
  %l_16 = alloca i32*, align 8
  %l_3089 = alloca i64, align 8
  %l_3096 = alloca i32, align 4
  %l_3100 = alloca i32, align 4
  %l_3102 = alloca i32, align 4
  %l_3104 = alloca i32, align 4
  %l_3112 = alloca i32, align 4
  %l_3226 = alloca i32***, align 8
  %l_3225 = alloca i32****, align 8
  %l_3239 = alloca [9 x i32], align 16
  %l_3246 = alloca i8, align 1
  %l_3282 = alloca [5 x i8], align 1
  %l_3383 = alloca [7 x [4 x [2 x i16]]], align 16
  %l_3406 = alloca i32, align 4
  %i3 = alloca i32, align 4
  %j4 = alloca i32, align 4
  %k = alloca i32, align 4
  %3 = bitcast [3 x i16]* %l_3019 to i8*
  call void @llvm.lifetime.start(i64 6, i8* %3) #1
  %4 = bitcast i32* %l_3042 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 1109035, i32* %l_3042, align 4, !tbaa !1
  %5 = bitcast i16** %l_3077 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store i16* @g_2460, i16** %l_3077, align 8, !tbaa !5
  %6 = bitcast i16* %l_3088 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %6) #1
  store i16 -7, i16* %l_3088, align 2, !tbaa !10
  %7 = bitcast i32* %l_3101 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 4, i32* %l_3101, align 4, !tbaa !1
  %8 = bitcast i32* %l_3106 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  store i32 -497422643, i32* %l_3106, align 4, !tbaa !1
  %9 = bitcast i32* %l_3109 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 -8, i32* %l_3109, align 4, !tbaa !1
  %10 = bitcast i32* %l_3111 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  store i32 -6, i32* %l_3111, align 4, !tbaa !1
  %11 = bitcast i32* %l_3181 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  store i32 -1940429595, i32* %l_3181, align 4, !tbaa !1
  %12 = bitcast i64* %l_3202 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  store i64 5237953864176523064, i64* %l_3202, align 8, !tbaa !7
  %13 = bitcast [2 x [7 x i64***]]* %l_3204 to i8*
  call void @llvm.lifetime.start(i64 112, i8* %13) #1
  %14 = bitcast [2 x [7 x i64***]]* %l_3204 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* bitcast ([2 x [7 x i64***]]* @func_1.l_3204 to i8*), i64 112, i32 16, i1 false)
  %15 = bitcast i32* %l_3253 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  store i32 2056828208, i32* %l_3253, align 4, !tbaa !1
  %16 = bitcast i64* %l_3288 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  store i64 -7926641036349024180, i64* %l_3288, align 8, !tbaa !7
  %17 = bitcast i64* %l_3351 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  store i64 1, i64* %l_3351, align 8, !tbaa !7
  %18 = bitcast i32** %l_3393 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  store i32* %l_3042, i32** %l_3393, align 8, !tbaa !5
  %19 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %21

; <label>:21                                      ; preds = %28, %0
  %22 = load i32, i32* %i, align 4, !tbaa !1
  %23 = icmp slt i32 %22, 3
  br i1 %23, label %24, label %31

; <label>:24                                      ; preds = %21
  %25 = load i32, i32* %i, align 4, !tbaa !1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [3 x i16], [3 x i16]* %l_3019, i32 0, i64 %26
  store i16 -18006, i16* %27, align 2, !tbaa !10
  br label %28

; <label>:28                                      ; preds = %24
  %29 = load i32, i32* %i, align 4, !tbaa !1
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %i, align 4, !tbaa !1
  br label %21

; <label>:31                                      ; preds = %21
  store i32 -20, i32* getelementptr inbounds ([5 x [3 x i32]], [5 x [3 x i32]]* @g_3, i32 0, i64 3, i64 1), align 4, !tbaa !1
  br label %32

; <label>:32                                      ; preds = %155, %31
  %33 = load i32, i32* getelementptr inbounds ([5 x [3 x i32]], [5 x [3 x i32]]* @g_3, i32 0, i64 3, i64 1), align 4, !tbaa !1
  %34 = icmp sgt i32 %33, -25
  br i1 %34, label %35, label %158

; <label>:35                                      ; preds = %32
  %36 = bitcast i32* %l_14 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %36) #1
  store i32 -1, i32* %l_14, align 4, !tbaa !1
  %37 = bitcast i16* %l_18 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %37) #1
  store i16 0, i16* %l_18, align 2, !tbaa !10
  %38 = bitcast i32* %l_3022 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %38) #1
  store i32 -423253785, i32* %l_3022, align 4, !tbaa !1
  %39 = bitcast i32* %l_3024 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %39) #1
  store i32 -843945289, i32* %l_3024, align 4, !tbaa !1
  %40 = bitcast [4 x [4 x i32]]* %l_3032 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %40) #1
  %41 = bitcast [4 x [4 x i32]]* %l_3032 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* bitcast ([4 x [4 x i32]]* @func_1.l_3032 to i8*), i64 64, i32 16, i1 false)
  %42 = bitcast i32* %l_3057 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %42) #1
  store i32 -1948818355, i32* %l_3057, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %l_3095) #1
  store i8 0, i8* %l_3095, align 1, !tbaa !9
  %43 = bitcast i32* %l_3113 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #1
  store i32 190925512, i32* %l_3113, align 4, !tbaa !1
  %44 = bitcast i32* %l_3114 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %44) #1
  store i32 491814488, i32* %l_3114, align 4, !tbaa !1
  %45 = bitcast i64** %l_3206 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %45) #1
  store i64* null, i64** %l_3206, align 8, !tbaa !5
  %46 = bitcast i32**** %l_3207 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %46) #1
  store i32*** null, i32**** %l_3207, align 8, !tbaa !5
  %47 = bitcast i16* %l_3236 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %47) #1
  store i16 29398, i16* %l_3236, align 2, !tbaa !10
  %48 = bitcast i32* %l_3244 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %48) #1
  store i32 -1752863583, i32* %l_3244, align 4, !tbaa !1
  %49 = bitcast i64* %l_3247 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %49) #1
  store i64 -313787523814237098, i64* %l_3247, align 8, !tbaa !7
  %50 = bitcast i16* %l_3317 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %50) #1
  store i16 8163, i16* %l_3317, align 2, !tbaa !10
  %51 = bitcast i32* %l_3395 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %51) #1
  store i32 -1769373385, i32* %l_3395, align 4, !tbaa !1
  %52 = bitcast i32** %l_3421 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %52) #1
  %53 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %l_3032, i32 0, i64 2
  %54 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i64 2
  store i32* %54, i32** %l_3421, align 8, !tbaa !5
  %55 = bitcast i32*** %l_3420 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %55) #1
  store i32** %l_3421, i32*** %l_3420, align 8, !tbaa !5
  %56 = bitcast i8** %l_3427 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %56) #1
  store i8* @g_183, i8** %l_3427, align 8, !tbaa !5
  %57 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %57) #1
  %58 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %58) #1
  store i32 0, i32* @g_6, align 4, !tbaa !1
  br label %59

; <label>:59                                      ; preds = %66, %35
  %60 = load i32, i32* @g_6, align 4, !tbaa !1
  %61 = icmp sge i32 %60, 22
  br i1 %61, label %62, label %71

; <label>:62                                      ; preds = %59
  %63 = bitcast i64* %l_9 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %63) #1
  store i64 -9109250817124267248, i64* %l_9, align 8, !tbaa !7
  store volatile i32 1, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_2, i32 0, i64 0), align 4, !tbaa !1
  %64 = load volatile i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_2, i32 0, i64 1), align 4, !tbaa !1
  store i32 %64, i32* %1
  store i32 1, i32* %2
  %65 = bitcast i64* %l_9 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #1
  br label %133
                                                  ; No predecessors!
  %67 = load i32, i32* @g_6, align 4, !tbaa !1
  %68 = sext i32 %67 to i64
  %69 = call i64 @safe_add_func_int64_t_s_s(i64 %68, i64 8)
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* @g_6, align 4, !tbaa !1
  br label %59

; <label>:71                                      ; preds = %59
  store i32 -4, i32* @g_6, align 4, !tbaa !1
  br label %72

; <label>:72                                      ; preds = %123, %71
  %73 = load i32, i32* @g_6, align 4, !tbaa !1
  %74 = icmp eq i32 %73, -19
  br i1 %74, label %75, label %128

; <label>:75                                      ; preds = %72
  %76 = bitcast i32** %l_15 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %76) #1
  store i32* null, i32** %l_15, align 8, !tbaa !5
  %77 = bitcast i32** %l_16 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %77) #1
  store i32* @g_17, i32** %l_16, align 8, !tbaa !5
  %78 = bitcast i64* %l_3089 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %78) #1
  store i64 1185701343668432944, i64* %l_3089, align 8, !tbaa !7
  %79 = bitcast i32* %l_3096 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %79) #1
  store i32 -1696232956, i32* %l_3096, align 4, !tbaa !1
  %80 = bitcast i32* %l_3100 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %80) #1
  store i32 -860056340, i32* %l_3100, align 4, !tbaa !1
  %81 = bitcast i32* %l_3102 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %81) #1
  store i32 -1799826092, i32* %l_3102, align 4, !tbaa !1
  %82 = bitcast i32* %l_3104 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %82) #1
  store i32 -1, i32* %l_3104, align 4, !tbaa !1
  %83 = bitcast i32* %l_3112 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %83) #1
  store i32 -6, i32* %l_3112, align 4, !tbaa !1
  %84 = bitcast i32**** %l_3226 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %84) #1
  store i32*** @g_2559, i32**** %l_3226, align 8, !tbaa !5
  %85 = bitcast i32***** %l_3225 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %85) #1
  store i32**** %l_3226, i32***** %l_3225, align 8, !tbaa !5
  %86 = bitcast [9 x i32]* %l_3239 to i8*
  call void @llvm.lifetime.start(i64 36, i8* %86) #1
  %87 = bitcast [9 x i32]* %l_3239 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %87, i8* bitcast ([9 x i32]* @func_1.l_3239 to i8*), i64 36, i32 16, i1 false)
  call void @llvm.lifetime.start(i64 1, i8* %l_3246) #1
  store i8 41, i8* %l_3246, align 1, !tbaa !9
  %88 = bitcast [5 x i8]* %l_3282 to i8*
  call void @llvm.lifetime.start(i64 5, i8* %88) #1
  %89 = bitcast [7 x [4 x [2 x i16]]]* %l_3383 to i8*
  call void @llvm.lifetime.start(i64 112, i8* %89) #1
  %90 = bitcast [7 x [4 x [2 x i16]]]* %l_3383 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %90, i8* bitcast ([7 x [4 x [2 x i16]]]* @func_1.l_3383 to i8*), i64 112, i32 16, i1 false)
  %91 = bitcast i32* %l_3406 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %91) #1
  store i32 -7, i32* %l_3406, align 4, !tbaa !1
  %92 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %92) #1
  %93 = bitcast i32* %j4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %93) #1
  %94 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %94) #1
  store i32 0, i32* %i3, align 4, !tbaa !1
  br label %95

; <label>:95                                      ; preds = %102, %75
  %96 = load i32, i32* %i3, align 4, !tbaa !1
  %97 = icmp slt i32 %96, 5
  br i1 %97, label %98, label %105

; <label>:98                                      ; preds = %95
  %99 = load i32, i32* %i3, align 4, !tbaa !1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [5 x i8], [5 x i8]* %l_3282, i32 0, i64 %100
  store i8 101, i8* %101, align 1, !tbaa !9
  br label %102

; <label>:102                                     ; preds = %98
  %103 = load i32, i32* %i3, align 4, !tbaa !1
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %i3, align 4, !tbaa !1
  br label %95

; <label>:105                                     ; preds = %95
  %106 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %106) #1
  %107 = bitcast i32* %j4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %107) #1
  %108 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %108) #1
  %109 = bitcast i32* %l_3406 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %109) #1
  %110 = bitcast [7 x [4 x [2 x i16]]]* %l_3383 to i8*
  call void @llvm.lifetime.end(i64 112, i8* %110) #1
  %111 = bitcast [5 x i8]* %l_3282 to i8*
  call void @llvm.lifetime.end(i64 5, i8* %111) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_3246) #1
  %112 = bitcast [9 x i32]* %l_3239 to i8*
  call void @llvm.lifetime.end(i64 36, i8* %112) #1
  %113 = bitcast i32***** %l_3225 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %113) #1
  %114 = bitcast i32**** %l_3226 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %114) #1
  %115 = bitcast i32* %l_3112 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %115) #1
  %116 = bitcast i32* %l_3104 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %116) #1
  %117 = bitcast i32* %l_3102 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %117) #1
  %118 = bitcast i32* %l_3100 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %118) #1
  %119 = bitcast i32* %l_3096 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %119) #1
  %120 = bitcast i64* %l_3089 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %120) #1
  %121 = bitcast i32** %l_16 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %121) #1
  %122 = bitcast i32** %l_15 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %122) #1
  br label %123

; <label>:123                                     ; preds = %105
  %124 = load i32, i32* @g_6, align 4, !tbaa !1
  %125 = trunc i32 %124 to i8
  %126 = call signext i8 @safe_sub_func_int8_t_s_s(i8 signext %125, i8 signext 1)
  %127 = sext i8 %126 to i32
  store i32 %127, i32* @g_6, align 4, !tbaa !1
  br label %72

; <label>:128                                     ; preds = %72
  %129 = load i32**, i32*** @g_131, align 8, !tbaa !5
  %130 = load i32*, i32** %129, align 8, !tbaa !5
  %131 = load i32, i32* %130, align 4, !tbaa !1
  %132 = xor i32 %131, 0
  store i32 %132, i32* %130, align 4, !tbaa !1
  store i32 0, i32* %2
  br label %133

; <label>:133                                     ; preds = %128, %62
  %134 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %134) #1
  %135 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %135) #1
  %136 = bitcast i8** %l_3427 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %136) #1
  %137 = bitcast i32*** %l_3420 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %137) #1
  %138 = bitcast i32** %l_3421 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %138) #1
  %139 = bitcast i32* %l_3395 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %139) #1
  %140 = bitcast i16* %l_3317 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %140) #1
  %141 = bitcast i64* %l_3247 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %141) #1
  %142 = bitcast i32* %l_3244 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %142) #1
  %143 = bitcast i16* %l_3236 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %143) #1
  %144 = bitcast i32**** %l_3207 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %144) #1
  %145 = bitcast i64** %l_3206 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %145) #1
  %146 = bitcast i32* %l_3114 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %146) #1
  %147 = bitcast i32* %l_3113 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %147) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_3095) #1
  %148 = bitcast i32* %l_3057 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %148) #1
  %149 = bitcast [4 x [4 x i32]]* %l_3032 to i8*
  call void @llvm.lifetime.end(i64 64, i8* %149) #1
  %150 = bitcast i32* %l_3024 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %150) #1
  %151 = bitcast i32* %l_3022 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %151) #1
  %152 = bitcast i16* %l_18 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %152) #1
  %153 = bitcast i32* %l_14 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %153) #1
  %cleanup.dest = load i32, i32* %2
  switch i32 %cleanup.dest, label %161 [
    i32 0, label %154
  ]

; <label>:154                                     ; preds = %133
  br label %155

; <label>:155                                     ; preds = %154
  %156 = load i32, i32* getelementptr inbounds ([5 x [3 x i32]], [5 x [3 x i32]]* @g_3, i32 0, i64 3, i64 1), align 4, !tbaa !1
  %157 = add nsw i32 %156, -1
  store i32 %157, i32* getelementptr inbounds ([5 x [3 x i32]], [5 x [3 x i32]]* @g_3, i32 0, i64 3, i64 1), align 4, !tbaa !1
  br label %32

; <label>:158                                     ; preds = %32
  %159 = load i64, i64* %l_3288, align 8, !tbaa !7
  %160 = trunc i64 %159 to i32
  store i32 %160, i32* %1
  store i32 1, i32* %2
  br label %161

; <label>:161                                     ; preds = %158, %133
  %162 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %162) #1
  %163 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %163) #1
  %164 = bitcast i32** %l_3393 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %164) #1
  %165 = bitcast i64* %l_3351 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %165) #1
  %166 = bitcast i64* %l_3288 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %166) #1
  %167 = bitcast i32* %l_3253 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %167) #1
  %168 = bitcast [2 x [7 x i64***]]* %l_3204 to i8*
  call void @llvm.lifetime.end(i64 112, i8* %168) #1
  %169 = bitcast i64* %l_3202 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %169) #1
  %170 = bitcast i32* %l_3181 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %170) #1
  %171 = bitcast i32* %l_3111 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %171) #1
  %172 = bitcast i32* %l_3109 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %172) #1
  %173 = bitcast i32* %l_3106 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %173) #1
  %174 = bitcast i32* %l_3101 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %174) #1
  %175 = bitcast i16* %l_3088 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %175) #1
  %176 = bitcast i16** %l_3077 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %176) #1
  %177 = bitcast i32* %l_3042 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %177) #1
  %178 = bitcast [3 x i16]* %l_3019 to i8*
  call void @llvm.lifetime.end(i64 6, i8* %178) #1
  %179 = load i32, i32* %1
  ret i32 %179
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
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

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
