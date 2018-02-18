; ModuleID = '00230.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_2 = internal global i32 1, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"g_2\00", align 1
@g_3 = internal global [7 x [4 x [8 x i32]]] [[4 x [8 x i32]] [[8 x i32] [i32 1346880721, i32 -8, i32 -674731593, i32 -1285613199, i32 1113752087, i32 8, i32 -86323843, i32 -6], [8 x i32] [i32 -2131836263, i32 -46534821, i32 1346880721, i32 -193303058, i32 -1028660663, i32 -397896068, i32 -8, i32 -1285613199], [8 x i32] [i32 -1, i32 -1, i32 -7, i32 1113752087, i32 -1, i32 -1, i32 0, i32 -378451454], [8 x i32] [i32 -1028660663, i32 1987308819, i32 -674731593, i32 -1191985465, i32 -8, i32 -1982430078, i32 0, i32 -2131836263]], [4 x [8 x i32]] [[8 x i32] [i32 2135275220, i32 -6, i32 8, i32 -6, i32 8, i32 -6, i32 2135275220, i32 -1028660663], [8 x i32] [i32 -1, i32 -2131836263, i32 4, i32 1113752087, i32 -193303058, i32 4, i32 -1422067693, i32 8], [8 x i32] [i32 1608505988, i32 0, i32 8, i32 -7, i32 1346880721, i32 8, i32 -1, i32 -86323843], [8 x i32] [i32 -46534821, i32 1608505988, i32 -1, i32 8, i32 1991802127, i32 -1, i32 1, i32 7]], [4 x [8 x i32]] [[8 x i32] [i32 -1191985465, i32 -1285613199, i32 -193303058, i32 0, i32 8, i32 -1, i32 -1982430078, i32 -1285613199], [8 x i32] [i32 -1, i32 -86323843, i32 7, i32 4, i32 -46534821, i32 8, i32 1991802127, i32 -1982430078], [8 x i32] [i32 -1285613199, i32 -1, i32 -7, i32 -674731593, i32 -1, i32 -1, i32 -674731593, i32 -7], [8 x i32] [i32 -674731593, i32 -674731593, i32 1765932186, i32 -1967158492, i32 -6, i32 9, i32 -1982430078, i32 -1191985465]], [4 x [8 x i32]] [[8 x i32] [i32 102682160, i32 -397896068, i32 0, i32 1377808319, i32 1, i32 -7, i32 41413958, i32 -1191985465], [8 x i32] [i32 -397896068, i32 7, i32 -1, i32 -1967158492, i32 2079706451, i32 -1, i32 0, i32 -7], [8 x i32] [i32 -1028660663, i32 -46534821, i32 -1, i32 -674731593, i32 -1982430078, i32 1987308819, i32 -1422067693, i32 -1982430078], [8 x i32] [i32 4, i32 1, i32 41413958, i32 4, i32 -1422067693, i32 1991802127, i32 1377808319, i32 -1285613199]], [4 x [8 x i32]] [[8 x i32] [i32 -397896068, i32 -59216774, i32 1991802127, i32 0, i32 41413958, i32 7, i32 -1285613199, i32 7], [8 x i32] [i32 -6, i32 8, i32 -6, i32 8, i32 -6, i32 2135275220, i32 -1028660663, i32 -86323843], [8 x i32] [i32 1991802127, i32 1, i32 102682160, i32 -7, i32 1695754486, i32 2079706451, i32 -59216774, i32 8], [8 x i32] [i32 -1285613199, i32 4, i32 102682160, i32 -6, i32 4, i32 -1, i32 -1028660663, i32 -1]], [4 x [8 x i32]] [[8 x i32] [i32 1695754486, i32 -516123340, i32 -6, i32 -86323843, i32 8, i32 1113752087, i32 -1285613199, i32 -674731593], [8 x i32] [i32 1377808319, i32 -397896068, i32 1991802127, i32 1608505988, i32 -674731593, i32 -1, i32 1377808319, i32 1695754486], [8 x i32] [i32 -46534821, i32 1991802127, i32 41413958, i32 -6, i32 -7, i32 -1, i32 -1422067693, i32 -59216774], [8 x i32] [i32 -86323843, i32 0, i32 -1, i32 1346880721, i32 1346880721, i32 -1, i32 0, i32 -86323843]], [4 x [8 x i32]] [[8 x i32] [i32 4, i32 -86323843, i32 -1, i32 -59216774, i32 -674731593, i32 -1, i32 41413958, i32 -516123340], [8 x i32] [i32 -1191985465, i32 -1, i32 0, i32 0, i32 -59216774, i32 -1, i32 -1982430078, i32 -1], [8 x i32] [i32 1695754486, i32 -86323843, i32 1765932186, i32 -1028660663, i32 -46534821, i32 -1, i32 -674731593, i32 -1982430078], [8 x i32] [i32 -1, i32 0, i32 -7, i32 1991802127, i32 1695754486, i32 -1, i32 1991802127, i32 1346880721]]], align 16
@.str.2 = private unnamed_addr constant [13 x i8] c"g_3[i][j][k]\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"index = [%d][%d][%d]\0A\00", align 1
@g_4 = internal global i32 -1951911260, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"g_4\00", align 1
@g_5 = internal global i32 2, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"g_5\00", align 1
@g_17 = internal global [5 x [4 x [8 x i32]]] [[4 x [8 x i32]] [[8 x i32] [i32 -922224729, i32 133206890, i32 -922224729, i32 -9, i32 -2, i32 -1, i32 -1, i32 -1], [8 x i32] [i32 -1, i32 -9, i32 -3, i32 -3, i32 -9, i32 -922224729, i32 -4, i32 -9], [8 x i32] [i32 -922224729, i32 -1, i32 133206890, i32 -3, i32 -4, i32 -3, i32 133206890, i32 -1], [8 x i32] [i32 -9, i32 133206890, i32 -1, i32 -3, i32 -9, i32 862969344, i32 862969344, i32 -9]], [4 x [8 x i32]] [[8 x i32] [i32 -1733820090, i32 -9, i32 -9, i32 -1733820090, i32 -9, i32 -1, i32 862969344, i32 -922224729], [8 x i32] [i32 133206890, i32 -1733820090, i32 -1, i32 862969344, i32 -1, i32 -1733820090, i32 133206890, i32 -4], [8 x i32] [i32 -1, i32 -1733820090, i32 133206890, i32 -4, i32 -1, i32 -1, i32 -4, i32 133206890], [8 x i32] [i32 -9, i32 -9, i32 -1733820090, i32 -9, i32 -1, i32 862969344, i32 -922224729, i32 862969344]], [4 x [8 x i32]] [[8 x i32] [i32 -1, i32 133206890, i32 -9, i32 133206890, i32 -1, i32 -3, i32 -9, i32 862969344], [8 x i32] [i32 133206890, i32 -1, i32 -922224729, i32 -9, i32 -9, i32 -922224729, i32 -1, i32 133206890], [8 x i32] [i32 -1733820090, i32 -3, i32 -922224729, i32 -4, i32 -9, i32 -1, i32 -9, i32 -4], [8 x i32] [i32 -9, i32 -2, i32 -9, i32 862969344, i32 -4, i32 -1, i32 -922224729, i32 -922224729]], [4 x [8 x i32]] [[8 x i32] [i32 -922224729, i32 -3, i32 -1733820090, i32 -1733820090, i32 -3, i32 -922224729, i32 -4, i32 -9], [8 x i32] [i32 -922224729, i32 -1, i32 133206890, i32 -3, i32 -4, i32 -3, i32 133206890, i32 -1], [8 x i32] [i32 -9, i32 133206890, i32 -1, i32 -3, i32 -9, i32 862969344, i32 862969344, i32 -9], [8 x i32] [i32 -1733820090, i32 -9, i32 -9, i32 -1733820090, i32 -9, i32 -1, i32 862969344, i32 -922224729]], [4 x [8 x i32]] [[8 x i32] [i32 133206890, i32 -1733820090, i32 -1, i32 862969344, i32 -1, i32 -1733820090, i32 133206890, i32 -4], [8 x i32] [i32 -1, i32 -1733820090, i32 133206890, i32 -4, i32 -1, i32 -1, i32 -4, i32 133206890], [8 x i32] [i32 -9, i32 -9, i32 -1733820090, i32 -9, i32 -1, i32 862969344, i32 -922224729, i32 862969344], [8 x i32] [i32 -1, i32 133206890, i32 -9, i32 133206890, i32 -1, i32 -3, i32 -9, i32 862969344]]], align 16
@.str.6 = private unnamed_addr constant [14 x i8] c"g_17[i][j][k]\00", align 1
@g_97 = internal global i8 8, align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"g_97\00", align 1
@g_101 = internal global i16 7670, align 2
@.str.8 = private unnamed_addr constant [6 x i8] c"g_101\00", align 1
@g_107 = internal global [10 x i32] [i32 164534429, i32 164534429, i32 164534429, i32 164534429, i32 164534429, i32 164534429, i32 164534429, i32 164534429, i32 164534429, i32 164534429], align 16
@.str.9 = private unnamed_addr constant [9 x i8] c"g_107[i]\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_129 = internal global i8 -29, align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"g_129\00", align 1
@g_149 = internal global i32 570083078, align 4
@.str.12 = private unnamed_addr constant [6 x i8] c"g_149\00", align 1
@g_153 = internal global [7 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], align 16
@.str.13 = private unnamed_addr constant [9 x i8] c"g_153[i]\00", align 1
@g_209 = internal global i16 -26270, align 2
@.str.14 = private unnamed_addr constant [6 x i8] c"g_209\00", align 1
@g_215 = internal global i64 -611823849914534088, align 8
@.str.15 = private unnamed_addr constant [6 x i8] c"g_215\00", align 1
@g_222 = internal global i32 -1906686551, align 4
@.str.16 = private unnamed_addr constant [6 x i8] c"g_222\00", align 1
@g_235 = internal global i16 795, align 2
@.str.17 = private unnamed_addr constant [6 x i8] c"g_235\00", align 1
@g_269 = internal global i16 -28830, align 2
@.str.18 = private unnamed_addr constant [6 x i8] c"g_269\00", align 1
@g_272 = internal global i16 2, align 2
@.str.19 = private unnamed_addr constant [6 x i8] c"g_272\00", align 1
@g_292 = internal global i32 -6, align 4
@.str.20 = private unnamed_addr constant [6 x i8] c"g_292\00", align 1
@g_340 = internal global i32 -846927666, align 4
@.str.21 = private unnamed_addr constant [6 x i8] c"g_340\00", align 1
@g_356 = internal global i16 7, align 2
@.str.22 = private unnamed_addr constant [6 x i8] c"g_356\00", align 1
@g_452 = internal global i64 -1, align 8
@.str.23 = private unnamed_addr constant [6 x i8] c"g_452\00", align 1
@g_453 = internal global i64 -4, align 8
@.str.24 = private unnamed_addr constant [6 x i8] c"g_453\00", align 1
@g_454 = internal global i64 -2782059278431097243, align 8
@.str.25 = private unnamed_addr constant [6 x i8] c"g_454\00", align 1
@g_455 = internal global i64 -2, align 8
@.str.26 = private unnamed_addr constant [6 x i8] c"g_455\00", align 1
@g_457 = internal global i64 1300569043119796838, align 8
@.str.27 = private unnamed_addr constant [6 x i8] c"g_457\00", align 1
@g_463 = internal global i32 -1, align 4
@.str.28 = private unnamed_addr constant [6 x i8] c"g_463\00", align 1
@g_547 = internal global i32 0, align 4
@.str.29 = private unnamed_addr constant [6 x i8] c"g_547\00", align 1
@g_585 = internal global i8 -107, align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"g_585\00", align 1
@g_686 = internal global i16 11436, align 2
@.str.31 = private unnamed_addr constant [6 x i8] c"g_686\00", align 1
@g_697 = internal global [8 x i16] [i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5], align 16
@.str.32 = private unnamed_addr constant [9 x i8] c"g_697[i]\00", align 1
@g_765 = internal global i32 -1858890042, align 4
@.str.33 = private unnamed_addr constant [6 x i8] c"g_765\00", align 1
@g_954 = internal global i16 1, align 2
@.str.34 = private unnamed_addr constant [6 x i8] c"g_954\00", align 1
@g_956 = internal global i16 -8, align 2
@.str.35 = private unnamed_addr constant [6 x i8] c"g_956\00", align 1
@g_1102 = internal global i64 0, align 8
@.str.36 = private unnamed_addr constant [7 x i8] c"g_1102\00", align 1
@g_1354 = internal global [7 x i64] [i64 1970842660457673642, i64 1970842660457673642, i64 1970842660457673642, i64 1970842660457673642, i64 1970842660457673642, i64 1970842660457673642, i64 1970842660457673642], align 16
@.str.37 = private unnamed_addr constant [10 x i8] c"g_1354[i]\00", align 1
@g_1357 = internal global i32 -5, align 4
@.str.38 = private unnamed_addr constant [7 x i8] c"g_1357\00", align 1
@g_1429 = internal global i32 1, align 4
@.str.39 = private unnamed_addr constant [7 x i8] c"g_1429\00", align 1
@g_1481 = internal global i16 14978, align 2
@.str.40 = private unnamed_addr constant [7 x i8] c"g_1481\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"g_1675\00", align 1
@g_1701 = internal global i8 99, align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"g_1701\00", align 1
@g_1863 = internal global [4 x i32] [i32 382616297, i32 382616297, i32 382616297, i32 382616297], align 16
@.str.43 = private unnamed_addr constant [10 x i8] c"g_1863[i]\00", align 1
@g_1956 = internal global i32 -1, align 4
@.str.44 = private unnamed_addr constant [7 x i8] c"g_1956\00", align 1
@g_2061 = internal global i64 -9, align 8
@.str.45 = private unnamed_addr constant [7 x i8] c"g_2061\00", align 1
@g_2083 = internal global i32 1, align 4
@.str.46 = private unnamed_addr constant [7 x i8] c"g_2083\00", align 1
@g_2099 = internal global i32 -340054881, align 4
@.str.47 = private unnamed_addr constant [7 x i8] c"g_2099\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@func_1.l_2094 = private unnamed_addr constant [4 x [3 x [7 x i32*]]] [[3 x [7 x i32*]] [[7 x i32*] [i32* @g_222, i32* null, i32* @g_222, i32* @g_222, i32* @g_222, i32* @g_547, i32* @g_222], [7 x i32*] [i32* @g_222, i32* @g_547, i32* @g_547, i32* @g_222, i32* @g_222, i32* @g_547, i32* @g_547], [7 x i32*] [i32* @g_222, i32* @g_547, i32* @g_222, i32* @g_222, i32* @g_222, i32* @g_222, i32* @g_547]], [3 x [7 x i32*]] [[7 x i32*] [i32* @g_222, i32* @g_222, i32* @g_547, i32* @g_547, i32* @g_547, i32* @g_222, i32* @g_222], [7 x i32*] [i32* @g_222, i32* @g_547, i32* @g_222, i32* @g_222, i32* @g_222, i32* null, i32* @g_222], [7 x i32*] [i32* null, i32* @g_222, i32* @g_222, i32* @g_222, i32* @g_547, i32* @g_222, i32* @g_547]], [3 x [7 x i32*]] [[7 x i32*] [i32* @g_222, i32* @g_222, i32* @g_222, i32* @g_222, i32* @g_222, i32* @g_222, i32* @g_547], [7 x i32*] [i32* null, i32* @g_222, i32* @g_547, i32* @g_547, i32* @g_222, i32* @g_547, i32* @g_547], [7 x i32*] [i32* @g_222, i32* @g_547, i32* null, i32* @g_547, i32* @g_547, i32* @g_547, i32* @g_547]], [3 x [7 x i32*]] [[7 x i32*] [i32* null, i32* @g_222, i32* @g_547, i32* @g_222, i32* null, i32* @g_222, i32* null], [7 x i32*] [i32* @g_222, i32* @g_222, i32* @g_222, i32* @g_547, i32* @g_222, i32* @g_222, i32* @g_222], [7 x i32*] [i32* @g_222, i32* @g_547, i32* @g_547, i32* @g_222, i32* null, i32* @g_222, i32* @g_547]]], align 16
@.str.48 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
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
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %94

; <label>:94                                      ; preds = %134, %89
  %95 = load i32, i32* %i, align 4, !tbaa !1
  %96 = icmp slt i32 %95, 7
  br i1 %96, label %97, label %137

; <label>:97                                      ; preds = %94
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %98

; <label>:98                                      ; preds = %130, %97
  %99 = load i32, i32* %j, align 4, !tbaa !1
  %100 = icmp slt i32 %99, 4
  br i1 %100, label %101, label %133

; <label>:101                                     ; preds = %98
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %102

; <label>:102                                     ; preds = %126, %101
  %103 = load i32, i32* %k, align 4, !tbaa !1
  %104 = icmp slt i32 %103, 8
  br i1 %104, label %105, label %129

; <label>:105                                     ; preds = %102
  %106 = load i32, i32* %k, align 4, !tbaa !1
  %107 = sext i32 %106 to i64
  %108 = load i32, i32* %j, align 4, !tbaa !1
  %109 = sext i32 %108 to i64
  %110 = load i32, i32* %i, align 4, !tbaa !1
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [7 x [4 x [8 x i32]]], [7 x [4 x [8 x i32]]]* @g_3, i32 0, i64 %111
  %113 = getelementptr inbounds [4 x [8 x i32]], [4 x [8 x i32]]* %112, i32 0, i64 %109
  %114 = getelementptr inbounds [8 x i32], [8 x i32]* %113, i32 0, i64 %107
  %115 = load volatile i32, i32* %114, align 4, !tbaa !1
  %116 = sext i32 %115 to i64
  %117 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %116, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 %117)
  %118 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %125

; <label>:120                                     ; preds = %105
  %121 = load i32, i32* %i, align 4, !tbaa !1
  %122 = load i32, i32* %j, align 4, !tbaa !1
  %123 = load i32, i32* %k, align 4, !tbaa !1
  %124 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i32 %121, i32 %122, i32 %123)
  br label %125

; <label>:125                                     ; preds = %120, %105
  br label %126

; <label>:126                                     ; preds = %125
  %127 = load i32, i32* %k, align 4, !tbaa !1
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %k, align 4, !tbaa !1
  br label %102

; <label>:129                                     ; preds = %102
  br label %130

; <label>:130                                     ; preds = %129
  %131 = load i32, i32* %j, align 4, !tbaa !1
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %j, align 4, !tbaa !1
  br label %98

; <label>:133                                     ; preds = %98
  br label %134

; <label>:134                                     ; preds = %133
  %135 = load i32, i32* %i, align 4, !tbaa !1
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %i, align 4, !tbaa !1
  br label %94

; <label>:137                                     ; preds = %94
  %138 = load volatile i32, i32* @g_4, align 4, !tbaa !1
  %139 = sext i32 %138 to i64
  %140 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %139, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i32 %140)
  %141 = load i32, i32* @g_5, align 4, !tbaa !1
  %142 = sext i32 %141 to i64
  %143 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %142, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 %143)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %144

; <label>:144                                     ; preds = %184, %137
  %145 = load i32, i32* %i, align 4, !tbaa !1
  %146 = icmp slt i32 %145, 5
  br i1 %146, label %147, label %187

; <label>:147                                     ; preds = %144
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %148

; <label>:148                                     ; preds = %180, %147
  %149 = load i32, i32* %j, align 4, !tbaa !1
  %150 = icmp slt i32 %149, 4
  br i1 %150, label %151, label %183

; <label>:151                                     ; preds = %148
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %152

; <label>:152                                     ; preds = %176, %151
  %153 = load i32, i32* %k, align 4, !tbaa !1
  %154 = icmp slt i32 %153, 8
  br i1 %154, label %155, label %179

; <label>:155                                     ; preds = %152
  %156 = load i32, i32* %k, align 4, !tbaa !1
  %157 = sext i32 %156 to i64
  %158 = load i32, i32* %j, align 4, !tbaa !1
  %159 = sext i32 %158 to i64
  %160 = load i32, i32* %i, align 4, !tbaa !1
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [5 x [4 x [8 x i32]]], [5 x [4 x [8 x i32]]]* @g_17, i32 0, i64 %161
  %163 = getelementptr inbounds [4 x [8 x i32]], [4 x [8 x i32]]* %162, i32 0, i64 %159
  %164 = getelementptr inbounds [8 x i32], [8 x i32]* %163, i32 0, i64 %157
  %165 = load i32, i32* %164, align 4, !tbaa !1
  %166 = sext i32 %165 to i64
  %167 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %166, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i32 %167)
  %168 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %175

; <label>:170                                     ; preds = %155
  %171 = load i32, i32* %i, align 4, !tbaa !1
  %172 = load i32, i32* %j, align 4, !tbaa !1
  %173 = load i32, i32* %k, align 4, !tbaa !1
  %174 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i32 %171, i32 %172, i32 %173)
  br label %175

; <label>:175                                     ; preds = %170, %155
  br label %176

; <label>:176                                     ; preds = %175
  %177 = load i32, i32* %k, align 4, !tbaa !1
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %k, align 4, !tbaa !1
  br label %152

; <label>:179                                     ; preds = %152
  br label %180

; <label>:180                                     ; preds = %179
  %181 = load i32, i32* %j, align 4, !tbaa !1
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %j, align 4, !tbaa !1
  br label %148

; <label>:183                                     ; preds = %148
  br label %184

; <label>:184                                     ; preds = %183
  %185 = load i32, i32* %i, align 4, !tbaa !1
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %i, align 4, !tbaa !1
  br label %144

; <label>:187                                     ; preds = %144
  %188 = load i8, i8* @g_97, align 1, !tbaa !9
  %189 = sext i8 %188 to i64
  %190 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %189, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 %190)
  %191 = load i16, i16* @g_101, align 2, !tbaa !10
  %192 = sext i16 %191 to i64
  %193 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %192, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i32 %193)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %194

; <label>:194                                     ; preds = %210, %187
  %195 = load i32, i32* %i, align 4, !tbaa !1
  %196 = icmp slt i32 %195, 10
  br i1 %196, label %197, label %213

; <label>:197                                     ; preds = %194
  %198 = load i32, i32* %i, align 4, !tbaa !1
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds [10 x i32], [10 x i32]* @g_107, i32 0, i64 %199
  %201 = load i32, i32* %200, align 4, !tbaa !1
  %202 = sext i32 %201 to i64
  %203 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %202, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i32 %203)
  %204 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %209

; <label>:206                                     ; preds = %197
  %207 = load i32, i32* %i, align 4, !tbaa !1
  %208 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i32 %207)
  br label %209

; <label>:209                                     ; preds = %206, %197
  br label %210

; <label>:210                                     ; preds = %209
  %211 = load i32, i32* %i, align 4, !tbaa !1
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %i, align 4, !tbaa !1
  br label %194

; <label>:213                                     ; preds = %194
  %214 = load i8, i8* @g_129, align 1, !tbaa !9
  %215 = zext i8 %214 to i64
  %216 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %215, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i32 %216)
  %217 = load i32, i32* @g_149, align 4, !tbaa !1
  %218 = zext i32 %217 to i64
  %219 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %218, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i32 %219)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %220

; <label>:220                                     ; preds = %236, %213
  %221 = load i32, i32* %i, align 4, !tbaa !1
  %222 = icmp slt i32 %221, 7
  br i1 %222, label %223, label %239

; <label>:223                                     ; preds = %220
  %224 = load i32, i32* %i, align 4, !tbaa !1
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds [7 x i32], [7 x i32]* @g_153, i32 0, i64 %225
  %227 = load i32, i32* %226, align 4, !tbaa !1
  %228 = zext i32 %227 to i64
  %229 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %228, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i32 %229)
  %230 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %235

; <label>:232                                     ; preds = %223
  %233 = load i32, i32* %i, align 4, !tbaa !1
  %234 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i32 %233)
  br label %235

; <label>:235                                     ; preds = %232, %223
  br label %236

; <label>:236                                     ; preds = %235
  %237 = load i32, i32* %i, align 4, !tbaa !1
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %i, align 4, !tbaa !1
  br label %220

; <label>:239                                     ; preds = %220
  %240 = load i16, i16* @g_209, align 2, !tbaa !10
  %241 = zext i16 %240 to i64
  %242 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %241, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 %242)
  %243 = load i64, i64* @g_215, align 8, !tbaa !7
  %244 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %243, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 %244)
  %245 = load i32, i32* @g_222, align 4, !tbaa !1
  %246 = zext i32 %245 to i64
  %247 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %246, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i32 %247)
  %248 = load i16, i16* @g_235, align 2, !tbaa !10
  %249 = zext i16 %248 to i64
  %250 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %249, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i32 %250)
  %251 = load i16, i16* @g_269, align 2, !tbaa !10
  %252 = sext i16 %251 to i64
  %253 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %252, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i32 %253)
  %254 = load i16, i16* @g_272, align 2, !tbaa !10
  %255 = sext i16 %254 to i64
  %256 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %255, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i32 %256)
  %257 = load i32, i32* @g_292, align 4, !tbaa !1
  %258 = zext i32 %257 to i64
  %259 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %258, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 %259)
  %260 = load i32, i32* @g_340, align 4, !tbaa !1
  %261 = sext i32 %260 to i64
  %262 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %261, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i32 %262)
  %263 = load i16, i16* @g_356, align 2, !tbaa !10
  %264 = zext i16 %263 to i64
  %265 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %264, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i32 %265)
  %266 = load volatile i64, i64* @g_452, align 8, !tbaa !7
  %267 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %266, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 %267)
  %268 = load volatile i64, i64* @g_453, align 8, !tbaa !7
  %269 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %268, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %269)
  %270 = load volatile i64, i64* @g_454, align 8, !tbaa !7
  %271 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %270, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i32 %271)
  %272 = load volatile i64, i64* @g_455, align 8, !tbaa !7
  %273 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %272, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i32 %273)
  %274 = load i64, i64* @g_457, align 8, !tbaa !7
  %275 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %274, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 %275)
  %276 = load i32, i32* @g_463, align 4, !tbaa !1
  %277 = sext i32 %276 to i64
  %278 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %277, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i32 %278)
  %279 = load i32, i32* @g_547, align 4, !tbaa !1
  %280 = zext i32 %279 to i64
  %281 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %280, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i32 %281)
  %282 = load i8, i8* @g_585, align 1, !tbaa !9
  %283 = zext i8 %282 to i64
  %284 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %283, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i32 %284)
  %285 = load i16, i16* @g_686, align 2, !tbaa !10
  %286 = zext i16 %285 to i64
  %287 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %286, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i32 %287)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %288

; <label>:288                                     ; preds = %304, %239
  %289 = load i32, i32* %i, align 4, !tbaa !1
  %290 = icmp slt i32 %289, 8
  br i1 %290, label %291, label %307

; <label>:291                                     ; preds = %288
  %292 = load i32, i32* %i, align 4, !tbaa !1
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds [8 x i16], [8 x i16]* @g_697, i32 0, i64 %293
  %295 = load i16, i16* %294, align 2, !tbaa !10
  %296 = sext i16 %295 to i64
  %297 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %296, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0), i32 %297)
  %298 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %303

; <label>:300                                     ; preds = %291
  %301 = load i32, i32* %i, align 4, !tbaa !1
  %302 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i32 %301)
  br label %303

; <label>:303                                     ; preds = %300, %291
  br label %304

; <label>:304                                     ; preds = %303
  %305 = load i32, i32* %i, align 4, !tbaa !1
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %i, align 4, !tbaa !1
  br label %288

; <label>:307                                     ; preds = %288
  %308 = load volatile i32, i32* @g_765, align 4, !tbaa !1
  %309 = zext i32 %308 to i64
  %310 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %309, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i32 %310)
  %311 = load i16, i16* @g_954, align 2, !tbaa !10
  %312 = sext i16 %311 to i64
  %313 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %312, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), i32 %313)
  %314 = load volatile i16, i16* @g_956, align 2, !tbaa !10
  %315 = sext i16 %314 to i64
  %316 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %315, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), i32 %316)
  %317 = load i64, i64* @g_1102, align 8, !tbaa !7
  %318 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %317, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), i32 %318)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %319

; <label>:319                                     ; preds = %334, %307
  %320 = load i32, i32* %i, align 4, !tbaa !1
  %321 = icmp slt i32 %320, 7
  br i1 %321, label %322, label %337

; <label>:322                                     ; preds = %319
  %323 = load i32, i32* %i, align 4, !tbaa !1
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds [7 x i64], [7 x i64]* @g_1354, i32 0, i64 %324
  %326 = load i64, i64* %325, align 8, !tbaa !7
  %327 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %326, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), i32 %327)
  %328 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %333

; <label>:330                                     ; preds = %322
  %331 = load i32, i32* %i, align 4, !tbaa !1
  %332 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i32 %331)
  br label %333

; <label>:333                                     ; preds = %330, %322
  br label %334

; <label>:334                                     ; preds = %333
  %335 = load i32, i32* %i, align 4, !tbaa !1
  %336 = add nsw i32 %335, 1
  store i32 %336, i32* %i, align 4, !tbaa !1
  br label %319

; <label>:337                                     ; preds = %319
  %338 = load i32, i32* @g_1357, align 4, !tbaa !1
  %339 = zext i32 %338 to i64
  %340 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %339, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), i32 %340)
  %341 = load i32, i32* @g_1429, align 4, !tbaa !1
  %342 = zext i32 %341 to i64
  %343 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %342, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i32 0, i32 0), i32 %343)
  %344 = load volatile i16, i16* @g_1481, align 2, !tbaa !10
  %345 = zext i16 %344 to i64
  %346 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %345, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0), i32 %346)
  %347 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 -4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0), i32 %347)
  %348 = load volatile i8, i8* @g_1701, align 1, !tbaa !9
  %349 = sext i8 %348 to i64
  %350 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %349, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), i32 %350)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %351

; <label>:351                                     ; preds = %367, %337
  %352 = load i32, i32* %i, align 4, !tbaa !1
  %353 = icmp slt i32 %352, 4
  br i1 %353, label %354, label %370

; <label>:354                                     ; preds = %351
  %355 = load i32, i32* %i, align 4, !tbaa !1
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds [4 x i32], [4 x i32]* @g_1863, i32 0, i64 %356
  %358 = load i32, i32* %357, align 4, !tbaa !1
  %359 = zext i32 %358 to i64
  %360 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %359, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i32 0, i32 0), i32 %360)
  %361 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %366

; <label>:363                                     ; preds = %354
  %364 = load i32, i32* %i, align 4, !tbaa !1
  %365 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i32 %364)
  br label %366

; <label>:366                                     ; preds = %363, %354
  br label %367

; <label>:367                                     ; preds = %366
  %368 = load i32, i32* %i, align 4, !tbaa !1
  %369 = add nsw i32 %368, 1
  store i32 %369, i32* %i, align 4, !tbaa !1
  br label %351

; <label>:370                                     ; preds = %351
  %371 = load volatile i32, i32* @g_1956, align 4, !tbaa !1
  %372 = sext i32 %371 to i64
  %373 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %372, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i32 0, i32 0), i32 %373)
  %374 = load volatile i64, i64* @g_2061, align 8, !tbaa !7
  %375 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %374, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), i32 %375)
  %376 = load i32, i32* @g_2083, align 4, !tbaa !1
  %377 = sext i32 %376 to i64
  %378 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %377, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0), i32 %378)
  %379 = load i32, i32* @g_2099, align 4, !tbaa !1
  %380 = sext i32 %379 to i64
  %381 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %380, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i32 0, i32 0), i32 %381)
  %382 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %383 = zext i32 %382 to i64
  %384 = xor i64 %383, 4294967295
  %385 = trunc i64 %384 to i32
  %386 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %385, i32 %386)
  %387 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %387) #1
  %388 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %388) #1
  %389 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %389) #1
  %390 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %390) #1
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
  %l_2089 = alloca i16, align 2
  %l_2094 = alloca [4 x [3 x [7 x i32*]]], align 16
  %l_2093 = alloca i32**, align 8
  %l_2092 = alloca [5 x i32***], align 16
  %l_2100 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l_12 = alloca i64, align 8
  %l_2097 = alloca i32*, align 8
  %l_2098 = alloca i32*, align 8
  %l_2101 = alloca i32*, align 8
  %l_2102 = alloca i32**, align 8
  %1 = bitcast i16* %l_2089 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %1) #1
  store i16 0, i16* %l_2089, align 2, !tbaa !10
  %2 = bitcast [4 x [3 x [7 x i32*]]]* %l_2094 to i8*
  call void @llvm.lifetime.start(i64 672, i8* %2) #1
  %3 = bitcast [4 x [3 x [7 x i32*]]]* %l_2094 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* bitcast ([4 x [3 x [7 x i32*]]]* @func_1.l_2094 to i8*), i64 672, i32 16, i1 false)
  %4 = bitcast i32*** %l_2093 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = getelementptr inbounds [4 x [3 x [7 x i32*]]], [4 x [3 x [7 x i32*]]]* %l_2094, i32 0, i64 2
  %6 = getelementptr inbounds [3 x [7 x i32*]], [3 x [7 x i32*]]* %5, i32 0, i64 2
  %7 = getelementptr inbounds [7 x i32*], [7 x i32*]* %6, i32 0, i64 6
  store i32** %7, i32*** %l_2093, align 8, !tbaa !5
  %8 = bitcast [5 x i32***]* %l_2092 to i8*
  call void @llvm.lifetime.start(i64 40, i8* %8) #1
  %9 = bitcast i32* %l_2100 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 977043784, i32* %l_2100, align 4, !tbaa !1
  %10 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %13

; <label>:13                                      ; preds = %20, %0
  %14 = load i32, i32* %i, align 4, !tbaa !1
  %15 = icmp slt i32 %14, 5
  br i1 %15, label %16, label %23

; <label>:16                                      ; preds = %13
  %17 = load i32, i32* %i, align 4, !tbaa !1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [5 x i32***], [5 x i32***]* %l_2092, i32 0, i64 %18
  store i32*** %l_2093, i32**** %19, align 8, !tbaa !5
  br label %20

; <label>:20                                      ; preds = %16
  %21 = load i32, i32* %i, align 4, !tbaa !1
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %i, align 4, !tbaa !1
  br label %13

; <label>:23                                      ; preds = %13
  store i32 0, i32* @g_5, align 4, !tbaa !1
  br label %24

; <label>:24                                      ; preds = %38, %23
  %25 = load i32, i32* @g_5, align 4, !tbaa !1
  %26 = icmp ne i32 %25, 19
  br i1 %26, label %27, label %41

; <label>:27                                      ; preds = %24
  %28 = bitcast i64* %l_12 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %28) #1
  store i64 -2, i64* %l_12, align 8, !tbaa !7
  %29 = bitcast i32** %l_2097 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %29) #1
  store i32* @g_463, i32** %l_2097, align 8, !tbaa !5
  %30 = bitcast i32** %l_2098 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %30) #1
  store i32* @g_2099, i32** %l_2098, align 8, !tbaa !5
  %31 = bitcast i32** %l_2101 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %31) #1
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @g_1863, i32 0, i64 3), i32** %l_2101, align 8, !tbaa !5
  %32 = bitcast i32*** %l_2102 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %32) #1
  store i32** null, i32*** %l_2102, align 8, !tbaa !5
  %33 = bitcast i32*** %l_2102 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  %34 = bitcast i32** %l_2101 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %35 = bitcast i32** %l_2098 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  %36 = bitcast i32** %l_2097 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  %37 = bitcast i64* %l_12 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  br label %38

; <label>:38                                      ; preds = %27
  %39 = load i32, i32* @g_5, align 4, !tbaa !1
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* @g_5, align 4, !tbaa !1
  br label %24

; <label>:41                                      ; preds = %24
  %42 = load i32, i32* %l_2100, align 4, !tbaa !1
  %43 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  %44 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  %45 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  %46 = bitcast i32* %l_2100 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #1
  %47 = bitcast [5 x i32***]* %l_2092 to i8*
  call void @llvm.lifetime.end(i64 40, i8* %47) #1
  %48 = bitcast i32*** %l_2093 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  %49 = bitcast [4 x [3 x [7 x i32*]]]* %l_2094 to i8*
  call void @llvm.lifetime.end(i64 672, i8* %49) #1
  %50 = bitcast i16* %l_2089 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %50) #1
  ret i32 %42
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
