; ModuleID = '00542.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"g_5\00", align 1
@g_40 = internal global [7 x i16] [i16 4492, i16 0, i16 4492, i16 4492, i16 0, i16 4492, i16 4492], align 2
@.str.2 = private unnamed_addr constant [8 x i8] c"g_40[i]\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_42 = internal global [8 x i32] [i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5], align 16
@.str.4 = private unnamed_addr constant [8 x i8] c"g_42[i]\00", align 1
@g_59 = internal global i32 -7, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"g_59\00", align 1
@g_61 = internal global i16 1, align 2
@.str.6 = private unnamed_addr constant [5 x i8] c"g_61\00", align 1
@g_62 = internal global i8 -22, align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"g_62\00", align 1
@g_63 = internal global [2 x i8] c"TT", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"g_63[i]\00", align 1
@g_64 = internal global [3 x i64] [i64 2, i64 2, i64 2], align 16
@.str.9 = private unnamed_addr constant [8 x i8] c"g_64[i]\00", align 1
@g_85 = internal global i32 1, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"g_85\00", align 1
@g_122 = internal global i16 7, align 2
@.str.11 = private unnamed_addr constant [6 x i8] c"g_122\00", align 1
@g_128 = internal global i32 3, align 4
@.str.12 = private unnamed_addr constant [6 x i8] c"g_128\00", align 1
@g_143 = internal global [7 x [5 x [6 x i64]]] [[5 x [6 x i64]] [[6 x i64] [i64 -10, i64 -10, i64 -10, i64 -10, i64 -10, i64 -10], [6 x i64] [i64 -10, i64 -10, i64 -10, i64 -10, i64 -10, i64 -10], [6 x i64] [i64 -10, i64 -10, i64 -10, i64 -10, i64 -10, i64 -10], [6 x i64] [i64 -10, i64 -10, i64 -10, i64 -10, i64 -10, i64 -10], [6 x i64] [i64 -10, i64 -10, i64 -10, i64 -10, i64 -10, i64 -10]], [5 x [6 x i64]] [[6 x i64] [i64 -10, i64 -10, i64 -10, i64 -10, i64 -10, i64 -10], [6 x i64] [i64 -10, i64 -10, i64 -10, i64 -10, i64 -10, i64 -10], [6 x i64] [i64 -10, i64 -10, i64 -10, i64 -10, i64 -10, i64 -10], [6 x i64] [i64 -10, i64 -10, i64 -10, i64 -10, i64 -10, i64 -10], [6 x i64] [i64 -10, i64 -10, i64 -10, i64 -10, i64 -10, i64 -10]], [5 x [6 x i64]] [[6 x i64] [i64 -10, i64 -10, i64 -10, i64 -10, i64 -10, i64 -10], [6 x i64] [i64 -10, i64 -10, i64 -10, i64 -10, i64 -10, i64 -10], [6 x i64] [i64 -10, i64 -10, i64 -10, i64 -10, i64 -10, i64 -10], [6 x i64] [i64 -10, i64 -10, i64 -10, i64 -10, i64 -10, i64 -10], [6 x i64] [i64 -10, i64 -10, i64 -10, i64 -10, i64 -10, i64 -10]], [5 x [6 x i64]] [[6 x i64] [i64 -10, i64 -10, i64 -10, i64 -10, i64 -10, i64 -10], [6 x i64] [i64 -10, i64 -10, i64 -10, i64 -10, i64 -10, i64 -10], [6 x i64] [i64 -10, i64 -10, i64 -10, i64 -10, i64 -10, i64 -10], [6 x i64] [i64 -10, i64 -10, i64 -10, i64 -10, i64 -10, i64 -10], [6 x i64] [i64 -10, i64 -10, i64 -10, i64 -10, i64 -10, i64 -10]], [5 x [6 x i64]] [[6 x i64] [i64 -10, i64 -10, i64 -10, i64 -10, i64 -10, i64 -10], [6 x i64] [i64 -10, i64 -10, i64 -10, i64 -10, i64 -10, i64 -10], [6 x i64] [i64 -10, i64 -10, i64 -10, i64 -10, i64 -10, i64 -10], [6 x i64] [i64 -10, i64 -10, i64 -10, i64 -10, i64 -10, i64 -10], [6 x i64] [i64 -10, i64 -10, i64 -10, i64 -10, i64 -10, i64 -10]], [5 x [6 x i64]] [[6 x i64] [i64 -10, i64 -10, i64 -10, i64 -10, i64 -10, i64 -10], [6 x i64] [i64 -10, i64 -10, i64 -10, i64 -10, i64 -10, i64 -10], [6 x i64] [i64 -10, i64 -10, i64 -10, i64 -10, i64 -10, i64 -10], [6 x i64] [i64 -10, i64 -10, i64 -10, i64 -10, i64 -10, i64 -10], [6 x i64] [i64 -10, i64 -10, i64 -10, i64 -10, i64 -10, i64 -10]], [5 x [6 x i64]] [[6 x i64] [i64 -10, i64 -10, i64 -10, i64 -10, i64 -10, i64 -10], [6 x i64] [i64 -10, i64 -10, i64 -10, i64 -10, i64 -10, i64 -10], [6 x i64] [i64 -10, i64 -10, i64 -10, i64 -10, i64 -10, i64 -10], [6 x i64] [i64 -10, i64 -10, i64 -10, i64 -10, i64 -10, i64 -10], [6 x i64] [i64 -10, i64 -10, i64 -10, i64 -10, i64 -10, i64 -10]]], align 16
@.str.13 = private unnamed_addr constant [15 x i8] c"g_143[i][j][k]\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"index = [%d][%d][%d]\0A\00", align 1
@g_163 = internal global i32 -277918214, align 4
@.str.15 = private unnamed_addr constant [6 x i8] c"g_163\00", align 1
@g_165 = internal global i16 27195, align 2
@.str.16 = private unnamed_addr constant [6 x i8] c"g_165\00", align 1
@g_166 = internal global i16 0, align 2
@.str.17 = private unnamed_addr constant [6 x i8] c"g_166\00", align 1
@g_167 = internal global i16 -29224, align 2
@.str.18 = private unnamed_addr constant [6 x i8] c"g_167\00", align 1
@g_168 = internal global i8 -7, align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"g_168\00", align 1
@g_179 = internal global i64 1, align 8
@.str.20 = private unnamed_addr constant [6 x i8] c"g_179\00", align 1
@g_184 = internal global i16 16941, align 2
@.str.21 = private unnamed_addr constant [6 x i8] c"g_184\00", align 1
@g_198 = internal global [5 x [1 x [8 x i8]]] [[1 x [8 x i8]] [[8 x i8] c"\D5\06\FF\FF\FF\06\D5\8C"], [1 x [8 x i8]] [[8 x i8] c"\FF\0F\8C\06\07_\08/"], [1 x [8 x i8]] [[8 x i8] c"/\07\FF\00\07\07\00\FF"], [1 x [8 x i8]] [[8 x i8] c"\FF\FF\00/\FF\D5\FF\FB"], [1 x [8 x i8]] [[8 x i8] c"\D5(\FF\FF\00\FB\0F\FB"]], align 16
@.str.22 = private unnamed_addr constant [15 x i8] c"g_198[i][j][k]\00", align 1
@g_201 = internal global i8 -8, align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"g_201\00", align 1
@g_209 = internal global i8 -92, align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"g_209\00", align 1
@g_232 = internal global i32 1824519168, align 4
@.str.25 = private unnamed_addr constant [6 x i8] c"g_232\00", align 1
@g_252 = internal global [1 x [10 x [8 x i64]]] [[10 x [8 x i64]] [[8 x i64] [i64 -7226318337920047738, i64 6984569915975998317, i64 -8, i64 1494501446292736465, i64 6984569915975998317, i64 6984569915975998317, i64 1494501446292736465, i64 -8], [8 x i64] [i64 -7226318337920047738, i64 -7226318337920047738, i64 9192955001286299001, i64 1494501446292736465, i64 -7226318337920047738, i64 0, i64 1494501446292736465, i64 1494501446292736465], [8 x i64] [i64 6984569915975998317, i64 6984569915975998317, i64 9192955001286299001, i64 9192955001286299001, i64 6984569915975998317, i64 0, i64 9192955001286299001, i64 -8], [8 x i64] [i64 6984569915975998317, i64 0, i64 9192955001286299001, i64 -8, i64 0, i64 0, i64 -8, i64 9192955001286299001], [8 x i64] [i64 6984569915975998317, i64 6984569915975998317, i64 1494501446292736465, i64 -8, i64 6984569915975998317, i64 -7226318337920047738, i64 -8, i64 -8], [8 x i64] [i64 0, i64 6984569915975998317, i64 9192955001286299001, i64 9192955001286299001, i64 6984569915975998317, i64 0, i64 9192955001286299001, i64 -8], [8 x i64] [i64 6984569915975998317, i64 0, i64 9192955001286299001, i64 -8, i64 0, i64 0, i64 -8, i64 9192955001286299001], [8 x i64] [i64 6984569915975998317, i64 6984569915975998317, i64 1494501446292736465, i64 -8, i64 6984569915975998317, i64 -7226318337920047738, i64 -8, i64 -8], [8 x i64] [i64 0, i64 6984569915975998317, i64 9192955001286299001, i64 9192955001286299001, i64 6984569915975998317, i64 0, i64 9192955001286299001, i64 -8], [8 x i64] [i64 6984569915975998317, i64 0, i64 9192955001286299001, i64 -8, i64 0, i64 0, i64 -8, i64 9192955001286299001]]], align 16
@.str.26 = private unnamed_addr constant [15 x i8] c"g_252[i][j][k]\00", align 1
@g_253 = internal global i16 0, align 2
@.str.27 = private unnamed_addr constant [6 x i8] c"g_253\00", align 1
@g_320 = internal global [10 x i64] [i64 1, i64 1, i64 -3, i64 1, i64 1, i64 -3, i64 1, i64 1, i64 -3, i64 1], align 16
@.str.28 = private unnamed_addr constant [9 x i8] c"g_320[i]\00", align 1
@g_346 = internal global i16 1, align 2
@.str.29 = private unnamed_addr constant [6 x i8] c"g_346\00", align 1
@g_349 = internal global i32 0, align 4
@.str.30 = private unnamed_addr constant [6 x i8] c"g_349\00", align 1
@g_380 = internal global i8 -10, align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"g_380\00", align 1
@g_414 = internal global [1 x [10 x i64]] [[10 x i64] [i64 4656569237449242663, i64 4656569237449242663, i64 4656569237449242663, i64 4656569237449242663, i64 4656569237449242663, i64 4656569237449242663, i64 4656569237449242663, i64 4656569237449242663, i64 4656569237449242663, i64 4656569237449242663]], align 16
@.str.32 = private unnamed_addr constant [12 x i8] c"g_414[i][j]\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@g_434 = internal global [2 x [2 x i64]] [[2 x i64] [i64 1, i64 1], [2 x i64] [i64 1, i64 1]], align 16
@.str.34 = private unnamed_addr constant [12 x i8] c"g_434[i][j]\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"g_477\00", align 1
@g_503 = internal global i8 -44, align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"g_503\00", align 1
@g_506 = internal global i8 124, align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"g_506\00", align 1
@g_508 = internal global i8 39, align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"g_508\00", align 1
@g_513 = internal global i8 5, align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"g_513\00", align 1
@g_555 = internal global i64 -10, align 8
@.str.40 = private unnamed_addr constant [6 x i8] c"g_555\00", align 1
@g_557 = internal global i32 -1235945442, align 4
@.str.41 = private unnamed_addr constant [6 x i8] c"g_557\00", align 1
@g_569 = internal global i32 -7, align 4
@.str.42 = private unnamed_addr constant [6 x i8] c"g_569\00", align 1
@g_695 = internal global i64 5, align 8
@.str.43 = private unnamed_addr constant [6 x i8] c"g_695\00", align 1
@g_773 = internal constant i8 15, align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"g_773\00", align 1
@g_776 = internal global i8 104, align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"g_776\00", align 1
@g_900 = internal global i16 -1, align 2
@.str.46 = private unnamed_addr constant [6 x i8] c"g_900\00", align 1
@g_955 = internal global i16 1, align 2
@.str.47 = private unnamed_addr constant [6 x i8] c"g_955\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"g_961\00", align 1
@g_1005 = internal global [5 x [9 x i32]] [[9 x i32] [i32 -407902796, i32 0, i32 1788047122, i32 1788047122, i32 0, i32 -407902796, i32 801789575, i32 0, i32 801789575], [9 x i32] [i32 -10, i32 1626309215, i32 -1391633636, i32 -1391633636, i32 1626309215, i32 -10, i32 542572213, i32 1626309215, i32 542572213], [9 x i32] [i32 -407902796, i32 0, i32 1788047122, i32 1788047122, i32 0, i32 -407902796, i32 801789575, i32 0, i32 801789575], [9 x i32] [i32 -10, i32 1626309215, i32 -1391633636, i32 -1391633636, i32 1626309215, i32 -10, i32 542572213, i32 1626309215, i32 542572213], [9 x i32] [i32 -407902796, i32 0, i32 1788047122, i32 1788047122, i32 0, i32 -407902796, i32 801789575, i32 0, i32 801789575]], align 16
@.str.49 = private unnamed_addr constant [13 x i8] c"g_1005[i][j]\00", align 1
@g_1168 = internal constant i16 -21833, align 2
@.str.50 = private unnamed_addr constant [7 x i8] c"g_1168\00", align 1
@g_1259 = internal global [3 x [8 x i64]] [[8 x i64] [i64 -5876887553230531284, i64 -5876887553230531284, i64 0, i64 0, i64 -5876887553230531284, i64 -5876887553230531284, i64 0, i64 0], [8 x i64] [i64 -5876887553230531284, i64 -5876887553230531284, i64 0, i64 0, i64 -5876887553230531284, i64 -5876887553230531284, i64 0, i64 0], [8 x i64] [i64 -5876887553230531284, i64 -5876887553230531284, i64 0, i64 0, i64 -5876887553230531284, i64 -5876887553230531284, i64 0, i64 0]], align 16
@.str.51 = private unnamed_addr constant [13 x i8] c"g_1259[i][j]\00", align 1
@g_1262 = internal global i8 1, align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"g_1262\00", align 1
@g_1265 = internal global i32 47165544, align 4
@.str.53 = private unnamed_addr constant [7 x i8] c"g_1265\00", align 1
@g_1302 = internal global i16 -3, align 2
@.str.54 = private unnamed_addr constant [7 x i8] c"g_1302\00", align 1
@g_1303 = internal global i8 -5, align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"g_1303\00", align 1
@g_1391 = internal global i64 -8431195203169789492, align 8
@.str.56 = private unnamed_addr constant [7 x i8] c"g_1391\00", align 1
@g_1442 = internal global i16 -10525, align 2
@.str.57 = private unnamed_addr constant [7 x i8] c"g_1442\00", align 1
@g_1548 = internal global i8 46, align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"g_1548\00", align 1
@g_1620 = internal global i32 308067943, align 4
@.str.59 = private unnamed_addr constant [7 x i8] c"g_1620\00", align 1
@g_1761 = internal global [10 x i32] [i32 2072905865, i32 2072905865, i32 -337675651, i32 0, i32 -337675651, i32 2072905865, i32 2072905865, i32 -337675651, i32 0, i32 -337675651], align 16
@.str.60 = private unnamed_addr constant [10 x i8] c"g_1761[i]\00", align 1
@g_1815 = internal global i8 -105, align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"g_1815\00", align 1
@g_1909 = internal global i8 -116, align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"g_1909\00", align 1
@g_1941 = internal global i32 1647970390, align 4
@.str.63 = private unnamed_addr constant [7 x i8] c"g_1941\00", align 1
@g_1961 = internal global [1 x i32] [i32 1905919763], align 4
@.str.64 = private unnamed_addr constant [10 x i8] c"g_1961[i]\00", align 1
@g_1962 = internal global i32 0, align 4
@.str.65 = private unnamed_addr constant [7 x i8] c"g_1962\00", align 1
@g_2022 = internal global i64 2, align 8
@.str.66 = private unnamed_addr constant [7 x i8] c"g_2022\00", align 1
@g_2190 = internal global i32 -1827771451, align 4
@.str.67 = private unnamed_addr constant [7 x i8] c"g_2190\00", align 1
@g_2263 = internal global i16 16920, align 2
@.str.68 = private unnamed_addr constant [7 x i8] c"g_2263\00", align 1
@g_2349 = internal global [1 x [5 x i32]] [[5 x i32] [i32 2, i32 2, i32 2, i32 2, i32 2]], align 16
@.str.69 = private unnamed_addr constant [13 x i8] c"g_2349[i][j]\00", align 1
@.str.70 = private unnamed_addr constant [7 x i8] c"g_2396\00", align 1
@g_2843 = internal global i8 -9, align 1
@.str.71 = private unnamed_addr constant [7 x i8] c"g_2843\00", align 1
@g_2915 = internal global [7 x [5 x i16]] [[5 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [5 x i16] [i16 -7, i16 -1, i16 -7, i16 -1, i16 -7], [5 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [5 x i16] [i16 -7, i16 -1, i16 -7, i16 -1, i16 -7], [5 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [5 x i16] [i16 -7, i16 -1, i16 -7, i16 -1, i16 -7], [5 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1]], align 16
@.str.72 = private unnamed_addr constant [13 x i8] c"g_2915[i][j]\00", align 1
@g_2924 = internal global [1 x [9 x i32]] [[9 x i32] [i32 983229364, i32 -1878384390, i32 983229364, i32 -1878384390, i32 983229364, i32 -1878384390, i32 983229364, i32 -1878384390, i32 983229364]], align 16
@.str.73 = private unnamed_addr constant [13 x i8] c"g_2924[i][j]\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@g_1058 = internal global i32** @g_595, align 8
@g_595 = internal global i32* @g_569, align 8
@.str.74 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@.str.75 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

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
  %91 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 325291727, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %91)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %92

; <label>:92                                      ; preds = %108, %89
  %93 = load i32, i32* %i, align 4, !tbaa !1
  %94 = icmp slt i32 %93, 7
  br i1 %94, label %95, label %111

; <label>:95                                      ; preds = %92
  %96 = load i32, i32* %i, align 4, !tbaa !1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [7 x i16], [7 x i16]* @g_40, i32 0, i64 %97
  %99 = load i16, i16* %98, align 2, !tbaa !10
  %100 = sext i16 %99 to i64
  %101 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %100, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32 %101)
  %102 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

; <label>:104                                     ; preds = %95
  %105 = load i32, i32* %i, align 4, !tbaa !1
  %106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i32 %105)
  br label %107

; <label>:107                                     ; preds = %104, %95
  br label %108

; <label>:108                                     ; preds = %107
  %109 = load i32, i32* %i, align 4, !tbaa !1
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %i, align 4, !tbaa !1
  br label %92

; <label>:111                                     ; preds = %92
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %112

; <label>:112                                     ; preds = %128, %111
  %113 = load i32, i32* %i, align 4, !tbaa !1
  %114 = icmp slt i32 %113, 8
  br i1 %114, label %115, label %131

; <label>:115                                     ; preds = %112
  %116 = load i32, i32* %i, align 4, !tbaa !1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [8 x i32], [8 x i32]* @g_42, i32 0, i64 %117
  %119 = load i32, i32* %118, align 4, !tbaa !1
  %120 = zext i32 %119 to i64
  %121 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %120, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 %121)
  %122 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

; <label>:124                                     ; preds = %115
  %125 = load i32, i32* %i, align 4, !tbaa !1
  %126 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i32 %125)
  br label %127

; <label>:127                                     ; preds = %124, %115
  br label %128

; <label>:128                                     ; preds = %127
  %129 = load i32, i32* %i, align 4, !tbaa !1
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %i, align 4, !tbaa !1
  br label %112

; <label>:131                                     ; preds = %112
  %132 = load i32, i32* @g_59, align 4, !tbaa !1
  %133 = sext i32 %132 to i64
  %134 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %133, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 %134)
  %135 = load volatile i16, i16* @g_61, align 2, !tbaa !10
  %136 = sext i16 %135 to i64
  %137 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %136, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 %137)
  %138 = load volatile i8, i8* @g_62, align 1, !tbaa !9
  %139 = sext i8 %138 to i64
  %140 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %139, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 %140)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %141

; <label>:141                                     ; preds = %157, %131
  %142 = load i32, i32* %i, align 4, !tbaa !1
  %143 = icmp slt i32 %142, 2
  br i1 %143, label %144, label %160

; <label>:144                                     ; preds = %141
  %145 = load i32, i32* %i, align 4, !tbaa !1
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [2 x i8], [2 x i8]* @g_63, i32 0, i64 %146
  %148 = load volatile i8, i8* %147, align 1, !tbaa !9
  %149 = sext i8 %148 to i64
  %150 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %149, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i32 %150)
  %151 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %156

; <label>:153                                     ; preds = %144
  %154 = load i32, i32* %i, align 4, !tbaa !1
  %155 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i32 %154)
  br label %156

; <label>:156                                     ; preds = %153, %144
  br label %157

; <label>:157                                     ; preds = %156
  %158 = load i32, i32* %i, align 4, !tbaa !1
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %i, align 4, !tbaa !1
  br label %141

; <label>:160                                     ; preds = %141
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %161

; <label>:161                                     ; preds = %176, %160
  %162 = load i32, i32* %i, align 4, !tbaa !1
  %163 = icmp slt i32 %162, 3
  br i1 %163, label %164, label %179

; <label>:164                                     ; preds = %161
  %165 = load i32, i32* %i, align 4, !tbaa !1
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [3 x i64], [3 x i64]* @g_64, i32 0, i64 %166
  %168 = load i64, i64* %167, align 8, !tbaa !7
  %169 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %168, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i32 %169)
  %170 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %175

; <label>:172                                     ; preds = %164
  %173 = load i32, i32* %i, align 4, !tbaa !1
  %174 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i32 %173)
  br label %175

; <label>:175                                     ; preds = %172, %164
  br label %176

; <label>:176                                     ; preds = %175
  %177 = load i32, i32* %i, align 4, !tbaa !1
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %i, align 4, !tbaa !1
  br label %161

; <label>:179                                     ; preds = %161
  %180 = load volatile i32, i32* @g_85, align 4, !tbaa !1
  %181 = zext i32 %180 to i64
  %182 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %181, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32 %182)
  %183 = load i16, i16* @g_122, align 2, !tbaa !10
  %184 = zext i16 %183 to i64
  %185 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %184, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i32 %185)
  %186 = load i32, i32* @g_128, align 4, !tbaa !1
  %187 = sext i32 %186 to i64
  %188 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %187, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i32 %188)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %189

; <label>:189                                     ; preds = %228, %179
  %190 = load i32, i32* %i, align 4, !tbaa !1
  %191 = icmp slt i32 %190, 7
  br i1 %191, label %192, label %231

; <label>:192                                     ; preds = %189
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %193

; <label>:193                                     ; preds = %224, %192
  %194 = load i32, i32* %j, align 4, !tbaa !1
  %195 = icmp slt i32 %194, 5
  br i1 %195, label %196, label %227

; <label>:196                                     ; preds = %193
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %197

; <label>:197                                     ; preds = %220, %196
  %198 = load i32, i32* %k, align 4, !tbaa !1
  %199 = icmp slt i32 %198, 6
  br i1 %199, label %200, label %223

; <label>:200                                     ; preds = %197
  %201 = load i32, i32* %k, align 4, !tbaa !1
  %202 = sext i32 %201 to i64
  %203 = load i32, i32* %j, align 4, !tbaa !1
  %204 = sext i32 %203 to i64
  %205 = load i32, i32* %i, align 4, !tbaa !1
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds [7 x [5 x [6 x i64]]], [7 x [5 x [6 x i64]]]* @g_143, i32 0, i64 %206
  %208 = getelementptr inbounds [5 x [6 x i64]], [5 x [6 x i64]]* %207, i32 0, i64 %204
  %209 = getelementptr inbounds [6 x i64], [6 x i64]* %208, i32 0, i64 %202
  %210 = load i64, i64* %209, align 8, !tbaa !7
  %211 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %210, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0), i32 %211)
  %212 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %219

; <label>:214                                     ; preds = %200
  %215 = load i32, i32* %i, align 4, !tbaa !1
  %216 = load i32, i32* %j, align 4, !tbaa !1
  %217 = load i32, i32* %k, align 4, !tbaa !1
  %218 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0), i32 %215, i32 %216, i32 %217)
  br label %219

; <label>:219                                     ; preds = %214, %200
  br label %220

; <label>:220                                     ; preds = %219
  %221 = load i32, i32* %k, align 4, !tbaa !1
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %k, align 4, !tbaa !1
  br label %197

; <label>:223                                     ; preds = %197
  br label %224

; <label>:224                                     ; preds = %223
  %225 = load i32, i32* %j, align 4, !tbaa !1
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %j, align 4, !tbaa !1
  br label %193

; <label>:227                                     ; preds = %193
  br label %228

; <label>:228                                     ; preds = %227
  %229 = load i32, i32* %i, align 4, !tbaa !1
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %i, align 4, !tbaa !1
  br label %189

; <label>:231                                     ; preds = %189
  %232 = load volatile i32, i32* @g_163, align 4, !tbaa !1
  %233 = sext i32 %232 to i64
  %234 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %233, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 %234)
  %235 = load volatile i16, i16* @g_165, align 2, !tbaa !10
  %236 = sext i16 %235 to i64
  %237 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %236, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i32 %237)
  %238 = load i16, i16* @g_166, align 2, !tbaa !10
  %239 = sext i16 %238 to i64
  %240 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %239, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i32 %240)
  %241 = load volatile i16, i16* @g_167, align 2, !tbaa !10
  %242 = sext i16 %241 to i64
  %243 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %242, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i32 %243)
  %244 = load volatile i8, i8* @g_168, align 1, !tbaa !9
  %245 = sext i8 %244 to i64
  %246 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %245, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i32 %246)
  %247 = load i64, i64* @g_179, align 8, !tbaa !7
  %248 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %247, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 %248)
  %249 = load volatile i16, i16* @g_184, align 2, !tbaa !10
  %250 = zext i16 %249 to i64
  %251 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %250, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i32 %251)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %252

; <label>:252                                     ; preds = %292, %231
  %253 = load i32, i32* %i, align 4, !tbaa !1
  %254 = icmp slt i32 %253, 5
  br i1 %254, label %255, label %295

; <label>:255                                     ; preds = %252
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %256

; <label>:256                                     ; preds = %288, %255
  %257 = load i32, i32* %j, align 4, !tbaa !1
  %258 = icmp slt i32 %257, 1
  br i1 %258, label %259, label %291

; <label>:259                                     ; preds = %256
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %260

; <label>:260                                     ; preds = %284, %259
  %261 = load i32, i32* %k, align 4, !tbaa !1
  %262 = icmp slt i32 %261, 8
  br i1 %262, label %263, label %287

; <label>:263                                     ; preds = %260
  %264 = load i32, i32* %k, align 4, !tbaa !1
  %265 = sext i32 %264 to i64
  %266 = load i32, i32* %j, align 4, !tbaa !1
  %267 = sext i32 %266 to i64
  %268 = load i32, i32* %i, align 4, !tbaa !1
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds [5 x [1 x [8 x i8]]], [5 x [1 x [8 x i8]]]* @g_198, i32 0, i64 %269
  %271 = getelementptr inbounds [1 x [8 x i8]], [1 x [8 x i8]]* %270, i32 0, i64 %267
  %272 = getelementptr inbounds [8 x i8], [8 x i8]* %271, i32 0, i64 %265
  %273 = load i8, i8* %272, align 1, !tbaa !9
  %274 = zext i8 %273 to i64
  %275 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %274, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0), i32 %275)
  %276 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %283

; <label>:278                                     ; preds = %263
  %279 = load i32, i32* %i, align 4, !tbaa !1
  %280 = load i32, i32* %j, align 4, !tbaa !1
  %281 = load i32, i32* %k, align 4, !tbaa !1
  %282 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0), i32 %279, i32 %280, i32 %281)
  br label %283

; <label>:283                                     ; preds = %278, %263
  br label %284

; <label>:284                                     ; preds = %283
  %285 = load i32, i32* %k, align 4, !tbaa !1
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %k, align 4, !tbaa !1
  br label %260

; <label>:287                                     ; preds = %260
  br label %288

; <label>:288                                     ; preds = %287
  %289 = load i32, i32* %j, align 4, !tbaa !1
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %j, align 4, !tbaa !1
  br label %256

; <label>:291                                     ; preds = %256
  br label %292

; <label>:292                                     ; preds = %291
  %293 = load i32, i32* %i, align 4, !tbaa !1
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %i, align 4, !tbaa !1
  br label %252

; <label>:295                                     ; preds = %252
  %296 = load i8, i8* @g_201, align 1, !tbaa !9
  %297 = zext i8 %296 to i64
  %298 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %297, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 %298)
  %299 = load i8, i8* @g_209, align 1, !tbaa !9
  %300 = sext i8 %299 to i64
  %301 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %300, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %301)
  %302 = load i32, i32* @g_232, align 4, !tbaa !1
  %303 = sext i32 %302 to i64
  %304 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %303, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i32 %304)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %305

; <label>:305                                     ; preds = %344, %295
  %306 = load i32, i32* %i, align 4, !tbaa !1
  %307 = icmp slt i32 %306, 1
  br i1 %307, label %308, label %347

; <label>:308                                     ; preds = %305
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %309

; <label>:309                                     ; preds = %340, %308
  %310 = load i32, i32* %j, align 4, !tbaa !1
  %311 = icmp slt i32 %310, 10
  br i1 %311, label %312, label %343

; <label>:312                                     ; preds = %309
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %313

; <label>:313                                     ; preds = %336, %312
  %314 = load i32, i32* %k, align 4, !tbaa !1
  %315 = icmp slt i32 %314, 8
  br i1 %315, label %316, label %339

; <label>:316                                     ; preds = %313
  %317 = load i32, i32* %k, align 4, !tbaa !1
  %318 = sext i32 %317 to i64
  %319 = load i32, i32* %j, align 4, !tbaa !1
  %320 = sext i32 %319 to i64
  %321 = load i32, i32* %i, align 4, !tbaa !1
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds [1 x [10 x [8 x i64]]], [1 x [10 x [8 x i64]]]* @g_252, i32 0, i64 %322
  %324 = getelementptr inbounds [10 x [8 x i64]], [10 x [8 x i64]]* %323, i32 0, i64 %320
  %325 = getelementptr inbounds [8 x i64], [8 x i64]* %324, i32 0, i64 %318
  %326 = load volatile i64, i64* %325, align 8, !tbaa !7
  %327 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %326, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0), i32 %327)
  %328 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %335

; <label>:330                                     ; preds = %316
  %331 = load i32, i32* %i, align 4, !tbaa !1
  %332 = load i32, i32* %j, align 4, !tbaa !1
  %333 = load i32, i32* %k, align 4, !tbaa !1
  %334 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0), i32 %331, i32 %332, i32 %333)
  br label %335

; <label>:335                                     ; preds = %330, %316
  br label %336

; <label>:336                                     ; preds = %335
  %337 = load i32, i32* %k, align 4, !tbaa !1
  %338 = add nsw i32 %337, 1
  store i32 %338, i32* %k, align 4, !tbaa !1
  br label %313

; <label>:339                                     ; preds = %313
  br label %340

; <label>:340                                     ; preds = %339
  %341 = load i32, i32* %j, align 4, !tbaa !1
  %342 = add nsw i32 %341, 1
  store i32 %342, i32* %j, align 4, !tbaa !1
  br label %309

; <label>:343                                     ; preds = %309
  br label %344

; <label>:344                                     ; preds = %343
  %345 = load i32, i32* %i, align 4, !tbaa !1
  %346 = add nsw i32 %345, 1
  store i32 %346, i32* %i, align 4, !tbaa !1
  br label %305

; <label>:347                                     ; preds = %305
  %348 = load i16, i16* @g_253, align 2, !tbaa !10
  %349 = zext i16 %348 to i64
  %350 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %349, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 %350)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %351

; <label>:351                                     ; preds = %366, %347
  %352 = load i32, i32* %i, align 4, !tbaa !1
  %353 = icmp slt i32 %352, 10
  br i1 %353, label %354, label %369

; <label>:354                                     ; preds = %351
  %355 = load i32, i32* %i, align 4, !tbaa !1
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds [10 x i64], [10 x i64]* @g_320, i32 0, i64 %356
  %358 = load i64, i64* %357, align 8, !tbaa !7
  %359 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %358, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), i32 %359)
  %360 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %365

; <label>:362                                     ; preds = %354
  %363 = load i32, i32* %i, align 4, !tbaa !1
  %364 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i32 %363)
  br label %365

; <label>:365                                     ; preds = %362, %354
  br label %366

; <label>:366                                     ; preds = %365
  %367 = load i32, i32* %i, align 4, !tbaa !1
  %368 = add nsw i32 %367, 1
  store i32 %368, i32* %i, align 4, !tbaa !1
  br label %351

; <label>:369                                     ; preds = %351
  %370 = load volatile i16, i16* @g_346, align 2, !tbaa !10
  %371 = zext i16 %370 to i64
  %372 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %371, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i32 %372)
  %373 = load i32, i32* @g_349, align 4, !tbaa !1
  %374 = zext i32 %373 to i64
  %375 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %374, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i32 %375)
  %376 = load volatile i8, i8* @g_380, align 1, !tbaa !9
  %377 = zext i8 %376 to i64
  %378 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %377, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i32 %378)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %379

; <label>:379                                     ; preds = %406, %369
  %380 = load i32, i32* %i, align 4, !tbaa !1
  %381 = icmp slt i32 %380, 1
  br i1 %381, label %382, label %409

; <label>:382                                     ; preds = %379
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %383

; <label>:383                                     ; preds = %402, %382
  %384 = load i32, i32* %j, align 4, !tbaa !1
  %385 = icmp slt i32 %384, 10
  br i1 %385, label %386, label %405

; <label>:386                                     ; preds = %383
  %387 = load i32, i32* %j, align 4, !tbaa !1
  %388 = sext i32 %387 to i64
  %389 = load i32, i32* %i, align 4, !tbaa !1
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds [1 x [10 x i64]], [1 x [10 x i64]]* @g_414, i32 0, i64 %390
  %392 = getelementptr inbounds [10 x i64], [10 x i64]* %391, i32 0, i64 %388
  %393 = load i64, i64* %392, align 8, !tbaa !7
  %394 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %393, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 %394)
  %395 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %397, label %401

; <label>:397                                     ; preds = %386
  %398 = load i32, i32* %i, align 4, !tbaa !1
  %399 = load i32, i32* %j, align 4, !tbaa !1
  %400 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.33, i32 0, i32 0), i32 %398, i32 %399)
  br label %401

; <label>:401                                     ; preds = %397, %386
  br label %402

; <label>:402                                     ; preds = %401
  %403 = load i32, i32* %j, align 4, !tbaa !1
  %404 = add nsw i32 %403, 1
  store i32 %404, i32* %j, align 4, !tbaa !1
  br label %383

; <label>:405                                     ; preds = %383
  br label %406

; <label>:406                                     ; preds = %405
  %407 = load i32, i32* %i, align 4, !tbaa !1
  %408 = add nsw i32 %407, 1
  store i32 %408, i32* %i, align 4, !tbaa !1
  br label %379

; <label>:409                                     ; preds = %379
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %410

; <label>:410                                     ; preds = %437, %409
  %411 = load i32, i32* %i, align 4, !tbaa !1
  %412 = icmp slt i32 %411, 2
  br i1 %412, label %413, label %440

; <label>:413                                     ; preds = %410
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %414

; <label>:414                                     ; preds = %433, %413
  %415 = load i32, i32* %j, align 4, !tbaa !1
  %416 = icmp slt i32 %415, 2
  br i1 %416, label %417, label %436

; <label>:417                                     ; preds = %414
  %418 = load i32, i32* %j, align 4, !tbaa !1
  %419 = sext i32 %418 to i64
  %420 = load i32, i32* %i, align 4, !tbaa !1
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds [2 x [2 x i64]], [2 x [2 x i64]]* @g_434, i32 0, i64 %421
  %423 = getelementptr inbounds [2 x i64], [2 x i64]* %422, i32 0, i64 %419
  %424 = load volatile i64, i64* %423, align 8, !tbaa !7
  %425 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %424, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i32 0, i32 0), i32 %425)
  %426 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %428, label %432

; <label>:428                                     ; preds = %417
  %429 = load i32, i32* %i, align 4, !tbaa !1
  %430 = load i32, i32* %j, align 4, !tbaa !1
  %431 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.33, i32 0, i32 0), i32 %429, i32 %430)
  br label %432

; <label>:432                                     ; preds = %428, %417
  br label %433

; <label>:433                                     ; preds = %432
  %434 = load i32, i32* %j, align 4, !tbaa !1
  %435 = add nsw i32 %434, 1
  store i32 %435, i32* %j, align 4, !tbaa !1
  br label %414

; <label>:436                                     ; preds = %414
  br label %437

; <label>:437                                     ; preds = %436
  %438 = load i32, i32* %i, align 4, !tbaa !1
  %439 = add nsw i32 %438, 1
  store i32 %439, i32* %i, align 4, !tbaa !1
  br label %410

; <label>:440                                     ; preds = %410
  %441 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 -1064522183, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), i32 %441)
  %442 = load i8, i8* @g_503, align 1, !tbaa !9
  %443 = sext i8 %442 to i64
  %444 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %443, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i32 %444)
  %445 = load i8, i8* @g_506, align 1, !tbaa !9
  %446 = sext i8 %445 to i64
  %447 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %446, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), i32 %447)
  %448 = load i8, i8* @g_508, align 1, !tbaa !9
  %449 = sext i8 %448 to i64
  %450 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %449, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0), i32 %450)
  %451 = load i8, i8* @g_513, align 1, !tbaa !9
  %452 = sext i8 %451 to i64
  %453 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %452, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), i32 %453)
  %454 = load i64, i64* @g_555, align 8, !tbaa !7
  %455 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %454, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0), i32 %455)
  %456 = load i32, i32* @g_557, align 4, !tbaa !1
  %457 = zext i32 %456 to i64
  %458 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %457, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i32 0, i32 0), i32 %458)
  %459 = load i32, i32* @g_569, align 4, !tbaa !1
  %460 = zext i32 %459 to i64
  %461 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %460, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i32 %461)
  %462 = load i64, i64* @g_695, align 8, !tbaa !7
  %463 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %462, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0), i32 %463)
  %464 = load volatile i8, i8* @g_773, align 1, !tbaa !9
  %465 = sext i8 %464 to i64
  %466 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %465, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0), i32 %466)
  %467 = load i8, i8* @g_776, align 1, !tbaa !9
  %468 = zext i8 %467 to i64
  %469 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %468, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0), i32 %469)
  %470 = load i16, i16* @g_900, align 2, !tbaa !10
  %471 = zext i16 %470 to i64
  %472 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %471, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0), i32 %472)
  %473 = load i16, i16* @g_955, align 2, !tbaa !10
  %474 = zext i16 %473 to i64
  %475 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %474, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i32 0, i32 0), i32 %475)
  %476 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 2437219043, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i32 0, i32 0), i32 %476)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %477

; <label>:477                                     ; preds = %505, %440
  %478 = load i32, i32* %i, align 4, !tbaa !1
  %479 = icmp slt i32 %478, 5
  br i1 %479, label %480, label %508

; <label>:480                                     ; preds = %477
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %481

; <label>:481                                     ; preds = %501, %480
  %482 = load i32, i32* %j, align 4, !tbaa !1
  %483 = icmp slt i32 %482, 9
  br i1 %483, label %484, label %504

; <label>:484                                     ; preds = %481
  %485 = load i32, i32* %j, align 4, !tbaa !1
  %486 = sext i32 %485 to i64
  %487 = load i32, i32* %i, align 4, !tbaa !1
  %488 = sext i32 %487 to i64
  %489 = getelementptr inbounds [5 x [9 x i32]], [5 x [9 x i32]]* @g_1005, i32 0, i64 %488
  %490 = getelementptr inbounds [9 x i32], [9 x i32]* %489, i32 0, i64 %486
  %491 = load volatile i32, i32* %490, align 4, !tbaa !1
  %492 = zext i32 %491 to i64
  %493 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %492, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.49, i32 0, i32 0), i32 %493)
  %494 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %495 = icmp ne i32 %494, 0
  br i1 %495, label %496, label %500

; <label>:496                                     ; preds = %484
  %497 = load i32, i32* %i, align 4, !tbaa !1
  %498 = load i32, i32* %j, align 4, !tbaa !1
  %499 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.33, i32 0, i32 0), i32 %497, i32 %498)
  br label %500

; <label>:500                                     ; preds = %496, %484
  br label %501

; <label>:501                                     ; preds = %500
  %502 = load i32, i32* %j, align 4, !tbaa !1
  %503 = add nsw i32 %502, 1
  store i32 %503, i32* %j, align 4, !tbaa !1
  br label %481

; <label>:504                                     ; preds = %481
  br label %505

; <label>:505                                     ; preds = %504
  %506 = load i32, i32* %i, align 4, !tbaa !1
  %507 = add nsw i32 %506, 1
  store i32 %507, i32* %i, align 4, !tbaa !1
  br label %477

; <label>:508                                     ; preds = %477
  %509 = load volatile i16, i16* @g_1168, align 2, !tbaa !10
  %510 = zext i16 %509 to i64
  %511 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %510, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i32 0, i32 0), i32 %511)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %512

; <label>:512                                     ; preds = %539, %508
  %513 = load i32, i32* %i, align 4, !tbaa !1
  %514 = icmp slt i32 %513, 3
  br i1 %514, label %515, label %542

; <label>:515                                     ; preds = %512
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %516

; <label>:516                                     ; preds = %535, %515
  %517 = load i32, i32* %j, align 4, !tbaa !1
  %518 = icmp slt i32 %517, 8
  br i1 %518, label %519, label %538

; <label>:519                                     ; preds = %516
  %520 = load i32, i32* %j, align 4, !tbaa !1
  %521 = sext i32 %520 to i64
  %522 = load i32, i32* %i, align 4, !tbaa !1
  %523 = sext i32 %522 to i64
  %524 = getelementptr inbounds [3 x [8 x i64]], [3 x [8 x i64]]* @g_1259, i32 0, i64 %523
  %525 = getelementptr inbounds [8 x i64], [8 x i64]* %524, i32 0, i64 %521
  %526 = load i64, i64* %525, align 8, !tbaa !7
  %527 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %526, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.51, i32 0, i32 0), i32 %527)
  %528 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %529 = icmp ne i32 %528, 0
  br i1 %529, label %530, label %534

; <label>:530                                     ; preds = %519
  %531 = load i32, i32* %i, align 4, !tbaa !1
  %532 = load i32, i32* %j, align 4, !tbaa !1
  %533 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.33, i32 0, i32 0), i32 %531, i32 %532)
  br label %534

; <label>:534                                     ; preds = %530, %519
  br label %535

; <label>:535                                     ; preds = %534
  %536 = load i32, i32* %j, align 4, !tbaa !1
  %537 = add nsw i32 %536, 1
  store i32 %537, i32* %j, align 4, !tbaa !1
  br label %516

; <label>:538                                     ; preds = %516
  br label %539

; <label>:539                                     ; preds = %538
  %540 = load i32, i32* %i, align 4, !tbaa !1
  %541 = add nsw i32 %540, 1
  store i32 %541, i32* %i, align 4, !tbaa !1
  br label %512

; <label>:542                                     ; preds = %512
  %543 = load i8, i8* @g_1262, align 1, !tbaa !9
  %544 = sext i8 %543 to i64
  %545 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %544, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i32 0, i32 0), i32 %545)
  %546 = load i32, i32* @g_1265, align 4, !tbaa !1
  %547 = zext i32 %546 to i64
  %548 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %547, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0), i32 %548)
  %549 = load i16, i16* @g_1302, align 2, !tbaa !10
  %550 = zext i16 %549 to i64
  %551 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %550, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i32 0, i32 0), i32 %551)
  %552 = load i8, i8* @g_1303, align 1, !tbaa !9
  %553 = zext i8 %552 to i64
  %554 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %553, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i32 0, i32 0), i32 %554)
  %555 = load volatile i64, i64* @g_1391, align 8, !tbaa !7
  %556 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %555, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i32 0, i32 0), i32 %556)
  %557 = load i16, i16* @g_1442, align 2, !tbaa !10
  %558 = sext i16 %557 to i64
  %559 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %558, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i32 0, i32 0), i32 %559)
  %560 = load i8, i8* @g_1548, align 1, !tbaa !9
  %561 = sext i8 %560 to i64
  %562 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %561, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i32 0, i32 0), i32 %562)
  %563 = load volatile i32, i32* @g_1620, align 4, !tbaa !1
  %564 = sext i32 %563 to i64
  %565 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %564, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i32 0, i32 0), i32 %565)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %566

; <label>:566                                     ; preds = %582, %542
  %567 = load i32, i32* %i, align 4, !tbaa !1
  %568 = icmp slt i32 %567, 10
  br i1 %568, label %569, label %585

; <label>:569                                     ; preds = %566
  %570 = load i32, i32* %i, align 4, !tbaa !1
  %571 = sext i32 %570 to i64
  %572 = getelementptr inbounds [10 x i32], [10 x i32]* @g_1761, i32 0, i64 %571
  %573 = load i32, i32* %572, align 4, !tbaa !1
  %574 = zext i32 %573 to i64
  %575 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %574, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.60, i32 0, i32 0), i32 %575)
  %576 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %577 = icmp ne i32 %576, 0
  br i1 %577, label %578, label %581

; <label>:578                                     ; preds = %569
  %579 = load i32, i32* %i, align 4, !tbaa !1
  %580 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i32 %579)
  br label %581

; <label>:581                                     ; preds = %578, %569
  br label %582

; <label>:582                                     ; preds = %581
  %583 = load i32, i32* %i, align 4, !tbaa !1
  %584 = add nsw i32 %583, 1
  store i32 %584, i32* %i, align 4, !tbaa !1
  br label %566

; <label>:585                                     ; preds = %566
  %586 = load i8, i8* @g_1815, align 1, !tbaa !9
  %587 = sext i8 %586 to i64
  %588 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %587, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.61, i32 0, i32 0), i32 %588)
  %589 = load volatile i8, i8* @g_1909, align 1, !tbaa !9
  %590 = sext i8 %589 to i64
  %591 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %590, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i32 0, i32 0), i32 %591)
  %592 = load i32, i32* @g_1941, align 4, !tbaa !1
  %593 = sext i32 %592 to i64
  %594 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %593, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.63, i32 0, i32 0), i32 %594)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %595

; <label>:595                                     ; preds = %611, %585
  %596 = load i32, i32* %i, align 4, !tbaa !1
  %597 = icmp slt i32 %596, 1
  br i1 %597, label %598, label %614

; <label>:598                                     ; preds = %595
  %599 = load i32, i32* %i, align 4, !tbaa !1
  %600 = sext i32 %599 to i64
  %601 = getelementptr inbounds [1 x i32], [1 x i32]* @g_1961, i32 0, i64 %600
  %602 = load i32, i32* %601, align 4, !tbaa !1
  %603 = sext i32 %602 to i64
  %604 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %603, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.64, i32 0, i32 0), i32 %604)
  %605 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %606 = icmp ne i32 %605, 0
  br i1 %606, label %607, label %610

; <label>:607                                     ; preds = %598
  %608 = load i32, i32* %i, align 4, !tbaa !1
  %609 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i32 %608)
  br label %610

; <label>:610                                     ; preds = %607, %598
  br label %611

; <label>:611                                     ; preds = %610
  %612 = load i32, i32* %i, align 4, !tbaa !1
  %613 = add nsw i32 %612, 1
  store i32 %613, i32* %i, align 4, !tbaa !1
  br label %595

; <label>:614                                     ; preds = %595
  %615 = load i32, i32* @g_1962, align 4, !tbaa !1
  %616 = sext i32 %615 to i64
  %617 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %616, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.65, i32 0, i32 0), i32 %617)
  %618 = load i64, i64* @g_2022, align 8, !tbaa !7
  %619 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %618, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i32 0, i32 0), i32 %619)
  %620 = load volatile i32, i32* @g_2190, align 4, !tbaa !1
  %621 = sext i32 %620 to i64
  %622 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %621, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.67, i32 0, i32 0), i32 %622)
  %623 = load i16, i16* @g_2263, align 2, !tbaa !10
  %624 = sext i16 %623 to i64
  %625 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %624, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.68, i32 0, i32 0), i32 %625)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %626

; <label>:626                                     ; preds = %654, %614
  %627 = load i32, i32* %i, align 4, !tbaa !1
  %628 = icmp slt i32 %627, 1
  br i1 %628, label %629, label %657

; <label>:629                                     ; preds = %626
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %630

; <label>:630                                     ; preds = %650, %629
  %631 = load i32, i32* %j, align 4, !tbaa !1
  %632 = icmp slt i32 %631, 5
  br i1 %632, label %633, label %653

; <label>:633                                     ; preds = %630
  %634 = load i32, i32* %j, align 4, !tbaa !1
  %635 = sext i32 %634 to i64
  %636 = load i32, i32* %i, align 4, !tbaa !1
  %637 = sext i32 %636 to i64
  %638 = getelementptr inbounds [1 x [5 x i32]], [1 x [5 x i32]]* @g_2349, i32 0, i64 %637
  %639 = getelementptr inbounds [5 x i32], [5 x i32]* %638, i32 0, i64 %635
  %640 = load i32, i32* %639, align 4, !tbaa !1
  %641 = sext i32 %640 to i64
  %642 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %641, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.69, i32 0, i32 0), i32 %642)
  %643 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %644 = icmp ne i32 %643, 0
  br i1 %644, label %645, label %649

; <label>:645                                     ; preds = %633
  %646 = load i32, i32* %i, align 4, !tbaa !1
  %647 = load i32, i32* %j, align 4, !tbaa !1
  %648 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.33, i32 0, i32 0), i32 %646, i32 %647)
  br label %649

; <label>:649                                     ; preds = %645, %633
  br label %650

; <label>:650                                     ; preds = %649
  %651 = load i32, i32* %j, align 4, !tbaa !1
  %652 = add nsw i32 %651, 1
  store i32 %652, i32* %j, align 4, !tbaa !1
  br label %630

; <label>:653                                     ; preds = %630
  br label %654

; <label>:654                                     ; preds = %653
  %655 = load i32, i32* %i, align 4, !tbaa !1
  %656 = add nsw i32 %655, 1
  store i32 %656, i32* %i, align 4, !tbaa !1
  br label %626

; <label>:657                                     ; preds = %626
  %658 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.70, i32 0, i32 0), i32 %658)
  %659 = load i8, i8* @g_2843, align 1, !tbaa !9
  %660 = zext i8 %659 to i64
  %661 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %660, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0), i32 %661)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %662

; <label>:662                                     ; preds = %690, %657
  %663 = load i32, i32* %i, align 4, !tbaa !1
  %664 = icmp slt i32 %663, 7
  br i1 %664, label %665, label %693

; <label>:665                                     ; preds = %662
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %666

; <label>:666                                     ; preds = %686, %665
  %667 = load i32, i32* %j, align 4, !tbaa !1
  %668 = icmp slt i32 %667, 5
  br i1 %668, label %669, label %689

; <label>:669                                     ; preds = %666
  %670 = load i32, i32* %j, align 4, !tbaa !1
  %671 = sext i32 %670 to i64
  %672 = load i32, i32* %i, align 4, !tbaa !1
  %673 = sext i32 %672 to i64
  %674 = getelementptr inbounds [7 x [5 x i16]], [7 x [5 x i16]]* @g_2915, i32 0, i64 %673
  %675 = getelementptr inbounds [5 x i16], [5 x i16]* %674, i32 0, i64 %671
  %676 = load volatile i16, i16* %675, align 2, !tbaa !10
  %677 = sext i16 %676 to i64
  %678 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %677, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.72, i32 0, i32 0), i32 %678)
  %679 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %680 = icmp ne i32 %679, 0
  br i1 %680, label %681, label %685

; <label>:681                                     ; preds = %669
  %682 = load i32, i32* %i, align 4, !tbaa !1
  %683 = load i32, i32* %j, align 4, !tbaa !1
  %684 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.33, i32 0, i32 0), i32 %682, i32 %683)
  br label %685

; <label>:685                                     ; preds = %681, %669
  br label %686

; <label>:686                                     ; preds = %685
  %687 = load i32, i32* %j, align 4, !tbaa !1
  %688 = add nsw i32 %687, 1
  store i32 %688, i32* %j, align 4, !tbaa !1
  br label %666

; <label>:689                                     ; preds = %666
  br label %690

; <label>:690                                     ; preds = %689
  %691 = load i32, i32* %i, align 4, !tbaa !1
  %692 = add nsw i32 %691, 1
  store i32 %692, i32* %i, align 4, !tbaa !1
  br label %662

; <label>:693                                     ; preds = %662
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %694

; <label>:694                                     ; preds = %722, %693
  %695 = load i32, i32* %i, align 4, !tbaa !1
  %696 = icmp slt i32 %695, 1
  br i1 %696, label %697, label %725

; <label>:697                                     ; preds = %694
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %698

; <label>:698                                     ; preds = %718, %697
  %699 = load i32, i32* %j, align 4, !tbaa !1
  %700 = icmp slt i32 %699, 9
  br i1 %700, label %701, label %721

; <label>:701                                     ; preds = %698
  %702 = load i32, i32* %j, align 4, !tbaa !1
  %703 = sext i32 %702 to i64
  %704 = load i32, i32* %i, align 4, !tbaa !1
  %705 = sext i32 %704 to i64
  %706 = getelementptr inbounds [1 x [9 x i32]], [1 x [9 x i32]]* @g_2924, i32 0, i64 %705
  %707 = getelementptr inbounds [9 x i32], [9 x i32]* %706, i32 0, i64 %703
  %708 = load volatile i32, i32* %707, align 4, !tbaa !1
  %709 = zext i32 %708 to i64
  %710 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %709, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.73, i32 0, i32 0), i32 %710)
  %711 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %712 = icmp ne i32 %711, 0
  br i1 %712, label %713, label %717

; <label>:713                                     ; preds = %701
  %714 = load i32, i32* %i, align 4, !tbaa !1
  %715 = load i32, i32* %j, align 4, !tbaa !1
  %716 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.33, i32 0, i32 0), i32 %714, i32 %715)
  br label %717

; <label>:717                                     ; preds = %713, %701
  br label %718

; <label>:718                                     ; preds = %717
  %719 = load i32, i32* %j, align 4, !tbaa !1
  %720 = add nsw i32 %719, 1
  store i32 %720, i32* %j, align 4, !tbaa !1
  br label %698

; <label>:721                                     ; preds = %698
  br label %722

; <label>:722                                     ; preds = %721
  %723 = load i32, i32* %i, align 4, !tbaa !1
  %724 = add nsw i32 %723, 1
  store i32 %724, i32* %i, align 4, !tbaa !1
  br label %694

; <label>:725                                     ; preds = %694
  %726 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %727 = zext i32 %726 to i64
  %728 = xor i64 %727, 4294967295
  %729 = trunc i64 %728 to i32
  %730 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %729, i32 %730)
  %731 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %731) #1
  %732 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %732) #1
  %733 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %733) #1
  %734 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %734) #1
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
  %l_6 = alloca i32, align 4
  %l_3104 = alloca i32, align 4
  %l_3137 = alloca i32, align 4
  %l_3138 = alloca i32, align 4
  %l_3140 = alloca i32, align 4
  %l_3144 = alloca i32, align 4
  %l_3149 = alloca i32, align 4
  %l_3159 = alloca i32***, align 8
  %l_3160 = alloca i64, align 8
  %1 = bitcast i32* %l_6 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 -1695734858, i32* %l_6, align 4, !tbaa !1
  %2 = bitcast i32* %l_3104 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 -3, i32* %l_3104, align 4, !tbaa !1
  %3 = bitcast i32* %l_3137 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 -1794388080, i32* %l_3137, align 4, !tbaa !1
  %4 = bitcast i32* %l_3138 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 -678025838, i32* %l_3138, align 4, !tbaa !1
  %5 = bitcast i32* %l_3140 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 -14288410, i32* %l_3140, align 4, !tbaa !1
  %6 = bitcast i32* %l_3144 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 -2059817658, i32* %l_3144, align 4, !tbaa !1
  %7 = bitcast i32* %l_3149 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 638937100, i32* %l_3149, align 4, !tbaa !1
  %8 = bitcast i32**** %l_3159 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i32*** @g_1058, i32**** %l_3159, align 8, !tbaa !5
  %9 = bitcast i64* %l_3160 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store i64 1, i64* %l_3160, align 8, !tbaa !7
  %10 = load i32**, i32*** @g_1058, align 8, !tbaa !5
  %11 = load i32*, i32** %10, align 8, !tbaa !5
  %12 = load i32, i32* %11, align 4, !tbaa !1
  %13 = bitcast i64* %l_3160 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
  %14 = bitcast i32**** %l_3159 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  %15 = bitcast i32* %l_3149 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #1
  %16 = bitcast i32* %l_3144 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #1
  %17 = bitcast i32* %l_3140 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #1
  %18 = bitcast i32* %l_3138 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #1
  %19 = bitcast i32* %l_3137 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  %20 = bitcast i32* %l_3104 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  %21 = bitcast i32* %l_6 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  ret i32 %12
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
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.74, i32 0, i32 0), i8* %8, i64 %11)
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
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.75, i32 0, i32 0), i32 %3)
  ret void
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
