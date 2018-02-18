; ModuleID = '00346.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_3 = internal global i32 -3, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"g_3\00", align 1
@g_8 = internal global i16 6087, align 2
@.str.2 = private unnamed_addr constant [4 x i8] c"g_8\00", align 1
@g_20 = internal global i32 2103723709, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"g_20\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@func_1.l_2 = private unnamed_addr constant [3 x [7 x i32*]] [[7 x i32*] [i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3], [7 x i32*] [i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3], [7 x i32*] [i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3]], align 16
@func_1.l_18 = private unnamed_addr constant [10 x i8] c"\8D\00\F8\00\8D\8D\00\F8\00\8D", align 1
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
  %87 = call i32 @func_1()
  %88 = load i32, i32* @g_3, align 4, !tbaa !1
  %89 = sext i32 %88 to i64
  %90 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %89, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %90)
  %91 = load i16, i16* @g_8, align 2, !tbaa !10
  %92 = zext i16 %91 to i64
  %93 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 %93)
  %94 = load i32, i32* @g_20, align 4, !tbaa !1
  %95 = sext i32 %94 to i64
  %96 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %95, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 %96)
  %97 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %98 = zext i32 %97 to i64
  %99 = xor i64 %98, 4294967295
  %100 = trunc i64 %99 to i32
  %101 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %100, i32 %101)
  %102 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %102) #1
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
  %l_2 = alloca [3 x [7 x i32*]], align 16
  %l_6 = alloca i16*, align 8
  %l_7 = alloca i16*, align 8
  %l_11 = alloca i64, align 8
  %l_18 = alloca [10 x i8], align 1
  %l_19 = alloca i32, align 4
  %l_21 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %1 = bitcast [3 x [7 x i32*]]* %l_2 to i8*
  call void @llvm.lifetime.start(i64 168, i8* %1) #1
  %2 = bitcast [3 x [7 x i32*]]* %l_2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* bitcast ([3 x [7 x i32*]]* @func_1.l_2 to i8*), i64 168, i32 16, i1 false)
  %3 = bitcast i16** %l_6 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store i16* null, i16** %l_6, align 8, !tbaa !5
  %4 = bitcast i16** %l_7 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store i16* @g_8, i16** %l_7, align 8, !tbaa !5
  %5 = bitcast i64* %l_11 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store i64 9, i64* %l_11, align 8, !tbaa !7
  %6 = bitcast [10 x i8]* %l_18 to i8*
  call void @llvm.lifetime.start(i64 10, i8* %6) #1
  %7 = bitcast [10 x i8]* %l_18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @func_1.l_18, i32 0, i32 0), i64 10, i32 1, i1 false)
  %8 = bitcast i32* %l_19 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  store i32 1674979844, i32* %l_19, align 4, !tbaa !1
  %9 = bitcast i32* %l_21 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 8, i32* %l_21, align 4, !tbaa !1
  %10 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load i32, i32* @g_3, align 4, !tbaa !1
  %13 = sext i32 %12 to i64
  %14 = or i64 %13, 987977064
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* @g_3, align 4, !tbaa !1
  %16 = load i32, i32* @g_3, align 4, !tbaa !1
  %17 = getelementptr inbounds [3 x [7 x i32*]], [3 x [7 x i32*]]* %l_2, i32 0, i64 2
  %18 = getelementptr inbounds [7 x i32*], [7 x i32*]* %17, i32 0, i64 6
  %19 = load i32*, i32** %18, align 8, !tbaa !5
  %20 = icmp eq i32* null, %19
  %21 = zext i1 %20 to i32
  %22 = load i32, i32* @g_3, align 4, !tbaa !1
  %23 = trunc i32 %22 to i16
  %24 = load i16*, i16** %l_7, align 8, !tbaa !5
  store i16 %23, i16* %24, align 2, !tbaa !10
  %25 = call zeroext i16 @safe_mod_func_uint16_t_u_u(i16 zeroext 1, i16 zeroext %23)
  %26 = zext i16 %25 to i32
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

; <label>:28                                      ; preds = %0
  br label %29

; <label>:29                                      ; preds = %28, %0
  %30 = phi i1 [ true, %0 ], [ true, %28 ]
  %31 = zext i1 %30 to i32
  %32 = xor i32 %16, %31
  %33 = load i64, i64* %l_11, align 8, !tbaa !7
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %50, label %35

; <label>:35                                      ; preds = %29
  %36 = getelementptr inbounds [10 x i8], [10 x i8]* %l_18, i32 0, i64 7
  %37 = load i8, i8* %36, align 1, !tbaa !9
  %38 = load i32, i32* @g_3, align 4, !tbaa !1
  %39 = trunc i32 %38 to i8
  %40 = call signext i8 @safe_add_func_int8_t_s_s(i8 signext %37, i8 signext %39)
  %41 = load i32, i32* @g_3, align 4, !tbaa !1
  %42 = trunc i32 %41 to i16
  %43 = call zeroext i16 @safe_div_func_uint16_t_u_u(i16 zeroext %42, i16 zeroext 29376)
  %44 = trunc i16 %43 to i8
  %45 = load i32, i32* %l_19, align 4, !tbaa !1
  %46 = trunc i32 %45 to i8
  %47 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %44, i8 zeroext %46)
  %48 = zext i8 %47 to i32
  %49 = icmp ne i32 %48, 0
  br label %50

; <label>:50                                      ; preds = %35, %29
  %51 = phi i1 [ true, %29 ], [ %49, %35 ]
  %52 = zext i1 %51 to i32
  %53 = load i32, i32* @g_3, align 4, !tbaa !1
  %54 = icmp slt i32 %52, %53
  %55 = zext i1 %54 to i32
  %56 = trunc i32 %55 to i16
  %57 = load i32, i32* @g_3, align 4, !tbaa !1
  %58 = trunc i32 %57 to i16
  %59 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %56, i16 zeroext %58)
  %60 = zext i16 %59 to i32
  %61 = load i32, i32* @g_3, align 4, !tbaa !1
  %62 = icmp ne i32 %60, %61
  %63 = zext i1 %62 to i32
  %64 = load i32, i32* @g_3, align 4, !tbaa !1
  %65 = icmp sge i32 %63, %64
  %66 = zext i1 %65 to i32
  %67 = load i32, i32* @g_20, align 4, !tbaa !1
  %68 = and i32 %67, %66
  store i32 %68, i32* @g_20, align 4, !tbaa !1
  %69 = icmp eq i32 %32, %68
  %70 = zext i1 %69 to i32
  %71 = load i32, i32* %l_21, align 4, !tbaa !1
  %72 = or i32 %71, %70
  store i32 %72, i32* %l_21, align 4, !tbaa !1
  %73 = load i16, i16* @g_8, align 2, !tbaa !10
  %74 = zext i16 %73 to i32
  %75 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #1
  %76 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #1
  %77 = bitcast i32* %l_21 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #1
  %78 = bitcast i32* %l_19 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #1
  %79 = bitcast [10 x i8]* %l_18 to i8*
  call void @llvm.lifetime.end(i64 10, i8* %79) #1
  %80 = bitcast i64* %l_11 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #1
  %81 = bitcast i16** %l_7 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #1
  %82 = bitcast i16** %l_6 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %82) #1
  %83 = bitcast [3 x [7 x i32*]]* %l_2 to i8*
  call void @llvm.lifetime.end(i64 168, i8* %83) #1
  ret i32 %74
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
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

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
!10 = !{!11, !11, i64 0}
!11 = !{!"short", !3, i64 0}
