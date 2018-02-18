; ModuleID = '00816.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_2 = internal global [7 x [6 x [6 x i16]]] [[6 x [6 x i16]] [[6 x i16] [i16 -19231, i16 1799, i16 -18002, i16 -6, i16 1, i16 -1], [6 x i16] [i16 6, i16 -18002, i16 0, i16 -6, i16 -19231, i16 -19231], [6 x i16] [i16 -19231, i16 10893, i16 10893, i16 -19231, i16 -5878, i16 5], [6 x i16] [i16 0, i16 6, i16 -1, i16 -16720, i16 0, i16 -2], [6 x i16] [i16 1, i16 -6, i16 -1, i16 -9747, i16 0, i16 1799], [6 x i16] [i16 -5878, i16 6, i16 -19231, i16 6, i16 -5878, i16 -9747]], [6 x [6 x i16]] [[6 x i16] [i16 -1, i16 10893, i16 17864, i16 5, i16 -19231, i16 1], [6 x i16] [i16 17864, i16 -18002, i16 -5878, i16 10893, i16 5, i16 -7], [6 x i16] [i16 0, i16 -6, i16 -19231, i16 -19231, i16 -6, i16 0], [6 x i16] [i16 5, i16 -18002, i16 0, i16 17864, i16 1, i16 -6], [6 x i16] [i16 -18002, i16 6, i16 1, i16 -5878, i16 -2, i16 -16720], [6 x i16] [i16 -18002, i16 -1, i16 -5878, i16 17864, i16 -5878, i16 -1]], [6 x [6 x i16]] [[6 x i16] [i16 5, i16 1, i16 -1, i16 -19231, i16 -1, i16 0], [6 x i16] [i16 0, i16 1, i16 17864, i16 -1, i16 -7, i16 -5878], [6 x i16] [i16 -19231, i16 1, i16 -9747, i16 -1, i16 -1, i16 -9747], [6 x i16] [i16 1, i16 1, i16 1, i16 10893, i16 -5878, i16 -18002], [6 x i16] [i16 6, i16 -1, i16 -16720, i16 0, i16 -2, i16 1], [6 x i16] [i16 -7, i16 6, i16 -16720, i16 -18002, i16 1, i16 -18002]], [6 x [6 x i16]] [[6 x i16] [i16 1, i16 -18002, i16 1, i16 0, i16 -6, i16 -9747], [6 x i16] [i16 0, i16 -6, i16 -9747, i16 -2, i16 5, i16 -5878], [6 x i16] [i16 10893, i16 -9747, i16 17864, i16 -2, i16 0, i16 0], [6 x i16] [i16 0, i16 -1, i16 -1, i16 0, i16 6, i16 -1], [6 x i16] [i16 1, i16 10893, i16 -5878, i16 -18002, i16 17864, i16 -16720], [6 x i16] [i16 -7, i16 -2, i16 1, i16 0, i16 17864, i16 -6]], [6 x [6 x i16]] [[6 x i16] [i16 6, i16 10893, i16 0, i16 10893, i16 6, i16 0], [6 x i16] [i16 1, i16 -1, i16 -19231, i16 -1, i16 0, i16 -7], [6 x i16] [i16 -19231, i16 -9747, i16 6, i16 -1, i16 5, i16 -7], [6 x i16] [i16 0, i16 -6, i16 -19231, i16 -19231, i16 -6, i16 0], [6 x i16] [i16 5, i16 -18002, i16 0, i16 17864, i16 1, i16 -6], [6 x i16] [i16 -18002, i16 6, i16 1, i16 -5878, i16 -2, i16 -16720]], [6 x [6 x i16]] [[6 x i16] [i16 -18002, i16 -1, i16 -5878, i16 17864, i16 -5878, i16 -1], [6 x i16] [i16 5, i16 1, i16 -1, i16 -19231, i16 -1, i16 0], [6 x i16] [i16 0, i16 1, i16 17864, i16 -1, i16 -7, i16 -5878], [6 x i16] [i16 -19231, i16 1, i16 -9747, i16 -1, i16 -1, i16 -9747], [6 x i16] [i16 1, i16 1, i16 1, i16 10893, i16 -5878, i16 -18002], [6 x i16] [i16 6, i16 -1, i16 -16720, i16 0, i16 -2, i16 1]], [6 x [6 x i16]] [[6 x i16] [i16 -7, i16 6, i16 -16720, i16 -18002, i16 1, i16 -18002], [6 x i16] [i16 1, i16 -18002, i16 1, i16 0, i16 -6, i16 -9747], [6 x i16] [i16 0, i16 -6, i16 -9747, i16 -2, i16 5, i16 -5878], [6 x i16] [i16 10893, i16 -9747, i16 17864, i16 -16720, i16 1, i16 1], [6 x i16] [i16 1, i16 1, i16 1, i16 1, i16 10893, i16 -5878], [6 x i16] [i16 5, i16 -1, i16 6, i16 -9747, i16 -19231, i16 -18002]]], align 16
@.str.1 = private unnamed_addr constant [13 x i8] c"g_2[i][j][k]\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"index = [%d][%d][%d]\0A\00", align 1
@g_4 = internal global i32 -964762721, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"g_4\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"g_11\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@g_10 = internal global i32* @g_11, align 8
@g_11 = internal constant i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
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
  %8 = bitcast i32* %k to i8*
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
  %90 = call signext i16 @func_1()
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %91

; <label>:91                                      ; preds = %131, %89
  %92 = load i32, i32* %i, align 4, !tbaa !1
  %93 = icmp slt i32 %92, 7
  br i1 %93, label %94, label %134

; <label>:94                                      ; preds = %91
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %95

; <label>:95                                      ; preds = %127, %94
  %96 = load i32, i32* %j, align 4, !tbaa !1
  %97 = icmp slt i32 %96, 6
  br i1 %97, label %98, label %130

; <label>:98                                      ; preds = %95
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %99

; <label>:99                                      ; preds = %123, %98
  %100 = load i32, i32* %k, align 4, !tbaa !1
  %101 = icmp slt i32 %100, 6
  br i1 %101, label %102, label %126

; <label>:102                                     ; preds = %99
  %103 = load i32, i32* %k, align 4, !tbaa !1
  %104 = sext i32 %103 to i64
  %105 = load i32, i32* %j, align 4, !tbaa !1
  %106 = sext i32 %105 to i64
  %107 = load i32, i32* %i, align 4, !tbaa !1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [7 x [6 x [6 x i16]]], [7 x [6 x [6 x i16]]]* @g_2, i32 0, i64 %108
  %110 = getelementptr inbounds [6 x [6 x i16]], [6 x [6 x i16]]* %109, i32 0, i64 %106
  %111 = getelementptr inbounds [6 x i16], [6 x i16]* %110, i32 0, i64 %104
  %112 = load i16, i16* %111, align 2, !tbaa !10
  %113 = sext i16 %112 to i64
  %114 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %113, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 %114)
  %115 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %122

; <label>:117                                     ; preds = %102
  %118 = load i32, i32* %i, align 4, !tbaa !1
  %119 = load i32, i32* %j, align 4, !tbaa !1
  %120 = load i32, i32* %k, align 4, !tbaa !1
  %121 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0), i32 %118, i32 %119, i32 %120)
  br label %122

; <label>:122                                     ; preds = %117, %102
  br label %123

; <label>:123                                     ; preds = %122
  %124 = load i32, i32* %k, align 4, !tbaa !1
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %k, align 4, !tbaa !1
  br label %99

; <label>:126                                     ; preds = %99
  br label %127

; <label>:127                                     ; preds = %126
  %128 = load i32, i32* %j, align 4, !tbaa !1
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %j, align 4, !tbaa !1
  br label %95

; <label>:130                                     ; preds = %95
  br label %131

; <label>:131                                     ; preds = %130
  %132 = load i32, i32* %i, align 4, !tbaa !1
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %i, align 4, !tbaa !1
  br label %91

; <label>:134                                     ; preds = %91
  %135 = load i32, i32* @g_4, align 4, !tbaa !1
  %136 = sext i32 %135 to i64
  %137 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %136, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i32 %137)
  %138 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %138)
  %139 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %140 = zext i32 %139 to i64
  %141 = xor i64 %140, 4294967295
  %142 = trunc i64 %141 to i32
  %143 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %142, i32 %143)
  %144 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %144) #1
  %145 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %145) #1
  %146 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %146) #1
  %147 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %147) #1
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
define internal signext i16 @func_1() #0 {
  %l_3 = alloca i32*, align 8
  %l_5 = alloca i64, align 8
  %l_9 = alloca [2 x i32**], align 16
  %i = alloca i32, align 4
  %1 = bitcast i32** %l_3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store i32* @g_4, i32** %l_3, align 8, !tbaa !5
  %2 = bitcast i64* %l_5 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store i64 0, i64* %l_5, align 8, !tbaa !7
  %3 = bitcast [2 x i32**]* %l_9 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #1
  %4 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %5

; <label>:5                                       ; preds = %12, %0
  %6 = load i32, i32* %i, align 4, !tbaa !1
  %7 = icmp slt i32 %6, 2
  br i1 %7, label %8, label %15

; <label>:8                                       ; preds = %5
  %9 = load i32, i32* %i, align 4, !tbaa !1
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [2 x i32**], [2 x i32**]* %l_9, i32 0, i64 %10
  store i32** null, i32*** %11, align 8, !tbaa !5
  br label %12

; <label>:12                                      ; preds = %8
  %13 = load i32, i32* %i, align 4, !tbaa !1
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %i, align 4, !tbaa !1
  br label %5

; <label>:15                                      ; preds = %5
  %16 = load i16, i16* getelementptr inbounds ([7 x [6 x [6 x i16]]], [7 x [6 x [6 x i16]]]* @g_2, i32 0, i64 0, i64 4, i64 0), align 2, !tbaa !10
  %17 = sext i16 %16 to i32
  %18 = load i32*, i32** %l_3, align 8, !tbaa !5
  store i32 %17, i32* %18, align 4, !tbaa !1
  %19 = load i32*, i32** %l_3, align 8, !tbaa !5
  %20 = load i32, i32* %19, align 4, !tbaa !1
  %21 = load i32*, i32** %l_3, align 8, !tbaa !5
  store i32 %20, i32* %21, align 4, !tbaa !1
  %22 = sext i32 %20 to i64
  %23 = load i64, i64* %l_5, align 8, !tbaa !7
  %24 = or i64 %23, %22
  store i64 %24, i64* %l_5, align 8, !tbaa !7
  %25 = load i32*, i32** %l_3, align 8, !tbaa !5
  %26 = load i32, i32* %25, align 4, !tbaa !1
  %27 = load i32, i32* @g_4, align 4, !tbaa !1
  %28 = sext i32 %27 to i64
  %29 = call i32* @func_6(i64 %28)
  store i32* %29, i32** @g_10, align 8, !tbaa !5
  %30 = icmp eq i32* @g_4, %29
  %31 = zext i1 %30 to i32
  %32 = and i32 %26, %31
  %33 = load i32*, i32** %l_3, align 8, !tbaa !5
  store i32 %32, i32* %33, align 4, !tbaa !1
  %34 = load i16, i16* getelementptr inbounds ([7 x [6 x [6 x i16]]], [7 x [6 x [6 x i16]]]* @g_2, i32 0, i64 3, i64 2, i64 5), align 2, !tbaa !10
  %35 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = bitcast [2 x i32**]* %l_9 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %36) #1
  %37 = bitcast i64* %l_5 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  %38 = bitcast i32** %l_3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  ret i16 %34
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

declare i32 @printf(i8*, ...) #3

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

; Function Attrs: nounwind uwtable
define internal i32* @func_6(i64 %p_7) #0 {
  %1 = alloca i64, align 8
  %l_8 = alloca i32*, align 8
  store i64 %p_7, i64* %1, align 8, !tbaa !7
  %2 = bitcast i32** %l_8 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store i32* @g_4, i32** %l_8, align 8, !tbaa !5
  %3 = load i32*, i32** %l_8, align 8, !tbaa !5
  %4 = bitcast i32** %l_8 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4) #1
  ret i32* %3
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
