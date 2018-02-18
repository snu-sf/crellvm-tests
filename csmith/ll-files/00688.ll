; ModuleID = '00688.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.U0 = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_6 = internal global i8 1, align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"g_6\00", align 1
@g_32 = internal global [4 x i32] [i32 -9, i32 -9, i32 -9, i32 -9], align 16
@.str.2 = private unnamed_addr constant [8 x i8] c"g_32[i]\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_72 = internal global i32 1293085199, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"g_72\00", align 1
@g_73 = internal global i32 1799263789, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"g_73\00", align 1
@g_90 = internal global i64 -3448408649420171768, align 8
@.str.6 = private unnamed_addr constant [5 x i8] c"g_90\00", align 1
@g_100 = internal global i64 -6, align 8
@.str.7 = private unnamed_addr constant [6 x i8] c"g_100\00", align 1
@g_107 = internal global i16 0, align 2
@.str.8 = private unnamed_addr constant [6 x i8] c"g_107\00", align 1
@g_126 = internal global i8 0, align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"g_126\00", align 1
@g_128 = internal global i16 -1, align 2
@.str.10 = private unnamed_addr constant [6 x i8] c"g_128\00", align 1
@g_139 = internal global i8 -3, align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"g_139\00", align 1
@g_149 = internal global [9 x i64] [i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1], align 16
@.str.12 = private unnamed_addr constant [9 x i8] c"g_149[i]\00", align 1
@g_161 = internal global i16 -12079, align 2
@.str.13 = private unnamed_addr constant [6 x i8] c"g_161\00", align 1
@g_227 = internal global i64 0, align 8
@.str.14 = private unnamed_addr constant [6 x i8] c"g_227\00", align 1
@g_245 = internal global [10 x i8] c"\02\02\02\02\02\02\02\02\02\02", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"g_245[i]\00", align 1
@g_255 = internal global i8 117, align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"g_255\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"g_279[i].f0\00", align 1
@g_296 = internal global i64 5, align 8
@.str.18 = private unnamed_addr constant [6 x i8] c"g_296\00", align 1
@g_300 = internal global i32 1984572234, align 4
@.str.19 = private unnamed_addr constant [6 x i8] c"g_300\00", align 1
@g_418 = internal global i32 -525667442, align 4
@.str.20 = private unnamed_addr constant [6 x i8] c"g_418\00", align 1
@g_478 = internal global i32 1603272490, align 4
@.str.21 = private unnamed_addr constant [6 x i8] c"g_478\00", align 1
@g_554 = internal global i32 -1057593034, align 4
@.str.22 = private unnamed_addr constant [6 x i8] c"g_554\00", align 1
@g_752 = internal global i32 1755594236, align 4
@.str.23 = private unnamed_addr constant [6 x i8] c"g_752\00", align 1
@g_778 = internal global i16 9, align 2
@.str.24 = private unnamed_addr constant [6 x i8] c"g_778\00", align 1
@g_817 = internal global [6 x i16] [i16 -20005, i16 -20005, i16 -20005, i16 -20005, i16 -20005, i16 -20005], align 2
@.str.25 = private unnamed_addr constant [9 x i8] c"g_817[i]\00", align 1
@g_829 = internal global [5 x [3 x i64]] [[3 x i64] [i64 3, i64 2615734555362962522, i64 -8458534234236984480], [3 x i64] [i64 -3, i64 -3, i64 -8458534234236984480], [3 x i64] [i64 2615734555362962522, i64 3, i64 1], [3 x i64] [i64 -10, i64 -3, i64 -10], [3 x i64] [i64 -10, i64 2615734555362962522, i64 -3]], align 16
@.str.26 = private unnamed_addr constant [12 x i8] c"g_829[i][j]\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@g_862 = internal global i32 -5, align 4
@.str.28 = private unnamed_addr constant [6 x i8] c"g_862\00", align 1
@g_881 = internal global i32 1292124249, align 4
@.str.29 = private unnamed_addr constant [6 x i8] c"g_881\00", align 1
@g_924 = internal global i16 -25189, align 2
@.str.30 = private unnamed_addr constant [6 x i8] c"g_924\00", align 1
@g_1099 = internal global i32 6, align 4
@.str.31 = private unnamed_addr constant [7 x i8] c"g_1099\00", align 1
@g_1305 = internal global [1 x i32] [i32 1028641081], align 4
@.str.32 = private unnamed_addr constant [10 x i8] c"g_1305[i]\00", align 1
@g_1378 = internal global i8 6, align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"g_1378\00", align 1
@g_1439 = internal global i32 0, align 4
@.str.34 = private unnamed_addr constant [7 x i8] c"g_1439\00", align 1
@g_1463 = internal global i16 -11454, align 2
@.str.35 = private unnamed_addr constant [7 x i8] c"g_1463\00", align 1
@g_1481 = internal global i64 -10, align 8
@.str.36 = private unnamed_addr constant [7 x i8] c"g_1481\00", align 1
@g_1637 = internal global i32 1352570287, align 4
@.str.37 = private unnamed_addr constant [7 x i8] c"g_1637\00", align 1
@g_1663 = internal global i16 1, align 2
@.str.38 = private unnamed_addr constant [7 x i8] c"g_1663\00", align 1
@g_1709 = internal global i64 4971148596743414460, align 8
@.str.39 = private unnamed_addr constant [7 x i8] c"g_1709\00", align 1
@g_1718 = internal global i8 7, align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"g_1718\00", align 1
@g_1721 = internal global i32 -127955286, align 4
@.str.41 = private unnamed_addr constant [7 x i8] c"g_1721\00", align 1
@g_1723 = internal global i64 -6686759486086852683, align 8
@.str.42 = private unnamed_addr constant [7 x i8] c"g_1723\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"g_1727\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@func_1.l_1733 = private unnamed_addr constant { i16, [2 x i8] } { i16 -1, [2 x i8] undef }, align 4
@g_1233 = internal global i32* @g_554, align 8
@g_716 = internal global i64* @g_100, align 8
@g_1708 = internal global i32** bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i32*]* @g_186 to i8*), i64 48) to i32**), align 8
@g_1636 = internal global i32* @g_1637, align 8
@g_1634 = internal global i32*** @g_1635, align 8
@g_1635 = internal global i32** @g_1636, align 8
@g_954 = internal global i32** getelementptr inbounds ([7 x i32*], [7 x i32*]* @g_186, i32 0, i32 0), align 8
@g_1472 = internal global i16** @g_1473, align 8
@g_1473 = internal constant i16* @g_924, align 8
@g_1571 = internal global i32** bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i32*]* @g_186 to i8*), i64 24) to i32**), align 8
@g_322 = internal global [1 x i16***] [i16*** bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i16**]* @g_323 to i8*), i64 16) to i16***)], align 8
@g_186 = internal global [7 x i32*] [i32* @g_73, i32* @g_73, i32* @g_73, i32* @g_73, i32* @g_73, i32* @g_73, i32* @g_73], align 16
@g_323 = internal global [6 x i16**] zeroinitializer, align 16
@g_1043 = internal global i32* null, align 8
@g_1425 = internal global i64*** @g_839, align 8
@g_839 = internal global i64** @g_840, align 8
@g_840 = internal global i64* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [3 x i64]]* @g_829 to i8*), i64 80) to i64*), align 8
@.str.44 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@g_279 = internal global <{ { i16, [2 x i8] }, { i16, [2 x i8] }, { i16, [2 x i8] }, { i16, [2 x i8] }, { i16, [2 x i8] }, { i16, [2 x i8] } }> <{ { i16, [2 x i8] } { i16 29985, [2 x i8] undef }, { i16, [2 x i8] } { i16 29985, [2 x i8] undef }, { i16, [2 x i8] } { i16 29985, [2 x i8] undef }, { i16, [2 x i8] } { i16 29985, [2 x i8] undef }, { i16, [2 x i8] } { i16 29985, [2 x i8] undef }, { i16, [2 x i8] } { i16 29985, [2 x i8] undef } }>, align 16
@.str.45 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %print_hash_value = alloca i32, align 4
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %4 = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %union.U0, align 4
  store i32 0, i32* %1
  store i32 %argc, i32* %2, align 4, !tbaa !1
  store i8** %argv, i8*** %3, align 8, !tbaa !5
  %7 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %j to i8*
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
  %91 = getelementptr %union.U0, %union.U0* %6, i32 0, i32 0
  store i32 %90, i32* %91, align 4
  %92 = load i8, i8* @g_6, align 1, !tbaa !9
  %93 = sext i8 %92 to i64
  %94 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %93, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %94)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %95

; <label>:95                                      ; preds = %111, %89
  %96 = load i32, i32* %i, align 4, !tbaa !1
  %97 = icmp slt i32 %96, 4
  br i1 %97, label %98, label %114

; <label>:98                                      ; preds = %95
  %99 = load i32, i32* %i, align 4, !tbaa !1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [4 x i32], [4 x i32]* @g_32, i32 0, i64 %100
  %102 = load i32, i32* %101, align 4, !tbaa !1
  %103 = zext i32 %102 to i64
  %104 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %103, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32 %104)
  %105 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

; <label>:107                                     ; preds = %98
  %108 = load i32, i32* %i, align 4, !tbaa !1
  %109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i32 %108)
  br label %110

; <label>:110                                     ; preds = %107, %98
  br label %111

; <label>:111                                     ; preds = %110
  %112 = load i32, i32* %i, align 4, !tbaa !1
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %i, align 4, !tbaa !1
  br label %95

; <label>:114                                     ; preds = %95
  %115 = load volatile i32, i32* @g_72, align 4, !tbaa !1
  %116 = sext i32 %115 to i64
  %117 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %116, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %117)
  %118 = load i32, i32* @g_73, align 4, !tbaa !1
  %119 = sext i32 %118 to i64
  %120 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %119, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 %120)
  %121 = load i64, i64* @g_90, align 8, !tbaa !7
  %122 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %121, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 %122)
  %123 = load i64, i64* @g_100, align 8, !tbaa !7
  %124 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %123, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i32 %124)
  %125 = load i16, i16* @g_107, align 2, !tbaa !10
  %126 = zext i16 %125 to i64
  %127 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %126, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i32 %127)
  %128 = load i8, i8* @g_126, align 1, !tbaa !9
  %129 = sext i8 %128 to i64
  %130 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %129, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 %130)
  %131 = load i16, i16* @g_128, align 2, !tbaa !10
  %132 = sext i16 %131 to i64
  %133 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %132, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i32 %133)
  %134 = load i8, i8* @g_139, align 1, !tbaa !9
  %135 = zext i8 %134 to i64
  %136 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %135, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i32 %136)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %137

; <label>:137                                     ; preds = %152, %114
  %138 = load i32, i32* %i, align 4, !tbaa !1
  %139 = icmp slt i32 %138, 9
  br i1 %139, label %140, label %155

; <label>:140                                     ; preds = %137
  %141 = load i32, i32* %i, align 4, !tbaa !1
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [9 x i64], [9 x i64]* @g_149, i32 0, i64 %142
  %144 = load i64, i64* %143, align 8, !tbaa !7
  %145 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %144, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i32 %145)
  %146 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %151

; <label>:148                                     ; preds = %140
  %149 = load i32, i32* %i, align 4, !tbaa !1
  %150 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i32 %149)
  br label %151

; <label>:151                                     ; preds = %148, %140
  br label %152

; <label>:152                                     ; preds = %151
  %153 = load i32, i32* %i, align 4, !tbaa !1
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %i, align 4, !tbaa !1
  br label %137

; <label>:155                                     ; preds = %137
  %156 = load volatile i16, i16* @g_161, align 2, !tbaa !10
  %157 = zext i16 %156 to i64
  %158 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %157, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i32 %158)
  %159 = load i64, i64* @g_227, align 8, !tbaa !7
  %160 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %159, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 %160)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %161

; <label>:161                                     ; preds = %177, %155
  %162 = load i32, i32* %i, align 4, !tbaa !1
  %163 = icmp slt i32 %162, 10
  br i1 %163, label %164, label %180

; <label>:164                                     ; preds = %161
  %165 = load i32, i32* %i, align 4, !tbaa !1
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [10 x i8], [10 x i8]* @g_245, i32 0, i64 %166
  %168 = load i8, i8* %167, align 1, !tbaa !9
  %169 = zext i8 %168 to i64
  %170 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %169, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i32 %170)
  %171 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %176

; <label>:173                                     ; preds = %164
  %174 = load i32, i32* %i, align 4, !tbaa !1
  %175 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i32 %174)
  br label %176

; <label>:176                                     ; preds = %173, %164
  br label %177

; <label>:177                                     ; preds = %176
  %178 = load i32, i32* %i, align 4, !tbaa !1
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %i, align 4, !tbaa !1
  br label %161

; <label>:180                                     ; preds = %161
  %181 = load i8, i8* @g_255, align 1, !tbaa !9
  %182 = sext i8 %181 to i64
  %183 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %182, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i32 %183)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %184

; <label>:184                                     ; preds = %201, %180
  %185 = load i32, i32* %i, align 4, !tbaa !1
  %186 = icmp slt i32 %185, 6
  br i1 %186, label %187, label %204

; <label>:187                                     ; preds = %184
  %188 = load i32, i32* %i, align 4, !tbaa !1
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [6 x %union.U0], [6 x %union.U0]* bitcast (<{ { i16, [2 x i8] }, { i16, [2 x i8] }, { i16, [2 x i8] }, { i16, [2 x i8] }, { i16, [2 x i8] }, { i16, [2 x i8] } }>* @g_279 to [6 x %union.U0]*), i32 0, i64 %189
  %191 = bitcast %union.U0* %190 to i16*
  %192 = load i16, i16* %191, align 2, !tbaa !10
  %193 = zext i16 %192 to i64
  %194 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %193, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0), i32 %194)
  %195 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %200

; <label>:197                                     ; preds = %187
  %198 = load i32, i32* %i, align 4, !tbaa !1
  %199 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i32 %198)
  br label %200

; <label>:200                                     ; preds = %197, %187
  br label %201

; <label>:201                                     ; preds = %200
  %202 = load i32, i32* %i, align 4, !tbaa !1
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %i, align 4, !tbaa !1
  br label %184

; <label>:204                                     ; preds = %184
  %205 = load volatile i64, i64* @g_296, align 8, !tbaa !7
  %206 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %205, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i32 %206)
  %207 = load i32, i32* @g_300, align 4, !tbaa !1
  %208 = zext i32 %207 to i64
  %209 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %208, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i32 %209)
  %210 = load i32, i32* @g_418, align 4, !tbaa !1
  %211 = zext i32 %210 to i64
  %212 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %211, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 %212)
  %213 = load volatile i32, i32* @g_478, align 4, !tbaa !1
  %214 = zext i32 %213 to i64
  %215 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %214, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i32 %215)
  %216 = load i32, i32* @g_554, align 4, !tbaa !1
  %217 = sext i32 %216 to i64
  %218 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %217, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i32 %218)
  %219 = load i32, i32* @g_752, align 4, !tbaa !1
  %220 = sext i32 %219 to i64
  %221 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %220, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 %221)
  %222 = load i16, i16* @g_778, align 2, !tbaa !10
  %223 = sext i16 %222 to i64
  %224 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %223, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %224)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %225

; <label>:225                                     ; preds = %241, %204
  %226 = load i32, i32* %i, align 4, !tbaa !1
  %227 = icmp slt i32 %226, 6
  br i1 %227, label %228, label %244

; <label>:228                                     ; preds = %225
  %229 = load i32, i32* %i, align 4, !tbaa !1
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds [6 x i16], [6 x i16]* @g_817, i32 0, i64 %230
  %232 = load volatile i16, i16* %231, align 2, !tbaa !10
  %233 = sext i16 %232 to i64
  %234 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %233, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), i32 %234)
  %235 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %240

; <label>:237                                     ; preds = %228
  %238 = load i32, i32* %i, align 4, !tbaa !1
  %239 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i32 %238)
  br label %240

; <label>:240                                     ; preds = %237, %228
  br label %241

; <label>:241                                     ; preds = %240
  %242 = load i32, i32* %i, align 4, !tbaa !1
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %i, align 4, !tbaa !1
  br label %225

; <label>:244                                     ; preds = %225
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %245

; <label>:245                                     ; preds = %272, %244
  %246 = load i32, i32* %i, align 4, !tbaa !1
  %247 = icmp slt i32 %246, 5
  br i1 %247, label %248, label %275

; <label>:248                                     ; preds = %245
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %249

; <label>:249                                     ; preds = %268, %248
  %250 = load i32, i32* %j, align 4, !tbaa !1
  %251 = icmp slt i32 %250, 3
  br i1 %251, label %252, label %271

; <label>:252                                     ; preds = %249
  %253 = load i32, i32* %j, align 4, !tbaa !1
  %254 = sext i32 %253 to i64
  %255 = load i32, i32* %i, align 4, !tbaa !1
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds [5 x [3 x i64]], [5 x [3 x i64]]* @g_829, i32 0, i64 %256
  %258 = getelementptr inbounds [3 x i64], [3 x i64]* %257, i32 0, i64 %254
  %259 = load i64, i64* %258, align 8, !tbaa !7
  %260 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %259, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i32 0, i32 0), i32 %260)
  %261 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %267

; <label>:263                                     ; preds = %252
  %264 = load i32, i32* %i, align 4, !tbaa !1
  %265 = load i32, i32* %j, align 4, !tbaa !1
  %266 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i32 0, i32 0), i32 %264, i32 %265)
  br label %267

; <label>:267                                     ; preds = %263, %252
  br label %268

; <label>:268                                     ; preds = %267
  %269 = load i32, i32* %j, align 4, !tbaa !1
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %j, align 4, !tbaa !1
  br label %249

; <label>:271                                     ; preds = %249
  br label %272

; <label>:272                                     ; preds = %271
  %273 = load i32, i32* %i, align 4, !tbaa !1
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %i, align 4, !tbaa !1
  br label %245

; <label>:275                                     ; preds = %245
  %276 = load volatile i32, i32* @g_862, align 4, !tbaa !1
  %277 = zext i32 %276 to i64
  %278 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %277, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i32 %278)
  %279 = load volatile i32, i32* @g_881, align 4, !tbaa !1
  %280 = sext i32 %279 to i64
  %281 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %280, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i32 %281)
  %282 = load volatile i16, i16* @g_924, align 2, !tbaa !10
  %283 = sext i16 %282 to i64
  %284 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %283, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i32 %284)
  %285 = load volatile i32, i32* @g_1099, align 4, !tbaa !1
  %286 = sext i32 %285 to i64
  %287 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %286, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), i32 %287)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %288

; <label>:288                                     ; preds = %304, %275
  %289 = load i32, i32* %i, align 4, !tbaa !1
  %290 = icmp slt i32 %289, 1
  br i1 %290, label %291, label %307

; <label>:291                                     ; preds = %288
  %292 = load i32, i32* %i, align 4, !tbaa !1
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds [1 x i32], [1 x i32]* @g_1305, i32 0, i64 %293
  %295 = load volatile i32, i32* %294, align 4, !tbaa !1
  %296 = sext i32 %295 to i64
  %297 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %296, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0), i32 %297)
  %298 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %303

; <label>:300                                     ; preds = %291
  %301 = load i32, i32* %i, align 4, !tbaa !1
  %302 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i32 %301)
  br label %303

; <label>:303                                     ; preds = %300, %291
  br label %304

; <label>:304                                     ; preds = %303
  %305 = load i32, i32* %i, align 4, !tbaa !1
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %i, align 4, !tbaa !1
  br label %288

; <label>:307                                     ; preds = %288
  %308 = load i8, i8* @g_1378, align 1, !tbaa !9
  %309 = zext i8 %308 to i64
  %310 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %309, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), i32 %310)
  %311 = load i32, i32* @g_1439, align 4, !tbaa !1
  %312 = sext i32 %311 to i64
  %313 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %312, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0), i32 %313)
  %314 = load i16, i16* @g_1463, align 2, !tbaa !10
  %315 = zext i16 %314 to i64
  %316 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %315, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0), i32 %316)
  %317 = load volatile i64, i64* @g_1481, align 8, !tbaa !7
  %318 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %317, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), i32 %318)
  %319 = load volatile i32, i32* @g_1637, align 4, !tbaa !1
  %320 = sext i32 %319 to i64
  %321 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %320, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), i32 %321)
  %322 = load i16, i16* @g_1663, align 2, !tbaa !10
  %323 = sext i16 %322 to i64
  %324 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %323, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), i32 %324)
  %325 = load i64, i64* @g_1709, align 8, !tbaa !7
  %326 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %325, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i32 0, i32 0), i32 %326)
  %327 = load i8, i8* @g_1718, align 1, !tbaa !9
  %328 = sext i8 %327 to i64
  %329 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %328, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0), i32 %329)
  %330 = load i32, i32* @g_1721, align 4, !tbaa !1
  %331 = sext i32 %330 to i64
  %332 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %331, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0), i32 %332)
  %333 = load i64, i64* @g_1723, align 8, !tbaa !7
  %334 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %333, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), i32 %334)
  %335 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), i32 %335)
  %336 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %337 = zext i32 %336 to i64
  %338 = xor i64 %337, 4294967295
  %339 = trunc i64 %338 to i32
  %340 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %339, i32 %340)
  %341 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %341) #1
  %342 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %342) #1
  %343 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %343) #1
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
  %1 = alloca %union.U0, align 4
  %l_9 = alloca i32, align 4
  %l_33 = alloca i64, align 8
  %l_1704 = alloca i8, align 1
  %l_1705 = alloca i32, align 4
  %l_1722 = alloca [4 x i32*], align 16
  %l_1728 = alloca i16, align 2
  %l_1729 = alloca i32, align 4
  %l_1732 = alloca i32, align 4
  %l_1733 = alloca %union.U0, align 4
  %i = alloca i32, align 4
  %2 = bitcast i32* %l_9 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 -1, i32* %l_9, align 4, !tbaa !1
  %3 = bitcast i64* %l_33 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store i64 -95101908573795158, i64* %l_33, align 8, !tbaa !7
  call void @llvm.lifetime.start(i64 1, i8* %l_1704) #1
  store i8 0, i8* %l_1704, align 1, !tbaa !9
  %4 = bitcast i32* %l_1705 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 -651243975, i32* %l_1705, align 4, !tbaa !1
  %5 = bitcast [4 x i32*]* %l_1722 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %5) #1
  %6 = bitcast i16* %l_1728 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %6) #1
  store i16 30782, i16* %l_1728, align 2, !tbaa !10
  %7 = bitcast i32* %l_1729 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 -1955940456, i32* %l_1729, align 4, !tbaa !1
  %8 = bitcast i32* %l_1732 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  store i32 -934468534, i32* %l_1732, align 4, !tbaa !1
  %9 = bitcast %union.U0* %l_1733 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast %union.U0* %l_1733 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* bitcast ({ i16, [2 x i8] }* @func_1.l_1733 to i8*), i64 4, i32 4, i1 false)
  %11 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %12

; <label>:12                                      ; preds = %19, %0
  %13 = load i32, i32* %i, align 4, !tbaa !1
  %14 = icmp slt i32 %13, 4
  br i1 %14, label %15, label %22

; <label>:15                                      ; preds = %12
  %16 = load i32, i32* %i, align 4, !tbaa !1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [4 x i32*], [4 x i32*]* %l_1722, i32 0, i64 %17
  store i32* null, i32** %18, align 8, !tbaa !5
  br label %19

; <label>:19                                      ; preds = %15
  %20 = load i32, i32* %i, align 4, !tbaa !1
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %i, align 4, !tbaa !1
  br label %12

; <label>:22                                      ; preds = %12
  %23 = load i8, i8* @g_6, align 1, !tbaa !9
  %24 = sext i8 %23 to i32
  %25 = load i8, i8* @g_6, align 1, !tbaa !9
  %26 = sext i8 %25 to i32
  %27 = load i32, i32* %l_9, align 4, !tbaa !1
  %28 = load i32, i32* %l_9, align 4, !tbaa !1
  %29 = trunc i32 %28 to i8
  %30 = load i8, i8* @g_6, align 1, !tbaa !9
  %31 = call zeroext i8 @safe_mod_func_uint8_t_u_u(i8 zeroext %29, i8 zeroext %30)
  %32 = zext i8 %31 to i64
  %33 = load i32, i32* %l_9, align 4, !tbaa !1
  %34 = load i8, i8* @g_6, align 1, !tbaa !9
  %35 = sext i8 %34 to i32
  %36 = icmp ule i32 %33, %35
  %37 = zext i1 %36 to i32
  %38 = sext i32 %37 to i64
  %39 = icmp sle i64 %38, 2264030642
  %40 = zext i1 %39 to i32
  %41 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @g_32, i32 0, i64 0), align 4, !tbaa !1
  %42 = trunc i32 %41 to i8
  %43 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @g_32, i32 0, i64 0), align 4, !tbaa !1
  %44 = zext i32 %43 to i64
  %45 = load i64, i64* %l_33, align 8, !tbaa !7
  %46 = trunc i64 %45 to i8
  %47 = call zeroext i8 @func_27(i8 zeroext 88, i8 signext %42, i64 %44, i8 zeroext %46)
  %48 = load i8, i8* %l_1704, align 1, !tbaa !9
  %49 = zext i8 %48 to i64
  %50 = and i64 8731, %49
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %l_1705, align 4, !tbaa !1
  %52 = trunc i32 %51 to i16
  %53 = load i8, i8* %l_1704, align 1, !tbaa !9
  %54 = zext i8 %53 to i16
  %55 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %52, i16 zeroext %54)
  %56 = zext i16 %55 to i32
  %57 = call i32 @func_23(i32 %56)
  %58 = load i32, i32* %l_9, align 4, !tbaa !1
  %59 = trunc i32 %58 to i16
  %60 = call i64 @func_17(i64 %32, i32 %57, i16 zeroext %59)
  %61 = load i64, i64* @g_1709, align 8, !tbaa !7
  %62 = trunc i64 %61 to i8
  %63 = load i32*, i32** @g_1233, align 8, !tbaa !5
  %64 = load i32, i32* %63, align 4, !tbaa !1
  %65 = call zeroext i8 @func_11(i64 2, i64 %60, i8 signext %62, i32 %64)
  %66 = zext i8 %65 to i64
  %67 = icmp ult i64 255, %66
  br i1 %67, label %68, label %69

; <label>:68                                      ; preds = %22
  br label %69

; <label>:69                                      ; preds = %68, %22
  %70 = phi i1 [ true, %22 ], [ true, %68 ]
  %71 = zext i1 %70 to i32
  %72 = icmp eq i32 %27, %71
  %73 = zext i1 %72 to i32
  %74 = sext i32 %73 to i64
  %75 = load i64, i64* @g_1723, align 8, !tbaa !7
  %76 = and i64 %75, %74
  store i64 %76, i64* @g_1723, align 8, !tbaa !7
  %77 = trunc i64 %76 to i32
  %78 = call i32 @safe_sub_func_uint32_t_u_u(i32 %26, i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %84, label %80

; <label>:80                                      ; preds = %69
  %81 = load i64*, i64** @g_716, align 8, !tbaa !5
  %82 = load i64, i64* %81, align 8, !tbaa !7
  %83 = icmp ne i64 %82, 0
  br label %84

; <label>:84                                      ; preds = %80, %69
  %85 = phi i1 [ true, %69 ], [ %83, %80 ]
  %86 = zext i1 %85 to i32
  %87 = call i32 @safe_mod_func_int32_t_s_s(i32 %24, i32 %86)
  %88 = sext i32 %87 to i64
  %89 = load i64, i64* @g_1709, align 8, !tbaa !7
  %90 = xor i64 %88, %89
  %91 = load volatile i32**, i32*** @g_1708, align 8, !tbaa !5
  %92 = load i32*, i32** %91, align 8, !tbaa !5
  %93 = load i32, i32* %92, align 4, !tbaa !1
  %94 = call i32 @func_2(i32 %93)
  %95 = load i32*, i32** @g_1636, align 8, !tbaa !5
  store volatile i32 %94, i32* %95, align 4, !tbaa !1
  %96 = load i32, i32* %l_1729, align 4, !tbaa !1
  %97 = add i32 %96, -1
  store i32 %97, i32* %l_1729, align 4, !tbaa !1
  %98 = load i32***, i32**** @g_1634, align 8, !tbaa !5
  %99 = load volatile i32**, i32*** %98, align 8, !tbaa !5
  %100 = load i32*, i32** %99, align 8, !tbaa !5
  %101 = load volatile i32, i32* %100, align 4, !tbaa !1
  %102 = load volatile i32**, i32*** @g_1635, align 8, !tbaa !5
  %103 = load i32*, i32** %102, align 8, !tbaa !5
  store volatile i32 %101, i32* %103, align 4, !tbaa !1
  %104 = load i32, i32* %l_1732, align 4, !tbaa !1
  %105 = load volatile i32**, i32*** @g_954, align 8, !tbaa !5
  %106 = load i32*, i32** %105, align 8, !tbaa !5
  store i32 %104, i32* %106, align 4, !tbaa !1
  %107 = bitcast %union.U0* %1 to i8*
  %108 = bitcast %union.U0* %l_1733 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %107, i8* %108, i64 4, i32 4, i1 false), !tbaa.struct !12
  %109 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %109) #1
  %110 = bitcast %union.U0* %l_1733 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %110) #1
  %111 = bitcast i32* %l_1732 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %111) #1
  %112 = bitcast i32* %l_1729 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %112) #1
  %113 = bitcast i16* %l_1728 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %113) #1
  %114 = bitcast [4 x i32*]* %l_1722 to i8*
  call void @llvm.lifetime.end(i64 32, i8* %114) #1
  %115 = bitcast i32* %l_1705 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %115) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1704) #1
  %116 = bitcast i64* %l_33 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %116) #1
  %117 = bitcast i32* %l_9 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %117) #1
  %118 = getelementptr %union.U0, %union.U0* %1, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  ret i32 %119
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
define internal i32 @func_2(i32 %p_3) #0 {
  %1 = alloca i32, align 4
  %l_1726 = alloca i16, align 2
  %2 = alloca i32
  store i32 %p_3, i32* %1, align 4, !tbaa !1
  store i64 -27, i64* @g_100, align 8, !tbaa !7
  br label %3

; <label>:3                                       ; preds = %15, %0
  %4 = load i64, i64* @g_100, align 8, !tbaa !7
  %5 = icmp ne i64 %4, 23
  br i1 %5, label %6, label %18

; <label>:6                                       ; preds = %3
  %7 = bitcast i16* %l_1726 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %7) #1
  store i16 -8, i16* %l_1726, align 2, !tbaa !10
  %8 = load i16, i16* %l_1726, align 2, !tbaa !10
  %9 = icmp ne i16 %8, 0
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %6
  store i32 2, i32* %2
  br label %12

; <label>:11                                      ; preds = %6
  store i32 0, i32* %2
  br label %12

; <label>:12                                      ; preds = %11, %10
  %13 = bitcast i16* %l_1726 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %13) #1
  %cleanup.dest = load i32, i32* %2
  switch i32 %cleanup.dest, label %19 [
    i32 0, label %14
    i32 2, label %18
  ]

; <label>:14                                      ; preds = %12
  br label %15

; <label>:15                                      ; preds = %14
  %16 = load i64, i64* @g_100, align 8, !tbaa !7
  %17 = add i64 %16, 1
  store i64 %17, i64* @g_100, align 8, !tbaa !7
  br label %3

; <label>:18                                      ; preds = %12, %3
  ret i32 -1

; <label>:19                                      ; preds = %12
  unreachable
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
define internal zeroext i8 @func_11(i64 %p_12, i64 %p_13, i8 signext %p_14, i32 %p_15) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %l_1710 = alloca i16, align 2
  %l_1716 = alloca i32*, align 8
  %l_1717 = alloca i32*, align 8
  %l_1719 = alloca i16*, align 8
  %l_1720 = alloca i32*, align 8
  store i64 %p_12, i64* %1, align 8, !tbaa !7
  store i64 %p_13, i64* %2, align 8, !tbaa !7
  store i8 %p_14, i8* %3, align 1, !tbaa !9
  store i32 %p_15, i32* %4, align 4, !tbaa !1
  %5 = bitcast i16* %l_1710 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %5) #1
  store i16 12719, i16* %l_1710, align 2, !tbaa !10
  %6 = bitcast i32** %l_1716 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i32* @g_73, i32** %l_1716, align 8, !tbaa !5
  %7 = bitcast i32** %l_1717 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store i32* @g_752, i32** %l_1717, align 8, !tbaa !5
  %8 = bitcast i16** %l_1719 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i16* @g_128, i16** %l_1719, align 8, !tbaa !5
  %9 = bitcast i32** %l_1720 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store i32* @g_1721, i32** %l_1720, align 8, !tbaa !5
  %10 = load i64, i64* %1, align 8, !tbaa !7
  %11 = load i64, i64* %2, align 8, !tbaa !7
  %12 = and i64 %10, %11
  %13 = load i32*, i32** @g_1636, align 8, !tbaa !5
  %14 = load volatile i32, i32* %13, align 4, !tbaa !1
  %15 = sext i32 %14 to i64
  %16 = and i64 %15, %12
  %17 = trunc i64 %16 to i32
  store volatile i32 %17, i32* %13, align 4, !tbaa !1
  %18 = load volatile i16**, i16*** @g_1472, align 8, !tbaa !5
  %19 = load volatile i16*, i16** %18, align 8, !tbaa !5
  %20 = load volatile i16, i16* %19, align 2, !tbaa !10
  %21 = load i32, i32* %4, align 4, !tbaa !1
  %22 = load i16, i16* %l_1710, align 2, !tbaa !10
  %23 = load i32, i32* @g_554, align 4, !tbaa !1
  %24 = trunc i32 %23 to i8
  %25 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext 1, i8 zeroext %24)
  %26 = zext i8 %25 to i32
  %27 = load i32*, i32** %l_1716, align 8, !tbaa !5
  store i32 %26, i32* %27, align 4, !tbaa !1
  %28 = load i32*, i32** %l_1717, align 8, !tbaa !5
  %29 = load i32, i32* %28, align 4, !tbaa !1
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4, !tbaa !1
  %31 = load i8, i8* @g_1718, align 1, !tbaa !9
  %32 = sext i8 %31 to i32
  %33 = or i32 %30, %32
  %34 = sext i32 %33 to i64
  %35 = or i64 -5337823113478467680, %34
  %36 = load i8, i8* %3, align 1, !tbaa !9
  %37 = sext i8 %36 to i32
  %38 = icmp slt i32 0, %37
  %39 = zext i1 %38 to i32
  %40 = sext i32 %39 to i64
  %41 = icmp slt i64 %40, 3334430290351622142
  %42 = zext i1 %41 to i32
  %43 = trunc i32 %42 to i16
  %44 = load i16*, i16** %l_1719, align 8, !tbaa !5
  store i16 %43, i16* %44, align 2, !tbaa !10
  %45 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext 1, i16 signext %43)
  %46 = sext i16 %45 to i64
  %47 = icmp slt i64 %46, 0
  %48 = zext i1 %47 to i32
  %49 = load i32*, i32** %l_1720, align 8, !tbaa !5
  %50 = load i32, i32* %49, align 4, !tbaa !1
  %51 = or i32 %50, %48
  store i32 %51, i32* %49, align 4, !tbaa !1
  %52 = load i64, i64* %2, align 8, !tbaa !7
  %53 = trunc i64 %52 to i8
  %54 = bitcast i32** %l_1720 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #1
  %55 = bitcast i16** %l_1719 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #1
  %56 = bitcast i32** %l_1717 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #1
  %57 = bitcast i32** %l_1716 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %57) #1
  %58 = bitcast i16* %l_1710 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %58) #1
  ret i8 %53
}

; Function Attrs: nounwind uwtable
define internal i64 @func_17(i64 %p_18, i32 %p_19, i16 zeroext %p_20) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i16, align 2
  %l_1706 = alloca i32*, align 8
  store i64 %p_18, i64* %1, align 8, !tbaa !7
  store i32 %p_19, i32* %2, align 4, !tbaa !1
  store i16 %p_20, i16* %3, align 2, !tbaa !10
  %4 = bitcast i32** %l_1706 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store i32* @g_752, i32** %l_1706, align 8, !tbaa !5
  %5 = load volatile i32**, i32*** @g_1571, align 8, !tbaa !5
  %6 = load i32*, i32** %5, align 8, !tbaa !5
  %7 = load i32, i32* %6, align 4, !tbaa !1
  %8 = load i32*, i32** %l_1706, align 8, !tbaa !5
  %9 = load i32, i32* %8, align 4, !tbaa !1
  %10 = xor i32 %9, %7
  store i32 %10, i32* %8, align 4, !tbaa !1
  %11 = load i32*, i32** %l_1706, align 8, !tbaa !5
  %12 = load volatile i32**, i32*** @g_1708, align 8, !tbaa !5
  store i32* %11, i32** %12, align 8, !tbaa !5
  store volatile i16 0, i16* @g_161, align 2, !tbaa !10
  br label %13

; <label>:13                                      ; preds = %21, %0
  %14 = load volatile i16, i16* @g_161, align 2, !tbaa !10
  %15 = zext i16 %14 to i32
  %16 = icmp slt i32 %15, 1
  br i1 %16, label %17, label %26

; <label>:17                                      ; preds = %13
  %18 = load volatile i16, i16* @g_161, align 2, !tbaa !10
  %19 = zext i16 %18 to i64
  %20 = getelementptr inbounds [1 x i16***], [1 x i16***]* @g_322, i32 0, i64 %19
  store i16*** null, i16**** %20, align 8, !tbaa !5
  br label %21

; <label>:21                                      ; preds = %17
  %22 = load volatile i16, i16* @g_161, align 2, !tbaa !10
  %23 = zext i16 %22 to i32
  %24 = add nsw i32 %23, 1
  %25 = trunc i32 %24 to i16
  store volatile i16 %25, i16* @g_161, align 2, !tbaa !10
  br label %13

; <label>:26                                      ; preds = %13
  %27 = load i64*, i64** @g_716, align 8, !tbaa !5
  %28 = load i64, i64* %27, align 8, !tbaa !7
  %29 = bitcast i32** %l_1706 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  ret i64 %28
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
define internal i32 @func_23(i32 %p_24) #0 {
  %1 = alloca i32, align 4
  store i32 %p_24, i32* %1, align 4, !tbaa !1
  %2 = load volatile i32, i32* @g_72, align 4, !tbaa !1
  ret i32 %2
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
define internal zeroext i8 @func_27(i8 zeroext %p_28, i8 signext %p_29, i64 %p_30, i8 zeroext %p_31) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  %3 = alloca i64, align 8
  %4 = alloca i8, align 1
  %l_47 = alloca i16, align 2
  %l_58 = alloca i32, align 4
  %l_1664 = alloca i32, align 4
  %l_1681 = alloca i32**, align 8
  %l_1702 = alloca i32*, align 8
  %l_1703 = alloca i32**, align 8
  %l_59 = alloca i32, align 4
  %l_1662 = alloca i8*, align 8
  %l_1665 = alloca i32, align 4
  %l_1666 = alloca i8*, align 8
  %l_1680 = alloca i16*, align 8
  %l_1679 = alloca i16**, align 8
  %l_1697 = alloca i64****, align 8
  store i8 %p_28, i8* %1, align 1, !tbaa !9
  store i8 %p_29, i8* %2, align 1, !tbaa !9
  store i64 %p_30, i64* %3, align 8, !tbaa !7
  store i8 %p_31, i8* %4, align 1, !tbaa !9
  %5 = bitcast i16* %l_47 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %5) #1
  store i16 -7, i16* %l_47, align 2, !tbaa !10
  %6 = bitcast i32* %l_58 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 -911728643, i32* %l_58, align 4, !tbaa !1
  %7 = bitcast i32* %l_1664 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 748632488, i32* %l_1664, align 4, !tbaa !1
  %8 = bitcast i32*** %l_1681 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i32** null, i32*** %l_1681, align 8, !tbaa !5
  %9 = bitcast i32** %l_1702 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store i32* null, i32** %l_1702, align 8, !tbaa !5
  %10 = bitcast i32*** %l_1703 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i32** @g_1043, i32*** %l_1703, align 8, !tbaa !5
  store i8 -28, i8* %4, align 1, !tbaa !9
  br label %11

; <label>:11                                      ; preds = %30, %0
  %12 = load i8, i8* %4, align 1, !tbaa !9
  %13 = zext i8 %12 to i32
  %14 = icmp sle i32 %13, 43
  br i1 %14, label %15, label %35

; <label>:15                                      ; preds = %11
  %16 = bitcast i32* %l_59 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  store i32 -458932598, i32* %l_59, align 4, !tbaa !1
  %17 = bitcast i8** %l_1662 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @g_245, i32 0, i64 0), i8** %l_1662, align 8, !tbaa !5
  %18 = bitcast i32* %l_1665 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  store i32 0, i32* %l_1665, align 4, !tbaa !1
  %19 = bitcast i8** %l_1666 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  store i8* @g_255, i8** %l_1666, align 8, !tbaa !5
  %20 = bitcast i16** %l_1680 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  store i16* @g_1463, i16** %l_1680, align 8, !tbaa !5
  %21 = bitcast i16*** %l_1679 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  store i16** %l_1680, i16*** %l_1679, align 8, !tbaa !5
  %22 = bitcast i64***** %l_1697 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #1
  store i64**** @g_1425, i64***** %l_1697, align 8, !tbaa !5
  %23 = bitcast i64***** %l_1697 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = bitcast i16*** %l_1679 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = bitcast i16** %l_1680 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  %26 = bitcast i8** %l_1666 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  %27 = bitcast i32* %l_1665 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  %28 = bitcast i8** %l_1662 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  %29 = bitcast i32* %l_59 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
  br label %30

; <label>:30                                      ; preds = %15
  %31 = load i8, i8* %4, align 1, !tbaa !9
  %32 = zext i8 %31 to i64
  %33 = call i64 @safe_add_func_int64_t_s_s(i64 %32, i64 2)
  %34 = trunc i64 %33 to i8
  store i8 %34, i8* %4, align 1, !tbaa !9
  br label %11

; <label>:35                                      ; preds = %11
  %36 = load i32*, i32** %l_1702, align 8, !tbaa !5
  %37 = load i32**, i32*** %l_1703, align 8, !tbaa !5
  store i32* %36, i32** %37, align 8, !tbaa !5
  %38 = load i8, i8* %1, align 1, !tbaa !9
  %39 = bitcast i32*** %l_1703 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  %40 = bitcast i32** %l_1702 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  %41 = bitcast i32*** %l_1681 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  %42 = bitcast i32* %l_1664 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  %43 = bitcast i32* %l_58 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  %44 = bitcast i16* %l_47 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %44) #1
  ret i8 %38
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
!12 = !{i64 0, i64 2, !10, i64 0, i64 4, !1, i64 0, i64 4, !1}
