; ModuleID = '00472.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.U0 = type { i8* }

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_16 = internal global i8 -36, align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"g_16\00", align 1
@g_40 = internal global i32 270448205, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"g_40\00", align 1
@g_44 = internal global i32 -10, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"g_44\00", align 1
@g_46 = internal global [3 x [4 x i16]] [[4 x i16] [i16 3, i16 3, i16 3, i16 3], [4 x i16] [i16 3, i16 3, i16 3, i16 3], [4 x i16] [i16 3, i16 3, i16 3, i16 3]], align 16
@.str.4 = private unnamed_addr constant [11 x i8] c"g_46[i][j]\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@g_47 = internal global i64 5035904346441534939, align 8
@.str.6 = private unnamed_addr constant [5 x i8] c"g_47\00", align 1
@g_48 = internal global i8 3, align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"g_48\00", align 1
@g_68 = internal global i32 -1714979295, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"g_68\00", align 1
@g_87 = internal global i8 -48, align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"g_87\00", align 1
@g_95 = internal global i8 6, align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"g_95\00", align 1
@g_98 = internal global [1 x i64] zeroinitializer, align 8
@.str.11 = private unnamed_addr constant [8 x i8] c"g_98[i]\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_99 = internal global i16 9743, align 2
@.str.13 = private unnamed_addr constant [5 x i8] c"g_99\00", align 1
@g_100 = internal global i32 -5, align 4
@.str.14 = private unnamed_addr constant [6 x i8] c"g_100\00", align 1
@g_105 = internal global i8 46, align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"g_105\00", align 1
@g_120 = internal global i32 1538779827, align 4
@.str.16 = private unnamed_addr constant [6 x i8] c"g_120\00", align 1
@g_125 = internal global i32 -5, align 4
@.str.17 = private unnamed_addr constant [6 x i8] c"g_125\00", align 1
@g_143 = internal global i64 3, align 8
@.str.18 = private unnamed_addr constant [6 x i8] c"g_143\00", align 1
@g_145 = internal global i64 3198039308019534762, align 8
@.str.19 = private unnamed_addr constant [6 x i8] c"g_145\00", align 1
@g_179 = internal global i8 0, align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"g_179\00", align 1
@g_209 = internal global [1 x i32] [i32 -1731151272], align 4
@.str.21 = private unnamed_addr constant [9 x i8] c"g_209[i]\00", align 1
@g_212 = internal global i16 -7, align 2
@.str.22 = private unnamed_addr constant [6 x i8] c"g_212\00", align 1
@g_277 = internal global i64 1737728178138963308, align 8
@.str.23 = private unnamed_addr constant [6 x i8] c"g_277\00", align 1
@g_288 = internal global i8 -8, align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"g_288\00", align 1
@g_300 = internal global i64 6409129599386144021, align 8
@.str.25 = private unnamed_addr constant [6 x i8] c"g_300\00", align 1
@g_314 = internal global i16 -1, align 2
@.str.26 = private unnamed_addr constant [6 x i8] c"g_314\00", align 1
@g_340 = internal global [7 x [8 x [4 x i8]]] [[8 x [4 x i8]] [[4 x i8] c"\06\D1\FF\FE", [4 x i8] c"\FF\FE6\F7", [4 x i8] c"\FF\17\FE\FE", [4 x i8] c"\80\09\FD\06", [4 x i8] c"F\01\09\8F", [4 x i8] c"\01e\09\FF", [4 x i8] c"\02\8F\01\FC", [4 x i8] c"\01\9D\05\00"], [8 x [4 x i8]] [[4 x i8] c"F\FF\01\00", [4 x i8] c"\FF\17w\09", [4 x i8] c"\FF\FF\FF\80", [4 x i8] c"\FF\FD\F8\01", [4 x i8] c"\97\01\FF\FF", [4 x i8] c"\16\01:\80", [4 x i8] c"\01\F7\FD\FF", [4 x i8] c"7\00\002"], [8 x [4 x i8]] [[4 x i8] c"\19\09\01F", [4 x i8] c"\01rr\01", [4 x i8] c"\FF7\01\F7", [4 x i8] c"\FF2\09\01", [4 x i8] c"\AA\97\02\01", [4 x i8] c"\002\01\F7", [4 x i8] c"\007\E0\01", [4 x i8] c"\80r\02F"], [8 x [4 x i8]] [[4 x i8] c"\01\09\012", [4 x i8] c"\F7\00\16\FF", [4 x i8] c"\C2\F7\01\80", [4 x i8] c"e\01\C2\FF", [4 x i8] c"\FD\01\00\01", [4 x i8] c"\01\FD\C0\80", [4 x i8] c"\01\FF\FF\09", [4 x i8] c"\01\17\19\00"], [8 x [4 x i8]] [[4 x i8] c"\01\FF\8F\00", [4 x i8] c"\06\9D\F7\FC", [4 x i8] c"\17\8F\80\FF", [4 x i8] c"\09:\CD\DD", [4 x i8] c"\09\F8\DD\05", [4 x i8] c"\FDe\17\01", [4 x i8] c"\FE\01\80\CD", [4 x i8] c"6u\09u"], [8 x [4 x i8]] [[4 x i8] c"\FF\03\FF\FC", [4 x i8] c"\E0\01\FD\C0", [4 x i8] c"\01\19\01\FC", [4 x i8] c"\01\FE\FD\F7", [4 x i8] c"\E0\FC\FF:", [4 x i8] c"\FF\09\09\FD", [4 x i8] c"6\01\80\01", [4 x i8] c"\FE\FF\17\00"], [8 x [4 x i8]] [[4 x i8] c"\FD\F7\DD\FD", [4 x i8] c"\09W\CD\06", [4 x i8] c"\09\FE\80\AA", [4 x i8] c"\17\80\F7\E4", [4 x i8] c"\06\FC\8F\F3", [4 x i8] c"\01\AA\01\01", [4 x i8] c"w\00\C0\19", [4 x i8] c"\FF7\80\01"]], align 16
@.str.27 = private unnamed_addr constant [15 x i8] c"g_340[i][j][k]\00", align 1
@.str.28 = private unnamed_addr constant [22 x i8] c"index = [%d][%d][%d]\0A\00", align 1
@g_477 = internal global i32 -1314312020, align 4
@.str.29 = private unnamed_addr constant [6 x i8] c"g_477\00", align 1
@g_486 = internal global i8 -8, align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"g_486\00", align 1
@g_488 = internal global i8 -16, align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"g_488\00", align 1
@g_507 = internal global i8 -44, align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"g_507\00", align 1
@g_510 = internal global [8 x i8] c" \01 \01 \01 \01", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"g_510[i]\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"g_541.f0\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"g_541.f2\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"g_541.f3\00", align 1
@g_571 = internal global i16 -31969, align 2
@.str.37 = private unnamed_addr constant [6 x i8] c"g_571\00", align 1
@g_645 = internal global [8 x i32] [i32 -3, i32 -3, i32 -3, i32 -3, i32 -3, i32 -3, i32 -3, i32 -3], align 16
@.str.38 = private unnamed_addr constant [9 x i8] c"g_645[i]\00", align 1
@g_685 = internal global [10 x i8] c"\09\FF\00\FF\09\09\FF\00\FF\09", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"g_685[i]\00", align 1
@g_889 = internal global i32 2076578771, align 4
@.str.40 = private unnamed_addr constant [6 x i8] c"g_889\00", align 1
@g_913 = internal global i32 1, align 4
@.str.41 = private unnamed_addr constant [6 x i8] c"g_913\00", align 1
@g_914 = internal global i8 -1, align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"g_914\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"g_917.f0\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"g_917.f2\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"g_917.f3\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"g_957.f0\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"g_957.f2\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"g_957.f3\00", align 1
@g_967 = internal global i8 -1, align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"g_967\00", align 1
@g_968 = internal global i8 122, align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"g_968\00", align 1
@g_1031 = internal global i32 -1051414260, align 4
@.str.51 = private unnamed_addr constant [7 x i8] c"g_1031\00", align 1
@.str.52 = private unnamed_addr constant [10 x i8] c"g_1109.f0\00", align 1
@.str.53 = private unnamed_addr constant [10 x i8] c"g_1109.f2\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c"g_1109.f3\00", align 1
@.str.55 = private unnamed_addr constant [10 x i8] c"g_1203.f0\00", align 1
@.str.56 = private unnamed_addr constant [10 x i8] c"g_1203.f2\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"g_1203.f3\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"g_1256\00", align 1
@.str.59 = private unnamed_addr constant [10 x i8] c"g_1411.f0\00", align 1
@.str.60 = private unnamed_addr constant [10 x i8] c"g_1411.f2\00", align 1
@.str.61 = private unnamed_addr constant [10 x i8] c"g_1411.f3\00", align 1
@g_1447 = internal global [7 x [2 x i16]] [[2 x i16] [i16 1, i16 1], [2 x i16] [i16 1, i16 1], [2 x i16] [i16 1, i16 1], [2 x i16] [i16 1, i16 1], [2 x i16] [i16 1, i16 1], [2 x i16] [i16 1, i16 1], [2 x i16] [i16 1, i16 1]], align 16
@.str.62 = private unnamed_addr constant [13 x i8] c"g_1447[i][j]\00", align 1
@g_1476 = internal global [4 x [10 x i64]] [[10 x i64] [i64 2415776038559151134, i64 2415776038559151134, i64 342698177568405210, i64 2415776038559151134, i64 2415776038559151134, i64 342698177568405210, i64 2415776038559151134, i64 2415776038559151134, i64 342698177568405210, i64 2415776038559151134], [10 x i64] [i64 2415776038559151134, i64 1, i64 1, i64 2415776038559151134, i64 1, i64 1, i64 2415776038559151134, i64 1, i64 1, i64 2415776038559151134], [10 x i64] [i64 1, i64 2415776038559151134, i64 1, i64 1, i64 2415776038559151134, i64 1, i64 1, i64 2415776038559151134, i64 1, i64 1], [10 x i64] [i64 2415776038559151134, i64 2415776038559151134, i64 342698177568405210, i64 2415776038559151134, i64 2415776038559151134, i64 342698177568405210, i64 2415776038559151134, i64 2415776038559151134, i64 342698177568405210, i64 2415776038559151134]], align 16
@.str.63 = private unnamed_addr constant [13 x i8] c"g_1476[i][j]\00", align 1
@.str.64 = private unnamed_addr constant [10 x i8] c"g_1516.f0\00", align 1
@.str.65 = private unnamed_addr constant [10 x i8] c"g_1516.f2\00", align 1
@.str.66 = private unnamed_addr constant [10 x i8] c"g_1516.f3\00", align 1
@g_1535 = internal global [6 x [3 x [4 x i8]]] [[3 x [4 x i8]] [[4 x i8] c"\B0nn\B0", [4 x i8] c"\00,B\01", [4 x i8] c"n\FF\11\08"], [3 x [4 x i8]] [[4 x i8] c"\F9[\02\08", [4 x i8] c"\D5\FF\CB\01", [4 x i8] c"\00,\A1\5C"], [3 x [4 x i8]] [[4 x i8] c"\E4\00\01\00", [4 x i8] c"\D5\5C\D5\CB", [4 x i8] c"\FF\01\11\E4"], [3 x [4 x i8]] [[4 x i8] c"\01\00[\01", [4 x i8] c"#\00[\01", [4 x i8] c"\01\08\11\FF"], [3 x [4 x i8]] [[4 x i8] c"\FF[\D5\F9", [4 x i8] c"\D5\F9\01\01", [4 x i8] c"\E4\E4\A1n"], [3 x [4 x i8]] [[4 x i8] c"\00\00\CB,", [4 x i8] c"\D5n\02\CB", [4 x i8] c"\F9n\11,"]], align 16
@.str.67 = private unnamed_addr constant [16 x i8] c"g_1535[i][j][k]\00", align 1
@g_1724 = internal global i32 -1476294012, align 4
@.str.68 = private unnamed_addr constant [7 x i8] c"g_1724\00", align 1
@g_1742 = internal global i64 4033850599319134843, align 8
@.str.69 = private unnamed_addr constant [7 x i8] c"g_1742\00", align 1
@g_1829 = internal global i32 1766134295, align 4
@.str.70 = private unnamed_addr constant [7 x i8] c"g_1829\00", align 1
@.str.71 = private unnamed_addr constant [10 x i8] c"g_1970.f0\00", align 1
@.str.72 = private unnamed_addr constant [10 x i8] c"g_1970.f2\00", align 1
@.str.73 = private unnamed_addr constant [10 x i8] c"g_1970.f3\00", align 1
@g_2016 = internal global i64 -1, align 8
@.str.74 = private unnamed_addr constant [7 x i8] c"g_2016\00", align 1
@.str.75 = private unnamed_addr constant [10 x i8] c"g_2190.f0\00", align 1
@.str.76 = private unnamed_addr constant [10 x i8] c"g_2190.f2\00", align 1
@.str.77 = private unnamed_addr constant [10 x i8] c"g_2190.f3\00", align 1
@.str.78 = private unnamed_addr constant [10 x i8] c"g_2252.f0\00", align 1
@.str.79 = private unnamed_addr constant [10 x i8] c"g_2252.f2\00", align 1
@.str.80 = private unnamed_addr constant [10 x i8] c"g_2252.f3\00", align 1
@g_2286 = internal global i8 -9, align 1
@.str.81 = private unnamed_addr constant [7 x i8] c"g_2286\00", align 1
@.str.82 = private unnamed_addr constant [10 x i8] c"g_2311.f0\00", align 1
@.str.83 = private unnamed_addr constant [10 x i8] c"g_2311.f2\00", align 1
@.str.84 = private unnamed_addr constant [10 x i8] c"g_2311.f3\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@func_1.l_17 = private unnamed_addr constant [7 x i8*] [i8* @g_16, i8* @g_16, i8* @g_16, i8* @g_16, i8* @g_16, i8* @g_16, i8* @g_16], align 16
@g_1387 = internal global i8*** @g_525, align 8
@g_1708 = internal global i16** null, align 8
@func_1.l_2219 = internal constant [5 x i8] zeroinitializer, align 1
@g_2254 = internal global [2 x %union.U0] zeroinitializer, align 16
@g_525 = internal global i8** @g_526, align 8
@g_526 = internal global i8* @g_288, align 8
@.str.85 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@g_541 = internal global { i32, [4 x i8] } { i32 -1589215229, [4 x i8] undef }, align 8
@g_917 = internal global { i32, [4 x i8] } { i32 0, [4 x i8] undef }, align 8
@g_957 = internal global { i32, [4 x i8] } { i32 1272676964, [4 x i8] undef }, align 8
@g_1109 = internal global { i32, [4 x i8] } { i32 -1, [4 x i8] undef }, align 8
@g_1203 = internal global { i32, [4 x i8] } { i32 -8, [4 x i8] undef }, align 8
@g_1411 = internal global { i32, [4 x i8] } { i32 -1, [4 x i8] undef }, align 8
@g_1516 = internal global { i32, [4 x i8] } { i32 1751611171, [4 x i8] undef }, align 8
@g_1970 = internal global { i32, [4 x i8] } { i32 -6, [4 x i8] undef }, align 8
@g_2190 = internal global { i32, [4 x i8] } { i32 -3, [4 x i8] undef }, align 8
@g_2252 = internal global { i32, [4 x i8] } { i32 955933575, [4 x i8] undef }, align 8
@g_2311 = internal constant { i32, [4 x i8] } { i32 -2045626690, [4 x i8] undef }, align 8
@.str.86 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

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
  %91 = load i8, i8* @g_16, align 1, !tbaa !9
  %92 = sext i8 %91 to i64
  %93 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %92, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 %93)
  %94 = load i32, i32* @g_40, align 4, !tbaa !1
  %95 = zext i32 %94 to i64
  %96 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %95, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 %96)
  %97 = load i32, i32* @g_44, align 4, !tbaa !1
  %98 = sext i32 %97 to i64
  %99 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 %99)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %100

; <label>:100                                     ; preds = %128, %89
  %101 = load i32, i32* %i, align 4, !tbaa !1
  %102 = icmp slt i32 %101, 3
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
  %112 = getelementptr inbounds [3 x [4 x i16]], [3 x [4 x i16]]* @g_46, i32 0, i64 %111
  %113 = getelementptr inbounds [4 x i16], [4 x i16]* %112, i32 0, i64 %109
  %114 = load volatile i16, i16* %113, align 2, !tbaa !10
  %115 = sext i16 %114 to i64
  %116 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %115, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 %116)
  %117 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

; <label>:119                                     ; preds = %107
  %120 = load i32, i32* %i, align 4, !tbaa !1
  %121 = load i32, i32* %j, align 4, !tbaa !1
  %122 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i32 %120, i32 %121)
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
  %132 = load i64, i64* @g_47, align 8, !tbaa !7
  %133 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %132, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 %133)
  %134 = load i8, i8* @g_48, align 1, !tbaa !9
  %135 = zext i8 %134 to i64
  %136 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %135, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 %136)
  %137 = load i32, i32* @g_68, align 4, !tbaa !1
  %138 = zext i32 %137 to i64
  %139 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %138, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 %139)
  %140 = load i8, i8* @g_87, align 1, !tbaa !9
  %141 = sext i8 %140 to i64
  %142 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %141, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i32 %142)
  %143 = load i8, i8* @g_95, align 1, !tbaa !9
  %144 = sext i8 %143 to i64
  %145 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %144, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32 %145)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %146

; <label>:146                                     ; preds = %161, %131
  %147 = load i32, i32* %i, align 4, !tbaa !1
  %148 = icmp slt i32 %147, 1
  br i1 %148, label %149, label %164

; <label>:149                                     ; preds = %146
  %150 = load i32, i32* %i, align 4, !tbaa !1
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [1 x i64], [1 x i64]* @g_98, i32 0, i64 %151
  %153 = load i64, i64* %152, align 8, !tbaa !7
  %154 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %153, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i32 %154)
  %155 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %160

; <label>:157                                     ; preds = %149
  %158 = load i32, i32* %i, align 4, !tbaa !1
  %159 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i32 %158)
  br label %160

; <label>:160                                     ; preds = %157, %149
  br label %161

; <label>:161                                     ; preds = %160
  %162 = load i32, i32* %i, align 4, !tbaa !1
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %i, align 4, !tbaa !1
  br label %146

; <label>:164                                     ; preds = %146
  %165 = load i16, i16* @g_99, align 2, !tbaa !10
  %166 = sext i16 %165 to i64
  %167 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %166, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i32 %167)
  %168 = load i32, i32* @g_100, align 4, !tbaa !1
  %169 = zext i32 %168 to i64
  %170 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %169, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 %170)
  %171 = load i8, i8* @g_105, align 1, !tbaa !9
  %172 = zext i8 %171 to i64
  %173 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %172, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 %173)
  %174 = load i32, i32* @g_120, align 4, !tbaa !1
  %175 = zext i32 %174 to i64
  %176 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %175, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i32 %176)
  %177 = load i32, i32* @g_125, align 4, !tbaa !1
  %178 = zext i32 %177 to i64
  %179 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %178, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i32 %179)
  %180 = load i64, i64* @g_143, align 8, !tbaa !7
  %181 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %180, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i32 %181)
  %182 = load i64, i64* @g_145, align 8, !tbaa !7
  %183 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %182, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i32 %183)
  %184 = load i8, i8* @g_179, align 1, !tbaa !9
  %185 = zext i8 %184 to i64
  %186 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %185, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 %186)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %187

; <label>:187                                     ; preds = %203, %164
  %188 = load i32, i32* %i, align 4, !tbaa !1
  %189 = icmp slt i32 %188, 1
  br i1 %189, label %190, label %206

; <label>:190                                     ; preds = %187
  %191 = load i32, i32* %i, align 4, !tbaa !1
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds [1 x i32], [1 x i32]* @g_209, i32 0, i64 %192
  %194 = load i32, i32* %193, align 4, !tbaa !1
  %195 = sext i32 %194 to i64
  %196 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %195, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i32 %196)
  %197 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %202

; <label>:199                                     ; preds = %190
  %200 = load i32, i32* %i, align 4, !tbaa !1
  %201 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i32 %200)
  br label %202

; <label>:202                                     ; preds = %199, %190
  br label %203

; <label>:203                                     ; preds = %202
  %204 = load i32, i32* %i, align 4, !tbaa !1
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %i, align 4, !tbaa !1
  br label %187

; <label>:206                                     ; preds = %187
  %207 = load volatile i16, i16* @g_212, align 2, !tbaa !10
  %208 = zext i16 %207 to i64
  %209 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %208, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i32 %209)
  %210 = load i64, i64* @g_277, align 8, !tbaa !7
  %211 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %210, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 %211)
  %212 = load i8, i8* @g_288, align 1, !tbaa !9
  %213 = sext i8 %212 to i64
  %214 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %213, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %214)
  %215 = load i64, i64* @g_300, align 8, !tbaa !7
  %216 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %215, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i32 %216)
  %217 = load i16, i16* @g_314, align 2, !tbaa !10
  %218 = zext i16 %217 to i64
  %219 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %218, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i32 %219)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %220

; <label>:220                                     ; preds = %260, %206
  %221 = load i32, i32* %i, align 4, !tbaa !1
  %222 = icmp slt i32 %221, 7
  br i1 %222, label %223, label %263

; <label>:223                                     ; preds = %220
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %224

; <label>:224                                     ; preds = %256, %223
  %225 = load i32, i32* %j, align 4, !tbaa !1
  %226 = icmp slt i32 %225, 8
  br i1 %226, label %227, label %259

; <label>:227                                     ; preds = %224
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %228

; <label>:228                                     ; preds = %252, %227
  %229 = load i32, i32* %k, align 4, !tbaa !1
  %230 = icmp slt i32 %229, 4
  br i1 %230, label %231, label %255

; <label>:231                                     ; preds = %228
  %232 = load i32, i32* %k, align 4, !tbaa !1
  %233 = sext i32 %232 to i64
  %234 = load i32, i32* %j, align 4, !tbaa !1
  %235 = sext i32 %234 to i64
  %236 = load i32, i32* %i, align 4, !tbaa !1
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds [7 x [8 x [4 x i8]]], [7 x [8 x [4 x i8]]]* @g_340, i32 0, i64 %237
  %239 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %238, i32 0, i64 %235
  %240 = getelementptr inbounds [4 x i8], [4 x i8]* %239, i32 0, i64 %233
  %241 = load volatile i8, i8* %240, align 1, !tbaa !9
  %242 = zext i8 %241 to i64
  %243 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %242, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i32 0, i32 0), i32 %243)
  %244 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %251

; <label>:246                                     ; preds = %231
  %247 = load i32, i32* %i, align 4, !tbaa !1
  %248 = load i32, i32* %j, align 4, !tbaa !1
  %249 = load i32, i32* %k, align 4, !tbaa !1
  %250 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.28, i32 0, i32 0), i32 %247, i32 %248, i32 %249)
  br label %251

; <label>:251                                     ; preds = %246, %231
  br label %252

; <label>:252                                     ; preds = %251
  %253 = load i32, i32* %k, align 4, !tbaa !1
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %k, align 4, !tbaa !1
  br label %228

; <label>:255                                     ; preds = %228
  br label %256

; <label>:256                                     ; preds = %255
  %257 = load i32, i32* %j, align 4, !tbaa !1
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %j, align 4, !tbaa !1
  br label %224

; <label>:259                                     ; preds = %224
  br label %260

; <label>:260                                     ; preds = %259
  %261 = load i32, i32* %i, align 4, !tbaa !1
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %i, align 4, !tbaa !1
  br label %220

; <label>:263                                     ; preds = %220
  %264 = load i32, i32* @g_477, align 4, !tbaa !1
  %265 = zext i32 %264 to i64
  %266 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %265, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i32 %266)
  %267 = load i8, i8* @g_486, align 1, !tbaa !9
  %268 = sext i8 %267 to i64
  %269 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %268, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i32 %269)
  %270 = load i8, i8* @g_488, align 1, !tbaa !9
  %271 = zext i8 %270 to i64
  %272 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %271, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i32 %272)
  %273 = load i8, i8* @g_507, align 1, !tbaa !9
  %274 = sext i8 %273 to i64
  %275 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %274, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i32 %275)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %276

; <label>:276                                     ; preds = %292, %263
  %277 = load i32, i32* %i, align 4, !tbaa !1
  %278 = icmp slt i32 %277, 8
  br i1 %278, label %279, label %295

; <label>:279                                     ; preds = %276
  %280 = load i32, i32* %i, align 4, !tbaa !1
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds [8 x i8], [8 x i8]* @g_510, i32 0, i64 %281
  %283 = load i8, i8* %282, align 1, !tbaa !9
  %284 = zext i8 %283 to i64
  %285 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %284, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0), i32 %285)
  %286 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %291

; <label>:288                                     ; preds = %279
  %289 = load i32, i32* %i, align 4, !tbaa !1
  %290 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i32 %289)
  br label %291

; <label>:291                                     ; preds = %288, %279
  br label %292

; <label>:292                                     ; preds = %291
  %293 = load i32, i32* %i, align 4, !tbaa !1
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %i, align 4, !tbaa !1
  br label %276

; <label>:295                                     ; preds = %276
  %296 = load i32, i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_541, i32 0, i32 0), align 4, !tbaa !1
  %297 = zext i32 %296 to i64
  %298 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %297, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i32 0, i32 0), i32 %298)
  %299 = load i16, i16* bitcast ({ i32, [4 x i8] }* @g_541 to i16*), align 2, !tbaa !10
  %300 = sext i16 %299 to i64
  %301 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %300, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i32 0, i32 0), i32 %301)
  %302 = load i8, i8* bitcast ({ i32, [4 x i8] }* @g_541 to i8*), align 1, !tbaa !9
  %303 = zext i8 %302 to i64
  %304 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %303, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i32 0, i32 0), i32 %304)
  %305 = load i16, i16* @g_571, align 2, !tbaa !10
  %306 = zext i16 %305 to i64
  %307 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %306, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), i32 %307)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %308

; <label>:308                                     ; preds = %324, %295
  %309 = load i32, i32* %i, align 4, !tbaa !1
  %310 = icmp slt i32 %309, 8
  br i1 %310, label %311, label %327

; <label>:311                                     ; preds = %308
  %312 = load i32, i32* %i, align 4, !tbaa !1
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds [8 x i32], [8 x i32]* @g_645, i32 0, i64 %313
  %315 = load i32, i32* %314, align 4, !tbaa !1
  %316 = sext i32 %315 to i64
  %317 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %316, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i32 0, i32 0), i32 %317)
  %318 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %323

; <label>:320                                     ; preds = %311
  %321 = load i32, i32* %i, align 4, !tbaa !1
  %322 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i32 %321)
  br label %323

; <label>:323                                     ; preds = %320, %311
  br label %324

; <label>:324                                     ; preds = %323
  %325 = load i32, i32* %i, align 4, !tbaa !1
  %326 = add nsw i32 %325, 1
  store i32 %326, i32* %i, align 4, !tbaa !1
  br label %308

; <label>:327                                     ; preds = %308
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %328

; <label>:328                                     ; preds = %344, %327
  %329 = load i32, i32* %i, align 4, !tbaa !1
  %330 = icmp slt i32 %329, 10
  br i1 %330, label %331, label %347

; <label>:331                                     ; preds = %328
  %332 = load i32, i32* %i, align 4, !tbaa !1
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds [10 x i8], [10 x i8]* @g_685, i32 0, i64 %333
  %335 = load volatile i8, i8* %334, align 1, !tbaa !9
  %336 = sext i8 %335 to i64
  %337 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %336, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i32 0, i32 0), i32 %337)
  %338 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %343

; <label>:340                                     ; preds = %331
  %341 = load i32, i32* %i, align 4, !tbaa !1
  %342 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i32 %341)
  br label %343

; <label>:343                                     ; preds = %340, %331
  br label %344

; <label>:344                                     ; preds = %343
  %345 = load i32, i32* %i, align 4, !tbaa !1
  %346 = add nsw i32 %345, 1
  store i32 %346, i32* %i, align 4, !tbaa !1
  br label %328

; <label>:347                                     ; preds = %328
  %348 = load i32, i32* @g_889, align 4, !tbaa !1
  %349 = zext i32 %348 to i64
  %350 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %349, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0), i32 %350)
  %351 = load i32, i32* @g_913, align 4, !tbaa !1
  %352 = sext i32 %351 to i64
  %353 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %352, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i32 0, i32 0), i32 %353)
  %354 = load i8, i8* @g_914, align 1, !tbaa !9
  %355 = sext i8 %354 to i64
  %356 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %355, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i32 %356)
  %357 = load i32, i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_917, i32 0, i32 0), align 4, !tbaa !1
  %358 = zext i32 %357 to i64
  %359 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %358, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i32 0, i32 0), i32 %359)
  %360 = load i16, i16* bitcast ({ i32, [4 x i8] }* @g_917 to i16*), align 2, !tbaa !10
  %361 = sext i16 %360 to i64
  %362 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %361, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i32 0, i32 0), i32 %362)
  %363 = load i8, i8* bitcast ({ i32, [4 x i8] }* @g_917 to i8*), align 1, !tbaa !9
  %364 = zext i8 %363 to i64
  %365 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %364, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.45, i32 0, i32 0), i32 %365)
  %366 = load i32, i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_957, i32 0, i32 0), align 4, !tbaa !1
  %367 = zext i32 %366 to i64
  %368 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %367, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i32 0, i32 0), i32 %368)
  %369 = load i16, i16* bitcast ({ i32, [4 x i8] }* @g_957 to i16*), align 2, !tbaa !10
  %370 = sext i16 %369 to i64
  %371 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %370, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.47, i32 0, i32 0), i32 %371)
  %372 = load i8, i8* bitcast ({ i32, [4 x i8] }* @g_957 to i8*), align 1, !tbaa !9
  %373 = zext i8 %372 to i64
  %374 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %373, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i32 0, i32 0), i32 %374)
  %375 = load i8, i8* @g_967, align 1, !tbaa !9
  %376 = zext i8 %375 to i64
  %377 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %376, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0), i32 %377)
  %378 = load i8, i8* @g_968, align 1, !tbaa !9
  %379 = zext i8 %378 to i64
  %380 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %379, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i32 0, i32 0), i32 %380)
  %381 = load volatile i32, i32* @g_1031, align 4, !tbaa !1
  %382 = sext i32 %381 to i64
  %383 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %382, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), i32 %383)
  %384 = load i32, i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_1109, i32 0, i32 0), align 4, !tbaa !1
  %385 = zext i32 %384 to i64
  %386 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %385, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.52, i32 0, i32 0), i32 %386)
  %387 = load i16, i16* bitcast ({ i32, [4 x i8] }* @g_1109 to i16*), align 2, !tbaa !10
  %388 = sext i16 %387 to i64
  %389 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %388, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.53, i32 0, i32 0), i32 %389)
  %390 = load i8, i8* bitcast ({ i32, [4 x i8] }* @g_1109 to i8*), align 1, !tbaa !9
  %391 = zext i8 %390 to i64
  %392 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %391, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.54, i32 0, i32 0), i32 %392)
  %393 = load i32, i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_1203, i32 0, i32 0), align 4, !tbaa !1
  %394 = zext i32 %393 to i64
  %395 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %394, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.55, i32 0, i32 0), i32 %395)
  %396 = load i16, i16* bitcast ({ i32, [4 x i8] }* @g_1203 to i16*), align 2, !tbaa !10
  %397 = sext i16 %396 to i64
  %398 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %397, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.56, i32 0, i32 0), i32 %398)
  %399 = load i8, i8* bitcast ({ i32, [4 x i8] }* @g_1203 to i8*), align 1, !tbaa !9
  %400 = zext i8 %399 to i64
  %401 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %400, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.57, i32 0, i32 0), i32 %401)
  %402 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i32 0, i32 0), i32 %402)
  %403 = load i32, i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_1411, i32 0, i32 0), align 4, !tbaa !1
  %404 = zext i32 %403 to i64
  %405 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %404, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i32 0, i32 0), i32 %405)
  %406 = load i16, i16* bitcast ({ i32, [4 x i8] }* @g_1411 to i16*), align 2, !tbaa !10
  %407 = sext i16 %406 to i64
  %408 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %407, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.60, i32 0, i32 0), i32 %408)
  %409 = load i8, i8* bitcast ({ i32, [4 x i8] }* @g_1411 to i8*), align 1, !tbaa !9
  %410 = zext i8 %409 to i64
  %411 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %410, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i32 0, i32 0), i32 %411)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %412

; <label>:412                                     ; preds = %440, %347
  %413 = load i32, i32* %i, align 4, !tbaa !1
  %414 = icmp slt i32 %413, 7
  br i1 %414, label %415, label %443

; <label>:415                                     ; preds = %412
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %416

; <label>:416                                     ; preds = %436, %415
  %417 = load i32, i32* %j, align 4, !tbaa !1
  %418 = icmp slt i32 %417, 2
  br i1 %418, label %419, label %439

; <label>:419                                     ; preds = %416
  %420 = load i32, i32* %j, align 4, !tbaa !1
  %421 = sext i32 %420 to i64
  %422 = load i32, i32* %i, align 4, !tbaa !1
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds [7 x [2 x i16]], [7 x [2 x i16]]* @g_1447, i32 0, i64 %423
  %425 = getelementptr inbounds [2 x i16], [2 x i16]* %424, i32 0, i64 %421
  %426 = load volatile i16, i16* %425, align 2, !tbaa !10
  %427 = zext i16 %426 to i64
  %428 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %427, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i32 0, i32 0), i32 %428)
  %429 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %431, label %435

; <label>:431                                     ; preds = %419
  %432 = load i32, i32* %i, align 4, !tbaa !1
  %433 = load i32, i32* %j, align 4, !tbaa !1
  %434 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i32 %432, i32 %433)
  br label %435

; <label>:435                                     ; preds = %431, %419
  br label %436

; <label>:436                                     ; preds = %435
  %437 = load i32, i32* %j, align 4, !tbaa !1
  %438 = add nsw i32 %437, 1
  store i32 %438, i32* %j, align 4, !tbaa !1
  br label %416

; <label>:439                                     ; preds = %416
  br label %440

; <label>:440                                     ; preds = %439
  %441 = load i32, i32* %i, align 4, !tbaa !1
  %442 = add nsw i32 %441, 1
  store i32 %442, i32* %i, align 4, !tbaa !1
  br label %412

; <label>:443                                     ; preds = %412
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %444

; <label>:444                                     ; preds = %471, %443
  %445 = load i32, i32* %i, align 4, !tbaa !1
  %446 = icmp slt i32 %445, 4
  br i1 %446, label %447, label %474

; <label>:447                                     ; preds = %444
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %448

; <label>:448                                     ; preds = %467, %447
  %449 = load i32, i32* %j, align 4, !tbaa !1
  %450 = icmp slt i32 %449, 10
  br i1 %450, label %451, label %470

; <label>:451                                     ; preds = %448
  %452 = load i32, i32* %j, align 4, !tbaa !1
  %453 = sext i32 %452 to i64
  %454 = load i32, i32* %i, align 4, !tbaa !1
  %455 = sext i32 %454 to i64
  %456 = getelementptr inbounds [4 x [10 x i64]], [4 x [10 x i64]]* @g_1476, i32 0, i64 %455
  %457 = getelementptr inbounds [10 x i64], [10 x i64]* %456, i32 0, i64 %453
  %458 = load volatile i64, i64* %457, align 8, !tbaa !7
  %459 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %458, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.63, i32 0, i32 0), i32 %459)
  %460 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %462, label %466

; <label>:462                                     ; preds = %451
  %463 = load i32, i32* %i, align 4, !tbaa !1
  %464 = load i32, i32* %j, align 4, !tbaa !1
  %465 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i32 %463, i32 %464)
  br label %466

; <label>:466                                     ; preds = %462, %451
  br label %467

; <label>:467                                     ; preds = %466
  %468 = load i32, i32* %j, align 4, !tbaa !1
  %469 = add nsw i32 %468, 1
  store i32 %469, i32* %j, align 4, !tbaa !1
  br label %448

; <label>:470                                     ; preds = %448
  br label %471

; <label>:471                                     ; preds = %470
  %472 = load i32, i32* %i, align 4, !tbaa !1
  %473 = add nsw i32 %472, 1
  store i32 %473, i32* %i, align 4, !tbaa !1
  br label %444

; <label>:474                                     ; preds = %444
  %475 = load volatile i32, i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_1516, i32 0, i32 0), align 4, !tbaa !1
  %476 = zext i32 %475 to i64
  %477 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %476, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.64, i32 0, i32 0), i32 %477)
  %478 = load volatile i16, i16* bitcast ({ i32, [4 x i8] }* @g_1516 to i16*), align 2, !tbaa !10
  %479 = sext i16 %478 to i64
  %480 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %479, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.65, i32 0, i32 0), i32 %480)
  %481 = load volatile i8, i8* bitcast ({ i32, [4 x i8] }* @g_1516 to i8*), align 1, !tbaa !9
  %482 = zext i8 %481 to i64
  %483 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %482, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.66, i32 0, i32 0), i32 %483)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %484

; <label>:484                                     ; preds = %524, %474
  %485 = load i32, i32* %i, align 4, !tbaa !1
  %486 = icmp slt i32 %485, 6
  br i1 %486, label %487, label %527

; <label>:487                                     ; preds = %484
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %488

; <label>:488                                     ; preds = %520, %487
  %489 = load i32, i32* %j, align 4, !tbaa !1
  %490 = icmp slt i32 %489, 3
  br i1 %490, label %491, label %523

; <label>:491                                     ; preds = %488
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %492

; <label>:492                                     ; preds = %516, %491
  %493 = load i32, i32* %k, align 4, !tbaa !1
  %494 = icmp slt i32 %493, 4
  br i1 %494, label %495, label %519

; <label>:495                                     ; preds = %492
  %496 = load i32, i32* %k, align 4, !tbaa !1
  %497 = sext i32 %496 to i64
  %498 = load i32, i32* %j, align 4, !tbaa !1
  %499 = sext i32 %498 to i64
  %500 = load i32, i32* %i, align 4, !tbaa !1
  %501 = sext i32 %500 to i64
  %502 = getelementptr inbounds [6 x [3 x [4 x i8]]], [6 x [3 x [4 x i8]]]* @g_1535, i32 0, i64 %501
  %503 = getelementptr inbounds [3 x [4 x i8]], [3 x [4 x i8]]* %502, i32 0, i64 %499
  %504 = getelementptr inbounds [4 x i8], [4 x i8]* %503, i32 0, i64 %497
  %505 = load i8, i8* %504, align 1, !tbaa !9
  %506 = zext i8 %505 to i64
  %507 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %506, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.67, i32 0, i32 0), i32 %507)
  %508 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %509 = icmp ne i32 %508, 0
  br i1 %509, label %510, label %515

; <label>:510                                     ; preds = %495
  %511 = load i32, i32* %i, align 4, !tbaa !1
  %512 = load i32, i32* %j, align 4, !tbaa !1
  %513 = load i32, i32* %k, align 4, !tbaa !1
  %514 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.28, i32 0, i32 0), i32 %511, i32 %512, i32 %513)
  br label %515

; <label>:515                                     ; preds = %510, %495
  br label %516

; <label>:516                                     ; preds = %515
  %517 = load i32, i32* %k, align 4, !tbaa !1
  %518 = add nsw i32 %517, 1
  store i32 %518, i32* %k, align 4, !tbaa !1
  br label %492

; <label>:519                                     ; preds = %492
  br label %520

; <label>:520                                     ; preds = %519
  %521 = load i32, i32* %j, align 4, !tbaa !1
  %522 = add nsw i32 %521, 1
  store i32 %522, i32* %j, align 4, !tbaa !1
  br label %488

; <label>:523                                     ; preds = %488
  br label %524

; <label>:524                                     ; preds = %523
  %525 = load i32, i32* %i, align 4, !tbaa !1
  %526 = add nsw i32 %525, 1
  store i32 %526, i32* %i, align 4, !tbaa !1
  br label %484

; <label>:527                                     ; preds = %484
  %528 = load i32, i32* @g_1724, align 4, !tbaa !1
  %529 = sext i32 %528 to i64
  %530 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %529, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.68, i32 0, i32 0), i32 %530)
  %531 = load volatile i64, i64* @g_1742, align 8, !tbaa !7
  %532 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %531, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.69, i32 0, i32 0), i32 %532)
  %533 = load volatile i32, i32* @g_1829, align 4, !tbaa !1
  %534 = zext i32 %533 to i64
  %535 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %534, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.70, i32 0, i32 0), i32 %535)
  %536 = load volatile i32, i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_1970, i32 0, i32 0), align 4, !tbaa !1
  %537 = zext i32 %536 to i64
  %538 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %537, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.71, i32 0, i32 0), i32 %538)
  %539 = load volatile i16, i16* bitcast ({ i32, [4 x i8] }* @g_1970 to i16*), align 2, !tbaa !10
  %540 = sext i16 %539 to i64
  %541 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %540, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i32 0, i32 0), i32 %541)
  %542 = load volatile i8, i8* bitcast ({ i32, [4 x i8] }* @g_1970 to i8*), align 1, !tbaa !9
  %543 = zext i8 %542 to i64
  %544 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %543, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.73, i32 0, i32 0), i32 %544)
  %545 = load i64, i64* @g_2016, align 8, !tbaa !7
  %546 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %545, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.74, i32 0, i32 0), i32 %546)
  %547 = load i32, i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_2190, i32 0, i32 0), align 4, !tbaa !1
  %548 = zext i32 %547 to i64
  %549 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %548, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.75, i32 0, i32 0), i32 %549)
  %550 = load i16, i16* bitcast ({ i32, [4 x i8] }* @g_2190 to i16*), align 2, !tbaa !10
  %551 = sext i16 %550 to i64
  %552 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %551, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.76, i32 0, i32 0), i32 %552)
  %553 = load i8, i8* bitcast ({ i32, [4 x i8] }* @g_2190 to i8*), align 1, !tbaa !9
  %554 = zext i8 %553 to i64
  %555 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %554, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.77, i32 0, i32 0), i32 %555)
  %556 = load volatile i32, i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_2252, i32 0, i32 0), align 4, !tbaa !1
  %557 = zext i32 %556 to i64
  %558 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %557, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.78, i32 0, i32 0), i32 %558)
  %559 = load volatile i16, i16* bitcast ({ i32, [4 x i8] }* @g_2252 to i16*), align 2, !tbaa !10
  %560 = sext i16 %559 to i64
  %561 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %560, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.79, i32 0, i32 0), i32 %561)
  %562 = load volatile i8, i8* bitcast ({ i32, [4 x i8] }* @g_2252 to i8*), align 1, !tbaa !9
  %563 = zext i8 %562 to i64
  %564 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %563, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.80, i32 0, i32 0), i32 %564)
  %565 = load volatile i8, i8* @g_2286, align 1, !tbaa !9
  %566 = sext i8 %565 to i64
  %567 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %566, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.81, i32 0, i32 0), i32 %567)
  %568 = load volatile i32, i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_2311, i32 0, i32 0), align 4, !tbaa !1
  %569 = zext i32 %568 to i64
  %570 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %569, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.82, i32 0, i32 0), i32 %570)
  %571 = load volatile i16, i16* bitcast ({ i32, [4 x i8] }* @g_2311 to i16*), align 2, !tbaa !10
  %572 = sext i16 %571 to i64
  %573 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %572, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.83, i32 0, i32 0), i32 %573)
  %574 = load volatile i8, i8* bitcast ({ i32, [4 x i8] }* @g_2311 to i8*), align 1, !tbaa !9
  %575 = zext i8 %574 to i64
  %576 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %575, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.84, i32 0, i32 0), i32 %576)
  %577 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %578 = zext i32 %577 to i64
  %579 = xor i64 %578, 4294967295
  %580 = trunc i64 %579 to i32
  %581 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %580, i32 %581)
  %582 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %582) #1
  %583 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %583) #1
  %584 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %584) #1
  %585 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %585) #1
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
  %l_17 = alloca [7 x i8*], align 16
  %l_38 = alloca i32, align 4
  %l_39 = alloca i32*, align 8
  %l_2191 = alloca i8****, align 8
  %l_2198 = alloca i32, align 4
  %l_2205 = alloca i16***, align 8
  %l_2204 = alloca i16****, align 8
  %l_2216 = alloca i8, align 1
  %l_2251 = alloca i32, align 4
  %l_2253 = alloca %union.U0*, align 8
  %l_2262 = alloca i16, align 2
  %l_2292 = alloca i32, align 4
  %l_2293 = alloca i32, align 4
  %l_2295 = alloca i32, align 4
  %l_2296 = alloca i32, align 4
  %l_2297 = alloca [6 x i8], align 1
  %l_2308 = alloca i32, align 4
  %l_2334 = alloca i16, align 2
  %i = alloca i32, align 4
  %1 = bitcast [7 x i8*]* %l_17 to i8*
  call void @llvm.lifetime.start(i64 56, i8* %1) #1
  %2 = bitcast [7 x i8*]* %l_17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* bitcast ([7 x i8*]* @func_1.l_17 to i8*), i64 56, i32 16, i1 false)
  %3 = bitcast i32* %l_38 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 -8, i32* %l_38, align 4, !tbaa !1
  %4 = bitcast i32** %l_39 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store i32* @g_40, i32** %l_39, align 8, !tbaa !5
  %5 = bitcast i8***** %l_2191 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store i8**** @g_1387, i8***** %l_2191, align 8, !tbaa !5
  %6 = bitcast i32* %l_2198 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 1473133028, i32* %l_2198, align 4, !tbaa !1
  %7 = bitcast i16**** %l_2205 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store i16*** @g_1708, i16**** %l_2205, align 8, !tbaa !5
  %8 = bitcast i16***** %l_2204 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i16**** %l_2205, i16***** %l_2204, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_2216) #1
  store i8 33, i8* %l_2216, align 1, !tbaa !9
  %9 = bitcast i32* %l_2251 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 -1298607166, i32* %l_2251, align 4, !tbaa !1
  %10 = bitcast %union.U0** %l_2253 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store %union.U0* getelementptr inbounds ([2 x %union.U0], [2 x %union.U0]* @g_2254, i32 0, i64 1), %union.U0** %l_2253, align 8, !tbaa !5
  %11 = bitcast i16* %l_2262 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %11) #1
  store i16 24399, i16* %l_2262, align 2, !tbaa !10
  %12 = bitcast i32* %l_2292 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  store i32 800749695, i32* %l_2292, align 4, !tbaa !1
  %13 = bitcast i32* %l_2293 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  store i32 8, i32* %l_2293, align 4, !tbaa !1
  %14 = bitcast i32* %l_2295 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  store i32 -7, i32* %l_2295, align 4, !tbaa !1
  %15 = bitcast i32* %l_2296 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  store i32 -1721292974, i32* %l_2296, align 4, !tbaa !1
  %16 = bitcast [6 x i8]* %l_2297 to i8*
  call void @llvm.lifetime.start(i64 6, i8* %16) #1
  %17 = bitcast i32* %l_2308 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  store i32 -1370190231, i32* %l_2308, align 4, !tbaa !1
  %18 = bitcast i16* %l_2334 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %18) #1
  store i16 16686, i16* %l_2334, align 2, !tbaa !10
  %19 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %20

; <label>:20                                      ; preds = %27, %0
  %21 = load i32, i32* %i, align 4, !tbaa !1
  %22 = icmp slt i32 %21, 6
  br i1 %22, label %23, label %30

; <label>:23                                      ; preds = %20
  %24 = load i32, i32* %i, align 4, !tbaa !1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [6 x i8], [6 x i8]* %l_2297, i32 0, i64 %25
  store i8 4, i8* %26, align 1, !tbaa !9
  br label %27

; <label>:27                                      ; preds = %23
  %28 = load i32, i32* %i, align 4, !tbaa !1
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %i, align 4, !tbaa !1
  br label %20

; <label>:30                                      ; preds = %20
  %31 = load i16, i16* bitcast ({ i32, [4 x i8] }* @g_541 to i16*), align 2, !tbaa !10
  %32 = sext i16 %31 to i64
  %33 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  %34 = bitcast i16* %l_2334 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %34) #1
  %35 = bitcast i32* %l_2308 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = bitcast [6 x i8]* %l_2297 to i8*
  call void @llvm.lifetime.end(i64 6, i8* %36) #1
  %37 = bitcast i32* %l_2296 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %38 = bitcast i32* %l_2295 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %39 = bitcast i32* %l_2293 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %40 = bitcast i32* %l_2292 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  %41 = bitcast i16* %l_2262 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %41) #1
  %42 = bitcast %union.U0** %l_2253 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  %43 = bitcast i32* %l_2251 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_2216) #1
  %44 = bitcast i16***** %l_2204 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #1
  %45 = bitcast i16**** %l_2205 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  %46 = bitcast i32* %l_2198 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #1
  %47 = bitcast i8***** %l_2191 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  %48 = bitcast i32** %l_39 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  %49 = bitcast i32* %l_38 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  %50 = bitcast [7 x i8*]* %l_17 to i8*
  call void @llvm.lifetime.end(i64 56, i8* %50) #1
  ret i64 %32
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
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.85, i32 0, i32 0), i8* %8, i64 %11)
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
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.86, i32 0, i32 0), i32 %3)
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
