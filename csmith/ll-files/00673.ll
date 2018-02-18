; ModuleID = '00673.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_3 = internal global i32 1682205034, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"g_3\00", align 1
@g_7 = internal global i8 -102, align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"g_7\00", align 1
@g_13 = internal global i64 -9, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"g_13\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@.str.4 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
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
  %6 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 0, i32* %print_hash_value, align 4, !tbaa !1
  %7 = load i32, i32* %2, align 4, !tbaa !1
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %9, label %86

; <label>:9                                       ; preds = %0
  %10 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i64 1) to i64), i64 ptrtoint ([2 x i8]* @.str to i64)), i64 1), label %12, label %74

; <label>:12                                      ; preds = %9
  store i64 1, i64* %__s2_len, align 8, !tbaa !7
  %13 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %14 = icmp ult i64 %13, 4
  br i1 %14, label %15, label %74

; <label>:15                                      ; preds = %12
  %16 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = load i8**, i8*** %3, align 8, !tbaa !5
  %18 = getelementptr inbounds i8*, i8** %17, i64 1
  %19 = load i8*, i8** %18, align 8, !tbaa !5
  store i8* %19, i8** %__s1, align 8, !tbaa !5
  %20 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = load i8*, i8** %__s1, align 8, !tbaa !5
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1, !tbaa !9
  %24 = zext i8 %23 to i32
  %25 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), align 1, !tbaa !9
  %26 = zext i8 %25 to i32
  %27 = sub nsw i32 %24, %26
  store i32 %27, i32* %__result, align 4, !tbaa !1
  %28 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %29 = icmp ugt i64 %28, 0
  br i1 %29, label %30, label %69

; <label>:30                                      ; preds = %15
  %31 = load i32, i32* %__result, align 4, !tbaa !1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %69

; <label>:33                                      ; preds = %30
  %34 = load i8*, i8** %__s1, align 8, !tbaa !5
  %35 = getelementptr inbounds i8, i8* %34, i64 1
  %36 = load i8, i8* %35, align 1, !tbaa !9
  %37 = zext i8 %36 to i32
  %38 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i64 1), align 1, !tbaa !9
  %39 = zext i8 %38 to i32
  %40 = sub nsw i32 %37, %39
  store i32 %40, i32* %__result, align 4, !tbaa !1
  %41 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %42 = icmp ugt i64 %41, 1
  br i1 %42, label %43, label %68

; <label>:43                                      ; preds = %33
  %44 = load i32, i32* %__result, align 4, !tbaa !1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %68

; <label>:46                                      ; preds = %43
  %47 = load i8*, i8** %__s1, align 8, !tbaa !5
  %48 = getelementptr inbounds i8, i8* %47, i64 2
  %49 = load i8, i8* %48, align 1, !tbaa !9
  %50 = zext i8 %49 to i32
  %51 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i64 2), align 1, !tbaa !9
  %52 = zext i8 %51 to i32
  %53 = sub nsw i32 %50, %52
  store i32 %53, i32* %__result, align 4, !tbaa !1
  %54 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %55 = icmp ugt i64 %54, 2
  br i1 %55, label %56, label %67

; <label>:56                                      ; preds = %46
  %57 = load i32, i32* %__result, align 4, !tbaa !1
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %67

; <label>:59                                      ; preds = %56
  %60 = load i8*, i8** %__s1, align 8, !tbaa !5
  %61 = getelementptr inbounds i8, i8* %60, i64 3
  %62 = load i8, i8* %61, align 1, !tbaa !9
  %63 = zext i8 %62 to i32
  %64 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i64 3), align 1, !tbaa !9
  %65 = zext i8 %64 to i32
  %66 = sub nsw i32 %63, %65
  store i32 %66, i32* %__result, align 4, !tbaa !1
  br label %67

; <label>:67                                      ; preds = %59, %56, %46
  br label %68

; <label>:68                                      ; preds = %67, %43, %33
  br label %69

; <label>:69                                      ; preds = %68, %30, %15
  %70 = load i32, i32* %__result, align 4, !tbaa !1
  store i32 %70, i32* %5, !tbaa !1
  %71 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #1
  %72 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #1
  %73 = load i32, i32* %5, !tbaa !1
  br label %79

; <label>:74                                      ; preds = %12, %9
  %75 = load i8**, i8*** %3, align 8, !tbaa !5
  %76 = getelementptr inbounds i8*, i8** %75, i64 1
  %77 = load i8*, i8** %76, align 8, !tbaa !5
  %78 = call i32 @strcmp(i8* %77, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0)) #1
  br label %79

; <label>:79                                      ; preds = %74, %69
  %80 = phi i32 [ %73, %69 ], [ %78, %74 ]
  store i32 %80, i32* %4, !tbaa !1
  %81 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #1
  %82 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %82) #1
  %83 = load i32, i32* %4, !tbaa !1
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %86

; <label>:85                                      ; preds = %79
  store i32 1, i32* %print_hash_value, align 4, !tbaa !1
  br label %86

; <label>:86                                      ; preds = %85, %79, %0
  call void @platform_main_begin()
  call void @crc32_gentab()
  %87 = call i64 @func_1()
  %88 = load i32, i32* @g_3, align 4, !tbaa !1
  %89 = sext i32 %88 to i64
  %90 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %89, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %90)
  %91 = load volatile i8, i8* @g_7, align 1, !tbaa !9
  %92 = zext i8 %91 to i64
  %93 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 %93)
  %94 = load i64, i64* @g_13, align 8, !tbaa !7
  %95 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %94, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 %95)
  %96 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %97 = zext i32 %96 to i64
  %98 = xor i64 %97, 4294967295
  %99 = trunc i64 %98 to i32
  %100 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %99, i32 %100)
  %101 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %101) #1
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
  %l_2 = alloca i32*, align 8
  %l_4 = alloca i32*, align 8
  %l_5 = alloca [1 x i32*], align 8
  %l_6 = alloca [9 x i32], align 16
  %l_12 = alloca [3 x [3 x i64*]], align 16
  %l_14 = alloca [5 x [4 x [6 x i32**]]], align 16
  %l_15 = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %1 = bitcast i32** %l_2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store i32* @g_3, i32** %l_2, align 8, !tbaa !5
  %2 = bitcast i32** %l_4 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store i32* @g_3, i32** %l_4, align 8, !tbaa !5
  %3 = bitcast [1 x i32*]* %l_5 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast [9 x i32]* %l_6 to i8*
  call void @llvm.lifetime.start(i64 36, i8* %4) #1
  %5 = bitcast [9 x i32]* %l_6 to i8*
  call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 36, i32 16, i1 false)
  %6 = bitcast i8* %5 to [9 x i32]*
  %7 = getelementptr [9 x i32], [9 x i32]* %6, i32 0, i32 1
  store i32 2, i32* %7
  %8 = getelementptr [9 x i32], [9 x i32]* %6, i32 0, i32 4
  store i32 2, i32* %8
  %9 = getelementptr [9 x i32], [9 x i32]* %6, i32 0, i32 7
  store i32 2, i32* %9
  %10 = bitcast [3 x [3 x i64*]]* %l_12 to i8*
  call void @llvm.lifetime.start(i64 72, i8* %10) #1
  %11 = bitcast [5 x [4 x [6 x i32**]]]* %l_14 to i8*
  call void @llvm.lifetime.start(i64 960, i8* %11) #1
  %12 = getelementptr inbounds [5 x [4 x [6 x i32**]]], [5 x [4 x [6 x i32**]]]* %l_14, i64 0, i64 0
  %13 = getelementptr inbounds [4 x [6 x i32**]], [4 x [6 x i32**]]* %12, i64 0, i64 0
  %14 = getelementptr inbounds [6 x i32**], [6 x i32**]* %13, i64 0, i64 0
  %15 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %15, i32*** %14, !tbaa !5
  %16 = getelementptr inbounds i32**, i32*** %14, i64 1
  %17 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %17, i32*** %16, !tbaa !5
  %18 = getelementptr inbounds i32**, i32*** %16, i64 1
  store i32** %l_2, i32*** %18, !tbaa !5
  %19 = getelementptr inbounds i32**, i32*** %18, i64 1
  %20 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %20, i32*** %19, !tbaa !5
  %21 = getelementptr inbounds i32**, i32*** %19, i64 1
  store i32** %l_2, i32*** %21, !tbaa !5
  %22 = getelementptr inbounds i32**, i32*** %21, i64 1
  %23 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %23, i32*** %22, !tbaa !5
  %24 = getelementptr inbounds [6 x i32**], [6 x i32**]* %13, i64 1
  %25 = getelementptr inbounds [6 x i32**], [6 x i32**]* %24, i64 0, i64 0
  store i32** %l_2, i32*** %25, !tbaa !5
  %26 = getelementptr inbounds i32**, i32*** %25, i64 1
  %27 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %27, i32*** %26, !tbaa !5
  %28 = getelementptr inbounds i32**, i32*** %26, i64 1
  %29 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %29, i32*** %28, !tbaa !5
  %30 = getelementptr inbounds i32**, i32*** %28, i64 1
  %31 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %31, i32*** %30, !tbaa !5
  %32 = getelementptr inbounds i32**, i32*** %30, i64 1
  %33 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %33, i32*** %32, !tbaa !5
  %34 = getelementptr inbounds i32**, i32*** %32, i64 1
  store i32** %l_2, i32*** %34, !tbaa !5
  %35 = getelementptr inbounds [6 x i32**], [6 x i32**]* %24, i64 1
  %36 = getelementptr inbounds [6 x i32**], [6 x i32**]* %35, i64 0, i64 0
  %37 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %37, i32*** %36, !tbaa !5
  %38 = getelementptr inbounds i32**, i32*** %36, i64 1
  store i32** %l_2, i32*** %38, !tbaa !5
  %39 = getelementptr inbounds i32**, i32*** %38, i64 1
  %40 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %40, i32*** %39, !tbaa !5
  %41 = getelementptr inbounds i32**, i32*** %39, i64 1
  store i32** %l_2, i32*** %41, !tbaa !5
  %42 = getelementptr inbounds i32**, i32*** %41, i64 1
  %43 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %43, i32*** %42, !tbaa !5
  %44 = getelementptr inbounds i32**, i32*** %42, i64 1
  %45 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %45, i32*** %44, !tbaa !5
  %46 = getelementptr inbounds [6 x i32**], [6 x i32**]* %35, i64 1
  %47 = getelementptr inbounds [6 x i32**], [6 x i32**]* %46, i64 0, i64 0
  %48 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %48, i32*** %47, !tbaa !5
  %49 = getelementptr inbounds i32**, i32*** %47, i64 1
  store i32** %l_2, i32*** %49, !tbaa !5
  %50 = getelementptr inbounds i32**, i32*** %49, i64 1
  store i32** %l_2, i32*** %50, !tbaa !5
  %51 = getelementptr inbounds i32**, i32*** %50, i64 1
  %52 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %52, i32*** %51, !tbaa !5
  %53 = getelementptr inbounds i32**, i32*** %51, i64 1
  %54 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %54, i32*** %53, !tbaa !5
  %55 = getelementptr inbounds i32**, i32*** %53, i64 1
  %56 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %56, i32*** %55, !tbaa !5
  %57 = getelementptr inbounds [4 x [6 x i32**]], [4 x [6 x i32**]]* %12, i64 1
  %58 = getelementptr inbounds [4 x [6 x i32**]], [4 x [6 x i32**]]* %57, i64 0, i64 0
  %59 = getelementptr inbounds [6 x i32**], [6 x i32**]* %58, i64 0, i64 0
  %60 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %60, i32*** %59, !tbaa !5
  %61 = getelementptr inbounds i32**, i32*** %59, i64 1
  %62 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %62, i32*** %61, !tbaa !5
  %63 = getelementptr inbounds i32**, i32*** %61, i64 1
  %64 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %64, i32*** %63, !tbaa !5
  %65 = getelementptr inbounds i32**, i32*** %63, i64 1
  store i32** %l_2, i32*** %65, !tbaa !5
  %66 = getelementptr inbounds i32**, i32*** %65, i64 1
  store i32** %l_2, i32*** %66, !tbaa !5
  %67 = getelementptr inbounds i32**, i32*** %66, i64 1
  %68 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %68, i32*** %67, !tbaa !5
  %69 = getelementptr inbounds [6 x i32**], [6 x i32**]* %58, i64 1
  %70 = getelementptr inbounds [6 x i32**], [6 x i32**]* %69, i64 0, i64 0
  %71 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %71, i32*** %70, !tbaa !5
  %72 = getelementptr inbounds i32**, i32*** %70, i64 1
  %73 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %73, i32*** %72, !tbaa !5
  %74 = getelementptr inbounds i32**, i32*** %72, i64 1
  store i32** %l_2, i32*** %74, !tbaa !5
  %75 = getelementptr inbounds i32**, i32*** %74, i64 1
  %76 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %76, i32*** %75, !tbaa !5
  %77 = getelementptr inbounds i32**, i32*** %75, i64 1
  store i32** %l_2, i32*** %77, !tbaa !5
  %78 = getelementptr inbounds i32**, i32*** %77, i64 1
  %79 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %79, i32*** %78, !tbaa !5
  %80 = getelementptr inbounds [6 x i32**], [6 x i32**]* %69, i64 1
  %81 = getelementptr inbounds [6 x i32**], [6 x i32**]* %80, i64 0, i64 0
  store i32** %l_2, i32*** %81, !tbaa !5
  %82 = getelementptr inbounds i32**, i32*** %81, i64 1
  %83 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %83, i32*** %82, !tbaa !5
  %84 = getelementptr inbounds i32**, i32*** %82, i64 1
  %85 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %85, i32*** %84, !tbaa !5
  %86 = getelementptr inbounds i32**, i32*** %84, i64 1
  %87 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %87, i32*** %86, !tbaa !5
  %88 = getelementptr inbounds i32**, i32*** %86, i64 1
  %89 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %89, i32*** %88, !tbaa !5
  %90 = getelementptr inbounds i32**, i32*** %88, i64 1
  %91 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %91, i32*** %90, !tbaa !5
  %92 = getelementptr inbounds [6 x i32**], [6 x i32**]* %80, i64 1
  %93 = getelementptr inbounds [6 x i32**], [6 x i32**]* %92, i64 0, i64 0
  store i32** %l_2, i32*** %93, !tbaa !5
  %94 = getelementptr inbounds i32**, i32*** %93, i64 1
  %95 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %95, i32*** %94, !tbaa !5
  %96 = getelementptr inbounds i32**, i32*** %94, i64 1
  %97 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %97, i32*** %96, !tbaa !5
  %98 = getelementptr inbounds i32**, i32*** %96, i64 1
  %99 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %99, i32*** %98, !tbaa !5
  %100 = getelementptr inbounds i32**, i32*** %98, i64 1
  store i32** %l_2, i32*** %100, !tbaa !5
  %101 = getelementptr inbounds i32**, i32*** %100, i64 1
  store i32** %l_2, i32*** %101, !tbaa !5
  %102 = getelementptr inbounds [4 x [6 x i32**]], [4 x [6 x i32**]]* %57, i64 1
  %103 = getelementptr inbounds [4 x [6 x i32**]], [4 x [6 x i32**]]* %102, i64 0, i64 0
  %104 = getelementptr inbounds [6 x i32**], [6 x i32**]* %103, i64 0, i64 0
  %105 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %105, i32*** %104, !tbaa !5
  %106 = getelementptr inbounds i32**, i32*** %104, i64 1
  %107 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %107, i32*** %106, !tbaa !5
  %108 = getelementptr inbounds i32**, i32*** %106, i64 1
  %109 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %109, i32*** %108, !tbaa !5
  %110 = getelementptr inbounds i32**, i32*** %108, i64 1
  %111 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %111, i32*** %110, !tbaa !5
  %112 = getelementptr inbounds i32**, i32*** %110, i64 1
  %113 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %113, i32*** %112, !tbaa !5
  %114 = getelementptr inbounds i32**, i32*** %112, i64 1
  %115 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %115, i32*** %114, !tbaa !5
  %116 = getelementptr inbounds [6 x i32**], [6 x i32**]* %103, i64 1
  %117 = getelementptr inbounds [6 x i32**], [6 x i32**]* %116, i64 0, i64 0
  %118 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %118, i32*** %117, !tbaa !5
  %119 = getelementptr inbounds i32**, i32*** %117, i64 1
  %120 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %120, i32*** %119, !tbaa !5
  %121 = getelementptr inbounds i32**, i32*** %119, i64 1
  %122 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %122, i32*** %121, !tbaa !5
  %123 = getelementptr inbounds i32**, i32*** %121, i64 1
  %124 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %124, i32*** %123, !tbaa !5
  %125 = getelementptr inbounds i32**, i32*** %123, i64 1
  %126 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %126, i32*** %125, !tbaa !5
  %127 = getelementptr inbounds i32**, i32*** %125, i64 1
  %128 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %128, i32*** %127, !tbaa !5
  %129 = getelementptr inbounds [6 x i32**], [6 x i32**]* %116, i64 1
  %130 = getelementptr inbounds [6 x i32**], [6 x i32**]* %129, i64 0, i64 0
  store i32** %l_2, i32*** %130, !tbaa !5
  %131 = getelementptr inbounds i32**, i32*** %130, i64 1
  store i32** %l_2, i32*** %131, !tbaa !5
  %132 = getelementptr inbounds i32**, i32*** %131, i64 1
  %133 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %133, i32*** %132, !tbaa !5
  %134 = getelementptr inbounds i32**, i32*** %132, i64 1
  %135 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %135, i32*** %134, !tbaa !5
  %136 = getelementptr inbounds i32**, i32*** %134, i64 1
  %137 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %137, i32*** %136, !tbaa !5
  %138 = getelementptr inbounds i32**, i32*** %136, i64 1
  store i32** %l_2, i32*** %138, !tbaa !5
  %139 = getelementptr inbounds [6 x i32**], [6 x i32**]* %129, i64 1
  %140 = getelementptr inbounds [6 x i32**], [6 x i32**]* %139, i64 0, i64 0
  %141 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %141, i32*** %140, !tbaa !5
  %142 = getelementptr inbounds i32**, i32*** %140, i64 1
  %143 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %143, i32*** %142, !tbaa !5
  %144 = getelementptr inbounds i32**, i32*** %142, i64 1
  %145 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %145, i32*** %144, !tbaa !5
  %146 = getelementptr inbounds i32**, i32*** %144, i64 1
  %147 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %147, i32*** %146, !tbaa !5
  %148 = getelementptr inbounds i32**, i32*** %146, i64 1
  %149 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %149, i32*** %148, !tbaa !5
  %150 = getelementptr inbounds i32**, i32*** %148, i64 1
  %151 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %151, i32*** %150, !tbaa !5
  %152 = getelementptr inbounds [4 x [6 x i32**]], [4 x [6 x i32**]]* %102, i64 1
  %153 = getelementptr inbounds [4 x [6 x i32**]], [4 x [6 x i32**]]* %152, i64 0, i64 0
  %154 = getelementptr inbounds [6 x i32**], [6 x i32**]* %153, i64 0, i64 0
  store i32** %l_2, i32*** %154, !tbaa !5
  %155 = getelementptr inbounds i32**, i32*** %154, i64 1
  %156 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %156, i32*** %155, !tbaa !5
  %157 = getelementptr inbounds i32**, i32*** %155, i64 1
  %158 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %158, i32*** %157, !tbaa !5
  %159 = getelementptr inbounds i32**, i32*** %157, i64 1
  %160 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %160, i32*** %159, !tbaa !5
  %161 = getelementptr inbounds i32**, i32*** %159, i64 1
  store i32** %l_2, i32*** %161, !tbaa !5
  %162 = getelementptr inbounds i32**, i32*** %161, i64 1
  store i32** %l_2, i32*** %162, !tbaa !5
  %163 = getelementptr inbounds [6 x i32**], [6 x i32**]* %153, i64 1
  %164 = getelementptr inbounds [6 x i32**], [6 x i32**]* %163, i64 0, i64 0
  %165 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %165, i32*** %164, !tbaa !5
  %166 = getelementptr inbounds i32**, i32*** %164, i64 1
  %167 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %167, i32*** %166, !tbaa !5
  %168 = getelementptr inbounds i32**, i32*** %166, i64 1
  %169 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %169, i32*** %168, !tbaa !5
  %170 = getelementptr inbounds i32**, i32*** %168, i64 1
  %171 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %171, i32*** %170, !tbaa !5
  %172 = getelementptr inbounds i32**, i32*** %170, i64 1
  %173 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %173, i32*** %172, !tbaa !5
  %174 = getelementptr inbounds i32**, i32*** %172, i64 1
  %175 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %175, i32*** %174, !tbaa !5
  %176 = getelementptr inbounds [6 x i32**], [6 x i32**]* %163, i64 1
  %177 = getelementptr inbounds [6 x i32**], [6 x i32**]* %176, i64 0, i64 0
  %178 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %178, i32*** %177, !tbaa !5
  %179 = getelementptr inbounds i32**, i32*** %177, i64 1
  %180 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %180, i32*** %179, !tbaa !5
  %181 = getelementptr inbounds i32**, i32*** %179, i64 1
  %182 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %182, i32*** %181, !tbaa !5
  %183 = getelementptr inbounds i32**, i32*** %181, i64 1
  %184 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %184, i32*** %183, !tbaa !5
  %185 = getelementptr inbounds i32**, i32*** %183, i64 1
  %186 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %186, i32*** %185, !tbaa !5
  %187 = getelementptr inbounds i32**, i32*** %185, i64 1
  %188 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %188, i32*** %187, !tbaa !5
  %189 = getelementptr inbounds [6 x i32**], [6 x i32**]* %176, i64 1
  %190 = getelementptr inbounds [6 x i32**], [6 x i32**]* %189, i64 0, i64 0
  store i32** %l_2, i32*** %190, !tbaa !5
  %191 = getelementptr inbounds i32**, i32*** %190, i64 1
  store i32** %l_2, i32*** %191, !tbaa !5
  %192 = getelementptr inbounds i32**, i32*** %191, i64 1
  %193 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %193, i32*** %192, !tbaa !5
  %194 = getelementptr inbounds i32**, i32*** %192, i64 1
  %195 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %195, i32*** %194, !tbaa !5
  %196 = getelementptr inbounds i32**, i32*** %194, i64 1
  %197 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %197, i32*** %196, !tbaa !5
  %198 = getelementptr inbounds i32**, i32*** %196, i64 1
  store i32** %l_2, i32*** %198, !tbaa !5
  %199 = getelementptr inbounds [4 x [6 x i32**]], [4 x [6 x i32**]]* %152, i64 1
  %200 = getelementptr inbounds [4 x [6 x i32**]], [4 x [6 x i32**]]* %199, i64 0, i64 0
  %201 = getelementptr inbounds [6 x i32**], [6 x i32**]* %200, i64 0, i64 0
  %202 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %202, i32*** %201, !tbaa !5
  %203 = getelementptr inbounds i32**, i32*** %201, i64 1
  %204 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %204, i32*** %203, !tbaa !5
  %205 = getelementptr inbounds i32**, i32*** %203, i64 1
  %206 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %206, i32*** %205, !tbaa !5
  %207 = getelementptr inbounds i32**, i32*** %205, i64 1
  %208 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %208, i32*** %207, !tbaa !5
  %209 = getelementptr inbounds i32**, i32*** %207, i64 1
  %210 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %210, i32*** %209, !tbaa !5
  %211 = getelementptr inbounds i32**, i32*** %209, i64 1
  %212 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %212, i32*** %211, !tbaa !5
  %213 = getelementptr inbounds [6 x i32**], [6 x i32**]* %200, i64 1
  %214 = getelementptr inbounds [6 x i32**], [6 x i32**]* %213, i64 0, i64 0
  store i32** %l_2, i32*** %214, !tbaa !5
  %215 = getelementptr inbounds i32**, i32*** %214, i64 1
  %216 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %216, i32*** %215, !tbaa !5
  %217 = getelementptr inbounds i32**, i32*** %215, i64 1
  %218 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %218, i32*** %217, !tbaa !5
  %219 = getelementptr inbounds i32**, i32*** %217, i64 1
  %220 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %220, i32*** %219, !tbaa !5
  %221 = getelementptr inbounds i32**, i32*** %219, i64 1
  store i32** %l_2, i32*** %221, !tbaa !5
  %222 = getelementptr inbounds i32**, i32*** %221, i64 1
  store i32** %l_2, i32*** %222, !tbaa !5
  %223 = getelementptr inbounds [6 x i32**], [6 x i32**]* %213, i64 1
  %224 = getelementptr inbounds [6 x i32**], [6 x i32**]* %223, i64 0, i64 0
  %225 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %225, i32*** %224, !tbaa !5
  %226 = getelementptr inbounds i32**, i32*** %224, i64 1
  %227 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %227, i32*** %226, !tbaa !5
  %228 = getelementptr inbounds i32**, i32*** %226, i64 1
  %229 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %229, i32*** %228, !tbaa !5
  %230 = getelementptr inbounds i32**, i32*** %228, i64 1
  %231 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %231, i32*** %230, !tbaa !5
  %232 = getelementptr inbounds i32**, i32*** %230, i64 1
  %233 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %233, i32*** %232, !tbaa !5
  %234 = getelementptr inbounds i32**, i32*** %232, i64 1
  %235 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %235, i32*** %234, !tbaa !5
  %236 = getelementptr inbounds [6 x i32**], [6 x i32**]* %223, i64 1
  %237 = getelementptr inbounds [6 x i32**], [6 x i32**]* %236, i64 0, i64 0
  %238 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %238, i32*** %237, !tbaa !5
  %239 = getelementptr inbounds i32**, i32*** %237, i64 1
  %240 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %240, i32*** %239, !tbaa !5
  %241 = getelementptr inbounds i32**, i32*** %239, i64 1
  %242 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %242, i32*** %241, !tbaa !5
  %243 = getelementptr inbounds i32**, i32*** %241, i64 1
  %244 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %244, i32*** %243, !tbaa !5
  %245 = getelementptr inbounds i32**, i32*** %243, i64 1
  %246 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %246, i32*** %245, !tbaa !5
  %247 = getelementptr inbounds i32**, i32*** %245, i64 1
  %248 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 0
  store i32** %248, i32*** %247, !tbaa !5
  %249 = bitcast i32** %l_15 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %249) #1
  store i32* null, i32** %l_15, align 8, !tbaa !5
  %250 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %250) #1
  %251 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %251) #1
  %252 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %252) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %253

; <label>:253                                     ; preds = %260, %0
  %254 = load i32, i32* %i, align 4, !tbaa !1
  %255 = icmp slt i32 %254, 1
  br i1 %255, label %256, label %263

; <label>:256                                     ; preds = %253
  %257 = load i32, i32* %i, align 4, !tbaa !1
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_5, i32 0, i64 %258
  store i32* @g_3, i32** %259, align 8, !tbaa !5
  br label %260

; <label>:260                                     ; preds = %256
  %261 = load i32, i32* %i, align 4, !tbaa !1
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %i, align 4, !tbaa !1
  br label %253

; <label>:263                                     ; preds = %253
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %264

; <label>:264                                     ; preds = %282, %263
  %265 = load i32, i32* %i, align 4, !tbaa !1
  %266 = icmp slt i32 %265, 3
  br i1 %266, label %267, label %285

; <label>:267                                     ; preds = %264
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %268

; <label>:268                                     ; preds = %278, %267
  %269 = load i32, i32* %j, align 4, !tbaa !1
  %270 = icmp slt i32 %269, 3
  br i1 %270, label %271, label %281

; <label>:271                                     ; preds = %268
  %272 = load i32, i32* %j, align 4, !tbaa !1
  %273 = sext i32 %272 to i64
  %274 = load i32, i32* %i, align 4, !tbaa !1
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds [3 x [3 x i64*]], [3 x [3 x i64*]]* %l_12, i32 0, i64 %275
  %277 = getelementptr inbounds [3 x i64*], [3 x i64*]* %276, i32 0, i64 %273
  store i64* @g_13, i64** %277, align 8, !tbaa !5
  br label %278

; <label>:278                                     ; preds = %271
  %279 = load i32, i32* %j, align 4, !tbaa !1
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %j, align 4, !tbaa !1
  br label %268

; <label>:281                                     ; preds = %268
  br label %282

; <label>:282                                     ; preds = %281
  %283 = load i32, i32* %i, align 4, !tbaa !1
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %i, align 4, !tbaa !1
  br label %264

; <label>:285                                     ; preds = %264
  %286 = load i32*, i32** %l_2, align 8, !tbaa !5
  store i32 0, i32* %286, align 4, !tbaa !1
  %287 = load volatile i8, i8* @g_7, align 1, !tbaa !9
  %288 = add i8 %287, 1
  store volatile i8 %288, i8* @g_7, align 1, !tbaa !9
  %289 = load i32*, i32** %l_4, align 8, !tbaa !5
  %290 = load i32, i32* %289, align 4, !tbaa !1
  %291 = sext i32 %290 to i64
  store i64 %291, i64* @g_13, align 8, !tbaa !7
  store i32* @g_3, i32** %l_15, align 8, !tbaa !5
  %292 = call i64 @safe_add_func_uint64_t_u_u(i64 %291, i64 1)
  %293 = trunc i64 %292 to i32
  store i32 %293, i32* @g_3, align 4, !tbaa !1
  %294 = load i32, i32* @g_3, align 4, !tbaa !1
  %295 = sext i32 %294 to i64
  %296 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %296) #1
  %297 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %297) #1
  %298 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %298) #1
  %299 = bitcast i32** %l_15 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %299) #1
  %300 = bitcast [5 x [4 x [6 x i32**]]]* %l_14 to i8*
  call void @llvm.lifetime.end(i64 960, i8* %300) #1
  %301 = bitcast [3 x [3 x i64*]]* %l_12 to i8*
  call void @llvm.lifetime.end(i64 72, i8* %301) #1
  %302 = bitcast [9 x i32]* %l_6 to i8*
  call void @llvm.lifetime.end(i64 36, i8* %302) #1
  %303 = bitcast [1 x i32*]* %l_5 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %303) #1
  %304 = bitcast i32** %l_4 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %304) #1
  %305 = bitcast i32** %l_2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %305) #1
  ret i64 %295
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
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i32 0, i32 0), i8* %8, i64 %11)
  br label %13

; <label>:13                                      ; preds = %7, %0
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @platform_main_end(i32 %crc, i32 %flag) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %crc, i32* %1, align 4, !tbaa !1
  store i32 %flag, i32* %2, align 4, !tbaa !1
  %3 = load i32, i32* %1, align 4, !tbaa !1
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i32 %3)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

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

declare i32 @printf(i8*, ...) #3

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
