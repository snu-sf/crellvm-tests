; ModuleID = '00645.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_22 = internal global i16 2, align 2
@.str.1 = private unnamed_addr constant [5 x i8] c"g_22\00", align 1
@g_83 = internal global i32 -7, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"g_83\00", align 1
@g_84 = internal global [10 x i8] c"\01\01\01\01\01\01\01\01\01\01", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"g_84[i]\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_126 = internal global i64 -2, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"g_126\00", align 1
@g_183 = internal global i8 0, align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"g_183\00", align 1
@g_185 = internal global i16 1, align 2
@.str.7 = private unnamed_addr constant [6 x i8] c"g_185\00", align 1
@g_186 = internal global i16 -6543, align 2
@.str.8 = private unnamed_addr constant [6 x i8] c"g_186\00", align 1
@g_218 = internal global i32 2, align 4
@.str.9 = private unnamed_addr constant [6 x i8] c"g_218\00", align 1
@g_295 = internal global i16 -2, align 2
@.str.10 = private unnamed_addr constant [6 x i8] c"g_295\00", align 1
@g_333 = internal global [4 x i16] [i16 1, i16 1, i16 1, i16 1], align 2
@.str.11 = private unnamed_addr constant [9 x i8] c"g_333[i]\00", align 1
@g_363 = internal global i8 -1, align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"g_363\00", align 1
@g_431 = internal global i64 8, align 8
@.str.13 = private unnamed_addr constant [6 x i8] c"g_431\00", align 1
@g_468 = internal global i16 -6581, align 2
@.str.14 = private unnamed_addr constant [6 x i8] c"g_468\00", align 1
@g_562 = internal global i32 9, align 4
@.str.15 = private unnamed_addr constant [6 x i8] c"g_562\00", align 1
@g_676 = internal global i64 638461364809356630, align 8
@.str.16 = private unnamed_addr constant [6 x i8] c"g_676\00", align 1
@g_701 = internal global i64 3562566104544286554, align 8
@.str.17 = private unnamed_addr constant [6 x i8] c"g_701\00", align 1
@g_703 = internal global i32 -1, align 4
@.str.18 = private unnamed_addr constant [6 x i8] c"g_703\00", align 1
@g_890 = internal global [4 x [3 x i8]] [[3 x i8] c"\14\FD\00", [3 x i8] c"\14\14\FD", [3 x i8] c"\8B\FD\FD", [3 x i8] c"\FD\8D\00"], align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"g_890[i][j]\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@g_912 = internal global i8 120, align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"g_912\00", align 1
@g_920 = internal global [4 x [4 x i8]] [[4 x i8] c"\FA\FA\F7\FA", [4 x i8] c"\FA\8B\8B\FA", [4 x i8] c"\8B\FA\8B\8B", [4 x i8] c"\FA\FA\F7\FA"], align 16
@.str.22 = private unnamed_addr constant [12 x i8] c"g_920[i][j]\00", align 1
@g_950 = internal global i32 -9, align 4
@.str.23 = private unnamed_addr constant [6 x i8] c"g_950\00", align 1
@g_958 = internal global i16 5825, align 2
@.str.24 = private unnamed_addr constant [6 x i8] c"g_958\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"g_1020\00", align 1
@g_1095 = internal constant [1 x i16] [i16 9900], align 2
@.str.26 = private unnamed_addr constant [10 x i8] c"g_1095[i]\00", align 1
@g_1207 = internal global i64 2529584252021284131, align 8
@.str.27 = private unnamed_addr constant [7 x i8] c"g_1207\00", align 1
@g_1304 = internal global i64 -2, align 8
@.str.28 = private unnamed_addr constant [7 x i8] c"g_1304\00", align 1
@g_1311 = internal global [8 x i8] c"\00\FF\00\00\FF\00\00\FF", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"g_1311[i]\00", align 1
@g_1316 = internal global [1 x [8 x [4 x i64]]] [[8 x [4 x i64]] [[4 x i64] [i64 9, i64 -1, i64 4244153397060446524, i64 -3954845974305128505], [4 x i64] [i64 9, i64 4244153397060446524, i64 9, i64 -2087610368793049753], [4 x i64] [i64 -1, i64 -3954845974305128505, i64 -2087610368793049753, i64 -2087610368793049753], [4 x i64] [i64 4244153397060446524, i64 4244153397060446524, i64 4446683462446285654, i64 -3954845974305128505], [4 x i64] [i64 -3954845974305128505, i64 -1, i64 4446683462446285654, i64 -1], [4 x i64] [i64 4244153397060446524, i64 9, i64 -2087610368793049753, i64 4446683462446285654], [4 x i64] [i64 -1, i64 9, i64 9, i64 -1], [4 x i64] [i64 9, i64 -1, i64 4244153397060446524, i64 -3954845974305128505]]], align 16
@.str.30 = private unnamed_addr constant [16 x i8] c"g_1316[i][j][k]\00", align 1
@.str.31 = private unnamed_addr constant [22 x i8] c"index = [%d][%d][%d]\0A\00", align 1
@g_1526 = internal global i32 9, align 4
@.str.32 = private unnamed_addr constant [7 x i8] c"g_1526\00", align 1
@g_1567 = internal global [5 x i32] [i32 -1032959092, i32 -1032959092, i32 -1032959092, i32 -1032959092, i32 -1032959092], align 16
@.str.33 = private unnamed_addr constant [10 x i8] c"g_1567[i]\00", align 1
@g_1638 = internal global i64 4957025369020885171, align 8
@.str.34 = private unnamed_addr constant [7 x i8] c"g_1638\00", align 1
@g_1706 = internal global i8 112, align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"g_1706\00", align 1
@g_1748 = internal global i32 -1252299790, align 4
@.str.36 = private unnamed_addr constant [7 x i8] c"g_1748\00", align 1
@g_1845 = internal global i32 644574741, align 4
@.str.37 = private unnamed_addr constant [7 x i8] c"g_1845\00", align 1
@g_1862 = internal global i32 47505267, align 4
@.str.38 = private unnamed_addr constant [7 x i8] c"g_1862\00", align 1
@g_1882 = internal global i32 1, align 4
@.str.39 = private unnamed_addr constant [7 x i8] c"g_1882\00", align 1
@g_1931 = internal global i16 22642, align 2
@.str.40 = private unnamed_addr constant [7 x i8] c"g_1931\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@g_1445 = internal global [1 x [3 x [2 x i32*]]] [[3 x [2 x i32*]] [[2 x i32*] [i32* @g_83, i32* @g_83], [2 x i32*] [i32* @g_83, i32* @g_83], [2 x i32*] [i32* @g_83, i32* @g_83]]], align 16
@g_82 = internal global i32* @g_83, align 8
@g_2004 = internal global i32** bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32*]* @g_129 to i8*), i64 16) to i32**), align 8
@g_1491 = internal global i32** bitcast (i8* getelementptr (i8, i8* bitcast ([4 x i32*]* @g_1492 to i8*), i64 16) to i32**), align 8
@func_11.l_1977 = private unnamed_addr constant [4 x i32] [i32 -1388634429, i32 -1388634429, i32 -1388634429, i32 -1388634429], align 16
@g_1405 = internal global [3 x [2 x i32**]] zeroinitializer, align 16
@func_11.l_1930 = private unnamed_addr constant [9 x i32*] [i32* @g_1526, i32* @g_83, i32* @g_83, i32* @g_1526, i32* @g_83, i32* @g_83, i32* @g_1526, i32* @g_83, i32* @g_83], align 16
@g_159 = internal global [5 x i16***] zeroinitializer, align 16
@g_1757 = internal constant i8* @g_363, align 8
@g_1303 = internal constant i64* @g_1304, align 8
@g_1741 = internal global i16** bitcast (i8* getelementptr (i8, i8* bitcast ([3 x [4 x i16*]]* @g_1742 to i8*), i64 72) to i16**), align 8
@g_1909 = internal global i32** bitcast (i8* getelementptr (i8, i8* bitcast ([1 x [3 x [2 x i32*]]]* @g_1445 to i8*), i64 8) to i32**), align 8
@g_1739 = internal global i16**** @g_1740, align 8
@g_1492 = internal global [4 x i32*] [i32* @g_950, i32* @g_950, i32* @g_950, i32* @g_950], align 16
@func_33.l_45 = private unnamed_addr constant [7 x i16] [i16 12614, i16 12614, i16 12614, i16 12614, i16 12614, i16 12614, i16 12614], align 2
@func_33.l_1469 = private unnamed_addr constant [5 x [5 x i64*]] [[5 x i64*] zeroinitializer, [5 x i64*] [i64* @g_701, i64* @g_701, i64* @g_701, i64* @g_701, i64* @g_701], [5 x i64*] zeroinitializer, [5 x i64*] [i64* @g_701, i64* @g_701, i64* @g_701, i64* @g_701, i64* @g_701], [5 x i64*] zeroinitializer], align 16
@g_1903 = internal global i32** bitcast (i8* getelementptr (i8, i8* bitcast ([1 x [3 x [2 x i32*]]]* @g_1445 to i8*), i64 32) to i32**), align 8
@g_129 = internal global [10 x i32*] [i32* @g_83, i32* @g_83, i32* null, i32* @g_83, i32* @g_83, i32* null, i32* @g_83, i32* @g_83, i32* null, i32* @g_83], align 16
@g_1742 = internal global [3 x [4 x i16*]] [[4 x i16*] [i16* getelementptr inbounds ([1 x i16], [1 x i16]* @g_1095, i32 0, i32 0), i16* getelementptr inbounds ([1 x i16], [1 x i16]* @g_1095, i32 0, i32 0), i16* getelementptr inbounds ([1 x i16], [1 x i16]* @g_1095, i32 0, i32 0), i16* getelementptr inbounds ([1 x i16], [1 x i16]* @g_1095, i32 0, i32 0)], [4 x i16*] [i16* getelementptr inbounds ([1 x i16], [1 x i16]* @g_1095, i32 0, i32 0), i16* getelementptr inbounds ([1 x i16], [1 x i16]* @g_1095, i32 0, i32 0), i16* getelementptr inbounds ([1 x i16], [1 x i16]* @g_1095, i32 0, i32 0), i16* getelementptr inbounds ([1 x i16], [1 x i16]* @g_1095, i32 0, i32 0)], [4 x i16*] [i16* getelementptr inbounds ([1 x i16], [1 x i16]* @g_1095, i32 0, i32 0), i16* getelementptr inbounds ([1 x i16], [1 x i16]* @g_1095, i32 0, i32 0), i16* getelementptr inbounds ([1 x i16], [1 x i16]* @g_1095, i32 0, i32 0), i16* getelementptr inbounds ([1 x i16], [1 x i16]* @g_1095, i32 0, i32 0)]], align 16
@g_1740 = internal global i16*** @g_1741, align 8
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
  %91 = load i16, i16* @g_22, align 2, !tbaa !10
  %92 = zext i16 %91 to i64
  %93 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %92, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 %93)
  %94 = load i32, i32* @g_83, align 4, !tbaa !1
  %95 = sext i32 %94 to i64
  %96 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %95, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 %96)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %97

; <label>:97                                      ; preds = %113, %89
  %98 = load i32, i32* %i, align 4, !tbaa !1
  %99 = icmp slt i32 %98, 10
  br i1 %99, label %100, label %116

; <label>:100                                     ; preds = %97
  %101 = load i32, i32* %i, align 4, !tbaa !1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [10 x i8], [10 x i8]* @g_84, i32 0, i64 %102
  %104 = load i8, i8* %103, align 1, !tbaa !9
  %105 = sext i8 %104 to i64
  %106 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %105, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 %106)
  %107 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

; <label>:109                                     ; preds = %100
  %110 = load i32, i32* %i, align 4, !tbaa !1
  %111 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i32 %110)
  br label %112

; <label>:112                                     ; preds = %109, %100
  br label %113

; <label>:113                                     ; preds = %112
  %114 = load i32, i32* %i, align 4, !tbaa !1
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %i, align 4, !tbaa !1
  br label %97

; <label>:116                                     ; preds = %97
  %117 = load i64, i64* @g_126, align 8, !tbaa !7
  %118 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %117, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i32 %118)
  %119 = load i8, i8* @g_183, align 1, !tbaa !9
  %120 = zext i8 %119 to i64
  %121 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %120, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i32 %121)
  %122 = load i16, i16* @g_185, align 2, !tbaa !10
  %123 = sext i16 %122 to i64
  %124 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %123, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i32 %124)
  %125 = load i16, i16* @g_186, align 2, !tbaa !10
  %126 = sext i16 %125 to i64
  %127 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %126, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i32 %127)
  %128 = load i32, i32* @g_218, align 4, !tbaa !1
  %129 = zext i32 %128 to i64
  %130 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %129, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 %130)
  %131 = load i16, i16* @g_295, align 2, !tbaa !10
  %132 = zext i16 %131 to i64
  %133 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %132, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i32 %133)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %134

; <label>:134                                     ; preds = %150, %116
  %135 = load i32, i32* %i, align 4, !tbaa !1
  %136 = icmp slt i32 %135, 4
  br i1 %136, label %137, label %153

; <label>:137                                     ; preds = %134
  %138 = load i32, i32* %i, align 4, !tbaa !1
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [4 x i16], [4 x i16]* @g_333, i32 0, i64 %139
  %141 = load volatile i16, i16* %140, align 2, !tbaa !10
  %142 = zext i16 %141 to i64
  %143 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %142, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i32 %143)
  %144 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %149

; <label>:146                                     ; preds = %137
  %147 = load i32, i32* %i, align 4, !tbaa !1
  %148 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i32 %147)
  br label %149

; <label>:149                                     ; preds = %146, %137
  br label %150

; <label>:150                                     ; preds = %149
  %151 = load i32, i32* %i, align 4, !tbaa !1
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %i, align 4, !tbaa !1
  br label %134

; <label>:153                                     ; preds = %134
  %154 = load i8, i8* @g_363, align 1, !tbaa !9
  %155 = sext i8 %154 to i64
  %156 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i32 %156)
  %157 = load i64, i64* @g_431, align 8, !tbaa !7
  %158 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %157, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i32 %158)
  %159 = load i16, i16* @g_468, align 2, !tbaa !10
  %160 = zext i16 %159 to i64
  %161 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 %161)
  %162 = load volatile i32, i32* @g_562, align 4, !tbaa !1
  %163 = sext i32 %162 to i64
  %164 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %163, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 %164)
  %165 = load volatile i64, i64* @g_676, align 8, !tbaa !7
  %166 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %165, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i32 %166)
  %167 = load i64, i64* @g_701, align 8, !tbaa !7
  %168 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %167, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i32 %168)
  %169 = load i32, i32* @g_703, align 4, !tbaa !1
  %170 = zext i32 %169 to i64
  %171 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %170, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i32 %171)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %172

; <label>:172                                     ; preds = %200, %153
  %173 = load i32, i32* %i, align 4, !tbaa !1
  %174 = icmp slt i32 %173, 4
  br i1 %174, label %175, label %203

; <label>:175                                     ; preds = %172
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %176

; <label>:176                                     ; preds = %196, %175
  %177 = load i32, i32* %j, align 4, !tbaa !1
  %178 = icmp slt i32 %177, 3
  br i1 %178, label %179, label %199

; <label>:179                                     ; preds = %176
  %180 = load i32, i32* %j, align 4, !tbaa !1
  %181 = sext i32 %180 to i64
  %182 = load i32, i32* %i, align 4, !tbaa !1
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [4 x [3 x i8]], [4 x [3 x i8]]* @g_890, i32 0, i64 %183
  %185 = getelementptr inbounds [3 x i8], [3 x i8]* %184, i32 0, i64 %181
  %186 = load volatile i8, i8* %185, align 1, !tbaa !9
  %187 = sext i8 %186 to i64
  %188 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %187, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i32 0, i32 0), i32 %188)
  %189 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %195

; <label>:191                                     ; preds = %179
  %192 = load i32, i32* %i, align 4, !tbaa !1
  %193 = load i32, i32* %j, align 4, !tbaa !1
  %194 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i32 0, i32 0), i32 %192, i32 %193)
  br label %195

; <label>:195                                     ; preds = %191, %179
  br label %196

; <label>:196                                     ; preds = %195
  %197 = load i32, i32* %j, align 4, !tbaa !1
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %j, align 4, !tbaa !1
  br label %176

; <label>:199                                     ; preds = %176
  br label %200

; <label>:200                                     ; preds = %199
  %201 = load i32, i32* %i, align 4, !tbaa !1
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %i, align 4, !tbaa !1
  br label %172

; <label>:203                                     ; preds = %172
  %204 = load volatile i8, i8* @g_912, align 1, !tbaa !9
  %205 = zext i8 %204 to i64
  %206 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %205, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i32 %206)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %207

; <label>:207                                     ; preds = %235, %203
  %208 = load i32, i32* %i, align 4, !tbaa !1
  %209 = icmp slt i32 %208, 4
  br i1 %209, label %210, label %238

; <label>:210                                     ; preds = %207
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %211

; <label>:211                                     ; preds = %231, %210
  %212 = load i32, i32* %j, align 4, !tbaa !1
  %213 = icmp slt i32 %212, 4
  br i1 %213, label %214, label %234

; <label>:214                                     ; preds = %211
  %215 = load i32, i32* %j, align 4, !tbaa !1
  %216 = sext i32 %215 to i64
  %217 = load i32, i32* %i, align 4, !tbaa !1
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* @g_920, i32 0, i64 %218
  %220 = getelementptr inbounds [4 x i8], [4 x i8]* %219, i32 0, i64 %216
  %221 = load i8, i8* %220, align 1, !tbaa !9
  %222 = zext i8 %221 to i64
  %223 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %222, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0), i32 %223)
  %224 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %230

; <label>:226                                     ; preds = %214
  %227 = load i32, i32* %i, align 4, !tbaa !1
  %228 = load i32, i32* %j, align 4, !tbaa !1
  %229 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i32 0, i32 0), i32 %227, i32 %228)
  br label %230

; <label>:230                                     ; preds = %226, %214
  br label %231

; <label>:231                                     ; preds = %230
  %232 = load i32, i32* %j, align 4, !tbaa !1
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %j, align 4, !tbaa !1
  br label %211

; <label>:234                                     ; preds = %211
  br label %235

; <label>:235                                     ; preds = %234
  %236 = load i32, i32* %i, align 4, !tbaa !1
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %i, align 4, !tbaa !1
  br label %207

; <label>:238                                     ; preds = %207
  %239 = load i32, i32* @g_950, align 4, !tbaa !1
  %240 = zext i32 %239 to i64
  %241 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %240, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 %241)
  %242 = load volatile i16, i16* @g_958, align 2, !tbaa !10
  %243 = zext i16 %242 to i64
  %244 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %243, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %244)
  %245 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), i32 %245)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %246

; <label>:246                                     ; preds = %262, %238
  %247 = load i32, i32* %i, align 4, !tbaa !1
  %248 = icmp slt i32 %247, 1
  br i1 %248, label %249, label %265

; <label>:249                                     ; preds = %246
  %250 = load i32, i32* %i, align 4, !tbaa !1
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds [1 x i16], [1 x i16]* @g_1095, i32 0, i64 %251
  %253 = load i16, i16* %252, align 2, !tbaa !10
  %254 = zext i16 %253 to i64
  %255 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %254, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0), i32 %255)
  %256 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %261

; <label>:258                                     ; preds = %249
  %259 = load i32, i32* %i, align 4, !tbaa !1
  %260 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i32 %259)
  br label %261

; <label>:261                                     ; preds = %258, %249
  br label %262

; <label>:262                                     ; preds = %261
  %263 = load i32, i32* %i, align 4, !tbaa !1
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %i, align 4, !tbaa !1
  br label %246

; <label>:265                                     ; preds = %246
  %266 = load i64, i64* @g_1207, align 8, !tbaa !7
  %267 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %266, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), i32 %267)
  %268 = load volatile i64, i64* @g_1304, align 8, !tbaa !7
  %269 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %268, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0), i32 %269)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %270

; <label>:270                                     ; preds = %286, %265
  %271 = load i32, i32* %i, align 4, !tbaa !1
  %272 = icmp slt i32 %271, 8
  br i1 %272, label %273, label %289

; <label>:273                                     ; preds = %270
  %274 = load i32, i32* %i, align 4, !tbaa !1
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds [8 x i8], [8 x i8]* @g_1311, i32 0, i64 %275
  %277 = load i8, i8* %276, align 1, !tbaa !9
  %278 = sext i8 %277 to i64
  %279 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %278, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i32 %279)
  %280 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %285

; <label>:282                                     ; preds = %273
  %283 = load i32, i32* %i, align 4, !tbaa !1
  %284 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i32 %283)
  br label %285

; <label>:285                                     ; preds = %282, %273
  br label %286

; <label>:286                                     ; preds = %285
  %287 = load i32, i32* %i, align 4, !tbaa !1
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %i, align 4, !tbaa !1
  br label %270

; <label>:289                                     ; preds = %270
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %290

; <label>:290                                     ; preds = %329, %289
  %291 = load i32, i32* %i, align 4, !tbaa !1
  %292 = icmp slt i32 %291, 1
  br i1 %292, label %293, label %332

; <label>:293                                     ; preds = %290
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %294

; <label>:294                                     ; preds = %325, %293
  %295 = load i32, i32* %j, align 4, !tbaa !1
  %296 = icmp slt i32 %295, 8
  br i1 %296, label %297, label %328

; <label>:297                                     ; preds = %294
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %298

; <label>:298                                     ; preds = %321, %297
  %299 = load i32, i32* %k, align 4, !tbaa !1
  %300 = icmp slt i32 %299, 4
  br i1 %300, label %301, label %324

; <label>:301                                     ; preds = %298
  %302 = load i32, i32* %k, align 4, !tbaa !1
  %303 = sext i32 %302 to i64
  %304 = load i32, i32* %j, align 4, !tbaa !1
  %305 = sext i32 %304 to i64
  %306 = load i32, i32* %i, align 4, !tbaa !1
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds [1 x [8 x [4 x i64]]], [1 x [8 x [4 x i64]]]* @g_1316, i32 0, i64 %307
  %309 = getelementptr inbounds [8 x [4 x i64]], [8 x [4 x i64]]* %308, i32 0, i64 %305
  %310 = getelementptr inbounds [4 x i64], [4 x i64]* %309, i32 0, i64 %303
  %311 = load volatile i64, i64* %310, align 8, !tbaa !7
  %312 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %311, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i32 0, i32 0), i32 %312)
  %313 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %320

; <label>:315                                     ; preds = %301
  %316 = load i32, i32* %i, align 4, !tbaa !1
  %317 = load i32, i32* %j, align 4, !tbaa !1
  %318 = load i32, i32* %k, align 4, !tbaa !1
  %319 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.31, i32 0, i32 0), i32 %316, i32 %317, i32 %318)
  br label %320

; <label>:320                                     ; preds = %315, %301
  br label %321

; <label>:321                                     ; preds = %320
  %322 = load i32, i32* %k, align 4, !tbaa !1
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* %k, align 4, !tbaa !1
  br label %298

; <label>:324                                     ; preds = %298
  br label %325

; <label>:325                                     ; preds = %324
  %326 = load i32, i32* %j, align 4, !tbaa !1
  %327 = add nsw i32 %326, 1
  store i32 %327, i32* %j, align 4, !tbaa !1
  br label %294

; <label>:328                                     ; preds = %294
  br label %329

; <label>:329                                     ; preds = %328
  %330 = load i32, i32* %i, align 4, !tbaa !1
  %331 = add nsw i32 %330, 1
  store i32 %331, i32* %i, align 4, !tbaa !1
  br label %290

; <label>:332                                     ; preds = %290
  %333 = load i32, i32* @g_1526, align 4, !tbaa !1
  %334 = sext i32 %333 to i64
  %335 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %334, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), i32 %335)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %336

; <label>:336                                     ; preds = %352, %332
  %337 = load i32, i32* %i, align 4, !tbaa !1
  %338 = icmp slt i32 %337, 5
  br i1 %338, label %339, label %355

; <label>:339                                     ; preds = %336
  %340 = load i32, i32* %i, align 4, !tbaa !1
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds [5 x i32], [5 x i32]* @g_1567, i32 0, i64 %341
  %343 = load volatile i32, i32* %342, align 4, !tbaa !1
  %344 = zext i32 %343 to i64
  %345 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %344, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), i32 %345)
  %346 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %351

; <label>:348                                     ; preds = %339
  %349 = load i32, i32* %i, align 4, !tbaa !1
  %350 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i32 %349)
  br label %351

; <label>:351                                     ; preds = %348, %339
  br label %352

; <label>:352                                     ; preds = %351
  %353 = load i32, i32* %i, align 4, !tbaa !1
  %354 = add nsw i32 %353, 1
  store i32 %354, i32* %i, align 4, !tbaa !1
  br label %336

; <label>:355                                     ; preds = %336
  %356 = load i64, i64* @g_1638, align 8, !tbaa !7
  %357 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %356, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0), i32 %357)
  %358 = load i8, i8* @g_1706, align 1, !tbaa !9
  %359 = zext i8 %358 to i64
  %360 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %359, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0), i32 %360)
  %361 = load i32, i32* @g_1748, align 4, !tbaa !1
  %362 = zext i32 %361 to i64
  %363 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %362, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), i32 %363)
  %364 = load i32, i32* @g_1845, align 4, !tbaa !1
  %365 = sext i32 %364 to i64
  %366 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %365, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), i32 %366)
  %367 = load i32, i32* @g_1862, align 4, !tbaa !1
  %368 = zext i32 %367 to i64
  %369 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %368, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), i32 %369)
  %370 = load volatile i32, i32* @g_1882, align 4, !tbaa !1
  %371 = zext i32 %370 to i64
  %372 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %371, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i32 0, i32 0), i32 %372)
  %373 = load volatile i16, i16* @g_1931, align 2, !tbaa !10
  %374 = zext i16 %373 to i64
  %375 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %374, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0), i32 %375)
  %376 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %377 = zext i32 %376 to i64
  %378 = xor i64 %377, 4294967295
  %379 = trunc i64 %378 to i32
  %380 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %379, i32 %380)
  %381 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %381) #1
  %382 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %382) #1
  %383 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %383) #1
  %384 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %384) #1
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
  %l_8 = alloca i64, align 8
  %l_15 = alloca i16, align 2
  %l_21 = alloca i16*, align 8
  %l_1978 = alloca i16*, align 8
  %l_1979 = alloca i16, align 2
  %l_1982 = alloca i32, align 4
  %l_1983 = alloca i8**, align 8
  %l_1995 = alloca i32, align 4
  %l_2001 = alloca i8*, align 8
  %l_2003 = alloca i32, align 4
  %l_2005 = alloca i16, align 2
  %l_1980 = alloca [9 x i32*], align 16
  %l_1981 = alloca i32**, align 8
  %i = alloca i32, align 4
  %l_1984 = alloca i8***, align 8
  %l_1996 = alloca i64*, align 8
  %l_1999 = alloca i8*, align 8
  %l_2000 = alloca [1 x [1 x i32]], align 4
  %l_2002 = alloca [6 x [4 x [7 x i32*]]], align 16
  %i1 = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %1 = bitcast i64* %l_8 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store i64 -8263422319695179565, i64* %l_8, align 8, !tbaa !7
  %2 = bitcast i16* %l_15 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %2) #1
  store i16 5, i16* %l_15, align 2, !tbaa !10
  %3 = bitcast i16** %l_21 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store i16* @g_22, i16** %l_21, align 8, !tbaa !5
  %4 = bitcast i16** %l_1978 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store i16* @g_185, i16** %l_1978, align 8, !tbaa !5
  %5 = bitcast i16* %l_1979 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %5) #1
  store i16 0, i16* %l_1979, align 2, !tbaa !10
  %6 = bitcast i32* %l_1982 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 -1, i32* %l_1982, align 4, !tbaa !1
  %7 = bitcast i8*** %l_1983 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store i8** null, i8*** %l_1983, align 8, !tbaa !5
  %8 = bitcast i32* %l_1995 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  store i32 777253790, i32* %l_1995, align 4, !tbaa !1
  %9 = bitcast i8** %l_2001 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @g_1311, i32 0, i64 7), i8** %l_2001, align 8, !tbaa !5
  %10 = bitcast i32* %l_2003 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  store i32 1799871520, i32* %l_2003, align 4, !tbaa !1
  %11 = bitcast i16* %l_2005 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %11) #1
  store i16 -413, i16* %l_2005, align 2, !tbaa !10
  %12 = load i16, i16* %l_15, align 2, !tbaa !10
  %13 = sext i16 %12 to i32
  %14 = load i16, i16* %l_15, align 2, !tbaa !10
  %15 = call zeroext i16 @func_11(i32 %13, i8 zeroext -1, i16 signext %14)
  %16 = zext i16 %15 to i32
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

; <label>:18                                      ; preds = %0
  %19 = load i16, i16* %l_15, align 2, !tbaa !10
  %20 = sext i16 %19 to i32
  %21 = icmp ne i32 %20, 0
  br label %22

; <label>:22                                      ; preds = %18, %0
  %23 = phi i1 [ false, %0 ], [ %21, %18 ]
  %24 = zext i1 %23 to i32
  %25 = trunc i32 %24 to i8
  %26 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @g_1311, i32 0, i64 2), align 1, !tbaa !9
  %27 = call zeroext i8 @safe_div_func_uint8_t_u_u(i8 zeroext %25, i8 zeroext %26)
  %28 = zext i8 %27 to i32
  %29 = load i16, i16* %l_15, align 2, !tbaa !10
  %30 = sext i16 %29 to i32
  %31 = icmp ne i32 %28, %30
  %32 = zext i1 %31 to i32
  %33 = trunc i32 %32 to i16
  %34 = load i16*, i16** %l_1978, align 8, !tbaa !5
  store i16 %33, i16* %34, align 2, !tbaa !10
  %35 = sext i16 %33 to i32
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

; <label>:37                                      ; preds = %22
  br label %38

; <label>:38                                      ; preds = %37, %22
  %39 = phi i1 [ false, %22 ], [ true, %37 ]
  %40 = zext i1 %39 to i32
  %41 = load i16, i16* %l_1979, align 2, !tbaa !10
  %42 = sext i16 %41 to i32
  %43 = or i32 %40, %42
  %44 = sext i32 %43 to i64
  %45 = load i32, i32* @g_950, align 4, !tbaa !1
  %46 = zext i32 %45 to i64
  %47 = call i64 @safe_mod_func_uint64_t_u_u(i64 %44, i64 %46)
  %48 = trunc i64 %47 to i16
  %49 = call signext i16 @safe_mod_func_int16_t_s_s(i16 signext %48, i16 signext 5)
  %50 = trunc i16 %49 to i8
  %51 = call signext i8 @safe_lshift_func_int8_t_s_u(i8 signext %50, i32 -2054631213)
  %52 = sext i8 %51 to i64
  %53 = icmp ne i64 %52, 9
  br i1 %53, label %54, label %77

; <label>:54                                      ; preds = %38
  %55 = bitcast [9 x i32*]* %l_1980 to i8*
  call void @llvm.lifetime.start(i64 72, i8* %55) #1
  %56 = bitcast i32*** %l_1981 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %56) #1
  store i32** getelementptr inbounds ([1 x [3 x [2 x i32*]]], [1 x [3 x [2 x i32*]]]* @g_1445, i32 0, i64 0, i64 0, i64 1), i32*** %l_1981, align 8, !tbaa !5
  %57 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %57) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %58

; <label>:58                                      ; preds = %65, %54
  %59 = load i32, i32* %i, align 4, !tbaa !1
  %60 = icmp slt i32 %59, 9
  br i1 %60, label %61, label %68

; <label>:61                                      ; preds = %58
  %62 = load i32, i32* %i, align 4, !tbaa !1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [9 x i32*], [9 x i32*]* %l_1980, i32 0, i64 %63
  store i32* @g_83, i32** %64, align 8, !tbaa !5
  br label %65

; <label>:65                                      ; preds = %61
  %66 = load i32, i32* %i, align 4, !tbaa !1
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %i, align 4, !tbaa !1
  br label %58

; <label>:68                                      ; preds = %58
  %69 = getelementptr inbounds [9 x i32*], [9 x i32*]* %l_1980, i32 0, i64 7
  %70 = load i32*, i32** %69, align 8, !tbaa !5
  %71 = load i32**, i32*** %l_1981, align 8, !tbaa !5
  store i32* %70, i32** %71, align 8, !tbaa !5
  %72 = load i16, i16* %l_15, align 2, !tbaa !10
  %73 = sext i16 %72 to i32
  store i32 %73, i32* %l_1982, align 4, !tbaa !1
  %74 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #1
  %75 = bitcast i32*** %l_1981 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #1
  %76 = bitcast [9 x i32*]* %l_1980 to i8*
  call void @llvm.lifetime.end(i64 72, i8* %76) #1
  br label %561

; <label>:77                                      ; preds = %38
  %78 = bitcast i8**** %l_1984 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %78) #1
  store i8*** %l_1983, i8**** %l_1984, align 8, !tbaa !5
  %79 = bitcast i64** %l_1996 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %79) #1
  store i64* @g_1638, i64** %l_1996, align 8, !tbaa !5
  %80 = bitcast i8** %l_1999 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %80) #1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @g_1311, i32 0, i64 7), i8** %l_1999, align 8, !tbaa !5
  %81 = bitcast [1 x [1 x i32]]* %l_2000 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %81) #1
  %82 = bitcast [6 x [4 x [7 x i32*]]]* %l_2002 to i8*
  call void @llvm.lifetime.start(i64 1344, i8* %82) #1
  %83 = getelementptr inbounds [6 x [4 x [7 x i32*]]], [6 x [4 x [7 x i32*]]]* %l_2002, i64 0, i64 0
  %84 = getelementptr inbounds [4 x [7 x i32*]], [4 x [7 x i32*]]* %83, i64 0, i64 0
  %85 = getelementptr inbounds [7 x i32*], [7 x i32*]* %84, i64 0, i64 0
  %86 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %87 = getelementptr inbounds [1 x i32], [1 x i32]* %86, i32 0, i64 0
  store i32* %87, i32** %85, !tbaa !5
  %88 = getelementptr inbounds i32*, i32** %85, i64 1
  %89 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %90 = getelementptr inbounds [1 x i32], [1 x i32]* %89, i32 0, i64 0
  store i32* %90, i32** %88, !tbaa !5
  %91 = getelementptr inbounds i32*, i32** %88, i64 1
  %92 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %93 = getelementptr inbounds [1 x i32], [1 x i32]* %92, i32 0, i64 0
  store i32* %93, i32** %91, !tbaa !5
  %94 = getelementptr inbounds i32*, i32** %91, i64 1
  %95 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %96 = getelementptr inbounds [1 x i32], [1 x i32]* %95, i32 0, i64 0
  store i32* %96, i32** %94, !tbaa !5
  %97 = getelementptr inbounds i32*, i32** %94, i64 1
  store i32* %l_1982, i32** %97, !tbaa !5
  %98 = getelementptr inbounds i32*, i32** %97, i64 1
  store i32* %l_1982, i32** %98, !tbaa !5
  %99 = getelementptr inbounds i32*, i32** %98, i64 1
  store i32* %l_1982, i32** %99, !tbaa !5
  %100 = getelementptr inbounds [7 x i32*], [7 x i32*]* %84, i64 1
  %101 = getelementptr inbounds [7 x i32*], [7 x i32*]* %100, i64 0, i64 0
  %102 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %103 = getelementptr inbounds [1 x i32], [1 x i32]* %102, i32 0, i64 0
  store i32* %103, i32** %101, !tbaa !5
  %104 = getelementptr inbounds i32*, i32** %101, i64 1
  %105 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %106 = getelementptr inbounds [1 x i32], [1 x i32]* %105, i32 0, i64 0
  store i32* %106, i32** %104, !tbaa !5
  %107 = getelementptr inbounds i32*, i32** %104, i64 1
  %108 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %109 = getelementptr inbounds [1 x i32], [1 x i32]* %108, i32 0, i64 0
  store i32* %109, i32** %107, !tbaa !5
  %110 = getelementptr inbounds i32*, i32** %107, i64 1
  %111 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %112 = getelementptr inbounds [1 x i32], [1 x i32]* %111, i32 0, i64 0
  store i32* %112, i32** %110, !tbaa !5
  %113 = getelementptr inbounds i32*, i32** %110, i64 1
  store i32* %l_1982, i32** %113, !tbaa !5
  %114 = getelementptr inbounds i32*, i32** %113, i64 1
  store i32* %l_1982, i32** %114, !tbaa !5
  %115 = getelementptr inbounds i32*, i32** %114, i64 1
  store i32* %l_1982, i32** %115, !tbaa !5
  %116 = getelementptr inbounds [7 x i32*], [7 x i32*]* %100, i64 1
  %117 = getelementptr inbounds [7 x i32*], [7 x i32*]* %116, i64 0, i64 0
  %118 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %119 = getelementptr inbounds [1 x i32], [1 x i32]* %118, i32 0, i64 0
  store i32* %119, i32** %117, !tbaa !5
  %120 = getelementptr inbounds i32*, i32** %117, i64 1
  %121 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %122 = getelementptr inbounds [1 x i32], [1 x i32]* %121, i32 0, i64 0
  store i32* %122, i32** %120, !tbaa !5
  %123 = getelementptr inbounds i32*, i32** %120, i64 1
  %124 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %125 = getelementptr inbounds [1 x i32], [1 x i32]* %124, i32 0, i64 0
  store i32* %125, i32** %123, !tbaa !5
  %126 = getelementptr inbounds i32*, i32** %123, i64 1
  %127 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %128 = getelementptr inbounds [1 x i32], [1 x i32]* %127, i32 0, i64 0
  store i32* %128, i32** %126, !tbaa !5
  %129 = getelementptr inbounds i32*, i32** %126, i64 1
  store i32* %l_1982, i32** %129, !tbaa !5
  %130 = getelementptr inbounds i32*, i32** %129, i64 1
  store i32* %l_1982, i32** %130, !tbaa !5
  %131 = getelementptr inbounds i32*, i32** %130, i64 1
  store i32* %l_1982, i32** %131, !tbaa !5
  %132 = getelementptr inbounds [7 x i32*], [7 x i32*]* %116, i64 1
  %133 = getelementptr inbounds [7 x i32*], [7 x i32*]* %132, i64 0, i64 0
  %134 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %135 = getelementptr inbounds [1 x i32], [1 x i32]* %134, i32 0, i64 0
  store i32* %135, i32** %133, !tbaa !5
  %136 = getelementptr inbounds i32*, i32** %133, i64 1
  %137 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %138 = getelementptr inbounds [1 x i32], [1 x i32]* %137, i32 0, i64 0
  store i32* %138, i32** %136, !tbaa !5
  %139 = getelementptr inbounds i32*, i32** %136, i64 1
  %140 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %141 = getelementptr inbounds [1 x i32], [1 x i32]* %140, i32 0, i64 0
  store i32* %141, i32** %139, !tbaa !5
  %142 = getelementptr inbounds i32*, i32** %139, i64 1
  %143 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %144 = getelementptr inbounds [1 x i32], [1 x i32]* %143, i32 0, i64 0
  store i32* %144, i32** %142, !tbaa !5
  %145 = getelementptr inbounds i32*, i32** %142, i64 1
  store i32* %l_1982, i32** %145, !tbaa !5
  %146 = getelementptr inbounds i32*, i32** %145, i64 1
  store i32* %l_1982, i32** %146, !tbaa !5
  %147 = getelementptr inbounds i32*, i32** %146, i64 1
  store i32* %l_1982, i32** %147, !tbaa !5
  %148 = getelementptr inbounds [4 x [7 x i32*]], [4 x [7 x i32*]]* %83, i64 1
  %149 = getelementptr inbounds [4 x [7 x i32*]], [4 x [7 x i32*]]* %148, i64 0, i64 0
  %150 = getelementptr inbounds [7 x i32*], [7 x i32*]* %149, i64 0, i64 0
  %151 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %152 = getelementptr inbounds [1 x i32], [1 x i32]* %151, i32 0, i64 0
  store i32* %152, i32** %150, !tbaa !5
  %153 = getelementptr inbounds i32*, i32** %150, i64 1
  %154 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %155 = getelementptr inbounds [1 x i32], [1 x i32]* %154, i32 0, i64 0
  store i32* %155, i32** %153, !tbaa !5
  %156 = getelementptr inbounds i32*, i32** %153, i64 1
  %157 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %158 = getelementptr inbounds [1 x i32], [1 x i32]* %157, i32 0, i64 0
  store i32* %158, i32** %156, !tbaa !5
  %159 = getelementptr inbounds i32*, i32** %156, i64 1
  %160 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %161 = getelementptr inbounds [1 x i32], [1 x i32]* %160, i32 0, i64 0
  store i32* %161, i32** %159, !tbaa !5
  %162 = getelementptr inbounds i32*, i32** %159, i64 1
  store i32* %l_1982, i32** %162, !tbaa !5
  %163 = getelementptr inbounds i32*, i32** %162, i64 1
  store i32* %l_1982, i32** %163, !tbaa !5
  %164 = getelementptr inbounds i32*, i32** %163, i64 1
  store i32* %l_1982, i32** %164, !tbaa !5
  %165 = getelementptr inbounds [7 x i32*], [7 x i32*]* %149, i64 1
  %166 = getelementptr inbounds [7 x i32*], [7 x i32*]* %165, i64 0, i64 0
  %167 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %168 = getelementptr inbounds [1 x i32], [1 x i32]* %167, i32 0, i64 0
  store i32* %168, i32** %166, !tbaa !5
  %169 = getelementptr inbounds i32*, i32** %166, i64 1
  %170 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %171 = getelementptr inbounds [1 x i32], [1 x i32]* %170, i32 0, i64 0
  store i32* %171, i32** %169, !tbaa !5
  %172 = getelementptr inbounds i32*, i32** %169, i64 1
  %173 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %174 = getelementptr inbounds [1 x i32], [1 x i32]* %173, i32 0, i64 0
  store i32* %174, i32** %172, !tbaa !5
  %175 = getelementptr inbounds i32*, i32** %172, i64 1
  %176 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %177 = getelementptr inbounds [1 x i32], [1 x i32]* %176, i32 0, i64 0
  store i32* %177, i32** %175, !tbaa !5
  %178 = getelementptr inbounds i32*, i32** %175, i64 1
  store i32* %l_1982, i32** %178, !tbaa !5
  %179 = getelementptr inbounds i32*, i32** %178, i64 1
  store i32* %l_1982, i32** %179, !tbaa !5
  %180 = getelementptr inbounds i32*, i32** %179, i64 1
  store i32* %l_1982, i32** %180, !tbaa !5
  %181 = getelementptr inbounds [7 x i32*], [7 x i32*]* %165, i64 1
  %182 = getelementptr inbounds [7 x i32*], [7 x i32*]* %181, i64 0, i64 0
  %183 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %184 = getelementptr inbounds [1 x i32], [1 x i32]* %183, i32 0, i64 0
  store i32* %184, i32** %182, !tbaa !5
  %185 = getelementptr inbounds i32*, i32** %182, i64 1
  %186 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %187 = getelementptr inbounds [1 x i32], [1 x i32]* %186, i32 0, i64 0
  store i32* %187, i32** %185, !tbaa !5
  %188 = getelementptr inbounds i32*, i32** %185, i64 1
  %189 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %190 = getelementptr inbounds [1 x i32], [1 x i32]* %189, i32 0, i64 0
  store i32* %190, i32** %188, !tbaa !5
  %191 = getelementptr inbounds i32*, i32** %188, i64 1
  %192 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %193 = getelementptr inbounds [1 x i32], [1 x i32]* %192, i32 0, i64 0
  store i32* %193, i32** %191, !tbaa !5
  %194 = getelementptr inbounds i32*, i32** %191, i64 1
  store i32* %l_1982, i32** %194, !tbaa !5
  %195 = getelementptr inbounds i32*, i32** %194, i64 1
  store i32* %l_1982, i32** %195, !tbaa !5
  %196 = getelementptr inbounds i32*, i32** %195, i64 1
  store i32* %l_1982, i32** %196, !tbaa !5
  %197 = getelementptr inbounds [7 x i32*], [7 x i32*]* %181, i64 1
  %198 = getelementptr inbounds [7 x i32*], [7 x i32*]* %197, i64 0, i64 0
  %199 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %200 = getelementptr inbounds [1 x i32], [1 x i32]* %199, i32 0, i64 0
  store i32* %200, i32** %198, !tbaa !5
  %201 = getelementptr inbounds i32*, i32** %198, i64 1
  %202 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %203 = getelementptr inbounds [1 x i32], [1 x i32]* %202, i32 0, i64 0
  store i32* %203, i32** %201, !tbaa !5
  %204 = getelementptr inbounds i32*, i32** %201, i64 1
  %205 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %206 = getelementptr inbounds [1 x i32], [1 x i32]* %205, i32 0, i64 0
  store i32* %206, i32** %204, !tbaa !5
  %207 = getelementptr inbounds i32*, i32** %204, i64 1
  %208 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %209 = getelementptr inbounds [1 x i32], [1 x i32]* %208, i32 0, i64 0
  store i32* %209, i32** %207, !tbaa !5
  %210 = getelementptr inbounds i32*, i32** %207, i64 1
  store i32* %l_1982, i32** %210, !tbaa !5
  %211 = getelementptr inbounds i32*, i32** %210, i64 1
  store i32* %l_1982, i32** %211, !tbaa !5
  %212 = getelementptr inbounds i32*, i32** %211, i64 1
  store i32* %l_1982, i32** %212, !tbaa !5
  %213 = getelementptr inbounds [4 x [7 x i32*]], [4 x [7 x i32*]]* %148, i64 1
  %214 = getelementptr inbounds [4 x [7 x i32*]], [4 x [7 x i32*]]* %213, i64 0, i64 0
  %215 = getelementptr inbounds [7 x i32*], [7 x i32*]* %214, i64 0, i64 0
  %216 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %217 = getelementptr inbounds [1 x i32], [1 x i32]* %216, i32 0, i64 0
  store i32* %217, i32** %215, !tbaa !5
  %218 = getelementptr inbounds i32*, i32** %215, i64 1
  %219 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %220 = getelementptr inbounds [1 x i32], [1 x i32]* %219, i32 0, i64 0
  store i32* %220, i32** %218, !tbaa !5
  %221 = getelementptr inbounds i32*, i32** %218, i64 1
  %222 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %223 = getelementptr inbounds [1 x i32], [1 x i32]* %222, i32 0, i64 0
  store i32* %223, i32** %221, !tbaa !5
  %224 = getelementptr inbounds i32*, i32** %221, i64 1
  %225 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %226 = getelementptr inbounds [1 x i32], [1 x i32]* %225, i32 0, i64 0
  store i32* %226, i32** %224, !tbaa !5
  %227 = getelementptr inbounds i32*, i32** %224, i64 1
  store i32* %l_1982, i32** %227, !tbaa !5
  %228 = getelementptr inbounds i32*, i32** %227, i64 1
  store i32* %l_1982, i32** %228, !tbaa !5
  %229 = getelementptr inbounds i32*, i32** %228, i64 1
  store i32* %l_1982, i32** %229, !tbaa !5
  %230 = getelementptr inbounds [7 x i32*], [7 x i32*]* %214, i64 1
  %231 = getelementptr inbounds [7 x i32*], [7 x i32*]* %230, i64 0, i64 0
  %232 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %233 = getelementptr inbounds [1 x i32], [1 x i32]* %232, i32 0, i64 0
  store i32* %233, i32** %231, !tbaa !5
  %234 = getelementptr inbounds i32*, i32** %231, i64 1
  %235 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %236 = getelementptr inbounds [1 x i32], [1 x i32]* %235, i32 0, i64 0
  store i32* %236, i32** %234, !tbaa !5
  %237 = getelementptr inbounds i32*, i32** %234, i64 1
  %238 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %239 = getelementptr inbounds [1 x i32], [1 x i32]* %238, i32 0, i64 0
  store i32* %239, i32** %237, !tbaa !5
  %240 = getelementptr inbounds i32*, i32** %237, i64 1
  %241 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %242 = getelementptr inbounds [1 x i32], [1 x i32]* %241, i32 0, i64 0
  store i32* %242, i32** %240, !tbaa !5
  %243 = getelementptr inbounds i32*, i32** %240, i64 1
  store i32* %l_1982, i32** %243, !tbaa !5
  %244 = getelementptr inbounds i32*, i32** %243, i64 1
  store i32* %l_1982, i32** %244, !tbaa !5
  %245 = getelementptr inbounds i32*, i32** %244, i64 1
  store i32* %l_1982, i32** %245, !tbaa !5
  %246 = getelementptr inbounds [7 x i32*], [7 x i32*]* %230, i64 1
  %247 = getelementptr inbounds [7 x i32*], [7 x i32*]* %246, i64 0, i64 0
  %248 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %249 = getelementptr inbounds [1 x i32], [1 x i32]* %248, i32 0, i64 0
  store i32* %249, i32** %247, !tbaa !5
  %250 = getelementptr inbounds i32*, i32** %247, i64 1
  %251 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %252 = getelementptr inbounds [1 x i32], [1 x i32]* %251, i32 0, i64 0
  store i32* %252, i32** %250, !tbaa !5
  %253 = getelementptr inbounds i32*, i32** %250, i64 1
  %254 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %255 = getelementptr inbounds [1 x i32], [1 x i32]* %254, i32 0, i64 0
  store i32* %255, i32** %253, !tbaa !5
  %256 = getelementptr inbounds i32*, i32** %253, i64 1
  %257 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %258 = getelementptr inbounds [1 x i32], [1 x i32]* %257, i32 0, i64 0
  store i32* %258, i32** %256, !tbaa !5
  %259 = getelementptr inbounds i32*, i32** %256, i64 1
  store i32* %l_1982, i32** %259, !tbaa !5
  %260 = getelementptr inbounds i32*, i32** %259, i64 1
  store i32* %l_1982, i32** %260, !tbaa !5
  %261 = getelementptr inbounds i32*, i32** %260, i64 1
  store i32* %l_1982, i32** %261, !tbaa !5
  %262 = getelementptr inbounds [7 x i32*], [7 x i32*]* %246, i64 1
  %263 = getelementptr inbounds [7 x i32*], [7 x i32*]* %262, i64 0, i64 0
  %264 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %265 = getelementptr inbounds [1 x i32], [1 x i32]* %264, i32 0, i64 0
  store i32* %265, i32** %263, !tbaa !5
  %266 = getelementptr inbounds i32*, i32** %263, i64 1
  %267 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %268 = getelementptr inbounds [1 x i32], [1 x i32]* %267, i32 0, i64 0
  store i32* %268, i32** %266, !tbaa !5
  %269 = getelementptr inbounds i32*, i32** %266, i64 1
  %270 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %271 = getelementptr inbounds [1 x i32], [1 x i32]* %270, i32 0, i64 0
  store i32* %271, i32** %269, !tbaa !5
  %272 = getelementptr inbounds i32*, i32** %269, i64 1
  %273 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %274 = getelementptr inbounds [1 x i32], [1 x i32]* %273, i32 0, i64 0
  store i32* %274, i32** %272, !tbaa !5
  %275 = getelementptr inbounds i32*, i32** %272, i64 1
  store i32* %l_1982, i32** %275, !tbaa !5
  %276 = getelementptr inbounds i32*, i32** %275, i64 1
  store i32* %l_1982, i32** %276, !tbaa !5
  %277 = getelementptr inbounds i32*, i32** %276, i64 1
  store i32* %l_1982, i32** %277, !tbaa !5
  %278 = getelementptr inbounds [4 x [7 x i32*]], [4 x [7 x i32*]]* %213, i64 1
  %279 = getelementptr inbounds [4 x [7 x i32*]], [4 x [7 x i32*]]* %278, i64 0, i64 0
  %280 = getelementptr inbounds [7 x i32*], [7 x i32*]* %279, i64 0, i64 0
  %281 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %282 = getelementptr inbounds [1 x i32], [1 x i32]* %281, i32 0, i64 0
  store i32* %282, i32** %280, !tbaa !5
  %283 = getelementptr inbounds i32*, i32** %280, i64 1
  %284 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %285 = getelementptr inbounds [1 x i32], [1 x i32]* %284, i32 0, i64 0
  store i32* %285, i32** %283, !tbaa !5
  %286 = getelementptr inbounds i32*, i32** %283, i64 1
  %287 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %288 = getelementptr inbounds [1 x i32], [1 x i32]* %287, i32 0, i64 0
  store i32* %288, i32** %286, !tbaa !5
  %289 = getelementptr inbounds i32*, i32** %286, i64 1
  %290 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %291 = getelementptr inbounds [1 x i32], [1 x i32]* %290, i32 0, i64 0
  store i32* %291, i32** %289, !tbaa !5
  %292 = getelementptr inbounds i32*, i32** %289, i64 1
  store i32* %l_1982, i32** %292, !tbaa !5
  %293 = getelementptr inbounds i32*, i32** %292, i64 1
  store i32* %l_1982, i32** %293, !tbaa !5
  %294 = getelementptr inbounds i32*, i32** %293, i64 1
  store i32* %l_1982, i32** %294, !tbaa !5
  %295 = getelementptr inbounds [7 x i32*], [7 x i32*]* %279, i64 1
  %296 = getelementptr inbounds [7 x i32*], [7 x i32*]* %295, i64 0, i64 0
  %297 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %298 = getelementptr inbounds [1 x i32], [1 x i32]* %297, i32 0, i64 0
  store i32* %298, i32** %296, !tbaa !5
  %299 = getelementptr inbounds i32*, i32** %296, i64 1
  %300 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %301 = getelementptr inbounds [1 x i32], [1 x i32]* %300, i32 0, i64 0
  store i32* %301, i32** %299, !tbaa !5
  %302 = getelementptr inbounds i32*, i32** %299, i64 1
  %303 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %304 = getelementptr inbounds [1 x i32], [1 x i32]* %303, i32 0, i64 0
  store i32* %304, i32** %302, !tbaa !5
  %305 = getelementptr inbounds i32*, i32** %302, i64 1
  %306 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %307 = getelementptr inbounds [1 x i32], [1 x i32]* %306, i32 0, i64 0
  store i32* %307, i32** %305, !tbaa !5
  %308 = getelementptr inbounds i32*, i32** %305, i64 1
  store i32* %l_1982, i32** %308, !tbaa !5
  %309 = getelementptr inbounds i32*, i32** %308, i64 1
  store i32* %l_1982, i32** %309, !tbaa !5
  %310 = getelementptr inbounds i32*, i32** %309, i64 1
  store i32* %l_1982, i32** %310, !tbaa !5
  %311 = getelementptr inbounds [7 x i32*], [7 x i32*]* %295, i64 1
  %312 = getelementptr inbounds [7 x i32*], [7 x i32*]* %311, i64 0, i64 0
  %313 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %314 = getelementptr inbounds [1 x i32], [1 x i32]* %313, i32 0, i64 0
  store i32* %314, i32** %312, !tbaa !5
  %315 = getelementptr inbounds i32*, i32** %312, i64 1
  %316 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %317 = getelementptr inbounds [1 x i32], [1 x i32]* %316, i32 0, i64 0
  store i32* %317, i32** %315, !tbaa !5
  %318 = getelementptr inbounds i32*, i32** %315, i64 1
  %319 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %320 = getelementptr inbounds [1 x i32], [1 x i32]* %319, i32 0, i64 0
  store i32* %320, i32** %318, !tbaa !5
  %321 = getelementptr inbounds i32*, i32** %318, i64 1
  %322 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %323 = getelementptr inbounds [1 x i32], [1 x i32]* %322, i32 0, i64 0
  store i32* %323, i32** %321, !tbaa !5
  %324 = getelementptr inbounds i32*, i32** %321, i64 1
  store i32* %l_1982, i32** %324, !tbaa !5
  %325 = getelementptr inbounds i32*, i32** %324, i64 1
  store i32* %l_1982, i32** %325, !tbaa !5
  %326 = getelementptr inbounds i32*, i32** %325, i64 1
  store i32* %l_1982, i32** %326, !tbaa !5
  %327 = getelementptr inbounds [7 x i32*], [7 x i32*]* %311, i64 1
  %328 = getelementptr inbounds [7 x i32*], [7 x i32*]* %327, i64 0, i64 0
  %329 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %330 = getelementptr inbounds [1 x i32], [1 x i32]* %329, i32 0, i64 0
  store i32* %330, i32** %328, !tbaa !5
  %331 = getelementptr inbounds i32*, i32** %328, i64 1
  %332 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %333 = getelementptr inbounds [1 x i32], [1 x i32]* %332, i32 0, i64 0
  store i32* %333, i32** %331, !tbaa !5
  %334 = getelementptr inbounds i32*, i32** %331, i64 1
  %335 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %336 = getelementptr inbounds [1 x i32], [1 x i32]* %335, i32 0, i64 0
  store i32* %336, i32** %334, !tbaa !5
  %337 = getelementptr inbounds i32*, i32** %334, i64 1
  %338 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %339 = getelementptr inbounds [1 x i32], [1 x i32]* %338, i32 0, i64 0
  store i32* %339, i32** %337, !tbaa !5
  %340 = getelementptr inbounds i32*, i32** %337, i64 1
  store i32* %l_1982, i32** %340, !tbaa !5
  %341 = getelementptr inbounds i32*, i32** %340, i64 1
  store i32* %l_1982, i32** %341, !tbaa !5
  %342 = getelementptr inbounds i32*, i32** %341, i64 1
  store i32* %l_1982, i32** %342, !tbaa !5
  %343 = getelementptr inbounds [4 x [7 x i32*]], [4 x [7 x i32*]]* %278, i64 1
  %344 = getelementptr inbounds [4 x [7 x i32*]], [4 x [7 x i32*]]* %343, i64 0, i64 0
  %345 = getelementptr inbounds [7 x i32*], [7 x i32*]* %344, i64 0, i64 0
  %346 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %347 = getelementptr inbounds [1 x i32], [1 x i32]* %346, i32 0, i64 0
  store i32* %347, i32** %345, !tbaa !5
  %348 = getelementptr inbounds i32*, i32** %345, i64 1
  %349 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %350 = getelementptr inbounds [1 x i32], [1 x i32]* %349, i32 0, i64 0
  store i32* %350, i32** %348, !tbaa !5
  %351 = getelementptr inbounds i32*, i32** %348, i64 1
  %352 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %353 = getelementptr inbounds [1 x i32], [1 x i32]* %352, i32 0, i64 0
  store i32* %353, i32** %351, !tbaa !5
  %354 = getelementptr inbounds i32*, i32** %351, i64 1
  %355 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %356 = getelementptr inbounds [1 x i32], [1 x i32]* %355, i32 0, i64 0
  store i32* %356, i32** %354, !tbaa !5
  %357 = getelementptr inbounds i32*, i32** %354, i64 1
  store i32* %l_1982, i32** %357, !tbaa !5
  %358 = getelementptr inbounds i32*, i32** %357, i64 1
  store i32* %l_1982, i32** %358, !tbaa !5
  %359 = getelementptr inbounds i32*, i32** %358, i64 1
  store i32* %l_1982, i32** %359, !tbaa !5
  %360 = getelementptr inbounds [7 x i32*], [7 x i32*]* %344, i64 1
  %361 = getelementptr inbounds [7 x i32*], [7 x i32*]* %360, i64 0, i64 0
  %362 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %363 = getelementptr inbounds [1 x i32], [1 x i32]* %362, i32 0, i64 0
  store i32* %363, i32** %361, !tbaa !5
  %364 = getelementptr inbounds i32*, i32** %361, i64 1
  %365 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %366 = getelementptr inbounds [1 x i32], [1 x i32]* %365, i32 0, i64 0
  store i32* %366, i32** %364, !tbaa !5
  %367 = getelementptr inbounds i32*, i32** %364, i64 1
  %368 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %369 = getelementptr inbounds [1 x i32], [1 x i32]* %368, i32 0, i64 0
  store i32* %369, i32** %367, !tbaa !5
  %370 = getelementptr inbounds i32*, i32** %367, i64 1
  %371 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %372 = getelementptr inbounds [1 x i32], [1 x i32]* %371, i32 0, i64 0
  store i32* %372, i32** %370, !tbaa !5
  %373 = getelementptr inbounds i32*, i32** %370, i64 1
  store i32* %l_1982, i32** %373, !tbaa !5
  %374 = getelementptr inbounds i32*, i32** %373, i64 1
  store i32* %l_1982, i32** %374, !tbaa !5
  %375 = getelementptr inbounds i32*, i32** %374, i64 1
  store i32* %l_1982, i32** %375, !tbaa !5
  %376 = getelementptr inbounds [7 x i32*], [7 x i32*]* %360, i64 1
  %377 = getelementptr inbounds [7 x i32*], [7 x i32*]* %376, i64 0, i64 0
  %378 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %379 = getelementptr inbounds [1 x i32], [1 x i32]* %378, i32 0, i64 0
  store i32* %379, i32** %377, !tbaa !5
  %380 = getelementptr inbounds i32*, i32** %377, i64 1
  %381 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %382 = getelementptr inbounds [1 x i32], [1 x i32]* %381, i32 0, i64 0
  store i32* %382, i32** %380, !tbaa !5
  %383 = getelementptr inbounds i32*, i32** %380, i64 1
  %384 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %385 = getelementptr inbounds [1 x i32], [1 x i32]* %384, i32 0, i64 0
  store i32* %385, i32** %383, !tbaa !5
  %386 = getelementptr inbounds i32*, i32** %383, i64 1
  %387 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %388 = getelementptr inbounds [1 x i32], [1 x i32]* %387, i32 0, i64 0
  store i32* %388, i32** %386, !tbaa !5
  %389 = getelementptr inbounds i32*, i32** %386, i64 1
  store i32* %l_1982, i32** %389, !tbaa !5
  %390 = getelementptr inbounds i32*, i32** %389, i64 1
  store i32* %l_1982, i32** %390, !tbaa !5
  %391 = getelementptr inbounds i32*, i32** %390, i64 1
  store i32* %l_1982, i32** %391, !tbaa !5
  %392 = getelementptr inbounds [7 x i32*], [7 x i32*]* %376, i64 1
  %393 = getelementptr inbounds [7 x i32*], [7 x i32*]* %392, i64 0, i64 0
  %394 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %395 = getelementptr inbounds [1 x i32], [1 x i32]* %394, i32 0, i64 0
  store i32* %395, i32** %393, !tbaa !5
  %396 = getelementptr inbounds i32*, i32** %393, i64 1
  %397 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %398 = getelementptr inbounds [1 x i32], [1 x i32]* %397, i32 0, i64 0
  store i32* %398, i32** %396, !tbaa !5
  %399 = getelementptr inbounds i32*, i32** %396, i64 1
  %400 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %401 = getelementptr inbounds [1 x i32], [1 x i32]* %400, i32 0, i64 0
  store i32* %401, i32** %399, !tbaa !5
  %402 = getelementptr inbounds i32*, i32** %399, i64 1
  %403 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %404 = getelementptr inbounds [1 x i32], [1 x i32]* %403, i32 0, i64 0
  store i32* %404, i32** %402, !tbaa !5
  %405 = getelementptr inbounds i32*, i32** %402, i64 1
  store i32* %l_1982, i32** %405, !tbaa !5
  %406 = getelementptr inbounds i32*, i32** %405, i64 1
  store i32* %l_1982, i32** %406, !tbaa !5
  %407 = getelementptr inbounds i32*, i32** %406, i64 1
  store i32* %l_1982, i32** %407, !tbaa !5
  %408 = getelementptr inbounds [4 x [7 x i32*]], [4 x [7 x i32*]]* %343, i64 1
  %409 = getelementptr inbounds [4 x [7 x i32*]], [4 x [7 x i32*]]* %408, i64 0, i64 0
  %410 = getelementptr inbounds [7 x i32*], [7 x i32*]* %409, i64 0, i64 0
  %411 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %412 = getelementptr inbounds [1 x i32], [1 x i32]* %411, i32 0, i64 0
  store i32* %412, i32** %410, !tbaa !5
  %413 = getelementptr inbounds i32*, i32** %410, i64 1
  %414 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %415 = getelementptr inbounds [1 x i32], [1 x i32]* %414, i32 0, i64 0
  store i32* %415, i32** %413, !tbaa !5
  %416 = getelementptr inbounds i32*, i32** %413, i64 1
  %417 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %418 = getelementptr inbounds [1 x i32], [1 x i32]* %417, i32 0, i64 0
  store i32* %418, i32** %416, !tbaa !5
  %419 = getelementptr inbounds i32*, i32** %416, i64 1
  %420 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %421 = getelementptr inbounds [1 x i32], [1 x i32]* %420, i32 0, i64 0
  store i32* %421, i32** %419, !tbaa !5
  %422 = getelementptr inbounds i32*, i32** %419, i64 1
  store i32* %l_1982, i32** %422, !tbaa !5
  %423 = getelementptr inbounds i32*, i32** %422, i64 1
  store i32* %l_1982, i32** %423, !tbaa !5
  %424 = getelementptr inbounds i32*, i32** %423, i64 1
  store i32* %l_1982, i32** %424, !tbaa !5
  %425 = getelementptr inbounds [7 x i32*], [7 x i32*]* %409, i64 1
  %426 = getelementptr inbounds [7 x i32*], [7 x i32*]* %425, i64 0, i64 0
  %427 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %428 = getelementptr inbounds [1 x i32], [1 x i32]* %427, i32 0, i64 0
  store i32* %428, i32** %426, !tbaa !5
  %429 = getelementptr inbounds i32*, i32** %426, i64 1
  %430 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %431 = getelementptr inbounds [1 x i32], [1 x i32]* %430, i32 0, i64 0
  store i32* %431, i32** %429, !tbaa !5
  %432 = getelementptr inbounds i32*, i32** %429, i64 1
  %433 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %434 = getelementptr inbounds [1 x i32], [1 x i32]* %433, i32 0, i64 0
  store i32* %434, i32** %432, !tbaa !5
  %435 = getelementptr inbounds i32*, i32** %432, i64 1
  %436 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %437 = getelementptr inbounds [1 x i32], [1 x i32]* %436, i32 0, i64 0
  store i32* %437, i32** %435, !tbaa !5
  %438 = getelementptr inbounds i32*, i32** %435, i64 1
  store i32* %l_1982, i32** %438, !tbaa !5
  %439 = getelementptr inbounds i32*, i32** %438, i64 1
  store i32* %l_1982, i32** %439, !tbaa !5
  %440 = getelementptr inbounds i32*, i32** %439, i64 1
  store i32* %l_1982, i32** %440, !tbaa !5
  %441 = getelementptr inbounds [7 x i32*], [7 x i32*]* %425, i64 1
  %442 = getelementptr inbounds [7 x i32*], [7 x i32*]* %441, i64 0, i64 0
  %443 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %444 = getelementptr inbounds [1 x i32], [1 x i32]* %443, i32 0, i64 0
  store i32* %444, i32** %442, !tbaa !5
  %445 = getelementptr inbounds i32*, i32** %442, i64 1
  %446 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %447 = getelementptr inbounds [1 x i32], [1 x i32]* %446, i32 0, i64 0
  store i32* %447, i32** %445, !tbaa !5
  %448 = getelementptr inbounds i32*, i32** %445, i64 1
  %449 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %450 = getelementptr inbounds [1 x i32], [1 x i32]* %449, i32 0, i64 0
  store i32* %450, i32** %448, !tbaa !5
  %451 = getelementptr inbounds i32*, i32** %448, i64 1
  %452 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %453 = getelementptr inbounds [1 x i32], [1 x i32]* %452, i32 0, i64 0
  store i32* %453, i32** %451, !tbaa !5
  %454 = getelementptr inbounds i32*, i32** %451, i64 1
  store i32* %l_1982, i32** %454, !tbaa !5
  %455 = getelementptr inbounds i32*, i32** %454, i64 1
  store i32* %l_1982, i32** %455, !tbaa !5
  %456 = getelementptr inbounds i32*, i32** %455, i64 1
  store i32* %l_1982, i32** %456, !tbaa !5
  %457 = getelementptr inbounds [7 x i32*], [7 x i32*]* %441, i64 1
  %458 = getelementptr inbounds [7 x i32*], [7 x i32*]* %457, i64 0, i64 0
  %459 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %460 = getelementptr inbounds [1 x i32], [1 x i32]* %459, i32 0, i64 0
  store i32* %460, i32** %458, !tbaa !5
  %461 = getelementptr inbounds i32*, i32** %458, i64 1
  %462 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %463 = getelementptr inbounds [1 x i32], [1 x i32]* %462, i32 0, i64 0
  store i32* %463, i32** %461, !tbaa !5
  %464 = getelementptr inbounds i32*, i32** %461, i64 1
  %465 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %466 = getelementptr inbounds [1 x i32], [1 x i32]* %465, i32 0, i64 0
  store i32* %466, i32** %464, !tbaa !5
  %467 = getelementptr inbounds i32*, i32** %464, i64 1
  %468 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %469 = getelementptr inbounds [1 x i32], [1 x i32]* %468, i32 0, i64 0
  store i32* %469, i32** %467, !tbaa !5
  %470 = getelementptr inbounds i32*, i32** %467, i64 1
  store i32* %l_1982, i32** %470, !tbaa !5
  %471 = getelementptr inbounds i32*, i32** %470, i64 1
  store i32* %l_1982, i32** %471, !tbaa !5
  %472 = getelementptr inbounds i32*, i32** %471, i64 1
  store i32* %l_1982, i32** %472, !tbaa !5
  %473 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %473) #1
  %474 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %474) #1
  %475 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %475) #1
  store i32 0, i32* %i1, align 4, !tbaa !1
  br label %476

; <label>:476                                     ; preds = %494, %77
  %477 = load i32, i32* %i1, align 4, !tbaa !1
  %478 = icmp slt i32 %477, 1
  br i1 %478, label %479, label %497

; <label>:479                                     ; preds = %476
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %480

; <label>:480                                     ; preds = %490, %479
  %481 = load i32, i32* %j, align 4, !tbaa !1
  %482 = icmp slt i32 %481, 1
  br i1 %482, label %483, label %493

; <label>:483                                     ; preds = %480
  %484 = load i32, i32* %j, align 4, !tbaa !1
  %485 = sext i32 %484 to i64
  %486 = load i32, i32* %i1, align 4, !tbaa !1
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 %487
  %489 = getelementptr inbounds [1 x i32], [1 x i32]* %488, i32 0, i64 %485
  store i32 -1152896021, i32* %489, align 4, !tbaa !1
  br label %490

; <label>:490                                     ; preds = %483
  %491 = load i32, i32* %j, align 4, !tbaa !1
  %492 = add nsw i32 %491, 1
  store i32 %492, i32* %j, align 4, !tbaa !1
  br label %480

; <label>:493                                     ; preds = %480
  br label %494

; <label>:494                                     ; preds = %493
  %495 = load i32, i32* %i1, align 4, !tbaa !1
  %496 = add nsw i32 %495, 1
  store i32 %496, i32* %i1, align 4, !tbaa !1
  br label %476

; <label>:497                                     ; preds = %476
  %498 = load i8**, i8*** %l_1983, align 8, !tbaa !5
  %499 = load i8***, i8**** %l_1984, align 8, !tbaa !5
  store i8** %498, i8*** %499, align 8, !tbaa !5
  %500 = load i32, i32* %l_1982, align 4, !tbaa !1
  %501 = trunc i32 %500 to i16
  %502 = load i16, i16* %l_15, align 2, !tbaa !10
  %503 = sext i16 %502 to i32
  %504 = load i64*, i64** %l_1996, align 8, !tbaa !5
  %505 = load i64, i64* %504, align 8, !tbaa !7
  %506 = add i64 %505, 1
  store i64 %506, i64* %504, align 8, !tbaa !7
  %507 = load i8*, i8** %l_1999, align 8, !tbaa !5
  %508 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_2000, i32 0, i64 0
  %509 = getelementptr inbounds [1 x i32], [1 x i32]* %508, i32 0, i64 0
  %510 = load i32, i32* %509, align 4, !tbaa !1
  %511 = icmp ne i32 %510, 0
  br i1 %511, label %512, label %516

; <label>:512                                     ; preds = %497
  %513 = load i16, i16* %l_1979, align 2, !tbaa !10
  %514 = sext i16 %513 to i32
  %515 = icmp ne i32 %514, 0
  br label %516

; <label>:516                                     ; preds = %512, %497
  %517 = phi i1 [ false, %497 ], [ %515, %512 ]
  %518 = zext i1 %517 to i32
  %519 = load i8*, i8** %l_2001, align 8, !tbaa !5
  %520 = icmp eq i8* %507, %519
  %521 = zext i1 %520 to i32
  %522 = sext i32 %521 to i64
  %523 = icmp uge i64 %506, %522
  %524 = zext i1 %523 to i32
  %525 = call i32 @safe_mul_func_uint32_t_u_u(i32 %503, i32 %524)
  %526 = trunc i32 %525 to i16
  %527 = load i16*, i16** %l_1978, align 8, !tbaa !5
  store i16 %526, i16* %527, align 2, !tbaa !10
  %528 = call zeroext i16 @safe_add_func_uint16_t_u_u(i16 zeroext %501, i16 zeroext %526)
  %529 = zext i16 %528 to i32
  %530 = load volatile i32*, i32** @g_82, align 8, !tbaa !5
  %531 = load i32, i32* %530, align 4, !tbaa !1
  store i32 %531, i32* %l_1995, align 4, !tbaa !1
  %532 = call i32 @safe_sub_func_int32_t_s_s(i32 %529, i32 %531)
  %533 = sext i32 %532 to i64
  %534 = load i64, i64* @g_701, align 8, !tbaa !7
  %535 = icmp sgt i64 %533, %534
  %536 = zext i1 %535 to i32
  %537 = sext i32 %536 to i64
  %538 = and i64 %537, -8263422319695179565
  %539 = trunc i64 %538 to i8
  %540 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext -11, i8 zeroext %539)
  %541 = zext i8 %540 to i16
  %542 = load i16, i16* %l_1979, align 2, !tbaa !10
  %543 = call zeroext i16 @safe_div_func_uint16_t_u_u(i16 zeroext %541, i16 zeroext %542)
  %544 = zext i16 %543 to i64
  %545 = and i64 %544, 62362
  %546 = load i32, i32* %l_2003, align 4, !tbaa !1
  %547 = sext i32 %546 to i64
  %548 = xor i64 %547, %545
  %549 = trunc i64 %548 to i32
  store i32 %549, i32* %l_2003, align 4, !tbaa !1
  %550 = load i32, i32* %l_1982, align 4, !tbaa !1
  %551 = load i32, i32* %l_2003, align 4, !tbaa !1
  %552 = xor i32 %551, %550
  store i32 %552, i32* %l_2003, align 4, !tbaa !1
  %553 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %553) #1
  %554 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %554) #1
  %555 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %555) #1
  %556 = bitcast [6 x [4 x [7 x i32*]]]* %l_2002 to i8*
  call void @llvm.lifetime.end(i64 1344, i8* %556) #1
  %557 = bitcast [1 x [1 x i32]]* %l_2000 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %557) #1
  %558 = bitcast i8** %l_1999 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %558) #1
  %559 = bitcast i64** %l_1996 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %559) #1
  %560 = bitcast i8**** %l_1984 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %560) #1
  br label %561

; <label>:561                                     ; preds = %516, %68
  %562 = load volatile i32**, i32*** @g_2004, align 8, !tbaa !5
  store i32* %l_1982, i32** %562, align 8, !tbaa !5
  %563 = load i16, i16* %l_2005, align 2, !tbaa !10
  %564 = sext i16 %563 to i64
  %565 = bitcast i16* %l_2005 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %565) #1
  %566 = bitcast i32* %l_2003 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %566) #1
  %567 = bitcast i8** %l_2001 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %567) #1
  %568 = bitcast i32* %l_1995 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %568) #1
  %569 = bitcast i8*** %l_1983 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %569) #1
  %570 = bitcast i32* %l_1982 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %570) #1
  %571 = bitcast i16* %l_1979 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %571) #1
  %572 = bitcast i16** %l_1978 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %572) #1
  %573 = bitcast i16** %l_21 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %573) #1
  %574 = bitcast i16* %l_15 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %574) #1
  %575 = bitcast i64* %l_8 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %575) #1
  ret i64 %564
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
define internal zeroext i16 @func_11(i32 %p_12, i8 zeroext %p_13, i16 signext %p_14) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  %3 = alloca i16, align 2
  %l_1914 = alloca i32, align 4
  %l_1932 = alloca i32, align 4
  %l_1958 = alloca i8, align 1
  %l_1959 = alloca i32***, align 8
  %l_1963 = alloca [4 x i32***], align 16
  %l_1962 = alloca i32****, align 8
  %l_1966 = alloca [3 x i32*****], align 16
  %l_1973 = alloca i16, align 2
  %l_1974 = alloca i64*, align 8
  %l_1975 = alloca i16*, align 8
  %l_1976 = alloca i32, align 4
  %l_1977 = alloca [4 x i32], align 16
  %i = alloca i32, align 4
  %l_1927 = alloca i8, align 1
  %l_1928 = alloca i64*, align 8
  %l_1929 = alloca i16, align 2
  %l_1930 = alloca [9 x i32*], align 16
  %l_1953 = alloca i16****, align 8
  %l_1955 = alloca [6 x i16****], align 16
  %l_1954 = alloca i16*****, align 8
  %l_1957 = alloca i16****, align 8
  %l_1956 = alloca i16*****, align 8
  %l_1960 = alloca i32*, align 8
  %l_1961 = alloca i32*, align 8
  %i1 = alloca i32, align 4
  store i32 %p_12, i32* %1, align 4, !tbaa !1
  store i8 %p_13, i8* %2, align 1, !tbaa !9
  store i16 %p_14, i16* %3, align 2, !tbaa !10
  %4 = bitcast i32* %l_1914 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 -1083345960, i32* %l_1914, align 4, !tbaa !1
  %5 = bitcast i32* %l_1932 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 -845871817, i32* %l_1932, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %l_1958) #1
  store i8 50, i8* %l_1958, align 1, !tbaa !9
  %6 = bitcast i32**** %l_1959 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i32*** @g_1491, i32**** %l_1959, align 8, !tbaa !5
  %7 = bitcast [4 x i32***]* %l_1963 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %7) #1
  %8 = bitcast i32***** %l_1962 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = getelementptr inbounds [4 x i32***], [4 x i32***]* %l_1963, i32 0, i64 2
  store i32**** %9, i32***** %l_1962, align 8, !tbaa !5
  %10 = bitcast [3 x i32*****]* %l_1966 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %10) #1
  %11 = bitcast i16* %l_1973 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %11) #1
  store i16 7, i16* %l_1973, align 2, !tbaa !10
  %12 = bitcast i64** %l_1974 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  store i64* @g_126, i64** %l_1974, align 8, !tbaa !5
  %13 = bitcast i16** %l_1975 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  store i16* @g_295, i16** %l_1975, align 8, !tbaa !5
  %14 = bitcast i32* %l_1976 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  store i32 0, i32* %l_1976, align 4, !tbaa !1
  %15 = bitcast [4 x i32]* %l_1977 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %15) #1
  %16 = bitcast [4 x i32]* %l_1977 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* bitcast ([4 x i32]* @func_11.l_1977 to i8*), i64 16, i32 16, i1 false)
  %17 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %18

; <label>:18                                      ; preds = %25, %0
  %19 = load i32, i32* %i, align 4, !tbaa !1
  %20 = icmp slt i32 %19, 4
  br i1 %20, label %21, label %28

; <label>:21                                      ; preds = %18
  %22 = load i32, i32* %i, align 4, !tbaa !1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [4 x i32***], [4 x i32***]* %l_1963, i32 0, i64 %23
  store i32*** getelementptr inbounds ([3 x [2 x i32**]], [3 x [2 x i32**]]* @g_1405, i32 0, i64 0, i64 0), i32**** %24, align 8, !tbaa !5
  br label %25

; <label>:25                                      ; preds = %21
  %26 = load i32, i32* %i, align 4, !tbaa !1
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %i, align 4, !tbaa !1
  br label %18

; <label>:28                                      ; preds = %18
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %29

; <label>:29                                      ; preds = %36, %28
  %30 = load i32, i32* %i, align 4, !tbaa !1
  %31 = icmp slt i32 %30, 3
  br i1 %31, label %32, label %39

; <label>:32                                      ; preds = %29
  %33 = load i32, i32* %i, align 4, !tbaa !1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [3 x i32*****], [3 x i32*****]* %l_1966, i32 0, i64 %34
  store i32***** null, i32****** %35, align 8, !tbaa !5
  br label %36

; <label>:36                                      ; preds = %32
  %37 = load i32, i32* %i, align 4, !tbaa !1
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %i, align 4, !tbaa !1
  br label %29

; <label>:39                                      ; preds = %29
  store i8 -2, i8* %2, align 1, !tbaa !9
  br label %40

; <label>:40                                      ; preds = %164, %39
  %41 = load i8, i8* %2, align 1, !tbaa !9
  %42 = zext i8 %41 to i32
  %43 = icmp sge i32 %42, 20
  br i1 %43, label %44, label %167

; <label>:44                                      ; preds = %40
  call void @llvm.lifetime.start(i64 1, i8* %l_1927) #1
  store i8 98, i8* %l_1927, align 1, !tbaa !9
  %45 = bitcast i64** %l_1928 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %45) #1
  store i64* @g_431, i64** %l_1928, align 8, !tbaa !5
  %46 = bitcast i16* %l_1929 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %46) #1
  store i16 8, i16* %l_1929, align 2, !tbaa !10
  %47 = bitcast [9 x i32*]* %l_1930 to i8*
  call void @llvm.lifetime.start(i64 72, i8* %47) #1
  %48 = bitcast [9 x i32*]* %l_1930 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %48, i8* bitcast ([9 x i32*]* @func_11.l_1930 to i8*), i64 72, i32 16, i1 false)
  %49 = bitcast i16***** %l_1953 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %49) #1
  store i16**** null, i16***** %l_1953, align 8, !tbaa !5
  %50 = bitcast [6 x i16****]* %l_1955 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %50) #1
  %51 = bitcast [6 x i16****]* %l_1955 to i8*
  call void @llvm.memset.p0i8.i64(i8* %51, i8 0, i64 48, i32 16, i1 false)
  %52 = bitcast i8* %51 to [6 x i16****]*
  %53 = getelementptr [6 x i16****], [6 x i16****]* %52, i32 0, i32 0
  store i16**** bitcast (i8* getelementptr (i8, i8* bitcast ([5 x i16***]* @g_159 to i8*), i64 32) to i16****), i16***** %53
  %54 = getelementptr [6 x i16****], [6 x i16****]* %52, i32 0, i32 1
  store i16**** bitcast (i8* getelementptr (i8, i8* bitcast ([5 x i16***]* @g_159 to i8*), i64 32) to i16****), i16***** %54
  %55 = getelementptr [6 x i16****], [6 x i16****]* %52, i32 0, i32 2
  store i16**** bitcast (i8* getelementptr (i8, i8* bitcast ([5 x i16***]* @g_159 to i8*), i64 32) to i16****), i16***** %55
  %56 = getelementptr [6 x i16****], [6 x i16****]* %52, i32 0, i32 3
  store i16**** bitcast (i8* getelementptr (i8, i8* bitcast ([5 x i16***]* @g_159 to i8*), i64 32) to i16****), i16***** %56
  %57 = getelementptr [6 x i16****], [6 x i16****]* %52, i32 0, i32 4
  store i16**** bitcast (i8* getelementptr (i8, i8* bitcast ([5 x i16***]* @g_159 to i8*), i64 32) to i16****), i16***** %57
  %58 = getelementptr [6 x i16****], [6 x i16****]* %52, i32 0, i32 5
  store i16**** bitcast (i8* getelementptr (i8, i8* bitcast ([5 x i16***]* @g_159 to i8*), i64 32) to i16****), i16***** %58
  %59 = bitcast i16****** %l_1954 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %59) #1
  %60 = getelementptr inbounds [6 x i16****], [6 x i16****]* %l_1955, i32 0, i64 1
  store i16***** %60, i16****** %l_1954, align 8, !tbaa !5
  %61 = bitcast i16***** %l_1957 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %61) #1
  store i16**** getelementptr inbounds ([5 x i16***], [5 x i16***]* @g_159, i32 0, i64 4), i16***** %l_1957, align 8, !tbaa !5
  %62 = bitcast i16****** %l_1956 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %62) #1
  store i16***** %l_1957, i16****** %l_1956, align 8, !tbaa !5
  %63 = bitcast i32** %l_1960 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %63) #1
  store i32* %l_1932, i32** %l_1960, align 8, !tbaa !5
  %64 = bitcast i32** %l_1961 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %64) #1
  store i32* %l_1932, i32** %l_1961, align 8, !tbaa !5
  %65 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %65) #1
  %66 = call signext i8 @func_33(i16* @g_22)
  %67 = load i32, i32* %l_1914, align 4, !tbaa !1
  %68 = zext i32 %67 to i64
  %69 = call i64 @safe_add_func_int64_t_s_s(i64 %68, i64 -7554226157233559315)
  %70 = load i8, i8* @g_363, align 1, !tbaa !9
  %71 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @g_84, i32 0, i64 5), align 1, !tbaa !9
  %72 = sext i8 %71 to i16
  %73 = load i16, i16* getelementptr inbounds ([1 x i16], [1 x i16]* @g_1095, i32 0, i64 0), align 2, !tbaa !10
  %74 = call signext i16 @safe_add_func_int16_t_s_s(i16 signext %72, i16 signext %73)
  %75 = sext i16 %74 to i32
  %76 = load i8, i8* %l_1927, align 1, !tbaa !9
  %77 = call signext i8 @safe_lshift_func_int8_t_s_s(i8 signext %76, i32 5)
  %78 = sext i8 %77 to i32
  %79 = call i32 @safe_add_func_int32_t_s_s(i32 %75, i32 %78)
  %80 = call i32 @safe_sub_func_int32_t_s_s(i32 %79, i32 -1714558414)
  %81 = sext i32 %80 to i64
  %82 = or i64 %81, 7121163956294315530
  %83 = load i64*, i64** %l_1928, align 8, !tbaa !5
  store i64 %82, i64* %83, align 8, !tbaa !7
  %84 = load i16, i16* %l_1929, align 2, !tbaa !10
  %85 = sext i16 %84 to i64
  %86 = xor i64 -7290445406842114853, %85
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %92, label %88

; <label>:88                                      ; preds = %44
  %89 = load i8, i8* %2, align 1, !tbaa !9
  %90 = zext i8 %89 to i32
  %91 = icmp ne i32 %90, 0
  br label %92

; <label>:92                                      ; preds = %88, %44
  %93 = phi i1 [ true, %44 ], [ %91, %88 ]
  %94 = zext i1 %93 to i32
  %95 = load i8*, i8** @g_1757, align 8, !tbaa !5
  %96 = load i8, i8* %95, align 1, !tbaa !9
  %97 = sext i8 %96 to i32
  %98 = icmp ne i32 %94, %97
  %99 = zext i1 %98 to i32
  %100 = sext i32 %99 to i64
  %101 = icmp ne i64 %100, -1
  %102 = zext i1 %101 to i32
  %103 = sext i32 %102 to i64
  %104 = call i64 @safe_sub_func_int64_t_s_s(i64 %103, i64 -1)
  %105 = trunc i64 %104 to i8
  %106 = call signext i8 @safe_lshift_func_int8_t_s_s(i8 signext %105, i32 5)
  %107 = load i8, i8* %2, align 1, !tbaa !9
  %108 = zext i8 %107 to i64
  %109 = icmp ugt i64 %108, 247
  %110 = zext i1 %109 to i32
  store i32 %110, i32* %1, align 4, !tbaa !1
  %111 = sext i32 %110 to i64
  %112 = or i64 %69, %111
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %118

; <label>:114                                     ; preds = %92
  %115 = load i8, i8* %2, align 1, !tbaa !9
  %116 = zext i8 %115 to i32
  %117 = icmp ne i32 %116, 0
  br label %118

; <label>:118                                     ; preds = %114, %92
  %119 = phi i1 [ false, %92 ], [ %117, %114 ]
  %120 = zext i1 %119 to i32
  %121 = sext i32 %120 to i64
  %122 = load i8, i8* %2, align 1, !tbaa !9
  %123 = zext i8 %122 to i64
  %124 = call i64 @safe_add_func_int64_t_s_s(i64 %121, i64 %123)
  %125 = trunc i64 %124 to i8
  %126 = call signext i8 @safe_mod_func_int8_t_s_s(i8 signext %66, i8 signext %125)
  %127 = sext i8 %126 to i32
  %128 = load i16, i16* %3, align 2, !tbaa !10
  %129 = sext i16 %128 to i32
  %130 = call i32 @safe_sub_func_uint32_t_u_u(i32 %127, i32 %129)
  %131 = zext i32 %130 to i64
  %132 = load i8, i8* %2, align 1, !tbaa !9
  %133 = zext i8 %132 to i64
  %134 = call i64 @safe_div_func_int64_t_s_s(i64 %131, i64 %133)
  br i1 false, label %139, label %135

; <label>:135                                     ; preds = %118
  %136 = load volatile i16, i16* @g_1931, align 2, !tbaa !10
  %137 = zext i16 %136 to i32
  %138 = icmp ne i32 %137, 0
  br label %139

; <label>:139                                     ; preds = %135, %118
  %140 = phi i1 [ true, %118 ], [ %138, %135 ]
  %141 = zext i1 %140 to i32
  %142 = load i8, i8* %2, align 1, !tbaa !9
  %143 = zext i8 %142 to i32
  %144 = call i32 @safe_add_func_int32_t_s_s(i32 %141, i32 %143)
  %145 = load i8, i8* %2, align 1, !tbaa !9
  %146 = zext i8 %145 to i32
  %147 = icmp eq i32 %144, %146
  %148 = zext i1 %147 to i32
  %149 = load i16, i16* %3, align 2, !tbaa !10
  %150 = sext i16 %149 to i32
  %151 = xor i32 %148, %150
  store i32 %151, i32* %l_1932, align 4, !tbaa !1
  %152 = load i32*, i32** %l_1960, align 8, !tbaa !5
  store i32* %152, i32** %l_1961, align 8, !tbaa !5
  %153 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %153) #1
  %154 = bitcast i32** %l_1961 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %154) #1
  %155 = bitcast i32** %l_1960 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %155) #1
  %156 = bitcast i16****** %l_1956 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %156) #1
  %157 = bitcast i16***** %l_1957 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %157) #1
  %158 = bitcast i16****** %l_1954 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %158) #1
  %159 = bitcast [6 x i16****]* %l_1955 to i8*
  call void @llvm.lifetime.end(i64 48, i8* %159) #1
  %160 = bitcast i16***** %l_1953 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %160) #1
  %161 = bitcast [9 x i32*]* %l_1930 to i8*
  call void @llvm.lifetime.end(i64 72, i8* %161) #1
  %162 = bitcast i16* %l_1929 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %162) #1
  %163 = bitcast i64** %l_1928 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %163) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1927) #1
  br label %164

; <label>:164                                     ; preds = %139
  %165 = load i8, i8* %2, align 1, !tbaa !9
  %166 = add i8 %165, 1
  store i8 %166, i8* %2, align 1, !tbaa !9
  br label %40

; <label>:167                                     ; preds = %40
  %168 = load i32****, i32***** %l_1962, align 8, !tbaa !5
  %169 = getelementptr inbounds [4 x i32***], [4 x i32***]* %l_1963, i32 0, i64 3
  %170 = icmp eq i32**** %168, %169
  br i1 %170, label %171, label %226

; <label>:171                                     ; preds = %167
  %172 = load i16, i16* %3, align 2, !tbaa !10
  %173 = sext i16 %172 to i64
  %174 = load i8, i8* %2, align 1, !tbaa !9
  %175 = zext i8 %174 to i64
  %176 = call i64 @safe_div_func_int64_t_s_s(i64 %173, i64 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %218

; <label>:178                                     ; preds = %171
  %179 = getelementptr inbounds [3 x i32*****], [3 x i32*****]* %l_1966, i32 0, i64 0
  store i32***** %l_1962, i32****** %179, align 8, !tbaa !5
  %180 = load i32, i32* %1, align 4, !tbaa !1
  %181 = load i8, i8* %2, align 1, !tbaa !9
  %182 = load i64*, i64** @g_1303, align 8, !tbaa !5
  %183 = load volatile i64, i64* %182, align 8, !tbaa !7
  %184 = load i16, i16* %l_1973, align 2, !tbaa !10
  %185 = zext i16 %184 to i64
  %186 = xor i64 1, %185
  %187 = load i8, i8* %2, align 1, !tbaa !9
  %188 = zext i8 %187 to i64
  %189 = icmp uge i64 %186, %188
  %190 = zext i1 %189 to i32
  %191 = sext i32 %190 to i64
  %192 = load i64*, i64** %l_1974, align 8, !tbaa !5
  %193 = load i64, i64* %192, align 8, !tbaa !7
  %194 = xor i64 %193, %191
  store i64 %194, i64* %192, align 8, !tbaa !7
  %195 = icmp ule i64 %194, -1334941728844030411
  %196 = zext i1 %195 to i32
  %197 = trunc i32 %196 to i16
  %198 = load i16*, i16** %l_1975, align 8, !tbaa !5
  store i16 %197, i16* %198, align 2, !tbaa !10
  %199 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %197, i16 zeroext 25275)
  %200 = trunc i16 %199 to i8
  %201 = load i8*, i8** @g_1757, align 8, !tbaa !5
  store i8 %200, i8* %201, align 1, !tbaa !9
  %202 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %200, i8 signext -8)
  %203 = sext i8 %202 to i64
  %204 = icmp slt i64 %183, %203
  %205 = zext i1 %204 to i32
  %206 = icmp sge i32 %180, %205
  %207 = zext i1 %206 to i32
  %208 = trunc i32 %207 to i16
  %209 = load i32, i32* %l_1976, align 4, !tbaa !1
  %210 = trunc i32 %209 to i16
  %211 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %208, i16 zeroext %210)
  %212 = icmp eq i32***** %l_1962, null
  %213 = zext i1 %212 to i32
  %214 = sext i32 %213 to i64
  store i64 %214, i64* @g_1207, align 8, !tbaa !7
  %215 = getelementptr inbounds [4 x i32], [4 x i32]* %l_1977, i32 0, i64 3
  %216 = load i32, i32* %215, align 4, !tbaa !1
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %224, label %218

; <label>:218                                     ; preds = %178, %171
  %219 = load volatile i16**, i16*** @g_1741, align 8, !tbaa !5
  %220 = load volatile i16*, i16** %219, align 8, !tbaa !5
  %221 = load i16, i16* %220, align 2, !tbaa !10
  %222 = zext i16 %221 to i32
  %223 = icmp ne i32 %222, 0
  br label %224

; <label>:224                                     ; preds = %218, %178
  %225 = phi i1 [ true, %178 ], [ %223, %218 ]
  br label %226

; <label>:226                                     ; preds = %224, %167
  %227 = phi i1 [ false, %167 ], [ %225, %224 ]
  %228 = zext i1 %227 to i32
  store i32 %228, i32* %1, align 4, !tbaa !1
  %229 = load volatile i32**, i32*** @g_1909, align 8, !tbaa !5
  store i32* %1, i32** %229, align 8, !tbaa !5
  %230 = load i16****, i16***** @g_1739, align 8, !tbaa !5
  %231 = load volatile i16***, i16**** %230, align 8, !tbaa !5
  %232 = load volatile i16**, i16*** %231, align 8, !tbaa !5
  %233 = load volatile i16*, i16** %232, align 8, !tbaa !5
  %234 = load i16, i16* %233, align 2, !tbaa !10
  %235 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %235) #1
  %236 = bitcast [4 x i32]* %l_1977 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %236) #1
  %237 = bitcast i32* %l_1976 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %237) #1
  %238 = bitcast i16** %l_1975 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %238) #1
  %239 = bitcast i64** %l_1974 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %239) #1
  %240 = bitcast i16* %l_1973 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %240) #1
  %241 = bitcast [3 x i32*****]* %l_1966 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %241) #1
  %242 = bitcast i32***** %l_1962 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %242) #1
  %243 = bitcast [4 x i32***]* %l_1963 to i8*
  call void @llvm.lifetime.end(i64 32, i8* %243) #1
  %244 = bitcast i32**** %l_1959 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %244) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1958) #1
  %245 = bitcast i32* %l_1932 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %245) #1
  %246 = bitcast i32* %l_1914 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %246) #1
  ret i16 %234
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
define internal i32 @safe_mul_func_uint32_t_u_u(i32 %ui1, i32 %ui2) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %ui1, i32* %1, align 4, !tbaa !1
  store i32 %ui2, i32* %2, align 4, !tbaa !1
  %3 = load i32, i32* %1, align 4, !tbaa !1
  %4 = load i32, i32* %2, align 4, !tbaa !1
  %5 = mul i32 %3, %4
  ret i32 %5
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

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
define internal signext i8 @func_33(i16* %p_34) #0 {
  %1 = alloca i16*, align 8
  %l_44 = alloca i32, align 4
  %l_1471 = alloca i32, align 4
  %l_1898 = alloca i32*, align 8
  %l_45 = alloca [7 x i16], align 2
  %l_1469 = alloca [5 x [5 x i64*]], align 16
  %l_1470 = alloca i32, align 4
  %l_1870 = alloca i8, align 1
  %l_1899 = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %l_1902 = alloca i32*, align 8
  %l_1905 = alloca i8*, align 8
  %l_1908 = alloca i32**, align 8
  %2 = alloca i32
  store i16* %p_34, i16** %1, align 8, !tbaa !5
  %3 = bitcast i32* %l_44 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 1406710739, i32* %l_44, align 4, !tbaa !1
  %4 = bitcast i32* %l_1471 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 -8, i32* %l_1471, align 4, !tbaa !1
  %5 = bitcast i32** %l_1898 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store i32* @g_83, i32** %l_1898, align 8, !tbaa !5
  store i16 -7, i16* @g_22, align 2, !tbaa !10
  br label %6

; <label>:6                                       ; preds = %25, %0
  %7 = load i16, i16* @g_22, align 2, !tbaa !10
  %8 = zext i16 %7 to i32
  %9 = icmp slt i32 %8, 38
  br i1 %9, label %10, label %30

; <label>:10                                      ; preds = %6
  %11 = bitcast [7 x i16]* %l_45 to i8*
  call void @llvm.lifetime.start(i64 14, i8* %11) #1
  %12 = bitcast [7 x i16]* %l_45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* bitcast ([7 x i16]* @func_33.l_45 to i8*), i64 14, i32 2, i1 false)
  %13 = bitcast [5 x [5 x i64*]]* %l_1469 to i8*
  call void @llvm.lifetime.start(i64 200, i8* %13) #1
  %14 = bitcast [5 x [5 x i64*]]* %l_1469 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* bitcast ([5 x [5 x i64*]]* @func_33.l_1469 to i8*), i64 200, i32 16, i1 false)
  %15 = bitcast i32* %l_1470 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  store i32 -10, i32* %l_1470, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %l_1870) #1
  store i8 2, i8* %l_1870, align 1, !tbaa !9
  %16 = bitcast i32** %l_1899 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  store i32* null, i32** %l_1899, align 8, !tbaa !5
  %17 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  %20 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  %21 = bitcast i32** %l_1899 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1870) #1
  %22 = bitcast i32* %l_1470 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  %23 = bitcast [5 x [5 x i64*]]* %l_1469 to i8*
  call void @llvm.lifetime.end(i64 200, i8* %23) #1
  %24 = bitcast [7 x i16]* %l_45 to i8*
  call void @llvm.lifetime.end(i64 14, i8* %24) #1
  br label %25

; <label>:25                                      ; preds = %10
  %26 = load i16, i16* @g_22, align 2, !tbaa !10
  %27 = zext i16 %26 to i32
  %28 = call i32 @safe_add_func_int32_t_s_s(i32 %27, i32 1)
  %29 = trunc i32 %28 to i16
  store i16 %29, i16* @g_22, align 2, !tbaa !10
  br label %6

; <label>:30                                      ; preds = %6
  store i64 0, i64* @g_701, align 8, !tbaa !7
  br label %31

; <label>:31                                      ; preds = %60, %30
  %32 = load i64, i64* @g_701, align 8, !tbaa !7
  %33 = icmp sge i64 %32, 10
  br i1 %33, label %34, label %63

; <label>:34                                      ; preds = %31
  %35 = bitcast i32** %l_1902 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %35) #1
  store i32* @g_83, i32** %l_1902, align 8, !tbaa !5
  %36 = bitcast i8** %l_1905 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %36) #1
  store i8* getelementptr inbounds ([4 x [4 x i8]], [4 x [4 x i8]]* @g_920, i32 0, i64 3, i64 3), i8** %l_1905, align 8, !tbaa !5
  %37 = load i32*, i32** %l_1902, align 8, !tbaa !5
  %38 = load volatile i32**, i32*** @g_1903, align 8, !tbaa !5
  store i32* %37, i32** %38, align 8, !tbaa !5
  %39 = load i8*, i8** %l_1905, align 8, !tbaa !5
  %40 = load i8, i8* %39, align 1, !tbaa !9
  %41 = add i8 %40, -1
  store i8 %41, i8* %39, align 1, !tbaa !9
  %42 = zext i8 %40 to i32
  %43 = xor i32 %42, -1
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

; <label>:45                                      ; preds = %34
  %46 = bitcast i32*** %l_1908 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %46) #1
  store i32** getelementptr inbounds ([10 x i32*], [10 x i32*]* @g_129, i32 0, i64 2), i32*** %l_1908, align 8, !tbaa !5
  %47 = load i32**, i32*** %l_1908, align 8, !tbaa !5
  store i32* %l_1471, i32** %47, align 8, !tbaa !5
  %48 = bitcast i32*** %l_1908 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  br label %55

; <label>:49                                      ; preds = %34
  %50 = load i32*, i32** %l_1902, align 8, !tbaa !5
  %51 = load i32, i32* %50, align 4, !tbaa !1
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

; <label>:53                                      ; preds = %49
  store i32 5, i32* %2
  br label %56

; <label>:54                                      ; preds = %49
  br label %55

; <label>:55                                      ; preds = %54, %45
  store i32 0, i32* %2
  br label %56

; <label>:56                                      ; preds = %55, %53
  %57 = bitcast i8** %l_1905 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %57) #1
  %58 = bitcast i32** %l_1902 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #1
  %cleanup.dest = load i32, i32* %2
  switch i32 %cleanup.dest, label %71 [
    i32 0, label %59
    i32 5, label %63
  ]

; <label>:59                                      ; preds = %56
  br label %60

; <label>:60                                      ; preds = %59
  %61 = load i64, i64* @g_701, align 8, !tbaa !7
  %62 = add nsw i64 %61, 1
  store i64 %62, i64* @g_701, align 8, !tbaa !7
  br label %31

; <label>:63                                      ; preds = %56, %31
  %64 = load volatile i32**, i32*** @g_1909, align 8, !tbaa !5
  store i32* %l_1471, i32** %64, align 8, !tbaa !5
  %65 = load i32*, i32** %l_1898, align 8, !tbaa !5
  %66 = load i32, i32* %65, align 4, !tbaa !1
  %67 = trunc i32 %66 to i8
  store i32 1, i32* %2
  %68 = bitcast i32** %l_1898 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #1
  %69 = bitcast i32* %l_1471 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #1
  %70 = bitcast i32* %l_44 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #1
  ret i8 %67

; <label>:71                                      ; preds = %56
  unreachable
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
