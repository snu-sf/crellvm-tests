; ModuleID = '00749.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S0 = type { [14 x i8], i8, [7 x i8] }

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"g_3.f0\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"g_3.f1\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"g_3.f2\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"g_3.f3\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"g_3.f4\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"g_3.f5\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"g_3.f6\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"g_3.f7\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"g_3.f8\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"g_3.f9\00", align 1
@g_9 = internal global i32 0, align 4
@.str.11 = private unnamed_addr constant [4 x i8] c"g_9\00", align 1
@g_16 = internal global i8 -9, align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"g_16\00", align 1
@g_17 = internal global i8 -47, align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"g_17\00", align 1
@g_18 = internal global i32 0, align 4
@.str.14 = private unnamed_addr constant [5 x i8] c"g_18\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@g_7 = internal global %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_3 to %struct.S0*), align 8
@.str.15 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@g_3 = internal global { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 99, i8 22, i8 0, i8 68, i8 96, i8 31, i8 3, i8 0, i8 -48, i8 3, i8 40, i8 62, i8 78, i8 0, i8 -45, i8 -46, i8 10, i8 0, i8 18, i8 5, i8 0, i8 0 }, align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

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
  %6 = alloca %struct.S0, align 1
  store i32 0, i32* %1
  store i32 %argc, i32* %2, align 4, !tbaa !1
  store i8** %argv, i8*** %3, align 8, !tbaa !5
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
  %88 = bitcast %struct.S0* %6 to i8*
  call void @llvm.lifetime.start(i64 22, i8* %88) #1
  call void @func_1(%struct.S0* sret %6)
  %89 = bitcast %struct.S0* %6 to i8*
  call void @llvm.lifetime.end(i64 22, i8* %89) #1
  %90 = load volatile i112, i112* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_3 to i112*), align 1
  %91 = shl i112 %90, 87
  %92 = ashr i112 %91, 87
  %93 = trunc i112 %92 to i32
  %94 = sext i32 %93 to i64
  %95 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %94, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 %95)
  %96 = load i112, i112* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_3 to i112*), align 1
  %97 = lshr i112 %96, 25
  %98 = and i112 %97, 4095
  %99 = trunc i112 %98 to i32
  %100 = zext i32 %99 to i64
  %101 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %100, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i32 %101)
  %102 = load i112, i112* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_3 to i112*), align 1
  %103 = lshr i112 %102, 37
  %104 = and i112 %103, 2147483647
  %105 = trunc i112 %104 to i32
  %106 = zext i32 %105 to i64
  %107 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %106, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i32 %107)
  %108 = load volatile i112, i112* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_3 to i112*), align 1
  %109 = lshr i112 %108, 68
  %110 = and i112 %109, 16383
  %111 = trunc i112 %110 to i32
  %112 = zext i32 %111 to i64
  %113 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %112, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i32 %113)
  %114 = load i112, i112* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_3 to i112*), align 1
  %115 = lshr i112 %114, 82
  %116 = and i112 %115, 127
  %117 = trunc i112 %116 to i32
  %118 = zext i32 %117 to i64
  %119 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %118, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i32 %119)
  %120 = load i112, i112* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_3 to i112*), align 1
  %121 = shl i112 %120, 19
  %122 = ashr i112 %121, 108
  %123 = trunc i112 %122 to i32
  %124 = sext i32 %123 to i64
  %125 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %124, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i32 %125)
  %126 = load volatile i112, i112* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_3 to i112*), align 1
  %127 = lshr i112 %126, 93
  %128 = trunc i112 %127 to i32
  %129 = zext i32 %128 to i64
  %130 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %129, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i32 %130)
  %131 = load i8, i8* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_3 to %struct.S0*), i32 0, i32 1), align 1, !tbaa !10
  %132 = sext i8 %131 to i64
  %133 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %132, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i32 %133)
  %134 = load i56, i56* bitcast ([7 x i8]* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_3 to %struct.S0*), i32 0, i32 2) to i56*), align 1
  %135 = shl i56 %134, 31
  %136 = ashr i56 %135, 31
  %137 = trunc i56 %136 to i32
  %138 = sext i32 %137 to i64
  %139 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %138, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i32 %139)
  %140 = load i56, i56* bitcast ([7 x i8]* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_3 to %struct.S0*), i32 0, i32 2) to i56*), align 1
  %141 = lshr i56 %140, 25
  %142 = and i56 %141, 134217727
  %143 = trunc i56 %142 to i32
  %144 = zext i32 %143 to i64
  %145 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %144, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i32 %145)
  %146 = load i32, i32* @g_9, align 4, !tbaa !1
  %147 = sext i32 %146 to i64
  %148 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %147, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i32 %148)
  %149 = load volatile i8, i8* @g_16, align 1, !tbaa !9
  %150 = sext i8 %149 to i64
  %151 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %150, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 %151)
  %152 = load i8, i8* @g_17, align 1, !tbaa !9
  %153 = sext i8 %152 to i64
  %154 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %153, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i32 %154)
  %155 = load volatile i32, i32* @g_18, align 4, !tbaa !1
  %156 = sext i32 %155 to i64
  %157 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %156, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i32 %157)
  %158 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %159 = zext i32 %158 to i64
  %160 = xor i64 %159, 4294967295
  %161 = trunc i64 %160 to i32
  %162 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %161, i32 %162)
  %163 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %163) #1
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
define internal void @func_1(%struct.S0* noalias sret %agg.result) #0 {
  %l_2 = alloca %struct.S0*, align 8
  %l_4 = alloca %struct.S0**, align 8
  %l_5 = alloca [5 x %struct.S0**], align 16
  %l_6 = alloca %struct.S0*, align 8
  %l_8 = alloca i32*, align 8
  %l_10 = alloca i32*, align 8
  %l_11 = alloca i32*, align 8
  %l_12 = alloca i32, align 4
  %l_13 = alloca i32*, align 8
  %l_14 = alloca i32*, align 8
  %l_15 = alloca [5 x [6 x [3 x i32*]]], align 16
  %l_19 = alloca i8, align 1
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %1 = bitcast %struct.S0** %l_2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_3 to %struct.S0*), %struct.S0** %l_2, align 8, !tbaa !5
  %2 = bitcast %struct.S0*** %l_4 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store %struct.S0** null, %struct.S0*** %l_4, align 8, !tbaa !5
  %3 = bitcast [5 x %struct.S0**]* %l_5 to i8*
  call void @llvm.lifetime.start(i64 40, i8* %3) #1
  %4 = bitcast %struct.S0** %l_6 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store %struct.S0* null, %struct.S0** %l_6, align 8, !tbaa !5
  %5 = bitcast i32** %l_8 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store i32* @g_9, i32** %l_8, align 8, !tbaa !5
  %6 = bitcast i32** %l_10 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i32* @g_9, i32** %l_10, align 8, !tbaa !5
  %7 = bitcast i32** %l_11 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store i32* @g_9, i32** %l_11, align 8, !tbaa !5
  %8 = bitcast i32* %l_12 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  store i32 1850880576, i32* %l_12, align 4, !tbaa !1
  %9 = bitcast i32** %l_13 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store i32* @g_9, i32** %l_13, align 8, !tbaa !5
  %10 = bitcast i32** %l_14 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i32* %l_12, i32** %l_14, align 8, !tbaa !5
  %11 = bitcast [5 x [6 x [3 x i32*]]]* %l_15 to i8*
  call void @llvm.lifetime.start(i64 720, i8* %11) #1
  %12 = getelementptr inbounds [5 x [6 x [3 x i32*]]], [5 x [6 x [3 x i32*]]]* %l_15, i64 0, i64 0
  %13 = getelementptr inbounds [6 x [3 x i32*]], [6 x [3 x i32*]]* %12, i64 0, i64 0
  %14 = getelementptr inbounds [3 x i32*], [3 x i32*]* %13, i64 0, i64 0
  store i32* %l_12, i32** %14, !tbaa !5
  %15 = getelementptr inbounds i32*, i32** %14, i64 1
  store i32* @g_9, i32** %15, !tbaa !5
  %16 = getelementptr inbounds i32*, i32** %15, i64 1
  store i32* %l_12, i32** %16, !tbaa !5
  %17 = getelementptr inbounds [3 x i32*], [3 x i32*]* %13, i64 1
  %18 = getelementptr inbounds [3 x i32*], [3 x i32*]* %17, i64 0, i64 0
  store i32* %l_12, i32** %18, !tbaa !5
  %19 = getelementptr inbounds i32*, i32** %18, i64 1
  store i32* %l_12, i32** %19, !tbaa !5
  %20 = getelementptr inbounds i32*, i32** %19, i64 1
  store i32* %l_12, i32** %20, !tbaa !5
  %21 = getelementptr inbounds [3 x i32*], [3 x i32*]* %17, i64 1
  %22 = getelementptr inbounds [3 x i32*], [3 x i32*]* %21, i64 0, i64 0
  store i32* %l_12, i32** %22, !tbaa !5
  %23 = getelementptr inbounds i32*, i32** %22, i64 1
  store i32* @g_9, i32** %23, !tbaa !5
  %24 = getelementptr inbounds i32*, i32** %23, i64 1
  store i32* %l_12, i32** %24, !tbaa !5
  %25 = getelementptr inbounds [3 x i32*], [3 x i32*]* %21, i64 1
  %26 = getelementptr inbounds [3 x i32*], [3 x i32*]* %25, i64 0, i64 0
  store i32* %l_12, i32** %26, !tbaa !5
  %27 = getelementptr inbounds i32*, i32** %26, i64 1
  store i32* %l_12, i32** %27, !tbaa !5
  %28 = getelementptr inbounds i32*, i32** %27, i64 1
  store i32* %l_12, i32** %28, !tbaa !5
  %29 = getelementptr inbounds [3 x i32*], [3 x i32*]* %25, i64 1
  %30 = getelementptr inbounds [3 x i32*], [3 x i32*]* %29, i64 0, i64 0
  store i32* %l_12, i32** %30, !tbaa !5
  %31 = getelementptr inbounds i32*, i32** %30, i64 1
  store i32* @g_9, i32** %31, !tbaa !5
  %32 = getelementptr inbounds i32*, i32** %31, i64 1
  store i32* %l_12, i32** %32, !tbaa !5
  %33 = getelementptr inbounds [3 x i32*], [3 x i32*]* %29, i64 1
  %34 = getelementptr inbounds [3 x i32*], [3 x i32*]* %33, i64 0, i64 0
  store i32* %l_12, i32** %34, !tbaa !5
  %35 = getelementptr inbounds i32*, i32** %34, i64 1
  store i32* %l_12, i32** %35, !tbaa !5
  %36 = getelementptr inbounds i32*, i32** %35, i64 1
  store i32* %l_12, i32** %36, !tbaa !5
  %37 = getelementptr inbounds [6 x [3 x i32*]], [6 x [3 x i32*]]* %12, i64 1
  %38 = getelementptr inbounds [6 x [3 x i32*]], [6 x [3 x i32*]]* %37, i64 0, i64 0
  %39 = getelementptr inbounds [3 x i32*], [3 x i32*]* %38, i64 0, i64 0
  store i32* %l_12, i32** %39, !tbaa !5
  %40 = getelementptr inbounds i32*, i32** %39, i64 1
  store i32* @g_9, i32** %40, !tbaa !5
  %41 = getelementptr inbounds i32*, i32** %40, i64 1
  store i32* %l_12, i32** %41, !tbaa !5
  %42 = getelementptr inbounds [3 x i32*], [3 x i32*]* %38, i64 1
  %43 = getelementptr inbounds [3 x i32*], [3 x i32*]* %42, i64 0, i64 0
  store i32* %l_12, i32** %43, !tbaa !5
  %44 = getelementptr inbounds i32*, i32** %43, i64 1
  store i32* %l_12, i32** %44, !tbaa !5
  %45 = getelementptr inbounds i32*, i32** %44, i64 1
  store i32* %l_12, i32** %45, !tbaa !5
  %46 = getelementptr inbounds [3 x i32*], [3 x i32*]* %42, i64 1
  %47 = getelementptr inbounds [3 x i32*], [3 x i32*]* %46, i64 0, i64 0
  store i32* %l_12, i32** %47, !tbaa !5
  %48 = getelementptr inbounds i32*, i32** %47, i64 1
  store i32* @g_9, i32** %48, !tbaa !5
  %49 = getelementptr inbounds i32*, i32** %48, i64 1
  store i32* %l_12, i32** %49, !tbaa !5
  %50 = getelementptr inbounds [3 x i32*], [3 x i32*]* %46, i64 1
  %51 = getelementptr inbounds [3 x i32*], [3 x i32*]* %50, i64 0, i64 0
  store i32* %l_12, i32** %51, !tbaa !5
  %52 = getelementptr inbounds i32*, i32** %51, i64 1
  store i32* %l_12, i32** %52, !tbaa !5
  %53 = getelementptr inbounds i32*, i32** %52, i64 1
  store i32* %l_12, i32** %53, !tbaa !5
  %54 = getelementptr inbounds [3 x i32*], [3 x i32*]* %50, i64 1
  %55 = getelementptr inbounds [3 x i32*], [3 x i32*]* %54, i64 0, i64 0
  store i32* %l_12, i32** %55, !tbaa !5
  %56 = getelementptr inbounds i32*, i32** %55, i64 1
  store i32* @g_9, i32** %56, !tbaa !5
  %57 = getelementptr inbounds i32*, i32** %56, i64 1
  store i32* %l_12, i32** %57, !tbaa !5
  %58 = getelementptr inbounds [3 x i32*], [3 x i32*]* %54, i64 1
  %59 = getelementptr inbounds [3 x i32*], [3 x i32*]* %58, i64 0, i64 0
  store i32* %l_12, i32** %59, !tbaa !5
  %60 = getelementptr inbounds i32*, i32** %59, i64 1
  store i32* %l_12, i32** %60, !tbaa !5
  %61 = getelementptr inbounds i32*, i32** %60, i64 1
  store i32* %l_12, i32** %61, !tbaa !5
  %62 = getelementptr inbounds [6 x [3 x i32*]], [6 x [3 x i32*]]* %37, i64 1
  %63 = getelementptr inbounds [6 x [3 x i32*]], [6 x [3 x i32*]]* %62, i64 0, i64 0
  %64 = getelementptr inbounds [3 x i32*], [3 x i32*]* %63, i64 0, i64 0
  store i32* %l_12, i32** %64, !tbaa !5
  %65 = getelementptr inbounds i32*, i32** %64, i64 1
  store i32* @g_9, i32** %65, !tbaa !5
  %66 = getelementptr inbounds i32*, i32** %65, i64 1
  store i32* %l_12, i32** %66, !tbaa !5
  %67 = getelementptr inbounds [3 x i32*], [3 x i32*]* %63, i64 1
  %68 = getelementptr inbounds [3 x i32*], [3 x i32*]* %67, i64 0, i64 0
  store i32* %l_12, i32** %68, !tbaa !5
  %69 = getelementptr inbounds i32*, i32** %68, i64 1
  store i32* %l_12, i32** %69, !tbaa !5
  %70 = getelementptr inbounds i32*, i32** %69, i64 1
  store i32* %l_12, i32** %70, !tbaa !5
  %71 = getelementptr inbounds [3 x i32*], [3 x i32*]* %67, i64 1
  %72 = getelementptr inbounds [3 x i32*], [3 x i32*]* %71, i64 0, i64 0
  store i32* %l_12, i32** %72, !tbaa !5
  %73 = getelementptr inbounds i32*, i32** %72, i64 1
  store i32* @g_9, i32** %73, !tbaa !5
  %74 = getelementptr inbounds i32*, i32** %73, i64 1
  store i32* %l_12, i32** %74, !tbaa !5
  %75 = getelementptr inbounds [3 x i32*], [3 x i32*]* %71, i64 1
  %76 = getelementptr inbounds [3 x i32*], [3 x i32*]* %75, i64 0, i64 0
  store i32* %l_12, i32** %76, !tbaa !5
  %77 = getelementptr inbounds i32*, i32** %76, i64 1
  store i32* %l_12, i32** %77, !tbaa !5
  %78 = getelementptr inbounds i32*, i32** %77, i64 1
  store i32* %l_12, i32** %78, !tbaa !5
  %79 = getelementptr inbounds [3 x i32*], [3 x i32*]* %75, i64 1
  %80 = getelementptr inbounds [3 x i32*], [3 x i32*]* %79, i64 0, i64 0
  store i32* null, i32** %80, !tbaa !5
  %81 = getelementptr inbounds i32*, i32** %80, i64 1
  store i32* %l_12, i32** %81, !tbaa !5
  %82 = getelementptr inbounds i32*, i32** %81, i64 1
  store i32* null, i32** %82, !tbaa !5
  %83 = getelementptr inbounds [3 x i32*], [3 x i32*]* %79, i64 1
  %84 = getelementptr inbounds [3 x i32*], [3 x i32*]* %83, i64 0, i64 0
  store i32* %l_12, i32** %84, !tbaa !5
  %85 = getelementptr inbounds i32*, i32** %84, i64 1
  store i32* %l_12, i32** %85, !tbaa !5
  %86 = getelementptr inbounds i32*, i32** %85, i64 1
  store i32* %l_12, i32** %86, !tbaa !5
  %87 = getelementptr inbounds [6 x [3 x i32*]], [6 x [3 x i32*]]* %62, i64 1
  %88 = getelementptr inbounds [6 x [3 x i32*]], [6 x [3 x i32*]]* %87, i64 0, i64 0
  %89 = getelementptr inbounds [3 x i32*], [3 x i32*]* %88, i64 0, i64 0
  store i32* null, i32** %89, !tbaa !5
  %90 = getelementptr inbounds i32*, i32** %89, i64 1
  store i32* %l_12, i32** %90, !tbaa !5
  %91 = getelementptr inbounds i32*, i32** %90, i64 1
  store i32* null, i32** %91, !tbaa !5
  %92 = getelementptr inbounds [3 x i32*], [3 x i32*]* %88, i64 1
  %93 = getelementptr inbounds [3 x i32*], [3 x i32*]* %92, i64 0, i64 0
  store i32* %l_12, i32** %93, !tbaa !5
  %94 = getelementptr inbounds i32*, i32** %93, i64 1
  store i32* %l_12, i32** %94, !tbaa !5
  %95 = getelementptr inbounds i32*, i32** %94, i64 1
  store i32* %l_12, i32** %95, !tbaa !5
  %96 = getelementptr inbounds [3 x i32*], [3 x i32*]* %92, i64 1
  %97 = getelementptr inbounds [3 x i32*], [3 x i32*]* %96, i64 0, i64 0
  store i32* null, i32** %97, !tbaa !5
  %98 = getelementptr inbounds i32*, i32** %97, i64 1
  store i32* %l_12, i32** %98, !tbaa !5
  %99 = getelementptr inbounds i32*, i32** %98, i64 1
  store i32* null, i32** %99, !tbaa !5
  %100 = getelementptr inbounds [3 x i32*], [3 x i32*]* %96, i64 1
  %101 = getelementptr inbounds [3 x i32*], [3 x i32*]* %100, i64 0, i64 0
  store i32* %l_12, i32** %101, !tbaa !5
  %102 = getelementptr inbounds i32*, i32** %101, i64 1
  store i32* %l_12, i32** %102, !tbaa !5
  %103 = getelementptr inbounds i32*, i32** %102, i64 1
  store i32* %l_12, i32** %103, !tbaa !5
  %104 = getelementptr inbounds [3 x i32*], [3 x i32*]* %100, i64 1
  %105 = getelementptr inbounds [3 x i32*], [3 x i32*]* %104, i64 0, i64 0
  store i32* null, i32** %105, !tbaa !5
  %106 = getelementptr inbounds i32*, i32** %105, i64 1
  store i32* %l_12, i32** %106, !tbaa !5
  %107 = getelementptr inbounds i32*, i32** %106, i64 1
  store i32* null, i32** %107, !tbaa !5
  %108 = getelementptr inbounds [3 x i32*], [3 x i32*]* %104, i64 1
  %109 = getelementptr inbounds [3 x i32*], [3 x i32*]* %108, i64 0, i64 0
  store i32* %l_12, i32** %109, !tbaa !5
  %110 = getelementptr inbounds i32*, i32** %109, i64 1
  store i32* %l_12, i32** %110, !tbaa !5
  %111 = getelementptr inbounds i32*, i32** %110, i64 1
  store i32* %l_12, i32** %111, !tbaa !5
  %112 = getelementptr inbounds [6 x [3 x i32*]], [6 x [3 x i32*]]* %87, i64 1
  %113 = getelementptr inbounds [6 x [3 x i32*]], [6 x [3 x i32*]]* %112, i64 0, i64 0
  %114 = getelementptr inbounds [3 x i32*], [3 x i32*]* %113, i64 0, i64 0
  store i32* null, i32** %114, !tbaa !5
  %115 = getelementptr inbounds i32*, i32** %114, i64 1
  store i32* %l_12, i32** %115, !tbaa !5
  %116 = getelementptr inbounds i32*, i32** %115, i64 1
  store i32* null, i32** %116, !tbaa !5
  %117 = getelementptr inbounds [3 x i32*], [3 x i32*]* %113, i64 1
  %118 = getelementptr inbounds [3 x i32*], [3 x i32*]* %117, i64 0, i64 0
  store i32* %l_12, i32** %118, !tbaa !5
  %119 = getelementptr inbounds i32*, i32** %118, i64 1
  store i32* %l_12, i32** %119, !tbaa !5
  %120 = getelementptr inbounds i32*, i32** %119, i64 1
  store i32* %l_12, i32** %120, !tbaa !5
  %121 = getelementptr inbounds [3 x i32*], [3 x i32*]* %117, i64 1
  %122 = getelementptr inbounds [3 x i32*], [3 x i32*]* %121, i64 0, i64 0
  store i32* null, i32** %122, !tbaa !5
  %123 = getelementptr inbounds i32*, i32** %122, i64 1
  store i32* %l_12, i32** %123, !tbaa !5
  %124 = getelementptr inbounds i32*, i32** %123, i64 1
  store i32* null, i32** %124, !tbaa !5
  %125 = getelementptr inbounds [3 x i32*], [3 x i32*]* %121, i64 1
  %126 = getelementptr inbounds [3 x i32*], [3 x i32*]* %125, i64 0, i64 0
  store i32* %l_12, i32** %126, !tbaa !5
  %127 = getelementptr inbounds i32*, i32** %126, i64 1
  store i32* %l_12, i32** %127, !tbaa !5
  %128 = getelementptr inbounds i32*, i32** %127, i64 1
  store i32* %l_12, i32** %128, !tbaa !5
  %129 = getelementptr inbounds [3 x i32*], [3 x i32*]* %125, i64 1
  %130 = getelementptr inbounds [3 x i32*], [3 x i32*]* %129, i64 0, i64 0
  store i32* null, i32** %130, !tbaa !5
  %131 = getelementptr inbounds i32*, i32** %130, i64 1
  store i32* %l_12, i32** %131, !tbaa !5
  %132 = getelementptr inbounds i32*, i32** %131, i64 1
  store i32* null, i32** %132, !tbaa !5
  %133 = getelementptr inbounds [3 x i32*], [3 x i32*]* %129, i64 1
  %134 = getelementptr inbounds [3 x i32*], [3 x i32*]* %133, i64 0, i64 0
  store i32* %l_12, i32** %134, !tbaa !5
  %135 = getelementptr inbounds i32*, i32** %134, i64 1
  store i32* %l_12, i32** %135, !tbaa !5
  %136 = getelementptr inbounds i32*, i32** %135, i64 1
  store i32* %l_12, i32** %136, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_19) #1
  store i8 -31, i8* %l_19, align 1, !tbaa !9
  %137 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %137) #1
  %138 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %138) #1
  %139 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %139) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %140

; <label>:140                                     ; preds = %147, %0
  %141 = load i32, i32* %i, align 4, !tbaa !1
  %142 = icmp slt i32 %141, 5
  br i1 %142, label %143, label %150

; <label>:143                                     ; preds = %140
  %144 = load i32, i32* %i, align 4, !tbaa !1
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [5 x %struct.S0**], [5 x %struct.S0**]* %l_5, i32 0, i64 %145
  store %struct.S0** null, %struct.S0*** %146, align 8, !tbaa !5
  br label %147

; <label>:147                                     ; preds = %143
  %148 = load i32, i32* %i, align 4, !tbaa !1
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %i, align 4, !tbaa !1
  br label %140

; <label>:150                                     ; preds = %140
  %151 = load %struct.S0*, %struct.S0** %l_2, align 8, !tbaa !5
  store %struct.S0* %151, %struct.S0** %l_6, align 8, !tbaa !5
  store i8 0, i8* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_3 to %struct.S0*), i32 0, i32 1), align 1, !tbaa !10
  br label %152

; <label>:152                                     ; preds = %160, %150
  %153 = load i8, i8* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_3 to %struct.S0*), i32 0, i32 1), align 1, !tbaa !10
  %154 = sext i8 %153 to i32
  %155 = icmp slt i32 %154, 5
  br i1 %155, label %156, label %165

; <label>:156                                     ; preds = %152
  %157 = load i8, i8* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_3 to %struct.S0*), i32 0, i32 1), align 1, !tbaa !10
  %158 = sext i8 %157 to i64
  %159 = getelementptr inbounds [5 x %struct.S0**], [5 x %struct.S0**]* %l_5, i32 0, i64 %158
  store %struct.S0** @g_7, %struct.S0*** %159, align 8, !tbaa !5
  br label %160

; <label>:160                                     ; preds = %156
  %161 = load i8, i8* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_3 to %struct.S0*), i32 0, i32 1), align 1, !tbaa !10
  %162 = sext i8 %161 to i32
  %163 = add nsw i32 %162, 1
  %164 = trunc i32 %163 to i8
  store i8 %164, i8* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_3 to %struct.S0*), i32 0, i32 1), align 1, !tbaa !10
  br label %152

; <label>:165                                     ; preds = %152
  %166 = load i8, i8* %l_19, align 1, !tbaa !9
  %167 = add i8 %166, -1
  store i8 %167, i8* %l_19, align 1, !tbaa !9
  %168 = load %struct.S0*, %struct.S0** %l_6, align 8, !tbaa !5
  %169 = bitcast %struct.S0* %agg.result to i8*
  %170 = bitcast %struct.S0* %168 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %169, i8* %170, i64 22, i32 1, i1 false), !tbaa.struct !12
  %171 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %171) #1
  %172 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %172) #1
  %173 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %173) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_19) #1
  %174 = bitcast [5 x [6 x [3 x i32*]]]* %l_15 to i8*
  call void @llvm.lifetime.end(i64 720, i8* %174) #1
  %175 = bitcast i32** %l_14 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %175) #1
  %176 = bitcast i32** %l_13 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %176) #1
  %177 = bitcast i32* %l_12 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %177) #1
  %178 = bitcast i32** %l_11 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %178) #1
  %179 = bitcast i32** %l_10 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %179) #1
  %180 = bitcast i32** %l_8 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %180) #1
  %181 = bitcast %struct.S0** %l_6 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %181) #1
  %182 = bitcast [5 x %struct.S0**]* %l_5 to i8*
  call void @llvm.lifetime.end(i64 40, i8* %182) #1
  %183 = bitcast %struct.S0*** %l_4 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %183) #1
  %184 = bitcast %struct.S0** %l_2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %184) #1
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
!10 = !{!11, !3, i64 14}
!11 = !{!"S0", !2, i64 0, !2, i64 3, !2, i64 4, !2, i64 8, !2, i64 10, !2, i64 11, !2, i64 11, !3, i64 14, !2, i64 15, !2, i64 18}
!12 = !{i64 0, i64 4, !1, i64 3, i64 4, !1, i64 4, i64 4, !1, i64 8, i64 4, !1, i64 10, i64 4, !1, i64 11, i64 4, !1, i64 11, i64 4, !1, i64 14, i64 1, !9, i64 15, i64 4, !1, i64 18, i64 4, !1}
