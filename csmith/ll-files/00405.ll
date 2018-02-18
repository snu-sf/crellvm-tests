; ModuleID = '00405.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_2 = internal global i32 368953567, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"g_2\00", align 1
@g_3 = internal global i32 4, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"g_3\00", align 1
@g_7 = internal global [3 x [10 x i32]] [[10 x i32] [i32 -1861879250, i32 3, i32 -1861879250, i32 -1861879250, i32 3, i32 -1861879250, i32 -1861879250, i32 3, i32 -1861879250, i32 -1861879250], [10 x i32] [i32 3, i32 3, i32 -336033312, i32 3, i32 3, i32 -336033312, i32 3, i32 3, i32 -336033312, i32 3], [10 x i32] [i32 3, i32 -1861879250, i32 -1861879250, i32 3, i32 -1861879250, i32 -1861879250, i32 3, i32 -1861879250, i32 -1861879250, i32 3]], align 16
@.str.3 = private unnamed_addr constant [10 x i8] c"g_7[i][j]\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@g_8 = internal global i32 -1, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"g_8\00", align 1
@g_9 = internal global i32 533203687, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"g_9\00", align 1
@g_14 = internal global i8 4, align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"g_14\00", align 1
@g_17 = internal global i8 0, align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"g_17\00", align 1
@g_18 = internal global [10 x [2 x [6 x i64]]] [[2 x [6 x i64]] [[6 x i64] [i64 -8942123663703097479, i64 -8942123663703097479, i64 2402501491720335821, i64 5282638293116664141, i64 1, i64 5282638293116664141], [6 x i64] [i64 -3816507199120996637, i64 -8942123663703097479, i64 -3816507199120996637, i64 -1, i64 2402501491720335821, i64 2402501491720335821]], [2 x [6 x i64]] [[6 x i64] [i64 0, i64 -3816507199120996637, i64 -3816507199120996637, i64 0, i64 1, i64 -1], [6 x i64] [i64 -1, i64 -3816507199120996637, i64 -8942123663703097479, i64 -3816507199120996637, i64 -1, i64 2402501491720335821]], [2 x [6 x i64]] [[6 x i64] [i64 -3816507199120996637, i64 -1, i64 2402501491720335821, i64 2402501491720335821, i64 -1, i64 -3816507199120996637], [6 x i64] [i64 5282638293116664141, i64 -3816507199120996637, i64 1, i64 -1, i64 1, i64 -3816507199120996637]], [2 x [6 x i64]] [[6 x i64] [i64 1, i64 5282638293116664141, i64 2402501491720335821, i64 -8942123663703097479, i64 -8942123663703097479, i64 2402501491720335821], [6 x i64] [i64 1, i64 1, i64 -8942123663703097479, i64 -1, i64 0, i64 -1]], [2 x [6 x i64]] [[6 x i64] [i64 5282638293116664141, i64 1, i64 5282638293116664141, i64 2402501491720335821, i64 -8942123663703097479, i64 -8942123663703097479], [6 x i64] [i64 -3816507199120996637, i64 5282638293116664141, i64 5282638293116664141, i64 -3816507199120996637, i64 1, i64 -1]], [2 x [6 x i64]] [[6 x i64] [i64 -1, i64 -3816507199120996637, i64 -8942123663703097479, i64 -3816507199120996637, i64 -1, i64 2402501491720335821], [6 x i64] [i64 -3816507199120996637, i64 -1, i64 2402501491720335821, i64 2402501491720335821, i64 -1, i64 -3816507199120996637]], [2 x [6 x i64]] [[6 x i64] [i64 5282638293116664141, i64 -3816507199120996637, i64 1, i64 -1, i64 1, i64 -3816507199120996637], [6 x i64] [i64 1, i64 5282638293116664141, i64 2402501491720335821, i64 -8942123663703097479, i64 -8942123663703097479, i64 2402501491720335821]], [2 x [6 x i64]] [[6 x i64] [i64 1, i64 1, i64 -8942123663703097479, i64 -1, i64 0, i64 -1], [6 x i64] [i64 5282638293116664141, i64 1, i64 5282638293116664141, i64 2402501491720335821, i64 -8942123663703097479, i64 -8942123663703097479]], [2 x [6 x i64]] [[6 x i64] [i64 -3816507199120996637, i64 5282638293116664141, i64 5282638293116664141, i64 -3816507199120996637, i64 1, i64 -1], [6 x i64] [i64 -1, i64 -3816507199120996637, i64 -8942123663703097479, i64 -3816507199120996637, i64 -1, i64 2402501491720335821]], [2 x [6 x i64]] [[6 x i64] [i64 -3816507199120996637, i64 -1, i64 2402501491720335821, i64 2402501491720335821, i64 -1, i64 -3816507199120996637], [6 x i64] [i64 5282638293116664141, i64 -3816507199120996637, i64 1, i64 -1, i64 1, i64 -3816507199120996637]]], align 16
@.str.9 = private unnamed_addr constant [14 x i8] c"g_18[i][j][k]\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"index = [%d][%d][%d]\0A\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@func_1.l_31 = private unnamed_addr constant [4 x [7 x [5 x i32]]] [[7 x [5 x i32]] [[5 x i32] [i32 2, i32 1570433934, i32 494400917, i32 -1, i32 -1], [5 x i32] [i32 1, i32 1224722668, i32 -9, i32 -1742166566, i32 -1], [5 x i32] [i32 -1, i32 -612854261, i32 -805963273, i32 1570433934, i32 1570433934], [5 x i32] [i32 0, i32 -1742166566, i32 0, i32 -130073974, i32 430951023], [5 x i32] [i32 -1, i32 2, i32 -1, i32 -612854261, i32 2], [5 x i32] [i32 1, i32 -1, i32 -1141657743, i32 -1, i32 1], [5 x i32] [i32 2, i32 -612854261, i32 -1, i32 2, i32 -1]], [7 x [5 x i32]] [[5 x i32] [i32 430951023, i32 -130073974, i32 0, i32 -1742166566, i32 0], [5 x i32] [i32 1570433934, i32 1570433934, i32 -805963273, i32 -612854261, i32 -1], [5 x i32] [i32 -1, i32 -1742166566, i32 -9, i32 1224722668, i32 1], [5 x i32] [i32 -1, i32 -1, i32 494400917, i32 1570433934, i32 2], [5 x i32] [i32 430951023, i32 -1742166566, i32 -199529763, i32 -1, i32 430951023], [5 x i32] [i32 136168595, i32 1570433934, i32 -1, i32 -1, i32 1570433934], [5 x i32] [i32 1, i32 -130073974, i32 -9, i32 -1, i32 -1]], [7 x [5 x i32]] [[5 x i32] [i32 1570433934, i32 -612854261, i32 6, i32 1570433934, i32 -1], [5 x i32] [i32 0, i32 -1, i32 0, i32 1224722668, i32 430951023], [5 x i32] [i32 1570433934, i32 2, i32 494400917, i32 -612854261, i32 136168595], [5 x i32] [i32 1, i32 -1742166566, i32 1899938511, i32 1224722668, i32 -1], [5 x i32] [i32 2050040902, i32 -1, i32 -805963273, i32 -1223720211, i32 2], [5 x i32] [i32 0, i32 7, i32 -199529763, i32 -130073974, i32 -199529763], [5 x i32] [i32 136168595, i32 2, i32 -612854261, i32 -1, i32 2]], [7 x [5 x i32]] [[5 x i32] [i32 1, i32 -130073974, i32 -1141657743, i32 -7, i32 -1], [5 x i32] [i32 2, i32 6, i32 6, i32 2, i32 2050040902], [5 x i32] [i32 0, i32 -130073974, i32 430951023, i32 1224722668, i32 0], [5 x i32] [i32 -1223720211, i32 2, i32 -805963273, i32 6, i32 136168595], [5 x i32] [i32 -1, i32 7, i32 -1141657743, i32 1224722668, i32 1], [5 x i32] [i32 136168595, i32 -1, i32 -1746232430, i32 2, i32 2], [5 x i32] [i32 -199529763, i32 1224722668, i32 -199529763, i32 -7, i32 0]]], align 16
@func_1.l_16 = private unnamed_addr constant [10 x i8*] [i8* @g_17, i8* @g_17, i8* @g_17, i8* @g_17, i8* @g_17, i8* @g_17, i8* @g_17, i8* @g_17, i8* @g_17, i8* @g_17], align 16
@func_1.l_29 = private unnamed_addr constant [6 x [10 x i32*]] [[10 x i32*] [i32* @g_3, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x [10 x i32]]* @g_7 to i8*), i64 76) to i32*), i32* @g_9, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x [10 x i32]]* @g_7 to i8*), i64 76) to i32*), i32* @g_3, i32* null, i32* null, i32* @g_3, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x [10 x i32]]* @g_7 to i8*), i64 76) to i32*), i32* @g_9], [10 x i32*] [i32* null, i32* null, i32* @g_9, i32* @g_3, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x [10 x i32]]* @g_7 to i8*), i64 64) to i32*), i32* @g_3, i32* @g_9, i32* null, i32* null, i32* @g_9], [10 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x [10 x i32]]* @g_7 to i8*), i64 76) to i32*), i32* @g_3, i32* null, i32* null, i32* @g_3, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x [10 x i32]]* @g_7 to i8*), i64 76) to i32*), i32* @g_9, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x [10 x i32]]* @g_7 to i8*), i64 76) to i32*), i32* @g_3, i32* null], [10 x i32*] [i32* @g_9, i32* null, i32* @g_9, i32* null, i32* @g_9, i32* @g_9, i32* null, i32* @g_9, i32* null, i32* @g_9], [10 x i32*] [i32* @g_9, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x [10 x i32]]* @g_7 to i8*), i64 76) to i32*), i32* null, i32* @g_3, i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x [10 x i32]]* @g_7 to i8*), i64 76) to i32*), i32* @g_9, i32* @g_9, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x [10 x i32]]* @g_7 to i8*), i64 76) to i32*), i32* null], [10 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x [10 x i32]]* @g_7 to i8*), i64 76) to i32*), i32* @g_9, i32* @g_9, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x [10 x i32]]* @g_7 to i8*), i64 76) to i32*), i32* null, i32* @g_3, i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x [10 x i32]]* @g_7 to i8*), i64 76) to i32*), i32* @g_9, i32* @g_9]], align 16
@.str.11 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

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
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %97

; <label>:97                                      ; preds = %125, %89
  %98 = load i32, i32* %i, align 4, !tbaa !1
  %99 = icmp slt i32 %98, 3
  br i1 %99, label %100, label %128

; <label>:100                                     ; preds = %97
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %101

; <label>:101                                     ; preds = %121, %100
  %102 = load i32, i32* %j, align 4, !tbaa !1
  %103 = icmp slt i32 %102, 10
  br i1 %103, label %104, label %124

; <label>:104                                     ; preds = %101
  %105 = load i32, i32* %j, align 4, !tbaa !1
  %106 = sext i32 %105 to i64
  %107 = load i32, i32* %i, align 4, !tbaa !1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [3 x [10 x i32]], [3 x [10 x i32]]* @g_7, i32 0, i64 %108
  %110 = getelementptr inbounds [10 x i32], [10 x i32]* %109, i32 0, i64 %106
  %111 = load i32, i32* %110, align 4, !tbaa !1
  %112 = sext i32 %111 to i64
  %113 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %112, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 %113)
  %114 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %120

; <label>:116                                     ; preds = %104
  %117 = load i32, i32* %i, align 4, !tbaa !1
  %118 = load i32, i32* %j, align 4, !tbaa !1
  %119 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i32 %117, i32 %118)
  br label %120

; <label>:120                                     ; preds = %116, %104
  br label %121

; <label>:121                                     ; preds = %120
  %122 = load i32, i32* %j, align 4, !tbaa !1
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %j, align 4, !tbaa !1
  br label %101

; <label>:124                                     ; preds = %101
  br label %125

; <label>:125                                     ; preds = %124
  %126 = load i32, i32* %i, align 4, !tbaa !1
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %i, align 4, !tbaa !1
  br label %97

; <label>:128                                     ; preds = %97
  %129 = load volatile i32, i32* @g_8, align 4, !tbaa !1
  %130 = sext i32 %129 to i64
  %131 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %130, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 %131)
  %132 = load i32, i32* @g_9, align 4, !tbaa !1
  %133 = sext i32 %132 to i64
  %134 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %133, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i32 %134)
  %135 = load i8, i8* @g_14, align 1, !tbaa !9
  %136 = zext i8 %135 to i64
  %137 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %136, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 %137)
  %138 = load i8, i8* @g_17, align 1, !tbaa !9
  %139 = zext i8 %138 to i64
  %140 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %139, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 %140)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %141

; <label>:141                                     ; preds = %180, %128
  %142 = load i32, i32* %i, align 4, !tbaa !1
  %143 = icmp slt i32 %142, 10
  br i1 %143, label %144, label %183

; <label>:144                                     ; preds = %141
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %145

; <label>:145                                     ; preds = %176, %144
  %146 = load i32, i32* %j, align 4, !tbaa !1
  %147 = icmp slt i32 %146, 2
  br i1 %147, label %148, label %179

; <label>:148                                     ; preds = %145
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %149

; <label>:149                                     ; preds = %172, %148
  %150 = load i32, i32* %k, align 4, !tbaa !1
  %151 = icmp slt i32 %150, 6
  br i1 %151, label %152, label %175

; <label>:152                                     ; preds = %149
  %153 = load i32, i32* %k, align 4, !tbaa !1
  %154 = sext i32 %153 to i64
  %155 = load i32, i32* %j, align 4, !tbaa !1
  %156 = sext i32 %155 to i64
  %157 = load i32, i32* %i, align 4, !tbaa !1
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [10 x [2 x [6 x i64]]], [10 x [2 x [6 x i64]]]* @g_18, i32 0, i64 %158
  %160 = getelementptr inbounds [2 x [6 x i64]], [2 x [6 x i64]]* %159, i32 0, i64 %156
  %161 = getelementptr inbounds [6 x i64], [6 x i64]* %160, i32 0, i64 %154
  %162 = load i64, i64* %161, align 8, !tbaa !7
  %163 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %162, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i32 %163)
  %164 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %171

; <label>:166                                     ; preds = %152
  %167 = load i32, i32* %i, align 4, !tbaa !1
  %168 = load i32, i32* %j, align 4, !tbaa !1
  %169 = load i32, i32* %k, align 4, !tbaa !1
  %170 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i32 0, i32 0), i32 %167, i32 %168, i32 %169)
  br label %171

; <label>:171                                     ; preds = %166, %152
  br label %172

; <label>:172                                     ; preds = %171
  %173 = load i32, i32* %k, align 4, !tbaa !1
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %k, align 4, !tbaa !1
  br label %149

; <label>:175                                     ; preds = %149
  br label %176

; <label>:176                                     ; preds = %175
  %177 = load i32, i32* %j, align 4, !tbaa !1
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %j, align 4, !tbaa !1
  br label %145

; <label>:179                                     ; preds = %145
  br label %180

; <label>:180                                     ; preds = %179
  %181 = load i32, i32* %i, align 4, !tbaa !1
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %i, align 4, !tbaa !1
  br label %141

; <label>:183                                     ; preds = %141
  %184 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %185 = zext i32 %184 to i64
  %186 = xor i64 %185, 4294967295
  %187 = trunc i64 %186 to i32
  %188 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %187, i32 %188)
  %189 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %189) #1
  %190 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %190) #1
  %191 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %191) #1
  %192 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %192) #1
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
  %l_32 = alloca i32, align 4
  %l_35 = alloca i64, align 8
  %l_6 = alloca i32*, align 8
  %l_30 = alloca [9 x i32], align 16
  %l_31 = alloca [4 x [7 x [5 x i32]]], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %1 = alloca i32
  %l_12 = alloca i32, align 4
  %l_13 = alloca i8*, align 8
  %l_15 = alloca i8*, align 8
  %l_16 = alloca [10 x i8*], align 16
  %l_19 = alloca i32*, align 8
  %l_20 = alloca i32*, align 8
  %l_21 = alloca i32*, align 8
  %l_22 = alloca i32*, align 8
  %l_23 = alloca i32*, align 8
  %l_24 = alloca i32*, align 8
  %l_25 = alloca i32*, align 8
  %l_26 = alloca i32*, align 8
  %l_27 = alloca i32*, align 8
  %l_28 = alloca i32*, align 8
  %l_29 = alloca [6 x [10 x i32*]], align 16
  %i1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  %2 = bitcast i32* %l_32 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 1, i32* %l_32, align 4, !tbaa !1
  %3 = bitcast i64* %l_35 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store i64 6156584312784416167, i64* %l_35, align 8, !tbaa !7
  store i32 0, i32* @g_3, align 4, !tbaa !1
  br label %4

; <label>:4                                       ; preds = %100, %0
  %5 = load i32, i32* @g_3, align 4, !tbaa !1
  %6 = icmp slt i32 %5, -27
  br i1 %6, label %7, label %105

; <label>:7                                       ; preds = %4
  %8 = bitcast i32** %l_6 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i32* getelementptr inbounds ([3 x [10 x i32]], [3 x [10 x i32]]* @g_7, i32 0, i64 0, i64 6), i32** %l_6, align 8, !tbaa !5
  %9 = bitcast [9 x i32]* %l_30 to i8*
  call void @llvm.lifetime.start(i64 36, i8* %9) #1
  %10 = bitcast [4 x [7 x [5 x i32]]]* %l_31 to i8*
  call void @llvm.lifetime.start(i64 560, i8* %10) #1
  %11 = bitcast [4 x [7 x [5 x i32]]]* %l_31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* bitcast ([4 x [7 x [5 x i32]]]* @func_1.l_31 to i8*), i64 560, i32 16, i1 false)
  %12 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %15

; <label>:15                                      ; preds = %22, %7
  %16 = load i32, i32* %i, align 4, !tbaa !1
  %17 = icmp slt i32 %16, 9
  br i1 %17, label %18, label %25

; <label>:18                                      ; preds = %15
  %19 = load i32, i32* %i, align 4, !tbaa !1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [9 x i32], [9 x i32]* %l_30, i32 0, i64 %20
  store i32 -689630801, i32* %21, align 4, !tbaa !1
  br label %22

; <label>:22                                      ; preds = %18
  %23 = load i32, i32* %i, align 4, !tbaa !1
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %i, align 4, !tbaa !1
  br label %15

; <label>:25                                      ; preds = %15
  %26 = load volatile i32, i32* @g_2, align 4, !tbaa !1
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

; <label>:28                                      ; preds = %25
  store i32 2, i32* %1
  br label %92

; <label>:29                                      ; preds = %25
  %30 = load volatile i32, i32* @g_2, align 4, !tbaa !1
  %31 = load i32*, i32** %l_6, align 8, !tbaa !5
  %32 = load i32, i32* %31, align 4, !tbaa !1
  %33 = and i32 %32, %30
  store i32 %33, i32* %31, align 4, !tbaa !1
  store i32 0, i32* @g_9, align 4, !tbaa !1
  br label %34

; <label>:34                                      ; preds = %88, %29
  %35 = load i32, i32* @g_9, align 4, !tbaa !1
  %36 = icmp sle i32 %35, -21
  br i1 %36, label %37, label %91

; <label>:37                                      ; preds = %34
  %38 = bitcast i32* %l_12 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %38) #1
  store i32 544826713, i32* %l_12, align 4, !tbaa !1
  %39 = bitcast i8** %l_13 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %39) #1
  store i8* @g_14, i8** %l_13, align 8, !tbaa !5
  %40 = bitcast i8** %l_15 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %40) #1
  store i8* null, i8** %l_15, align 8, !tbaa !5
  %41 = bitcast [10 x i8*]* %l_16 to i8*
  call void @llvm.lifetime.start(i64 80, i8* %41) #1
  %42 = bitcast [10 x i8*]* %l_16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %42, i8* bitcast ([10 x i8*]* @func_1.l_16 to i8*), i64 80, i32 16, i1 false)
  %43 = bitcast i32** %l_19 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %43) #1
  store i32* %l_12, i32** %l_19, align 8, !tbaa !5
  %44 = bitcast i32** %l_20 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %44) #1
  store i32* getelementptr inbounds ([3 x [10 x i32]], [3 x [10 x i32]]* @g_7, i32 0, i64 2, i64 4), i32** %l_20, align 8, !tbaa !5
  %45 = bitcast i32** %l_21 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %45) #1
  store i32* getelementptr inbounds ([3 x [10 x i32]], [3 x [10 x i32]]* @g_7, i32 0, i64 0, i64 6), i32** %l_21, align 8, !tbaa !5
  %46 = bitcast i32** %l_22 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %46) #1
  store i32* %l_12, i32** %l_22, align 8, !tbaa !5
  %47 = bitcast i32** %l_23 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %47) #1
  store i32* getelementptr inbounds ([3 x [10 x i32]], [3 x [10 x i32]]* @g_7, i32 0, i64 0, i64 6), i32** %l_23, align 8, !tbaa !5
  %48 = bitcast i32** %l_24 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %48) #1
  store i32* %l_12, i32** %l_24, align 8, !tbaa !5
  %49 = bitcast i32** %l_25 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %49) #1
  store i32* getelementptr inbounds ([3 x [10 x i32]], [3 x [10 x i32]]* @g_7, i32 0, i64 0, i64 2), i32** %l_25, align 8, !tbaa !5
  %50 = bitcast i32** %l_26 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %50) #1
  store i32* getelementptr inbounds ([3 x [10 x i32]], [3 x [10 x i32]]* @g_7, i32 0, i64 0, i64 6), i32** %l_26, align 8, !tbaa !5
  %51 = bitcast i32** %l_27 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %51) #1
  store i32* getelementptr inbounds ([3 x [10 x i32]], [3 x [10 x i32]]* @g_7, i32 0, i64 2, i64 0), i32** %l_27, align 8, !tbaa !5
  %52 = bitcast i32** %l_28 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %52) #1
  store i32* %l_12, i32** %l_28, align 8, !tbaa !5
  %53 = bitcast [6 x [10 x i32*]]* %l_29 to i8*
  call void @llvm.lifetime.start(i64 480, i8* %53) #1
  %54 = bitcast [6 x [10 x i32*]]* %l_29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %54, i8* bitcast ([6 x [10 x i32*]]* @func_1.l_29 to i8*), i64 480, i32 16, i1 false)
  %55 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %55) #1
  %56 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %56) #1
  %57 = load i32, i32* %l_12, align 4, !tbaa !1
  %58 = sext i32 %57 to i64
  %59 = icmp ne i64 108, %58
  %60 = zext i1 %59 to i32
  %61 = sext i32 %60 to i64
  %62 = load volatile i32, i32* @g_8, align 4, !tbaa !1
  %63 = trunc i32 %62 to i8
  %64 = load i8*, i8** %l_13, align 8, !tbaa !5
  store i8 %63, i8* %64, align 1, !tbaa !9
  %65 = zext i8 %63 to i64
  store i64 %65, i64* getelementptr inbounds ([10 x [2 x [6 x i64]]], [10 x [2 x [6 x i64]]]* @g_18, i32 0, i64 3, i64 0, i64 2), align 8, !tbaa !7
  %66 = xor i64 %61, %65
  %67 = trunc i64 %66 to i32
  %68 = load i32*, i32** %l_6, align 8, !tbaa !5
  store i32 %67, i32* %68, align 4, !tbaa !1
  %69 = load i32, i32* %l_32, align 4, !tbaa !1
  %70 = add i32 %69, 1
  store i32 %70, i32* %l_32, align 4, !tbaa !1
  %71 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #1
  %72 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #1
  %73 = bitcast [6 x [10 x i32*]]* %l_29 to i8*
  call void @llvm.lifetime.end(i64 480, i8* %73) #1
  %74 = bitcast i32** %l_28 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #1
  %75 = bitcast i32** %l_27 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #1
  %76 = bitcast i32** %l_26 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #1
  %77 = bitcast i32** %l_25 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #1
  %78 = bitcast i32** %l_24 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #1
  %79 = bitcast i32** %l_23 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %79) #1
  %80 = bitcast i32** %l_22 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #1
  %81 = bitcast i32** %l_21 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #1
  %82 = bitcast i32** %l_20 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %82) #1
  %83 = bitcast i32** %l_19 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %83) #1
  %84 = bitcast [10 x i8*]* %l_16 to i8*
  call void @llvm.lifetime.end(i64 80, i8* %84) #1
  %85 = bitcast i8** %l_15 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %85) #1
  %86 = bitcast i8** %l_13 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %86) #1
  %87 = bitcast i32* %l_12 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #1
  br label %88

; <label>:88                                      ; preds = %37
  %89 = load i32, i32* @g_9, align 4, !tbaa !1
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* @g_9, align 4, !tbaa !1
  br label %34

; <label>:91                                      ; preds = %34
  store i32 0, i32* %1
  br label %92

; <label>:92                                      ; preds = %91, %28
  %93 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %93) #1
  %94 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #1
  %95 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %95) #1
  %96 = bitcast [4 x [7 x [5 x i32]]]* %l_31 to i8*
  call void @llvm.lifetime.end(i64 560, i8* %96) #1
  %97 = bitcast [9 x i32]* %l_30 to i8*
  call void @llvm.lifetime.end(i64 36, i8* %97) #1
  %98 = bitcast i32** %l_6 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %98) #1
  %cleanup.dest = load i32, i32* %1
  switch i32 %cleanup.dest, label %110 [
    i32 0, label %99
    i32 2, label %105
  ]

; <label>:99                                      ; preds = %92
  br label %100

; <label>:100                                     ; preds = %99
  %101 = load i32, i32* @g_3, align 4, !tbaa !1
  %102 = trunc i32 %101 to i16
  %103 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %102, i16 zeroext 1)
  %104 = zext i16 %103 to i32
  store i32 %104, i32* @g_3, align 4, !tbaa !1
  br label %4

; <label>:105                                     ; preds = %92, %4
  %106 = load i64, i64* %l_35, align 8, !tbaa !7
  %107 = trunc i64 %106 to i32
  store i32 1, i32* %1
  %108 = bitcast i64* %l_35 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %108) #1
  %109 = bitcast i32* %l_32 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %109) #1
  ret i32 %107

; <label>:110                                     ; preds = %92
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
