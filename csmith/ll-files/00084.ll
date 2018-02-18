; ModuleID = '00084.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_3 = internal global [9 x i32] [i32 1205839968, i32 1205839968, i32 1205839968, i32 1205839968, i32 1205839968, i32 1205839968, i32 1205839968, i32 1205839968, i32 1205839968], align 16
@.str.1 = private unnamed_addr constant [7 x i8] c"g_3[i]\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_17 = internal global [2 x i32] zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"g_17[i]\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@func_1.l_8 = private unnamed_addr constant [9 x [10 x i32*]] [[10 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_3 to i8*), i64 12) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_3 to i8*), i64 12) to i32*), i32* getelementptr inbounds ([9 x i32], [9 x i32]* @g_3, i32 0, i32 0), i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_3 to i8*), i64 24) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_3 to i8*), i64 24) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_3 to i8*), i64 12) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_3 to i8*), i64 24) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_3 to i8*), i64 24) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_3 to i8*), i64 24) to i32*)], [10 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_3 to i8*), i64 12) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_3 to i8*), i64 24) to i32*), i32* null, i32* null, i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_3 to i8*), i64 24) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_3 to i8*), i64 12) to i32*), i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_3 to i8*), i64 24) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_3 to i8*), i64 24) to i32*)], [10 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_3 to i8*), i64 24) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_3 to i8*), i64 12) to i32*), i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_3 to i8*), i64 24) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_3 to i8*), i64 24) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_3 to i8*), i64 24) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_3 to i8*), i64 24) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_3 to i8*), i64 24) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_3 to i8*), i64 24) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_3 to i8*), i64 12) to i32*)], [10 x i32*] [i32* null, i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_3 to i8*), i64 24) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_3 to i8*), i64 4) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_3 to i8*), i64 24) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_3 to i8*), i64 24) to i32*), i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_3 to i8*), i64 24) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_3 to i8*), i64 24) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_3 to i8*), i64 24) to i32*)], [10 x i32*] [i32* null, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @g_3, i32 0, i32 0), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_3 to i8*), i64 12) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_3 to i8*), i64 4) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_3 to i8*), i64 12) to i32*), i32* getelementptr inbounds ([9 x i32], [9 x i32]* @g_3, i32 0, i32 0), i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_3 to i8*), i64 12) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_3 to i8*), i64 24) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_3 to i8*), i64 24) to i32*)], [10 x i32*] [i32* getelementptr inbounds ([9 x i32], [9 x i32]* @g_3, i32 0, i32 0), i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_3 to i8*), i64 12) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_3 to i8*), i64 24) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_3 to i8*), i64 24) to i32*), i32* getelementptr inbounds ([9 x i32], [9 x i32]* @g_3, i32 0, i32 0), i32* getelementptr inbounds ([9 x i32], [9 x i32]* @g_3, i32 0, i32 0), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_3 to i8*), i64 24) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_3 to i8*), i64 24) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_3 to i8*), i64 12) to i32*)], [10 x i32*] [i32* null, i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_3 to i8*), i64 24) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_3 to i8*), i64 4) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_3 to i8*), i64 24) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_3 to i8*), i64 24) to i32*), i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_3 to i8*), i64 24) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_3 to i8*), i64 24) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_3 to i8*), i64 24) to i32*)], [10 x i32*] [i32* null, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @g_3, i32 0, i32 0), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_3 to i8*), i64 12) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_3 to i8*), i64 4) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_3 to i8*), i64 12) to i32*), i32* getelementptr inbounds ([9 x i32], [9 x i32]* @g_3, i32 0, i32 0), i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_3 to i8*), i64 12) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_3 to i8*), i64 24) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_3 to i8*), i64 24) to i32*)], [10 x i32*] [i32* getelementptr inbounds ([9 x i32], [9 x i32]* @g_3, i32 0, i32 0), i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_3 to i8*), i64 12) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_3 to i8*), i64 24) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_3 to i8*), i64 24) to i32*), i32* getelementptr inbounds ([9 x i32], [9 x i32]* @g_3, i32 0, i32 0), i32* getelementptr inbounds ([9 x i32], [9 x i32]* @g_3, i32 0, i32 0), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_3 to i8*), i64 24) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_3 to i8*), i64 24) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_3 to i8*), i64 12) to i32*)]], align 16
@func_1.l_10 = private unnamed_addr constant [1 x [10 x [9 x i64]]] [[10 x [9 x i64]] [[9 x i64] [i64 5555264551539976383, i64 5555264551539976383, i64 1, i64 6006494612179177677, i64 -7, i64 5, i64 -8795602146332066883, i64 2838768624189688543, i64 -1655477470504900551], [9 x i64] [i64 1, i64 -3, i64 0, i64 -5316063690626122903, i64 1, i64 0, i64 0, i64 1, i64 -5316063690626122903], [9 x i64] [i64 1, i64 5, i64 1, i64 -3, i64 1, i64 -9, i64 0, i64 -1655477470504900551, i64 -7], [9 x i64] [i64 1, i64 0, i64 1, i64 8958322426474216680, i64 -8, i64 -3233649192273498975, i64 -5316063690626122903, i64 -3233649192273498975, i64 -8], [9 x i64] [i64 -3, i64 7932140214436025792, i64 7932140214436025792, i64 -3, i64 -8533814159454394643, i64 -6341923542595957137, i64 2838768624189688543, i64 -2579780479509882134, i64 0], [9 x i64] [i64 2772512748937820397, i64 -8, i64 1, i64 -5316063690626122903, i64 0, i64 8958322426474216680, i64 6192199405129798986, i64 6192199405129798986, i64 8958322426474216680], [9 x i64] [i64 -8533814159454394643, i64 6006494612179177677, i64 -3, i64 6006494612179177677, i64 -8533814159454394643, i64 -2579780479509882134, i64 1, i64 -8795602146332066883, i64 7932140214436025792], [9 x i64] [i64 0, i64 1, i64 -3233649192273498975, i64 2772512748937820397, i64 -8, i64 -8, i64 1, i64 -3, i64 1], [9 x i64] [i64 -2579780479509882134, i64 1, i64 1, i64 1, i64 1, i64 -2579780479509882134, i64 5, i64 -8533814159454394643, i64 5555264551539976383], [9 x i64] [i64 9, i64 6192199405129798986, i64 -3, i64 -8, i64 1, i64 8958322426474216680, i64 1, i64 8025527761006495664, i64 8025527761006495664]]], align 16
@g_36 = internal global i32** bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i32*]* @g_37 to i8*), i64 8) to i32**), align 8
@func_13.l_29 = private unnamed_addr constant [8 x i64] [i64 7251859749716669669, i64 7251859749716669669, i64 7251859749716669669, i64 7251859749716669669, i64 7251859749716669669, i64 7251859749716669669, i64 7251859749716669669, i64 7251859749716669669], align 16
@g_37 = internal global [8 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_3 to i8*), i64 24) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_3 to i8*), i64 24) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_3 to i8*), i64 24) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_3 to i8*), i64 24) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_3 to i8*), i64 24) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_3 to i8*), i64 24) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_3 to i8*), i64 24) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_3 to i8*), i64 24) to i32*)], align 16
@.str.4 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

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
  store i32 0, i32* %1
  store i32 %argc, i32* %2, align 4, !tbaa !1
  store i8** %argv, i8*** %3, align 8, !tbaa !5
  %6 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
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
  %88 = call zeroext i8 @func_1()
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %89

; <label>:89                                      ; preds = %105, %87
  %90 = load i32, i32* %i, align 4, !tbaa !1
  %91 = icmp slt i32 %90, 9
  br i1 %91, label %92, label %108

; <label>:92                                      ; preds = %89
  %93 = load i32, i32* %i, align 4, !tbaa !1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [9 x i32], [9 x i32]* @g_3, i32 0, i64 %94
  %96 = load i32, i32* %95, align 4, !tbaa !1
  %97 = sext i32 %96 to i64
  %98 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %97, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 %98)
  %99 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

; <label>:101                                     ; preds = %92
  %102 = load i32, i32* %i, align 4, !tbaa !1
  %103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 %102)
  br label %104

; <label>:104                                     ; preds = %101, %92
  br label %105

; <label>:105                                     ; preds = %104
  %106 = load i32, i32* %i, align 4, !tbaa !1
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %i, align 4, !tbaa !1
  br label %89

; <label>:108                                     ; preds = %89
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %109

; <label>:109                                     ; preds = %125, %108
  %110 = load i32, i32* %i, align 4, !tbaa !1
  %111 = icmp slt i32 %110, 2
  br i1 %111, label %112, label %128

; <label>:112                                     ; preds = %109
  %113 = load i32, i32* %i, align 4, !tbaa !1
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [2 x i32], [2 x i32]* @g_17, i32 0, i64 %114
  %116 = load i32, i32* %115, align 4, !tbaa !1
  %117 = zext i32 %116 to i64
  %118 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %117, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 %118)
  %119 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

; <label>:121                                     ; preds = %112
  %122 = load i32, i32* %i, align 4, !tbaa !1
  %123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 %122)
  br label %124

; <label>:124                                     ; preds = %121, %112
  br label %125

; <label>:125                                     ; preds = %124
  %126 = load i32, i32* %i, align 4, !tbaa !1
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %i, align 4, !tbaa !1
  br label %109

; <label>:128                                     ; preds = %109
  %129 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %130 = zext i32 %129 to i64
  %131 = xor i64 %130, 4294967295
  %132 = trunc i64 %131 to i32
  %133 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %132, i32 %133)
  %134 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %134) #1
  %135 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %135) #1
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
  %l_2 = alloca i32*, align 8
  %l_4 = alloca i32*, align 8
  %l_5 = alloca i32*, align 8
  %l_6 = alloca i32*, align 8
  %l_7 = alloca i32*, align 8
  %l_8 = alloca [9 x [10 x i32*]], align 16
  %l_9 = alloca i32, align 4
  %l_10 = alloca [1 x [10 x [9 x i64]]], align 16
  %l_16 = alloca [1 x [1 x i32*]], align 8
  %l_35 = alloca i32**, align 8
  %l_38 = alloca i16, align 2
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %1 = bitcast i32** %l_2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store i32* getelementptr inbounds ([9 x i32], [9 x i32]* @g_3, i32 0, i64 6), i32** %l_2, align 8, !tbaa !5
  %2 = bitcast i32** %l_4 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store i32* getelementptr inbounds ([9 x i32], [9 x i32]* @g_3, i32 0, i64 4), i32** %l_4, align 8, !tbaa !5
  %3 = bitcast i32** %l_5 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store i32* getelementptr inbounds ([9 x i32], [9 x i32]* @g_3, i32 0, i64 6), i32** %l_5, align 8, !tbaa !5
  %4 = bitcast i32** %l_6 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store i32* getelementptr inbounds ([9 x i32], [9 x i32]* @g_3, i32 0, i64 2), i32** %l_6, align 8, !tbaa !5
  %5 = bitcast i32** %l_7 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store i32* getelementptr inbounds ([9 x i32], [9 x i32]* @g_3, i32 0, i64 6), i32** %l_7, align 8, !tbaa !5
  %6 = bitcast [9 x [10 x i32*]]* %l_8 to i8*
  call void @llvm.lifetime.start(i64 720, i8* %6) #1
  %7 = bitcast [9 x [10 x i32*]]* %l_8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* bitcast ([9 x [10 x i32*]]* @func_1.l_8 to i8*), i64 720, i32 16, i1 false)
  %8 = bitcast i32* %l_9 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  store i32 871537805, i32* %l_9, align 4, !tbaa !1
  %9 = bitcast [1 x [10 x [9 x i64]]]* %l_10 to i8*
  call void @llvm.lifetime.start(i64 720, i8* %9) #1
  %10 = bitcast [1 x [10 x [9 x i64]]]* %l_10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* bitcast ([1 x [10 x [9 x i64]]]* @func_1.l_10 to i8*), i64 720, i32 16, i1 false)
  %11 = bitcast [1 x [1 x i32*]]* %l_16 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast i32*** %l_35 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  store i32** null, i32*** %l_35, align 8, !tbaa !5
  %13 = bitcast i16* %l_38 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %13) #1
  store i16 -5, i16* %l_38, align 2, !tbaa !10
  %14 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %17

; <label>:17                                      ; preds = %35, %0
  %18 = load i32, i32* %i, align 4, !tbaa !1
  %19 = icmp slt i32 %18, 1
  br i1 %19, label %20, label %38

; <label>:20                                      ; preds = %17
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %21

; <label>:21                                      ; preds = %31, %20
  %22 = load i32, i32* %j, align 4, !tbaa !1
  %23 = icmp slt i32 %22, 1
  br i1 %23, label %24, label %34

; <label>:24                                      ; preds = %21
  %25 = load i32, i32* %j, align 4, !tbaa !1
  %26 = sext i32 %25 to i64
  %27 = load i32, i32* %i, align 4, !tbaa !1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [1 x [1 x i32*]], [1 x [1 x i32*]]* %l_16, i32 0, i64 %28
  %30 = getelementptr inbounds [1 x i32*], [1 x i32*]* %29, i32 0, i64 %26
  store i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_17, i32 0, i64 1), i32** %30, align 8, !tbaa !5
  br label %31

; <label>:31                                      ; preds = %24
  %32 = load i32, i32* %j, align 4, !tbaa !1
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %j, align 4, !tbaa !1
  br label %21

; <label>:34                                      ; preds = %21
  br label %35

; <label>:35                                      ; preds = %34
  %36 = load i32, i32* %i, align 4, !tbaa !1
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %i, align 4, !tbaa !1
  br label %17

; <label>:38                                      ; preds = %17
  %39 = getelementptr inbounds [1 x [10 x [9 x i64]]], [1 x [10 x [9 x i64]]]* %l_10, i32 0, i64 0
  %40 = getelementptr inbounds [10 x [9 x i64]], [10 x [9 x i64]]* %39, i32 0, i64 1
  %41 = getelementptr inbounds [9 x i64], [9 x i64]* %40, i32 0, i64 7
  %42 = load i64, i64* %41, align 8, !tbaa !7
  %43 = add i64 %42, -1
  store i64 %43, i64* %41, align 8, !tbaa !7
  %44 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_17, i32 0, i64 1), align 4, !tbaa !1
  %45 = add i32 %44, -1
  store i32 %45, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_17, i32 0, i64 1), align 4, !tbaa !1
  %46 = getelementptr inbounds [1 x [1 x i32*]], [1 x [1 x i32*]]* %l_16, i32 0, i64 0
  %47 = getelementptr inbounds [1 x i32*], [1 x i32*]* %46, i32 0, i64 0
  %48 = load i32*, i32** %47, align 8, !tbaa !5
  %49 = call i32* @func_13(i32 %45, i32* %48)
  %50 = load volatile i32**, i32*** @g_36, align 8, !tbaa !5
  store i32* %49, i32** %50, align 8, !tbaa !5
  %51 = load i16, i16* %l_38, align 2, !tbaa !10
  %52 = trunc i16 %51 to i8
  %53 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #1
  %54 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #1
  %55 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #1
  %56 = bitcast i16* %l_38 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %56) #1
  %57 = bitcast i32*** %l_35 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %57) #1
  %58 = bitcast [1 x [1 x i32*]]* %l_16 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #1
  %59 = bitcast [1 x [10 x [9 x i64]]]* %l_10 to i8*
  call void @llvm.lifetime.end(i64 720, i8* %59) #1
  %60 = bitcast i32* %l_9 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #1
  %61 = bitcast [9 x [10 x i32*]]* %l_8 to i8*
  call void @llvm.lifetime.end(i64 720, i8* %61) #1
  %62 = bitcast i32** %l_7 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #1
  %63 = bitcast i32** %l_6 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #1
  %64 = bitcast i32** %l_5 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #1
  %65 = bitcast i32** %l_4 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #1
  %66 = bitcast i32** %l_2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #1
  ret i8 %52
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
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i32 0, i32 0), i8* %8, i64 %11)
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
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i32 %3)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal i32* @func_13(i32 %p_14, i32* %p_15) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %l_20 = alloca i32*, align 8
  %l_21 = alloca i32*, align 8
  %l_22 = alloca i32*, align 8
  %l_23 = alloca i32*, align 8
  %l_24 = alloca i32*, align 8
  %l_25 = alloca i32*, align 8
  %l_26 = alloca i32, align 4
  %l_27 = alloca i32*, align 8
  %l_28 = alloca [9 x i32*], align 16
  %l_29 = alloca [8 x i64], align 16
  %l_30 = alloca i32, align 4
  %l_31 = alloca i16, align 2
  %l_34 = alloca i32**, align 8
  %i = alloca i32, align 4
  store i32 %p_14, i32* %1, align 4, !tbaa !1
  store i32* %p_15, i32** %2, align 8, !tbaa !5
  %3 = bitcast i32** %l_20 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store i32* null, i32** %l_20, align 8, !tbaa !5
  %4 = bitcast i32** %l_21 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store i32* null, i32** %l_21, align 8, !tbaa !5
  %5 = bitcast i32** %l_22 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store i32* getelementptr inbounds ([9 x i32], [9 x i32]* @g_3, i32 0, i64 6), i32** %l_22, align 8, !tbaa !5
  %6 = bitcast i32** %l_23 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i32* null, i32** %l_23, align 8, !tbaa !5
  %7 = bitcast i32** %l_24 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store i32* getelementptr inbounds ([9 x i32], [9 x i32]* @g_3, i32 0, i64 6), i32** %l_24, align 8, !tbaa !5
  %8 = bitcast i32** %l_25 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i32* null, i32** %l_25, align 8, !tbaa !5
  %9 = bitcast i32* %l_26 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 -1720486222, i32* %l_26, align 4, !tbaa !1
  %10 = bitcast i32** %l_27 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i32* null, i32** %l_27, align 8, !tbaa !5
  %11 = bitcast [9 x i32*]* %l_28 to i8*
  call void @llvm.lifetime.start(i64 72, i8* %11) #1
  %12 = bitcast [9 x i32*]* %l_28 to i8*
  call void @llvm.memset.p0i8.i64(i8* %12, i8 0, i64 72, i32 16, i1 false)
  %13 = bitcast i8* %12 to [9 x i32*]*
  %14 = getelementptr [9 x i32*], [9 x i32*]* %13, i32 0, i32 2
  store i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_3 to i8*), i64 16) to i32*), i32** %14
  %15 = getelementptr [9 x i32*], [9 x i32*]* %13, i32 0, i32 5
  store i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_3 to i8*), i64 16) to i32*), i32** %15
  %16 = getelementptr [9 x i32*], [9 x i32*]* %13, i32 0, i32 8
  store i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_3 to i8*), i64 16) to i32*), i32** %16
  %17 = bitcast [8 x i64]* %l_29 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %17) #1
  %18 = bitcast [8 x i64]* %l_29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* bitcast ([8 x i64]* @func_13.l_29 to i8*), i64 64, i32 16, i1 false)
  %19 = bitcast i32* %l_30 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  store i32 -1831687993, i32* %l_30, align 4, !tbaa !1
  %20 = bitcast i16* %l_31 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %20) #1
  store i16 -32134, i16* %l_31, align 2, !tbaa !10
  %21 = bitcast i32*** %l_34 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  store i32** %l_23, i32*** %l_34, align 8, !tbaa !5
  %22 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  store i32* null, i32** %l_20, align 8, !tbaa !5
  store i32 0, i32* %1, align 4, !tbaa !1
  br label %23

; <label>:23                                      ; preds = %30, %0
  %24 = load i32, i32* %1, align 4, !tbaa !1
  %25 = icmp ult i32 %24, 2
  br i1 %25, label %26, label %33

; <label>:26                                      ; preds = %23
  %27 = load i32, i32* %1, align 4, !tbaa !1
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* @g_17, i32 0, i64 %28
  store i32 1429960829, i32* %29, align 4, !tbaa !1
  br label %30

; <label>:30                                      ; preds = %26
  %31 = load i32, i32* %1, align 4, !tbaa !1
  %32 = add i32 %31, 1
  store i32 %32, i32* %1, align 4, !tbaa !1
  br label %23

; <label>:33                                      ; preds = %23
  %34 = load i16, i16* %l_31, align 2, !tbaa !10
  %35 = add i16 %34, 1
  store i16 %35, i16* %l_31, align 2, !tbaa !10
  %36 = load i32**, i32*** %l_34, align 8, !tbaa !5
  store i32* null, i32** %36, align 8, !tbaa !5
  %37 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %38 = bitcast i32*** %l_34 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  %39 = bitcast i16* %l_31 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %39) #1
  %40 = bitcast i32* %l_30 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  %41 = bitcast [8 x i64]* %l_29 to i8*
  call void @llvm.lifetime.end(i64 64, i8* %41) #1
  %42 = bitcast [9 x i32*]* %l_28 to i8*
  call void @llvm.lifetime.end(i64 72, i8* %42) #1
  %43 = bitcast i32** %l_27 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  %44 = bitcast i32* %l_26 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  %45 = bitcast i32** %l_25 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  %46 = bitcast i32** %l_24 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #1
  %47 = bitcast i32** %l_23 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  %48 = bitcast i32** %l_22 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  %49 = bitcast i32** %l_21 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  %50 = bitcast i32** %l_20 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #1
  ret i32* getelementptr inbounds ([9 x i32], [9 x i32]* @g_3, i32 0, i64 6)
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

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
