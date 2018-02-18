; ModuleID = '00119.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_3 = internal global i32 399114281, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"g_3\00", align 1
@g_4 = internal global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"g_4\00", align 1
@g_7 = internal global i32 1246888564, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"g_7\00", align 1
@g_8 = internal global i16 4560, align 2
@.str.4 = private unnamed_addr constant [4 x i8] c"g_8\00", align 1
@g_9 = internal global i64 -1193387555212092821, align 8
@.str.5 = private unnamed_addr constant [4 x i8] c"g_9\00", align 1
@g_10 = internal global i8 -128, align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"g_10\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@func_1.l_2 = private unnamed_addr constant [10 x i32*] [i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3], align 16
@.str.7 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

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
  %91 = load volatile i32, i32* @g_4, align 4, !tbaa !1
  %92 = zext i32 %91 to i64
  %93 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 %93)
  %94 = load volatile i32, i32* @g_7, align 4, !tbaa !1
  %95 = sext i32 %94 to i64
  %96 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %95, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i32 %96)
  %97 = load volatile i16, i16* @g_8, align 2, !tbaa !10
  %98 = sext i16 %97 to i64
  %99 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %98, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i32 %99)
  %100 = load i64, i64* @g_9, align 8, !tbaa !7
  %101 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %100, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 %101)
  %102 = load i8, i8* @g_10, align 1, !tbaa !9
  %103 = sext i8 %102 to i64
  %104 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 %104)
  %105 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %106 = zext i32 %105 to i64
  %107 = xor i64 %106, 4294967295
  %108 = trunc i64 %107 to i32
  %109 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %108, i32 %109)
  %110 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %110) #1
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
  %l_2 = alloca [10 x i32*], align 16
  %l_11 = alloca i16, align 2
  %i = alloca i32, align 4
  %1 = bitcast [10 x i32*]* %l_2 to i8*
  call void @llvm.lifetime.start(i64 80, i8* %1) #1
  %2 = bitcast [10 x i32*]* %l_2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* bitcast ([10 x i32*]* @func_1.l_2 to i8*), i64 80, i32 16, i1 false)
  %3 = bitcast i16* %l_11 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %3) #1
  store i16 -1, i16* %l_11, align 2, !tbaa !10
  %4 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load volatile i32, i32* @g_4, align 4, !tbaa !1
  %6 = add i32 %5, 1
  store volatile i32 %6, i32* @g_4, align 4, !tbaa !1
  %7 = load i16, i16* %l_11, align 2, !tbaa !10
  %8 = add i16 %7, 1
  store i16 %8, i16* %l_11, align 2, !tbaa !10
  %9 = load i32, i32* @g_3, align 4, !tbaa !1
  %10 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #1
  %11 = bitcast i16* %l_11 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %11) #1
  %12 = bitcast [10 x i32*]* %l_2 to i8*
  call void @llvm.lifetime.end(i64 80, i8* %12) #1
  ret i32 %9
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
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i32 0, i32 0), i8* %8, i64 %11)
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
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i32 %3)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

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
