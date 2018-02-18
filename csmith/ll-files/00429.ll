; ModuleID = '00429.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.U5 = type { i32 }
%union.U4 = type { i16 }
%union.U0 = type { i32 }
%union.U3 = type { i16 }
%union.U2 = type { i8* }
%union.U1 = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_26 = internal global [9 x %union.U5] [%union.U5 { i32 -822882456 }, %union.U5 { i32 -822882456 }, %union.U5 { i32 -822882456 }, %union.U5 { i32 -822882456 }, %union.U5 { i32 -822882456 }, %union.U5 { i32 -822882456 }, %union.U5 { i32 -822882456 }, %union.U5 { i32 -822882456 }, %union.U5 { i32 -822882456 }], align 16
@.str.1 = private unnamed_addr constant [11 x i8] c"g_26[i].f0\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_27 = internal global %union.U4 { i16 -1 }, align 2
@.str.3 = private unnamed_addr constant [8 x i8] c"g_27.f0\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"g_27.f1\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"g_29.f0\00", align 1
@g_71 = internal global i8 9, align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"g_71\00", align 1
@g_73 = internal global i64 -5209544885561202394, align 8
@.str.7 = private unnamed_addr constant [5 x i8] c"g_73\00", align 1
@g_100 = internal global i32 -1, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"g_100\00", align 1
@g_103 = internal global i16 -16488, align 2
@.str.9 = private unnamed_addr constant [6 x i8] c"g_103\00", align 1
@g_129 = internal global i64 -1715325573536333832, align 8
@.str.10 = private unnamed_addr constant [6 x i8] c"g_129\00", align 1
@g_135 = internal global i32 0, align 4
@.str.11 = private unnamed_addr constant [6 x i8] c"g_135\00", align 1
@g_164 = internal global %union.U0 { i32 -894786679 }, align 4
@.str.12 = private unnamed_addr constant [9 x i8] c"g_164.f0\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"g_164.f1\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"g_164.f2\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"g_164.f3\00", align 1
@g_170 = internal global [3 x [5 x i8]] [[5 x i8] c"\01\01\01\01\01", [5 x i8] c"\AC\B9\AC\B9\AC", [5 x i8] c"\01\01\01\01\01"], align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"g_170[i][j]\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@g_172 = internal global [7 x [9 x i8]] [[9 x i8] c"\C6a\C6a\C6a\C6a\C6", [9 x i8] zeroinitializer, [9 x i8] c"\C6a\C6a\C6a\C6a\C6", [9 x i8] zeroinitializer, [9 x i8] c"\C6a\C6a\C6a\C6a\C6", [9 x i8] zeroinitializer, [9 x i8] c"\C6a\C6a\C6a\C6a\C6"], align 16
@.str.18 = private unnamed_addr constant [12 x i8] c"g_172[i][j]\00", align 1
@g_185 = internal global [6 x [5 x [1 x i16]]] [[5 x [1 x i16]] [[1 x i16] [i16 -12481], [1 x i16] [i16 -9], [1 x i16] [i16 -5], [1 x i16] [i16 -7917], [1 x i16] [i16 -5]], [5 x [1 x i16]] [[1 x i16] [i16 -9], [1 x i16] [i16 -12481], [1 x i16] [i16 -9], [1 x i16] [i16 -5], [1 x i16] [i16 -7917]], [5 x [1 x i16]] [[1 x i16] [i16 -5], [1 x i16] [i16 -9], [1 x i16] [i16 -12481], [1 x i16] [i16 -9], [1 x i16] [i16 -5]], [5 x [1 x i16]] [[1 x i16] [i16 -7917], [1 x i16] [i16 -5], [1 x i16] [i16 -9], [1 x i16] [i16 -12481], [1 x i16] [i16 -9]], [5 x [1 x i16]] [[1 x i16] [i16 -5], [1 x i16] [i16 -7917], [1 x i16] [i16 -5], [1 x i16] [i16 -9], [1 x i16] [i16 -12481]], [5 x [1 x i16]] [[1 x i16] [i16 -9], [1 x i16] [i16 -5], [1 x i16] [i16 -7917], [1 x i16] [i16 -5], [1 x i16] [i16 -9]]], align 16
@.str.19 = private unnamed_addr constant [15 x i8] c"g_185[i][j][k]\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"index = [%d][%d][%d]\0A\00", align 1
@g_190 = internal global [1 x i8] c"\DD", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"g_190[i]\00", align 1
@g_199 = internal global i32 0, align 4
@.str.22 = private unnamed_addr constant [6 x i8] c"g_199\00", align 1
@g_220 = internal global %union.U4 { i16 1 }, align 2
@.str.23 = private unnamed_addr constant [9 x i8] c"g_220.f0\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"g_220.f1\00", align 1
@g_227 = internal global i32 172012796, align 4
@.str.25 = private unnamed_addr constant [6 x i8] c"g_227\00", align 1
@g_230 = internal global [7 x [2 x i32]] [[2 x i32] [i32 1853261734, i32 1853261734], [2 x i32] [i32 1853261734, i32 1853261734], [2 x i32] [i32 1853261734, i32 1853261734], [2 x i32] [i32 1853261734, i32 1853261734], [2 x i32] [i32 1853261734, i32 1853261734], [2 x i32] [i32 1853261734, i32 1853261734], [2 x i32] [i32 1853261734, i32 1853261734]], align 16
@.str.26 = private unnamed_addr constant [12 x i8] c"g_230[i][j]\00", align 1
@g_231 = internal global i16 28891, align 2
@.str.27 = private unnamed_addr constant [6 x i8] c"g_231\00", align 1
@g_233 = internal global [2 x [5 x i64]] [[5 x i64] [i64 7480802201760840929, i64 7480802201760840929, i64 7480802201760840929, i64 7480802201760840929, i64 7480802201760840929], [5 x i64] [i64 406879185084221021, i64 406879185084221021, i64 406879185084221021, i64 406879185084221021, i64 406879185084221021]], align 16
@.str.28 = private unnamed_addr constant [12 x i8] c"g_233[i][j]\00", align 1
@g_272 = internal global i8 29, align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"g_272\00", align 1
@g_316 = internal global i8 -115, align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"g_316\00", align 1
@g_318 = internal global i8 -1, align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"g_318\00", align 1
@g_374 = internal global [6 x [6 x i32]] [[6 x i32] [i32 -1, i32 0, i32 1, i32 0, i32 -875393284, i32 1627705928], [6 x i32] [i32 1627705928, i32 1977552583, i32 1475018604, i32 1977552583, i32 1627705928, i32 0], [6 x i32] [i32 1627705928, i32 -1, i32 1977552583, i32 0, i32 0, i32 0], [6 x i32] [i32 -1, i32 -875393284, i32 -875393284, i32 -1, i32 1475018604, i32 0], [6 x i32] [i32 1, i32 0, i32 1977552583, i32 0, i32 0, i32 0], [6 x i32] [i32 1475018604, i32 236038642, i32 1475018604, i32 0, i32 0, i32 1627705928]], align 16
@.str.32 = private unnamed_addr constant [12 x i8] c"g_374[i][j]\00", align 1
@g_445 = internal global %union.U3 { i16 -20422 }, align 2
@.str.33 = private unnamed_addr constant [9 x i8] c"g_445.f0\00", align 1
@g_630 = internal global i8 3, align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"g_630\00", align 1
@g_633 = internal global i8 0, align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"g_633\00", align 1
@g_670 = internal global i64 1, align 8
@.str.36 = private unnamed_addr constant [6 x i8] c"g_670\00", align 1
@g_671 = internal global i32 -1, align 4
@.str.37 = private unnamed_addr constant [6 x i8] c"g_671\00", align 1
@g_672 = internal global i64 -8, align 8
@.str.38 = private unnamed_addr constant [6 x i8] c"g_672\00", align 1
@g_674 = internal global i16 10301, align 2
@.str.39 = private unnamed_addr constant [6 x i8] c"g_674\00", align 1
@g_676 = internal global i8 -1, align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"g_676\00", align 1
@g_689 = internal global i32 0, align 4
@.str.41 = private unnamed_addr constant [6 x i8] c"g_689\00", align 1
@g_697 = internal global i16 -1, align 2
@.str.42 = private unnamed_addr constant [6 x i8] c"g_697\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"g_702.f0\00", align 1
@g_828 = internal global i32 1285708781, align 4
@.str.44 = private unnamed_addr constant [6 x i8] c"g_828\00", align 1
@g_876 = internal global %union.U3 { i16 -8399 }, align 2
@.str.45 = private unnamed_addr constant [9 x i8] c"g_876.f0\00", align 1
@g_900 = internal global %union.U4 { i16 478 }, align 2
@.str.46 = private unnamed_addr constant [9 x i8] c"g_900.f0\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"g_900.f1\00", align 1
@g_908 = internal global %union.U3 { i16 -7 }, align 2
@.str.48 = private unnamed_addr constant [9 x i8] c"g_908.f0\00", align 1
@g_910 = internal global i16 18432, align 2
@.str.49 = private unnamed_addr constant [6 x i8] c"g_910\00", align 1
@g_923 = internal global %union.U3 { i16 1 }, align 2
@.str.50 = private unnamed_addr constant [9 x i8] c"g_923.f0\00", align 1
@g_939 = internal global %union.U3 { i16 7 }, align 2
@.str.51 = private unnamed_addr constant [9 x i8] c"g_939.f0\00", align 1
@g_954 = internal global %union.U0 { i32 -2068631221 }, align 4
@.str.52 = private unnamed_addr constant [9 x i8] c"g_954.f0\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"g_954.f1\00", align 1
@.str.54 = private unnamed_addr constant [9 x i8] c"g_954.f2\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"g_954.f3\00", align 1
@g_1037 = internal global [8 x i32] [i32 -1567708414, i32 -1567708414, i32 -1567708414, i32 -1567708414, i32 -1567708414, i32 -1567708414, i32 -1567708414, i32 -1567708414], align 16
@.str.56 = private unnamed_addr constant [10 x i8] c"g_1037[i]\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"g_1070\00", align 1
@g_1281 = internal global %union.U5 { i32 -9 }, align 4
@.str.58 = private unnamed_addr constant [10 x i8] c"g_1281.f0\00", align 1
@g_1336 = internal global i64 -7, align 8
@.str.59 = private unnamed_addr constant [7 x i8] c"g_1336\00", align 1
@g_1421 = internal global i16 -5, align 2
@.str.60 = private unnamed_addr constant [7 x i8] c"g_1421\00", align 1
@g_1440 = internal global i32 -1730116247, align 4
@.str.61 = private unnamed_addr constant [7 x i8] c"g_1440\00", align 1
@g_1443 = internal global i16 31240, align 2
@.str.62 = private unnamed_addr constant [7 x i8] c"g_1443\00", align 1
@g_1444 = internal global [1 x i32] [i32 7], align 4
@.str.63 = private unnamed_addr constant [10 x i8] c"g_1444[i]\00", align 1
@g_1462 = internal global [4 x i32] [i32 -3, i32 -3, i32 -3, i32 -3], align 16
@.str.64 = private unnamed_addr constant [10 x i8] c"g_1462[i]\00", align 1
@g_1478 = internal global %union.U3 { i16 29376 }, align 2
@.str.65 = private unnamed_addr constant [10 x i8] c"g_1478.f0\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@g_198 = internal global i32* @g_199, align 8
@func_2.l_1042 = private unnamed_addr constant [4 x [9 x [1 x i32]]] [[9 x [1 x i32]] [[1 x i32] [i32 -727173663], [1 x i32] [i32 1993003809], [1 x i32] [i32 -8], [1 x i32] [i32 -1], [1 x i32] [i32 -1], [1 x i32] [i32 -8], [1 x i32] [i32 1993003809], [1 x i32] [i32 -727173663], [1 x i32] [i32 1971710106]], [9 x [1 x i32]] [[1 x i32] [i32 1], [1 x i32] [i32 1971710106], [1 x i32] [i32 -727173663], [1 x i32] [i32 1993003809], [1 x i32] [i32 -8], [1 x i32] [i32 -1], [1 x i32] [i32 -1], [1 x i32] [i32 -8], [1 x i32] [i32 1993003809]], [9 x [1 x i32]] [[1 x i32] [i32 -727173663], [1 x i32] [i32 1971710106], [1 x i32] [i32 1], [1 x i32] [i32 1971710106], [1 x i32] [i32 -727173663], [1 x i32] [i32 1993003809], [1 x i32] [i32 -8], [1 x i32] [i32 -1], [1 x i32] [i32 -1]], [9 x [1 x i32]] [[1 x i32] [i32 -8], [1 x i32] [i32 1993003809], [1 x i32] [i32 -727173663], [1 x i32] [i32 1971710106], [1 x i32] [i32 1], [1 x i32] [i32 1971710106], [1 x i32] [i32 -727173663], [1 x i32] [i32 1993003809], [1 x i32] [i32 -8]]], align 16
@g_916 = internal global %union.U2 zeroinitializer, align 8
@g_423 = internal global %union.U2 zeroinitializer, align 8
@g_205 = internal global %union.U2 zeroinitializer, align 8
@func_2.l_1047 = private unnamed_addr constant [5 x [8 x i8]] [[8 x i8] c"\01\01^RR^\01\01", [8 x i8] c"\FC\94^l\A8\AF\A8l", [8 x i8] c"R\06R l\AF^^", [8 x i8] c"^\94\FC\FC\94^l\A8", [8 x i8] c"^\01\01\94l\94\01\01"], align 16
@func_2.l_1048 = private unnamed_addr constant %union.U5 { i32 1867338289 }, align 4
@g_145 = internal global i64* @g_129, align 8
@func_2.l_1284 = private unnamed_addr constant [3 x %union.U0] [%union.U0 { i32 5 }, %union.U0 { i32 5 }, %union.U0 { i32 5 }], align 4
@func_2.l_1434 = private unnamed_addr constant [5 x [10 x [5 x i8]]] [[10 x [5 x i8]] [[5 x i8] c"[\01\FF\FF\BC", [5 x i8] c"\02\02\FF\F6\07", [5 x i8] c"\B8\FD\01\01>", [5 x i8] c"\BE\FF\C4\C4\FF", [5 x i8] c"\FA\E0\FF\00\FB", [5 x i8] c"\F8\05\FF\02\FE", [5 x i8] c"\01\00\BC\B8f", [5 x i8] c"\F8\FF\F6\BE\FC", [5 x i8] c"\FA\11\11\FA\FF", [5 x i8] c"\BE\F6\FF\F8\00"], [10 x [5 x i8]] [[5 x i8] c"\B8\BC\00\01\FF", [5 x i8] c"\02\FF\05\F8\FF", [5 x i8] c"\00\FF\E0\FA\E0", [5 x i8] c"\C4\C4\FF\BE\FF", [5 x i8] c"\01\01\FD\B8\FA", [5 x i8] c"\F6\FF\02\02\01", [5 x i8] c"\FF\01\FB\00\00", [5 x i8] c"\90\C4\02\C4\90", [5 x i8] c"\FF\FF\02\01\E9", [5 x i8] c"\FC\FF\F8\F6\02"], [10 x [5 x i8]] [[5 x i8] c"\02\BC>\FF\E9", [5 x i8] c"\01\F6\FC\90\90", [5 x i8] c"\E9\11\E9\FF\00", [5 x i8] c"\05\FF\17\FC\01", [5 x i8] c"\11\00G\02\FA", [5 x i8] c"\B0\05\17\01\FF", [5 x i8] c"\01\E0\E9\E9\E0", [5 x i8] c"\07\FF\FC\05\FF", [5 x i8] c"\BC\FD>\11\FF", [5 x i8] c"\17\02\F8\B0\00"], [10 x [5 x i8]] [[5 x i8] c"\BC\FB\02\01\FF", [5 x i8] c"\07\02\02\07\FC", [5 x i8] c"\01\02\FB\BCf", [5 x i8] c"\B0\F8\02\17\FE", [5 x i8] c"\11>\FD\BC\FB", [5 x i8] c"\05\FC\FF\07\FF", [5 x i8] c"\E9\E9\E0\01>", [5 x i8] c"\01\17\05\B0\07", [5 x i8] c"\02G\00\11\01", [5 x i8] c"\FC\FF\02\05\FF"], [10 x [5 x i8]] [[5 x i8] c"\01\FB[\FB\01", [5 x i8] c"\17\02\90\F6\FF", [5 x i8] c"\11\01\01\FF[", [5 x i8] c"\90\01\BE\02\FF", [5 x i8] c"\02\FF\11\01\01", [5 x i8] c"\FF\06\FF\17\FF", [5 x i8] c"\FD\00\FB\11\02", [5 x i8] c"\06\FF\B0\90e", [5 x i8] c"f\BC\FB\02\01", [5 x i8] c"\C4\FF\FF\FF\FF"]], align 16
@g_285 = internal global [3 x i16**] [i16** @g_102, i16** @g_102, i16** @g_102], align 16
@g_333 = internal global i8* null, align 8
@g_102 = internal global i16* @g_103, align 8
@.str.66 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@g_29 = internal global { i8, [3 x i8] } { i8 -1, [3 x i8] undef }, align 4
@g_702 = internal global { i8, [3 x i8] } { i8 -34, [3 x i8] undef }, align 4
@.str.67 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

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
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %91

; <label>:91                                      ; preds = %108, %89
  %92 = load i32, i32* %i, align 4, !tbaa !1
  %93 = icmp slt i32 %92, 9
  br i1 %93, label %94, label %111

; <label>:94                                      ; preds = %91
  %95 = load i32, i32* %i, align 4, !tbaa !1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [9 x %union.U5], [9 x %union.U5]* @g_26, i32 0, i64 %96
  %98 = bitcast %union.U5* %97 to i32*
  %99 = load i32, i32* %98, align 4, !tbaa !1
  %100 = sext i32 %99 to i64
  %101 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %100, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 %101)
  %102 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

; <label>:104                                     ; preds = %94
  %105 = load i32, i32* %i, align 4, !tbaa !1
  %106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 %105)
  br label %107

; <label>:107                                     ; preds = %104, %94
  br label %108

; <label>:108                                     ; preds = %107
  %109 = load i32, i32* %i, align 4, !tbaa !1
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %i, align 4, !tbaa !1
  br label %91

; <label>:111                                     ; preds = %91
  %112 = load i16, i16* getelementptr inbounds (%union.U4, %union.U4* @g_27, i32 0, i32 0), align 2, !tbaa !10
  %113 = zext i16 %112 to i64
  %114 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %113, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 %114)
  %115 = load i16, i16* getelementptr inbounds (%union.U4, %union.U4* @g_27, i32 0, i32 0), align 2, !tbaa !10
  %116 = sext i16 %115 to i64
  %117 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %116, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 %117)
  %118 = load i8, i8* getelementptr inbounds ({ i8, [3 x i8] }, { i8, [3 x i8] }* @g_29, i32 0, i32 0), align 1, !tbaa !9
  %119 = zext i8 %118 to i64
  %120 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %119, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32 %120)
  %121 = load i8, i8* @g_71, align 1, !tbaa !9
  %122 = sext i8 %121 to i64
  %123 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %122, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 %123)
  %124 = load i64, i64* @g_73, align 8, !tbaa !7
  %125 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %124, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 %125)
  %126 = load i32, i32* @g_100, align 4, !tbaa !1
  %127 = zext i32 %126 to i64
  %128 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %127, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i32 %128)
  %129 = load i16, i16* @g_103, align 2, !tbaa !10
  %130 = sext i16 %129 to i64
  %131 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %130, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 %131)
  %132 = load i64, i64* @g_129, align 8, !tbaa !7
  %133 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %132, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i32 %133)
  %134 = load i32, i32* @g_135, align 4, !tbaa !1
  %135 = zext i32 %134 to i64
  %136 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %135, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i32 %136)
  %137 = load volatile i32, i32* getelementptr inbounds (%union.U0, %union.U0* @g_164, i32 0, i32 0), align 4, !tbaa !1
  %138 = zext i32 %137 to i64
  %139 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %138, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i32 %139)
  %140 = load volatile i16, i16* bitcast (%union.U0* @g_164 to i16*), align 2, !tbaa !10
  %141 = sext i16 %140 to i64
  %142 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %141, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i32 %142)
  %143 = load volatile i32, i32* getelementptr inbounds (%union.U0, %union.U0* @g_164, i32 0, i32 0), align 4, !tbaa !1
  %144 = zext i32 %143 to i64
  %145 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %144, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i32 %145)
  %146 = load volatile i16, i16* bitcast (%union.U0* @g_164 to i16*), align 2, !tbaa !10
  %147 = sext i16 %146 to i64
  %148 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %147, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i32 %148)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %149

; <label>:149                                     ; preds = %177, %111
  %150 = load i32, i32* %i, align 4, !tbaa !1
  %151 = icmp slt i32 %150, 3
  br i1 %151, label %152, label %180

; <label>:152                                     ; preds = %149
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %153

; <label>:153                                     ; preds = %173, %152
  %154 = load i32, i32* %j, align 4, !tbaa !1
  %155 = icmp slt i32 %154, 5
  br i1 %155, label %156, label %176

; <label>:156                                     ; preds = %153
  %157 = load i32, i32* %j, align 4, !tbaa !1
  %158 = sext i32 %157 to i64
  %159 = load i32, i32* %i, align 4, !tbaa !1
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [3 x [5 x i8]], [3 x [5 x i8]]* @g_170, i32 0, i64 %160
  %162 = getelementptr inbounds [5 x i8], [5 x i8]* %161, i32 0, i64 %158
  %163 = load i8, i8* %162, align 1, !tbaa !9
  %164 = zext i8 %163 to i64
  %165 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %164, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i32 %165)
  %166 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %172

; <label>:168                                     ; preds = %156
  %169 = load i32, i32* %i, align 4, !tbaa !1
  %170 = load i32, i32* %j, align 4, !tbaa !1
  %171 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i32 0), i32 %169, i32 %170)
  br label %172

; <label>:172                                     ; preds = %168, %156
  br label %173

; <label>:173                                     ; preds = %172
  %174 = load i32, i32* %j, align 4, !tbaa !1
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %j, align 4, !tbaa !1
  br label %153

; <label>:176                                     ; preds = %153
  br label %177

; <label>:177                                     ; preds = %176
  %178 = load i32, i32* %i, align 4, !tbaa !1
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %i, align 4, !tbaa !1
  br label %149

; <label>:180                                     ; preds = %149
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %181

; <label>:181                                     ; preds = %209, %180
  %182 = load i32, i32* %i, align 4, !tbaa !1
  %183 = icmp slt i32 %182, 7
  br i1 %183, label %184, label %212

; <label>:184                                     ; preds = %181
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %185

; <label>:185                                     ; preds = %205, %184
  %186 = load i32, i32* %j, align 4, !tbaa !1
  %187 = icmp slt i32 %186, 9
  br i1 %187, label %188, label %208

; <label>:188                                     ; preds = %185
  %189 = load i32, i32* %j, align 4, !tbaa !1
  %190 = sext i32 %189 to i64
  %191 = load i32, i32* %i, align 4, !tbaa !1
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds [7 x [9 x i8]], [7 x [9 x i8]]* @g_172, i32 0, i64 %192
  %194 = getelementptr inbounds [9 x i8], [9 x i8]* %193, i32 0, i64 %190
  %195 = load i8, i8* %194, align 1, !tbaa !9
  %196 = zext i8 %195 to i64
  %197 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %196, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0), i32 %197)
  %198 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %204

; <label>:200                                     ; preds = %188
  %201 = load i32, i32* %i, align 4, !tbaa !1
  %202 = load i32, i32* %j, align 4, !tbaa !1
  %203 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i32 0), i32 %201, i32 %202)
  br label %204

; <label>:204                                     ; preds = %200, %188
  br label %205

; <label>:205                                     ; preds = %204
  %206 = load i32, i32* %j, align 4, !tbaa !1
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %j, align 4, !tbaa !1
  br label %185

; <label>:208                                     ; preds = %185
  br label %209

; <label>:209                                     ; preds = %208
  %210 = load i32, i32* %i, align 4, !tbaa !1
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %i, align 4, !tbaa !1
  br label %181

; <label>:212                                     ; preds = %181
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %213

; <label>:213                                     ; preds = %253, %212
  %214 = load i32, i32* %i, align 4, !tbaa !1
  %215 = icmp slt i32 %214, 6
  br i1 %215, label %216, label %256

; <label>:216                                     ; preds = %213
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %217

; <label>:217                                     ; preds = %249, %216
  %218 = load i32, i32* %j, align 4, !tbaa !1
  %219 = icmp slt i32 %218, 5
  br i1 %219, label %220, label %252

; <label>:220                                     ; preds = %217
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %221

; <label>:221                                     ; preds = %245, %220
  %222 = load i32, i32* %k, align 4, !tbaa !1
  %223 = icmp slt i32 %222, 1
  br i1 %223, label %224, label %248

; <label>:224                                     ; preds = %221
  %225 = load i32, i32* %k, align 4, !tbaa !1
  %226 = sext i32 %225 to i64
  %227 = load i32, i32* %j, align 4, !tbaa !1
  %228 = sext i32 %227 to i64
  %229 = load i32, i32* %i, align 4, !tbaa !1
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds [6 x [5 x [1 x i16]]], [6 x [5 x [1 x i16]]]* @g_185, i32 0, i64 %230
  %232 = getelementptr inbounds [5 x [1 x i16]], [5 x [1 x i16]]* %231, i32 0, i64 %228
  %233 = getelementptr inbounds [1 x i16], [1 x i16]* %232, i32 0, i64 %226
  %234 = load i16, i16* %233, align 2, !tbaa !10
  %235 = zext i16 %234 to i64
  %236 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %235, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0), i32 %236)
  %237 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %244

; <label>:239                                     ; preds = %224
  %240 = load i32, i32* %i, align 4, !tbaa !1
  %241 = load i32, i32* %j, align 4, !tbaa !1
  %242 = load i32, i32* %k, align 4, !tbaa !1
  %243 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i32 0, i32 0), i32 %240, i32 %241, i32 %242)
  br label %244

; <label>:244                                     ; preds = %239, %224
  br label %245

; <label>:245                                     ; preds = %244
  %246 = load i32, i32* %k, align 4, !tbaa !1
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %k, align 4, !tbaa !1
  br label %221

; <label>:248                                     ; preds = %221
  br label %249

; <label>:249                                     ; preds = %248
  %250 = load i32, i32* %j, align 4, !tbaa !1
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %j, align 4, !tbaa !1
  br label %217

; <label>:252                                     ; preds = %217
  br label %253

; <label>:253                                     ; preds = %252
  %254 = load i32, i32* %i, align 4, !tbaa !1
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %i, align 4, !tbaa !1
  br label %213

; <label>:256                                     ; preds = %213
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %257

; <label>:257                                     ; preds = %273, %256
  %258 = load i32, i32* %i, align 4, !tbaa !1
  %259 = icmp slt i32 %258, 1
  br i1 %259, label %260, label %276

; <label>:260                                     ; preds = %257
  %261 = load i32, i32* %i, align 4, !tbaa !1
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds [1 x i8], [1 x i8]* @g_190, i32 0, i64 %262
  %264 = load volatile i8, i8* %263, align 1, !tbaa !9
  %265 = zext i8 %264 to i64
  %266 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %265, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i32 %266)
  %267 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %272

; <label>:269                                     ; preds = %260
  %270 = load i32, i32* %i, align 4, !tbaa !1
  %271 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 %270)
  br label %272

; <label>:272                                     ; preds = %269, %260
  br label %273

; <label>:273                                     ; preds = %272
  %274 = load i32, i32* %i, align 4, !tbaa !1
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %i, align 4, !tbaa !1
  br label %257

; <label>:276                                     ; preds = %257
  %277 = load i32, i32* @g_199, align 4, !tbaa !1
  %278 = sext i32 %277 to i64
  %279 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %278, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i32 %279)
  %280 = load volatile i16, i16* getelementptr inbounds (%union.U4, %union.U4* @g_220, i32 0, i32 0), align 2, !tbaa !10
  %281 = zext i16 %280 to i64
  %282 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %281, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i32 %282)
  %283 = load volatile i16, i16* getelementptr inbounds (%union.U4, %union.U4* @g_220, i32 0, i32 0), align 2, !tbaa !10
  %284 = sext i16 %283 to i64
  %285 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %284, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), i32 %285)
  %286 = load i32, i32* @g_227, align 4, !tbaa !1
  %287 = sext i32 %286 to i64
  %288 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %287, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i32 %288)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %289

; <label>:289                                     ; preds = %317, %276
  %290 = load i32, i32* %i, align 4, !tbaa !1
  %291 = icmp slt i32 %290, 7
  br i1 %291, label %292, label %320

; <label>:292                                     ; preds = %289
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %293

; <label>:293                                     ; preds = %313, %292
  %294 = load i32, i32* %j, align 4, !tbaa !1
  %295 = icmp slt i32 %294, 2
  br i1 %295, label %296, label %316

; <label>:296                                     ; preds = %293
  %297 = load i32, i32* %j, align 4, !tbaa !1
  %298 = sext i32 %297 to i64
  %299 = load i32, i32* %i, align 4, !tbaa !1
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds [7 x [2 x i32]], [7 x [2 x i32]]* @g_230, i32 0, i64 %300
  %302 = getelementptr inbounds [2 x i32], [2 x i32]* %301, i32 0, i64 %298
  %303 = load volatile i32, i32* %302, align 4, !tbaa !1
  %304 = sext i32 %303 to i64
  %305 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %304, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i32 0, i32 0), i32 %305)
  %306 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %312

; <label>:308                                     ; preds = %296
  %309 = load i32, i32* %i, align 4, !tbaa !1
  %310 = load i32, i32* %j, align 4, !tbaa !1
  %311 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i32 0), i32 %309, i32 %310)
  br label %312

; <label>:312                                     ; preds = %308, %296
  br label %313

; <label>:313                                     ; preds = %312
  %314 = load i32, i32* %j, align 4, !tbaa !1
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* %j, align 4, !tbaa !1
  br label %293

; <label>:316                                     ; preds = %293
  br label %317

; <label>:317                                     ; preds = %316
  %318 = load i32, i32* %i, align 4, !tbaa !1
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %i, align 4, !tbaa !1
  br label %289

; <label>:320                                     ; preds = %289
  %321 = load volatile i16, i16* @g_231, align 2, !tbaa !10
  %322 = sext i16 %321 to i64
  %323 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %322, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 %323)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %324

; <label>:324                                     ; preds = %351, %320
  %325 = load i32, i32* %i, align 4, !tbaa !1
  %326 = icmp slt i32 %325, 2
  br i1 %326, label %327, label %354

; <label>:327                                     ; preds = %324
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %328

; <label>:328                                     ; preds = %347, %327
  %329 = load i32, i32* %j, align 4, !tbaa !1
  %330 = icmp slt i32 %329, 5
  br i1 %330, label %331, label %350

; <label>:331                                     ; preds = %328
  %332 = load i32, i32* %j, align 4, !tbaa !1
  %333 = sext i32 %332 to i64
  %334 = load i32, i32* %i, align 4, !tbaa !1
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds [2 x [5 x i64]], [2 x [5 x i64]]* @g_233, i32 0, i64 %335
  %337 = getelementptr inbounds [5 x i64], [5 x i64]* %336, i32 0, i64 %333
  %338 = load volatile i64, i64* %337, align 8, !tbaa !7
  %339 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %338, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i32 0, i32 0), i32 %339)
  %340 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %346

; <label>:342                                     ; preds = %331
  %343 = load i32, i32* %i, align 4, !tbaa !1
  %344 = load i32, i32* %j, align 4, !tbaa !1
  %345 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i32 0), i32 %343, i32 %344)
  br label %346

; <label>:346                                     ; preds = %342, %331
  br label %347

; <label>:347                                     ; preds = %346
  %348 = load i32, i32* %j, align 4, !tbaa !1
  %349 = add nsw i32 %348, 1
  store i32 %349, i32* %j, align 4, !tbaa !1
  br label %328

; <label>:350                                     ; preds = %328
  br label %351

; <label>:351                                     ; preds = %350
  %352 = load i32, i32* %i, align 4, !tbaa !1
  %353 = add nsw i32 %352, 1
  store i32 %353, i32* %i, align 4, !tbaa !1
  br label %324

; <label>:354                                     ; preds = %324
  %355 = load i8, i8* @g_272, align 1, !tbaa !9
  %356 = sext i8 %355 to i64
  %357 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %356, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i32 %357)
  %358 = load i8, i8* @g_316, align 1, !tbaa !9
  %359 = sext i8 %358 to i64
  %360 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %359, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i32 %360)
  %361 = load i8, i8* @g_318, align 1, !tbaa !9
  %362 = sext i8 %361 to i64
  %363 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %362, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i32 %363)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %364

; <label>:364                                     ; preds = %392, %354
  %365 = load i32, i32* %i, align 4, !tbaa !1
  %366 = icmp slt i32 %365, 6
  br i1 %366, label %367, label %395

; <label>:367                                     ; preds = %364
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %368

; <label>:368                                     ; preds = %388, %367
  %369 = load i32, i32* %j, align 4, !tbaa !1
  %370 = icmp slt i32 %369, 6
  br i1 %370, label %371, label %391

; <label>:371                                     ; preds = %368
  %372 = load i32, i32* %j, align 4, !tbaa !1
  %373 = sext i32 %372 to i64
  %374 = load i32, i32* %i, align 4, !tbaa !1
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds [6 x [6 x i32]], [6 x [6 x i32]]* @g_374, i32 0, i64 %375
  %377 = getelementptr inbounds [6 x i32], [6 x i32]* %376, i32 0, i64 %373
  %378 = load volatile i32, i32* %377, align 4, !tbaa !1
  %379 = zext i32 %378 to i64
  %380 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %379, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 %380)
  %381 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %383, label %387

; <label>:383                                     ; preds = %371
  %384 = load i32, i32* %i, align 4, !tbaa !1
  %385 = load i32, i32* %j, align 4, !tbaa !1
  %386 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i32 0), i32 %384, i32 %385)
  br label %387

; <label>:387                                     ; preds = %383, %371
  br label %388

; <label>:388                                     ; preds = %387
  %389 = load i32, i32* %j, align 4, !tbaa !1
  %390 = add nsw i32 %389, 1
  store i32 %390, i32* %j, align 4, !tbaa !1
  br label %368

; <label>:391                                     ; preds = %368
  br label %392

; <label>:392                                     ; preds = %391
  %393 = load i32, i32* %i, align 4, !tbaa !1
  %394 = add nsw i32 %393, 1
  store i32 %394, i32* %i, align 4, !tbaa !1
  br label %364

; <label>:395                                     ; preds = %364
  %396 = load volatile i16, i16* getelementptr inbounds (%union.U3, %union.U3* @g_445, i32 0, i32 0), align 2, !tbaa !10
  %397 = sext i16 %396 to i64
  %398 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %397, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0), i32 %398)
  %399 = load volatile i8, i8* @g_630, align 1, !tbaa !9
  %400 = sext i8 %399 to i64
  %401 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %400, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), i32 %401)
  %402 = load volatile i8, i8* @g_633, align 1, !tbaa !9
  %403 = zext i8 %402 to i64
  %404 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %403, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), i32 %404)
  %405 = load i64, i64* @g_670, align 8, !tbaa !7
  %406 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %405, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i32 %406)
  %407 = load volatile i32, i32* @g_671, align 4, !tbaa !1
  %408 = sext i32 %407 to i64
  %409 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %408, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), i32 %409)
  %410 = load i64, i64* @g_672, align 8, !tbaa !7
  %411 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %410, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0), i32 %411)
  %412 = load i16, i16* @g_674, align 2, !tbaa !10
  %413 = sext i16 %412 to i64
  %414 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %413, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), i32 %414)
  %415 = load i8, i8* @g_676, align 1, !tbaa !9
  %416 = sext i8 %415 to i64
  %417 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %416, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0), i32 %417)
  %418 = load volatile i32, i32* @g_689, align 4, !tbaa !1
  %419 = zext i32 %418 to i64
  %420 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %419, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i32 0, i32 0), i32 %420)
  %421 = load i16, i16* @g_697, align 2, !tbaa !10
  %422 = zext i16 %421 to i64
  %423 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %422, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i32 %423)
  %424 = load i8, i8* getelementptr inbounds ({ i8, [3 x i8] }, { i8, [3 x i8] }* @g_702, i32 0, i32 0), align 1, !tbaa !9
  %425 = zext i8 %424 to i64
  %426 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %425, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i32 0, i32 0), i32 %426)
  %427 = load volatile i32, i32* @g_828, align 4, !tbaa !1
  %428 = zext i32 %427 to i64
  %429 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %428, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0), i32 %429)
  %430 = load volatile i16, i16* getelementptr inbounds (%union.U3, %union.U3* @g_876, i32 0, i32 0), align 2, !tbaa !10
  %431 = sext i16 %430 to i64
  %432 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %431, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.45, i32 0, i32 0), i32 %432)
  %433 = load i16, i16* getelementptr inbounds (%union.U4, %union.U4* @g_900, i32 0, i32 0), align 2, !tbaa !10
  %434 = zext i16 %433 to i64
  %435 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %434, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i32 0, i32 0), i32 %435)
  %436 = load i16, i16* getelementptr inbounds (%union.U4, %union.U4* @g_900, i32 0, i32 0), align 2, !tbaa !10
  %437 = sext i16 %436 to i64
  %438 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %437, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.47, i32 0, i32 0), i32 %438)
  %439 = load volatile i16, i16* getelementptr inbounds (%union.U3, %union.U3* @g_908, i32 0, i32 0), align 2, !tbaa !10
  %440 = sext i16 %439 to i64
  %441 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %440, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i32 0, i32 0), i32 %441)
  %442 = load i16, i16* @g_910, align 2, !tbaa !10
  %443 = sext i16 %442 to i64
  %444 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %443, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0), i32 %444)
  %445 = load volatile i16, i16* getelementptr inbounds (%union.U3, %union.U3* @g_923, i32 0, i32 0), align 2, !tbaa !10
  %446 = sext i16 %445 to i64
  %447 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %446, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i32 0, i32 0), i32 %447)
  %448 = load volatile i16, i16* getelementptr inbounds (%union.U3, %union.U3* @g_939, i32 0, i32 0), align 2, !tbaa !10
  %449 = sext i16 %448 to i64
  %450 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %449, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.51, i32 0, i32 0), i32 %450)
  %451 = load i32, i32* getelementptr inbounds (%union.U0, %union.U0* @g_954, i32 0, i32 0), align 4, !tbaa !1
  %452 = zext i32 %451 to i64
  %453 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %452, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.52, i32 0, i32 0), i32 %453)
  %454 = load i16, i16* bitcast (%union.U0* @g_954 to i16*), align 2, !tbaa !10
  %455 = sext i16 %454 to i64
  %456 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %455, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.53, i32 0, i32 0), i32 %456)
  %457 = load i32, i32* getelementptr inbounds (%union.U0, %union.U0* @g_954, i32 0, i32 0), align 4, !tbaa !1
  %458 = zext i32 %457 to i64
  %459 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %458, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.54, i32 0, i32 0), i32 %459)
  %460 = load i16, i16* bitcast (%union.U0* @g_954 to i16*), align 2, !tbaa !10
  %461 = sext i16 %460 to i64
  %462 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %461, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i32 0, i32 0), i32 %462)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %463

; <label>:463                                     ; preds = %479, %395
  %464 = load i32, i32* %i, align 4, !tbaa !1
  %465 = icmp slt i32 %464, 8
  br i1 %465, label %466, label %482

; <label>:466                                     ; preds = %463
  %467 = load i32, i32* %i, align 4, !tbaa !1
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds [8 x i32], [8 x i32]* @g_1037, i32 0, i64 %468
  %470 = load volatile i32, i32* %469, align 4, !tbaa !1
  %471 = sext i32 %470 to i64
  %472 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %471, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.56, i32 0, i32 0), i32 %472)
  %473 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %474 = icmp ne i32 %473, 0
  br i1 %474, label %475, label %478

; <label>:475                                     ; preds = %466
  %476 = load i32, i32* %i, align 4, !tbaa !1
  %477 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 %476)
  br label %478

; <label>:478                                     ; preds = %475, %466
  br label %479

; <label>:479                                     ; preds = %478
  %480 = load i32, i32* %i, align 4, !tbaa !1
  %481 = add nsw i32 %480, 1
  store i32 %481, i32* %i, align 4, !tbaa !1
  br label %463

; <label>:482                                     ; preds = %463
  %483 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i32 0, i32 0), i32 %483)
  %484 = load i32, i32* getelementptr inbounds (%union.U5, %union.U5* @g_1281, i32 0, i32 0), align 4, !tbaa !1
  %485 = sext i32 %484 to i64
  %486 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %485, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.58, i32 0, i32 0), i32 %486)
  %487 = load i64, i64* @g_1336, align 8, !tbaa !7
  %488 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %487, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i32 0, i32 0), i32 %488)
  %489 = load i16, i16* @g_1421, align 2, !tbaa !10
  %490 = sext i16 %489 to i64
  %491 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %490, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i32 0, i32 0), i32 %491)
  %492 = load i32, i32* @g_1440, align 4, !tbaa !1
  %493 = sext i32 %492 to i64
  %494 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %493, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.61, i32 0, i32 0), i32 %494)
  %495 = load i16, i16* @g_1443, align 2, !tbaa !10
  %496 = sext i16 %495 to i64
  %497 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %496, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i32 0, i32 0), i32 %497)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %498

; <label>:498                                     ; preds = %514, %482
  %499 = load i32, i32* %i, align 4, !tbaa !1
  %500 = icmp slt i32 %499, 1
  br i1 %500, label %501, label %517

; <label>:501                                     ; preds = %498
  %502 = load i32, i32* %i, align 4, !tbaa !1
  %503 = sext i32 %502 to i64
  %504 = getelementptr inbounds [1 x i32], [1 x i32]* @g_1444, i32 0, i64 %503
  %505 = load i32, i32* %504, align 4, !tbaa !1
  %506 = zext i32 %505 to i64
  %507 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %506, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.63, i32 0, i32 0), i32 %507)
  %508 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %509 = icmp ne i32 %508, 0
  br i1 %509, label %510, label %513

; <label>:510                                     ; preds = %501
  %511 = load i32, i32* %i, align 4, !tbaa !1
  %512 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 %511)
  br label %513

; <label>:513                                     ; preds = %510, %501
  br label %514

; <label>:514                                     ; preds = %513
  %515 = load i32, i32* %i, align 4, !tbaa !1
  %516 = add nsw i32 %515, 1
  store i32 %516, i32* %i, align 4, !tbaa !1
  br label %498

; <label>:517                                     ; preds = %498
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %518

; <label>:518                                     ; preds = %534, %517
  %519 = load i32, i32* %i, align 4, !tbaa !1
  %520 = icmp slt i32 %519, 4
  br i1 %520, label %521, label %537

; <label>:521                                     ; preds = %518
  %522 = load i32, i32* %i, align 4, !tbaa !1
  %523 = sext i32 %522 to i64
  %524 = getelementptr inbounds [4 x i32], [4 x i32]* @g_1462, i32 0, i64 %523
  %525 = load i32, i32* %524, align 4, !tbaa !1
  %526 = sext i32 %525 to i64
  %527 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %526, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.64, i32 0, i32 0), i32 %527)
  %528 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %529 = icmp ne i32 %528, 0
  br i1 %529, label %530, label %533

; <label>:530                                     ; preds = %521
  %531 = load i32, i32* %i, align 4, !tbaa !1
  %532 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 %531)
  br label %533

; <label>:533                                     ; preds = %530, %521
  br label %534

; <label>:534                                     ; preds = %533
  %535 = load i32, i32* %i, align 4, !tbaa !1
  %536 = add nsw i32 %535, 1
  store i32 %536, i32* %i, align 4, !tbaa !1
  br label %518

; <label>:537                                     ; preds = %518
  %538 = load volatile i16, i16* getelementptr inbounds (%union.U3, %union.U3* @g_1478, i32 0, i32 0), align 2, !tbaa !10
  %539 = sext i16 %538 to i64
  %540 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %539, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.65, i32 0, i32 0), i32 %540)
  %541 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %542 = zext i32 %541 to i64
  %543 = xor i64 %542, 4294967295
  %544 = trunc i64 %543 to i32
  %545 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %544, i32 %545)
  %546 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %546) #1
  %547 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %547) #1
  %548 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %548) #1
  %549 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %549) #1
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
  %l_11 = alloca i64, align 8
  %l_18 = alloca i8*, align 8
  %1 = bitcast i64* %l_11 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store i64 3357233763316962607, i64* %l_11, align 8, !tbaa !7
  %2 = bitcast i8** %l_18 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store i8* null, i8** %l_18, align 8, !tbaa !5
  %3 = load i64, i64* %l_11, align 8, !tbaa !7
  %4 = trunc i64 %3 to i16
  %5 = call zeroext i16 @safe_unary_minus_func_uint16_t_u(i16 zeroext %4)
  %6 = trunc i16 %5 to i8
  %7 = load i8*, i8** %l_18, align 8, !tbaa !5
  %8 = icmp eq i8* null, %7
  %9 = zext i1 %8 to i32
  %10 = trunc i32 %9 to i8
  %11 = call zeroext i8 @safe_rshift_func_uint8_t_u_u(i8 zeroext %10, i32 5)
  %12 = zext i8 %11 to i64
  %13 = load i64, i64* %l_11, align 8, !tbaa !7
  %14 = xor i64 %12, %13
  %15 = trunc i64 %14 to i32
  %16 = load i64, i64* %l_11, align 8, !tbaa !7
  %17 = trunc i64 %16 to i32
  %18 = call i32 @safe_sub_func_int32_t_s_s(i32 %15, i32 %17)
  %19 = sext i32 %18 to i64
  %20 = call zeroext i16 @safe_unary_minus_func_uint16_t_u(i16 zeroext 9787)
  %21 = zext i16 %20 to i64
  %22 = call i64 @safe_mod_func_int64_t_s_s(i64 %19, i64 %21)
  %23 = xor i64 2977788601, %22
  %24 = icmp eq i64 %23, 27912
  %25 = zext i1 %24 to i32
  %26 = trunc i32 %25 to i8
  %27 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %6, i8 zeroext %26)
  %28 = zext i8 %27 to i32
  %29 = load i64, i64* %l_11, align 8, !tbaa !7
  %30 = trunc i64 %29 to i8
  %31 = load i32, i32* getelementptr inbounds ([9 x %union.U5], [9 x %union.U5]* @g_26, i32 0, i64 2, i32 0), align 4, !tbaa !1
  %32 = sext i32 %31 to i64
  %33 = load i64, i64* %l_11, align 8, !tbaa !7
  %34 = trunc i64 %33 to i16
  %35 = load i32, i32* getelementptr inbounds ([9 x %union.U5], [9 x %union.U5]* @g_26, i32 0, i64 2, i32 0), align 4
  %36 = load i16, i16* getelementptr inbounds (%union.U4, %union.U4* @g_27, i32 0, i32 0), align 2
  %37 = call signext i16 @func_20(i32 %35, i8 signext %30, i64 %32, i16 signext %34, i16 %36)
  %38 = sext i16 %37 to i32
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

; <label>:40                                      ; preds = %0
  %41 = load i32, i32* getelementptr inbounds ([9 x %union.U5], [9 x %union.U5]* @g_26, i32 0, i64 2, i32 0), align 4, !tbaa !1
  %42 = icmp ne i32 %41, 0
  br label %43

; <label>:43                                      ; preds = %40, %0
  %44 = phi i1 [ true, %0 ], [ %42, %40 ]
  %45 = zext i1 %44 to i32
  %46 = sext i32 %45 to i64
  %47 = load i64, i64* %l_11, align 8, !tbaa !7
  %48 = icmp ne i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = icmp eq i32 %28, %49
  %51 = zext i1 %50 to i32
  %52 = load i32, i32* getelementptr inbounds ([9 x %union.U5], [9 x %union.U5]* @g_26, i32 0, i64 2, i32 0), align 4, !tbaa !1
  %53 = load i16, i16* getelementptr inbounds (%union.U4, %union.U4* @g_27, i32 0, i32 0), align 2, !tbaa !10
  %54 = load i32, i32* getelementptr inbounds (%union.U1, %union.U1* bitcast ({ i8, [3 x i8] }* @g_29 to %union.U1*), i32 0, i32 0), align 4
  %55 = load i16, i16* getelementptr inbounds (%union.U4, %union.U4* @g_27, i32 0, i32 0), align 2
  %56 = call i32 @func_2(i32 %51, i32 %52, i16 zeroext %53, i32 %54, i16 %55)
  %57 = load i32*, i32** @g_198, align 8, !tbaa !5
  store i32 %56, i32* %57, align 4, !tbaa !1
  %58 = load i64, i64* %l_11, align 8, !tbaa !7
  %59 = trunc i64 %58 to i32
  %60 = bitcast i8** %l_18 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #1
  %61 = bitcast i64* %l_11 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #1
  ret i32 %59
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
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.66, i32 0, i32 0), i8* %8, i64 %11)
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
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.67, i32 0, i32 0), i32 %3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @func_2(i32 %p_3, i32 %p_4, i16 zeroext %p_5, i32 %p_6.coerce, i16 %p_7.coerce) #0 {
  %p_6 = alloca %union.U1, align 4
  %p_7 = alloca %union.U4, align 2
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i16, align 2
  %l_30 = alloca i32*, align 8
  %l_31 = alloca i32*, align 8
  %l_32 = alloca i32*, align 8
  %l_33 = alloca i32*, align 8
  %l_34 = alloca [5 x i32*], align 16
  %l_35 = alloca i32, align 4
  %l_50 = alloca i64, align 8
  %l_1042 = alloca [4 x [9 x [1 x i32]]], align 16
  %l_1043 = alloca i64*, align 8
  %l_1044 = alloca i64*, align 8
  %l_1045 = alloca i64*, align 8
  %l_1046 = alloca [3 x i64*], align 16
  %l_1047 = alloca [5 x [8 x i8]], align 16
  %l_1048 = alloca %union.U5, align 4
  %l_1269 = alloca i32**, align 8
  %l_1270 = alloca i64**, align 8
  %l_1284 = alloca [3 x %union.U0], align 4
  %l_1285 = alloca i16, align 2
  %l_1378 = alloca [8 x i8**], align 16
  %l_1395 = alloca i32*, align 8
  %l_1394 = alloca [6 x [9 x [1 x i32**]]], align 16
  %l_1423 = alloca %union.U3*, align 8
  %l_1434 = alloca [5 x [10 x [5 x i8]]], align 16
  %l_1463 = alloca i16, align 2
  %l_1474 = alloca i32, align 4
  %l_1539 = alloca i32, align 4
  %l_1540 = alloca i16*, align 8
  %l_1568 = alloca [9 x i64**], align 16
  %l_1567 = alloca i64***, align 8
  %l_1633 = alloca i16***, align 8
  %l_1632 = alloca i16****, align 8
  %l_1631 = alloca i16*****, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %4 = getelementptr %union.U1, %union.U1* %p_6, i32 0, i32 0
  store i32 %p_6.coerce, i32* %4, align 4
  %5 = getelementptr %union.U4, %union.U4* %p_7, i32 0, i32 0
  store i16 %p_7.coerce, i16* %5, align 2
  store i32 %p_3, i32* %1, align 4, !tbaa !1
  store i32 %p_4, i32* %2, align 4, !tbaa !1
  store i16 %p_5, i16* %3, align 2, !tbaa !10
  %6 = bitcast i32** %l_30 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i32* getelementptr inbounds ([9 x %union.U5], [9 x %union.U5]* @g_26, i32 0, i64 2, i32 0), i32** %l_30, align 8, !tbaa !5
  %7 = bitcast i32** %l_31 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store i32* getelementptr inbounds ([9 x %union.U5], [9 x %union.U5]* @g_26, i32 0, i64 2, i32 0), i32** %l_31, align 8, !tbaa !5
  %8 = bitcast i32** %l_32 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i32* getelementptr inbounds ([9 x %union.U5], [9 x %union.U5]* @g_26, i32 0, i64 2, i32 0), i32** %l_32, align 8, !tbaa !5
  %9 = bitcast i32** %l_33 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store i32* getelementptr inbounds ([9 x %union.U5], [9 x %union.U5]* @g_26, i32 0, i64 2, i32 0), i32** %l_33, align 8, !tbaa !5
  %10 = bitcast [5 x i32*]* %l_34 to i8*
  call void @llvm.lifetime.start(i64 40, i8* %10) #1
  %11 = bitcast [5 x i32*]* %l_34 to i8*
  call void @llvm.memset.p0i8.i64(i8* %11, i8 0, i64 40, i32 16, i1 false)
  %12 = bitcast i8* %11 to [5 x i32*]*
  %13 = getelementptr [5 x i32*], [5 x i32*]* %12, i32 0, i32 0
  store i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x %union.U5]* @g_26 to i8*), i64 8) to i32*), i32** %13
  %14 = getelementptr [5 x i32*], [5 x i32*]* %12, i32 0, i32 1
  store i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x %union.U5]* @g_26 to i8*), i64 8) to i32*), i32** %14
  %15 = getelementptr [5 x i32*], [5 x i32*]* %12, i32 0, i32 2
  store i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x %union.U5]* @g_26 to i8*), i64 8) to i32*), i32** %15
  %16 = getelementptr [5 x i32*], [5 x i32*]* %12, i32 0, i32 3
  store i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x %union.U5]* @g_26 to i8*), i64 8) to i32*), i32** %16
  %17 = getelementptr [5 x i32*], [5 x i32*]* %12, i32 0, i32 4
  store i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x %union.U5]* @g_26 to i8*), i64 8) to i32*), i32** %17
  %18 = bitcast i32* %l_35 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  store i32 5, i32* %l_35, align 4, !tbaa !1
  %19 = bitcast i64* %l_50 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  store i64 5632800739177727202, i64* %l_50, align 8, !tbaa !7
  %20 = bitcast [4 x [9 x [1 x i32]]]* %l_1042 to i8*
  call void @llvm.lifetime.start(i64 144, i8* %20) #1
  %21 = bitcast [4 x [9 x [1 x i32]]]* %l_1042 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* bitcast ([4 x [9 x [1 x i32]]]* @func_2.l_1042 to i8*), i64 144, i32 16, i1 false)
  %22 = bitcast i64** %l_1043 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #1
  store i64* bitcast (%union.U2* @g_916 to i64*), i64** %l_1043, align 8, !tbaa !5
  %23 = bitcast i64** %l_1044 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #1
  store i64* bitcast (%union.U2* @g_423 to i64*), i64** %l_1044, align 8, !tbaa !5
  %24 = bitcast i64** %l_1045 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #1
  store i64* bitcast (%union.U2* @g_205 to i64*), i64** %l_1045, align 8, !tbaa !5
  %25 = bitcast [3 x i64*]* %l_1046 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %25) #1
  %26 = bitcast [5 x [8 x i8]]* %l_1047 to i8*
  call void @llvm.lifetime.start(i64 40, i8* %26) #1
  %27 = bitcast [5 x [8 x i8]]* %l_1047 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* getelementptr inbounds ([5 x [8 x i8]], [5 x [8 x i8]]* @func_2.l_1047, i32 0, i32 0, i32 0), i64 40, i32 16, i1 false)
  %28 = bitcast %union.U5* %l_1048 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #1
  %29 = bitcast %union.U5* %l_1048 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* bitcast (%union.U5* @func_2.l_1048 to i8*), i64 4, i32 4, i1 false)
  %30 = bitcast i32*** %l_1269 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %30) #1
  store i32** %l_33, i32*** %l_1269, align 8, !tbaa !5
  %31 = bitcast i64*** %l_1270 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %31) #1
  store i64** @g_145, i64*** %l_1270, align 8, !tbaa !5
  %32 = bitcast [3 x %union.U0]* %l_1284 to i8*
  call void @llvm.lifetime.start(i64 12, i8* %32) #1
  %33 = bitcast [3 x %union.U0]* %l_1284 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* bitcast ([3 x %union.U0]* @func_2.l_1284 to i8*), i64 12, i32 4, i1 false)
  %34 = bitcast i16* %l_1285 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %34) #1
  store i16 -6, i16* %l_1285, align 2, !tbaa !10
  %35 = bitcast [8 x i8**]* %l_1378 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %35) #1
  %36 = bitcast i32** %l_1395 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %36) #1
  %37 = getelementptr inbounds [4 x [9 x [1 x i32]]], [4 x [9 x [1 x i32]]]* %l_1042, i32 0, i64 3
  %38 = getelementptr inbounds [9 x [1 x i32]], [9 x [1 x i32]]* %37, i32 0, i64 3
  %39 = getelementptr inbounds [1 x i32], [1 x i32]* %38, i32 0, i64 0
  store i32* %39, i32** %l_1395, align 8, !tbaa !5
  %40 = bitcast [6 x [9 x [1 x i32**]]]* %l_1394 to i8*
  call void @llvm.lifetime.start(i64 432, i8* %40) #1
  %41 = getelementptr inbounds [6 x [9 x [1 x i32**]]], [6 x [9 x [1 x i32**]]]* %l_1394, i64 0, i64 0
  %42 = getelementptr inbounds [9 x [1 x i32**]], [9 x [1 x i32**]]* %41, i64 0, i64 0
  %43 = getelementptr inbounds [1 x i32**], [1 x i32**]* %42, i64 0, i64 0
  store i32** %l_1395, i32*** %43, !tbaa !5
  %44 = getelementptr inbounds [1 x i32**], [1 x i32**]* %42, i64 1
  %45 = getelementptr inbounds [1 x i32**], [1 x i32**]* %44, i64 0, i64 0
  store i32** %l_1395, i32*** %45, !tbaa !5
  %46 = getelementptr inbounds [1 x i32**], [1 x i32**]* %44, i64 1
  %47 = getelementptr inbounds [1 x i32**], [1 x i32**]* %46, i64 0, i64 0
  store i32** %l_1395, i32*** %47, !tbaa !5
  %48 = getelementptr inbounds [1 x i32**], [1 x i32**]* %46, i64 1
  %49 = getelementptr inbounds [1 x i32**], [1 x i32**]* %48, i64 0, i64 0
  store i32** %l_1395, i32*** %49, !tbaa !5
  %50 = getelementptr inbounds [1 x i32**], [1 x i32**]* %48, i64 1
  %51 = getelementptr inbounds [1 x i32**], [1 x i32**]* %50, i64 0, i64 0
  store i32** %l_1395, i32*** %51, !tbaa !5
  %52 = getelementptr inbounds [1 x i32**], [1 x i32**]* %50, i64 1
  %53 = getelementptr inbounds [1 x i32**], [1 x i32**]* %52, i64 0, i64 0
  store i32** %l_1395, i32*** %53, !tbaa !5
  %54 = getelementptr inbounds [1 x i32**], [1 x i32**]* %52, i64 1
  %55 = getelementptr inbounds [1 x i32**], [1 x i32**]* %54, i64 0, i64 0
  store i32** %l_1395, i32*** %55, !tbaa !5
  %56 = getelementptr inbounds [1 x i32**], [1 x i32**]* %54, i64 1
  %57 = getelementptr inbounds [1 x i32**], [1 x i32**]* %56, i64 0, i64 0
  store i32** %l_1395, i32*** %57, !tbaa !5
  %58 = getelementptr inbounds [1 x i32**], [1 x i32**]* %56, i64 1
  %59 = getelementptr inbounds [1 x i32**], [1 x i32**]* %58, i64 0, i64 0
  store i32** %l_1395, i32*** %59, !tbaa !5
  %60 = getelementptr inbounds [9 x [1 x i32**]], [9 x [1 x i32**]]* %41, i64 1
  %61 = getelementptr inbounds [9 x [1 x i32**]], [9 x [1 x i32**]]* %60, i64 0, i64 0
  %62 = getelementptr inbounds [1 x i32**], [1 x i32**]* %61, i64 0, i64 0
  store i32** %l_1395, i32*** %62, !tbaa !5
  %63 = getelementptr inbounds [1 x i32**], [1 x i32**]* %61, i64 1
  %64 = getelementptr inbounds [1 x i32**], [1 x i32**]* %63, i64 0, i64 0
  store i32** %l_1395, i32*** %64, !tbaa !5
  %65 = getelementptr inbounds [1 x i32**], [1 x i32**]* %63, i64 1
  %66 = getelementptr inbounds [1 x i32**], [1 x i32**]* %65, i64 0, i64 0
  store i32** %l_1395, i32*** %66, !tbaa !5
  %67 = getelementptr inbounds [1 x i32**], [1 x i32**]* %65, i64 1
  %68 = getelementptr inbounds [1 x i32**], [1 x i32**]* %67, i64 0, i64 0
  store i32** %l_1395, i32*** %68, !tbaa !5
  %69 = getelementptr inbounds [1 x i32**], [1 x i32**]* %67, i64 1
  %70 = getelementptr inbounds [1 x i32**], [1 x i32**]* %69, i64 0, i64 0
  store i32** %l_1395, i32*** %70, !tbaa !5
  %71 = getelementptr inbounds [1 x i32**], [1 x i32**]* %69, i64 1
  %72 = getelementptr inbounds [1 x i32**], [1 x i32**]* %71, i64 0, i64 0
  store i32** %l_1395, i32*** %72, !tbaa !5
  %73 = getelementptr inbounds [1 x i32**], [1 x i32**]* %71, i64 1
  %74 = getelementptr inbounds [1 x i32**], [1 x i32**]* %73, i64 0, i64 0
  store i32** %l_1395, i32*** %74, !tbaa !5
  %75 = getelementptr inbounds [1 x i32**], [1 x i32**]* %73, i64 1
  %76 = getelementptr inbounds [1 x i32**], [1 x i32**]* %75, i64 0, i64 0
  store i32** %l_1395, i32*** %76, !tbaa !5
  %77 = getelementptr inbounds [1 x i32**], [1 x i32**]* %75, i64 1
  %78 = getelementptr inbounds [1 x i32**], [1 x i32**]* %77, i64 0, i64 0
  store i32** %l_1395, i32*** %78, !tbaa !5
  %79 = getelementptr inbounds [9 x [1 x i32**]], [9 x [1 x i32**]]* %60, i64 1
  %80 = getelementptr inbounds [9 x [1 x i32**]], [9 x [1 x i32**]]* %79, i64 0, i64 0
  %81 = getelementptr inbounds [1 x i32**], [1 x i32**]* %80, i64 0, i64 0
  store i32** %l_1395, i32*** %81, !tbaa !5
  %82 = getelementptr inbounds [1 x i32**], [1 x i32**]* %80, i64 1
  %83 = getelementptr inbounds [1 x i32**], [1 x i32**]* %82, i64 0, i64 0
  store i32** %l_1395, i32*** %83, !tbaa !5
  %84 = getelementptr inbounds [1 x i32**], [1 x i32**]* %82, i64 1
  %85 = getelementptr inbounds [1 x i32**], [1 x i32**]* %84, i64 0, i64 0
  store i32** %l_1395, i32*** %85, !tbaa !5
  %86 = getelementptr inbounds [1 x i32**], [1 x i32**]* %84, i64 1
  %87 = getelementptr inbounds [1 x i32**], [1 x i32**]* %86, i64 0, i64 0
  store i32** %l_1395, i32*** %87, !tbaa !5
  %88 = getelementptr inbounds [1 x i32**], [1 x i32**]* %86, i64 1
  %89 = getelementptr inbounds [1 x i32**], [1 x i32**]* %88, i64 0, i64 0
  store i32** %l_1395, i32*** %89, !tbaa !5
  %90 = getelementptr inbounds [1 x i32**], [1 x i32**]* %88, i64 1
  %91 = getelementptr inbounds [1 x i32**], [1 x i32**]* %90, i64 0, i64 0
  store i32** %l_1395, i32*** %91, !tbaa !5
  %92 = getelementptr inbounds [1 x i32**], [1 x i32**]* %90, i64 1
  %93 = getelementptr inbounds [1 x i32**], [1 x i32**]* %92, i64 0, i64 0
  store i32** %l_1395, i32*** %93, !tbaa !5
  %94 = getelementptr inbounds [1 x i32**], [1 x i32**]* %92, i64 1
  %95 = getelementptr inbounds [1 x i32**], [1 x i32**]* %94, i64 0, i64 0
  store i32** %l_1395, i32*** %95, !tbaa !5
  %96 = getelementptr inbounds [1 x i32**], [1 x i32**]* %94, i64 1
  %97 = getelementptr inbounds [1 x i32**], [1 x i32**]* %96, i64 0, i64 0
  store i32** %l_1395, i32*** %97, !tbaa !5
  %98 = getelementptr inbounds [9 x [1 x i32**]], [9 x [1 x i32**]]* %79, i64 1
  %99 = getelementptr inbounds [9 x [1 x i32**]], [9 x [1 x i32**]]* %98, i64 0, i64 0
  %100 = getelementptr inbounds [1 x i32**], [1 x i32**]* %99, i64 0, i64 0
  store i32** %l_1395, i32*** %100, !tbaa !5
  %101 = getelementptr inbounds [1 x i32**], [1 x i32**]* %99, i64 1
  %102 = getelementptr inbounds [1 x i32**], [1 x i32**]* %101, i64 0, i64 0
  store i32** %l_1395, i32*** %102, !tbaa !5
  %103 = getelementptr inbounds [1 x i32**], [1 x i32**]* %101, i64 1
  %104 = getelementptr inbounds [1 x i32**], [1 x i32**]* %103, i64 0, i64 0
  store i32** %l_1395, i32*** %104, !tbaa !5
  %105 = getelementptr inbounds [1 x i32**], [1 x i32**]* %103, i64 1
  %106 = getelementptr inbounds [1 x i32**], [1 x i32**]* %105, i64 0, i64 0
  store i32** %l_1395, i32*** %106, !tbaa !5
  %107 = getelementptr inbounds [1 x i32**], [1 x i32**]* %105, i64 1
  %108 = getelementptr inbounds [1 x i32**], [1 x i32**]* %107, i64 0, i64 0
  store i32** %l_1395, i32*** %108, !tbaa !5
  %109 = getelementptr inbounds [1 x i32**], [1 x i32**]* %107, i64 1
  %110 = getelementptr inbounds [1 x i32**], [1 x i32**]* %109, i64 0, i64 0
  store i32** %l_1395, i32*** %110, !tbaa !5
  %111 = getelementptr inbounds [1 x i32**], [1 x i32**]* %109, i64 1
  %112 = getelementptr inbounds [1 x i32**], [1 x i32**]* %111, i64 0, i64 0
  store i32** %l_1395, i32*** %112, !tbaa !5
  %113 = getelementptr inbounds [1 x i32**], [1 x i32**]* %111, i64 1
  %114 = getelementptr inbounds [1 x i32**], [1 x i32**]* %113, i64 0, i64 0
  store i32** %l_1395, i32*** %114, !tbaa !5
  %115 = getelementptr inbounds [1 x i32**], [1 x i32**]* %113, i64 1
  %116 = getelementptr inbounds [1 x i32**], [1 x i32**]* %115, i64 0, i64 0
  store i32** %l_1395, i32*** %116, !tbaa !5
  %117 = getelementptr inbounds [9 x [1 x i32**]], [9 x [1 x i32**]]* %98, i64 1
  %118 = getelementptr inbounds [9 x [1 x i32**]], [9 x [1 x i32**]]* %117, i64 0, i64 0
  %119 = getelementptr inbounds [1 x i32**], [1 x i32**]* %118, i64 0, i64 0
  store i32** %l_1395, i32*** %119, !tbaa !5
  %120 = getelementptr inbounds [1 x i32**], [1 x i32**]* %118, i64 1
  %121 = getelementptr inbounds [1 x i32**], [1 x i32**]* %120, i64 0, i64 0
  store i32** %l_1395, i32*** %121, !tbaa !5
  %122 = getelementptr inbounds [1 x i32**], [1 x i32**]* %120, i64 1
  %123 = getelementptr inbounds [1 x i32**], [1 x i32**]* %122, i64 0, i64 0
  store i32** %l_1395, i32*** %123, !tbaa !5
  %124 = getelementptr inbounds [1 x i32**], [1 x i32**]* %122, i64 1
  %125 = getelementptr inbounds [1 x i32**], [1 x i32**]* %124, i64 0, i64 0
  store i32** %l_1395, i32*** %125, !tbaa !5
  %126 = getelementptr inbounds [1 x i32**], [1 x i32**]* %124, i64 1
  %127 = getelementptr inbounds [1 x i32**], [1 x i32**]* %126, i64 0, i64 0
  store i32** %l_1395, i32*** %127, !tbaa !5
  %128 = getelementptr inbounds [1 x i32**], [1 x i32**]* %126, i64 1
  %129 = getelementptr inbounds [1 x i32**], [1 x i32**]* %128, i64 0, i64 0
  store i32** %l_1395, i32*** %129, !tbaa !5
  %130 = getelementptr inbounds [1 x i32**], [1 x i32**]* %128, i64 1
  %131 = getelementptr inbounds [1 x i32**], [1 x i32**]* %130, i64 0, i64 0
  store i32** %l_1395, i32*** %131, !tbaa !5
  %132 = getelementptr inbounds [1 x i32**], [1 x i32**]* %130, i64 1
  %133 = getelementptr inbounds [1 x i32**], [1 x i32**]* %132, i64 0, i64 0
  store i32** %l_1395, i32*** %133, !tbaa !5
  %134 = getelementptr inbounds [1 x i32**], [1 x i32**]* %132, i64 1
  %135 = getelementptr inbounds [1 x i32**], [1 x i32**]* %134, i64 0, i64 0
  store i32** %l_1395, i32*** %135, !tbaa !5
  %136 = getelementptr inbounds [9 x [1 x i32**]], [9 x [1 x i32**]]* %117, i64 1
  %137 = getelementptr inbounds [9 x [1 x i32**]], [9 x [1 x i32**]]* %136, i64 0, i64 0
  %138 = getelementptr inbounds [1 x i32**], [1 x i32**]* %137, i64 0, i64 0
  store i32** %l_1395, i32*** %138, !tbaa !5
  %139 = getelementptr inbounds [1 x i32**], [1 x i32**]* %137, i64 1
  %140 = getelementptr inbounds [1 x i32**], [1 x i32**]* %139, i64 0, i64 0
  store i32** %l_1395, i32*** %140, !tbaa !5
  %141 = getelementptr inbounds [1 x i32**], [1 x i32**]* %139, i64 1
  %142 = getelementptr inbounds [1 x i32**], [1 x i32**]* %141, i64 0, i64 0
  store i32** %l_1395, i32*** %142, !tbaa !5
  %143 = getelementptr inbounds [1 x i32**], [1 x i32**]* %141, i64 1
  %144 = getelementptr inbounds [1 x i32**], [1 x i32**]* %143, i64 0, i64 0
  store i32** %l_1395, i32*** %144, !tbaa !5
  %145 = getelementptr inbounds [1 x i32**], [1 x i32**]* %143, i64 1
  %146 = getelementptr inbounds [1 x i32**], [1 x i32**]* %145, i64 0, i64 0
  store i32** %l_1395, i32*** %146, !tbaa !5
  %147 = getelementptr inbounds [1 x i32**], [1 x i32**]* %145, i64 1
  %148 = getelementptr inbounds [1 x i32**], [1 x i32**]* %147, i64 0, i64 0
  store i32** %l_1395, i32*** %148, !tbaa !5
  %149 = getelementptr inbounds [1 x i32**], [1 x i32**]* %147, i64 1
  %150 = getelementptr inbounds [1 x i32**], [1 x i32**]* %149, i64 0, i64 0
  store i32** %l_1395, i32*** %150, !tbaa !5
  %151 = getelementptr inbounds [1 x i32**], [1 x i32**]* %149, i64 1
  %152 = getelementptr inbounds [1 x i32**], [1 x i32**]* %151, i64 0, i64 0
  store i32** %l_1395, i32*** %152, !tbaa !5
  %153 = getelementptr inbounds [1 x i32**], [1 x i32**]* %151, i64 1
  %154 = getelementptr inbounds [1 x i32**], [1 x i32**]* %153, i64 0, i64 0
  store i32** %l_1395, i32*** %154, !tbaa !5
  %155 = bitcast %union.U3** %l_1423 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %155) #1
  store %union.U3* @g_923, %union.U3** %l_1423, align 8, !tbaa !5
  %156 = bitcast [5 x [10 x [5 x i8]]]* %l_1434 to i8*
  call void @llvm.lifetime.start(i64 250, i8* %156) #1
  %157 = bitcast [5 x [10 x [5 x i8]]]* %l_1434 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %157, i8* getelementptr inbounds ([5 x [10 x [5 x i8]]], [5 x [10 x [5 x i8]]]* @func_2.l_1434, i32 0, i32 0, i32 0, i32 0), i64 250, i32 16, i1 false)
  %158 = bitcast i16* %l_1463 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %158) #1
  store i16 -25640, i16* %l_1463, align 2, !tbaa !10
  %159 = bitcast i32* %l_1474 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %159) #1
  store i32 1, i32* %l_1474, align 4, !tbaa !1
  %160 = bitcast i32* %l_1539 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %160) #1
  store i32 -1323115736, i32* %l_1539, align 4, !tbaa !1
  %161 = bitcast i16** %l_1540 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %161) #1
  store i16* null, i16** %l_1540, align 8, !tbaa !5
  %162 = bitcast [9 x i64**]* %l_1568 to i8*
  call void @llvm.lifetime.start(i64 72, i8* %162) #1
  %163 = getelementptr inbounds [9 x i64**], [9 x i64**]* %l_1568, i64 0, i64 0
  store i64** %l_1044, i64*** %163, !tbaa !5
  %164 = getelementptr inbounds i64**, i64*** %163, i64 1
  store i64** %l_1044, i64*** %164, !tbaa !5
  %165 = getelementptr inbounds i64**, i64*** %164, i64 1
  store i64** %l_1044, i64*** %165, !tbaa !5
  %166 = getelementptr inbounds i64**, i64*** %165, i64 1
  store i64** %l_1044, i64*** %166, !tbaa !5
  %167 = getelementptr inbounds i64**, i64*** %166, i64 1
  store i64** %l_1044, i64*** %167, !tbaa !5
  %168 = getelementptr inbounds i64**, i64*** %167, i64 1
  store i64** %l_1044, i64*** %168, !tbaa !5
  %169 = getelementptr inbounds i64**, i64*** %168, i64 1
  store i64** %l_1044, i64*** %169, !tbaa !5
  %170 = getelementptr inbounds i64**, i64*** %169, i64 1
  store i64** %l_1044, i64*** %170, !tbaa !5
  %171 = getelementptr inbounds i64**, i64*** %170, i64 1
  store i64** %l_1044, i64*** %171, !tbaa !5
  %172 = bitcast i64**** %l_1567 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %172) #1
  %173 = getelementptr inbounds [9 x i64**], [9 x i64**]* %l_1568, i32 0, i64 7
  store i64*** %173, i64**** %l_1567, align 8, !tbaa !5
  %174 = bitcast i16**** %l_1633 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %174) #1
  store i16*** getelementptr inbounds ([3 x i16**], [3 x i16**]* @g_285, i32 0, i64 1), i16**** %l_1633, align 8, !tbaa !5
  %175 = bitcast i16***** %l_1632 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %175) #1
  store i16**** %l_1633, i16***** %l_1632, align 8, !tbaa !5
  %176 = bitcast i16****** %l_1631 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %176) #1
  store i16***** %l_1632, i16****** %l_1631, align 8, !tbaa !5
  %177 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %177) #1
  %178 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %178) #1
  %179 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %179) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %180

; <label>:180                                     ; preds = %187, %0
  %181 = load i32, i32* %i, align 4, !tbaa !1
  %182 = icmp slt i32 %181, 3
  br i1 %182, label %183, label %190

; <label>:183                                     ; preds = %180
  %184 = load i32, i32* %i, align 4, !tbaa !1
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [3 x i64*], [3 x i64*]* %l_1046, i32 0, i64 %185
  store i64* bitcast (%union.U2* @g_205 to i64*), i64** %186, align 8, !tbaa !5
  br label %187

; <label>:187                                     ; preds = %183
  %188 = load i32, i32* %i, align 4, !tbaa !1
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %i, align 4, !tbaa !1
  br label %180

; <label>:190                                     ; preds = %180
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %191

; <label>:191                                     ; preds = %198, %190
  %192 = load i32, i32* %i, align 4, !tbaa !1
  %193 = icmp slt i32 %192, 8
  br i1 %193, label %194, label %201

; <label>:194                                     ; preds = %191
  %195 = load i32, i32* %i, align 4, !tbaa !1
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds [8 x i8**], [8 x i8**]* %l_1378, i32 0, i64 %196
  store i8** @g_333, i8*** %197, align 8, !tbaa !5
  br label %198

; <label>:198                                     ; preds = %194
  %199 = load i32, i32* %i, align 4, !tbaa !1
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %i, align 4, !tbaa !1
  br label %191

; <label>:201                                     ; preds = %191
  %202 = load i32, i32* %l_35, align 4, !tbaa !1
  %203 = add i32 %202, -1
  store i32 %203, i32* %l_35, align 4, !tbaa !1
  %204 = load i32, i32* %2, align 4, !tbaa !1
  %205 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %205) #1
  %206 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %206) #1
  %207 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %207) #1
  %208 = bitcast i16****** %l_1631 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %208) #1
  %209 = bitcast i16***** %l_1632 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %209) #1
  %210 = bitcast i16**** %l_1633 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %210) #1
  %211 = bitcast i64**** %l_1567 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %211) #1
  %212 = bitcast [9 x i64**]* %l_1568 to i8*
  call void @llvm.lifetime.end(i64 72, i8* %212) #1
  %213 = bitcast i16** %l_1540 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %213) #1
  %214 = bitcast i32* %l_1539 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %214) #1
  %215 = bitcast i32* %l_1474 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %215) #1
  %216 = bitcast i16* %l_1463 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %216) #1
  %217 = bitcast [5 x [10 x [5 x i8]]]* %l_1434 to i8*
  call void @llvm.lifetime.end(i64 250, i8* %217) #1
  %218 = bitcast %union.U3** %l_1423 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %218) #1
  %219 = bitcast [6 x [9 x [1 x i32**]]]* %l_1394 to i8*
  call void @llvm.lifetime.end(i64 432, i8* %219) #1
  %220 = bitcast i32** %l_1395 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %220) #1
  %221 = bitcast [8 x i8**]* %l_1378 to i8*
  call void @llvm.lifetime.end(i64 64, i8* %221) #1
  %222 = bitcast i16* %l_1285 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %222) #1
  %223 = bitcast [3 x %union.U0]* %l_1284 to i8*
  call void @llvm.lifetime.end(i64 12, i8* %223) #1
  %224 = bitcast i64*** %l_1270 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %224) #1
  %225 = bitcast i32*** %l_1269 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %225) #1
  %226 = bitcast %union.U5* %l_1048 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %226) #1
  %227 = bitcast [5 x [8 x i8]]* %l_1047 to i8*
  call void @llvm.lifetime.end(i64 40, i8* %227) #1
  %228 = bitcast [3 x i64*]* %l_1046 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %228) #1
  %229 = bitcast i64** %l_1045 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %229) #1
  %230 = bitcast i64** %l_1044 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %230) #1
  %231 = bitcast i64** %l_1043 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %231) #1
  %232 = bitcast [4 x [9 x [1 x i32]]]* %l_1042 to i8*
  call void @llvm.lifetime.end(i64 144, i8* %232) #1
  %233 = bitcast i64* %l_50 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %233) #1
  %234 = bitcast i32* %l_35 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %234) #1
  %235 = bitcast [5 x i32*]* %l_34 to i8*
  call void @llvm.lifetime.end(i64 40, i8* %235) #1
  %236 = bitcast i32** %l_33 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %236) #1
  %237 = bitcast i32** %l_32 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %237) #1
  %238 = bitcast i32** %l_31 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %238) #1
  %239 = bitcast i32** %l_30 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %239) #1
  ret i32 %204
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %ui1, i8 zeroext %ui2) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  store i8 %ui1, i8* %1, align 1, !tbaa !9
  store i8 %ui2, i8* %2, align 1, !tbaa !9
  %3 = load i8, i8* %1, align 1, !tbaa !9
  %4 = zext i8 %3 to i32
  %5 = load i8, i8* %2, align 1, !tbaa !9
  %6 = zext i8 %5 to i32
  %7 = add nsw i32 %4, %6
  %8 = trunc i32 %7 to i8
  ret i8 %8
}

; Function Attrs: nounwind uwtable
define internal zeroext i16 @safe_unary_minus_func_uint16_t_u(i16 zeroext %ui) #0 {
  %1 = alloca i16, align 2
  store i16 %ui, i16* %1, align 2, !tbaa !10
  %2 = load i16, i16* %1, align 2, !tbaa !10
  %3 = zext i16 %2 to i32
  %4 = sub nsw i32 0, %3
  %5 = trunc i32 %4 to i16
  ret i16 %5
}

; Function Attrs: nounwind uwtable
define internal i64 @safe_mod_func_int64_t_s_s(i64 %si1, i64 %si2) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 %si1, i64* %1, align 8, !tbaa !7
  store i64 %si2, i64* %2, align 8, !tbaa !7
  %3 = load i64, i64* %2, align 8, !tbaa !7
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %11, label %5

; <label>:5                                       ; preds = %0
  %6 = load i64, i64* %1, align 8, !tbaa !7
  %7 = icmp eq i64 %6, -9223372036854775808
  br i1 %7, label %8, label %13

; <label>:8                                       ; preds = %5
  %9 = load i64, i64* %2, align 8, !tbaa !7
  %10 = icmp eq i64 %9, -1
  br i1 %10, label %11, label %13

; <label>:11                                      ; preds = %8, %0
  %12 = load i64, i64* %1, align 8, !tbaa !7
  br label %17

; <label>:13                                      ; preds = %8, %5
  %14 = load i64, i64* %1, align 8, !tbaa !7
  %15 = load i64, i64* %2, align 8, !tbaa !7
  %16 = srem i64 %14, %15
  br label %17

; <label>:17                                      ; preds = %13, %11
  %18 = phi i64 [ %12, %11 ], [ %16, %13 ]
  ret i64 %18
}

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
define internal signext i16 @func_20(i32 %p_21.coerce, i8 signext %p_22, i64 %p_23, i16 signext %p_24, i16 %p_25.coerce) #0 {
  %p_21 = alloca %union.U5, align 4
  %p_25 = alloca %union.U4, align 2
  %1 = alloca i8, align 1
  %2 = alloca i64, align 8
  %3 = alloca i16, align 2
  %l_28 = alloca i32, align 4
  %4 = getelementptr %union.U5, %union.U5* %p_21, i32 0, i32 0
  store i32 %p_21.coerce, i32* %4, align 4
  %5 = getelementptr %union.U4, %union.U4* %p_25, i32 0, i32 0
  store i16 %p_25.coerce, i16* %5, align 2
  store i8 %p_22, i8* %1, align 1, !tbaa !9
  store i64 %p_23, i64* %2, align 8, !tbaa !7
  store i16 %p_24, i16* %3, align 2, !tbaa !10
  %6 = bitcast i32* %l_28 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 1177188278, i32* %l_28, align 4, !tbaa !1
  %7 = load i32, i32* %l_28, align 4, !tbaa !1
  %8 = trunc i32 %7 to i16
  %9 = bitcast i32* %l_28 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #1
  ret i16 %8
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

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
!10 = !{!11, !11, i64 0}
!11 = !{!"short", !3, i64 0}
