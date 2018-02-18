; ModuleID = '00644.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S0 = type <{ [7 x i8], i32, [6 x i8] }>

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_16 = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"g_16\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"g_17.f0\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"g_17.f1\00", align 1
@g_42 = internal global [7 x [3 x [1 x i32]]] [[3 x [1 x i32]] [[1 x i32] [i32 -655991340], [1 x i32] [i32 347543560], [1 x i32] [i32 1740399104]], [3 x [1 x i32]] [[1 x i32] [i32 96367438], [1 x i32] [i32 1740399104], [1 x i32] [i32 347543560]], [3 x [1 x i32]] [[1 x i32] [i32 -655991340], [1 x i32] [i32 347543560], [1 x i32] [i32 1740399104]], [3 x [1 x i32]] [[1 x i32] [i32 96367438], [1 x i32] [i32 1740399104], [1 x i32] [i32 347543560]], [3 x [1 x i32]] [[1 x i32] [i32 -655991340], [1 x i32] [i32 347543560], [1 x i32] [i32 1740399104]], [3 x [1 x i32]] [[1 x i32] [i32 96367438], [1 x i32] [i32 1740399104], [1 x i32] [i32 347543560]], [3 x [1 x i32]] [[1 x i32] [i32 -655991340], [1 x i32] [i32 347543560], [1 x i32] [i32 1740399104]]], align 16
@.str.4 = private unnamed_addr constant [14 x i8] c"g_42[i][j][k]\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"index = [%d][%d][%d]\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"g_43.f0\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"g_43.f1\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"g_43.f2\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"g_43.f3\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"g_43.f4\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"g_43.f5\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"g_43.f6\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"g_43.f7\00", align 1
@g_75 = internal global [10 x i32] [i32 986335100, i32 5, i32 986335100, i32 5, i32 986335100, i32 5, i32 986335100, i32 5, i32 986335100, i32 5], align 16
@.str.14 = private unnamed_addr constant [8 x i8] c"g_75[i]\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_90 = internal global i32 -1990566542, align 4
@.str.16 = private unnamed_addr constant [5 x i8] c"g_90\00", align 1
@g_95 = internal global [7 x [3 x [4 x i32]]] [[3 x [4 x i32]] [[4 x i32] [i32 -1337342116, i32 -197366826, i32 1436100472, i32 1], [4 x i32] [i32 1, i32 1232153216, i32 0, i32 0], [4 x i32] [i32 -2060703052, i32 -2060703052, i32 1, i32 1436100472]], [3 x [4 x i32]] [[4 x i32] [i32 1033390358, i32 -1723345074, i32 -1570112213, i32 -1517822219], [4 x i32] [i32 0, i32 1, i32 1033390358, i32 0], [4 x i32] [i32 -696390506, i32 1, i32 -1723345074, i32 -1517822219]], [3 x [4 x i32]] [[4 x i32] [i32 1, i32 -1337342116, i32 3, i32 1], [4 x i32] [i32 -416496055, i32 1, i32 -1570112213, i32 1232153216], [4 x i32] [i32 0, i32 -2060703052, i32 0, i32 1]], [3 x [4 x i32]] [[4 x i32] [i32 2142235198, i32 1033390358, i32 -1, i32 0], [4 x i32] [i32 -197366826, i32 -1, i32 -1, i32 1033390358], [4 x i32] [i32 1, i32 1320097323, i32 -1, i32 -1723345074]], [3 x [4 x i32]] [[4 x i32] [i32 -197366826, i32 1, i32 -1, i32 3], [4 x i32] [i32 2142235198, i32 -5, i32 0, i32 -1570112213], [4 x i32] [i32 0, i32 -1570112213, i32 -1570112213, i32 0]], [3 x [4 x i32]] [[4 x i32] [i32 -416496055, i32 -1517822219, i32 3, i32 -1], [4 x i32] [i32 1, i32 1, i32 -1723345074, i32 -1], [4 x i32] [i32 -696390506, i32 1, i32 1033390358, i32 -1]], [3 x [4 x i32]] [[4 x i32] [i32 0, i32 1, i32 0, i32 -1], [4 x i32] [i32 -1924732011, i32 -1517822219, i32 1, i32 0], [4 x i32] [i32 1, i32 -1570112213, i32 1232153216, i32 -1570112213]]], align 16
@.str.17 = private unnamed_addr constant [14 x i8] c"g_95[i][j][k]\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"g_112.f0\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"g_112.f1\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"g_112.f2\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"g_112.f3\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"g_112.f4\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"g_112.f5\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"g_112.f6\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"g_112.f7\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"g_136.f0\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"g_136.f1\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"g_136.f2\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"g_136.f3\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"g_136.f4\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"g_136.f5\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"g_136.f6\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"g_136.f7\00", align 1
@g_138 = internal global i32 3, align 4
@.str.34 = private unnamed_addr constant [6 x i8] c"g_138\00", align 1
@g_141 = internal global i16 6, align 2
@.str.35 = private unnamed_addr constant [6 x i8] c"g_141\00", align 1
@g_143 = internal global i32 453859537, align 4
@.str.36 = private unnamed_addr constant [6 x i8] c"g_143\00", align 1
@g_145 = internal global i8 1, align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"g_145\00", align 1
@g_211 = internal global i64 496460688738167660, align 8
@.str.38 = private unnamed_addr constant [6 x i8] c"g_211\00", align 1
@g_240 = internal global i8 67, align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"g_240\00", align 1
@g_256 = internal global i32 -1, align 4
@.str.40 = private unnamed_addr constant [6 x i8] c"g_256\00", align 1
@g_286 = internal global [3 x i32] [i32 1922411867, i32 1922411867, i32 1922411867], align 4
@.str.41 = private unnamed_addr constant [9 x i8] c"g_286[i]\00", align 1
@g_295 = internal global i64 -3, align 8
@.str.42 = private unnamed_addr constant [6 x i8] c"g_295\00", align 1
@g_303 = internal global i64 1, align 8
@.str.43 = private unnamed_addr constant [6 x i8] c"g_303\00", align 1
@g_306 = internal global i16 -28130, align 2
@.str.44 = private unnamed_addr constant [6 x i8] c"g_306\00", align 1
@g_308 = internal global i8 3, align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"g_308\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"g_349.f0\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"g_349.f1\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"g_349.f2\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"g_349.f3\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"g_349.f4\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"g_349.f5\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"g_349.f6\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"g_349.f7\00", align 1
@.str.54 = private unnamed_addr constant [9 x i8] c"g_414.f0\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"g_414.f1\00", align 1
@.str.56 = private unnamed_addr constant [9 x i8] c"g_414.f2\00", align 1
@.str.57 = private unnamed_addr constant [9 x i8] c"g_414.f3\00", align 1
@.str.58 = private unnamed_addr constant [9 x i8] c"g_414.f4\00", align 1
@.str.59 = private unnamed_addr constant [9 x i8] c"g_414.f5\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c"g_414.f6\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"g_414.f7\00", align 1
@g_476 = internal global [7 x i32] [i32 -1251275509, i32 -1251275509, i32 -1251275509, i32 -1251275509, i32 -1251275509, i32 -1251275509, i32 -1251275509], align 16
@.str.62 = private unnamed_addr constant [9 x i8] c"g_476[i]\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"g_491.f0\00", align 1
@.str.64 = private unnamed_addr constant [9 x i8] c"g_491.f1\00", align 1
@.str.65 = private unnamed_addr constant [9 x i8] c"g_491.f2\00", align 1
@.str.66 = private unnamed_addr constant [9 x i8] c"g_491.f3\00", align 1
@.str.67 = private unnamed_addr constant [9 x i8] c"g_491.f4\00", align 1
@.str.68 = private unnamed_addr constant [9 x i8] c"g_491.f5\00", align 1
@.str.69 = private unnamed_addr constant [9 x i8] c"g_491.f6\00", align 1
@.str.70 = private unnamed_addr constant [9 x i8] c"g_491.f7\00", align 1
@g_547 = internal global i32 629882090, align 4
@.str.71 = private unnamed_addr constant [6 x i8] c"g_547\00", align 1
@g_552 = internal global [10 x i8] c"\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5", align 1
@.str.72 = private unnamed_addr constant [9 x i8] c"g_552[i]\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@g_94 = internal global i32* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x [3 x [4 x i32]]]* @g_95 to i8*), i64 188) to i32*), align 8
@g_92 = internal global i32* @g_90, align 8
@func_1.l_501 = private unnamed_addr constant [6 x [9 x [4 x i32**]]] [[9 x [4 x i32**]] [[4 x i32**] [i32** @g_94, i32** @g_92, i32** null, i32** @g_92], [4 x i32**] [i32** @g_92, i32** @g_92, i32** @g_94, i32** @g_94], [4 x i32**] [i32** @g_92, i32** @g_92, i32** @g_92, i32** @g_92], [4 x i32**] [i32** @g_92, i32** @g_92, i32** @g_94, i32** null], [4 x i32**] [i32** @g_92, i32** @g_92, i32** null, i32** @g_92], [4 x i32**] [i32** @g_94, i32** @g_92, i32** @g_94, i32** @g_92], [4 x i32**] [i32** null, i32** @g_92, i32** @g_92, i32** null], [4 x i32**] [i32** @g_94, i32** @g_92, i32** @g_92, i32** @g_92], [4 x i32**] [i32** @g_92, i32** @g_92, i32** @g_92, i32** @g_94]], [9 x [4 x i32**]] [[4 x i32**] [i32** @g_94, i32** @g_92, i32** @g_92, i32** @g_92], [4 x i32**] [i32** null, i32** @g_92, i32** @g_94, i32** @g_92], [4 x i32**] [i32** @g_94, i32** @g_92, i32** null, i32** @g_92], [4 x i32**] [i32** @g_92, i32** @g_92, i32** @g_94, i32** @g_94], [4 x i32**] [i32** @g_92, i32** @g_92, i32** @g_92, i32** @g_92], [4 x i32**] [i32** @g_92, i32** @g_92, i32** @g_94, i32** null], [4 x i32**] [i32** @g_92, i32** @g_92, i32** null, i32** @g_92], [4 x i32**] [i32** @g_94, i32** @g_92, i32** @g_94, i32** @g_92], [4 x i32**] [i32** null, i32** @g_92, i32** @g_92, i32** null]], [9 x [4 x i32**]] [[4 x i32**] [i32** @g_94, i32** @g_92, i32** @g_92, i32** @g_92], [4 x i32**] [i32** @g_92, i32** @g_92, i32** @g_92, i32** @g_94], [4 x i32**] [i32** @g_94, i32** @g_92, i32** @g_92, i32** @g_92], [4 x i32**] [i32** null, i32** @g_92, i32** @g_94, i32** @g_92], [4 x i32**] [i32** @g_94, i32** @g_92, i32** null, i32** @g_92], [4 x i32**] [i32** @g_92, i32** @g_92, i32** @g_94, i32** @g_94], [4 x i32**] [i32** @g_92, i32** @g_92, i32** @g_92, i32** @g_92], [4 x i32**] [i32** @g_92, i32** @g_92, i32** @g_94, i32** @g_92], [4 x i32**] [i32** @g_92, i32** @g_92, i32** @g_94, i32** @g_92]], [9 x [4 x i32**]] [[4 x i32**] [i32** @g_92, i32** null, i32** @g_92, i32** @g_92], [4 x i32**] [i32** @g_94, i32** @g_92, i32** @g_92, i32** @g_92], [4 x i32**] [i32** @g_94, i32** @g_92, i32** @g_92, i32** @g_92], [4 x i32**] [i32** @g_92, i32** @g_92, i32** @g_92, i32** @g_92], [4 x i32**] [i32** @g_94, i32** null, i32** @g_92, i32** @g_92], [4 x i32**] [i32** @g_94, i32** @g_92, i32** @g_92, i32** @g_92], [4 x i32**] [i32** @g_92, i32** @g_92, i32** @g_94, i32** @g_92], [4 x i32**] [i32** @g_92, i32** null, i32** @g_94, i32** @g_92], [4 x i32**] [i32** @g_92, i32** @g_92, i32** @g_92, i32** @g_92]], [9 x [4 x i32**]] [[4 x i32**] [i32** @g_92, i32** @g_92, i32** @g_94, i32** @g_92], [4 x i32**] [i32** @g_92, i32** @g_92, i32** @g_94, i32** @g_92], [4 x i32**] [i32** @g_92, i32** null, i32** @g_92, i32** @g_92], [4 x i32**] [i32** @g_94, i32** @g_92, i32** @g_92, i32** @g_92], [4 x i32**] [i32** @g_94, i32** @g_92, i32** @g_92, i32** @g_92], [4 x i32**] [i32** @g_92, i32** @g_92, i32** @g_92, i32** @g_92], [4 x i32**] [i32** @g_94, i32** null, i32** @g_92, i32** @g_92], [4 x i32**] [i32** @g_94, i32** @g_92, i32** @g_92, i32** @g_92], [4 x i32**] [i32** @g_92, i32** @g_92, i32** @g_94, i32** @g_92]], [9 x [4 x i32**]] [[4 x i32**] [i32** @g_92, i32** null, i32** @g_94, i32** @g_92], [4 x i32**] [i32** @g_92, i32** @g_92, i32** @g_92, i32** @g_92], [4 x i32**] [i32** @g_92, i32** @g_92, i32** @g_94, i32** @g_92], [4 x i32**] [i32** @g_92, i32** @g_92, i32** @g_94, i32** @g_92], [4 x i32**] [i32** @g_92, i32** null, i32** @g_92, i32** @g_92], [4 x i32**] [i32** @g_94, i32** @g_92, i32** @g_92, i32** @g_92], [4 x i32**] [i32** @g_94, i32** @g_92, i32** @g_92, i32** @g_92], [4 x i32**] [i32** @g_92, i32** @g_92, i32** @g_92, i32** @g_92], [4 x i32**] [i32** @g_94, i32** null, i32** @g_92, i32** @g_92]]], align 16
@func_1.l_507 = private unnamed_addr constant [6 x [2 x i8*]] [[2 x i8*] [i8* @g_308, i8* @g_308], [2 x i8*] [i8* @g_308, i8* @g_308], [2 x i8*] [i8* null, i8* @g_308], [2 x i8*] [i8* @g_308, i8* @g_308], [2 x i8*] [i8* null, i8* @g_308], [2 x i8*] [i8* @g_308, i8* @g_308]], align 16
@func_1.l_513 = private unnamed_addr constant [10 x i32*] [i32* null, i32* @g_256, i32* null, i32* null, i32* @g_256, i32* null, i32* null, i32* @g_256, i32* null, i32* null], align 16
@g_221 = internal global i32** @g_92, align 8
@g_314 = internal global i8** @g_315, align 8
@func_1.l_521 = private unnamed_addr constant [4 x [3 x i8*]] [[3 x i8*] [i8* @g_240, i8* @g_240, i8* null], [3 x i8*] [i8* @g_240, i8* @g_240, i8* @g_240], [3 x i8*] [i8* @g_240, i8* @g_240, i8* @g_240], [3 x i8*] [i8* @g_240, i8* @g_240, i8* null]], align 16
@func_1.l_522 = private unnamed_addr constant [3 x [2 x i32**]] [[2 x i32**] [i32** @g_94, i32** @g_94], [2 x i32**] [i32** @g_92, i32** @g_94], [2 x i32**] [i32** @g_94, i32** @g_92]], align 16
@g_315 = internal global i8* null, align 8
@func_4.l_431 = private unnamed_addr constant [7 x i32] [i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4], align 16
@func_4.l_475 = private unnamed_addr constant [6 x [6 x i32]] [[6 x i32] [i32 -900598680, i32 2036245814, i32 -11379483, i32 0, i32 -1, i32 0], [6 x i32] [i32 -2120862201, i32 2036245814, i32 1494925221, i32 1494925221, i32 2036245814, i32 -2120862201], [6 x i32] [i32 2036245814, i32 998359550, i32 1589489689, i32 1, i32 0, i32 9], [6 x i32] [i32 1494925221, i32 1589489689, i32 -1, i32 -1896650741, i32 1884210304, i32 1], [6 x i32] [i32 1494925221, i32 1, i32 998359550, i32 0, i32 1589489689, i32 -1896650741], [6 x i32] [i32 1884210304, i32 -1896650741, i32 -1, i32 1589489689, i32 1494925221, i32 -11379483]], align 16
@.str.73 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@g_17 = internal global { i8, i8, i8, i8, i8, i8, i8 } { i8 27, i8 5, i8 0, i8 -48, i8 10, i8 1, i8 0 }, align 1
@g_43 = internal global <{ i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8 }> <{ i8 -11, i8 -117, i8 67, i8 0, i8 -96, i8 3, i8 0, i32 1962520377, i8 -94, i8 5, i8 0, i8 -1, i8 -11, i8 0 }>, align 1
@g_112 = internal constant <{ i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8 }> <{ i8 -5, i8 115, i8 110, i8 0, i8 96, i8 12, i8 0, i32 1, i8 -116, i8 4, i8 0, i8 -7, i8 0, i8 1 }>, align 1
@g_136 = internal global <{ i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8 }> <{ i8 -21, i8 -77, i8 84, i8 0, i8 0, i8 22, i8 0, i32 -6, i8 5, i8 7, i8 -128, i8 -6, i8 2, i8 1 }>, align 1
@g_349 = internal global <{ i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8 }> <{ i8 19, i8 -62, i8 126, i8 0, i8 -96, i8 4, i8 0, i32 -680801974, i8 31, i8 6, i8 -128, i8 5, i8 -5, i8 0 }>, align 1
@g_414 = internal global <{ i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8 }> <{ i8 -2, i8 13, i8 117, i8 0, i8 0, i8 12, i8 0, i32 1194864765, i8 46, i8 9, i8 0, i8 -8, i8 8, i8 0 }>, align 1
@g_491 = internal global <{ i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8 }> <{ i8 0, i8 -112, i8 98, i8 0, i8 -32, i8 14, i8 0, i32 -4, i8 -51, i8 2, i8 -128, i8 -4, i8 11, i8 1 }>, align 1
@.str.74 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

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
  %91 = load i32, i32* @g_16, align 4, !tbaa !1
  %92 = zext i32 %91 to i64
  %93 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %92, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 %93)
  %94 = load i56, i56* bitcast ({ i8, i8, i8, i8, i8, i8, i8 }* @g_17 to i56*), align 1
  %95 = and i56 %94, 134217727
  %96 = trunc i56 %95 to i32
  %97 = zext i32 %96 to i64
  %98 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %97, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32 %98)
  %99 = load i56, i56* bitcast ({ i8, i8, i8, i8, i8, i8, i8 }* @g_17 to i56*), align 1
  %100 = lshr i56 %99, 27
  %101 = and i56 %100, 268435455
  %102 = trunc i56 %101 to i32
  %103 = zext i32 %102 to i64
  %104 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %103, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 %104)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %105

; <label>:105                                     ; preds = %145, %89
  %106 = load i32, i32* %i, align 4, !tbaa !1
  %107 = icmp slt i32 %106, 7
  br i1 %107, label %108, label %148

; <label>:108                                     ; preds = %105
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %109

; <label>:109                                     ; preds = %141, %108
  %110 = load i32, i32* %j, align 4, !tbaa !1
  %111 = icmp slt i32 %110, 3
  br i1 %111, label %112, label %144

; <label>:112                                     ; preds = %109
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %113

; <label>:113                                     ; preds = %137, %112
  %114 = load i32, i32* %k, align 4, !tbaa !1
  %115 = icmp slt i32 %114, 1
  br i1 %115, label %116, label %140

; <label>:116                                     ; preds = %113
  %117 = load i32, i32* %k, align 4, !tbaa !1
  %118 = sext i32 %117 to i64
  %119 = load i32, i32* %j, align 4, !tbaa !1
  %120 = sext i32 %119 to i64
  %121 = load i32, i32* %i, align 4, !tbaa !1
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [7 x [3 x [1 x i32]]], [7 x [3 x [1 x i32]]]* @g_42, i32 0, i64 %122
  %124 = getelementptr inbounds [3 x [1 x i32]], [3 x [1 x i32]]* %123, i32 0, i64 %120
  %125 = getelementptr inbounds [1 x i32], [1 x i32]* %124, i32 0, i64 %118
  %126 = load i32, i32* %125, align 4, !tbaa !1
  %127 = sext i32 %126 to i64
  %128 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %127, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i32 %128)
  %129 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %136

; <label>:131                                     ; preds = %116
  %132 = load i32, i32* %i, align 4, !tbaa !1
  %133 = load i32, i32* %j, align 4, !tbaa !1
  %134 = load i32, i32* %k, align 4, !tbaa !1
  %135 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0), i32 %132, i32 %133, i32 %134)
  br label %136

; <label>:136                                     ; preds = %131, %116
  br label %137

; <label>:137                                     ; preds = %136
  %138 = load i32, i32* %k, align 4, !tbaa !1
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %k, align 4, !tbaa !1
  br label %113

; <label>:140                                     ; preds = %113
  br label %141

; <label>:141                                     ; preds = %140
  %142 = load i32, i32* %j, align 4, !tbaa !1
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %j, align 4, !tbaa !1
  br label %109

; <label>:144                                     ; preds = %109
  br label %145

; <label>:145                                     ; preds = %144
  %146 = load i32, i32* %i, align 4, !tbaa !1
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %i, align 4, !tbaa !1
  br label %105

; <label>:148                                     ; preds = %105
  %149 = load i56, i56* bitcast (<{ i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8 }>* @g_43 to i56*), align 1
  %150 = shl i56 %149, 47
  %151 = ashr i56 %150, 47
  %152 = trunc i56 %151 to i32
  %153 = sext i32 %152 to i64
  %154 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %153, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i32 %154)
  %155 = load volatile i56, i56* bitcast (<{ i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8 }>* @g_43 to i56*), align 1
  %156 = lshr i56 %155, 9
  %157 = and i56 %156, 268435455
  %158 = trunc i56 %157 to i32
  %159 = zext i32 %158 to i64
  %160 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %159, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i32 %160)
  %161 = load i56, i56* bitcast (<{ i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8 }>* @g_43 to i56*), align 1
  %162 = lshr i56 %161, 37
  %163 = and i56 %162, 32767
  %164 = trunc i56 %163 to i32
  %165 = zext i32 %164 to i64
  %166 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %165, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i32 %166)
  %167 = load volatile i32, i32* getelementptr inbounds (%struct.S0, %struct.S0* bitcast (<{ i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8 }>* @g_43 to %struct.S0*), i32 0, i32 1), align 1, !tbaa !10
  %168 = sext i32 %167 to i64
  %169 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %168, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i32 %169)
  %170 = load i48, i48* bitcast ([6 x i8]* getelementptr inbounds (%struct.S0, %struct.S0* bitcast (<{ i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8 }>* @g_43 to %struct.S0*), i32 0, i32 2) to i48*), align 1
  %171 = and i48 %170, 8388607
  %172 = trunc i48 %171 to i32
  %173 = zext i32 %172 to i64
  %174 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %173, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i32 %174)
  %175 = load i48, i48* bitcast ([6 x i8]* getelementptr inbounds (%struct.S0, %struct.S0* bitcast (<{ i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8 }>* @g_43 to %struct.S0*), i32 0, i32 2) to i48*), align 1
  %176 = shl i48 %175, 16
  %177 = ashr i48 %176, 39
  %178 = trunc i48 %177 to i32
  %179 = sext i32 %178 to i64
  %180 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %179, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i32 %180)
  %181 = load volatile i48, i48* bitcast ([6 x i8]* getelementptr inbounds (%struct.S0, %struct.S0* bitcast (<{ i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8 }>* @g_43 to %struct.S0*), i32 0, i32 2) to i48*), align 1
  %182 = shl i48 %181, 8
  %183 = ashr i48 %182, 40
  %184 = trunc i48 %183 to i32
  %185 = sext i32 %184 to i64
  %186 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %185, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i32 %186)
  %187 = load volatile i48, i48* bitcast ([6 x i8]* getelementptr inbounds (%struct.S0, %struct.S0* bitcast (<{ i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8 }>* @g_43 to %struct.S0*), i32 0, i32 2) to i48*), align 1
  %188 = lshr i48 %187, 40
  %189 = and i48 %188, 3
  %190 = trunc i48 %189 to i32
  %191 = zext i32 %190 to i64
  %192 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %191, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i32 %192)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %193

; <label>:193                                     ; preds = %209, %148
  %194 = load i32, i32* %i, align 4, !tbaa !1
  %195 = icmp slt i32 %194, 10
  br i1 %195, label %196, label %212

; <label>:196                                     ; preds = %193
  %197 = load i32, i32* %i, align 4, !tbaa !1
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds [10 x i32], [10 x i32]* @g_75, i32 0, i64 %198
  %200 = load i32, i32* %199, align 4, !tbaa !1
  %201 = sext i32 %200 to i64
  %202 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %201, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i32 %202)
  %203 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %208

; <label>:205                                     ; preds = %196
  %206 = load i32, i32* %i, align 4, !tbaa !1
  %207 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i32 %206)
  br label %208

; <label>:208                                     ; preds = %205, %196
  br label %209

; <label>:209                                     ; preds = %208
  %210 = load i32, i32* %i, align 4, !tbaa !1
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %i, align 4, !tbaa !1
  br label %193

; <label>:212                                     ; preds = %193
  %213 = load i32, i32* @g_90, align 4, !tbaa !1
  %214 = sext i32 %213 to i64
  %215 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %214, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i32 %215)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %216

; <label>:216                                     ; preds = %256, %212
  %217 = load i32, i32* %i, align 4, !tbaa !1
  %218 = icmp slt i32 %217, 7
  br i1 %218, label %219, label %259

; <label>:219                                     ; preds = %216
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %220

; <label>:220                                     ; preds = %252, %219
  %221 = load i32, i32* %j, align 4, !tbaa !1
  %222 = icmp slt i32 %221, 3
  br i1 %222, label %223, label %255

; <label>:223                                     ; preds = %220
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %224

; <label>:224                                     ; preds = %248, %223
  %225 = load i32, i32* %k, align 4, !tbaa !1
  %226 = icmp slt i32 %225, 4
  br i1 %226, label %227, label %251

; <label>:227                                     ; preds = %224
  %228 = load i32, i32* %k, align 4, !tbaa !1
  %229 = sext i32 %228 to i64
  %230 = load i32, i32* %j, align 4, !tbaa !1
  %231 = sext i32 %230 to i64
  %232 = load i32, i32* %i, align 4, !tbaa !1
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds [7 x [3 x [4 x i32]]], [7 x [3 x [4 x i32]]]* @g_95, i32 0, i64 %233
  %235 = getelementptr inbounds [3 x [4 x i32]], [3 x [4 x i32]]* %234, i32 0, i64 %231
  %236 = getelementptr inbounds [4 x i32], [4 x i32]* %235, i32 0, i64 %229
  %237 = load i32, i32* %236, align 4, !tbaa !1
  %238 = sext i32 %237 to i64
  %239 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %238, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), i32 %239)
  %240 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %247

; <label>:242                                     ; preds = %227
  %243 = load i32, i32* %i, align 4, !tbaa !1
  %244 = load i32, i32* %j, align 4, !tbaa !1
  %245 = load i32, i32* %k, align 4, !tbaa !1
  %246 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0), i32 %243, i32 %244, i32 %245)
  br label %247

; <label>:247                                     ; preds = %242, %227
  br label %248

; <label>:248                                     ; preds = %247
  %249 = load i32, i32* %k, align 4, !tbaa !1
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %k, align 4, !tbaa !1
  br label %224

; <label>:251                                     ; preds = %224
  br label %252

; <label>:252                                     ; preds = %251
  %253 = load i32, i32* %j, align 4, !tbaa !1
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %j, align 4, !tbaa !1
  br label %220

; <label>:255                                     ; preds = %220
  br label %256

; <label>:256                                     ; preds = %255
  %257 = load i32, i32* %i, align 4, !tbaa !1
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %i, align 4, !tbaa !1
  br label %216

; <label>:259                                     ; preds = %216
  %260 = load i56, i56* bitcast (<{ i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8 }>* @g_112 to i56*), align 1
  %261 = shl i56 %260, 47
  %262 = ashr i56 %261, 47
  %263 = trunc i56 %262 to i32
  %264 = sext i32 %263 to i64
  %265 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %264, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i32 %265)
  %266 = load volatile i56, i56* bitcast (<{ i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8 }>* @g_112 to i56*), align 1
  %267 = lshr i56 %266, 9
  %268 = and i56 %267, 268435455
  %269 = trunc i56 %268 to i32
  %270 = zext i32 %269 to i64
  %271 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %270, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i32 %271)
  %272 = load i56, i56* bitcast (<{ i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8 }>* @g_112 to i56*), align 1
  %273 = lshr i56 %272, 37
  %274 = and i56 %273, 32767
  %275 = trunc i56 %274 to i32
  %276 = zext i32 %275 to i64
  %277 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %276, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i32 %277)
  %278 = load volatile i32, i32* getelementptr inbounds (%struct.S0, %struct.S0* bitcast (<{ i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8 }>* @g_112 to %struct.S0*), i32 0, i32 1), align 1, !tbaa !10
  %279 = sext i32 %278 to i64
  %280 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %279, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i32 %280)
  %281 = load i48, i48* bitcast ([6 x i8]* getelementptr inbounds (%struct.S0, %struct.S0* bitcast (<{ i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8 }>* @g_112 to %struct.S0*), i32 0, i32 2) to i48*), align 1
  %282 = and i48 %281, 8388607
  %283 = trunc i48 %282 to i32
  %284 = zext i32 %283 to i64
  %285 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %284, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i32 %285)
  %286 = load i48, i48* bitcast ([6 x i8]* getelementptr inbounds (%struct.S0, %struct.S0* bitcast (<{ i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8 }>* @g_112 to %struct.S0*), i32 0, i32 2) to i48*), align 1
  %287 = shl i48 %286, 16
  %288 = ashr i48 %287, 39
  %289 = trunc i48 %288 to i32
  %290 = sext i32 %289 to i64
  %291 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %290, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i32 %291)
  %292 = load volatile i48, i48* bitcast ([6 x i8]* getelementptr inbounds (%struct.S0, %struct.S0* bitcast (<{ i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8 }>* @g_112 to %struct.S0*), i32 0, i32 2) to i48*), align 1
  %293 = shl i48 %292, 8
  %294 = ashr i48 %293, 40
  %295 = trunc i48 %294 to i32
  %296 = sext i32 %295 to i64
  %297 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %296, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), i32 %297)
  %298 = load volatile i48, i48* bitcast ([6 x i8]* getelementptr inbounds (%struct.S0, %struct.S0* bitcast (<{ i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8 }>* @g_112 to %struct.S0*), i32 0, i32 2) to i48*), align 1
  %299 = lshr i48 %298, 40
  %300 = and i48 %299, 3
  %301 = trunc i48 %300 to i32
  %302 = zext i32 %301 to i64
  %303 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %302, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), i32 %303)
  %304 = load i56, i56* bitcast (<{ i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8 }>* @g_136 to i56*), align 1
  %305 = shl i56 %304, 47
  %306 = ashr i56 %305, 47
  %307 = trunc i56 %306 to i32
  %308 = sext i32 %307 to i64
  %309 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %308, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), i32 %309)
  %310 = load volatile i56, i56* bitcast (<{ i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8 }>* @g_136 to i56*), align 1
  %311 = lshr i56 %310, 9
  %312 = and i56 %311, 268435455
  %313 = trunc i56 %312 to i32
  %314 = zext i32 %313 to i64
  %315 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %314, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), i32 %315)
  %316 = load i56, i56* bitcast (<{ i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8 }>* @g_136 to i56*), align 1
  %317 = lshr i56 %316, 37
  %318 = and i56 %317, 32767
  %319 = trunc i56 %318 to i32
  %320 = zext i32 %319 to i64
  %321 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %320, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), i32 %321)
  %322 = load volatile i32, i32* getelementptr inbounds (%struct.S0, %struct.S0* bitcast (<{ i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8 }>* @g_136 to %struct.S0*), i32 0, i32 1), align 1, !tbaa !10
  %323 = sext i32 %322 to i64
  %324 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %323, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0), i32 %324)
  %325 = load i48, i48* bitcast ([6 x i8]* getelementptr inbounds (%struct.S0, %struct.S0* bitcast (<{ i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8 }>* @g_136 to %struct.S0*), i32 0, i32 2) to i48*), align 1
  %326 = and i48 %325, 8388607
  %327 = trunc i48 %326 to i32
  %328 = zext i32 %327 to i64
  %329 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %328, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i32 0, i32 0), i32 %329)
  %330 = load i48, i48* bitcast ([6 x i8]* getelementptr inbounds (%struct.S0, %struct.S0* bitcast (<{ i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8 }>* @g_136 to %struct.S0*), i32 0, i32 2) to i48*), align 1
  %331 = shl i48 %330, 16
  %332 = ashr i48 %331, 39
  %333 = trunc i48 %332 to i32
  %334 = sext i32 %333 to i64
  %335 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %334, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i32 0, i32 0), i32 %335)
  %336 = load volatile i48, i48* bitcast ([6 x i8]* getelementptr inbounds (%struct.S0, %struct.S0* bitcast (<{ i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8 }>* @g_136 to %struct.S0*), i32 0, i32 2) to i48*), align 1
  %337 = shl i48 %336, 8
  %338 = ashr i48 %337, 40
  %339 = trunc i48 %338 to i32
  %340 = sext i32 %339 to i64
  %341 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %340, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0), i32 %341)
  %342 = load volatile i48, i48* bitcast ([6 x i8]* getelementptr inbounds (%struct.S0, %struct.S0* bitcast (<{ i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8 }>* @g_136 to %struct.S0*), i32 0, i32 2) to i48*), align 1
  %343 = lshr i48 %342, 40
  %344 = and i48 %343, 3
  %345 = trunc i48 %344 to i32
  %346 = zext i32 %345 to i64
  %347 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %346, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0), i32 %347)
  %348 = load i32, i32* @g_138, align 4, !tbaa !1
  %349 = sext i32 %348 to i64
  %350 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %349, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), i32 %350)
  %351 = load i16, i16* @g_141, align 2, !tbaa !12
  %352 = zext i16 %351 to i64
  %353 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %352, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), i32 %353)
  %354 = load i32, i32* @g_143, align 4, !tbaa !1
  %355 = sext i32 %354 to i64
  %356 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %355, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i32 %356)
  %357 = load i8, i8* @g_145, align 1, !tbaa !9
  %358 = sext i8 %357 to i64
  %359 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %358, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), i32 %359)
  %360 = load i64, i64* @g_211, align 8, !tbaa !7
  %361 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %360, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0), i32 %361)
  %362 = load i8, i8* @g_240, align 1, !tbaa !9
  %363 = sext i8 %362 to i64
  %364 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %363, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), i32 %364)
  %365 = load i32, i32* @g_256, align 4, !tbaa !1
  %366 = zext i32 %365 to i64
  %367 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %366, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0), i32 %367)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %368

; <label>:368                                     ; preds = %384, %259
  %369 = load i32, i32* %i, align 4, !tbaa !1
  %370 = icmp slt i32 %369, 3
  br i1 %370, label %371, label %387

; <label>:371                                     ; preds = %368
  %372 = load i32, i32* %i, align 4, !tbaa !1
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds [3 x i32], [3 x i32]* @g_286, i32 0, i64 %373
  %375 = load i32, i32* %374, align 4, !tbaa !1
  %376 = zext i32 %375 to i64
  %377 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %376, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i32 0, i32 0), i32 %377)
  %378 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %383

; <label>:380                                     ; preds = %371
  %381 = load i32, i32* %i, align 4, !tbaa !1
  %382 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i32 %381)
  br label %383

; <label>:383                                     ; preds = %380, %371
  br label %384

; <label>:384                                     ; preds = %383
  %385 = load i32, i32* %i, align 4, !tbaa !1
  %386 = add nsw i32 %385, 1
  store i32 %386, i32* %i, align 4, !tbaa !1
  br label %368

; <label>:387                                     ; preds = %368
  %388 = load i64, i64* @g_295, align 8, !tbaa !7
  %389 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %388, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i32 %389)
  %390 = load i64, i64* @g_303, align 8, !tbaa !7
  %391 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %390, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0), i32 %391)
  %392 = load i16, i16* @g_306, align 2, !tbaa !12
  %393 = sext i16 %392 to i64
  %394 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %393, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0), i32 %394)
  %395 = load i8, i8* @g_308, align 1, !tbaa !9
  %396 = zext i8 %395 to i64
  %397 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %396, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0), i32 %397)
  %398 = load i56, i56* bitcast (<{ i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8 }>* @g_349 to i56*), align 1
  %399 = shl i56 %398, 47
  %400 = ashr i56 %399, 47
  %401 = trunc i56 %400 to i32
  %402 = sext i32 %401 to i64
  %403 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %402, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i32 0, i32 0), i32 %403)
  %404 = load volatile i56, i56* bitcast (<{ i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8 }>* @g_349 to i56*), align 1
  %405 = lshr i56 %404, 9
  %406 = and i56 %405, 268435455
  %407 = trunc i56 %406 to i32
  %408 = zext i32 %407 to i64
  %409 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %408, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.47, i32 0, i32 0), i32 %409)
  %410 = load i56, i56* bitcast (<{ i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8 }>* @g_349 to i56*), align 1
  %411 = lshr i56 %410, 37
  %412 = and i56 %411, 32767
  %413 = trunc i56 %412 to i32
  %414 = zext i32 %413 to i64
  %415 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %414, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i32 0, i32 0), i32 %415)
  %416 = load volatile i32, i32* getelementptr inbounds (%struct.S0, %struct.S0* bitcast (<{ i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8 }>* @g_349 to %struct.S0*), i32 0, i32 1), align 1, !tbaa !10
  %417 = sext i32 %416 to i64
  %418 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %417, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i32 0, i32 0), i32 %418)
  %419 = load i48, i48* bitcast ([6 x i8]* getelementptr inbounds (%struct.S0, %struct.S0* bitcast (<{ i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8 }>* @g_349 to %struct.S0*), i32 0, i32 2) to i48*), align 1
  %420 = and i48 %419, 8388607
  %421 = trunc i48 %420 to i32
  %422 = zext i32 %421 to i64
  %423 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %422, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i32 0, i32 0), i32 %423)
  %424 = load i48, i48* bitcast ([6 x i8]* getelementptr inbounds (%struct.S0, %struct.S0* bitcast (<{ i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8 }>* @g_349 to %struct.S0*), i32 0, i32 2) to i48*), align 1
  %425 = shl i48 %424, 16
  %426 = ashr i48 %425, 39
  %427 = trunc i48 %426 to i32
  %428 = sext i32 %427 to i64
  %429 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %428, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.51, i32 0, i32 0), i32 %429)
  %430 = load volatile i48, i48* bitcast ([6 x i8]* getelementptr inbounds (%struct.S0, %struct.S0* bitcast (<{ i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8 }>* @g_349 to %struct.S0*), i32 0, i32 2) to i48*), align 1
  %431 = shl i48 %430, 8
  %432 = ashr i48 %431, 40
  %433 = trunc i48 %432 to i32
  %434 = sext i32 %433 to i64
  %435 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %434, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.52, i32 0, i32 0), i32 %435)
  %436 = load volatile i48, i48* bitcast ([6 x i8]* getelementptr inbounds (%struct.S0, %struct.S0* bitcast (<{ i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8 }>* @g_349 to %struct.S0*), i32 0, i32 2) to i48*), align 1
  %437 = lshr i48 %436, 40
  %438 = and i48 %437, 3
  %439 = trunc i48 %438 to i32
  %440 = zext i32 %439 to i64
  %441 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %440, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.53, i32 0, i32 0), i32 %441)
  %442 = load volatile i56, i56* bitcast (<{ i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8 }>* @g_414 to i56*), align 1
  %443 = shl i56 %442, 47
  %444 = ashr i56 %443, 47
  %445 = trunc i56 %444 to i32
  %446 = sext i32 %445 to i64
  %447 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %446, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.54, i32 0, i32 0), i32 %447)
  %448 = load volatile i56, i56* bitcast (<{ i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8 }>* @g_414 to i56*), align 1
  %449 = lshr i56 %448, 9
  %450 = and i56 %449, 268435455
  %451 = trunc i56 %450 to i32
  %452 = zext i32 %451 to i64
  %453 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %452, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i32 0, i32 0), i32 %453)
  %454 = load volatile i56, i56* bitcast (<{ i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8 }>* @g_414 to i56*), align 1
  %455 = lshr i56 %454, 37
  %456 = and i56 %455, 32767
  %457 = trunc i56 %456 to i32
  %458 = zext i32 %457 to i64
  %459 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %458, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.56, i32 0, i32 0), i32 %459)
  %460 = load volatile i32, i32* getelementptr inbounds (%struct.S0, %struct.S0* bitcast (<{ i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8 }>* @g_414 to %struct.S0*), i32 0, i32 1), align 1, !tbaa !10
  %461 = sext i32 %460 to i64
  %462 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %461, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.57, i32 0, i32 0), i32 %462)
  %463 = load volatile i48, i48* bitcast ([6 x i8]* getelementptr inbounds (%struct.S0, %struct.S0* bitcast (<{ i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8 }>* @g_414 to %struct.S0*), i32 0, i32 2) to i48*), align 1
  %464 = and i48 %463, 8388607
  %465 = trunc i48 %464 to i32
  %466 = zext i32 %465 to i64
  %467 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %466, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.58, i32 0, i32 0), i32 %467)
  %468 = load volatile i48, i48* bitcast ([6 x i8]* getelementptr inbounds (%struct.S0, %struct.S0* bitcast (<{ i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8 }>* @g_414 to %struct.S0*), i32 0, i32 2) to i48*), align 1
  %469 = shl i48 %468, 16
  %470 = ashr i48 %469, 39
  %471 = trunc i48 %470 to i32
  %472 = sext i32 %471 to i64
  %473 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %472, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.59, i32 0, i32 0), i32 %473)
  %474 = load volatile i48, i48* bitcast ([6 x i8]* getelementptr inbounds (%struct.S0, %struct.S0* bitcast (<{ i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8 }>* @g_414 to %struct.S0*), i32 0, i32 2) to i48*), align 1
  %475 = shl i48 %474, 8
  %476 = ashr i48 %475, 40
  %477 = trunc i48 %476 to i32
  %478 = sext i32 %477 to i64
  %479 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %478, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.60, i32 0, i32 0), i32 %479)
  %480 = load volatile i48, i48* bitcast ([6 x i8]* getelementptr inbounds (%struct.S0, %struct.S0* bitcast (<{ i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8 }>* @g_414 to %struct.S0*), i32 0, i32 2) to i48*), align 1
  %481 = lshr i48 %480, 40
  %482 = and i48 %481, 3
  %483 = trunc i48 %482 to i32
  %484 = zext i32 %483 to i64
  %485 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %484, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.61, i32 0, i32 0), i32 %485)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %486

; <label>:486                                     ; preds = %502, %387
  %487 = load i32, i32* %i, align 4, !tbaa !1
  %488 = icmp slt i32 %487, 7
  br i1 %488, label %489, label %505

; <label>:489                                     ; preds = %486
  %490 = load i32, i32* %i, align 4, !tbaa !1
  %491 = sext i32 %490 to i64
  %492 = getelementptr inbounds [7 x i32], [7 x i32]* @g_476, i32 0, i64 %491
  %493 = load i32, i32* %492, align 4, !tbaa !1
  %494 = zext i32 %493 to i64
  %495 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %494, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.62, i32 0, i32 0), i32 %495)
  %496 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %497 = icmp ne i32 %496, 0
  br i1 %497, label %498, label %501

; <label>:498                                     ; preds = %489
  %499 = load i32, i32* %i, align 4, !tbaa !1
  %500 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i32 %499)
  br label %501

; <label>:501                                     ; preds = %498, %489
  br label %502

; <label>:502                                     ; preds = %501
  %503 = load i32, i32* %i, align 4, !tbaa !1
  %504 = add nsw i32 %503, 1
  store i32 %504, i32* %i, align 4, !tbaa !1
  br label %486

; <label>:505                                     ; preds = %486
  %506 = load volatile i56, i56* bitcast (<{ i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8 }>* @g_491 to i56*), align 1
  %507 = shl i56 %506, 47
  %508 = ashr i56 %507, 47
  %509 = trunc i56 %508 to i32
  %510 = sext i32 %509 to i64
  %511 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %510, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.63, i32 0, i32 0), i32 %511)
  %512 = load volatile i56, i56* bitcast (<{ i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8 }>* @g_491 to i56*), align 1
  %513 = lshr i56 %512, 9
  %514 = and i56 %513, 268435455
  %515 = trunc i56 %514 to i32
  %516 = zext i32 %515 to i64
  %517 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %516, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.64, i32 0, i32 0), i32 %517)
  %518 = load volatile i56, i56* bitcast (<{ i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8 }>* @g_491 to i56*), align 1
  %519 = lshr i56 %518, 37
  %520 = and i56 %519, 32767
  %521 = trunc i56 %520 to i32
  %522 = zext i32 %521 to i64
  %523 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %522, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.65, i32 0, i32 0), i32 %523)
  %524 = load volatile i32, i32* getelementptr inbounds (%struct.S0, %struct.S0* bitcast (<{ i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8 }>* @g_491 to %struct.S0*), i32 0, i32 1), align 1, !tbaa !10
  %525 = sext i32 %524 to i64
  %526 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %525, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.66, i32 0, i32 0), i32 %526)
  %527 = load volatile i48, i48* bitcast ([6 x i8]* getelementptr inbounds (%struct.S0, %struct.S0* bitcast (<{ i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8 }>* @g_491 to %struct.S0*), i32 0, i32 2) to i48*), align 1
  %528 = and i48 %527, 8388607
  %529 = trunc i48 %528 to i32
  %530 = zext i32 %529 to i64
  %531 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %530, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.67, i32 0, i32 0), i32 %531)
  %532 = load volatile i48, i48* bitcast ([6 x i8]* getelementptr inbounds (%struct.S0, %struct.S0* bitcast (<{ i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8 }>* @g_491 to %struct.S0*), i32 0, i32 2) to i48*), align 1
  %533 = shl i48 %532, 16
  %534 = ashr i48 %533, 39
  %535 = trunc i48 %534 to i32
  %536 = sext i32 %535 to i64
  %537 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %536, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.68, i32 0, i32 0), i32 %537)
  %538 = load volatile i48, i48* bitcast ([6 x i8]* getelementptr inbounds (%struct.S0, %struct.S0* bitcast (<{ i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8 }>* @g_491 to %struct.S0*), i32 0, i32 2) to i48*), align 1
  %539 = shl i48 %538, 8
  %540 = ashr i48 %539, 40
  %541 = trunc i48 %540 to i32
  %542 = sext i32 %541 to i64
  %543 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %542, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.69, i32 0, i32 0), i32 %543)
  %544 = load volatile i48, i48* bitcast ([6 x i8]* getelementptr inbounds (%struct.S0, %struct.S0* bitcast (<{ i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8 }>* @g_491 to %struct.S0*), i32 0, i32 2) to i48*), align 1
  %545 = lshr i48 %544, 40
  %546 = and i48 %545, 3
  %547 = trunc i48 %546 to i32
  %548 = zext i32 %547 to i64
  %549 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %548, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.70, i32 0, i32 0), i32 %549)
  %550 = load i32, i32* @g_547, align 4, !tbaa !1
  %551 = zext i32 %550 to i64
  %552 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %551, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.71, i32 0, i32 0), i32 %552)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %553

; <label>:553                                     ; preds = %569, %505
  %554 = load i32, i32* %i, align 4, !tbaa !1
  %555 = icmp slt i32 %554, 10
  br i1 %555, label %556, label %572

; <label>:556                                     ; preds = %553
  %557 = load i32, i32* %i, align 4, !tbaa !1
  %558 = sext i32 %557 to i64
  %559 = getelementptr inbounds [10 x i8], [10 x i8]* @g_552, i32 0, i64 %558
  %560 = load volatile i8, i8* %559, align 1, !tbaa !9
  %561 = zext i8 %560 to i64
  %562 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %561, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.72, i32 0, i32 0), i32 %562)
  %563 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %564 = icmp ne i32 %563, 0
  br i1 %564, label %565, label %568

; <label>:565                                     ; preds = %556
  %566 = load i32, i32* %i, align 4, !tbaa !1
  %567 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i32 %566)
  br label %568

; <label>:568                                     ; preds = %565, %556
  br label %569

; <label>:569                                     ; preds = %568
  %570 = load i32, i32* %i, align 4, !tbaa !1
  %571 = add nsw i32 %570, 1
  store i32 %571, i32* %i, align 4, !tbaa !1
  br label %553

; <label>:572                                     ; preds = %553
  %573 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %574 = zext i32 %573 to i64
  %575 = xor i64 %574, 4294967295
  %576 = trunc i64 %575 to i32
  %577 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %576, i32 %577)
  %578 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %578) #1
  %579 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %579) #1
  %580 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %580) #1
  %581 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %581) #1
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
  %1 = alloca i32, align 4
  %l_9 = alloca i16, align 2
  %l_144 = alloca i8*, align 8
  %l_277 = alloca i32, align 4
  %l_514 = alloca i32, align 4
  %l_517 = alloca i32**, align 8
  %l_529 = alloca [4 x [1 x i64]], align 16
  %l_546 = alloca i32*, align 8
  %l_548 = alloca i16, align 2
  %l_549 = alloca i8***, align 8
  %l_551 = alloca i8**, align 8
  %l_550 = alloca i8***, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %l_498 = alloca i16, align 2
  %l_501 = alloca [6 x [9 x [4 x i32**]]], align 16
  %l_507 = alloca [6 x [2 x i8*]], align 16
  %l_506 = alloca i8**, align 8
  %l_511 = alloca i16*, align 8
  %l_512 = alloca i64*, align 8
  %l_513 = alloca [10 x i32*], align 16
  %l_515 = alloca i16, align 2
  %i1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  %k = alloca i32, align 4
  %2 = alloca %struct.S0, align 1
  %l_516 = alloca i64, align 8
  %l_518 = alloca i32***, align 8
  %l_519 = alloca i32***, align 8
  %l_520 = alloca i64, align 8
  %l_521 = alloca [4 x [3 x i8*]], align 16
  %l_522 = alloca [3 x [2 x i32**]], align 16
  %i3 = alloca i32, align 4
  %j4 = alloca i32, align 4
  %3 = alloca i32
  %l_553 = alloca i32*, align 8
  %l_554 = alloca i32*, align 8
  %4 = bitcast i16* %l_9 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %4) #1
  store i16 5, i16* %l_9, align 2, !tbaa !12
  %5 = bitcast i8** %l_144 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store i8* @g_145, i8** %l_144, align 8, !tbaa !5
  %6 = bitcast i32* %l_277 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 9, i32* %l_277, align 4, !tbaa !1
  %7 = bitcast i32* %l_514 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 -780206774, i32* %l_514, align 4, !tbaa !1
  %8 = bitcast i32*** %l_517 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i32** @g_94, i32*** %l_517, align 8, !tbaa !5
  %9 = bitcast [4 x [1 x i64]]* %l_529 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %9) #1
  %10 = bitcast i32** %l_546 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i32* @g_547, i32** %l_546, align 8, !tbaa !5
  %11 = bitcast i16* %l_548 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %11) #1
  store i16 -25073, i16* %l_548, align 2, !tbaa !12
  %12 = bitcast i8**** %l_549 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  store i8*** null, i8**** %l_549, align 8, !tbaa !5
  %13 = bitcast i8*** %l_551 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  store i8** null, i8*** %l_551, align 8, !tbaa !5
  %14 = bitcast i8**** %l_550 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  store i8*** %l_551, i8**** %l_550, align 8, !tbaa !5
  %15 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %17

; <label>:17                                      ; preds = %35, %0
  %18 = load i32, i32* %i, align 4, !tbaa !1
  %19 = icmp slt i32 %18, 4
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
  %29 = getelementptr inbounds [4 x [1 x i64]], [4 x [1 x i64]]* %l_529, i32 0, i64 %28
  %30 = getelementptr inbounds [1 x i64], [1 x i64]* %29, i32 0, i64 %26
  store i64 0, i64* %30, align 8, !tbaa !7
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
  %39 = load i16, i16* %l_9, align 2, !tbaa !12
  %40 = sext i16 %39 to i32
  %41 = load i32, i32* @g_16, align 4, !tbaa !1
  %42 = zext i32 %41 to i64
  %43 = load i56, i56* bitcast (<{ i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8 }>* @g_112 to i56*), align 1
  %44 = shl i56 %43, 47
  %45 = ashr i56 %44, 47
  %46 = trunc i56 %45 to i32
  %47 = trunc i32 %46 to i16
  %48 = call signext i16 @func_4(i32 %40, i8 zeroext 1, i64 %42, i16 signext %47)
  %49 = load i56, i56* bitcast (<{ i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8 }>* @g_43 to i56*), align 1
  %50 = lshr i56 %49, 37
  %51 = and i56 %50, 32767
  %52 = trunc i56 %51 to i32
  %53 = trunc i32 %52 to i16
  %54 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %48, i16 signext %53)
  %55 = sext i16 %54 to i32
  %56 = load i16, i16* %l_9, align 2, !tbaa !12
  %57 = sext i16 %56 to i32
  %58 = or i32 %55, %57
  %59 = load i56, i56* bitcast ({ i8, i8, i8, i8, i8, i8, i8 }* @g_17 to i56*), align 1
  %60 = and i56 %59, 134217727
  %61 = trunc i56 %60 to i32
  %62 = zext i32 %61 to i64
  %63 = icmp sgt i64 1138423622, %62
  br i1 %63, label %64, label %162

; <label>:64                                      ; preds = %38
  %65 = bitcast i16* %l_498 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %65) #1
  store i16 18365, i16* %l_498, align 2, !tbaa !12
  %66 = bitcast [6 x [9 x [4 x i32**]]]* %l_501 to i8*
  call void @llvm.lifetime.start(i64 1728, i8* %66) #1
  %67 = bitcast [6 x [9 x [4 x i32**]]]* %l_501 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %67, i8* bitcast ([6 x [9 x [4 x i32**]]]* @func_1.l_501 to i8*), i64 1728, i32 16, i1 false)
  %68 = bitcast [6 x [2 x i8*]]* %l_507 to i8*
  call void @llvm.lifetime.start(i64 96, i8* %68) #1
  %69 = bitcast [6 x [2 x i8*]]* %l_507 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %69, i8* bitcast ([6 x [2 x i8*]]* @func_1.l_507 to i8*), i64 96, i32 16, i1 false)
  %70 = bitcast i8*** %l_506 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %70) #1
  %71 = getelementptr inbounds [6 x [2 x i8*]], [6 x [2 x i8*]]* %l_507, i32 0, i64 5
  %72 = getelementptr inbounds [2 x i8*], [2 x i8*]* %71, i32 0, i64 1
  store i8** %72, i8*** %l_506, align 8, !tbaa !5
  %73 = bitcast i16** %l_511 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %73) #1
  store i16* @g_306, i16** %l_511, align 8, !tbaa !5
  %74 = bitcast i64** %l_512 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %74) #1
  store i64* @g_303, i64** %l_512, align 8, !tbaa !5
  %75 = bitcast [10 x i32*]* %l_513 to i8*
  call void @llvm.lifetime.start(i64 80, i8* %75) #1
  %76 = bitcast [10 x i32*]* %l_513 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %76, i8* bitcast ([10 x i32*]* @func_1.l_513 to i8*), i64 80, i32 16, i1 false)
  %77 = bitcast i16* %l_515 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %77) #1
  store i16 -19669, i16* %l_515, align 2, !tbaa !12
  %78 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %78) #1
  %79 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %79) #1
  %80 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %80) #1
  %81 = bitcast %struct.S0* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %81, i8* getelementptr inbounds (%struct.S0, %struct.S0* bitcast (<{ i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8 }>* @g_491 to %struct.S0*), i32 0, i32 0, i32 0), i64 17, i32 1, i1 true), !tbaa.struct !14
  %82 = load volatile i48, i48* bitcast ([6 x i8]* getelementptr inbounds (%struct.S0, %struct.S0* bitcast (<{ i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8 }>* @g_491 to %struct.S0*), i32 0, i32 2) to i48*), align 1
  %83 = lshr i48 %82, 40
  %84 = and i48 %83, 3
  %85 = trunc i48 %84 to i32
  %86 = trunc i32 %85 to i16
  %87 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %86, i16 zeroext 0)
  %88 = zext i16 %87 to i32
  %89 = load i16, i16* %l_9, align 2, !tbaa !12
  %90 = sext i16 %89 to i32
  %91 = load i16, i16* %l_9, align 2, !tbaa !12
  %92 = getelementptr inbounds [6 x [9 x [4 x i32**]]], [6 x [9 x [4 x i32**]]]* %l_501, i32 0, i64 1
  %93 = getelementptr inbounds [9 x [4 x i32**]], [9 x [4 x i32**]]* %92, i32 0, i64 7
  %94 = getelementptr inbounds [4 x i32**], [4 x i32**]* %93, i32 0, i64 2
  %95 = load i32**, i32*** %94, align 8, !tbaa !5
  %96 = icmp ne i32** %95, null
  %97 = zext i1 %96 to i32
  %98 = icmp sgt i32 %90, %97
  %99 = zext i1 %98 to i32
  %100 = and i32 %88, %99
  %101 = icmp ne i32 %100, 0
  %102 = xor i1 %101, true
  %103 = zext i1 %102 to i32
  %104 = load i32**, i32*** @g_221, align 8, !tbaa !5
  %105 = load i32*, i32** %104, align 8, !tbaa !5
  %106 = load i32, i32* %105, align 4, !tbaa !1
  %107 = xor i32 %106, %103
  store i32 %107, i32* %105, align 4, !tbaa !1
  %108 = load i32*, i32** @g_92, align 8, !tbaa !5
  %109 = load i32, i32* %108, align 4, !tbaa !1
  %110 = sext i32 %109 to i64
  %111 = and i64 %110, 65
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %108, align 4, !tbaa !1
  %113 = load i32, i32* %l_277, align 4, !tbaa !1
  %114 = load volatile i32, i32* getelementptr inbounds (%struct.S0, %struct.S0* bitcast (<{ i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8 }>* @g_136 to %struct.S0*), i32 0, i32 1), align 1, !tbaa !10
  %115 = load i8**, i8*** @g_314, align 8, !tbaa !5
  %116 = load i8*, i8** %115, align 8, !tbaa !5
  %117 = load i8**, i8*** %l_506, align 8, !tbaa !5
  store i8* null, i8** %117, align 8, !tbaa !5
  %118 = icmp ne i8* %116, null
  %119 = zext i1 %118 to i32
  %120 = load i16*, i16** %l_511, align 8, !tbaa !5
  %121 = icmp eq i16* null, %120
  %122 = zext i1 %121 to i32
  %123 = sext i32 %122 to i64
  %124 = icmp eq i64 %123, -4
  %125 = zext i1 %124 to i32
  %126 = xor i32 %125, -1
  %127 = sext i32 %126 to i64
  %128 = load i64*, i64** %l_512, align 8, !tbaa !5
  store i64 %127, i64* %128, align 8, !tbaa !7
  %129 = or i64 %127, 1
  %130 = trunc i64 %129 to i32
  %131 = call i32 @safe_div_func_uint32_t_u_u(i32 -481171163, i32 %130)
  %132 = load i16, i16* %l_9, align 2, !tbaa !12
  %133 = sext i16 %132 to i32
  %134 = and i32 %131, %133
  %135 = load i48, i48* bitcast ([6 x i8]* getelementptr inbounds (%struct.S0, %struct.S0* bitcast (<{ i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8 }>* @g_112 to %struct.S0*), i32 0, i32 2) to i48*), align 1
  %136 = and i48 %135, 8388607
  %137 = trunc i48 %136 to i32
  %138 = icmp ult i32 %134, %137
  %139 = zext i1 %138 to i32
  %140 = and i32 %119, %139
  %141 = xor i32 %114, %140
  store i32 %141, i32* %l_514, align 4, !tbaa !1
  %142 = icmp sle i32 %113, %141
  %143 = zext i1 %142 to i32
  %144 = trunc i32 %143 to i16
  store i16 %144, i16* %l_515, align 2, !tbaa !12
  %145 = zext i16 %144 to i32
  %146 = call i32 @safe_sub_func_int32_t_s_s(i32 %112, i32 %145)
  %147 = trunc i32 %146 to i8
  %148 = load i32, i32* %l_277, align 4, !tbaa !1
  %149 = call signext i8 @safe_lshift_func_int8_t_s_u(i8 signext %147, i32 %148)
  %150 = sext i8 %149 to i32
  store i32 %150, i32* %l_277, align 4, !tbaa !1
  %151 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %151) #1
  %152 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %152) #1
  %153 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %153) #1
  %154 = bitcast i16* %l_515 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %154) #1
  %155 = bitcast [10 x i32*]* %l_513 to i8*
  call void @llvm.lifetime.end(i64 80, i8* %155) #1
  %156 = bitcast i64** %l_512 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %156) #1
  %157 = bitcast i16** %l_511 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %157) #1
  %158 = bitcast i8*** %l_506 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %158) #1
  %159 = bitcast [6 x [2 x i8*]]* %l_507 to i8*
  call void @llvm.lifetime.end(i64 96, i8* %159) #1
  %160 = bitcast [6 x [9 x [4 x i32**]]]* %l_501 to i8*
  call void @llvm.lifetime.end(i64 1728, i8* %160) #1
  %161 = bitcast i16* %l_498 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %161) #1
  br label %199

; <label>:162                                     ; preds = %38
  %163 = bitcast i64* %l_516 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %163) #1
  store i64 7, i64* %l_516, align 8, !tbaa !7
  %164 = bitcast i32**** %l_518 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %164) #1
  store i32*** null, i32**** %l_518, align 8, !tbaa !5
  %165 = bitcast i32**** %l_519 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %165) #1
  store i32*** %l_517, i32**** %l_519, align 8, !tbaa !5
  %166 = bitcast i64* %l_520 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %166) #1
  store i64 -1, i64* %l_520, align 8, !tbaa !7
  %167 = bitcast [4 x [3 x i8*]]* %l_521 to i8*
  call void @llvm.lifetime.start(i64 96, i8* %167) #1
  %168 = bitcast [4 x [3 x i8*]]* %l_521 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %168, i8* bitcast ([4 x [3 x i8*]]* @func_1.l_521 to i8*), i64 96, i32 16, i1 false)
  %169 = bitcast [3 x [2 x i32**]]* %l_522 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %169) #1
  %170 = bitcast [3 x [2 x i32**]]* %l_522 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %170, i8* bitcast ([3 x [2 x i32**]]* @func_1.l_522 to i8*), i64 48, i32 16, i1 false)
  %171 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %171) #1
  %172 = bitcast i32* %j4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %172) #1
  %173 = load i64, i64* %l_516, align 8, !tbaa !7
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %185

; <label>:175                                     ; preds = %162
  %176 = load i32**, i32*** %l_517, align 8, !tbaa !5
  %177 = load i32***, i32**** %l_519, align 8, !tbaa !5
  store i32** %176, i32*** %177, align 8, !tbaa !5
  %178 = load i64, i64* %l_520, align 8, !tbaa !7
  %179 = trunc i64 %178 to i8
  %180 = load i8*, i8** %l_144, align 8, !tbaa !5
  store i8 %179, i8* %180, align 1, !tbaa !9
  store i8 %179, i8* @g_240, align 1, !tbaa !9
  %181 = getelementptr inbounds [3 x [2 x i32**]], [3 x [2 x i32**]]* %l_522, i32 0, i64 2
  %182 = getelementptr inbounds [2 x i32**], [2 x i32**]* %181, i32 0, i64 1
  %183 = load i32**, i32*** %182, align 8, !tbaa !5
  %184 = icmp eq i32** %176, %183
  br label %185

; <label>:185                                     ; preds = %175, %162
  %186 = phi i1 [ false, %162 ], [ %184, %175 ]
  %187 = zext i1 %186 to i32
  %188 = load i32*, i32** @g_92, align 8, !tbaa !5
  %189 = load i32, i32* %188, align 4, !tbaa !1
  %190 = and i32 %189, %187
  store i32 %190, i32* %188, align 4, !tbaa !1
  %191 = bitcast i32* %j4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %191) #1
  %192 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %192) #1
  %193 = bitcast [3 x [2 x i32**]]* %l_522 to i8*
  call void @llvm.lifetime.end(i64 48, i8* %193) #1
  %194 = bitcast [4 x [3 x i8*]]* %l_521 to i8*
  call void @llvm.lifetime.end(i64 96, i8* %194) #1
  %195 = bitcast i64* %l_520 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %195) #1
  %196 = bitcast i32**** %l_519 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %196) #1
  %197 = bitcast i32**** %l_518 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %197) #1
  %198 = bitcast i64* %l_516 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %198) #1
  br label %199

; <label>:199                                     ; preds = %185, %64
  %200 = load volatile i48, i48* bitcast ([6 x i8]* getelementptr inbounds (%struct.S0, %struct.S0* bitcast (<{ i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8 }>* @g_414 to %struct.S0*), i32 0, i32 2) to i48*), align 1
  %201 = lshr i48 %200, 40
  %202 = and i48 %201, 3
  %203 = trunc i48 %202 to i32
  %204 = getelementptr inbounds [4 x [1 x i64]], [4 x [1 x i64]]* %l_529, i32 0, i64 3
  %205 = getelementptr inbounds [1 x i64], [1 x i64]* %204, i32 0, i64 0
  %206 = load i64, i64* %205, align 8, !tbaa !7
  %207 = call i32 @safe_unary_minus_func_uint32_t_u(i32 -8)
  %208 = xor i32 %207, -1
  %209 = load i32, i32* @g_143, align 4, !tbaa !1
  %210 = sext i32 %209 to i64
  %211 = call i64 @safe_div_func_int64_t_s_s(i64 %210, i64 8)
  %212 = trunc i64 %211 to i32
  %213 = load i32*, i32** %l_546, align 8, !tbaa !5
  store i32 %212, i32* %213, align 4, !tbaa !1
  %214 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @g_75, i32 0, i64 0), align 4, !tbaa !1
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %217

; <label>:216                                     ; preds = %199
  br label %217

; <label>:217                                     ; preds = %216, %199
  %218 = phi i1 [ false, %199 ], [ true, %216 ]
  %219 = zext i1 %218 to i32
  %220 = load i56, i56* bitcast (<{ i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8 }>* @g_136 to i56*), align 1
  %221 = shl i56 %220, 47
  %222 = ashr i56 %221, 47
  %223 = trunc i56 %222 to i32
  %224 = call i32 @safe_sub_func_int32_t_s_s(i32 %219, i32 %223)
  %225 = sext i32 %224 to i64
  %226 = or i64 %225, 4294967295
  %227 = load i16, i16* %l_548, align 2, !tbaa !12
  %228 = sext i16 %227 to i64
  %229 = call i64 @safe_div_func_int64_t_s_s(i64 %228, i64 2485533114952337679)
  %230 = load i8***, i8**** %l_550, align 8, !tbaa !5
  store i8** @g_315, i8*** %230, align 8, !tbaa !5
  %231 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @g_286, i32 0, i64 1), align 4, !tbaa !1
  %232 = call i32 @safe_sub_func_int32_t_s_s(i32 0, i32 %231)
  %233 = call i32 @safe_mod_func_int32_t_s_s(i32 %232, i32 -54424364)
  %234 = trunc i32 %233 to i16
  %235 = load i32, i32* getelementptr inbounds ([7 x [3 x [4 x i32]]], [7 x [3 x [4 x i32]]]* @g_95, i32 0, i64 3, i64 2, i64 3), align 4, !tbaa !1
  %236 = trunc i32 %235 to i16
  %237 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %234, i16 zeroext %236)
  %238 = load i32, i32* getelementptr inbounds ([7 x [3 x [4 x i32]]], [7 x [3 x [4 x i32]]]* @g_95, i32 0, i64 5, i64 0, i64 3), align 4, !tbaa !1
  %239 = call signext i16 @safe_rshift_func_int16_t_s_s(i16 signext %237, i32 %238)
  %240 = sext i16 %239 to i32
  %241 = icmp ne i32 %240, 0
  %242 = zext i1 %241 to i32
  %243 = icmp ugt i32 %208, %242
  %244 = zext i1 %243 to i32
  %245 = trunc i32 %244 to i16
  %246 = call signext i16 @safe_rshift_func_int16_t_s_u(i16 signext %245, i32 13)
  %247 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %246, i16 signext 1)
  %248 = sext i16 %247 to i64
  %249 = icmp ne i64 %248, 65534
  %250 = zext i1 %249 to i32
  %251 = sext i32 %250 to i64
  %252 = icmp ne i64 %251, 20760
  %253 = zext i1 %252 to i32
  %254 = xor i32 %203, %253
  %255 = load i32, i32* %l_514, align 4, !tbaa !1
  %256 = or i32 %255, %254
  store i32 %256, i32* %l_514, align 4, !tbaa !1
  %257 = load volatile i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @g_552, i32 0, i64 2), align 1, !tbaa !9
  %258 = icmp ne i8 %257, 0
  br i1 %258, label %259, label %261

; <label>:259                                     ; preds = %217
  %260 = load i32, i32* getelementptr inbounds ([7 x [3 x [4 x i32]]], [7 x [3 x [4 x i32]]]* @g_95, i32 0, i64 2, i64 0, i64 2), align 4, !tbaa !1
  store i32 %260, i32* %1
  store i32 1, i32* %3
  br label %272

; <label>:261                                     ; preds = %217
  %262 = bitcast i32** %l_553 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %262) #1
  store i32* null, i32** %l_553, align 8, !tbaa !5
  %263 = bitcast i32** %l_554 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %263) #1
  store i32* %l_514, i32** %l_554, align 8, !tbaa !5
  %264 = load i32*, i32** %l_553, align 8, !tbaa !5
  store i32* %264, i32** %l_554, align 8, !tbaa !5
  %265 = load i32**, i32*** %l_517, align 8, !tbaa !5
  store i32* %264, i32** %265, align 8, !tbaa !5
  %266 = load volatile i56, i56* bitcast (<{ i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8 }>* @g_136 to i56*), align 1
  %267 = lshr i56 %266, 9
  %268 = and i56 %267, 268435455
  %269 = trunc i56 %268 to i32
  store i32 %269, i32* %1
  store i32 1, i32* %3
  %270 = bitcast i32** %l_554 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %270) #1
  %271 = bitcast i32** %l_553 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %271) #1
  br label %272

; <label>:272                                     ; preds = %261, %259
  %273 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %273) #1
  %274 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %274) #1
  %275 = bitcast i8**** %l_550 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %275) #1
  %276 = bitcast i8*** %l_551 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %276) #1
  %277 = bitcast i8**** %l_549 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %277) #1
  %278 = bitcast i16* %l_548 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %278) #1
  %279 = bitcast i32** %l_546 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %279) #1
  %280 = bitcast [4 x [1 x i64]]* %l_529 to i8*
  call void @llvm.lifetime.end(i64 32, i8* %280) #1
  %281 = bitcast i32*** %l_517 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %281) #1
  %282 = bitcast i32* %l_514 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %282) #1
  %283 = bitcast i32* %l_277 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %283) #1
  %284 = bitcast i8** %l_144 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %284) #1
  %285 = bitcast i16* %l_9 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %285) #1
  %286 = load i32, i32* %1
  ret i32 %286
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
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.73, i32 0, i32 0), i8* %8, i64 %11)
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
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.74, i32 0, i32 0), i32 %3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal signext i16 @safe_mul_func_int16_t_s_s(i16 signext %si1, i16 signext %si2) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i16, align 2
  store i16 %si1, i16* %1, align 2, !tbaa !12
  store i16 %si2, i16* %2, align 2, !tbaa !12
  %3 = load i16, i16* %1, align 2, !tbaa !12
  %4 = sext i16 %3 to i32
  %5 = load i16, i16* %2, align 2, !tbaa !12
  %6 = sext i16 %5 to i32
  %7 = mul nsw i32 %4, %6
  %8 = trunc i32 %7 to i16
  ret i16 %8
}

; Function Attrs: nounwind uwtable
define internal signext i16 @func_4(i32 %p_5, i8 zeroext %p_6, i64 %p_7, i16 signext %p_8) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  %3 = alloca i64, align 8
  %4 = alloca i16, align 2
  %l_281 = alloca i32, align 4
  %l_290 = alloca i32, align 4
  %l_291 = alloca i32, align 4
  %l_304 = alloca i32, align 4
  %l_316 = alloca i8**, align 8
  %l_328 = alloca i32**, align 8
  %l_407 = alloca i8, align 1
  %l_432 = alloca i32, align 4
  %l_433 = alloca i32, align 4
  %l_434 = alloca [1 x i32], align 4
  %l_436 = alloca i32, align 4
  %l_487 = alloca i32, align 4
  %i = alloca i32, align 4
  %l_280 = alloca i32*, align 8
  %l_289 = alloca i32***, align 8
  %l_292 = alloca i64*, align 8
  %l_294 = alloca i64*, align 8
  %l_376 = alloca [1 x i64], align 8
  %l_419 = alloca i8*, align 8
  %l_418 = alloca i8**, align 8
  %l_431 = alloca [7 x i32], align 16
  %l_475 = alloca [6 x [6 x i32]], align 16
  %l_479 = alloca i32*, align 8
  %l_480 = alloca i32*, align 8
  %l_481 = alloca i32*, align 8
  %l_482 = alloca i32*, align 8
  %l_483 = alloca i32*, align 8
  %l_484 = alloca i32*, align 8
  %l_485 = alloca i32*, align 8
  %l_486 = alloca [6 x i32*], align 16
  %i1 = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %p_5, i32* %1, align 4, !tbaa !1
  store i8 %p_6, i8* %2, align 1, !tbaa !9
  store i64 %p_7, i64* %3, align 8, !tbaa !7
  store i16 %p_8, i16* %4, align 2, !tbaa !12
  %5 = bitcast i32* %l_281 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 -5, i32* %l_281, align 4, !tbaa !1
  %6 = bitcast i32* %l_290 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 0, i32* %l_290, align 4, !tbaa !1
  %7 = bitcast i32* %l_291 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 -1, i32* %l_291, align 4, !tbaa !1
  %8 = bitcast i32* %l_304 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  store i32 -969992335, i32* %l_304, align 4, !tbaa !1
  %9 = bitcast i8*** %l_316 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store i8** @g_315, i8*** %l_316, align 8, !tbaa !5
  %10 = bitcast i32*** %l_328 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i32** @g_92, i32*** %l_328, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_407) #1
  store i8 -1, i8* %l_407, align 1, !tbaa !9
  %11 = bitcast i32* %l_432 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  store i32 -10, i32* %l_432, align 4, !tbaa !1
  %12 = bitcast i32* %l_433 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  store i32 1903649016, i32* %l_433, align 4, !tbaa !1
  %13 = bitcast [1 x i32]* %l_434 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast i32* %l_436 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  store i32 1, i32* %l_436, align 4, !tbaa !1
  %15 = bitcast i32* %l_487 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  store i32 0, i32* %l_487, align 4, !tbaa !1
  %16 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %17

; <label>:17                                      ; preds = %24, %0
  %18 = load i32, i32* %i, align 4, !tbaa !1
  %19 = icmp slt i32 %18, 1
  br i1 %19, label %20, label %27

; <label>:20                                      ; preds = %17
  %21 = load i32, i32* %i, align 4, !tbaa !1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [1 x i32], [1 x i32]* %l_434, i32 0, i64 %22
  store i32 -1197588286, i32* %23, align 4, !tbaa !1
  br label %24

; <label>:24                                      ; preds = %20
  %25 = load i32, i32* %i, align 4, !tbaa !1
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %i, align 4, !tbaa !1
  br label %17

; <label>:27                                      ; preds = %17
  store i8 0, i8* @g_145, align 1, !tbaa !9
  br label %28

; <label>:28                                      ; preds = %145, %27
  %29 = load i8, i8* @g_145, align 1, !tbaa !9
  %30 = sext i8 %29 to i32
  %31 = icmp sle i32 %30, 0
  br i1 %31, label %32, label %150

; <label>:32                                      ; preds = %28
  %33 = bitcast i32** %l_280 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %33) #1
  store i32* null, i32** %l_280, align 8, !tbaa !5
  %34 = bitcast i32**** %l_289 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %34) #1
  store i32*** @g_221, i32**** %l_289, align 8, !tbaa !5
  %35 = bitcast i64** %l_292 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %35) #1
  store i64* @g_211, i64** %l_292, align 8, !tbaa !5
  %36 = bitcast i64** %l_294 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %36) #1
  store i64* @g_295, i64** %l_294, align 8, !tbaa !5
  %37 = bitcast [1 x i64]* %l_376 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %37) #1
  %38 = bitcast i8** %l_419 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %38) #1
  store i8* null, i8** %l_419, align 8, !tbaa !5
  %39 = bitcast i8*** %l_418 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %39) #1
  store i8** %l_419, i8*** %l_418, align 8, !tbaa !5
  %40 = bitcast [7 x i32]* %l_431 to i8*
  call void @llvm.lifetime.start(i64 28, i8* %40) #1
  %41 = bitcast [7 x i32]* %l_431 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* bitcast ([7 x i32]* @func_4.l_431 to i8*), i64 28, i32 16, i1 false)
  %42 = bitcast [6 x [6 x i32]]* %l_475 to i8*
  call void @llvm.lifetime.start(i64 144, i8* %42) #1
  %43 = bitcast [6 x [6 x i32]]* %l_475 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* bitcast ([6 x [6 x i32]]* @func_4.l_475 to i8*), i64 144, i32 16, i1 false)
  %44 = bitcast i32** %l_479 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %44) #1
  store i32* %l_290, i32** %l_479, align 8, !tbaa !5
  %45 = bitcast i32** %l_480 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %45) #1
  %46 = getelementptr inbounds [7 x i32], [7 x i32]* %l_431, i32 0, i64 5
  store i32* %46, i32** %l_480, align 8, !tbaa !5
  %47 = bitcast i32** %l_481 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %47) #1
  store i32* null, i32** %l_481, align 8, !tbaa !5
  %48 = bitcast i32** %l_482 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %48) #1
  store i32* null, i32** %l_482, align 8, !tbaa !5
  %49 = bitcast i32** %l_483 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %49) #1
  store i32* @g_143, i32** %l_483, align 8, !tbaa !5
  %50 = bitcast i32** %l_484 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %50) #1
  store i32* getelementptr inbounds ([7 x [3 x [4 x i32]]], [7 x [3 x [4 x i32]]]* @g_95, i32 0, i64 3, i64 2, i64 3), i32** %l_484, align 8, !tbaa !5
  %51 = bitcast i32** %l_485 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %51) #1
  %52 = getelementptr inbounds [7 x i32], [7 x i32]* %l_431, i32 0, i64 5
  store i32* %52, i32** %l_485, align 8, !tbaa !5
  %53 = bitcast [6 x i32*]* %l_486 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %53) #1
  %54 = bitcast [6 x i32*]* %l_486 to i8*
  call void @llvm.memset.p0i8.i64(i8* %54, i8 0, i64 48, i32 16, i1 false)
  %55 = bitcast i8* %54 to [6 x i32*]*
  %56 = getelementptr [6 x i32*], [6 x i32*]* %55, i32 0, i32 0
  store i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_75 to i8*), i64 24) to i32*), i32** %56
  %57 = getelementptr [6 x i32*], [6 x i32*]* %55, i32 0, i32 1
  store i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_75 to i8*), i64 24) to i32*), i32** %57
  %58 = getelementptr [6 x i32*], [6 x i32*]* %55, i32 0, i32 2
  store i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_75 to i8*), i64 24) to i32*), i32** %58
  %59 = getelementptr [6 x i32*], [6 x i32*]* %55, i32 0, i32 3
  store i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_75 to i8*), i64 24) to i32*), i32** %59
  %60 = getelementptr [6 x i32*], [6 x i32*]* %55, i32 0, i32 4
  store i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_75 to i8*), i64 24) to i32*), i32** %60
  %61 = getelementptr [6 x i32*], [6 x i32*]* %55, i32 0, i32 5
  store i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_75 to i8*), i64 24) to i32*), i32** %61
  %62 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %62) #1
  %63 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %63) #1
  store i32 0, i32* %i1, align 4, !tbaa !1
  br label %64

; <label>:64                                      ; preds = %71, %32
  %65 = load i32, i32* %i1, align 4, !tbaa !1
  %66 = icmp slt i32 %65, 1
  br i1 %66, label %67, label %74

; <label>:67                                      ; preds = %64
  %68 = load i32, i32* %i1, align 4, !tbaa !1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [1 x i64], [1 x i64]* %l_376, i32 0, i64 %69
  store i64 -4, i64* %70, align 8, !tbaa !7
  br label %71

; <label>:71                                      ; preds = %67
  %72 = load i32, i32* %i1, align 4, !tbaa !1
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %i1, align 4, !tbaa !1
  br label %64

; <label>:74                                      ; preds = %64
  %75 = load i16, i16* %4, align 2, !tbaa !12
  %76 = sext i16 %75 to i32
  %77 = load i8, i8* @g_145, align 1, !tbaa !9
  %78 = sext i8 %77 to i32
  %79 = add nsw i32 %78, 5
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [10 x i32], [10 x i32]* @g_75, i32 0, i64 %80
  %82 = load i32, i32* %81, align 4, !tbaa !1
  %83 = xor i32 %82, %76
  store i32 %83, i32* %81, align 4, !tbaa !1
  store i32 %83, i32* %l_281, align 4, !tbaa !1
  %84 = load i32, i32* @g_138, align 4, !tbaa !1
  %85 = load i32, i32* %1, align 4, !tbaa !1
  %86 = trunc i32 %85 to i8
  %87 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @g_286, i32 0, i64 1), align 4, !tbaa !1
  %88 = zext i32 %87 to i64
  %89 = icmp eq i64 %88, 0
  %90 = zext i1 %89 to i32
  %91 = trunc i32 %90 to i8
  %92 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %86, i8 zeroext %91)
  %93 = zext i8 %92 to i16
  %94 = load i16, i16* %4, align 2, !tbaa !12
  %95 = sext i16 %94 to i32
  %96 = call signext i16 @safe_lshift_func_int16_t_s_u(i16 signext %93, i32 %95)
  %97 = load i48, i48* bitcast ([6 x i8]* getelementptr inbounds (%struct.S0, %struct.S0* bitcast (<{ i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8 }>* @g_136 to %struct.S0*), i32 0, i32 2) to i48*), align 1
  %98 = and i48 %97, 8388607
  %99 = trunc i48 %98 to i32
  %100 = load i32***, i32**** %l_289, align 8, !tbaa !5
  %101 = icmp ne i32*** null, %100
  %102 = zext i1 %101 to i32
  %103 = sext i32 %102 to i64
  %104 = icmp sle i64 %103, 3620163137
  %105 = zext i1 %104 to i32
  %106 = xor i32 %99, %105
  %107 = or i32 %84, %106
  %108 = load i8, i8* %2, align 1, !tbaa !9
  %109 = zext i8 %108 to i32
  %110 = icmp slt i32 %107, %109
  %111 = zext i1 %110 to i32
  %112 = icmp eq i32 %83, %111
  br i1 %112, label %116, label %113

; <label>:113                                     ; preds = %74
  %114 = load i32, i32* %l_281, align 4, !tbaa !1
  %115 = icmp ne i32 %114, 0
  br label %116

; <label>:116                                     ; preds = %113, %74
  %117 = phi i1 [ true, %74 ], [ %115, %113 ]
  %118 = zext i1 %117 to i32
  %119 = load i32, i32* %l_290, align 4, !tbaa !1
  %120 = icmp ne i32 %118, %119
  %121 = zext i1 %120 to i32
  %122 = load i16, i16* %4, align 2, !tbaa !12
  %123 = sext i16 %122 to i32
  %124 = load i32, i32* %l_291, align 4, !tbaa !1
  %125 = xor i32 %124, %123
  store i32 %125, i32* %l_291, align 4, !tbaa !1
  %126 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %126) #1
  %127 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %127) #1
  %128 = bitcast [6 x i32*]* %l_486 to i8*
  call void @llvm.lifetime.end(i64 48, i8* %128) #1
  %129 = bitcast i32** %l_485 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %129) #1
  %130 = bitcast i32** %l_484 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %130) #1
  %131 = bitcast i32** %l_483 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %131) #1
  %132 = bitcast i32** %l_482 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %132) #1
  %133 = bitcast i32** %l_481 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %133) #1
  %134 = bitcast i32** %l_480 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %134) #1
  %135 = bitcast i32** %l_479 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %135) #1
  %136 = bitcast [6 x [6 x i32]]* %l_475 to i8*
  call void @llvm.lifetime.end(i64 144, i8* %136) #1
  %137 = bitcast [7 x i32]* %l_431 to i8*
  call void @llvm.lifetime.end(i64 28, i8* %137) #1
  %138 = bitcast i8*** %l_418 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %138) #1
  %139 = bitcast i8** %l_419 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %139) #1
  %140 = bitcast [1 x i64]* %l_376 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %140) #1
  %141 = bitcast i64** %l_294 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %141) #1
  %142 = bitcast i64** %l_292 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %142) #1
  %143 = bitcast i32**** %l_289 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %143) #1
  %144 = bitcast i32** %l_280 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %144) #1
  br label %145

; <label>:145                                     ; preds = %116
  %146 = load i8, i8* @g_145, align 1, !tbaa !9
  %147 = sext i8 %146 to i32
  %148 = add nsw i32 %147, 1
  %149 = trunc i32 %148 to i8
  store i8 %149, i8* @g_145, align 1, !tbaa !9
  br label %28

; <label>:150                                     ; preds = %28
  %151 = load i32, i32* @g_256, align 4, !tbaa !1
  %152 = trunc i32 %151 to i16
  %153 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %153) #1
  %154 = bitcast i32* %l_487 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %154) #1
  %155 = bitcast i32* %l_436 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %155) #1
  %156 = bitcast [1 x i32]* %l_434 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %156) #1
  %157 = bitcast i32* %l_433 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %157) #1
  %158 = bitcast i32* %l_432 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %158) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_407) #1
  %159 = bitcast i32*** %l_328 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %159) #1
  %160 = bitcast i8*** %l_316 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %160) #1
  %161 = bitcast i32* %l_304 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %161) #1
  %162 = bitcast i32* %l_291 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %162) #1
  %163 = bitcast i32* %l_290 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %163) #1
  %164 = bitcast i32* %l_281 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %164) #1
  ret i16 %152
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %ui1, i16 zeroext %ui2) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i16, align 2
  store i16 %ui1, i16* %1, align 2, !tbaa !12
  store i16 %ui2, i16* %2, align 2, !tbaa !12
  %3 = load i16, i16* %1, align 2, !tbaa !12
  %4 = zext i16 %3 to i32
  %5 = load i16, i16* %2, align 2, !tbaa !12
  %6 = zext i16 %5 to i32
  %7 = sub nsw i32 %4, %6
  %8 = trunc i32 %7 to i16
  ret i16 %8
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
define internal i32 @safe_div_func_uint32_t_u_u(i32 %ui1, i32 %ui2) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %ui1, i32* %1, align 4, !tbaa !1
  store i32 %ui2, i32* %2, align 4, !tbaa !1
  %3 = load i32, i32* %2, align 4, !tbaa !1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

; <label>:5                                       ; preds = %0
  %6 = load i32, i32* %1, align 4, !tbaa !1
  br label %11

; <label>:7                                       ; preds = %0
  %8 = load i32, i32* %1, align 4, !tbaa !1
  %9 = load i32, i32* %2, align 4, !tbaa !1
  %10 = udiv i32 %8, %9
  br label %11

; <label>:11                                      ; preds = %7, %5
  %12 = phi i32 [ %6, %5 ], [ %10, %7 ]
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal signext i16 @safe_rshift_func_int16_t_s_u(i16 signext %left, i32 %right) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i32, align 4
  store i16 %left, i16* %1, align 2, !tbaa !12
  store i32 %right, i32* %2, align 4, !tbaa !1
  %3 = load i16, i16* %1, align 2, !tbaa !12
  %4 = sext i16 %3 to i32
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %9, label %6

; <label>:6                                       ; preds = %0
  %7 = load i32, i32* %2, align 4, !tbaa !1
  %8 = icmp uge i32 %7, 32
  br i1 %8, label %9, label %12

; <label>:9                                       ; preds = %6, %0
  %10 = load i16, i16* %1, align 2, !tbaa !12
  %11 = sext i16 %10 to i32
  br label %17

; <label>:12                                      ; preds = %6
  %13 = load i16, i16* %1, align 2, !tbaa !12
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
define internal i32 @safe_unary_minus_func_uint32_t_u(i32 %ui) #0 {
  %1 = alloca i32, align 4
  store i32 %ui, i32* %1, align 4, !tbaa !1
  %2 = load i32, i32* %1, align 4, !tbaa !1
  %3 = sub i32 0, %2
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal signext i16 @safe_rshift_func_int16_t_s_s(i16 signext %left, i32 %right) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i32, align 4
  store i16 %left, i16* %1, align 2, !tbaa !12
  store i32 %right, i32* %2, align 4, !tbaa !1
  %3 = load i16, i16* %1, align 2, !tbaa !12
  %4 = sext i16 %3 to i32
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
  %13 = load i16, i16* %1, align 2, !tbaa !12
  %14 = sext i16 %13 to i32
  br label %20

; <label>:15                                      ; preds = %9
  %16 = load i16, i16* %1, align 2, !tbaa !12
  %17 = sext i16 %16 to i32
  %18 = load i32, i32* %2, align 4, !tbaa !1
  %19 = ashr i32 %17, %18
  br label %20

; <label>:20                                      ; preds = %15, %12
  %21 = phi i32 [ %14, %12 ], [ %19, %15 ]
  %22 = trunc i32 %21 to i16
  ret i16 %22
}

; Function Attrs: nounwind uwtable
define internal zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %ui1, i16 zeroext %ui2) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i16, align 2
  store i16 %ui1, i16* %1, align 2, !tbaa !12
  store i16 %ui2, i16* %2, align 2, !tbaa !12
  %3 = load i16, i16* %1, align 2, !tbaa !12
  %4 = zext i16 %3 to i32
  %5 = load i16, i16* %2, align 2, !tbaa !12
  %6 = zext i16 %5 to i32
  %7 = mul i32 %4, %6
  %8 = trunc i32 %7 to i16
  ret i16 %8
}

; Function Attrs: nounwind uwtable
define internal i32 @safe_mod_func_int32_t_s_s(i32 %si1, i32 %si2) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %si1, i32* %1, align 4, !tbaa !1
  store i32 %si2, i32* %2, align 4, !tbaa !1
  %3 = load i32, i32* %2, align 4, !tbaa !1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %11, label %5

; <label>:5                                       ; preds = %0
  %6 = load i32, i32* %1, align 4, !tbaa !1
  %7 = icmp eq i32 %6, -2147483648
  br i1 %7, label %8, label %13

; <label>:8                                       ; preds = %5
  %9 = load i32, i32* %2, align 4, !tbaa !1
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %13

; <label>:11                                      ; preds = %8, %0
  %12 = load i32, i32* %1, align 4, !tbaa !1
  br label %17

; <label>:13                                      ; preds = %8, %5
  %14 = load i32, i32* %1, align 4, !tbaa !1
  %15 = load i32, i32* %2, align 4, !tbaa !1
  %16 = srem i32 %14, %15
  br label %17

; <label>:17                                      ; preds = %13, %11
  %18 = phi i32 [ %12, %11 ], [ %16, %13 ]
  ret i32 %18
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

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal signext i16 @safe_lshift_func_int16_t_s_u(i16 signext %left, i32 %right) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i32, align 4
  store i16 %left, i16* %1, align 2, !tbaa !12
  store i32 %right, i32* %2, align 4, !tbaa !1
  %3 = load i16, i16* %1, align 2, !tbaa !12
  %4 = sext i16 %3 to i32
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %15, label %6

; <label>:6                                       ; preds = %0
  %7 = load i32, i32* %2, align 4, !tbaa !1
  %8 = icmp uge i32 %7, 32
  br i1 %8, label %15, label %9

; <label>:9                                       ; preds = %6
  %10 = load i16, i16* %1, align 2, !tbaa !12
  %11 = sext i16 %10 to i32
  %12 = load i32, i32* %2, align 4, !tbaa !1
  %13 = ashr i32 32767, %12
  %14 = icmp sgt i32 %11, %13
  br i1 %14, label %15, label %18

; <label>:15                                      ; preds = %9, %6, %0
  %16 = load i16, i16* %1, align 2, !tbaa !12
  %17 = sext i16 %16 to i32
  br label %23

; <label>:18                                      ; preds = %9
  %19 = load i16, i16* %1, align 2, !tbaa !12
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
!10 = !{!11, !2, i64 7}
!11 = !{!"S0", !2, i64 0, !2, i64 1, !2, i64 4, !2, i64 7, !2, i64 11, !2, i64 13, !2, i64 15, !2, i64 16}
!12 = !{!13, !13, i64 0}
!13 = !{!"short", !3, i64 0}
!14 = !{i64 0, i64 4, !1, i64 1, i64 4, !1, i64 4, i64 4, !1, i64 7, i64 4, !1, i64 11, i64 4, !1, i64 13, i64 4, !1, i64 15, i64 4, !1, i64 16, i64 4, !1}
