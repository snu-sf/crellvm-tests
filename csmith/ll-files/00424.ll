; ModuleID = '00424.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_14 = internal global i32 193913883, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"g_14\00", align 1
@g_40 = internal global i32 -407785270, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"g_40\00", align 1
@g_108 = internal global i32 -1871423201, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"g_108\00", align 1
@g_113 = internal global i64 7923597054027724982, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"g_113\00", align 1
@g_139 = internal global i16 -13801, align 2
@.str.5 = private unnamed_addr constant [6 x i8] c"g_139\00", align 1
@g_141 = internal global i32 1366561962, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"g_141\00", align 1
@g_145 = internal global i16 1, align 2
@.str.7 = private unnamed_addr constant [6 x i8] c"g_145\00", align 1
@g_168 = internal global i8 -101, align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"g_168\00", align 1
@g_177 = internal global i32 0, align 4
@.str.9 = private unnamed_addr constant [6 x i8] c"g_177\00", align 1
@g_183 = internal global i64 -2, align 8
@.str.10 = private unnamed_addr constant [6 x i8] c"g_183\00", align 1
@g_190 = internal global i32 5, align 4
@.str.11 = private unnamed_addr constant [6 x i8] c"g_190\00", align 1
@g_220 = internal global i64 -1833368633075837879, align 8
@.str.12 = private unnamed_addr constant [6 x i8] c"g_220\00", align 1
@g_223 = internal global i64 -2, align 8
@.str.13 = private unnamed_addr constant [6 x i8] c"g_223\00", align 1
@g_252 = internal global i16 13584, align 2
@.str.14 = private unnamed_addr constant [6 x i8] c"g_252\00", align 1
@g_292 = internal global i64 1, align 8
@.str.15 = private unnamed_addr constant [6 x i8] c"g_292\00", align 1
@g_293 = internal global [10 x i64] [i64 -1787083870394528821, i64 -1787083870394528821, i64 -1787083870394528821, i64 -1787083870394528821, i64 -1787083870394528821, i64 -1787083870394528821, i64 -1787083870394528821, i64 -1787083870394528821, i64 -1787083870394528821, i64 -1787083870394528821], align 16
@.str.16 = private unnamed_addr constant [9 x i8] c"g_293[i]\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_308 = internal global i16 0, align 2
@.str.18 = private unnamed_addr constant [6 x i8] c"g_308\00", align 1
@g_310 = internal global i8 -9, align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"g_310\00", align 1
@g_349 = internal global i32 -1326572560, align 4
@.str.20 = private unnamed_addr constant [6 x i8] c"g_349\00", align 1
@g_424 = internal global i64 9, align 8
@.str.21 = private unnamed_addr constant [6 x i8] c"g_424\00", align 1
@g_441 = internal global [1 x [10 x [9 x i64]]] [[10 x [9 x i64]] [[9 x i64] [i64 -6879257872113129731, i64 -3442488470403557026, i64 -587201165301761636, i64 -2268279092551465571, i64 0, i64 -1514826880160170516, i64 7, i64 1, i64 0], [9 x i64] [i64 -587201165301761636, i64 -1514826880160170516, i64 -2268279092551465571, i64 588017761168516028, i64 -6879257872113129731, i64 588017761168516028, i64 -2268279092551465571, i64 -1514826880160170516, i64 -587201165301761636], [9 x i64] [i64 3640502129367644919, i64 -6879257872113129731, i64 -2268279092551465571, i64 1316615119293060563, i64 -7749669859701822848, i64 -1, i64 0, i64 -6354165658391122293, i64 588017761168516028], [9 x i64] [i64 -4002571292390159826, i64 0, i64 1316615119293060563, i64 1, i64 6, i64 -4002571292390159826, i64 9, i64 9, i64 -4002571292390159826], [9 x i64] [i64 -4002571292390159826, i64 -7008888561508164414, i64 1, i64 -7008888561508164414, i64 -4002571292390159826, i64 0, i64 -2268279092551465571, i64 9, i64 588017761168516028], [9 x i64] [i64 1316615119293060563, i64 -587201165301761636, i64 588017761168516028, i64 1, i64 -6879257872113129731, i64 -1, i64 -3442488470403557026, i64 1, i64 1], [9 x i64] [i64 0, i64 -1514826880160170516, i64 7, i64 1, i64 0, i64 0, i64 1, i64 7, i64 -1514826880160170516], [9 x i64] [i64 9, i64 -1, i64 0, i64 1, i64 -2, i64 -4002571292390159826, i64 7, i64 -587201165301761636, i64 -6354165658391122293], [9 x i64] [i64 3640502129367644919, i64 -6354165658391122293, i64 0, i64 1, i64 -2268279092551465571, i64 1, i64 6, i64 -7749669859701822848, i64 6], [9 x i64] [i64 -7749669859701822848, i64 -1, i64 -7008888561508164414, i64 -7008888561508164414, i64 -1, i64 -7749669859701822848, i64 588017761168516028, i64 -1514826880160170516, i64 6]]], align 16
@.str.22 = private unnamed_addr constant [15 x i8] c"g_441[i][j][k]\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"index = [%d][%d][%d]\0A\00", align 1
@g_445 = internal global i32 3, align 4
@.str.24 = private unnamed_addr constant [6 x i8] c"g_445\00", align 1
@g_446 = internal global i8 42, align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"g_446\00", align 1
@g_472 = internal global i64 -3379324746011882651, align 8
@.str.26 = private unnamed_addr constant [6 x i8] c"g_472\00", align 1
@g_473 = internal global i32 0, align 4
@.str.27 = private unnamed_addr constant [6 x i8] c"g_473\00", align 1
@g_474 = internal global i8 0, align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"g_474\00", align 1
@g_476 = internal global i16 -12265, align 2
@.str.29 = private unnamed_addr constant [6 x i8] c"g_476\00", align 1
@g_477 = internal global i32 -956047156, align 4
@.str.30 = private unnamed_addr constant [6 x i8] c"g_477\00", align 1
@g_478 = internal global i64 5, align 8
@.str.31 = private unnamed_addr constant [6 x i8] c"g_478\00", align 1
@g_480 = internal global i8 -3, align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"g_480\00", align 1
@g_527 = internal global [7 x i32] [i32 -1034908192, i32 0, i32 0, i32 -1034908192, i32 0, i32 0, i32 -1034908192], align 16
@.str.33 = private unnamed_addr constant [9 x i8] c"g_527[i]\00", align 1
@g_529 = internal global i32 980591818, align 4
@.str.34 = private unnamed_addr constant [6 x i8] c"g_529\00", align 1
@g_530 = internal global i16 -28330, align 2
@.str.35 = private unnamed_addr constant [6 x i8] c"g_530\00", align 1
@g_531 = internal global i16 -1, align 2
@.str.36 = private unnamed_addr constant [6 x i8] c"g_531\00", align 1
@g_614 = internal global i32 263413596, align 4
@.str.37 = private unnamed_addr constant [6 x i8] c"g_614\00", align 1
@g_615 = internal global i8 -1, align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"g_615\00", align 1
@g_616 = internal global i64 -7963214436227717559, align 8
@.str.39 = private unnamed_addr constant [6 x i8] c"g_616\00", align 1
@g_746 = internal global [2 x [3 x [4 x i8]]] [[3 x [4 x i8]] [[4 x i8] c"\FF\D0\E9\B9", [4 x i8] c"\D0\FA}\FF", [4 x i8] c"\FCVV\FC"], [3 x [4 x i8]] [[4 x i8] c"\FC\B9}N", [4 x i8] c"\D0\FC\E9\03", [4 x i8] c"\FFy\FF\03"]], align 16
@.str.40 = private unnamed_addr constant [15 x i8] c"g_746[i][j][k]\00", align 1
@g_815 = internal global i16 18968, align 2
@.str.41 = private unnamed_addr constant [6 x i8] c"g_815\00", align 1
@g_846 = internal global i8 -22, align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"g_846\00", align 1
@g_940 = internal global i16 -25226, align 2
@.str.43 = private unnamed_addr constant [6 x i8] c"g_940\00", align 1
@g_951 = internal global i64 4652538257596228011, align 8
@.str.44 = private unnamed_addr constant [6 x i8] c"g_951\00", align 1
@g_1142 = internal global [6 x i32] zeroinitializer, align 16
@.str.45 = private unnamed_addr constant [10 x i8] c"g_1142[i]\00", align 1
@g_1206 = internal global i32 -781229, align 4
@.str.46 = private unnamed_addr constant [7 x i8] c"g_1206\00", align 1
@g_1253 = internal global i8 -2, align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"g_1253\00", align 1
@g_1355 = internal global i64 -1642008615891365518, align 8
@.str.48 = private unnamed_addr constant [7 x i8] c"g_1355\00", align 1
@g_1364 = internal global i16 16555, align 2
@.str.49 = private unnamed_addr constant [7 x i8] c"g_1364\00", align 1
@g_1403 = internal global i32 5, align 4
@.str.50 = private unnamed_addr constant [7 x i8] c"g_1403\00", align 1
@g_1407 = internal global i64 6842499759179523260, align 8
@.str.51 = private unnamed_addr constant [7 x i8] c"g_1407\00", align 1
@g_1411 = internal global i32 -588703511, align 4
@.str.52 = private unnamed_addr constant [7 x i8] c"g_1411\00", align 1
@g_1489 = internal global i8 52, align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"g_1489\00", align 1
@g_1557 = internal global [5 x i32] [i32 -8, i32 -8, i32 -8, i32 -8, i32 -8], align 16
@.str.54 = private unnamed_addr constant [10 x i8] c"g_1557[i]\00", align 1
@g_1601 = internal global i32 -1, align 4
@.str.55 = private unnamed_addr constant [7 x i8] c"g_1601\00", align 1
@g_1874 = internal global i16 -3, align 2
@.str.56 = private unnamed_addr constant [7 x i8] c"g_1874\00", align 1
@g_1877 = internal global i32 0, align 4
@.str.57 = private unnamed_addr constant [7 x i8] c"g_1877\00", align 1
@g_1920 = internal global i8 -74, align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"g_1920\00", align 1
@g_2201 = internal global [5 x i32] [i32 -1799768807, i32 -1799768807, i32 -1799768807, i32 -1799768807, i32 -1799768807], align 16
@.str.59 = private unnamed_addr constant [10 x i8] c"g_2201[i]\00", align 1
@g_2291 = internal global i16 -1, align 2
@.str.60 = private unnamed_addr constant [7 x i8] c"g_2291\00", align 1
@g_2333 = internal global i32 -3, align 4
@.str.61 = private unnamed_addr constant [7 x i8] c"g_2333\00", align 1
@g_2371 = internal constant [3 x [4 x i32]] [[4 x i32] [i32 1, i32 -1486997186, i32 -1486997186, i32 1], [4 x i32] [i32 -1486997186, i32 1, i32 -1486997186, i32 -1486997186], [4 x i32] [i32 1, i32 1, i32 8, i32 -1486997186]], align 16
@.str.62 = private unnamed_addr constant [13 x i8] c"g_2371[i][j]\00", align 1
@.str.63 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@g_2560 = internal global i16 0, align 2
@.str.64 = private unnamed_addr constant [7 x i8] c"g_2560\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@g_81 = internal global i32* null, align 8
@g_2294 = internal global i32*** @g_2295, align 8
@g_1212 = internal global i32* @g_477, align 8
@g_390 = internal global i16* @g_308, align 8
@g_1714 = internal global i64** @g_1715, align 8
@g_1610 = internal global i32* @g_477, align 8
@g_2708 = internal global i32* @g_40, align 8
@g_2739 = internal global i32* @g_40, align 8
@g_1374 = internal global i32** bitcast (i8* getelementptr (i8, i8* bitcast ([2 x [7 x i32*]]* @g_1375 to i8*), i64 56) to i32**), align 8
@g_1375 = internal global [2 x [7 x i32*]] [[7 x i32*] [i32* null, i32* null, i32* @g_40, i32* @g_40, i32* @g_40, i32* null, i32* null], [7 x i32*] [i32* null, i32* @g_40, i32* @g_40, i32* @g_40, i32* null, i32* null, i32* @g_40]], align 16
@g_2295 = internal global i32** @g_2296, align 8
@g_2296 = internal global i32* @g_349, align 8
@g_1715 = internal global i64* @g_1407, align 8
@.str.65 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@.str.66 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

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
  %91 = load i32, i32* @g_14, align 4, !tbaa !1
  %92 = zext i32 %91 to i64
  %93 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %92, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 %93)
  %94 = load i32, i32* @g_40, align 4, !tbaa !1
  %95 = sext i32 %94 to i64
  %96 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %95, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 %96)
  %97 = load i32, i32* @g_108, align 4, !tbaa !1
  %98 = zext i32 %97 to i64
  %99 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %98, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i32 %99)
  %100 = load volatile i64, i64* @g_113, align 8, !tbaa !7
  %101 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %100, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i32 %101)
  %102 = load i16, i16* @g_139, align 2, !tbaa !10
  %103 = sext i16 %102 to i64
  %104 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %103, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i32 %104)
  %105 = load i32, i32* @g_141, align 4, !tbaa !1
  %106 = zext i32 %105 to i64
  %107 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %106, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i32 %107)
  %108 = load i16, i16* @g_145, align 2, !tbaa !10
  %109 = sext i16 %108 to i64
  %110 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %109, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i32 %110)
  %111 = load i8, i8* @g_168, align 1, !tbaa !9
  %112 = zext i8 %111 to i64
  %113 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %112, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i32 %113)
  %114 = load volatile i32, i32* @g_177, align 4, !tbaa !1
  %115 = zext i32 %114 to i64
  %116 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %115, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 %116)
  %117 = load i64, i64* @g_183, align 8, !tbaa !7
  %118 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %117, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i32 %118)
  %119 = load i32, i32* @g_190, align 4, !tbaa !1
  %120 = zext i32 %119 to i64
  %121 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %120, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i32 %121)
  %122 = load i64, i64* @g_220, align 8, !tbaa !7
  %123 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %122, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i32 %123)
  %124 = load i64, i64* @g_223, align 8, !tbaa !7
  %125 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %124, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i32 %125)
  %126 = load i16, i16* @g_252, align 2, !tbaa !10
  %127 = zext i16 %126 to i64
  %128 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %127, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 %128)
  %129 = load volatile i64, i64* @g_292, align 8, !tbaa !7
  %130 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %129, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 %130)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %131

; <label>:131                                     ; preds = %146, %89
  %132 = load i32, i32* %i, align 4, !tbaa !1
  %133 = icmp slt i32 %132, 10
  br i1 %133, label %134, label %149

; <label>:134                                     ; preds = %131
  %135 = load i32, i32* %i, align 4, !tbaa !1
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [10 x i64], [10 x i64]* @g_293, i32 0, i64 %136
  %138 = load volatile i64, i64* %137, align 8, !tbaa !7
  %139 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %138, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i32 %139)
  %140 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %145

; <label>:142                                     ; preds = %134
  %143 = load i32, i32* %i, align 4, !tbaa !1
  %144 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), i32 %143)
  br label %145

; <label>:145                                     ; preds = %142, %134
  br label %146

; <label>:146                                     ; preds = %145
  %147 = load i32, i32* %i, align 4, !tbaa !1
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %i, align 4, !tbaa !1
  br label %131

; <label>:149                                     ; preds = %131
  %150 = load i16, i16* @g_308, align 2, !tbaa !10
  %151 = zext i16 %150 to i64
  %152 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %151, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i32 %152)
  %153 = load i8, i8* @g_310, align 1, !tbaa !9
  %154 = sext i8 %153 to i64
  %155 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %154, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i32 %155)
  %156 = load i32, i32* @g_349, align 4, !tbaa !1
  %157 = sext i32 %156 to i64
  %158 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %157, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 %158)
  %159 = load i64, i64* @g_424, align 8, !tbaa !7
  %160 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %159, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i32 %160)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %161

; <label>:161                                     ; preds = %200, %149
  %162 = load i32, i32* %i, align 4, !tbaa !1
  %163 = icmp slt i32 %162, 1
  br i1 %163, label %164, label %203

; <label>:164                                     ; preds = %161
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %165

; <label>:165                                     ; preds = %196, %164
  %166 = load i32, i32* %j, align 4, !tbaa !1
  %167 = icmp slt i32 %166, 10
  br i1 %167, label %168, label %199

; <label>:168                                     ; preds = %165
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %169

; <label>:169                                     ; preds = %192, %168
  %170 = load i32, i32* %k, align 4, !tbaa !1
  %171 = icmp slt i32 %170, 9
  br i1 %171, label %172, label %195

; <label>:172                                     ; preds = %169
  %173 = load i32, i32* %k, align 4, !tbaa !1
  %174 = sext i32 %173 to i64
  %175 = load i32, i32* %j, align 4, !tbaa !1
  %176 = sext i32 %175 to i64
  %177 = load i32, i32* %i, align 4, !tbaa !1
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [1 x [10 x [9 x i64]]], [1 x [10 x [9 x i64]]]* @g_441, i32 0, i64 %178
  %180 = getelementptr inbounds [10 x [9 x i64]], [10 x [9 x i64]]* %179, i32 0, i64 %176
  %181 = getelementptr inbounds [9 x i64], [9 x i64]* %180, i32 0, i64 %174
  %182 = load volatile i64, i64* %181, align 8, !tbaa !7
  %183 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %182, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0), i32 %183)
  %184 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %191

; <label>:186                                     ; preds = %172
  %187 = load i32, i32* %i, align 4, !tbaa !1
  %188 = load i32, i32* %j, align 4, !tbaa !1
  %189 = load i32, i32* %k, align 4, !tbaa !1
  %190 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i32 0, i32 0), i32 %187, i32 %188, i32 %189)
  br label %191

; <label>:191                                     ; preds = %186, %172
  br label %192

; <label>:192                                     ; preds = %191
  %193 = load i32, i32* %k, align 4, !tbaa !1
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %k, align 4, !tbaa !1
  br label %169

; <label>:195                                     ; preds = %169
  br label %196

; <label>:196                                     ; preds = %195
  %197 = load i32, i32* %j, align 4, !tbaa !1
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %j, align 4, !tbaa !1
  br label %165

; <label>:199                                     ; preds = %165
  br label %200

; <label>:200                                     ; preds = %199
  %201 = load i32, i32* %i, align 4, !tbaa !1
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %i, align 4, !tbaa !1
  br label %161

; <label>:203                                     ; preds = %161
  %204 = load volatile i32, i32* @g_445, align 4, !tbaa !1
  %205 = sext i32 %204 to i64
  %206 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %205, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %206)
  %207 = load i8, i8* @g_446, align 1, !tbaa !9
  %208 = zext i8 %207 to i64
  %209 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %208, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i32 %209)
  %210 = load i64, i64* @g_472, align 8, !tbaa !7
  %211 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %210, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i32 %211)
  %212 = load volatile i32, i32* @g_473, align 4, !tbaa !1
  %213 = sext i32 %212 to i64
  %214 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %213, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 %214)
  %215 = load i8, i8* @g_474, align 1, !tbaa !9
  %216 = sext i8 %215 to i64
  %217 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %216, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i32 %217)
  %218 = load i16, i16* @g_476, align 2, !tbaa !10
  %219 = sext i16 %218 to i64
  %220 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %219, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i32 %220)
  %221 = load i32, i32* @g_477, align 4, !tbaa !1
  %222 = sext i32 %221 to i64
  %223 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %222, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i32 %223)
  %224 = load i64, i64* @g_478, align 8, !tbaa !7
  %225 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %224, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i32 %225)
  %226 = load i8, i8* @g_480, align 1, !tbaa !9
  %227 = zext i8 %226 to i64
  %228 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %227, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i32 %228)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %229

; <label>:229                                     ; preds = %245, %203
  %230 = load i32, i32* %i, align 4, !tbaa !1
  %231 = icmp slt i32 %230, 7
  br i1 %231, label %232, label %248

; <label>:232                                     ; preds = %229
  %233 = load i32, i32* %i, align 4, !tbaa !1
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds [7 x i32], [7 x i32]* @g_527, i32 0, i64 %234
  %236 = load volatile i32, i32* %235, align 4, !tbaa !1
  %237 = sext i32 %236 to i64
  %238 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %237, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0), i32 %238)
  %239 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %244

; <label>:241                                     ; preds = %232
  %242 = load i32, i32* %i, align 4, !tbaa !1
  %243 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), i32 %242)
  br label %244

; <label>:244                                     ; preds = %241, %232
  br label %245

; <label>:245                                     ; preds = %244
  %246 = load i32, i32* %i, align 4, !tbaa !1
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %i, align 4, !tbaa !1
  br label %229

; <label>:248                                     ; preds = %229
  %249 = load volatile i32, i32* @g_529, align 4, !tbaa !1
  %250 = sext i32 %249 to i64
  %251 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %250, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), i32 %251)
  %252 = load volatile i16, i16* @g_530, align 2, !tbaa !10
  %253 = sext i16 %252 to i64
  %254 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %253, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), i32 %254)
  %255 = load volatile i16, i16* @g_531, align 2, !tbaa !10
  %256 = sext i16 %255 to i64
  %257 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %256, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i32 %257)
  %258 = load volatile i32, i32* @g_614, align 4, !tbaa !1
  %259 = sext i32 %258 to i64
  %260 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %259, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), i32 %260)
  %261 = load volatile i8, i8* @g_615, align 1, !tbaa !9
  %262 = sext i8 %261 to i64
  %263 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %262, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0), i32 %263)
  %264 = load volatile i64, i64* @g_616, align 8, !tbaa !7
  %265 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %264, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), i32 %265)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %266

; <label>:266                                     ; preds = %306, %248
  %267 = load i32, i32* %i, align 4, !tbaa !1
  %268 = icmp slt i32 %267, 2
  br i1 %268, label %269, label %309

; <label>:269                                     ; preds = %266
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %270

; <label>:270                                     ; preds = %302, %269
  %271 = load i32, i32* %j, align 4, !tbaa !1
  %272 = icmp slt i32 %271, 3
  br i1 %272, label %273, label %305

; <label>:273                                     ; preds = %270
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %274

; <label>:274                                     ; preds = %298, %273
  %275 = load i32, i32* %k, align 4, !tbaa !1
  %276 = icmp slt i32 %275, 4
  br i1 %276, label %277, label %301

; <label>:277                                     ; preds = %274
  %278 = load i32, i32* %k, align 4, !tbaa !1
  %279 = sext i32 %278 to i64
  %280 = load i32, i32* %j, align 4, !tbaa !1
  %281 = sext i32 %280 to i64
  %282 = load i32, i32* %i, align 4, !tbaa !1
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds [2 x [3 x [4 x i8]]], [2 x [3 x [4 x i8]]]* @g_746, i32 0, i64 %283
  %285 = getelementptr inbounds [3 x [4 x i8]], [3 x [4 x i8]]* %284, i32 0, i64 %281
  %286 = getelementptr inbounds [4 x i8], [4 x i8]* %285, i32 0, i64 %279
  %287 = load volatile i8, i8* %286, align 1, !tbaa !9
  %288 = zext i8 %287 to i64
  %289 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %288, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40, i32 0, i32 0), i32 %289)
  %290 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %297

; <label>:292                                     ; preds = %277
  %293 = load i32, i32* %i, align 4, !tbaa !1
  %294 = load i32, i32* %j, align 4, !tbaa !1
  %295 = load i32, i32* %k, align 4, !tbaa !1
  %296 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i32 0, i32 0), i32 %293, i32 %294, i32 %295)
  br label %297

; <label>:297                                     ; preds = %292, %277
  br label %298

; <label>:298                                     ; preds = %297
  %299 = load i32, i32* %k, align 4, !tbaa !1
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %k, align 4, !tbaa !1
  br label %274

; <label>:301                                     ; preds = %274
  br label %302

; <label>:302                                     ; preds = %301
  %303 = load i32, i32* %j, align 4, !tbaa !1
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %j, align 4, !tbaa !1
  br label %270

; <label>:305                                     ; preds = %270
  br label %306

; <label>:306                                     ; preds = %305
  %307 = load i32, i32* %i, align 4, !tbaa !1
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %i, align 4, !tbaa !1
  br label %266

; <label>:309                                     ; preds = %266
  %310 = load volatile i16, i16* @g_815, align 2, !tbaa !10
  %311 = zext i16 %310 to i64
  %312 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %311, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i32 0, i32 0), i32 %312)
  %313 = load i8, i8* @g_846, align 1, !tbaa !9
  %314 = zext i8 %313 to i64
  %315 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %314, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i32 %315)
  %316 = load i16, i16* @g_940, align 2, !tbaa !10
  %317 = zext i16 %316 to i64
  %318 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %317, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0), i32 %318)
  %319 = load volatile i64, i64* @g_951, align 8, !tbaa !7
  %320 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %319, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0), i32 %320)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %321

; <label>:321                                     ; preds = %337, %309
  %322 = load i32, i32* %i, align 4, !tbaa !1
  %323 = icmp slt i32 %322, 6
  br i1 %323, label %324, label %340

; <label>:324                                     ; preds = %321
  %325 = load i32, i32* %i, align 4, !tbaa !1
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds [6 x i32], [6 x i32]* @g_1142, i32 0, i64 %326
  %328 = load volatile i32, i32* %327, align 4, !tbaa !1
  %329 = zext i32 %328 to i64
  %330 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %329, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i32 0, i32 0), i32 %330)
  %331 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %336

; <label>:333                                     ; preds = %324
  %334 = load i32, i32* %i, align 4, !tbaa !1
  %335 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), i32 %334)
  br label %336

; <label>:336                                     ; preds = %333, %324
  br label %337

; <label>:337                                     ; preds = %336
  %338 = load i32, i32* %i, align 4, !tbaa !1
  %339 = add nsw i32 %338, 1
  store i32 %339, i32* %i, align 4, !tbaa !1
  br label %321

; <label>:340                                     ; preds = %321
  %341 = load i32, i32* @g_1206, align 4, !tbaa !1
  %342 = sext i32 %341 to i64
  %343 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %342, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0), i32 %343)
  %344 = load i8, i8* @g_1253, align 1, !tbaa !9
  %345 = zext i8 %344 to i64
  %346 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %345, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i32 0, i32 0), i32 %346)
  %347 = load i64, i64* @g_1355, align 8, !tbaa !7
  %348 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %347, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0), i32 %348)
  %349 = load volatile i16, i16* @g_1364, align 2, !tbaa !10
  %350 = zext i16 %349 to i64
  %351 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %350, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0), i32 %351)
  %352 = load volatile i32, i32* @g_1403, align 4, !tbaa !1
  %353 = sext i32 %352 to i64
  %354 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %353, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i32 0, i32 0), i32 %354)
  %355 = load i64, i64* @g_1407, align 8, !tbaa !7
  %356 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %355, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), i32 %356)
  %357 = load i32, i32* @g_1411, align 4, !tbaa !1
  %358 = zext i32 %357 to i64
  %359 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %358, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i32 0, i32 0), i32 %359)
  %360 = load i8, i8* @g_1489, align 1, !tbaa !9
  %361 = sext i8 %360 to i64
  %362 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %361, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0), i32 %362)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %363

; <label>:363                                     ; preds = %379, %340
  %364 = load i32, i32* %i, align 4, !tbaa !1
  %365 = icmp slt i32 %364, 5
  br i1 %365, label %366, label %382

; <label>:366                                     ; preds = %363
  %367 = load i32, i32* %i, align 4, !tbaa !1
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds [5 x i32], [5 x i32]* @g_1557, i32 0, i64 %368
  %370 = load volatile i32, i32* %369, align 4, !tbaa !1
  %371 = sext i32 %370 to i64
  %372 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %371, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.54, i32 0, i32 0), i32 %372)
  %373 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %378

; <label>:375                                     ; preds = %366
  %376 = load i32, i32* %i, align 4, !tbaa !1
  %377 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), i32 %376)
  br label %378

; <label>:378                                     ; preds = %375, %366
  br label %379

; <label>:379                                     ; preds = %378
  %380 = load i32, i32* %i, align 4, !tbaa !1
  %381 = add nsw i32 %380, 1
  store i32 %381, i32* %i, align 4, !tbaa !1
  br label %363

; <label>:382                                     ; preds = %363
  %383 = load volatile i32, i32* @g_1601, align 4, !tbaa !1
  %384 = sext i32 %383 to i64
  %385 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %384, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i32 0, i32 0), i32 %385)
  %386 = load i16, i16* @g_1874, align 2, !tbaa !10
  %387 = sext i16 %386 to i64
  %388 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %387, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i32 0, i32 0), i32 %388)
  %389 = load i32, i32* @g_1877, align 4, !tbaa !1
  %390 = zext i32 %389 to i64
  %391 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %390, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i32 0, i32 0), i32 %391)
  %392 = load i8, i8* @g_1920, align 1, !tbaa !9
  %393 = zext i8 %392 to i64
  %394 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %393, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i32 0, i32 0), i32 %394)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %395

; <label>:395                                     ; preds = %411, %382
  %396 = load i32, i32* %i, align 4, !tbaa !1
  %397 = icmp slt i32 %396, 5
  br i1 %397, label %398, label %414

; <label>:398                                     ; preds = %395
  %399 = load i32, i32* %i, align 4, !tbaa !1
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds [5 x i32], [5 x i32]* @g_2201, i32 0, i64 %400
  %402 = load i32, i32* %401, align 4, !tbaa !1
  %403 = zext i32 %402 to i64
  %404 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %403, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i32 0, i32 0), i32 %404)
  %405 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %407, label %410

; <label>:407                                     ; preds = %398
  %408 = load i32, i32* %i, align 4, !tbaa !1
  %409 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), i32 %408)
  br label %410

; <label>:410                                     ; preds = %407, %398
  br label %411

; <label>:411                                     ; preds = %410
  %412 = load i32, i32* %i, align 4, !tbaa !1
  %413 = add nsw i32 %412, 1
  store i32 %413, i32* %i, align 4, !tbaa !1
  br label %395

; <label>:414                                     ; preds = %395
  %415 = load volatile i16, i16* @g_2291, align 2, !tbaa !10
  %416 = zext i16 %415 to i64
  %417 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %416, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i32 0, i32 0), i32 %417)
  %418 = load i32, i32* @g_2333, align 4, !tbaa !1
  %419 = sext i32 %418 to i64
  %420 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %419, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.61, i32 0, i32 0), i32 %420)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %421

; <label>:421                                     ; preds = %449, %414
  %422 = load i32, i32* %i, align 4, !tbaa !1
  %423 = icmp slt i32 %422, 3
  br i1 %423, label %424, label %452

; <label>:424                                     ; preds = %421
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %425

; <label>:425                                     ; preds = %445, %424
  %426 = load i32, i32* %j, align 4, !tbaa !1
  %427 = icmp slt i32 %426, 4
  br i1 %427, label %428, label %448

; <label>:428                                     ; preds = %425
  %429 = load i32, i32* %j, align 4, !tbaa !1
  %430 = sext i32 %429 to i64
  %431 = load i32, i32* %i, align 4, !tbaa !1
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds [3 x [4 x i32]], [3 x [4 x i32]]* @g_2371, i32 0, i64 %432
  %434 = getelementptr inbounds [4 x i32], [4 x i32]* %433, i32 0, i64 %430
  %435 = load i32, i32* %434, align 4, !tbaa !1
  %436 = zext i32 %435 to i64
  %437 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %436, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i32 0, i32 0), i32 %437)
  %438 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %439 = icmp ne i32 %438, 0
  br i1 %439, label %440, label %444

; <label>:440                                     ; preds = %428
  %441 = load i32, i32* %i, align 4, !tbaa !1
  %442 = load i32, i32* %j, align 4, !tbaa !1
  %443 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.63, i32 0, i32 0), i32 %441, i32 %442)
  br label %444

; <label>:444                                     ; preds = %440, %428
  br label %445

; <label>:445                                     ; preds = %444
  %446 = load i32, i32* %j, align 4, !tbaa !1
  %447 = add nsw i32 %446, 1
  store i32 %447, i32* %j, align 4, !tbaa !1
  br label %425

; <label>:448                                     ; preds = %425
  br label %449

; <label>:449                                     ; preds = %448
  %450 = load i32, i32* %i, align 4, !tbaa !1
  %451 = add nsw i32 %450, 1
  store i32 %451, i32* %i, align 4, !tbaa !1
  br label %421

; <label>:452                                     ; preds = %421
  %453 = load i16, i16* @g_2560, align 2, !tbaa !10
  %454 = sext i16 %453 to i64
  %455 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %454, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.64, i32 0, i32 0), i32 %455)
  %456 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %457 = zext i32 %456 to i64
  %458 = xor i64 %457, 4294967295
  %459 = trunc i64 %458 to i32
  %460 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %459, i32 %460)
  %461 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %461) #1
  %462 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %462) #1
  %463 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %463) #1
  %464 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %464) #1
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
  %l_12 = alloca i32*, align 8
  %l_13 = alloca i32*, align 8
  %l_2687 = alloca i32, align 4
  %l_2700 = alloca i32, align 4
  %l_2701 = alloca i16, align 2
  %l_2702 = alloca i32**, align 8
  %l_2703 = alloca i32*, align 8
  %l_2704 = alloca i32*, align 8
  %l_2705 = alloca i32*, align 8
  %l_2706 = alloca i16*, align 8
  %l_2733 = alloca [7 x i32], align 16
  %l_2743 = alloca i32, align 4
  %l_2744 = alloca i64, align 8
  %i = alloca i32, align 4
  %l_2721 = alloca i32, align 4
  %l_2724 = alloca i32*, align 8
  %l_2725 = alloca i32*, align 8
  %l_2726 = alloca i32*, align 8
  %l_2727 = alloca i32*, align 8
  %l_2728 = alloca i32*, align 8
  %l_2729 = alloca i32*, align 8
  %l_2730 = alloca i32, align 4
  %l_2731 = alloca i32*, align 8
  %l_2732 = alloca [8 x i32*], align 16
  %l_2734 = alloca i64, align 8
  %i1 = alloca i32, align 4
  %l_2711 = alloca i32*, align 8
  %l_2712 = alloca i32*, align 8
  %l_2713 = alloca i32, align 4
  %l_2714 = alloca i32*, align 8
  %l_2715 = alloca i32*, align 8
  %l_2716 = alloca i32*, align 8
  %l_2717 = alloca i32*, align 8
  %l_2718 = alloca i32*, align 8
  %l_2719 = alloca i32*, align 8
  %l_2720 = alloca [5 x [10 x i32*]], align 16
  %i2 = alloca i32, align 4
  %j = alloca i32, align 4
  %1 = alloca i32
  %l_2740 = alloca i32**, align 8
  %l_2742 = alloca i32**, align 8
  %2 = bitcast i32** %l_12 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store i32* null, i32** %l_12, align 8, !tbaa !5
  %3 = bitcast i32** %l_13 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store i32* @g_14, i32** %l_13, align 8, !tbaa !5
  %4 = bitcast i32* %l_2687 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 -8, i32* %l_2687, align 4, !tbaa !1
  %5 = bitcast i32* %l_2700 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 -1, i32* %l_2700, align 4, !tbaa !1
  %6 = bitcast i16* %l_2701 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %6) #1
  store i16 9, i16* %l_2701, align 2, !tbaa !10
  %7 = bitcast i32*** %l_2702 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store i32** @g_81, i32*** %l_2702, align 8, !tbaa !5
  %8 = bitcast i32** %l_2703 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i32* null, i32** %l_2703, align 8, !tbaa !5
  %9 = bitcast i32** %l_2704 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store i32* null, i32** %l_2704, align 8, !tbaa !5
  %10 = bitcast i32** %l_2705 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i32* @g_2333, i32** %l_2705, align 8, !tbaa !5
  %11 = bitcast i16** %l_2706 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store i16* @g_145, i16** %l_2706, align 8, !tbaa !5
  %12 = bitcast [7 x i32]* %l_2733 to i8*
  call void @llvm.lifetime.start(i64 28, i8* %12) #1
  %13 = bitcast [7 x i32]* %l_2733 to i8*
  call void @llvm.memset.p0i8.i64(i8* %13, i8 0, i64 28, i32 16, i1 false)
  %14 = bitcast i32* %l_2743 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  store i32 -605061668, i32* %l_2743, align 4, !tbaa !1
  %15 = bitcast i64* %l_2744 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  store i64 0, i64* %l_2744, align 8, !tbaa !7
  %16 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = load i32*, i32** %l_13, align 8, !tbaa !5
  %18 = load i32, i32* %17, align 4, !tbaa !1
  %19 = add i32 %18, 1
  store i32 %19, i32* %17, align 4, !tbaa !1
  %20 = call zeroext i8 @func_10(i32 %18)
  %21 = call zeroext i8 @safe_lshift_func_uint8_t_u_u(i8 zeroext %20, i32 7)
  %22 = zext i8 %21 to i64
  %23 = load i32, i32* %l_2687, align 4, !tbaa !1
  %24 = trunc i32 %23 to i8
  %25 = call zeroext i8 @safe_unary_minus_func_uint8_t_u(i8 zeroext %24)
  %26 = load i32***, i32**** @g_2294, align 8, !tbaa !5
  %27 = load i32**, i32*** %26, align 8, !tbaa !5
  %28 = icmp eq i32** %27, null
  %29 = zext i1 %28 to i32
  %30 = load volatile i32*, i32** @g_1212, align 8, !tbaa !5
  %31 = load i32, i32* %30, align 4, !tbaa !1
  %32 = icmp eq i32 %29, %31
  %33 = zext i1 %32 to i32
  %34 = load i32, i32* %l_2687, align 4, !tbaa !1
  %35 = load i32, i32* %l_2687, align 4, !tbaa !1
  %36 = trunc i32 %35 to i16
  %37 = call signext i16 @safe_rshift_func_int16_t_s_s(i16 signext %36, i32 1)
  %38 = sext i16 %37 to i32
  %39 = load i32, i32* %l_2687, align 4, !tbaa !1
  %40 = xor i32 %38, 0
  %41 = trunc i32 %40 to i8
  %42 = call zeroext i8 @safe_rshift_func_uint8_t_u_u(i8 zeroext %41, i32 0)
  %43 = zext i8 %42 to i32
  %44 = icmp ne i32 %34, %43
  %45 = zext i1 %44 to i32
  %46 = trunc i32 %45 to i16
  %47 = load i32, i32* %l_2700, align 4, !tbaa !1
  %48 = trunc i32 %47 to i16
  %49 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %46, i16 zeroext %48)
  %50 = zext i16 %49 to i32
  %51 = load i16, i16* %l_2701, align 2, !tbaa !10
  %52 = zext i16 %51 to i32
  %53 = call i32 @safe_add_func_uint32_t_u_u(i32 %50, i32 %52)
  %54 = load i16, i16* %l_2701, align 2, !tbaa !10
  %55 = load i32**, i32*** %l_2702, align 8, !tbaa !5
  %56 = icmp eq i32** @g_81, %55
  %57 = xor i1 %56, true
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = trunc i32 %59 to i8
  %61 = load i16, i16* %l_2701, align 2, !tbaa !10
  %62 = zext i16 %61 to i32
  %63 = call zeroext i8 @safe_lshift_func_uint8_t_u_s(i8 zeroext %60, i32 %62)
  %64 = zext i8 %63 to i32
  %65 = load i32, i32* %l_2700, align 4, !tbaa !1
  %66 = icmp ne i32 %64, %65
  %67 = zext i1 %66 to i32
  %68 = and i32 %33, %67
  %69 = load volatile i64**, i64*** @g_1714, align 8, !tbaa !5
  %70 = load volatile i64*, i64** %69, align 8, !tbaa !5
  %71 = load i64, i64* %70, align 8, !tbaa !7
  %72 = icmp uge i64 %71, -1407840626692733888
  %73 = zext i1 %72 to i32
  %74 = load volatile i32*, i32** @g_1610, align 8, !tbaa !5
  %75 = load i32, i32* %74, align 4, !tbaa !1
  %76 = load i32*, i32** %l_2705, align 8, !tbaa !5
  store i32 %75, i32* %76, align 4, !tbaa !1
  %77 = sext i32 %75 to i64
  %78 = icmp eq i64 %77, 4294967295
  %79 = zext i1 %78 to i32
  %80 = call signext i8 @safe_rshift_func_int8_t_s_u(i8 signext %25, i32 %79)
  %81 = sext i8 %80 to i64
  %82 = call i64 @safe_mod_func_uint64_t_u_u(i64 %22, i64 %81)
  %83 = load i8, i8* @g_846, align 1, !tbaa !9
  %84 = zext i8 %83 to i64
  %85 = and i64 %82, %84
  %86 = load i32, i32* %l_2700, align 4, !tbaa !1
  %87 = sext i32 %86 to i64
  %88 = xor i64 %85, %87
  %89 = trunc i64 %88 to i16
  %90 = load i16*, i16** @g_390, align 8, !tbaa !5
  %91 = load i16, i16* %90, align 2, !tbaa !10
  %92 = call zeroext i16 @safe_mod_func_uint16_t_u_u(i16 zeroext %89, i16 zeroext %91)
  %93 = zext i16 %92 to i32
  %94 = load i16*, i16** %l_2706, align 8, !tbaa !5
  %95 = load i16, i16* %94, align 2, !tbaa !10
  %96 = sext i16 %95 to i32
  %97 = xor i32 %96, %93
  %98 = trunc i32 %97 to i16
  store i16 %98, i16* %94, align 2, !tbaa !10
  %99 = call signext i16 @safe_mod_func_int16_t_s_s(i16 signext %98, i16 signext -12214)
  %100 = sext i16 %99 to i32
  %101 = load volatile i32*, i32** @g_2708, align 8, !tbaa !5
  store i32 %100, i32* %101, align 4, !tbaa !1
  store i64 0, i64* @g_424, align 8, !tbaa !7
  br label %102

; <label>:102                                     ; preds = %241, %0
  %103 = load i64, i64* @g_424, align 8, !tbaa !7
  %104 = icmp eq i64 %103, 17
  br i1 %104, label %105, label %246

; <label>:105                                     ; preds = %102
  %106 = bitcast i32* %l_2721 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %106) #1
  store i32 1647897575, i32* %l_2721, align 4, !tbaa !1
  %107 = bitcast i32** %l_2724 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %107) #1
  store i32* @g_477, i32** %l_2724, align 8, !tbaa !5
  %108 = bitcast i32** %l_2725 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %108) #1
  store i32* @g_40, i32** %l_2725, align 8, !tbaa !5
  %109 = bitcast i32** %l_2726 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %109) #1
  store i32* @g_477, i32** %l_2726, align 8, !tbaa !5
  %110 = bitcast i32** %l_2727 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %110) #1
  store i32* @g_2333, i32** %l_2727, align 8, !tbaa !5
  %111 = bitcast i32** %l_2728 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %111) #1
  store i32* null, i32** %l_2728, align 8, !tbaa !5
  %112 = bitcast i32** %l_2729 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %112) #1
  store i32* @g_477, i32** %l_2729, align 8, !tbaa !5
  %113 = bitcast i32* %l_2730 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %113) #1
  store i32 1, i32* %l_2730, align 4, !tbaa !1
  %114 = bitcast i32** %l_2731 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %114) #1
  store i32* %l_2687, i32** %l_2731, align 8, !tbaa !5
  %115 = bitcast [8 x i32*]* %l_2732 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %115) #1
  %116 = getelementptr inbounds [8 x i32*], [8 x i32*]* %l_2732, i64 0, i64 0
  store i32* null, i32** %116, !tbaa !5
  %117 = getelementptr inbounds i32*, i32** %116, i64 1
  store i32* %l_2687, i32** %117, !tbaa !5
  %118 = getelementptr inbounds i32*, i32** %117, i64 1
  store i32* %l_2687, i32** %118, !tbaa !5
  %119 = getelementptr inbounds i32*, i32** %118, i64 1
  store i32* null, i32** %119, !tbaa !5
  %120 = getelementptr inbounds i32*, i32** %119, i64 1
  store i32* %l_2687, i32** %120, !tbaa !5
  %121 = getelementptr inbounds i32*, i32** %120, i64 1
  store i32* %l_2687, i32** %121, !tbaa !5
  %122 = getelementptr inbounds i32*, i32** %121, i64 1
  store i32* null, i32** %122, !tbaa !5
  %123 = getelementptr inbounds i32*, i32** %122, i64 1
  store i32* %l_2687, i32** %123, !tbaa !5
  %124 = bitcast i64* %l_2734 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %124) #1
  store i64 3996568165418450322, i64* %l_2734, align 8, !tbaa !7
  %125 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %125) #1
  store i32 2, i32* @g_2333, align 4, !tbaa !1
  br label %126

; <label>:126                                     ; preds = %217, %105
  %127 = load i32, i32* @g_2333, align 4, !tbaa !1
  %128 = icmp sge i32 %127, 0
  br i1 %128, label %129, label %220

; <label>:129                                     ; preds = %126
  %130 = bitcast i32** %l_2711 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %130) #1
  store i32* @g_40, i32** %l_2711, align 8, !tbaa !5
  %131 = bitcast i32** %l_2712 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %131) #1
  store i32* %l_2687, i32** %l_2712, align 8, !tbaa !5
  %132 = bitcast i32* %l_2713 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %132) #1
  store i32 1687438533, i32* %l_2713, align 4, !tbaa !1
  %133 = bitcast i32** %l_2714 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %133) #1
  store i32* %l_2687, i32** %l_2714, align 8, !tbaa !5
  %134 = bitcast i32** %l_2715 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %134) #1
  store i32* @g_477, i32** %l_2715, align 8, !tbaa !5
  %135 = bitcast i32** %l_2716 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %135) #1
  store i32* %l_2687, i32** %l_2716, align 8, !tbaa !5
  %136 = bitcast i32** %l_2717 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %136) #1
  store i32* %l_2687, i32** %l_2717, align 8, !tbaa !5
  %137 = bitcast i32** %l_2718 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %137) #1
  store i32* %l_2713, i32** %l_2718, align 8, !tbaa !5
  %138 = bitcast i32** %l_2719 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %138) #1
  store i32* %l_2687, i32** %l_2719, align 8, !tbaa !5
  %139 = bitcast [5 x [10 x i32*]]* %l_2720 to i8*
  call void @llvm.lifetime.start(i64 400, i8* %139) #1
  %140 = getelementptr inbounds [5 x [10 x i32*]], [5 x [10 x i32*]]* %l_2720, i64 0, i64 0
  %141 = getelementptr inbounds [10 x i32*], [10 x i32*]* %140, i64 0, i64 0
  store i32* @g_477, i32** %141, !tbaa !5
  %142 = getelementptr inbounds i32*, i32** %141, i64 1
  store i32* @g_477, i32** %142, !tbaa !5
  %143 = getelementptr inbounds i32*, i32** %142, i64 1
  store i32* %l_2687, i32** %143, !tbaa !5
  %144 = getelementptr inbounds i32*, i32** %143, i64 1
  store i32* %l_2687, i32** %144, !tbaa !5
  %145 = getelementptr inbounds i32*, i32** %144, i64 1
  store i32* %l_2687, i32** %145, !tbaa !5
  %146 = getelementptr inbounds i32*, i32** %145, i64 1
  store i32* @g_477, i32** %146, !tbaa !5
  %147 = getelementptr inbounds i32*, i32** %146, i64 1
  store i32* @g_477, i32** %147, !tbaa !5
  %148 = getelementptr inbounds i32*, i32** %147, i64 1
  store i32* %l_2687, i32** %148, !tbaa !5
  %149 = getelementptr inbounds i32*, i32** %148, i64 1
  store i32* %l_2687, i32** %149, !tbaa !5
  %150 = getelementptr inbounds i32*, i32** %149, i64 1
  store i32* %l_2687, i32** %150, !tbaa !5
  %151 = getelementptr inbounds [10 x i32*], [10 x i32*]* %140, i64 1
  %152 = getelementptr inbounds [10 x i32*], [10 x i32*]* %151, i64 0, i64 0
  store i32* @g_477, i32** %152, !tbaa !5
  %153 = getelementptr inbounds i32*, i32** %152, i64 1
  store i32* @g_477, i32** %153, !tbaa !5
  %154 = getelementptr inbounds i32*, i32** %153, i64 1
  store i32* %l_2687, i32** %154, !tbaa !5
  %155 = getelementptr inbounds i32*, i32** %154, i64 1
  store i32* %l_2687, i32** %155, !tbaa !5
  %156 = getelementptr inbounds i32*, i32** %155, i64 1
  store i32* %l_2687, i32** %156, !tbaa !5
  %157 = getelementptr inbounds i32*, i32** %156, i64 1
  store i32* @g_477, i32** %157, !tbaa !5
  %158 = getelementptr inbounds i32*, i32** %157, i64 1
  store i32* @g_477, i32** %158, !tbaa !5
  %159 = getelementptr inbounds i32*, i32** %158, i64 1
  store i32* %l_2687, i32** %159, !tbaa !5
  %160 = getelementptr inbounds i32*, i32** %159, i64 1
  store i32* %l_2687, i32** %160, !tbaa !5
  %161 = getelementptr inbounds i32*, i32** %160, i64 1
  store i32* %l_2687, i32** %161, !tbaa !5
  %162 = getelementptr inbounds [10 x i32*], [10 x i32*]* %151, i64 1
  %163 = getelementptr inbounds [10 x i32*], [10 x i32*]* %162, i64 0, i64 0
  store i32* @g_477, i32** %163, !tbaa !5
  %164 = getelementptr inbounds i32*, i32** %163, i64 1
  store i32* @g_477, i32** %164, !tbaa !5
  %165 = getelementptr inbounds i32*, i32** %164, i64 1
  store i32* %l_2687, i32** %165, !tbaa !5
  %166 = getelementptr inbounds i32*, i32** %165, i64 1
  store i32* %l_2687, i32** %166, !tbaa !5
  %167 = getelementptr inbounds i32*, i32** %166, i64 1
  store i32* %l_2687, i32** %167, !tbaa !5
  %168 = getelementptr inbounds i32*, i32** %167, i64 1
  store i32* @g_477, i32** %168, !tbaa !5
  %169 = getelementptr inbounds i32*, i32** %168, i64 1
  store i32* @g_477, i32** %169, !tbaa !5
  %170 = getelementptr inbounds i32*, i32** %169, i64 1
  store i32* %l_2687, i32** %170, !tbaa !5
  %171 = getelementptr inbounds i32*, i32** %170, i64 1
  store i32* %l_2687, i32** %171, !tbaa !5
  %172 = getelementptr inbounds i32*, i32** %171, i64 1
  store i32* %l_2687, i32** %172, !tbaa !5
  %173 = getelementptr inbounds [10 x i32*], [10 x i32*]* %162, i64 1
  %174 = getelementptr inbounds [10 x i32*], [10 x i32*]* %173, i64 0, i64 0
  store i32* @g_477, i32** %174, !tbaa !5
  %175 = getelementptr inbounds i32*, i32** %174, i64 1
  store i32* @g_477, i32** %175, !tbaa !5
  %176 = getelementptr inbounds i32*, i32** %175, i64 1
  store i32* %l_2687, i32** %176, !tbaa !5
  %177 = getelementptr inbounds i32*, i32** %176, i64 1
  store i32* %l_2687, i32** %177, !tbaa !5
  %178 = getelementptr inbounds i32*, i32** %177, i64 1
  store i32* %l_2687, i32** %178, !tbaa !5
  %179 = getelementptr inbounds i32*, i32** %178, i64 1
  store i32* @g_477, i32** %179, !tbaa !5
  %180 = getelementptr inbounds i32*, i32** %179, i64 1
  store i32* @g_477, i32** %180, !tbaa !5
  %181 = getelementptr inbounds i32*, i32** %180, i64 1
  store i32* %l_2687, i32** %181, !tbaa !5
  %182 = getelementptr inbounds i32*, i32** %181, i64 1
  store i32* %l_2687, i32** %182, !tbaa !5
  %183 = getelementptr inbounds i32*, i32** %182, i64 1
  store i32* %l_2687, i32** %183, !tbaa !5
  %184 = getelementptr inbounds [10 x i32*], [10 x i32*]* %173, i64 1
  %185 = getelementptr inbounds [10 x i32*], [10 x i32*]* %184, i64 0, i64 0
  store i32* @g_477, i32** %185, !tbaa !5
  %186 = getelementptr inbounds i32*, i32** %185, i64 1
  store i32* @g_477, i32** %186, !tbaa !5
  %187 = getelementptr inbounds i32*, i32** %186, i64 1
  store i32* %l_2687, i32** %187, !tbaa !5
  %188 = getelementptr inbounds i32*, i32** %187, i64 1
  store i32* %l_2687, i32** %188, !tbaa !5
  %189 = getelementptr inbounds i32*, i32** %188, i64 1
  store i32* %l_2687, i32** %189, !tbaa !5
  %190 = getelementptr inbounds i32*, i32** %189, i64 1
  store i32* @g_477, i32** %190, !tbaa !5
  %191 = getelementptr inbounds i32*, i32** %190, i64 1
  store i32* @g_477, i32** %191, !tbaa !5
  %192 = getelementptr inbounds i32*, i32** %191, i64 1
  store i32* %l_2687, i32** %192, !tbaa !5
  %193 = getelementptr inbounds i32*, i32** %192, i64 1
  store i32* %l_2687, i32** %193, !tbaa !5
  %194 = getelementptr inbounds i32*, i32** %193, i64 1
  store i32* %l_2687, i32** %194, !tbaa !5
  %195 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %195) #1
  %196 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %196) #1
  %197 = load i32, i32* %l_2721, align 4, !tbaa !1
  %198 = add i32 %197, 1
  store i32 %198, i32* %l_2721, align 4, !tbaa !1
  %199 = load i32, i32* %l_2721, align 4, !tbaa !1
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %202

; <label>:201                                     ; preds = %129
  store i32 7, i32* %1
  br label %203

; <label>:202                                     ; preds = %129
  store i32 0, i32* %1
  br label %203

; <label>:203                                     ; preds = %202, %201
  %204 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %204) #1
  %205 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %205) #1
  %206 = bitcast [5 x [10 x i32*]]* %l_2720 to i8*
  call void @llvm.lifetime.end(i64 400, i8* %206) #1
  %207 = bitcast i32** %l_2719 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %207) #1
  %208 = bitcast i32** %l_2718 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %208) #1
  %209 = bitcast i32** %l_2717 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %209) #1
  %210 = bitcast i32** %l_2716 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %210) #1
  %211 = bitcast i32** %l_2715 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %211) #1
  %212 = bitcast i32** %l_2714 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %212) #1
  %213 = bitcast i32* %l_2713 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %213) #1
  %214 = bitcast i32** %l_2712 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %214) #1
  %215 = bitcast i32** %l_2711 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %215) #1
  %cleanup.dest = load i32, i32* %1
  switch i32 %cleanup.dest, label %282 [
    i32 0, label %216
    i32 7, label %217
  ]

; <label>:216                                     ; preds = %203
  br label %217

; <label>:217                                     ; preds = %216, %203
  %218 = load i32, i32* @g_2333, align 4, !tbaa !1
  %219 = sub nsw i32 %218, 1
  store i32 %219, i32* @g_2333, align 4, !tbaa !1
  br label %126

; <label>:220                                     ; preds = %126
  %221 = load i32, i32* %l_2721, align 4, !tbaa !1
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %224

; <label>:223                                     ; preds = %220
  store i32 2, i32* %1
  br label %227

; <label>:224                                     ; preds = %220
  %225 = load i64, i64* %l_2734, align 8, !tbaa !7
  %226 = add i64 %225, -1
  store i64 %226, i64* %l_2734, align 8, !tbaa !7
  store i32 0, i32* %1
  br label %227

; <label>:227                                     ; preds = %224, %223
  %228 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %228) #1
  %229 = bitcast i64* %l_2734 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %229) #1
  %230 = bitcast [8 x i32*]* %l_2732 to i8*
  call void @llvm.lifetime.end(i64 64, i8* %230) #1
  %231 = bitcast i32** %l_2731 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %231) #1
  %232 = bitcast i32* %l_2730 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %232) #1
  %233 = bitcast i32** %l_2729 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %233) #1
  %234 = bitcast i32** %l_2728 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %234) #1
  %235 = bitcast i32** %l_2727 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %235) #1
  %236 = bitcast i32** %l_2726 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %236) #1
  %237 = bitcast i32** %l_2725 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %237) #1
  %238 = bitcast i32** %l_2724 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %238) #1
  %239 = bitcast i32* %l_2721 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %239) #1
  %cleanup.dest.3 = load i32, i32* %1
  switch i32 %cleanup.dest.3, label %282 [
    i32 0, label %240
    i32 2, label %246
  ]

; <label>:240                                     ; preds = %227
  br label %241

; <label>:241                                     ; preds = %240
  %242 = load i64, i64* @g_424, align 8, !tbaa !7
  %243 = trunc i64 %242 to i16
  %244 = call signext i16 @safe_add_func_int16_t_s_s(i16 signext %243, i16 signext 1)
  %245 = sext i16 %244 to i64
  store i64 %245, i64* @g_424, align 8, !tbaa !7
  br label %102

; <label>:246                                     ; preds = %227, %102
  store i16 19, i16* @g_308, align 2, !tbaa !10
  br label %247

; <label>:247                                     ; preds = %260, %246
  %248 = load i16, i16* @g_308, align 2, !tbaa !10
  %249 = zext i16 %248 to i32
  %250 = icmp slt i32 %249, 34
  br i1 %250, label %251, label %263

; <label>:251                                     ; preds = %247
  %252 = bitcast i32*** %l_2740 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %252) #1
  store i32** %l_2703, i32*** %l_2740, align 8, !tbaa !5
  %253 = bitcast i32*** %l_2742 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %253) #1
  store i32** @g_2739, i32*** %l_2742, align 8, !tbaa !5
  %254 = load i32*, i32** @g_2739, align 8, !tbaa !5
  %255 = load i32**, i32*** %l_2702, align 8, !tbaa !5
  store i32* %254, i32** %255, align 8, !tbaa !5
  %256 = load i32**, i32*** %l_2740, align 8, !tbaa !5
  store i32* %254, i32** %256, align 8, !tbaa !5
  %257 = load i32**, i32*** %l_2742, align 8, !tbaa !5
  store i32* %254, i32** %257, align 8, !tbaa !5
  %258 = bitcast i32*** %l_2742 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %258) #1
  %259 = bitcast i32*** %l_2740 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %259) #1
  br label %260

; <label>:260                                     ; preds = %251
  %261 = load i16, i16* @g_308, align 2, !tbaa !10
  %262 = add i16 %261, 1
  store i16 %262, i16* @g_308, align 2, !tbaa !10
  br label %247

; <label>:263                                     ; preds = %247
  %264 = load i32, i32* %l_2743, align 4, !tbaa !1
  %265 = load i32*, i32** @g_2739, align 8, !tbaa !5
  store i32 %264, i32* %265, align 4, !tbaa !1
  %266 = load i64, i64* %l_2744, align 8, !tbaa !7
  %267 = trunc i64 %266 to i16
  store i32 1, i32* %1
  %268 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %268) #1
  %269 = bitcast i64* %l_2744 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %269) #1
  %270 = bitcast i32* %l_2743 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %270) #1
  %271 = bitcast [7 x i32]* %l_2733 to i8*
  call void @llvm.lifetime.end(i64 28, i8* %271) #1
  %272 = bitcast i16** %l_2706 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %272) #1
  %273 = bitcast i32** %l_2705 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %273) #1
  %274 = bitcast i32** %l_2704 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %274) #1
  %275 = bitcast i32** %l_2703 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %275) #1
  %276 = bitcast i32*** %l_2702 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %276) #1
  %277 = bitcast i16* %l_2701 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %277) #1
  %278 = bitcast i32* %l_2700 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %278) #1
  %279 = bitcast i32* %l_2687 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %279) #1
  %280 = bitcast i32** %l_13 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %280) #1
  %281 = bitcast i32** %l_12 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %281) #1
  ret i16 %267

; <label>:282                                     ; preds = %227, %203
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
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.65, i32 0, i32 0), i8* %8, i64 %11)
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
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.66, i32 0, i32 0), i32 %3)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal signext i16 @safe_mod_func_int16_t_s_s(i16 signext %si1, i16 signext %si2) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i16, align 2
  store i16 %si1, i16* %1, align 2, !tbaa !10
  store i16 %si2, i16* %2, align 2, !tbaa !10
  %3 = load i16, i16* %2, align 2, !tbaa !10
  %4 = sext i16 %3 to i32
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %14, label %6

; <label>:6                                       ; preds = %0
  %7 = load i16, i16* %1, align 2, !tbaa !10
  %8 = sext i16 %7 to i32
  %9 = icmp eq i32 %8, -32768
  br i1 %9, label %10, label %17

; <label>:10                                      ; preds = %6
  %11 = load i16, i16* %2, align 2, !tbaa !10
  %12 = sext i16 %11 to i32
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %17

; <label>:14                                      ; preds = %10, %0
  %15 = load i16, i16* %1, align 2, !tbaa !10
  %16 = sext i16 %15 to i32
  br label %23

; <label>:17                                      ; preds = %10, %6
  %18 = load i16, i16* %1, align 2, !tbaa !10
  %19 = sext i16 %18 to i32
  %20 = load i16, i16* %2, align 2, !tbaa !10
  %21 = sext i16 %20 to i32
  %22 = srem i32 %19, %21
  br label %23

; <label>:23                                      ; preds = %17, %14
  %24 = phi i32 [ %16, %14 ], [ %22, %17 ]
  %25 = trunc i32 %24 to i16
  ret i16 %25
}

; Function Attrs: nounwind uwtable
define internal zeroext i16 @safe_mod_func_uint16_t_u_u(i16 zeroext %ui1, i16 zeroext %ui2) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i16, align 2
  store i16 %ui1, i16* %1, align 2, !tbaa !10
  store i16 %ui2, i16* %2, align 2, !tbaa !10
  %3 = load i16, i16* %2, align 2, !tbaa !10
  %4 = zext i16 %3 to i32
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

; <label>:6                                       ; preds = %0
  %7 = load i16, i16* %1, align 2, !tbaa !10
  %8 = zext i16 %7 to i32
  br label %15

; <label>:9                                       ; preds = %0
  %10 = load i16, i16* %1, align 2, !tbaa !10
  %11 = zext i16 %10 to i32
  %12 = load i16, i16* %2, align 2, !tbaa !10
  %13 = zext i16 %12 to i32
  %14 = srem i32 %11, %13
  br label %15

; <label>:15                                      ; preds = %9, %6
  %16 = phi i32 [ %8, %6 ], [ %14, %9 ]
  %17 = trunc i32 %16 to i16
  ret i16 %17
}

; Function Attrs: nounwind uwtable
define internal i64 @safe_mod_func_uint64_t_u_u(i64 %ui1, i64 %ui2) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 %ui1, i64* %1, align 8, !tbaa !7
  store i64 %ui2, i64* %2, align 8, !tbaa !7
  %3 = load i64, i64* %2, align 8, !tbaa !7
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %7

; <label>:5                                       ; preds = %0
  %6 = load i64, i64* %1, align 8, !tbaa !7
  br label %11

; <label>:7                                       ; preds = %0
  %8 = load i64, i64* %1, align 8, !tbaa !7
  %9 = load i64, i64* %2, align 8, !tbaa !7
  %10 = urem i64 %8, %9
  br label %11

; <label>:11                                      ; preds = %7, %5
  %12 = phi i64 [ %6, %5 ], [ %10, %7 ]
  ret i64 %12
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
define internal zeroext i8 @func_10(i32 %p_11) #0 {
  %1 = alloca i32, align 4
  %l_914 = alloca i16, align 2
  %l_1746 = alloca i32*, align 8
  %l_2681 = alloca i32, align 4
  %l_2682 = alloca i32*, align 8
  %l_2683 = alloca i32, align 4
  %l_31 = alloca i32, align 4
  %l_911 = alloca i32**, align 8
  %l_913 = alloca i32*, align 8
  %l_912 = alloca i32**, align 8
  %l_915 = alloca i64*, align 8
  %l_916 = alloca i64*, align 8
  %l_917 = alloca i64*, align 8
  %l_1091 = alloca i32, align 4
  %l_2680 = alloca i32*, align 8
  store i32 %p_11, i32* %1, align 4, !tbaa !1
  %2 = bitcast i16* %l_914 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %2) #1
  store i16 0, i16* %l_914, align 2, !tbaa !10
  %3 = bitcast i32** %l_1746 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store i32* @g_1411, i32** %l_1746, align 8, !tbaa !5
  %4 = bitcast i32* %l_2681 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 8, i32* %l_2681, align 4, !tbaa !1
  %5 = bitcast i32** %l_2682 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store i32* null, i32** %l_2682, align 8, !tbaa !5
  %6 = bitcast i32* %l_2683 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 -4, i32* %l_2683, align 4, !tbaa !1
  store i32 0, i32* %1, align 4, !tbaa !1
  br label %7

; <label>:7                                       ; preds = %29, %0
  %8 = load i32, i32* %1, align 4, !tbaa !1
  %9 = icmp ule i32 %8, 4
  br i1 %9, label %10, label %32

; <label>:10                                      ; preds = %7
  %11 = bitcast i32* %l_31 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  store i32 -2002910678, i32* %l_31, align 4, !tbaa !1
  %12 = bitcast i32*** %l_911 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  store i32** null, i32*** %l_911, align 8, !tbaa !5
  %13 = bitcast i32** %l_913 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  store i32* @g_108, i32** %l_913, align 8, !tbaa !5
  %14 = bitcast i32*** %l_912 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  store i32** %l_913, i32*** %l_912, align 8, !tbaa !5
  %15 = bitcast i64** %l_915 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  store i64* @g_424, i64** %l_915, align 8, !tbaa !5
  %16 = bitcast i64** %l_916 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  store i64* null, i64** %l_916, align 8, !tbaa !5
  %17 = bitcast i64** %l_917 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  store i64* @g_472, i64** %l_917, align 8, !tbaa !5
  %18 = bitcast i32* %l_1091 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  store i32 0, i32* %l_1091, align 4, !tbaa !1
  %19 = bitcast i32** %l_2680 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  store i32* @g_40, i32** %l_2680, align 8, !tbaa !5
  %20 = bitcast i32** %l_2680 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  %21 = bitcast i32* %l_1091 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %22 = bitcast i64** %l_917 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = bitcast i64** %l_916 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = bitcast i64** %l_915 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = bitcast i32*** %l_912 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  %26 = bitcast i32** %l_913 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  %27 = bitcast i32*** %l_911 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  %28 = bitcast i32* %l_31 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  br label %29

; <label>:29                                      ; preds = %10
  %30 = load i32, i32* %1, align 4, !tbaa !1
  %31 = add i32 %30, 1
  store i32 %31, i32* %1, align 4, !tbaa !1
  br label %7

; <label>:32                                      ; preds = %7
  %33 = load i32, i32* %l_2681, align 4, !tbaa !1
  %34 = or i32 %33, 1
  store i32 %34, i32* %l_2681, align 4, !tbaa !1
  store i32 %34, i32* %l_2683, align 4, !tbaa !1
  %35 = load i32, i32* %l_2683, align 4, !tbaa !1
  %36 = trunc i32 %35 to i8
  %37 = bitcast i32* %l_2683 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %38 = bitcast i32** %l_2682 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  %39 = bitcast i32* %l_2681 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %40 = bitcast i32** %l_1746 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  %41 = bitcast i16* %l_914 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %41) #1
  ret i8 %36
}

; Function Attrs: nounwind uwtable
define internal signext i8 @safe_rshift_func_int8_t_s_u(i8 signext %left, i32 %right) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i32, align 4
  store i8 %left, i8* %1, align 1, !tbaa !9
  store i32 %right, i32* %2, align 4, !tbaa !1
  %3 = load i8, i8* %1, align 1, !tbaa !9
  %4 = sext i8 %3 to i32
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %9, label %6

; <label>:6                                       ; preds = %0
  %7 = load i32, i32* %2, align 4, !tbaa !1
  %8 = icmp uge i32 %7, 32
  br i1 %8, label %9, label %12

; <label>:9                                       ; preds = %6, %0
  %10 = load i8, i8* %1, align 1, !tbaa !9
  %11 = sext i8 %10 to i32
  br label %17

; <label>:12                                      ; preds = %6
  %13 = load i8, i8* %1, align 1, !tbaa !9
  %14 = sext i8 %13 to i32
  %15 = load i32, i32* %2, align 4, !tbaa !1
  %16 = ashr i32 %14, %15
  br label %17

; <label>:17                                      ; preds = %12, %9
  %18 = phi i32 [ %11, %9 ], [ %16, %12 ]
  %19 = trunc i32 %18 to i8
  ret i8 %19
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @safe_unary_minus_func_uint8_t_u(i8 zeroext %ui) #0 {
  %1 = alloca i8, align 1
  store i8 %ui, i8* %1, align 1, !tbaa !9
  %2 = load i8, i8* %1, align 1, !tbaa !9
  %3 = zext i8 %2 to i32
  %4 = sub nsw i32 0, %3
  %5 = trunc i32 %4 to i8
  ret i8 %5
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @safe_lshift_func_uint8_t_u_s(i8 zeroext %left, i32 %right) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i32, align 4
  store i8 %left, i8* %1, align 1, !tbaa !9
  store i32 %right, i32* %2, align 4, !tbaa !1
  %3 = load i32, i32* %2, align 4, !tbaa !1
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %14, label %5

; <label>:5                                       ; preds = %0
  %6 = load i32, i32* %2, align 4, !tbaa !1
  %7 = icmp sge i32 %6, 32
  br i1 %7, label %14, label %8

; <label>:8                                       ; preds = %5
  %9 = load i8, i8* %1, align 1, !tbaa !9
  %10 = zext i8 %9 to i32
  %11 = load i32, i32* %2, align 4, !tbaa !1
  %12 = ashr i32 255, %11
  %13 = icmp sgt i32 %10, %12
  br i1 %13, label %14, label %17

; <label>:14                                      ; preds = %8, %5, %0
  %15 = load i8, i8* %1, align 1, !tbaa !9
  %16 = zext i8 %15 to i32
  br label %22

; <label>:17                                      ; preds = %8
  %18 = load i8, i8* %1, align 1, !tbaa !9
  %19 = zext i8 %18 to i32
  %20 = load i32, i32* %2, align 4, !tbaa !1
  %21 = shl i32 %19, %20
  br label %22

; <label>:22                                      ; preds = %17, %14
  %23 = phi i32 [ %16, %14 ], [ %21, %17 ]
  %24 = trunc i32 %23 to i8
  ret i8 %24
}

; Function Attrs: nounwind uwtable
define internal i32 @safe_add_func_uint32_t_u_u(i32 %ui1, i32 %ui2) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %ui1, i32* %1, align 4, !tbaa !1
  store i32 %ui2, i32* %2, align 4, !tbaa !1
  %3 = load i32, i32* %1, align 4, !tbaa !1
  %4 = load i32, i32* %2, align 4, !tbaa !1
  %5 = add i32 %3, %4
  ret i32 %5
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
define internal zeroext i8 @safe_rshift_func_uint8_t_u_u(i8 zeroext %left, i32 %right) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i32, align 4
  store i8 %left, i8* %1, align 1, !tbaa !9
  store i32 %right, i32* %2, align 4, !tbaa !1
  %3 = load i32, i32* %2, align 4, !tbaa !1
  %4 = icmp uge i32 %3, 32
  br i1 %4, label %5, label %8

; <label>:5                                       ; preds = %0
  %6 = load i8, i8* %1, align 1, !tbaa !9
  %7 = zext i8 %6 to i32
  br label %13

; <label>:8                                       ; preds = %0
  %9 = load i8, i8* %1, align 1, !tbaa !9
  %10 = zext i8 %9 to i32
  %11 = load i32, i32* %2, align 4, !tbaa !1
  %12 = ashr i32 %10, %11
  br label %13

; <label>:13                                      ; preds = %8, %5
  %14 = phi i32 [ %7, %5 ], [ %12, %8 ]
  %15 = trunc i32 %14 to i8
  ret i8 %15
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
