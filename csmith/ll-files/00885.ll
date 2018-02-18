; ModuleID = '00885.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S0 = type <{ i32, i16, i64, i64, i32, i8, i32, i64, i32, i8 }>

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_3 = internal global i32 -1235626648, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"g_3\00", align 1
@g_8 = internal global [1 x [4 x i32]] [[4 x i32] [i32 -1030967761, i32 -1030967761, i32 -1030967761, i32 -1030967761]], align 16
@.str.2 = private unnamed_addr constant [10 x i8] c"g_8[i][j]\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@g_28 = internal global i16 -1, align 2
@.str.4 = private unnamed_addr constant [5 x i8] c"g_28\00", align 1
@g_31 = internal global i32 -192894850, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"g_31\00", align 1
@g_35 = internal global %struct.S0 <{ i32 1, i16 0, i64 2, i64 0, i32 -9, i8 6, i32 -1, i64 0, i32 1214603882, i8 -1 }>, align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"g_35.f0\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"g_35.f1\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"g_35.f2\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"g_35.f3\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"g_35.f4\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"g_35.f5\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"g_35.f6\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"g_35.f7\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"g_35.f8\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"g_35.f9\00", align 1
@g_37 = internal global i8 0, align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"g_37\00", align 1
@g_48 = internal global i32 1740011568, align 4
@.str.17 = private unnamed_addr constant [5 x i8] c"g_48\00", align 1
@g_61 = internal global i16 -6996, align 2
@.str.18 = private unnamed_addr constant [5 x i8] c"g_61\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@func_1.l_32 = private unnamed_addr constant [9 x [5 x i32]] [[5 x i32] [i32 2096148116, i32 2096148116, i32 935352217, i32 2096148116, i32 2096148116], [5 x i32] [i32 0, i32 1628841457, i32 0, i32 0, i32 1628841457], [5 x i32] [i32 2096148116, i32 1193324418, i32 1193324418, i32 2096148116, i32 1193324418], [5 x i32] [i32 1628841457, i32 1628841457, i32 -1, i32 1628841457, i32 1628841457], [5 x i32] [i32 1193324418, i32 2096148116, i32 1193324418, i32 1193324418, i32 2096148116], [5 x i32] [i32 1628841457, i32 0, i32 0, i32 1628841457, i32 0], [5 x i32] [i32 2096148116, i32 2096148116, i32 935352217, i32 2096148116, i32 2096148116], [5 x i32] [i32 0, i32 1628841457, i32 0, i32 0, i32 1628841457], [5 x i32] [i32 2096148116, i32 1193324418, i32 935352217, i32 1193324418, i32 935352217]], align 16
@.str.19 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

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
  %89 = call i64 @func_1()
  %90 = load i32, i32* @g_3, align 4, !tbaa !1
  %91 = sext i32 %90 to i64
  %92 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %91, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %92)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %93

; <label>:93                                      ; preds = %121, %88
  %94 = load i32, i32* %i, align 4, !tbaa !1
  %95 = icmp slt i32 %94, 1
  br i1 %95, label %96, label %124

; <label>:96                                      ; preds = %93
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %97

; <label>:97                                      ; preds = %117, %96
  %98 = load i32, i32* %j, align 4, !tbaa !1
  %99 = icmp slt i32 %98, 4
  br i1 %99, label %100, label %120

; <label>:100                                     ; preds = %97
  %101 = load i32, i32* %j, align 4, !tbaa !1
  %102 = sext i32 %101 to i64
  %103 = load i32, i32* %i, align 4, !tbaa !1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [1 x [4 x i32]], [1 x [4 x i32]]* @g_8, i32 0, i64 %104
  %106 = getelementptr inbounds [4 x i32], [4 x i32]* %105, i32 0, i64 %102
  %107 = load i32, i32* %106, align 4, !tbaa !1
  %108 = sext i32 %107 to i64
  %109 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %108, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i32 %109)
  %110 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

; <label>:112                                     ; preds = %100
  %113 = load i32, i32* %i, align 4, !tbaa !1
  %114 = load i32, i32* %j, align 4, !tbaa !1
  %115 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0), i32 %113, i32 %114)
  br label %116

; <label>:116                                     ; preds = %112, %100
  br label %117

; <label>:117                                     ; preds = %116
  %118 = load i32, i32* %j, align 4, !tbaa !1
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %j, align 4, !tbaa !1
  br label %97

; <label>:120                                     ; preds = %97
  br label %121

; <label>:121                                     ; preds = %120
  %122 = load i32, i32* %i, align 4, !tbaa !1
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %i, align 4, !tbaa !1
  br label %93

; <label>:124                                     ; preds = %93
  %125 = load i16, i16* @g_28, align 2, !tbaa !10
  %126 = sext i16 %125 to i64
  %127 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %126, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %127)
  %128 = load i32, i32* @g_31, align 4, !tbaa !1
  %129 = sext i32 %128 to i64
  %130 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %129, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 %130)
  %131 = load volatile i32, i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_35, i32 0, i32 0), align 1, !tbaa !12
  %132 = zext i32 %131 to i64
  %133 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %132, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i32 %133)
  %134 = load volatile i16, i16* getelementptr inbounds (%struct.S0, %struct.S0* @g_35, i32 0, i32 1), align 1, !tbaa !14
  %135 = zext i16 %134 to i64
  %136 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %135, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i32 %136)
  %137 = load volatile i64, i64* getelementptr inbounds (%struct.S0, %struct.S0* @g_35, i32 0, i32 2), align 1, !tbaa !15
  %138 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %137, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i32 %138)
  %139 = load volatile i64, i64* getelementptr inbounds (%struct.S0, %struct.S0* @g_35, i32 0, i32 3), align 1, !tbaa !16
  %140 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %139, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i32 %140)
  %141 = load volatile i32, i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_35, i32 0, i32 4), align 1, !tbaa !17
  %142 = zext i32 %141 to i64
  %143 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %142, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i32 %143)
  %144 = load volatile i8, i8* getelementptr inbounds (%struct.S0, %struct.S0* @g_35, i32 0, i32 5), align 1, !tbaa !18
  %145 = zext i8 %144 to i64
  %146 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %145, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i32 %146)
  %147 = load volatile i32, i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_35, i32 0, i32 6), align 1, !tbaa !19
  %148 = zext i32 %147 to i64
  %149 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %148, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i32 %149)
  %150 = load volatile i64, i64* getelementptr inbounds (%struct.S0, %struct.S0* @g_35, i32 0, i32 7), align 1, !tbaa !20
  %151 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %150, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i32 %151)
  %152 = load volatile i32, i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_35, i32 0, i32 8), align 1, !tbaa !21
  %153 = sext i32 %152 to i64
  %154 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %153, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i32 %154)
  %155 = load volatile i8, i8* getelementptr inbounds (%struct.S0, %struct.S0* @g_35, i32 0, i32 9), align 1, !tbaa !22
  %156 = zext i8 %155 to i64
  %157 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %156, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i32 %157)
  %158 = load i8, i8* @g_37, align 1, !tbaa !9
  %159 = sext i8 %158 to i64
  %160 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %159, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i32 %160)
  %161 = load i32, i32* @g_48, align 4, !tbaa !1
  %162 = sext i32 %161 to i64
  %163 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %162, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i32 %163)
  %164 = load i16, i16* @g_61, align 2, !tbaa !10
  %165 = zext i16 %164 to i64
  %166 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %165, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i32 %166)
  %167 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %168 = zext i32 %167 to i64
  %169 = xor i64 %168, 4294967295
  %170 = trunc i64 %169 to i32
  %171 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %170, i32 %171)
  %172 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %172) #1
  %173 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %173) #1
  %174 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %174) #1
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
  %1 = alloca i64, align 8
  %l_2 = alloca i32*, align 8
  %l_4 = alloca i32*, align 8
  %l_5 = alloca i32*, align 8
  %l_6 = alloca i32*, align 8
  %l_7 = alloca [7 x [2 x [1 x i32*]]], align 16
  %l_9 = alloca i64, align 8
  %l_10 = alloca i64, align 8
  %l_63 = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l_17 = alloca i32, align 4
  %l_49 = alloca i32, align 4
  %l_32 = alloca [9 x [5 x i32]], align 16
  %i1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  %l_27 = alloca i16*, align 8
  %l_29 = alloca i16*, align 8
  %l_30 = alloca [4 x i16*], align 16
  %l_42 = alloca i8, align 1
  %i3 = alloca i32, align 4
  %2 = alloca i32
  %l_36 = alloca i8*, align 8
  %l_43 = alloca i32*, align 8
  %3 = alloca %struct.S0, align 1
  %l_55 = alloca i16, align 2
  %l_60 = alloca i32, align 4
  %l_62 = alloca i32, align 4
  %i5 = alloca i32, align 4
  %j6 = alloca i32, align 4
  %i7 = alloca i32, align 4
  %j8 = alloca i32, align 4
  %k9 = alloca i32, align 4
  %i10 = alloca i32, align 4
  %j11 = alloca i32, align 4
  %k12 = alloca i32, align 4
  %4 = bitcast i32** %l_2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store i32* @g_3, i32** %l_2, align 8, !tbaa !5
  %5 = bitcast i32** %l_4 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store i32* @g_3, i32** %l_4, align 8, !tbaa !5
  %6 = bitcast i32** %l_5 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i32* @g_3, i32** %l_5, align 8, !tbaa !5
  %7 = bitcast i32** %l_6 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store i32* @g_3, i32** %l_6, align 8, !tbaa !5
  %8 = bitcast [7 x [2 x [1 x i32*]]]* %l_7 to i8*
  call void @llvm.lifetime.start(i64 112, i8* %8) #1
  %9 = bitcast i64* %l_9 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store i64 -2216662726719804767, i64* %l_9, align 8, !tbaa !7
  %10 = bitcast i64* %l_10 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i64 -9, i64* %l_10, align 8, !tbaa !7
  %11 = bitcast i64* %l_63 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store i64 -1178880259776923651, i64* %l_63, align 8, !tbaa !7
  %12 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %15

; <label>:15                                      ; preds = %44, %0
  %16 = load i32, i32* %i, align 4, !tbaa !1
  %17 = icmp slt i32 %16, 7
  br i1 %17, label %18, label %47

; <label>:18                                      ; preds = %15
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %19

; <label>:19                                      ; preds = %40, %18
  %20 = load i32, i32* %j, align 4, !tbaa !1
  %21 = icmp slt i32 %20, 2
  br i1 %21, label %22, label %43

; <label>:22                                      ; preds = %19
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %23

; <label>:23                                      ; preds = %36, %22
  %24 = load i32, i32* %k, align 4, !tbaa !1
  %25 = icmp slt i32 %24, 1
  br i1 %25, label %26, label %39

; <label>:26                                      ; preds = %23
  %27 = load i32, i32* %k, align 4, !tbaa !1
  %28 = sext i32 %27 to i64
  %29 = load i32, i32* %j, align 4, !tbaa !1
  %30 = sext i32 %29 to i64
  %31 = load i32, i32* %i, align 4, !tbaa !1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [7 x [2 x [1 x i32*]]], [7 x [2 x [1 x i32*]]]* %l_7, i32 0, i64 %32
  %34 = getelementptr inbounds [2 x [1 x i32*]], [2 x [1 x i32*]]* %33, i32 0, i64 %30
  %35 = getelementptr inbounds [1 x i32*], [1 x i32*]* %34, i32 0, i64 %28
  store i32* @g_3, i32** %35, align 8, !tbaa !5
  br label %36

; <label>:36                                      ; preds = %26
  %37 = load i32, i32* %k, align 4, !tbaa !1
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %k, align 4, !tbaa !1
  br label %23

; <label>:39                                      ; preds = %23
  br label %40

; <label>:40                                      ; preds = %39
  %41 = load i32, i32* %j, align 4, !tbaa !1
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %j, align 4, !tbaa !1
  br label %19

; <label>:43                                      ; preds = %19
  br label %44

; <label>:44                                      ; preds = %43
  %45 = load i32, i32* %i, align 4, !tbaa !1
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %i, align 4, !tbaa !1
  br label %15

; <label>:47                                      ; preds = %15
  %48 = load i64, i64* %l_10, align 8, !tbaa !7
  %49 = add i64 %48, 1
  store i64 %49, i64* %l_10, align 8, !tbaa !7
  %50 = load i32, i32* @g_3, align 4, !tbaa !1
  %51 = load i32*, i32** %l_5, align 8, !tbaa !5
  store i32 %50, i32* %51, align 4, !tbaa !1
  %52 = load i32, i32* getelementptr inbounds ([1 x [4 x i32]], [1 x [4 x i32]]* @g_8, i32 0, i64 0, i64 0), align 4, !tbaa !1
  %53 = xor i32 %52, %50
  store i32 %53, i32* getelementptr inbounds ([1 x [4 x i32]], [1 x [4 x i32]]* @g_8, i32 0, i64 0, i64 0), align 4, !tbaa !1
  store i64 0, i64* %l_9, align 8, !tbaa !7
  br label %54

; <label>:54                                      ; preds = %315, %47
  %55 = load i64, i64* %l_9, align 8, !tbaa !7
  %56 = icmp slt i64 %55, -8
  br i1 %56, label %57, label %318

; <label>:57                                      ; preds = %54
  %58 = bitcast i32* %l_17 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %58) #1
  store i32 1, i32* %l_17, align 4, !tbaa !1
  %59 = bitcast i32* %l_49 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %59) #1
  store i32 -5, i32* %l_49, align 4, !tbaa !1
  %60 = load i32, i32* %l_17, align 4, !tbaa !1
  %61 = trunc i32 %60 to i16
  %62 = call i32 @func_15(i16 signext %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %173

; <label>:64                                      ; preds = %57
  %65 = bitcast [9 x [5 x i32]]* %l_32 to i8*
  call void @llvm.lifetime.start(i64 180, i8* %65) #1
  %66 = bitcast [9 x [5 x i32]]* %l_32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %66, i8* bitcast ([9 x [5 x i32]]* @func_1.l_32 to i8*), i64 180, i32 16, i1 false)
  %67 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %67) #1
  %68 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %68) #1
  store i32 1, i32* @g_3, align 4, !tbaa !1
  br label %69

; <label>:69                                      ; preds = %155, %64
  %70 = load i32, i32* @g_3, align 4, !tbaa !1
  %71 = icmp sgt i32 %70, -2
  br i1 %71, label %72, label %160

; <label>:72                                      ; preds = %69
  %73 = bitcast i16** %l_27 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %73) #1
  store i16* @g_28, i16** %l_27, align 8, !tbaa !5
  %74 = bitcast i16** %l_29 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %74) #1
  store i16* null, i16** %l_29, align 8, !tbaa !5
  %75 = bitcast [4 x i16*]* %l_30 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %75) #1
  call void @llvm.lifetime.start(i64 1, i8* %l_42) #1
  store i8 0, i8* %l_42, align 1, !tbaa !9
  %76 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %76) #1
  store i32 0, i32* %i3, align 4, !tbaa !1
  br label %77

; <label>:77                                      ; preds = %84, %72
  %78 = load i32, i32* %i3, align 4, !tbaa !1
  %79 = icmp slt i32 %78, 4
  br i1 %79, label %80, label %87

; <label>:80                                      ; preds = %77
  %81 = load i32, i32* %i3, align 4, !tbaa !1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [4 x i16*], [4 x i16*]* %l_30, i32 0, i64 %82
  store i16* null, i16** %83, align 8, !tbaa !5
  br label %84

; <label>:84                                      ; preds = %80
  %85 = load i32, i32* %i3, align 4, !tbaa !1
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %i3, align 4, !tbaa !1
  br label %77

; <label>:87                                      ; preds = %77
  %88 = load i32, i32* @g_3, align 4, !tbaa !1
  %89 = load i32, i32* %l_17, align 4, !tbaa !1
  %90 = call i32 @safe_div_func_uint32_t_u_u(i32 %88, i32 %89)
  %91 = trunc i32 %90 to i8
  %92 = call zeroext i8 @safe_lshift_func_uint8_t_u_u(i8 zeroext %91, i32 7)
  %93 = zext i8 %92 to i16
  %94 = load i32, i32* @g_3, align 4, !tbaa !1
  %95 = trunc i32 %94 to i16
  %96 = call i32 @func_15(i16 signext %95)
  %97 = trunc i32 %96 to i16
  %98 = load i16*, i16** %l_27, align 8, !tbaa !5
  store i16 %97, i16* %98, align 2, !tbaa !10
  %99 = sext i16 %97 to i32
  store i32 %99, i32* @g_31, align 4, !tbaa !1
  %100 = trunc i32 %99 to i16
  %101 = call signext i16 @safe_add_func_int16_t_s_s(i16 signext %93, i16 signext %100)
  %102 = icmp ne i16 %101, 0
  br i1 %102, label %103, label %108

; <label>:103                                     ; preds = %87
  %104 = getelementptr inbounds [9 x [5 x i32]], [9 x [5 x i32]]* %l_32, i32 0, i64 3
  %105 = getelementptr inbounds [5 x i32], [5 x i32]* %104, i32 0, i64 3
  %106 = load i32, i32* %105, align 4, !tbaa !1
  %107 = zext i32 %106 to i64
  store i64 %107, i64* %1
  store i32 1, i32* %2
  br label %149

; <label>:108                                     ; preds = %87
  %109 = bitcast i8** %l_36 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %109) #1
  store i8* @g_37, i8** %l_36, align 8, !tbaa !5
  %110 = bitcast i32** %l_43 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %110) #1
  store i32* %l_17, i32** %l_43, align 8, !tbaa !5
  %111 = load i32, i32* getelementptr inbounds ([1 x [4 x i32]], [1 x [4 x i32]]* @g_8, i32 0, i64 0, i64 0), align 4, !tbaa !1
  %112 = load i32, i32* %l_17, align 4, !tbaa !1
  %113 = call i32 @safe_mod_func_uint32_t_u_u(i32 %111, i32 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %143, label %115

; <label>:115                                     ; preds = %108
  %116 = bitcast %struct.S0* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %116, i8* bitcast (%struct.S0* @g_35 to i8*), i64 44, i32 1, i1 true), !tbaa.struct !23
  %117 = load volatile i64, i64* getelementptr inbounds (%struct.S0, %struct.S0* @g_35, i32 0, i32 2), align 1, !tbaa !15
  %118 = trunc i64 %117 to i8
  %119 = load i8*, i8** %l_36, align 8, !tbaa !5
  store i8 %118, i8* %119, align 1, !tbaa !9
  %120 = sext i8 %118 to i32
  %121 = load i32*, i32** %l_5, align 8, !tbaa !5
  %122 = load i32, i32* %121, align 4, !tbaa !1
  %123 = load i8, i8* %l_42, align 1, !tbaa !9
  %124 = sext i8 %123 to i32
  %125 = load i32*, i32** %l_43, align 8, !tbaa !5
  store i32 %124, i32* %125, align 4, !tbaa !1
  %126 = load i32, i32* @g_31, align 4, !tbaa !1
  %127 = load i32, i32* @g_31, align 4, !tbaa !1
  %128 = trunc i32 %127 to i16
  %129 = load i8, i8* %l_42, align 1, !tbaa !9
  %130 = sext i8 %129 to i16
  %131 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %128, i16 zeroext %130)
  %132 = trunc i16 %131 to i8
  %133 = call signext i8 @safe_mod_func_int8_t_s_s(i8 signext 8, i8 signext %132)
  %134 = sext i8 %133 to i16
  %135 = load i32, i32* getelementptr inbounds ([1 x [4 x i32]], [1 x [4 x i32]]* @g_8, i32 0, i64 0, i64 0), align 4, !tbaa !1
  %136 = trunc i32 %135 to i16
  %137 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %134, i16 zeroext %136)
  %138 = zext i16 %137 to i32
  %139 = load i32, i32* @g_48, align 4, !tbaa !1
  %140 = or i32 %139, %138
  store i32 %140, i32* @g_48, align 4, !tbaa !1
  %141 = call i32 @safe_mod_func_uint32_t_u_u(i32 %122, i32 740986157)
  %142 = icmp ne i32 %120, %141
  br label %143

; <label>:143                                     ; preds = %115, %108
  %144 = phi i1 [ true, %108 ], [ %142, %115 ]
  %145 = zext i1 %144 to i32
  store i32 %145, i32* %l_49, align 4, !tbaa !1
  %146 = bitcast i32** %l_43 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %146) #1
  %147 = bitcast i8** %l_36 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %147) #1
  br label %148

; <label>:148                                     ; preds = %143
  store i32 0, i32* %2
  br label %149

; <label>:149                                     ; preds = %148, %103
  %150 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %150) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_42) #1
  %151 = bitcast [4 x i16*]* %l_30 to i8*
  call void @llvm.lifetime.end(i64 32, i8* %151) #1
  %152 = bitcast i16** %l_29 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %152) #1
  %153 = bitcast i16** %l_27 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %153) #1
  %cleanup.dest = load i32, i32* %2
  switch i32 %cleanup.dest, label %168 [
    i32 0, label %154
  ]

; <label>:154                                     ; preds = %149
  br label %155

; <label>:155                                     ; preds = %154
  %156 = load i32, i32* @g_3, align 4, !tbaa !1
  %157 = trunc i32 %156 to i16
  %158 = call signext i16 @safe_sub_func_int16_t_s_s(i16 signext %157, i16 signext 8)
  %159 = sext i16 %158 to i32
  store i32 %159, i32* @g_3, align 4, !tbaa !1
  br label %69

; <label>:160                                     ; preds = %69
  %161 = load i32, i32* getelementptr inbounds ([1 x [4 x i32]], [1 x [4 x i32]]* @g_8, i32 0, i64 0, i64 0), align 4, !tbaa !1
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %164

; <label>:163                                     ; preds = %160
  store i32 13, i32* %2
  br label %168

; <label>:164                                     ; preds = %160
  %165 = getelementptr inbounds [9 x [5 x i32]], [9 x [5 x i32]]* %l_32, i32 0, i64 5
  %166 = getelementptr inbounds [5 x i32], [5 x i32]* %165, i32 0, i64 2
  %167 = load i32, i32* %166, align 4, !tbaa !1
  store volatile i32 %167, i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_35, i32 0, i32 8), align 1, !tbaa !21
  store i32 0, i32* %2
  br label %168

; <label>:168                                     ; preds = %164, %163, %149
  %169 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %169) #1
  %170 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %170) #1
  %171 = bitcast [9 x [5 x i32]]* %l_32 to i8*
  call void @llvm.lifetime.end(i64 180, i8* %171) #1
  %cleanup.dest.4 = load i32, i32* %2
  switch i32 %cleanup.dest.4, label %311 [
    i32 0, label %172
  ]

; <label>:172                                     ; preds = %168
  br label %310

; <label>:173                                     ; preds = %57
  %174 = bitcast i16* %l_55 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %174) #1
  store i16 -8, i16* %l_55, align 2, !tbaa !10
  %175 = bitcast i32* %l_60 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %175) #1
  store i32 -332373393, i32* %l_60, align 4, !tbaa !1
  %176 = bitcast i32* %l_62 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %176) #1
  store i32 5, i32* %l_62, align 4, !tbaa !1
  store i32 1, i32* @g_31, align 4, !tbaa !1
  br label %177

; <label>:177                                     ; preds = %184, %173
  %178 = load i32, i32* @g_31, align 4, !tbaa !1
  %179 = icmp eq i32 %178, 4
  br i1 %179, label %180, label %187

; <label>:180                                     ; preds = %177
  %181 = load i32*, i32** %l_6, align 8, !tbaa !5
  %182 = load i32, i32* %181, align 4, !tbaa !1
  %183 = xor i32 %182, 1
  store i32 %183, i32* %181, align 4, !tbaa !1
  br label %184

; <label>:184                                     ; preds = %180
  %185 = load i32, i32* @g_31, align 4, !tbaa !1
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* @g_31, align 4, !tbaa !1
  br label %177

; <label>:187                                     ; preds = %177
  store i16 0, i16* @g_28, align 2, !tbaa !10
  br label %188

; <label>:188                                     ; preds = %301, %187
  %189 = load i16, i16* @g_28, align 2, !tbaa !10
  %190 = sext i16 %189 to i32
  %191 = icmp sle i32 %190, 0
  br i1 %191, label %192, label %306

; <label>:192                                     ; preds = %188
  %193 = bitcast i32* %i5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %193) #1
  %194 = bitcast i32* %j6 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %194) #1
  %195 = load i16, i16* @g_28, align 2, !tbaa !10
  %196 = sext i16 %195 to i32
  %197 = add nsw i32 %196, 1
  %198 = sext i32 %197 to i64
  %199 = load i16, i16* @g_28, align 2, !tbaa !10
  %200 = sext i16 %199 to i64
  %201 = getelementptr inbounds [1 x [4 x i32]], [1 x [4 x i32]]* @g_8, i32 0, i64 %200
  %202 = getelementptr inbounds [4 x i32], [4 x i32]* %201, i32 0, i64 %198
  %203 = load i32, i32* %202, align 4, !tbaa !1
  %204 = load i32, i32* @g_48, align 4, !tbaa !1
  %205 = icmp ne i32 %204, 0
  %206 = xor i1 %205, true
  %207 = zext i1 %206 to i32
  %208 = icmp sle i32 %203, %207
  %209 = zext i1 %208 to i32
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.S0* @g_35 to i8*), i8* bitcast (%struct.S0* @g_35 to i8*), i64 44, i32 1, i1 true), !tbaa.struct !23
  %210 = load i16, i16* %l_55, align 2, !tbaa !10
  %211 = add i16 %210, 1
  store i16 %211, i16* %l_55, align 2, !tbaa !10
  store i64 0, i64* %l_10, align 8, !tbaa !7
  br label %212

; <label>:212                                     ; preds = %227, %192
  %213 = load i64, i64* %l_10, align 8, !tbaa !7
  %214 = icmp ule i64 %213, 0
  br i1 %214, label %215, label %230

; <label>:215                                     ; preds = %212
  %216 = bitcast i32* %i7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %216) #1
  %217 = bitcast i32* %j8 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %217) #1
  %218 = bitcast i32* %k9 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %218) #1
  %219 = load i32*, i32** %l_5, align 8, !tbaa !5
  %220 = load i32, i32* %219, align 4, !tbaa !1
  %221 = sext i32 %220 to i64
  %222 = or i64 %221, 1872595690
  %223 = trunc i64 %222 to i32
  store i32 %223, i32* %219, align 4, !tbaa !1
  %224 = bitcast i32* %k9 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %224) #1
  %225 = bitcast i32* %j8 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %225) #1
  %226 = bitcast i32* %i7 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %226) #1
  br label %227

; <label>:227                                     ; preds = %215
  %228 = load i64, i64* %l_10, align 8, !tbaa !7
  %229 = add i64 %228, 1
  store i64 %229, i64* %l_10, align 8, !tbaa !7
  br label %212

; <label>:230                                     ; preds = %212
  store i32 0, i32* @g_3, align 4, !tbaa !1
  br label %231

; <label>:231                                     ; preds = %295, %230
  %232 = load i32, i32* @g_3, align 4, !tbaa !1
  %233 = icmp sle i32 %232, 0
  br i1 %233, label %234, label %298

; <label>:234                                     ; preds = %231
  %235 = bitcast i32* %i10 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %235) #1
  %236 = bitcast i32* %j11 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %236) #1
  %237 = bitcast i32* %k12 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %237) #1
  %238 = load i32, i32* @g_48, align 4, !tbaa !1
  %239 = load i16, i16* %l_55, align 2, !tbaa !10
  %240 = call i32 @func_15(i16 signext %239)
  %241 = load i16, i16* %l_55, align 2, !tbaa !10
  %242 = zext i16 %241 to i32
  %243 = load volatile i32, i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_35, i32 0, i32 4), align 1, !tbaa !17
  %244 = and i32 %242, %243
  %245 = load i32, i32* %l_17, align 4, !tbaa !1
  %246 = icmp eq i32 %244, %245
  %247 = zext i1 %246 to i32
  %248 = load i32, i32* @g_3, align 4, !tbaa !1
  %249 = load i16, i16* @g_28, align 2, !tbaa !10
  %250 = sext i16 %249 to i32
  %251 = add nsw i32 %250, 3
  %252 = sext i32 %251 to i64
  %253 = load i16, i16* @g_28, align 2, !tbaa !10
  %254 = sext i16 %253 to i64
  %255 = getelementptr inbounds [1 x [4 x i32]], [1 x [4 x i32]]* @g_8, i32 0, i64 %254
  %256 = getelementptr inbounds [4 x i32], [4 x i32]* %255, i32 0, i64 %252
  %257 = load i32, i32* %256, align 4, !tbaa !1
  %258 = icmp slt i32 %248, %257
  %259 = zext i1 %258 to i32
  %260 = icmp sle i32 %247, 1
  %261 = zext i1 %260 to i32
  %262 = load i32, i32* @g_48, align 4, !tbaa !1
  %263 = or i32 %261, %262
  %264 = trunc i32 %263 to i16
  %265 = call signext i16 @safe_rshift_func_int16_t_s_s(i16 signext %264, i32 -332373393)
  %266 = sext i16 %265 to i32
  %267 = icmp slt i32 %240, %266
  %268 = zext i1 %267 to i32
  %269 = icmp slt i32 %238, %268
  br i1 %269, label %270, label %273

; <label>:270                                     ; preds = %234
  %271 = load volatile i64, i64* getelementptr inbounds (%struct.S0, %struct.S0* @g_35, i32 0, i32 2), align 1, !tbaa !15
  %272 = icmp ne i64 %271, 0
  br label %273

; <label>:273                                     ; preds = %270, %234
  %274 = phi i1 [ false, %234 ], [ %272, %270 ]
  %275 = zext i1 %274 to i32
  store i32 %275, i32* getelementptr inbounds ([1 x [4 x i32]], [1 x [4 x i32]]* @g_8, i32 0, i64 0, i64 0), align 4, !tbaa !1
  %276 = trunc i32 %275 to i16
  store i16 %276, i16* @g_61, align 2, !tbaa !10
  %277 = zext i16 %276 to i32
  %278 = load i32, i32* %l_62, align 4, !tbaa !1
  %279 = or i32 %278, %277
  store i32 %279, i32* %l_62, align 4, !tbaa !1
  %280 = load volatile i32, i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_35, i32 0, i32 4), align 1, !tbaa !17
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %283

; <label>:282                                     ; preds = %273
  store i32 31, i32* %2
  br label %290

; <label>:283                                     ; preds = %273
  %284 = load i64, i64* %l_63, align 8, !tbaa !7
  %285 = add i64 %284, -1
  store i64 %285, i64* %l_63, align 8, !tbaa !7
  %286 = load i32, i32* %l_49, align 4, !tbaa !1
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %289

; <label>:288                                     ; preds = %283
  store i32 31, i32* %2
  br label %290

; <label>:289                                     ; preds = %283
  store i32 0, i32* %2
  br label %290

; <label>:290                                     ; preds = %289, %288, %282
  %291 = bitcast i32* %k12 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %291) #1
  %292 = bitcast i32* %j11 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %292) #1
  %293 = bitcast i32* %i10 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %293) #1
  %cleanup.dest.13 = load i32, i32* %2
  switch i32 %cleanup.dest.13, label %334 [
    i32 0, label %294
    i32 31, label %295
  ]

; <label>:294                                     ; preds = %290
  br label %295

; <label>:295                                     ; preds = %294, %290
  %296 = load i32, i32* @g_3, align 4, !tbaa !1
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* @g_3, align 4, !tbaa !1
  br label %231

; <label>:298                                     ; preds = %231
  %299 = bitcast i32* %j6 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %299) #1
  %300 = bitcast i32* %i5 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %300) #1
  br label %301

; <label>:301                                     ; preds = %298
  %302 = load i16, i16* @g_28, align 2, !tbaa !10
  %303 = sext i16 %302 to i32
  %304 = add nsw i32 %303, 1
  %305 = trunc i32 %304 to i16
  store i16 %305, i16* @g_28, align 2, !tbaa !10
  br label %188

; <label>:306                                     ; preds = %188
  %307 = bitcast i32* %l_62 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %307) #1
  %308 = bitcast i32* %l_60 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %308) #1
  %309 = bitcast i16* %l_55 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %309) #1
  br label %310

; <label>:310                                     ; preds = %306, %172
  store i32 0, i32* %2
  br label %311

; <label>:311                                     ; preds = %310, %168
  %312 = bitcast i32* %l_49 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %312) #1
  %313 = bitcast i32* %l_17 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %313) #1
  %cleanup.dest.14 = load i32, i32* %2
  switch i32 %cleanup.dest.14, label %321 [
    i32 0, label %314
    i32 13, label %315
  ]

; <label>:314                                     ; preds = %311
  br label %315

; <label>:315                                     ; preds = %314, %311
  %316 = load i64, i64* %l_9, align 8, !tbaa !7
  %317 = add nsw i64 %316, -1
  store i64 %317, i64* %l_9, align 8, !tbaa !7
  br label %54

; <label>:318                                     ; preds = %54
  %319 = load i32, i32* @g_3, align 4, !tbaa !1
  %320 = sext i32 %319 to i64
  store i64 %320, i64* %1
  store i32 1, i32* %2
  br label %321

; <label>:321                                     ; preds = %318, %311
  %322 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %322) #1
  %323 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %323) #1
  %324 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %324) #1
  %325 = bitcast i64* %l_63 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %325) #1
  %326 = bitcast i64* %l_10 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %326) #1
  %327 = bitcast i64* %l_9 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %327) #1
  %328 = bitcast [7 x [2 x [1 x i32*]]]* %l_7 to i8*
  call void @llvm.lifetime.end(i64 112, i8* %328) #1
  %329 = bitcast i32** %l_6 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %329) #1
  %330 = bitcast i32** %l_5 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %330) #1
  %331 = bitcast i32** %l_4 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %331) #1
  %332 = bitcast i32** %l_2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %332) #1
  %333 = load i64, i64* %1
  ret i64 %333

; <label>:334                                     ; preds = %290
  unreachable
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
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.19, i32 0, i32 0), i8* %8, i64 %11)
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
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0), i32 %3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @func_15(i16 signext %p_16) #0 {
  %1 = alloca i16, align 2
  %l_18 = alloca i64, align 8
  store i16 %p_16, i16* %1, align 2, !tbaa !10
  %2 = bitcast i64* %l_18 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store i64 5, i64* %l_18, align 8, !tbaa !7
  %3 = load i64, i64* %l_18, align 8, !tbaa !7
  %4 = trunc i64 %3 to i32
  %5 = bitcast i64* %l_18 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #1
  ret i32 %4
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal signext i16 @safe_add_func_int16_t_s_s(i16 signext %si1, i16 signext %si2) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i16, align 2
  store i16 %si1, i16* %1, align 2, !tbaa !10
  store i16 %si2, i16* %2, align 2, !tbaa !10
  %3 = load i16, i16* %1, align 2, !tbaa !10
  %4 = sext i16 %3 to i32
  %5 = load i16, i16* %2, align 2, !tbaa !10
  %6 = sext i16 %5 to i32
  %7 = add nsw i32 %4, %6
  %8 = trunc i32 %7 to i16
  ret i16 %8
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @safe_lshift_func_uint8_t_u_u(i8 zeroext %left, i32 %right) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i32, align 4
  store i8 %left, i8* %1, align 1, !tbaa !9
  store i32 %right, i32* %2, align 4, !tbaa !1
  %3 = load i32, i32* %2, align 4, !tbaa !1
  %4 = icmp uge i32 %3, 32
  br i1 %4, label %11, label %5

; <label>:5                                       ; preds = %0
  %6 = load i8, i8* %1, align 1, !tbaa !9
  %7 = zext i8 %6 to i32
  %8 = load i32, i32* %2, align 4, !tbaa !1
  %9 = ashr i32 255, %8
  %10 = icmp sgt i32 %7, %9
  br i1 %10, label %11, label %14

; <label>:11                                      ; preds = %5, %0
  %12 = load i8, i8* %1, align 1, !tbaa !9
  %13 = zext i8 %12 to i32
  br label %19

; <label>:14                                      ; preds = %5
  %15 = load i8, i8* %1, align 1, !tbaa !9
  %16 = zext i8 %15 to i32
  %17 = load i32, i32* %2, align 4, !tbaa !1
  %18 = shl i32 %16, %17
  br label %19

; <label>:19                                      ; preds = %14, %11
  %20 = phi i32 [ %13, %11 ], [ %18, %14 ]
  %21 = trunc i32 %20 to i8
  ret i8 %21
}

; Function Attrs: nounwind uwtable
define internal i32 @safe_div_func_uint32_t_u_u(i32 %ui1, i32 %ui2) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %ui1, i32* %1, align 4, !tbaa !1
  store i32 %ui2, i32* %2, align 4, !tbaa !1
  %3 = load i32, i32* %2, align 4, !tbaa !1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

; <label>:5                                       ; preds = %0
  %6 = load i32, i32* %1, align 4, !tbaa !1
  br label %11

; <label>:7                                       ; preds = %0
  %8 = load i32, i32* %1, align 4, !tbaa !1
  %9 = load i32, i32* %2, align 4, !tbaa !1
  %10 = udiv i32 %8, %9
  br label %11

; <label>:11                                      ; preds = %7, %5
  %12 = phi i32 [ %6, %5 ], [ %10, %7 ]
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal i32 @safe_mod_func_uint32_t_u_u(i32 %ui1, i32 %ui2) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %ui1, i32* %1, align 4, !tbaa !1
  store i32 %ui2, i32* %2, align 4, !tbaa !1
  %3 = load i32, i32* %2, align 4, !tbaa !1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

; <label>:5                                       ; preds = %0
  %6 = load i32, i32* %1, align 4, !tbaa !1
  br label %11

; <label>:7                                       ; preds = %0
  %8 = load i32, i32* %1, align 4, !tbaa !1
  %9 = load i32, i32* %2, align 4, !tbaa !1
  %10 = urem i32 %8, %9
  br label %11

; <label>:11                                      ; preds = %7, %5
  %12 = phi i32 [ %6, %5 ], [ %10, %7 ]
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %ui1, i16 zeroext %ui2) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i16, align 2
  store i16 %ui1, i16* %1, align 2, !tbaa !10
  store i16 %ui2, i16* %2, align 2, !tbaa !10
  %3 = load i16, i16* %1, align 2, !tbaa !10
  %4 = zext i16 %3 to i32
  %5 = load i16, i16* %2, align 2, !tbaa !10
  %6 = zext i16 %5 to i32
  %7 = sub nsw i32 %4, %6
  %8 = trunc i32 %7 to i16
  ret i16 %8
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
define internal signext i16 @safe_sub_func_int16_t_s_s(i16 signext %si1, i16 signext %si2) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i16, align 2
  store i16 %si1, i16* %1, align 2, !tbaa !10
  store i16 %si2, i16* %2, align 2, !tbaa !10
  %3 = load i16, i16* %1, align 2, !tbaa !10
  %4 = sext i16 %3 to i32
  %5 = load i16, i16* %2, align 2, !tbaa !10
  %6 = sext i16 %5 to i32
  %7 = sub nsw i32 %4, %6
  %8 = trunc i32 %7 to i16
  ret i16 %8
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
!12 = !{!13, !2, i64 0}
!13 = !{!"S0", !2, i64 0, !11, i64 4, !8, i64 6, !8, i64 14, !2, i64 22, !3, i64 26, !2, i64 27, !8, i64 31, !2, i64 39, !3, i64 43}
!14 = !{!13, !11, i64 4}
!15 = !{!13, !8, i64 6}
!16 = !{!13, !8, i64 14}
!17 = !{!13, !2, i64 22}
!18 = !{!13, !3, i64 26}
!19 = !{!13, !2, i64 27}
!20 = !{!13, !8, i64 31}
!21 = !{!13, !2, i64 39}
!22 = !{!13, !3, i64 43}
!23 = !{i64 0, i64 4, !1, i64 4, i64 2, !10, i64 6, i64 8, !7, i64 14, i64 8, !7, i64 22, i64 4, !1, i64 26, i64 1, !9, i64 27, i64 4, !1, i64 31, i64 8, !7, i64 39, i64 4, !1, i64 43, i64 1, !9}
