; ModuleID = '00407.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_2 = internal global i32 543309881, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"g_2\00", align 1
@g_6 = internal global i32 -7, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"g_6\00", align 1
@g_31 = internal global [3 x [2 x i32]] [[2 x i32] [i32 478911397, i32 478911397], [2 x i32] [i32 478911397, i32 478911397], [2 x i32] [i32 478911397, i32 478911397]], align 16
@.str.3 = private unnamed_addr constant [11 x i8] c"g_31[i][j]\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@g_35 = internal global i32 -998595946, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"g_35\00", align 1
@g_50 = internal global i32 -826761116, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"g_50\00", align 1
@g_56 = internal global [7 x [2 x [7 x i64]]] [[2 x [7 x i64]] [[7 x i64] [i64 4395100949596171859, i64 1179644016829996915, i64 -1, i64 1, i64 -1982732108918877759, i64 1461557819764052186, i64 -6], [7 x i64] [i64 -9, i64 -7559320642050042894, i64 -1982732108918877759, i64 5, i64 -4716493186747738250, i64 8283607327939786533, i64 9155026833157861109]], [2 x [7 x i64]] [[7 x i64] [i64 2, i64 1, i64 -10, i64 -8, i64 -3, i64 -2806807148374189379, i64 0], [7 x i64] [i64 1461557819764052186, i64 1, i64 1, i64 -9, i64 -1, i64 -1, i64 -9]], [2 x [7 x i64]] [[7 x i64] [i64 7177448030197003851, i64 -7559320642050042894, i64 7177448030197003851, i64 -3, i64 2, i64 1, i64 -1], [7 x i64] [i64 9155026833157861109, i64 1179644016829996915, i64 -535407713953792683, i64 2278146106981122511, i64 4167787237910891810, i64 5, i64 1]], [2 x [7 x i64]] [[7 x i64] [i64 2, i64 -9, i64 1, i64 1, i64 2278146106981122511, i64 3266050178480429804, i64 1], [7 x i64] [i64 -6, i64 1, i64 -1, i64 9155026833157861109, i64 -4716493186747738250, i64 1, i64 -3]], [2 x [7 x i64]] [[7 x i64] [i64 9155026833157861109, i64 9, i64 8528199167594765644, i64 -3, i64 -2806807148374189379, i64 -4716493186747738250, i64 -6], [7 x i64] [i64 0, i64 -6, i64 8528199167594765644, i64 -2444029214194785445, i64 1, i64 96943636002644662, i64 1]], [2 x [7 x i64]] [[7 x i64] [i64 -9, i64 -1, i64 -1, i64 -9, i64 1, i64 1, i64 1461557819764052186], [7 x i64] [i64 -1, i64 2278146106981122511, i64 1, i64 1, i64 -2444029214194785445, i64 -9, i64 4167787237910891810]], [2 x [7 x i64]] [[7 x i64] [i64 -200907225640860493, i64 4395100949596171859, i64 1179644016829996915, i64 -1, i64 1, i64 -1982732108918877759, i64 1461557819764052186], [7 x i64] [i64 2, i64 8447810275365148868, i64 -5391071961353379847, i64 1, i64 4395100949596171859, i64 -1, i64 1]]], align 16
@.str.7 = private unnamed_addr constant [14 x i8] c"g_56[i][j][k]\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"index = [%d][%d][%d]\0A\00", align 1
@g_59 = internal global i32 -129229015, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"g_59\00", align 1
@g_60 = internal global i64 3656471692622798806, align 8
@.str.10 = private unnamed_addr constant [5 x i8] c"g_60\00", align 1
@g_61 = internal global i32 946908954, align 4
@.str.11 = private unnamed_addr constant [5 x i8] c"g_61\00", align 1
@g_74 = internal global i32 -643967301, align 4
@.str.12 = private unnamed_addr constant [5 x i8] c"g_74\00", align 1
@g_75 = internal global i32 4, align 4
@.str.13 = private unnamed_addr constant [5 x i8] c"g_75\00", align 1
@g_76 = internal global i32 -1157072260, align 4
@.str.14 = private unnamed_addr constant [5 x i8] c"g_76\00", align 1
@g_83 = internal global [1 x [6 x [9 x i16]]] [[6 x [9 x i16]] [[9 x i16] [i16 5, i16 20262, i16 20262, i16 5, i16 20262, i16 20262, i16 5, i16 20262, i16 20262], [9 x i16] [i16 6, i16 -1, i16 0, i16 -24448, i16 0, i16 -1, i16 6, i16 -1, i16 0], [9 x i16] [i16 5, i16 20262, i16 20262, i16 5, i16 20262, i16 20262, i16 5, i16 20262, i16 20262], [9 x i16] [i16 6, i16 -1, i16 0, i16 -24448, i16 0, i16 -1, i16 6, i16 -1, i16 0], [9 x i16] [i16 5, i16 20262, i16 20262, i16 5, i16 20262, i16 20262, i16 5, i16 20262, i16 20262], [9 x i16] [i16 6, i16 -1, i16 0, i16 -24448, i16 0, i16 -1, i16 6, i16 -1, i16 0]]], align 16
@.str.15 = private unnamed_addr constant [14 x i8] c"g_83[i][j][k]\00", align 1
@g_87 = internal global i32 -3, align 4
@.str.16 = private unnamed_addr constant [5 x i8] c"g_87\00", align 1
@g_94 = internal global i64 -3135617175489253870, align 8
@.str.17 = private unnamed_addr constant [5 x i8] c"g_94\00", align 1
@g_111 = internal global i16 29670, align 2
@.str.18 = private unnamed_addr constant [6 x i8] c"g_111\00", align 1
@g_117 = internal global i32 -10, align 4
@.str.19 = private unnamed_addr constant [6 x i8] c"g_117\00", align 1
@g_129 = internal global i64 9, align 8
@.str.20 = private unnamed_addr constant [6 x i8] c"g_129\00", align 1
@g_131 = internal global i8 -1, align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"g_131\00", align 1
@g_132 = internal global i32 371155111, align 4
@.str.22 = private unnamed_addr constant [6 x i8] c"g_132\00", align 1
@g_164 = internal global i16 0, align 2
@.str.23 = private unnamed_addr constant [6 x i8] c"g_164\00", align 1
@g_166 = internal global i16 -32198, align 2
@.str.24 = private unnamed_addr constant [6 x i8] c"g_166\00", align 1
@g_172 = internal global i64 -1, align 8
@.str.25 = private unnamed_addr constant [6 x i8] c"g_172\00", align 1
@g_191 = internal global i16 -1, align 2
@.str.26 = private unnamed_addr constant [6 x i8] c"g_191\00", align 1
@g_208 = internal global i8 30, align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"g_208\00", align 1
@g_221 = internal global i32 1, align 4
@.str.28 = private unnamed_addr constant [6 x i8] c"g_221\00", align 1
@g_230 = internal global i8 -8, align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"g_230\00", align 1
@g_350 = internal global i8 30, align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"g_350\00", align 1
@g_435 = internal global i64 0, align 8
@.str.31 = private unnamed_addr constant [6 x i8] c"g_435\00", align 1
@g_545 = internal global [8 x i32] [i32 8, i32 79750104, i32 8, i32 79750104, i32 8, i32 79750104, i32 8, i32 79750104], align 16
@.str.32 = private unnamed_addr constant [9 x i8] c"g_545[i]\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_648 = internal global i32 1020795130, align 4
@.str.34 = private unnamed_addr constant [6 x i8] c"g_648\00", align 1
@g_855 = internal global i16 32110, align 2
@.str.35 = private unnamed_addr constant [6 x i8] c"g_855\00", align 1
@g_972 = internal global i16 1025, align 2
@.str.36 = private unnamed_addr constant [6 x i8] c"g_972\00", align 1
@g_1009 = internal global [6 x [8 x i8]] [[8 x i8] c"\02\A2\02T\FF[m*", [8 x i8] c"\FA\FF\E1[[\E1\FF\FA", [8 x i8] c"\FAT<\02\FF/\E1/", [8 x i8] c"\02\FF*\FF\02/\A2\FF", [8 x i8] c"mT\FF:\E1\E1:\FF", [8 x i8] c"\FF\FF\FF\FA<[\FA\02"], align 16
@.str.37 = private unnamed_addr constant [13 x i8] c"g_1009[i][j]\00", align 1
@g_1086 = internal global i8 38, align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"g_1086\00", align 1
@g_1294 = internal global i32 938340161, align 4
@.str.39 = private unnamed_addr constant [7 x i8] c"g_1294\00", align 1
@g_1601 = internal global i32 -686719860, align 4
@.str.40 = private unnamed_addr constant [7 x i8] c"g_1601\00", align 1
@g_1639 = internal global i16 6, align 2
@.str.41 = private unnamed_addr constant [7 x i8] c"g_1639\00", align 1
@g_1736 = internal global i64 0, align 8
@.str.42 = private unnamed_addr constant [7 x i8] c"g_1736\00", align 1
@g_1762 = internal global [2 x [9 x i64]] [[9 x i64] [i64 4267860995761048022, i64 6925860209571316495, i64 4267860995761048022, i64 0, i64 -8969950771070630546, i64 -8969950771070630546, i64 0, i64 4267860995761048022, i64 6925860209571316495], [9 x i64] [i64 6925860209571316495, i64 4267860995761048022, i64 0, i64 -8969950771070630546, i64 -8969950771070630546, i64 0, i64 4267860995761048022, i64 6925860209571316495, i64 4267860995761048022]], align 16
@.str.43 = private unnamed_addr constant [13 x i8] c"g_1762[i][j]\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@g_737 = internal global i32** bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [7 x i32*]]* @g_738 to i8*), i64 136) to i32**), align 8
@g_1397 = internal global i32**** @g_1398, align 8
@g_229 = internal global i8* @g_230, align 8
@g_343 = internal global i16** @g_344, align 8
@g_342 = internal global i16*** @g_343, align 8
@g_766 = internal global i64* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x [2 x [7 x i64]]]* @g_56 to i8*), i64 56) to i64*), align 8
@g_123 = internal global i32** @g_124, align 8
@g_1205 = internal global i32** getelementptr inbounds ([5 x i32*], [5 x i32*]* @g_120, i32 0, i32 0), align 8
@g_321 = internal global i64* @g_172, align 8
@g_1401 = internal global i32***** @g_1402, align 8
@g_738 = internal global [6 x [7 x i32*]] [[7 x i32*] [i32* @g_221, i32* null, i32* @g_221, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i32]* @g_545 to i8*), i64 8) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i32]* @g_545 to i8*), i64 8) to i32*), i32* @g_221, i32* null], [7 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i32]* @g_545 to i8*), i64 8) to i32*), i32* @g_221, i32* null, i32* null, i32* @g_132, i32* @g_648, i32* @g_648], [7 x i32*] [i32* null, i32* @g_221, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i32]* @g_545 to i8*), i64 8) to i32*), i32* @g_221, i32* @g_221, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i32]* @g_545 to i8*), i64 28) to i32*), i32* @g_648], [7 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i32]* @g_545 to i8*), i64 8) to i32*), i32* null, i32* @g_221, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i32]* @g_545 to i8*), i64 28) to i32*), i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i32]* @g_545 to i8*), i64 28) to i32*), i32* @g_221], [7 x i32*] [i32* @g_648, i32* @g_648, i32* @g_132, i32* null, i32* null, i32* @g_221, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i32]* @g_545 to i8*), i64 8) to i32*)], [7 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i32]* @g_545 to i8*), i64 8) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i32]* @g_545 to i8*), i64 28) to i32*), i32* @g_132, i32* @g_132, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i32]* @g_545 to i8*), i64 28) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i32]* @g_545 to i8*), i64 8) to i32*), i32* null]], align 16
@g_1398 = internal global i32*** @g_123, align 8
@g_344 = internal global i16* @g_164, align 8
@g_124 = internal global i32* @g_6, align 8
@g_120 = internal global [5 x i32*] [i32* @g_74, i32* @g_74, i32* @g_74, i32* @g_74, i32* @g_74], align 16
@g_1402 = internal global i32**** @g_1398, align 8
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
  %94 = load i32, i32* @g_6, align 4, !tbaa !1
  %95 = sext i32 %94 to i64
  %96 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %95, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 %96)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %97

; <label>:97                                      ; preds = %125, %89
  %98 = load i32, i32* %i, align 4, !tbaa !1
  %99 = icmp slt i32 %98, 3
  br i1 %99, label %100, label %128

; <label>:100                                     ; preds = %97
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %101

; <label>:101                                     ; preds = %121, %100
  %102 = load i32, i32* %j, align 4, !tbaa !1
  %103 = icmp slt i32 %102, 2
  br i1 %103, label %104, label %124

; <label>:104                                     ; preds = %101
  %105 = load i32, i32* %j, align 4, !tbaa !1
  %106 = sext i32 %105 to i64
  %107 = load i32, i32* %i, align 4, !tbaa !1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* @g_31, i32 0, i64 %108
  %110 = getelementptr inbounds [2 x i32], [2 x i32]* %109, i32 0, i64 %106
  %111 = load i32, i32* %110, align 4, !tbaa !1
  %112 = zext i32 %111 to i64
  %113 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %112, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i32 %113)
  %114 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %120

; <label>:116                                     ; preds = %104
  %117 = load i32, i32* %i, align 4, !tbaa !1
  %118 = load i32, i32* %j, align 4, !tbaa !1
  %119 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i32 %117, i32 %118)
  br label %120

; <label>:120                                     ; preds = %116, %104
  br label %121

; <label>:121                                     ; preds = %120
  %122 = load i32, i32* %j, align 4, !tbaa !1
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %j, align 4, !tbaa !1
  br label %101

; <label>:124                                     ; preds = %101
  br label %125

; <label>:125                                     ; preds = %124
  %126 = load i32, i32* %i, align 4, !tbaa !1
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %i, align 4, !tbaa !1
  br label %97

; <label>:128                                     ; preds = %97
  %129 = load i32, i32* @g_35, align 4, !tbaa !1
  %130 = sext i32 %129 to i64
  %131 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %130, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 %131)
  %132 = load i32, i32* @g_50, align 4, !tbaa !1
  %133 = sext i32 %132 to i64
  %134 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %133, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 %134)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %135

; <label>:135                                     ; preds = %174, %128
  %136 = load i32, i32* %i, align 4, !tbaa !1
  %137 = icmp slt i32 %136, 7
  br i1 %137, label %138, label %177

; <label>:138                                     ; preds = %135
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %139

; <label>:139                                     ; preds = %170, %138
  %140 = load i32, i32* %j, align 4, !tbaa !1
  %141 = icmp slt i32 %140, 2
  br i1 %141, label %142, label %173

; <label>:142                                     ; preds = %139
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %143

; <label>:143                                     ; preds = %166, %142
  %144 = load i32, i32* %k, align 4, !tbaa !1
  %145 = icmp slt i32 %144, 7
  br i1 %145, label %146, label %169

; <label>:146                                     ; preds = %143
  %147 = load i32, i32* %k, align 4, !tbaa !1
  %148 = sext i32 %147 to i64
  %149 = load i32, i32* %j, align 4, !tbaa !1
  %150 = sext i32 %149 to i64
  %151 = load i32, i32* %i, align 4, !tbaa !1
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [7 x [2 x [7 x i64]]], [7 x [2 x [7 x i64]]]* @g_56, i32 0, i64 %152
  %154 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* %153, i32 0, i64 %150
  %155 = getelementptr inbounds [7 x i64], [7 x i64]* %154, i32 0, i64 %148
  %156 = load i64, i64* %155, align 8, !tbaa !7
  %157 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %156, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), i32 %157)
  %158 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %165

; <label>:160                                     ; preds = %146
  %161 = load i32, i32* %i, align 4, !tbaa !1
  %162 = load i32, i32* %j, align 4, !tbaa !1
  %163 = load i32, i32* %k, align 4, !tbaa !1
  %164 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0), i32 %161, i32 %162, i32 %163)
  br label %165

; <label>:165                                     ; preds = %160, %146
  br label %166

; <label>:166                                     ; preds = %165
  %167 = load i32, i32* %k, align 4, !tbaa !1
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %k, align 4, !tbaa !1
  br label %143

; <label>:169                                     ; preds = %143
  br label %170

; <label>:170                                     ; preds = %169
  %171 = load i32, i32* %j, align 4, !tbaa !1
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %j, align 4, !tbaa !1
  br label %139

; <label>:173                                     ; preds = %139
  br label %174

; <label>:174                                     ; preds = %173
  %175 = load i32, i32* %i, align 4, !tbaa !1
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %i, align 4, !tbaa !1
  br label %135

; <label>:177                                     ; preds = %135
  %178 = load i32, i32* @g_59, align 4, !tbaa !1
  %179 = sext i32 %178 to i64
  %180 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %179, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i32 %180)
  %181 = load volatile i64, i64* @g_60, align 8, !tbaa !7
  %182 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %181, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32 %182)
  %183 = load i32, i32* @g_61, align 4, !tbaa !1
  %184 = zext i32 %183 to i64
  %185 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %184, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i32 %185)
  %186 = load volatile i32, i32* @g_74, align 4, !tbaa !1
  %187 = sext i32 %186 to i64
  %188 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %187, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 %188)
  %189 = load volatile i32, i32* @g_75, align 4, !tbaa !1
  %190 = sext i32 %189 to i64
  %191 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %190, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i32 %191)
  %192 = load i32, i32* @g_76, align 4, !tbaa !1
  %193 = sext i32 %192 to i64
  %194 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %193, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i32 %194)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %195

; <label>:195                                     ; preds = %235, %177
  %196 = load i32, i32* %i, align 4, !tbaa !1
  %197 = icmp slt i32 %196, 1
  br i1 %197, label %198, label %238

; <label>:198                                     ; preds = %195
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %199

; <label>:199                                     ; preds = %231, %198
  %200 = load i32, i32* %j, align 4, !tbaa !1
  %201 = icmp slt i32 %200, 6
  br i1 %201, label %202, label %234

; <label>:202                                     ; preds = %199
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %203

; <label>:203                                     ; preds = %227, %202
  %204 = load i32, i32* %k, align 4, !tbaa !1
  %205 = icmp slt i32 %204, 9
  br i1 %205, label %206, label %230

; <label>:206                                     ; preds = %203
  %207 = load i32, i32* %k, align 4, !tbaa !1
  %208 = sext i32 %207 to i64
  %209 = load i32, i32* %j, align 4, !tbaa !1
  %210 = sext i32 %209 to i64
  %211 = load i32, i32* %i, align 4, !tbaa !1
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds [1 x [6 x [9 x i16]]], [1 x [6 x [9 x i16]]]* @g_83, i32 0, i64 %212
  %214 = getelementptr inbounds [6 x [9 x i16]], [6 x [9 x i16]]* %213, i32 0, i64 %210
  %215 = getelementptr inbounds [9 x i16], [9 x i16]* %214, i32 0, i64 %208
  %216 = load i16, i16* %215, align 2, !tbaa !10
  %217 = zext i16 %216 to i64
  %218 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %217, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i32 %218)
  %219 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %226

; <label>:221                                     ; preds = %206
  %222 = load i32, i32* %i, align 4, !tbaa !1
  %223 = load i32, i32* %j, align 4, !tbaa !1
  %224 = load i32, i32* %k, align 4, !tbaa !1
  %225 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0), i32 %222, i32 %223, i32 %224)
  br label %226

; <label>:226                                     ; preds = %221, %206
  br label %227

; <label>:227                                     ; preds = %226
  %228 = load i32, i32* %k, align 4, !tbaa !1
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %k, align 4, !tbaa !1
  br label %203

; <label>:230                                     ; preds = %203
  br label %231

; <label>:231                                     ; preds = %230
  %232 = load i32, i32* %j, align 4, !tbaa !1
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %j, align 4, !tbaa !1
  br label %199

; <label>:234                                     ; preds = %199
  br label %235

; <label>:235                                     ; preds = %234
  %236 = load i32, i32* %i, align 4, !tbaa !1
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %i, align 4, !tbaa !1
  br label %195

; <label>:238                                     ; preds = %195
  %239 = load i32, i32* @g_87, align 4, !tbaa !1
  %240 = zext i32 %239 to i64
  %241 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %240, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i32 %241)
  %242 = load i64, i64* @g_94, align 8, !tbaa !7
  %243 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %242, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i32 %243)
  %244 = load i16, i16* @g_111, align 2, !tbaa !10
  %245 = zext i16 %244 to i64
  %246 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %245, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i32 %246)
  %247 = load i32, i32* @g_117, align 4, !tbaa !1
  %248 = zext i32 %247 to i64
  %249 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %248, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i32 %249)
  %250 = load i64, i64* @g_129, align 8, !tbaa !7
  %251 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %250, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 %251)
  %252 = load i8, i8* @g_131, align 1, !tbaa !9
  %253 = sext i8 %252 to i64
  %254 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %253, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i32 %254)
  %255 = load i32, i32* @g_132, align 4, !tbaa !1
  %256 = sext i32 %255 to i64
  %257 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %256, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i32 %257)
  %258 = load i16, i16* @g_164, align 2, !tbaa !10
  %259 = sext i16 %258 to i64
  %260 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %259, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 %260)
  %261 = load i16, i16* @g_166, align 2, !tbaa !10
  %262 = sext i16 %261 to i64
  %263 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %262, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %263)
  %264 = load i64, i64* @g_172, align 8, !tbaa !7
  %265 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %264, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i32 %265)
  %266 = load i16, i16* @g_191, align 2, !tbaa !10
  %267 = zext i16 %266 to i64
  %268 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %267, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i32 %268)
  %269 = load i8, i8* @g_208, align 1, !tbaa !9
  %270 = zext i8 %269 to i64
  %271 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %270, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 %271)
  %272 = load i32, i32* @g_221, align 4, !tbaa !1
  %273 = sext i32 %272 to i64
  %274 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %273, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i32 %274)
  %275 = load i8, i8* @g_230, align 1, !tbaa !9
  %276 = sext i8 %275 to i64
  %277 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %276, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i32 %277)
  %278 = load i8, i8* @g_350, align 1, !tbaa !9
  %279 = zext i8 %278 to i64
  %280 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %279, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i32 %280)
  %281 = load volatile i64, i64* @g_435, align 8, !tbaa !7
  %282 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %281, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i32 %282)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %283

; <label>:283                                     ; preds = %299, %238
  %284 = load i32, i32* %i, align 4, !tbaa !1
  %285 = icmp slt i32 %284, 8
  br i1 %285, label %286, label %302

; <label>:286                                     ; preds = %283
  %287 = load i32, i32* %i, align 4, !tbaa !1
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds [8 x i32], [8 x i32]* @g_545, i32 0, i64 %288
  %290 = load i32, i32* %289, align 4, !tbaa !1
  %291 = sext i32 %290 to i64
  %292 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %291, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0), i32 %292)
  %293 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %298

; <label>:295                                     ; preds = %286
  %296 = load i32, i32* %i, align 4, !tbaa !1
  %297 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i32 0, i32 0), i32 %296)
  br label %298

; <label>:298                                     ; preds = %295, %286
  br label %299

; <label>:299                                     ; preds = %298
  %300 = load i32, i32* %i, align 4, !tbaa !1
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %i, align 4, !tbaa !1
  br label %283

; <label>:302                                     ; preds = %283
  %303 = load i32, i32* @g_648, align 4, !tbaa !1
  %304 = sext i32 %303 to i64
  %305 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %304, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), i32 %305)
  %306 = load volatile i16, i16* @g_855, align 2, !tbaa !10
  %307 = sext i16 %306 to i64
  %308 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %307, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), i32 %308)
  %309 = load i16, i16* @g_972, align 2, !tbaa !10
  %310 = zext i16 %309 to i64
  %311 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %310, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i32 %311)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %312

; <label>:312                                     ; preds = %340, %302
  %313 = load i32, i32* %i, align 4, !tbaa !1
  %314 = icmp slt i32 %313, 6
  br i1 %314, label %315, label %343

; <label>:315                                     ; preds = %312
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %316

; <label>:316                                     ; preds = %336, %315
  %317 = load i32, i32* %j, align 4, !tbaa !1
  %318 = icmp slt i32 %317, 8
  br i1 %318, label %319, label %339

; <label>:319                                     ; preds = %316
  %320 = load i32, i32* %j, align 4, !tbaa !1
  %321 = sext i32 %320 to i64
  %322 = load i32, i32* %i, align 4, !tbaa !1
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds [6 x [8 x i8]], [6 x [8 x i8]]* @g_1009, i32 0, i64 %323
  %325 = getelementptr inbounds [8 x i8], [8 x i8]* %324, i32 0, i64 %321
  %326 = load i8, i8* %325, align 1, !tbaa !9
  %327 = sext i8 %326 to i64
  %328 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %327, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i32 0, i32 0), i32 %328)
  %329 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %335

; <label>:331                                     ; preds = %319
  %332 = load i32, i32* %i, align 4, !tbaa !1
  %333 = load i32, i32* %j, align 4, !tbaa !1
  %334 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i32 %332, i32 %333)
  br label %335

; <label>:335                                     ; preds = %331, %319
  br label %336

; <label>:336                                     ; preds = %335
  %337 = load i32, i32* %j, align 4, !tbaa !1
  %338 = add nsw i32 %337, 1
  store i32 %338, i32* %j, align 4, !tbaa !1
  br label %316

; <label>:339                                     ; preds = %316
  br label %340

; <label>:340                                     ; preds = %339
  %341 = load i32, i32* %i, align 4, !tbaa !1
  %342 = add nsw i32 %341, 1
  store i32 %342, i32* %i, align 4, !tbaa !1
  br label %312

; <label>:343                                     ; preds = %312
  %344 = load i8, i8* @g_1086, align 1, !tbaa !9
  %345 = sext i8 %344 to i64
  %346 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %345, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), i32 %346)
  %347 = load i32, i32* @g_1294, align 4, !tbaa !1
  %348 = sext i32 %347 to i64
  %349 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %348, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i32 0, i32 0), i32 %349)
  %350 = load i32, i32* @g_1601, align 4, !tbaa !1
  %351 = sext i32 %350 to i64
  %352 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %351, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0), i32 %352)
  %353 = load i16, i16* @g_1639, align 2, !tbaa !10
  %354 = sext i16 %353 to i64
  %355 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %354, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0), i32 %355)
  %356 = load i64, i64* @g_1736, align 8, !tbaa !7
  %357 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %356, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), i32 %357)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %358

; <label>:358                                     ; preds = %385, %343
  %359 = load i32, i32* %i, align 4, !tbaa !1
  %360 = icmp slt i32 %359, 2
  br i1 %360, label %361, label %388

; <label>:361                                     ; preds = %358
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %362

; <label>:362                                     ; preds = %381, %361
  %363 = load i32, i32* %j, align 4, !tbaa !1
  %364 = icmp slt i32 %363, 9
  br i1 %364, label %365, label %384

; <label>:365                                     ; preds = %362
  %366 = load i32, i32* %j, align 4, !tbaa !1
  %367 = sext i32 %366 to i64
  %368 = load i32, i32* %i, align 4, !tbaa !1
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds [2 x [9 x i64]], [2 x [9 x i64]]* @g_1762, i32 0, i64 %369
  %371 = getelementptr inbounds [9 x i64], [9 x i64]* %370, i32 0, i64 %367
  %372 = load volatile i64, i64* %371, align 8, !tbaa !7
  %373 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %372, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.43, i32 0, i32 0), i32 %373)
  %374 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %380

; <label>:376                                     ; preds = %365
  %377 = load i32, i32* %i, align 4, !tbaa !1
  %378 = load i32, i32* %j, align 4, !tbaa !1
  %379 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i32 %377, i32 %378)
  br label %380

; <label>:380                                     ; preds = %376, %365
  br label %381

; <label>:381                                     ; preds = %380
  %382 = load i32, i32* %j, align 4, !tbaa !1
  %383 = add nsw i32 %382, 1
  store i32 %383, i32* %j, align 4, !tbaa !1
  br label %362

; <label>:384                                     ; preds = %362
  br label %385

; <label>:385                                     ; preds = %384
  %386 = load i32, i32* %i, align 4, !tbaa !1
  %387 = add nsw i32 %386, 1
  store i32 %387, i32* %i, align 4, !tbaa !1
  br label %358

; <label>:388                                     ; preds = %358
  %389 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %390 = zext i32 %389 to i64
  %391 = xor i64 %390, 4294967295
  %392 = trunc i64 %391 to i32
  %393 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %392, i32 %393)
  %394 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %394) #1
  %395 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %395) #1
  %396 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %396) #1
  %397 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %397) #1
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
  %l_5 = alloca [1 x i16], align 2
  %l_1824 = alloca i8, align 1
  %i = alloca i32, align 4
  %l_28 = alloca i32, align 4
  %l_1774 = alloca i32, align 4
  %l_1821 = alloca i32, align 4
  %l_27 = alloca i32, align 4
  %i1 = alloca i32, align 4
  %l_1796 = alloca i32*, align 8
  %l_1797 = alloca [1 x [7 x i32]], align 16
  %l_1822 = alloca i8*, align 8
  %i2 = alloca i32, align 4
  %j = alloca i32, align 4
  %1 = alloca i32
  %2 = bitcast [1 x i16]* %l_5 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %2) #1
  call void @llvm.lifetime.start(i64 1, i8* %l_1824) #1
  store i8 8, i8* %l_1824, align 1, !tbaa !9
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %4

; <label>:4                                       ; preds = %11, %0
  %5 = load i32, i32* %i, align 4, !tbaa !1
  %6 = icmp slt i32 %5, 1
  br i1 %6, label %7, label %14

; <label>:7                                       ; preds = %4
  %8 = load i32, i32* %i, align 4, !tbaa !1
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [1 x i16], [1 x i16]* %l_5, i32 0, i64 %9
  store i16 2, i16* %10, align 2, !tbaa !10
  br label %11

; <label>:11                                      ; preds = %7
  %12 = load i32, i32* %i, align 4, !tbaa !1
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %i, align 4, !tbaa !1
  br label %4

; <label>:14                                      ; preds = %4
  br label %15

; <label>:15                                      ; preds = %298, %14
  store i32 0, i32* @g_2, align 4, !tbaa !1
  br label %16

; <label>:16                                      ; preds = %303, %15
  %17 = load i32, i32* @g_2, align 4, !tbaa !1
  %18 = icmp slt i32 %17, -8
  br i1 %18, label %19, label %306

; <label>:19                                      ; preds = %16
  %20 = bitcast i32* %l_28 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  store i32 -1934202891, i32* %l_28, align 4, !tbaa !1
  %21 = bitcast i32* %l_1774 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  store i32 321524534, i32* %l_1774, align 4, !tbaa !1
  %22 = bitcast i32* %l_1821 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  store i32 1349460900, i32* %l_1821, align 4, !tbaa !1
  store i32 0, i32* @g_6, align 4, !tbaa !1
  br label %23

; <label>:23                                      ; preds = %31, %19
  %24 = load i32, i32* @g_6, align 4, !tbaa !1
  %25 = icmp sle i32 %24, 0
  br i1 %25, label %26, label %34

; <label>:26                                      ; preds = %23
  %27 = bitcast i32* %l_27 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  store i32 81652139, i32* %l_27, align 4, !tbaa !1
  %28 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #1
  %29 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
  %30 = bitcast i32* %l_27 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #1
  br label %31

; <label>:31                                      ; preds = %26
  %32 = load i32, i32* @g_6, align 4, !tbaa !1
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* @g_6, align 4, !tbaa !1
  br label %23

; <label>:34                                      ; preds = %23
  store i16 0, i16* @g_1639, align 2, !tbaa !10
  br label %35

; <label>:35                                      ; preds = %294, %34
  %36 = load i16, i16* @g_1639, align 2, !tbaa !10
  %37 = sext i16 %36 to i32
  %38 = icmp sle i32 %37, -1
  br i1 %38, label %39, label %297

; <label>:39                                      ; preds = %35
  %40 = bitcast i32** %l_1796 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %40) #1
  store i32* @g_87, i32** %l_1796, align 8, !tbaa !5
  %41 = bitcast [1 x [7 x i32]]* %l_1797 to i8*
  call void @llvm.lifetime.start(i64 28, i8* %41) #1
  %42 = bitcast i8** %l_1822 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %42) #1
  store i8* @g_350, i8** %l_1822, align 8, !tbaa !5
  %43 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #1
  %44 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %44) #1
  store i32 0, i32* %i2, align 4, !tbaa !1
  br label %45

; <label>:45                                      ; preds = %63, %39
  %46 = load i32, i32* %i2, align 4, !tbaa !1
  %47 = icmp slt i32 %46, 1
  br i1 %47, label %48, label %66

; <label>:48                                      ; preds = %45
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %49

; <label>:49                                      ; preds = %59, %48
  %50 = load i32, i32* %j, align 4, !tbaa !1
  %51 = icmp slt i32 %50, 7
  br i1 %51, label %52, label %62

; <label>:52                                      ; preds = %49
  %53 = load i32, i32* %j, align 4, !tbaa !1
  %54 = sext i32 %53 to i64
  %55 = load i32, i32* %i2, align 4, !tbaa !1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [1 x [7 x i32]], [1 x [7 x i32]]* %l_1797, i32 0, i64 %56
  %58 = getelementptr inbounds [7 x i32], [7 x i32]* %57, i32 0, i64 %54
  store i32 8, i32* %58, align 4, !tbaa !1
  br label %59

; <label>:59                                      ; preds = %52
  %60 = load i32, i32* %j, align 4, !tbaa !1
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %j, align 4, !tbaa !1
  br label %49

; <label>:62                                      ; preds = %49
  br label %63

; <label>:63                                      ; preds = %62
  %64 = load i32, i32* %i2, align 4, !tbaa !1
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %i2, align 4, !tbaa !1
  br label %45

; <label>:66                                      ; preds = %45
  %67 = load i32, i32* %l_28, align 4, !tbaa !1
  %68 = getelementptr inbounds [1 x i16], [1 x i16]* %l_5, i32 0, i64 0
  %69 = load i16, i16* %68, align 2, !tbaa !10
  %70 = getelementptr inbounds [1 x i16], [1 x i16]* %l_5, i32 0, i64 0
  %71 = load i16, i16* %70, align 2, !tbaa !10
  %72 = zext i16 %71 to i32
  %73 = load i32, i32* %l_1774, align 4, !tbaa !1
  %74 = load volatile i32**, i32*** @g_737, align 8, !tbaa !5
  %75 = load i32*, i32** %74, align 8, !tbaa !5
  %76 = icmp eq i32* null, %75
  %77 = zext i1 %76 to i32
  %78 = icmp eq i32 %73, %77
  %79 = zext i1 %78 to i32
  %80 = trunc i32 %79 to i8
  %81 = getelementptr inbounds [1 x i16], [1 x i16]* %l_5, i32 0, i64 0
  %82 = load i16, i16* %81, align 2, !tbaa !10
  %83 = trunc i16 %82 to i8
  %84 = load i8*, i8** @g_229, align 8, !tbaa !5
  store i8 %83, i8* %84, align 1, !tbaa !9
  %85 = sext i8 %83 to i32
  %86 = load i32, i32* %l_28, align 4, !tbaa !1
  %87 = icmp ult i32 %85, %86
  %88 = zext i1 %87 to i32
  %89 = trunc i32 %88 to i8
  %90 = load i16, i16* getelementptr inbounds ([1 x [6 x [9 x i16]]], [1 x [6 x [9 x i16]]]* @g_83, i32 0, i64 0, i64 1, i64 2), align 2, !tbaa !10
  %91 = zext i16 %90 to i32
  %92 = call signext i8 @safe_lshift_func_int8_t_s_u(i8 signext %89, i32 %91)
  %93 = sext i8 %92 to i32
  %94 = getelementptr inbounds [1 x i16], [1 x i16]* %l_5, i32 0, i64 0
  %95 = load i16, i16* %94, align 2, !tbaa !10
  %96 = zext i16 %95 to i32
  %97 = icmp slt i32 %93, %96
  %98 = zext i1 %97 to i32
  %99 = load i16**, i16*** @g_343, align 8, !tbaa !5
  %100 = load i16*, i16** %99, align 8, !tbaa !5
  %101 = load i16, i16* %100, align 2, !tbaa !10
  %102 = sext i16 %101 to i32
  %103 = icmp sgt i32 %98, %102
  %104 = zext i1 %103 to i32
  %105 = trunc i32 %104 to i8
  %106 = call signext i8 @safe_sub_func_int8_t_s_s(i8 signext %80, i8 signext %105)
  %107 = sext i8 %106 to i32
  %108 = load i16***, i16**** @g_342, align 8, !tbaa !5
  %109 = load i16**, i16*** %108, align 8, !tbaa !5
  %110 = load i16*, i16** %109, align 8, !tbaa !5
  %111 = load i16, i16* %110, align 2, !tbaa !10
  %112 = sext i16 %111 to i32
  %113 = xor i32 %107, %112
  %114 = load i32*, i32** %l_1796, align 8, !tbaa !5
  store i32 %113, i32* %114, align 4, !tbaa !1
  %115 = load i64*, i64** @g_766, align 8, !tbaa !5
  %116 = load i64, i64* %115, align 8, !tbaa !7
  %117 = load i64*, i64** @g_766, align 8, !tbaa !5
  store i64 %116, i64* %117, align 8, !tbaa !7
  %118 = trunc i64 %116 to i32
  %119 = call i32 @safe_add_func_uint32_t_u_u(i32 %72, i32 %118)
  %120 = xor i32 %119, -1
  %121 = load i32, i32* %l_28, align 4, !tbaa !1
  %122 = icmp ule i32 %120, %121
  %123 = zext i1 %122 to i32
  %124 = sext i32 %123 to i64
  %125 = icmp eq i64 %124, 110
  %126 = zext i1 %125 to i32
  %127 = getelementptr inbounds [1 x [7 x i32]], [1 x [7 x i32]]* %l_1797, i32 0, i64 0
  %128 = getelementptr inbounds [7 x i32], [7 x i32]* %127, i32 0, i64 2
  %129 = load i32, i32* %128, align 4, !tbaa !1
  %130 = icmp eq i32 %126, %129
  %131 = zext i1 %130 to i32
  %132 = trunc i32 %131 to i16
  %133 = load i32, i32* %l_1774, align 4, !tbaa !1
  %134 = call zeroext i16 @safe_rshift_func_uint16_t_u_u(i16 zeroext %132, i32 %133)
  %135 = getelementptr inbounds [1 x [7 x i32]], [1 x [7 x i32]]* %l_1797, i32 0, i64 0
  %136 = getelementptr inbounds [7 x i32], [7 x i32]* %135, i32 0, i64 2
  %137 = load i32, i32* %136, align 4, !tbaa !1
  %138 = trunc i32 %137 to i16
  %139 = call signext i16 @safe_sub_func_int16_t_s_s(i16 signext %134, i16 signext %138)
  %140 = sext i16 %139 to i32
  %141 = getelementptr inbounds [1 x [7 x i32]], [1 x [7 x i32]]* %l_1797, i32 0, i64 0
  %142 = getelementptr inbounds [7 x i32], [7 x i32]* %141, i32 0, i64 5
  %143 = load i32, i32* %142, align 4, !tbaa !1
  %144 = call i32 @safe_mod_func_uint32_t_u_u(i32 %140, i32 %143)
  %145 = load i32**, i32*** @g_123, align 8, !tbaa !5
  %146 = load i32*, i32** %145, align 8, !tbaa !5
  store i32 %144, i32* %146, align 4, !tbaa !1
  %147 = getelementptr inbounds [1 x [7 x i32]], [1 x [7 x i32]]* %l_1797, i32 0, i64 0
  %148 = getelementptr inbounds [7 x i32], [7 x i32]* %147, i32 0, i64 3
  %149 = load i32, i32* %148, align 4, !tbaa !1
  %150 = icmp eq i32 %144, %149
  %151 = zext i1 %150 to i32
  %152 = trunc i32 %151 to i16
  %153 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %69, i16 zeroext %152)
  %154 = zext i16 %153 to i32
  %155 = getelementptr inbounds [1 x i16], [1 x i16]* %l_5, i32 0, i64 0
  %156 = load i16, i16* %155, align 2, !tbaa !10
  %157 = zext i16 %156 to i32
  %158 = call i32 @safe_div_func_int32_t_s_s(i32 %154, i32 %157)
  %159 = icmp ne i32 %67, %158
  %160 = zext i1 %159 to i32
  %161 = getelementptr inbounds [1 x [7 x i32]], [1 x [7 x i32]]* %l_1797, i32 0, i64 0
  %162 = getelementptr inbounds [7 x i32], [7 x i32]* %161, i32 0, i64 2
  %163 = load i32, i32* %162, align 4, !tbaa !1
  %164 = load i32**, i32*** @g_1205, align 8, !tbaa !5
  %165 = load volatile i32*, i32** %164, align 8, !tbaa !5
  store volatile i32 %163, i32* %165, align 4, !tbaa !1
  %166 = load i32, i32* %l_28, align 4, !tbaa !1
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %169

; <label>:168                                     ; preds = %66
  store i32 5, i32* %1
  br label %287

; <label>:169                                     ; preds = %66
  %170 = getelementptr inbounds [1 x i16], [1 x i16]* %l_5, i32 0, i64 0
  %171 = load i16, i16* %170, align 2, !tbaa !10
  %172 = load i32, i32* %l_1774, align 4, !tbaa !1
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %175

; <label>:174                                     ; preds = %169
  br label %175

; <label>:175                                     ; preds = %174, %169
  %176 = phi i1 [ false, %169 ], [ true, %174 ]
  %177 = zext i1 %176 to i32
  %178 = trunc i32 %177 to i16
  %179 = load i64*, i64** @g_766, align 8, !tbaa !5
  %180 = load i64, i64* %179, align 8, !tbaa !7
  %181 = icmp ne i64 5566444421292820184, %180
  %182 = zext i1 %181 to i32
  %183 = getelementptr inbounds [1 x [7 x i32]], [1 x [7 x i32]]* %l_1797, i32 0, i64 0
  %184 = getelementptr inbounds [7 x i32], [7 x i32]* %183, i32 0, i64 5
  %185 = load i32, i32* %184, align 4, !tbaa !1
  %186 = load i32, i32* %l_1821, align 4, !tbaa !1
  %187 = icmp eq i32 %185, %186
  %188 = xor i1 %187, true
  %189 = zext i1 %188 to i32
  %190 = load i32*, i32** %l_1796, align 8, !tbaa !5
  %191 = load i32, i32* %190, align 4, !tbaa !1
  %192 = xor i32 %191, %189
  store i32 %192, i32* %190, align 4, !tbaa !1
  %193 = zext i32 %192 to i64
  %194 = icmp sge i64 %193, 290449776
  %195 = zext i1 %194 to i32
  %196 = call i32 @safe_div_func_uint32_t_u_u(i32 %195, i32 1889135527)
  %197 = zext i32 %196 to i64
  %198 = getelementptr inbounds [1 x i16], [1 x i16]* %l_5, i32 0, i64 0
  %199 = load i16, i16* %198, align 2, !tbaa !10
  %200 = zext i16 %199 to i64
  %201 = call i64 @safe_div_func_int64_t_s_s(i64 %197, i64 %200)
  %202 = getelementptr inbounds [1 x [7 x i32]], [1 x [7 x i32]]* %l_1797, i32 0, i64 0
  %203 = getelementptr inbounds [7 x i32], [7 x i32]* %202, i32 0, i64 2
  %204 = load i32, i32* %203, align 4, !tbaa !1
  %205 = sext i32 %204 to i64
  %206 = xor i64 %201, %205
  %207 = icmp sge i64 %206, 0
  %208 = zext i1 %207 to i32
  %209 = icmp ne i32 %182, %208
  %210 = zext i1 %209 to i32
  %211 = trunc i32 %210 to i16
  %212 = load i16***, i16**** @g_342, align 8, !tbaa !5
  %213 = load i16**, i16*** %212, align 8, !tbaa !5
  %214 = load i16*, i16** %213, align 8, !tbaa !5
  store i16 %211, i16* %214, align 2, !tbaa !10
  %215 = getelementptr inbounds [1 x i16], [1 x i16]* %l_5, i32 0, i64 0
  %216 = load i16, i16* %215, align 2, !tbaa !10
  %217 = call signext i16 @safe_mod_func_int16_t_s_s(i16 signext %178, i16 signext %216)
  %218 = sext i16 %217 to i64
  %219 = icmp eq i64 %218, 854898056
  %220 = zext i1 %219 to i32
  %221 = getelementptr inbounds [1 x [7 x i32]], [1 x [7 x i32]]* %l_1797, i32 0, i64 0
  %222 = getelementptr inbounds [7 x i32], [7 x i32]* %221, i32 0, i64 2
  %223 = load i32, i32* %222, align 4, !tbaa !1
  %224 = icmp sle i32 %220, %223
  %225 = zext i1 %224 to i32
  %226 = load i32, i32* %l_1774, align 4, !tbaa !1
  %227 = or i32 %225, %226
  %228 = trunc i32 %227 to i8
  %229 = call zeroext i8 @safe_rshift_func_uint8_t_u_s(i8 zeroext %228, i32 6)
  %230 = zext i8 %229 to i64
  %231 = icmp ne i64 2471209961, %230
  %232 = zext i1 %231 to i32
  %233 = getelementptr inbounds [1 x [7 x i32]], [1 x [7 x i32]]* %l_1797, i32 0, i64 0
  %234 = getelementptr inbounds [7 x i32], [7 x i32]* %233, i32 0, i64 0
  %235 = load i32, i32* %234, align 4, !tbaa !1
  %236 = xor i32 %232, %235
  %237 = load i32, i32* %l_28, align 4, !tbaa !1
  %238 = call i32 @safe_sub_func_int32_t_s_s(i32 %236, i32 %237)
  %239 = getelementptr inbounds [1 x i16], [1 x i16]* %l_5, i32 0, i64 0
  %240 = load i16, i16* %239, align 2, !tbaa !10
  %241 = zext i16 %240 to i32
  %242 = and i32 %238, %241
  %243 = trunc i32 %242 to i16
  %244 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext 16327, i16 signext %243)
  %245 = sext i16 %244 to i32
  %246 = load i32, i32* %l_28, align 4, !tbaa !1
  %247 = call i32 @safe_div_func_uint32_t_u_u(i32 %245, i32 %246)
  %248 = zext i32 %247 to i64
  %249 = and i64 248446347, %248
  %250 = trunc i64 %249 to i16
  store i16 %250, i16* @g_166, align 2, !tbaa !10
  %251 = call zeroext i16 @safe_add_func_uint16_t_u_u(i16 zeroext %171, i16 zeroext %250)
  %252 = trunc i16 %251 to i8
  %253 = getelementptr inbounds [1 x i16], [1 x i16]* %l_5, i32 0, i64 0
  %254 = load i16, i16* %253, align 2, !tbaa !10
  %255 = trunc i16 %254 to i8
  %256 = call zeroext i8 @safe_sub_func_uint8_t_u_u(i8 zeroext %252, i8 zeroext %255)
  %257 = zext i8 %256 to i64
  %258 = load i64*, i64** @g_321, align 8, !tbaa !5
  store i64 %257, i64* %258, align 8, !tbaa !7
  br i1 true, label %259, label %262

; <label>:259                                     ; preds = %175
  %260 = load i32, i32* %l_1821, align 4, !tbaa !1
  %261 = icmp ne i32 %260, 0
  br label %262

; <label>:262                                     ; preds = %259, %175
  %263 = phi i1 [ false, %175 ], [ %261, %259 ]
  %264 = zext i1 %263 to i32
  %265 = trunc i32 %264 to i16
  %266 = getelementptr inbounds [1 x [7 x i32]], [1 x [7 x i32]]* %l_1797, i32 0, i64 0
  %267 = getelementptr inbounds [7 x i32], [7 x i32]* %266, i32 0, i64 3
  %268 = load i32, i32* %267, align 4, !tbaa !1
  %269 = trunc i32 %268 to i16
  %270 = call zeroext i16 @safe_mod_func_uint16_t_u_u(i16 zeroext %265, i16 zeroext %269)
  %271 = zext i16 %270 to i64
  %272 = icmp sge i64 %271, 17445
  %273 = zext i1 %272 to i32
  %274 = load volatile i64, i64* @g_60, align 8, !tbaa !7
  %275 = trunc i64 %274 to i8
  %276 = load i8*, i8** %l_1822, align 8, !tbaa !5
  store i8 %275, i8* %276, align 1, !tbaa !9
  %277 = load i32, i32* %l_28, align 4, !tbaa !1
  %278 = trunc i32 %277 to i8
  %279 = call zeroext i8 @safe_mod_func_uint8_t_u_u(i8 zeroext %275, i8 zeroext %278)
  %280 = zext i8 %279 to i32
  %281 = load i32****, i32***** @g_1397, align 8, !tbaa !5
  %282 = load i32***, i32**** %281, align 8, !tbaa !5
  %283 = load i32**, i32*** %282, align 8, !tbaa !5
  %284 = load i32*, i32** %283, align 8, !tbaa !5
  %285 = load i32, i32* %284, align 4, !tbaa !1
  %286 = xor i32 %285, %280
  store i32 %286, i32* %284, align 4, !tbaa !1
  store i32 0, i32* %1
  br label %287

; <label>:287                                     ; preds = %262, %168
  %288 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %288) #1
  %289 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %289) #1
  %290 = bitcast i8** %l_1822 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %290) #1
  %291 = bitcast [1 x [7 x i32]]* %l_1797 to i8*
  call void @llvm.lifetime.end(i64 28, i8* %291) #1
  %292 = bitcast i32** %l_1796 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %292) #1
  %cleanup.dest = load i32, i32* %1
  switch i32 %cleanup.dest, label %298 [
    i32 0, label %293
  ]

; <label>:293                                     ; preds = %287
  br label %294

; <label>:294                                     ; preds = %293
  %295 = load i16, i16* @g_1639, align 2, !tbaa !10
  %296 = add i16 %295, -1
  store i16 %296, i16* @g_1639, align 2, !tbaa !10
  br label %35

; <label>:297                                     ; preds = %35
  store i32 0, i32* %1
  br label %298

; <label>:298                                     ; preds = %297, %287
  %299 = bitcast i32* %l_1821 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %299) #1
  %300 = bitcast i32* %l_1774 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %300) #1
  %301 = bitcast i32* %l_28 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %301) #1
  %cleanup.dest.3 = load i32, i32* %1
  switch i32 %cleanup.dest.3, label %324 [
    i32 0, label %302
    i32 5, label %15
  ]

; <label>:302                                     ; preds = %298
  br label %303

; <label>:303                                     ; preds = %302
  %304 = load i32, i32* @g_2, align 4, !tbaa !1
  %305 = add nsw i32 %304, -1
  store i32 %305, i32* @g_2, align 4, !tbaa !1
  br label %16

; <label>:306                                     ; preds = %16
  %307 = load i8, i8* %l_1824, align 1, !tbaa !9
  %308 = sext i8 %307 to i32
  %309 = load i8, i8* %l_1824, align 1, !tbaa !9
  %310 = sext i8 %309 to i32
  %311 = icmp slt i32 %308, %310
  %312 = zext i1 %311 to i32
  %313 = load i32*****, i32****** @g_1401, align 8, !tbaa !5
  %314 = load i32****, i32***** %313, align 8, !tbaa !5
  %315 = load i32***, i32**** %314, align 8, !tbaa !5
  %316 = load i32**, i32*** %315, align 8, !tbaa !5
  %317 = load i32*, i32** %316, align 8, !tbaa !5
  %318 = load i32, i32* %317, align 4, !tbaa !1
  %319 = xor i32 %318, %312
  store i32 %319, i32* %317, align 4, !tbaa !1
  %320 = load i64, i64* @g_94, align 8, !tbaa !7
  %321 = trunc i64 %320 to i32
  store i32 1, i32* %1
  %322 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %322) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1824) #1
  %323 = bitcast [1 x i16]* %l_5 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %323) #1
  ret i32 %321

; <label>:324                                     ; preds = %298
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
