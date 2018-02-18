; ModuleID = '00120.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S0 = type { i64, i32, i16, i32, i32, i16 }

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_2 = internal global i32 -1, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"g_2\00", align 1
@g_6 = internal global i32 -2, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"g_6\00", align 1
@g_87 = internal global i8 1, align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"g_87\00", align 1
@g_95 = internal global i32 1, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"g_95\00", align 1
@g_100 = internal global i16 -1, align 2
@.str.5 = private unnamed_addr constant [6 x i8] c"g_100\00", align 1
@g_132 = internal global i16 7651, align 2
@.str.6 = private unnamed_addr constant [6 x i8] c"g_132\00", align 1
@g_170 = internal global i8 33, align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"g_170\00", align 1
@g_173 = internal global %struct.S0 { i64 0, i32 1231938739, i16 -8386, i32 -1558619298, i32 -1, i16 5 }, align 8
@.str.8 = private unnamed_addr constant [9 x i8] c"g_173.f0\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"g_173.f1\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"g_173.f2\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"g_173.f3\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"g_173.f4\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"g_173.f5\00", align 1
@g_180 = internal global i64 0, align 8
@.str.14 = private unnamed_addr constant [6 x i8] c"g_180\00", align 1
@g_294 = internal global [3 x [7 x [1 x i8]]] [[7 x [1 x i8]] [[1 x i8] c"\02", [1 x i8] c"\F9", [1 x i8] c"\02", [1 x i8] c"\88", [1 x i8] c"\02", [1 x i8] c"\F9", [1 x i8] c"\02"], [7 x [1 x i8]] [[1 x i8] c"\88", [1 x i8] c"\02", [1 x i8] c"\F9", [1 x i8] c"\02", [1 x i8] c"\88", [1 x i8] c"\02", [1 x i8] c"\F9"], [7 x [1 x i8]] [[1 x i8] c"\02", [1 x i8] c"\88", [1 x i8] c"\02", [1 x i8] c"\F9", [1 x i8] c"\02", [1 x i8] c"\88", [1 x i8] c"\02"]], align 16
@.str.15 = private unnamed_addr constant [15 x i8] c"g_294[i][j][k]\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"index = [%d][%d][%d]\0A\00", align 1
@g_369 = internal global i16 -22419, align 2
@.str.17 = private unnamed_addr constant [6 x i8] c"g_369\00", align 1
@g_385 = internal global %struct.S0 { i64 -6546737221364285330, i32 1301086660, i16 -12530, i32 1280671265, i32 1, i16 32481 }, align 8
@.str.18 = private unnamed_addr constant [9 x i8] c"g_385.f0\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"g_385.f1\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"g_385.f2\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"g_385.f3\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"g_385.f4\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"g_385.f5\00", align 1
@g_387 = internal global i32 1065240960, align 4
@.str.24 = private unnamed_addr constant [6 x i8] c"g_387\00", align 1
@g_427 = internal global i8 0, align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"g_427\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"g_435\00", align 1
@g_469 = internal global i64 -10, align 8
@.str.27 = private unnamed_addr constant [6 x i8] c"g_469\00", align 1
@g_525 = internal global i32 -731649184, align 4
@.str.28 = private unnamed_addr constant [6 x i8] c"g_525\00", align 1
@g_527 = internal global [1 x i8] c"\FF", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"g_527[i]\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_558 = internal global i16 -22294, align 2
@.str.31 = private unnamed_addr constant [6 x i8] c"g_558\00", align 1
@g_573 = internal global %struct.S0 { i64 -1623689705959949651, i32 -10, i16 -17116, i32 1058505487, i32 -1558837762, i16 17099 }, align 8
@.str.32 = private unnamed_addr constant [9 x i8] c"g_573.f0\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"g_573.f1\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"g_573.f2\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"g_573.f3\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"g_573.f4\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"g_573.f5\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"g_575\00", align 1
@g_576 = internal global %struct.S0 { i64 0, i32 1117291350, i16 -10346, i32 467374969, i32 8, i16 10847 }, align 8
@.str.39 = private unnamed_addr constant [9 x i8] c"g_576.f0\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"g_576.f1\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"g_576.f2\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"g_576.f3\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"g_576.f4\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"g_576.f5\00", align 1
@g_578 = internal global i64 -4696481071981708464, align 8
@.str.45 = private unnamed_addr constant [6 x i8] c"g_578\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"g_586\00", align 1
@g_612 = internal global i16 10325, align 2
@.str.47 = private unnamed_addr constant [6 x i8] c"g_612\00", align 1
@g_691 = internal global i32 1944067667, align 4
@.str.48 = private unnamed_addr constant [6 x i8] c"g_691\00", align 1
@g_739 = internal global %struct.S0 { i64 -9215401357134146665, i32 -1896354844, i16 21143, i32 -7, i32 2142331780, i16 6 }, align 8
@.str.49 = private unnamed_addr constant [9 x i8] c"g_739.f0\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"g_739.f1\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"g_739.f2\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"g_739.f3\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"g_739.f4\00", align 1
@.str.54 = private unnamed_addr constant [9 x i8] c"g_739.f5\00", align 1
@g_826 = internal global i16 0, align 2
@.str.55 = private unnamed_addr constant [6 x i8] c"g_826\00", align 1
@g_876 = internal global i32 -1, align 4
@.str.56 = private unnamed_addr constant [6 x i8] c"g_876\00", align 1
@g_1006 = internal global i64 -4081122013479619022, align 8
@.str.57 = private unnamed_addr constant [7 x i8] c"g_1006\00", align 1
@g_1007 = internal global i16 -21791, align 2
@.str.58 = private unnamed_addr constant [7 x i8] c"g_1007\00", align 1
@g_1014 = internal global i64 2172733083153944741, align 8
@.str.59 = private unnamed_addr constant [7 x i8] c"g_1014\00", align 1
@g_1017 = internal global i32 -653193987, align 4
@.str.60 = private unnamed_addr constant [7 x i8] c"g_1017\00", align 1
@g_1089 = internal global i64 1, align 8
@.str.61 = private unnamed_addr constant [7 x i8] c"g_1089\00", align 1
@g_1090 = internal global %struct.S0 { i64 -4880177326437079683, i32 -876389355, i16 1, i32 649648287, i32 1, i16 29743 }, align 8
@.str.62 = private unnamed_addr constant [10 x i8] c"g_1090.f0\00", align 1
@.str.63 = private unnamed_addr constant [10 x i8] c"g_1090.f1\00", align 1
@.str.64 = private unnamed_addr constant [10 x i8] c"g_1090.f2\00", align 1
@.str.65 = private unnamed_addr constant [10 x i8] c"g_1090.f3\00", align 1
@.str.66 = private unnamed_addr constant [10 x i8] c"g_1090.f4\00", align 1
@.str.67 = private unnamed_addr constant [10 x i8] c"g_1090.f5\00", align 1
@g_1243 = internal global %struct.S0 { i64 -1, i32 259105831, i16 -16272, i32 1, i32 0, i16 -21575 }, align 8
@.str.68 = private unnamed_addr constant [10 x i8] c"g_1243.f0\00", align 1
@.str.69 = private unnamed_addr constant [10 x i8] c"g_1243.f1\00", align 1
@.str.70 = private unnamed_addr constant [10 x i8] c"g_1243.f2\00", align 1
@.str.71 = private unnamed_addr constant [10 x i8] c"g_1243.f3\00", align 1
@.str.72 = private unnamed_addr constant [10 x i8] c"g_1243.f4\00", align 1
@.str.73 = private unnamed_addr constant [10 x i8] c"g_1243.f5\00", align 1
@g_1377 = internal global i32 -1, align 4
@.str.74 = private unnamed_addr constant [7 x i8] c"g_1377\00", align 1
@g_1409 = internal global %struct.S0 { i64 -6, i32 -1, i16 14485, i32 0, i32 -7, i16 -30797 }, align 8
@.str.75 = private unnamed_addr constant [10 x i8] c"g_1409.f0\00", align 1
@.str.76 = private unnamed_addr constant [10 x i8] c"g_1409.f1\00", align 1
@.str.77 = private unnamed_addr constant [10 x i8] c"g_1409.f2\00", align 1
@.str.78 = private unnamed_addr constant [10 x i8] c"g_1409.f3\00", align 1
@.str.79 = private unnamed_addr constant [10 x i8] c"g_1409.f4\00", align 1
@.str.80 = private unnamed_addr constant [10 x i8] c"g_1409.f5\00", align 1
@g_1424 = internal global %struct.S0 { i64 6215493185188904360, i32 -1214522754, i16 -10, i32 1, i32 9, i16 -5 }, align 8
@.str.81 = private unnamed_addr constant [10 x i8] c"g_1424.f0\00", align 1
@.str.82 = private unnamed_addr constant [10 x i8] c"g_1424.f1\00", align 1
@.str.83 = private unnamed_addr constant [10 x i8] c"g_1424.f2\00", align 1
@.str.84 = private unnamed_addr constant [10 x i8] c"g_1424.f3\00", align 1
@.str.85 = private unnamed_addr constant [10 x i8] c"g_1424.f4\00", align 1
@.str.86 = private unnamed_addr constant [10 x i8] c"g_1424.f5\00", align 1
@.str.87 = private unnamed_addr constant [7 x i8] c"g_1513\00", align 1
@g_1738 = internal global i32 -7, align 4
@.str.88 = private unnamed_addr constant [7 x i8] c"g_1738\00", align 1
@g_1893 = internal global i32 1711269546, align 4
@.str.89 = private unnamed_addr constant [7 x i8] c"g_1893\00", align 1
@g_1902 = internal global i8 41, align 1
@.str.90 = private unnamed_addr constant [7 x i8] c"g_1902\00", align 1
@g_2014 = internal global i8 1, align 1
@.str.91 = private unnamed_addr constant [7 x i8] c"g_2014\00", align 1
@g_2145 = internal global %struct.S0 { i64 -6, i32 -1571904035, i16 12454, i32 -168888885, i32 1, i16 1 }, align 8
@.str.92 = private unnamed_addr constant [10 x i8] c"g_2145.f0\00", align 1
@.str.93 = private unnamed_addr constant [10 x i8] c"g_2145.f1\00", align 1
@.str.94 = private unnamed_addr constant [10 x i8] c"g_2145.f2\00", align 1
@.str.95 = private unnamed_addr constant [10 x i8] c"g_2145.f3\00", align 1
@.str.96 = private unnamed_addr constant [10 x i8] c"g_2145.f4\00", align 1
@.str.97 = private unnamed_addr constant [10 x i8] c"g_2145.f5\00", align 1
@g_2332 = internal global %struct.S0 { i64 1, i32 -9, i16 -11626, i32 879770592, i32 -2, i16 1 }, align 8
@.str.98 = private unnamed_addr constant [10 x i8] c"g_2332.f0\00", align 1
@.str.99 = private unnamed_addr constant [10 x i8] c"g_2332.f1\00", align 1
@.str.100 = private unnamed_addr constant [10 x i8] c"g_2332.f2\00", align 1
@.str.101 = private unnamed_addr constant [10 x i8] c"g_2332.f3\00", align 1
@.str.102 = private unnamed_addr constant [10 x i8] c"g_2332.f4\00", align 1
@.str.103 = private unnamed_addr constant [10 x i8] c"g_2332.f5\00", align 1
@g_2386 = internal global i16 13680, align 2
@.str.104 = private unnamed_addr constant [7 x i8] c"g_2386\00", align 1
@g_2484 = internal global %struct.S0 { i64 8082074188271635200, i32 -2078210643, i16 0, i32 -1695037593, i32 -1720777583, i16 6 }, align 8
@.str.105 = private unnamed_addr constant [10 x i8] c"g_2484.f0\00", align 1
@.str.106 = private unnamed_addr constant [10 x i8] c"g_2484.f1\00", align 1
@.str.107 = private unnamed_addr constant [10 x i8] c"g_2484.f2\00", align 1
@.str.108 = private unnamed_addr constant [10 x i8] c"g_2484.f3\00", align 1
@.str.109 = private unnamed_addr constant [10 x i8] c"g_2484.f4\00", align 1
@.str.110 = private unnamed_addr constant [10 x i8] c"g_2484.f5\00", align 1
@g_2519 = internal global %struct.S0 { i64 -4, i32 5, i16 0, i32 -1, i32 1577029708, i16 32202 }, align 8
@.str.111 = private unnamed_addr constant [10 x i8] c"g_2519.f0\00", align 1
@.str.112 = private unnamed_addr constant [10 x i8] c"g_2519.f1\00", align 1
@.str.113 = private unnamed_addr constant [10 x i8] c"g_2519.f2\00", align 1
@.str.114 = private unnamed_addr constant [10 x i8] c"g_2519.f3\00", align 1
@.str.115 = private unnamed_addr constant [10 x i8] c"g_2519.f4\00", align 1
@.str.116 = private unnamed_addr constant [10 x i8] c"g_2519.f5\00", align 1
@g_2524 = internal global [9 x [6 x [4 x i8]]] [[6 x [4 x i8]] [[4 x i8] c"\01\C0V\00", [4 x i8] c"\07\FF\CB\C0", [4 x i8] c"\DC\FF\CB\01", [4 x i8] c"\07\FAV%", [4 x i8] c"\014\03\00", [4 x i8] c"\03\00\FF\FA"], [6 x [4 x i8]] [[4 x i8] c"\01\00\07\DD", [4 x i8] c"\FE\99\09\01", [4 x i8] c"\AD\01\C0\00", [4 x i8] c"\00\00\FAt", [4 x i8] c"o\C0\FF ", [4 x i8] c"\01\00\00\FF"], [6 x [4 x i8]] [[4 x i8] c"\DD\C3%4", [4 x i8] c"t\07\F7\99", [4 x i8] c"l\00\01\96", [4 x i8] c"\07\F9\F9\07", [4 x i8] c"\04\E9\01\AA", [4 x i8] c"\00\00\05\C3"], [6 x [4 x i8]] [[4 x i8] c"\C0\00o\C3", [4 x i8] c"\01\00\09\AA", [4 x i8] c"%\E9\01\07", [4 x i8] c"\00\F9\FF\96", [4 x i8] c"\FA\00\C3\99", [4 x i8] c"\DD\07\FA4"], [6 x [4 x i8]] [[4 x i8] c"\01\078\FA", [4 x i8] c"\00\00\AA\02", [4 x i8] c"t\96\01 ", [4 x i8] c" \00\CF\FF", [4 x i8] c"\FF\DC\F9\00", [4 x i8] c"l!\00\AA"], [6 x [4 x i8]] [[4 x i8] c"\5C\FB\AA\FF", [4 x i8] c"\C0\01\A7\01", [4 x i8] c"\F9\00\8E\05", [4 x i8] c"\DD\00\01\00", [4 x i8] c"\09\8B\CB\96", [4 x i8] c"\09\FA\01l"], [6 x [4 x i8]] [[4 x i8] c"\DD\96\8E\E9", [4 x i8] c"\F9\07\A7\8E", [4 x i8] c"\C0t\AA4", [4 x i8] c"\5C\01\00 ", [4 x i8] c"l\FA\F9\CB", [4 x i8] c"\FF\F9\CF\00"], [6 x [4 x i8]] [[4 x i8] c" !\01\05", [4 x i8] c"tV\AA\C3", [4 x i8] c"\00\BA8\01", [4 x i8] c"\01\FB\FA\00", [4 x i8] c"\DD\E9\C3\00", [4 x i8] c"\FA\8B\FF\FF"], [6 x [4 x i8]] [[4 x i8] c"\00\00\01\99", [4 x i8] c"%\01\09\E9", [4 x i8] c"\01\00o\09", [4 x i8] c"\C0\00\05\E9", [4 x i8] c"\00\01\01\99", [4 x i8] c"\04\00\F9\FF"]], align 16
@.str.117 = private unnamed_addr constant [16 x i8] c"g_2524[i][j][k]\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@func_1.l_27 = private unnamed_addr constant [3 x [2 x i32]] [[2 x i32] [i32 -1129207896, i32 -1129207896], [2 x i32] [i32 -1129207896, i32 -1129207896], [2 x i32] [i32 -1129207896, i32 -1129207896]], align 16
@g_395 = internal global i16*** @g_396, align 8
@g_5 = internal global i32* @g_6, align 8
@g_606 = internal global i8* @g_435, align 8
@g_939 = internal global i16***** @g_394, align 8
@g_577 = internal global i64* @g_578, align 8
@g_396 = internal global i16** @g_397, align 8
@g_397 = internal global i16* @g_132, align 8
@g_435 = internal constant i8 52, align 1
@g_394 = internal global i16**** @g_395, align 8
@.str.118 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@.str.119 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

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
  %91 = load i32, i32* @g_2, align 4, !tbaa !1
  %92 = sext i32 %91 to i64
  %93 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %93)
  %94 = load i32, i32* @g_6, align 4, !tbaa !1
  %95 = sext i32 %94 to i64
  %96 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %95, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 %96)
  %97 = load i8, i8* @g_87, align 1, !tbaa !9
  %98 = sext i8 %97 to i64
  %99 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 %99)
  %100 = load i32, i32* @g_95, align 4, !tbaa !1
  %101 = sext i32 %100 to i64
  %102 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %101, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %102)
  %103 = load i16, i16* @g_100, align 2, !tbaa !10
  %104 = zext i16 %103 to i64
  %105 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %104, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i32 %105)
  %106 = load i16, i16* @g_132, align 2, !tbaa !10
  %107 = sext i16 %106 to i64
  %108 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %107, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i32 %108)
  %109 = load i8, i8* @g_170, align 1, !tbaa !9
  %110 = zext i8 %109 to i64
  %111 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %110, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i32 %111)
  %112 = load i64, i64* getelementptr inbounds (%struct.S0, %struct.S0* @g_173, i32 0, i32 0), align 8, !tbaa !12
  %113 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %112, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i32 %113)
  %114 = load volatile i32, i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_173, i32 0, i32 1), align 4, !tbaa !14
  %115 = sext i32 %114 to i64
  %116 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %115, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i32 %116)
  %117 = load i16, i16* getelementptr inbounds (%struct.S0, %struct.S0* @g_173, i32 0, i32 2), align 2, !tbaa !15
  %118 = zext i16 %117 to i64
  %119 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %118, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i32 %119)
  %120 = load i32, i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_173, i32 0, i32 3), align 4, !tbaa !16
  %121 = sext i32 %120 to i64
  %122 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %121, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i32 %122)
  %123 = load volatile i32, i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_173, i32 0, i32 4), align 4, !tbaa !17
  %124 = sext i32 %123 to i64
  %125 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %124, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i32 %125)
  %126 = load volatile i16, i16* getelementptr inbounds (%struct.S0, %struct.S0* @g_173, i32 0, i32 5), align 2, !tbaa !18
  %127 = zext i16 %126 to i64
  %128 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %127, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i32 %128)
  %129 = load i64, i64* @g_180, align 8, !tbaa !7
  %130 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %129, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 %130)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %131

; <label>:131                                     ; preds = %171, %89
  %132 = load i32, i32* %i, align 4, !tbaa !1
  %133 = icmp slt i32 %132, 3
  br i1 %133, label %134, label %174

; <label>:134                                     ; preds = %131
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %135

; <label>:135                                     ; preds = %167, %134
  %136 = load i32, i32* %j, align 4, !tbaa !1
  %137 = icmp slt i32 %136, 7
  br i1 %137, label %138, label %170

; <label>:138                                     ; preds = %135
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %139

; <label>:139                                     ; preds = %163, %138
  %140 = load i32, i32* %k, align 4, !tbaa !1
  %141 = icmp slt i32 %140, 1
  br i1 %141, label %142, label %166

; <label>:142                                     ; preds = %139
  %143 = load i32, i32* %k, align 4, !tbaa !1
  %144 = sext i32 %143 to i64
  %145 = load i32, i32* %j, align 4, !tbaa !1
  %146 = sext i32 %145 to i64
  %147 = load i32, i32* %i, align 4, !tbaa !1
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [3 x [7 x [1 x i8]]], [3 x [7 x [1 x i8]]]* @g_294, i32 0, i64 %148
  %150 = getelementptr inbounds [7 x [1 x i8]], [7 x [1 x i8]]* %149, i32 0, i64 %146
  %151 = getelementptr inbounds [1 x i8], [1 x i8]* %150, i32 0, i64 %144
  %152 = load volatile i8, i8* %151, align 1, !tbaa !9
  %153 = sext i8 %152 to i64
  %154 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %153, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i32 %154)
  %155 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %162

; <label>:157                                     ; preds = %142
  %158 = load i32, i32* %i, align 4, !tbaa !1
  %159 = load i32, i32* %j, align 4, !tbaa !1
  %160 = load i32, i32* %k, align 4, !tbaa !1
  %161 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0), i32 %158, i32 %159, i32 %160)
  br label %162

; <label>:162                                     ; preds = %157, %142
  br label %163

; <label>:163                                     ; preds = %162
  %164 = load i32, i32* %k, align 4, !tbaa !1
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %k, align 4, !tbaa !1
  br label %139

; <label>:166                                     ; preds = %139
  br label %167

; <label>:167                                     ; preds = %166
  %168 = load i32, i32* %j, align 4, !tbaa !1
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %j, align 4, !tbaa !1
  br label %135

; <label>:170                                     ; preds = %135
  br label %171

; <label>:171                                     ; preds = %170
  %172 = load i32, i32* %i, align 4, !tbaa !1
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %i, align 4, !tbaa !1
  br label %131

; <label>:174                                     ; preds = %131
  %175 = load volatile i16, i16* @g_369, align 2, !tbaa !10
  %176 = sext i16 %175 to i64
  %177 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %176, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i32 %177)
  %178 = load volatile i64, i64* getelementptr inbounds (%struct.S0, %struct.S0* @g_385, i32 0, i32 0), align 8, !tbaa !12
  %179 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %178, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i32 %179)
  %180 = load volatile i32, i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_385, i32 0, i32 1), align 4, !tbaa !14
  %181 = sext i32 %180 to i64
  %182 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %181, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i32 %182)
  %183 = load volatile i16, i16* getelementptr inbounds (%struct.S0, %struct.S0* @g_385, i32 0, i32 2), align 2, !tbaa !15
  %184 = zext i16 %183 to i64
  %185 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %184, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i32 %185)
  %186 = load volatile i32, i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_385, i32 0, i32 3), align 4, !tbaa !16
  %187 = sext i32 %186 to i64
  %188 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %187, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i32 %188)
  %189 = load volatile i32, i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_385, i32 0, i32 4), align 4, !tbaa !17
  %190 = sext i32 %189 to i64
  %191 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %190, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i32 %191)
  %192 = load volatile i16, i16* getelementptr inbounds (%struct.S0, %struct.S0* @g_385, i32 0, i32 5), align 2, !tbaa !18
  %193 = zext i16 %192 to i64
  %194 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %193, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i32 %194)
  %195 = load i32, i32* @g_387, align 4, !tbaa !1
  %196 = zext i32 %195 to i64
  %197 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %196, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %197)
  %198 = load volatile i8, i8* @g_427, align 1, !tbaa !9
  %199 = zext i8 %198 to i64
  %200 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %199, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i32 %200)
  %201 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i32 %201)
  %202 = load i64, i64* @g_469, align 8, !tbaa !7
  %203 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %202, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 %203)
  %204 = load i32, i32* @g_525, align 4, !tbaa !1
  %205 = zext i32 %204 to i64
  %206 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %205, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i32 %206)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %207

; <label>:207                                     ; preds = %223, %174
  %208 = load i32, i32* %i, align 4, !tbaa !1
  %209 = icmp slt i32 %208, 1
  br i1 %209, label %210, label %226

; <label>:210                                     ; preds = %207
  %211 = load i32, i32* %i, align 4, !tbaa !1
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds [1 x i8], [1 x i8]* @g_527, i32 0, i64 %212
  %214 = load i8, i8* %213, align 1, !tbaa !9
  %215 = sext i8 %214 to i64
  %216 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %215, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0), i32 %216)
  %217 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %222

; <label>:219                                     ; preds = %210
  %220 = load i32, i32* %i, align 4, !tbaa !1
  %221 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i32 0, i32 0), i32 %220)
  br label %222

; <label>:222                                     ; preds = %219, %210
  br label %223

; <label>:223                                     ; preds = %222
  %224 = load i32, i32* %i, align 4, !tbaa !1
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %i, align 4, !tbaa !1
  br label %207

; <label>:226                                     ; preds = %207
  %227 = load i16, i16* @g_558, align 2, !tbaa !10
  %228 = sext i16 %227 to i64
  %229 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %228, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i32 %229)
  %230 = load i64, i64* getelementptr inbounds (%struct.S0, %struct.S0* @g_573, i32 0, i32 0), align 8, !tbaa !12
  %231 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %230, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0), i32 %231)
  %232 = load volatile i32, i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_573, i32 0, i32 1), align 4, !tbaa !14
  %233 = sext i32 %232 to i64
  %234 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %233, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0), i32 %234)
  %235 = load i16, i16* getelementptr inbounds (%struct.S0, %struct.S0* @g_573, i32 0, i32 2), align 2, !tbaa !15
  %236 = zext i16 %235 to i64
  %237 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %236, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i32 0, i32 0), i32 %237)
  %238 = load i32, i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_573, i32 0, i32 3), align 4, !tbaa !16
  %239 = sext i32 %238 to i64
  %240 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %239, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i32 0, i32 0), i32 %240)
  %241 = load volatile i32, i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_573, i32 0, i32 4), align 4, !tbaa !17
  %242 = sext i32 %241 to i64
  %243 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %242, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i32 0, i32 0), i32 %243)
  %244 = load volatile i16, i16* getelementptr inbounds (%struct.S0, %struct.S0* @g_573, i32 0, i32 5), align 2, !tbaa !18
  %245 = zext i16 %244 to i64
  %246 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %245, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i32 0, i32 0), i32 %246)
  %247 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0), i32 %247)
  %248 = load volatile i64, i64* getelementptr inbounds (%struct.S0, %struct.S0* @g_576, i32 0, i32 0), align 8, !tbaa !12
  %249 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %248, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i32 0, i32 0), i32 %249)
  %250 = load volatile i32, i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_576, i32 0, i32 1), align 4, !tbaa !14
  %251 = sext i32 %250 to i64
  %252 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %251, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i32 0, i32 0), i32 %252)
  %253 = load volatile i16, i16* getelementptr inbounds (%struct.S0, %struct.S0* @g_576, i32 0, i32 2), align 2, !tbaa !15
  %254 = zext i16 %253 to i64
  %255 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %254, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i32 0, i32 0), i32 %255)
  %256 = load volatile i32, i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_576, i32 0, i32 3), align 4, !tbaa !16
  %257 = sext i32 %256 to i64
  %258 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %257, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i32 0, i32 0), i32 %258)
  %259 = load volatile i32, i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_576, i32 0, i32 4), align 4, !tbaa !17
  %260 = sext i32 %259 to i64
  %261 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %260, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i32 0, i32 0), i32 %261)
  %262 = load volatile i16, i16* getelementptr inbounds (%struct.S0, %struct.S0* @g_576, i32 0, i32 5), align 2, !tbaa !18
  %263 = zext i16 %262 to i64
  %264 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %263, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i32 0, i32 0), i32 %264)
  %265 = load i64, i64* @g_578, align 8, !tbaa !7
  %266 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %265, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0), i32 %266)
  %267 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0), i32 %267)
  %268 = load volatile i16, i16* @g_612, align 2, !tbaa !10
  %269 = zext i16 %268 to i64
  %270 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %269, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i32 0, i32 0), i32 %270)
  %271 = load i32, i32* @g_691, align 4, !tbaa !1
  %272 = sext i32 %271 to i64
  %273 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %272, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i32 0, i32 0), i32 %273)
  %274 = load i64, i64* getelementptr inbounds (%struct.S0, %struct.S0* @g_739, i32 0, i32 0), align 8, !tbaa !12
  %275 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %274, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i32 0, i32 0), i32 %275)
  %276 = load volatile i32, i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_739, i32 0, i32 1), align 4, !tbaa !14
  %277 = sext i32 %276 to i64
  %278 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %277, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i32 0, i32 0), i32 %278)
  %279 = load i16, i16* getelementptr inbounds (%struct.S0, %struct.S0* @g_739, i32 0, i32 2), align 2, !tbaa !15
  %280 = zext i16 %279 to i64
  %281 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %280, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.51, i32 0, i32 0), i32 %281)
  %282 = load i32, i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_739, i32 0, i32 3), align 4, !tbaa !16
  %283 = sext i32 %282 to i64
  %284 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %283, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.52, i32 0, i32 0), i32 %284)
  %285 = load volatile i32, i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_739, i32 0, i32 4), align 4, !tbaa !17
  %286 = sext i32 %285 to i64
  %287 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %286, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.53, i32 0, i32 0), i32 %287)
  %288 = load volatile i16, i16* getelementptr inbounds (%struct.S0, %struct.S0* @g_739, i32 0, i32 5), align 2, !tbaa !18
  %289 = zext i16 %288 to i64
  %290 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %289, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.54, i32 0, i32 0), i32 %290)
  %291 = load i16, i16* @g_826, align 2, !tbaa !10
  %292 = sext i16 %291 to i64
  %293 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %292, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i32 0), i32 %293)
  %294 = load volatile i32, i32* @g_876, align 4, !tbaa !1
  %295 = zext i32 %294 to i64
  %296 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %295, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i32 0, i32 0), i32 %296)
  %297 = load i64, i64* @g_1006, align 8, !tbaa !7
  %298 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %297, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i32 0, i32 0), i32 %298)
  %299 = load i16, i16* @g_1007, align 2, !tbaa !10
  %300 = zext i16 %299 to i64
  %301 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %300, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i32 0, i32 0), i32 %301)
  %302 = load volatile i64, i64* @g_1014, align 8, !tbaa !7
  %303 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %302, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i32 0, i32 0), i32 %303)
  %304 = load volatile i32, i32* @g_1017, align 4, !tbaa !1
  %305 = sext i32 %304 to i64
  %306 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %305, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i32 0, i32 0), i32 %306)
  %307 = load i64, i64* @g_1089, align 8, !tbaa !7
  %308 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %307, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.61, i32 0, i32 0), i32 %308)
  %309 = load i64, i64* getelementptr inbounds (%struct.S0, %struct.S0* @g_1090, i32 0, i32 0), align 8, !tbaa !12
  %310 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %309, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i32 0, i32 0), i32 %310)
  %311 = load volatile i32, i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_1090, i32 0, i32 1), align 4, !tbaa !14
  %312 = sext i32 %311 to i64
  %313 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %312, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.63, i32 0, i32 0), i32 %313)
  %314 = load i16, i16* getelementptr inbounds (%struct.S0, %struct.S0* @g_1090, i32 0, i32 2), align 2, !tbaa !15
  %315 = zext i16 %314 to i64
  %316 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %315, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.64, i32 0, i32 0), i32 %316)
  %317 = load i32, i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_1090, i32 0, i32 3), align 4, !tbaa !16
  %318 = sext i32 %317 to i64
  %319 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %318, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.65, i32 0, i32 0), i32 %319)
  %320 = load volatile i32, i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_1090, i32 0, i32 4), align 4, !tbaa !17
  %321 = sext i32 %320 to i64
  %322 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %321, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.66, i32 0, i32 0), i32 %322)
  %323 = load volatile i16, i16* getelementptr inbounds (%struct.S0, %struct.S0* @g_1090, i32 0, i32 5), align 2, !tbaa !18
  %324 = zext i16 %323 to i64
  %325 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %324, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.67, i32 0, i32 0), i32 %325)
  %326 = load volatile i64, i64* getelementptr inbounds (%struct.S0, %struct.S0* @g_1243, i32 0, i32 0), align 8, !tbaa !12
  %327 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %326, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.68, i32 0, i32 0), i32 %327)
  %328 = load volatile i32, i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_1243, i32 0, i32 1), align 4, !tbaa !14
  %329 = sext i32 %328 to i64
  %330 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %329, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.69, i32 0, i32 0), i32 %330)
  %331 = load volatile i16, i16* getelementptr inbounds (%struct.S0, %struct.S0* @g_1243, i32 0, i32 2), align 2, !tbaa !15
  %332 = zext i16 %331 to i64
  %333 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %332, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.70, i32 0, i32 0), i32 %333)
  %334 = load volatile i32, i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_1243, i32 0, i32 3), align 4, !tbaa !16
  %335 = sext i32 %334 to i64
  %336 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %335, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.71, i32 0, i32 0), i32 %336)
  %337 = load volatile i32, i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_1243, i32 0, i32 4), align 4, !tbaa !17
  %338 = sext i32 %337 to i64
  %339 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %338, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i32 0, i32 0), i32 %339)
  %340 = load volatile i16, i16* getelementptr inbounds (%struct.S0, %struct.S0* @g_1243, i32 0, i32 5), align 2, !tbaa !18
  %341 = zext i16 %340 to i64
  %342 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %341, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.73, i32 0, i32 0), i32 %342)
  %343 = load i32, i32* @g_1377, align 4, !tbaa !1
  %344 = zext i32 %343 to i64
  %345 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %344, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.74, i32 0, i32 0), i32 %345)
  %346 = load volatile i64, i64* getelementptr inbounds (%struct.S0, %struct.S0* @g_1409, i32 0, i32 0), align 8, !tbaa !12
  %347 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %346, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.75, i32 0, i32 0), i32 %347)
  %348 = load volatile i32, i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_1409, i32 0, i32 1), align 4, !tbaa !14
  %349 = sext i32 %348 to i64
  %350 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %349, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.76, i32 0, i32 0), i32 %350)
  %351 = load volatile i16, i16* getelementptr inbounds (%struct.S0, %struct.S0* @g_1409, i32 0, i32 2), align 2, !tbaa !15
  %352 = zext i16 %351 to i64
  %353 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %352, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.77, i32 0, i32 0), i32 %353)
  %354 = load volatile i32, i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_1409, i32 0, i32 3), align 4, !tbaa !16
  %355 = sext i32 %354 to i64
  %356 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %355, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.78, i32 0, i32 0), i32 %356)
  %357 = load volatile i32, i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_1409, i32 0, i32 4), align 4, !tbaa !17
  %358 = sext i32 %357 to i64
  %359 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %358, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.79, i32 0, i32 0), i32 %359)
  %360 = load volatile i16, i16* getelementptr inbounds (%struct.S0, %struct.S0* @g_1409, i32 0, i32 5), align 2, !tbaa !18
  %361 = zext i16 %360 to i64
  %362 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %361, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.80, i32 0, i32 0), i32 %362)
  %363 = load i64, i64* getelementptr inbounds (%struct.S0, %struct.S0* @g_1424, i32 0, i32 0), align 8, !tbaa !12
  %364 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %363, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.81, i32 0, i32 0), i32 %364)
  %365 = load volatile i32, i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_1424, i32 0, i32 1), align 4, !tbaa !14
  %366 = sext i32 %365 to i64
  %367 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %366, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.82, i32 0, i32 0), i32 %367)
  %368 = load i16, i16* getelementptr inbounds (%struct.S0, %struct.S0* @g_1424, i32 0, i32 2), align 2, !tbaa !15
  %369 = zext i16 %368 to i64
  %370 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %369, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.83, i32 0, i32 0), i32 %370)
  %371 = load i32, i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_1424, i32 0, i32 3), align 4, !tbaa !16
  %372 = sext i32 %371 to i64
  %373 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %372, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.84, i32 0, i32 0), i32 %373)
  %374 = load volatile i32, i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_1424, i32 0, i32 4), align 4, !tbaa !17
  %375 = sext i32 %374 to i64
  %376 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %375, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.85, i32 0, i32 0), i32 %376)
  %377 = load volatile i16, i16* getelementptr inbounds (%struct.S0, %struct.S0* @g_1424, i32 0, i32 5), align 2, !tbaa !18
  %378 = zext i16 %377 to i64
  %379 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %378, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.86, i32 0, i32 0), i32 %379)
  %380 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 1088104659, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.87, i32 0, i32 0), i32 %380)
  %381 = load i32, i32* @g_1738, align 4, !tbaa !1
  %382 = zext i32 %381 to i64
  %383 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %382, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.88, i32 0, i32 0), i32 %383)
  %384 = load i32, i32* @g_1893, align 4, !tbaa !1
  %385 = zext i32 %384 to i64
  %386 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %385, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.89, i32 0, i32 0), i32 %386)
  %387 = load i8, i8* @g_1902, align 1, !tbaa !9
  %388 = sext i8 %387 to i64
  %389 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %388, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.90, i32 0, i32 0), i32 %389)
  %390 = load i8, i8* @g_2014, align 1, !tbaa !9
  %391 = zext i8 %390 to i64
  %392 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %391, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.91, i32 0, i32 0), i32 %392)
  %393 = load i64, i64* getelementptr inbounds (%struct.S0, %struct.S0* @g_2145, i32 0, i32 0), align 8, !tbaa !12
  %394 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %393, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.92, i32 0, i32 0), i32 %394)
  %395 = load volatile i32, i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_2145, i32 0, i32 1), align 4, !tbaa !14
  %396 = sext i32 %395 to i64
  %397 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %396, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.93, i32 0, i32 0), i32 %397)
  %398 = load i16, i16* getelementptr inbounds (%struct.S0, %struct.S0* @g_2145, i32 0, i32 2), align 2, !tbaa !15
  %399 = zext i16 %398 to i64
  %400 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %399, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.94, i32 0, i32 0), i32 %400)
  %401 = load i32, i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_2145, i32 0, i32 3), align 4, !tbaa !16
  %402 = sext i32 %401 to i64
  %403 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %402, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.95, i32 0, i32 0), i32 %403)
  %404 = load volatile i32, i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_2145, i32 0, i32 4), align 4, !tbaa !17
  %405 = sext i32 %404 to i64
  %406 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %405, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.96, i32 0, i32 0), i32 %406)
  %407 = load volatile i16, i16* getelementptr inbounds (%struct.S0, %struct.S0* @g_2145, i32 0, i32 5), align 2, !tbaa !18
  %408 = zext i16 %407 to i64
  %409 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %408, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 %409)
  %410 = load i64, i64* getelementptr inbounds (%struct.S0, %struct.S0* @g_2332, i32 0, i32 0), align 8, !tbaa !12
  %411 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %410, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.98, i32 0, i32 0), i32 %411)
  %412 = load volatile i32, i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_2332, i32 0, i32 1), align 4, !tbaa !14
  %413 = sext i32 %412 to i64
  %414 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %413, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.99, i32 0, i32 0), i32 %414)
  %415 = load i16, i16* getelementptr inbounds (%struct.S0, %struct.S0* @g_2332, i32 0, i32 2), align 2, !tbaa !15
  %416 = zext i16 %415 to i64
  %417 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %416, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.100, i32 0, i32 0), i32 %417)
  %418 = load i32, i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_2332, i32 0, i32 3), align 4, !tbaa !16
  %419 = sext i32 %418 to i64
  %420 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %419, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.101, i32 0, i32 0), i32 %420)
  %421 = load volatile i32, i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_2332, i32 0, i32 4), align 4, !tbaa !17
  %422 = sext i32 %421 to i64
  %423 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %422, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.102, i32 0, i32 0), i32 %423)
  %424 = load volatile i16, i16* getelementptr inbounds (%struct.S0, %struct.S0* @g_2332, i32 0, i32 5), align 2, !tbaa !18
  %425 = zext i16 %424 to i64
  %426 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %425, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 %426)
  %427 = load i16, i16* @g_2386, align 2, !tbaa !10
  %428 = zext i16 %427 to i64
  %429 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %428, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.104, i32 0, i32 0), i32 %429)
  %430 = load i64, i64* getelementptr inbounds (%struct.S0, %struct.S0* @g_2484, i32 0, i32 0), align 8, !tbaa !12
  %431 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %430, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.105, i32 0, i32 0), i32 %431)
  %432 = load volatile i32, i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_2484, i32 0, i32 1), align 4, !tbaa !14
  %433 = sext i32 %432 to i64
  %434 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %433, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.106, i32 0, i32 0), i32 %434)
  %435 = load i16, i16* getelementptr inbounds (%struct.S0, %struct.S0* @g_2484, i32 0, i32 2), align 2, !tbaa !15
  %436 = zext i16 %435 to i64
  %437 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %436, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.107, i32 0, i32 0), i32 %437)
  %438 = load i32, i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_2484, i32 0, i32 3), align 4, !tbaa !16
  %439 = sext i32 %438 to i64
  %440 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %439, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.108, i32 0, i32 0), i32 %440)
  %441 = load volatile i32, i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_2484, i32 0, i32 4), align 4, !tbaa !17
  %442 = sext i32 %441 to i64
  %443 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %442, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.109, i32 0, i32 0), i32 %443)
  %444 = load volatile i16, i16* getelementptr inbounds (%struct.S0, %struct.S0* @g_2484, i32 0, i32 5), align 2, !tbaa !18
  %445 = zext i16 %444 to i64
  %446 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %445, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.110, i32 0, i32 0), i32 %446)
  %447 = load volatile i64, i64* getelementptr inbounds (%struct.S0, %struct.S0* @g_2519, i32 0, i32 0), align 8, !tbaa !12
  %448 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %447, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.111, i32 0, i32 0), i32 %448)
  %449 = load volatile i32, i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_2519, i32 0, i32 1), align 4, !tbaa !14
  %450 = sext i32 %449 to i64
  %451 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %450, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.112, i32 0, i32 0), i32 %451)
  %452 = load volatile i16, i16* getelementptr inbounds (%struct.S0, %struct.S0* @g_2519, i32 0, i32 2), align 2, !tbaa !15
  %453 = zext i16 %452 to i64
  %454 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %453, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.113, i32 0, i32 0), i32 %454)
  %455 = load volatile i32, i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_2519, i32 0, i32 3), align 4, !tbaa !16
  %456 = sext i32 %455 to i64
  %457 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %456, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.114, i32 0, i32 0), i32 %457)
  %458 = load volatile i32, i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_2519, i32 0, i32 4), align 4, !tbaa !17
  %459 = sext i32 %458 to i64
  %460 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %459, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.115, i32 0, i32 0), i32 %460)
  %461 = load volatile i16, i16* getelementptr inbounds (%struct.S0, %struct.S0* @g_2519, i32 0, i32 5), align 2, !tbaa !18
  %462 = zext i16 %461 to i64
  %463 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %462, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.116, i32 0, i32 0), i32 %463)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %464

; <label>:464                                     ; preds = %504, %226
  %465 = load i32, i32* %i, align 4, !tbaa !1
  %466 = icmp slt i32 %465, 9
  br i1 %466, label %467, label %507

; <label>:467                                     ; preds = %464
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %468

; <label>:468                                     ; preds = %500, %467
  %469 = load i32, i32* %j, align 4, !tbaa !1
  %470 = icmp slt i32 %469, 6
  br i1 %470, label %471, label %503

; <label>:471                                     ; preds = %468
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %472

; <label>:472                                     ; preds = %496, %471
  %473 = load i32, i32* %k, align 4, !tbaa !1
  %474 = icmp slt i32 %473, 4
  br i1 %474, label %475, label %499

; <label>:475                                     ; preds = %472
  %476 = load i32, i32* %k, align 4, !tbaa !1
  %477 = sext i32 %476 to i64
  %478 = load i32, i32* %j, align 4, !tbaa !1
  %479 = sext i32 %478 to i64
  %480 = load i32, i32* %i, align 4, !tbaa !1
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds [9 x [6 x [4 x i8]]], [9 x [6 x [4 x i8]]]* @g_2524, i32 0, i64 %481
  %483 = getelementptr inbounds [6 x [4 x i8]], [6 x [4 x i8]]* %482, i32 0, i64 %479
  %484 = getelementptr inbounds [4 x i8], [4 x i8]* %483, i32 0, i64 %477
  %485 = load i8, i8* %484, align 1, !tbaa !9
  %486 = sext i8 %485 to i64
  %487 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %486, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.117, i32 0, i32 0), i32 %487)
  %488 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %489 = icmp ne i32 %488, 0
  br i1 %489, label %490, label %495

; <label>:490                                     ; preds = %475
  %491 = load i32, i32* %i, align 4, !tbaa !1
  %492 = load i32, i32* %j, align 4, !tbaa !1
  %493 = load i32, i32* %k, align 4, !tbaa !1
  %494 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0), i32 %491, i32 %492, i32 %493)
  br label %495

; <label>:495                                     ; preds = %490, %475
  br label %496

; <label>:496                                     ; preds = %495
  %497 = load i32, i32* %k, align 4, !tbaa !1
  %498 = add nsw i32 %497, 1
  store i32 %498, i32* %k, align 4, !tbaa !1
  br label %472

; <label>:499                                     ; preds = %472
  br label %500

; <label>:500                                     ; preds = %499
  %501 = load i32, i32* %j, align 4, !tbaa !1
  %502 = add nsw i32 %501, 1
  store i32 %502, i32* %j, align 4, !tbaa !1
  br label %468

; <label>:503                                     ; preds = %468
  br label %504

; <label>:504                                     ; preds = %503
  %505 = load i32, i32* %i, align 4, !tbaa !1
  %506 = add nsw i32 %505, 1
  store i32 %506, i32* %i, align 4, !tbaa !1
  br label %464

; <label>:507                                     ; preds = %464
  %508 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %509 = zext i32 %508 to i64
  %510 = xor i64 %509, 4294967295
  %511 = trunc i64 %510 to i32
  %512 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %511, i32 %512)
  %513 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %513) #1
  %514 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %514) #1
  %515 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %515) #1
  %516 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %516) #1
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
  %l_27 = alloca [3 x [2 x i32]], align 16
  %l_46 = alloca [10 x i32*], align 16
  %l_1786 = alloca i32*, align 8
  %l_1799 = alloca i32*, align 8
  %l_2520 = alloca i8*, align 8
  %l_2521 = alloca i8*, align 8
  %l_2522 = alloca i8*, align 8
  %l_2523 = alloca i8*, align 8
  %l_2525 = alloca i8*, align 8
  %l_2537 = alloca i8*, align 8
  %l_2540 = alloca i64, align 8
  %l_2541 = alloca i32, align 4
  %l_2542 = alloca i8, align 1
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %l_546 = alloca i32*, align 8
  %l_2510 = alloca [9 x i32**], align 16
  %l_2514 = alloca i16****, align 8
  %i1 = alloca i32, align 4
  %1 = alloca %struct.S0, align 8
  %2 = bitcast [3 x [2 x i32]]* %l_27 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %2) #1
  %3 = bitcast [3 x [2 x i32]]* %l_27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* bitcast ([3 x [2 x i32]]* @func_1.l_27 to i8*), i64 24, i32 16, i1 false)
  %4 = bitcast [10 x i32*]* %l_46 to i8*
  call void @llvm.lifetime.start(i64 80, i8* %4) #1
  %5 = bitcast [10 x i32*]* %l_46 to i8*
  call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 80, i32 16, i1 false)
  %6 = bitcast i32** %l_1786 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i32* @g_2, i32** %l_1786, align 8, !tbaa !5
  %7 = bitcast i32** %l_1799 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store i32* @g_2, i32** %l_1799, align 8, !tbaa !5
  %8 = bitcast i8** %l_2520 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i8* null, i8** %l_2520, align 8, !tbaa !5
  %9 = bitcast i8** %l_2521 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store i8* null, i8** %l_2521, align 8, !tbaa !5
  %10 = bitcast i8** %l_2522 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i8* null, i8** %l_2522, align 8, !tbaa !5
  %11 = bitcast i8** %l_2523 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store i8* null, i8** %l_2523, align 8, !tbaa !5
  %12 = bitcast i8** %l_2525 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @g_527, i32 0, i64 0), i8** %l_2525, align 8, !tbaa !5
  %13 = bitcast i8** %l_2537 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  store i8* @g_2014, i8** %l_2537, align 8, !tbaa !5
  %14 = bitcast i64* %l_2540 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  store i64 -1, i64* %l_2540, align 8, !tbaa !7
  %15 = bitcast i32* %l_2541 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  store i32 0, i32* %l_2541, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %l_2542) #1
  store i8 0, i8* %l_2542, align 1, !tbaa !9
  %16 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  store i32 16, i32* @g_2, align 4, !tbaa !1
  br label %18

; <label>:18                                      ; preds = %41, %0
  %19 = load i32, i32* @g_2, align 4, !tbaa !1
  %20 = icmp ne i32 %19, 7
  br i1 %20, label %21, label %46

; <label>:21                                      ; preds = %18
  %22 = bitcast i32** %l_546 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #1
  store i32* @g_2, i32** %l_546, align 8, !tbaa !5
  %23 = bitcast [9 x i32**]* %l_2510 to i8*
  call void @llvm.lifetime.start(i64 72, i8* %23) #1
  %24 = bitcast i16***** %l_2514 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #1
  store i16**** @g_395, i16***** %l_2514, align 8, !tbaa !5
  %25 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #1
  store i32 0, i32* %i1, align 4, !tbaa !1
  br label %26

; <label>:26                                      ; preds = %33, %21
  %27 = load i32, i32* %i1, align 4, !tbaa !1
  %28 = icmp slt i32 %27, 9
  br i1 %28, label %29, label %36

; <label>:29                                      ; preds = %26
  %30 = load i32, i32* %i1, align 4, !tbaa !1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [9 x i32**], [9 x i32**]* %l_2510, i32 0, i64 %31
  store i32** @g_5, i32*** %32, align 8, !tbaa !5
  br label %33

; <label>:33                                      ; preds = %29
  %34 = load i32, i32* %i1, align 4, !tbaa !1
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %i1, align 4, !tbaa !1
  br label %26

; <label>:36                                      ; preds = %26
  store i32* null, i32** @g_5, align 8, !tbaa !5
  %37 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %38 = bitcast i16***** %l_2514 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  %39 = bitcast [9 x i32**]* %l_2510 to i8*
  call void @llvm.lifetime.end(i64 72, i8* %39) #1
  %40 = bitcast i32** %l_546 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  br label %41

; <label>:41                                      ; preds = %36
  %42 = load i32, i32* @g_2, align 4, !tbaa !1
  %43 = sext i32 %42 to i64
  %44 = call i64 @safe_sub_func_uint64_t_u_u(i64 %43, i64 9)
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* @g_2, align 4, !tbaa !1
  br label %18

; <label>:46                                      ; preds = %18
  %47 = bitcast %struct.S0* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %47, i8* bitcast (%struct.S0* @g_2519 to i8*), i64 32, i32 8, i1 true), !tbaa.struct !19
  %48 = load i32*, i32** %l_1786, align 8, !tbaa !5
  %49 = load i32, i32* %48, align 4, !tbaa !1
  %50 = load i8*, i8** @g_606, align 8, !tbaa !5
  %51 = load i8, i8* %50, align 1, !tbaa !9
  store i8 %51, i8* getelementptr inbounds ([9 x [6 x [4 x i8]]], [9 x [6 x [4 x i8]]]* @g_2524, i32 0, i64 0, i64 4, i64 0), align 1, !tbaa !9
  %52 = sext i8 %51 to i64
  %53 = icmp ult i64 %52, 0
  br i1 %53, label %115, label %54

; <label>:54                                      ; preds = %46
  %55 = load i8*, i8** %l_2525, align 8, !tbaa !5
  store i8 -1, i8* %55, align 1, !tbaa !9
  %56 = load i16*****, i16****** @g_939, align 8, !tbaa !5
  %57 = load i16****, i16***** %56, align 8, !tbaa !5
  %58 = load i16***, i16**** %57, align 8, !tbaa !5
  %59 = load i16**, i16*** %58, align 8, !tbaa !5
  %60 = load i16*, i16** %59, align 8, !tbaa !5
  %61 = load i16, i16* %60, align 2, !tbaa !10
  %62 = sext i16 %61 to i32
  %63 = load i32*, i32** %l_1799, align 8, !tbaa !5
  %64 = load i32, i32* %63, align 4, !tbaa !1
  %65 = icmp ne i32 %62, %64
  %66 = zext i1 %65 to i32
  %67 = sext i32 %66 to i64
  %68 = load i32*, i32** %l_1786, align 8, !tbaa !5
  %69 = load i32, i32* %68, align 4, !tbaa !1
  %70 = sext i32 %69 to i64
  %71 = call i64 @safe_div_func_uint64_t_u_u(i64 %67, i64 %70)
  %72 = trunc i64 %71 to i8
  %73 = load i8*, i8** %l_2537, align 8, !tbaa !5
  store i8 %72, i8* %73, align 1, !tbaa !9
  %74 = zext i8 %72 to i32
  %75 = xor i32 %74, -1
  %76 = sext i32 %75 to i64
  %77 = load i32*, i32** %l_1799, align 8, !tbaa !5
  %78 = load i32, i32* %77, align 4, !tbaa !1
  %79 = sext i32 %78 to i64
  %80 = load i64*, i64** @g_577, align 8, !tbaa !5
  %81 = load i64, i64* %80, align 8, !tbaa !7
  %82 = call i64 @safe_div_func_int64_t_s_s(i64 %79, i64 %81)
  %83 = load i32*, i32** %l_1786, align 8, !tbaa !5
  %84 = load i32, i32* %83, align 4, !tbaa !1
  %85 = sext i32 %84 to i64
  %86 = icmp sge i64 %82, %85
  %87 = zext i1 %86 to i32
  %88 = sext i32 %87 to i64
  %89 = call i64 @safe_add_func_int64_t_s_s(i64 %76, i64 %88)
  store i64 %89, i64* %l_2540, align 8, !tbaa !7
  %90 = trunc i64 %89 to i32
  %91 = load i32, i32* @g_387, align 4, !tbaa !1
  %92 = call i32 @safe_sub_func_int32_t_s_s(i32 %90, i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

; <label>:94                                      ; preds = %54
  br label %95

; <label>:95                                      ; preds = %94, %54
  %96 = phi i1 [ true, %54 ], [ true, %94 ]
  %97 = zext i1 %96 to i32
  %98 = sext i32 %97 to i64
  %99 = load i32, i32* %l_2541, align 4, !tbaa !1
  %100 = zext i32 %99 to i64
  %101 = call i64 @safe_sub_func_int64_t_s_s(i64 %98, i64 %100)
  %102 = load i8, i8* @g_87, align 1, !tbaa !9
  %103 = sext i8 %102 to i64
  %104 = and i64 %101, %103
  %105 = load i32*, i32** %l_1786, align 8, !tbaa !5
  %106 = load i32, i32* %105, align 4, !tbaa !1
  %107 = sext i32 %106 to i64
  %108 = icmp sge i64 %104, %107
  %109 = zext i1 %108 to i32
  %110 = call i32 @safe_sub_func_uint32_t_u_u(i32 %109, i32 -8)
  %111 = icmp ult i32 -1, %110
  br i1 %111, label %112, label %113

; <label>:112                                     ; preds = %95
  br label %113

; <label>:113                                     ; preds = %112, %95
  %114 = phi i1 [ false, %95 ], [ true, %112 ]
  br label %115

; <label>:115                                     ; preds = %113, %46
  %116 = phi i1 [ true, %46 ], [ %114, %113 ]
  %117 = zext i1 %116 to i32
  %118 = load i32, i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_2484, i32 0, i32 3), align 4, !tbaa !16
  %119 = sext i32 %118 to i64
  %120 = and i64 3143878258, %119
  %121 = load i32*, i32** %l_1786, align 8, !tbaa !5
  %122 = load i32, i32* %121, align 4, !tbaa !1
  %123 = icmp sgt i32 %49, %122
  %124 = zext i1 %123 to i32
  %125 = trunc i32 %124 to i8
  %126 = call signext i8 @safe_rshift_func_int8_t_s_s(i8 signext %125, i32 0)
  %127 = sext i8 %126 to i32
  %128 = load i8, i8* %l_2542, align 1, !tbaa !9
  %129 = sext i8 %128 to i32
  %130 = or i32 %129, %127
  %131 = trunc i32 %130 to i8
  store i8 %131, i8* %l_2542, align 1, !tbaa !9
  %132 = load i32*, i32** %l_1799, align 8, !tbaa !5
  %133 = load i32, i32* %132, align 4, !tbaa !1
  %134 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %134) #1
  %135 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %135) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_2542) #1
  %136 = bitcast i32* %l_2541 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %136) #1
  %137 = bitcast i64* %l_2540 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %137) #1
  %138 = bitcast i8** %l_2537 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %138) #1
  %139 = bitcast i8** %l_2525 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %139) #1
  %140 = bitcast i8** %l_2523 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %140) #1
  %141 = bitcast i8** %l_2522 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %141) #1
  %142 = bitcast i8** %l_2521 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %142) #1
  %143 = bitcast i8** %l_2520 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %143) #1
  %144 = bitcast i32** %l_1799 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %144) #1
  %145 = bitcast i32** %l_1786 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %145) #1
  %146 = bitcast [10 x i32*]* %l_46 to i8*
  call void @llvm.lifetime.end(i64 80, i8* %146) #1
  %147 = bitcast [3 x [2 x i32]]* %l_27 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %147) #1
  ret i32 %133
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
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.118, i32 0, i32 0), i8* %8, i64 %11)
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
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.119, i32 0, i32 0), i32 %3)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal i64 @safe_sub_func_uint64_t_u_u(i64 %ui1, i64 %ui2) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 %ui1, i64* %1, align 8, !tbaa !7
  store i64 %ui2, i64* %2, align 8, !tbaa !7
  %3 = load i64, i64* %1, align 8, !tbaa !7
  %4 = load i64, i64* %2, align 8, !tbaa !7
  %5 = sub i64 %3, %4
  ret i64 %5
}

; Function Attrs: nounwind uwtable
define internal signext i8 @safe_rshift_func_int8_t_s_s(i8 signext %left, i32 %right) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i32, align 4
  store i8 %left, i8* %1, align 1, !tbaa !9
  store i32 %right, i32* %2, align 4, !tbaa !1
  %3 = load i8, i8* %1, align 1, !tbaa !9
  %4 = sext i8 %3 to i32
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
  %13 = load i8, i8* %1, align 1, !tbaa !9
  %14 = sext i8 %13 to i32
  br label %20

; <label>:15                                      ; preds = %9
  %16 = load i8, i8* %1, align 1, !tbaa !9
  %17 = sext i8 %16 to i32
  %18 = load i32, i32* %2, align 4, !tbaa !1
  %19 = ashr i32 %17, %18
  br label %20

; <label>:20                                      ; preds = %15, %12
  %21 = phi i32 [ %14, %12 ], [ %19, %15 ]
  %22 = trunc i32 %21 to i8
  ret i8 %22
}

; Function Attrs: nounwind uwtable
define internal i32 @safe_sub_func_uint32_t_u_u(i32 %ui1, i32 %ui2) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %ui1, i32* %1, align 4, !tbaa !1
  store i32 %ui2, i32* %2, align 4, !tbaa !1
  %3 = load i32, i32* %1, align 4, !tbaa !1
  %4 = load i32, i32* %2, align 4, !tbaa !1
  %5 = sub i32 %3, %4
  ret i32 %5
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
define internal i64 @safe_add_func_int64_t_s_s(i64 %si1, i64 %si2) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 %si1, i64* %1, align 8, !tbaa !7
  store i64 %si2, i64* %2, align 8, !tbaa !7
  %3 = load i64, i64* %1, align 8, !tbaa !7
  %4 = icmp sgt i64 %3, 0
  br i1 %4, label %5, label %13

; <label>:5                                       ; preds = %0
  %6 = load i64, i64* %2, align 8, !tbaa !7
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %8, label %13

; <label>:8                                       ; preds = %5
  %9 = load i64, i64* %1, align 8, !tbaa !7
  %10 = load i64, i64* %2, align 8, !tbaa !7
  %11 = sub nsw i64 9223372036854775807, %10
  %12 = icmp sgt i64 %9, %11
  br i1 %12, label %24, label %13

; <label>:13                                      ; preds = %8, %5, %0
  %14 = load i64, i64* %1, align 8, !tbaa !7
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %26

; <label>:16                                      ; preds = %13
  %17 = load i64, i64* %2, align 8, !tbaa !7
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %26

; <label>:19                                      ; preds = %16
  %20 = load i64, i64* %1, align 8, !tbaa !7
  %21 = load i64, i64* %2, align 8, !tbaa !7
  %22 = sub nsw i64 -9223372036854775808, %21
  %23 = icmp slt i64 %20, %22
  br i1 %23, label %24, label %26

; <label>:24                                      ; preds = %19, %8
  %25 = load i64, i64* %1, align 8, !tbaa !7
  br label %30

; <label>:26                                      ; preds = %19, %16, %13
  %27 = load i64, i64* %1, align 8, !tbaa !7
  %28 = load i64, i64* %2, align 8, !tbaa !7
  %29 = add nsw i64 %27, %28
  br label %30

; <label>:30                                      ; preds = %26, %24
  %31 = phi i64 [ %25, %24 ], [ %29, %26 ]
  ret i64 %31
}

; Function Attrs: nounwind uwtable
define internal i64 @safe_div_func_uint64_t_u_u(i64 %ui1, i64 %ui2) #0 {
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
  %10 = udiv i64 %8, %9
  br label %11

; <label>:11                                      ; preds = %7, %5
  %12 = phi i64 [ %6, %5 ], [ %10, %7 ]
  ret i64 %12
}

; Function Attrs: nounwind uwtable
define internal i64 @safe_div_func_int64_t_s_s(i64 %si1, i64 %si2) #0 {
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
  %16 = sdiv i64 %14, %15
  br label %17

; <label>:17                                      ; preds = %13, %11
  %18 = phi i64 [ %12, %11 ], [ %16, %13 ]
  ret i64 %18
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
!12 = !{!13, !8, i64 0}
!13 = !{!"S0", !8, i64 0, !2, i64 8, !11, i64 12, !2, i64 16, !2, i64 20, !11, i64 24}
!14 = !{!13, !2, i64 8}
!15 = !{!13, !11, i64 12}
!16 = !{!13, !2, i64 16}
!17 = !{!13, !2, i64 20}
!18 = !{!13, !11, i64 24}
!19 = !{i64 0, i64 8, !7, i64 8, i64 4, !1, i64 12, i64 2, !10, i64 16, i64 4, !1, i64 20, i64 4, !1, i64 24, i64 2, !10}
