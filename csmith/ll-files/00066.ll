; ModuleID = '00066.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_9 = internal constant i8 -34, align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"g_9\00", align 1
@g_10 = internal global [1 x i32] [i32 -1398967329], align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"g_10[i]\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_12 = internal global i16 0, align 2
@.str.4 = private unnamed_addr constant [5 x i8] c"g_12\00", align 1
@g_14 = internal global i32 372006167, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"g_14\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@.str.6 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %i = alloca i32, align 4
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
  %7 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 0, i32* %print_hash_value, align 4, !tbaa !1
  %8 = load i32, i32* %2, align 4, !tbaa !1
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %10, label %87

; <label>:10                                      ; preds = %0
  %11 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i64 1) to i64), i64 ptrtoint ([2 x i8]* @.str to i64)), i64 1), label %13, label %75

; <label>:13                                      ; preds = %10
  store i64 1, i64* %__s2_len, align 8, !tbaa !7
  %14 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %15 = icmp ult i64 %14, 4
  br i1 %15, label %16, label %75

; <label>:16                                      ; preds = %13
  %17 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  %18 = load i8**, i8*** %3, align 8, !tbaa !5
  %19 = getelementptr inbounds i8*, i8** %18, i64 1
  %20 = load i8*, i8** %19, align 8, !tbaa !5
  store i8* %20, i8** %__s1, align 8, !tbaa !5
  %21 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = load i8*, i8** %__s1, align 8, !tbaa !5
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1, !tbaa !9
  %25 = zext i8 %24 to i32
  %26 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), align 1, !tbaa !9
  %27 = zext i8 %26 to i32
  %28 = sub nsw i32 %25, %27
  store i32 %28, i32* %__result, align 4, !tbaa !1
  %29 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %30 = icmp ugt i64 %29, 0
  br i1 %30, label %31, label %70

; <label>:31                                      ; preds = %16
  %32 = load i32, i32* %__result, align 4, !tbaa !1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %70

; <label>:34                                      ; preds = %31
  %35 = load i8*, i8** %__s1, align 8, !tbaa !5
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  %37 = load i8, i8* %36, align 1, !tbaa !9
  %38 = zext i8 %37 to i32
  %39 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i64 1), align 1, !tbaa !9
  %40 = zext i8 %39 to i32
  %41 = sub nsw i32 %38, %40
  store i32 %41, i32* %__result, align 4, !tbaa !1
  %42 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %43 = icmp ugt i64 %42, 1
  br i1 %43, label %44, label %69

; <label>:44                                      ; preds = %34
  %45 = load i32, i32* %__result, align 4, !tbaa !1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %69

; <label>:47                                      ; preds = %44
  %48 = load i8*, i8** %__s1, align 8, !tbaa !5
  %49 = getelementptr inbounds i8, i8* %48, i64 2
  %50 = load i8, i8* %49, align 1, !tbaa !9
  %51 = zext i8 %50 to i32
  %52 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i64 2), align 1, !tbaa !9
  %53 = zext i8 %52 to i32
  %54 = sub nsw i32 %51, %53
  store i32 %54, i32* %__result, align 4, !tbaa !1
  %55 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %56 = icmp ugt i64 %55, 2
  br i1 %56, label %57, label %68

; <label>:57                                      ; preds = %47
  %58 = load i32, i32* %__result, align 4, !tbaa !1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %68

; <label>:60                                      ; preds = %57
  %61 = load i8*, i8** %__s1, align 8, !tbaa !5
  %62 = getelementptr inbounds i8, i8* %61, i64 3
  %63 = load i8, i8* %62, align 1, !tbaa !9
  %64 = zext i8 %63 to i32
  %65 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i64 3), align 1, !tbaa !9
  %66 = zext i8 %65 to i32
  %67 = sub nsw i32 %64, %66
  store i32 %67, i32* %__result, align 4, !tbaa !1
  br label %68

; <label>:68                                      ; preds = %60, %57, %47
  br label %69

; <label>:69                                      ; preds = %68, %44, %34
  br label %70

; <label>:70                                      ; preds = %69, %31, %16
  %71 = load i32, i32* %__result, align 4, !tbaa !1
  store i32 %71, i32* %5, !tbaa !1
  %72 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #1
  %73 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #1
  %74 = load i32, i32* %5, !tbaa !1
  br label %80

; <label>:75                                      ; preds = %13, %10
  %76 = load i8**, i8*** %3, align 8, !tbaa !5
  %77 = getelementptr inbounds i8*, i8** %76, i64 1
  %78 = load i8*, i8** %77, align 8, !tbaa !5
  %79 = call i32 @strcmp(i8* %78, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0)) #1
  br label %80

; <label>:80                                      ; preds = %75, %70
  %81 = phi i32 [ %74, %70 ], [ %79, %75 ]
  store i32 %81, i32* %4, !tbaa !1
  %82 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %82) #1
  %83 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %83) #1
  %84 = load i32, i32* %4, !tbaa !1
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %87

; <label>:86                                      ; preds = %80
  store i32 1, i32* %print_hash_value, align 4, !tbaa !1
  br label %87

; <label>:87                                      ; preds = %86, %80, %0
  call void @platform_main_begin()
  call void @crc32_gentab()
  %88 = call i32 @func_1()
  %89 = load volatile i8, i8* @g_9, align 1, !tbaa !9
  %90 = zext i8 %89 to i64
  %91 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %90, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %91)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %92

; <label>:92                                      ; preds = %108, %87
  %93 = load i32, i32* %i, align 4, !tbaa !1
  %94 = icmp slt i32 %93, 1
  br i1 %94, label %95, label %111

; <label>:95                                      ; preds = %92
  %96 = load i32, i32* %i, align 4, !tbaa !1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [1 x i32], [1 x i32]* @g_10, i32 0, i64 %97
  %99 = load i32, i32* %98, align 4, !tbaa !1
  %100 = zext i32 %99 to i64
  %101 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %100, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32 %101)
  %102 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

; <label>:104                                     ; preds = %95
  %105 = load i32, i32* %i, align 4, !tbaa !1
  %106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i32 %105)
  br label %107

; <label>:107                                     ; preds = %104, %95
  br label %108

; <label>:108                                     ; preds = %107
  %109 = load i32, i32* %i, align 4, !tbaa !1
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %i, align 4, !tbaa !1
  br label %92

; <label>:111                                     ; preds = %92
  %112 = load i16, i16* @g_12, align 2, !tbaa !10
  %113 = sext i16 %112 to i64
  %114 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %113, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %114)
  %115 = load i32, i32* @g_14, align 4, !tbaa !1
  %116 = sext i32 %115 to i64
  %117 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %116, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 %117)
  %118 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %119 = zext i32 %118 to i64
  %120 = xor i64 %119, 4294967295
  %121 = trunc i64 %120 to i32
  %122 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %121, i32 %122)
  %123 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %123) #1
  %124 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %124) #1
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
  %l_4 = alloca i64, align 8
  %l_11 = alloca i16*, align 8
  %l_13 = alloca [7 x i32*], align 16
  %l_15 = alloca i32, align 4
  %i = alloca i32, align 4
  %1 = bitcast i64* %l_4 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store i64 2676831528538372432, i64* %l_4, align 8, !tbaa !7
  %2 = bitcast i16** %l_11 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store i16* @g_12, i16** %l_11, align 8, !tbaa !5
  %3 = bitcast [7 x i32*]* %l_13 to i8*
  call void @llvm.lifetime.start(i64 56, i8* %3) #1
  %4 = bitcast i32* %l_15 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 8, i32* %l_15, align 4, !tbaa !1
  %5 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %6

; <label>:6                                       ; preds = %13, %0
  %7 = load i32, i32* %i, align 4, !tbaa !1
  %8 = icmp slt i32 %7, 7
  br i1 %8, label %9, label %16

; <label>:9                                       ; preds = %6
  %10 = load i32, i32* %i, align 4, !tbaa !1
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [7 x i32*], [7 x i32*]* %l_13, i32 0, i64 %11
  store i32* @g_14, i32** %12, align 8, !tbaa !5
  br label %13

; <label>:13                                      ; preds = %9
  %14 = load i32, i32* %i, align 4, !tbaa !1
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %i, align 4, !tbaa !1
  br label %6

; <label>:16                                      ; preds = %6
  %17 = call zeroext i16 @safe_rshift_func_uint16_t_u_u(i16 zeroext -16963, i32 -1105692336)
  %18 = zext i16 %17 to i32
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

; <label>:20                                      ; preds = %16
  br label %21

; <label>:21                                      ; preds = %20, %16
  %22 = phi i1 [ false, %16 ], [ true, %20 ]
  %23 = zext i1 %22 to i32
  %24 = trunc i32 %23 to i16
  %25 = load volatile i8, i8* @g_9, align 1, !tbaa !9
  %26 = zext i8 %25 to i64
  %27 = icmp uge i64 %26, 2676831528538372432
  %28 = zext i1 %27 to i32
  %29 = call zeroext i16 @safe_rshift_func_uint16_t_u_u(i16 zeroext %24, i32 %28)
  %30 = zext i16 %29 to i64
  %31 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_10, i32 0, i64 0), align 4, !tbaa !1
  %32 = zext i32 %31 to i64
  %33 = and i64 0, %32
  %34 = or i64 %30, %33
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

; <label>:36                                      ; preds = %21
  %37 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_10, i32 0, i64 0), align 4, !tbaa !1
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

; <label>:39                                      ; preds = %36
  %40 = load volatile i8, i8* @g_9, align 1, !tbaa !9
  %41 = zext i8 %40 to i32
  %42 = icmp ne i32 %41, 0
  br label %43

; <label>:43                                      ; preds = %39, %36, %21
  %44 = phi i1 [ false, %36 ], [ false, %21 ], [ %42, %39 ]
  %45 = zext i1 %44 to i32
  %46 = load i16*, i16** %l_11, align 8, !tbaa !5
  %47 = load i16, i16* %46, align 2, !tbaa !10
  %48 = sext i16 %47 to i32
  %49 = and i32 %48, %45
  %50 = trunc i32 %49 to i16
  store i16 %50, i16* %46, align 2, !tbaa !10
  %51 = sext i16 %50 to i64
  %52 = icmp eq i64 2676831528538372432, %51
  %53 = zext i1 %52 to i32
  %54 = trunc i32 %53 to i8
  %55 = call signext i8 @safe_lshift_func_int8_t_s_s(i8 signext %54, i32 2)
  %56 = sext i8 %55 to i64
  %57 = icmp eq i64 %56, 5834047506948657144
  %58 = zext i1 %57 to i32
  %59 = load i32, i32* %l_15, align 4, !tbaa !1
  %60 = or i32 %59, %58
  store i32 %60, i32* %l_15, align 4, !tbaa !1
  %61 = load i16, i16* @g_12, align 2, !tbaa !10
  %62 = sext i16 %61 to i32
  %63 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #1
  %64 = bitcast i32* %l_15 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  %65 = bitcast [7 x i32*]* %l_13 to i8*
  call void @llvm.lifetime.end(i64 56, i8* %65) #1
  %66 = bitcast i16** %l_11 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #1
  %67 = bitcast i64* %l_4 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #1
  ret i32 %62
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
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i32 0, i32 0), i8* %8, i64 %11)
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
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i32 %3)
  ret void
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
