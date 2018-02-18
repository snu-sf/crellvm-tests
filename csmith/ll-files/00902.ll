; ModuleID = '00902.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S3 = type { i16 }
%struct.S1 = type { i16 }
%struct.S2 = type { [5 x i8] }
%struct.S0 = type { i16, [2 x i8] }
%struct.S4 = type { [5 x i8] }

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_2 = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"g_2\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"g_24[i].f0\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"g_24[i].f1\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"g_24[i].f2\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_27 = internal global i32 1, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"g_27\00", align 1
@g_29 = internal global i64 1711627402450326083, align 8
@.str.7 = private unnamed_addr constant [5 x i8] c"g_29\00", align 1
@g_60 = internal global %struct.S3 { i16 -19634 }, align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"g_60.f0\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"g_62.f0\00", align 1
@g_77 = internal global i64 -4, align 8
@.str.10 = private unnamed_addr constant [5 x i8] c"g_77\00", align 1
@g_81 = internal global i64 672689545128533415, align 8
@.str.11 = private unnamed_addr constant [5 x i8] c"g_81\00", align 1
@g_90 = internal global i8 -116, align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"g_90\00", align 1
@g_95 = internal global i8 -7, align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"g_95\00", align 1
@g_98 = internal global i16 -1, align 2
@.str.14 = private unnamed_addr constant [5 x i8] c"g_98\00", align 1
@g_106 = internal global i32 0, align 4
@.str.15 = private unnamed_addr constant [6 x i8] c"g_106\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"g_142[i].f0\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"g_142[i].f1\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"g_142[i].f2\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"g_142[i].f3\00", align 1
@g_160 = internal global %struct.S1 { i16 -7602 }, align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"g_160.f0\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"g_194.f0\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"g_194.f1\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"g_194.f2\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"g_195.f0\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"g_195.f1\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"g_195.f2\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"g_213[i][j].f0\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"g_213[i][j].f1\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"g_213[i][j].f2\00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@g_257 = internal global %struct.S3 zeroinitializer, align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"g_257.f0\00", align 1
@g_262 = internal global i32 124459994, align 4
@.str.32 = private unnamed_addr constant [6 x i8] c"g_262\00", align 1
@g_277 = internal global i8 1, align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"g_277\00", align 1
@g_332 = internal global [9 x %struct.S1] [%struct.S1 { i16 -10 }, %struct.S1 { i16 -10 }, %struct.S1 { i16 -10 }, %struct.S1 { i16 -10 }, %struct.S1 { i16 -10 }, %struct.S1 { i16 -10 }, %struct.S1 { i16 -10 }, %struct.S1 { i16 -10 }, %struct.S1 { i16 -10 }], align 16
@.str.34 = private unnamed_addr constant [12 x i8] c"g_332[i].f0\00", align 1
@g_408 = internal global i8 -119, align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"g_408\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@func_1.l_419 = internal constant %struct.S3 { i16 -23915 }, align 1
@func_1.l_26 = private unnamed_addr constant [8 x [8 x i32*]] [[8 x i32*] [i32* @g_27, i32* null, i32* @g_27, i32* null, i32* @g_27, i32* @g_27, i32* @g_27, i32* @g_27], [8 x i32*] [i32* null, i32* @g_2, i32* @g_2, i32* null, i32* @g_27, i32* @g_27, i32* @g_27, i32* null], [8 x i32*] [i32* @g_2, i32* @g_27, i32* @g_2, i32* @g_27, i32* @g_27, i32* @g_27, i32* @g_27, i32* @g_2], [8 x i32*] [i32* @g_27, i32* @g_27, i32* @g_27, i32* @g_27, i32* @g_2, i32* @g_27, i32* @g_27, i32* @g_27], [8 x i32*] [i32* @g_27, i32* @g_2, i32* @g_27, i32* @g_27, i32* @g_27, i32* @g_27, i32* @g_2, i32* @g_27], [8 x i32*] [i32* @g_2, i32* null, i32* @g_27, i32* @g_27, i32* @g_27, i32* null, i32* @g_2, i32* @g_2], [8 x i32*] [i32* null, i32* @g_27, i32* @g_27, i32* @g_27, i32* @g_27, i32* null, i32* @g_27, i32* null], [8 x i32*] [i32* @g_27, i32* null, i32* @g_27, i32* null, i32* @g_27, i32* @g_27, i32* @g_27, i32* @g_27]], align 16
@g_145 = internal global %struct.S2* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([8 x %struct.S2], [8 x %struct.S2]* bitcast (<{ { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 } }>* @g_24 to [8 x %struct.S2]*), i32 0, i32 0, i32 0, i32 0), i64 5) to %struct.S2*), align 8
@g_147 = internal global i32* @g_27, align 8
@.str.36 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@g_24 = internal global <{ { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 } }> <{ { i8, i8, i8, i8, i8 } { i8 57, i8 -91, i8 0, i8 0, i8 0 }, { i8, i8, i8, i8, i8 } { i8 57, i8 -91, i8 0, i8 0, i8 0 }, { i8, i8, i8, i8, i8 } { i8 57, i8 -91, i8 0, i8 0, i8 0 }, { i8, i8, i8, i8, i8 } { i8 57, i8 -91, i8 0, i8 0, i8 0 }, { i8, i8, i8, i8, i8 } { i8 57, i8 -91, i8 0, i8 0, i8 0 }, { i8, i8, i8, i8, i8 } { i8 57, i8 -91, i8 0, i8 0, i8 0 }, { i8, i8, i8, i8, i8 } { i8 57, i8 -91, i8 0, i8 0, i8 0 }, { i8, i8, i8, i8, i8 } { i8 57, i8 -91, i8 0, i8 0, i8 0 } }>, align 16
@g_62 = internal global { i8, i8, [2 x i8] } { i8 44, i8 0, [2 x i8] undef }, align 4
@g_142 = internal global <{ { i8, i8, i8, i8, i8 } }> <{ { i8, i8, i8, i8, i8 } { i8 0, i8 2, i8 -109, i8 -1, i8 3 } }>, align 1
@g_194 = internal global { i8, i8, i8, i8, i8 } { i8 -124, i8 -105, i8 0, i8 0, i8 0 }, align 1
@g_195 = internal global { i8, i8, i8, i8, i8 } { i8 -124, i8 15, i8 0, i8 0, i8 1 }, align 1
@g_213 = internal global <{ <{ { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 } }>, <{ { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 } }>, <{ { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 } }>, <{ { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 } }>, <{ { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 } }>, <{ { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 } }> }> <{ <{ { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 } }> <{ { i8, i8, i8, i8, i8 } { i8 74, i8 93, i8 0, i8 0, i8 0 }, { i8, i8, i8, i8, i8 } { i8 74, i8 93, i8 0, i8 0, i8 0 }, { i8, i8, i8, i8, i8 } { i8 74, i8 93, i8 0, i8 0, i8 0 }, { i8, i8, i8, i8, i8 } { i8 74, i8 93, i8 0, i8 0, i8 0 }, { i8, i8, i8, i8, i8 } { i8 74, i8 93, i8 0, i8 0, i8 0 }, { i8, i8, i8, i8, i8 } { i8 74, i8 93, i8 0, i8 0, i8 0 } }>, <{ { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 } }> <{ { i8, i8, i8, i8, i8 } { i8 74, i8 93, i8 0, i8 0, i8 0 }, { i8, i8, i8, i8, i8 } { i8 74, i8 93, i8 0, i8 0, i8 0 }, { i8, i8, i8, i8, i8 } { i8 74, i8 93, i8 0, i8 0, i8 0 }, { i8, i8, i8, i8, i8 } { i8 74, i8 93, i8 0, i8 0, i8 0 }, { i8, i8, i8, i8, i8 } { i8 74, i8 93, i8 0, i8 0, i8 0 }, { i8, i8, i8, i8, i8 } { i8 74, i8 93, i8 0, i8 0, i8 0 } }>, <{ { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 } }> <{ { i8, i8, i8, i8, i8 } { i8 74, i8 93, i8 0, i8 0, i8 0 }, { i8, i8, i8, i8, i8 } { i8 74, i8 93, i8 0, i8 0, i8 0 }, { i8, i8, i8, i8, i8 } { i8 74, i8 93, i8 0, i8 0, i8 0 }, { i8, i8, i8, i8, i8 } { i8 74, i8 93, i8 0, i8 0, i8 0 }, { i8, i8, i8, i8, i8 } { i8 74, i8 93, i8 0, i8 0, i8 0 }, { i8, i8, i8, i8, i8 } { i8 74, i8 93, i8 0, i8 0, i8 0 } }>, <{ { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 } }> <{ { i8, i8, i8, i8, i8 } { i8 74, i8 93, i8 0, i8 0, i8 0 }, { i8, i8, i8, i8, i8 } { i8 74, i8 93, i8 0, i8 0, i8 0 }, { i8, i8, i8, i8, i8 } { i8 74, i8 93, i8 0, i8 0, i8 0 }, { i8, i8, i8, i8, i8 } { i8 74, i8 93, i8 0, i8 0, i8 0 }, { i8, i8, i8, i8, i8 } { i8 74, i8 93, i8 0, i8 0, i8 0 }, { i8, i8, i8, i8, i8 } { i8 74, i8 93, i8 0, i8 0, i8 0 } }>, <{ { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 } }> <{ { i8, i8, i8, i8, i8 } { i8 74, i8 93, i8 0, i8 0, i8 0 }, { i8, i8, i8, i8, i8 } { i8 74, i8 93, i8 0, i8 0, i8 0 }, { i8, i8, i8, i8, i8 } { i8 74, i8 93, i8 0, i8 0, i8 0 }, { i8, i8, i8, i8, i8 } { i8 74, i8 93, i8 0, i8 0, i8 0 }, { i8, i8, i8, i8, i8 } { i8 74, i8 93, i8 0, i8 0, i8 0 }, { i8, i8, i8, i8, i8 } { i8 74, i8 93, i8 0, i8 0, i8 0 } }>, <{ { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 } }> <{ { i8, i8, i8, i8, i8 } { i8 74, i8 93, i8 0, i8 0, i8 0 }, { i8, i8, i8, i8, i8 } { i8 74, i8 93, i8 0, i8 0, i8 0 }, { i8, i8, i8, i8, i8 } { i8 74, i8 93, i8 0, i8 0, i8 0 }, { i8, i8, i8, i8, i8 } { i8 74, i8 93, i8 0, i8 0, i8 0 }, { i8, i8, i8, i8, i8 } { i8 74, i8 93, i8 0, i8 0, i8 0 }, { i8, i8, i8, i8, i8 } { i8 74, i8 93, i8 0, i8 0, i8 0 } }> }>, align 16
@.str.37 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

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
  %90 = call zeroext i8 @func_1()
  %91 = load i32, i32* @g_2, align 4, !tbaa !1
  %92 = sext i32 %91 to i64
  %93 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %93)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %94

; <label>:94                                      ; preds = %133, %89
  %95 = load i32, i32* %i, align 4, !tbaa !1
  %96 = icmp slt i32 %95, 8
  br i1 %96, label %97, label %136

; <label>:97                                      ; preds = %94
  %98 = load i32, i32* %i, align 4, !tbaa !1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [8 x %struct.S2], [8 x %struct.S2]* bitcast (<{ { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 } }>* @g_24 to [8 x %struct.S2]*), i32 0, i64 %99
  %101 = bitcast %struct.S2* %100 to i40*
  %102 = load volatile i40, i40* %101, align 1
  %103 = and i40 %102, 2147483647
  %104 = trunc i40 %103 to i32
  %105 = zext i32 %104 to i64
  %106 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %105, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 %106)
  %107 = load i32, i32* %i, align 4, !tbaa !1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [8 x %struct.S2], [8 x %struct.S2]* bitcast (<{ { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 } }>* @g_24 to [8 x %struct.S2]*), i32 0, i64 %108
  %110 = bitcast %struct.S2* %109 to i40*
  %111 = load volatile i40, i40* %110, align 1
  %112 = shl i40 %111, 8
  %113 = ashr i40 %112, 39
  %114 = trunc i40 %113 to i32
  %115 = sext i32 %114 to i64
  %116 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %115, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i32 %116)
  %117 = load i32, i32* %i, align 4, !tbaa !1
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [8 x %struct.S2], [8 x %struct.S2]* bitcast (<{ { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 } }>* @g_24 to [8 x %struct.S2]*), i32 0, i64 %118
  %120 = bitcast %struct.S2* %119 to i40*
  %121 = load volatile i40, i40* %120, align 1
  %122 = lshr i40 %121, 32
  %123 = and i40 %122, 3
  %124 = trunc i40 %123 to i32
  %125 = zext i32 %124 to i64
  %126 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %125, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 %126)
  %127 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %132

; <label>:129                                     ; preds = %97
  %130 = load i32, i32* %i, align 4, !tbaa !1
  %131 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i32 %130)
  br label %132

; <label>:132                                     ; preds = %129, %97
  br label %133

; <label>:133                                     ; preds = %132
  %134 = load i32, i32* %i, align 4, !tbaa !1
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %i, align 4, !tbaa !1
  br label %94

; <label>:136                                     ; preds = %94
  %137 = load i32, i32* @g_27, align 4, !tbaa !1
  %138 = sext i32 %137 to i64
  %139 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %138, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 %139)
  %140 = load i64, i64* @g_29, align 8, !tbaa !7
  %141 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %140, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 %141)
  %142 = load volatile i16, i16* getelementptr inbounds (%struct.S3, %struct.S3* @g_60, i32 0, i32 0), align 1, !tbaa !10
  %143 = sext i16 %142 to i64
  %144 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %143, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i32 %144)
  %145 = load i16, i16* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i8, i8, [2 x i8] }* @g_62 to %struct.S0*), i32 0, i32 0), align 4
  %146 = and i16 %145, 4095
  %147 = zext i16 %146 to i32
  %148 = zext i32 %147 to i64
  %149 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %148, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i32 %149)
  %150 = load i64, i64* @g_77, align 8, !tbaa !7
  %151 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %150, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32 %151)
  %152 = load i64, i64* @g_81, align 8, !tbaa !7
  %153 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %152, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i32 %153)
  %154 = load i8, i8* @g_90, align 1, !tbaa !9
  %155 = zext i8 %154 to i64
  %156 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %155, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 %156)
  %157 = load i8, i8* @g_95, align 1, !tbaa !9
  %158 = sext i8 %157 to i64
  %159 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %158, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i32 %159)
  %160 = load i16, i16* @g_98, align 2, !tbaa !13
  %161 = zext i16 %160 to i64
  %162 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %161, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i32 %162)
  %163 = load i32, i32* @g_106, align 4, !tbaa !1
  %164 = zext i32 %163 to i64
  %165 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %164, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 %165)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %166

; <label>:166                                     ; preds = %215, %136
  %167 = load i32, i32* %i, align 4, !tbaa !1
  %168 = icmp slt i32 %167, 1
  br i1 %168, label %169, label %218

; <label>:169                                     ; preds = %166
  %170 = load i32, i32* %i, align 4, !tbaa !1
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [1 x %struct.S4], [1 x %struct.S4]* bitcast (<{ { i8, i8, i8, i8, i8 } }>* @g_142 to [1 x %struct.S4]*), i32 0, i64 %171
  %173 = bitcast %struct.S4* %172 to i40*
  %174 = load volatile i40, i40* %173, align 1
  %175 = and i40 %174, 63
  %176 = trunc i40 %175 to i32
  %177 = zext i32 %176 to i64
  %178 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %177, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i32 %178)
  %179 = load i32, i32* %i, align 4, !tbaa !1
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [1 x %struct.S4], [1 x %struct.S4]* bitcast (<{ { i8, i8, i8, i8, i8 } }>* @g_142 to [1 x %struct.S4]*), i32 0, i64 %180
  %182 = bitcast %struct.S4* %181 to i40*
  %183 = load volatile i40, i40* %182, align 1
  %184 = lshr i40 %183, 6
  %185 = and i40 %184, 1023
  %186 = trunc i40 %185 to i32
  %187 = zext i32 %186 to i64
  %188 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %187, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0), i32 %188)
  %189 = load i32, i32* %i, align 4, !tbaa !1
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds [1 x %struct.S4], [1 x %struct.S4]* bitcast (<{ { i8, i8, i8, i8, i8 } }>* @g_142 to [1 x %struct.S4]*), i32 0, i64 %190
  %192 = bitcast %struct.S4* %191 to i40*
  %193 = load volatile i40, i40* %192, align 1
  %194 = shl i40 %193, 8
  %195 = ashr i40 %194, 24
  %196 = trunc i40 %195 to i32
  %197 = sext i32 %196 to i64
  %198 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %197, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0), i32 %198)
  %199 = load i32, i32* %i, align 4, !tbaa !1
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds [1 x %struct.S4], [1 x %struct.S4]* bitcast (<{ { i8, i8, i8, i8, i8 } }>* @g_142 to [1 x %struct.S4]*), i32 0, i64 %200
  %202 = bitcast %struct.S4* %201 to i40*
  %203 = load volatile i40, i40* %202, align 1
  %204 = lshr i40 %203, 32
  %205 = and i40 %204, 127
  %206 = trunc i40 %205 to i32
  %207 = zext i32 %206 to i64
  %208 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %207, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i32 0, i32 0), i32 %208)
  %209 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %214

; <label>:211                                     ; preds = %169
  %212 = load i32, i32* %i, align 4, !tbaa !1
  %213 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i32 %212)
  br label %214

; <label>:214                                     ; preds = %211, %169
  br label %215

; <label>:215                                     ; preds = %214
  %216 = load i32, i32* %i, align 4, !tbaa !1
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %i, align 4, !tbaa !1
  br label %166

; <label>:218                                     ; preds = %166
  %219 = load volatile i16, i16* getelementptr inbounds (%struct.S1, %struct.S1* @g_160, i32 0, i32 0), align 1, !tbaa !14
  %220 = sext i16 %219 to i64
  %221 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %220, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i32 %221)
  %222 = load volatile i40, i40* bitcast ({ i8, i8, i8, i8, i8 }* @g_194 to i40*), align 1
  %223 = and i40 %222, 2147483647
  %224 = trunc i40 %223 to i32
  %225 = zext i32 %224 to i64
  %226 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %225, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i32 %226)
  %227 = load volatile i40, i40* bitcast ({ i8, i8, i8, i8, i8 }* @g_194 to i40*), align 1
  %228 = shl i40 %227, 8
  %229 = ashr i40 %228, 39
  %230 = trunc i40 %229 to i32
  %231 = sext i32 %230 to i64
  %232 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %231, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i32 %232)
  %233 = load volatile i40, i40* bitcast ({ i8, i8, i8, i8, i8 }* @g_194 to i40*), align 1
  %234 = lshr i40 %233, 32
  %235 = and i40 %234, 3
  %236 = trunc i40 %235 to i32
  %237 = zext i32 %236 to i64
  %238 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %237, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i32 %238)
  %239 = load volatile i40, i40* bitcast ({ i8, i8, i8, i8, i8 }* @g_195 to i40*), align 1
  %240 = and i40 %239, 2147483647
  %241 = trunc i40 %240 to i32
  %242 = zext i32 %241 to i64
  %243 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %242, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), i32 %243)
  %244 = load volatile i40, i40* bitcast ({ i8, i8, i8, i8, i8 }* @g_195 to i40*), align 1
  %245 = shl i40 %244, 8
  %246 = ashr i40 %245, 39
  %247 = trunc i40 %246 to i32
  %248 = sext i32 %247 to i64
  %249 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %248, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), i32 %249)
  %250 = load volatile i40, i40* bitcast ({ i8, i8, i8, i8, i8 }* @g_195 to i40*), align 1
  %251 = lshr i40 %250, 32
  %252 = and i40 %251, 3
  %253 = trunc i40 %252 to i32
  %254 = zext i32 %253 to i64
  %255 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %254, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), i32 %255)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %256

; <label>:256                                     ; preds = %313, %218
  %257 = load i32, i32* %i, align 4, !tbaa !1
  %258 = icmp slt i32 %257, 6
  br i1 %258, label %259, label %316

; <label>:259                                     ; preds = %256
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %260

; <label>:260                                     ; preds = %309, %259
  %261 = load i32, i32* %j, align 4, !tbaa !1
  %262 = icmp slt i32 %261, 6
  br i1 %262, label %263, label %312

; <label>:263                                     ; preds = %260
  %264 = load i32, i32* %j, align 4, !tbaa !1
  %265 = sext i32 %264 to i64
  %266 = load i32, i32* %i, align 4, !tbaa !1
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds [6 x [6 x %struct.S2]], [6 x [6 x %struct.S2]]* bitcast (<{ <{ { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 } }>, <{ { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 } }>, <{ { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 } }>, <{ { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 } }>, <{ { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 } }>, <{ { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 } }> }>* @g_213 to [6 x [6 x %struct.S2]]*), i32 0, i64 %267
  %269 = getelementptr inbounds [6 x %struct.S2], [6 x %struct.S2]* %268, i32 0, i64 %265
  %270 = bitcast %struct.S2* %269 to i40*
  %271 = load i40, i40* %270, align 1
  %272 = and i40 %271, 2147483647
  %273 = trunc i40 %272 to i32
  %274 = zext i32 %273 to i64
  %275 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %274, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i32 0, i32 0), i32 %275)
  %276 = load i32, i32* %j, align 4, !tbaa !1
  %277 = sext i32 %276 to i64
  %278 = load i32, i32* %i, align 4, !tbaa !1
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds [6 x [6 x %struct.S2]], [6 x [6 x %struct.S2]]* bitcast (<{ <{ { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 } }>, <{ { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 } }>, <{ { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 } }>, <{ { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 } }>, <{ { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 } }>, <{ { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 } }> }>* @g_213 to [6 x [6 x %struct.S2]]*), i32 0, i64 %279
  %281 = getelementptr inbounds [6 x %struct.S2], [6 x %struct.S2]* %280, i32 0, i64 %277
  %282 = bitcast %struct.S2* %281 to i40*
  %283 = load i40, i40* %282, align 1
  %284 = shl i40 %283, 8
  %285 = ashr i40 %284, 39
  %286 = trunc i40 %285 to i32
  %287 = sext i32 %286 to i64
  %288 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %287, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i32 0, i32 0), i32 %288)
  %289 = load i32, i32* %j, align 4, !tbaa !1
  %290 = sext i32 %289 to i64
  %291 = load i32, i32* %i, align 4, !tbaa !1
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds [6 x [6 x %struct.S2]], [6 x [6 x %struct.S2]]* bitcast (<{ <{ { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 } }>, <{ { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 } }>, <{ { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 } }>, <{ { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 } }>, <{ { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 } }>, <{ { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8 } }> }>* @g_213 to [6 x [6 x %struct.S2]]*), i32 0, i64 %292
  %294 = getelementptr inbounds [6 x %struct.S2], [6 x %struct.S2]* %293, i32 0, i64 %290
  %295 = bitcast %struct.S2* %294 to i40*
  %296 = load volatile i40, i40* %295, align 1
  %297 = lshr i40 %296, 32
  %298 = and i40 %297, 3
  %299 = trunc i40 %298 to i32
  %300 = zext i32 %299 to i64
  %301 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %300, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i32 0, i32 0), i32 %301)
  %302 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %308

; <label>:304                                     ; preds = %263
  %305 = load i32, i32* %i, align 4, !tbaa !1
  %306 = load i32, i32* %j, align 4, !tbaa !1
  %307 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.30, i32 0, i32 0), i32 %305, i32 %306)
  br label %308

; <label>:308                                     ; preds = %304, %263
  br label %309

; <label>:309                                     ; preds = %308
  %310 = load i32, i32* %j, align 4, !tbaa !1
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %j, align 4, !tbaa !1
  br label %260

; <label>:312                                     ; preds = %260
  br label %313

; <label>:313                                     ; preds = %312
  %314 = load i32, i32* %i, align 4, !tbaa !1
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* %i, align 4, !tbaa !1
  br label %256

; <label>:316                                     ; preds = %256
  %317 = load i16, i16* getelementptr inbounds (%struct.S3, %struct.S3* @g_257, i32 0, i32 0), align 1, !tbaa !10
  %318 = sext i16 %317 to i64
  %319 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %318, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i32 0, i32 0), i32 %319)
  %320 = load i32, i32* @g_262, align 4, !tbaa !1
  %321 = sext i32 %320 to i64
  %322 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %321, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i32 %322)
  %323 = load i8, i8* @g_277, align 1, !tbaa !9
  %324 = zext i8 %323 to i64
  %325 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %324, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i32 %325)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %326

; <label>:326                                     ; preds = %343, %316
  %327 = load i32, i32* %i, align 4, !tbaa !1
  %328 = icmp slt i32 %327, 9
  br i1 %328, label %329, label %346

; <label>:329                                     ; preds = %326
  %330 = load i32, i32* %i, align 4, !tbaa !1
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds [9 x %struct.S1], [9 x %struct.S1]* @g_332, i32 0, i64 %331
  %333 = getelementptr inbounds %struct.S1, %struct.S1* %332, i32 0, i32 0
  %334 = load i16, i16* %333, align 1, !tbaa !14
  %335 = sext i16 %334 to i64
  %336 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %335, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i32 0, i32 0), i32 %336)
  %337 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %342

; <label>:339                                     ; preds = %329
  %340 = load i32, i32* %i, align 4, !tbaa !1
  %341 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i32 %340)
  br label %342

; <label>:342                                     ; preds = %339, %329
  br label %343

; <label>:343                                     ; preds = %342
  %344 = load i32, i32* %i, align 4, !tbaa !1
  %345 = add nsw i32 %344, 1
  store i32 %345, i32* %i, align 4, !tbaa !1
  br label %326

; <label>:346                                     ; preds = %326
  %347 = load volatile i8, i8* @g_408, align 1, !tbaa !9
  %348 = sext i8 %347 to i64
  %349 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %348, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), i32 %349)
  %350 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %351 = zext i32 %350 to i64
  %352 = xor i64 %351, 4294967295
  %353 = trunc i64 %352 to i32
  %354 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %353, i32 %354)
  %355 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %355) #1
  %356 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %356) #1
  %357 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %357) #1
  %358 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %358) #1
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
define internal zeroext i8 @func_1() #0 {
  %l_6 = alloca i32, align 4
  %l_427 = alloca i32, align 4
  %l_428 = alloca i64*, align 8
  %l_429 = alloca i16*, align 8
  %l_434 = alloca %struct.S2*, align 8
  %l_433 = alloca [9 x %struct.S2**], align 16
  %l_432 = alloca [4 x [3 x [7 x %struct.S2***]]], align 16
  %l_435 = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l_25 = alloca i32, align 4
  %l_26 = alloca [8 x [8 x i32*]], align 16
  %l_28 = alloca i64*, align 8
  %i1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  %1 = alloca %struct.S2, align 1
  %2 = bitcast i32* %l_6 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 8, i32* %l_6, align 4, !tbaa !1
  %3 = bitcast i32* %l_427 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 1501241146, i32* %l_427, align 4, !tbaa !1
  %4 = bitcast i64** %l_428 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store i64* @g_81, i64** %l_428, align 8, !tbaa !5
  %5 = bitcast i16** %l_429 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store i16* @g_98, i16** %l_429, align 8, !tbaa !5
  %6 = bitcast %struct.S2** %l_434 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store %struct.S2* null, %struct.S2** %l_434, align 8, !tbaa !5
  %7 = bitcast [9 x %struct.S2**]* %l_433 to i8*
  call void @llvm.lifetime.start(i64 72, i8* %7) #1
  %8 = getelementptr inbounds [9 x %struct.S2**], [9 x %struct.S2**]* %l_433, i64 0, i64 0
  store %struct.S2** null, %struct.S2*** %8, !tbaa !5
  %9 = getelementptr inbounds %struct.S2**, %struct.S2*** %8, i64 1
  store %struct.S2** %l_434, %struct.S2*** %9, !tbaa !5
  %10 = getelementptr inbounds %struct.S2**, %struct.S2*** %9, i64 1
  store %struct.S2** null, %struct.S2*** %10, !tbaa !5
  %11 = getelementptr inbounds %struct.S2**, %struct.S2*** %10, i64 1
  store %struct.S2** null, %struct.S2*** %11, !tbaa !5
  %12 = getelementptr inbounds %struct.S2**, %struct.S2*** %11, i64 1
  store %struct.S2** %l_434, %struct.S2*** %12, !tbaa !5
  %13 = getelementptr inbounds %struct.S2**, %struct.S2*** %12, i64 1
  store %struct.S2** null, %struct.S2*** %13, !tbaa !5
  %14 = getelementptr inbounds %struct.S2**, %struct.S2*** %13, i64 1
  store %struct.S2** null, %struct.S2*** %14, !tbaa !5
  %15 = getelementptr inbounds %struct.S2**, %struct.S2*** %14, i64 1
  store %struct.S2** %l_434, %struct.S2*** %15, !tbaa !5
  %16 = getelementptr inbounds %struct.S2**, %struct.S2*** %15, i64 1
  store %struct.S2** null, %struct.S2*** %16, !tbaa !5
  %17 = bitcast [4 x [3 x [7 x %struct.S2***]]]* %l_432 to i8*
  call void @llvm.lifetime.start(i64 672, i8* %17) #1
  %18 = getelementptr inbounds [4 x [3 x [7 x %struct.S2***]]], [4 x [3 x [7 x %struct.S2***]]]* %l_432, i64 0, i64 0
  %19 = getelementptr inbounds [3 x [7 x %struct.S2***]], [3 x [7 x %struct.S2***]]* %18, i64 0, i64 0
  %20 = getelementptr inbounds [7 x %struct.S2***], [7 x %struct.S2***]* %19, i64 0, i64 0
  %21 = getelementptr inbounds [9 x %struct.S2**], [9 x %struct.S2**]* %l_433, i32 0, i64 6
  store %struct.S2*** %21, %struct.S2**** %20, !tbaa !5
  %22 = getelementptr inbounds %struct.S2***, %struct.S2**** %20, i64 1
  %23 = getelementptr inbounds [9 x %struct.S2**], [9 x %struct.S2**]* %l_433, i32 0, i64 0
  store %struct.S2*** %23, %struct.S2**** %22, !tbaa !5
  %24 = getelementptr inbounds %struct.S2***, %struct.S2**** %22, i64 1
  %25 = getelementptr inbounds [9 x %struct.S2**], [9 x %struct.S2**]* %l_433, i32 0, i64 0
  store %struct.S2*** %25, %struct.S2**** %24, !tbaa !5
  %26 = getelementptr inbounds %struct.S2***, %struct.S2**** %24, i64 1
  %27 = getelementptr inbounds [9 x %struct.S2**], [9 x %struct.S2**]* %l_433, i32 0, i64 6
  store %struct.S2*** %27, %struct.S2**** %26, !tbaa !5
  %28 = getelementptr inbounds %struct.S2***, %struct.S2**** %26, i64 1
  %29 = getelementptr inbounds [9 x %struct.S2**], [9 x %struct.S2**]* %l_433, i32 0, i64 0
  store %struct.S2*** %29, %struct.S2**** %28, !tbaa !5
  %30 = getelementptr inbounds %struct.S2***, %struct.S2**** %28, i64 1
  %31 = getelementptr inbounds [9 x %struct.S2**], [9 x %struct.S2**]* %l_433, i32 0, i64 0
  store %struct.S2*** %31, %struct.S2**** %30, !tbaa !5
  %32 = getelementptr inbounds %struct.S2***, %struct.S2**** %30, i64 1
  %33 = getelementptr inbounds [9 x %struct.S2**], [9 x %struct.S2**]* %l_433, i32 0, i64 0
  store %struct.S2*** %33, %struct.S2**** %32, !tbaa !5
  %34 = getelementptr inbounds [7 x %struct.S2***], [7 x %struct.S2***]* %19, i64 1
  %35 = getelementptr inbounds [7 x %struct.S2***], [7 x %struct.S2***]* %34, i64 0, i64 0
  %36 = getelementptr inbounds [9 x %struct.S2**], [9 x %struct.S2**]* %l_433, i32 0, i64 6
  store %struct.S2*** %36, %struct.S2**** %35, !tbaa !5
  %37 = getelementptr inbounds %struct.S2***, %struct.S2**** %35, i64 1
  %38 = getelementptr inbounds [9 x %struct.S2**], [9 x %struct.S2**]* %l_433, i32 0, i64 0
  store %struct.S2*** %38, %struct.S2**** %37, !tbaa !5
  %39 = getelementptr inbounds %struct.S2***, %struct.S2**** %37, i64 1
  %40 = getelementptr inbounds [9 x %struct.S2**], [9 x %struct.S2**]* %l_433, i32 0, i64 0
  store %struct.S2*** %40, %struct.S2**** %39, !tbaa !5
  %41 = getelementptr inbounds %struct.S2***, %struct.S2**** %39, i64 1
  %42 = getelementptr inbounds [9 x %struct.S2**], [9 x %struct.S2**]* %l_433, i32 0, i64 0
  store %struct.S2*** %42, %struct.S2**** %41, !tbaa !5
  %43 = getelementptr inbounds %struct.S2***, %struct.S2**** %41, i64 1
  %44 = getelementptr inbounds [9 x %struct.S2**], [9 x %struct.S2**]* %l_433, i32 0, i64 0
  store %struct.S2*** %44, %struct.S2**** %43, !tbaa !5
  %45 = getelementptr inbounds %struct.S2***, %struct.S2**** %43, i64 1
  %46 = getelementptr inbounds [9 x %struct.S2**], [9 x %struct.S2**]* %l_433, i32 0, i64 0
  store %struct.S2*** %46, %struct.S2**** %45, !tbaa !5
  %47 = getelementptr inbounds %struct.S2***, %struct.S2**** %45, i64 1
  %48 = getelementptr inbounds [9 x %struct.S2**], [9 x %struct.S2**]* %l_433, i32 0, i64 4
  store %struct.S2*** %48, %struct.S2**** %47, !tbaa !5
  %49 = getelementptr inbounds [7 x %struct.S2***], [7 x %struct.S2***]* %34, i64 1
  %50 = getelementptr inbounds [7 x %struct.S2***], [7 x %struct.S2***]* %49, i64 0, i64 0
  %51 = getelementptr inbounds [9 x %struct.S2**], [9 x %struct.S2**]* %l_433, i32 0, i64 4
  store %struct.S2*** %51, %struct.S2**** %50, !tbaa !5
  %52 = getelementptr inbounds %struct.S2***, %struct.S2**** %50, i64 1
  store %struct.S2*** null, %struct.S2**** %52, !tbaa !5
  %53 = getelementptr inbounds %struct.S2***, %struct.S2**** %52, i64 1
  %54 = getelementptr inbounds [9 x %struct.S2**], [9 x %struct.S2**]* %l_433, i32 0, i64 0
  store %struct.S2*** %54, %struct.S2**** %53, !tbaa !5
  %55 = getelementptr inbounds %struct.S2***, %struct.S2**** %53, i64 1
  %56 = getelementptr inbounds [9 x %struct.S2**], [9 x %struct.S2**]* %l_433, i32 0, i64 0
  store %struct.S2*** %56, %struct.S2**** %55, !tbaa !5
  %57 = getelementptr inbounds %struct.S2***, %struct.S2**** %55, i64 1
  %58 = getelementptr inbounds [9 x %struct.S2**], [9 x %struct.S2**]* %l_433, i32 0, i64 3
  store %struct.S2*** %58, %struct.S2**** %57, !tbaa !5
  %59 = getelementptr inbounds %struct.S2***, %struct.S2**** %57, i64 1
  store %struct.S2*** null, %struct.S2**** %59, !tbaa !5
  %60 = getelementptr inbounds %struct.S2***, %struct.S2**** %59, i64 1
  %61 = getelementptr inbounds [9 x %struct.S2**], [9 x %struct.S2**]* %l_433, i32 0, i64 0
  store %struct.S2*** %61, %struct.S2**** %60, !tbaa !5
  %62 = getelementptr inbounds [3 x [7 x %struct.S2***]], [3 x [7 x %struct.S2***]]* %18, i64 1
  %63 = getelementptr inbounds [3 x [7 x %struct.S2***]], [3 x [7 x %struct.S2***]]* %62, i64 0, i64 0
  %64 = getelementptr inbounds [7 x %struct.S2***], [7 x %struct.S2***]* %63, i64 0, i64 0
  %65 = getelementptr inbounds [9 x %struct.S2**], [9 x %struct.S2**]* %l_433, i32 0, i64 0
  store %struct.S2*** %65, %struct.S2**** %64, !tbaa !5
  %66 = getelementptr inbounds %struct.S2***, %struct.S2**** %64, i64 1
  store %struct.S2*** null, %struct.S2**** %66, !tbaa !5
  %67 = getelementptr inbounds %struct.S2***, %struct.S2**** %66, i64 1
  store %struct.S2*** null, %struct.S2**** %67, !tbaa !5
  %68 = getelementptr inbounds %struct.S2***, %struct.S2**** %67, i64 1
  %69 = getelementptr inbounds [9 x %struct.S2**], [9 x %struct.S2**]* %l_433, i32 0, i64 5
  store %struct.S2*** %69, %struct.S2**** %68, !tbaa !5
  %70 = getelementptr inbounds %struct.S2***, %struct.S2**** %68, i64 1
  %71 = getelementptr inbounds [9 x %struct.S2**], [9 x %struct.S2**]* %l_433, i32 0, i64 0
  store %struct.S2*** %71, %struct.S2**** %70, !tbaa !5
  %72 = getelementptr inbounds %struct.S2***, %struct.S2**** %70, i64 1
  %73 = getelementptr inbounds [9 x %struct.S2**], [9 x %struct.S2**]* %l_433, i32 0, i64 0
  store %struct.S2*** %73, %struct.S2**** %72, !tbaa !5
  %74 = getelementptr inbounds %struct.S2***, %struct.S2**** %72, i64 1
  %75 = getelementptr inbounds [9 x %struct.S2**], [9 x %struct.S2**]* %l_433, i32 0, i64 0
  store %struct.S2*** %75, %struct.S2**** %74, !tbaa !5
  %76 = getelementptr inbounds [7 x %struct.S2***], [7 x %struct.S2***]* %63, i64 1
  %77 = getelementptr inbounds [7 x %struct.S2***], [7 x %struct.S2***]* %76, i64 0, i64 0
  store %struct.S2*** null, %struct.S2**** %77, !tbaa !5
  %78 = getelementptr inbounds %struct.S2***, %struct.S2**** %77, i64 1
  %79 = getelementptr inbounds [9 x %struct.S2**], [9 x %struct.S2**]* %l_433, i32 0, i64 0
  store %struct.S2*** %79, %struct.S2**** %78, !tbaa !5
  %80 = getelementptr inbounds %struct.S2***, %struct.S2**** %78, i64 1
  %81 = getelementptr inbounds [9 x %struct.S2**], [9 x %struct.S2**]* %l_433, i32 0, i64 0
  store %struct.S2*** %81, %struct.S2**** %80, !tbaa !5
  %82 = getelementptr inbounds %struct.S2***, %struct.S2**** %80, i64 1
  %83 = getelementptr inbounds [9 x %struct.S2**], [9 x %struct.S2**]* %l_433, i32 0, i64 0
  store %struct.S2*** %83, %struct.S2**** %82, !tbaa !5
  %84 = getelementptr inbounds %struct.S2***, %struct.S2**** %82, i64 1
  %85 = getelementptr inbounds [9 x %struct.S2**], [9 x %struct.S2**]* %l_433, i32 0, i64 0
  store %struct.S2*** %85, %struct.S2**** %84, !tbaa !5
  %86 = getelementptr inbounds %struct.S2***, %struct.S2**** %84, i64 1
  %87 = getelementptr inbounds [9 x %struct.S2**], [9 x %struct.S2**]* %l_433, i32 0, i64 0
  store %struct.S2*** %87, %struct.S2**** %86, !tbaa !5
  %88 = getelementptr inbounds %struct.S2***, %struct.S2**** %86, i64 1
  store %struct.S2*** null, %struct.S2**** %88, !tbaa !5
  %89 = getelementptr inbounds [7 x %struct.S2***], [7 x %struct.S2***]* %76, i64 1
  %90 = getelementptr inbounds [7 x %struct.S2***], [7 x %struct.S2***]* %89, i64 0, i64 0
  %91 = getelementptr inbounds [9 x %struct.S2**], [9 x %struct.S2**]* %l_433, i32 0, i64 0
  store %struct.S2*** %91, %struct.S2**** %90, !tbaa !5
  %92 = getelementptr inbounds %struct.S2***, %struct.S2**** %90, i64 1
  %93 = getelementptr inbounds [9 x %struct.S2**], [9 x %struct.S2**]* %l_433, i32 0, i64 0
  store %struct.S2*** %93, %struct.S2**** %92, !tbaa !5
  %94 = getelementptr inbounds %struct.S2***, %struct.S2**** %92, i64 1
  %95 = getelementptr inbounds [9 x %struct.S2**], [9 x %struct.S2**]* %l_433, i32 0, i64 0
  store %struct.S2*** %95, %struct.S2**** %94, !tbaa !5
  %96 = getelementptr inbounds %struct.S2***, %struct.S2**** %94, i64 1
  %97 = getelementptr inbounds [9 x %struct.S2**], [9 x %struct.S2**]* %l_433, i32 0, i64 0
  store %struct.S2*** %97, %struct.S2**** %96, !tbaa !5
  %98 = getelementptr inbounds %struct.S2***, %struct.S2**** %96, i64 1
  %99 = getelementptr inbounds [9 x %struct.S2**], [9 x %struct.S2**]* %l_433, i32 0, i64 3
  store %struct.S2*** %99, %struct.S2**** %98, !tbaa !5
  %100 = getelementptr inbounds %struct.S2***, %struct.S2**** %98, i64 1
  store %struct.S2*** null, %struct.S2**** %100, !tbaa !5
  %101 = getelementptr inbounds %struct.S2***, %struct.S2**** %100, i64 1
  %102 = getelementptr inbounds [9 x %struct.S2**], [9 x %struct.S2**]* %l_433, i32 0, i64 0
  store %struct.S2*** %102, %struct.S2**** %101, !tbaa !5
  %103 = getelementptr inbounds [3 x [7 x %struct.S2***]], [3 x [7 x %struct.S2***]]* %62, i64 1
  %104 = getelementptr inbounds [3 x [7 x %struct.S2***]], [3 x [7 x %struct.S2***]]* %103, i64 0, i64 0
  %105 = getelementptr inbounds [7 x %struct.S2***], [7 x %struct.S2***]* %104, i64 0, i64 0
  %106 = getelementptr inbounds [9 x %struct.S2**], [9 x %struct.S2**]* %l_433, i32 0, i64 5
  store %struct.S2*** %106, %struct.S2**** %105, !tbaa !5
  %107 = getelementptr inbounds %struct.S2***, %struct.S2**** %105, i64 1
  %108 = getelementptr inbounds [9 x %struct.S2**], [9 x %struct.S2**]* %l_433, i32 0, i64 0
  store %struct.S2*** %108, %struct.S2**** %107, !tbaa !5
  %109 = getelementptr inbounds %struct.S2***, %struct.S2**** %107, i64 1
  %110 = getelementptr inbounds [9 x %struct.S2**], [9 x %struct.S2**]* %l_433, i32 0, i64 3
  store %struct.S2*** %110, %struct.S2**** %109, !tbaa !5
  %111 = getelementptr inbounds %struct.S2***, %struct.S2**** %109, i64 1
  store %struct.S2*** null, %struct.S2**** %111, !tbaa !5
  %112 = getelementptr inbounds %struct.S2***, %struct.S2**** %111, i64 1
  %113 = getelementptr inbounds [9 x %struct.S2**], [9 x %struct.S2**]* %l_433, i32 0, i64 0
  store %struct.S2*** %113, %struct.S2**** %112, !tbaa !5
  %114 = getelementptr inbounds %struct.S2***, %struct.S2**** %112, i64 1
  %115 = getelementptr inbounds [9 x %struct.S2**], [9 x %struct.S2**]* %l_433, i32 0, i64 0
  store %struct.S2*** %115, %struct.S2**** %114, !tbaa !5
  %116 = getelementptr inbounds %struct.S2***, %struct.S2**** %114, i64 1
  store %struct.S2*** null, %struct.S2**** %116, !tbaa !5
  %117 = getelementptr inbounds [7 x %struct.S2***], [7 x %struct.S2***]* %104, i64 1
  %118 = getelementptr inbounds [7 x %struct.S2***], [7 x %struct.S2***]* %117, i64 0, i64 0
  store %struct.S2*** null, %struct.S2**** %118, !tbaa !5
  %119 = getelementptr inbounds %struct.S2***, %struct.S2**** %118, i64 1
  %120 = getelementptr inbounds [9 x %struct.S2**], [9 x %struct.S2**]* %l_433, i32 0, i64 5
  store %struct.S2*** %120, %struct.S2**** %119, !tbaa !5
  %121 = getelementptr inbounds %struct.S2***, %struct.S2**** %119, i64 1
  %122 = getelementptr inbounds [9 x %struct.S2**], [9 x %struct.S2**]* %l_433, i32 0, i64 0
  store %struct.S2*** %122, %struct.S2**** %121, !tbaa !5
  %123 = getelementptr inbounds %struct.S2***, %struct.S2**** %121, i64 1
  store %struct.S2*** null, %struct.S2**** %123, !tbaa !5
  %124 = getelementptr inbounds %struct.S2***, %struct.S2**** %123, i64 1
  %125 = getelementptr inbounds [9 x %struct.S2**], [9 x %struct.S2**]* %l_433, i32 0, i64 0
  store %struct.S2*** %125, %struct.S2**** %124, !tbaa !5
  %126 = getelementptr inbounds %struct.S2***, %struct.S2**** %124, i64 1
  store %struct.S2*** null, %struct.S2**** %126, !tbaa !5
  %127 = getelementptr inbounds %struct.S2***, %struct.S2**** %126, i64 1
  %128 = getelementptr inbounds [9 x %struct.S2**], [9 x %struct.S2**]* %l_433, i32 0, i64 0
  store %struct.S2*** %128, %struct.S2**** %127, !tbaa !5
  %129 = getelementptr inbounds [7 x %struct.S2***], [7 x %struct.S2***]* %117, i64 1
  %130 = getelementptr inbounds [7 x %struct.S2***], [7 x %struct.S2***]* %129, i64 0, i64 0
  store %struct.S2*** null, %struct.S2**** %130, !tbaa !5
  %131 = getelementptr inbounds %struct.S2***, %struct.S2**** %130, i64 1
  %132 = getelementptr inbounds [9 x %struct.S2**], [9 x %struct.S2**]* %l_433, i32 0, i64 5
  store %struct.S2*** %132, %struct.S2**** %131, !tbaa !5
  %133 = getelementptr inbounds %struct.S2***, %struct.S2**** %131, i64 1
  %134 = getelementptr inbounds [9 x %struct.S2**], [9 x %struct.S2**]* %l_433, i32 0, i64 0
  store %struct.S2*** %134, %struct.S2**** %133, !tbaa !5
  %135 = getelementptr inbounds %struct.S2***, %struct.S2**** %133, i64 1
  %136 = getelementptr inbounds [9 x %struct.S2**], [9 x %struct.S2**]* %l_433, i32 0, i64 0
  store %struct.S2*** %136, %struct.S2**** %135, !tbaa !5
  %137 = getelementptr inbounds %struct.S2***, %struct.S2**** %135, i64 1
  %138 = getelementptr inbounds [9 x %struct.S2**], [9 x %struct.S2**]* %l_433, i32 0, i64 0
  store %struct.S2*** %138, %struct.S2**** %137, !tbaa !5
  %139 = getelementptr inbounds %struct.S2***, %struct.S2**** %137, i64 1
  %140 = getelementptr inbounds [9 x %struct.S2**], [9 x %struct.S2**]* %l_433, i32 0, i64 0
  store %struct.S2*** %140, %struct.S2**** %139, !tbaa !5
  %141 = getelementptr inbounds %struct.S2***, %struct.S2**** %139, i64 1
  %142 = getelementptr inbounds [9 x %struct.S2**], [9 x %struct.S2**]* %l_433, i32 0, i64 0
  store %struct.S2*** %142, %struct.S2**** %141, !tbaa !5
  %143 = getelementptr inbounds [3 x [7 x %struct.S2***]], [3 x [7 x %struct.S2***]]* %103, i64 1
  %144 = getelementptr inbounds [3 x [7 x %struct.S2***]], [3 x [7 x %struct.S2***]]* %143, i64 0, i64 0
  %145 = getelementptr inbounds [7 x %struct.S2***], [7 x %struct.S2***]* %144, i64 0, i64 0
  store %struct.S2*** null, %struct.S2**** %145, !tbaa !5
  %146 = getelementptr inbounds %struct.S2***, %struct.S2**** %145, i64 1
  %147 = getelementptr inbounds [9 x %struct.S2**], [9 x %struct.S2**]* %l_433, i32 0, i64 4
  store %struct.S2*** %147, %struct.S2**** %146, !tbaa !5
  %148 = getelementptr inbounds %struct.S2***, %struct.S2**** %146, i64 1
  store %struct.S2*** null, %struct.S2**** %148, !tbaa !5
  %149 = getelementptr inbounds %struct.S2***, %struct.S2**** %148, i64 1
  %150 = getelementptr inbounds [9 x %struct.S2**], [9 x %struct.S2**]* %l_433, i32 0, i64 5
  store %struct.S2*** %150, %struct.S2**** %149, !tbaa !5
  %151 = getelementptr inbounds %struct.S2***, %struct.S2**** %149, i64 1
  %152 = getelementptr inbounds [9 x %struct.S2**], [9 x %struct.S2**]* %l_433, i32 0, i64 6
  store %struct.S2*** %152, %struct.S2**** %151, !tbaa !5
  %153 = getelementptr inbounds %struct.S2***, %struct.S2**** %151, i64 1
  %154 = getelementptr inbounds [9 x %struct.S2**], [9 x %struct.S2**]* %l_433, i32 0, i64 0
  store %struct.S2*** %154, %struct.S2**** %153, !tbaa !5
  %155 = getelementptr inbounds %struct.S2***, %struct.S2**** %153, i64 1
  store %struct.S2*** null, %struct.S2**** %155, !tbaa !5
  %156 = getelementptr inbounds [7 x %struct.S2***], [7 x %struct.S2***]* %144, i64 1
  %157 = getelementptr inbounds [7 x %struct.S2***], [7 x %struct.S2***]* %156, i64 0, i64 0
  store %struct.S2*** null, %struct.S2**** %157, !tbaa !5
  %158 = getelementptr inbounds %struct.S2***, %struct.S2**** %157, i64 1
  store %struct.S2*** null, %struct.S2**** %158, !tbaa !5
  %159 = getelementptr inbounds %struct.S2***, %struct.S2**** %158, i64 1
  %160 = getelementptr inbounds [9 x %struct.S2**], [9 x %struct.S2**]* %l_433, i32 0, i64 0
  store %struct.S2*** %160, %struct.S2**** %159, !tbaa !5
  %161 = getelementptr inbounds %struct.S2***, %struct.S2**** %159, i64 1
  %162 = getelementptr inbounds [9 x %struct.S2**], [9 x %struct.S2**]* %l_433, i32 0, i64 0
  store %struct.S2*** %162, %struct.S2**** %161, !tbaa !5
  %163 = getelementptr inbounds %struct.S2***, %struct.S2**** %161, i64 1
  %164 = getelementptr inbounds [9 x %struct.S2**], [9 x %struct.S2**]* %l_433, i32 0, i64 5
  store %struct.S2*** %164, %struct.S2**** %163, !tbaa !5
  %165 = getelementptr inbounds %struct.S2***, %struct.S2**** %163, i64 1
  %166 = getelementptr inbounds [9 x %struct.S2**], [9 x %struct.S2**]* %l_433, i32 0, i64 4
  store %struct.S2*** %166, %struct.S2**** %165, !tbaa !5
  %167 = getelementptr inbounds %struct.S2***, %struct.S2**** %165, i64 1
  %168 = getelementptr inbounds [9 x %struct.S2**], [9 x %struct.S2**]* %l_433, i32 0, i64 0
  store %struct.S2*** %168, %struct.S2**** %167, !tbaa !5
  %169 = getelementptr inbounds [7 x %struct.S2***], [7 x %struct.S2***]* %156, i64 1
  %170 = getelementptr inbounds [7 x %struct.S2***], [7 x %struct.S2***]* %169, i64 0, i64 0
  %171 = getelementptr inbounds [9 x %struct.S2**], [9 x %struct.S2**]* %l_433, i32 0, i64 5
  store %struct.S2*** %171, %struct.S2**** %170, !tbaa !5
  %172 = getelementptr inbounds %struct.S2***, %struct.S2**** %170, i64 1
  store %struct.S2*** null, %struct.S2**** %172, !tbaa !5
  %173 = getelementptr inbounds %struct.S2***, %struct.S2**** %172, i64 1
  %174 = getelementptr inbounds [9 x %struct.S2**], [9 x %struct.S2**]* %l_433, i32 0, i64 0
  store %struct.S2*** %174, %struct.S2**** %173, !tbaa !5
  %175 = getelementptr inbounds %struct.S2***, %struct.S2**** %173, i64 1
  %176 = getelementptr inbounds [9 x %struct.S2**], [9 x %struct.S2**]* %l_433, i32 0, i64 4
  store %struct.S2*** %176, %struct.S2**** %175, !tbaa !5
  %177 = getelementptr inbounds %struct.S2***, %struct.S2**** %175, i64 1
  store %struct.S2*** null, %struct.S2**** %177, !tbaa !5
  %178 = getelementptr inbounds %struct.S2***, %struct.S2**** %177, i64 1
  %179 = getelementptr inbounds [9 x %struct.S2**], [9 x %struct.S2**]* %l_433, i32 0, i64 0
  store %struct.S2*** %179, %struct.S2**** %178, !tbaa !5
  %180 = getelementptr inbounds %struct.S2***, %struct.S2**** %178, i64 1
  %181 = getelementptr inbounds [9 x %struct.S2**], [9 x %struct.S2**]* %l_433, i32 0, i64 0
  store %struct.S2*** %181, %struct.S2**** %180, !tbaa !5
  %182 = bitcast i32** %l_435 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %182) #1
  store i32* @g_262, i32** %l_435, align 8, !tbaa !5
  %183 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %183) #1
  %184 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %184) #1
  %185 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %185) #1
  store i32 0, i32* @g_2, align 4, !tbaa !1
  br label %186

; <label>:186                                     ; preds = %207, %0
  %187 = load i32, i32* @g_2, align 4, !tbaa !1
  %188 = icmp slt i32 %187, -20
  br i1 %188, label %189, label %210

; <label>:189                                     ; preds = %186
  %190 = bitcast i32* %l_25 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %190) #1
  store i32 3, i32* %l_25, align 4, !tbaa !1
  %191 = bitcast [8 x [8 x i32*]]* %l_26 to i8*
  call void @llvm.lifetime.start(i64 512, i8* %191) #1
  %192 = bitcast [8 x [8 x i32*]]* %l_26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %192, i8* bitcast ([8 x [8 x i32*]]* @func_1.l_26 to i8*), i64 512, i32 16, i1 false)
  %193 = bitcast i64** %l_28 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %193) #1
  store i64* @g_29, i64** %l_28, align 8, !tbaa !5
  %194 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %194) #1
  %195 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %195) #1
  %196 = load i32, i32* @g_2, align 4, !tbaa !1
  %197 = icmp ne i32 %196, 0
  %198 = xor i1 %197, true
  %199 = zext i1 %198 to i32
  %200 = load i32, i32* %l_6, align 4, !tbaa !1
  %201 = and i32 %200, %199
  store i32 %201, i32* %l_6, align 4, !tbaa !1
  %202 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %202) #1
  %203 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %203) #1
  %204 = bitcast i64** %l_28 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %204) #1
  %205 = bitcast [8 x [8 x i32*]]* %l_26 to i8*
  call void @llvm.lifetime.end(i64 512, i8* %205) #1
  %206 = bitcast i32* %l_25 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %206) #1
  br label %207

; <label>:207                                     ; preds = %189
  %208 = load i32, i32* @g_2, align 4, !tbaa !1
  %209 = call i32 @safe_sub_func_int32_t_s_s(i32 %208, i32 2)
  store i32 %209, i32* @g_2, align 4, !tbaa !1
  br label %186

; <label>:210                                     ; preds = %186
  %211 = load i32, i32* %l_427, align 4, !tbaa !1
  %212 = load i64*, i64** %l_428, align 8, !tbaa !5
  %213 = icmp ne i64* null, %212
  %214 = zext i1 %213 to i32
  %215 = load volatile %struct.S2*, %struct.S2** @g_145, align 8, !tbaa !5
  %216 = bitcast %struct.S2* %1 to i8*
  %217 = bitcast %struct.S2* %215 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %216, i8* %217, i64 5, i32 1, i1 true), !tbaa.struct !16
  %218 = load i16*, i16** %l_429, align 8, !tbaa !5
  %219 = load i16*, i16** %l_429, align 8, !tbaa !5
  %220 = icmp eq i16* %218, %219
  %221 = zext i1 %220 to i32
  %222 = load i16, i16* getelementptr inbounds (%struct.S3, %struct.S3* @func_1.l_419, i32 0, i32 0), align 1, !tbaa !10
  %223 = sext i16 %222 to i64
  %224 = and i64 %223, 454473006
  %225 = load i32*, i32** @g_147, align 8, !tbaa !5
  %226 = load i32, i32* %225, align 4, !tbaa !1
  %227 = load i32*, i32** @g_147, align 8, !tbaa !5
  %228 = load i32, i32* %227, align 4, !tbaa !1
  %229 = icmp ne i32 %226, %228
  %230 = zext i1 %229 to i32
  %231 = getelementptr inbounds [4 x [3 x [7 x %struct.S2***]]], [4 x [3 x [7 x %struct.S2***]]]* %l_432, i32 0, i64 1
  %232 = getelementptr inbounds [3 x [7 x %struct.S2***]], [3 x [7 x %struct.S2***]]* %231, i32 0, i64 0
  %233 = getelementptr inbounds [7 x %struct.S2***], [7 x %struct.S2***]* %232, i32 0, i64 6
  %234 = load %struct.S2***, %struct.S2**** %233, align 8, !tbaa !5
  %235 = getelementptr inbounds [9 x %struct.S2**], [9 x %struct.S2**]* %l_433, i32 0, i64 6
  %236 = icmp eq %struct.S2*** %234, %235
  %237 = zext i1 %236 to i32
  %238 = sext i32 %237 to i64
  %239 = icmp ult i64 %238, 5
  %240 = zext i1 %239 to i32
  %241 = sext i32 %240 to i64
  %242 = load i32, i32* %l_427, align 4, !tbaa !1
  %243 = sext i32 %242 to i64
  %244 = call i64 @safe_sub_func_int64_t_s_s(i64 %241, i64 %243)
  %245 = icmp ule i64 %224, 1
  %246 = zext i1 %245 to i32
  %247 = load i32*, i32** %l_435, align 8, !tbaa !5
  %248 = load i32, i32* %247, align 4, !tbaa !1
  %249 = xor i32 %248, %246
  store i32 %249, i32* %247, align 4, !tbaa !1
  %250 = load i32*, i32** %l_435, align 8, !tbaa !5
  %251 = load i32, i32* %250, align 4, !tbaa !1
  %252 = trunc i32 %251 to i8
  %253 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %253) #1
  %254 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %254) #1
  %255 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %255) #1
  %256 = bitcast i32** %l_435 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %256) #1
  %257 = bitcast [4 x [3 x [7 x %struct.S2***]]]* %l_432 to i8*
  call void @llvm.lifetime.end(i64 672, i8* %257) #1
  %258 = bitcast [9 x %struct.S2**]* %l_433 to i8*
  call void @llvm.lifetime.end(i64 72, i8* %258) #1
  %259 = bitcast %struct.S2** %l_434 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %259) #1
  %260 = bitcast i16** %l_429 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %260) #1
  %261 = bitcast i64** %l_428 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %261) #1
  %262 = bitcast i32* %l_427 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %262) #1
  %263 = bitcast i32* %l_6 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %263) #1
  ret i8 %252
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
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.36, i32 0, i32 0), i8* %8, i64 %11)
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
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.37, i32 0, i32 0), i32 %3)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal i32 @safe_sub_func_int32_t_s_s(i32 %si1, i32 %si2) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %si1, i32* %1, align 4, !tbaa !1
  store i32 %si2, i32* %2, align 4, !tbaa !1
  %3 = load i32, i32* %1, align 4, !tbaa !1
  %4 = load i32, i32* %2, align 4, !tbaa !1
  %5 = xor i32 %3, %4
  %6 = load i32, i32* %1, align 4, !tbaa !1
  %7 = load i32, i32* %1, align 4, !tbaa !1
  %8 = load i32, i32* %2, align 4, !tbaa !1
  %9 = xor i32 %7, %8
  %10 = and i32 %9, -2147483648
  %11 = xor i32 %6, %10
  %12 = load i32, i32* %2, align 4, !tbaa !1
  %13 = sub nsw i32 %11, %12
  %14 = load i32, i32* %2, align 4, !tbaa !1
  %15 = xor i32 %13, %14
  %16 = and i32 %5, %15
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

; <label>:18                                      ; preds = %0
  %19 = load i32, i32* %1, align 4, !tbaa !1
  br label %24

; <label>:20                                      ; preds = %0
  %21 = load i32, i32* %1, align 4, !tbaa !1
  %22 = load i32, i32* %2, align 4, !tbaa !1
  %23 = sub nsw i32 %21, %22
  br label %24

; <label>:24                                      ; preds = %20, %18
  %25 = phi i32 [ %19, %18 ], [ %23, %20 ]
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define internal i64 @safe_sub_func_int64_t_s_s(i64 %si1, i64 %si2) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 %si1, i64* %1, align 8, !tbaa !7
  store i64 %si2, i64* %2, align 8, !tbaa !7
  %3 = load i64, i64* %1, align 8, !tbaa !7
  %4 = load i64, i64* %2, align 8, !tbaa !7
  %5 = xor i64 %3, %4
  %6 = load i64, i64* %1, align 8, !tbaa !7
  %7 = load i64, i64* %1, align 8, !tbaa !7
  %8 = load i64, i64* %2, align 8, !tbaa !7
  %9 = xor i64 %7, %8
  %10 = and i64 %9, -9223372036854775808
  %11 = xor i64 %6, %10
  %12 = load i64, i64* %2, align 8, !tbaa !7
  %13 = sub nsw i64 %11, %12
  %14 = load i64, i64* %2, align 8, !tbaa !7
  %15 = xor i64 %13, %14
  %16 = and i64 %5, %15
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %20

; <label>:18                                      ; preds = %0
  %19 = load i64, i64* %1, align 8, !tbaa !7
  br label %24

; <label>:20                                      ; preds = %0
  %21 = load i64, i64* %1, align 8, !tbaa !7
  %22 = load i64, i64* %2, align 8, !tbaa !7
  %23 = sub nsw i64 %21, %22
  br label %24

; <label>:24                                      ; preds = %20, %18
  %25 = phi i64 [ %19, %18 ], [ %23, %20 ]
  ret i64 %25
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
!10 = !{!11, !12, i64 0}
!11 = !{!"S3", !12, i64 0}
!12 = !{!"short", !3, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!15, !12, i64 0}
!15 = !{!"S1", !12, i64 0}
!16 = !{i64 0, i64 4, !1, i64 3, i64 4, !1, i64 4, i64 4, !1}
