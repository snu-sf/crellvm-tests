; ModuleID = '00308.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.U0 = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_6 = internal global i32 -1758436394, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"g_6\00", align 1
@g_8 = internal global %union.U0 { i32 -929205330 }, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"g_8.f0\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"g_8.f1\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"g_8.f2\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@func_1.l_4 = private unnamed_addr constant [8 x [8 x [4 x i32]]] [[8 x [4 x i32]] [[4 x i32] [i32 1447033584, i32 1, i32 -486637198, i32 1445270308], [4 x i32] [i32 2, i32 2088191931, i32 1662391784, i32 2088191931], [4 x i32] [i32 -7, i32 -486637198, i32 -6, i32 1], [4 x i32] [i32 -486637198, i32 1, i32 1447033584, i32 3], [4 x i32] [i32 1991031026, i32 -622959073, i32 6, i32 1991031026], [4 x i32] [i32 1991031026, i32 1445270308, i32 1447033584, i32 0], [4 x i32] [i32 -486637198, i32 1991031026, i32 -6, i32 -9], [4 x i32] [i32 -7, i32 544309940, i32 1662391784, i32 -2082730434]], [8 x [4 x i32]] [[4 x i32] [i32 2, i32 -1, i32 -486637198, i32 0], [4 x i32] [i32 1447033584, i32 -1, i32 6, i32 6], [4 x i32] [i32 -9, i32 -9, i32 -622959073, i32 1445270308], [4 x i32] [i32 3, i32 -1587035508, i32 319237122, i32 -1], [4 x i32] [i32 -906327104, i32 8, i32 1, i32 319237122], [4 x i32] [i32 1445270308, i32 8, i32 -877753599, i32 -1], [4 x i32] [i32 8, i32 -1587035508, i32 1662391784, i32 1445270308], [4 x i32] [i32 6, i32 -9, i32 1013040923, i32 6]], [8 x [4 x i32]] [[4 x i32] [i32 -1696270451, i32 -1, i32 -7, i32 5], [4 x i32] [i32 8, i32 6, i32 -906327104, i32 -486637198], [4 x i32] [i32 1, i32 8, i32 1, i32 0], [4 x i32] [i32 1447033584, i32 -1696270451, i32 544309940, i32 5], [4 x i32] [i32 3, i32 1, i32 6, i32 -1696270451], [4 x i32] [i32 1013040923, i32 -9, i32 6, i32 1], [4 x i32] [i32 3, i32 -6, i32 544309940, i32 -1], [4 x i32] [i32 1447033584, i32 319237122, i32 1, i32 8]], [8 x [4 x i32]] [[4 x i32] [i32 1, i32 8, i32 -906327104, i32 1], [4 x i32] [i32 8, i32 -6, i32 -7, i32 1445270308], [4 x i32] [i32 -1696270451, i32 1013040923, i32 1013040923, i32 -1696270451], [4 x i32] [i32 6, i32 -1, i32 1662391784, i32 110652781], [4 x i32] [i32 8, i32 -1696270451, i32 -877753599, i32 -486637198], [4 x i32] [i32 1445270308, i32 -1409181525, i32 1, i32 -486637198], [4 x i32] [i32 -906327104, i32 -1696270451, i32 319237122, i32 110652781], [4 x i32] [i32 3, i32 -1, i32 -622959073, i32 -1696270451]], [8 x [4 x i32]] [[4 x i32] [i32 -9, i32 1013040923, i32 6, i32 1445270308], [4 x i32] [i32 1662391784, i32 -6, i32 319237122, i32 1], [4 x i32] [i32 1447033584, i32 8, i32 1, i32 8], [4 x i32] [i32 1445270308, i32 319237122, i32 -906327104, i32 -1], [4 x i32] [i32 319237122, i32 -6, i32 1662391784, i32 1], [4 x i32] [i32 -1696270451, i32 -9, i32 -2082730434, i32 -1696270451], [4 x i32] [i32 -1696270451, i32 1, i32 1662391784, i32 5], [4 x i32] [i32 319237122, i32 -1696270451, i32 -906327104, i32 0]], [8 x [4 x i32]] [[4 x i32] [i32 1445270308, i32 8, i32 1, i32 -486637198], [4 x i32] [i32 1447033584, i32 6, i32 319237122, i32 5], [4 x i32] [i32 1662391784, i32 -1, i32 6, i32 6], [4 x i32] [i32 -9, i32 -9, i32 -622959073, i32 1445270308], [4 x i32] [i32 3, i32 -1587035508, i32 319237122, i32 -1], [4 x i32] [i32 -906327104, i32 8, i32 1, i32 319237122], [4 x i32] [i32 1445270308, i32 8, i32 -877753599, i32 -1], [4 x i32] [i32 8, i32 -1587035508, i32 1662391784, i32 1445270308]], [8 x [4 x i32]] [[4 x i32] [i32 6, i32 -9, i32 1013040923, i32 6], [4 x i32] [i32 -1696270451, i32 -1, i32 -7, i32 5], [4 x i32] [i32 8, i32 6, i32 -906327104, i32 -486637198], [4 x i32] [i32 1, i32 8, i32 1, i32 0], [4 x i32] [i32 1447033584, i32 -1696270451, i32 544309940, i32 5], [4 x i32] [i32 3, i32 1, i32 6, i32 -1696270451], [4 x i32] [i32 1013040923, i32 -9, i32 6, i32 1], [4 x i32] [i32 3, i32 -6, i32 544309940, i32 -1]], [8 x [4 x i32]] [[4 x i32] [i32 1447033584, i32 319237122, i32 1, i32 8], [4 x i32] [i32 1991031026, i32 -1409181525, i32 -7, i32 -622959073], [4 x i32] [i32 -1409181525, i32 -906327104, i32 1445270308, i32 1], [4 x i32] [i32 1013040923, i32 2088191931, i32 2088191931, i32 1013040923], [4 x i32] [i32 -2082730434, i32 6, i32 1, i32 2], [4 x i32] [i32 -1409181525, i32 1013040923, i32 3, i32 319237122], [4 x i32] [i32 1, i32 1, i32 1991031026, i32 319237122], [4 x i32] [i32 -7, i32 1013040923, i32 0, i32 2]]], align 16
@.str.5 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

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
  %6 = alloca %union.U0, align 4
  store i32 0, i32* %1
  store i32 %argc, i32* %2, align 4, !tbaa !1
  store i8** %argv, i8*** %3, align 8, !tbaa !5
  %7 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  store i32 0, i32* %print_hash_value, align 4, !tbaa !1
  %9 = load i32, i32* %2, align 4, !tbaa !1
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %11, label %88

; <label>:11                                      ; preds = %0
  %12 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i64 1) to i64), i64 ptrtoint ([2 x i8]* @.str to i64)), i64 1), label %14, label %76

; <label>:14                                      ; preds = %11
  store i64 1, i64* %__s2_len, align 8, !tbaa !7
  %15 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %16 = icmp ult i64 %15, 4
  br i1 %16, label %17, label %76

; <label>:17                                      ; preds = %14
  %18 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = load i8**, i8*** %3, align 8, !tbaa !5
  %20 = getelementptr inbounds i8*, i8** %19, i64 1
  %21 = load i8*, i8** %20, align 8, !tbaa !5
  store i8* %21, i8** %__s1, align 8, !tbaa !5
  %22 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  %23 = load i8*, i8** %__s1, align 8, !tbaa !5
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1, !tbaa !9
  %26 = zext i8 %25 to i32
  %27 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), align 1, !tbaa !9
  %28 = zext i8 %27 to i32
  %29 = sub nsw i32 %26, %28
  store i32 %29, i32* %__result, align 4, !tbaa !1
  %30 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %31 = icmp ugt i64 %30, 0
  br i1 %31, label %32, label %71

; <label>:32                                      ; preds = %17
  %33 = load i32, i32* %__result, align 4, !tbaa !1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %71

; <label>:35                                      ; preds = %32
  %36 = load i8*, i8** %__s1, align 8, !tbaa !5
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = load i8, i8* %37, align 1, !tbaa !9
  %39 = zext i8 %38 to i32
  %40 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i64 1), align 1, !tbaa !9
  %41 = zext i8 %40 to i32
  %42 = sub nsw i32 %39, %41
  store i32 %42, i32* %__result, align 4, !tbaa !1
  %43 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %44 = icmp ugt i64 %43, 1
  br i1 %44, label %45, label %70

; <label>:45                                      ; preds = %35
  %46 = load i32, i32* %__result, align 4, !tbaa !1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %70

; <label>:48                                      ; preds = %45
  %49 = load i8*, i8** %__s1, align 8, !tbaa !5
  %50 = getelementptr inbounds i8, i8* %49, i64 2
  %51 = load i8, i8* %50, align 1, !tbaa !9
  %52 = zext i8 %51 to i32
  %53 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i64 2), align 1, !tbaa !9
  %54 = zext i8 %53 to i32
  %55 = sub nsw i32 %52, %54
  store i32 %55, i32* %__result, align 4, !tbaa !1
  %56 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %57 = icmp ugt i64 %56, 2
  br i1 %57, label %58, label %69

; <label>:58                                      ; preds = %48
  %59 = load i32, i32* %__result, align 4, !tbaa !1
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %69

; <label>:61                                      ; preds = %58
  %62 = load i8*, i8** %__s1, align 8, !tbaa !5
  %63 = getelementptr inbounds i8, i8* %62, i64 3
  %64 = load i8, i8* %63, align 1, !tbaa !9
  %65 = zext i8 %64 to i32
  %66 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i64 3), align 1, !tbaa !9
  %67 = zext i8 %66 to i32
  %68 = sub nsw i32 %65, %67
  store i32 %68, i32* %__result, align 4, !tbaa !1
  br label %69

; <label>:69                                      ; preds = %61, %58, %48
  br label %70

; <label>:70                                      ; preds = %69, %45, %35
  br label %71

; <label>:71                                      ; preds = %70, %32, %17
  %72 = load i32, i32* %__result, align 4, !tbaa !1
  store i32 %72, i32* %5, !tbaa !1
  %73 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #1
  %74 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #1
  %75 = load i32, i32* %5, !tbaa !1
  br label %81

; <label>:76                                      ; preds = %14, %11
  %77 = load i8**, i8*** %3, align 8, !tbaa !5
  %78 = getelementptr inbounds i8*, i8** %77, i64 1
  %79 = load i8*, i8** %78, align 8, !tbaa !5
  %80 = call i32 @strcmp(i8* %79, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0)) #1
  br label %81

; <label>:81                                      ; preds = %76, %71
  %82 = phi i32 [ %75, %71 ], [ %80, %76 ]
  store i32 %82, i32* %4, !tbaa !1
  %83 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %83) #1
  %84 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %84) #1
  %85 = load i32, i32* %4, !tbaa !1
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %88

; <label>:87                                      ; preds = %81
  store i32 1, i32* %print_hash_value, align 4, !tbaa !1
  br label %88

; <label>:88                                      ; preds = %87, %81, %0
  call void @platform_main_begin()
  call void @crc32_gentab()
  %89 = call i32 @func_1()
  %90 = getelementptr %union.U0, %union.U0* %6, i32 0, i32 0
  store i32 %89, i32* %90, align 4
  %91 = load i32, i32* @g_6, align 4, !tbaa !1
  %92 = sext i32 %91 to i64
  %93 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %93)
  %94 = load i32, i32* getelementptr inbounds (%union.U0, %union.U0* @g_8, i32 0, i32 0), align 4, !tbaa !1
  %95 = sext i32 %94 to i64
  %96 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %95, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i32 %96)
  %97 = load i16, i16* bitcast (%union.U0* @g_8 to i16*), align 4
  %98 = shl i16 %97, 2
  %99 = ashr i16 %98, 2
  %100 = sext i16 %99 to i32
  %101 = sext i32 %100 to i64
  %102 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %101, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i32 %102)
  %103 = load volatile i8, i8* bitcast (%union.U0* @g_8 to i8*), align 1, !tbaa !9
  %104 = sext i8 %103 to i64
  %105 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %104, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i32 %105)
  %106 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %107 = zext i32 %106 to i64
  %108 = xor i64 %107, 4294967295
  %109 = trunc i64 %108 to i32
  %110 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %109, i32 %110)
  %111 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %111) #1
  %112 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %112) #1
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
  %l_4 = alloca [8 x [8 x [4 x i32]]], align 16
  %l_7 = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %2 = bitcast [8 x [8 x [4 x i32]]]* %l_4 to i8*
  call void @llvm.lifetime.start(i64 1024, i8* %2) #1
  %3 = bitcast [8 x [8 x [4 x i32]]]* %l_4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* bitcast ([8 x [8 x [4 x i32]]]* @func_1.l_4 to i8*), i64 1024, i32 16, i1 false)
  %4 = bitcast i32** %l_7 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store i32* @g_6, i32** %l_7, align 8, !tbaa !5
  %5 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = getelementptr inbounds [8 x [8 x [4 x i32]]], [8 x [8 x [4 x i32]]]* %l_4, i32 0, i64 6
  %9 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* %8, i32 0, i64 2
  %10 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i32 0, i64 2
  %11 = load i32, i32* %10, align 4, !tbaa !1
  %12 = trunc i32 %11 to i8
  %13 = call zeroext i8 @safe_mod_func_uint8_t_u_u(i8 zeroext -45, i8 zeroext %12)
  %14 = zext i8 %13 to i32
  %15 = load i32*, i32** %l_7, align 8, !tbaa !5
  %16 = load i32, i32* %15, align 4, !tbaa !1
  %17 = and i32 %16, %14
  store i32 %17, i32* %15, align 4, !tbaa !1
  %18 = bitcast %union.U0* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* bitcast (%union.U0* @g_8 to i8*), i64 4, i32 4, i1 false), !tbaa.struct !10
  %19 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  %20 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  %21 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %22 = bitcast i32** %l_7 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = bitcast [8 x [8 x [4 x i32]]]* %l_4 to i8*
  call void @llvm.lifetime.end(i64 1024, i8* %23) #1
  %24 = getelementptr %union.U0, %union.U0* %1, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  ret i32 %25
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
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i32 0, i32 0), i8* %8, i64 %11)
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
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i32 %3)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

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
!10 = !{i64 0, i64 4, !1, i64 0, i64 4, !1, i64 0, i64 1, !9}
