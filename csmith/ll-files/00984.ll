; ModuleID = '00984.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.U4 = type { i32 }
%struct.S0 = type { i16 }
%union.U3 = type { i16 }
%union.U2 = type { i8* }

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_8 = internal global i64 -3962363947389390716, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"g_8\00", align 1
@g_18 = internal global [4 x i8] c"\B5\B5\B5\B5", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"g_18[i]\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_42 = internal global [7 x i32] [i32 1314240090, i32 1314240090, i32 1490039661, i32 1314240090, i32 1314240090, i32 1490039661, i32 1314240090], align 16
@.str.4 = private unnamed_addr constant [8 x i8] c"g_42[i]\00", align 1
@g_47 = internal global [9 x i16] [i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6], align 16
@.str.5 = private unnamed_addr constant [8 x i8] c"g_47[i]\00", align 1
@g_62 = internal global %union.U4 zeroinitializer, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"g_62.f0\00", align 1
@g_69 = internal global %struct.S0 { i16 21388 }, align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"g_69.f0\00", align 1
@g_86 = internal global i16 0, align 2
@.str.8 = private unnamed_addr constant [5 x i8] c"g_86\00", align 1
@g_89 = internal global i8 -53, align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"g_89\00", align 1
@g_94 = internal global i16 -1742, align 2
@.str.10 = private unnamed_addr constant [5 x i8] c"g_94\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"g_97.f0\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"g_97.f2\00", align 1
@g_101 = internal global i32 -1, align 4
@.str.13 = private unnamed_addr constant [6 x i8] c"g_101\00", align 1
@g_155 = internal global [4 x i8] c"\FF\FF\FF\FF", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"g_155[i]\00", align 1
@g_164 = internal global %struct.S0 { i16 2064 }, align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"g_164.f0\00", align 1
@g_178 = internal global %struct.S0 { i16 -14965 }, align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"g_178.f0\00", align 1
@g_208 = internal global [7 x [4 x [5 x i64]]] [[4 x [5 x i64]] [[5 x i64] [i64 -3075138233737518833, i64 5376202780924283318, i64 8163856872641224861, i64 8163856872641224861, i64 5376202780924283318], [5 x i64] [i64 -7786761105530062345, i64 1, i64 1, i64 1, i64 1], [5 x i64] [i64 -3075138233737518833, i64 5376202780924283318, i64 8163856872641224861, i64 8163856872641224861, i64 5376202780924283318], [5 x i64] [i64 -7786761105530062345, i64 1, i64 1, i64 1, i64 1]], [4 x [5 x i64]] [[5 x i64] [i64 -3075138233737518833, i64 5376202780924283318, i64 8163856872641224861, i64 8163856872641224861, i64 5376202780924283318], [5 x i64] [i64 -7786761105530062345, i64 1, i64 1, i64 1, i64 1], [5 x i64] [i64 -3075138233737518833, i64 5376202780924283318, i64 8163856872641224861, i64 8163856872641224861, i64 5376202780924283318], [5 x i64] [i64 -7786761105530062345, i64 1, i64 1, i64 1, i64 1]], [4 x [5 x i64]] [[5 x i64] [i64 -3075138233737518833, i64 5376202780924283318, i64 8163856872641224861, i64 8163856872641224861, i64 5376202780924283318], [5 x i64] [i64 -7786761105530062345, i64 1, i64 1, i64 1, i64 1], [5 x i64] [i64 -3075138233737518833, i64 5376202780924283318, i64 8163856872641224861, i64 8163856872641224861, i64 5376202780924283318], [5 x i64] [i64 -7786761105530062345, i64 1, i64 1, i64 1, i64 1]], [4 x [5 x i64]] [[5 x i64] [i64 -3075138233737518833, i64 5376202780924283318, i64 8163856872641224861, i64 8163856872641224861, i64 5376202780924283318], [5 x i64] [i64 -7786761105530062345, i64 1, i64 1, i64 1, i64 1], [5 x i64] [i64 -3075138233737518833, i64 5376202780924283318, i64 8163856872641224861, i64 8163856872641224861, i64 5376202780924283318], [5 x i64] [i64 -7786761105530062345, i64 1, i64 1, i64 1, i64 1]], [4 x [5 x i64]] [[5 x i64] [i64 -3075138233737518833, i64 5376202780924283318, i64 8163856872641224861, i64 8163856872641224861, i64 5376202780924283318], [5 x i64] [i64 -7786761105530062345, i64 1, i64 1, i64 1, i64 1], [5 x i64] [i64 -3075138233737518833, i64 5376202780924283318, i64 8163856872641224861, i64 8163856872641224861, i64 5376202780924283318], [5 x i64] [i64 -7786761105530062345, i64 1, i64 1, i64 1, i64 1]], [4 x [5 x i64]] [[5 x i64] [i64 -3075138233737518833, i64 5376202780924283318, i64 8163856872641224861, i64 8163856872641224861, i64 5376202780924283318], [5 x i64] [i64 -7786761105530062345, i64 1, i64 1, i64 1, i64 1], [5 x i64] [i64 -3075138233737518833, i64 5376202780924283318, i64 8163856872641224861, i64 8163856872641224861, i64 5376202780924283318], [5 x i64] [i64 -7786761105530062345, i64 1, i64 1, i64 1, i64 1]], [4 x [5 x i64]] [[5 x i64] [i64 -3075138233737518833, i64 5376202780924283318, i64 8163856872641224861, i64 8163856872641224861, i64 5376202780924283318], [5 x i64] [i64 -7786761105530062345, i64 1, i64 1, i64 1, i64 0], [5 x i64] [i64 -1, i64 2, i64 5376202780924283318, i64 5376202780924283318, i64 2], [5 x i64] [i64 5792461338960912119, i64 0, i64 1, i64 1, i64 0]]], align 16
@.str.17 = private unnamed_addr constant [15 x i8] c"g_208[i][j][k]\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"index = [%d][%d][%d]\0A\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"g_238.f0\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"g_238.f2\00", align 1
@g_253 = internal global i64 -1675636750435101586, align 8
@.str.21 = private unnamed_addr constant [6 x i8] c"g_253\00", align 1
@g_278 = internal global [9 x i8] c"\01\01\C3\01\01\C3\01\01\C3", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"g_278[i]\00", align 1
@g_288 = internal global i8 121, align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"g_288\00", align 1
@g_300 = internal global %union.U3 { i16 -10 }, align 2
@.str.24 = private unnamed_addr constant [9 x i8] c"g_300.f0\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"g_300.f1.f0\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"g_300.f2\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"g_300.f3\00", align 1
@g_331 = internal global i32 -10, align 4
@.str.28 = private unnamed_addr constant [6 x i8] c"g_331\00", align 1
@g_382 = internal global i64 1, align 8
@.str.29 = private unnamed_addr constant [6 x i8] c"g_382\00", align 1
@g_411 = internal global i32 -1, align 4
@.str.30 = private unnamed_addr constant [6 x i8] c"g_411\00", align 1
@g_437 = internal global i64 2165660548582713436, align 8
@.str.31 = private unnamed_addr constant [6 x i8] c"g_437\00", align 1
@g_480 = internal global i32 922716704, align 4
@.str.32 = private unnamed_addr constant [6 x i8] c"g_480\00", align 1
@g_481 = internal global [5 x i16] [i16 -8, i16 -8, i16 -8, i16 -8, i16 -8], align 2
@.str.33 = private unnamed_addr constant [9 x i8] c"g_481[i]\00", align 1
@g_525 = internal constant %struct.S0 { i16 1 }, align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"g_525.f0\00", align 1
@g_539 = internal global %union.U3 { i16 2 }, align 2
@.str.35 = private unnamed_addr constant [9 x i8] c"g_539.f0\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"g_539.f1.f0\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"g_539.f2\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"g_539.f3\00", align 1
@g_579 = internal global %struct.S0 { i16 1 }, align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"g_579.f0\00", align 1
@g_605 = internal global [4 x [7 x i8]] [[7 x i8] c"\09\15\FE\00\00\FE\15", [7 x i8] c"\FE\06\15\00\01\F7\09", [7 x i8] c"\FE\E4\9F\15\9F\E4\FE", [7 x i8] c"\09\F7\01\00\15\06\FE"], align 16
@.str.40 = private unnamed_addr constant [12 x i8] c"g_605[i][j]\00", align 1
@.str.41 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@g_662 = internal global %struct.S0 zeroinitializer, align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"g_662.f0\00", align 1
@g_812 = internal global [8 x %struct.S0] [%struct.S0 { i16 2 }, %struct.S0 { i16 1 }, %struct.S0 { i16 1 }, %struct.S0 { i16 2 }, %struct.S0 { i16 1 }, %struct.S0 { i16 1 }, %struct.S0 { i16 2 }, %struct.S0 { i16 1 }], align 16
@.str.43 = private unnamed_addr constant [12 x i8] c"g_812[i].f0\00", align 1
@g_845 = internal global i8 4, align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"g_845\00", align 1
@g_892 = internal global %struct.S0 zeroinitializer, align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"g_892.f0\00", align 1
@g_916 = internal global i32 -1, align 4
@.str.46 = private unnamed_addr constant [6 x i8] c"g_916\00", align 1
@g_1014 = internal global [1 x %union.U4] [%union.U4 { i32 -219226145 }], align 4
@.str.47 = private unnamed_addr constant [13 x i8] c"g_1014[i].f0\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@func_1.l_657 = private unnamed_addr constant [9 x [4 x [7 x i8]]] [[4 x [7 x i8]] [[7 x i8] c"\09\85\00\FA\FA\00\85", [7 x i8] c"\F6\5C_\F6\00\00\F6", [7 x i8] c"\06\85\06\D5\85\07\07", [7 x i8] c"M\F6\00\F6M\009"], [4 x [7 x i8]] [[7 x i8] c"\FA\07\D5\FA\D5\07\FA", [7 x i8] c"_9\5C\009\B3\00", [7 x i8] c"\06\06\FA\07\D5\FA\D5", [7 x i8] c"\5C\00\00\5C\B3\FF\5C"], [4 x [7 x i8]] [[7 x i8] c"\FF\D5EE\D5\FF\00", [7 x i8] c"\00\5C9__9\5C", [7 x i8] c"\D5\00\FF\D5EE\D5", [7 x i8] c"\FF\5C\FF\B3\5C\00\00"], [4 x [7 x i8]] [[7 x i8] c"\07\D5\FA\D5\07\FA\06", [7 x i8] c"_\00\B3_\B3\00_", [7 x i8] c"\FF\06\00E\06E\00", [7 x i8] c"__9\5C\009\00"], [4 x [7 x i8]] [[7 x i8] c"\07\00\00\07E\FF\07", [7 x i8] c"\FF\00\B3\B3\00\FF\00", [7 x i8] c"\D5\07\FA\06\06\FA\07", [7 x i8] c"\00\00\FF\00\B3\B3\00"], [4 x [7 x i8]] [[7 x i8] c"\FF\07\FFE\07\00\00", [7 x i8] c"\5C\009\00\5C9_", [7 x i8] c"\06\00E\06E\00\06", [7 x i8] c"\FF_\00\B3_\B3\00"], [4 x [7 x i8]] [[7 x i8] c"\06\06\FA\07\D5\FA\D5", [7 x i8] c"\5C\00\00\5C\B3\FF\5C", [7 x i8] c"\FF\D5EE\D5\FF\00", [7 x i8] c"\00\5C9__9\5C"], [4 x [7 x i8]] [[7 x i8] c"\D5\00\FF\D5EE\D5", [7 x i8] c"\FF\5C\FF\B3\5C\00\00", [7 x i8] c"\07\D5\FA\D5\07\FA\06", [7 x i8] c"_\00\B3_\B3\00_"], [4 x [7 x i8]] [[7 x i8] c"\FF\06\00E\06E\00", [7 x i8] c"\FF\FF_\00\B3_\B3", [7 x i8] c"\00\FA\FA\00\85\09\00", [7 x i8] c"\F6\B3MM\B3\F69"]], align 16
@func_1.l_1048 = private unnamed_addr constant [8 x %union.U4*] [%union.U4* @g_62, %union.U4* @g_62, %union.U4* null, %union.U4* @g_62, %union.U4* @g_62, %union.U4* null, %union.U4* @g_62, %union.U4* @g_62], align 16
@.str.48 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@g_97 = internal global { i32, [4 x i8] } { i32 829832938, [4 x i8] undef }, align 8
@g_238 = internal global { i32, [4 x i8] } { i32 -538079111, [4 x i8] undef }, align 8
@.str.49 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

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
  %6 = alloca %union.U2, align 8
  store i32 0, i32* %1
  store i32 %argc, i32* %2, align 4, !tbaa !1
  store i8** %argv, i8*** %3, align 8, !tbaa !5
  %7 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  store i32 0, i32* %print_hash_value, align 4, !tbaa !1
  %11 = load i32, i32* %2, align 4, !tbaa !1
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %13, label %90

; <label>:13                                      ; preds = %0
  %14 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i64 1) to i64), i64 ptrtoint ([2 x i8]* @.str to i64)), i64 1), label %16, label %78

; <label>:16                                      ; preds = %13
  store i64 1, i64* %__s2_len, align 8, !tbaa !7
  %17 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %18 = icmp ult i64 %17, 4
  br i1 %18, label %19, label %78

; <label>:19                                      ; preds = %16
  %20 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  %21 = load i8**, i8*** %3, align 8, !tbaa !5
  %22 = getelementptr inbounds i8*, i8** %21, i64 1
  %23 = load i8*, i8** %22, align 8, !tbaa !5
  store i8* %23, i8** %__s1, align 8, !tbaa !5
  %24 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = load i8*, i8** %__s1, align 8, !tbaa !5
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1, !tbaa !9
  %28 = zext i8 %27 to i32
  %29 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), align 1, !tbaa !9
  %30 = zext i8 %29 to i32
  %31 = sub nsw i32 %28, %30
  store i32 %31, i32* %__result, align 4, !tbaa !1
  %32 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %33 = icmp ugt i64 %32, 0
  br i1 %33, label %34, label %73

; <label>:34                                      ; preds = %19
  %35 = load i32, i32* %__result, align 4, !tbaa !1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %73

; <label>:37                                      ; preds = %34
  %38 = load i8*, i8** %__s1, align 8, !tbaa !5
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  %40 = load i8, i8* %39, align 1, !tbaa !9
  %41 = zext i8 %40 to i32
  %42 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i64 1), align 1, !tbaa !9
  %43 = zext i8 %42 to i32
  %44 = sub nsw i32 %41, %43
  store i32 %44, i32* %__result, align 4, !tbaa !1
  %45 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %46 = icmp ugt i64 %45, 1
  br i1 %46, label %47, label %72

; <label>:47                                      ; preds = %37
  %48 = load i32, i32* %__result, align 4, !tbaa !1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %72

; <label>:50                                      ; preds = %47
  %51 = load i8*, i8** %__s1, align 8, !tbaa !5
  %52 = getelementptr inbounds i8, i8* %51, i64 2
  %53 = load i8, i8* %52, align 1, !tbaa !9
  %54 = zext i8 %53 to i32
  %55 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i64 2), align 1, !tbaa !9
  %56 = zext i8 %55 to i32
  %57 = sub nsw i32 %54, %56
  store i32 %57, i32* %__result, align 4, !tbaa !1
  %58 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %59 = icmp ugt i64 %58, 2
  br i1 %59, label %60, label %71

; <label>:60                                      ; preds = %50
  %61 = load i32, i32* %__result, align 4, !tbaa !1
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %71

; <label>:63                                      ; preds = %60
  %64 = load i8*, i8** %__s1, align 8, !tbaa !5
  %65 = getelementptr inbounds i8, i8* %64, i64 3
  %66 = load i8, i8* %65, align 1, !tbaa !9
  %67 = zext i8 %66 to i32
  %68 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i64 3), align 1, !tbaa !9
  %69 = zext i8 %68 to i32
  %70 = sub nsw i32 %67, %69
  store i32 %70, i32* %__result, align 4, !tbaa !1
  br label %71

; <label>:71                                      ; preds = %63, %60, %50
  br label %72

; <label>:72                                      ; preds = %71, %47, %37
  br label %73

; <label>:73                                      ; preds = %72, %34, %19
  %74 = load i32, i32* %__result, align 4, !tbaa !1
  store i32 %74, i32* %5, !tbaa !1
  %75 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #1
  %76 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #1
  %77 = load i32, i32* %5, !tbaa !1
  br label %83

; <label>:78                                      ; preds = %16, %13
  %79 = load i8**, i8*** %3, align 8, !tbaa !5
  %80 = getelementptr inbounds i8*, i8** %79, i64 1
  %81 = load i8*, i8** %80, align 8, !tbaa !5
  %82 = call i32 @strcmp(i8* %81, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0)) #1
  br label %83

; <label>:83                                      ; preds = %78, %73
  %84 = phi i32 [ %77, %73 ], [ %82, %78 ]
  store i32 %84, i32* %4, !tbaa !1
  %85 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %85) #1
  %86 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %86) #1
  %87 = load i32, i32* %4, !tbaa !1
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %90

; <label>:89                                      ; preds = %83
  store i32 1, i32* %print_hash_value, align 4, !tbaa !1
  br label %90

; <label>:90                                      ; preds = %89, %83, %0
  call void @platform_main_begin()
  call void @crc32_gentab()
  %91 = call i8* @func_1()
  %92 = getelementptr %union.U2, %union.U2* %6, i32 0, i32 0
  store i8* %91, i8** %92, align 8
  %93 = load i64, i64* @g_8, align 8, !tbaa !7
  %94 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %93, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %94)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %95

; <label>:95                                      ; preds = %111, %90
  %96 = load i32, i32* %i, align 4, !tbaa !1
  %97 = icmp slt i32 %96, 4
  br i1 %97, label %98, label %114

; <label>:98                                      ; preds = %95
  %99 = load i32, i32* %i, align 4, !tbaa !1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [4 x i8], [4 x i8]* @g_18, i32 0, i64 %100
  %102 = load i8, i8* %101, align 1, !tbaa !9
  %103 = sext i8 %102 to i64
  %104 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %103, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32 %104)
  %105 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

; <label>:107                                     ; preds = %98
  %108 = load i32, i32* %i, align 4, !tbaa !1
  %109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i32 %108)
  br label %110

; <label>:110                                     ; preds = %107, %98
  br label %111

; <label>:111                                     ; preds = %110
  %112 = load i32, i32* %i, align 4, !tbaa !1
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %i, align 4, !tbaa !1
  br label %95

; <label>:114                                     ; preds = %95
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %115

; <label>:115                                     ; preds = %131, %114
  %116 = load i32, i32* %i, align 4, !tbaa !1
  %117 = icmp slt i32 %116, 7
  br i1 %117, label %118, label %134

; <label>:118                                     ; preds = %115
  %119 = load i32, i32* %i, align 4, !tbaa !1
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [7 x i32], [7 x i32]* @g_42, i32 0, i64 %120
  %122 = load i32, i32* %121, align 4, !tbaa !1
  %123 = sext i32 %122 to i64
  %124 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %123, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 %124)
  %125 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

; <label>:127                                     ; preds = %118
  %128 = load i32, i32* %i, align 4, !tbaa !1
  %129 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i32 %128)
  br label %130

; <label>:130                                     ; preds = %127, %118
  br label %131

; <label>:131                                     ; preds = %130
  %132 = load i32, i32* %i, align 4, !tbaa !1
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %i, align 4, !tbaa !1
  br label %115

; <label>:134                                     ; preds = %115
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %135

; <label>:135                                     ; preds = %151, %134
  %136 = load i32, i32* %i, align 4, !tbaa !1
  %137 = icmp slt i32 %136, 9
  br i1 %137, label %138, label %154

; <label>:138                                     ; preds = %135
  %139 = load i32, i32* %i, align 4, !tbaa !1
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [9 x i16], [9 x i16]* @g_47, i32 0, i64 %140
  %142 = load volatile i16, i16* %141, align 2, !tbaa !10
  %143 = sext i16 %142 to i64
  %144 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %143, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32 %144)
  %145 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %150

; <label>:147                                     ; preds = %138
  %148 = load i32, i32* %i, align 4, !tbaa !1
  %149 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i32 %148)
  br label %150

; <label>:150                                     ; preds = %147, %138
  br label %151

; <label>:151                                     ; preds = %150
  %152 = load i32, i32* %i, align 4, !tbaa !1
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %i, align 4, !tbaa !1
  br label %135

; <label>:154                                     ; preds = %135
  %155 = load i32, i32* getelementptr inbounds (%union.U4, %union.U4* @g_62, i32 0, i32 0), align 4, !tbaa !1
  %156 = zext i32 %155 to i64
  %157 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %156, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i32 %157)
  %158 = load volatile i16, i16* getelementptr inbounds (%struct.S0, %struct.S0* @g_69, i32 0, i32 0), align 1, !tbaa !12
  %159 = zext i16 %158 to i64
  %160 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %159, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i32 %160)
  %161 = load i16, i16* @g_86, align 2, !tbaa !10
  %162 = zext i16 %161 to i64
  %163 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %162, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 %163)
  %164 = load volatile i8, i8* @g_89, align 1, !tbaa !9
  %165 = sext i8 %164 to i64
  %166 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %165, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i32 %166)
  %167 = load i16, i16* @g_94, align 2, !tbaa !10
  %168 = sext i16 %167 to i64
  %169 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %168, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32 %169)
  %170 = load i32, i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_97, i32 0, i32 0), align 4, !tbaa !1
  %171 = zext i32 %170 to i64
  %172 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %171, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i32 %172)
  %173 = load i32, i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_97, i32 0, i32 0), align 4, !tbaa !1
  %174 = sext i32 %173 to i64
  %175 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %174, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i32 %175)
  %176 = load i32, i32* @g_101, align 4, !tbaa !1
  %177 = sext i32 %176 to i64
  %178 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %177, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i32 %178)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %179

; <label>:179                                     ; preds = %195, %154
  %180 = load i32, i32* %i, align 4, !tbaa !1
  %181 = icmp slt i32 %180, 4
  br i1 %181, label %182, label %198

; <label>:182                                     ; preds = %179
  %183 = load i32, i32* %i, align 4, !tbaa !1
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [4 x i8], [4 x i8]* @g_155, i32 0, i64 %184
  %186 = load i8, i8* %185, align 1, !tbaa !9
  %187 = zext i8 %186 to i64
  %188 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %187, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i32 %188)
  %189 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %194

; <label>:191                                     ; preds = %182
  %192 = load i32, i32* %i, align 4, !tbaa !1
  %193 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i32 %192)
  br label %194

; <label>:194                                     ; preds = %191, %182
  br label %195

; <label>:195                                     ; preds = %194
  %196 = load i32, i32* %i, align 4, !tbaa !1
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %i, align 4, !tbaa !1
  br label %179

; <label>:198                                     ; preds = %179
  %199 = load volatile i16, i16* getelementptr inbounds (%struct.S0, %struct.S0* @g_164, i32 0, i32 0), align 1, !tbaa !12
  %200 = zext i16 %199 to i64
  %201 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %200, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i32 %201)
  %202 = load volatile i16, i16* getelementptr inbounds (%struct.S0, %struct.S0* @g_178, i32 0, i32 0), align 1, !tbaa !12
  %203 = zext i16 %202 to i64
  %204 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %203, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i32 %204)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %205

; <label>:205                                     ; preds = %244, %198
  %206 = load i32, i32* %i, align 4, !tbaa !1
  %207 = icmp slt i32 %206, 7
  br i1 %207, label %208, label %247

; <label>:208                                     ; preds = %205
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %209

; <label>:209                                     ; preds = %240, %208
  %210 = load i32, i32* %j, align 4, !tbaa !1
  %211 = icmp slt i32 %210, 4
  br i1 %211, label %212, label %243

; <label>:212                                     ; preds = %209
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %213

; <label>:213                                     ; preds = %236, %212
  %214 = load i32, i32* %k, align 4, !tbaa !1
  %215 = icmp slt i32 %214, 5
  br i1 %215, label %216, label %239

; <label>:216                                     ; preds = %213
  %217 = load i32, i32* %k, align 4, !tbaa !1
  %218 = sext i32 %217 to i64
  %219 = load i32, i32* %j, align 4, !tbaa !1
  %220 = sext i32 %219 to i64
  %221 = load i32, i32* %i, align 4, !tbaa !1
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds [7 x [4 x [5 x i64]]], [7 x [4 x [5 x i64]]]* @g_208, i32 0, i64 %222
  %224 = getelementptr inbounds [4 x [5 x i64]], [4 x [5 x i64]]* %223, i32 0, i64 %220
  %225 = getelementptr inbounds [5 x i64], [5 x i64]* %224, i32 0, i64 %218
  %226 = load i64, i64* %225, align 8, !tbaa !7
  %227 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %226, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0), i32 %227)
  %228 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %235

; <label>:230                                     ; preds = %216
  %231 = load i32, i32* %i, align 4, !tbaa !1
  %232 = load i32, i32* %j, align 4, !tbaa !1
  %233 = load i32, i32* %k, align 4, !tbaa !1
  %234 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i32 0, i32 0), i32 %231, i32 %232, i32 %233)
  br label %235

; <label>:235                                     ; preds = %230, %216
  br label %236

; <label>:236                                     ; preds = %235
  %237 = load i32, i32* %k, align 4, !tbaa !1
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %k, align 4, !tbaa !1
  br label %213

; <label>:239                                     ; preds = %213
  br label %240

; <label>:240                                     ; preds = %239
  %241 = load i32, i32* %j, align 4, !tbaa !1
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %j, align 4, !tbaa !1
  br label %209

; <label>:243                                     ; preds = %209
  br label %244

; <label>:244                                     ; preds = %243
  %245 = load i32, i32* %i, align 4, !tbaa !1
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %i, align 4, !tbaa !1
  br label %205

; <label>:247                                     ; preds = %205
  %248 = load i32, i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_238, i32 0, i32 0), align 4, !tbaa !1
  %249 = zext i32 %248 to i64
  %250 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %249, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i32 %250)
  %251 = load i32, i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_238, i32 0, i32 0), align 4, !tbaa !1
  %252 = sext i32 %251 to i64
  %253 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %252, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i32 %253)
  %254 = load i64, i64* @g_253, align 8, !tbaa !7
  %255 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %254, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i32 %255)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %256

; <label>:256                                     ; preds = %272, %247
  %257 = load i32, i32* %i, align 4, !tbaa !1
  %258 = icmp slt i32 %257, 9
  br i1 %258, label %259, label %275

; <label>:259                                     ; preds = %256
  %260 = load i32, i32* %i, align 4, !tbaa !1
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds [9 x i8], [9 x i8]* @g_278, i32 0, i64 %261
  %263 = load i8, i8* %262, align 1, !tbaa !9
  %264 = sext i8 %263 to i64
  %265 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %264, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i32 %265)
  %266 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %271

; <label>:268                                     ; preds = %259
  %269 = load i32, i32* %i, align 4, !tbaa !1
  %270 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i32 %269)
  br label %271

; <label>:271                                     ; preds = %268, %259
  br label %272

; <label>:272                                     ; preds = %271
  %273 = load i32, i32* %i, align 4, !tbaa !1
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %i, align 4, !tbaa !1
  br label %256

; <label>:275                                     ; preds = %256
  %276 = load i8, i8* @g_288, align 1, !tbaa !9
  %277 = sext i8 %276 to i64
  %278 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %277, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 %278)
  %279 = load i16, i16* getelementptr inbounds (%union.U3, %union.U3* @g_300, i32 0, i32 0), align 2, !tbaa !10
  %280 = zext i16 %279 to i64
  %281 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %280, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), i32 %281)
  %282 = load volatile i16, i16* getelementptr inbounds (%struct.S0, %struct.S0* bitcast (%union.U3* @g_300 to %struct.S0*), i32 0, i32 0), align 1, !tbaa !12
  %283 = zext i16 %282 to i64
  %284 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %283, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i32 0, i32 0), i32 %284)
  %285 = load i8, i8* bitcast (%union.U3* @g_300 to i8*), align 1, !tbaa !9
  %286 = sext i8 %285 to i64
  %287 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %286, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), i32 %287)
  %288 = load i8, i8* bitcast (%union.U3* @g_300 to i8*), align 1, !tbaa !9
  %289 = sext i8 %288 to i64
  %290 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %289, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), i32 %290)
  %291 = load i32, i32* @g_331, align 4, !tbaa !1
  %292 = sext i32 %291 to i64
  %293 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %292, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i32 %293)
  %294 = load i64, i64* @g_382, align 8, !tbaa !7
  %295 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %294, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i32 %295)
  %296 = load i32, i32* @g_411, align 4, !tbaa !1
  %297 = sext i32 %296 to i64
  %298 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %297, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i32 %298)
  %299 = load volatile i64, i64* @g_437, align 8, !tbaa !7
  %300 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %299, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i32 %300)
  %301 = load i32, i32* @g_480, align 4, !tbaa !1
  %302 = zext i32 %301 to i64
  %303 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %302, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i32 %303)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %304

; <label>:304                                     ; preds = %320, %275
  %305 = load i32, i32* %i, align 4, !tbaa !1
  %306 = icmp slt i32 %305, 5
  br i1 %306, label %307, label %323

; <label>:307                                     ; preds = %304
  %308 = load i32, i32* %i, align 4, !tbaa !1
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds [5 x i16], [5 x i16]* @g_481, i32 0, i64 %309
  %311 = load volatile i16, i16* %310, align 2, !tbaa !10
  %312 = zext i16 %311 to i64
  %313 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %312, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0), i32 %313)
  %314 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %319

; <label>:316                                     ; preds = %307
  %317 = load i32, i32* %i, align 4, !tbaa !1
  %318 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i32 %317)
  br label %319

; <label>:319                                     ; preds = %316, %307
  br label %320

; <label>:320                                     ; preds = %319
  %321 = load i32, i32* %i, align 4, !tbaa !1
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %i, align 4, !tbaa !1
  br label %304

; <label>:323                                     ; preds = %304
  %324 = load volatile i16, i16* getelementptr inbounds (%struct.S0, %struct.S0* @g_525, i32 0, i32 0), align 1, !tbaa !12
  %325 = zext i16 %324 to i64
  %326 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %325, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i32 0, i32 0), i32 %326)
  %327 = load i16, i16* getelementptr inbounds (%union.U3, %union.U3* @g_539, i32 0, i32 0), align 2, !tbaa !10
  %328 = zext i16 %327 to i64
  %329 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %328, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i32 0, i32 0), i32 %329)
  %330 = load volatile i16, i16* getelementptr inbounds (%struct.S0, %struct.S0* bitcast (%union.U3* @g_539 to %struct.S0*), i32 0, i32 0), align 1, !tbaa !12
  %331 = zext i16 %330 to i64
  %332 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %331, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i32 0, i32 0), i32 %332)
  %333 = load i8, i8* bitcast (%union.U3* @g_539 to i8*), align 1, !tbaa !9
  %334 = sext i8 %333 to i64
  %335 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %334, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i32 0, i32 0), i32 %335)
  %336 = load i8, i8* bitcast (%union.U3* @g_539 to i8*), align 1, !tbaa !9
  %337 = sext i8 %336 to i64
  %338 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %337, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i32 0, i32 0), i32 %338)
  %339 = load volatile i16, i16* getelementptr inbounds (%struct.S0, %struct.S0* @g_579, i32 0, i32 0), align 1, !tbaa !12
  %340 = zext i16 %339 to i64
  %341 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %340, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i32 0, i32 0), i32 %341)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %342

; <label>:342                                     ; preds = %370, %323
  %343 = load i32, i32* %i, align 4, !tbaa !1
  %344 = icmp slt i32 %343, 4
  br i1 %344, label %345, label %373

; <label>:345                                     ; preds = %342
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %346

; <label>:346                                     ; preds = %366, %345
  %347 = load i32, i32* %j, align 4, !tbaa !1
  %348 = icmp slt i32 %347, 7
  br i1 %348, label %349, label %369

; <label>:349                                     ; preds = %346
  %350 = load i32, i32* %j, align 4, !tbaa !1
  %351 = sext i32 %350 to i64
  %352 = load i32, i32* %i, align 4, !tbaa !1
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds [4 x [7 x i8]], [4 x [7 x i8]]* @g_605, i32 0, i64 %353
  %355 = getelementptr inbounds [7 x i8], [7 x i8]* %354, i32 0, i64 %351
  %356 = load i8, i8* %355, align 1, !tbaa !9
  %357 = sext i8 %356 to i64
  %358 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %357, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i32 0, i32 0), i32 %358)
  %359 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %365

; <label>:361                                     ; preds = %349
  %362 = load i32, i32* %i, align 4, !tbaa !1
  %363 = load i32, i32* %j, align 4, !tbaa !1
  %364 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.41, i32 0, i32 0), i32 %362, i32 %363)
  br label %365

; <label>:365                                     ; preds = %361, %349
  br label %366

; <label>:366                                     ; preds = %365
  %367 = load i32, i32* %j, align 4, !tbaa !1
  %368 = add nsw i32 %367, 1
  store i32 %368, i32* %j, align 4, !tbaa !1
  br label %346

; <label>:369                                     ; preds = %346
  br label %370

; <label>:370                                     ; preds = %369
  %371 = load i32, i32* %i, align 4, !tbaa !1
  %372 = add nsw i32 %371, 1
  store i32 %372, i32* %i, align 4, !tbaa !1
  br label %342

; <label>:373                                     ; preds = %342
  %374 = load volatile i16, i16* getelementptr inbounds (%struct.S0, %struct.S0* @g_662, i32 0, i32 0), align 1, !tbaa !12
  %375 = zext i16 %374 to i64
  %376 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %375, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i32 0, i32 0), i32 %376)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %377

; <label>:377                                     ; preds = %394, %373
  %378 = load i32, i32* %i, align 4, !tbaa !1
  %379 = icmp slt i32 %378, 8
  br i1 %379, label %380, label %397

; <label>:380                                     ; preds = %377
  %381 = load i32, i32* %i, align 4, !tbaa !1
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds [8 x %struct.S0], [8 x %struct.S0]* @g_812, i32 0, i64 %382
  %384 = getelementptr inbounds %struct.S0, %struct.S0* %383, i32 0, i32 0
  %385 = load volatile i16, i16* %384, align 1, !tbaa !12
  %386 = zext i16 %385 to i64
  %387 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %386, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i32 0, i32 0), i32 %387)
  %388 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %390, label %393

; <label>:390                                     ; preds = %380
  %391 = load i32, i32* %i, align 4, !tbaa !1
  %392 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i32 %391)
  br label %393

; <label>:393                                     ; preds = %390, %380
  br label %394

; <label>:394                                     ; preds = %393
  %395 = load i32, i32* %i, align 4, !tbaa !1
  %396 = add nsw i32 %395, 1
  store i32 %396, i32* %i, align 4, !tbaa !1
  br label %377

; <label>:397                                     ; preds = %377
  %398 = load i8, i8* @g_845, align 1, !tbaa !9
  %399 = zext i8 %398 to i64
  %400 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %399, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0), i32 %400)
  %401 = load volatile i16, i16* getelementptr inbounds (%struct.S0, %struct.S0* @g_892, i32 0, i32 0), align 1, !tbaa !12
  %402 = zext i16 %401 to i64
  %403 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %402, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.45, i32 0, i32 0), i32 %403)
  %404 = load i32, i32* @g_916, align 4, !tbaa !1
  %405 = zext i32 %404 to i64
  %406 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %405, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0), i32 %406)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %407

; <label>:407                                     ; preds = %424, %397
  %408 = load i32, i32* %i, align 4, !tbaa !1
  %409 = icmp slt i32 %408, 1
  br i1 %409, label %410, label %427

; <label>:410                                     ; preds = %407
  %411 = load i32, i32* %i, align 4, !tbaa !1
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds [1 x %union.U4], [1 x %union.U4]* @g_1014, i32 0, i64 %412
  %414 = bitcast %union.U4* %413 to i32*
  %415 = load volatile i32, i32* %414, align 4, !tbaa !1
  %416 = zext i32 %415 to i64
  %417 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %416, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.47, i32 0, i32 0), i32 %417)
  %418 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %420, label %423

; <label>:420                                     ; preds = %410
  %421 = load i32, i32* %i, align 4, !tbaa !1
  %422 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i32 %421)
  br label %423

; <label>:423                                     ; preds = %420, %410
  br label %424

; <label>:424                                     ; preds = %423
  %425 = load i32, i32* %i, align 4, !tbaa !1
  %426 = add nsw i32 %425, 1
  store i32 %426, i32* %i, align 4, !tbaa !1
  br label %407

; <label>:427                                     ; preds = %407
  %428 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %429 = zext i32 %428 to i64
  %430 = xor i64 %429, 4294967295
  %431 = trunc i64 %430 to i32
  %432 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %431, i32 %432)
  %433 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %433) #1
  %434 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %434) #1
  %435 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %435) #1
  %436 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %436) #1
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
define internal i8* @func_1() #0 {
  %1 = alloca %union.U2, align 8
  %l_40 = alloca i8*, align 8
  %l_98 = alloca i32, align 4
  %l_100 = alloca i32*, align 8
  %l_99 = alloca i32**, align 8
  %l_102 = alloca i8*, align 8
  %l_656 = alloca i64, align 8
  %l_657 = alloca [9 x [4 x [7 x i8]]], align 16
  %l_658 = alloca i8*, align 8
  %l_688 = alloca i8**, align 8
  %l_689 = alloca i8**, align 8
  %l_690 = alloca [3 x [3 x [7 x i8**]]], align 16
  %l_691 = alloca i8*, align 8
  %l_712 = alloca i16, align 2
  %l_1048 = alloca [8 x %union.U4*], align 16
  %l_1066 = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %2 = bitcast i8** %l_40 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @g_18, i32 0, i64 2), i8** %l_40, align 8, !tbaa !5
  %3 = bitcast i32* %l_98 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 -608410074, i32* %l_98, align 4, !tbaa !1
  %4 = bitcast i32** %l_100 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store i32* @g_101, i32** %l_100, align 8, !tbaa !5
  %5 = bitcast i32*** %l_99 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store i32** %l_100, i32*** %l_99, align 8, !tbaa !5
  %6 = bitcast i8** %l_102 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @g_18, i32 0, i64 0), i8** %l_102, align 8, !tbaa !5
  %7 = bitcast i64* %l_656 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store i64 7863750405920549522, i64* %l_656, align 8, !tbaa !7
  %8 = bitcast [9 x [4 x [7 x i8]]]* %l_657 to i8*
  call void @llvm.lifetime.start(i64 252, i8* %8) #1
  %9 = bitcast [9 x [4 x [7 x i8]]]* %l_657 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* getelementptr inbounds ([9 x [4 x [7 x i8]]], [9 x [4 x [7 x i8]]]* @func_1.l_657, i32 0, i32 0, i32 0, i32 0), i64 252, i32 16, i1 false)
  %10 = bitcast i8** %l_658 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @g_155, i32 0, i64 3), i8** %l_658, align 8, !tbaa !5
  %11 = bitcast i8*** %l_688 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store i8** null, i8*** %l_688, align 8, !tbaa !5
  %12 = bitcast i8*** %l_689 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  store i8** null, i8*** %l_689, align 8, !tbaa !5
  %13 = bitcast [3 x [3 x [7 x i8**]]]* %l_690 to i8*
  call void @llvm.lifetime.start(i64 504, i8* %13) #1
  %14 = getelementptr inbounds [3 x [3 x [7 x i8**]]], [3 x [3 x [7 x i8**]]]* %l_690, i64 0, i64 0
  %15 = getelementptr inbounds [3 x [7 x i8**]], [3 x [7 x i8**]]* %14, i64 0, i64 0
  %16 = getelementptr inbounds [7 x i8**], [7 x i8**]* %15, i64 0, i64 0
  store i8** %l_40, i8*** %16, !tbaa !5
  %17 = getelementptr inbounds i8**, i8*** %16, i64 1
  store i8** %l_40, i8*** %17, !tbaa !5
  %18 = getelementptr inbounds i8**, i8*** %17, i64 1
  store i8** null, i8*** %18, !tbaa !5
  %19 = getelementptr inbounds i8**, i8*** %18, i64 1
  store i8** %l_40, i8*** %19, !tbaa !5
  %20 = getelementptr inbounds i8**, i8*** %19, i64 1
  store i8** null, i8*** %20, !tbaa !5
  %21 = getelementptr inbounds i8**, i8*** %20, i64 1
  store i8** %l_40, i8*** %21, !tbaa !5
  %22 = getelementptr inbounds i8**, i8*** %21, i64 1
  store i8** null, i8*** %22, !tbaa !5
  %23 = getelementptr inbounds [7 x i8**], [7 x i8**]* %15, i64 1
  %24 = bitcast [7 x i8**]* %23 to i8*
  call void @llvm.memset.p0i8.i64(i8* %24, i8 0, i64 56, i32 8, i1 false)
  %25 = getelementptr inbounds [7 x i8**], [7 x i8**]* %23, i64 0, i64 0
  %26 = getelementptr inbounds i8**, i8*** %25, i64 1
  %27 = getelementptr inbounds i8**, i8*** %26, i64 1
  %28 = getelementptr inbounds i8**, i8*** %27, i64 1
  %29 = getelementptr inbounds i8**, i8*** %28, i64 1
  %30 = getelementptr inbounds i8**, i8*** %29, i64 1
  %31 = getelementptr inbounds i8**, i8*** %30, i64 1
  store i8** %l_40, i8*** %31, !tbaa !5
  %32 = getelementptr inbounds [7 x i8**], [7 x i8**]* %23, i64 1
  %33 = getelementptr inbounds [7 x i8**], [7 x i8**]* %32, i64 0, i64 0
  store i8** %l_40, i8*** %33, !tbaa !5
  %34 = getelementptr inbounds i8**, i8*** %33, i64 1
  store i8** null, i8*** %34, !tbaa !5
  %35 = getelementptr inbounds i8**, i8*** %34, i64 1
  store i8** null, i8*** %35, !tbaa !5
  %36 = getelementptr inbounds i8**, i8*** %35, i64 1
  store i8** %l_40, i8*** %36, !tbaa !5
  %37 = getelementptr inbounds i8**, i8*** %36, i64 1
  store i8** %l_40, i8*** %37, !tbaa !5
  %38 = getelementptr inbounds i8**, i8*** %37, i64 1
  store i8** null, i8*** %38, !tbaa !5
  %39 = getelementptr inbounds i8**, i8*** %38, i64 1
  store i8** null, i8*** %39, !tbaa !5
  %40 = getelementptr inbounds [3 x [7 x i8**]], [3 x [7 x i8**]]* %14, i64 1
  %41 = getelementptr inbounds [3 x [7 x i8**]], [3 x [7 x i8**]]* %40, i64 0, i64 0
  %42 = getelementptr inbounds [7 x i8**], [7 x i8**]* %41, i64 0, i64 0
  store i8** %l_40, i8*** %42, !tbaa !5
  %43 = getelementptr inbounds i8**, i8*** %42, i64 1
  store i8** %l_40, i8*** %43, !tbaa !5
  %44 = getelementptr inbounds i8**, i8*** %43, i64 1
  store i8** null, i8*** %44, !tbaa !5
  %45 = getelementptr inbounds i8**, i8*** %44, i64 1
  store i8** %l_40, i8*** %45, !tbaa !5
  %46 = getelementptr inbounds i8**, i8*** %45, i64 1
  store i8** %l_40, i8*** %46, !tbaa !5
  %47 = getelementptr inbounds i8**, i8*** %46, i64 1
  store i8** %l_40, i8*** %47, !tbaa !5
  %48 = getelementptr inbounds i8**, i8*** %47, i64 1
  store i8** %l_40, i8*** %48, !tbaa !5
  %49 = getelementptr inbounds [7 x i8**], [7 x i8**]* %41, i64 1
  %50 = getelementptr inbounds [7 x i8**], [7 x i8**]* %49, i64 0, i64 0
  store i8** null, i8*** %50, !tbaa !5
  %51 = getelementptr inbounds i8**, i8*** %50, i64 1
  store i8** null, i8*** %51, !tbaa !5
  %52 = getelementptr inbounds i8**, i8*** %51, i64 1
  store i8** null, i8*** %52, !tbaa !5
  %53 = getelementptr inbounds i8**, i8*** %52, i64 1
  store i8** %l_40, i8*** %53, !tbaa !5
  %54 = getelementptr inbounds i8**, i8*** %53, i64 1
  store i8** %l_40, i8*** %54, !tbaa !5
  %55 = getelementptr inbounds i8**, i8*** %54, i64 1
  store i8** %l_40, i8*** %55, !tbaa !5
  %56 = getelementptr inbounds i8**, i8*** %55, i64 1
  store i8** %l_40, i8*** %56, !tbaa !5
  %57 = getelementptr inbounds [7 x i8**], [7 x i8**]* %49, i64 1
  %58 = getelementptr inbounds [7 x i8**], [7 x i8**]* %57, i64 0, i64 0
  store i8** null, i8*** %58, !tbaa !5
  %59 = getelementptr inbounds i8**, i8*** %58, i64 1
  store i8** null, i8*** %59, !tbaa !5
  %60 = getelementptr inbounds i8**, i8*** %59, i64 1
  store i8** null, i8*** %60, !tbaa !5
  %61 = getelementptr inbounds i8**, i8*** %60, i64 1
  store i8** null, i8*** %61, !tbaa !5
  %62 = getelementptr inbounds i8**, i8*** %61, i64 1
  store i8** %l_40, i8*** %62, !tbaa !5
  %63 = getelementptr inbounds i8**, i8*** %62, i64 1
  store i8** %l_40, i8*** %63, !tbaa !5
  %64 = getelementptr inbounds i8**, i8*** %63, i64 1
  store i8** null, i8*** %64, !tbaa !5
  %65 = getelementptr inbounds [3 x [7 x i8**]], [3 x [7 x i8**]]* %40, i64 1
  %66 = getelementptr inbounds [3 x [7 x i8**]], [3 x [7 x i8**]]* %65, i64 0, i64 0
  %67 = getelementptr inbounds [7 x i8**], [7 x i8**]* %66, i64 0, i64 0
  store i8** null, i8*** %67, !tbaa !5
  %68 = getelementptr inbounds i8**, i8*** %67, i64 1
  store i8** %l_40, i8*** %68, !tbaa !5
  %69 = getelementptr inbounds i8**, i8*** %68, i64 1
  store i8** %l_40, i8*** %69, !tbaa !5
  %70 = getelementptr inbounds i8**, i8*** %69, i64 1
  store i8** null, i8*** %70, !tbaa !5
  %71 = getelementptr inbounds i8**, i8*** %70, i64 1
  store i8** null, i8*** %71, !tbaa !5
  %72 = getelementptr inbounds i8**, i8*** %71, i64 1
  store i8** null, i8*** %72, !tbaa !5
  %73 = getelementptr inbounds i8**, i8*** %72, i64 1
  store i8** null, i8*** %73, !tbaa !5
  %74 = getelementptr inbounds [7 x i8**], [7 x i8**]* %66, i64 1
  %75 = getelementptr inbounds [7 x i8**], [7 x i8**]* %74, i64 0, i64 0
  store i8** %l_40, i8*** %75, !tbaa !5
  %76 = getelementptr inbounds i8**, i8*** %75, i64 1
  store i8** %l_40, i8*** %76, !tbaa !5
  %77 = getelementptr inbounds i8**, i8*** %76, i64 1
  store i8** %l_40, i8*** %77, !tbaa !5
  %78 = getelementptr inbounds i8**, i8*** %77, i64 1
  store i8** %l_40, i8*** %78, !tbaa !5
  %79 = getelementptr inbounds i8**, i8*** %78, i64 1
  store i8** null, i8*** %79, !tbaa !5
  %80 = getelementptr inbounds i8**, i8*** %79, i64 1
  store i8** null, i8*** %80, !tbaa !5
  %81 = getelementptr inbounds i8**, i8*** %80, i64 1
  store i8** null, i8*** %81, !tbaa !5
  %82 = getelementptr inbounds [7 x i8**], [7 x i8**]* %74, i64 1
  %83 = getelementptr inbounds [7 x i8**], [7 x i8**]* %82, i64 0, i64 0
  store i8** %l_40, i8*** %83, !tbaa !5
  %84 = getelementptr inbounds i8**, i8*** %83, i64 1
  store i8** %l_40, i8*** %84, !tbaa !5
  %85 = getelementptr inbounds i8**, i8*** %84, i64 1
  store i8** %l_40, i8*** %85, !tbaa !5
  %86 = getelementptr inbounds i8**, i8*** %85, i64 1
  store i8** %l_40, i8*** %86, !tbaa !5
  %87 = getelementptr inbounds i8**, i8*** %86, i64 1
  store i8** null, i8*** %87, !tbaa !5
  %88 = getelementptr inbounds i8**, i8*** %87, i64 1
  store i8** %l_40, i8*** %88, !tbaa !5
  %89 = getelementptr inbounds i8**, i8*** %88, i64 1
  store i8** %l_40, i8*** %89, !tbaa !5
  %90 = bitcast i8** %l_691 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %90) #1
  store i8* bitcast (%union.U3* @g_539 to i8*), i8** %l_691, align 8, !tbaa !5
  %91 = bitcast i16* %l_712 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %91) #1
  store i16 3, i16* %l_712, align 2, !tbaa !10
  %92 = bitcast [8 x %union.U4*]* %l_1048 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %92) #1
  %93 = bitcast [8 x %union.U4*]* %l_1048 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %93, i8* bitcast ([8 x %union.U4*]* @func_1.l_1048 to i8*), i64 64, i32 16, i1 false)
  %94 = bitcast i64* %l_1066 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %94) #1
  store i64 4520987731166402681, i64* %l_1066, align 8, !tbaa !7
  %95 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %95) #1
  %96 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %96) #1
  %97 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %97) #1
  %98 = bitcast %union.U2* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %98, i8* bitcast ({ i32, [4 x i8] }* @g_238 to i8*), i64 8, i32 8, i1 false), !tbaa.struct !14
  %99 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %99) #1
  %100 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %100) #1
  %101 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %101) #1
  %102 = bitcast i64* %l_1066 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %102) #1
  %103 = bitcast [8 x %union.U4*]* %l_1048 to i8*
  call void @llvm.lifetime.end(i64 64, i8* %103) #1
  %104 = bitcast i16* %l_712 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %104) #1
  %105 = bitcast i8** %l_691 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %105) #1
  %106 = bitcast [3 x [3 x [7 x i8**]]]* %l_690 to i8*
  call void @llvm.lifetime.end(i64 504, i8* %106) #1
  %107 = bitcast i8*** %l_689 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %107) #1
  %108 = bitcast i8*** %l_688 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %108) #1
  %109 = bitcast i8** %l_658 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %109) #1
  %110 = bitcast [9 x [4 x [7 x i8]]]* %l_657 to i8*
  call void @llvm.lifetime.end(i64 252, i8* %110) #1
  %111 = bitcast i64* %l_656 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %111) #1
  %112 = bitcast i8** %l_102 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %112) #1
  %113 = bitcast i32*** %l_99 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %113) #1
  %114 = bitcast i32** %l_100 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %114) #1
  %115 = bitcast i32* %l_98 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %115) #1
  %116 = bitcast i8** %l_40 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %116) #1
  %117 = getelementptr %union.U2, %union.U2* %1, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  ret i8* %118
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
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.48, i32 0, i32 0), i8* %8, i64 %11)
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
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.49, i32 0, i32 0), i32 %3)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

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
!12 = !{!13, !11, i64 0}
!13 = !{!"S0", !11, i64 0}
!14 = !{i64 0, i64 4, !1, i64 0, i64 8, !5, i64 0, i64 4, !1, i64 0, i64 8, !7}
