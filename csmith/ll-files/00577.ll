; ModuleID = '00577.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.U1 = type { i64 }

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_2 = internal global i32 1, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"g_2\00", align 1
@g_3 = internal global i32 1844673861, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"g_3\00", align 1
@g_7 = internal global i16 20418, align 2
@.str.3 = private unnamed_addr constant [4 x i8] c"g_7\00", align 1
@g_42 = internal global i32 -2010088650, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"g_42\00", align 1
@g_68 = internal global [4 x [1 x i8]] [[1 x i8] c"\01", [1 x i8] c"\01", [1 x i8] c"\01", [1 x i8] c"\01"], align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"g_68[i][j]\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@g_69 = internal global [9 x [9 x i32]] [[9 x i32] [i32 -1020214782, i32 -5, i32 -9, i32 -1271111151, i32 -9, i32 -5, i32 -1020214782, i32 1381088057, i32 0], [9 x i32] [i32 -1020214782, i32 1, i32 -992636561, i32 -5, i32 1, i32 -7, i32 -1, i32 1, i32 -385519629], [9 x i32] [i32 805517629, i32 -5, i32 -7, i32 -2047155941, i32 1381088057, i32 1, i32 1, i32 1381088057, i32 -2047155941], [9 x i32] [i32 9, i32 805517629, i32 9, i32 0, i32 438287578, i32 1, i32 -1271111151, i32 -5, i32 -9], [9 x i32] [i32 814570388, i32 -2047155941, i32 438287578, i32 -992636561, i32 -5, i32 -2047155941, i32 -4, i32 814570388, i32 -5], [9 x i32] [i32 -10, i32 0, i32 805517629, i32 -992636561, i32 -992636561, i32 805517629, i32 0, i32 -10, i32 1381088057], [9 x i32] [i32 9, i32 0, i32 438287578, i32 1, i32 -1271111151, i32 -5, i32 -9, i32 1381088057, i32 1], [9 x i32] [i32 0, i32 1, i32 -385519629, i32 805517629, i32 1381088057, i32 1, i32 814570388, i32 1, i32 1381088057], [9 x i32] [i32 -1, i32 -4, i32 -4, i32 -1, i32 805517629, i32 -5, i32 814570388, i32 9, i32 -5]], align 16
@.str.7 = private unnamed_addr constant [11 x i8] c"g_69[i][j]\00", align 1
@g_70 = internal global i32 -196895425, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"g_70\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"g_71.f0\00", align 1
@g_76 = internal global i8 -68, align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"g_76\00", align 1
@g_112 = internal global i32 0, align 4
@.str.11 = private unnamed_addr constant [6 x i8] c"g_112\00", align 1
@g_113 = internal global i16 1, align 2
@.str.12 = private unnamed_addr constant [6 x i8] c"g_113\00", align 1
@g_123 = internal global [4 x [10 x [1 x i32]]] [[10 x [1 x i32]] [[1 x i32] [i32 1], [1 x i32] [i32 1], [1 x i32] [i32 938559140], [1 x i32] [i32 4], [1 x i32] [i32 -1], [1 x i32] [i32 -7], [1 x i32] [i32 -9], [1 x i32] [i32 -7], [1 x i32] [i32 -1], [1 x i32] [i32 4]], [10 x [1 x i32]] [[1 x i32] [i32 938559140], [1 x i32] [i32 1], [1 x i32] [i32 1], [1 x i32] [i32 938559140], [1 x i32] [i32 4], [1 x i32] [i32 -1], [1 x i32] [i32 -7], [1 x i32] [i32 -9], [1 x i32] [i32 -7], [1 x i32] [i32 -1]], [10 x [1 x i32]] [[1 x i32] [i32 4], [1 x i32] [i32 938559140], [1 x i32] [i32 1], [1 x i32] [i32 1], [1 x i32] [i32 938559140], [1 x i32] [i32 4], [1 x i32] [i32 -1], [1 x i32] [i32 -7], [1 x i32] [i32 -9], [1 x i32] [i32 -7]], [10 x [1 x i32]] [[1 x i32] [i32 -1], [1 x i32] [i32 4], [1 x i32] [i32 938559140], [1 x i32] [i32 1], [1 x i32] [i32 1], [1 x i32] [i32 938559140], [1 x i32] [i32 4], [1 x i32] [i32 -1], [1 x i32] [i32 -7], [1 x i32] [i32 -9]]], align 16
@.str.13 = private unnamed_addr constant [15 x i8] c"g_123[i][j][k]\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"index = [%d][%d][%d]\0A\00", align 1
@g_164 = internal global i16 -9, align 2
@.str.15 = private unnamed_addr constant [6 x i8] c"g_164\00", align 1
@g_213 = internal global i64 5354753653883222664, align 8
@.str.16 = private unnamed_addr constant [6 x i8] c"g_213\00", align 1
@g_364 = internal global [6 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], align 16
@.str.17 = private unnamed_addr constant [9 x i8] c"g_364[i]\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"g_403\00", align 1
@g_425 = internal global i8 0, align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"g_425\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"g_470\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"g_472\00", align 1
@g_542 = internal global i64 7488690395169406728, align 8
@.str.23 = private unnamed_addr constant [6 x i8] c"g_542\00", align 1
@g_603 = internal global i8 68, align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"g_603\00", align 1
@g_655 = internal global i64 1, align 8
@.str.25 = private unnamed_addr constant [6 x i8] c"g_655\00", align 1
@g_682 = internal global i64 -3375251410813607568, align 8
@.str.26 = private unnamed_addr constant [6 x i8] c"g_682\00", align 1
@g_688 = internal global i64 4983332295273595280, align 8
@.str.27 = private unnamed_addr constant [6 x i8] c"g_688\00", align 1
@g_697 = internal global [2 x [5 x i32]] [[5 x i32] [i32 853893318, i32 1, i32 853893318, i32 504961758, i32 504961758], [5 x i32] [i32 853893318, i32 1, i32 853893318, i32 504961758, i32 504961758]], align 16
@.str.28 = private unnamed_addr constant [12 x i8] c"g_697[i][j]\00", align 1
@g_716 = internal global [5 x [5 x %union.U1]] [[5 x %union.U1] [%union.U1 { i64 6696694345137433763 }, %union.U1 { i64 272863907043377144 }, %union.U1 { i64 -1 }, %union.U1 { i64 -4 }, %union.U1 { i64 -1 }], [5 x %union.U1] [%union.U1 { i64 2609199989482392249 }, %union.U1 { i64 2609199989482392249 }, %union.U1 { i64 -8665461561522847724 }, %union.U1 { i64 2609199989482392249 }, %union.U1 { i64 2609199989482392249 }], [5 x %union.U1] [%union.U1 { i64 -1 }, %union.U1 { i64 -4 }, %union.U1 { i64 -1 }, %union.U1 { i64 272863907043377144 }, %union.U1 { i64 6696694345137433763 }], [5 x %union.U1] [%union.U1 { i64 2609199989482392249 }, %union.U1 { i64 -218972210130980323 }, %union.U1 { i64 -218972210130980323 }, %union.U1 { i64 2609199989482392249 }, %union.U1 { i64 -218972210130980323 }], [5 x %union.U1] [%union.U1 { i64 6696694345137433763 }, %union.U1 { i64 -4 }, %union.U1 { i64 -494249514497397805 }, %union.U1 { i64 -4 }, %union.U1 { i64 6696694345137433763 }]], align 16
@.str.29 = private unnamed_addr constant [15 x i8] c"g_716[i][j].f0\00", align 1
@g_735 = internal global %union.U1 { i64 4 }, align 8
@.str.30 = private unnamed_addr constant [9 x i8] c"g_735.f0\00", align 1
@g_749 = internal global [4 x i16] [i16 -6134, i16 -6134, i16 -6134, i16 -6134], align 2
@.str.31 = private unnamed_addr constant [9 x i8] c"g_749[i]\00", align 1
@g_787 = internal global i32 6, align 4
@.str.32 = private unnamed_addr constant [6 x i8] c"g_787\00", align 1
@g_820 = internal global i32 -692303162, align 4
@.str.33 = private unnamed_addr constant [6 x i8] c"g_820\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@g_136 = internal global i32** @g_137, align 8
@g_137 = internal global i32* @g_70, align 8
@.str.34 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@g_71 = internal global { i16, [6 x i8] } { i16 -21769, [6 x i8] undef }, align 8
@.str.35 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

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
  %90 = call i32 @func_1()
  %91 = load volatile i32, i32* @g_2, align 4, !tbaa !1
  %92 = sext i32 %91 to i64
  %93 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %93)
  %94 = load i32, i32* @g_3, align 4, !tbaa !1
  %95 = sext i32 %94 to i64
  %96 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %95, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 %96)
  %97 = load i16, i16* @g_7, align 2, !tbaa !10
  %98 = zext i16 %97 to i64
  %99 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %98, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i32 %99)
  %100 = load i32, i32* @g_42, align 4, !tbaa !1
  %101 = sext i32 %100 to i64
  %102 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %101, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %102)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %103

; <label>:103                                     ; preds = %131, %89
  %104 = load i32, i32* %i, align 4, !tbaa !1
  %105 = icmp slt i32 %104, 4
  br i1 %105, label %106, label %134

; <label>:106                                     ; preds = %103
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %107

; <label>:107                                     ; preds = %127, %106
  %108 = load i32, i32* %j, align 4, !tbaa !1
  %109 = icmp slt i32 %108, 1
  br i1 %109, label %110, label %130

; <label>:110                                     ; preds = %107
  %111 = load i32, i32* %j, align 4, !tbaa !1
  %112 = sext i32 %111 to i64
  %113 = load i32, i32* %i, align 4, !tbaa !1
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [4 x [1 x i8]], [4 x [1 x i8]]* @g_68, i32 0, i64 %114
  %116 = getelementptr inbounds [1 x i8], [1 x i8]* %115, i32 0, i64 %112
  %117 = load i8, i8* %116, align 1, !tbaa !9
  %118 = zext i8 %117 to i64
  %119 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %118, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i32 %119)
  %120 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %126

; <label>:122                                     ; preds = %110
  %123 = load i32, i32* %i, align 4, !tbaa !1
  %124 = load i32, i32* %j, align 4, !tbaa !1
  %125 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0), i32 %123, i32 %124)
  br label %126

; <label>:126                                     ; preds = %122, %110
  br label %127

; <label>:127                                     ; preds = %126
  %128 = load i32, i32* %j, align 4, !tbaa !1
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %j, align 4, !tbaa !1
  br label %107

; <label>:130                                     ; preds = %107
  br label %131

; <label>:131                                     ; preds = %130
  %132 = load i32, i32* %i, align 4, !tbaa !1
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %i, align 4, !tbaa !1
  br label %103

; <label>:134                                     ; preds = %103
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %135

; <label>:135                                     ; preds = %163, %134
  %136 = load i32, i32* %i, align 4, !tbaa !1
  %137 = icmp slt i32 %136, 9
  br i1 %137, label %138, label %166

; <label>:138                                     ; preds = %135
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %139

; <label>:139                                     ; preds = %159, %138
  %140 = load i32, i32* %j, align 4, !tbaa !1
  %141 = icmp slt i32 %140, 9
  br i1 %141, label %142, label %162

; <label>:142                                     ; preds = %139
  %143 = load i32, i32* %j, align 4, !tbaa !1
  %144 = sext i32 %143 to i64
  %145 = load i32, i32* %i, align 4, !tbaa !1
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [9 x [9 x i32]], [9 x [9 x i32]]* @g_69, i32 0, i64 %146
  %148 = getelementptr inbounds [9 x i32], [9 x i32]* %147, i32 0, i64 %144
  %149 = load i32, i32* %148, align 4, !tbaa !1
  %150 = sext i32 %149 to i64
  %151 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %150, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i32 %151)
  %152 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %158

; <label>:154                                     ; preds = %142
  %155 = load i32, i32* %i, align 4, !tbaa !1
  %156 = load i32, i32* %j, align 4, !tbaa !1
  %157 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0), i32 %155, i32 %156)
  br label %158

; <label>:158                                     ; preds = %154, %142
  br label %159

; <label>:159                                     ; preds = %158
  %160 = load i32, i32* %j, align 4, !tbaa !1
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %j, align 4, !tbaa !1
  br label %139

; <label>:162                                     ; preds = %139
  br label %163

; <label>:163                                     ; preds = %162
  %164 = load i32, i32* %i, align 4, !tbaa !1
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %i, align 4, !tbaa !1
  br label %135

; <label>:166                                     ; preds = %135
  %167 = load i32, i32* @g_70, align 4, !tbaa !1
  %168 = sext i32 %167 to i64
  %169 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %168, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 %169)
  %170 = load i16, i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_71, i32 0, i32 0), align 2, !tbaa !10
  %171 = zext i16 %170 to i64
  %172 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %171, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i32 %172)
  %173 = load i8, i8* @g_76, align 1, !tbaa !9
  %174 = sext i8 %173 to i64
  %175 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %174, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32 %175)
  %176 = load i32, i32* @g_112, align 4, !tbaa !1
  %177 = zext i32 %176 to i64
  %178 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %177, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i32 %178)
  %179 = load i16, i16* @g_113, align 2, !tbaa !10
  %180 = zext i16 %179 to i64
  %181 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %180, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i32 %181)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %182

; <label>:182                                     ; preds = %222, %166
  %183 = load i32, i32* %i, align 4, !tbaa !1
  %184 = icmp slt i32 %183, 4
  br i1 %184, label %185, label %225

; <label>:185                                     ; preds = %182
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %186

; <label>:186                                     ; preds = %218, %185
  %187 = load i32, i32* %j, align 4, !tbaa !1
  %188 = icmp slt i32 %187, 10
  br i1 %188, label %189, label %221

; <label>:189                                     ; preds = %186
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %190

; <label>:190                                     ; preds = %214, %189
  %191 = load i32, i32* %k, align 4, !tbaa !1
  %192 = icmp slt i32 %191, 1
  br i1 %192, label %193, label %217

; <label>:193                                     ; preds = %190
  %194 = load i32, i32* %k, align 4, !tbaa !1
  %195 = sext i32 %194 to i64
  %196 = load i32, i32* %j, align 4, !tbaa !1
  %197 = sext i32 %196 to i64
  %198 = load i32, i32* %i, align 4, !tbaa !1
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds [4 x [10 x [1 x i32]]], [4 x [10 x [1 x i32]]]* @g_123, i32 0, i64 %199
  %201 = getelementptr inbounds [10 x [1 x i32]], [10 x [1 x i32]]* %200, i32 0, i64 %197
  %202 = getelementptr inbounds [1 x i32], [1 x i32]* %201, i32 0, i64 %195
  %203 = load i32, i32* %202, align 4, !tbaa !1
  %204 = zext i32 %203 to i64
  %205 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %204, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0), i32 %205)
  %206 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %213

; <label>:208                                     ; preds = %193
  %209 = load i32, i32* %i, align 4, !tbaa !1
  %210 = load i32, i32* %j, align 4, !tbaa !1
  %211 = load i32, i32* %k, align 4, !tbaa !1
  %212 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0), i32 %209, i32 %210, i32 %211)
  br label %213

; <label>:213                                     ; preds = %208, %193
  br label %214

; <label>:214                                     ; preds = %213
  %215 = load i32, i32* %k, align 4, !tbaa !1
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %k, align 4, !tbaa !1
  br label %190

; <label>:217                                     ; preds = %190
  br label %218

; <label>:218                                     ; preds = %217
  %219 = load i32, i32* %j, align 4, !tbaa !1
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %j, align 4, !tbaa !1
  br label %186

; <label>:221                                     ; preds = %186
  br label %222

; <label>:222                                     ; preds = %221
  %223 = load i32, i32* %i, align 4, !tbaa !1
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %i, align 4, !tbaa !1
  br label %182

; <label>:225                                     ; preds = %182
  %226 = load i16, i16* @g_164, align 2, !tbaa !10
  %227 = sext i16 %226 to i64
  %228 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %227, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 %228)
  %229 = load volatile i64, i64* @g_213, align 8, !tbaa !7
  %230 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %229, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i32 %230)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %231

; <label>:231                                     ; preds = %247, %225
  %232 = load i32, i32* %i, align 4, !tbaa !1
  %233 = icmp slt i32 %232, 6
  br i1 %233, label %234, label %250

; <label>:234                                     ; preds = %231
  %235 = load i32, i32* %i, align 4, !tbaa !1
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds [6 x i32], [6 x i32]* @g_364, i32 0, i64 %236
  %238 = load i32, i32* %237, align 4, !tbaa !1
  %239 = zext i32 %238 to i64
  %240 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %239, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i32 %240)
  %241 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %246

; <label>:243                                     ; preds = %234
  %244 = load i32, i32* %i, align 4, !tbaa !1
  %245 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), i32 %244)
  br label %246

; <label>:246                                     ; preds = %243, %234
  br label %247

; <label>:247                                     ; preds = %246
  %248 = load i32, i32* %i, align 4, !tbaa !1
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %i, align 4, !tbaa !1
  br label %231

; <label>:250                                     ; preds = %231
  %251 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i32 %251)
  %252 = load i8, i8* @g_425, align 1, !tbaa !9
  %253 = zext i8 %252 to i64
  %254 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %253, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 %254)
  %255 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 -5238873324007358713, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i32 %255)
  %256 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 -8308202321321377328, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i32 %256)
  %257 = load i64, i64* @g_542, align 8, !tbaa !7
  %258 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %257, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 %258)
  %259 = load i8, i8* @g_603, align 1, !tbaa !9
  %260 = zext i8 %259 to i64
  %261 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %260, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %261)
  %262 = load i64, i64* @g_655, align 8, !tbaa !7
  %263 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %262, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i32 %263)
  %264 = load i64, i64* @g_682, align 8, !tbaa !7
  %265 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %264, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i32 %265)
  %266 = load i64, i64* @g_688, align 8, !tbaa !7
  %267 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %266, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 %267)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %268

; <label>:268                                     ; preds = %296, %250
  %269 = load i32, i32* %i, align 4, !tbaa !1
  %270 = icmp slt i32 %269, 2
  br i1 %270, label %271, label %299

; <label>:271                                     ; preds = %268
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %272

; <label>:272                                     ; preds = %292, %271
  %273 = load i32, i32* %j, align 4, !tbaa !1
  %274 = icmp slt i32 %273, 5
  br i1 %274, label %275, label %295

; <label>:275                                     ; preds = %272
  %276 = load i32, i32* %j, align 4, !tbaa !1
  %277 = sext i32 %276 to i64
  %278 = load i32, i32* %i, align 4, !tbaa !1
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds [2 x [5 x i32]], [2 x [5 x i32]]* @g_697, i32 0, i64 %279
  %281 = getelementptr inbounds [5 x i32], [5 x i32]* %280, i32 0, i64 %277
  %282 = load i32, i32* %281, align 4, !tbaa !1
  %283 = zext i32 %282 to i64
  %284 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %283, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i32 0, i32 0), i32 %284)
  %285 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %291

; <label>:287                                     ; preds = %275
  %288 = load i32, i32* %i, align 4, !tbaa !1
  %289 = load i32, i32* %j, align 4, !tbaa !1
  %290 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0), i32 %288, i32 %289)
  br label %291

; <label>:291                                     ; preds = %287, %275
  br label %292

; <label>:292                                     ; preds = %291
  %293 = load i32, i32* %j, align 4, !tbaa !1
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %j, align 4, !tbaa !1
  br label %272

; <label>:295                                     ; preds = %272
  br label %296

; <label>:296                                     ; preds = %295
  %297 = load i32, i32* %i, align 4, !tbaa !1
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %i, align 4, !tbaa !1
  br label %268

; <label>:299                                     ; preds = %268
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %300

; <label>:300                                     ; preds = %328, %299
  %301 = load i32, i32* %i, align 4, !tbaa !1
  %302 = icmp slt i32 %301, 5
  br i1 %302, label %303, label %331

; <label>:303                                     ; preds = %300
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %304

; <label>:304                                     ; preds = %324, %303
  %305 = load i32, i32* %j, align 4, !tbaa !1
  %306 = icmp slt i32 %305, 5
  br i1 %306, label %307, label %327

; <label>:307                                     ; preds = %304
  %308 = load i32, i32* %j, align 4, !tbaa !1
  %309 = sext i32 %308 to i64
  %310 = load i32, i32* %i, align 4, !tbaa !1
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds [5 x [5 x %union.U1]], [5 x [5 x %union.U1]]* @g_716, i32 0, i64 %311
  %313 = getelementptr inbounds [5 x %union.U1], [5 x %union.U1]* %312, i32 0, i64 %309
  %314 = bitcast %union.U1* %313 to i64*
  %315 = load volatile i64, i64* %314, align 8, !tbaa !7
  %316 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %315, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i32 0, i32 0), i32 %316)
  %317 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %323

; <label>:319                                     ; preds = %307
  %320 = load i32, i32* %i, align 4, !tbaa !1
  %321 = load i32, i32* %j, align 4, !tbaa !1
  %322 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0), i32 %320, i32 %321)
  br label %323

; <label>:323                                     ; preds = %319, %307
  br label %324

; <label>:324                                     ; preds = %323
  %325 = load i32, i32* %j, align 4, !tbaa !1
  %326 = add nsw i32 %325, 1
  store i32 %326, i32* %j, align 4, !tbaa !1
  br label %304

; <label>:327                                     ; preds = %304
  br label %328

; <label>:328                                     ; preds = %327
  %329 = load i32, i32* %i, align 4, !tbaa !1
  %330 = add nsw i32 %329, 1
  store i32 %330, i32* %i, align 4, !tbaa !1
  br label %300

; <label>:331                                     ; preds = %300
  %332 = load volatile i64, i64* getelementptr inbounds (%union.U1, %union.U1* @g_735, i32 0, i32 0), align 8, !tbaa !7
  %333 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %332, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i32 0, i32 0), i32 %333)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %334

; <label>:334                                     ; preds = %350, %331
  %335 = load i32, i32* %i, align 4, !tbaa !1
  %336 = icmp slt i32 %335, 4
  br i1 %336, label %337, label %353

; <label>:337                                     ; preds = %334
  %338 = load i32, i32* %i, align 4, !tbaa !1
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds [4 x i16], [4 x i16]* @g_749, i32 0, i64 %339
  %341 = load i16, i16* %340, align 2, !tbaa !10
  %342 = sext i16 %341 to i64
  %343 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %342, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i32 0, i32 0), i32 %343)
  %344 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %349

; <label>:346                                     ; preds = %337
  %347 = load i32, i32* %i, align 4, !tbaa !1
  %348 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), i32 %347)
  br label %349

; <label>:349                                     ; preds = %346, %337
  br label %350

; <label>:350                                     ; preds = %349
  %351 = load i32, i32* %i, align 4, !tbaa !1
  %352 = add nsw i32 %351, 1
  store i32 %352, i32* %i, align 4, !tbaa !1
  br label %334

; <label>:353                                     ; preds = %334
  %354 = load i32, i32* @g_787, align 4, !tbaa !1
  %355 = zext i32 %354 to i64
  %356 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %355, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i32 %356)
  %357 = load i32, i32* @g_820, align 4, !tbaa !1
  %358 = sext i32 %357 to i64
  %359 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %358, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i32 %359)
  %360 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %361 = zext i32 %360 to i64
  %362 = xor i64 %361, 4294967295
  %363 = trunc i64 %362 to i32
  %364 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %363, i32 %364)
  %365 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %365) #1
  %366 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %366) #1
  %367 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %367) #1
  %368 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %368) #1
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
  %l_36 = alloca i32, align 4
  %l_6 = alloca i16*, align 8
  %l_15 = alloca i16**, align 8
  %l_701 = alloca i32, align 4
  %l_818 = alloca i32*, align 8
  %l_819 = alloca i32*, align 8
  %1 = bitcast i32* %l_36 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 -669766536, i32* %l_36, align 4, !tbaa !1
  store i32 17, i32* @g_3, align 4, !tbaa !1
  br label %2

; <label>:2                                       ; preds = %16, %0
  %3 = load i32, i32* @g_3, align 4, !tbaa !1
  %4 = icmp eq i32 %3, -3
  br i1 %4, label %5, label %21

; <label>:5                                       ; preds = %2
  %6 = bitcast i16** %l_6 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i16* @g_7, i16** %l_6, align 8, !tbaa !5
  %7 = bitcast i16*** %l_15 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store i16** %l_6, i16*** %l_15, align 8, !tbaa !5
  %8 = bitcast i32* %l_701 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  store i32 -9, i32* %l_701, align 4, !tbaa !1
  %9 = bitcast i32** %l_818 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store i32* null, i32** %l_818, align 8, !tbaa !5
  %10 = bitcast i32** %l_819 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i32* @g_820, i32** %l_819, align 8, !tbaa !5
  %11 = bitcast i32** %l_819 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  %12 = bitcast i32** %l_818 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  %13 = bitcast i32* %l_701 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #1
  %14 = bitcast i16*** %l_15 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  %15 = bitcast i16** %l_6 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  br label %16

; <label>:16                                      ; preds = %5
  %17 = load i32, i32* @g_3, align 4, !tbaa !1
  %18 = sext i32 %17 to i64
  %19 = call i64 @safe_sub_func_int64_t_s_s(i64 %18, i64 1)
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* @g_3, align 4, !tbaa !1
  br label %2

; <label>:21                                      ; preds = %2
  %22 = load i32**, i32*** @g_136, align 8, !tbaa !5
  %23 = load i32*, i32** %22, align 8, !tbaa !5
  %24 = load i32, i32* %23, align 4, !tbaa !1
  %25 = sext i32 %24 to i64
  %26 = or i64 %25, 1767792192
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %23, align 4, !tbaa !1
  %28 = load i32, i32* %l_36, align 4, !tbaa !1
  %29 = bitcast i32* %l_36 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
  ret i32 %28
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
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.34, i32 0, i32 0), i8* %8, i64 %11)
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
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i32 0, i32 0), i32 %3)
  ret void
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
!10 = !{!11, !11, i64 0}
!11 = !{!"short", !3, i64 0}
