; ModuleID = '00259.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_7 = internal global i32 1786079795, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"g_7\00", align 1
@g_8 = internal global [7 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], align 16
@.str.2 = private unnamed_addr constant [7 x i8] c"g_8[i]\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_10 = internal global i8 81, align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"g_10\00", align 1
@g_13 = internal global i32 3, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"g_13\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@func_1.l_9 = private unnamed_addr constant [8 x [7 x i8*]] [[7 x i8*] [i8* @g_10, i8* @g_10, i8* @g_10, i8* @g_10, i8* @g_10, i8* @g_10, i8* @g_10], [7 x i8*] [i8* @g_10, i8* @g_10, i8* @g_10, i8* @g_10, i8* @g_10, i8* @g_10, i8* @g_10], [7 x i8*] [i8* @g_10, i8* @g_10, i8* @g_10, i8* null, i8* @g_10, i8* null, i8* @g_10], [7 x i8*] [i8* @g_10, i8* @g_10, i8* @g_10, i8* @g_10, i8* @g_10, i8* @g_10, i8* @g_10], [7 x i8*] [i8* @g_10, i8* null, i8* @g_10, i8* @g_10, i8* @g_10, i8* null, i8* @g_10], [7 x i8*] [i8* @g_10, i8* @g_10, i8* @g_10, i8* @g_10, i8* @g_10, i8* @g_10, i8* @g_10], [7 x i8*] [i8* @g_10, i8* null, i8* @g_10, i8* null, i8* @g_10, i8* @g_10, i8* @g_10], [7 x i8*] [i8* @g_10, i8* @g_10, i8* @g_10, i8* @g_10, i8* @g_10, i8* @g_10, i8* @g_10]], align 16
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
  %88 = call i64 @func_1()
  %89 = load volatile i32, i32* @g_7, align 4, !tbaa !1
  %90 = zext i32 %89 to i64
  %91 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %90, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %91)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %92

; <label>:92                                      ; preds = %108, %87
  %93 = load i32, i32* %i, align 4, !tbaa !1
  %94 = icmp slt i32 %93, 7
  br i1 %94, label %95, label %111

; <label>:95                                      ; preds = %92
  %96 = load i32, i32* %i, align 4, !tbaa !1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [7 x i32], [7 x i32]* @g_8, i32 0, i64 %97
  %99 = load i32, i32* %98, align 4, !tbaa !1
  %100 = sext i32 %99 to i64
  %101 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %100, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i32 %101)
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
  %112 = load i8, i8* @g_10, align 1, !tbaa !9
  %113 = sext i8 %112 to i64
  %114 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %113, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %114)
  %115 = load i32, i32* @g_13, align 4, !tbaa !1
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
define internal i64 @func_1() #0 {
  %l_4 = alloca i32, align 4
  %l_9 = alloca [8 x [7 x i8*]], align 16
  %l_11 = alloca i8, align 1
  %l_12 = alloca [1 x i32*], align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %1 = bitcast i32* %l_4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 -3, i32* %l_4, align 4, !tbaa !1
  %2 = bitcast [8 x [7 x i8*]]* %l_9 to i8*
  call void @llvm.lifetime.start(i64 448, i8* %2) #1
  %3 = bitcast [8 x [7 x i8*]]* %l_9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* bitcast ([8 x [7 x i8*]]* @func_1.l_9 to i8*), i64 448, i32 16, i1 false)
  call void @llvm.lifetime.start(i64 1, i8* %l_11) #1
  store i8 7, i8* %l_11, align 1, !tbaa !9
  %4 = bitcast [1 x i32*]* %l_12 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %7

; <label>:7                                       ; preds = %14, %0
  %8 = load i32, i32* %i, align 4, !tbaa !1
  %9 = icmp slt i32 %8, 1
  br i1 %9, label %10, label %17

; <label>:10                                      ; preds = %7
  %11 = load i32, i32* %i, align 4, !tbaa !1
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_12, i32 0, i64 %12
  store i32* @g_13, i32** %13, align 8, !tbaa !5
  br label %14

; <label>:14                                      ; preds = %10
  %15 = load i32, i32* %i, align 4, !tbaa !1
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %i, align 4, !tbaa !1
  br label %7

; <label>:17                                      ; preds = %7
  %18 = load i32, i32* %l_4, align 4, !tbaa !1
  %19 = trunc i32 %18 to i8
  %20 = load volatile i32, i32* @g_7, align 4, !tbaa !1
  %21 = trunc i32 %20 to i8
  %22 = load i32, i32* getelementptr inbounds ([7 x i32], [7 x i32]* @g_8, i32 0, i64 4), align 4, !tbaa !1
  %23 = trunc i32 %22 to i8
  store i8 %23, i8* %l_11, align 1, !tbaa !9
  %24 = call signext i8 @safe_mod_func_int8_t_s_s(i8 signext %21, i8 signext %23)
  %25 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %19, i8 signext %24)
  %26 = sext i8 %25 to i32
  %27 = load i32, i32* @g_13, align 4, !tbaa !1
  %28 = and i32 %27, %26
  store i32 %28, i32* @g_13, align 4, !tbaa !1
  %29 = load i8, i8* @g_10, align 1, !tbaa !9
  %30 = sext i8 %29 to i64
  %31 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  %32 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  %33 = bitcast [1 x i32*]* %l_12 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_11) #1
  %34 = bitcast [8 x [7 x i8*]]* %l_9 to i8*
  call void @llvm.lifetime.end(i64 448, i8* %34) #1
  %35 = bitcast i32* %l_4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  ret i64 %30
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

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

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
