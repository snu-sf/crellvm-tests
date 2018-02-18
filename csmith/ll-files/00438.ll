; ModuleID = '00438.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.U0 = type { i64 }

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_4 = internal global i8 1, align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"g_4\00", align 1
@g_8 = internal global i32 -7, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"g_8\00", align 1
@g_13 = internal global i32 -2008738307, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"g_13\00", align 1
@g_14 = internal global i32 1, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"g_14\00", align 1
@g_15 = internal global [4 x [5 x [8 x i32]]] [[5 x [8 x i32]] [[8 x i32] [i32 751374431, i32 -4, i32 -378231520, i32 2104670479, i32 -378231520, i32 -4, i32 751374431, i32 5], [8 x i32] [i32 -378231520, i32 -4, i32 751374431, i32 5, i32 -10, i32 -10, i32 5, i32 751374431], [8 x i32] [i32 301760686, i32 301760686, i32 -4, i32 1802608007, i32 -10, i32 2104670479, i32 -1143029880, i32 2104670479], [8 x i32] [i32 -378231520, i32 751374431, i32 1802608007, i32 751374431, i32 -378231520, i32 -2005582306, i32 301760686, i32 2104670479], [8 x i32] [i32 751374431, i32 -10, i32 -1143029880, i32 1802608007, i32 1802608007, i32 -1143029880, i32 -10, i32 751374431]], [5 x [8 x i32]] [[8 x i32] [i32 -4, i32 -2005582306, i32 -1143029880, i32 5, i32 301760686, i32 -378231520, i32 2104670479, i32 -10], [8 x i32] [i32 -2005582306, i32 5, i32 -2005582306, i32 751374431, i32 -10, i32 -1143029880, i32 1802608007, i32 1802608007], [8 x i32] [i32 1802608007, i32 -4, i32 301760686, i32 301760686, i32 -4, i32 1802608007, i32 -10, i32 2104670479], [8 x i32] [i32 1802608007, i32 -378231520, i32 212728602, i32 -4, i32 -10, i32 -4, i32 212728602, i32 -378231520], [8 x i32] [i32 -2005582306, i32 212728602, i32 -1143029880, i32 -4, i32 2104670479, i32 751374431, i32 751374431, i32 2104670479]], [5 x [8 x i32]] [[8 x i32] [i32 301760686, i32 2104670479, i32 2104670479, i32 301760686, i32 -2005582306, i32 -378231520, i32 751374431, i32 1802608007], [8 x i32] [i32 212728602, i32 301760686, i32 -1143029880, i32 751374431, i32 -1143029880, i32 301760686, i32 212728602, i32 -10], [8 x i32] [i32 -1143029880, i32 301760686, i32 212728602, i32 -10, i32 -378231520, i32 -378231520, i32 -10, i32 212728602], [8 x i32] [i32 2104670479, i32 2104670479, i32 301760686, i32 -2005582306, i32 -378231520, i32 751374431, i32 1802608007, i32 751374431], [8 x i32] [i32 -1143029880, i32 212728602, i32 -2005582306, i32 212728602, i32 -1143029880, i32 -4, i32 2104670479, i32 751374431]], [5 x [8 x i32]] [[8 x i32] [i32 212728602, i32 -378231520, i32 1802608007, i32 -2005582306, i32 -2005582306, i32 1802608007, i32 -378231520, i32 212728602], [8 x i32] [i32 301760686, i32 -4, i32 1802608007, i32 -10, i32 2104670479, i32 -1143029880, i32 2104670479, i32 -10], [8 x i32] [i32 -2005582306, i32 5, i32 -2005582306, i32 751374431, i32 -10, i32 -1143029880, i32 1802608007, i32 1802608007], [8 x i32] [i32 1802608007, i32 -4, i32 301760686, i32 301760686, i32 -4, i32 1802608007, i32 -10, i32 2104670479], [8 x i32] [i32 1802608007, i32 -378231520, i32 212728602, i32 -4, i32 -10, i32 -4, i32 212728602, i32 -378231520]]], align 16
@.str.5 = private unnamed_addr constant [14 x i8] c"g_15[i][j][k]\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"index = [%d][%d][%d]\0A\00", align 1
@g_16 = internal global i32 -1825011606, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"g_16\00", align 1
@g_25 = internal global i8 -20, align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"g_25\00", align 1
@g_64 = internal global [10 x [10 x %union.U0]] [[10 x %union.U0] [%union.U0 { i64 -1 }, %union.U0 { i64 9 }, %union.U0 { i64 -2490347810814527479 }, %union.U0 { i64 -2490347810814527479 }, %union.U0 { i64 9 }, %union.U0 { i64 -1 }, %union.U0 { i64 9 }, %union.U0 { i64 -2490347810814527479 }, %union.U0 { i64 -2490347810814527479 }, %union.U0 { i64 9 }], [10 x %union.U0] [%union.U0 { i64 -1 }, %union.U0 { i64 9 }, %union.U0 { i64 -2490347810814527479 }, %union.U0 { i64 -2490347810814527479 }, %union.U0 { i64 9 }, %union.U0 { i64 -1 }, %union.U0 { i64 9 }, %union.U0 { i64 -2490347810814527479 }, %union.U0 { i64 -2490347810814527479 }, %union.U0 { i64 9 }], [10 x %union.U0] [%union.U0 { i64 -1 }, %union.U0 { i64 9 }, %union.U0 { i64 -2490347810814527479 }, %union.U0 { i64 -2490347810814527479 }, %union.U0 { i64 9 }, %union.U0 { i64 -1 }, %union.U0 { i64 9 }, %union.U0 { i64 -2490347810814527479 }, %union.U0 { i64 -2490347810814527479 }, %union.U0 { i64 9 }], [10 x %union.U0] [%union.U0 { i64 -1 }, %union.U0 { i64 9 }, %union.U0 { i64 -2490347810814527479 }, %union.U0 { i64 -2490347810814527479 }, %union.U0 { i64 9 }, %union.U0 { i64 -1 }, %union.U0 { i64 9 }, %union.U0 { i64 -2490347810814527479 }, %union.U0 { i64 -2490347810814527479 }, %union.U0 { i64 9 }], [10 x %union.U0] [%union.U0 { i64 -1 }, %union.U0 { i64 9 }, %union.U0 { i64 -2490347810814527479 }, %union.U0 { i64 -2490347810814527479 }, %union.U0 { i64 9 }, %union.U0 { i64 -1 }, %union.U0 { i64 9 }, %union.U0 { i64 -2490347810814527479 }, %union.U0 { i64 -2490347810814527479 }, %union.U0 { i64 9 }], [10 x %union.U0] [%union.U0 { i64 -1 }, %union.U0 { i64 9 }, %union.U0 { i64 -2490347810814527479 }, %union.U0 { i64 -2490347810814527479 }, %union.U0 { i64 9 }, %union.U0 { i64 -1 }, %union.U0 { i64 9 }, %union.U0 { i64 -2490347810814527479 }, %union.U0 { i64 -2490347810814527479 }, %union.U0 { i64 9 }], [10 x %union.U0] [%union.U0 { i64 -1 }, %union.U0 { i64 9 }, %union.U0 { i64 -2490347810814527479 }, %union.U0 { i64 -2490347810814527479 }, %union.U0 { i64 9 }, %union.U0 { i64 -1 }, %union.U0 { i64 9 }, %union.U0 { i64 -2490347810814527479 }, %union.U0 { i64 -2490347810814527479 }, %union.U0 { i64 9 }], [10 x %union.U0] [%union.U0 { i64 -1 }, %union.U0 { i64 9 }, %union.U0 { i64 -2490347810814527479 }, %union.U0 { i64 -2490347810814527479 }, %union.U0 { i64 9 }, %union.U0 { i64 -1 }, %union.U0 { i64 9 }, %union.U0 { i64 9 }, %union.U0 { i64 9 }, %union.U0 { i64 3 }], [10 x %union.U0] [%union.U0 { i64 -563269177643771300 }, %union.U0 { i64 3 }, %union.U0 { i64 9 }, %union.U0 { i64 9 }, %union.U0 { i64 3 }, %union.U0 { i64 -563269177643771300 }, %union.U0 { i64 3 }, %union.U0 { i64 9 }, %union.U0 { i64 9 }, %union.U0 { i64 3 }], [10 x %union.U0] [%union.U0 { i64 -563269177643771300 }, %union.U0 { i64 3 }, %union.U0 { i64 9 }, %union.U0 { i64 9 }, %union.U0 { i64 3 }, %union.U0 { i64 -563269177643771300 }, %union.U0 { i64 3 }, %union.U0 { i64 9 }, %union.U0 { i64 9 }, %union.U0 { i64 3 }]], align 16
@.str.9 = private unnamed_addr constant [14 x i8] c"g_64[i][j].f0\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@g_82 = internal global i32 -1513471098, align 4
@.str.11 = private unnamed_addr constant [5 x i8] c"g_82\00", align 1
@g_109 = internal global i8 44, align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"g_109\00", align 1
@g_126 = internal global i32 439071351, align 4
@.str.13 = private unnamed_addr constant [6 x i8] c"g_126\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"g_160\00", align 1
@g_180 = internal constant [2 x [8 x i8]] [[8 x i8] c"\AE\AE\AE\AE\AE\AE\AE\AE", [8 x i8] c"\AE\AE\AE\AE\AE\AE\AE\AE"], align 16
@.str.15 = private unnamed_addr constant [12 x i8] c"g_180[i][j]\00", align 1
@g_190 = internal global i32 -6, align 4
@.str.16 = private unnamed_addr constant [6 x i8] c"g_190\00", align 1
@g_233 = internal global [7 x i32] [i32 601562218, i32 601562218, i32 601562218, i32 601562218, i32 601562218, i32 601562218, i32 601562218], align 16
@.str.17 = private unnamed_addr constant [9 x i8] c"g_233[i]\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_258 = internal global i64 1, align 8
@.str.19 = private unnamed_addr constant [6 x i8] c"g_258\00", align 1
@g_260 = internal global i16 -1245, align 2
@.str.20 = private unnamed_addr constant [6 x i8] c"g_260\00", align 1
@g_262 = internal global i16 5382, align 2
@.str.21 = private unnamed_addr constant [6 x i8] c"g_262\00", align 1
@g_284 = internal global i64 -8, align 8
@.str.22 = private unnamed_addr constant [6 x i8] c"g_284\00", align 1
@g_285 = internal global [1 x [1 x i32]] [[1 x i32] [i32 -766626781]], align 4
@.str.23 = private unnamed_addr constant [12 x i8] c"g_285[i][j]\00", align 1
@g_316 = internal global i8 3, align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"g_316\00", align 1
@g_342 = internal global i64 1, align 8
@.str.25 = private unnamed_addr constant [6 x i8] c"g_342\00", align 1
@g_439 = internal global i32 -852160906, align 4
@.str.26 = private unnamed_addr constant [6 x i8] c"g_439\00", align 1
@g_492 = internal global i8 1, align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"g_492\00", align 1
@g_511 = internal global i64 0, align 8
@.str.28 = private unnamed_addr constant [6 x i8] c"g_511\00", align 1
@g_556 = internal global i32 1114751618, align 4
@.str.29 = private unnamed_addr constant [6 x i8] c"g_556\00", align 1
@g_668 = internal global %union.U0 { i64 1343210520948771344 }, align 8
@.str.30 = private unnamed_addr constant [9 x i8] c"g_668.f0\00", align 1
@g_704 = internal global i8 1, align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"g_704\00", align 1
@g_722 = internal global i32 -1947375473, align 4
@.str.32 = private unnamed_addr constant [6 x i8] c"g_722\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"g_734\00", align 1
@g_763 = internal global i16 27667, align 2
@.str.34 = private unnamed_addr constant [6 x i8] c"g_763\00", align 1
@g_919 = internal global i32 0, align 4
@.str.35 = private unnamed_addr constant [6 x i8] c"g_919\00", align 1
@g_1103 = internal global i32 -361820845, align 4
@.str.36 = private unnamed_addr constant [7 x i8] c"g_1103\00", align 1
@g_1138 = internal global i16 -1, align 2
@.str.37 = private unnamed_addr constant [7 x i8] c"g_1138\00", align 1
@g_1292 = internal global i8 -1, align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"g_1292\00", align 1
@g_1390 = internal global [2 x i32] [i32 -1, i32 -1], align 4
@.str.39 = private unnamed_addr constant [10 x i8] c"g_1390[i]\00", align 1
@g_1431 = internal global i16 11448, align 2
@.str.40 = private unnamed_addr constant [7 x i8] c"g_1431\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@func_1.l_1327 = private unnamed_addr constant %union.U0 { i64 7636300627441149310 }, align 8
@func_1.l_1449 = private unnamed_addr constant [1 x [2 x [9 x i8]]] [[2 x [9 x i8]] [[9 x i8] c"z\CEzz\CE\FF\FFz\FF", [9 x i8] c"\8E\BF\8E\8E\BF\8E\8E\BF\8E"]], align 16
@g_991 = internal global i64* null, align 8
@func_1.l_1447 = internal constant [4 x [4 x i8]] [[4 x i8] c"\16\FD\FD\16", [4 x i8] c"\B1\FD\C3\FD", [4 x i8] c"\FD\F9\C3\C3", [4 x i8] c"\B1\B1\FD\C3"], align 16
@g_232 = internal global i32* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i32]* @g_233 to i8*), i64 8) to i32*), align 8
@func_1.l_1475 = private unnamed_addr constant [6 x i32] [i32 1, i32 -1713734567, i32 1, i32 1, i32 -1713734567, i32 1], align 16
@func_1.l_1476 = private unnamed_addr constant [5 x i8] c"\FB\FB\FB\FB\FB", align 1
@g_1119 = internal global i16** @g_1120, align 8
@g_1082 = internal global i64* @g_258, align 8
@g_636 = internal global [10 x i8**] zeroinitializer, align 16
@g_1120 = internal global i16* @g_262, align 8
@.str.41 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

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
  %94 = load i32, i32* @g_8, align 4, !tbaa !1
  %95 = zext i32 %94 to i64
  %96 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %95, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 %96)
  %97 = load volatile i32, i32* @g_13, align 4, !tbaa !1
  %98 = sext i32 %97 to i64
  %99 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 %99)
  %100 = load volatile i32, i32* @g_14, align 4, !tbaa !1
  %101 = sext i32 %100 to i64
  %102 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %101, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %102)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %103

; <label>:103                                     ; preds = %143, %89
  %104 = load i32, i32* %i, align 4, !tbaa !1
  %105 = icmp slt i32 %104, 4
  br i1 %105, label %106, label %146

; <label>:106                                     ; preds = %103
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %107

; <label>:107                                     ; preds = %139, %106
  %108 = load i32, i32* %j, align 4, !tbaa !1
  %109 = icmp slt i32 %108, 5
  br i1 %109, label %110, label %142

; <label>:110                                     ; preds = %107
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %111

; <label>:111                                     ; preds = %135, %110
  %112 = load i32, i32* %k, align 4, !tbaa !1
  %113 = icmp slt i32 %112, 8
  br i1 %113, label %114, label %138

; <label>:114                                     ; preds = %111
  %115 = load i32, i32* %k, align 4, !tbaa !1
  %116 = sext i32 %115 to i64
  %117 = load i32, i32* %j, align 4, !tbaa !1
  %118 = sext i32 %117 to i64
  %119 = load i32, i32* %i, align 4, !tbaa !1
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [4 x [5 x [8 x i32]]], [4 x [5 x [8 x i32]]]* @g_15, i32 0, i64 %120
  %122 = getelementptr inbounds [5 x [8 x i32]], [5 x [8 x i32]]* %121, i32 0, i64 %118
  %123 = getelementptr inbounds [8 x i32], [8 x i32]* %122, i32 0, i64 %116
  %124 = load volatile i32, i32* %123, align 4, !tbaa !1
  %125 = sext i32 %124 to i64
  %126 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %125, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i32 %126)
  %127 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %134

; <label>:129                                     ; preds = %114
  %130 = load i32, i32* %i, align 4, !tbaa !1
  %131 = load i32, i32* %j, align 4, !tbaa !1
  %132 = load i32, i32* %k, align 4, !tbaa !1
  %133 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), i32 %130, i32 %131, i32 %132)
  br label %134

; <label>:134                                     ; preds = %129, %114
  br label %135

; <label>:135                                     ; preds = %134
  %136 = load i32, i32* %k, align 4, !tbaa !1
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %k, align 4, !tbaa !1
  br label %111

; <label>:138                                     ; preds = %111
  br label %139

; <label>:139                                     ; preds = %138
  %140 = load i32, i32* %j, align 4, !tbaa !1
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %j, align 4, !tbaa !1
  br label %107

; <label>:142                                     ; preds = %107
  br label %143

; <label>:143                                     ; preds = %142
  %144 = load i32, i32* %i, align 4, !tbaa !1
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %i, align 4, !tbaa !1
  br label %103

; <label>:146                                     ; preds = %103
  %147 = load i32, i32* @g_16, align 4, !tbaa !1
  %148 = sext i32 %147 to i64
  %149 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %148, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 %149)
  %150 = load i8, i8* @g_25, align 1, !tbaa !9
  %151 = sext i8 %150 to i64
  %152 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %151, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 %152)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %153

; <label>:153                                     ; preds = %181, %146
  %154 = load i32, i32* %i, align 4, !tbaa !1
  %155 = icmp slt i32 %154, 10
  br i1 %155, label %156, label %184

; <label>:156                                     ; preds = %153
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %157

; <label>:157                                     ; preds = %177, %156
  %158 = load i32, i32* %j, align 4, !tbaa !1
  %159 = icmp slt i32 %158, 10
  br i1 %159, label %160, label %180

; <label>:160                                     ; preds = %157
  %161 = load i32, i32* %j, align 4, !tbaa !1
  %162 = sext i32 %161 to i64
  %163 = load i32, i32* %i, align 4, !tbaa !1
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [10 x [10 x %union.U0]], [10 x [10 x %union.U0]]* @g_64, i32 0, i64 %164
  %166 = getelementptr inbounds [10 x %union.U0], [10 x %union.U0]* %165, i32 0, i64 %162
  %167 = bitcast %union.U0* %166 to i64*
  %168 = load volatile i64, i64* %167, align 8, !tbaa !7
  %169 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %168, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i32 %169)
  %170 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %176

; <label>:172                                     ; preds = %160
  %173 = load i32, i32* %i, align 4, !tbaa !1
  %174 = load i32, i32* %j, align 4, !tbaa !1
  %175 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0), i32 %173, i32 %174)
  br label %176

; <label>:176                                     ; preds = %172, %160
  br label %177

; <label>:177                                     ; preds = %176
  %178 = load i32, i32* %j, align 4, !tbaa !1
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %j, align 4, !tbaa !1
  br label %157

; <label>:180                                     ; preds = %157
  br label %181

; <label>:181                                     ; preds = %180
  %182 = load i32, i32* %i, align 4, !tbaa !1
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %i, align 4, !tbaa !1
  br label %153

; <label>:184                                     ; preds = %153
  %185 = load i32, i32* @g_82, align 4, !tbaa !1
  %186 = sext i32 %185 to i64
  %187 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %186, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i32 %187)
  %188 = load i8, i8* @g_109, align 1, !tbaa !9
  %189 = zext i8 %188 to i64
  %190 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %189, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i32 %190)
  %191 = load i32, i32* @g_126, align 4, !tbaa !1
  %192 = sext i32 %191 to i64
  %193 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %192, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i32 %193)
  %194 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 %194)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %195

; <label>:195                                     ; preds = %223, %184
  %196 = load i32, i32* %i, align 4, !tbaa !1
  %197 = icmp slt i32 %196, 2
  br i1 %197, label %198, label %226

; <label>:198                                     ; preds = %195
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %199

; <label>:199                                     ; preds = %219, %198
  %200 = load i32, i32* %j, align 4, !tbaa !1
  %201 = icmp slt i32 %200, 8
  br i1 %201, label %202, label %222

; <label>:202                                     ; preds = %199
  %203 = load i32, i32* %j, align 4, !tbaa !1
  %204 = sext i32 %203 to i64
  %205 = load i32, i32* %i, align 4, !tbaa !1
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds [2 x [8 x i8]], [2 x [8 x i8]]* @g_180, i32 0, i64 %206
  %208 = getelementptr inbounds [8 x i8], [8 x i8]* %207, i32 0, i64 %204
  %209 = load i8, i8* %208, align 1, !tbaa !9
  %210 = zext i8 %209 to i64
  %211 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %210, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i32 %211)
  %212 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %218

; <label>:214                                     ; preds = %202
  %215 = load i32, i32* %i, align 4, !tbaa !1
  %216 = load i32, i32* %j, align 4, !tbaa !1
  %217 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0), i32 %215, i32 %216)
  br label %218

; <label>:218                                     ; preds = %214, %202
  br label %219

; <label>:219                                     ; preds = %218
  %220 = load i32, i32* %j, align 4, !tbaa !1
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %j, align 4, !tbaa !1
  br label %199

; <label>:222                                     ; preds = %199
  br label %223

; <label>:223                                     ; preds = %222
  %224 = load i32, i32* %i, align 4, !tbaa !1
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %i, align 4, !tbaa !1
  br label %195

; <label>:226                                     ; preds = %195
  %227 = load i32, i32* @g_190, align 4, !tbaa !1
  %228 = sext i32 %227 to i64
  %229 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %228, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i32 %229)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %230

; <label>:230                                     ; preds = %246, %226
  %231 = load i32, i32* %i, align 4, !tbaa !1
  %232 = icmp slt i32 %231, 7
  br i1 %232, label %233, label %249

; <label>:233                                     ; preds = %230
  %234 = load i32, i32* %i, align 4, !tbaa !1
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds [7 x i32], [7 x i32]* @g_233, i32 0, i64 %235
  %237 = load i32, i32* %236, align 4, !tbaa !1
  %238 = sext i32 %237 to i64
  %239 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %238, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i32 %239)
  %240 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %245

; <label>:242                                     ; preds = %233
  %243 = load i32, i32* %i, align 4, !tbaa !1
  %244 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), i32 %243)
  br label %245

; <label>:245                                     ; preds = %242, %233
  br label %246

; <label>:246                                     ; preds = %245
  %247 = load i32, i32* %i, align 4, !tbaa !1
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %i, align 4, !tbaa !1
  br label %230

; <label>:249                                     ; preds = %230
  %250 = load i64, i64* @g_258, align 8, !tbaa !7
  %251 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %250, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i32 %251)
  %252 = load i16, i16* @g_260, align 2, !tbaa !10
  %253 = sext i16 %252 to i64
  %254 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %253, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 %254)
  %255 = load i16, i16* @g_262, align 2, !tbaa !10
  %256 = sext i16 %255 to i64
  %257 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %256, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i32 %257)
  %258 = load i64, i64* @g_284, align 8, !tbaa !7
  %259 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %258, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i32 %259)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %260

; <label>:260                                     ; preds = %288, %249
  %261 = load i32, i32* %i, align 4, !tbaa !1
  %262 = icmp slt i32 %261, 1
  br i1 %262, label %263, label %291

; <label>:263                                     ; preds = %260
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %264

; <label>:264                                     ; preds = %284, %263
  %265 = load i32, i32* %j, align 4, !tbaa !1
  %266 = icmp slt i32 %265, 1
  br i1 %266, label %267, label %287

; <label>:267                                     ; preds = %264
  %268 = load i32, i32* %j, align 4, !tbaa !1
  %269 = sext i32 %268 to i64
  %270 = load i32, i32* %i, align 4, !tbaa !1
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* @g_285, i32 0, i64 %271
  %273 = getelementptr inbounds [1 x i32], [1 x i32]* %272, i32 0, i64 %269
  %274 = load i32, i32* %273, align 4, !tbaa !1
  %275 = zext i32 %274 to i64
  %276 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %275, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i32 0, i32 0), i32 %276)
  %277 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %283

; <label>:279                                     ; preds = %267
  %280 = load i32, i32* %i, align 4, !tbaa !1
  %281 = load i32, i32* %j, align 4, !tbaa !1
  %282 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0), i32 %280, i32 %281)
  br label %283

; <label>:283                                     ; preds = %279, %267
  br label %284

; <label>:284                                     ; preds = %283
  %285 = load i32, i32* %j, align 4, !tbaa !1
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %j, align 4, !tbaa !1
  br label %264

; <label>:287                                     ; preds = %264
  br label %288

; <label>:288                                     ; preds = %287
  %289 = load i32, i32* %i, align 4, !tbaa !1
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %i, align 4, !tbaa !1
  br label %260

; <label>:291                                     ; preds = %260
  %292 = load i8, i8* @g_316, align 1, !tbaa !9
  %293 = sext i8 %292 to i64
  %294 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %293, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %294)
  %295 = load i64, i64* @g_342, align 8, !tbaa !7
  %296 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %295, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i32 %296)
  %297 = load i32, i32* @g_439, align 4, !tbaa !1
  %298 = sext i32 %297 to i64
  %299 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %298, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i32 %299)
  %300 = load i8, i8* @g_492, align 1, !tbaa !9
  %301 = zext i8 %300 to i64
  %302 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %301, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 %302)
  %303 = load i64, i64* @g_511, align 8, !tbaa !7
  %304 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %303, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i32 %304)
  %305 = load i32, i32* @g_556, align 4, !tbaa !1
  %306 = zext i32 %305 to i64
  %307 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %306, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i32 %307)
  %308 = load i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_668, i32 0, i32 0), align 8, !tbaa !7
  %309 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %308, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i32 0, i32 0), i32 %309)
  %310 = load i8, i8* @g_704, align 1, !tbaa !9
  %311 = zext i8 %310 to i64
  %312 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %311, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i32 %312)
  %313 = load volatile i32, i32* @g_722, align 4, !tbaa !1
  %314 = sext i32 %313 to i64
  %315 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %314, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i32 %315)
  %316 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 -7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i32 %316)
  %317 = load i16, i16* @g_763, align 2, !tbaa !10
  %318 = zext i16 %317 to i64
  %319 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %318, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), i32 %319)
  %320 = load volatile i32, i32* @g_919, align 4, !tbaa !1
  %321 = zext i32 %320 to i64
  %322 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %321, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), i32 %322)
  %323 = load i32, i32* @g_1103, align 4, !tbaa !1
  %324 = sext i32 %323 to i64
  %325 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %324, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), i32 %325)
  %326 = load i16, i16* @g_1138, align 2, !tbaa !10
  %327 = zext i16 %326 to i64
  %328 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %327, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), i32 %328)
  %329 = load i8, i8* @g_1292, align 1, !tbaa !9
  %330 = sext i8 %329 to i64
  %331 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %330, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), i32 %331)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %332

; <label>:332                                     ; preds = %348, %291
  %333 = load i32, i32* %i, align 4, !tbaa !1
  %334 = icmp slt i32 %333, 2
  br i1 %334, label %335, label %351

; <label>:335                                     ; preds = %332
  %336 = load i32, i32* %i, align 4, !tbaa !1
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds [2 x i32], [2 x i32]* @g_1390, i32 0, i64 %337
  %339 = load i32, i32* %338, align 4, !tbaa !1
  %340 = zext i32 %339 to i64
  %341 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %340, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0), i32 %341)
  %342 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %347

; <label>:344                                     ; preds = %335
  %345 = load i32, i32* %i, align 4, !tbaa !1
  %346 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), i32 %345)
  br label %347

; <label>:347                                     ; preds = %344, %335
  br label %348

; <label>:348                                     ; preds = %347
  %349 = load i32, i32* %i, align 4, !tbaa !1
  %350 = add nsw i32 %349, 1
  store i32 %350, i32* %i, align 4, !tbaa !1
  br label %332

; <label>:351                                     ; preds = %332
  %352 = load volatile i16, i16* @g_1431, align 2, !tbaa !10
  %353 = sext i16 %352 to i64
  %354 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %353, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0), i32 %354)
  %355 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %356 = zext i32 %355 to i64
  %357 = xor i64 %356, 4294967295
  %358 = trunc i64 %357 to i32
  %359 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %358, i32 %359)
  %360 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %360) #1
  %361 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %361) #1
  %362 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %362) #1
  %363 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %363) #1
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
  %l_2 = alloca i32*, align 8
  %l_3 = alloca i32, align 4
  %l_5 = alloca i32*, align 8
  %l_6 = alloca i32*, align 8
  %l_7 = alloca [9 x [3 x i32*]], align 16
  %l_574 = alloca i32, align 4
  %l_1327 = alloca %union.U0, align 8
  %l_1440 = alloca i32*, align 8
  %l_1445 = alloca i8, align 1
  %l_1449 = alloca [1 x [2 x [9 x i8]]], align 16
  %l_1501 = alloca i32, align 4
  %l_1504 = alloca i32, align 4
  %l_1511 = alloca i32, align 4
  %l_1512 = alloca i32, align 4
  %l_1513 = alloca i64*, align 8
  %l_1514 = alloca i64, align 8
  %l_1516 = alloca i64*, align 8
  %l_1515 = alloca [8 x i64**], align 16
  %l_1517 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l_43 = alloca [4 x [3 x [6 x i32*]]], align 16
  %l_1425 = alloca i64**, align 8
  %l_1444 = alloca i32, align 4
  %l_1486 = alloca i64, align 8
  %i1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  %k3 = alloca i32, align 4
  %l_37 = alloca i32, align 4
  %l_38 = alloca i32*, align 8
  %l_1328 = alloca i32*, align 8
  %l_1477 = alloca i32, align 4
  %l_1478 = alloca i32, align 4
  %l_1479 = alloca i32, align 4
  %l_1480 = alloca i32, align 4
  %l_1482 = alloca i32, align 4
  %i4 = alloca i32, align 4
  %j5 = alloca i32, align 4
  %l_573 = alloca i32*, align 8
  %l_1441 = alloca i32*, align 8
  %l_1446 = alloca i16, align 2
  %l_1448 = alloca i32, align 4
  %i6 = alloca i32, align 4
  %j7 = alloca i32, align 4
  %l_1459 = alloca i16, align 2
  %l_1472 = alloca i32, align 4
  %l_1473 = alloca i32, align 4
  %l_1474 = alloca i32, align 4
  %l_1475 = alloca [6 x i32], align 16
  %l_1476 = alloca [5 x i8], align 1
  %l_1481 = alloca [10 x i32], align 16
  %l_1483 = alloca i32, align 4
  %i8 = alloca i32, align 4
  %j9 = alloca i32, align 4
  %2 = alloca i32
  %3 = bitcast i32** %l_2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store i32* null, i32** %l_2, align 8, !tbaa !5
  %4 = bitcast i32* %l_3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 5, i32* %l_3, align 4, !tbaa !1
  %5 = bitcast i32** %l_5 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store i32* null, i32** %l_5, align 8, !tbaa !5
  %6 = bitcast i32** %l_6 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i32* %l_3, i32** %l_6, align 8, !tbaa !5
  %7 = bitcast [9 x [3 x i32*]]* %l_7 to i8*
  call void @llvm.lifetime.start(i64 216, i8* %7) #1
  %8 = getelementptr inbounds [9 x [3 x i32*]], [9 x [3 x i32*]]* %l_7, i64 0, i64 0
  %9 = getelementptr inbounds [3 x i32*], [3 x i32*]* %8, i64 0, i64 0
  store i32* %l_3, i32** %9, !tbaa !5
  %10 = getelementptr inbounds i32*, i32** %9, i64 1
  store i32* %l_3, i32** %10, !tbaa !5
  %11 = getelementptr inbounds i32*, i32** %10, i64 1
  store i32* %l_3, i32** %11, !tbaa !5
  %12 = getelementptr inbounds [3 x i32*], [3 x i32*]* %8, i64 1
  %13 = getelementptr inbounds [3 x i32*], [3 x i32*]* %12, i64 0, i64 0
  store i32* %l_3, i32** %13, !tbaa !5
  %14 = getelementptr inbounds i32*, i32** %13, i64 1
  store i32* %l_3, i32** %14, !tbaa !5
  %15 = getelementptr inbounds i32*, i32** %14, i64 1
  store i32* %l_3, i32** %15, !tbaa !5
  %16 = getelementptr inbounds [3 x i32*], [3 x i32*]* %12, i64 1
  %17 = getelementptr inbounds [3 x i32*], [3 x i32*]* %16, i64 0, i64 0
  store i32* %l_3, i32** %17, !tbaa !5
  %18 = getelementptr inbounds i32*, i32** %17, i64 1
  store i32* %l_3, i32** %18, !tbaa !5
  %19 = getelementptr inbounds i32*, i32** %18, i64 1
  store i32* %l_3, i32** %19, !tbaa !5
  %20 = getelementptr inbounds [3 x i32*], [3 x i32*]* %16, i64 1
  %21 = getelementptr inbounds [3 x i32*], [3 x i32*]* %20, i64 0, i64 0
  store i32* %l_3, i32** %21, !tbaa !5
  %22 = getelementptr inbounds i32*, i32** %21, i64 1
  store i32* %l_3, i32** %22, !tbaa !5
  %23 = getelementptr inbounds i32*, i32** %22, i64 1
  store i32* %l_3, i32** %23, !tbaa !5
  %24 = getelementptr inbounds [3 x i32*], [3 x i32*]* %20, i64 1
  %25 = getelementptr inbounds [3 x i32*], [3 x i32*]* %24, i64 0, i64 0
  store i32* %l_3, i32** %25, !tbaa !5
  %26 = getelementptr inbounds i32*, i32** %25, i64 1
  store i32* %l_3, i32** %26, !tbaa !5
  %27 = getelementptr inbounds i32*, i32** %26, i64 1
  store i32* %l_3, i32** %27, !tbaa !5
  %28 = getelementptr inbounds [3 x i32*], [3 x i32*]* %24, i64 1
  %29 = getelementptr inbounds [3 x i32*], [3 x i32*]* %28, i64 0, i64 0
  store i32* %l_3, i32** %29, !tbaa !5
  %30 = getelementptr inbounds i32*, i32** %29, i64 1
  store i32* %l_3, i32** %30, !tbaa !5
  %31 = getelementptr inbounds i32*, i32** %30, i64 1
  store i32* %l_3, i32** %31, !tbaa !5
  %32 = getelementptr inbounds [3 x i32*], [3 x i32*]* %28, i64 1
  %33 = getelementptr inbounds [3 x i32*], [3 x i32*]* %32, i64 0, i64 0
  store i32* %l_3, i32** %33, !tbaa !5
  %34 = getelementptr inbounds i32*, i32** %33, i64 1
  store i32* %l_3, i32** %34, !tbaa !5
  %35 = getelementptr inbounds i32*, i32** %34, i64 1
  store i32* %l_3, i32** %35, !tbaa !5
  %36 = getelementptr inbounds [3 x i32*], [3 x i32*]* %32, i64 1
  %37 = getelementptr inbounds [3 x i32*], [3 x i32*]* %36, i64 0, i64 0
  store i32* %l_3, i32** %37, !tbaa !5
  %38 = getelementptr inbounds i32*, i32** %37, i64 1
  store i32* %l_3, i32** %38, !tbaa !5
  %39 = getelementptr inbounds i32*, i32** %38, i64 1
  store i32* %l_3, i32** %39, !tbaa !5
  %40 = getelementptr inbounds [3 x i32*], [3 x i32*]* %36, i64 1
  %41 = getelementptr inbounds [3 x i32*], [3 x i32*]* %40, i64 0, i64 0
  store i32* %l_3, i32** %41, !tbaa !5
  %42 = getelementptr inbounds i32*, i32** %41, i64 1
  store i32* %l_3, i32** %42, !tbaa !5
  %43 = getelementptr inbounds i32*, i32** %42, i64 1
  store i32* %l_3, i32** %43, !tbaa !5
  %44 = bitcast i32* %l_574 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %44) #1
  store i32 1519014334, i32* %l_574, align 4, !tbaa !1
  %45 = bitcast %union.U0* %l_1327 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %45) #1
  %46 = bitcast %union.U0* %l_1327 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %46, i8* bitcast (%union.U0* @func_1.l_1327 to i8*), i64 8, i32 8, i1 false)
  %47 = bitcast i32** %l_1440 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %47) #1
  store i32* @g_16, i32** %l_1440, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_1445) #1
  store i8 -6, i8* %l_1445, align 1, !tbaa !9
  %48 = bitcast [1 x [2 x [9 x i8]]]* %l_1449 to i8*
  call void @llvm.lifetime.start(i64 18, i8* %48) #1
  %49 = bitcast [1 x [2 x [9 x i8]]]* %l_1449 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %49, i8* getelementptr inbounds ([1 x [2 x [9 x i8]]], [1 x [2 x [9 x i8]]]* @func_1.l_1449, i32 0, i32 0, i32 0, i32 0), i64 18, i32 16, i1 false)
  %50 = bitcast i32* %l_1501 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %50) #1
  store i32 6, i32* %l_1501, align 4, !tbaa !1
  %51 = bitcast i32* %l_1504 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %51) #1
  store i32 1, i32* %l_1504, align 4, !tbaa !1
  %52 = bitcast i32* %l_1511 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %52) #1
  store i32 -8, i32* %l_1511, align 4, !tbaa !1
  %53 = bitcast i32* %l_1512 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %53) #1
  store i32 0, i32* %l_1512, align 4, !tbaa !1
  %54 = bitcast i64** %l_1513 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %54) #1
  store i64* @g_342, i64** %l_1513, align 8, !tbaa !5
  %55 = bitcast i64* %l_1514 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %55) #1
  store i64 2770042288663598581, i64* %l_1514, align 8, !tbaa !7
  %56 = bitcast i64** %l_1516 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %56) #1
  store i64* null, i64** %l_1516, align 8, !tbaa !5
  %57 = bitcast [8 x i64**]* %l_1515 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %57) #1
  %58 = bitcast [8 x i64**]* %l_1515 to i8*
  call void @llvm.memset.p0i8.i64(i8* %58, i8 0, i64 64, i32 16, i1 false)
  %59 = bitcast i32* %l_1517 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %59) #1
  store i32 2, i32* %l_1517, align 4, !tbaa !1
  %60 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %60) #1
  %61 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %61) #1
  %62 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %62) #1
  %63 = load i32, i32* @g_8, align 4, !tbaa !1
  %64 = add i32 %63, -1
  store i32 %64, i32* @g_8, align 4, !tbaa !1
  store i32 0, i32* %l_3, align 4, !tbaa !1
  br label %65

; <label>:65                                      ; preds = %340, %0
  %66 = load i32, i32* %l_3, align 4, !tbaa !1
  %67 = icmp sge i32 %66, -17
  br i1 %67, label %68, label %345

; <label>:68                                      ; preds = %65
  %69 = bitcast [4 x [3 x [6 x i32*]]]* %l_43 to i8*
  call void @llvm.lifetime.start(i64 576, i8* %69) #1
  %70 = getelementptr inbounds [4 x [3 x [6 x i32*]]], [4 x [3 x [6 x i32*]]]* %l_43, i64 0, i64 0
  %71 = getelementptr inbounds [3 x [6 x i32*]], [3 x [6 x i32*]]* %70, i64 0, i64 0
  %72 = getelementptr inbounds [6 x i32*], [6 x i32*]* %71, i64 0, i64 0
  store i32* %l_3, i32** %72, !tbaa !5
  %73 = getelementptr inbounds i32*, i32** %72, i64 1
  store i32* null, i32** %73, !tbaa !5
  %74 = getelementptr inbounds i32*, i32** %73, i64 1
  store i32* @g_16, i32** %74, !tbaa !5
  %75 = getelementptr inbounds i32*, i32** %74, i64 1
  store i32* %l_3, i32** %75, !tbaa !5
  %76 = getelementptr inbounds i32*, i32** %75, i64 1
  store i32* @g_16, i32** %76, !tbaa !5
  %77 = getelementptr inbounds i32*, i32** %76, i64 1
  store i32* @g_16, i32** %77, !tbaa !5
  %78 = getelementptr inbounds [6 x i32*], [6 x i32*]* %71, i64 1
  %79 = getelementptr inbounds [6 x i32*], [6 x i32*]* %78, i64 0, i64 0
  store i32* null, i32** %79, !tbaa !5
  %80 = getelementptr inbounds i32*, i32** %79, i64 1
  store i32* %l_3, i32** %80, !tbaa !5
  %81 = getelementptr inbounds i32*, i32** %80, i64 1
  store i32* @g_16, i32** %81, !tbaa !5
  %82 = getelementptr inbounds i32*, i32** %81, i64 1
  store i32* %l_3, i32** %82, !tbaa !5
  %83 = getelementptr inbounds i32*, i32** %82, i64 1
  store i32* %l_3, i32** %83, !tbaa !5
  %84 = getelementptr inbounds i32*, i32** %83, i64 1
  store i32* @g_16, i32** %84, !tbaa !5
  %85 = getelementptr inbounds [6 x i32*], [6 x i32*]* %78, i64 1
  %86 = getelementptr inbounds [6 x i32*], [6 x i32*]* %85, i64 0, i64 0
  store i32* @g_16, i32** %86, !tbaa !5
  %87 = getelementptr inbounds i32*, i32** %86, i64 1
  store i32* @g_16, i32** %87, !tbaa !5
  %88 = getelementptr inbounds i32*, i32** %87, i64 1
  store i32* %l_3, i32** %88, !tbaa !5
  %89 = getelementptr inbounds i32*, i32** %88, i64 1
  store i32* @g_16, i32** %89, !tbaa !5
  %90 = getelementptr inbounds i32*, i32** %89, i64 1
  store i32* null, i32** %90, !tbaa !5
  %91 = getelementptr inbounds i32*, i32** %90, i64 1
  store i32* @g_16, i32** %91, !tbaa !5
  %92 = getelementptr inbounds [3 x [6 x i32*]], [3 x [6 x i32*]]* %70, i64 1
  %93 = getelementptr inbounds [3 x [6 x i32*]], [3 x [6 x i32*]]* %92, i64 0, i64 0
  %94 = getelementptr inbounds [6 x i32*], [6 x i32*]* %93, i64 0, i64 0
  store i32* %l_3, i32** %94, !tbaa !5
  %95 = getelementptr inbounds i32*, i32** %94, i64 1
  store i32* @g_16, i32** %95, !tbaa !5
  %96 = getelementptr inbounds i32*, i32** %95, i64 1
  store i32* %l_3, i32** %96, !tbaa !5
  %97 = getelementptr inbounds i32*, i32** %96, i64 1
  store i32* @g_16, i32** %97, !tbaa !5
  %98 = getelementptr inbounds i32*, i32** %97, i64 1
  store i32* %l_3, i32** %98, !tbaa !5
  %99 = getelementptr inbounds i32*, i32** %98, i64 1
  store i32* @g_16, i32** %99, !tbaa !5
  %100 = getelementptr inbounds [6 x i32*], [6 x i32*]* %93, i64 1
  %101 = getelementptr inbounds [6 x i32*], [6 x i32*]* %100, i64 0, i64 0
  store i32* null, i32** %101, !tbaa !5
  %102 = getelementptr inbounds i32*, i32** %101, i64 1
  store i32* null, i32** %102, !tbaa !5
  %103 = getelementptr inbounds i32*, i32** %102, i64 1
  store i32* %l_3, i32** %103, !tbaa !5
  %104 = getelementptr inbounds i32*, i32** %103, i64 1
  store i32* %l_3, i32** %104, !tbaa !5
  %105 = getelementptr inbounds i32*, i32** %104, i64 1
  store i32* @g_16, i32** %105, !tbaa !5
  %106 = getelementptr inbounds i32*, i32** %105, i64 1
  store i32* %l_3, i32** %106, !tbaa !5
  %107 = getelementptr inbounds [6 x i32*], [6 x i32*]* %100, i64 1
  %108 = getelementptr inbounds [6 x i32*], [6 x i32*]* %107, i64 0, i64 0
  store i32* %l_3, i32** %108, !tbaa !5
  %109 = getelementptr inbounds i32*, i32** %108, i64 1
  store i32* null, i32** %109, !tbaa !5
  %110 = getelementptr inbounds i32*, i32** %109, i64 1
  store i32* null, i32** %110, !tbaa !5
  %111 = getelementptr inbounds i32*, i32** %110, i64 1
  store i32* %l_3, i32** %111, !tbaa !5
  %112 = getelementptr inbounds i32*, i32** %111, i64 1
  store i32* @g_16, i32** %112, !tbaa !5
  %113 = getelementptr inbounds i32*, i32** %112, i64 1
  store i32* @g_16, i32** %113, !tbaa !5
  %114 = getelementptr inbounds [3 x [6 x i32*]], [3 x [6 x i32*]]* %92, i64 1
  %115 = getelementptr inbounds [3 x [6 x i32*]], [3 x [6 x i32*]]* %114, i64 0, i64 0
  %116 = getelementptr inbounds [6 x i32*], [6 x i32*]* %115, i64 0, i64 0
  store i32* null, i32** %116, !tbaa !5
  %117 = getelementptr inbounds i32*, i32** %116, i64 1
  store i32* %l_3, i32** %117, !tbaa !5
  %118 = getelementptr inbounds i32*, i32** %117, i64 1
  store i32* @g_16, i32** %118, !tbaa !5
  %119 = getelementptr inbounds i32*, i32** %118, i64 1
  store i32* @g_16, i32** %119, !tbaa !5
  %120 = getelementptr inbounds i32*, i32** %119, i64 1
  store i32* %l_3, i32** %120, !tbaa !5
  %121 = getelementptr inbounds i32*, i32** %120, i64 1
  store i32* null, i32** %121, !tbaa !5
  %122 = getelementptr inbounds [6 x i32*], [6 x i32*]* %115, i64 1
  %123 = getelementptr inbounds [6 x i32*], [6 x i32*]* %122, i64 0, i64 0
  store i32* %l_3, i32** %123, !tbaa !5
  %124 = getelementptr inbounds i32*, i32** %123, i64 1
  store i32* @g_16, i32** %124, !tbaa !5
  %125 = getelementptr inbounds i32*, i32** %124, i64 1
  store i32* @g_16, i32** %125, !tbaa !5
  %126 = getelementptr inbounds i32*, i32** %125, i64 1
  store i32* @g_16, i32** %126, !tbaa !5
  %127 = getelementptr inbounds i32*, i32** %126, i64 1
  store i32* @g_16, i32** %127, !tbaa !5
  %128 = getelementptr inbounds i32*, i32** %127, i64 1
  store i32* %l_3, i32** %128, !tbaa !5
  %129 = getelementptr inbounds [6 x i32*], [6 x i32*]* %122, i64 1
  %130 = getelementptr inbounds [6 x i32*], [6 x i32*]* %129, i64 0, i64 0
  store i32* @g_16, i32** %130, !tbaa !5
  %131 = getelementptr inbounds i32*, i32** %130, i64 1
  store i32* null, i32** %131, !tbaa !5
  %132 = getelementptr inbounds i32*, i32** %131, i64 1
  store i32* @g_16, i32** %132, !tbaa !5
  %133 = getelementptr inbounds i32*, i32** %132, i64 1
  store i32* %l_3, i32** %133, !tbaa !5
  %134 = getelementptr inbounds i32*, i32** %133, i64 1
  store i32* %l_3, i32** %134, !tbaa !5
  %135 = getelementptr inbounds i32*, i32** %134, i64 1
  store i32* @g_16, i32** %135, !tbaa !5
  %136 = getelementptr inbounds [3 x [6 x i32*]], [3 x [6 x i32*]]* %114, i64 1
  %137 = getelementptr inbounds [3 x [6 x i32*]], [3 x [6 x i32*]]* %136, i64 0, i64 0
  %138 = getelementptr inbounds [6 x i32*], [6 x i32*]* %137, i64 0, i64 0
  store i32* null, i32** %138, !tbaa !5
  %139 = getelementptr inbounds i32*, i32** %138, i64 1
  store i32* null, i32** %139, !tbaa !5
  %140 = getelementptr inbounds i32*, i32** %139, i64 1
  store i32* %l_3, i32** %140, !tbaa !5
  %141 = getelementptr inbounds i32*, i32** %140, i64 1
  store i32* %l_3, i32** %141, !tbaa !5
  %142 = getelementptr inbounds i32*, i32** %141, i64 1
  store i32* %l_3, i32** %142, !tbaa !5
  %143 = getelementptr inbounds i32*, i32** %142, i64 1
  store i32* %l_3, i32** %143, !tbaa !5
  %144 = getelementptr inbounds [6 x i32*], [6 x i32*]* %137, i64 1
  %145 = getelementptr inbounds [6 x i32*], [6 x i32*]* %144, i64 0, i64 0
  store i32* %l_3, i32** %145, !tbaa !5
  %146 = getelementptr inbounds i32*, i32** %145, i64 1
  store i32* @g_16, i32** %146, !tbaa !5
  %147 = getelementptr inbounds i32*, i32** %146, i64 1
  store i32* @g_16, i32** %147, !tbaa !5
  %148 = getelementptr inbounds i32*, i32** %147, i64 1
  store i32* @g_16, i32** %148, !tbaa !5
  %149 = getelementptr inbounds i32*, i32** %148, i64 1
  store i32* @g_16, i32** %149, !tbaa !5
  %150 = getelementptr inbounds i32*, i32** %149, i64 1
  store i32* %l_3, i32** %150, !tbaa !5
  %151 = getelementptr inbounds [6 x i32*], [6 x i32*]* %144, i64 1
  %152 = getelementptr inbounds [6 x i32*], [6 x i32*]* %151, i64 0, i64 0
  store i32* null, i32** %152, !tbaa !5
  %153 = getelementptr inbounds i32*, i32** %152, i64 1
  store i32* %l_3, i32** %153, !tbaa !5
  %154 = getelementptr inbounds i32*, i32** %153, i64 1
  store i32* @g_16, i32** %154, !tbaa !5
  %155 = getelementptr inbounds i32*, i32** %154, i64 1
  store i32* @g_16, i32** %155, !tbaa !5
  %156 = getelementptr inbounds i32*, i32** %155, i64 1
  store i32* null, i32** %156, !tbaa !5
  %157 = getelementptr inbounds i32*, i32** %156, i64 1
  store i32* %l_3, i32** %157, !tbaa !5
  %158 = bitcast i64*** %l_1425 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %158) #1
  store i64** @g_991, i64*** %l_1425, align 8, !tbaa !5
  %159 = bitcast i32* %l_1444 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %159) #1
  store i32 -1, i32* %l_1444, align 4, !tbaa !1
  %160 = bitcast i64* %l_1486 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %160) #1
  store i64 9, i64* %l_1486, align 8, !tbaa !7
  %161 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %161) #1
  %162 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %162) #1
  %163 = bitcast i32* %k3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %163) #1
  store i32 0, i32* @g_8, align 4, !tbaa !1
  br label %164

; <label>:164                                     ; preds = %327, %68
  %165 = load i32, i32* @g_8, align 4, !tbaa !1
  %166 = icmp ule i32 %165, 2
  br i1 %166, label %167, label %330

; <label>:167                                     ; preds = %164
  %168 = bitcast i32* %l_37 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %168) #1
  store i32 -687812192, i32* %l_37, align 4, !tbaa !1
  %169 = bitcast i32** %l_38 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %169) #1
  store i32* null, i32** %l_38, align 8, !tbaa !5
  %170 = bitcast i32** %l_1328 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %170) #1
  store i32* @g_16, i32** %l_1328, align 8, !tbaa !5
  %171 = bitcast i32* %l_1477 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %171) #1
  store i32 -1, i32* %l_1477, align 4, !tbaa !1
  %172 = bitcast i32* %l_1478 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %172) #1
  store i32 255246744, i32* %l_1478, align 4, !tbaa !1
  %173 = bitcast i32* %l_1479 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %173) #1
  store i32 1, i32* %l_1479, align 4, !tbaa !1
  %174 = bitcast i32* %l_1480 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %174) #1
  store i32 7, i32* %l_1480, align 4, !tbaa !1
  %175 = bitcast i32* %l_1482 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %175) #1
  store i32 0, i32* %l_1482, align 4, !tbaa !1
  %176 = bitcast i32* %i4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %176) #1
  %177 = bitcast i32* %j5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %177) #1
  store i32 0, i32* @g_16, align 4, !tbaa !1
  br label %178

; <label>:178                                     ; preds = %194, %167
  %179 = load i32, i32* @g_16, align 4, !tbaa !1
  %180 = icmp sle i32 %179, 2
  br i1 %180, label %181, label %197

; <label>:181                                     ; preds = %178
  %182 = bitcast i32** %l_573 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %182) #1
  store i32* @g_16, i32** %l_573, align 8, !tbaa !5
  %183 = bitcast i32** %l_1441 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %183) #1
  store i32* getelementptr inbounds ([1 x [1 x i32]], [1 x [1 x i32]]* @g_285, i32 0, i64 0, i64 0), i32** %l_1441, align 8, !tbaa !5
  %184 = bitcast i16* %l_1446 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %184) #1
  store i16 -4885, i16* %l_1446, align 2, !tbaa !10
  %185 = bitcast i32* %l_1448 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %185) #1
  store i32 0, i32* %l_1448, align 4, !tbaa !1
  %186 = bitcast i32* %i6 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %186) #1
  %187 = bitcast i32* %j7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %187) #1
  %188 = bitcast i32* %j7 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %188) #1
  %189 = bitcast i32* %i6 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %189) #1
  %190 = bitcast i32* %l_1448 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %190) #1
  %191 = bitcast i16* %l_1446 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %191) #1
  %192 = bitcast i32** %l_1441 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %192) #1
  %193 = bitcast i32** %l_573 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %193) #1
  br label %194

; <label>:194                                     ; preds = %181
  %195 = load i32, i32* @g_16, align 4, !tbaa !1
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* @g_16, align 4, !tbaa !1
  br label %178

; <label>:197                                     ; preds = %178
  %198 = load i32*, i32** @g_232, align 8, !tbaa !5
  %199 = load i32, i32* %198, align 4, !tbaa !1
  %200 = load i32*, i32** %l_1440, align 8, !tbaa !5
  %201 = load i32, i32* %200, align 4, !tbaa !1
  %202 = and i32 %201, %199
  store i32 %202, i32* %200, align 4, !tbaa !1
  store i16 2, i16* @g_260, align 2, !tbaa !10
  br label %203

; <label>:203                                     ; preds = %305, %197
  %204 = load i16, i16* @g_260, align 2, !tbaa !10
  %205 = sext i16 %204 to i32
  %206 = icmp sge i32 %205, 0
  br i1 %206, label %207, label %310

; <label>:207                                     ; preds = %203
  %208 = bitcast i16* %l_1459 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %208) #1
  store i16 -10469, i16* %l_1459, align 2, !tbaa !10
  %209 = bitcast i32* %l_1472 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %209) #1
  store i32 -1039171069, i32* %l_1472, align 4, !tbaa !1
  %210 = bitcast i32* %l_1473 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %210) #1
  store i32 -4, i32* %l_1473, align 4, !tbaa !1
  %211 = bitcast i32* %l_1474 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %211) #1
  store i32 1738329239, i32* %l_1474, align 4, !tbaa !1
  %212 = bitcast [6 x i32]* %l_1475 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %212) #1
  %213 = bitcast [6 x i32]* %l_1475 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %213, i8* bitcast ([6 x i32]* @func_1.l_1475 to i8*), i64 24, i32 16, i1 false)
  %214 = bitcast [5 x i8]* %l_1476 to i8*
  call void @llvm.lifetime.start(i64 5, i8* %214) #1
  %215 = bitcast [5 x i8]* %l_1476 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %215, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @func_1.l_1476, i32 0, i32 0), i64 5, i32 1, i1 false)
  %216 = bitcast [10 x i32]* %l_1481 to i8*
  call void @llvm.lifetime.start(i64 40, i8* %216) #1
  %217 = bitcast i32* %l_1483 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %217) #1
  store i32 4, i32* %l_1483, align 4, !tbaa !1
  %218 = bitcast i32* %i8 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %218) #1
  %219 = bitcast i32* %j9 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %219) #1
  store i32 0, i32* %i8, align 4, !tbaa !1
  br label %220

; <label>:220                                     ; preds = %227, %207
  %221 = load i32, i32* %i8, align 4, !tbaa !1
  %222 = icmp slt i32 %221, 10
  br i1 %222, label %223, label %230

; <label>:223                                     ; preds = %220
  %224 = load i32, i32* %i8, align 4, !tbaa !1
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds [10 x i32], [10 x i32]* %l_1481, i32 0, i64 %225
  store i32 1336797445, i32* %226, align 4, !tbaa !1
  br label %227

; <label>:227                                     ; preds = %223
  %228 = load i32, i32* %i8, align 4, !tbaa !1
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %i8, align 4, !tbaa !1
  br label %220

; <label>:230                                     ; preds = %220
  %231 = load i32*, i32** %l_1440, align 8, !tbaa !5
  %232 = load i32, i32* %231, align 4, !tbaa !1
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %241

; <label>:234                                     ; preds = %230
  %235 = load i32*, i32** %l_1328, align 8, !tbaa !5
  %236 = load i32, i32* %235, align 4, !tbaa !1
  %237 = trunc i32 %236 to i8
  %238 = call zeroext i8 @safe_lshift_func_uint8_t_u_u(i8 zeroext %237, i32 5)
  %239 = zext i8 %238 to i32
  %240 = icmp ne i32 %239, 0
  br label %241

; <label>:241                                     ; preds = %234, %230
  %242 = phi i1 [ false, %230 ], [ %240, %234 ]
  %243 = zext i1 %242 to i32
  %244 = load i16, i16* %l_1459, align 2, !tbaa !10
  %245 = zext i16 %244 to i32
  %246 = or i32 %245, %243
  %247 = trunc i32 %246 to i16
  store i16 %247, i16* %l_1459, align 2, !tbaa !10
  %248 = load i32*, i32** %l_1328, align 8, !tbaa !5
  %249 = load i32, i32* %248, align 4, !tbaa !1
  %250 = trunc i32 %249 to i16
  %251 = call zeroext i16 @safe_lshift_func_uint16_t_u_s(i16 zeroext %250, i32 15)
  %252 = trunc i16 %251 to i8
  %253 = icmp eq i16* %l_1459, null
  %254 = zext i1 %253 to i32
  %255 = call i32 @safe_div_func_uint32_t_u_u(i32 %254, i32 432429936)
  %256 = zext i32 %255 to i64
  %257 = icmp ule i64 %256, 65535
  %258 = zext i1 %257 to i32
  %259 = load volatile i16**, i16*** @g_1119, align 8, !tbaa !5
  %260 = load i16*, i16** %259, align 8, !tbaa !5
  %261 = load i16, i16* %260, align 2, !tbaa !10
  %262 = call signext i16 @safe_add_func_int16_t_s_s(i16 signext %261, i16 signext -1804)
  %263 = sext i16 %262 to i32
  %264 = call signext i8 @safe_lshift_func_int8_t_s_u(i8 signext 0, i32 2)
  %265 = sext i8 %264 to i32
  %266 = load i16, i16* %l_1459, align 2, !tbaa !10
  %267 = zext i16 %266 to i32
  %268 = icmp sle i32 %265, %267
  %269 = zext i1 %268 to i32
  %270 = icmp slt i32 %263, %269
  %271 = zext i1 %270 to i32
  %272 = sext i32 %271 to i64
  %273 = icmp sle i64 25194, %272
  %274 = zext i1 %273 to i32
  %275 = icmp sge i32 %258, %274
  %276 = zext i1 %275 to i32
  %277 = load i32*, i32** %l_1328, align 8, !tbaa !5
  %278 = load i32, i32* %277, align 4, !tbaa !1
  %279 = or i32 %276, %278
  %280 = trunc i32 %279 to i8
  %281 = load i32, i32* %l_1472, align 4, !tbaa !1
  %282 = trunc i32 %281 to i8
  %283 = call zeroext i8 @safe_sub_func_uint8_t_u_u(i8 zeroext %280, i8 zeroext %282)
  %284 = zext i8 %283 to i32
  %285 = call signext i8 @safe_lshift_func_int8_t_s_s(i8 signext %252, i32 %284)
  %286 = sext i8 %285 to i32
  %287 = load i32, i32* %l_1472, align 4, !tbaa !1
  %288 = icmp slt i32 %286, %287
  %289 = zext i1 %288 to i32
  %290 = load i32*, i32** @g_232, align 8, !tbaa !5
  %291 = load i32, i32* %290, align 4, !tbaa !1
  %292 = or i32 %291, %289
  store i32 %292, i32* %290, align 4, !tbaa !1
  %293 = load i32, i32* %l_1483, align 4, !tbaa !1
  %294 = add i32 %293, 1
  store i32 %294, i32* %l_1483, align 4, !tbaa !1
  %295 = bitcast i32* %j9 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %295) #1
  %296 = bitcast i32* %i8 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %296) #1
  %297 = bitcast i32* %l_1483 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %297) #1
  %298 = bitcast [10 x i32]* %l_1481 to i8*
  call void @llvm.lifetime.end(i64 40, i8* %298) #1
  %299 = bitcast [5 x i8]* %l_1476 to i8*
  call void @llvm.lifetime.end(i64 5, i8* %299) #1
  %300 = bitcast [6 x i32]* %l_1475 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %300) #1
  %301 = bitcast i32* %l_1474 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %301) #1
  %302 = bitcast i32* %l_1473 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %302) #1
  %303 = bitcast i32* %l_1472 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %303) #1
  %304 = bitcast i16* %l_1459 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %304) #1
  br label %305

; <label>:305                                     ; preds = %241
  %306 = load i16, i16* @g_260, align 2, !tbaa !10
  %307 = sext i16 %306 to i32
  %308 = sub nsw i32 %307, 1
  %309 = trunc i32 %308 to i16
  store i16 %309, i16* @g_260, align 2, !tbaa !10
  br label %203

; <label>:310                                     ; preds = %203
  %311 = load i64, i64* %l_1486, align 8, !tbaa !7
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %314

; <label>:313                                     ; preds = %310
  store i32 5, i32* %2
  br label %315

; <label>:314                                     ; preds = %310
  store i32 0, i32* %2
  br label %315

; <label>:315                                     ; preds = %314, %313
  %316 = bitcast i32* %j5 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %316) #1
  %317 = bitcast i32* %i4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %317) #1
  %318 = bitcast i32* %l_1482 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %318) #1
  %319 = bitcast i32* %l_1480 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %319) #1
  %320 = bitcast i32* %l_1479 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %320) #1
  %321 = bitcast i32* %l_1478 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %321) #1
  %322 = bitcast i32* %l_1477 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %322) #1
  %323 = bitcast i32** %l_1328 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %323) #1
  %324 = bitcast i32** %l_38 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %324) #1
  %325 = bitcast i32* %l_37 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %325) #1
  %cleanup.dest = load i32, i32* %2
  switch i32 %cleanup.dest, label %466 [
    i32 0, label %326
    i32 5, label %330
  ]

; <label>:326                                     ; preds = %315
  br label %327

; <label>:327                                     ; preds = %326
  %328 = load i32, i32* @g_8, align 4, !tbaa !1
  %329 = add i32 %328, 1
  store i32 %329, i32* @g_8, align 4, !tbaa !1
  br label %164

; <label>:330                                     ; preds = %315, %164
  %331 = load volatile i64*, i64** @g_1082, align 8, !tbaa !5
  %332 = load i64, i64* %331, align 8, !tbaa !7
  store i64 %332, i64* %1
  store i32 1, i32* %2
  %333 = bitcast i32* %k3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %333) #1
  %334 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %334) #1
  %335 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %335) #1
  %336 = bitcast i64* %l_1486 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %336) #1
  %337 = bitcast i32* %l_1444 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %337) #1
  %338 = bitcast i64*** %l_1425 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %338) #1
  %339 = bitcast [4 x [3 x [6 x i32*]]]* %l_43 to i8*
  call void @llvm.lifetime.end(i64 576, i8* %339) #1
  br label %443
                                                  ; No predecessors!
  %341 = load i32, i32* %l_3, align 4, !tbaa !1
  %342 = sext i32 %341 to i64
  %343 = call i64 @safe_sub_func_int64_t_s_s(i64 %342, i64 3)
  %344 = trunc i64 %343 to i32
  store i32 %344, i32* %l_3, align 4, !tbaa !1
  br label %65

; <label>:345                                     ; preds = %65
  %346 = load i8, i8* getelementptr inbounds ([2 x [8 x i8]], [2 x [8 x i8]]* @g_180, i32 0, i64 1, i64 1), align 1, !tbaa !9
  %347 = zext i8 %346 to i32
  %348 = load i32*, i32** %l_6, align 8, !tbaa !5
  %349 = load i32, i32* %348, align 4, !tbaa !1
  %350 = load i32*, i32** %l_1440, align 8, !tbaa !5
  %351 = load i32, i32* %350, align 4, !tbaa !1
  %352 = trunc i32 %351 to i8
  %353 = load i32, i32* %l_1501, align 4, !tbaa !1
  %354 = trunc i32 %353 to i16
  %355 = load i32, i32* %l_1504, align 4, !tbaa !1
  %356 = sext i32 %355 to i64
  %357 = load i32, i32* %l_1511, align 4, !tbaa !1
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %363, label %359

; <label>:359                                     ; preds = %345
  %360 = load i32*, i32** %l_6, align 8, !tbaa !5
  %361 = load i32, i32* %360, align 4, !tbaa !1
  %362 = icmp ne i32 %361, 0
  br label %363

; <label>:363                                     ; preds = %359, %345
  %364 = phi i1 [ true, %345 ], [ %362, %359 ]
  %365 = zext i1 %364 to i32
  %366 = call signext i16 @safe_lshift_func_int16_t_s_s(i16 signext 0, i32 %365)
  %367 = call zeroext i16 @safe_mod_func_uint16_t_u_u(i16 zeroext %366, i16 zeroext 23549)
  %368 = zext i16 %367 to i32
  %369 = load i32, i32* %l_1512, align 4, !tbaa !1
  %370 = icmp ne i32 %368, %369
  %371 = zext i1 %370 to i32
  %372 = load i32*, i32** %l_6, align 8, !tbaa !5
  %373 = load i32, i32* %372, align 4, !tbaa !1
  %374 = call i32 @safe_mod_func_uint32_t_u_u(i32 %371, i32 %373)
  %375 = zext i32 %374 to i64
  %376 = load i64*, i64** %l_1513, align 8, !tbaa !5
  %377 = load i64, i64* %376, align 8, !tbaa !7
  %378 = and i64 %377, %375
  store i64 %378, i64* %376, align 8, !tbaa !7
  %379 = xor i64 %356, %378
  %380 = icmp slt i64 %379, 196
  %381 = zext i1 %380 to i32
  %382 = load i32*, i32** %l_1440, align 8, !tbaa !5
  %383 = load i32, i32* %382, align 4, !tbaa !1
  %384 = icmp sge i32 %381, %383
  %385 = zext i1 %384 to i32
  %386 = trunc i32 %385 to i8
  %387 = call zeroext i8 @safe_sub_func_uint8_t_u_u(i8 zeroext %386, i8 zeroext 72)
  %388 = load volatile i16**, i16*** @g_1119, align 8, !tbaa !5
  %389 = load i16*, i16** %388, align 8, !tbaa !5
  %390 = load i16, i16* %389, align 2, !tbaa !10
  %391 = sext i16 %390 to i32
  %392 = call zeroext i16 @safe_lshift_func_uint16_t_u_s(i16 zeroext %354, i32 %391)
  %393 = zext i16 %392 to i32
  %394 = load i32*, i32** @g_232, align 8, !tbaa !5
  %395 = load i32, i32* %394, align 4, !tbaa !1
  %396 = call i32 @safe_mod_func_int32_t_s_s(i32 %393, i32 %395)
  %397 = sext i32 %396 to i64
  %398 = icmp ult i64 %397, 9
  %399 = zext i1 %398 to i32
  %400 = load i32*, i32** %l_1440, align 8, !tbaa !5
  %401 = load i32, i32* %400, align 4, !tbaa !1
  %402 = or i32 %399, %401
  %403 = trunc i32 %402 to i8
  %404 = load i32*, i32** %l_1440, align 8, !tbaa !5
  %405 = load i32, i32* %404, align 4, !tbaa !1
  %406 = trunc i32 %405 to i8
  %407 = call zeroext i8 @safe_mod_func_uint8_t_u_u(i8 zeroext %403, i8 zeroext %406)
  %408 = load i64, i64* %l_1514, align 8, !tbaa !7
  %409 = trunc i64 %408 to i8
  %410 = call zeroext i8 @safe_sub_func_uint8_t_u_u(i8 zeroext %407, i8 zeroext %409)
  %411 = load i32*, i32** %l_1440, align 8, !tbaa !5
  %412 = load i32, i32* %411, align 4, !tbaa !1
  %413 = getelementptr inbounds [8 x i64**], [8 x i64**]* %l_1515, i32 0, i64 0
  %414 = load i64**, i64*** %413, align 8, !tbaa !5
  %415 = icmp eq i64** %414, null
  %416 = zext i1 %415 to i32
  %417 = sext i32 %416 to i64
  %418 = icmp eq i64 %417, 152
  %419 = zext i1 %418 to i32
  %420 = sext i32 %419 to i64
  %421 = load i32*, i32** %l_6, align 8, !tbaa !5
  %422 = load i32, i32* %421, align 4, !tbaa !1
  %423 = sext i32 %422 to i64
  %424 = call i64 @safe_div_func_uint64_t_u_u(i64 %420, i64 %423)
  %425 = or i64 -5704447262551785375, %424
  %426 = load i32, i32* %l_1517, align 4, !tbaa !1
  %427 = sext i32 %426 to i64
  %428 = or i64 %425, %427
  %429 = trunc i64 %428 to i8
  %430 = call signext i8 @safe_add_func_int8_t_s_s(i8 signext %352, i8 signext %429)
  %431 = sext i8 %430 to i32
  %432 = icmp slt i32 %349, %431
  %433 = zext i1 %432 to i32
  %434 = icmp sle i32 %347, %433
  %435 = xor i1 %434, true
  %436 = zext i1 %435 to i32
  %437 = sext i32 %436 to i64
  %438 = icmp ugt i64 %437, 6
  %439 = zext i1 %438 to i32
  %440 = load i32*, i32** %l_1440, align 8, !tbaa !5
  store i32 %439, i32* %440, align 4, !tbaa !1
  %441 = load volatile i64*, i64** @g_1082, align 8, !tbaa !5
  %442 = load i64, i64* %441, align 8, !tbaa !7
  store i64 %442, i64* %1
  store i32 1, i32* %2
  br label %443

; <label>:443                                     ; preds = %363, %330
  %444 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %444) #1
  %445 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %445) #1
  %446 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %446) #1
  %447 = bitcast i32* %l_1517 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %447) #1
  %448 = bitcast [8 x i64**]* %l_1515 to i8*
  call void @llvm.lifetime.end(i64 64, i8* %448) #1
  %449 = bitcast i64** %l_1516 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %449) #1
  %450 = bitcast i64* %l_1514 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %450) #1
  %451 = bitcast i64** %l_1513 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %451) #1
  %452 = bitcast i32* %l_1512 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %452) #1
  %453 = bitcast i32* %l_1511 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %453) #1
  %454 = bitcast i32* %l_1504 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %454) #1
  %455 = bitcast i32* %l_1501 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %455) #1
  %456 = bitcast [1 x [2 x [9 x i8]]]* %l_1449 to i8*
  call void @llvm.lifetime.end(i64 18, i8* %456) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1445) #1
  %457 = bitcast i32** %l_1440 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %457) #1
  %458 = bitcast %union.U0* %l_1327 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %458) #1
  %459 = bitcast i32* %l_574 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %459) #1
  %460 = bitcast [9 x [3 x i32*]]* %l_7 to i8*
  call void @llvm.lifetime.end(i64 216, i8* %460) #1
  %461 = bitcast i32** %l_6 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %461) #1
  %462 = bitcast i32** %l_5 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %462) #1
  %463 = bitcast i32* %l_3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %463) #1
  %464 = bitcast i32** %l_2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %464) #1
  %465 = load i64, i64* %1
  ret i64 %465

; <label>:466                                     ; preds = %315
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
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.41, i32 0, i32 0), i8* %8, i64 %11)
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
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.42, i32 0, i32 0), i32 %3)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

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
