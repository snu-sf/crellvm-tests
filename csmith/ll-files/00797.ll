; ModuleID = '00797.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S0 = type { i8, [3 x i8] }
%union.U1 = type { i8* }

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_4 = internal global i64 -405341981831228834, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"g_4\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"g_5\00", align 1
@g_10 = internal global i8 -1, align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"g_10\00", align 1
@g_73 = internal global i8 0, align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"g_73\00", align 1
@g_78 = internal constant [9 x [4 x i8]] [[4 x i8] c"j\DD\DDj", [4 x i8] c"j\DD\DDj", [4 x i8] c"j\DD\DDj", [4 x i8] c"j\DD\DDj", [4 x i8] c"j\DD\DDj", [4 x i8] c"j\DD\DDj", [4 x i8] c"j\DD\DDj", [4 x i8] c"j\DD\DDj", [4 x i8] c"j\DD\DDj"], align 16
@.str.5 = private unnamed_addr constant [11 x i8] c"g_78[i][j]\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@g_81 = internal global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"g_81\00", align 1
@g_93 = internal global i32 -1487972605, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"g_93\00", align 1
@g_94 = internal global [4 x [4 x i32]] [[4 x i32] [i32 2050315508, i32 -7, i32 2050315508, i32 96919458], [4 x i32] [i32 1916194706, i32 -343745081, i32 96919458, i32 96919458], [4 x i32] [i32 -7, i32 -7, i32 -7, i32 96919458], [4 x i32] [i32 96919458, i32 2050315508, i32 -7, i32 2050315508]], align 16
@.str.9 = private unnamed_addr constant [11 x i8] c"g_94[i][j]\00", align 1
@g_98 = internal global i8 0, align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"g_98\00", align 1
@g_121 = internal global i64 0, align 8
@.str.11 = private unnamed_addr constant [6 x i8] c"g_121\00", align 1
@g_130 = internal global [3 x i16] [i16 12836, i16 12836, i16 12836], align 2
@.str.12 = private unnamed_addr constant [9 x i8] c"g_130[i]\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_137 = internal global i32 -8, align 4
@.str.14 = private unnamed_addr constant [6 x i8] c"g_137\00", align 1
@g_139 = internal global i8 -67, align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"g_139\00", align 1
@g_167 = internal global i64 5831758263467134464, align 8
@.str.16 = private unnamed_addr constant [6 x i8] c"g_167\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"g_193\00", align 1
@g_197 = internal global i64 -5360115218956566403, align 8
@.str.18 = private unnamed_addr constant [6 x i8] c"g_197\00", align 1
@g_209 = internal global i16 18307, align 2
@.str.19 = private unnamed_addr constant [6 x i8] c"g_209\00", align 1
@g_251 = internal global i32 0, align 4
@.str.20 = private unnamed_addr constant [6 x i8] c"g_251\00", align 1
@g_268 = internal global i32 0, align 4
@.str.21 = private unnamed_addr constant [6 x i8] c"g_268\00", align 1
@g_280 = internal global i8 0, align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"g_280\00", align 1
@g_291 = internal global i8 -38, align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"g_291\00", align 1
@g_293 = internal global i8 0, align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"g_293\00", align 1
@g_294 = internal global [9 x [2 x i32]] [[2 x i32] [i32 1997543987, i32 -511636531], [2 x i32] [i32 1864702149, i32 1997543987], [2 x i32] [i32 -511636531, i32 1039501988], [2 x i32] [i32 1533347800, i32 1533347800], [2 x i32] [i32 1864702149, i32 1533347800], [2 x i32] [i32 1533347800, i32 1039501988], [2 x i32] [i32 -511636531, i32 1997543987], [2 x i32] [i32 1864702149, i32 -511636531], [2 x i32] [i32 1997543987, i32 1039501988]], align 16
@.str.25 = private unnamed_addr constant [12 x i8] c"g_294[i][j]\00", align 1
@g_299 = internal global i32 -1, align 4
@.str.26 = private unnamed_addr constant [6 x i8] c"g_299\00", align 1
@g_370 = internal global i32 757137043, align 4
@.str.27 = private unnamed_addr constant [6 x i8] c"g_370\00", align 1
@g_372 = internal global i16 4, align 2
@.str.28 = private unnamed_addr constant [6 x i8] c"g_372\00", align 1
@g_385 = internal global i32 -10, align 4
@.str.29 = private unnamed_addr constant [6 x i8] c"g_385\00", align 1
@g_467 = internal global i64 8, align 8
@.str.30 = private unnamed_addr constant [6 x i8] c"g_467\00", align 1
@g_471 = internal global i64 1, align 8
@.str.31 = private unnamed_addr constant [6 x i8] c"g_471\00", align 1
@g_473 = internal global %struct.S0 { i8 5, [3 x i8] undef }, align 4
@.str.32 = private unnamed_addr constant [9 x i8] c"g_473.f0\00", align 1
@g_531 = internal global [9 x %struct.S0] [%struct.S0 { i8 4, [3 x i8] undef }, %struct.S0 { i8 4, [3 x i8] undef }, %struct.S0 { i8 4, [3 x i8] undef }, %struct.S0 { i8 4, [3 x i8] undef }, %struct.S0 { i8 4, [3 x i8] undef }, %struct.S0 { i8 4, [3 x i8] undef }, %struct.S0 { i8 4, [3 x i8] undef }, %struct.S0 { i8 4, [3 x i8] undef }, %struct.S0 { i8 4, [3 x i8] undef }], align 16
@.str.33 = private unnamed_addr constant [12 x i8] c"g_531[i].f0\00", align 1
@g_782 = internal global i32 0, align 4
@.str.34 = private unnamed_addr constant [6 x i8] c"g_782\00", align 1
@g_783 = internal global i8 -83, align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"g_783\00", align 1
@g_838 = internal global i32 818762840, align 4
@.str.36 = private unnamed_addr constant [6 x i8] c"g_838\00", align 1
@g_848 = internal global i32 1, align 4
@.str.37 = private unnamed_addr constant [6 x i8] c"g_848\00", align 1
@g_874 = internal global [2 x [7 x [1 x %struct.S0]]] [[7 x [1 x %struct.S0]] [[1 x %struct.S0] [%struct.S0 { i8 2, [3 x i8] undef }], [1 x %struct.S0] [%struct.S0 { i8 6, [3 x i8] undef }], [1 x %struct.S0] [%struct.S0 { i8 2, [3 x i8] undef }], [1 x %struct.S0] [%struct.S0 { i8 6, [3 x i8] undef }], [1 x %struct.S0] [%struct.S0 { i8 2, [3 x i8] undef }], [1 x %struct.S0] [%struct.S0 { i8 6, [3 x i8] undef }], [1 x %struct.S0] [%struct.S0 { i8 2, [3 x i8] undef }]], [7 x [1 x %struct.S0]] [[1 x %struct.S0] [%struct.S0 { i8 6, [3 x i8] undef }], [1 x %struct.S0] [%struct.S0 { i8 2, [3 x i8] undef }], [1 x %struct.S0] [%struct.S0 { i8 6, [3 x i8] undef }], [1 x %struct.S0] [%struct.S0 { i8 2, [3 x i8] undef }], [1 x %struct.S0] [%struct.S0 { i8 6, [3 x i8] undef }], [1 x %struct.S0] [%struct.S0 { i8 2, [3 x i8] undef }], [1 x %struct.S0] [%struct.S0 { i8 6, [3 x i8] undef }]]], align 16
@.str.38 = private unnamed_addr constant [18 x i8] c"g_874[i][j][k].f0\00", align 1
@.str.39 = private unnamed_addr constant [22 x i8] c"index = [%d][%d][%d]\0A\00", align 1
@g_916 = internal constant %struct.S0 { i8 2, [3 x i8] undef }, align 4
@.str.40 = private unnamed_addr constant [9 x i8] c"g_916.f0\00", align 1
@g_946 = internal global i64 1, align 8
@.str.41 = private unnamed_addr constant [6 x i8] c"g_946\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@func_1.l_6 = private unnamed_addr constant [9 x [4 x [7 x i16]]] [[4 x [7 x i16]] [[7 x i16] [i16 1, i16 18463, i16 -13675, i16 32103, i16 -13675, i16 18463, i16 1], [7 x i16] [i16 1, i16 0, i16 -6, i16 -4, i16 -6, i16 0, i16 1], [7 x i16] [i16 1, i16 18463, i16 -13675, i16 32103, i16 -13675, i16 18463, i16 1], [7 x i16] [i16 1, i16 0, i16 -6, i16 -4, i16 -6, i16 0, i16 1]], [4 x [7 x i16]] [[7 x i16] [i16 1, i16 18463, i16 -13675, i16 32103, i16 -13675, i16 18463, i16 1], [7 x i16] [i16 1, i16 0, i16 -6, i16 -4, i16 -6, i16 0, i16 1], [7 x i16] [i16 1, i16 18463, i16 -13675, i16 32103, i16 -13675, i16 18463, i16 1], [7 x i16] [i16 1, i16 0, i16 -6, i16 -4, i16 -6, i16 0, i16 1]], [4 x [7 x i16]] [[7 x i16] [i16 1, i16 18463, i16 -13675, i16 32103, i16 -13675, i16 18463, i16 1], [7 x i16] [i16 1, i16 0, i16 -6, i16 -4, i16 -6, i16 0, i16 1], [7 x i16] [i16 1, i16 18463, i16 -10298, i16 9717, i16 -10298, i16 -3580, i16 -14665], [7 x i16] [i16 -4, i16 1, i16 9, i16 -21676, i16 9, i16 1, i16 -4]], [4 x [7 x i16]] [[7 x i16] [i16 -14665, i16 -3580, i16 -10298, i16 9717, i16 -10298, i16 -3580, i16 -14665], [7 x i16] [i16 -4, i16 1, i16 9, i16 -21676, i16 9, i16 1, i16 -4], [7 x i16] [i16 -14665, i16 -3580, i16 -10298, i16 9717, i16 -10298, i16 -3580, i16 -14665], [7 x i16] [i16 -4, i16 1, i16 9, i16 -21676, i16 9, i16 1, i16 -4]], [4 x [7 x i16]] [[7 x i16] [i16 -14665, i16 -3580, i16 -10298, i16 9717, i16 -10298, i16 -3580, i16 -14665], [7 x i16] [i16 -4, i16 1, i16 9, i16 -21676, i16 9, i16 1, i16 -4], [7 x i16] [i16 -14665, i16 -3580, i16 -10298, i16 9717, i16 -10298, i16 -3580, i16 -14665], [7 x i16] [i16 -4, i16 1, i16 9, i16 -21676, i16 9, i16 1, i16 -4]], [4 x [7 x i16]] [[7 x i16] [i16 -14665, i16 -3580, i16 -10298, i16 9717, i16 -10298, i16 -3580, i16 -14665], [7 x i16] [i16 -4, i16 1, i16 9, i16 -21676, i16 9, i16 1, i16 -4], [7 x i16] [i16 -14665, i16 -3580, i16 -10298, i16 9717, i16 -10298, i16 -3580, i16 -14665], [7 x i16] [i16 -4, i16 1, i16 9, i16 -21676, i16 9, i16 1, i16 -4]], [4 x [7 x i16]] [[7 x i16] [i16 -14665, i16 -3580, i16 -10298, i16 9717, i16 -10298, i16 -3580, i16 -14665], [7 x i16] [i16 -4, i16 1, i16 9, i16 -21676, i16 9, i16 1, i16 -4], [7 x i16] [i16 -14665, i16 -3580, i16 -10298, i16 9717, i16 -10298, i16 -3580, i16 -14665], [7 x i16] [i16 -4, i16 1, i16 9, i16 -21676, i16 9, i16 1, i16 -4]], [4 x [7 x i16]] [[7 x i16] [i16 -14665, i16 -3580, i16 -10298, i16 9717, i16 -10298, i16 -3580, i16 -14665], [7 x i16] [i16 -4, i16 1, i16 9, i16 -21676, i16 9, i16 1, i16 -4], [7 x i16] [i16 -14665, i16 -3580, i16 -10298, i16 9717, i16 -10298, i16 -3580, i16 -14665], [7 x i16] [i16 -4, i16 1, i16 9, i16 -21676, i16 9, i16 1, i16 -4]], [4 x [7 x i16]] [[7 x i16] [i16 -14665, i16 -3580, i16 -10298, i16 9717, i16 -10298, i16 -3580, i16 -14665], [7 x i16] [i16 -4, i16 1, i16 9, i16 -21676, i16 9, i16 1, i16 -4], [7 x i16] [i16 -14665, i16 -3580, i16 -10298, i16 9717, i16 -10298, i16 -3580, i16 -14665], [7 x i16] [i16 -4, i16 1, i16 9, i16 -21676, i16 9, i16 1, i16 -4]]], align 16
@func_1.l_9 = private unnamed_addr constant [6 x [10 x [1 x i8*]]] [[10 x [1 x i8*]] [[1 x i8*] [i8* @g_10], [1 x i8*] [i8* @g_10], [1 x i8*] [i8* @g_10], [1 x i8*] [i8* @g_10], [1 x i8*] [i8* @g_10], [1 x i8*] [i8* @g_10], [1 x i8*] [i8* @g_10], [1 x i8*] [i8* @g_10], [1 x i8*] [i8* @g_10], [1 x i8*] [i8* @g_10]], [10 x [1 x i8*]] [[1 x i8*] zeroinitializer, [1 x i8*] zeroinitializer, [1 x i8*] [i8* @g_10], [1 x i8*] [i8* @g_10], [1 x i8*] [i8* @g_10], [1 x i8*] zeroinitializer, [1 x i8*] zeroinitializer, [1 x i8*] [i8* @g_10], [1 x i8*] [i8* @g_10], [1 x i8*] [i8* @g_10]], [10 x [1 x i8*]] [[1 x i8*] zeroinitializer, [1 x i8*] zeroinitializer, [1 x i8*] [i8* @g_10], [1 x i8*] [i8* @g_10], [1 x i8*] [i8* @g_10], [1 x i8*] zeroinitializer, [1 x i8*] zeroinitializer, [1 x i8*] [i8* @g_10], [1 x i8*] [i8* @g_10], [1 x i8*] [i8* @g_10]], [10 x [1 x i8*]] [[1 x i8*] zeroinitializer, [1 x i8*] zeroinitializer, [1 x i8*] [i8* @g_10], [1 x i8*] [i8* @g_10], [1 x i8*] [i8* @g_10], [1 x i8*] zeroinitializer, [1 x i8*] zeroinitializer, [1 x i8*] [i8* @g_10], [1 x i8*] [i8* @g_10], [1 x i8*] [i8* @g_10]], [10 x [1 x i8*]] [[1 x i8*] zeroinitializer, [1 x i8*] zeroinitializer, [1 x i8*] [i8* @g_10], [1 x i8*] [i8* @g_10], [1 x i8*] [i8* @g_10], [1 x i8*] zeroinitializer, [1 x i8*] zeroinitializer, [1 x i8*] [i8* @g_10], [1 x i8*] [i8* @g_10], [1 x i8*] [i8* @g_10]], [10 x [1 x i8*]] [[1 x i8*] zeroinitializer, [1 x i8*] zeroinitializer, [1 x i8*] [i8* @g_10], [1 x i8*] [i8* @g_10], [1 x i8*] [i8* @g_10], [1 x i8*] zeroinitializer, [1 x i8*] zeroinitializer, [1 x i8*] [i8* @g_10], [1 x i8*] [i8* @g_10], [1 x i8*] [i8* @g_10]]], align 16
@g_151 = internal global i8** @g_152, align 8
@g_647 = internal global %union.U1* @g_171, align 8
@g_989 = internal global i16* @g_372, align 8
@g_752 = internal global i32** bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i32*]* @g_753 to i8*), i64 8) to i32**), align 8
@g_277 = internal global i8*** @g_278, align 8
@g_1004 = internal global i64** @g_1005, align 8
@g_152 = internal global i8* @g_10, align 8
@g_171 = internal global %union.U1 zeroinitializer, align 8
@g_753 = internal global [8 x i32*] [i32* @g_93, i32* @g_93, i32* @g_93, i32* @g_93, i32* @g_93, i32* @g_93, i32* @g_93, i32* @g_93], align 16
@g_278 = internal global i8** @g_152, align 8
@g_1005 = internal global i64* @g_167, align 8
@.str.42 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@.str.43 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

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
  %90 = call i64 @func_1()
  %91 = load volatile i64, i64* @g_4, align 8, !tbaa !7
  %92 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %91, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %92)
  %93 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 28358, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 %93)
  %94 = load i8, i8* @g_10, align 1, !tbaa !9
  %95 = sext i8 %94 to i64
  %96 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %95, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 %96)
  %97 = load i8, i8* @g_73, align 1, !tbaa !9
  %98 = zext i8 %97 to i64
  %99 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %99)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %100

; <label>:100                                     ; preds = %128, %89
  %101 = load i32, i32* %i, align 4, !tbaa !1
  %102 = icmp slt i32 %101, 9
  br i1 %102, label %103, label %131

; <label>:103                                     ; preds = %100
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %104

; <label>:104                                     ; preds = %124, %103
  %105 = load i32, i32* %j, align 4, !tbaa !1
  %106 = icmp slt i32 %105, 4
  br i1 %106, label %107, label %127

; <label>:107                                     ; preds = %104
  %108 = load i32, i32* %j, align 4, !tbaa !1
  %109 = sext i32 %108 to i64
  %110 = load i32, i32* %i, align 4, !tbaa !1
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [9 x [4 x i8]], [9 x [4 x i8]]* @g_78, i32 0, i64 %111
  %113 = getelementptr inbounds [4 x i8], [4 x i8]* %112, i32 0, i64 %109
  %114 = load i8, i8* %113, align 1, !tbaa !9
  %115 = sext i8 %114 to i64
  %116 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %115, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i32 %116)
  %117 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

; <label>:119                                     ; preds = %107
  %120 = load i32, i32* %i, align 4, !tbaa !1
  %121 = load i32, i32* %j, align 4, !tbaa !1
  %122 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0), i32 %120, i32 %121)
  br label %123

; <label>:123                                     ; preds = %119, %107
  br label %124

; <label>:124                                     ; preds = %123
  %125 = load i32, i32* %j, align 4, !tbaa !1
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %j, align 4, !tbaa !1
  br label %104

; <label>:127                                     ; preds = %104
  br label %128

; <label>:128                                     ; preds = %127
  %129 = load i32, i32* %i, align 4, !tbaa !1
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %i, align 4, !tbaa !1
  br label %100

; <label>:131                                     ; preds = %100
  %132 = load i32, i32* @g_81, align 4, !tbaa !1
  %133 = sext i32 %132 to i64
  %134 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %133, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 %134)
  %135 = load i32, i32* @g_93, align 4, !tbaa !1
  %136 = sext i32 %135 to i64
  %137 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %136, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 %137)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %138

; <label>:138                                     ; preds = %166, %131
  %139 = load i32, i32* %i, align 4, !tbaa !1
  %140 = icmp slt i32 %139, 4
  br i1 %140, label %141, label %169

; <label>:141                                     ; preds = %138
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %142

; <label>:142                                     ; preds = %162, %141
  %143 = load i32, i32* %j, align 4, !tbaa !1
  %144 = icmp slt i32 %143, 4
  br i1 %144, label %145, label %165

; <label>:145                                     ; preds = %142
  %146 = load i32, i32* %j, align 4, !tbaa !1
  %147 = sext i32 %146 to i64
  %148 = load i32, i32* %i, align 4, !tbaa !1
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* @g_94, i32 0, i64 %149
  %151 = getelementptr inbounds [4 x i32], [4 x i32]* %150, i32 0, i64 %147
  %152 = load i32, i32* %151, align 4, !tbaa !1
  %153 = zext i32 %152 to i64
  %154 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %153, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i32 %154)
  %155 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %161

; <label>:157                                     ; preds = %145
  %158 = load i32, i32* %i, align 4, !tbaa !1
  %159 = load i32, i32* %j, align 4, !tbaa !1
  %160 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0), i32 %158, i32 %159)
  br label %161

; <label>:161                                     ; preds = %157, %145
  br label %162

; <label>:162                                     ; preds = %161
  %163 = load i32, i32* %j, align 4, !tbaa !1
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %j, align 4, !tbaa !1
  br label %142

; <label>:165                                     ; preds = %142
  br label %166

; <label>:166                                     ; preds = %165
  %167 = load i32, i32* %i, align 4, !tbaa !1
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %i, align 4, !tbaa !1
  br label %138

; <label>:169                                     ; preds = %138
  %170 = load i8, i8* @g_98, align 1, !tbaa !9
  %171 = zext i8 %170 to i64
  %172 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %171, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32 %172)
  %173 = load i64, i64* @g_121, align 8, !tbaa !7
  %174 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %173, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i32 %174)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %175

; <label>:175                                     ; preds = %191, %169
  %176 = load i32, i32* %i, align 4, !tbaa !1
  %177 = icmp slt i32 %176, 3
  br i1 %177, label %178, label %194

; <label>:178                                     ; preds = %175
  %179 = load i32, i32* %i, align 4, !tbaa !1
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [3 x i16], [3 x i16]* @g_130, i32 0, i64 %180
  %182 = load i16, i16* %181, align 2, !tbaa !10
  %183 = zext i16 %182 to i64
  %184 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %183, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i32 %184)
  %185 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %190

; <label>:187                                     ; preds = %178
  %188 = load i32, i32* %i, align 4, !tbaa !1
  %189 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), i32 %188)
  br label %190

; <label>:190                                     ; preds = %187, %178
  br label %191

; <label>:191                                     ; preds = %190
  %192 = load i32, i32* %i, align 4, !tbaa !1
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %i, align 4, !tbaa !1
  br label %175

; <label>:194                                     ; preds = %175
  %195 = load i32, i32* @g_137, align 4, !tbaa !1
  %196 = zext i32 %195 to i64
  %197 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %196, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 %197)
  %198 = load i8, i8* @g_139, align 1, !tbaa !9
  %199 = zext i8 %198 to i64
  %200 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %199, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 %200)
  %201 = load i64, i64* @g_167, align 8, !tbaa !7
  %202 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %201, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i32 %202)
  %203 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 -639661461217869368, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i32 %203)
  %204 = load i64, i64* @g_197, align 8, !tbaa !7
  %205 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %204, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i32 %205)
  %206 = load i16, i16* @g_209, align 2, !tbaa !10
  %207 = sext i16 %206 to i64
  %208 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %207, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i32 %208)
  %209 = load i32, i32* @g_251, align 4, !tbaa !1
  %210 = zext i32 %209 to i64
  %211 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %210, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 %211)
  %212 = load i32, i32* @g_268, align 4, !tbaa !1
  %213 = zext i32 %212 to i64
  %214 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %213, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i32 %214)
  %215 = load i8, i8* @g_280, align 1, !tbaa !9
  %216 = zext i8 %215 to i64
  %217 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %216, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i32 %217)
  %218 = load i8, i8* @g_291, align 1, !tbaa !9
  %219 = sext i8 %218 to i64
  %220 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %219, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 %220)
  %221 = load volatile i8, i8* @g_293, align 1, !tbaa !9
  %222 = sext i8 %221 to i64
  %223 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %222, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %223)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %224

; <label>:224                                     ; preds = %252, %194
  %225 = load i32, i32* %i, align 4, !tbaa !1
  %226 = icmp slt i32 %225, 9
  br i1 %226, label %227, label %255

; <label>:227                                     ; preds = %224
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %228

; <label>:228                                     ; preds = %248, %227
  %229 = load i32, i32* %j, align 4, !tbaa !1
  %230 = icmp slt i32 %229, 2
  br i1 %230, label %231, label %251

; <label>:231                                     ; preds = %228
  %232 = load i32, i32* %j, align 4, !tbaa !1
  %233 = sext i32 %232 to i64
  %234 = load i32, i32* %i, align 4, !tbaa !1
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds [9 x [2 x i32]], [9 x [2 x i32]]* @g_294, i32 0, i64 %235
  %237 = getelementptr inbounds [2 x i32], [2 x i32]* %236, i32 0, i64 %233
  %238 = load volatile i32, i32* %237, align 4, !tbaa !1
  %239 = zext i32 %238 to i64
  %240 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %239, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i32 0, i32 0), i32 %240)
  %241 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %247

; <label>:243                                     ; preds = %231
  %244 = load i32, i32* %i, align 4, !tbaa !1
  %245 = load i32, i32* %j, align 4, !tbaa !1
  %246 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0), i32 %244, i32 %245)
  br label %247

; <label>:247                                     ; preds = %243, %231
  br label %248

; <label>:248                                     ; preds = %247
  %249 = load i32, i32* %j, align 4, !tbaa !1
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %j, align 4, !tbaa !1
  br label %228

; <label>:251                                     ; preds = %228
  br label %252

; <label>:252                                     ; preds = %251
  %253 = load i32, i32* %i, align 4, !tbaa !1
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %i, align 4, !tbaa !1
  br label %224

; <label>:255                                     ; preds = %224
  %256 = load volatile i32, i32* @g_299, align 4, !tbaa !1
  %257 = zext i32 %256 to i64
  %258 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %257, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i32 %258)
  %259 = load i32, i32* @g_370, align 4, !tbaa !1
  %260 = sext i32 %259 to i64
  %261 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %260, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 %261)
  %262 = load i16, i16* @g_372, align 2, !tbaa !10
  %263 = zext i16 %262 to i64
  %264 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %263, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i32 %264)
  %265 = load i32, i32* @g_385, align 4, !tbaa !1
  %266 = zext i32 %265 to i64
  %267 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %266, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i32 %267)
  %268 = load i64, i64* @g_467, align 8, !tbaa !7
  %269 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %268, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i32 %269)
  %270 = load i64, i64* @g_471, align 8, !tbaa !7
  %271 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %270, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i32 %271)
  %272 = load volatile i8, i8* getelementptr inbounds (%struct.S0, %struct.S0* @g_473, i32 0, i32 0), align 4
  %273 = and i8 %272, 63
  %274 = zext i8 %273 to i32
  %275 = zext i32 %274 to i64
  %276 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %275, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0), i32 %276)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %277

; <label>:277                                     ; preds = %296, %255
  %278 = load i32, i32* %i, align 4, !tbaa !1
  %279 = icmp slt i32 %278, 9
  br i1 %279, label %280, label %299

; <label>:280                                     ; preds = %277
  %281 = load i32, i32* %i, align 4, !tbaa !1
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds [9 x %struct.S0], [9 x %struct.S0]* @g_531, i32 0, i64 %282
  %284 = bitcast %struct.S0* %283 to i8*
  %285 = load volatile i8, i8* %284, align 4
  %286 = and i8 %285, 63
  %287 = zext i8 %286 to i32
  %288 = zext i32 %287 to i64
  %289 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %288, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i32 0, i32 0), i32 %289)
  %290 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %295

; <label>:292                                     ; preds = %280
  %293 = load i32, i32* %i, align 4, !tbaa !1
  %294 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), i32 %293)
  br label %295

; <label>:295                                     ; preds = %292, %280
  br label %296

; <label>:296                                     ; preds = %295
  %297 = load i32, i32* %i, align 4, !tbaa !1
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %i, align 4, !tbaa !1
  br label %277

; <label>:299                                     ; preds = %277
  %300 = load i32, i32* @g_782, align 4, !tbaa !1
  %301 = zext i32 %300 to i64
  %302 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %301, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), i32 %302)
  %303 = load i8, i8* @g_783, align 1, !tbaa !9
  %304 = sext i8 %303 to i64
  %305 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %304, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), i32 %305)
  %306 = load i32, i32* @g_838, align 4, !tbaa !1
  %307 = zext i32 %306 to i64
  %308 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %307, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i32 %308)
  %309 = load i32, i32* @g_848, align 4, !tbaa !1
  %310 = sext i32 %309 to i64
  %311 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %310, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), i32 %311)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %312

; <label>:312                                     ; preds = %355, %299
  %313 = load i32, i32* %i, align 4, !tbaa !1
  %314 = icmp slt i32 %313, 2
  br i1 %314, label %315, label %358

; <label>:315                                     ; preds = %312
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %316

; <label>:316                                     ; preds = %351, %315
  %317 = load i32, i32* %j, align 4, !tbaa !1
  %318 = icmp slt i32 %317, 7
  br i1 %318, label %319, label %354

; <label>:319                                     ; preds = %316
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %320

; <label>:320                                     ; preds = %347, %319
  %321 = load i32, i32* %k, align 4, !tbaa !1
  %322 = icmp slt i32 %321, 1
  br i1 %322, label %323, label %350

; <label>:323                                     ; preds = %320
  %324 = load i32, i32* %k, align 4, !tbaa !1
  %325 = sext i32 %324 to i64
  %326 = load i32, i32* %j, align 4, !tbaa !1
  %327 = sext i32 %326 to i64
  %328 = load i32, i32* %i, align 4, !tbaa !1
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds [2 x [7 x [1 x %struct.S0]]], [2 x [7 x [1 x %struct.S0]]]* @g_874, i32 0, i64 %329
  %331 = getelementptr inbounds [7 x [1 x %struct.S0]], [7 x [1 x %struct.S0]]* %330, i32 0, i64 %327
  %332 = getelementptr inbounds [1 x %struct.S0], [1 x %struct.S0]* %331, i32 0, i64 %325
  %333 = bitcast %struct.S0* %332 to i8*
  %334 = load volatile i8, i8* %333, align 4
  %335 = and i8 %334, 63
  %336 = zext i8 %335 to i32
  %337 = zext i32 %336 to i64
  %338 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %337, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.38, i32 0, i32 0), i32 %338)
  %339 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %346

; <label>:341                                     ; preds = %323
  %342 = load i32, i32* %i, align 4, !tbaa !1
  %343 = load i32, i32* %j, align 4, !tbaa !1
  %344 = load i32, i32* %k, align 4, !tbaa !1
  %345 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.39, i32 0, i32 0), i32 %342, i32 %343, i32 %344)
  br label %346

; <label>:346                                     ; preds = %341, %323
  br label %347

; <label>:347                                     ; preds = %346
  %348 = load i32, i32* %k, align 4, !tbaa !1
  %349 = add nsw i32 %348, 1
  store i32 %349, i32* %k, align 4, !tbaa !1
  br label %320

; <label>:350                                     ; preds = %320
  br label %351

; <label>:351                                     ; preds = %350
  %352 = load i32, i32* %j, align 4, !tbaa !1
  %353 = add nsw i32 %352, 1
  store i32 %353, i32* %j, align 4, !tbaa !1
  br label %316

; <label>:354                                     ; preds = %316
  br label %355

; <label>:355                                     ; preds = %354
  %356 = load i32, i32* %i, align 4, !tbaa !1
  %357 = add nsw i32 %356, 1
  store i32 %357, i32* %i, align 4, !tbaa !1
  br label %312

; <label>:358                                     ; preds = %312
  %359 = load volatile i8, i8* getelementptr inbounds (%struct.S0, %struct.S0* @g_916, i32 0, i32 0), align 4
  %360 = and i8 %359, 63
  %361 = zext i8 %360 to i32
  %362 = zext i32 %361 to i64
  %363 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %362, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i32 0, i32 0), i32 %363)
  %364 = load i64, i64* @g_946, align 8, !tbaa !7
  %365 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %364, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i32 0, i32 0), i32 %365)
  %366 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %367 = zext i32 %366 to i64
  %368 = xor i64 %367, 4294967295
  %369 = trunc i64 %368 to i32
  %370 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %369, i32 %370)
  %371 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %371) #1
  %372 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %372) #1
  %373 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %373) #1
  %374 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %374) #1
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
  %l_6 = alloca [9 x [4 x [7 x i16]]], align 16
  %l_9 = alloca [6 x [10 x [1 x i8*]]], align 16
  %l_15 = alloca i32, align 4
  %l_16 = alloca i32, align 4
  %l_851 = alloca %union.U1, align 8
  %l_917 = alloca %union.U1*, align 8
  %l_945 = alloca i64*, align 8
  %l_963 = alloca i32, align 4
  %l_964 = alloca i32, align 4
  %l_965 = alloca i32, align 4
  %l_983 = alloca i8***, align 8
  %l_982 = alloca [2 x [6 x [5 x i8****]]], align 16
  %l_1006 = alloca i16**, align 8
  %l_1016 = alloca i16, align 2
  %l_1039 = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l_36 = alloca i8*, align 8
  %l_37 = alloca i32, align 4
  %l_850 = alloca i64*, align 8
  %l_915 = alloca i32, align 4
  %l_918 = alloca i8*, align 8
  %l_919 = alloca %union.U1, align 8
  %l_944 = alloca i32, align 4
  %l_951 = alloca i16, align 2
  %l_961 = alloca [5 x i32], align 16
  %i1 = alloca i32, align 4
  %2 = alloca i32
  %l_1008 = alloca [10 x i32], align 16
  %l_1009 = alloca i32*, align 8
  %l_1010 = alloca i32*, align 8
  %l_1011 = alloca i32*, align 8
  %l_1012 = alloca i32, align 4
  %l_1013 = alloca i32*, align 8
  %l_1014 = alloca i32*, align 8
  %l_1015 = alloca i32*, align 8
  %l_1029 = alloca %union.U1**, align 8
  %i2 = alloca i32, align 4
  %l_1021 = alloca i16*, align 8
  %l_1028 = alloca [1 x %union.U1**], align 8
  %l_1030 = alloca %union.U1***, align 8
  %l_1037 = alloca [2 x [2 x i32]], align 16
  %l_1038 = alloca [3 x [9 x i16*]], align 16
  %i3 = alloca i32, align 4
  %j4 = alloca i32, align 4
  %i5 = alloca i32, align 4
  %j6 = alloca i32, align 4
  %3 = bitcast [9 x [4 x [7 x i16]]]* %l_6 to i8*
  call void @llvm.lifetime.start(i64 504, i8* %3) #1
  %4 = bitcast [9 x [4 x [7 x i16]]]* %l_6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* bitcast ([9 x [4 x [7 x i16]]]* @func_1.l_6 to i8*), i64 504, i32 16, i1 false)
  %5 = bitcast [6 x [10 x [1 x i8*]]]* %l_9 to i8*
  call void @llvm.lifetime.start(i64 480, i8* %5) #1
  %6 = bitcast [6 x [10 x [1 x i8*]]]* %l_9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* bitcast ([6 x [10 x [1 x i8*]]]* @func_1.l_9 to i8*), i64 480, i32 16, i1 false)
  %7 = bitcast i32* %l_15 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 1, i32* %l_15, align 4, !tbaa !1
  %8 = bitcast i32* %l_16 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  store i32 0, i32* %l_16, align 4, !tbaa !1
  %9 = bitcast %union.U1* %l_851 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast %union.U1* %l_851 to i8*
  call void @llvm.memset.p0i8.i64(i8* %10, i8 0, i64 8, i32 8, i1 false)
  %11 = bitcast %union.U1** %l_917 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store %union.U1* %l_851, %union.U1** %l_917, align 8, !tbaa !5
  %12 = bitcast i64** %l_945 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  store i64* @g_471, i64** %l_945, align 8, !tbaa !5
  %13 = bitcast i32* %l_963 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  store i32 5, i32* %l_963, align 4, !tbaa !1
  %14 = bitcast i32* %l_964 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  store i32 -1, i32* %l_964, align 4, !tbaa !1
  %15 = bitcast i32* %l_965 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  store i32 0, i32* %l_965, align 4, !tbaa !1
  %16 = bitcast i8**** %l_983 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  store i8*** @g_151, i8**** %l_983, align 8, !tbaa !5
  %17 = bitcast [2 x [6 x [5 x i8****]]]* %l_982 to i8*
  call void @llvm.lifetime.start(i64 480, i8* %17) #1
  %18 = getelementptr inbounds [2 x [6 x [5 x i8****]]], [2 x [6 x [5 x i8****]]]* %l_982, i64 0, i64 0
  %19 = getelementptr inbounds [6 x [5 x i8****]], [6 x [5 x i8****]]* %18, i64 0, i64 0
  %20 = getelementptr inbounds [5 x i8****], [5 x i8****]* %19, i64 0, i64 0
  store i8**** %l_983, i8***** %20, !tbaa !5
  %21 = getelementptr inbounds i8****, i8***** %20, i64 1
  store i8**** %l_983, i8***** %21, !tbaa !5
  %22 = getelementptr inbounds i8****, i8***** %21, i64 1
  store i8**** %l_983, i8***** %22, !tbaa !5
  %23 = getelementptr inbounds i8****, i8***** %22, i64 1
  store i8**** null, i8***** %23, !tbaa !5
  %24 = getelementptr inbounds i8****, i8***** %23, i64 1
  store i8**** %l_983, i8***** %24, !tbaa !5
  %25 = getelementptr inbounds [5 x i8****], [5 x i8****]* %19, i64 1
  %26 = getelementptr inbounds [5 x i8****], [5 x i8****]* %25, i64 0, i64 0
  store i8**** %l_983, i8***** %26, !tbaa !5
  %27 = getelementptr inbounds i8****, i8***** %26, i64 1
  store i8**** %l_983, i8***** %27, !tbaa !5
  %28 = getelementptr inbounds i8****, i8***** %27, i64 1
  store i8**** %l_983, i8***** %28, !tbaa !5
  %29 = getelementptr inbounds i8****, i8***** %28, i64 1
  store i8**** %l_983, i8***** %29, !tbaa !5
  %30 = getelementptr inbounds i8****, i8***** %29, i64 1
  store i8**** %l_983, i8***** %30, !tbaa !5
  %31 = getelementptr inbounds [5 x i8****], [5 x i8****]* %25, i64 1
  %32 = getelementptr inbounds [5 x i8****], [5 x i8****]* %31, i64 0, i64 0
  store i8**** %l_983, i8***** %32, !tbaa !5
  %33 = getelementptr inbounds i8****, i8***** %32, i64 1
  store i8**** %l_983, i8***** %33, !tbaa !5
  %34 = getelementptr inbounds i8****, i8***** %33, i64 1
  store i8**** %l_983, i8***** %34, !tbaa !5
  %35 = getelementptr inbounds i8****, i8***** %34, i64 1
  store i8**** %l_983, i8***** %35, !tbaa !5
  %36 = getelementptr inbounds i8****, i8***** %35, i64 1
  store i8**** %l_983, i8***** %36, !tbaa !5
  %37 = getelementptr inbounds [5 x i8****], [5 x i8****]* %31, i64 1
  %38 = getelementptr inbounds [5 x i8****], [5 x i8****]* %37, i64 0, i64 0
  store i8**** %l_983, i8***** %38, !tbaa !5
  %39 = getelementptr inbounds i8****, i8***** %38, i64 1
  store i8**** %l_983, i8***** %39, !tbaa !5
  %40 = getelementptr inbounds i8****, i8***** %39, i64 1
  store i8**** %l_983, i8***** %40, !tbaa !5
  %41 = getelementptr inbounds i8****, i8***** %40, i64 1
  store i8**** %l_983, i8***** %41, !tbaa !5
  %42 = getelementptr inbounds i8****, i8***** %41, i64 1
  store i8**** %l_983, i8***** %42, !tbaa !5
  %43 = getelementptr inbounds [5 x i8****], [5 x i8****]* %37, i64 1
  %44 = getelementptr inbounds [5 x i8****], [5 x i8****]* %43, i64 0, i64 0
  store i8**** null, i8***** %44, !tbaa !5
  %45 = getelementptr inbounds i8****, i8***** %44, i64 1
  store i8**** %l_983, i8***** %45, !tbaa !5
  %46 = getelementptr inbounds i8****, i8***** %45, i64 1
  store i8**** %l_983, i8***** %46, !tbaa !5
  %47 = getelementptr inbounds i8****, i8***** %46, i64 1
  store i8**** null, i8***** %47, !tbaa !5
  %48 = getelementptr inbounds i8****, i8***** %47, i64 1
  store i8**** %l_983, i8***** %48, !tbaa !5
  %49 = getelementptr inbounds [5 x i8****], [5 x i8****]* %43, i64 1
  %50 = getelementptr inbounds [5 x i8****], [5 x i8****]* %49, i64 0, i64 0
  store i8**** %l_983, i8***** %50, !tbaa !5
  %51 = getelementptr inbounds i8****, i8***** %50, i64 1
  store i8**** %l_983, i8***** %51, !tbaa !5
  %52 = getelementptr inbounds i8****, i8***** %51, i64 1
  store i8**** %l_983, i8***** %52, !tbaa !5
  %53 = getelementptr inbounds i8****, i8***** %52, i64 1
  store i8**** %l_983, i8***** %53, !tbaa !5
  %54 = getelementptr inbounds i8****, i8***** %53, i64 1
  store i8**** %l_983, i8***** %54, !tbaa !5
  %55 = getelementptr inbounds [6 x [5 x i8****]], [6 x [5 x i8****]]* %18, i64 1
  %56 = getelementptr inbounds [6 x [5 x i8****]], [6 x [5 x i8****]]* %55, i64 0, i64 0
  %57 = getelementptr inbounds [5 x i8****], [5 x i8****]* %56, i64 0, i64 0
  store i8**** %l_983, i8***** %57, !tbaa !5
  %58 = getelementptr inbounds i8****, i8***** %57, i64 1
  store i8**** %l_983, i8***** %58, !tbaa !5
  %59 = getelementptr inbounds i8****, i8***** %58, i64 1
  store i8**** %l_983, i8***** %59, !tbaa !5
  %60 = getelementptr inbounds i8****, i8***** %59, i64 1
  store i8**** %l_983, i8***** %60, !tbaa !5
  %61 = getelementptr inbounds i8****, i8***** %60, i64 1
  store i8**** %l_983, i8***** %61, !tbaa !5
  %62 = getelementptr inbounds [5 x i8****], [5 x i8****]* %56, i64 1
  %63 = getelementptr inbounds [5 x i8****], [5 x i8****]* %62, i64 0, i64 0
  store i8**** %l_983, i8***** %63, !tbaa !5
  %64 = getelementptr inbounds i8****, i8***** %63, i64 1
  store i8**** %l_983, i8***** %64, !tbaa !5
  %65 = getelementptr inbounds i8****, i8***** %64, i64 1
  store i8**** %l_983, i8***** %65, !tbaa !5
  %66 = getelementptr inbounds i8****, i8***** %65, i64 1
  store i8**** %l_983, i8***** %66, !tbaa !5
  %67 = getelementptr inbounds i8****, i8***** %66, i64 1
  store i8**** %l_983, i8***** %67, !tbaa !5
  %68 = getelementptr inbounds [5 x i8****], [5 x i8****]* %62, i64 1
  %69 = getelementptr inbounds [5 x i8****], [5 x i8****]* %68, i64 0, i64 0
  store i8**** %l_983, i8***** %69, !tbaa !5
  %70 = getelementptr inbounds i8****, i8***** %69, i64 1
  store i8**** null, i8***** %70, !tbaa !5
  %71 = getelementptr inbounds i8****, i8***** %70, i64 1
  store i8**** %l_983, i8***** %71, !tbaa !5
  %72 = getelementptr inbounds i8****, i8***** %71, i64 1
  store i8**** null, i8***** %72, !tbaa !5
  %73 = getelementptr inbounds i8****, i8***** %72, i64 1
  store i8**** %l_983, i8***** %73, !tbaa !5
  %74 = getelementptr inbounds [5 x i8****], [5 x i8****]* %68, i64 1
  %75 = getelementptr inbounds [5 x i8****], [5 x i8****]* %74, i64 0, i64 0
  store i8**** %l_983, i8***** %75, !tbaa !5
  %76 = getelementptr inbounds i8****, i8***** %75, i64 1
  store i8**** %l_983, i8***** %76, !tbaa !5
  %77 = getelementptr inbounds i8****, i8***** %76, i64 1
  store i8**** %l_983, i8***** %77, !tbaa !5
  %78 = getelementptr inbounds i8****, i8***** %77, i64 1
  store i8**** %l_983, i8***** %78, !tbaa !5
  %79 = getelementptr inbounds i8****, i8***** %78, i64 1
  store i8**** %l_983, i8***** %79, !tbaa !5
  %80 = getelementptr inbounds [5 x i8****], [5 x i8****]* %74, i64 1
  %81 = getelementptr inbounds [5 x i8****], [5 x i8****]* %80, i64 0, i64 0
  store i8**** %l_983, i8***** %81, !tbaa !5
  %82 = getelementptr inbounds i8****, i8***** %81, i64 1
  store i8**** null, i8***** %82, !tbaa !5
  %83 = getelementptr inbounds i8****, i8***** %82, i64 1
  store i8**** %l_983, i8***** %83, !tbaa !5
  %84 = getelementptr inbounds i8****, i8***** %83, i64 1
  store i8**** %l_983, i8***** %84, !tbaa !5
  %85 = getelementptr inbounds i8****, i8***** %84, i64 1
  store i8**** %l_983, i8***** %85, !tbaa !5
  %86 = getelementptr inbounds [5 x i8****], [5 x i8****]* %80, i64 1
  %87 = getelementptr inbounds [5 x i8****], [5 x i8****]* %86, i64 0, i64 0
  store i8**** %l_983, i8***** %87, !tbaa !5
  %88 = getelementptr inbounds i8****, i8***** %87, i64 1
  store i8**** %l_983, i8***** %88, !tbaa !5
  %89 = getelementptr inbounds i8****, i8***** %88, i64 1
  store i8**** %l_983, i8***** %89, !tbaa !5
  %90 = getelementptr inbounds i8****, i8***** %89, i64 1
  store i8**** %l_983, i8***** %90, !tbaa !5
  %91 = getelementptr inbounds i8****, i8***** %90, i64 1
  store i8**** %l_983, i8***** %91, !tbaa !5
  %92 = bitcast i16*** %l_1006 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %92) #1
  store i16** null, i16*** %l_1006, align 8, !tbaa !5
  %93 = bitcast i16* %l_1016 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %93) #1
  store i16 -10, i16* %l_1016, align 2, !tbaa !10
  %94 = bitcast i32** %l_1039 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %94) #1
  store i32* @g_81, i32** %l_1039, align 8, !tbaa !5
  %95 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %95) #1
  %96 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %96) #1
  %97 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %97) #1
  br label %98

; <label>:98                                      ; preds = %452, %246, %0
  %99 = load volatile i64, i64* @g_4, align 8, !tbaa !7
  %100 = icmp eq i64 %99, 195
  %101 = zext i1 %100 to i32
  %102 = getelementptr inbounds [9 x [4 x [7 x i16]]], [9 x [4 x [7 x i16]]]* %l_6, i32 0, i64 0
  %103 = getelementptr inbounds [4 x [7 x i16]], [4 x [7 x i16]]* %102, i32 0, i64 2
  %104 = getelementptr inbounds [7 x i16], [7 x i16]* %103, i32 0, i64 6
  %105 = load i16, i16* %104, align 2, !tbaa !10
  %106 = getelementptr inbounds [6 x [10 x [1 x i8*]]], [6 x [10 x [1 x i8*]]]* %l_9, i32 0, i64 2
  %107 = getelementptr inbounds [10 x [1 x i8*]], [10 x [1 x i8*]]* %106, i32 0, i64 5
  %108 = getelementptr inbounds [1 x i8*], [1 x i8*]* %107, i32 0, i64 0
  %109 = load i8*, i8** %108, align 8, !tbaa !5
  %110 = icmp ne i8* %109, @g_10
  %111 = zext i1 %110 to i32
  %112 = trunc i32 %111 to i8
  %113 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %112, i8 zeroext 1)
  %114 = zext i8 %113 to i32
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %139, label %116

; <label>:116                                     ; preds = %98
  %117 = getelementptr inbounds [9 x [4 x [7 x i16]]], [9 x [4 x [7 x i16]]]* %l_6, i32 0, i64 0
  %118 = getelementptr inbounds [4 x [7 x i16]], [4 x [7 x i16]]* %117, i32 0, i64 2
  %119 = getelementptr inbounds [7 x i16], [7 x i16]* %118, i32 0, i64 6
  %120 = load i16, i16* %119, align 2, !tbaa !10
  %121 = call signext i16 @safe_lshift_func_int16_t_s_u(i16 signext %120, i32 10)
  %122 = sext i16 %121 to i64
  %123 = getelementptr inbounds [9 x [4 x [7 x i16]]], [9 x [4 x [7 x i16]]]* %l_6, i32 0, i64 1
  %124 = getelementptr inbounds [4 x [7 x i16]], [4 x [7 x i16]]* %123, i32 0, i64 1
  %125 = getelementptr inbounds [7 x i16], [7 x i16]* %124, i32 0, i64 4
  %126 = load i16, i16* %125, align 2, !tbaa !10
  %127 = getelementptr inbounds [9 x [4 x [7 x i16]]], [9 x [4 x [7 x i16]]]* %l_6, i32 0, i64 4
  %128 = getelementptr inbounds [4 x [7 x i16]], [4 x [7 x i16]]* %127, i32 0, i64 2
  %129 = getelementptr inbounds [7 x i16], [7 x i16]* %128, i32 0, i64 3
  %130 = load i16, i16* %129, align 2, !tbaa !10
  %131 = zext i16 %130 to i64
  %132 = call i64 @safe_mod_func_uint64_t_u_u(i64 %122, i64 %131)
  %133 = getelementptr inbounds [9 x [4 x [7 x i16]]], [9 x [4 x [7 x i16]]]* %l_6, i32 0, i64 1
  %134 = getelementptr inbounds [4 x [7 x i16]], [4 x [7 x i16]]* %133, i32 0, i64 0
  %135 = getelementptr inbounds [7 x i16], [7 x i16]* %134, i32 0, i64 2
  %136 = load i16, i16* %135, align 2, !tbaa !10
  %137 = zext i16 %136 to i64
  %138 = icmp ule i64 %137, 6
  br label %139

; <label>:139                                     ; preds = %116, %98
  %140 = phi i1 [ true, %98 ], [ %138, %116 ]
  %141 = zext i1 %140 to i32
  %142 = load i32, i32* %l_15, align 4, !tbaa !1
  %143 = and i32 %142, %141
  store i32 %143, i32* %l_15, align 4, !tbaa !1
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %149

; <label>:145                                     ; preds = %139
  %146 = load i8, i8* @g_10, align 1, !tbaa !9
  %147 = sext i8 %146 to i32
  %148 = icmp ne i32 %147, 0
  br label %149

; <label>:149                                     ; preds = %145, %139
  %150 = phi i1 [ false, %139 ], [ %148, %145 ]
  %151 = zext i1 %150 to i32
  %152 = sext i32 %151 to i64
  %153 = or i64 %152, 4719655730784522610
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %163, label %155

; <label>:155                                     ; preds = %149
  %156 = load i8, i8* @g_10, align 1, !tbaa !9
  %157 = sext i8 %156 to i32
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %163, label %159

; <label>:159                                     ; preds = %155
  %160 = load i8, i8* @g_10, align 1, !tbaa !9
  %161 = sext i8 %160 to i32
  %162 = icmp ne i32 %161, 0
  br label %163

; <label>:163                                     ; preds = %159, %155, %149
  %164 = phi i1 [ true, %155 ], [ true, %149 ], [ %162, %159 ]
  %165 = zext i1 %164 to i32
  %166 = xor i32 %101, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %175, label %168

; <label>:168                                     ; preds = %163
  %169 = getelementptr inbounds [9 x [4 x [7 x i16]]], [9 x [4 x [7 x i16]]]* %l_6, i32 0, i64 0
  %170 = getelementptr inbounds [4 x [7 x i16]], [4 x [7 x i16]]* %169, i32 0, i64 2
  %171 = getelementptr inbounds [7 x i16], [7 x i16]* %170, i32 0, i64 6
  %172 = load i16, i16* %171, align 2, !tbaa !10
  %173 = zext i16 %172 to i32
  %174 = icmp ne i32 %173, 0
  br label %175

; <label>:175                                     ; preds = %168, %163
  %176 = phi i1 [ true, %163 ], [ %174, %168 ]
  %177 = zext i1 %176 to i32
  %178 = sext i32 %177 to i64
  %179 = and i64 %178, 18
  %180 = trunc i64 %179 to i16
  %181 = getelementptr inbounds [9 x [4 x [7 x i16]]], [9 x [4 x [7 x i16]]]* %l_6, i32 0, i64 1
  %182 = getelementptr inbounds [4 x [7 x i16]], [4 x [7 x i16]]* %181, i32 0, i64 1
  %183 = getelementptr inbounds [7 x i16], [7 x i16]* %182, i32 0, i64 1
  %184 = load i16, i16* %183, align 2, !tbaa !10
  %185 = zext i16 %184 to i32
  %186 = call zeroext i16 @safe_rshift_func_uint16_t_u_u(i16 zeroext %180, i32 %185)
  %187 = zext i16 %186 to i32
  %188 = getelementptr inbounds [9 x [4 x [7 x i16]]], [9 x [4 x [7 x i16]]]* %l_6, i32 0, i64 5
  %189 = getelementptr inbounds [4 x [7 x i16]], [4 x [7 x i16]]* %188, i32 0, i64 1
  %190 = getelementptr inbounds [7 x i16], [7 x i16]* %189, i32 0, i64 0
  %191 = load i16, i16* %190, align 2, !tbaa !10
  %192 = zext i16 %191 to i32
  %193 = icmp sgt i32 %187, %192
  %194 = zext i1 %193 to i32
  %195 = load i32, i32* %l_16, align 4, !tbaa !1
  %196 = xor i32 %195, %194
  store i32 %196, i32* %l_16, align 4, !tbaa !1
  store i8 -23, i8* @g_10, align 1, !tbaa !9
  br label %197

; <label>:197                                     ; preds = %240, %175
  %198 = load i8, i8* @g_10, align 1, !tbaa !9
  %199 = sext i8 %198 to i32
  %200 = icmp slt i32 %199, 27
  br i1 %200, label %201, label %243

; <label>:201                                     ; preds = %197
  %202 = bitcast i8** %l_36 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %202) #1
  store i8* @g_10, i8** %l_36, align 8, !tbaa !5
  %203 = bitcast i32* %l_37 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %203) #1
  store i32 -6, i32* %l_37, align 4, !tbaa !1
  %204 = bitcast i64** %l_850 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %204) #1
  store i64* @g_197, i64** %l_850, align 8, !tbaa !5
  %205 = bitcast i32* %l_915 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %205) #1
  store i32 1, i32* %l_915, align 4, !tbaa !1
  %206 = bitcast i8** %l_918 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %206) #1
  store i8* @g_280, i8** %l_918, align 8, !tbaa !5
  %207 = bitcast %union.U1* %l_919 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %207) #1
  %208 = bitcast %union.U1* %l_919 to i8*
  call void @llvm.memset.p0i8.i64(i8* %208, i8 0, i64 8, i32 8, i1 false)
  %209 = bitcast i32* %l_944 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %209) #1
  store i32 -1364877548, i32* %l_944, align 4, !tbaa !1
  %210 = bitcast i16* %l_951 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %210) #1
  store i16 15151, i16* %l_951, align 2, !tbaa !10
  %211 = bitcast [5 x i32]* %l_961 to i8*
  call void @llvm.lifetime.start(i64 20, i8* %211) #1
  %212 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %212) #1
  store i32 0, i32* %i1, align 4, !tbaa !1
  br label %213

; <label>:213                                     ; preds = %220, %201
  %214 = load i32, i32* %i1, align 4, !tbaa !1
  %215 = icmp slt i32 %214, 5
  br i1 %215, label %216, label %223

; <label>:216                                     ; preds = %213
  %217 = load i32, i32* %i1, align 4, !tbaa !1
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds [5 x i32], [5 x i32]* %l_961, i32 0, i64 %218
  store i32 -9, i32* %219, align 4, !tbaa !1
  br label %220

; <label>:220                                     ; preds = %216
  %221 = load i32, i32* %i1, align 4, !tbaa !1
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %i1, align 4, !tbaa !1
  br label %213

; <label>:223                                     ; preds = %213
  %224 = load volatile i64, i64* @g_4, align 8, !tbaa !7
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %227

; <label>:226                                     ; preds = %223
  store i32 3, i32* %2
  br label %228

; <label>:227                                     ; preds = %223
  store i32 0, i32* %2
  br label %228

; <label>:228                                     ; preds = %227, %226
  %229 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %229) #1
  %230 = bitcast [5 x i32]* %l_961 to i8*
  call void @llvm.lifetime.end(i64 20, i8* %230) #1
  %231 = bitcast i16* %l_951 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %231) #1
  %232 = bitcast i32* %l_944 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %232) #1
  %233 = bitcast %union.U1* %l_919 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %233) #1
  %234 = bitcast i8** %l_918 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %234) #1
  %235 = bitcast i32* %l_915 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %235) #1
  %236 = bitcast i64** %l_850 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %236) #1
  %237 = bitcast i32* %l_37 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %237) #1
  %238 = bitcast i8** %l_36 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %238) #1
  %cleanup.dest = load i32, i32* %2
  switch i32 %cleanup.dest, label %491 [
    i32 0, label %239
    i32 3, label %243
  ]

; <label>:239                                     ; preds = %228
  br label %240

; <label>:240                                     ; preds = %239
  %241 = load i8, i8* @g_10, align 1, !tbaa !9
  %242 = add i8 %241, 1
  store i8 %242, i8* @g_10, align 1, !tbaa !9
  br label %197

; <label>:243                                     ; preds = %228, %197
  %244 = load i32, i32* %l_15, align 4, !tbaa !1
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %247

; <label>:246                                     ; preds = %243
  br label %98

; <label>:247                                     ; preds = %243
  store i32 0, i32* @g_137, align 4, !tbaa !1
  br label %248

; <label>:248                                     ; preds = %464, %247
  %249 = load i32, i32* @g_137, align 4, !tbaa !1
  %250 = icmp ule i32 %249, 1
  br i1 %250, label %251, label %467

; <label>:251                                     ; preds = %248
  %252 = bitcast [10 x i32]* %l_1008 to i8*
  call void @llvm.lifetime.start(i64 40, i8* %252) #1
  %253 = bitcast i32** %l_1009 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %253) #1
  store i32* @g_93, i32** %l_1009, align 8, !tbaa !5
  %254 = bitcast i32** %l_1010 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %254) #1
  store i32* %l_965, i32** %l_1010, align 8, !tbaa !5
  %255 = bitcast i32** %l_1011 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %255) #1
  store i32* %l_964, i32** %l_1011, align 8, !tbaa !5
  %256 = bitcast i32* %l_1012 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %256) #1
  store i32 674924146, i32* %l_1012, align 4, !tbaa !1
  %257 = bitcast i32** %l_1013 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %257) #1
  store i32* %l_16, i32** %l_1013, align 8, !tbaa !5
  %258 = bitcast i32** %l_1014 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %258) #1
  store i32* @g_93, i32** %l_1014, align 8, !tbaa !5
  %259 = bitcast i32** %l_1015 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %259) #1
  store i32* @g_848, i32** %l_1015, align 8, !tbaa !5
  %260 = bitcast %union.U1*** %l_1029 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %260) #1
  store %union.U1** @g_647, %union.U1*** %l_1029, align 8, !tbaa !5
  %261 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %261) #1
  store i32 0, i32* %i2, align 4, !tbaa !1
  br label %262

; <label>:262                                     ; preds = %269, %251
  %263 = load i32, i32* %i2, align 4, !tbaa !1
  %264 = icmp slt i32 %263, 10
  br i1 %264, label %265, label %272

; <label>:265                                     ; preds = %262
  %266 = load i32, i32* %i2, align 4, !tbaa !1
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds [10 x i32], [10 x i32]* %l_1008, i32 0, i64 %267
  store i32 1, i32* %268, align 4, !tbaa !1
  br label %269

; <label>:269                                     ; preds = %265
  %270 = load i32, i32* %i2, align 4, !tbaa !1
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %i2, align 4, !tbaa !1
  br label %262

; <label>:272                                     ; preds = %262
  %273 = load i16, i16* %l_1016, align 2, !tbaa !10
  %274 = add i16 %273, -1
  store i16 %274, i16* %l_1016, align 2, !tbaa !10
  %275 = load i32, i32* %l_16, align 4, !tbaa !1
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %278

; <label>:277                                     ; preds = %272
  store i32 2, i32* %2
  br label %452

; <label>:278                                     ; preds = %272
  store i32 0, i32* @g_838, align 4, !tbaa !1
  br label %279

; <label>:279                                     ; preds = %448, %278
  %280 = load i32, i32* @g_838, align 4, !tbaa !1
  %281 = icmp ule i32 %280, 1
  br i1 %281, label %282, label %451

; <label>:282                                     ; preds = %279
  %283 = bitcast i16** %l_1021 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %283) #1
  store i16* %l_1016, i16** %l_1021, align 8, !tbaa !5
  %284 = bitcast [1 x %union.U1**]* %l_1028 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %284) #1
  %285 = bitcast %union.U1**** %l_1030 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %285) #1
  store %union.U1*** %l_1029, %union.U1**** %l_1030, align 8, !tbaa !5
  %286 = bitcast [2 x [2 x i32]]* %l_1037 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %286) #1
  %287 = bitcast [3 x [9 x i16*]]* %l_1038 to i8*
  call void @llvm.lifetime.start(i64 216, i8* %287) #1
  %288 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %288) #1
  %289 = bitcast i32* %j4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %289) #1
  store i32 0, i32* %i3, align 4, !tbaa !1
  br label %290

; <label>:290                                     ; preds = %297, %282
  %291 = load i32, i32* %i3, align 4, !tbaa !1
  %292 = icmp slt i32 %291, 1
  br i1 %292, label %293, label %300

; <label>:293                                     ; preds = %290
  %294 = load i32, i32* %i3, align 4, !tbaa !1
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds [1 x %union.U1**], [1 x %union.U1**]* %l_1028, i32 0, i64 %295
  store %union.U1** null, %union.U1*** %296, align 8, !tbaa !5
  br label %297

; <label>:297                                     ; preds = %293
  %298 = load i32, i32* %i3, align 4, !tbaa !1
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* %i3, align 4, !tbaa !1
  br label %290

; <label>:300                                     ; preds = %290
  store i32 0, i32* %i3, align 4, !tbaa !1
  br label %301

; <label>:301                                     ; preds = %319, %300
  %302 = load i32, i32* %i3, align 4, !tbaa !1
  %303 = icmp slt i32 %302, 2
  br i1 %303, label %304, label %322

; <label>:304                                     ; preds = %301
  store i32 0, i32* %j4, align 4, !tbaa !1
  br label %305

; <label>:305                                     ; preds = %315, %304
  %306 = load i32, i32* %j4, align 4, !tbaa !1
  %307 = icmp slt i32 %306, 2
  br i1 %307, label %308, label %318

; <label>:308                                     ; preds = %305
  %309 = load i32, i32* %j4, align 4, !tbaa !1
  %310 = sext i32 %309 to i64
  %311 = load i32, i32* %i3, align 4, !tbaa !1
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %l_1037, i32 0, i64 %312
  %314 = getelementptr inbounds [2 x i32], [2 x i32]* %313, i32 0, i64 %310
  store i32 3, i32* %314, align 4, !tbaa !1
  br label %315

; <label>:315                                     ; preds = %308
  %316 = load i32, i32* %j4, align 4, !tbaa !1
  %317 = add nsw i32 %316, 1
  store i32 %317, i32* %j4, align 4, !tbaa !1
  br label %305

; <label>:318                                     ; preds = %305
  br label %319

; <label>:319                                     ; preds = %318
  %320 = load i32, i32* %i3, align 4, !tbaa !1
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %i3, align 4, !tbaa !1
  br label %301

; <label>:322                                     ; preds = %301
  store i32 0, i32* %i3, align 4, !tbaa !1
  br label %323

; <label>:323                                     ; preds = %341, %322
  %324 = load i32, i32* %i3, align 4, !tbaa !1
  %325 = icmp slt i32 %324, 3
  br i1 %325, label %326, label %344

; <label>:326                                     ; preds = %323
  store i32 0, i32* %j4, align 4, !tbaa !1
  br label %327

; <label>:327                                     ; preds = %337, %326
  %328 = load i32, i32* %j4, align 4, !tbaa !1
  %329 = icmp slt i32 %328, 9
  br i1 %329, label %330, label %340

; <label>:330                                     ; preds = %327
  %331 = load i32, i32* %j4, align 4, !tbaa !1
  %332 = sext i32 %331 to i64
  %333 = load i32, i32* %i3, align 4, !tbaa !1
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds [3 x [9 x i16*]], [3 x [9 x i16*]]* %l_1038, i32 0, i64 %334
  %336 = getelementptr inbounds [9 x i16*], [9 x i16*]* %335, i32 0, i64 %332
  store i16* null, i16** %336, align 8, !tbaa !5
  br label %337

; <label>:337                                     ; preds = %330
  %338 = load i32, i32* %j4, align 4, !tbaa !1
  %339 = add nsw i32 %338, 1
  store i32 %339, i32* %j4, align 4, !tbaa !1
  br label %327

; <label>:340                                     ; preds = %327
  br label %341

; <label>:341                                     ; preds = %340
  %342 = load i32, i32* %i3, align 4, !tbaa !1
  %343 = add nsw i32 %342, 1
  store i32 %343, i32* %i3, align 4, !tbaa !1
  br label %323

; <label>:344                                     ; preds = %323
  store i32 0, i32* %l_1012, align 4, !tbaa !1
  br label %345

; <label>:345                                     ; preds = %362, %344
  %346 = load i32, i32* %l_1012, align 4, !tbaa !1
  %347 = icmp sle i32 %346, 1
  br i1 %347, label %348, label %365

; <label>:348                                     ; preds = %345
  %349 = bitcast i32* %i5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %349) #1
  %350 = bitcast i32* %j6 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %350) #1
  %351 = load i32, i32* %l_1012, align 4, !tbaa !1
  %352 = sext i32 %351 to i64
  %353 = load i32, i32* %l_1012, align 4, !tbaa !1
  %354 = add nsw i32 %353, 7
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds [9 x [2 x i32]], [9 x [2 x i32]]* @g_294, i32 0, i64 %355
  %357 = getelementptr inbounds [2 x i32], [2 x i32]* %356, i32 0, i64 %352
  %358 = load volatile i32, i32* %357, align 4, !tbaa !1
  %359 = zext i32 %358 to i64
  store i64 %359, i64* %1
  store i32 1, i32* %2
  %360 = bitcast i32* %j6 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %360) #1
  %361 = bitcast i32* %i5 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %361) #1
  br label %439
                                                  ; No predecessors!
  %363 = load i32, i32* %l_1012, align 4, !tbaa !1
  %364 = add nsw i32 %363, 1
  store i32 %364, i32* %l_1012, align 4, !tbaa !1
  br label %345

; <label>:365                                     ; preds = %345
  %366 = load i32, i32* @g_838, align 4, !tbaa !1
  %367 = zext i32 %366 to i64
  %368 = load i32, i32* @g_137, align 4, !tbaa !1
  %369 = add i32 %368, 6
  %370 = zext i32 %369 to i64
  %371 = getelementptr inbounds [9 x [2 x i32]], [9 x [2 x i32]]* @g_294, i32 0, i64 %370
  %372 = getelementptr inbounds [2 x i32], [2 x i32]* %371, i32 0, i64 %367
  %373 = load volatile i32, i32* %372, align 4, !tbaa !1
  %374 = load i16*, i16** %l_1021, align 8, !tbaa !5
  store i16* %374, i16** @g_989, align 8, !tbaa !5
  %375 = icmp eq i16* %374, getelementptr inbounds ([3 x i16], [3 x i16]* @g_130, i32 0, i64 2)
  %376 = zext i1 %375 to i32
  %377 = icmp eq i32 %373, %376
  %378 = zext i1 %377 to i32
  %379 = trunc i32 %378 to i8
  %380 = getelementptr inbounds [1 x %union.U1**], [1 x %union.U1**]* %l_1028, i32 0, i64 0
  %381 = load %union.U1**, %union.U1*** %380, align 8, !tbaa !5
  %382 = load %union.U1**, %union.U1*** %l_1029, align 8, !tbaa !5
  %383 = load %union.U1***, %union.U1**** %l_1030, align 8, !tbaa !5
  store %union.U1** %382, %union.U1*** %383, align 8, !tbaa !5
  %384 = icmp eq %union.U1** %381, %382
  %385 = zext i1 %384 to i32
  %386 = load i8, i8* @g_783, align 1, !tbaa !9
  %387 = sext i8 %386 to i32
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %389, label %417

; <label>:389                                     ; preds = %365
  %390 = load i32**, i32*** @g_752, align 8, !tbaa !5
  %391 = load i32*, i32** %390, align 8, !tbaa !5
  %392 = load i32, i32* %391, align 4, !tbaa !1
  %393 = icmp eq i32 28358, %392
  %394 = zext i1 %393 to i32
  %395 = xor i32 %394, -1
  %396 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %l_1037, i32 0, i64 1
  %397 = getelementptr inbounds [2 x i32], [2 x i32]* %396, i32 0, i64 1
  %398 = load i32, i32* %397, align 4, !tbaa !1
  %399 = xor i32 %398, -1
  %400 = sext i32 %399 to i64
  %401 = icmp sle i64 %400, 0
  %402 = zext i1 %401 to i32
  %403 = icmp eq i32 %395, %402
  %404 = zext i1 %403 to i32
  %405 = load i32, i32* getelementptr inbounds ([4 x [4 x i32]], [4 x [4 x i32]]* @g_94, i32 0, i64 2, i64 2), align 4, !tbaa !1
  %406 = and i32 %404, %405
  %407 = trunc i32 %406 to i16
  %408 = call zeroext i16 @safe_mod_func_uint16_t_u_u(i16 zeroext %407, i16 zeroext -9547)
  %409 = zext i16 %408 to i32
  %410 = load i16, i16* @g_209, align 2, !tbaa !10
  %411 = sext i16 %410 to i32
  %412 = and i32 %411, %409
  %413 = trunc i32 %412 to i16
  store i16 %413, i16* @g_209, align 2, !tbaa !10
  %414 = call signext i16 @safe_rshift_func_int16_t_s_u(i16 signext %413, i32 9)
  %415 = sext i16 %414 to i32
  %416 = icmp ne i32 %415, 0
  br label %417

; <label>:417                                     ; preds = %389, %365
  %418 = phi i1 [ false, %365 ], [ %416, %389 ]
  %419 = zext i1 %418 to i32
  %420 = trunc i32 %419 to i16
  %421 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %420, i16 zeroext -16904)
  %422 = getelementptr inbounds [9 x [4 x [7 x i16]]], [9 x [4 x [7 x i16]]]* %l_6, i32 0, i64 0
  %423 = getelementptr inbounds [4 x [7 x i16]], [4 x [7 x i16]]* %422, i32 0, i64 2
  %424 = getelementptr inbounds [7 x i16], [7 x i16]* %423, i32 0, i64 6
  %425 = load i16, i16* %424, align 2, !tbaa !10
  %426 = call signext i16 @safe_mod_func_int16_t_s_s(i16 signext %421, i16 signext %425)
  %427 = sext i16 %426 to i32
  %428 = load i32, i32* %l_15, align 4, !tbaa !1
  %429 = and i32 %428, %427
  store i32 %429, i32* %l_15, align 4, !tbaa !1
  %430 = trunc i32 %429 to i8
  %431 = load i64, i64* @g_197, align 8, !tbaa !7
  %432 = trunc i64 %431 to i32
  %433 = call signext i8 @safe_lshift_func_int8_t_s_u(i8 signext %430, i32 %432)
  %434 = load i8***, i8**** @g_277, align 8, !tbaa !5
  %435 = load volatile i8**, i8*** %434, align 8, !tbaa !5
  %436 = load volatile i8*, i8** %435, align 8, !tbaa !5
  %437 = load i8, i8* %436, align 1, !tbaa !9
  %438 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %379, i8 signext %437)
  store i32* null, i32** %l_1039, align 8, !tbaa !5
  store i32 0, i32* %2
  br label %439

; <label>:439                                     ; preds = %417, %348
  %440 = bitcast i32* %j4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %440) #1
  %441 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %441) #1
  %442 = bitcast [3 x [9 x i16*]]* %l_1038 to i8*
  call void @llvm.lifetime.end(i64 216, i8* %442) #1
  %443 = bitcast [2 x [2 x i32]]* %l_1037 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %443) #1
  %444 = bitcast %union.U1**** %l_1030 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %444) #1
  %445 = bitcast [1 x %union.U1**]* %l_1028 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %445) #1
  %446 = bitcast i16** %l_1021 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %446) #1
  %cleanup.dest.7 = load i32, i32* %2
  switch i32 %cleanup.dest.7, label %452 [
    i32 0, label %447
  ]

; <label>:447                                     ; preds = %439
  br label %448

; <label>:448                                     ; preds = %447
  %449 = load i32, i32* @g_838, align 4, !tbaa !1
  %450 = add i32 %449, 1
  store i32 %450, i32* @g_838, align 4, !tbaa !1
  br label %279

; <label>:451                                     ; preds = %279
  store i32 0, i32* %2
  br label %452

; <label>:452                                     ; preds = %451, %439, %277
  %453 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %453) #1
  %454 = bitcast %union.U1*** %l_1029 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %454) #1
  %455 = bitcast i32** %l_1015 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %455) #1
  %456 = bitcast i32** %l_1014 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %456) #1
  %457 = bitcast i32** %l_1013 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %457) #1
  %458 = bitcast i32* %l_1012 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %458) #1
  %459 = bitcast i32** %l_1011 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %459) #1
  %460 = bitcast i32** %l_1010 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %460) #1
  %461 = bitcast i32** %l_1009 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %461) #1
  %462 = bitcast [10 x i32]* %l_1008 to i8*
  call void @llvm.lifetime.end(i64 40, i8* %462) #1
  %cleanup.dest.8 = load i32, i32* %2
  switch i32 %cleanup.dest.8, label %471 [
    i32 0, label %463
    i32 2, label %98
  ]

; <label>:463                                     ; preds = %452
  br label %464

; <label>:464                                     ; preds = %463
  %465 = load i32, i32* @g_137, align 4, !tbaa !1
  %466 = add i32 %465, 1
  store i32 %466, i32* @g_137, align 4, !tbaa !1
  br label %248

; <label>:467                                     ; preds = %248
  %468 = load i64**, i64*** @g_1004, align 8, !tbaa !5
  %469 = load i64*, i64** %468, align 8, !tbaa !5
  %470 = load i64, i64* %469, align 8, !tbaa !7
  store i64 %470, i64* %1
  store i32 1, i32* %2
  br label %471

; <label>:471                                     ; preds = %467, %452
  %472 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %472) #1
  %473 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %473) #1
  %474 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %474) #1
  %475 = bitcast i32** %l_1039 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %475) #1
  %476 = bitcast i16* %l_1016 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %476) #1
  %477 = bitcast i16*** %l_1006 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %477) #1
  %478 = bitcast [2 x [6 x [5 x i8****]]]* %l_982 to i8*
  call void @llvm.lifetime.end(i64 480, i8* %478) #1
  %479 = bitcast i8**** %l_983 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %479) #1
  %480 = bitcast i32* %l_965 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %480) #1
  %481 = bitcast i32* %l_964 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %481) #1
  %482 = bitcast i32* %l_963 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %482) #1
  %483 = bitcast i64** %l_945 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %483) #1
  %484 = bitcast %union.U1** %l_917 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %484) #1
  %485 = bitcast %union.U1* %l_851 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %485) #1
  %486 = bitcast i32* %l_16 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %486) #1
  %487 = bitcast i32* %l_15 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %487) #1
  %488 = bitcast [6 x [10 x [1 x i8*]]]* %l_9 to i8*
  call void @llvm.lifetime.end(i64 480, i8* %488) #1
  %489 = bitcast [9 x [4 x [7 x i16]]]* %l_6 to i8*
  call void @llvm.lifetime.end(i64 504, i8* %489) #1
  %490 = load i64, i64* %1
  ret i64 %490

; <label>:491                                     ; preds = %228
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
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.42, i32 0, i32 0), i8* %8, i64 %11)
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
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.43, i32 0, i32 0), i32 %3)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal zeroext i16 @safe_rshift_func_uint16_t_u_u(i16 zeroext %left, i32 %right) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i32, align 4
  store i16 %left, i16* %1, align 2, !tbaa !10
  store i32 %right, i32* %2, align 4, !tbaa !1
  %3 = load i32, i32* %2, align 4, !tbaa !1
  %4 = icmp uge i32 %3, 32
  br i1 %4, label %5, label %8

; <label>:5                                       ; preds = %0
  %6 = load i16, i16* %1, align 2, !tbaa !10
  %7 = zext i16 %6 to i32
  br label %13

; <label>:8                                       ; preds = %0
  %9 = load i16, i16* %1, align 2, !tbaa !10
  %10 = zext i16 %9 to i32
  %11 = load i32, i32* %2, align 4, !tbaa !1
  %12 = ashr i32 %10, %11
  br label %13

; <label>:13                                      ; preds = %8, %5
  %14 = phi i32 [ %7, %5 ], [ %12, %8 ]
  %15 = trunc i32 %14 to i16
  ret i16 %15
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %ui1, i8 zeroext %ui2) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  store i8 %ui1, i8* %1, align 1, !tbaa !9
  store i8 %ui2, i8* %2, align 1, !tbaa !9
  %3 = load i8, i8* %1, align 1, !tbaa !9
  %4 = zext i8 %3 to i32
  %5 = load i8, i8* %2, align 1, !tbaa !9
  %6 = zext i8 %5 to i32
  %7 = mul i32 %4, %6
  %8 = trunc i32 %7 to i8
  ret i8 %8
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
define internal signext i16 @safe_lshift_func_int16_t_s_u(i16 signext %left, i32 %right) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i32, align 4
  store i16 %left, i16* %1, align 2, !tbaa !10
  store i32 %right, i32* %2, align 4, !tbaa !1
  %3 = load i16, i16* %1, align 2, !tbaa !10
  %4 = sext i16 %3 to i32
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %15, label %6

; <label>:6                                       ; preds = %0
  %7 = load i32, i32* %2, align 4, !tbaa !1
  %8 = icmp uge i32 %7, 32
  br i1 %8, label %15, label %9

; <label>:9                                       ; preds = %6
  %10 = load i16, i16* %1, align 2, !tbaa !10
  %11 = sext i16 %10 to i32
  %12 = load i32, i32* %2, align 4, !tbaa !1
  %13 = ashr i32 32767, %12
  %14 = icmp sgt i32 %11, %13
  br i1 %14, label %15, label %18

; <label>:15                                      ; preds = %9, %6, %0
  %16 = load i16, i16* %1, align 2, !tbaa !10
  %17 = sext i16 %16 to i32
  br label %23

; <label>:18                                      ; preds = %9
  %19 = load i16, i16* %1, align 2, !tbaa !10
  %20 = sext i16 %19 to i32
  %21 = load i32, i32* %2, align 4, !tbaa !1
  %22 = shl i32 %20, %21
  br label %23

; <label>:23                                      ; preds = %18, %15
  %24 = phi i32 [ %17, %15 ], [ %22, %18 ]
  %25 = trunc i32 %24 to i16
  ret i16 %25
}

; Function Attrs: nounwind uwtable
define internal signext i8 @safe_mul_func_int8_t_s_s(i8 signext %si1, i8 signext %si2) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  store i8 %si1, i8* %1, align 1, !tbaa !9
  store i8 %si2, i8* %2, align 1, !tbaa !9
  %3 = load i8, i8* %1, align 1, !tbaa !9
  %4 = sext i8 %3 to i32
  %5 = load i8, i8* %2, align 1, !tbaa !9
  %6 = sext i8 %5 to i32
  %7 = mul nsw i32 %4, %6
  %8 = trunc i32 %7 to i8
  ret i8 %8
}

; Function Attrs: nounwind uwtable
define internal signext i8 @safe_lshift_func_int8_t_s_u(i8 signext %left, i32 %right) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i32, align 4
  store i8 %left, i8* %1, align 1, !tbaa !9
  store i32 %right, i32* %2, align 4, !tbaa !1
  %3 = load i8, i8* %1, align 1, !tbaa !9
  %4 = sext i8 %3 to i32
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %15, label %6

; <label>:6                                       ; preds = %0
  %7 = load i32, i32* %2, align 4, !tbaa !1
  %8 = icmp uge i32 %7, 32
  br i1 %8, label %15, label %9

; <label>:9                                       ; preds = %6
  %10 = load i8, i8* %1, align 1, !tbaa !9
  %11 = sext i8 %10 to i32
  %12 = load i32, i32* %2, align 4, !tbaa !1
  %13 = ashr i32 127, %12
  %14 = icmp sgt i32 %11, %13
  br i1 %14, label %15, label %18

; <label>:15                                      ; preds = %9, %6, %0
  %16 = load i8, i8* %1, align 1, !tbaa !9
  %17 = sext i8 %16 to i32
  br label %23

; <label>:18                                      ; preds = %9
  %19 = load i8, i8* %1, align 1, !tbaa !9
  %20 = sext i8 %19 to i32
  %21 = load i32, i32* %2, align 4, !tbaa !1
  %22 = shl i32 %20, %21
  br label %23

; <label>:23                                      ; preds = %18, %15
  %24 = phi i32 [ %17, %15 ], [ %22, %18 ]
  %25 = trunc i32 %24 to i8
  ret i8 %25
}

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
define internal signext i16 @safe_rshift_func_int16_t_s_u(i16 signext %left, i32 %right) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i32, align 4
  store i16 %left, i16* %1, align 2, !tbaa !10
  store i32 %right, i32* %2, align 4, !tbaa !1
  %3 = load i16, i16* %1, align 2, !tbaa !10
  %4 = sext i16 %3 to i32
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %9, label %6

; <label>:6                                       ; preds = %0
  %7 = load i32, i32* %2, align 4, !tbaa !1
  %8 = icmp uge i32 %7, 32
  br i1 %8, label %9, label %12

; <label>:9                                       ; preds = %6, %0
  %10 = load i16, i16* %1, align 2, !tbaa !10
  %11 = sext i16 %10 to i32
  br label %17

; <label>:12                                      ; preds = %6
  %13 = load i16, i16* %1, align 2, !tbaa !10
  %14 = sext i16 %13 to i32
  %15 = load i32, i32* %2, align 4, !tbaa !1
  %16 = ashr i32 %14, %15
  br label %17

; <label>:17                                      ; preds = %12, %9
  %18 = phi i32 [ %11, %9 ], [ %16, %12 ]
  %19 = trunc i32 %18 to i16
  ret i16 %19
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
