; ModuleID = '00574.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S2 = type { i16 }

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_4 = internal global i32 7, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"g_4\00", align 1
@g_10 = internal global [10 x i64] zeroinitializer, align 16
@.str.2 = private unnamed_addr constant [8 x i8] c"g_10[i]\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_14 = internal global i16 -24708, align 2
@.str.4 = private unnamed_addr constant [5 x i8] c"g_14\00", align 1
@g_22 = internal global [5 x [4 x i8]] [[4 x i8] c"\FB\FB\87\01", [4 x i8] c"\FB\00u\FB", [4 x i8] c"r\01ru", [4 x i8] c"\F9\01\87\FB", [4 x i8] c"\01\00\00\01"], align 16
@.str.5 = private unnamed_addr constant [11 x i8] c"g_22[i][j]\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@func_1.l_20 = private unnamed_addr constant { i8, i8 } { i8 -9, i8 11 }, align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

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
  store i32 0, i32* %1
  store i32 %argc, i32* %2, align 4, !tbaa !1
  store i8** %argv, i8*** %3, align 8, !tbaa !5
  %6 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %j to i8*
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
  %90 = load i32, i32* @g_4, align 4, !tbaa !1
  %91 = sext i32 %90 to i64
  %92 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %91, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %92)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %93

; <label>:93                                      ; preds = %108, %88
  %94 = load i32, i32* %i, align 4, !tbaa !1
  %95 = icmp slt i32 %94, 10
  br i1 %95, label %96, label %111

; <label>:96                                      ; preds = %93
  %97 = load i32, i32* %i, align 4, !tbaa !1
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [10 x i64], [10 x i64]* @g_10, i32 0, i64 %98
  %100 = load i64, i64* %99, align 8, !tbaa !7
  %101 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %100, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32 %101)
  %102 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

; <label>:104                                     ; preds = %96
  %105 = load i32, i32* %i, align 4, !tbaa !1
  %106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i32 %105)
  br label %107

; <label>:107                                     ; preds = %104, %96
  br label %108

; <label>:108                                     ; preds = %107
  %109 = load i32, i32* %i, align 4, !tbaa !1
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %i, align 4, !tbaa !1
  br label %93

; <label>:111                                     ; preds = %93
  %112 = load i16, i16* @g_14, align 2, !tbaa !10
  %113 = zext i16 %112 to i64
  %114 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %113, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %114)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %115

; <label>:115                                     ; preds = %143, %111
  %116 = load i32, i32* %i, align 4, !tbaa !1
  %117 = icmp slt i32 %116, 5
  br i1 %117, label %118, label %146

; <label>:118                                     ; preds = %115
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %119

; <label>:119                                     ; preds = %139, %118
  %120 = load i32, i32* %j, align 4, !tbaa !1
  %121 = icmp slt i32 %120, 4
  br i1 %121, label %122, label %142

; <label>:122                                     ; preds = %119
  %123 = load i32, i32* %j, align 4, !tbaa !1
  %124 = sext i32 %123 to i64
  %125 = load i32, i32* %i, align 4, !tbaa !1
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [5 x [4 x i8]], [5 x [4 x i8]]* @g_22, i32 0, i64 %126
  %128 = getelementptr inbounds [4 x i8], [4 x i8]* %127, i32 0, i64 %124
  %129 = load i8, i8* %128, align 1, !tbaa !9
  %130 = sext i8 %129 to i64
  %131 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %130, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i32 %131)
  %132 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

; <label>:134                                     ; preds = %122
  %135 = load i32, i32* %i, align 4, !tbaa !1
  %136 = load i32, i32* %j, align 4, !tbaa !1
  %137 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0), i32 %135, i32 %136)
  br label %138

; <label>:138                                     ; preds = %134, %122
  br label %139

; <label>:139                                     ; preds = %138
  %140 = load i32, i32* %j, align 4, !tbaa !1
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %j, align 4, !tbaa !1
  br label %119

; <label>:142                                     ; preds = %119
  br label %143

; <label>:143                                     ; preds = %142
  %144 = load i32, i32* %i, align 4, !tbaa !1
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %i, align 4, !tbaa !1
  br label %115

; <label>:146                                     ; preds = %115
  %147 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %148 = zext i32 %147 to i64
  %149 = xor i64 %148, 4294967295
  %150 = trunc i64 %149 to i32
  %151 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %150, i32 %151)
  %152 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %152) #1
  %153 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %153) #1
  %154 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %154) #1
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
  %l_5 = alloca i32, align 4
  %l_8 = alloca i64, align 8
  %l_9 = alloca i64*, align 8
  %l_13 = alloca i16*, align 8
  %l_20 = alloca %struct.S2, align 1
  %l_21 = alloca i8*, align 8
  %l_23 = alloca i32, align 4
  %1 = bitcast i32* %l_5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 -1, i32* %l_5, align 4, !tbaa !1
  %2 = bitcast i64* %l_8 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store i64 -2447283241902914111, i64* %l_8, align 8, !tbaa !7
  %3 = bitcast i64** %l_9 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store i64* getelementptr inbounds ([10 x i64], [10 x i64]* @g_10, i32 0, i64 3), i64** %l_9, align 8, !tbaa !5
  %4 = bitcast i16** %l_13 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store i16* @g_14, i16** %l_13, align 8, !tbaa !5
  %5 = bitcast %struct.S2* %l_20 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %5) #1
  %6 = bitcast %struct.S2* %l_20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* getelementptr inbounds ({ i8, i8 }, { i8, i8 }* @func_1.l_20, i32 0, i32 0), i64 2, i32 1, i1 false)
  %7 = bitcast i8** %l_21 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store i8* getelementptr inbounds ([5 x [4 x i8]], [5 x [4 x i8]]* @g_22, i32 0, i64 2, i64 1), i8** %l_21, align 8, !tbaa !5
  %8 = bitcast i32* %l_23 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  store i32 -1, i32* %l_23, align 4, !tbaa !1
  %9 = load i32, i32* @g_4, align 4, !tbaa !1
  %10 = trunc i32 %9 to i8
  %11 = load i32, i32* %l_5, align 4, !tbaa !1
  %12 = sext i32 %11 to i64
  %13 = load i64, i64* %l_8, align 8, !tbaa !7
  %14 = call signext i16 @safe_rshift_func_int16_t_s_s(i16 signext 1, i32 7)
  %15 = sext i16 %14 to i64
  %16 = load i64*, i64** %l_9, align 8, !tbaa !5
  %17 = load i64, i64* %16, align 8, !tbaa !7
  %18 = xor i64 %17, %15
  store i64 %18, i64* %16, align 8, !tbaa !7
  %19 = icmp eq i64 %12, %18
  %20 = zext i1 %19 to i32
  %21 = load i32, i32* @g_4, align 4, !tbaa !1
  %22 = load i64, i64* %l_8, align 8, !tbaa !7
  %23 = load i16*, i16** %l_13, align 8, !tbaa !5
  %24 = load i16, i16* %23, align 2, !tbaa !10
  %25 = zext i16 %24 to i64
  %26 = and i64 %25, %22
  %27 = trunc i64 %26 to i16
  store i16 %27, i16* %23, align 2, !tbaa !10
  %28 = zext i16 %27 to i32
  %29 = load i32, i32* @g_4, align 4, !tbaa !1
  %30 = call signext i16 @safe_lshift_func_int16_t_s_s(i16 signext -1, i32 11)
  %31 = sext i16 %30 to i32
  %32 = icmp ne i32 %29, %31
  %33 = zext i1 %32 to i32
  %34 = load i32, i32* @g_4, align 4, !tbaa !1
  %35 = trunc i32 %34 to i8
  %36 = load i32, i32* @g_4, align 4, !tbaa !1
  %37 = trunc i32 %36 to i8
  %38 = call zeroext i8 @safe_sub_func_uint8_t_u_u(i8 zeroext %35, i8 zeroext %37)
  %39 = load i64, i64* %l_8, align 8, !tbaa !7
  %40 = icmp ne i64 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = icmp sge i32 %28, %42
  %44 = zext i1 %43 to i32
  %45 = load i32, i32* @g_4, align 4, !tbaa !1
  %46 = and i32 %44, %45
  %47 = load i8*, i8** %l_21, align 8, !tbaa !5
  %48 = load i8, i8* %47, align 1, !tbaa !9
  %49 = sext i8 %48 to i32
  %50 = and i32 %49, %46
  %51 = trunc i32 %50 to i8
  store i8 %51, i8* %47, align 1, !tbaa !9
  %52 = sext i8 %51 to i32
  %53 = icmp sgt i32 %21, %52
  %54 = zext i1 %53 to i32
  %55 = icmp slt i32 %20, %54
  %56 = zext i1 %55 to i32
  %57 = trunc i32 %56 to i8
  %58 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %10, i8 zeroext %57)
  %59 = zext i8 %58 to i32
  %60 = load i32, i32* %l_5, align 4, !tbaa !1
  %61 = icmp sgt i32 %59, %60
  %62 = zext i1 %61 to i32
  %63 = load i32, i32* %l_23, align 4, !tbaa !1
  %64 = or i32 %63, %62
  store i32 %64, i32* %l_23, align 4, !tbaa !1
  %65 = bitcast %struct.S2* %l_20 to i16*
  %66 = load i16, i16* %65, align 1
  %67 = shl i16 %66, 6
  %68 = ashr i16 %67, 6
  %69 = sext i16 %68 to i32
  %70 = bitcast i32* %l_23 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #1
  %71 = bitcast i8** %l_21 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #1
  %72 = bitcast %struct.S2* %l_20 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %72) #1
  %73 = bitcast i16** %l_13 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #1
  %74 = bitcast i64** %l_9 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #1
  %75 = bitcast i64* %l_8 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #1
  %76 = bitcast i32* %l_5 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #1
  ret i32 %69
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

declare i32 @printf(i8*, ...) #3

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
define internal signext i16 @safe_rshift_func_int16_t_s_s(i16 signext %left, i32 %right) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i32, align 4
  store i16 %left, i16* %1, align 2, !tbaa !10
  store i32 %right, i32* %2, align 4, !tbaa !1
  %3 = load i16, i16* %1, align 2, !tbaa !10
  %4 = sext i16 %3 to i32
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %12, label %6

; <label>:6                                       ; preds = %0
  %7 = load i32, i32* %2, align 4, !tbaa !1
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %12, label %9

; <label>:9                                       ; preds = %6
  %10 = load i32, i32* %2, align 4, !tbaa !1
  %11 = icmp sge i32 %10, 32
  br i1 %11, label %12, label %15

; <label>:12                                      ; preds = %9, %6, %0
  %13 = load i16, i16* %1, align 2, !tbaa !10
  %14 = sext i16 %13 to i32
  br label %20

; <label>:15                                      ; preds = %9
  %16 = load i16, i16* %1, align 2, !tbaa !10
  %17 = sext i16 %16 to i32
  %18 = load i32, i32* %2, align 4, !tbaa !1
  %19 = ashr i32 %17, %18
  br label %20

; <label>:20                                      ; preds = %15, %12
  %21 = phi i32 [ %14, %12 ], [ %19, %15 ]
  %22 = trunc i32 %21 to i16
  ret i16 %22
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
