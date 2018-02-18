; ModuleID = '00920.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S2 = type <{ i64, i64, [7 x i8] }>

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_4 = internal global [2 x i32] [i32 1079832528, i32 1079832528], align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"g_4[i]\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"g_5.f0\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"g_5.f1\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"g_5.f2\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"g_5.f3\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"g_5.f4\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"g_5.f5\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"g_5.f6\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"g_5.f7\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@.str.11 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@g_5 = internal global <{ i8, i8, i8, i8, i8, i8, i8, i8, i64, i8, i8, i8, i8, i8, i8, i8 }> <{ i8 14, i8 32, i8 0, i8 -1, i8 -81, i8 -124, i8 0, i8 0, i64 8827521662156543480, i8 36, i8 -80, i8 97, i8 -2, i8 -1, i8 59, i8 0 }>, align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

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
  %6 = alloca %struct.S2, align 1
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
  %89 = bitcast %struct.S2* %6 to i8*
  call void @llvm.lifetime.start(i64 23, i8* %89) #1
  call void @func_1(%struct.S2* sret %6)
  %90 = bitcast %struct.S2* %6 to i8*
  call void @llvm.lifetime.end(i64 23, i8* %90) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %91

; <label>:91                                      ; preds = %107, %88
  %92 = load i32, i32* %i, align 4, !tbaa !1
  %93 = icmp slt i32 %92, 2
  br i1 %93, label %94, label %110

; <label>:94                                      ; preds = %91
  %95 = load i32, i32* %i, align 4, !tbaa !1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [2 x i32], [2 x i32]* @g_4, i32 0, i64 %96
  %98 = load i32, i32* %97, align 4, !tbaa !1
  %99 = sext i32 %98 to i64
  %100 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %99, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 %100)
  %101 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

; <label>:103                                     ; preds = %94
  %104 = load i32, i32* %i, align 4, !tbaa !1
  %105 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 %104)
  br label %106

; <label>:106                                     ; preds = %103, %94
  br label %107

; <label>:107                                     ; preds = %106
  %108 = load i32, i32* %i, align 4, !tbaa !1
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %i, align 4, !tbaa !1
  br label %91

; <label>:110                                     ; preds = %91
  %111 = load i64, i64* getelementptr inbounds (%struct.S2, %struct.S2* bitcast (<{ i8, i8, i8, i8, i8, i8, i8, i8, i64, i8, i8, i8, i8, i8, i8, i8 }>* @g_5 to %struct.S2*), i32 0, i32 0), align 1
  %112 = shl i64 %111, 51
  %113 = ashr i64 %112, 51
  %114 = trunc i64 %113 to i32
  %115 = sext i32 %114 to i64
  %116 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %115, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i32 %116)
  %117 = load i64, i64* getelementptr inbounds (%struct.S2, %struct.S2* bitcast (<{ i8, i8, i8, i8, i8, i8, i8, i8, i64, i8, i8, i8, i8, i8, i8, i8 }>* @g_5 to %struct.S2*), i32 0, i32 0), align 1
  %118 = lshr i64 %117, 13
  %119 = and i64 %118, 7
  %120 = trunc i64 %119 to i32
  %121 = zext i32 %120 to i64
  %122 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %121, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i32 %122)
  %123 = load volatile i64, i64* getelementptr inbounds (%struct.S2, %struct.S2* bitcast (<{ i8, i8, i8, i8, i8, i8, i8, i8, i64, i8, i8, i8, i8, i8, i8, i8 }>* @g_5 to %struct.S2*), i32 0, i32 0), align 1
  %124 = shl i64 %123, 29
  %125 = ashr i64 %124, 45
  %126 = trunc i64 %125 to i32
  %127 = sext i32 %126 to i64
  %128 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %127, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i32 %128)
  %129 = load i64, i64* getelementptr inbounds (%struct.S2, %struct.S2* bitcast (<{ i8, i8, i8, i8, i8, i8, i8, i8, i64, i8, i8, i8, i8, i8, i8, i8 }>* @g_5 to %struct.S2*), i32 0, i32 0), align 1
  %130 = lshr i64 %129, 35
  %131 = trunc i64 %130 to i32
  %132 = zext i32 %131 to i64
  %133 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %132, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i32 %133)
  %134 = load volatile i64, i64* getelementptr inbounds (%struct.S2, %struct.S2* bitcast (<{ i8, i8, i8, i8, i8, i8, i8, i8, i64, i8, i8, i8, i8, i8, i8, i8 }>* @g_5 to %struct.S2*), i32 0, i32 1), align 1, !tbaa !10
  %135 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %134, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i32 %135)
  %136 = load i56, i56* bitcast ([7 x i8]* getelementptr inbounds (%struct.S2, %struct.S2* bitcast (<{ i8, i8, i8, i8, i8, i8, i8, i8, i64, i8, i8, i8, i8, i8, i8, i8 }>* @g_5 to %struct.S2*), i32 0, i32 2) to i56*), align 1
  %137 = shl i56 %136, 44
  %138 = ashr i56 %137, 44
  %139 = trunc i56 %138 to i32
  %140 = sext i32 %139 to i64
  %141 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %140, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i32 %141)
  %142 = load i56, i56* bitcast ([7 x i8]* getelementptr inbounds (%struct.S2, %struct.S2* bitcast (<{ i8, i8, i8, i8, i8, i8, i8, i8, i64, i8, i8, i8, i8, i8, i8, i8 }>* @g_5 to %struct.S2*), i32 0, i32 2) to i56*), align 1
  %143 = shl i56 %142, 14
  %144 = ashr i56 %143, 26
  %145 = trunc i56 %144 to i32
  %146 = sext i32 %145 to i64
  %147 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %146, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i32 %147)
  %148 = load i56, i56* bitcast ([7 x i8]* getelementptr inbounds (%struct.S2, %struct.S2* bitcast (<{ i8, i8, i8, i8, i8, i8, i8, i8, i64, i8, i8, i8, i8, i8, i8, i8 }>* @g_5 to %struct.S2*), i32 0, i32 2) to i56*), align 1
  %149 = lshr i56 %148, 42
  %150 = and i56 %149, 1023
  %151 = trunc i56 %150 to i32
  %152 = zext i32 %151 to i64
  %153 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %152, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i32 %153)
  %154 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %155 = zext i32 %154 to i64
  %156 = xor i64 %155, 4294967295
  %157 = trunc i64 %156 to i32
  %158 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %157, i32 %158)
  %159 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %159) #1
  %160 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %160) #1
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
define internal void @func_1(%struct.S2* noalias sret %agg.result) #0 {
  %l_3 = alloca i32*, align 8
  %l_2 = alloca i32**, align 8
  %1 = bitcast i32** %l_3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_4, i32 0, i64 0), i32** %l_3, align 8, !tbaa !5
  %2 = bitcast i32*** %l_2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store i32** %l_3, i32*** %l_2, align 8, !tbaa !5
  %3 = load i32**, i32*** %l_2, align 8, !tbaa !5
  store i32* null, i32** %3, align 8, !tbaa !5
  %4 = bitcast %struct.S2* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* getelementptr inbounds (<{ i8, i8, i8, i8, i8, i8, i8, i8, i64, i8, i8, i8, i8, i8, i8, i8 }>, <{ i8, i8, i8, i8, i8, i8, i8, i8, i64, i8, i8, i8, i8, i8, i8, i8 }>* @g_5, i32 0, i32 0), i64 23, i32 1, i1 false), !tbaa.struct !12
  %5 = bitcast i32*** %l_2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #1
  %6 = bitcast i32** %l_3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %6) #1
  ret void
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
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i32 0, i32 0), i8* %8, i64 %11)
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
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0), i32 %3)
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
!10 = !{!11, !8, i64 8}
!11 = !{!"S2", !2, i64 0, !2, i64 1, !2, i64 2, !2, i64 4, !8, i64 8, !2, i64 16, !2, i64 17, !2, i64 21}
!12 = !{i64 0, i64 4, !1, i64 1, i64 4, !1, i64 2, i64 4, !1, i64 4, i64 4, !1, i64 8, i64 8, !7, i64 16, i64 4, !1, i64 17, i64 4, !1, i64 21, i64 4, !1}
