; ModuleID = '00107.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.U0 = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_3 = internal global [5 x [9 x i32]] [[9 x i32] [i32 1704810125, i32 1704810125, i32 1704810125, i32 1704810125, i32 1704810125, i32 1704810125, i32 1704810125, i32 1704810125, i32 1704810125], [9 x i32] [i32 222264308, i32 1, i32 222264308, i32 1, i32 222264308, i32 1, i32 222264308, i32 1, i32 222264308], [9 x i32] [i32 1704810125, i32 1704810125, i32 1704810125, i32 1704810125, i32 1704810125, i32 1704810125, i32 1704810125, i32 1704810125, i32 1704810125], [9 x i32] [i32 222264308, i32 1, i32 222264308, i32 1, i32 222264308, i32 1, i32 222264308, i32 1, i32 222264308], [9 x i32] [i32 1704810125, i32 1704810125, i32 1704810125, i32 1704810125, i32 1704810125, i32 1704810125, i32 1704810125, i32 1704810125, i32 1704810125]], align 16
@.str.1 = private unnamed_addr constant [10 x i8] c"g_3[i][j]\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@g_8 = internal global i32 544309940, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"g_8\00", align 1
@g_37 = internal global i32 -318116991, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"g_37\00", align 1
@g_38 = internal global [10 x i16] [i16 31685, i16 31685, i16 11820, i16 11820, i16 31685, i16 11820, i16 11820, i16 31685, i16 11820, i16 11820], align 16
@.str.5 = private unnamed_addr constant [8 x i8] c"g_38[i]\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_59 = internal global [3 x i16] [i16 7215, i16 7215, i16 7215], align 2
@.str.7 = private unnamed_addr constant [8 x i8] c"g_59[i]\00", align 1
@g_60 = internal global i32 1, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"g_60\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"g_78[i].f0\00", align 1
@g_111 = internal global i8 -44, align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"g_111\00", align 1
@g_133 = internal global i8 0, align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"g_133\00", align 1
@g_147 = internal global i32 -6, align 4
@.str.12 = private unnamed_addr constant [6 x i8] c"g_147\00", align 1
@g_152 = internal global [4 x [8 x [7 x i8]]] [[8 x [7 x i8]] [[7 x i8] c"\F8\00\01)\BE\99\FF", [7 x i8] c"\FF\E7\00\87\FF\07\05", [7 x i8] c"\FF\BD\00h\01\07\FB", [7 x i8] c"0\01\FF0\86\99\9A", [7 x i8] c"\04\D7\02\FF\01\FA\0D", [7 x i8] c"\D0\01\00)\BB\AE\86", [7 x i8] c"\E1\04\F9\05\00S\01", [7 x i8] c"\08\F8*(\AE\FB\05"], [8 x [7 x i8]] [[7 x i8] c"\00\AC\01\01\AC\00\FA", [7 x i8] c"\E1V\04\9Ao\16\BD", [7 x i8] c"o\F7k\04\E7\FFV", [7 x i8] c",V\01\00 \FF\C0", [7 x i8] c"0\AC\F9\86\FF\03\04", [7 x i8] c"\06\F8\F4\CA\E9\F4\00", [7 x i8] c"\01\04\01\FB0\00\FF", [7 x i8] c"\F8\01\02\AC(\00\01"], [8 x [7 x i8]] [[7 x i8] c"\87\D7\E9'P\F7\BE", [7 x i8] c"\F4\01\01\E9\01)\D0", [7 x i8] c"\04\BD\FF\86\01\01\86", [7 x i8] c"V\E7\FF\F7P\01'", [7 x i8] c"h\00\00,(\F7\D7", [7 x i8] c"\FF\06\16\9A0}\FF", [7 x i8] c"'\F4\07\04\E9h ", [7 x i8] c"\019\00\02\FF))"], [8 x [7 x i8]] [[7 x i8] c" \05\8A\05 \F6\FF", [7 x i8] c"\BD\93\01\C0\FFv\00", [7 x i8] c"\C5\FA\99\05\E7\01\FF", [7 x i8] c"\01\C0'\F7h\08\03", [7 x i8] c"\C0\FF\05\F8\04S\E7", [7 x i8] c"\FF\07v\00)\FF\FF", [7 x i8] c"*\C0\BD\FF\00(\F4", [7 x i8] c"\01\FF\FF\01\00\8B\07"]], align 16
@.str.13 = private unnamed_addr constant [15 x i8] c"g_152[i][j][k]\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"index = [%d][%d][%d]\0A\00", align 1
@g_168 = internal global [10 x [9 x [2 x i64]]] [[9 x [2 x i64]] [[2 x i64] [i64 3, i64 45626594699461831], [2 x i64] [i64 -3, i64 3369933056876775347], [2 x i64] [i64 6257342235406198925, i64 6257342235406198925], [2 x i64] [i64 3, i64 6257342235406198925], [2 x i64] [i64 6257342235406198925, i64 3369933056876775347], [2 x i64] [i64 -3, i64 45626594699461831], [2 x i64] [i64 3, i64 -3], [2 x i64] [i64 45626594699461831, i64 3369933056876775347], [2 x i64] [i64 45626594699461831, i64 -3]], [9 x [2 x i64]] [[2 x i64] [i64 3, i64 45626594699461831], [2 x i64] [i64 -3, i64 3369933056876775347], [2 x i64] [i64 6257342235406198925, i64 6257342235406198925], [2 x i64] [i64 3, i64 6257342235406198925], [2 x i64] [i64 6257342235406198925, i64 3369933056876775347], [2 x i64] [i64 -3, i64 45626594699461831], [2 x i64] [i64 3, i64 -3], [2 x i64] [i64 45626594699461831, i64 3369933056876775347], [2 x i64] [i64 45626594699461831, i64 -3]], [9 x [2 x i64]] [[2 x i64] [i64 3, i64 45626594699461831], [2 x i64] [i64 -3, i64 3369933056876775347], [2 x i64] [i64 6257342235406198925, i64 6257342235406198925], [2 x i64] [i64 3, i64 6257342235406198925], [2 x i64] [i64 6257342235406198925, i64 3369933056876775347], [2 x i64] [i64 -3, i64 45626594699461831], [2 x i64] [i64 3, i64 -3], [2 x i64] [i64 45626594699461831, i64 3369933056876775347], [2 x i64] [i64 45626594699461831, i64 -3]], [9 x [2 x i64]] [[2 x i64] [i64 3, i64 45626594699461831], [2 x i64] [i64 -3, i64 3369933056876775347], [2 x i64] [i64 6257342235406198925, i64 6257342235406198925], [2 x i64] [i64 3, i64 6257342235406198925], [2 x i64] [i64 6257342235406198925, i64 3369933056876775347], [2 x i64] [i64 -3, i64 45626594699461831], [2 x i64] [i64 3, i64 -3], [2 x i64] [i64 45626594699461831, i64 3369933056876775347], [2 x i64] [i64 45626594699461831, i64 -3]], [9 x [2 x i64]] [[2 x i64] [i64 3, i64 45626594699461831], [2 x i64] [i64 -3, i64 3369933056876775347], [2 x i64] [i64 6257342235406198925, i64 6257342235406198925], [2 x i64] [i64 3, i64 6257342235406198925], [2 x i64] [i64 6257342235406198925, i64 3369933056876775347], [2 x i64] [i64 -3, i64 45626594699461831], [2 x i64] [i64 3, i64 -3], [2 x i64] [i64 45626594699461831, i64 3369933056876775347], [2 x i64] [i64 45626594699461831, i64 -3]], [9 x [2 x i64]] [[2 x i64] [i64 3, i64 45626594699461831], [2 x i64] [i64 -3, i64 3369933056876775347], [2 x i64] [i64 6257342235406198925, i64 6257342235406198925], [2 x i64] [i64 3, i64 6257342235406198925], [2 x i64] [i64 6257342235406198925, i64 3369933056876775347], [2 x i64] [i64 -3, i64 45626594699461831], [2 x i64] [i64 3, i64 -3], [2 x i64] [i64 45626594699461831, i64 3369933056876775347], [2 x i64] [i64 45626594699461831, i64 -3]], [9 x [2 x i64]] [[2 x i64] [i64 3, i64 45626594699461831], [2 x i64] [i64 -3, i64 3369933056876775347], [2 x i64] [i64 6257342235406198925, i64 6257342235406198925], [2 x i64] [i64 3, i64 6257342235406198925], [2 x i64] [i64 6257342235406198925, i64 3369933056876775347], [2 x i64] [i64 -3, i64 45626594699461831], [2 x i64] [i64 3, i64 -3], [2 x i64] [i64 45626594699461831, i64 3369933056876775347], [2 x i64] [i64 45626594699461831, i64 -3]], [9 x [2 x i64]] [[2 x i64] [i64 3, i64 45626594699461831], [2 x i64] [i64 -3, i64 3369933056876775347], [2 x i64] [i64 6257342235406198925, i64 6257342235406198925], [2 x i64] [i64 3, i64 6257342235406198925], [2 x i64] [i64 6257342235406198925, i64 3369933056876775347], [2 x i64] [i64 -3, i64 45626594699461831], [2 x i64] [i64 3, i64 -3], [2 x i64] [i64 45626594699461831, i64 3369933056876775347], [2 x i64] [i64 -2, i64 3369933056876775347]], [9 x [2 x i64]] [[2 x i64] [i64 -5497371877761400607, i64 -2], [2 x i64] [i64 3369933056876775347, i64 -899046931176887982], [2 x i64] [i64 3, i64 3], [2 x i64] [i64 -5497371877761400607, i64 3], [2 x i64] [i64 3, i64 -899046931176887982], [2 x i64] [i64 3369933056876775347, i64 -2], [2 x i64] [i64 -5497371877761400607, i64 3369933056876775347], [2 x i64] [i64 -2, i64 -899046931176887982], [2 x i64] [i64 -2, i64 3369933056876775347]], [9 x [2 x i64]] [[2 x i64] [i64 -5497371877761400607, i64 -2], [2 x i64] [i64 3369933056876775347, i64 -899046931176887982], [2 x i64] [i64 3, i64 3], [2 x i64] [i64 -5497371877761400607, i64 3], [2 x i64] [i64 3, i64 -899046931176887982], [2 x i64] [i64 3369933056876775347, i64 -2], [2 x i64] [i64 -5497371877761400607, i64 3369933056876775347], [2 x i64] [i64 -2, i64 -899046931176887982], [2 x i64] [i64 -2, i64 3369933056876775347]]], align 16
@.str.15 = private unnamed_addr constant [15 x i8] c"g_168[i][j][k]\00", align 1
@g_189 = internal global [7 x i16] [i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4], align 2
@.str.16 = private unnamed_addr constant [9 x i8] c"g_189[i]\00", align 1
@g_245 = internal global [2 x i8] c"\FF\FF", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"g_245[i]\00", align 1
@g_256 = internal global i64 8317394471518404582, align 8
@.str.18 = private unnamed_addr constant [6 x i8] c"g_256\00", align 1
@g_281 = internal global i64 6005849995182083800, align 8
@.str.19 = private unnamed_addr constant [6 x i8] c"g_281\00", align 1
@g_340 = internal global i16 -11005, align 2
@.str.20 = private unnamed_addr constant [6 x i8] c"g_340\00", align 1
@g_363 = internal global i8 -20, align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"g_363\00", align 1
@g_364 = internal global i8 2, align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"g_364\00", align 1
@g_377 = internal global i64 -3421623451707219328, align 8
@.str.23 = private unnamed_addr constant [6 x i8] c"g_377\00", align 1
@g_434 = internal global i64 8, align 8
@.str.24 = private unnamed_addr constant [6 x i8] c"g_434\00", align 1
@g_470 = internal global i64 -2921275258501480934, align 8
@.str.25 = private unnamed_addr constant [6 x i8] c"g_470\00", align 1
@g_590 = internal global i64 -5, align 8
@.str.26 = private unnamed_addr constant [6 x i8] c"g_590\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"g_631.f0\00", align 1
@g_678 = internal global i64 -5, align 8
@.str.28 = private unnamed_addr constant [6 x i8] c"g_678\00", align 1
@g_680 = internal global [8 x i64] [i64 336315734680047554, i64 336315734680047554, i64 336315734680047554, i64 336315734680047554, i64 336315734680047554, i64 336315734680047554, i64 336315734680047554, i64 336315734680047554], align 16
@.str.29 = private unnamed_addr constant [9 x i8] c"g_680[i]\00", align 1
@g_750 = internal constant i32 860500427, align 4
@.str.30 = private unnamed_addr constant [6 x i8] c"g_750\00", align 1
@g_751 = internal global i64 -2994155169598917485, align 8
@.str.31 = private unnamed_addr constant [6 x i8] c"g_751\00", align 1
@g_754 = internal global i64 -4933726529783683697, align 8
@.str.32 = private unnamed_addr constant [6 x i8] c"g_754\00", align 1
@g_759 = internal global i8 0, align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"g_759\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"g_809.f0\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"g_812.f0\00", align 1
@g_822 = internal global i64 -1, align 8
@.str.36 = private unnamed_addr constant [6 x i8] c"g_822\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"g_861.f0\00", align 1
@g_877 = internal global [10 x i32] [i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6], align 16
@.str.38 = private unnamed_addr constant [9 x i8] c"g_877[i]\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"g_898.f0\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"g_940\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"g_1045.f0\00", align 1
@g_1048 = internal global i8 -104, align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"g_1048\00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c"g_1090.f0\00", align 1
@g_1108 = internal global [9 x [5 x i8]] [[5 x i8] c"\FF\FF\13\13\FF", [5 x i8] c" \A9 \A9 ", [5 x i8] c"\FF\13\13\FF\FF", [5 x i8] c"\FF\A9\FF\A9\FF", [5 x i8] c"\FF\FF\13\13\FF", [5 x i8] c" \A9 \A9 ", [5 x i8] c"\FF\13\13\FF\FF", [5 x i8] c"\FF\A9\FF\A9\FF", [5 x i8] c"\FF\FF\13\13\FF"], align 16
@.str.44 = private unnamed_addr constant [13 x i8] c"g_1108[i][j]\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"g_1241.f0\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"g_1282.f0\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"g_1283.f0\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"g_1284.f0\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"g_1285.f0\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"g_1286.f0\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"g_1287.f0\00", align 1
@.str.52 = private unnamed_addr constant [10 x i8] c"g_1288.f0\00", align 1
@.str.53 = private unnamed_addr constant [10 x i8] c"g_1289.f0\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c"g_1290.f0\00", align 1
@.str.55 = private unnamed_addr constant [10 x i8] c"g_1291.f0\00", align 1
@.str.56 = private unnamed_addr constant [10 x i8] c"g_1292.f0\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"g_1338\00", align 1
@.str.58 = private unnamed_addr constant [10 x i8] c"g_1383.f0\00", align 1
@g_1441 = internal global i64 -2953409532120446637, align 8
@.str.59 = private unnamed_addr constant [7 x i8] c"g_1441\00", align 1
@g_1497 = internal global [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -1], align 16
@.str.60 = private unnamed_addr constant [10 x i8] c"g_1497[i]\00", align 1
@.str.61 = private unnamed_addr constant [10 x i8] c"g_1520.f0\00", align 1
@g_1522 = internal global [5 x i16] [i16 -3908, i16 -3908, i16 -3908, i16 -3908, i16 -3908], align 2
@.str.62 = private unnamed_addr constant [10 x i8] c"g_1522[i]\00", align 1
@g_1592 = internal global i8 -1, align 1
@.str.63 = private unnamed_addr constant [7 x i8] c"g_1592\00", align 1
@.str.64 = private unnamed_addr constant [10 x i8] c"g_1620.f0\00", align 1
@g_1655 = internal global i32 -1657905307, align 4
@.str.65 = private unnamed_addr constant [7 x i8] c"g_1655\00", align 1
@g_1679 = internal global i8 89, align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"g_1679\00", align 1
@g_1756 = internal global i8 -67, align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"g_1756\00", align 1
@.str.68 = private unnamed_addr constant [10 x i8] c"g_1779.f0\00", align 1
@g_1792 = internal global i32 1873847887, align 4
@.str.69 = private unnamed_addr constant [7 x i8] c"g_1792\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@func_1.l_2 = private unnamed_addr constant [8 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], align 16
@func_1.l_1524 = private unnamed_addr constant [7 x i32] [i32 0, i32 958294850, i32 0, i32 0, i32 958294850, i32 0, i32 0], align 16
@func_1.l_1547 = internal constant [5 x [7 x i32]] [[7 x i32] [i32 0, i32 0, i32 -1, i32 4, i32 5, i32 1014339638, i32 -7], [7 x i32] [i32 -7, i32 -425700630, i32 -1, i32 -1, i32 -425700630, i32 -7, i32 -1], [7 x i32] [i32 -410395187, i32 -1, i32 -623258788, i32 -1, i32 5, i32 5, i32 -1], [7 x i32] [i32 4, i32 351367932, i32 4, i32 1014339638, i32 -1, i32 -410395187, i32 -7], [7 x i32] [i32 -623258788, i32 -1, i32 -410395187, i32 1014339638, i32 -410395187, i32 -1, i32 -623258788]], align 16
@func_1.l_1637 = private unnamed_addr constant [7 x [5 x [7 x i32]]] [[5 x [7 x i32]] [[7 x i32] [i32 -1339572916, i32 -1339572916, i32 -1, i32 0, i32 0, i32 5, i32 -7], [7 x i32] [i32 -7, i32 858443890, i32 0, i32 -1339572916, i32 -7, i32 2, i32 2], [7 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 -1339572916, i32 -7], [7 x i32] [i32 0, i32 -1, i32 0, i32 0, i32 0, i32 9, i32 -1747262870], [7 x i32] [i32 0, i32 -1100319330, i32 0, i32 9, i32 9, i32 0, i32 -1100319330]], [5 x [7 x i32]] [[7 x i32] [i32 0, i32 0, i32 -1, i32 -7, i32 858443890, i32 0, i32 -1339572916], [7 x i32] [i32 0, i32 5, i32 -7, i32 0, i32 0, i32 9, i32 0], [7 x i32] [i32 -7, i32 0, i32 0, i32 -7, i32 2, i32 -1339572916, i32 0], [7 x i32] [i32 -1339572916, i32 0, i32 0, i32 9, i32 0, i32 2, i32 0], [7 x i32] [i32 0, i32 5, i32 -1339572916, i32 0, i32 -1339572916, i32 5, i32 0]], [5 x [7 x i32]] [[7 x i32] [i32 858443890, i32 0, i32 5, i32 0, i32 -1339572916, i32 -1100319330, i32 0], [7 x i32] [i32 -1747262870, i32 -1100319330, i32 9, i32 -1339572916, i32 0, i32 0, i32 -1339572916], [7 x i32] [i32 5, i32 -1, i32 5, i32 0, i32 2, i32 -1747262870, i32 -1100319330], [7 x i32] [i32 5, i32 0, i32 -1339572916, i32 -1100319330, i32 0, i32 -1, i32 -1747262870], [7 x i32] [i32 -1747262870, i32 858443890, i32 0, i32 0, i32 858443890, i32 -1747262870, i32 -7]], [5 x [7 x i32]] [[7 x i32] [i32 858443890, i32 -1339572916, i32 0, i32 0, i32 9, i32 0, i32 2], [7 x i32] [i32 0, i32 -1747262870, i32 -7, i32 -1100319330, i32 -1339572916, i32 -1747262870, i32 9], [7 x i32] [i32 0, i32 0, i32 -1100319330, i32 858443890, i32 5, i32 2, i32 9], [7 x i32] [i32 0, i32 0, i32 858443890, i32 0, i32 9, i32 -1, i32 -1], [7 x i32] [i32 5, i32 -1339572916, i32 0, i32 -1339572916, i32 5, i32 0, i32 0]], [5 x [7 x i32]] [[7 x i32] [i32 0, i32 -1100319330, i32 0, i32 -7, i32 -1339572916, i32 0, i32 0], [7 x i32] [i32 -7, i32 -1747262870, i32 858443890, i32 0, i32 0, i32 858443890, i32 -1747262870], [7 x i32] [i32 0, i32 -7, i32 -1100319330, i32 0, i32 0, i32 858443890, i32 0], [7 x i32] [i32 5, i32 2, i32 9, i32 0, i32 -7, i32 0, i32 -7], [7 x i32] [i32 0, i32 -7, i32 -7, i32 0, i32 -1, i32 0, i32 0]], [5 x [7 x i32]] [[7 x i32] [i32 0, i32 -7, i32 5, i32 0, i32 0, i32 -1, i32 -1339572916], [7 x i32] [i32 0, i32 2, i32 0, i32 -7, i32 0, i32 2, i32 0], [7 x i32] [i32 0, i32 -7, i32 2, i32 -1339572916, i32 0, i32 -1747262870, i32 -7], [7 x i32] [i32 0, i32 -1747262870, i32 0, i32 0, i32 0, i32 0, i32 0], [7 x i32] [i32 2, i32 -1100319330, i32 2, i32 858443890, i32 -1, i32 0, i32 -1747262870]], [5 x [7 x i32]] [[7 x i32] [i32 2, i32 -1339572916, i32 0, i32 -1747262870, i32 -7, i32 -1100319330, i32 0], [7 x i32] [i32 0, i32 0, i32 5, i32 5, i32 0, i32 0, i32 0], [7 x i32] [i32 0, i32 0, i32 -7, i32 5, i32 0, i32 0, i32 -1], [7 x i32] [i32 0, i32 0, i32 9, i32 -1747262870, i32 -1339572916, i32 -1747262870, i32 9], [7 x i32] [i32 0, i32 0, i32 -1100319330, i32 858443890, i32 5, i32 2, i32 9]]], align 16
@g_172 = internal global [8 x i32*] [i32* @g_8, i32* @g_8, i32* @g_8, i32* @g_8, i32* @g_8, i32* @g_8, i32* @g_8, i32* @g_8], align 16
@func_1.l_1523 = private unnamed_addr constant [10 x [2 x [3 x i32*]]] [[2 x [3 x i32*]] [[3 x i32*] [i32* null, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @g_1497, i32 0, i32 0), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [9 x i32]]* @g_3 to i8*), i64 168) to i32*)], [3 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_877 to i8*), i64 28) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [9 x i32]]* @g_3 to i8*), i64 168) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_877 to i8*), i64 28) to i32*)]], [2 x [3 x i32*]] [[3 x i32*] [i32* null, i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([4 x i32]* @g_1497 to i8*), i64 4) to i32*)], [3 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [9 x i32]]* @g_3 to i8*), i64 168) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_877 to i8*), i64 28) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [9 x i32]]* @g_3 to i8*), i64 48) to i32*)]], [2 x [3 x i32*]] [[3 x i32*] [i32* getelementptr inbounds ([4 x i32], [4 x i32]* @g_1497, i32 0, i32 0), i32* null, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @g_1497, i32 0, i32 0)], [3 x i32*] [i32* @g_37, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [9 x i32]]* @g_3 to i8*), i64 168) to i32*), i32* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [3 x i8] }* @g_861 to %union.U0*), i32 0, i32 0)]], [2 x [3 x i32*]] [[3 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_877 to i8*), i64 20) to i32*), i32* getelementptr inbounds ([4 x i32], [4 x i32]* @g_1497, i32 0, i32 0), i32* getelementptr inbounds ([4 x i32], [4 x i32]* @g_1497, i32 0, i32 0)], [3 x i32*] [i32* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [3 x i8] }* @g_861 to %union.U0*), i32 0, i32 0), i32* @g_37, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [9 x i32]]* @g_3 to i8*), i64 48) to i32*)]], [2 x [3 x i32*]] [[3 x i32*] [i32* @g_37, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_877 to i8*), i64 20) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([4 x i32]* @g_1497 to i8*), i64 4) to i32*)], [3 x i32*] [i32* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [3 x i8] }* @g_861 to %union.U0*), i32 0, i32 0), i32* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [3 x i8] }* @g_861 to %union.U0*), i32 0, i32 0), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_877 to i8*), i64 28) to i32*)]], [2 x [3 x i32*]] [[3 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_877 to i8*), i64 20) to i32*), i32* @g_37, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [9 x i32]]* @g_3 to i8*), i64 168) to i32*)], [3 x i32*] [i32* @g_37, i32* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [3 x i8] }* @g_861 to %union.U0*), i32 0, i32 0), i32* @g_37]], [2 x [3 x i32*]] [[3 x i32*] [i32* getelementptr inbounds ([4 x i32], [4 x i32]* @g_1497, i32 0, i32 0), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_877 to i8*), i64 20) to i32*), i32* null], [3 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [9 x i32]]* @g_3 to i8*), i64 168) to i32*), i32* @g_37, i32* @g_37]], [2 x [3 x i32*]] [[3 x i32*] [i32* null, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @g_1497, i32 0, i32 0), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [9 x i32]]* @g_3 to i8*), i64 168) to i32*)], [3 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_877 to i8*), i64 28) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [9 x i32]]* @g_3 to i8*), i64 168) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_877 to i8*), i64 28) to i32*)]], [2 x [3 x i32*]] [[3 x i32*] [i32* null, i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([4 x i32]* @g_1497 to i8*), i64 4) to i32*)], [3 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [9 x i32]]* @g_3 to i8*), i64 168) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_877 to i8*), i64 28) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [9 x i32]]* @g_3 to i8*), i64 48) to i32*)]], [2 x [3 x i32*]] [[3 x i32*] [i32* getelementptr inbounds ([4 x i32], [4 x i32]* @g_1497, i32 0, i32 0), i32* null, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @g_1497, i32 0, i32 0)], [3 x i32*] [i32* @g_37, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [9 x i32]]* @g_3 to i8*), i64 168) to i32*), i32* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [3 x i8] }* @g_861 to %union.U0*), i32 0, i32 0)]]], align 16
@g_513 = internal global i64* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x [9 x [2 x i64]]]* @g_168 to i8*), i64 1352) to i64*), align 8
@func_1.l_1621 = private unnamed_addr constant [1 x [9 x [8 x i64**]]] [[9 x [8 x i64**]] [[8 x i64**] [i64** @g_513, i64** null, i64** @g_513, i64** @g_513, i64** null, i64** @g_513, i64** @g_513, i64** @g_513], [8 x i64**] [i64** @g_513, i64** @g_513, i64** @g_513, i64** null, i64** @g_513, i64** @g_513, i64** @g_513, i64** null], [8 x i64**] [i64** @g_513, i64** null, i64** @g_513, i64** @g_513, i64** null, i64** @g_513, i64** null, i64** null], [8 x i64**] [i64** null, i64** @g_513, i64** null, i64** null, i64** null, i64** @g_513, i64** null, i64** @g_513], [8 x i64**] [i64** null, i64** @g_513, i64** @g_513, i64** @g_513, i64** null, i64** @g_513, i64** @g_513, i64** @g_513], [8 x i64**] [i64** @g_513, i64** @g_513, i64** null, i64** @g_513, i64** @g_513, i64** @g_513, i64** null, i64** @g_513], [8 x i64**] [i64** @g_513, i64** @g_513, i64** null, i64** @g_513, i64** null, i64** @g_513, i64** @g_513, i64** @g_513], [8 x i64**] [i64** @g_513, i64** null, i64** @g_513, i64** @g_513, i64** @g_513, i64** @g_513, i64** null, i64** @g_513], [8 x i64**] [i64** @g_513, i64** @g_513, i64** null, i64** @g_513, i64** @g_513, i64** @g_513, i64** null, i64** @g_513]]], align 16
@func_1.l_1649 = private unnamed_addr constant [7 x [9 x [4 x i8]]] [[9 x [4 x i8]] [[4 x i8] c"\FF)\B7\A5", [4 x i8] c")\FA\AC\FE", [4 x i8] c"\01\F7:\02", [4 x i8] c"\01\9E\FD\FF", [4 x i8] c"\F8\FFn\FD", [4 x i8] c"M\F0\00\FF", [4 x i8] c"\FF\04z\F7", [4 x i8] c"\A2\F7n\AC", [4 x i8] c"\07\B8\00\FE"], [9 x [4 x i8]] [[4 x i8] c"\01\01\01\01", [4 x i8] c"\7F\A5\ACn", [4 x i8] c"\FF\C0\DF\FF", [4 x i8] c"\FF\00\FD\FF", [4 x i8] c"\D0\C0\FDn", [4 x i8] c"\08\A5\E4\01", [4 x i8] c"\F7\01\09\FE", [4 x i8] c")\B8\FE\AC", [4 x i8] c"\01\F7\FA\F7"], [9 x [4 x i8]] [[4 x i8] c"\A9\04\FD\FF", [4 x i8] c"\07\F0\01\FD", [4 x i8] c"\01\FF\F6\FF", [4 x i8] c"\FF\9E\09\02", [4 x i8] c"\00\F7)\FE", [4 x i8] c"\08\FA\00\A5", [4 x i8] c"\F6)\FD\01", [4 x i8] c"\FF\FF\B7\01", [4 x i8] c"\FF\FA\00\09"], [9 x [4 x i8]] [[4 x i8] c"\01\00\01\02", [4 x i8] c"\FDU\FD)", [4 x i8] c"\07\FF\01\01", [4 x i8] c"M\FC\87\FF", [4 x i8] c"\B4\FF\87\B4", [4 x i8] c"\FD)\F6\04", [4 x i8] c"\AC\F6\00\FD", [4 x i8] c"\00\FD\00\00", [4 x i8] c"\01\F8\BB\D0"], [9 x [4 x i8]] [[4 x i8] c"\074\B4\F4", [4 x i8] c"\01)\01\87", [4 x i8] c"\09\A2\FF\D0", [4 x i8] c"\B7\FF\B4z", [4 x i8] c"\E4\FD\FF\00", [4 x i8] c"\07\7F\C0\04", [4 x i8] c"\01\E4\FF\FA", [4 x i8] c"\F6\FF\00\01", [4 x i8] c"\FE\D0\07z"], [9 x [4 x i8]] [[4 x i8] c"\01\018\07", [4 x i8] c"\B4\00\FF\FF", [4 x i8] c"))\A9\03", [4 x i8] c"\B7\0B\00\F8", [4 x i8] c"d\07\01\00", [4 x i8] c"n\07\FA\F8", [4 x i8] c"\07\0B\BF\03", [4 x i8] c"\FA)\00\FF", [4 x i8] c"z\00\FF\07"], [9 x [4 x i8]] [[4 x i8] c"\AC\01\FCz", [4 x i8] c"\12\D0\87\01", [4 x i8] c"\07\FF\B8\FA", [4 x i8] c"\FD\E4\FC\04", [4 x i8] c"\00\7F\00\00", [4 x i8] c"z\FD\01z", [4 x i8] c"\01\FF\BF\D0", [4 x i8] c"\B4\A2\B4\87", [4 x i8] c"n)\08\F4"]], align 16
@func_1.l_1664 = internal constant [3 x i16] zeroinitializer, align 2
@g_836 = internal global [10 x [7 x [2 x i32****]]] [[7 x [2 x i32****]] [[2 x i32****] [i32**** @g_837, i32**** @g_837], [2 x i32****] [i32**** @g_837, i32**** @g_837], [2 x i32****] [i32**** @g_837, i32**** @g_837], [2 x i32****] [i32**** @g_837, i32**** @g_837], [2 x i32****] [i32**** @g_837, i32**** @g_837], [2 x i32****] [i32**** @g_837, i32**** @g_837], [2 x i32****] [i32**** @g_837, i32**** @g_837]], [7 x [2 x i32****]] [[2 x i32****] [i32**** @g_837, i32**** @g_837], [2 x i32****] [i32**** @g_837, i32**** @g_837], [2 x i32****] [i32**** @g_837, i32**** @g_837], [2 x i32****] [i32**** @g_837, i32**** @g_837], [2 x i32****] [i32**** @g_837, i32**** @g_837], [2 x i32****] [i32**** @g_837, i32**** @g_837], [2 x i32****] [i32**** @g_837, i32**** @g_837]], [7 x [2 x i32****]] [[2 x i32****] [i32**** @g_837, i32**** @g_837], [2 x i32****] [i32**** @g_837, i32**** @g_837], [2 x i32****] [i32**** @g_837, i32**** @g_837], [2 x i32****] [i32**** @g_837, i32**** @g_837], [2 x i32****] [i32**** @g_837, i32**** @g_837], [2 x i32****] [i32**** @g_837, i32**** @g_837], [2 x i32****] [i32**** @g_837, i32**** @g_837]], [7 x [2 x i32****]] [[2 x i32****] [i32**** @g_837, i32**** @g_837], [2 x i32****] [i32**** @g_837, i32**** @g_837], [2 x i32****] [i32**** @g_837, i32**** @g_837], [2 x i32****] [i32**** @g_837, i32**** @g_837], [2 x i32****] [i32**** @g_837, i32**** @g_837], [2 x i32****] [i32**** @g_837, i32**** @g_837], [2 x i32****] [i32**** @g_837, i32**** @g_837]], [7 x [2 x i32****]] [[2 x i32****] [i32**** @g_837, i32**** @g_837], [2 x i32****] [i32**** @g_837, i32**** @g_837], [2 x i32****] [i32**** @g_837, i32**** @g_837], [2 x i32****] [i32**** @g_837, i32**** @g_837], [2 x i32****] [i32**** @g_837, i32**** @g_837], [2 x i32****] [i32**** @g_837, i32**** @g_837], [2 x i32****] [i32**** @g_837, i32**** @g_837]], [7 x [2 x i32****]] [[2 x i32****] [i32**** @g_837, i32**** @g_837], [2 x i32****] [i32**** @g_837, i32**** @g_837], [2 x i32****] [i32**** @g_837, i32**** @g_837], [2 x i32****] [i32**** @g_837, i32**** @g_837], [2 x i32****] [i32**** @g_837, i32**** @g_837], [2 x i32****] [i32**** @g_837, i32**** @g_837], [2 x i32****] [i32**** @g_837, i32**** @g_837]], [7 x [2 x i32****]] [[2 x i32****] [i32**** @g_837, i32**** @g_837], [2 x i32****] [i32**** @g_837, i32**** @g_837], [2 x i32****] [i32**** @g_837, i32**** @g_837], [2 x i32****] [i32**** @g_837, i32**** @g_837], [2 x i32****] [i32**** @g_837, i32**** @g_837], [2 x i32****] [i32**** @g_837, i32**** @g_837], [2 x i32****] [i32**** @g_837, i32**** @g_837]], [7 x [2 x i32****]] [[2 x i32****] [i32**** @g_837, i32**** @g_837], [2 x i32****] [i32**** @g_837, i32**** @g_837], [2 x i32****] [i32**** @g_837, i32**** @g_837], [2 x i32****] [i32**** @g_837, i32**** @g_837], [2 x i32****] [i32**** @g_837, i32**** @g_837], [2 x i32****] [i32**** @g_837, i32**** @g_837], [2 x i32****] [i32**** @g_837, i32**** @g_837]], [7 x [2 x i32****]] [[2 x i32****] [i32**** @g_837, i32**** @g_837], [2 x i32****] [i32**** @g_837, i32**** @g_837], [2 x i32****] [i32**** @g_837, i32**** @g_837], [2 x i32****] [i32**** @g_837, i32**** @g_837], [2 x i32****] [i32**** @g_837, i32**** @g_837], [2 x i32****] [i32**** @g_837, i32**** @g_837], [2 x i32****] [i32**** @g_837, i32**** @g_837]], [7 x [2 x i32****]] [[2 x i32****] [i32**** @g_837, i32**** @g_837], [2 x i32****] [i32**** @g_837, i32**** @g_837], [2 x i32****] [i32**** @g_837, i32**** @g_837], [2 x i32****] [i32**** @g_837, i32**** @g_837], [2 x i32****] [i32**** @g_837, i32**** @g_837], [2 x i32****] [i32**** @g_837, i32**** @g_837], [2 x i32****] [i32**** @g_837, i32**** @g_837]]], align 16
@func_1.l_1755 = internal constant [3 x [4 x [2 x i32]]] [[4 x [2 x i32]] [[2 x i32] [i32 1534273656, i32 1534273656], [2 x i32] [i32 1534273656, i32 1534273656], [2 x i32] [i32 1534273656, i32 1534273656], [2 x i32] [i32 1534273656, i32 1534273656]], [4 x [2 x i32]] [[2 x i32] [i32 1534273656, i32 1534273656], [2 x i32] [i32 1534273656, i32 1534273656], [2 x i32] [i32 1534273656, i32 1534273656], [2 x i32] [i32 1534273656, i32 1534273656]], [4 x [2 x i32]] [[2 x i32] [i32 1534273656, i32 1534273656], [2 x i32] [i32 1534273656, i32 1534273656], [2 x i32] [i32 1534273656, i32 1534273656], [2 x i32] [i32 1534273656, i32 1534273656]]], align 16
@g_1570 = internal global i32* @g_147, align 8
@g_837 = internal global i32*** @g_838, align 8
@g_838 = internal global i32** bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i32*]* @g_172 to i8*), i64 56) to i32**), align 8
@.str.70 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@g_78 = internal global <{ { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] } }> <{ { i8, [3 x i8] } { i8 -26, [3 x i8] undef }, { i8, [3 x i8] } { i8 -26, [3 x i8] undef }, { i8, [3 x i8] } { i8 -26, [3 x i8] undef } }>, align 4
@g_631 = internal global { i8, [3 x i8] } { i8 -57, [3 x i8] undef }, align 4
@g_809 = internal constant { i8, [3 x i8] } { i8 -45, [3 x i8] undef }, align 4
@g_812 = internal global { i8, [3 x i8] } { i8 4, [3 x i8] undef }, align 4
@g_861 = internal global { i8, [3 x i8] } { i8 -7, [3 x i8] undef }, align 4
@g_898 = internal global { i8, [3 x i8] } { i8 7, [3 x i8] undef }, align 4
@g_1045 = internal global { i8, [3 x i8] } { i8 -4, [3 x i8] undef }, align 4
@g_1090 = internal global { i8, [3 x i8] } { i8 -1, [3 x i8] undef }, align 4
@g_1241 = internal global { i8, [3 x i8] } { i8 38, [3 x i8] undef }, align 4
@g_1282 = internal global { i8, [3 x i8] } { i8 -22, [3 x i8] undef }, align 4
@g_1283 = internal global { i8, [3 x i8] } { i8 107, [3 x i8] undef }, align 4
@g_1284 = internal global { i8, [3 x i8] } { i8 -61, [3 x i8] undef }, align 4
@g_1285 = internal global { i8, [3 x i8] } { i8 -1, [3 x i8] undef }, align 4
@g_1286 = internal global { i8, [3 x i8] } { i8 -56, [3 x i8] undef }, align 4
@g_1287 = internal global { i8, [3 x i8] } { i8 -1, [3 x i8] undef }, align 4
@g_1288 = internal global { i8, [3 x i8] } { i8 1, [3 x i8] undef }, align 4
@g_1289 = internal global { i8, [3 x i8] } { i8 -1, [3 x i8] undef }, align 4
@g_1290 = internal global { i8, [3 x i8] } { i8 -1, [3 x i8] undef }, align 4
@g_1291 = internal global { i8, [3 x i8] } { i8 78, [3 x i8] undef }, align 4
@g_1292 = internal global { i8, [3 x i8] } { i8 1, [3 x i8] undef }, align 4
@g_1383 = internal constant { i8, [3 x i8] } { i8 -2, [3 x i8] undef }, align 4
@g_1520 = internal constant { i8, [3 x i8] } { i8 81, [3 x i8] undef }, align 4
@g_1620 = internal global { i8, [3 x i8] } { i8 18, [3 x i8] undef }, align 4
@g_1779 = internal global { i8, [3 x i8] } { i8 -28, [3 x i8] undef }, align 4
@.str.71 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

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

; <label>:91                                      ; preds = %119, %89
  %92 = load i32, i32* %i, align 4, !tbaa !1
  %93 = icmp slt i32 %92, 5
  br i1 %93, label %94, label %122

; <label>:94                                      ; preds = %91
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %95

; <label>:95                                      ; preds = %115, %94
  %96 = load i32, i32* %j, align 4, !tbaa !1
  %97 = icmp slt i32 %96, 9
  br i1 %97, label %98, label %118

; <label>:98                                      ; preds = %95
  %99 = load i32, i32* %j, align 4, !tbaa !1
  %100 = sext i32 %99 to i64
  %101 = load i32, i32* %i, align 4, !tbaa !1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [5 x [9 x i32]], [5 x [9 x i32]]* @g_3, i32 0, i64 %102
  %104 = getelementptr inbounds [9 x i32], [9 x i32]* %103, i32 0, i64 %100
  %105 = load i32, i32* %104, align 4, !tbaa !1
  %106 = sext i32 %105 to i64
  %107 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %106, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 %107)
  %108 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

; <label>:110                                     ; preds = %98
  %111 = load i32, i32* %i, align 4, !tbaa !1
  %112 = load i32, i32* %j, align 4, !tbaa !1
  %113 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i32 %111, i32 %112)
  br label %114

; <label>:114                                     ; preds = %110, %98
  br label %115

; <label>:115                                     ; preds = %114
  %116 = load i32, i32* %j, align 4, !tbaa !1
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %j, align 4, !tbaa !1
  br label %95

; <label>:118                                     ; preds = %95
  br label %119

; <label>:119                                     ; preds = %118
  %120 = load i32, i32* %i, align 4, !tbaa !1
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %i, align 4, !tbaa !1
  br label %91

; <label>:122                                     ; preds = %91
  %123 = load i32, i32* @g_8, align 4, !tbaa !1
  %124 = zext i32 %123 to i64
  %125 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %124, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i32 %125)
  %126 = load i32, i32* @g_37, align 4, !tbaa !1
  %127 = sext i32 %126 to i64
  %128 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %127, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %128)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %129

; <label>:129                                     ; preds = %145, %122
  %130 = load i32, i32* %i, align 4, !tbaa !1
  %131 = icmp slt i32 %130, 10
  br i1 %131, label %132, label %148

; <label>:132                                     ; preds = %129
  %133 = load i32, i32* %i, align 4, !tbaa !1
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [10 x i16], [10 x i16]* @g_38, i32 0, i64 %134
  %136 = load i16, i16* %135, align 2, !tbaa !10
  %137 = zext i16 %136 to i64
  %138 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %137, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32 %138)
  %139 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %144

; <label>:141                                     ; preds = %132
  %142 = load i32, i32* %i, align 4, !tbaa !1
  %143 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i32 %142)
  br label %144

; <label>:144                                     ; preds = %141, %132
  br label %145

; <label>:145                                     ; preds = %144
  %146 = load i32, i32* %i, align 4, !tbaa !1
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %i, align 4, !tbaa !1
  br label %129

; <label>:148                                     ; preds = %129
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %149

; <label>:149                                     ; preds = %165, %148
  %150 = load i32, i32* %i, align 4, !tbaa !1
  %151 = icmp slt i32 %150, 3
  br i1 %151, label %152, label %168

; <label>:152                                     ; preds = %149
  %153 = load i32, i32* %i, align 4, !tbaa !1
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [3 x i16], [3 x i16]* @g_59, i32 0, i64 %154
  %156 = load i16, i16* %155, align 2, !tbaa !10
  %157 = sext i16 %156 to i64
  %158 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %157, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i32 %158)
  %159 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %164

; <label>:161                                     ; preds = %152
  %162 = load i32, i32* %i, align 4, !tbaa !1
  %163 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i32 %162)
  br label %164

; <label>:164                                     ; preds = %161, %152
  br label %165

; <label>:165                                     ; preds = %164
  %166 = load i32, i32* %i, align 4, !tbaa !1
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %i, align 4, !tbaa !1
  br label %149

; <label>:168                                     ; preds = %149
  %169 = load i32, i32* @g_60, align 4, !tbaa !1
  %170 = sext i32 %169 to i64
  %171 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %170, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 %171)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %172

; <label>:172                                     ; preds = %189, %168
  %173 = load i32, i32* %i, align 4, !tbaa !1
  %174 = icmp slt i32 %173, 3
  br i1 %174, label %175, label %192

; <label>:175                                     ; preds = %172
  %176 = load i32, i32* %i, align 4, !tbaa !1
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [3 x %union.U0], [3 x %union.U0]* bitcast (<{ { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] } }>* @g_78 to [3 x %union.U0]*), i32 0, i64 %177
  %179 = bitcast %union.U0* %178 to i8*
  %180 = load volatile i8, i8* %179, align 1, !tbaa !9
  %181 = zext i8 %180 to i64
  %182 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %181, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i32 %182)
  %183 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %188

; <label>:185                                     ; preds = %175
  %186 = load i32, i32* %i, align 4, !tbaa !1
  %187 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i32 %186)
  br label %188

; <label>:188                                     ; preds = %185, %175
  br label %189

; <label>:189                                     ; preds = %188
  %190 = load i32, i32* %i, align 4, !tbaa !1
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %i, align 4, !tbaa !1
  br label %172

; <label>:192                                     ; preds = %172
  %193 = load volatile i8, i8* @g_111, align 1, !tbaa !9
  %194 = zext i8 %193 to i64
  %195 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %194, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i32 %195)
  %196 = load i8, i8* @g_133, align 1, !tbaa !9
  %197 = sext i8 %196 to i64
  %198 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %197, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i32 %198)
  %199 = load i32, i32* @g_147, align 4, !tbaa !1
  %200 = zext i32 %199 to i64
  %201 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %200, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i32 %201)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %202

; <label>:202                                     ; preds = %242, %192
  %203 = load i32, i32* %i, align 4, !tbaa !1
  %204 = icmp slt i32 %203, 4
  br i1 %204, label %205, label %245

; <label>:205                                     ; preds = %202
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %206

; <label>:206                                     ; preds = %238, %205
  %207 = load i32, i32* %j, align 4, !tbaa !1
  %208 = icmp slt i32 %207, 8
  br i1 %208, label %209, label %241

; <label>:209                                     ; preds = %206
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %210

; <label>:210                                     ; preds = %234, %209
  %211 = load i32, i32* %k, align 4, !tbaa !1
  %212 = icmp slt i32 %211, 7
  br i1 %212, label %213, label %237

; <label>:213                                     ; preds = %210
  %214 = load i32, i32* %k, align 4, !tbaa !1
  %215 = sext i32 %214 to i64
  %216 = load i32, i32* %j, align 4, !tbaa !1
  %217 = sext i32 %216 to i64
  %218 = load i32, i32* %i, align 4, !tbaa !1
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds [4 x [8 x [7 x i8]]], [4 x [8 x [7 x i8]]]* @g_152, i32 0, i64 %219
  %221 = getelementptr inbounds [8 x [7 x i8]], [8 x [7 x i8]]* %220, i32 0, i64 %217
  %222 = getelementptr inbounds [7 x i8], [7 x i8]* %221, i32 0, i64 %215
  %223 = load i8, i8* %222, align 1, !tbaa !9
  %224 = zext i8 %223 to i64
  %225 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %224, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0), i32 %225)
  %226 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %233

; <label>:228                                     ; preds = %213
  %229 = load i32, i32* %i, align 4, !tbaa !1
  %230 = load i32, i32* %j, align 4, !tbaa !1
  %231 = load i32, i32* %k, align 4, !tbaa !1
  %232 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0), i32 %229, i32 %230, i32 %231)
  br label %233

; <label>:233                                     ; preds = %228, %213
  br label %234

; <label>:234                                     ; preds = %233
  %235 = load i32, i32* %k, align 4, !tbaa !1
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %k, align 4, !tbaa !1
  br label %210

; <label>:237                                     ; preds = %210
  br label %238

; <label>:238                                     ; preds = %237
  %239 = load i32, i32* %j, align 4, !tbaa !1
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %j, align 4, !tbaa !1
  br label %206

; <label>:241                                     ; preds = %206
  br label %242

; <label>:242                                     ; preds = %241
  %243 = load i32, i32* %i, align 4, !tbaa !1
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %i, align 4, !tbaa !1
  br label %202

; <label>:245                                     ; preds = %202
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %246

; <label>:246                                     ; preds = %285, %245
  %247 = load i32, i32* %i, align 4, !tbaa !1
  %248 = icmp slt i32 %247, 10
  br i1 %248, label %249, label %288

; <label>:249                                     ; preds = %246
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %250

; <label>:250                                     ; preds = %281, %249
  %251 = load i32, i32* %j, align 4, !tbaa !1
  %252 = icmp slt i32 %251, 9
  br i1 %252, label %253, label %284

; <label>:253                                     ; preds = %250
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %254

; <label>:254                                     ; preds = %277, %253
  %255 = load i32, i32* %k, align 4, !tbaa !1
  %256 = icmp slt i32 %255, 2
  br i1 %256, label %257, label %280

; <label>:257                                     ; preds = %254
  %258 = load i32, i32* %k, align 4, !tbaa !1
  %259 = sext i32 %258 to i64
  %260 = load i32, i32* %j, align 4, !tbaa !1
  %261 = sext i32 %260 to i64
  %262 = load i32, i32* %i, align 4, !tbaa !1
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds [10 x [9 x [2 x i64]]], [10 x [9 x [2 x i64]]]* @g_168, i32 0, i64 %263
  %265 = getelementptr inbounds [9 x [2 x i64]], [9 x [2 x i64]]* %264, i32 0, i64 %261
  %266 = getelementptr inbounds [2 x i64], [2 x i64]* %265, i32 0, i64 %259
  %267 = load i64, i64* %266, align 8, !tbaa !7
  %268 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %267, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i32 %268)
  %269 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %276

; <label>:271                                     ; preds = %257
  %272 = load i32, i32* %i, align 4, !tbaa !1
  %273 = load i32, i32* %j, align 4, !tbaa !1
  %274 = load i32, i32* %k, align 4, !tbaa !1
  %275 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0), i32 %272, i32 %273, i32 %274)
  br label %276

; <label>:276                                     ; preds = %271, %257
  br label %277

; <label>:277                                     ; preds = %276
  %278 = load i32, i32* %k, align 4, !tbaa !1
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %k, align 4, !tbaa !1
  br label %254

; <label>:280                                     ; preds = %254
  br label %281

; <label>:281                                     ; preds = %280
  %282 = load i32, i32* %j, align 4, !tbaa !1
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %j, align 4, !tbaa !1
  br label %250

; <label>:284                                     ; preds = %250
  br label %285

; <label>:285                                     ; preds = %284
  %286 = load i32, i32* %i, align 4, !tbaa !1
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %i, align 4, !tbaa !1
  br label %246

; <label>:288                                     ; preds = %246
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %289

; <label>:289                                     ; preds = %305, %288
  %290 = load i32, i32* %i, align 4, !tbaa !1
  %291 = icmp slt i32 %290, 7
  br i1 %291, label %292, label %308

; <label>:292                                     ; preds = %289
  %293 = load i32, i32* %i, align 4, !tbaa !1
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds [7 x i16], [7 x i16]* @g_189, i32 0, i64 %294
  %296 = load i16, i16* %295, align 2, !tbaa !10
  %297 = zext i16 %296 to i64
  %298 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %297, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i32 %298)
  %299 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %304

; <label>:301                                     ; preds = %292
  %302 = load i32, i32* %i, align 4, !tbaa !1
  %303 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i32 %302)
  br label %304

; <label>:304                                     ; preds = %301, %292
  br label %305

; <label>:305                                     ; preds = %304
  %306 = load i32, i32* %i, align 4, !tbaa !1
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %i, align 4, !tbaa !1
  br label %289

; <label>:308                                     ; preds = %289
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %309

; <label>:309                                     ; preds = %325, %308
  %310 = load i32, i32* %i, align 4, !tbaa !1
  %311 = icmp slt i32 %310, 2
  br i1 %311, label %312, label %328

; <label>:312                                     ; preds = %309
  %313 = load i32, i32* %i, align 4, !tbaa !1
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds [2 x i8], [2 x i8]* @g_245, i32 0, i64 %314
  %316 = load i8, i8* %315, align 1, !tbaa !9
  %317 = zext i8 %316 to i64
  %318 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %317, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i32 %318)
  %319 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %324

; <label>:321                                     ; preds = %312
  %322 = load i32, i32* %i, align 4, !tbaa !1
  %323 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i32 %322)
  br label %324

; <label>:324                                     ; preds = %321, %312
  br label %325

; <label>:325                                     ; preds = %324
  %326 = load i32, i32* %i, align 4, !tbaa !1
  %327 = add nsw i32 %326, 1
  store i32 %327, i32* %i, align 4, !tbaa !1
  br label %309

; <label>:328                                     ; preds = %309
  %329 = load i64, i64* @g_256, align 8, !tbaa !7
  %330 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %329, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i32 %330)
  %331 = load i64, i64* @g_281, align 8, !tbaa !7
  %332 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %331, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i32 %332)
  %333 = load volatile i16, i16* @g_340, align 2, !tbaa !10
  %334 = sext i16 %333 to i64
  %335 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %334, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 %335)
  %336 = load volatile i8, i8* @g_363, align 1, !tbaa !9
  %337 = sext i8 %336 to i64
  %338 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %337, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i32 %338)
  %339 = load i8, i8* @g_364, align 1, !tbaa !9
  %340 = zext i8 %339 to i64
  %341 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %340, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i32 %341)
  %342 = load volatile i64, i64* @g_377, align 8, !tbaa !7
  %343 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %342, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 %343)
  %344 = load i64, i64* @g_434, align 8, !tbaa !7
  %345 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %344, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %345)
  %346 = load i64, i64* @g_470, align 8, !tbaa !7
  %347 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %346, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i32 %347)
  %348 = load volatile i64, i64* @g_590, align 8, !tbaa !7
  %349 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %348, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i32 %349)
  %350 = load volatile i8, i8* getelementptr inbounds ({ i8, [3 x i8] }, { i8, [3 x i8] }* @g_631, i32 0, i32 0), align 1, !tbaa !9
  %351 = zext i8 %350 to i64
  %352 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %351, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), i32 %352)
  %353 = load i64, i64* @g_678, align 8, !tbaa !7
  %354 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %353, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i32 %354)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %355

; <label>:355                                     ; preds = %370, %328
  %356 = load i32, i32* %i, align 4, !tbaa !1
  %357 = icmp slt i32 %356, 8
  br i1 %357, label %358, label %373

; <label>:358                                     ; preds = %355
  %359 = load i32, i32* %i, align 4, !tbaa !1
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds [8 x i64], [8 x i64]* @g_680, i32 0, i64 %360
  %362 = load i64, i64* %361, align 8, !tbaa !7
  %363 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %362, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0), i32 %363)
  %364 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %369

; <label>:366                                     ; preds = %358
  %367 = load i32, i32* %i, align 4, !tbaa !1
  %368 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i32 %367)
  br label %369

; <label>:369                                     ; preds = %366, %358
  br label %370

; <label>:370                                     ; preds = %369
  %371 = load i32, i32* %i, align 4, !tbaa !1
  %372 = add nsw i32 %371, 1
  store i32 %372, i32* %i, align 4, !tbaa !1
  br label %355

; <label>:373                                     ; preds = %355
  %374 = load volatile i32, i32* @g_750, align 4, !tbaa !1
  %375 = sext i32 %374 to i64
  %376 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %375, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i32 %376)
  %377 = load i64, i64* @g_751, align 8, !tbaa !7
  %378 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %377, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i32 %378)
  %379 = load i64, i64* @g_754, align 8, !tbaa !7
  %380 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %379, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i32 %380)
  %381 = load i8, i8* @g_759, align 1, !tbaa !9
  %382 = zext i8 %381 to i64
  %383 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %382, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i32 %383)
  %384 = load volatile i8, i8* getelementptr inbounds ({ i8, [3 x i8] }, { i8, [3 x i8] }* @g_809, i32 0, i32 0), align 1, !tbaa !9
  %385 = zext i8 %384 to i64
  %386 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %385, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i32 0, i32 0), i32 %386)
  %387 = load volatile i8, i8* getelementptr inbounds ({ i8, [3 x i8] }, { i8, [3 x i8] }* @g_812, i32 0, i32 0), align 1, !tbaa !9
  %388 = zext i8 %387 to i64
  %389 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %388, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i32 0, i32 0), i32 %389)
  %390 = load volatile i64, i64* @g_822, align 8, !tbaa !7
  %391 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %390, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i32 %391)
  %392 = load volatile i8, i8* getelementptr inbounds ({ i8, [3 x i8] }, { i8, [3 x i8] }* @g_861, i32 0, i32 0), align 1, !tbaa !9
  %393 = zext i8 %392 to i64
  %394 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %393, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i32 0, i32 0), i32 %394)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %395

; <label>:395                                     ; preds = %411, %373
  %396 = load i32, i32* %i, align 4, !tbaa !1
  %397 = icmp slt i32 %396, 10
  br i1 %397, label %398, label %414

; <label>:398                                     ; preds = %395
  %399 = load i32, i32* %i, align 4, !tbaa !1
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds [10 x i32], [10 x i32]* @g_877, i32 0, i64 %400
  %402 = load i32, i32* %401, align 4, !tbaa !1
  %403 = sext i32 %402 to i64
  %404 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %403, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i32 0, i32 0), i32 %404)
  %405 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %407, label %410

; <label>:407                                     ; preds = %398
  %408 = load i32, i32* %i, align 4, !tbaa !1
  %409 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i32 %408)
  br label %410

; <label>:410                                     ; preds = %407, %398
  br label %411

; <label>:411                                     ; preds = %410
  %412 = load i32, i32* %i, align 4, !tbaa !1
  %413 = add nsw i32 %412, 1
  store i32 %413, i32* %i, align 4, !tbaa !1
  br label %395

; <label>:414                                     ; preds = %395
  %415 = load volatile i8, i8* getelementptr inbounds ({ i8, [3 x i8] }, { i8, [3 x i8] }* @g_898, i32 0, i32 0), align 1, !tbaa !9
  %416 = zext i8 %415 to i64
  %417 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %416, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i32 0, i32 0), i32 %417)
  %418 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0), i32 %418)
  %419 = load volatile i8, i8* getelementptr inbounds ({ i8, [3 x i8] }, { i8, [3 x i8] }* @g_1045, i32 0, i32 0), align 1, !tbaa !9
  %420 = zext i8 %419 to i64
  %421 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %420, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i32 0, i32 0), i32 %421)
  %422 = load volatile i8, i8* @g_1048, align 1, !tbaa !9
  %423 = sext i8 %422 to i64
  %424 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %423, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), i32 %424)
  %425 = load volatile i8, i8* getelementptr inbounds ({ i8, [3 x i8] }, { i8, [3 x i8] }* @g_1090, i32 0, i32 0), align 1, !tbaa !9
  %426 = zext i8 %425 to i64
  %427 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %426, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i32 0, i32 0), i32 %427)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %428

; <label>:428                                     ; preds = %456, %414
  %429 = load i32, i32* %i, align 4, !tbaa !1
  %430 = icmp slt i32 %429, 9
  br i1 %430, label %431, label %459

; <label>:431                                     ; preds = %428
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %432

; <label>:432                                     ; preds = %452, %431
  %433 = load i32, i32* %j, align 4, !tbaa !1
  %434 = icmp slt i32 %433, 5
  br i1 %434, label %435, label %455

; <label>:435                                     ; preds = %432
  %436 = load i32, i32* %j, align 4, !tbaa !1
  %437 = sext i32 %436 to i64
  %438 = load i32, i32* %i, align 4, !tbaa !1
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds [9 x [5 x i8]], [9 x [5 x i8]]* @g_1108, i32 0, i64 %439
  %441 = getelementptr inbounds [5 x i8], [5 x i8]* %440, i32 0, i64 %437
  %442 = load i8, i8* %441, align 1, !tbaa !9
  %443 = sext i8 %442 to i64
  %444 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %443, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.44, i32 0, i32 0), i32 %444)
  %445 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %446 = icmp ne i32 %445, 0
  br i1 %446, label %447, label %451

; <label>:447                                     ; preds = %435
  %448 = load i32, i32* %i, align 4, !tbaa !1
  %449 = load i32, i32* %j, align 4, !tbaa !1
  %450 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i32 %448, i32 %449)
  br label %451

; <label>:451                                     ; preds = %447, %435
  br label %452

; <label>:452                                     ; preds = %451
  %453 = load i32, i32* %j, align 4, !tbaa !1
  %454 = add nsw i32 %453, 1
  store i32 %454, i32* %j, align 4, !tbaa !1
  br label %432

; <label>:455                                     ; preds = %432
  br label %456

; <label>:456                                     ; preds = %455
  %457 = load i32, i32* %i, align 4, !tbaa !1
  %458 = add nsw i32 %457, 1
  store i32 %458, i32* %i, align 4, !tbaa !1
  br label %428

; <label>:459                                     ; preds = %428
  %460 = load volatile i8, i8* getelementptr inbounds ({ i8, [3 x i8] }, { i8, [3 x i8] }* @g_1241, i32 0, i32 0), align 1, !tbaa !9
  %461 = zext i8 %460 to i64
  %462 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %461, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i32 0, i32 0), i32 %462)
  %463 = load volatile i8, i8* getelementptr inbounds ({ i8, [3 x i8] }, { i8, [3 x i8] }* @g_1282, i32 0, i32 0), align 1, !tbaa !9
  %464 = zext i8 %463 to i64
  %465 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %464, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i32 0, i32 0), i32 %465)
  %466 = load volatile i8, i8* getelementptr inbounds ({ i8, [3 x i8] }, { i8, [3 x i8] }* @g_1283, i32 0, i32 0), align 1, !tbaa !9
  %467 = zext i8 %466 to i64
  %468 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %467, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i32 0, i32 0), i32 %468)
  %469 = load volatile i8, i8* getelementptr inbounds ({ i8, [3 x i8] }, { i8, [3 x i8] }* @g_1284, i32 0, i32 0), align 1, !tbaa !9
  %470 = zext i8 %469 to i64
  %471 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %470, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i32 0, i32 0), i32 %471)
  %472 = load volatile i8, i8* getelementptr inbounds ({ i8, [3 x i8] }, { i8, [3 x i8] }* @g_1285, i32 0, i32 0), align 1, !tbaa !9
  %473 = zext i8 %472 to i64
  %474 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %473, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i32 0, i32 0), i32 %474)
  %475 = load volatile i8, i8* getelementptr inbounds ({ i8, [3 x i8] }, { i8, [3 x i8] }* @g_1286, i32 0, i32 0), align 1, !tbaa !9
  %476 = zext i8 %475 to i64
  %477 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %476, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i32 0, i32 0), i32 %477)
  %478 = load volatile i8, i8* getelementptr inbounds ({ i8, [3 x i8] }, { i8, [3 x i8] }* @g_1287, i32 0, i32 0), align 1, !tbaa !9
  %479 = zext i8 %478 to i64
  %480 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %479, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.51, i32 0, i32 0), i32 %480)
  %481 = load volatile i8, i8* getelementptr inbounds ({ i8, [3 x i8] }, { i8, [3 x i8] }* @g_1288, i32 0, i32 0), align 1, !tbaa !9
  %482 = zext i8 %481 to i64
  %483 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %482, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.52, i32 0, i32 0), i32 %483)
  %484 = load volatile i8, i8* getelementptr inbounds ({ i8, [3 x i8] }, { i8, [3 x i8] }* @g_1289, i32 0, i32 0), align 1, !tbaa !9
  %485 = zext i8 %484 to i64
  %486 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %485, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.53, i32 0, i32 0), i32 %486)
  %487 = load volatile i8, i8* getelementptr inbounds ({ i8, [3 x i8] }, { i8, [3 x i8] }* @g_1290, i32 0, i32 0), align 1, !tbaa !9
  %488 = zext i8 %487 to i64
  %489 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %488, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.54, i32 0, i32 0), i32 %489)
  %490 = load volatile i8, i8* getelementptr inbounds ({ i8, [3 x i8] }, { i8, [3 x i8] }* @g_1291, i32 0, i32 0), align 1, !tbaa !9
  %491 = zext i8 %490 to i64
  %492 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %491, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.55, i32 0, i32 0), i32 %492)
  %493 = load volatile i8, i8* getelementptr inbounds ({ i8, [3 x i8] }, { i8, [3 x i8] }* @g_1292, i32 0, i32 0), align 1, !tbaa !9
  %494 = zext i8 %493 to i64
  %495 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %494, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.56, i32 0, i32 0), i32 %495)
  %496 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 65532, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i32 0, i32 0), i32 %496)
  %497 = load volatile i8, i8* getelementptr inbounds ({ i8, [3 x i8] }, { i8, [3 x i8] }* @g_1383, i32 0, i32 0), align 1, !tbaa !9
  %498 = zext i8 %497 to i64
  %499 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %498, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.58, i32 0, i32 0), i32 %499)
  %500 = load i64, i64* @g_1441, align 8, !tbaa !7
  %501 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %500, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i32 0, i32 0), i32 %501)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %502

; <label>:502                                     ; preds = %518, %459
  %503 = load i32, i32* %i, align 4, !tbaa !1
  %504 = icmp slt i32 %503, 4
  br i1 %504, label %505, label %521

; <label>:505                                     ; preds = %502
  %506 = load i32, i32* %i, align 4, !tbaa !1
  %507 = sext i32 %506 to i64
  %508 = getelementptr inbounds [4 x i32], [4 x i32]* @g_1497, i32 0, i64 %507
  %509 = load i32, i32* %508, align 4, !tbaa !1
  %510 = sext i32 %509 to i64
  %511 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %510, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.60, i32 0, i32 0), i32 %511)
  %512 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %513 = icmp ne i32 %512, 0
  br i1 %513, label %514, label %517

; <label>:514                                     ; preds = %505
  %515 = load i32, i32* %i, align 4, !tbaa !1
  %516 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i32 %515)
  br label %517

; <label>:517                                     ; preds = %514, %505
  br label %518

; <label>:518                                     ; preds = %517
  %519 = load i32, i32* %i, align 4, !tbaa !1
  %520 = add nsw i32 %519, 1
  store i32 %520, i32* %i, align 4, !tbaa !1
  br label %502

; <label>:521                                     ; preds = %502
  %522 = load volatile i8, i8* getelementptr inbounds ({ i8, [3 x i8] }, { i8, [3 x i8] }* @g_1520, i32 0, i32 0), align 1, !tbaa !9
  %523 = zext i8 %522 to i64
  %524 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %523, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i32 0, i32 0), i32 %524)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %525

; <label>:525                                     ; preds = %541, %521
  %526 = load i32, i32* %i, align 4, !tbaa !1
  %527 = icmp slt i32 %526, 5
  br i1 %527, label %528, label %544

; <label>:528                                     ; preds = %525
  %529 = load i32, i32* %i, align 4, !tbaa !1
  %530 = sext i32 %529 to i64
  %531 = getelementptr inbounds [5 x i16], [5 x i16]* @g_1522, i32 0, i64 %530
  %532 = load i16, i16* %531, align 2, !tbaa !10
  %533 = sext i16 %532 to i64
  %534 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %533, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i32 0, i32 0), i32 %534)
  %535 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %536 = icmp ne i32 %535, 0
  br i1 %536, label %537, label %540

; <label>:537                                     ; preds = %528
  %538 = load i32, i32* %i, align 4, !tbaa !1
  %539 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i32 %538)
  br label %540

; <label>:540                                     ; preds = %537, %528
  br label %541

; <label>:541                                     ; preds = %540
  %542 = load i32, i32* %i, align 4, !tbaa !1
  %543 = add nsw i32 %542, 1
  store i32 %543, i32* %i, align 4, !tbaa !1
  br label %525

; <label>:544                                     ; preds = %525
  %545 = load i8, i8* @g_1592, align 1, !tbaa !9
  %546 = sext i8 %545 to i64
  %547 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %546, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.63, i32 0, i32 0), i32 %547)
  %548 = load volatile i8, i8* getelementptr inbounds ({ i8, [3 x i8] }, { i8, [3 x i8] }* @g_1620, i32 0, i32 0), align 1, !tbaa !9
  %549 = zext i8 %548 to i64
  %550 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %549, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.64, i32 0, i32 0), i32 %550)
  %551 = load volatile i32, i32* @g_1655, align 4, !tbaa !1
  %552 = zext i32 %551 to i64
  %553 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %552, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.65, i32 0, i32 0), i32 %553)
  %554 = load i8, i8* @g_1679, align 1, !tbaa !9
  %555 = sext i8 %554 to i64
  %556 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %555, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i32 0, i32 0), i32 %556)
  %557 = load i8, i8* @g_1756, align 1, !tbaa !9
  %558 = sext i8 %557 to i64
  %559 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %558, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.67, i32 0, i32 0), i32 %559)
  %560 = load volatile i8, i8* getelementptr inbounds ({ i8, [3 x i8] }, { i8, [3 x i8] }* @g_1779, i32 0, i32 0), align 1, !tbaa !9
  %561 = zext i8 %560 to i64
  %562 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %561, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.68, i32 0, i32 0), i32 %562)
  %563 = load i32, i32* @g_1792, align 4, !tbaa !1
  %564 = zext i32 %563 to i64
  %565 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %564, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.69, i32 0, i32 0), i32 %565)
  %566 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %567 = zext i32 %566 to i64
  %568 = xor i64 %567, 4294967295
  %569 = trunc i64 %568 to i32
  %570 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %569, i32 %570)
  %571 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %571) #1
  %572 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %572) #1
  %573 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %573) #1
  %574 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %574) #1
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
  %l_2 = alloca [8 x i32], align 16
  %l_1524 = alloca [7 x i32], align 16
  %l_1525 = alloca i16, align 2
  %l_1562 = alloca i64**, align 8
  %l_1637 = alloca [7 x [5 x [7 x i32]]], align 16
  %l_1646 = alloca i8, align 1
  %l_1678 = alloca i64, align 8
  %l_1708 = alloca i64, align 8
  %l_1738 = alloca i32, align 4
  %l_1749 = alloca i32**, align 8
  %l_1757 = alloca i32, align 4
  %l_1775 = alloca [1 x i32], align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l_1521 = alloca i16*, align 8
  %l_1523 = alloca [10 x [2 x [3 x i32*]]], align 16
  %l_1621 = alloca [1 x [9 x [8 x i64**]]], align 16
  %l_1649 = alloca [7 x [9 x [4 x i8]]], align 16
  %l_1741 = alloca i32*****, align 8
  %l_1743 = alloca i32*****, align 8
  %l_1777 = alloca %union.U0*, align 8
  %i1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  %k3 = alloca i32, align 4
  %1 = bitcast [8 x i32]* %l_2 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %1) #1
  %2 = bitcast [8 x i32]* %l_2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* bitcast ([8 x i32]* @func_1.l_2 to i8*), i64 32, i32 16, i1 false)
  %3 = bitcast [7 x i32]* %l_1524 to i8*
  call void @llvm.lifetime.start(i64 28, i8* %3) #1
  %4 = bitcast [7 x i32]* %l_1524 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* bitcast ([7 x i32]* @func_1.l_1524 to i8*), i64 28, i32 16, i1 false)
  %5 = bitcast i16* %l_1525 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %5) #1
  store i16 0, i16* %l_1525, align 2, !tbaa !10
  %6 = bitcast i64*** %l_1562 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i64** null, i64*** %l_1562, align 8, !tbaa !5
  %7 = bitcast [7 x [5 x [7 x i32]]]* %l_1637 to i8*
  call void @llvm.lifetime.start(i64 980, i8* %7) #1
  %8 = bitcast [7 x [5 x [7 x i32]]]* %l_1637 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* bitcast ([7 x [5 x [7 x i32]]]* @func_1.l_1637 to i8*), i64 980, i32 16, i1 false)
  call void @llvm.lifetime.start(i64 1, i8* %l_1646) #1
  store i8 -37, i8* %l_1646, align 1, !tbaa !9
  %9 = bitcast i64* %l_1678 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store i64 -6, i64* %l_1678, align 8, !tbaa !7
  %10 = bitcast i64* %l_1708 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i64 -6050953721090997185, i64* %l_1708, align 8, !tbaa !7
  %11 = bitcast i32* %l_1738 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  store i32 -812119331, i32* %l_1738, align 4, !tbaa !1
  %12 = bitcast i32*** %l_1749 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  store i32** getelementptr inbounds ([8 x i32*], [8 x i32*]* @g_172, i32 0, i64 0), i32*** %l_1749, align 8, !tbaa !5
  %13 = bitcast i32* %l_1757 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  store i32 2, i32* %l_1757, align 4, !tbaa !1
  %14 = bitcast [1 x i32]* %l_1775 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %18

; <label>:18                                      ; preds = %25, %0
  %19 = load i32, i32* %i, align 4, !tbaa !1
  %20 = icmp slt i32 %19, 1
  br i1 %20, label %21, label %28

; <label>:21                                      ; preds = %18
  %22 = load i32, i32* %i, align 4, !tbaa !1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [1 x i32], [1 x i32]* %l_1775, i32 0, i64 %23
  store i32 -6, i32* %24, align 4, !tbaa !1
  br label %25

; <label>:25                                      ; preds = %21
  %26 = load i32, i32* %i, align 4, !tbaa !1
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %i, align 4, !tbaa !1
  br label %18

; <label>:28                                      ; preds = %18
  store i32 7, i32* getelementptr inbounds ([5 x [9 x i32]], [5 x [9 x i32]]* @g_3, i32 0, i64 4, i64 6), align 4, !tbaa !1
  br label %29

; <label>:29                                      ; preds = %56, %28
  %30 = load i32, i32* getelementptr inbounds ([5 x [9 x i32]], [5 x [9 x i32]]* @g_3, i32 0, i64 4, i64 6), align 4, !tbaa !1
  %31 = icmp sge i32 %30, 0
  br i1 %31, label %32, label %59

; <label>:32                                      ; preds = %29
  %33 = bitcast i16** %l_1521 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %33) #1
  store i16* getelementptr inbounds ([5 x i16], [5 x i16]* @g_1522, i32 0, i64 3), i16** %l_1521, align 8, !tbaa !5
  %34 = bitcast [10 x [2 x [3 x i32*]]]* %l_1523 to i8*
  call void @llvm.lifetime.start(i64 480, i8* %34) #1
  %35 = bitcast [10 x [2 x [3 x i32*]]]* %l_1523 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* bitcast ([10 x [2 x [3 x i32*]]]* @func_1.l_1523 to i8*), i64 480, i32 16, i1 false)
  %36 = bitcast [1 x [9 x [8 x i64**]]]* %l_1621 to i8*
  call void @llvm.lifetime.start(i64 576, i8* %36) #1
  %37 = bitcast [1 x [9 x [8 x i64**]]]* %l_1621 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* bitcast ([1 x [9 x [8 x i64**]]]* @func_1.l_1621 to i8*), i64 576, i32 16, i1 false)
  %38 = bitcast [7 x [9 x [4 x i8]]]* %l_1649 to i8*
  call void @llvm.lifetime.start(i64 252, i8* %38) #1
  %39 = bitcast [7 x [9 x [4 x i8]]]* %l_1649 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* getelementptr inbounds ([7 x [9 x [4 x i8]]], [7 x [9 x [4 x i8]]]* @func_1.l_1649, i32 0, i32 0, i32 0, i32 0), i64 252, i32 16, i1 false)
  %40 = bitcast i32****** %l_1741 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %40) #1
  store i32***** null, i32****** %l_1741, align 8, !tbaa !5
  %41 = bitcast i32****** %l_1743 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %41) #1
  store i32***** getelementptr inbounds ([10 x [7 x [2 x i32****]]], [10 x [7 x [2 x i32****]]]* @g_836, i32 0, i64 2, i64 5, i64 0), i32****** %l_1743, align 8, !tbaa !5
  %42 = bitcast %union.U0** %l_1777 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %42) #1
  store %union.U0* bitcast ({ i8, [3 x i8] }* @g_1288 to %union.U0*), %union.U0** %l_1777, align 8, !tbaa !5
  %43 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #1
  %44 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %44) #1
  %45 = bitcast i32* %k3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %45) #1
  %46 = bitcast i32* %k3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #1
  %47 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #1
  %48 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  %49 = bitcast %union.U0** %l_1777 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  %50 = bitcast i32****** %l_1743 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #1
  %51 = bitcast i32****** %l_1741 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #1
  %52 = bitcast [7 x [9 x [4 x i8]]]* %l_1649 to i8*
  call void @llvm.lifetime.end(i64 252, i8* %52) #1
  %53 = bitcast [1 x [9 x [8 x i64**]]]* %l_1621 to i8*
  call void @llvm.lifetime.end(i64 576, i8* %53) #1
  %54 = bitcast [10 x [2 x [3 x i32*]]]* %l_1523 to i8*
  call void @llvm.lifetime.end(i64 480, i8* %54) #1
  %55 = bitcast i16** %l_1521 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #1
  br label %56

; <label>:56                                      ; preds = %32
  %57 = load i32, i32* getelementptr inbounds ([5 x [9 x i32]], [5 x [9 x i32]]* @g_3, i32 0, i64 4, i64 6), align 4, !tbaa !1
  %58 = sub nsw i32 %57, 1
  store i32 %58, i32* getelementptr inbounds ([5 x [9 x i32]], [5 x [9 x i32]]* @g_3, i32 0, i64 4, i64 6), align 4, !tbaa !1
  br label %29

; <label>:59                                      ; preds = %29
  %60 = load i32*, i32** @g_1570, align 8, !tbaa !5
  %61 = load i32, i32* %60, align 4, !tbaa !1
  %62 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #1
  %63 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #1
  %64 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  %65 = bitcast [1 x i32]* %l_1775 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #1
  %66 = bitcast i32* %l_1757 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  %67 = bitcast i32*** %l_1749 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #1
  %68 = bitcast i32* %l_1738 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #1
  %69 = bitcast i64* %l_1708 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #1
  %70 = bitcast i64* %l_1678 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1646) #1
  %71 = bitcast [7 x [5 x [7 x i32]]]* %l_1637 to i8*
  call void @llvm.lifetime.end(i64 980, i8* %71) #1
  %72 = bitcast i64*** %l_1562 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #1
  %73 = bitcast i16* %l_1525 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %73) #1
  %74 = bitcast [7 x i32]* %l_1524 to i8*
  call void @llvm.lifetime.end(i64 28, i8* %74) #1
  %75 = bitcast [8 x i32]* %l_2 to i8*
  call void @llvm.lifetime.end(i64 32, i8* %75) #1
  ret i32 %61
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
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.70, i32 0, i32 0), i8* %8, i64 %11)
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
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.71, i32 0, i32 0), i32 %3)
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
