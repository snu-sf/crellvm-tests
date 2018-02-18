; ModuleID = '00007.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S0 = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_8 = internal global [10 x [5 x [5 x i16]]] [[5 x [5 x i16]] [[5 x i16] [i16 4, i16 -13166, i16 -3, i16 0, i16 -3], [5 x i16] [i16 -7, i16 0, i16 -13283, i16 -1, i16 5658], [5 x i16] [i16 4, i16 -9, i16 0, i16 6, i16 6], [5 x i16] [i16 -4, i16 29519, i16 -4, i16 -12798, i16 8], [5 x i16] [i16 0, i16 -9, i16 4, i16 15105, i16 3067]], [5 x [5 x i16]] [[5 x i16] [i16 -13283, i16 0, i16 -7, i16 -21866, i16 -4], [5 x i16] [i16 -3, i16 -13166, i16 4, i16 3067, i16 -9], [5 x i16] [i16 0, i16 -1, i16 -4, i16 -1, i16 0], [5 x i16] [i16 -13166, i16 15105, i16 0, i16 3067, i16 1], [5 x i16] [i16 -9, i16 -21866, i16 -7, i16 0, i16 -13283]], [5 x [5 x i16]] [[5 x i16] [i16 15105, i16 1, i16 0, i16 -13166, i16 0], [5 x i16] [i16 -32470, i16 0, i16 -9, i16 -1, i16 -9], [5 x i16] [i16 0, i16 0, i16 1, i16 15105, i16 -3], [5 x i16] [i16 -32470, i16 8, i16 -4, i16 -4, i16 1], [5 x i16] [i16 15105, i16 3067, i16 15105, i16 4, i16 -9]], [5 x [5 x i16]] [[5 x i16] [i16 -4, i16 8, i16 -32470, i16 -21866, i16 5658], [5 x i16] [i16 1, i16 0, i16 0, i16 1, i16 15105], [5 x i16] [i16 -9, i16 0, i16 -32470, i16 7, i16 0], [5 x i16] [i16 0, i16 1, i16 15105, i16 1, i16 0], [5 x i16] [i16 -7, i16 -21866, i16 -4, i16 7, i16 1]], [5 x [5 x i16]] [[5 x i16] [i16 6, i16 -13166, i16 1, i16 1, i16 -13166], [5 x i16] [i16 1, i16 29519, i16 -9, i16 -21866, i16 1], [5 x i16] [i16 1, i16 1, i16 0, i16 4, i16 0], [5 x i16] [i16 1, i16 -12798, i16 -7, i16 -4, i16 0], [5 x i16] [i16 1, i16 -3, i16 6, i16 15105, i16 15105]], [5 x [5 x i16]] [[5 x i16] [i16 1, i16 1, i16 1, i16 -1, i16 5658], [5 x i16] [i16 6, i16 -3, i16 1, i16 -13166, i16 -9], [5 x i16] [i16 -7, i16 -12798, i16 1, i16 0, i16 1], [5 x i16] [i16 0, i16 1, i16 1, i16 -9, i16 -3], [5 x i16] [i16 -9, i16 29519, i16 1, i16 29519, i16 -9]], [5 x [5 x i16]] [[5 x i16] [i16 1, i16 -13166, i16 6, i16 -9, i16 0], [5 x i16] [i16 -4, i16 -21866, i16 -7, i16 0, i16 -13283], [5 x i16] [i16 15105, i16 1, i16 0, i16 -13166, i16 0], [5 x i16] [i16 -32470, i16 0, i16 -9, i16 -1, i16 -9], [5 x i16] [i16 0, i16 0, i16 1, i16 15105, i16 -3]], [5 x [5 x i16]] [[5 x i16] [i16 -32470, i16 8, i16 -4, i16 -4, i16 1], [5 x i16] [i16 15105, i16 3067, i16 15105, i16 4, i16 -9], [5 x i16] [i16 -4, i16 8, i16 -32470, i16 -21866, i16 5658], [5 x i16] [i16 1, i16 0, i16 0, i16 1, i16 15105], [5 x i16] [i16 -9, i16 0, i16 -32470, i16 7, i16 0]], [5 x [5 x i16]] [[5 x i16] [i16 0, i16 1, i16 15105, i16 1, i16 0], [5 x i16] [i16 -7, i16 -21866, i16 -4, i16 7, i16 1], [5 x i16] [i16 6, i16 -13166, i16 1, i16 1, i16 -13166], [5 x i16] [i16 1, i16 29519, i16 -9, i16 -21866, i16 1], [5 x i16] [i16 1, i16 1, i16 0, i16 4, i16 0]], [5 x [5 x i16]] [[5 x i16] [i16 1, i16 -12798, i16 -7, i16 -4, i16 0], [5 x i16] [i16 1, i16 -3, i16 6, i16 15105, i16 15105], [5 x i16] [i16 1, i16 1, i16 -13283, i16 29519, i16 0], [5 x i16] [i16 15105, i16 0, i16 3067, i16 1, i16 -3], [5 x i16] [i16 1, i16 -1, i16 -3, i16 -12798, i16 -13283]]], align 16
@.str.1 = private unnamed_addr constant [13 x i8] c"g_8[i][j][k]\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"index = [%d][%d][%d]\0A\00", align 1
@g_77 = internal global i32 -2, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"g_77\00", align 1
@g_82 = internal global i64 -8663182013222533554, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"g_82\00", align 1
@g_94 = internal global i64 5484284810614189802, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"g_94\00", align 1
@g_95 = internal global i64 922376225171750946, align 8
@.str.6 = private unnamed_addr constant [5 x i8] c"g_95\00", align 1
@g_99 = internal global i16 7172, align 2
@.str.7 = private unnamed_addr constant [5 x i8] c"g_99\00", align 1
@g_101 = internal global i16 1, align 2
@.str.8 = private unnamed_addr constant [6 x i8] c"g_101\00", align 1
@g_102 = internal global [9 x [3 x [2 x i64]]] [[3 x [2 x i64]] [[2 x i64] [i64 -1, i64 -5], [2 x i64] [i64 3239294036027239871, i64 -6], [2 x i64] [i64 -5, i64 7]], [3 x [2 x i64]] [[2 x i64] [i64 -5, i64 6135813544349916588], [2 x i64] [i64 6135813544349916588, i64 6135813544349916588], [2 x i64] [i64 -5, i64 7]], [3 x [2 x i64]] [[2 x i64] [i64 -5, i64 -6], [2 x i64] [i64 3239294036027239871, i64 -5], [2 x i64] [i64 -1, i64 3239294036027239871]], [3 x [2 x i64]] [[2 x i64] [i64 -1724054669579309985, i64 5], [2 x i64] [i64 -1724054669579309985, i64 3239294036027239871], [2 x i64] [i64 -1, i64 -5]], [3 x [2 x i64]] [[2 x i64] [i64 3239294036027239871, i64 -6], [2 x i64] [i64 -5, i64 7], [2 x i64] [i64 -5, i64 6135813544349916588]], [3 x [2 x i64]] [[2 x i64] [i64 6135813544349916588, i64 6135813544349916588], [2 x i64] [i64 -5, i64 7], [2 x i64] [i64 -5, i64 -6]], [3 x [2 x i64]] [[2 x i64] [i64 3239294036027239871, i64 -5], [2 x i64] [i64 -1, i64 3239294036027239871], [2 x i64] [i64 -1724054669579309985, i64 5]], [3 x [2 x i64]] [[2 x i64] [i64 -1724054669579309985, i64 3239294036027239871], [2 x i64] [i64 -1, i64 -5], [2 x i64] [i64 3239294036027239871, i64 -6]], [3 x [2 x i64]] [[2 x i64] [i64 -5, i64 7], [2 x i64] [i64 -5, i64 6135813544349916588], [2 x i64] [i64 6135813544349916588, i64 6135813544349916588]]], align 16
@.str.9 = private unnamed_addr constant [15 x i8] c"g_102[i][j][k]\00", align 1
@g_103 = internal global %struct.S0 { i32 -407277528 }, align 4
@.str.10 = private unnamed_addr constant [9 x i8] c"g_103.f0\00", align 1
@g_109 = internal global i64 8, align 8
@.str.11 = private unnamed_addr constant [6 x i8] c"g_109\00", align 1
@g_156 = internal global %struct.S0 { i32 -368867691 }, align 4
@.str.12 = private unnamed_addr constant [9 x i8] c"g_156.f0\00", align 1
@g_168 = internal global i32 1162642408, align 4
@.str.13 = private unnamed_addr constant [6 x i8] c"g_168\00", align 1
@g_199 = internal global i16 14733, align 2
@.str.14 = private unnamed_addr constant [6 x i8] c"g_199\00", align 1
@g_327 = internal global i32 -526897936, align 4
@.str.15 = private unnamed_addr constant [6 x i8] c"g_327\00", align 1
@g_368 = internal global [8 x i8] c"\FF\08\FF\FF\08\FF\FF\08", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"g_368[i]\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_426 = internal global i8 -19, align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"g_426\00", align 1
@g_480 = internal global i32 -10, align 4
@.str.19 = private unnamed_addr constant [6 x i8] c"g_480\00", align 1
@g_510 = internal constant [7 x i64] [i64 5737503132476834028, i64 5737503132476834028, i64 5737503132476834028, i64 5737503132476834028, i64 5737503132476834028, i64 5737503132476834028, i64 5737503132476834028], align 16
@.str.20 = private unnamed_addr constant [9 x i8] c"g_510[i]\00", align 1
@g_572 = internal global i8 22, align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"g_572\00", align 1
@g_610 = internal global i8 1, align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"g_610\00", align 1
@g_613 = internal global [2 x [6 x i8]] [[6 x i8] c"\0E\F9\0E\0E\F9\0E", [6 x i8] c"\0E\F9\0E\0E\F9\0E"], align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"g_613[i][j]\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@g_690 = internal global i64 -6421558686552657313, align 8
@.str.25 = private unnamed_addr constant [6 x i8] c"g_690\00", align 1
@g_708 = internal global [2 x i16] [i16 1, i16 1], align 2
@.str.26 = private unnamed_addr constant [9 x i8] c"g_708[i]\00", align 1
@g_756 = internal global [2 x [6 x [1 x i32]]] [[6 x [1 x i32]] [[1 x i32] [i32 696479874], [1 x i32] [i32 696479874], [1 x i32] [i32 696479874], [1 x i32] [i32 696479874], [1 x i32] [i32 696479874], [1 x i32] [i32 696479874]], [6 x [1 x i32]] [[1 x i32] [i32 696479874], [1 x i32] [i32 696479874], [1 x i32] [i32 696479874], [1 x i32] [i32 696479874], [1 x i32] [i32 696479874], [1 x i32] [i32 696479874]]], align 16
@.str.27 = private unnamed_addr constant [15 x i8] c"g_756[i][j][k]\00", align 1
@g_781 = internal global i32 -882915866, align 4
@.str.28 = private unnamed_addr constant [6 x i8] c"g_781\00", align 1
@g_903 = internal global i32 -1, align 4
@.str.29 = private unnamed_addr constant [6 x i8] c"g_903\00", align 1
@g_1140 = internal global i32 -364018935, align 4
@.str.30 = private unnamed_addr constant [7 x i8] c"g_1140\00", align 1
@g_1249 = internal global i64 -7612608941372742519, align 8
@.str.31 = private unnamed_addr constant [7 x i8] c"g_1249\00", align 1
@g_1278 = internal global i32 -3, align 4
@.str.32 = private unnamed_addr constant [7 x i8] c"g_1278\00", align 1
@g_1279 = internal global i64 623705002218101024, align 8
@.str.33 = private unnamed_addr constant [7 x i8] c"g_1279\00", align 1
@g_1361 = internal global i64 -1, align 8
@.str.34 = private unnamed_addr constant [7 x i8] c"g_1361\00", align 1
@g_1423 = internal global i16 -9, align 2
@.str.35 = private unnamed_addr constant [7 x i8] c"g_1423\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"g_1492\00", align 1
@g_1534 = internal global i8 101, align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"g_1534\00", align 1
@g_1536 = internal global [1 x i32] [i32 1], align 4
@.str.38 = private unnamed_addr constant [10 x i8] c"g_1536[i]\00", align 1
@g_1584 = internal global %struct.S0 { i32 -9 }, align 4
@.str.39 = private unnamed_addr constant [10 x i8] c"g_1584.f0\00", align 1
@g_1642 = internal global i32 2058076429, align 4
@.str.40 = private unnamed_addr constant [7 x i8] c"g_1642\00", align 1
@g_2042 = internal global i16 -10, align 2
@.str.41 = private unnamed_addr constant [7 x i8] c"g_2042\00", align 1
@g_2230 = internal global [6 x i64] zeroinitializer, align 16
@.str.42 = private unnamed_addr constant [10 x i8] c"g_2230[i]\00", align 1
@g_2298 = internal global i64 7479104175279588588, align 8
@.str.43 = private unnamed_addr constant [7 x i8] c"g_2298\00", align 1
@g_2366 = internal global [3 x i32] [i32 -144878944, i32 -144878944, i32 -144878944], align 4
@.str.44 = private unnamed_addr constant [10 x i8] c"g_2366[i]\00", align 1
@g_2418 = internal global i32 -9, align 4
@.str.45 = private unnamed_addr constant [7 x i8] c"g_2418\00", align 1
@g_2514 = internal global i8 8, align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"g_2514\00", align 1
@g_2568 = internal global [10 x [2 x i32]] [[2 x i32] [i32 1, i32 1], [2 x i32] [i32 1, i32 1], [2 x i32] [i32 1, i32 1], [2 x i32] [i32 1, i32 1], [2 x i32] [i32 1, i32 1], [2 x i32] [i32 1, i32 1], [2 x i32] [i32 1, i32 1], [2 x i32] [i32 1, i32 1], [2 x i32] [i32 1, i32 1], [2 x i32] [i32 1, i32 1]], align 16
@.str.47 = private unnamed_addr constant [13 x i8] c"g_2568[i][j]\00", align 1
@g_2628 = internal global i32 -10, align 4
@.str.48 = private unnamed_addr constant [7 x i8] c"g_2628\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@func_1.l_2538 = private unnamed_addr constant %struct.S0 { i32 -257810391 }, align 4
@func_1.l_2539 = private unnamed_addr constant [4 x [4 x i32]] [[4 x i32] [i32 166599087, i32 1729474516, i32 0, i32 1729474516], [4 x i32] [i32 1729474516, i32 -6, i32 0, i32 0], [4 x i32] [i32 166599087, i32 166599087, i32 1729474516, i32 0], [4 x i32] [i32 -9, i32 -6, i32 -9, i32 1729474516]], align 16
@func_1.l_2550 = private unnamed_addr constant [2 x [4 x [8 x i64]]] [[4 x [8 x i64]] [[8 x i64] [i64 6, i64 1, i64 0, i64 -1, i64 0, i64 1, i64 6, i64 2386674640308921085], [8 x i64] [i64 0, i64 1, i64 6, i64 2386674640308921085, i64 -3, i64 -3, i64 2386674640308921085, i64 6], [8 x i64] [i64 5, i64 5, i64 1, i64 -6, i64 -3, i64 -1, i64 0, i64 -1], [8 x i64] [i64 0, i64 6, i64 -6, i64 6, i64 0, i64 -3035095667264927863, i64 5, i64 -1]], [4 x [8 x i64]] [[8 x i64] [i64 6, i64 -3, i64 0, i64 -6, i64 -6, i64 0, i64 -3, i64 6], [8 x i64] [i64 1, i64 -3035095667264927863, i64 0, i64 -3, i64 -1, i64 0, i64 -1, i64 -3], [8 x i64] [i64 -3035095667264927863, i64 2386674640308921085, i64 -3035095667264927863, i64 6, i64 -3, i64 0, i64 -6, i64 -6], [8 x i64] [i64 -6, i64 1, i64 5, i64 5, i64 1, i64 -6, i64 -3, i64 -1]]], align 16
@func_1.l_2593 = private unnamed_addr constant %struct.S0 { i32 -9 }, align 4
@g_2157 = internal global i16** @g_311, align 8
@g_311 = internal global i16* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x [5 x [5 x i16]]]* @g_8 to i8*), i64 300) to i16*), align 8
@.str.49 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@.str.50 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

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

; <label>:91                                      ; preds = %131, %89
  %92 = load i32, i32* %i, align 4, !tbaa !1
  %93 = icmp slt i32 %92, 10
  br i1 %93, label %94, label %134

; <label>:94                                      ; preds = %91
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %95

; <label>:95                                      ; preds = %127, %94
  %96 = load i32, i32* %j, align 4, !tbaa !1
  %97 = icmp slt i32 %96, 5
  br i1 %97, label %98, label %130

; <label>:98                                      ; preds = %95
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %99

; <label>:99                                      ; preds = %123, %98
  %100 = load i32, i32* %k, align 4, !tbaa !1
  %101 = icmp slt i32 %100, 5
  br i1 %101, label %102, label %126

; <label>:102                                     ; preds = %99
  %103 = load i32, i32* %k, align 4, !tbaa !1
  %104 = sext i32 %103 to i64
  %105 = load i32, i32* %j, align 4, !tbaa !1
  %106 = sext i32 %105 to i64
  %107 = load i32, i32* %i, align 4, !tbaa !1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [10 x [5 x [5 x i16]]], [10 x [5 x [5 x i16]]]* @g_8, i32 0, i64 %108
  %110 = getelementptr inbounds [5 x [5 x i16]], [5 x [5 x i16]]* %109, i32 0, i64 %106
  %111 = getelementptr inbounds [5 x i16], [5 x i16]* %110, i32 0, i64 %104
  %112 = load i16, i16* %111, align 2, !tbaa !10
  %113 = zext i16 %112 to i64
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
  %135 = load i32, i32* @g_77, align 4, !tbaa !1
  %136 = sext i32 %135 to i64
  %137 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %136, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 %137)
  %138 = load i64, i64* @g_82, align 8, !tbaa !7
  %139 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %138, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %139)
  %140 = load i64, i64* @g_94, align 8, !tbaa !7
  %141 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %140, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 %141)
  %142 = load i64, i64* @g_95, align 8, !tbaa !7
  %143 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %142, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 %143)
  %144 = load i16, i16* @g_99, align 2, !tbaa !10
  %145 = zext i16 %144 to i64
  %146 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %145, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 %146)
  %147 = load i16, i16* @g_101, align 2, !tbaa !10
  %148 = sext i16 %147 to i64
  %149 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %148, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i32 %149)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %150

; <label>:150                                     ; preds = %189, %134
  %151 = load i32, i32* %i, align 4, !tbaa !1
  %152 = icmp slt i32 %151, 9
  br i1 %152, label %153, label %192

; <label>:153                                     ; preds = %150
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %154

; <label>:154                                     ; preds = %185, %153
  %155 = load i32, i32* %j, align 4, !tbaa !1
  %156 = icmp slt i32 %155, 3
  br i1 %156, label %157, label %188

; <label>:157                                     ; preds = %154
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %158

; <label>:158                                     ; preds = %181, %157
  %159 = load i32, i32* %k, align 4, !tbaa !1
  %160 = icmp slt i32 %159, 2
  br i1 %160, label %161, label %184

; <label>:161                                     ; preds = %158
  %162 = load i32, i32* %k, align 4, !tbaa !1
  %163 = sext i32 %162 to i64
  %164 = load i32, i32* %j, align 4, !tbaa !1
  %165 = sext i32 %164 to i64
  %166 = load i32, i32* %i, align 4, !tbaa !1
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [9 x [3 x [2 x i64]]], [9 x [3 x [2 x i64]]]* @g_102, i32 0, i64 %167
  %169 = getelementptr inbounds [3 x [2 x i64]], [3 x [2 x i64]]* %168, i32 0, i64 %165
  %170 = getelementptr inbounds [2 x i64], [2 x i64]* %169, i32 0, i64 %163
  %171 = load i64, i64* %170, align 8, !tbaa !7
  %172 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %171, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0), i32 %172)
  %173 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %180

; <label>:175                                     ; preds = %161
  %176 = load i32, i32* %i, align 4, !tbaa !1
  %177 = load i32, i32* %j, align 4, !tbaa !1
  %178 = load i32, i32* %k, align 4, !tbaa !1
  %179 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0), i32 %176, i32 %177, i32 %178)
  br label %180

; <label>:180                                     ; preds = %175, %161
  br label %181

; <label>:181                                     ; preds = %180
  %182 = load i32, i32* %k, align 4, !tbaa !1
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %k, align 4, !tbaa !1
  br label %158

; <label>:184                                     ; preds = %158
  br label %185

; <label>:185                                     ; preds = %184
  %186 = load i32, i32* %j, align 4, !tbaa !1
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %j, align 4, !tbaa !1
  br label %154

; <label>:188                                     ; preds = %154
  br label %189

; <label>:189                                     ; preds = %188
  %190 = load i32, i32* %i, align 4, !tbaa !1
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %i, align 4, !tbaa !1
  br label %150

; <label>:192                                     ; preds = %150
  %193 = load volatile i32, i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_103, i32 0, i32 0), align 4, !tbaa !12
  %194 = sext i32 %193 to i64
  %195 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %194, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i32 %195)
  %196 = load i64, i64* @g_109, align 8, !tbaa !7
  %197 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %196, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i32 %197)
  %198 = load i32, i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_156, i32 0, i32 0), align 4, !tbaa !12
  %199 = sext i32 %198 to i64
  %200 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %199, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i32 %200)
  %201 = load i32, i32* @g_168, align 4, !tbaa !1
  %202 = zext i32 %201 to i64
  %203 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %202, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i32 %203)
  %204 = load i16, i16* @g_199, align 2, !tbaa !10
  %205 = zext i16 %204 to i64
  %206 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %205, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 %206)
  %207 = load i32, i32* @g_327, align 4, !tbaa !1
  %208 = zext i32 %207 to i64
  %209 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %208, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 %209)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %210

; <label>:210                                     ; preds = %226, %192
  %211 = load i32, i32* %i, align 4, !tbaa !1
  %212 = icmp slt i32 %211, 8
  br i1 %212, label %213, label %229

; <label>:213                                     ; preds = %210
  %214 = load i32, i32* %i, align 4, !tbaa !1
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds [8 x i8], [8 x i8]* @g_368, i32 0, i64 %215
  %217 = load i8, i8* %216, align 1, !tbaa !9
  %218 = zext i8 %217 to i64
  %219 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %218, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i32 %219)
  %220 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %225

; <label>:222                                     ; preds = %213
  %223 = load i32, i32* %i, align 4, !tbaa !1
  %224 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), i32 %223)
  br label %225

; <label>:225                                     ; preds = %222, %213
  br label %226

; <label>:226                                     ; preds = %225
  %227 = load i32, i32* %i, align 4, !tbaa !1
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %i, align 4, !tbaa !1
  br label %210

; <label>:229                                     ; preds = %210
  %230 = load i8, i8* @g_426, align 1, !tbaa !9
  %231 = sext i8 %230 to i64
  %232 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %231, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i32 %232)
  %233 = load i32, i32* @g_480, align 4, !tbaa !1
  %234 = sext i32 %233 to i64
  %235 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %234, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i32 %235)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %236

; <label>:236                                     ; preds = %251, %229
  %237 = load i32, i32* %i, align 4, !tbaa !1
  %238 = icmp slt i32 %237, 7
  br i1 %238, label %239, label %254

; <label>:239                                     ; preds = %236
  %240 = load i32, i32* %i, align 4, !tbaa !1
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds [7 x i64], [7 x i64]* @g_510, i32 0, i64 %241
  %243 = load i64, i64* %242, align 8, !tbaa !7
  %244 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %243, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i32 %244)
  %245 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %250

; <label>:247                                     ; preds = %239
  %248 = load i32, i32* %i, align 4, !tbaa !1
  %249 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), i32 %248)
  br label %250

; <label>:250                                     ; preds = %247, %239
  br label %251

; <label>:251                                     ; preds = %250
  %252 = load i32, i32* %i, align 4, !tbaa !1
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %i, align 4, !tbaa !1
  br label %236

; <label>:254                                     ; preds = %236
  %255 = load i8, i8* @g_572, align 1, !tbaa !9
  %256 = sext i8 %255 to i64
  %257 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %256, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i32 %257)
  %258 = load i8, i8* @g_610, align 1, !tbaa !9
  %259 = zext i8 %258 to i64
  %260 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %259, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i32 %260)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %261

; <label>:261                                     ; preds = %289, %254
  %262 = load i32, i32* %i, align 4, !tbaa !1
  %263 = icmp slt i32 %262, 2
  br i1 %263, label %264, label %292

; <label>:264                                     ; preds = %261
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %265

; <label>:265                                     ; preds = %285, %264
  %266 = load i32, i32* %j, align 4, !tbaa !1
  %267 = icmp slt i32 %266, 6
  br i1 %267, label %268, label %288

; <label>:268                                     ; preds = %265
  %269 = load i32, i32* %j, align 4, !tbaa !1
  %270 = sext i32 %269 to i64
  %271 = load i32, i32* %i, align 4, !tbaa !1
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds [2 x [6 x i8]], [2 x [6 x i8]]* @g_613, i32 0, i64 %272
  %274 = getelementptr inbounds [6 x i8], [6 x i8]* %273, i32 0, i64 %270
  %275 = load i8, i8* %274, align 1, !tbaa !9
  %276 = zext i8 %275 to i64
  %277 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %276, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i32 0, i32 0), i32 %277)
  %278 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %284

; <label>:280                                     ; preds = %268
  %281 = load i32, i32* %i, align 4, !tbaa !1
  %282 = load i32, i32* %j, align 4, !tbaa !1
  %283 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i32 0, i32 0), i32 %281, i32 %282)
  br label %284

; <label>:284                                     ; preds = %280, %268
  br label %285

; <label>:285                                     ; preds = %284
  %286 = load i32, i32* %j, align 4, !tbaa !1
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %j, align 4, !tbaa !1
  br label %265

; <label>:288                                     ; preds = %265
  br label %289

; <label>:289                                     ; preds = %288
  %290 = load i32, i32* %i, align 4, !tbaa !1
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %i, align 4, !tbaa !1
  br label %261

; <label>:292                                     ; preds = %261
  %293 = load volatile i64, i64* @g_690, align 8, !tbaa !7
  %294 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %293, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i32 %294)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %295

; <label>:295                                     ; preds = %311, %292
  %296 = load i32, i32* %i, align 4, !tbaa !1
  %297 = icmp slt i32 %296, 2
  br i1 %297, label %298, label %314

; <label>:298                                     ; preds = %295
  %299 = load i32, i32* %i, align 4, !tbaa !1
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds [2 x i16], [2 x i16]* @g_708, i32 0, i64 %300
  %302 = load i16, i16* %301, align 2, !tbaa !10
  %303 = sext i16 %302 to i64
  %304 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %303, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), i32 %304)
  %305 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %310

; <label>:307                                     ; preds = %298
  %308 = load i32, i32* %i, align 4, !tbaa !1
  %309 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), i32 %308)
  br label %310

; <label>:310                                     ; preds = %307, %298
  br label %311

; <label>:311                                     ; preds = %310
  %312 = load i32, i32* %i, align 4, !tbaa !1
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %i, align 4, !tbaa !1
  br label %295

; <label>:314                                     ; preds = %295
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %315

; <label>:315                                     ; preds = %355, %314
  %316 = load i32, i32* %i, align 4, !tbaa !1
  %317 = icmp slt i32 %316, 2
  br i1 %317, label %318, label %358

; <label>:318                                     ; preds = %315
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %319

; <label>:319                                     ; preds = %351, %318
  %320 = load i32, i32* %j, align 4, !tbaa !1
  %321 = icmp slt i32 %320, 6
  br i1 %321, label %322, label %354

; <label>:322                                     ; preds = %319
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %323

; <label>:323                                     ; preds = %347, %322
  %324 = load i32, i32* %k, align 4, !tbaa !1
  %325 = icmp slt i32 %324, 1
  br i1 %325, label %326, label %350

; <label>:326                                     ; preds = %323
  %327 = load i32, i32* %k, align 4, !tbaa !1
  %328 = sext i32 %327 to i64
  %329 = load i32, i32* %j, align 4, !tbaa !1
  %330 = sext i32 %329 to i64
  %331 = load i32, i32* %i, align 4, !tbaa !1
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds [2 x [6 x [1 x i32]]], [2 x [6 x [1 x i32]]]* @g_756, i32 0, i64 %332
  %334 = getelementptr inbounds [6 x [1 x i32]], [6 x [1 x i32]]* %333, i32 0, i64 %330
  %335 = getelementptr inbounds [1 x i32], [1 x i32]* %334, i32 0, i64 %328
  %336 = load i32, i32* %335, align 4, !tbaa !1
  %337 = zext i32 %336 to i64
  %338 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %337, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i32 0, i32 0), i32 %338)
  %339 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %346

; <label>:341                                     ; preds = %326
  %342 = load i32, i32* %i, align 4, !tbaa !1
  %343 = load i32, i32* %j, align 4, !tbaa !1
  %344 = load i32, i32* %k, align 4, !tbaa !1
  %345 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0), i32 %342, i32 %343, i32 %344)
  br label %346

; <label>:346                                     ; preds = %341, %326
  br label %347

; <label>:347                                     ; preds = %346
  %348 = load i32, i32* %k, align 4, !tbaa !1
  %349 = add nsw i32 %348, 1
  store i32 %349, i32* %k, align 4, !tbaa !1
  br label %323

; <label>:350                                     ; preds = %323
  br label %351

; <label>:351                                     ; preds = %350
  %352 = load i32, i32* %j, align 4, !tbaa !1
  %353 = add nsw i32 %352, 1
  store i32 %353, i32* %j, align 4, !tbaa !1
  br label %319

; <label>:354                                     ; preds = %319
  br label %355

; <label>:355                                     ; preds = %354
  %356 = load i32, i32* %i, align 4, !tbaa !1
  %357 = add nsw i32 %356, 1
  store i32 %357, i32* %i, align 4, !tbaa !1
  br label %315

; <label>:358                                     ; preds = %315
  %359 = load i32, i32* @g_781, align 4, !tbaa !1
  %360 = zext i32 %359 to i64
  %361 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %360, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i32 %361)
  %362 = load i32, i32* @g_903, align 4, !tbaa !1
  %363 = sext i32 %362 to i64
  %364 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %363, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i32 %364)
  %365 = load i32, i32* @g_1140, align 4, !tbaa !1
  %366 = zext i32 %365 to i64
  %367 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %366, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0), i32 %367)
  %368 = load i64, i64* @g_1249, align 8, !tbaa !7
  %369 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %368, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), i32 %369)
  %370 = load i32, i32* @g_1278, align 4, !tbaa !1
  %371 = sext i32 %370 to i64
  %372 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %371, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), i32 %372)
  %373 = load i64, i64* @g_1279, align 8, !tbaa !7
  %374 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %373, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), i32 %374)
  %375 = load i64, i64* @g_1361, align 8, !tbaa !7
  %376 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %375, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0), i32 %376)
  %377 = load i16, i16* @g_1423, align 2, !tbaa !10
  %378 = zext i16 %377 to i64
  %379 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %378, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0), i32 %379)
  %380 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), i32 %380)
  %381 = load i8, i8* @g_1534, align 1, !tbaa !9
  %382 = sext i8 %381 to i64
  %383 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %382, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), i32 %383)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %384

; <label>:384                                     ; preds = %400, %358
  %385 = load i32, i32* %i, align 4, !tbaa !1
  %386 = icmp slt i32 %385, 1
  br i1 %386, label %387, label %403

; <label>:387                                     ; preds = %384
  %388 = load i32, i32* %i, align 4, !tbaa !1
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds [1 x i32], [1 x i32]* @g_1536, i32 0, i64 %389
  %391 = load i32, i32* %390, align 4, !tbaa !1
  %392 = sext i32 %391 to i64
  %393 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %392, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i32 0, i32 0), i32 %393)
  %394 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %399

; <label>:396                                     ; preds = %387
  %397 = load i32, i32* %i, align 4, !tbaa !1
  %398 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), i32 %397)
  br label %399

; <label>:399                                     ; preds = %396, %387
  br label %400

; <label>:400                                     ; preds = %399
  %401 = load i32, i32* %i, align 4, !tbaa !1
  %402 = add nsw i32 %401, 1
  store i32 %402, i32* %i, align 4, !tbaa !1
  br label %384

; <label>:403                                     ; preds = %384
  %404 = load i32, i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_1584, i32 0, i32 0), align 4, !tbaa !12
  %405 = sext i32 %404 to i64
  %406 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %405, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0), i32 %406)
  %407 = load i32, i32* @g_1642, align 4, !tbaa !1
  %408 = sext i32 %407 to i64
  %409 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %408, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0), i32 %409)
  %410 = load i16, i16* @g_2042, align 2, !tbaa !10
  %411 = zext i16 %410 to i64
  %412 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %411, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0), i32 %412)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %413

; <label>:413                                     ; preds = %428, %403
  %414 = load i32, i32* %i, align 4, !tbaa !1
  %415 = icmp slt i32 %414, 6
  br i1 %415, label %416, label %431

; <label>:416                                     ; preds = %413
  %417 = load i32, i32* %i, align 4, !tbaa !1
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds [6 x i64], [6 x i64]* @g_2230, i32 0, i64 %418
  %420 = load volatile i64, i64* %419, align 8, !tbaa !7
  %421 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %420, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i32 0, i32 0), i32 %421)
  %422 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %424, label %427

; <label>:424                                     ; preds = %416
  %425 = load i32, i32* %i, align 4, !tbaa !1
  %426 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), i32 %425)
  br label %427

; <label>:427                                     ; preds = %424, %416
  br label %428

; <label>:428                                     ; preds = %427
  %429 = load i32, i32* %i, align 4, !tbaa !1
  %430 = add nsw i32 %429, 1
  store i32 %430, i32* %i, align 4, !tbaa !1
  br label %413

; <label>:431                                     ; preds = %413
  %432 = load i64, i64* @g_2298, align 8, !tbaa !7
  %433 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %432, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), i32 %433)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %434

; <label>:434                                     ; preds = %450, %431
  %435 = load i32, i32* %i, align 4, !tbaa !1
  %436 = icmp slt i32 %435, 3
  br i1 %436, label %437, label %453

; <label>:437                                     ; preds = %434
  %438 = load i32, i32* %i, align 4, !tbaa !1
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds [3 x i32], [3 x i32]* @g_2366, i32 0, i64 %439
  %441 = load i32, i32* %440, align 4, !tbaa !1
  %442 = sext i32 %441 to i64
  %443 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %442, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i32 0, i32 0), i32 %443)
  %444 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %445 = icmp ne i32 %444, 0
  br i1 %445, label %446, label %449

; <label>:446                                     ; preds = %437
  %447 = load i32, i32* %i, align 4, !tbaa !1
  %448 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), i32 %447)
  br label %449

; <label>:449                                     ; preds = %446, %437
  br label %450

; <label>:450                                     ; preds = %449
  %451 = load i32, i32* %i, align 4, !tbaa !1
  %452 = add nsw i32 %451, 1
  store i32 %452, i32* %i, align 4, !tbaa !1
  br label %434

; <label>:453                                     ; preds = %434
  %454 = load volatile i32, i32* @g_2418, align 4, !tbaa !1
  %455 = sext i32 %454 to i64
  %456 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %455, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), i32 %456)
  %457 = load i8, i8* @g_2514, align 1, !tbaa !9
  %458 = zext i8 %457 to i64
  %459 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %458, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0), i32 %459)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %460

; <label>:460                                     ; preds = %488, %453
  %461 = load i32, i32* %i, align 4, !tbaa !1
  %462 = icmp slt i32 %461, 10
  br i1 %462, label %463, label %491

; <label>:463                                     ; preds = %460
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %464

; <label>:464                                     ; preds = %484, %463
  %465 = load i32, i32* %j, align 4, !tbaa !1
  %466 = icmp slt i32 %465, 2
  br i1 %466, label %467, label %487

; <label>:467                                     ; preds = %464
  %468 = load i32, i32* %j, align 4, !tbaa !1
  %469 = sext i32 %468 to i64
  %470 = load i32, i32* %i, align 4, !tbaa !1
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds [10 x [2 x i32]], [10 x [2 x i32]]* @g_2568, i32 0, i64 %471
  %473 = getelementptr inbounds [2 x i32], [2 x i32]* %472, i32 0, i64 %469
  %474 = load i32, i32* %473, align 4, !tbaa !1
  %475 = sext i32 %474 to i64
  %476 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %475, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.47, i32 0, i32 0), i32 %476)
  %477 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %478 = icmp ne i32 %477, 0
  br i1 %478, label %479, label %483

; <label>:479                                     ; preds = %467
  %480 = load i32, i32* %i, align 4, !tbaa !1
  %481 = load i32, i32* %j, align 4, !tbaa !1
  %482 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i32 0, i32 0), i32 %480, i32 %481)
  br label %483

; <label>:483                                     ; preds = %479, %467
  br label %484

; <label>:484                                     ; preds = %483
  %485 = load i32, i32* %j, align 4, !tbaa !1
  %486 = add nsw i32 %485, 1
  store i32 %486, i32* %j, align 4, !tbaa !1
  br label %464

; <label>:487                                     ; preds = %464
  br label %488

; <label>:488                                     ; preds = %487
  %489 = load i32, i32* %i, align 4, !tbaa !1
  %490 = add nsw i32 %489, 1
  store i32 %490, i32* %i, align 4, !tbaa !1
  br label %460

; <label>:491                                     ; preds = %460
  %492 = load volatile i32, i32* @g_2628, align 4, !tbaa !1
  %493 = zext i32 %492 to i64
  %494 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %493, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0), i32 %494)
  %495 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %496 = zext i32 %495 to i64
  %497 = xor i64 %496, 4294967295
  %498 = trunc i64 %497 to i32
  %499 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %498, i32 %499)
  %500 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %500) #1
  %501 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %501) #1
  %502 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %502) #1
  %503 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %503) #1
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
  %l_9 = alloca i16, align 2
  %l_1138 = alloca i8, align 1
  %l_1139 = alloca i32*, align 8
  %l_2538 = alloca %struct.S0, align 4
  %l_2539 = alloca [4 x [4 x i32]], align 16
  %l_2550 = alloca [2 x [4 x [8 x i64]]], align 16
  %l_2553 = alloca i32***, align 8
  %l_2552 = alloca [2 x [1 x i32****]], align 16
  %l_2593 = alloca %struct.S0, align 4
  %l_2625 = alloca i32, align 4
  %l_2646 = alloca [2 x i64], align 16
  %l_2654 = alloca [1 x %struct.S0**], align 8
  %l_2653 = alloca %struct.S0***, align 8
  %l_2660 = alloca i16***, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %1 = bitcast i16* %l_9 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %1) #1
  store i16 -18669, i16* %l_9, align 2, !tbaa !10
  call void @llvm.lifetime.start(i64 1, i8* %l_1138) #1
  store i8 -49, i8* %l_1138, align 1, !tbaa !9
  %2 = bitcast i32** %l_1139 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store i32* @g_1140, i32** %l_1139, align 8, !tbaa !5
  %3 = bitcast %struct.S0* %l_2538 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast %struct.S0* %l_2538 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* bitcast (%struct.S0* @func_1.l_2538 to i8*), i64 4, i32 4, i1 false)
  %5 = bitcast [4 x [4 x i32]]* %l_2539 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %5) #1
  %6 = bitcast [4 x [4 x i32]]* %l_2539 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* bitcast ([4 x [4 x i32]]* @func_1.l_2539 to i8*), i64 64, i32 16, i1 false)
  %7 = bitcast [2 x [4 x [8 x i64]]]* %l_2550 to i8*
  call void @llvm.lifetime.start(i64 512, i8* %7) #1
  %8 = bitcast [2 x [4 x [8 x i64]]]* %l_2550 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* bitcast ([2 x [4 x [8 x i64]]]* @func_1.l_2550 to i8*), i64 512, i32 16, i1 false)
  %9 = bitcast i32**** %l_2553 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store i32*** null, i32**** %l_2553, align 8, !tbaa !5
  %10 = bitcast [2 x [1 x i32****]]* %l_2552 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %10) #1
  %11 = bitcast %struct.S0* %l_2593 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast %struct.S0* %l_2593 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* bitcast (%struct.S0* @func_1.l_2593 to i8*), i64 4, i32 4, i1 false)
  %13 = bitcast i32* %l_2625 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  store i32 1, i32* %l_2625, align 4, !tbaa !1
  %14 = bitcast [2 x i64]* %l_2646 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %14) #1
  %15 = bitcast [1 x %struct.S0**]* %l_2654 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = bitcast %struct.S0**** %l_2653 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = getelementptr inbounds [1 x %struct.S0**], [1 x %struct.S0**]* %l_2654, i32 0, i64 0
  store %struct.S0*** %17, %struct.S0**** %l_2653, align 8, !tbaa !5
  %18 = bitcast i16**** %l_2660 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  store i16*** @g_2157, i16**** %l_2660, align 8, !tbaa !5
  %19 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %22

; <label>:22                                      ; preds = %40, %0
  %23 = load i32, i32* %i, align 4, !tbaa !1
  %24 = icmp slt i32 %23, 2
  br i1 %24, label %25, label %43

; <label>:25                                      ; preds = %22
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %26

; <label>:26                                      ; preds = %36, %25
  %27 = load i32, i32* %j, align 4, !tbaa !1
  %28 = icmp slt i32 %27, 1
  br i1 %28, label %29, label %39

; <label>:29                                      ; preds = %26
  %30 = load i32, i32* %j, align 4, !tbaa !1
  %31 = sext i32 %30 to i64
  %32 = load i32, i32* %i, align 4, !tbaa !1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [2 x [1 x i32****]], [2 x [1 x i32****]]* %l_2552, i32 0, i64 %33
  %35 = getelementptr inbounds [1 x i32****], [1 x i32****]* %34, i32 0, i64 %31
  store i32**** %l_2553, i32***** %35, align 8, !tbaa !5
  br label %36

; <label>:36                                      ; preds = %29
  %37 = load i32, i32* %j, align 4, !tbaa !1
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %j, align 4, !tbaa !1
  br label %26

; <label>:39                                      ; preds = %26
  br label %40

; <label>:40                                      ; preds = %39
  %41 = load i32, i32* %i, align 4, !tbaa !1
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %i, align 4, !tbaa !1
  br label %22

; <label>:43                                      ; preds = %22
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %44

; <label>:44                                      ; preds = %51, %43
  %45 = load i32, i32* %i, align 4, !tbaa !1
  %46 = icmp slt i32 %45, 2
  br i1 %46, label %47, label %54

; <label>:47                                      ; preds = %44
  %48 = load i32, i32* %i, align 4, !tbaa !1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [2 x i64], [2 x i64]* %l_2646, i32 0, i64 %49
  store i64 -4250420486982082591, i64* %50, align 8, !tbaa !7
  br label %51

; <label>:51                                      ; preds = %47
  %52 = load i32, i32* %i, align 4, !tbaa !1
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %i, align 4, !tbaa !1
  br label %44

; <label>:54                                      ; preds = %44
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %55

; <label>:55                                      ; preds = %62, %54
  %56 = load i32, i32* %i, align 4, !tbaa !1
  %57 = icmp slt i32 %56, 1
  br i1 %57, label %58, label %65

; <label>:58                                      ; preds = %55
  %59 = load i32, i32* %i, align 4, !tbaa !1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [1 x %struct.S0**], [1 x %struct.S0**]* %l_2654, i32 0, i64 %60
  store %struct.S0** null, %struct.S0*** %61, align 8, !tbaa !5
  br label %62

; <label>:62                                      ; preds = %58
  %63 = load i32, i32* %i, align 4, !tbaa !1
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %i, align 4, !tbaa !1
  br label %55

; <label>:65                                      ; preds = %55
  %66 = load i8, i8* @g_610, align 1, !tbaa !9
  %67 = zext i8 %66 to i32
  %68 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #1
  %69 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #1
  %70 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #1
  %71 = bitcast i16**** %l_2660 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #1
  %72 = bitcast %struct.S0**** %l_2653 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #1
  %73 = bitcast [1 x %struct.S0**]* %l_2654 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #1
  %74 = bitcast [2 x i64]* %l_2646 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %74) #1
  %75 = bitcast i32* %l_2625 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #1
  %76 = bitcast %struct.S0* %l_2593 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #1
  %77 = bitcast [2 x [1 x i32****]]* %l_2552 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %77) #1
  %78 = bitcast i32**** %l_2553 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #1
  %79 = bitcast [2 x [4 x [8 x i64]]]* %l_2550 to i8*
  call void @llvm.lifetime.end(i64 512, i8* %79) #1
  %80 = bitcast [4 x [4 x i32]]* %l_2539 to i8*
  call void @llvm.lifetime.end(i64 64, i8* %80) #1
  %81 = bitcast %struct.S0* %l_2538 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %81) #1
  %82 = bitcast i32** %l_1139 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %82) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1138) #1
  %83 = bitcast i16* %l_9 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %83) #1
  ret i32 %67
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
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.49, i32 0, i32 0), i8* %8, i64 %11)
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
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.50, i32 0, i32 0), i32 %3)
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
!12 = !{!13, !2, i64 0}
!13 = !{!"S0", !2, i64 0}
