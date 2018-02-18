; ModuleID = '00750.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_2 = internal global i32 -1, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"g_2\00", align 1
@g_16 = internal global i32 4, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"g_16\00", align 1
@g_19 = internal global i16 -9798, align 2
@.str.3 = private unnamed_addr constant [5 x i8] c"g_19\00", align 1
@g_20 = internal global [9 x [10 x [2 x i32]]] [[10 x [2 x i32]] [[2 x i32] [i32 748332789, i32 1816623572], [2 x i32] [i32 1300118563, i32 2], [2 x i32] [i32 -988681185, i32 1], [2 x i32] [i32 -1, i32 1322997050], [2 x i32] [i32 1222646526, i32 -48776579], [2 x i32] [i32 8, i32 8], [2 x i32] [i32 -5, i32 -311211883], [2 x i32] [i32 2, i32 -1421007475], [2 x i32] [i32 74952231, i32 2000087777], [2 x i32] [i32 0, i32 74952231]], [10 x [2 x i32]] [[2 x i32] [i32 0, i32 1222646526], [2 x i32] [i32 0, i32 74952231], [2 x i32] [i32 0, i32 2000087777], [2 x i32] [i32 74952231, i32 -1421007475], [2 x i32] [i32 2, i32 -311211883], [2 x i32] [i32 -5, i32 8], [2 x i32] [i32 8, i32 -48776579], [2 x i32] [i32 1222646526, i32 1322997050], [2 x i32] [i32 -1, i32 1], [2 x i32] [i32 -988681185, i32 2]], [10 x [2 x i32]] [[2 x i32] [i32 1300118563, i32 1816623572], [2 x i32] [i32 748332789, i32 -1], [2 x i32] [i32 -311211883, i32 -1], [2 x i32] [i32 -467989273, i32 -1], [2 x i32] [i32 1, i32 1222646526], [2 x i32] [i32 -1421007475, i32 -467989273], [2 x i32] [i32 -1660867376, i32 1], [2 x i32] [i32 0, i32 -1361712210], [2 x i32] [i32 748332789, i32 -1082381990], [2 x i32] [i32 -988681185, i32 -1082381990]], [10 x [2 x i32]] [[2 x i32] [i32 748332789, i32 -1361712210], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 -1660867376, i32 -467989273], [2 x i32] [i32 -1421007475, i32 1222646526], [2 x i32] [i32 1, i32 -1], [2 x i32] [i32 -467989273, i32 -474017396], [2 x i32] [i32 1653518176, i32 -48776579], [2 x i32] [i32 -1701336879, i32 -5], [2 x i32] [i32 1222646526, i32 -1], [2 x i32] [i32 -1361712210, i32 -311211883]], [10 x [2 x i32]] [[2 x i32] [i32 2, i32 74952231], [2 x i32] [i32 1816623572, i32 8], [2 x i32] [i32 -1, i32 -1], [2 x i32] [i32 2000087777, i32 1653518176], [2 x i32] [i32 -1, i32 1920353850], [2 x i32] [i32 1, i32 -988681185], [2 x i32] [i32 1, i32 1], [2 x i32] [i32 -6, i32 1816623572], [2 x i32] [i32 -6, i32 1], [2 x i32] [i32 1, i32 -988681185]], [10 x [2 x i32]] [[2 x i32] [i32 1, i32 1920353850], [2 x i32] [i32 -1, i32 1653518176], [2 x i32] [i32 2000087777, i32 -1], [2 x i32] [i32 -1, i32 8], [2 x i32] [i32 1816623572, i32 74952231], [2 x i32] [i32 2, i32 -311211883], [2 x i32] [i32 -1361712210, i32 -1], [2 x i32] [i32 1222646526, i32 -5], [2 x i32] [i32 -1701336879, i32 -48776579], [2 x i32] [i32 1653518176, i32 -474017396]], [10 x [2 x i32]] [[2 x i32] [i32 -467989273, i32 -1], [2 x i32] [i32 1, i32 1222646526], [2 x i32] [i32 -1421007475, i32 -467989273], [2 x i32] [i32 -1660867376, i32 1], [2 x i32] [i32 0, i32 -1361712210], [2 x i32] [i32 748332789, i32 -1082381990], [2 x i32] [i32 -988681185, i32 -1082381990], [2 x i32] [i32 748332789, i32 -1361712210], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 -1660867376, i32 -467989273]], [10 x [2 x i32]] [[2 x i32] [i32 -1421007475, i32 1222646526], [2 x i32] [i32 1, i32 -1], [2 x i32] [i32 -467989273, i32 -474017396], [2 x i32] [i32 1653518176, i32 -48776579], [2 x i32] [i32 -1701336879, i32 -5], [2 x i32] [i32 1222646526, i32 -1], [2 x i32] [i32 -1361712210, i32 -311211883], [2 x i32] [i32 2, i32 74952231], [2 x i32] [i32 1816623572, i32 8], [2 x i32] [i32 -1, i32 -1]], [10 x [2 x i32]] [[2 x i32] [i32 2000087777, i32 1653518176], [2 x i32] [i32 -1, i32 1920353850], [2 x i32] [i32 1, i32 -988681185], [2 x i32] [i32 1, i32 1], [2 x i32] [i32 -6, i32 1816623572], [2 x i32] [i32 -6, i32 1], [2 x i32] [i32 1, i32 -988681185], [2 x i32] [i32 1, i32 1920353850], [2 x i32] [i32 -1, i32 1653518176], [2 x i32] [i32 2000087777, i32 -1]]], align 16
@.str.4 = private unnamed_addr constant [14 x i8] c"g_20[i][j][k]\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"index = [%d][%d][%d]\0A\00", align 1
@g_55 = internal global i8 -109, align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"g_55\00", align 1
@g_99 = internal global i8 -1, align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"g_99\00", align 1
@g_103 = internal global [7 x i64] [i64 -5, i64 -5, i64 -5, i64 -5, i64 -5, i64 -5, i64 -5], align 16
@.str.8 = private unnamed_addr constant [9 x i8] c"g_103[i]\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_105 = internal global i32 -933054100, align 4
@.str.10 = private unnamed_addr constant [6 x i8] c"g_105\00", align 1
@g_106 = internal global [8 x i16] [i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1], align 16
@.str.11 = private unnamed_addr constant [9 x i8] c"g_106[i]\00", align 1
@g_109 = internal global i8 4, align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"g_109\00", align 1
@g_132 = internal global i64 5365854076186812666, align 8
@.str.13 = private unnamed_addr constant [6 x i8] c"g_132\00", align 1
@g_141 = internal global [1 x [6 x i16]] [[6 x i16] [i16 5316, i16 5316, i16 5316, i16 5316, i16 5316, i16 5316]], align 2
@.str.14 = private unnamed_addr constant [12 x i8] c"g_141[i][j]\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@g_168 = internal global [9 x i32] [i32 -10, i32 -10, i32 -10, i32 -10, i32 -10, i32 -10, i32 -10, i32 -10, i32 -10], align 16
@.str.16 = private unnamed_addr constant [9 x i8] c"g_168[i]\00", align 1
@g_189 = internal global i64 548576553896761547, align 8
@.str.17 = private unnamed_addr constant [6 x i8] c"g_189\00", align 1
@g_212 = internal global i16 -22070, align 2
@.str.18 = private unnamed_addr constant [6 x i8] c"g_212\00", align 1
@g_239 = internal global [3 x i32] [i32 1, i32 1, i32 1], align 4
@.str.19 = private unnamed_addr constant [9 x i8] c"g_239[i]\00", align 1
@g_298 = internal global i16 -3225, align 2
@.str.20 = private unnamed_addr constant [6 x i8] c"g_298\00", align 1
@g_487 = internal global i8 -38, align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"g_487\00", align 1
@g_488 = internal global i32 1926200571, align 4
@.str.22 = private unnamed_addr constant [6 x i8] c"g_488\00", align 1
@g_489 = internal global i16 -1, align 2
@.str.23 = private unnamed_addr constant [6 x i8] c"g_489\00", align 1
@g_595 = internal global [3 x i32] [i32 7, i32 7, i32 7], align 4
@.str.24 = private unnamed_addr constant [9 x i8] c"g_595[i]\00", align 1
@g_704 = internal global i32 -7, align 4
@.str.25 = private unnamed_addr constant [6 x i8] c"g_704\00", align 1
@g_779 = internal global i8 0, align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"g_779\00", align 1
@g_974 = internal global i32 1, align 4
@.str.27 = private unnamed_addr constant [6 x i8] c"g_974\00", align 1
@g_989 = internal global i32 2, align 4
@.str.28 = private unnamed_addr constant [6 x i8] c"g_989\00", align 1
@g_1017 = internal global i32 1296975962, align 4
@.str.29 = private unnamed_addr constant [7 x i8] c"g_1017\00", align 1
@g_1044 = internal global i8 -33, align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"g_1044\00", align 1
@g_1061 = internal global i16 -10, align 2
@.str.31 = private unnamed_addr constant [7 x i8] c"g_1061\00", align 1
@g_1488 = internal global i16 25559, align 2
@.str.32 = private unnamed_addr constant [7 x i8] c"g_1488\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"g_1499\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"g_1542\00", align 1
@g_1596 = internal constant [5 x [2 x [7 x i32]]] [[2 x [7 x i32]] [[7 x i32] [i32 2052833362, i32 -5, i32 -5, i32 2052833362, i32 -5, i32 -5, i32 2052833362], [7 x i32] [i32 -1914109048, i32 1, i32 -1914109048, i32 1, i32 -1, i32 1, i32 -1914109048]], [2 x [7 x i32]] [[7 x i32] [i32 2052833362, i32 2052833362, i32 -5, i32 2052833362, i32 2052833362, i32 -5, i32 2052833362], [7 x i32] [i32 -1, i32 1, i32 -1914109048, i32 1, i32 -1914109048, i32 1, i32 -1]], [2 x [7 x i32]] [[7 x i32] [i32 -5, i32 2052833362, i32 -5, i32 -5, i32 2052833362, i32 -5, i32 -5], [7 x i32] [i32 -1, i32 1, i32 -1, i32 1, i32 -1, i32 -1, i32 -1]], [2 x [7 x i32]] [[7 x i32] [i32 2052833362, i32 -5, i32 -5, i32 2052833362, i32 -5, i32 -5, i32 2052833362], [7 x i32] [i32 -1914109048, i32 1, i32 -1914109048, i32 1, i32 -1, i32 1, i32 -1914109048]], [2 x [7 x i32]] [[7 x i32] [i32 2052833362, i32 2052833362, i32 -5, i32 2052833362, i32 2052833362, i32 -5, i32 2052833362], [7 x i32] [i32 -1, i32 1, i32 -1914109048, i32 1, i32 -1914109048, i32 1, i32 -1]]], align 16
@.str.35 = private unnamed_addr constant [16 x i8] c"g_1596[i][j][k]\00", align 1
@g_1659 = internal global i16 0, align 2
@.str.36 = private unnamed_addr constant [7 x i8] c"g_1659\00", align 1
@g_1714 = internal global i32 1780030630, align 4
@.str.37 = private unnamed_addr constant [7 x i8] c"g_1714\00", align 1
@g_1810 = internal global i32 -1314258105, align 4
@.str.38 = private unnamed_addr constant [7 x i8] c"g_1810\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"g_1857\00", align 1
@g_2010 = internal global i32 -139140973, align 4
@.str.40 = private unnamed_addr constant [7 x i8] c"g_2010\00", align 1
@g_2028 = internal global i16 23205, align 2
@.str.41 = private unnamed_addr constant [7 x i8] c"g_2028\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"g_2036\00", align 1
@g_2083 = internal global i8 -4, align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"g_2083\00", align 1
@g_2086 = internal global [6 x i8] c"G\A7GG\A7G", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"g_2086[i]\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@g_112 = internal global i8* @g_109, align 8
@.str.45 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@.str.46 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

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
  %90 = call zeroext i8 @func_1()
  %91 = load i32, i32* @g_2, align 4, !tbaa !1
  %92 = sext i32 %91 to i64
  %93 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %93)
  %94 = load i32, i32* @g_16, align 4, !tbaa !1
  %95 = sext i32 %94 to i64
  %96 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %95, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 %96)
  %97 = load i16, i16* @g_19, align 2, !tbaa !10
  %98 = sext i16 %97 to i64
  %99 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 %99)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %100

; <label>:100                                     ; preds = %140, %89
  %101 = load i32, i32* %i, align 4, !tbaa !1
  %102 = icmp slt i32 %101, 9
  br i1 %102, label %103, label %143

; <label>:103                                     ; preds = %100
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %104

; <label>:104                                     ; preds = %136, %103
  %105 = load i32, i32* %j, align 4, !tbaa !1
  %106 = icmp slt i32 %105, 10
  br i1 %106, label %107, label %139

; <label>:107                                     ; preds = %104
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %108

; <label>:108                                     ; preds = %132, %107
  %109 = load i32, i32* %k, align 4, !tbaa !1
  %110 = icmp slt i32 %109, 2
  br i1 %110, label %111, label %135

; <label>:111                                     ; preds = %108
  %112 = load i32, i32* %k, align 4, !tbaa !1
  %113 = sext i32 %112 to i64
  %114 = load i32, i32* %j, align 4, !tbaa !1
  %115 = sext i32 %114 to i64
  %116 = load i32, i32* %i, align 4, !tbaa !1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [9 x [10 x [2 x i32]]], [9 x [10 x [2 x i32]]]* @g_20, i32 0, i64 %117
  %119 = getelementptr inbounds [10 x [2 x i32]], [10 x [2 x i32]]* %118, i32 0, i64 %115
  %120 = getelementptr inbounds [2 x i32], [2 x i32]* %119, i32 0, i64 %113
  %121 = load volatile i32, i32* %120, align 4, !tbaa !1
  %122 = sext i32 %121 to i64
  %123 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %122, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i32 %123)
  %124 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %131

; <label>:126                                     ; preds = %111
  %127 = load i32, i32* %i, align 4, !tbaa !1
  %128 = load i32, i32* %j, align 4, !tbaa !1
  %129 = load i32, i32* %k, align 4, !tbaa !1
  %130 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0), i32 %127, i32 %128, i32 %129)
  br label %131

; <label>:131                                     ; preds = %126, %111
  br label %132

; <label>:132                                     ; preds = %131
  %133 = load i32, i32* %k, align 4, !tbaa !1
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %k, align 4, !tbaa !1
  br label %108

; <label>:135                                     ; preds = %108
  br label %136

; <label>:136                                     ; preds = %135
  %137 = load i32, i32* %j, align 4, !tbaa !1
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %j, align 4, !tbaa !1
  br label %104

; <label>:139                                     ; preds = %104
  br label %140

; <label>:140                                     ; preds = %139
  %141 = load i32, i32* %i, align 4, !tbaa !1
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %i, align 4, !tbaa !1
  br label %100

; <label>:143                                     ; preds = %100
  %144 = load i8, i8* @g_55, align 1, !tbaa !9
  %145 = sext i8 %144 to i64
  %146 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %145, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 %146)
  %147 = load i8, i8* @g_99, align 1, !tbaa !9
  %148 = sext i8 %147 to i64
  %149 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %148, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 %149)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %150

; <label>:150                                     ; preds = %165, %143
  %151 = load i32, i32* %i, align 4, !tbaa !1
  %152 = icmp slt i32 %151, 7
  br i1 %152, label %153, label %168

; <label>:153                                     ; preds = %150
  %154 = load i32, i32* %i, align 4, !tbaa !1
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [7 x i64], [7 x i64]* @g_103, i32 0, i64 %155
  %157 = load i64, i64* %156, align 8, !tbaa !7
  %158 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %157, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i32 %158)
  %159 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %164

; <label>:161                                     ; preds = %153
  %162 = load i32, i32* %i, align 4, !tbaa !1
  %163 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i32 %162)
  br label %164

; <label>:164                                     ; preds = %161, %153
  br label %165

; <label>:165                                     ; preds = %164
  %166 = load i32, i32* %i, align 4, !tbaa !1
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %i, align 4, !tbaa !1
  br label %150

; <label>:168                                     ; preds = %150
  %169 = load i32, i32* @g_105, align 4, !tbaa !1
  %170 = zext i32 %169 to i64
  %171 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %170, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i32 %171)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %172

; <label>:172                                     ; preds = %188, %168
  %173 = load i32, i32* %i, align 4, !tbaa !1
  %174 = icmp slt i32 %173, 8
  br i1 %174, label %175, label %191

; <label>:175                                     ; preds = %172
  %176 = load i32, i32* %i, align 4, !tbaa !1
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [8 x i16], [8 x i16]* @g_106, i32 0, i64 %177
  %179 = load i16, i16* %178, align 2, !tbaa !10
  %180 = sext i16 %179 to i64
  %181 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %180, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i32 %181)
  %182 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %187

; <label>:184                                     ; preds = %175
  %185 = load i32, i32* %i, align 4, !tbaa !1
  %186 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i32 %185)
  br label %187

; <label>:187                                     ; preds = %184, %175
  br label %188

; <label>:188                                     ; preds = %187
  %189 = load i32, i32* %i, align 4, !tbaa !1
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %i, align 4, !tbaa !1
  br label %172

; <label>:191                                     ; preds = %172
  %192 = load i8, i8* @g_109, align 1, !tbaa !9
  %193 = zext i8 %192 to i64
  %194 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %193, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i32 %194)
  %195 = load i64, i64* @g_132, align 8, !tbaa !7
  %196 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %195, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i32 %196)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %197

; <label>:197                                     ; preds = %225, %191
  %198 = load i32, i32* %i, align 4, !tbaa !1
  %199 = icmp slt i32 %198, 1
  br i1 %199, label %200, label %228

; <label>:200                                     ; preds = %197
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %201

; <label>:201                                     ; preds = %221, %200
  %202 = load i32, i32* %j, align 4, !tbaa !1
  %203 = icmp slt i32 %202, 6
  br i1 %203, label %204, label %224

; <label>:204                                     ; preds = %201
  %205 = load i32, i32* %j, align 4, !tbaa !1
  %206 = sext i32 %205 to i64
  %207 = load i32, i32* %i, align 4, !tbaa !1
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds [1 x [6 x i16]], [1 x [6 x i16]]* @g_141, i32 0, i64 %208
  %210 = getelementptr inbounds [6 x i16], [6 x i16]* %209, i32 0, i64 %206
  %211 = load i16, i16* %210, align 2, !tbaa !10
  %212 = sext i16 %211 to i64
  %213 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %212, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), i32 %213)
  %214 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %220

; <label>:216                                     ; preds = %204
  %217 = load i32, i32* %i, align 4, !tbaa !1
  %218 = load i32, i32* %j, align 4, !tbaa !1
  %219 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i32 0, i32 0), i32 %217, i32 %218)
  br label %220

; <label>:220                                     ; preds = %216, %204
  br label %221

; <label>:221                                     ; preds = %220
  %222 = load i32, i32* %j, align 4, !tbaa !1
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %j, align 4, !tbaa !1
  br label %201

; <label>:224                                     ; preds = %201
  br label %225

; <label>:225                                     ; preds = %224
  %226 = load i32, i32* %i, align 4, !tbaa !1
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %i, align 4, !tbaa !1
  br label %197

; <label>:228                                     ; preds = %197
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %229

; <label>:229                                     ; preds = %245, %228
  %230 = load i32, i32* %i, align 4, !tbaa !1
  %231 = icmp slt i32 %230, 9
  br i1 %231, label %232, label %248

; <label>:232                                     ; preds = %229
  %233 = load i32, i32* %i, align 4, !tbaa !1
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds [9 x i32], [9 x i32]* @g_168, i32 0, i64 %234
  %236 = load i32, i32* %235, align 4, !tbaa !1
  %237 = sext i32 %236 to i64
  %238 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %237, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i32 %238)
  %239 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %244

; <label>:241                                     ; preds = %232
  %242 = load i32, i32* %i, align 4, !tbaa !1
  %243 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i32 %242)
  br label %244

; <label>:244                                     ; preds = %241, %232
  br label %245

; <label>:245                                     ; preds = %244
  %246 = load i32, i32* %i, align 4, !tbaa !1
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %i, align 4, !tbaa !1
  br label %229

; <label>:248                                     ; preds = %229
  %249 = load volatile i64, i64* @g_189, align 8, !tbaa !7
  %250 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %249, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i32 %250)
  %251 = load i16, i16* @g_212, align 2, !tbaa !10
  %252 = zext i16 %251 to i64
  %253 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %252, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i32 %253)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %254

; <label>:254                                     ; preds = %270, %248
  %255 = load i32, i32* %i, align 4, !tbaa !1
  %256 = icmp slt i32 %255, 3
  br i1 %256, label %257, label %273

; <label>:257                                     ; preds = %254
  %258 = load i32, i32* %i, align 4, !tbaa !1
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds [3 x i32], [3 x i32]* @g_239, i32 0, i64 %259
  %261 = load i32, i32* %260, align 4, !tbaa !1
  %262 = zext i32 %261 to i64
  %263 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %262, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i32 %263)
  %264 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %269

; <label>:266                                     ; preds = %257
  %267 = load i32, i32* %i, align 4, !tbaa !1
  %268 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i32 %267)
  br label %269

; <label>:269                                     ; preds = %266, %257
  br label %270

; <label>:270                                     ; preds = %269
  %271 = load i32, i32* %i, align 4, !tbaa !1
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %i, align 4, !tbaa !1
  br label %254

; <label>:273                                     ; preds = %254
  %274 = load volatile i16, i16* @g_298, align 2, !tbaa !10
  %275 = zext i16 %274 to i64
  %276 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %275, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 %276)
  %277 = load i8, i8* @g_487, align 1, !tbaa !9
  %278 = sext i8 %277 to i64
  %279 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %278, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i32 %279)
  %280 = load i32, i32* @g_488, align 4, !tbaa !1
  %281 = sext i32 %280 to i64
  %282 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %281, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i32 %282)
  %283 = load i16, i16* @g_489, align 2, !tbaa !10
  %284 = sext i16 %283 to i64
  %285 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %284, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 %285)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %286

; <label>:286                                     ; preds = %302, %273
  %287 = load i32, i32* %i, align 4, !tbaa !1
  %288 = icmp slt i32 %287, 3
  br i1 %288, label %289, label %305

; <label>:289                                     ; preds = %286
  %290 = load i32, i32* %i, align 4, !tbaa !1
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds [3 x i32], [3 x i32]* @g_595, i32 0, i64 %291
  %293 = load volatile i32, i32* %292, align 4, !tbaa !1
  %294 = zext i32 %293 to i64
  %295 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %294, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), i32 %295)
  %296 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %301

; <label>:298                                     ; preds = %289
  %299 = load i32, i32* %i, align 4, !tbaa !1
  %300 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i32 %299)
  br label %301

; <label>:301                                     ; preds = %298, %289
  br label %302

; <label>:302                                     ; preds = %301
  %303 = load i32, i32* %i, align 4, !tbaa !1
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %i, align 4, !tbaa !1
  br label %286

; <label>:305                                     ; preds = %286
  %306 = load i32, i32* @g_704, align 4, !tbaa !1
  %307 = zext i32 %306 to i64
  %308 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %307, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i32 %308)
  %309 = load i8, i8* @g_779, align 1, !tbaa !9
  %310 = zext i8 %309 to i64
  %311 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %310, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i32 %311)
  %312 = load volatile i32, i32* @g_974, align 4, !tbaa !1
  %313 = sext i32 %312 to i64
  %314 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %313, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 %314)
  %315 = load i32, i32* @g_989, align 4, !tbaa !1
  %316 = sext i32 %315 to i64
  %317 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %316, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i32 %317)
  %318 = load i32, i32* @g_1017, align 4, !tbaa !1
  %319 = zext i32 %318 to i64
  %320 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %319, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), i32 %320)
  %321 = load i8, i8* @g_1044, align 1, !tbaa !9
  %322 = sext i8 %321 to i64
  %323 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %322, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0), i32 %323)
  %324 = load i16, i16* @g_1061, align 2, !tbaa !10
  %325 = sext i16 %324 to i64
  %326 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %325, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), i32 %326)
  %327 = load volatile i16, i16* @g_1488, align 2, !tbaa !10
  %328 = zext i16 %327 to i64
  %329 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %328, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), i32 %329)
  %330 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 50046, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), i32 %330)
  %331 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0), i32 %331)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %332

; <label>:332                                     ; preds = %372, %305
  %333 = load i32, i32* %i, align 4, !tbaa !1
  %334 = icmp slt i32 %333, 5
  br i1 %334, label %335, label %375

; <label>:335                                     ; preds = %332
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %336

; <label>:336                                     ; preds = %368, %335
  %337 = load i32, i32* %j, align 4, !tbaa !1
  %338 = icmp slt i32 %337, 2
  br i1 %338, label %339, label %371

; <label>:339                                     ; preds = %336
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %340

; <label>:340                                     ; preds = %364, %339
  %341 = load i32, i32* %k, align 4, !tbaa !1
  %342 = icmp slt i32 %341, 7
  br i1 %342, label %343, label %367

; <label>:343                                     ; preds = %340
  %344 = load i32, i32* %k, align 4, !tbaa !1
  %345 = sext i32 %344 to i64
  %346 = load i32, i32* %j, align 4, !tbaa !1
  %347 = sext i32 %346 to i64
  %348 = load i32, i32* %i, align 4, !tbaa !1
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds [5 x [2 x [7 x i32]]], [5 x [2 x [7 x i32]]]* @g_1596, i32 0, i64 %349
  %351 = getelementptr inbounds [2 x [7 x i32]], [2 x [7 x i32]]* %350, i32 0, i64 %347
  %352 = getelementptr inbounds [7 x i32], [7 x i32]* %351, i32 0, i64 %345
  %353 = load i32, i32* %352, align 4, !tbaa !1
  %354 = sext i32 %353 to i64
  %355 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %354, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.35, i32 0, i32 0), i32 %355)
  %356 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %363

; <label>:358                                     ; preds = %343
  %359 = load i32, i32* %i, align 4, !tbaa !1
  %360 = load i32, i32* %j, align 4, !tbaa !1
  %361 = load i32, i32* %k, align 4, !tbaa !1
  %362 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0), i32 %359, i32 %360, i32 %361)
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
  %376 = load i16, i16* @g_1659, align 2, !tbaa !10
  %377 = zext i16 %376 to i64
  %378 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %377, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), i32 %378)
  %379 = load i32, i32* @g_1714, align 4, !tbaa !1
  %380 = sext i32 %379 to i64
  %381 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %380, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), i32 %381)
  %382 = load i32, i32* @g_1810, align 4, !tbaa !1
  %383 = zext i32 %382 to i64
  %384 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %383, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), i32 %384)
  %385 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i32 0, i32 0), i32 %385)
  %386 = load volatile i32, i32* @g_2010, align 4, !tbaa !1
  %387 = sext i32 %386 to i64
  %388 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %387, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0), i32 %388)
  %389 = load i16, i16* @g_2028, align 2, !tbaa !10
  %390 = zext i16 %389 to i64
  %391 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %390, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0), i32 %391)
  %392 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 163318833, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), i32 %392)
  %393 = load i8, i8* @g_2083, align 1, !tbaa !9
  %394 = sext i8 %393 to i64
  %395 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %394, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), i32 %395)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %396

; <label>:396                                     ; preds = %412, %375
  %397 = load i32, i32* %i, align 4, !tbaa !1
  %398 = icmp slt i32 %397, 6
  br i1 %398, label %399, label %415

; <label>:399                                     ; preds = %396
  %400 = load i32, i32* %i, align 4, !tbaa !1
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds [6 x i8], [6 x i8]* @g_2086, i32 0, i64 %401
  %403 = load i8, i8* %402, align 1, !tbaa !9
  %404 = sext i8 %403 to i64
  %405 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %404, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i32 0, i32 0), i32 %405)
  %406 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %408, label %411

; <label>:408                                     ; preds = %399
  %409 = load i32, i32* %i, align 4, !tbaa !1
  %410 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i32 %409)
  br label %411

; <label>:411                                     ; preds = %408, %399
  br label %412

; <label>:412                                     ; preds = %411
  %413 = load i32, i32* %i, align 4, !tbaa !1
  %414 = add nsw i32 %413, 1
  store i32 %414, i32* %i, align 4, !tbaa !1
  br label %396

; <label>:415                                     ; preds = %396
  %416 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %417 = zext i32 %416 to i64
  %418 = xor i64 %417, 4294967295
  %419 = trunc i64 %418 to i32
  %420 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %419, i32 %420)
  %421 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %421) #1
  %422 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %422) #1
  %423 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %423) #1
  %424 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %424) #1
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
define internal zeroext i8 @func_1() #0 {
  %l_13 = alloca i64, align 8
  %l_34 = alloca i32, align 4
  %l_1718 = alloca i64, align 8
  %l_1727 = alloca i32, align 4
  %l_1736 = alloca i64, align 8
  %l_1774 = alloca i8*, align 8
  %l_1773 = alloca i8**, align 8
  %l_1772 = alloca i8***, align 8
  %l_1866 = alloca i64, align 8
  %l_1924 = alloca [1 x i32], align 4
  %l_1969 = alloca i16*, align 8
  %l_1968 = alloca [2 x i16**], align 16
  %l_2012 = alloca i16, align 2
  %l_2076 = alloca i32*, align 8
  %l_2077 = alloca i32*, align 8
  %l_2078 = alloca i32*, align 8
  %l_2079 = alloca i32*, align 8
  %l_2080 = alloca i32*, align 8
  %l_2081 = alloca [10 x [4 x i32*]], align 16
  %l_2082 = alloca i64, align 8
  %l_2084 = alloca i8, align 1
  %l_2085 = alloca i64, align 8
  %l_2087 = alloca i32, align 4
  %l_2088 = alloca i32, align 4
  %l_2091 = alloca i32**, align 8
  %l_2092 = alloca i32**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %l_24 = alloca i8, align 1
  %l_33 = alloca i32, align 4
  %l_35 = alloca i32, align 4
  %l_1733 = alloca i32*, align 8
  %l_1778 = alloca i64, align 8
  %l_1804 = alloca i32****, align 8
  %l_1803 = alloca i32*****, align 8
  %l_1885 = alloca i8, align 1
  %l_2013 = alloca i64, align 8
  %l_2014 = alloca i16, align 2
  %l_2015 = alloca [3 x i64], align 16
  %l_2037 = alloca i16, align 2
  %l_2075 = alloca i32*, align 8
  %i1 = alloca i32, align 4
  %1 = bitcast i64* %l_13 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store i64 9, i64* %l_13, align 8, !tbaa !7
  %2 = bitcast i32* %l_34 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 -1500597599, i32* %l_34, align 4, !tbaa !1
  %3 = bitcast i64* %l_1718 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store i64 4243621509097768686, i64* %l_1718, align 8, !tbaa !7
  %4 = bitcast i32* %l_1727 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 0, i32* %l_1727, align 4, !tbaa !1
  %5 = bitcast i64* %l_1736 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store i64 7, i64* %l_1736, align 8, !tbaa !7
  %6 = bitcast i8** %l_1774 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i8* @g_99, i8** %l_1774, align 8, !tbaa !5
  %7 = bitcast i8*** %l_1773 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store i8** %l_1774, i8*** %l_1773, align 8, !tbaa !5
  %8 = bitcast i8**** %l_1772 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i8*** %l_1773, i8**** %l_1772, align 8, !tbaa !5
  %9 = bitcast i64* %l_1866 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store i64 7444312568593754620, i64* %l_1866, align 8, !tbaa !7
  %10 = bitcast [1 x i32]* %l_1924 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i16** %l_1969 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store i16* @g_212, i16** %l_1969, align 8, !tbaa !5
  %12 = bitcast [2 x i16**]* %l_1968 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %12) #1
  %13 = bitcast i16* %l_2012 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %13) #1
  store i16 -7, i16* %l_2012, align 2, !tbaa !10
  %14 = bitcast i32** %l_2076 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  store i32* @g_16, i32** %l_2076, align 8, !tbaa !5
  %15 = bitcast i32** %l_2077 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  store i32* %l_34, i32** %l_2077, align 8, !tbaa !5
  %16 = bitcast i32** %l_2078 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  store i32* getelementptr inbounds ([9 x i32], [9 x i32]* @g_168, i32 0, i64 5), i32** %l_2078, align 8, !tbaa !5
  %17 = bitcast i32** %l_2079 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  store i32* @g_2, i32** %l_2079, align 8, !tbaa !5
  %18 = bitcast i32** %l_2080 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  store i32* @g_2, i32** %l_2080, align 8, !tbaa !5
  %19 = bitcast [10 x [4 x i32*]]* %l_2081 to i8*
  call void @llvm.lifetime.start(i64 320, i8* %19) #1
  %20 = getelementptr inbounds [10 x [4 x i32*]], [10 x [4 x i32*]]* %l_2081, i64 0, i64 0
  %21 = getelementptr inbounds [4 x i32*], [4 x i32*]* %20, i64 0, i64 0
  store i32* getelementptr inbounds ([9 x i32], [9 x i32]* @g_168, i32 0, i64 5), i32** %21, !tbaa !5
  %22 = getelementptr inbounds i32*, i32** %21, i64 1
  store i32* getelementptr inbounds ([9 x i32], [9 x i32]* @g_168, i32 0, i64 5), i32** %22, !tbaa !5
  %23 = getelementptr inbounds i32*, i32** %22, i64 1
  store i32* %l_1727, i32** %23, !tbaa !5
  %24 = getelementptr inbounds i32*, i32** %23, i64 1
  store i32* %l_1727, i32** %24, !tbaa !5
  %25 = getelementptr inbounds [4 x i32*], [4 x i32*]* %20, i64 1
  %26 = getelementptr inbounds [4 x i32*], [4 x i32*]* %25, i64 0, i64 0
  store i32* getelementptr inbounds ([9 x i32], [9 x i32]* @g_168, i32 0, i64 5), i32** %26, !tbaa !5
  %27 = getelementptr inbounds i32*, i32** %26, i64 1
  store i32* getelementptr inbounds ([9 x i32], [9 x i32]* @g_168, i32 0, i64 5), i32** %27, !tbaa !5
  %28 = getelementptr inbounds i32*, i32** %27, i64 1
  store i32* getelementptr inbounds ([9 x i32], [9 x i32]* @g_168, i32 0, i64 5), i32** %28, !tbaa !5
  %29 = getelementptr inbounds i32*, i32** %28, i64 1
  store i32* %l_1727, i32** %29, !tbaa !5
  %30 = getelementptr inbounds [4 x i32*], [4 x i32*]* %25, i64 1
  %31 = getelementptr inbounds [4 x i32*], [4 x i32*]* %30, i64 0, i64 0
  store i32* %l_34, i32** %31, !tbaa !5
  %32 = getelementptr inbounds i32*, i32** %31, i64 1
  store i32* getelementptr inbounds ([9 x i32], [9 x i32]* @g_168, i32 0, i64 5), i32** %32, !tbaa !5
  %33 = getelementptr inbounds i32*, i32** %32, i64 1
  store i32* %l_34, i32** %33, !tbaa !5
  %34 = getelementptr inbounds i32*, i32** %33, i64 1
  store i32* getelementptr inbounds ([9 x i32], [9 x i32]* @g_168, i32 0, i64 5), i32** %34, !tbaa !5
  %35 = getelementptr inbounds [4 x i32*], [4 x i32*]* %30, i64 1
  %36 = getelementptr inbounds [4 x i32*], [4 x i32*]* %35, i64 0, i64 0
  store i32* %l_34, i32** %36, !tbaa !5
  %37 = getelementptr inbounds i32*, i32** %36, i64 1
  store i32* getelementptr inbounds ([9 x i32], [9 x i32]* @g_168, i32 0, i64 5), i32** %37, !tbaa !5
  %38 = getelementptr inbounds i32*, i32** %37, i64 1
  store i32* getelementptr inbounds ([9 x i32], [9 x i32]* @g_168, i32 0, i64 5), i32** %38, !tbaa !5
  %39 = getelementptr inbounds i32*, i32** %38, i64 1
  store i32* %l_34, i32** %39, !tbaa !5
  %40 = getelementptr inbounds [4 x i32*], [4 x i32*]* %35, i64 1
  %41 = getelementptr inbounds [4 x i32*], [4 x i32*]* %40, i64 0, i64 0
  store i32* getelementptr inbounds ([9 x i32], [9 x i32]* @g_168, i32 0, i64 5), i32** %41, !tbaa !5
  %42 = getelementptr inbounds i32*, i32** %41, i64 1
  store i32* getelementptr inbounds ([9 x i32], [9 x i32]* @g_168, i32 0, i64 5), i32** %42, !tbaa !5
  %43 = getelementptr inbounds i32*, i32** %42, i64 1
  store i32* %l_1727, i32** %43, !tbaa !5
  %44 = getelementptr inbounds i32*, i32** %43, i64 1
  store i32* getelementptr inbounds ([9 x i32], [9 x i32]* @g_168, i32 0, i64 5), i32** %44, !tbaa !5
  %45 = getelementptr inbounds [4 x i32*], [4 x i32*]* %40, i64 1
  %46 = getelementptr inbounds [4 x i32*], [4 x i32*]* %45, i64 0, i64 0
  store i32* getelementptr inbounds ([9 x i32], [9 x i32]* @g_168, i32 0, i64 5), i32** %46, !tbaa !5
  %47 = getelementptr inbounds i32*, i32** %46, i64 1
  store i32* getelementptr inbounds ([9 x i32], [9 x i32]* @g_168, i32 0, i64 5), i32** %47, !tbaa !5
  %48 = getelementptr inbounds i32*, i32** %47, i64 1
  store i32* %l_1727, i32** %48, !tbaa !5
  %49 = getelementptr inbounds i32*, i32** %48, i64 1
  store i32* %l_1727, i32** %49, !tbaa !5
  %50 = getelementptr inbounds [4 x i32*], [4 x i32*]* %45, i64 1
  %51 = getelementptr inbounds [4 x i32*], [4 x i32*]* %50, i64 0, i64 0
  store i32* getelementptr inbounds ([9 x i32], [9 x i32]* @g_168, i32 0, i64 5), i32** %51, !tbaa !5
  %52 = getelementptr inbounds i32*, i32** %51, i64 1
  store i32* getelementptr inbounds ([9 x i32], [9 x i32]* @g_168, i32 0, i64 5), i32** %52, !tbaa !5
  %53 = getelementptr inbounds i32*, i32** %52, i64 1
  store i32* getelementptr inbounds ([9 x i32], [9 x i32]* @g_168, i32 0, i64 5), i32** %53, !tbaa !5
  %54 = getelementptr inbounds i32*, i32** %53, i64 1
  store i32* %l_1727, i32** %54, !tbaa !5
  %55 = getelementptr inbounds [4 x i32*], [4 x i32*]* %50, i64 1
  %56 = getelementptr inbounds [4 x i32*], [4 x i32*]* %55, i64 0, i64 0
  store i32* %l_34, i32** %56, !tbaa !5
  %57 = getelementptr inbounds i32*, i32** %56, i64 1
  store i32* getelementptr inbounds ([9 x i32], [9 x i32]* @g_168, i32 0, i64 5), i32** %57, !tbaa !5
  %58 = getelementptr inbounds i32*, i32** %57, i64 1
  store i32* %l_34, i32** %58, !tbaa !5
  %59 = getelementptr inbounds i32*, i32** %58, i64 1
  store i32* getelementptr inbounds ([9 x i32], [9 x i32]* @g_168, i32 0, i64 5), i32** %59, !tbaa !5
  %60 = getelementptr inbounds [4 x i32*], [4 x i32*]* %55, i64 1
  %61 = getelementptr inbounds [4 x i32*], [4 x i32*]* %60, i64 0, i64 0
  store i32* %l_34, i32** %61, !tbaa !5
  %62 = getelementptr inbounds i32*, i32** %61, i64 1
  store i32* getelementptr inbounds ([9 x i32], [9 x i32]* @g_168, i32 0, i64 5), i32** %62, !tbaa !5
  %63 = getelementptr inbounds i32*, i32** %62, i64 1
  store i32* getelementptr inbounds ([9 x i32], [9 x i32]* @g_168, i32 0, i64 5), i32** %63, !tbaa !5
  %64 = getelementptr inbounds i32*, i32** %63, i64 1
  store i32* %l_34, i32** %64, !tbaa !5
  %65 = getelementptr inbounds [4 x i32*], [4 x i32*]* %60, i64 1
  %66 = getelementptr inbounds [4 x i32*], [4 x i32*]* %65, i64 0, i64 0
  store i32* getelementptr inbounds ([9 x i32], [9 x i32]* @g_168, i32 0, i64 5), i32** %66, !tbaa !5
  %67 = getelementptr inbounds i32*, i32** %66, i64 1
  store i32* getelementptr inbounds ([9 x i32], [9 x i32]* @g_168, i32 0, i64 5), i32** %67, !tbaa !5
  %68 = getelementptr inbounds i32*, i32** %67, i64 1
  store i32* %l_1727, i32** %68, !tbaa !5
  %69 = getelementptr inbounds i32*, i32** %68, i64 1
  store i32* getelementptr inbounds ([9 x i32], [9 x i32]* @g_168, i32 0, i64 5), i32** %69, !tbaa !5
  %70 = bitcast i64* %l_2082 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %70) #1
  store i64 2825565113275882285, i64* %l_2082, align 8, !tbaa !7
  call void @llvm.lifetime.start(i64 1, i8* %l_2084) #1
  store i8 29, i8* %l_2084, align 1, !tbaa !9
  %71 = bitcast i64* %l_2085 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %71) #1
  store i64 0, i64* %l_2085, align 8, !tbaa !7
  %72 = bitcast i32* %l_2087 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %72) #1
  store i32 -4, i32* %l_2087, align 4, !tbaa !1
  %73 = bitcast i32* %l_2088 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %73) #1
  store i32 0, i32* %l_2088, align 4, !tbaa !1
  %74 = bitcast i32*** %l_2091 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %74) #1
  store i32** %l_2080, i32*** %l_2091, align 8, !tbaa !5
  %75 = bitcast i32*** %l_2092 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %75) #1
  store i32** %l_2078, i32*** %l_2092, align 8, !tbaa !5
  %76 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %76) #1
  %77 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %77) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %78

; <label>:78                                      ; preds = %85, %0
  %79 = load i32, i32* %i, align 4, !tbaa !1
  %80 = icmp slt i32 %79, 1
  br i1 %80, label %81, label %88

; <label>:81                                      ; preds = %78
  %82 = load i32, i32* %i, align 4, !tbaa !1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [1 x i32], [1 x i32]* %l_1924, i32 0, i64 %83
  store i32 1, i32* %84, align 4, !tbaa !1
  br label %85

; <label>:85                                      ; preds = %81
  %86 = load i32, i32* %i, align 4, !tbaa !1
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %i, align 4, !tbaa !1
  br label %78

; <label>:88                                      ; preds = %78
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %89

; <label>:89                                      ; preds = %96, %88
  %90 = load i32, i32* %i, align 4, !tbaa !1
  %91 = icmp slt i32 %90, 2
  br i1 %91, label %92, label %99

; <label>:92                                      ; preds = %89
  %93 = load i32, i32* %i, align 4, !tbaa !1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [2 x i16**], [2 x i16**]* %l_1968, i32 0, i64 %94
  store i16** %l_1969, i16*** %95, align 8, !tbaa !5
  br label %96

; <label>:96                                      ; preds = %92
  %97 = load i32, i32* %i, align 4, !tbaa !1
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %i, align 4, !tbaa !1
  br label %89

; <label>:99                                      ; preds = %89
  store i32 10, i32* @g_2, align 4, !tbaa !1
  br label %100

; <label>:100                                     ; preds = %139, %99
  %101 = load i32, i32* @g_2, align 4, !tbaa !1
  %102 = icmp slt i32 %101, 16
  br i1 %102, label %103, label %142

; <label>:103                                     ; preds = %100
  call void @llvm.lifetime.start(i64 1, i8* %l_24) #1
  store i8 1, i8* %l_24, align 1, !tbaa !9
  %104 = bitcast i32* %l_33 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %104) #1
  store i32 -882337701, i32* %l_33, align 4, !tbaa !1
  %105 = bitcast i32* %l_35 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %105) #1
  store i32 -24410778, i32* %l_35, align 4, !tbaa !1
  %106 = bitcast i32** %l_1733 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %106) #1
  store i32* %l_35, i32** %l_1733, align 8, !tbaa !5
  %107 = bitcast i64* %l_1778 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %107) #1
  store i64 4021023113260027231, i64* %l_1778, align 8, !tbaa !7
  %108 = bitcast i32***** %l_1804 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %108) #1
  store i32**** null, i32***** %l_1804, align 8, !tbaa !5
  %109 = bitcast i32****** %l_1803 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %109) #1
  store i32***** %l_1804, i32****** %l_1803, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_1885) #1
  store i8 89, i8* %l_1885, align 1, !tbaa !9
  %110 = bitcast i64* %l_2013 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %110) #1
  store i64 -5359577220902530060, i64* %l_2013, align 8, !tbaa !7
  %111 = bitcast i16* %l_2014 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %111) #1
  store i16 0, i16* %l_2014, align 2, !tbaa !10
  %112 = bitcast [3 x i64]* %l_2015 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %112) #1
  %113 = bitcast i16* %l_2037 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %113) #1
  store i16 -1, i16* %l_2037, align 2, !tbaa !10
  %114 = bitcast i32** %l_2075 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %114) #1
  store i32* %l_1727, i32** %l_2075, align 8, !tbaa !5
  %115 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %115) #1
  store i32 0, i32* %i1, align 4, !tbaa !1
  br label %116

; <label>:116                                     ; preds = %123, %103
  %117 = load i32, i32* %i1, align 4, !tbaa !1
  %118 = icmp slt i32 %117, 3
  br i1 %118, label %119, label %126

; <label>:119                                     ; preds = %116
  %120 = load i32, i32* %i1, align 4, !tbaa !1
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [3 x i64], [3 x i64]* %l_2015, i32 0, i64 %121
  store i64 4, i64* %122, align 8, !tbaa !7
  br label %123

; <label>:123                                     ; preds = %119
  %124 = load i32, i32* %i1, align 4, !tbaa !1
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %i1, align 4, !tbaa !1
  br label %116

; <label>:126                                     ; preds = %116
  %127 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %127) #1
  %128 = bitcast i32** %l_2075 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %128) #1
  %129 = bitcast i16* %l_2037 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %129) #1
  %130 = bitcast [3 x i64]* %l_2015 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %130) #1
  %131 = bitcast i16* %l_2014 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %131) #1
  %132 = bitcast i64* %l_2013 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %132) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1885) #1
  %133 = bitcast i32****** %l_1803 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %133) #1
  %134 = bitcast i32***** %l_1804 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %134) #1
  %135 = bitcast i64* %l_1778 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %135) #1
  %136 = bitcast i32** %l_1733 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %136) #1
  %137 = bitcast i32* %l_35 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %137) #1
  %138 = bitcast i32* %l_33 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %138) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_24) #1
  br label %139

; <label>:139                                     ; preds = %126
  %140 = load i32, i32* @g_2, align 4, !tbaa !1
  %141 = call i32 @safe_add_func_int32_t_s_s(i32 %140, i32 5)
  store i32 %141, i32* @g_2, align 4, !tbaa !1
  br label %100

; <label>:142                                     ; preds = %100
  %143 = load i32, i32* %l_2088, align 4, !tbaa !1
  %144 = add i32 %143, 1
  store i32 %144, i32* %l_2088, align 4, !tbaa !1
  %145 = load i32**, i32*** %l_2091, align 8, !tbaa !5
  store i32* null, i32** %145, align 8, !tbaa !5
  %146 = load i32**, i32*** %l_2092, align 8, !tbaa !5
  store i32* null, i32** %146, align 8, !tbaa !5
  %147 = load i8*, i8** @g_112, align 8, !tbaa !5
  %148 = load i8, i8* %147, align 1, !tbaa !9
  %149 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %149) #1
  %150 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %150) #1
  %151 = bitcast i32*** %l_2092 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %151) #1
  %152 = bitcast i32*** %l_2091 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %152) #1
  %153 = bitcast i32* %l_2088 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %153) #1
  %154 = bitcast i32* %l_2087 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %154) #1
  %155 = bitcast i64* %l_2085 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %155) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_2084) #1
  %156 = bitcast i64* %l_2082 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %156) #1
  %157 = bitcast [10 x [4 x i32*]]* %l_2081 to i8*
  call void @llvm.lifetime.end(i64 320, i8* %157) #1
  %158 = bitcast i32** %l_2080 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %158) #1
  %159 = bitcast i32** %l_2079 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %159) #1
  %160 = bitcast i32** %l_2078 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %160) #1
  %161 = bitcast i32** %l_2077 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %161) #1
  %162 = bitcast i32** %l_2076 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %162) #1
  %163 = bitcast i16* %l_2012 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %163) #1
  %164 = bitcast [2 x i16**]* %l_1968 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %164) #1
  %165 = bitcast i16** %l_1969 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %165) #1
  %166 = bitcast [1 x i32]* %l_1924 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %166) #1
  %167 = bitcast i64* %l_1866 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %167) #1
  %168 = bitcast i8**** %l_1772 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %168) #1
  %169 = bitcast i8*** %l_1773 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %169) #1
  %170 = bitcast i8** %l_1774 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %170) #1
  %171 = bitcast i64* %l_1736 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %171) #1
  %172 = bitcast i32* %l_1727 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %172) #1
  %173 = bitcast i64* %l_1718 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %173) #1
  %174 = bitcast i32* %l_34 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %174) #1
  %175 = bitcast i64* %l_13 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %175) #1
  ret i8 %148
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
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.45, i32 0, i32 0), i8* %8, i64 %11)
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
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.46, i32 0, i32 0), i32 %3)
  ret void
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
