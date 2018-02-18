; ModuleID = '00879.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S2 = type <{ %struct.S0, i16, %struct.S0, i16, i64, i32, i32, i8 }>
%struct.S0 = type { i64 }

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_3 = internal global [10 x [8 x i32]] [[8 x i32] [i32 3, i32 2086343952, i32 3, i32 3, i32 2086343952, i32 3, i32 3, i32 2086343952], [8 x i32] [i32 2086343952, i32 3, i32 3, i32 2086343952, i32 3, i32 3, i32 2086343952, i32 3], [8 x i32] [i32 2086343952, i32 2086343952, i32 6, i32 2086343952, i32 2086343952, i32 6, i32 2086343952, i32 2086343952], [8 x i32] [i32 3, i32 2086343952, i32 3, i32 3, i32 2086343952, i32 3, i32 3, i32 2086343952], [8 x i32] [i32 2086343952, i32 3, i32 3, i32 2086343952, i32 3, i32 3, i32 2086343952, i32 3], [8 x i32] [i32 2086343952, i32 2086343952, i32 6, i32 2086343952, i32 2086343952, i32 6, i32 3, i32 3], [8 x i32] [i32 6, i32 3, i32 6, i32 6, i32 3, i32 6, i32 6, i32 3], [8 x i32] [i32 3, i32 6, i32 6, i32 3, i32 6, i32 6, i32 3, i32 6], [8 x i32] [i32 3, i32 3, i32 2086343952, i32 3, i32 3, i32 2086343952, i32 3, i32 3], [8 x i32] [i32 6, i32 3, i32 6, i32 6, i32 3, i32 6, i32 6, i32 3]], align 16
@.str.1 = private unnamed_addr constant [10 x i8] c"g_3[i][j]\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"g_4.f0.f0\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"g_4.f0.f1\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"g_4.f0.f2\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"g_4.f1\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"g_4.f2.f0\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"g_4.f2.f1\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"g_4.f2.f2\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"g_4.f3\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"g_4.f4\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"g_4.f5\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"g_4.f6\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"g_4.f7\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@.str.15 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@g_4 = internal global <{ { i8, i8, i8, i8, i8, i8, i8, i8 }, i16, { i8, i8, i8, i8, i8, i8, i8, i8 }, i16, i64, i32, i32, i8 }> <{ { i8, i8, i8, i8, i8, i8, i8, i8 } { i8 19, i8 124, i8 1, i8 0, i8 -128, i8 119, i8 0, i8 0 }, i16 13309, { i8, i8, i8, i8, i8, i8, i8, i8 } { i8 5, i8 120, i8 -81, i8 -1, i8 39, i8 22, i8 0, i8 0 }, i16 0, i64 5378452995564492422, i32 935155197, i32 -1, i8 5 }>, align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

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
  %6 = alloca %struct.S2, align 1
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
  %90 = bitcast %struct.S2* %6 to i8*
  call void @llvm.lifetime.start(i64 37, i8* %90) #1
  call void @func_1(%struct.S2* sret %6)
  %91 = bitcast %struct.S2* %6 to i8*
  call void @llvm.lifetime.end(i64 37, i8* %91) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %92

; <label>:92                                      ; preds = %120, %89
  %93 = load i32, i32* %i, align 4, !tbaa !1
  %94 = icmp slt i32 %93, 10
  br i1 %94, label %95, label %123

; <label>:95                                      ; preds = %92
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %96

; <label>:96                                      ; preds = %116, %95
  %97 = load i32, i32* %j, align 4, !tbaa !1
  %98 = icmp slt i32 %97, 8
  br i1 %98, label %99, label %119

; <label>:99                                      ; preds = %96
  %100 = load i32, i32* %j, align 4, !tbaa !1
  %101 = sext i32 %100 to i64
  %102 = load i32, i32* %i, align 4, !tbaa !1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [10 x [8 x i32]], [10 x [8 x i32]]* @g_3, i32 0, i64 %103
  %105 = getelementptr inbounds [8 x i32], [8 x i32]* %104, i32 0, i64 %101
  %106 = load i32, i32* %105, align 4, !tbaa !1
  %107 = sext i32 %106 to i64
  %108 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %107, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 %108)
  %109 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

; <label>:111                                     ; preds = %99
  %112 = load i32, i32* %i, align 4, !tbaa !1
  %113 = load i32, i32* %j, align 4, !tbaa !1
  %114 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i32 %112, i32 %113)
  br label %115

; <label>:115                                     ; preds = %111, %99
  br label %116

; <label>:116                                     ; preds = %115
  %117 = load i32, i32* %j, align 4, !tbaa !1
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %j, align 4, !tbaa !1
  br label %96

; <label>:119                                     ; preds = %96
  br label %120

; <label>:120                                     ; preds = %119
  %121 = load i32, i32* %i, align 4, !tbaa !1
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %i, align 4, !tbaa !1
  br label %92

; <label>:123                                     ; preds = %92
  %124 = load volatile i64, i64* getelementptr inbounds (%struct.S2, %struct.S2* bitcast (<{ { i8, i8, i8, i8, i8, i8, i8, i8 }, i16, { i8, i8, i8, i8, i8, i8, i8, i8 }, i16, i64, i32, i32, i8 }>* @g_4 to %struct.S2*), i32 0, i32 0, i32 0), align 1
  %125 = and i64 %124, 1023
  %126 = trunc i64 %125 to i32
  %127 = zext i32 %126 to i64
  %128 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %127, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 %128)
  %129 = load volatile i64, i64* getelementptr inbounds (%struct.S2, %struct.S2* bitcast (<{ { i8, i8, i8, i8, i8, i8, i8, i8 }, i16, { i8, i8, i8, i8, i8, i8, i8, i8 }, i16, i64, i32, i32, i8 }>* @g_4 to %struct.S2*), i32 0, i32 0, i32 0), align 1
  %130 = shl i64 %129, 29
  %131 = ashr i64 %130, 39
  %132 = trunc i64 %131 to i32
  %133 = sext i32 %132 to i64
  %134 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %133, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i32 %134)
  %135 = load volatile i64, i64* getelementptr inbounds (%struct.S2, %struct.S2* bitcast (<{ { i8, i8, i8, i8, i8, i8, i8, i8 }, i16, { i8, i8, i8, i8, i8, i8, i8, i8 }, i16, i64, i32, i32, i8 }>* @g_4 to %struct.S2*), i32 0, i32 0, i32 0), align 1
  %136 = lshr i64 %135, 35
  %137 = and i64 %136, 16777215
  %138 = trunc i64 %137 to i32
  %139 = zext i32 %138 to i64
  %140 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %139, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i32 %140)
  %141 = load i16, i16* getelementptr inbounds (%struct.S2, %struct.S2* bitcast (<{ { i8, i8, i8, i8, i8, i8, i8, i8 }, i16, { i8, i8, i8, i8, i8, i8, i8, i8 }, i16, i64, i32, i32, i8 }>* @g_4 to %struct.S2*), i32 0, i32 1), align 1, !tbaa !10
  %142 = sext i16 %141 to i64
  %143 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %142, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i32 %143)
  %144 = load i64, i64* getelementptr inbounds (%struct.S2, %struct.S2* bitcast (<{ { i8, i8, i8, i8, i8, i8, i8, i8 }, i16, { i8, i8, i8, i8, i8, i8, i8, i8 }, i16, i64, i32, i32, i8 }>* @g_4 to %struct.S2*), i32 0, i32 2, i32 0), align 1
  %145 = and i64 %144, 1023
  %146 = trunc i64 %145 to i32
  %147 = zext i32 %146 to i64
  %148 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %147, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i32 %148)
  %149 = load i64, i64* getelementptr inbounds (%struct.S2, %struct.S2* bitcast (<{ { i8, i8, i8, i8, i8, i8, i8, i8 }, i16, { i8, i8, i8, i8, i8, i8, i8, i8 }, i16, i64, i32, i32, i8 }>* @g_4 to %struct.S2*), i32 0, i32 2, i32 0), align 1
  %150 = shl i64 %149, 29
  %151 = ashr i64 %150, 39
  %152 = trunc i64 %151 to i32
  %153 = sext i32 %152 to i64
  %154 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %153, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i32 %154)
  %155 = load i64, i64* getelementptr inbounds (%struct.S2, %struct.S2* bitcast (<{ { i8, i8, i8, i8, i8, i8, i8, i8 }, i16, { i8, i8, i8, i8, i8, i8, i8, i8 }, i16, i64, i32, i32, i8 }>* @g_4 to %struct.S2*), i32 0, i32 2, i32 0), align 1
  %156 = lshr i64 %155, 35
  %157 = and i64 %156, 16777215
  %158 = trunc i64 %157 to i32
  %159 = zext i32 %158 to i64
  %160 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %159, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i32 %160)
  %161 = load i16, i16* getelementptr inbounds (%struct.S2, %struct.S2* bitcast (<{ { i8, i8, i8, i8, i8, i8, i8, i8 }, i16, { i8, i8, i8, i8, i8, i8, i8, i8 }, i16, i64, i32, i32, i8 }>* @g_4 to %struct.S2*), i32 0, i32 3), align 1, !tbaa !14
  %162 = zext i16 %161 to i64
  %163 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %162, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i32 %163)
  %164 = load i64, i64* getelementptr inbounds (%struct.S2, %struct.S2* bitcast (<{ { i8, i8, i8, i8, i8, i8, i8, i8 }, i16, { i8, i8, i8, i8, i8, i8, i8, i8 }, i16, i64, i32, i32, i8 }>* @g_4 to %struct.S2*), i32 0, i32 4), align 1, !tbaa !15
  %165 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %164, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i32 %165)
  %166 = load i32, i32* getelementptr inbounds (%struct.S2, %struct.S2* bitcast (<{ { i8, i8, i8, i8, i8, i8, i8, i8 }, i16, { i8, i8, i8, i8, i8, i8, i8, i8 }, i16, i64, i32, i32, i8 }>* @g_4 to %struct.S2*), i32 0, i32 5), align 1, !tbaa !16
  %167 = zext i32 %166 to i64
  %168 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %167, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i32 %168)
  %169 = load i32, i32* getelementptr inbounds (%struct.S2, %struct.S2* bitcast (<{ { i8, i8, i8, i8, i8, i8, i8, i8 }, i16, { i8, i8, i8, i8, i8, i8, i8, i8 }, i16, i64, i32, i32, i8 }>* @g_4 to %struct.S2*), i32 0, i32 6), align 1, !tbaa !17
  %170 = sext i32 %169 to i64
  %171 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %170, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), i32 %171)
  %172 = load volatile i8, i8* getelementptr inbounds (%struct.S2, %struct.S2* bitcast (<{ { i8, i8, i8, i8, i8, i8, i8, i8 }, i16, { i8, i8, i8, i8, i8, i8, i8, i8 }, i16, i64, i32, i32, i8 }>* @g_4 to %struct.S2*), i32 0, i32 7), align 1, !tbaa !18
  %173 = zext i8 %172 to i64
  %174 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %173, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i32 %174)
  %175 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %176 = zext i32 %175 to i64
  %177 = xor i64 %176, 4294967295
  %178 = trunc i64 %177 to i32
  %179 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %178, i32 %179)
  %180 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %180) #1
  %181 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %181) #1
  %182 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %182) #1
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
  %l_2 = alloca i32*, align 8
  %1 = bitcast i32** %l_2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store i32* getelementptr inbounds ([10 x [8 x i32]], [10 x [8 x i32]]* @g_3, i32 0, i64 3, i64 6), i32** %l_2, align 8, !tbaa !5
  %2 = load i32*, i32** %l_2, align 8, !tbaa !5
  %3 = load i32, i32* %2, align 4, !tbaa !1
  %4 = sext i32 %3 to i64
  %5 = and i64 %4, 0
  %6 = trunc i64 %5 to i32
  store i32 %6, i32* %2, align 4, !tbaa !1
  %7 = load i32*, i32** %l_2, align 8, !tbaa !5
  %8 = icmp ne i32* %7, null
  %9 = zext i1 %8 to i32
  %10 = load i32, i32* getelementptr inbounds ([10 x [8 x i32]], [10 x [8 x i32]]* @g_3, i32 0, i64 3, i64 6), align 4, !tbaa !1
  %11 = and i32 %10, %9
  store i32 %11, i32* getelementptr inbounds ([10 x [8 x i32]], [10 x [8 x i32]]* @g_3, i32 0, i64 3, i64 6), align 4, !tbaa !1
  %12 = bitcast %struct.S2* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* getelementptr inbounds (<{ { i8, i8, i8, i8, i8, i8, i8, i8 }, i16, { i8, i8, i8, i8, i8, i8, i8, i8 }, i16, i64, i32, i32, i8 }>, <{ { i8, i8, i8, i8, i8, i8, i8, i8 }, i16, { i8, i8, i8, i8, i8, i8, i8, i8 }, i16, i64, i32, i32, i8 }>* @g_4, i32 0, i32 0, i32 0), i64 37, i32 1, i1 false), !tbaa.struct !19
  %13 = bitcast i32** %l_2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
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
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.15, i32 0, i32 0), i8* %8, i64 %11)
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
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), i32 %3)
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
!10 = !{!11, !13, i64 8}
!11 = !{!"S2", !12, i64 0, !13, i64 8, !12, i64 10, !13, i64 18, !8, i64 20, !2, i64 28, !2, i64 32, !3, i64 36}
!12 = !{!"S0", !2, i64 0, !2, i64 1, !2, i64 4}
!13 = !{!"short", !3, i64 0}
!14 = !{!11, !13, i64 18}
!15 = !{!11, !8, i64 20}
!16 = !{!11, !2, i64 28}
!17 = !{!11, !2, i64 32}
!18 = !{!11, !3, i64 36}
!19 = !{i64 0, i64 4, !1, i64 1, i64 4, !1, i64 4, i64 4, !1, i64 8, i64 2, !20, i64 10, i64 4, !1, i64 11, i64 4, !1, i64 14, i64 4, !1, i64 18, i64 2, !20, i64 20, i64 8, !7, i64 28, i64 4, !1, i64 32, i64 4, !1, i64 36, i64 1, !9}
!20 = !{!13, !13, i64 0}
