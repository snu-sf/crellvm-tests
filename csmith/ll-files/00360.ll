; ModuleID = '00360.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_8 = internal constant [7 x i32] [i32 -6, i32 -6, i32 -6, i32 -6, i32 -6, i32 -6, i32 -6], align 16
@.str.1 = private unnamed_addr constant [7 x i8] c"g_8[i]\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_17 = internal global i32 -1, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"g_17\00", align 1
@g_37 = internal global i32 -8, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"g_37\00", align 1
@g_94 = internal global i16 5892, align 2
@.str.5 = private unnamed_addr constant [5 x i8] c"g_94\00", align 1
@g_118 = internal global i64 -6, align 8
@.str.6 = private unnamed_addr constant [6 x i8] c"g_118\00", align 1
@g_127 = internal global i32 -1286963618, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"g_127\00", align 1
@g_168 = internal global i32 2, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"g_168\00", align 1
@g_171 = internal global i8 99, align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"g_171\00", align 1
@g_187 = internal global i32 0, align 4
@.str.10 = private unnamed_addr constant [6 x i8] c"g_187\00", align 1
@g_201 = internal global i32 511604895, align 4
@.str.11 = private unnamed_addr constant [6 x i8] c"g_201\00", align 1
@g_209 = internal global i8 1, align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"g_209\00", align 1
@g_214 = internal global [6 x [10 x [4 x i16]]] [[10 x [4 x i16]] [[4 x i16] [i16 -7, i16 1, i16 -6, i16 -4], [4 x i16] [i16 -7, i16 3229, i16 6870, i16 -17944], [4 x i16] [i16 -2, i16 24114, i16 -14178, i16 2], [4 x i16] [i16 16187, i16 10924, i16 -1094, i16 -2], [4 x i16] [i16 -5, i16 3, i16 12374, i16 -30980], [4 x i16] [i16 -15372, i16 32289, i16 -1170, i16 -8139], [4 x i16] [i16 -1094, i16 -8, i16 0, i16 -28459], [4 x i16] [i16 -9997, i16 0, i16 -4, i16 1], [4 x i16] [i16 -8139, i16 -2, i16 15924, i16 1], [4 x i16] [i16 30331, i16 -6, i16 -4, i16 -8139]], [10 x [4 x i16]] [[4 x i16] [i16 -10, i16 -4, i16 0, i16 -2], [4 x i16] [i16 3, i16 -9952, i16 0, i16 -9952], [4 x i16] [i16 6, i16 -5, i16 -30980, i16 -10], [4 x i16] [i16 -9997, i16 -7427, i16 -2976, i16 25845], [4 x i16] [i16 -1, i16 -27644, i16 0, i16 8], [4 x i16] [i16 -1, i16 6870, i16 -2976, i16 0], [4 x i16] [i16 -9997, i16 8, i16 -30980, i16 -7], [4 x i16] [i16 6, i16 -1, i16 0, i16 -4], [4 x i16] [i16 3, i16 -8, i16 0, i16 10924], [4 x i16] [i16 -10, i16 16822, i16 -4, i16 1]], [10 x [4 x i16]] [[4 x i16] [i16 30331, i16 -1, i16 15924, i16 -5], [4 x i16] [i16 -4, i16 -10159, i16 -1, i16 -1094], [4 x i16] [i16 -5, i16 -17944, i16 -1, i16 -14007], [4 x i16] [i16 3, i16 7, i16 -4, i16 9360], [4 x i16] [i16 15924, i16 6, i16 9360, i16 -5], [4 x i16] [i16 24114, i16 16187, i16 3, i16 -16809], [4 x i16] [i16 20233, i16 -4, i16 25000, i16 0], [4 x i16] [i16 -7, i16 -7, i16 8, i16 -2], [4 x i16] [i16 -4, i16 12374, i16 1, i16 -27644], [4 x i16] [i16 -31981, i16 -24801, i16 -1, i16 25000]], [10 x [4 x i16]] [[4 x i16] [i16 -19381, i16 -5, i16 2239, i16 1], [4 x i16] [i16 6870, i16 409, i16 -19381, i16 20610], [4 x i16] [i16 12374, i16 -10, i16 25845, i16 -14178], [4 x i16] [i16 9, i16 32304, i16 18711, i16 -2], [4 x i16] [i16 -7637, i16 25000, i16 -4, i16 -1], [4 x i16] [i16 -10159, i16 3229, i16 9, i16 32304], [4 x i16] [i16 1, i16 1, i16 -28459, i16 12374], [4 x i16] [i16 9485, i16 24643, i16 24643, i16 9485], [4 x i16] [i16 409, i16 0, i16 3, i16 15924], [4 x i16] [i16 -14007, i16 1, i16 -16344, i16 16822]], [10 x [4 x i16]] [[4 x i16] [i16 -4, i16 1, i16 -1, i16 16822], [4 x i16] [i16 3229, i16 1, i16 -20425, i16 15924], [4 x i16] [i16 10924, i16 0, i16 -27644, i16 9485], [4 x i16] [i16 -8139, i16 24643, i16 -7637, i16 12374], [4 x i16] [i16 -5, i16 1, i16 -2, i16 32304], [4 x i16] [i16 18711, i16 3229, i16 16822, i16 -1], [4 x i16] [i16 3, i16 25000, i16 0, i16 -2], [4 x i16] [i16 -1, i16 32304, i16 8, i16 -14178], [4 x i16] [i16 -16809, i16 -10, i16 -24801, i16 20610], [4 x i16] [i16 20610, i16 409, i16 -30513, i16 1]], [10 x [4 x i16]] [[4 x i16] [i16 0, i16 -5, i16 24961, i16 25000], [4 x i16] [i16 1, i16 -24801, i16 3229, i16 -27644], [4 x i16] [i16 -7427, i16 12374, i16 -5, i16 -2], [4 x i16] [i16 -30123, i16 -7, i16 30331, i16 0], [4 x i16] [i16 -1, i16 -4, i16 6, i16 -16809], [4 x i16] [i16 25000, i16 16187, i16 -1, i16 -5], [4 x i16] [i16 -17944, i16 1, i16 -1094, i16 -9997], [4 x i16] [i16 6, i16 -6, i16 -1, i16 -15372], [4 x i16] [i16 -16809, i16 -7, i16 -1, i16 3], [4 x i16] [i16 -24801, i16 -20425, i16 -1, i16 24114]]], align 16
@.str.13 = private unnamed_addr constant [15 x i8] c"g_214[i][j][k]\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"index = [%d][%d][%d]\0A\00", align 1
@g_219 = internal global i16 19520, align 2
@.str.15 = private unnamed_addr constant [6 x i8] c"g_219\00", align 1
@g_248 = internal global [8 x [4 x i64]] [[4 x i64] [i64 -8520310868040895589, i64 -8520310868040895589, i64 -8520310868040895589, i64 -8520310868040895589], [4 x i64] [i64 -8520310868040895589, i64 -8520310868040895589, i64 -8520310868040895589, i64 -8520310868040895589], [4 x i64] [i64 -8520310868040895589, i64 -8520310868040895589, i64 -8520310868040895589, i64 -8520310868040895589], [4 x i64] [i64 -8520310868040895589, i64 -8520310868040895589, i64 -8520310868040895589, i64 -8520310868040895589], [4 x i64] [i64 -8520310868040895589, i64 -8520310868040895589, i64 -8520310868040895589, i64 -8520310868040895589], [4 x i64] [i64 -8520310868040895589, i64 -8520310868040895589, i64 -8520310868040895589, i64 -8520310868040895589], [4 x i64] [i64 -8520310868040895589, i64 -8520310868040895589, i64 -8520310868040895589, i64 -8520310868040895589], [4 x i64] [i64 -8520310868040895589, i64 -8520310868040895589, i64 -8520310868040895589, i64 -8520310868040895589]], align 16
@.str.16 = private unnamed_addr constant [12 x i8] c"g_248[i][j]\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@g_249 = internal global [5 x [5 x i64]] [[5 x i64] [i64 -6491547707398883987, i64 0, i64 0, i64 -6491547707398883987, i64 0], [5 x i64] [i64 -6491547707398883987, i64 -6491547707398883987, i64 799654739067023777, i64 -6491547707398883987, i64 -6491547707398883987], [5 x i64] [i64 0, i64 -6491547707398883987, i64 0, i64 0, i64 -6491547707398883987], [5 x i64] [i64 -6491547707398883987, i64 0, i64 0, i64 -6491547707398883987, i64 0], [5 x i64] [i64 -6491547707398883987, i64 -6491547707398883987, i64 799654739067023777, i64 -6491547707398883987, i64 -6491547707398883987]], align 16
@.str.18 = private unnamed_addr constant [12 x i8] c"g_249[i][j]\00", align 1
@g_252 = internal global i32 -1072694331, align 4
@.str.19 = private unnamed_addr constant [6 x i8] c"g_252\00", align 1
@g_254 = internal global i32 0, align 4
@.str.20 = private unnamed_addr constant [6 x i8] c"g_254\00", align 1
@g_280 = internal global i32 1, align 4
@.str.21 = private unnamed_addr constant [6 x i8] c"g_280\00", align 1
@g_309 = internal global i32 9, align 4
@.str.22 = private unnamed_addr constant [6 x i8] c"g_309\00", align 1
@g_354 = internal global i8 1, align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"g_354\00", align 1
@g_380 = internal global i8 -1, align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"g_380\00", align 1
@g_385 = internal global i64 -8616167660762620422, align 8
@.str.25 = private unnamed_addr constant [6 x i8] c"g_385\00", align 1
@g_389 = internal global i64 6, align 8
@.str.26 = private unnamed_addr constant [6 x i8] c"g_389\00", align 1
@g_411 = internal global i16 -1, align 2
@.str.27 = private unnamed_addr constant [6 x i8] c"g_411\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"g_447\00", align 1
@g_453 = internal global i64 -4, align 8
@.str.29 = private unnamed_addr constant [6 x i8] c"g_453\00", align 1
@g_458 = internal global i8 -1, align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"g_458\00", align 1
@g_469 = internal global i32 0, align 4
@.str.31 = private unnamed_addr constant [6 x i8] c"g_469\00", align 1
@g_625 = internal global i64 -2076937486236983452, align 8
@.str.32 = private unnamed_addr constant [6 x i8] c"g_625\00", align 1
@g_653 = internal global i64 0, align 8
@.str.33 = private unnamed_addr constant [6 x i8] c"g_653\00", align 1
@g_717 = internal global i8 6, align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"g_717\00", align 1
@g_756 = internal constant [3 x [6 x i16]] [[6 x i16] [i16 -1, i16 -1, i16 1, i16 -1, i16 1, i16 -1], [6 x i16] [i16 3, i16 -1, i16 -15368, i16 3, i16 1, i16 1], [6 x i16] [i16 11405, i16 -1, i16 -1, i16 11405, i16 1, i16 -15368]], align 16
@.str.35 = private unnamed_addr constant [12 x i8] c"g_756[i][j]\00", align 1
@g_777 = internal global i32 -5, align 4
@.str.36 = private unnamed_addr constant [6 x i8] c"g_777\00", align 1
@g_782 = internal global i16 27801, align 2
@.str.37 = private unnamed_addr constant [6 x i8] c"g_782\00", align 1
@g_897 = internal global i64 -1, align 8
@.str.38 = private unnamed_addr constant [6 x i8] c"g_897\00", align 1
@g_989 = internal global i16 -22253, align 2
@.str.39 = private unnamed_addr constant [6 x i8] c"g_989\00", align 1
@g_1037 = internal global i64 6402544709418617454, align 8
@.str.40 = private unnamed_addr constant [7 x i8] c"g_1037\00", align 1
@g_1127 = internal global i32 0, align 4
@.str.41 = private unnamed_addr constant [7 x i8] c"g_1127\00", align 1
@g_1302 = internal global i64 9, align 8
@.str.42 = private unnamed_addr constant [7 x i8] c"g_1302\00", align 1
@g_1401 = internal global i8 0, align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"g_1401\00", align 1
@g_1422 = internal global i16 -16208, align 2
@.str.44 = private unnamed_addr constant [7 x i8] c"g_1422\00", align 1
@g_1536 = internal global i64 -10, align 8
@.str.45 = private unnamed_addr constant [7 x i8] c"g_1536\00", align 1
@g_1700 = internal global i8 -2, align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"g_1700\00", align 1
@g_1904 = internal global i64 5238184180449998928, align 8
@.str.47 = private unnamed_addr constant [7 x i8] c"g_1904\00", align 1
@g_2121 = internal global i32 -2, align 4
@.str.48 = private unnamed_addr constant [7 x i8] c"g_2121\00", align 1
@g_2231 = internal global i32 5, align 4
@.str.49 = private unnamed_addr constant [7 x i8] c"g_2231\00", align 1
@g_2530 = internal global i64 5, align 8
@.str.50 = private unnamed_addr constant [7 x i8] c"g_2530\00", align 1
@g_2535 = internal global i16 2808, align 2
@.str.51 = private unnamed_addr constant [7 x i8] c"g_2535\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@func_1.l_16 = private unnamed_addr constant [6 x [1 x [10 x i32*]]] [[1 x [10 x i32*]] [[10 x i32*] [i32* @g_17, i32* @g_17, i32* @g_17, i32* @g_17, i32* @g_17, i32* @g_17, i32* @g_17, i32* @g_17, i32* @g_17, i32* @g_17]], [1 x [10 x i32*]] [[10 x i32*] [i32* @g_17, i32* @g_17, i32* @g_17, i32* @g_17, i32* @g_17, i32* @g_17, i32* @g_17, i32* @g_17, i32* @g_17, i32* @g_17]], [1 x [10 x i32*]] [[10 x i32*] [i32* @g_17, i32* @g_17, i32* @g_17, i32* @g_17, i32* @g_17, i32* @g_17, i32* @g_17, i32* @g_17, i32* @g_17, i32* @g_17]], [1 x [10 x i32*]] [[10 x i32*] [i32* @g_17, i32* @g_17, i32* @g_17, i32* @g_17, i32* @g_17, i32* @g_17, i32* @g_17, i32* @g_17, i32* @g_17, i32* @g_17]], [1 x [10 x i32*]] [[10 x i32*] [i32* @g_17, i32* @g_17, i32* @g_17, i32* @g_17, i32* @g_17, i32* @g_17, i32* @g_17, i32* @g_17, i32* @g_17, i32* @g_17]], [1 x [10 x i32*]] [[10 x i32*] [i32* @g_17, i32* @g_17, i32* @g_17, i32* @g_17, i32* @g_17, i32* @g_17, i32* @g_17, i32* @g_17, i32* @g_17, i32* @g_17]]], align 16
@g_1318 = internal global i64* @g_453, align 8
@g_2260 = internal global i16***** @g_2261, align 8
@g_1071 = internal global i32***** @g_1072, align 8
@g_866 = internal global i32*** @g_720, align 8
@func_2.l_2625 = private unnamed_addr constant [9 x i16] [i16 22278, i16 -6238, i16 22278, i16 -6238, i16 22278, i16 -6238, i16 22278, i16 -6238, i16 22278], align 16
@g_341 = internal global i16** @g_342, align 8
@func_2.l_2639 = private unnamed_addr constant [4 x [1 x [10 x i64*]]] [[1 x [10 x i64*]] [[10 x i64*] [i64* @g_453, i64* @g_2530, i64* @g_897, i64* @g_453, i64* @g_897, i64* @g_2530, i64* @g_453, i64* @g_897, i64* @g_897, i64* @g_453]], [1 x [10 x i64*]] [[10 x i64*] [i64* @g_897, i64* null, i64* @g_897, i64* @g_897, i64* null, i64* @g_897, i64* @g_2530, i64* null, i64* @g_2530, i64* @g_897]], [1 x [10 x i64*]] [[10 x i64*] [i64* @g_897, i64* null, i64* @g_118, i64* null, i64* @g_897, i64* @g_118, i64* @g_453, i64* @g_453, i64* @g_118, i64* @g_897]], [1 x [10 x i64*]] [[10 x i64*] [i64* @g_897, i64* @g_2530, i64* @g_2530, i64* @g_897, i64* @g_897, i64* @g_897, i64* @g_897, i64* @g_897, i64* @g_897, i64* @g_897]]], align 16
@func_2.l_2656 = private unnamed_addr constant [3 x [9 x i32]] [[9 x i32] [i32 3, i32 2, i32 2, i32 3, i32 -505835052, i32 3, i32 2, i32 2, i32 3], [9 x i32] [i32 -739951256, i32 -414161192, i32 634392322, i32 -414161192, i32 -739951256, i32 -739951256, i32 -414161192, i32 634392322, i32 -414161192], [9 x i32] [i32 2, i32 -505835052, i32 0, i32 0, i32 -505835052, i32 2, i32 -505835052, i32 0, i32 0]], align 16
@g_1199 = internal global i64** @g_1200, align 8
@func_2.l_2619 = private unnamed_addr constant [5 x i32] [i32 -2065742858, i32 -2065742858, i32 -2065742858, i32 -2065742858, i32 -2065742858], align 16
@g_1786 = internal global i32** @g_462, align 8
@g_1759 = internal global i8* @g_209, align 8
@g_2262 = internal global i16*** @g_2263, align 8
@g_1194 = internal global i32** @g_870, align 8
@g_671 = internal global i32**** @g_672, align 8
@g_1072 = internal constant i32**** @g_90, align 8
@g_2548 = internal global i64*** @g_2549, align 8
@g_865 = internal global i32**** @g_866, align 8
@g_870 = internal global i32* @g_469, align 8
@g_468 = internal global i32* @g_469, align 8
@g_2390 = internal global i32* @g_777, align 8
@g_720 = internal global i32** @g_462, align 8
@g_1200 = internal global i64* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [5 x i64]]* @g_249 to i8*), i64 104) to i64*), align 8
@g_1398 = internal global i16** @g_1399, align 8
@g_674 = internal global i32* @g_168, align 8
@g_342 = internal global i16* @g_94, align 8
@g_462 = internal global i32* @g_17, align 8
@g_2263 = internal constant i16** @g_2264, align 8
@g_2264 = internal global i16* @g_782, align 8
@g_672 = internal global i32*** @g_673, align 8
@g_673 = internal global i32** @g_674, align 8
@g_90 = internal global i32*** @g_91, align 8
@g_91 = internal global i32** @g_76, align 8
@g_76 = internal global i32* @g_37, align 8
@g_2549 = internal global i64** @g_2550, align 8
@g_2550 = internal global i64* @g_1536, align 8
@g_1399 = internal constant i16* @g_411, align 8
@g_2575 = internal global i16** @g_2576, align 8
@g_2261 = internal global i16**** @g_2262, align 8
@g_2576 = internal global i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [10 x [4 x i16]]]* @g_214 to i8*), i64 258) to i16*), align 8
@func_23.l_2579 = private unnamed_addr constant [1 x [7 x [7 x i32]]] [[7 x [7 x i32]] [[7 x i32] [i32 1975907706, i32 1914604612, i32 1914604612, i32 1975907706, i32 1914604612, i32 1914604612, i32 1975907706], [7 x i32] [i32 1914604612, i32 1975907706, i32 1914604612, i32 1914604612, i32 1975907706, i32 1914604612, i32 1914604612], [7 x i32] [i32 1975907706, i32 1975907706, i32 3, i32 1975907706, i32 1975907706, i32 3, i32 1975907706], [7 x i32] [i32 1975907706, i32 1914604612, i32 1914604612, i32 1975907706, i32 1914604612, i32 1914604612, i32 1975907706], [7 x i32] [i32 1914604612, i32 1975907706, i32 1914604612, i32 1914604612, i32 1975907706, i32 1914604612, i32 1914604612], [7 x i32] [i32 1975907706, i32 1975907706, i32 3, i32 1975907706, i32 1975907706, i32 3, i32 1975907706], [7 x i32] [i32 1975907706, i32 1914604612, i32 1914604612, i32 1975907706, i32 1914604612, i32 1914604612, i32 1975907706]]], align 16
@func_26.l_2431 = private unnamed_addr constant [10 x i16*] [i16* @g_219, i16* @g_1422, i16* @g_219, i16* @g_1422, i16* @g_219, i16* @g_1422, i16* @g_219, i16* @g_1422, i16* @g_219, i16* @g_1422], align 16
@g_1861 = internal global i8**** @g_1862, align 8
@func_26.l_36 = private unnamed_addr constant [4 x i32*] [i32* @g_37, i32* @g_37, i32* @g_37, i32* @g_37], align 16
@g_1757 = internal global i8*** @g_1758, align 8
@func_26.l_2450 = private unnamed_addr constant [10 x [6 x i32]] [[6 x i32] [i32 551989506, i32 -489360393, i32 8, i32 3, i32 -1894578965, i32 -3], [6 x i32] [i32 6, i32 6, i32 0, i32 1, i32 -1894578965, i32 20234063], [6 x i32] [i32 -6, i32 -489360393, i32 0, i32 1, i32 -828277149, i32 -6], [6 x i32] [i32 6, i32 -478927674, i32 1, i32 -478927674, i32 6, i32 648177978], [6 x i32] [i32 -4, i32 0, i32 -1894578965, i32 8, i32 -1987242706, i32 -593621161], [6 x i32] [i32 -3, i32 -1519705957, i32 8, i32 0, i32 -6, i32 -593621161], [6 x i32] [i32 20234063, i32 6, i32 -1894578965, i32 0, i32 3, i32 648177978], [6 x i32] [i32 -6, i32 1, i32 1, i32 1, i32 1, i32 -6], [6 x i32] [i32 648177978, i32 3, i32 0, i32 -1894578965, i32 6, i32 20234063], [6 x i32] [i32 -593621161, i32 -6, i32 0, i32 8, i32 -1519705957, i32 -3]], align 16
@func_26.l_2454 = private unnamed_addr constant [4 x [6 x [6 x i32]]] [[6 x [6 x i32]] [[6 x i32] [i32 1, i32 0, i32 5, i32 -1191524934, i32 -1420639913, i32 2], [6 x i32] [i32 -498756679, i32 2, i32 -1420639913, i32 -1191524934, i32 5, i32 0], [6 x i32] [i32 1, i32 1, i32 -1429239931, i32 0, i32 -2032755101, i32 -2], [6 x i32] [i32 -2032755101, i32 1952947710, i32 -909865548, i32 1952947710, i32 -2032755101, i32 1037157899], [6 x i32] [i32 8, i32 1, i32 -714596137, i32 -35120196, i32 5, i32 479549506], [6 x i32] [i32 -1429239931, i32 2, i32 -1, i32 1, i32 -1420639913, i32 479549506]], [6 x [6 x i32]] [[6 x i32] [i32 7, i32 0, i32 -714596137, i32 5, i32 -1429239931, i32 1037157899], [6 x i32] [i32 -1420639913, i32 -2, i32 -909865548, i32 479549506, i32 -909865548, i32 -2], [6 x i32] [i32 -1420639913, i32 1037157899, i32 -1429239931, i32 5, i32 -714596137, i32 0], [6 x i32] [i32 7, i32 479549506, i32 -1420639913, i32 1, i32 -1, i32 2], [6 x i32] [i32 -1429239931, i32 479549506, i32 5, i32 -35120196, i32 -714596137, i32 1], [6 x i32] [i32 8, i32 1037157899, i32 -2032755101, i32 1952947710, i32 -909865548, i32 1952947710]], [6 x [6 x i32]] [[6 x i32] [i32 -2032755101, i32 -2, i32 -2032755101, i32 0, i32 -1429239931, i32 1], [6 x i32] [i32 1, i32 0, i32 5, i32 -1191524934, i32 -1420639913, i32 2], [6 x i32] [i32 -498756679, i32 2, i32 -1420639913, i32 -1191524934, i32 5, i32 0], [6 x i32] [i32 1, i32 1, i32 -1429239931, i32 0, i32 -2032755101, i32 -2], [6 x i32] [i32 -2032755101, i32 1952947710, i32 -909865548, i32 1952947710, i32 -2032755101, i32 1037157899], [6 x i32] [i32 8, i32 1, i32 -714596137, i32 -35120196, i32 5, i32 479549506]], [6 x [6 x i32]] [[6 x i32] [i32 -1429239931, i32 2, i32 -1, i32 1, i32 -1420639913, i32 479549506], [6 x i32] [i32 7, i32 0, i32 -714596137, i32 5, i32 -1429239931, i32 857932322], [6 x i32] [i32 -498756679, i32 -35120196, i32 1, i32 1952947710, i32 1, i32 -35120196], [6 x i32] [i32 -498756679, i32 857932322, i32 5, i32 1, i32 -909865548, i32 1037157899], [6 x i32] [i32 1225671571, i32 1952947710, i32 -498756679, i32 2, i32 -1420639913, i32 -1191524934], [6 x i32] [i32 5, i32 1952947710, i32 8, i32 0, i32 -909865548, i32 2]]], align 16
@func_26.l_2440 = private unnamed_addr constant [2 x [10 x [1 x i32]]] [[10 x [1 x i32]] [[1 x i32] [i32 -10], [1 x i32] zeroinitializer, [1 x i32] [i32 -10], [1 x i32] zeroinitializer, [1 x i32] [i32 -10], [1 x i32] zeroinitializer, [1 x i32] [i32 -10], [1 x i32] zeroinitializer, [1 x i32] [i32 -10], [1 x i32] zeroinitializer], [10 x [1 x i32]] [[1 x i32] [i32 -10], [1 x i32] zeroinitializer, [1 x i32] [i32 -10], [1 x i32] zeroinitializer, [1 x i32] [i32 -10], [1 x i32] zeroinitializer, [1 x i32] [i32 -10], [1 x i32] zeroinitializer, [1 x i32] [i32 -10], [1 x i32] zeroinitializer]], align 16
@g_1862 = internal global i8*** @g_1863, align 8
@g_1863 = internal global i8** null, align 8
@g_1758 = internal constant i8** @g_1759, align 8
@.str.52 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@.str.53 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

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

; <label>:91                                      ; preds = %107, %89
  %92 = load i32, i32* %i, align 4, !tbaa !1
  %93 = icmp slt i32 %92, 7
  br i1 %93, label %94, label %110

; <label>:94                                      ; preds = %91
  %95 = load i32, i32* %i, align 4, !tbaa !1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [7 x i32], [7 x i32]* @g_8, i32 0, i64 %96
  %98 = load i32, i32* %97, align 4, !tbaa !1
  %99 = sext i32 %98 to i64
  %100 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %99, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 %100)
  %101 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

; <label>:103                                     ; preds = %94
  %104 = load i32, i32* %i, align 4, !tbaa !1
  %105 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 %104)
  br label %106

; <label>:106                                     ; preds = %103, %94
  br label %107

; <label>:107                                     ; preds = %106
  %108 = load i32, i32* %i, align 4, !tbaa !1
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %i, align 4, !tbaa !1
  br label %91

; <label>:110                                     ; preds = %91
  %111 = load i32, i32* @g_17, align 4, !tbaa !1
  %112 = sext i32 %111 to i64
  %113 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %112, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 %113)
  %114 = load i32, i32* @g_37, align 4, !tbaa !1
  %115 = zext i32 %114 to i64
  %116 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %115, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %116)
  %117 = load i16, i16* @g_94, align 2, !tbaa !10
  %118 = sext i16 %117 to i64
  %119 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %118, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 %119)
  %120 = load i64, i64* @g_118, align 8, !tbaa !7
  %121 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %120, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i32 %121)
  %122 = load i32, i32* @g_127, align 4, !tbaa !1
  %123 = sext i32 %122 to i64
  %124 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %123, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i32 %124)
  %125 = load i32, i32* @g_168, align 4, !tbaa !1
  %126 = zext i32 %125 to i64
  %127 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %126, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i32 %127)
  %128 = load i8, i8* @g_171, align 1, !tbaa !9
  %129 = sext i8 %128 to i64
  %130 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %129, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 %130)
  %131 = load volatile i32, i32* @g_187, align 4, !tbaa !1
  %132 = zext i32 %131 to i64
  %133 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %132, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i32 %133)
  %134 = load i32, i32* @g_201, align 4, !tbaa !1
  %135 = zext i32 %134 to i64
  %136 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %135, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i32 %136)
  %137 = load i8, i8* @g_209, align 1, !tbaa !9
  %138 = zext i8 %137 to i64
  %139 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %138, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i32 %139)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %140

; <label>:140                                     ; preds = %180, %110
  %141 = load i32, i32* %i, align 4, !tbaa !1
  %142 = icmp slt i32 %141, 6
  br i1 %142, label %143, label %183

; <label>:143                                     ; preds = %140
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %144

; <label>:144                                     ; preds = %176, %143
  %145 = load i32, i32* %j, align 4, !tbaa !1
  %146 = icmp slt i32 %145, 10
  br i1 %146, label %147, label %179

; <label>:147                                     ; preds = %144
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %148

; <label>:148                                     ; preds = %172, %147
  %149 = load i32, i32* %k, align 4, !tbaa !1
  %150 = icmp slt i32 %149, 4
  br i1 %150, label %151, label %175

; <label>:151                                     ; preds = %148
  %152 = load i32, i32* %k, align 4, !tbaa !1
  %153 = sext i32 %152 to i64
  %154 = load i32, i32* %j, align 4, !tbaa !1
  %155 = sext i32 %154 to i64
  %156 = load i32, i32* %i, align 4, !tbaa !1
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [6 x [10 x [4 x i16]]], [6 x [10 x [4 x i16]]]* @g_214, i32 0, i64 %157
  %159 = getelementptr inbounds [10 x [4 x i16]], [10 x [4 x i16]]* %158, i32 0, i64 %155
  %160 = getelementptr inbounds [4 x i16], [4 x i16]* %159, i32 0, i64 %153
  %161 = load i16, i16* %160, align 2, !tbaa !10
  %162 = zext i16 %161 to i64
  %163 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %162, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0), i32 %163)
  %164 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %171

; <label>:166                                     ; preds = %151
  %167 = load i32, i32* %i, align 4, !tbaa !1
  %168 = load i32, i32* %j, align 4, !tbaa !1
  %169 = load i32, i32* %k, align 4, !tbaa !1
  %170 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0), i32 %167, i32 %168, i32 %169)
  br label %171

; <label>:171                                     ; preds = %166, %151
  br label %172

; <label>:172                                     ; preds = %171
  %173 = load i32, i32* %k, align 4, !tbaa !1
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %k, align 4, !tbaa !1
  br label %148

; <label>:175                                     ; preds = %148
  br label %176

; <label>:176                                     ; preds = %175
  %177 = load i32, i32* %j, align 4, !tbaa !1
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %j, align 4, !tbaa !1
  br label %144

; <label>:179                                     ; preds = %144
  br label %180

; <label>:180                                     ; preds = %179
  %181 = load i32, i32* %i, align 4, !tbaa !1
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %i, align 4, !tbaa !1
  br label %140

; <label>:183                                     ; preds = %140
  %184 = load i16, i16* @g_219, align 2, !tbaa !10
  %185 = zext i16 %184 to i64
  %186 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %185, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 %186)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %187

; <label>:187                                     ; preds = %214, %183
  %188 = load i32, i32* %i, align 4, !tbaa !1
  %189 = icmp slt i32 %188, 8
  br i1 %189, label %190, label %217

; <label>:190                                     ; preds = %187
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %191

; <label>:191                                     ; preds = %210, %190
  %192 = load i32, i32* %j, align 4, !tbaa !1
  %193 = icmp slt i32 %192, 4
  br i1 %193, label %194, label %213

; <label>:194                                     ; preds = %191
  %195 = load i32, i32* %j, align 4, !tbaa !1
  %196 = sext i32 %195 to i64
  %197 = load i32, i32* %i, align 4, !tbaa !1
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds [8 x [4 x i64]], [8 x [4 x i64]]* @g_248, i32 0, i64 %198
  %200 = getelementptr inbounds [4 x i64], [4 x i64]* %199, i32 0, i64 %196
  %201 = load i64, i64* %200, align 8, !tbaa !7
  %202 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %201, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i32 %202)
  %203 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %209

; <label>:205                                     ; preds = %194
  %206 = load i32, i32* %i, align 4, !tbaa !1
  %207 = load i32, i32* %j, align 4, !tbaa !1
  %208 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i32 0), i32 %206, i32 %207)
  br label %209

; <label>:209                                     ; preds = %205, %194
  br label %210

; <label>:210                                     ; preds = %209
  %211 = load i32, i32* %j, align 4, !tbaa !1
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %j, align 4, !tbaa !1
  br label %191

; <label>:213                                     ; preds = %191
  br label %214

; <label>:214                                     ; preds = %213
  %215 = load i32, i32* %i, align 4, !tbaa !1
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %i, align 4, !tbaa !1
  br label %187

; <label>:217                                     ; preds = %187
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %218

; <label>:218                                     ; preds = %245, %217
  %219 = load i32, i32* %i, align 4, !tbaa !1
  %220 = icmp slt i32 %219, 5
  br i1 %220, label %221, label %248

; <label>:221                                     ; preds = %218
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %222

; <label>:222                                     ; preds = %241, %221
  %223 = load i32, i32* %j, align 4, !tbaa !1
  %224 = icmp slt i32 %223, 5
  br i1 %224, label %225, label %244

; <label>:225                                     ; preds = %222
  %226 = load i32, i32* %j, align 4, !tbaa !1
  %227 = sext i32 %226 to i64
  %228 = load i32, i32* %i, align 4, !tbaa !1
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds [5 x [5 x i64]], [5 x [5 x i64]]* @g_249, i32 0, i64 %229
  %231 = getelementptr inbounds [5 x i64], [5 x i64]* %230, i32 0, i64 %227
  %232 = load i64, i64* %231, align 8, !tbaa !7
  %233 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %232, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0), i32 %233)
  %234 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %240

; <label>:236                                     ; preds = %225
  %237 = load i32, i32* %i, align 4, !tbaa !1
  %238 = load i32, i32* %j, align 4, !tbaa !1
  %239 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i32 0), i32 %237, i32 %238)
  br label %240

; <label>:240                                     ; preds = %236, %225
  br label %241

; <label>:241                                     ; preds = %240
  %242 = load i32, i32* %j, align 4, !tbaa !1
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %j, align 4, !tbaa !1
  br label %222

; <label>:244                                     ; preds = %222
  br label %245

; <label>:245                                     ; preds = %244
  %246 = load i32, i32* %i, align 4, !tbaa !1
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %i, align 4, !tbaa !1
  br label %218

; <label>:248                                     ; preds = %218
  %249 = load i32, i32* @g_252, align 4, !tbaa !1
  %250 = sext i32 %249 to i64
  %251 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %250, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i32 %251)
  %252 = load i32, i32* @g_254, align 4, !tbaa !1
  %253 = sext i32 %252 to i64
  %254 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %253, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 %254)
  %255 = load i32, i32* @g_280, align 4, !tbaa !1
  %256 = zext i32 %255 to i64
  %257 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %256, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i32 %257)
  %258 = load i32, i32* @g_309, align 4, !tbaa !1
  %259 = zext i32 %258 to i64
  %260 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %259, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i32 %260)
  %261 = load i8, i8* @g_354, align 1, !tbaa !9
  %262 = sext i8 %261 to i64
  %263 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %262, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 %263)
  %264 = load i8, i8* @g_380, align 1, !tbaa !9
  %265 = zext i8 %264 to i64
  %266 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %265, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %266)
  %267 = load i64, i64* @g_385, align 8, !tbaa !7
  %268 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %267, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i32 %268)
  %269 = load i64, i64* @g_389, align 8, !tbaa !7
  %270 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %269, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i32 %270)
  %271 = load i16, i16* @g_411, align 2, !tbaa !10
  %272 = zext i16 %271 to i64
  %273 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %272, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 %273)
  %274 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i32 %274)
  %275 = load i64, i64* @g_453, align 8, !tbaa !7
  %276 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %275, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i32 %276)
  %277 = load volatile i8, i8* @g_458, align 1, !tbaa !9
  %278 = zext i8 %277 to i64
  %279 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %278, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i32 %279)
  %280 = load i32, i32* @g_469, align 4, !tbaa !1
  %281 = sext i32 %280 to i64
  %282 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %281, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i32 %282)
  %283 = load i64, i64* @g_625, align 8, !tbaa !7
  %284 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %283, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i32 %284)
  %285 = load volatile i64, i64* @g_653, align 8, !tbaa !7
  %286 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %285, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i32 %286)
  %287 = load i8, i8* @g_717, align 1, !tbaa !9
  %288 = sext i8 %287 to i64
  %289 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %288, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), i32 %289)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %290

; <label>:290                                     ; preds = %318, %248
  %291 = load i32, i32* %i, align 4, !tbaa !1
  %292 = icmp slt i32 %291, 3
  br i1 %292, label %293, label %321

; <label>:293                                     ; preds = %290
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %294

; <label>:294                                     ; preds = %314, %293
  %295 = load i32, i32* %j, align 4, !tbaa !1
  %296 = icmp slt i32 %295, 6
  br i1 %296, label %297, label %317

; <label>:297                                     ; preds = %294
  %298 = load i32, i32* %j, align 4, !tbaa !1
  %299 = sext i32 %298 to i64
  %300 = load i32, i32* %i, align 4, !tbaa !1
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds [3 x [6 x i16]], [3 x [6 x i16]]* @g_756, i32 0, i64 %301
  %303 = getelementptr inbounds [6 x i16], [6 x i16]* %302, i32 0, i64 %299
  %304 = load i16, i16* %303, align 2, !tbaa !10
  %305 = sext i16 %304 to i64
  %306 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %305, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i32 0, i32 0), i32 %306)
  %307 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %313

; <label>:309                                     ; preds = %297
  %310 = load i32, i32* %i, align 4, !tbaa !1
  %311 = load i32, i32* %j, align 4, !tbaa !1
  %312 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i32 0), i32 %310, i32 %311)
  br label %313

; <label>:313                                     ; preds = %309, %297
  br label %314

; <label>:314                                     ; preds = %313
  %315 = load i32, i32* %j, align 4, !tbaa !1
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %j, align 4, !tbaa !1
  br label %294

; <label>:317                                     ; preds = %294
  br label %318

; <label>:318                                     ; preds = %317
  %319 = load i32, i32* %i, align 4, !tbaa !1
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %i, align 4, !tbaa !1
  br label %290

; <label>:321                                     ; preds = %290
  %322 = load volatile i32, i32* @g_777, align 4, !tbaa !1
  %323 = sext i32 %322 to i64
  %324 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %323, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i32 %324)
  %325 = load i16, i16* @g_782, align 2, !tbaa !10
  %326 = sext i16 %325 to i64
  %327 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %326, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), i32 %327)
  %328 = load i64, i64* @g_897, align 8, !tbaa !7
  %329 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %328, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0), i32 %329)
  %330 = load volatile i16, i16* @g_989, align 2, !tbaa !10
  %331 = sext i16 %330 to i64
  %332 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %331, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), i32 %332)
  %333 = load i64, i64* @g_1037, align 8, !tbaa !7
  %334 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %333, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0), i32 %334)
  %335 = load volatile i32, i32* @g_1127, align 4, !tbaa !1
  %336 = sext i32 %335 to i64
  %337 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %336, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0), i32 %337)
  %338 = load i64, i64* @g_1302, align 8, !tbaa !7
  %339 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %338, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), i32 %339)
  %340 = load i8, i8* @g_1401, align 1, !tbaa !9
  %341 = zext i8 %340 to i64
  %342 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %341, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), i32 %342)
  %343 = load i16, i16* @g_1422, align 2, !tbaa !10
  %344 = zext i16 %343 to i64
  %345 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %344, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i32 0, i32 0), i32 %345)
  %346 = load volatile i64, i64* @g_1536, align 8, !tbaa !7
  %347 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %346, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), i32 %347)
  %348 = load i8, i8* @g_1700, align 1, !tbaa !9
  %349 = sext i8 %348 to i64
  %350 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %349, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0), i32 %350)
  %351 = load i64, i64* @g_1904, align 8, !tbaa !7
  %352 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %351, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i32 0, i32 0), i32 %352)
  %353 = load i32, i32* @g_2121, align 4, !tbaa !1
  %354 = zext i32 %353 to i64
  %355 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %354, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0), i32 %355)
  %356 = load volatile i32, i32* @g_2231, align 4, !tbaa !1
  %357 = zext i32 %356 to i64
  %358 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %357, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0), i32 %358)
  %359 = load i64, i64* @g_2530, align 8, !tbaa !7
  %360 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %359, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i32 0, i32 0), i32 %360)
  %361 = load i16, i16* @g_2535, align 2, !tbaa !10
  %362 = zext i16 %361 to i64
  %363 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %362, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), i32 %363)
  %364 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %365 = zext i32 %364 to i64
  %366 = xor i64 %365, 4294967295
  %367 = trunc i64 %366 to i32
  %368 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %367, i32 %368)
  %369 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %369) #1
  %370 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %370) #1
  %371 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %371) #1
  %372 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %372) #1
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
  %l_7 = alloca i32*, align 8
  %l_16 = alloca [6 x [1 x [10 x i32*]]], align 16
  %l_2580 = alloca i32, align 4
  %l_2613 = alloca [1 x [8 x i32]], align 16
  %l_2676 = alloca i8, align 1
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %1 = bitcast i32** %l_7 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store i32* getelementptr inbounds ([7 x i32], [7 x i32]* @g_8, i32 0, i64 6), i32** %l_7, align 8, !tbaa !5
  %2 = bitcast [6 x [1 x [10 x i32*]]]* %l_16 to i8*
  call void @llvm.lifetime.start(i64 480, i8* %2) #1
  %3 = bitcast [6 x [1 x [10 x i32*]]]* %l_16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* bitcast ([6 x [1 x [10 x i32*]]]* @func_1.l_16 to i8*), i64 480, i32 16, i1 false)
  %4 = bitcast i32* %l_2580 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 -1638114293, i32* %l_2580, align 4, !tbaa !1
  %5 = bitcast [1 x [8 x i32]]* %l_2613 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %5) #1
  call void @llvm.lifetime.start(i64 1, i8* %l_2676) #1
  store i8 0, i8* %l_2676, align 1, !tbaa !9
  %6 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %9

; <label>:9                                       ; preds = %27, %0
  %10 = load i32, i32* %i, align 4, !tbaa !1
  %11 = icmp slt i32 %10, 1
  br i1 %11, label %12, label %30

; <label>:12                                      ; preds = %9
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %13

; <label>:13                                      ; preds = %23, %12
  %14 = load i32, i32* %j, align 4, !tbaa !1
  %15 = icmp slt i32 %14, 8
  br i1 %15, label %16, label %26

; <label>:16                                      ; preds = %13
  %17 = load i32, i32* %j, align 4, !tbaa !1
  %18 = sext i32 %17 to i64
  %19 = load i32, i32* %i, align 4, !tbaa !1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [1 x [8 x i32]], [1 x [8 x i32]]* %l_2613, i32 0, i64 %20
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* %21, i32 0, i64 %18
  store i32 0, i32* %22, align 4, !tbaa !1
  br label %23

; <label>:23                                      ; preds = %16
  %24 = load i32, i32* %j, align 4, !tbaa !1
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %j, align 4, !tbaa !1
  br label %13

; <label>:26                                      ; preds = %13
  br label %27

; <label>:27                                      ; preds = %26
  %28 = load i32, i32* %i, align 4, !tbaa !1
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %i, align 4, !tbaa !1
  br label %9

; <label>:30                                      ; preds = %9
  %31 = load i32*, i32** %l_7, align 8, !tbaa !5
  %32 = load i32*, i32** %l_7, align 8, !tbaa !5
  %33 = load i32, i32* %32, align 4, !tbaa !1
  %34 = trunc i32 %33 to i16
  %35 = load i32*, i32** %l_7, align 8, !tbaa !5
  %36 = icmp ne i32* null, %35
  %37 = zext i1 %36 to i32
  %38 = getelementptr inbounds [6 x [1 x [10 x i32*]]], [6 x [1 x [10 x i32*]]]* %l_16, i32 0, i64 5
  %39 = getelementptr inbounds [1 x [10 x i32*]], [1 x [10 x i32*]]* %38, i32 0, i64 0
  %40 = getelementptr inbounds [10 x i32*], [10 x i32*]* %39, i32 0, i64 8
  %41 = load i32*, i32** %40, align 8, !tbaa !5
  %42 = load i32*, i32** %l_7, align 8, !tbaa !5
  %43 = load i32, i32* %42, align 4, !tbaa !1
  %44 = load i32*, i32** %l_7, align 8, !tbaa !5
  %45 = load i32, i32* %44, align 4, !tbaa !1
  %46 = getelementptr inbounds [6 x [1 x [10 x i32*]]], [6 x [1 x [10 x i32*]]]* %l_16, i32 0, i64 1
  %47 = getelementptr inbounds [1 x [10 x i32*]], [1 x [10 x i32*]]* %46, i32 0, i64 0
  %48 = getelementptr inbounds [10 x i32*], [10 x i32*]* %47, i32 0, i64 8
  %49 = load i32*, i32** %48, align 8, !tbaa !5
  %50 = load i32, i32* getelementptr inbounds ([7 x i32], [7 x i32]* @g_8, i32 0, i64 6), align 4, !tbaa !1
  %51 = call i64 @func_26(i32 %45, i32* %49, i64 1, i32* @g_17)
  %52 = load i64*, i64** @g_1318, align 8, !tbaa !5
  %53 = load i64, i64* %52, align 8, !tbaa !7
  %54 = xor i64 %51, %53
  %55 = trunc i64 %54 to i32
  %56 = load i32*, i32** %l_7, align 8, !tbaa !5
  %57 = load i32, i32* %56, align 4, !tbaa !1
  %58 = call zeroext i16 @func_23(i32 %55, i32 %57)
  %59 = load i32*, i32** %l_7, align 8, !tbaa !5
  %60 = load i32, i32* %59, align 4, !tbaa !1
  %61 = trunc i32 %60 to i16
  %62 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %58, i16 zeroext %61)
  %63 = load i32*, i32** %l_7, align 8, !tbaa !5
  %64 = load i32, i32* %63, align 4, !tbaa !1
  %65 = sext i32 %64 to i64
  %66 = icmp uge i64 %65, 1
  %67 = zext i1 %66 to i32
  %68 = sext i32 %67 to i64
  %69 = icmp eq i64 %68, 1
  %70 = zext i1 %69 to i32
  %71 = load i32, i32* %l_2580, align 4, !tbaa !1
  %72 = and i32 %70, %71
  %73 = trunc i32 %72 to i16
  %74 = load i16*****, i16****** @g_2260, align 8, !tbaa !5
  %75 = load i16****, i16***** %74, align 8, !tbaa !5
  %76 = load i16***, i16**** %75, align 8, !tbaa !5
  %77 = load i16**, i16*** %76, align 8, !tbaa !5
  %78 = load i16*, i16** %77, align 8, !tbaa !5
  store i16 %73, i16* %78, align 2, !tbaa !10
  %79 = icmp ne i16 %73, 0
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  %82 = trunc i32 %81 to i16
  %83 = call signext i16 @safe_lshift_func_int16_t_s_s(i16 signext %82, i32 9)
  %84 = load i32*****, i32****** @g_1071, align 8, !tbaa !5
  %85 = load i32****, i32***** %84, align 8, !tbaa !5
  %86 = load i32***, i32**** %85, align 8, !tbaa !5
  %87 = load i32**, i32*** %86, align 8, !tbaa !5
  %88 = load i32*, i32** %87, align 8, !tbaa !5
  store i32 -9, i32* %88, align 4, !tbaa !1
  %89 = load i16, i16* getelementptr inbounds ([3 x [6 x i16]], [3 x [6 x i16]]* @g_756, i32 0, i64 0, i64 4), align 2, !tbaa !10
  %90 = call zeroext i16 @func_11(i32 %37, i32* %41, i32 -9, i16 zeroext %89)
  %91 = call zeroext i16 @safe_div_func_uint16_t_u_u(i16 zeroext %90, i16 zeroext -6257)
  %92 = zext i16 %91 to i32
  %93 = getelementptr inbounds [1 x [8 x i32]], [1 x [8 x i32]]* %l_2613, i32 0, i64 0
  %94 = getelementptr inbounds [8 x i32], [8 x i32]* %93, i32 0, i64 6
  %95 = load i32, i32* %94, align 4, !tbaa !1
  %96 = icmp ult i32 %92, %95
  %97 = zext i1 %96 to i32
  %98 = trunc i32 %97 to i16
  %99 = getelementptr inbounds [6 x [1 x [10 x i32*]]], [6 x [1 x [10 x i32*]]]* %l_16, i32 0, i64 0
  %100 = getelementptr inbounds [1 x [10 x i32*]], [1 x [10 x i32*]]* %99, i32 0, i64 0
  %101 = getelementptr inbounds [10 x i32*], [10 x i32*]* %100, i32 0, i64 3
  %102 = load i32*, i32** %101, align 8, !tbaa !5
  %103 = call i32* @func_2(i32* %31, i16 zeroext %34, i16 zeroext %98, i32* %102)
  %104 = load i32***, i32**** @g_866, align 8, !tbaa !5
  %105 = load i32**, i32*** %104, align 8, !tbaa !5
  store i32* %103, i32** %105, align 8, !tbaa !5
  %106 = load i8, i8* %l_2676, align 1, !tbaa !9
  %107 = zext i8 %106 to i32
  %108 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %108) #1
  %109 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %109) #1
  %110 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %110) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_2676) #1
  %111 = bitcast [1 x [8 x i32]]* %l_2613 to i8*
  call void @llvm.lifetime.end(i64 32, i8* %111) #1
  %112 = bitcast i32* %l_2580 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %112) #1
  %113 = bitcast [6 x [1 x [10 x i32*]]]* %l_16 to i8*
  call void @llvm.lifetime.end(i64 480, i8* %113) #1
  %114 = bitcast i32** %l_7 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %114) #1
  ret i32 %107
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
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.52, i32 0, i32 0), i8* %8, i64 %11)
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
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.53, i32 0, i32 0), i32 %3)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal i32* @func_2(i32* %p_3, i16 zeroext %p_4, i16 zeroext %p_5, i32* %p_6) #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  %4 = alloca i32*, align 8
  %l_2625 = alloca [9 x i16], align 16
  %l_2629 = alloca i32, align 4
  %l_2640 = alloca i16***, align 8
  %l_2651 = alloca i8, align 1
  %l_2652 = alloca i32, align 4
  %l_2653 = alloca i32, align 4
  %l_2657 = alloca i32, align 4
  %l_2658 = alloca i32, align 4
  %l_2669 = alloca i32*, align 8
  %i = alloca i32, align 4
  %l_2630 = alloca i64, align 8
  %l_2639 = alloca [4 x [1 x [10 x i64*]]], align 16
  %l_2659 = alloca i64, align 8
  %l_2664 = alloca i32*, align 8
  %i1 = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l_2622 = alloca i16***, align 8
  %l_2654 = alloca i32, align 4
  %l_2655 = alloca i32, align 4
  %l_2637 = alloca i32, align 4
  %l_2638 = alloca i16***, align 8
  %l_2656 = alloca [3 x [9 x i32]], align 16
  %i2 = alloca i32, align 4
  %j3 = alloca i32, align 4
  %l_2619 = alloca [5 x i32], align 16
  %l_2623 = alloca i64*, align 8
  %i4 = alloca i32, align 4
  %l_2624 = alloca i32, align 4
  %l_2626 = alloca i32*, align 8
  %l_2627 = alloca i32*, align 8
  %l_2628 = alloca [1 x [5 x i32*]], align 16
  %l_2641 = alloca i16****, align 8
  %l_2642 = alloca i16****, align 8
  %l_2645 = alloca i32, align 4
  %l_2646 = alloca i64*, align 8
  %i5 = alloca i32, align 4
  %j6 = alloca i32, align 4
  %5 = alloca i32
  %l_2647 = alloca i32*, align 8
  %l_2648 = alloca i32*, align 8
  %l_2649 = alloca i32*, align 8
  %l_2650 = alloca [6 x [6 x [6 x i32*]]], align 16
  %i7 = alloca i32, align 4
  %j8 = alloca i32, align 4
  %k9 = alloca i32, align 4
  store i32* %p_3, i32** %1, align 8, !tbaa !5
  store i16 %p_4, i16* %2, align 2, !tbaa !10
  store i16 %p_5, i16* %3, align 2, !tbaa !10
  store i32* %p_6, i32** %4, align 8, !tbaa !5
  %6 = bitcast [9 x i16]* %l_2625 to i8*
  call void @llvm.lifetime.start(i64 18, i8* %6) #1
  %7 = bitcast [9 x i16]* %l_2625 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* bitcast ([9 x i16]* @func_2.l_2625 to i8*), i64 18, i32 16, i1 false)
  %8 = bitcast i32* %l_2629 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  store i32 -1780418198, i32* %l_2629, align 4, !tbaa !1
  %9 = bitcast i16**** %l_2640 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store i16*** @g_341, i16**** %l_2640, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_2651) #1
  store i8 -80, i8* %l_2651, align 1, !tbaa !9
  %10 = bitcast i32* %l_2652 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  store i32 -5, i32* %l_2652, align 4, !tbaa !1
  %11 = bitcast i32* %l_2653 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  store i32 0, i32* %l_2653, align 4, !tbaa !1
  %12 = bitcast i32* %l_2657 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  store i32 1, i32* %l_2657, align 4, !tbaa !1
  %13 = bitcast i32* %l_2658 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  store i32 -665782136, i32* %l_2658, align 4, !tbaa !1
  %14 = bitcast i32** %l_2669 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  store i32* @g_252, i32** %l_2669, align 8, !tbaa !5
  %15 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  store i16 0, i16* @g_2535, align 2, !tbaa !10
  br label %16

; <label>:16                                      ; preds = %564, %0
  %17 = load i16, i16* @g_2535, align 2, !tbaa !10
  %18 = zext i16 %17 to i32
  %19 = icmp sle i32 %18, 4
  br i1 %19, label %20, label %569

; <label>:20                                      ; preds = %16
  %21 = bitcast i64* %l_2630 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  store i64 7, i64* %l_2630, align 8, !tbaa !7
  %22 = bitcast [4 x [1 x [10 x i64*]]]* %l_2639 to i8*
  call void @llvm.lifetime.start(i64 320, i8* %22) #1
  %23 = bitcast [4 x [1 x [10 x i64*]]]* %l_2639 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast ([4 x [1 x [10 x i64*]]]* @func_2.l_2639 to i8*), i64 320, i32 16, i1 false)
  %24 = bitcast i64* %l_2659 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #1
  store i64 1, i64* %l_2659, align 8, !tbaa !7
  %25 = bitcast i32** %l_2664 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #1
  store i32* %l_2653, i32** %l_2664, align 8, !tbaa !5
  %26 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #1
  %27 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  %28 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #1
  store i64 1, i64* @g_1037, align 8, !tbaa !7
  br label %29

; <label>:29                                      ; preds = %551, %20
  %30 = load i64, i64* @g_1037, align 8, !tbaa !7
  %31 = icmp ule i64 %30, 4
  br i1 %31, label %32, label %554

; <label>:32                                      ; preds = %29
  %33 = bitcast i16**** %l_2622 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %33) #1
  store i16*** @g_341, i16**** %l_2622, align 8, !tbaa !5
  %34 = bitcast i32* %l_2654 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #1
  store i32 -8, i32* %l_2654, align 4, !tbaa !1
  %35 = bitcast i32* %l_2655 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #1
  store i32 2011055841, i32* %l_2655, align 4, !tbaa !1
  store i8 4, i8* @g_171, align 1, !tbaa !9
  br label %36

; <label>:36                                      ; preds = %532, %32
  %37 = load i8, i8* @g_171, align 1, !tbaa !9
  %38 = sext i8 %37 to i32
  %39 = icmp sge i32 %38, 0
  br i1 %39, label %40, label %537

; <label>:40                                      ; preds = %36
  %41 = bitcast i32* %l_2637 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %41) #1
  store i32 1361815558, i32* %l_2637, align 4, !tbaa !1
  %42 = bitcast i16**** %l_2638 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %42) #1
  store i16*** null, i16**** %l_2638, align 8, !tbaa !5
  %43 = bitcast [3 x [9 x i32]]* %l_2656 to i8*
  call void @llvm.lifetime.start(i64 108, i8* %43) #1
  %44 = bitcast [3 x [9 x i32]]* %l_2656 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %44, i8* bitcast ([3 x [9 x i32]]* @func_2.l_2656 to i8*), i64 108, i32 16, i1 false)
  %45 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %45) #1
  %46 = bitcast i32* %j3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %46) #1
  %47 = load i64**, i64*** @g_1199, align 8, !tbaa !5
  %48 = load volatile i64*, i64** %47, align 8, !tbaa !5
  %49 = load i64, i64* %48, align 8, !tbaa !7
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %55, label %51

; <label>:51                                      ; preds = %40
  %52 = load i16, i16* %2, align 2, !tbaa !10
  %53 = zext i16 %52 to i32
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %238

; <label>:55                                      ; preds = %51, %40
  %56 = bitcast [5 x i32]* %l_2619 to i8*
  call void @llvm.lifetime.start(i64 20, i8* %56) #1
  %57 = bitcast [5 x i32]* %l_2619 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %57, i8* bitcast ([5 x i32]* @func_2.l_2619 to i8*), i64 20, i32 16, i1 false)
  %58 = bitcast i64** %l_2623 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %58) #1
  store i64* @g_897, i64** %l_2623, align 8, !tbaa !5
  %59 = bitcast i32* %i4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %59) #1
  %60 = load i32*, i32** %4, align 8, !tbaa !5
  %61 = load i32, i32* %60, align 4, !tbaa !1
  %62 = load i16, i16* %2, align 2, !tbaa !10
  %63 = zext i16 %62 to i64
  %64 = load i16, i16* %3, align 2, !tbaa !10
  %65 = load volatile i32**, i32*** @g_1786, align 8, !tbaa !5
  %66 = load i32*, i32** %65, align 8, !tbaa !5
  %67 = load i32, i32* %66, align 4, !tbaa !1
  %68 = getelementptr inbounds [5 x i32], [5 x i32]* %l_2619, i32 0, i64 0
  %69 = load i32, i32* %68, align 4, !tbaa !1
  %70 = load i8*, i8** @g_1759, align 8, !tbaa !5
  %71 = load i8, i8* %70, align 1, !tbaa !9
  %72 = zext i8 %71 to i32
  %73 = load i16***, i16**** %l_2622, align 8, !tbaa !5
  %74 = icmp ne i16*** %73, null
  %75 = zext i1 %74 to i32
  %76 = load i16***, i16**** @g_2262, align 8, !tbaa !5
  %77 = load i16**, i16*** %76, align 8, !tbaa !5
  %78 = load i16*, i16** %77, align 8, !tbaa !5
  %79 = load i16, i16* %78, align 2, !tbaa !10
  %80 = sext i16 %79 to i32
  %81 = icmp ne i32 %75, %80
  %82 = zext i1 %81 to i32
  %83 = icmp ne i32 %72, %82
  %84 = zext i1 %83 to i32
  %85 = trunc i32 %84 to i16
  %86 = load i16, i16* %3, align 2, !tbaa !10
  %87 = zext i16 %86 to i32
  %88 = call signext i16 @safe_lshift_func_int16_t_s_s(i16 signext %85, i32 %87)
  %89 = sext i16 %88 to i32
  %90 = icmp sge i32 %69, %89
  %91 = zext i1 %90 to i32
  %92 = load i32**, i32*** @g_1194, align 8, !tbaa !5
  %93 = load i32*, i32** %92, align 8, !tbaa !5
  %94 = load i32, i32* %93, align 4, !tbaa !1
  %95 = and i32 %94, %91
  store i32 %95, i32* %93, align 4, !tbaa !1
  %96 = load i32****, i32***** @g_671, align 8, !tbaa !5
  %97 = load i32***, i32**** %96, align 8, !tbaa !5
  %98 = load i32**, i32*** %97, align 8, !tbaa !5
  %99 = load i32*, i32** %98, align 8, !tbaa !5
  %100 = load i32, i32* %99, align 4, !tbaa !1
  %101 = call i32 @safe_unary_minus_func_uint32_t_u(i32 %100)
  %102 = icmp ult i32 %67, %101
  %103 = zext i1 %102 to i32
  %104 = sext i32 %103 to i64
  %105 = load i64*, i64** @g_1318, align 8, !tbaa !5
  %106 = load i64, i64* %105, align 8, !tbaa !7
  %107 = or i64 %106, %104
  store i64 %107, i64* %105, align 8, !tbaa !7
  %108 = icmp sge i64 %63, %107
  %109 = zext i1 %108 to i32
  %110 = load i32****, i32***** @g_1072, align 8, !tbaa !5
  %111 = load i32***, i32**** %110, align 8, !tbaa !5
  %112 = load i32**, i32*** %111, align 8, !tbaa !5
  %113 = load i32*, i32** %112, align 8, !tbaa !5
  %114 = load i32, i32* %113, align 4, !tbaa !1
  %115 = and i32 %114, %109
  store i32 %115, i32* %113, align 4, !tbaa !1
  %116 = call i32 @safe_add_func_int32_t_s_s(i32 %61, i32 %115)
  %117 = sext i32 %116 to i64
  %118 = icmp slt i64 %117, 8
  %119 = zext i1 %118 to i32
  %120 = sext i32 %119 to i64
  %121 = icmp sle i64 22478, %120
  %122 = zext i1 %121 to i32
  %123 = sext i32 %122 to i64
  %124 = load i64*, i64** %l_2623, align 8, !tbaa !5
  store i64 %123, i64* %124, align 8, !tbaa !7
  %125 = load i16, i16* %2, align 2, !tbaa !10
  %126 = zext i16 %125 to i64
  %127 = call i64 @safe_mod_func_int64_t_s_s(i64 %123, i64 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %226

; <label>:129                                     ; preds = %55
  %130 = bitcast i32* %l_2624 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %130) #1
  store i32 -2010528616, i32* %l_2624, align 4, !tbaa !1
  %131 = bitcast i32** %l_2626 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %131) #1
  store i32* null, i32** %l_2626, align 8, !tbaa !5
  %132 = bitcast i32** %l_2627 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %132) #1
  %133 = getelementptr inbounds [5 x i32], [5 x i32]* %l_2619, i32 0, i64 0
  store i32* %133, i32** %l_2627, align 8, !tbaa !5
  %134 = bitcast [1 x [5 x i32*]]* %l_2628 to i8*
  call void @llvm.lifetime.start(i64 40, i8* %134) #1
  %135 = bitcast i16***** %l_2641 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %135) #1
  store i16**** null, i16***** %l_2641, align 8, !tbaa !5
  %136 = bitcast i16***** %l_2642 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %136) #1
  store i16**** %l_2640, i16***** %l_2642, align 8, !tbaa !5
  %137 = bitcast i32* %l_2645 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %137) #1
  store i32 -8, i32* %l_2645, align 4, !tbaa !1
  %138 = bitcast i64** %l_2646 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %138) #1
  store i64* getelementptr inbounds ([8 x [4 x i64]], [8 x [4 x i64]]* @g_248, i32 0, i64 4, i64 2), i64** %l_2646, align 8, !tbaa !5
  %139 = bitcast i32* %i5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %139) #1
  %140 = bitcast i32* %j6 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %140) #1
  store i32 0, i32* %i5, align 4, !tbaa !1
  br label %141

; <label>:141                                     ; preds = %159, %129
  %142 = load i32, i32* %i5, align 4, !tbaa !1
  %143 = icmp slt i32 %142, 1
  br i1 %143, label %144, label %162

; <label>:144                                     ; preds = %141
  store i32 0, i32* %j6, align 4, !tbaa !1
  br label %145

; <label>:145                                     ; preds = %155, %144
  %146 = load i32, i32* %j6, align 4, !tbaa !1
  %147 = icmp slt i32 %146, 5
  br i1 %147, label %148, label %158

; <label>:148                                     ; preds = %145
  %149 = load i32, i32* %j6, align 4, !tbaa !1
  %150 = sext i32 %149 to i64
  %151 = load i32, i32* %i5, align 4, !tbaa !1
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [1 x [5 x i32*]], [1 x [5 x i32*]]* %l_2628, i32 0, i64 %152
  %154 = getelementptr inbounds [5 x i32*], [5 x i32*]* %153, i32 0, i64 %150
  store i32* null, i32** %154, align 8, !tbaa !5
  br label %155

; <label>:155                                     ; preds = %148
  %156 = load i32, i32* %j6, align 4, !tbaa !1
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %j6, align 4, !tbaa !1
  br label %145

; <label>:158                                     ; preds = %145
  br label %159

; <label>:159                                     ; preds = %158
  %160 = load i32, i32* %i5, align 4, !tbaa !1
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %i5, align 4, !tbaa !1
  br label %141

; <label>:162                                     ; preds = %141
  %163 = load i64, i64* %l_2630, align 8, !tbaa !7
  %164 = add i64 %163, 1
  store i64 %164, i64* %l_2630, align 8, !tbaa !7
  %165 = load i32, i32* %l_2629, align 4, !tbaa !1
  %166 = load i32, i32* %l_2637, align 4, !tbaa !1
  %167 = trunc i32 %166 to i8
  %168 = load i16***, i16**** %l_2638, align 8, !tbaa !5
  %169 = load i16, i16* %3, align 2, !tbaa !10
  %170 = load volatile i64***, i64**** @g_2548, align 8, !tbaa !5
  %171 = load volatile i64**, i64*** %170, align 8, !tbaa !5
  %172 = load volatile i64*, i64** %171, align 8, !tbaa !5
  %173 = getelementptr inbounds [4 x [1 x [10 x i64*]]], [4 x [1 x [10 x i64*]]]* %l_2639, i32 0, i64 0
  %174 = getelementptr inbounds [1 x [10 x i64*]], [1 x [10 x i64*]]* %173, i32 0, i64 0
  %175 = getelementptr inbounds [10 x i64*], [10 x i64*]* %174, i32 0, i64 7
  %176 = load i64*, i64** %175, align 8, !tbaa !5
  %177 = icmp ne i64* %172, %176
  %178 = zext i1 %177 to i32
  %179 = load i16***, i16**** %l_2640, align 8, !tbaa !5
  %180 = load i16****, i16***** %l_2642, align 8, !tbaa !5
  store i16*** %179, i16**** %180, align 8, !tbaa !5
  %181 = icmp ne i16*** %168, %179
  %182 = zext i1 %181 to i32
  %183 = sext i32 %182 to i64
  %184 = load i32, i32* %l_2645, align 4, !tbaa !1
  %185 = trunc i32 %184 to i8
  %186 = call zeroext i8 @safe_rshift_func_uint8_t_u_u(i8 zeroext %185, i32 1)
  %187 = load i64*, i64** %l_2623, align 8, !tbaa !5
  store i64 -7025162036678942048, i64* %187, align 8, !tbaa !7
  %188 = icmp slt i64 %183, -7025162036678942048
  %189 = zext i1 %188 to i32
  %190 = trunc i32 %189 to i8
  %191 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %167, i8 signext %190)
  %192 = load i64**, i64*** @g_1199, align 8, !tbaa !5
  %193 = load volatile i64*, i64** %192, align 8, !tbaa !5
  %194 = load i64, i64* %193, align 8, !tbaa !7
  %195 = load i64**, i64*** @g_1199, align 8, !tbaa !5
  %196 = load volatile i64*, i64** %195, align 8, !tbaa !5
  store i64 %194, i64* %196, align 8, !tbaa !7
  %197 = load i64*, i64** %l_2646, align 8, !tbaa !5
  store i64 %194, i64* %197, align 8, !tbaa !7
  %198 = icmp ne i64 %194, 0
  br i1 %198, label %203, label %199

; <label>:199                                     ; preds = %162
  %200 = load i16, i16* %2, align 2, !tbaa !10
  %201 = zext i16 %200 to i32
  %202 = icmp ne i32 %201, 0
  br label %203

; <label>:203                                     ; preds = %199, %162
  %204 = phi i1 [ true, %162 ], [ %202, %199 ]
  %205 = zext i1 %204 to i32
  %206 = xor i32 %165, %205
  %207 = call zeroext i8 @safe_lshift_func_uint8_t_u_u(i8 zeroext -85, i32 1)
  %208 = load i32***, i32**** @g_866, align 8, !tbaa !5
  %209 = load i32**, i32*** %208, align 8, !tbaa !5
  %210 = load i32*, i32** %209, align 8, !tbaa !5
  store i32 -1, i32* %210, align 4, !tbaa !1
  %211 = load i32*, i32** %4, align 8, !tbaa !5
  %212 = load i32, i32* %211, align 4, !tbaa !1
  %213 = load i32*, i32** @g_870, align 8, !tbaa !5
  %214 = load i32, i32* %213, align 4, !tbaa !1
  %215 = or i32 %214, %212
  store i32 %215, i32* %213, align 4, !tbaa !1
  %216 = bitcast i32* %j6 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %216) #1
  %217 = bitcast i32* %i5 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %217) #1
  %218 = bitcast i64** %l_2646 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %218) #1
  %219 = bitcast i32* %l_2645 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %219) #1
  %220 = bitcast i16***** %l_2642 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %220) #1
  %221 = bitcast i16***** %l_2641 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %221) #1
  %222 = bitcast [1 x [5 x i32*]]* %l_2628 to i8*
  call void @llvm.lifetime.end(i64 40, i8* %222) #1
  %223 = bitcast i32** %l_2627 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %223) #1
  %224 = bitcast i32** %l_2626 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %224) #1
  %225 = bitcast i32* %l_2624 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %225) #1
  br label %232

; <label>:226                                     ; preds = %55
  %227 = load volatile i32*, i32** @g_468, align 8, !tbaa !5
  %228 = load i32, i32* %227, align 4, !tbaa !1
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %231

; <label>:230                                     ; preds = %226
  store i32 8, i32* %5
  br label %233

; <label>:231                                     ; preds = %226
  br label %232

; <label>:232                                     ; preds = %231, %203
  store i32 0, i32* %5
  br label %233

; <label>:233                                     ; preds = %232, %230
  %234 = bitcast i32* %i4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %234) #1
  %235 = bitcast i64** %l_2623 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %235) #1
  %236 = bitcast [5 x i32]* %l_2619 to i8*
  call void @llvm.lifetime.end(i64 20, i8* %236) #1
  %cleanup.dest = load i32, i32* %5
  switch i32 %cleanup.dest, label %525 [
    i32 0, label %237
  ]

; <label>:237                                     ; preds = %233
  br label %524

; <label>:238                                     ; preds = %51
  %239 = bitcast i32** %l_2647 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %239) #1
  store i32* @g_17, i32** %l_2647, align 8, !tbaa !5
  %240 = bitcast i32** %l_2648 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %240) #1
  store i32* null, i32** %l_2648, align 8, !tbaa !5
  %241 = bitcast i32** %l_2649 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %241) #1
  store i32* @g_17, i32** %l_2649, align 8, !tbaa !5
  %242 = bitcast [6 x [6 x [6 x i32*]]]* %l_2650 to i8*
  call void @llvm.lifetime.start(i64 1728, i8* %242) #1
  %243 = getelementptr inbounds [6 x [6 x [6 x i32*]]], [6 x [6 x [6 x i32*]]]* %l_2650, i64 0, i64 0
  %244 = getelementptr inbounds [6 x [6 x i32*]], [6 x [6 x i32*]]* %243, i64 0, i64 0
  %245 = getelementptr inbounds [6 x i32*], [6 x i32*]* %244, i64 0, i64 0
  store i32* null, i32** %245, !tbaa !5
  %246 = getelementptr inbounds i32*, i32** %245, i64 1
  store i32* null, i32** %246, !tbaa !5
  %247 = getelementptr inbounds i32*, i32** %246, i64 1
  store i32* @g_127, i32** %247, !tbaa !5
  %248 = getelementptr inbounds i32*, i32** %247, i64 1
  store i32* null, i32** %248, !tbaa !5
  %249 = getelementptr inbounds i32*, i32** %248, i64 1
  store i32* null, i32** %249, !tbaa !5
  %250 = getelementptr inbounds i32*, i32** %249, i64 1
  store i32* @g_127, i32** %250, !tbaa !5
  %251 = getelementptr inbounds [6 x i32*], [6 x i32*]* %244, i64 1
  %252 = getelementptr inbounds [6 x i32*], [6 x i32*]* %251, i64 0, i64 0
  store i32* @g_127, i32** %252, !tbaa !5
  %253 = getelementptr inbounds i32*, i32** %252, i64 1
  store i32* @g_127, i32** %253, !tbaa !5
  %254 = getelementptr inbounds i32*, i32** %253, i64 1
  store i32* @g_127, i32** %254, !tbaa !5
  %255 = getelementptr inbounds i32*, i32** %254, i64 1
  store i32* @g_469, i32** %255, !tbaa !5
  %256 = getelementptr inbounds i32*, i32** %255, i64 1
  store i32* null, i32** %256, !tbaa !5
  %257 = getelementptr inbounds i32*, i32** %256, i64 1
  store i32* @g_17, i32** %257, !tbaa !5
  %258 = getelementptr inbounds [6 x i32*], [6 x i32*]* %251, i64 1
  %259 = getelementptr inbounds [6 x i32*], [6 x i32*]* %258, i64 0, i64 0
  store i32* %l_2629, i32** %259, !tbaa !5
  %260 = getelementptr inbounds i32*, i32** %259, i64 1
  store i32* @g_469, i32** %260, !tbaa !5
  %261 = getelementptr inbounds i32*, i32** %260, i64 1
  store i32* null, i32** %261, !tbaa !5
  %262 = getelementptr inbounds i32*, i32** %261, i64 1
  store i32* null, i32** %262, !tbaa !5
  %263 = getelementptr inbounds i32*, i32** %262, i64 1
  store i32* @g_469, i32** %263, !tbaa !5
  %264 = getelementptr inbounds i32*, i32** %263, i64 1
  store i32* %l_2629, i32** %264, !tbaa !5
  %265 = getelementptr inbounds [6 x i32*], [6 x i32*]* %258, i64 1
  %266 = getelementptr inbounds [6 x i32*], [6 x i32*]* %265, i64 0, i64 0
  store i32* %l_2629, i32** %266, !tbaa !5
  %267 = getelementptr inbounds i32*, i32** %266, i64 1
  store i32* @g_17, i32** %267, !tbaa !5
  %268 = getelementptr inbounds i32*, i32** %267, i64 1
  store i32* @g_127, i32** %268, !tbaa !5
  %269 = getelementptr inbounds i32*, i32** %268, i64 1
  store i32* %l_2629, i32** %269, !tbaa !5
  %270 = getelementptr inbounds i32*, i32** %269, i64 1
  store i32* @g_127, i32** %270, !tbaa !5
  %271 = getelementptr inbounds i32*, i32** %270, i64 1
  store i32* %l_2629, i32** %271, !tbaa !5
  %272 = getelementptr inbounds [6 x i32*], [6 x i32*]* %265, i64 1
  %273 = getelementptr inbounds [6 x i32*], [6 x i32*]* %272, i64 0, i64 0
  store i32* null, i32** %273, !tbaa !5
  %274 = getelementptr inbounds i32*, i32** %273, i64 1
  store i32* @g_127, i32** %274, !tbaa !5
  %275 = getelementptr inbounds i32*, i32** %274, i64 1
  store i32* @g_469, i32** %275, !tbaa !5
  %276 = getelementptr inbounds i32*, i32** %275, i64 1
  store i32* @g_127, i32** %276, !tbaa !5
  %277 = getelementptr inbounds i32*, i32** %276, i64 1
  store i32* @g_127, i32** %277, !tbaa !5
  %278 = getelementptr inbounds i32*, i32** %277, i64 1
  store i32* null, i32** %278, !tbaa !5
  %279 = getelementptr inbounds [6 x i32*], [6 x i32*]* %272, i64 1
  %280 = getelementptr inbounds [6 x i32*], [6 x i32*]* %279, i64 0, i64 0
  store i32* null, i32** %280, !tbaa !5
  %281 = getelementptr inbounds i32*, i32** %280, i64 1
  store i32* @g_17, i32** %281, !tbaa !5
  %282 = getelementptr inbounds i32*, i32** %281, i64 1
  store i32* @g_127, i32** %282, !tbaa !5
  %283 = getelementptr inbounds i32*, i32** %282, i64 1
  store i32* %l_2629, i32** %283, !tbaa !5
  %284 = getelementptr inbounds i32*, i32** %283, i64 1
  store i32* @g_469, i32** %284, !tbaa !5
  %285 = getelementptr inbounds i32*, i32** %284, i64 1
  store i32* @g_469, i32** %285, !tbaa !5
  %286 = getelementptr inbounds [6 x [6 x i32*]], [6 x [6 x i32*]]* %243, i64 1
  %287 = getelementptr inbounds [6 x [6 x i32*]], [6 x [6 x i32*]]* %286, i64 0, i64 0
  %288 = getelementptr inbounds [6 x i32*], [6 x i32*]* %287, i64 0, i64 0
  store i32* %l_2629, i32** %288, !tbaa !5
  %289 = getelementptr inbounds i32*, i32** %288, i64 1
  store i32* @g_127, i32** %289, !tbaa !5
  %290 = getelementptr inbounds i32*, i32** %289, i64 1
  store i32* null, i32** %290, !tbaa !5
  %291 = getelementptr inbounds i32*, i32** %290, i64 1
  store i32* null, i32** %291, !tbaa !5
  %292 = getelementptr inbounds i32*, i32** %291, i64 1
  store i32* @g_127, i32** %292, !tbaa !5
  %293 = getelementptr inbounds i32*, i32** %292, i64 1
  store i32* %l_2629, i32** %293, !tbaa !5
  %294 = getelementptr inbounds [6 x i32*], [6 x i32*]* %287, i64 1
  %295 = getelementptr inbounds [6 x i32*], [6 x i32*]* %294, i64 0, i64 0
  store i32* %l_2629, i32** %295, !tbaa !5
  %296 = getelementptr inbounds i32*, i32** %295, i64 1
  store i32* %l_2629, i32** %296, !tbaa !5
  %297 = getelementptr inbounds i32*, i32** %296, i64 1
  store i32* null, i32** %297, !tbaa !5
  %298 = getelementptr inbounds i32*, i32** %297, i64 1
  store i32* @g_469, i32** %298, !tbaa !5
  %299 = getelementptr inbounds i32*, i32** %298, i64 1
  store i32* %l_2629, i32** %299, !tbaa !5
  %300 = getelementptr inbounds i32*, i32** %299, i64 1
  store i32* null, i32** %300, !tbaa !5
  %301 = getelementptr inbounds [6 x i32*], [6 x i32*]* %294, i64 1
  %302 = getelementptr inbounds [6 x i32*], [6 x i32*]* %301, i64 0, i64 0
  store i32* @g_127, i32** %302, !tbaa !5
  %303 = getelementptr inbounds i32*, i32** %302, i64 1
  store i32* null, i32** %303, !tbaa !5
  %304 = getelementptr inbounds i32*, i32** %303, i64 1
  store i32* @g_469, i32** %304, !tbaa !5
  %305 = getelementptr inbounds i32*, i32** %304, i64 1
  store i32* null, i32** %305, !tbaa !5
  %306 = getelementptr inbounds i32*, i32** %305, i64 1
  store i32* @g_469, i32** %306, !tbaa !5
  %307 = getelementptr inbounds i32*, i32** %306, i64 1
  store i32* %l_2629, i32** %307, !tbaa !5
  %308 = getelementptr inbounds [6 x i32*], [6 x i32*]* %301, i64 1
  %309 = getelementptr inbounds [6 x i32*], [6 x i32*]* %308, i64 0, i64 0
  store i32* null, i32** %309, !tbaa !5
  %310 = getelementptr inbounds i32*, i32** %309, i64 1
  store i32* @g_469, i32** %310, !tbaa !5
  %311 = getelementptr inbounds i32*, i32** %310, i64 1
  store i32* @g_127, i32** %311, !tbaa !5
  %312 = getelementptr inbounds i32*, i32** %311, i64 1
  store i32* null, i32** %312, !tbaa !5
  %313 = getelementptr inbounds i32*, i32** %312, i64 1
  store i32* @g_127, i32** %313, !tbaa !5
  %314 = getelementptr inbounds i32*, i32** %313, i64 1
  store i32* @g_469, i32** %314, !tbaa !5
  %315 = getelementptr inbounds [6 x i32*], [6 x i32*]* %308, i64 1
  %316 = getelementptr inbounds [6 x i32*], [6 x i32*]* %315, i64 0, i64 0
  store i32* @g_469, i32** %316, !tbaa !5
  %317 = getelementptr inbounds i32*, i32** %316, i64 1
  store i32* @g_469, i32** %317, !tbaa !5
  %318 = getelementptr inbounds i32*, i32** %317, i64 1
  store i32* @g_469, i32** %318, !tbaa !5
  %319 = getelementptr inbounds i32*, i32** %318, i64 1
  store i32* null, i32** %319, !tbaa !5
  %320 = getelementptr inbounds i32*, i32** %319, i64 1
  store i32* @g_127, i32** %320, !tbaa !5
  %321 = getelementptr inbounds i32*, i32** %320, i64 1
  store i32* @g_17, i32** %321, !tbaa !5
  %322 = getelementptr inbounds [6 x i32*], [6 x i32*]* %315, i64 1
  %323 = getelementptr inbounds [6 x i32*], [6 x i32*]* %322, i64 0, i64 0
  store i32* @g_469, i32** %323, !tbaa !5
  %324 = getelementptr inbounds i32*, i32** %323, i64 1
  store i32* @g_127, i32** %324, !tbaa !5
  %325 = getelementptr inbounds i32*, i32** %324, i64 1
  store i32* %l_2629, i32** %325, !tbaa !5
  %326 = getelementptr inbounds i32*, i32** %325, i64 1
  store i32* %l_2629, i32** %326, !tbaa !5
  %327 = getelementptr inbounds i32*, i32** %326, i64 1
  store i32* %l_2629, i32** %327, !tbaa !5
  %328 = getelementptr inbounds i32*, i32** %327, i64 1
  store i32* %l_2629, i32** %328, !tbaa !5
  %329 = getelementptr inbounds [6 x [6 x i32*]], [6 x [6 x i32*]]* %286, i64 1
  %330 = getelementptr inbounds [6 x [6 x i32*]], [6 x [6 x i32*]]* %329, i64 0, i64 0
  %331 = getelementptr inbounds [6 x i32*], [6 x i32*]* %330, i64 0, i64 0
  store i32* @g_469, i32** %331, !tbaa !5
  %332 = getelementptr inbounds i32*, i32** %331, i64 1
  store i32* @g_127, i32** %332, !tbaa !5
  %333 = getelementptr inbounds i32*, i32** %332, i64 1
  store i32* @g_469, i32** %333, !tbaa !5
  %334 = getelementptr inbounds i32*, i32** %333, i64 1
  store i32* null, i32** %334, !tbaa !5
  %335 = getelementptr inbounds i32*, i32** %334, i64 1
  store i32* @g_127, i32** %335, !tbaa !5
  %336 = getelementptr inbounds i32*, i32** %335, i64 1
  store i32* @g_469, i32** %336, !tbaa !5
  %337 = getelementptr inbounds [6 x i32*], [6 x i32*]* %330, i64 1
  %338 = getelementptr inbounds [6 x i32*], [6 x i32*]* %337, i64 0, i64 0
  store i32* @g_17, i32** %338, !tbaa !5
  %339 = getelementptr inbounds i32*, i32** %338, i64 1
  store i32* @g_469, i32** %339, !tbaa !5
  %340 = getelementptr inbounds i32*, i32** %339, i64 1
  store i32* @g_127, i32** %340, !tbaa !5
  %341 = getelementptr inbounds i32*, i32** %340, i64 1
  store i32* @g_127, i32** %341, !tbaa !5
  %342 = getelementptr inbounds i32*, i32** %341, i64 1
  store i32* @g_127, i32** %342, !tbaa !5
  %343 = getelementptr inbounds i32*, i32** %342, i64 1
  store i32* null, i32** %343, !tbaa !5
  %344 = getelementptr inbounds [6 x i32*], [6 x i32*]* %337, i64 1
  %345 = getelementptr inbounds [6 x i32*], [6 x i32*]* %344, i64 0, i64 0
  store i32* @g_127, i32** %345, !tbaa !5
  %346 = getelementptr inbounds i32*, i32** %345, i64 1
  store i32* @g_469, i32** %346, !tbaa !5
  %347 = getelementptr inbounds i32*, i32** %346, i64 1
  store i32* @g_17, i32** %347, !tbaa !5
  %348 = getelementptr inbounds i32*, i32** %347, i64 1
  store i32* @g_469, i32** %348, !tbaa !5
  %349 = getelementptr inbounds i32*, i32** %348, i64 1
  store i32* @g_469, i32** %349, !tbaa !5
  %350 = getelementptr inbounds i32*, i32** %349, i64 1
  store i32* @g_469, i32** %350, !tbaa !5
  %351 = getelementptr inbounds [6 x i32*], [6 x i32*]* %344, i64 1
  %352 = getelementptr inbounds [6 x i32*], [6 x i32*]* %351, i64 0, i64 0
  store i32* @g_469, i32** %352, !tbaa !5
  %353 = getelementptr inbounds i32*, i32** %352, i64 1
  store i32* null, i32** %353, !tbaa !5
  %354 = getelementptr inbounds i32*, i32** %353, i64 1
  store i32* %l_2629, i32** %354, !tbaa !5
  %355 = getelementptr inbounds i32*, i32** %354, i64 1
  store i32* %l_2629, i32** %355, !tbaa !5
  %356 = getelementptr inbounds i32*, i32** %355, i64 1
  store i32* %l_2629, i32** %356, !tbaa !5
  %357 = getelementptr inbounds i32*, i32** %356, i64 1
  store i32* %l_2629, i32** %357, !tbaa !5
  %358 = getelementptr inbounds [6 x i32*], [6 x i32*]* %351, i64 1
  %359 = getelementptr inbounds [6 x i32*], [6 x i32*]* %358, i64 0, i64 0
  store i32* @g_127, i32** %359, !tbaa !5
  %360 = getelementptr inbounds i32*, i32** %359, i64 1
  store i32* @g_127, i32** %360, !tbaa !5
  %361 = getelementptr inbounds i32*, i32** %360, i64 1
  store i32* %l_2629, i32** %361, !tbaa !5
  %362 = getelementptr inbounds i32*, i32** %361, i64 1
  store i32* @g_127, i32** %362, !tbaa !5
  %363 = getelementptr inbounds i32*, i32** %362, i64 1
  store i32* @g_127, i32** %363, !tbaa !5
  %364 = getelementptr inbounds i32*, i32** %363, i64 1
  store i32* %l_2629, i32** %364, !tbaa !5
  %365 = getelementptr inbounds [6 x i32*], [6 x i32*]* %358, i64 1
  %366 = getelementptr inbounds [6 x i32*], [6 x i32*]* %365, i64 0, i64 0
  store i32* %l_2629, i32** %366, !tbaa !5
  %367 = getelementptr inbounds i32*, i32** %366, i64 1
  store i32* %l_2629, i32** %367, !tbaa !5
  %368 = getelementptr inbounds i32*, i32** %367, i64 1
  store i32* null, i32** %368, !tbaa !5
  %369 = getelementptr inbounds i32*, i32** %368, i64 1
  store i32* @g_469, i32** %369, !tbaa !5
  %370 = getelementptr inbounds i32*, i32** %369, i64 1
  store i32* null, i32** %370, !tbaa !5
  %371 = getelementptr inbounds i32*, i32** %370, i64 1
  store i32* @g_469, i32** %371, !tbaa !5
  %372 = getelementptr inbounds [6 x [6 x i32*]], [6 x [6 x i32*]]* %329, i64 1
  %373 = getelementptr inbounds [6 x [6 x i32*]], [6 x [6 x i32*]]* %372, i64 0, i64 0
  %374 = getelementptr inbounds [6 x i32*], [6 x i32*]* %373, i64 0, i64 0
  store i32* null, i32** %374, !tbaa !5
  %375 = getelementptr inbounds i32*, i32** %374, i64 1
  store i32* @g_17, i32** %375, !tbaa !5
  %376 = getelementptr inbounds i32*, i32** %375, i64 1
  store i32* @g_17, i32** %376, !tbaa !5
  %377 = getelementptr inbounds i32*, i32** %376, i64 1
  store i32* @g_469, i32** %377, !tbaa !5
  %378 = getelementptr inbounds i32*, i32** %377, i64 1
  store i32* %l_2629, i32** %378, !tbaa !5
  %379 = getelementptr inbounds i32*, i32** %378, i64 1
  store i32* null, i32** %379, !tbaa !5
  %380 = getelementptr inbounds [6 x i32*], [6 x i32*]* %373, i64 1
  %381 = getelementptr inbounds [6 x i32*], [6 x i32*]* %380, i64 0, i64 0
  store i32* @g_469, i32** %381, !tbaa !5
  %382 = getelementptr inbounds i32*, i32** %381, i64 1
  store i32* null, i32** %382, !tbaa !5
  %383 = getelementptr inbounds i32*, i32** %382, i64 1
  store i32* @g_17, i32** %383, !tbaa !5
  %384 = getelementptr inbounds i32*, i32** %383, i64 1
  store i32* @g_127, i32** %384, !tbaa !5
  %385 = getelementptr inbounds i32*, i32** %384, i64 1
  store i32* %l_2629, i32** %385, !tbaa !5
  %386 = getelementptr inbounds i32*, i32** %385, i64 1
  store i32* @g_469, i32** %386, !tbaa !5
  %387 = getelementptr inbounds [6 x i32*], [6 x i32*]* %380, i64 1
  %388 = getelementptr inbounds [6 x i32*], [6 x i32*]* %387, i64 0, i64 0
  store i32* @g_469, i32** %388, !tbaa !5
  %389 = getelementptr inbounds i32*, i32** %388, i64 1
  store i32* @g_127, i32** %389, !tbaa !5
  %390 = getelementptr inbounds i32*, i32** %389, i64 1
  store i32* null, i32** %390, !tbaa !5
  %391 = getelementptr inbounds i32*, i32** %390, i64 1
  store i32* @g_127, i32** %391, !tbaa !5
  %392 = getelementptr inbounds i32*, i32** %391, i64 1
  store i32* @g_127, i32** %392, !tbaa !5
  %393 = getelementptr inbounds i32*, i32** %392, i64 1
  store i32* %l_2629, i32** %393, !tbaa !5
  %394 = getelementptr inbounds [6 x i32*], [6 x i32*]* %387, i64 1
  %395 = getelementptr inbounds [6 x i32*], [6 x i32*]* %394, i64 0, i64 0
  store i32* @g_127, i32** %395, !tbaa !5
  %396 = getelementptr inbounds i32*, i32** %395, i64 1
  store i32* @g_127, i32** %396, !tbaa !5
  %397 = getelementptr inbounds i32*, i32** %396, i64 1
  store i32* %l_2629, i32** %397, !tbaa !5
  %398 = getelementptr inbounds i32*, i32** %397, i64 1
  store i32* null, i32** %398, !tbaa !5
  %399 = getelementptr inbounds i32*, i32** %398, i64 1
  store i32* @g_127, i32** %399, !tbaa !5
  %400 = getelementptr inbounds i32*, i32** %399, i64 1
  store i32* @g_127, i32** %400, !tbaa !5
  %401 = getelementptr inbounds [6 x i32*], [6 x i32*]* %394, i64 1
  %402 = getelementptr inbounds [6 x i32*], [6 x i32*]* %401, i64 0, i64 0
  store i32* %l_2629, i32** %402, !tbaa !5
  %403 = getelementptr inbounds i32*, i32** %402, i64 1
  store i32* @g_127, i32** %403, !tbaa !5
  %404 = getelementptr inbounds i32*, i32** %403, i64 1
  store i32* %l_2629, i32** %404, !tbaa !5
  %405 = getelementptr inbounds i32*, i32** %404, i64 1
  store i32* @g_17, i32** %405, !tbaa !5
  %406 = getelementptr inbounds i32*, i32** %405, i64 1
  store i32* @g_127, i32** %406, !tbaa !5
  %407 = getelementptr inbounds i32*, i32** %406, i64 1
  store i32* %l_2629, i32** %407, !tbaa !5
  %408 = getelementptr inbounds [6 x i32*], [6 x i32*]* %401, i64 1
  %409 = getelementptr inbounds [6 x i32*], [6 x i32*]* %408, i64 0, i64 0
  store i32* @g_127, i32** %409, !tbaa !5
  %410 = getelementptr inbounds i32*, i32** %409, i64 1
  store i32* null, i32** %410, !tbaa !5
  %411 = getelementptr inbounds i32*, i32** %410, i64 1
  store i32* @g_127, i32** %411, !tbaa !5
  %412 = getelementptr inbounds i32*, i32** %411, i64 1
  store i32* %l_2629, i32** %412, !tbaa !5
  %413 = getelementptr inbounds i32*, i32** %412, i64 1
  store i32* @g_127, i32** %413, !tbaa !5
  %414 = getelementptr inbounds i32*, i32** %413, i64 1
  store i32* %l_2629, i32** %414, !tbaa !5
  %415 = getelementptr inbounds [6 x [6 x i32*]], [6 x [6 x i32*]]* %372, i64 1
  %416 = getelementptr inbounds [6 x [6 x i32*]], [6 x [6 x i32*]]* %415, i64 0, i64 0
  %417 = getelementptr inbounds [6 x i32*], [6 x i32*]* %416, i64 0, i64 0
  store i32* @g_17, i32** %417, !tbaa !5
  %418 = getelementptr inbounds i32*, i32** %417, i64 1
  store i32* %l_2629, i32** %418, !tbaa !5
  %419 = getelementptr inbounds i32*, i32** %418, i64 1
  store i32* @g_17, i32** %419, !tbaa !5
  %420 = getelementptr inbounds i32*, i32** %419, i64 1
  store i32* %l_2629, i32** %420, !tbaa !5
  %421 = getelementptr inbounds i32*, i32** %420, i64 1
  store i32* @g_127, i32** %421, !tbaa !5
  %422 = getelementptr inbounds i32*, i32** %421, i64 1
  store i32* @g_127, i32** %422, !tbaa !5
  %423 = getelementptr inbounds [6 x i32*], [6 x i32*]* %416, i64 1
  %424 = getelementptr inbounds [6 x i32*], [6 x i32*]* %423, i64 0, i64 0
  store i32* %l_2629, i32** %424, !tbaa !5
  %425 = getelementptr inbounds i32*, i32** %424, i64 1
  store i32* @g_127, i32** %425, !tbaa !5
  %426 = getelementptr inbounds i32*, i32** %425, i64 1
  store i32* %l_2629, i32** %426, !tbaa !5
  %427 = getelementptr inbounds i32*, i32** %426, i64 1
  store i32* %l_2629, i32** %427, !tbaa !5
  %428 = getelementptr inbounds i32*, i32** %427, i64 1
  store i32* null, i32** %428, !tbaa !5
  %429 = getelementptr inbounds i32*, i32** %428, i64 1
  store i32* @g_127, i32** %429, !tbaa !5
  %430 = getelementptr inbounds [6 x i32*], [6 x i32*]* %423, i64 1
  %431 = getelementptr inbounds [6 x i32*], [6 x i32*]* %430, i64 0, i64 0
  store i32* %l_2629, i32** %431, !tbaa !5
  %432 = getelementptr inbounds i32*, i32** %431, i64 1
  store i32* @g_469, i32** %432, !tbaa !5
  %433 = getelementptr inbounds i32*, i32** %432, i64 1
  store i32* null, i32** %433, !tbaa !5
  %434 = getelementptr inbounds i32*, i32** %433, i64 1
  store i32* %l_2629, i32** %434, !tbaa !5
  %435 = getelementptr inbounds i32*, i32** %434, i64 1
  store i32* %l_2629, i32** %435, !tbaa !5
  %436 = getelementptr inbounds i32*, i32** %435, i64 1
  store i32* %l_2629, i32** %436, !tbaa !5
  %437 = getelementptr inbounds [6 x i32*], [6 x i32*]* %430, i64 1
  %438 = getelementptr inbounds [6 x i32*], [6 x i32*]* %437, i64 0, i64 0
  store i32* %l_2629, i32** %438, !tbaa !5
  %439 = getelementptr inbounds i32*, i32** %438, i64 1
  store i32* @g_127, i32** %439, !tbaa !5
  %440 = getelementptr inbounds i32*, i32** %439, i64 1
  store i32* @g_469, i32** %440, !tbaa !5
  %441 = getelementptr inbounds i32*, i32** %440, i64 1
  store i32* %l_2629, i32** %441, !tbaa !5
  %442 = getelementptr inbounds i32*, i32** %441, i64 1
  store i32* null, i32** %442, !tbaa !5
  %443 = getelementptr inbounds i32*, i32** %442, i64 1
  store i32* @g_127, i32** %443, !tbaa !5
  %444 = getelementptr inbounds [6 x i32*], [6 x i32*]* %437, i64 1
  %445 = getelementptr inbounds [6 x i32*], [6 x i32*]* %444, i64 0, i64 0
  store i32* @g_17, i32** %445, !tbaa !5
  %446 = getelementptr inbounds i32*, i32** %445, i64 1
  store i32* @g_469, i32** %446, !tbaa !5
  %447 = getelementptr inbounds i32*, i32** %446, i64 1
  store i32* null, i32** %447, !tbaa !5
  %448 = getelementptr inbounds i32*, i32** %447, i64 1
  store i32* %l_2629, i32** %448, !tbaa !5
  %449 = getelementptr inbounds i32*, i32** %448, i64 1
  store i32* @g_127, i32** %449, !tbaa !5
  %450 = getelementptr inbounds i32*, i32** %449, i64 1
  store i32* @g_127, i32** %450, !tbaa !5
  %451 = getelementptr inbounds [6 x i32*], [6 x i32*]* %444, i64 1
  %452 = getelementptr inbounds [6 x i32*], [6 x i32*]* %451, i64 0, i64 0
  store i32* @g_127, i32** %452, !tbaa !5
  %453 = getelementptr inbounds i32*, i32** %452, i64 1
  store i32* @g_469, i32** %453, !tbaa !5
  %454 = getelementptr inbounds i32*, i32** %453, i64 1
  store i32* null, i32** %454, !tbaa !5
  %455 = getelementptr inbounds i32*, i32** %454, i64 1
  store i32* @g_17, i32** %455, !tbaa !5
  %456 = getelementptr inbounds i32*, i32** %455, i64 1
  store i32* %l_2629, i32** %456, !tbaa !5
  %457 = getelementptr inbounds i32*, i32** %456, i64 1
  store i32* null, i32** %457, !tbaa !5
  %458 = getelementptr inbounds [6 x [6 x i32*]], [6 x [6 x i32*]]* %415, i64 1
  %459 = getelementptr inbounds [6 x [6 x i32*]], [6 x [6 x i32*]]* %458, i64 0, i64 0
  %460 = getelementptr inbounds [6 x i32*], [6 x i32*]* %459, i64 0, i64 0
  store i32* %l_2629, i32** %460, !tbaa !5
  %461 = getelementptr inbounds i32*, i32** %460, i64 1
  store i32* @g_469, i32** %461, !tbaa !5
  %462 = getelementptr inbounds i32*, i32** %461, i64 1
  store i32* @g_469, i32** %462, !tbaa !5
  %463 = getelementptr inbounds i32*, i32** %462, i64 1
  store i32* null, i32** %463, !tbaa !5
  %464 = getelementptr inbounds i32*, i32** %463, i64 1
  store i32* @g_469, i32** %464, !tbaa !5
  %465 = getelementptr inbounds i32*, i32** %464, i64 1
  store i32* @g_469, i32** %465, !tbaa !5
  %466 = getelementptr inbounds [6 x i32*], [6 x i32*]* %459, i64 1
  %467 = getelementptr inbounds [6 x i32*], [6 x i32*]* %466, i64 0, i64 0
  store i32* @g_127, i32** %467, !tbaa !5
  %468 = getelementptr inbounds i32*, i32** %467, i64 1
  store i32* %l_2629, i32** %468, !tbaa !5
  %469 = getelementptr inbounds i32*, i32** %468, i64 1
  store i32* %l_2629, i32** %469, !tbaa !5
  %470 = getelementptr inbounds i32*, i32** %469, i64 1
  store i32* @g_127, i32** %470, !tbaa !5
  %471 = getelementptr inbounds i32*, i32** %470, i64 1
  store i32* null, i32** %471, !tbaa !5
  %472 = getelementptr inbounds i32*, i32** %471, i64 1
  store i32* %l_2629, i32** %472, !tbaa !5
  %473 = getelementptr inbounds [6 x i32*], [6 x i32*]* %466, i64 1
  %474 = getelementptr inbounds [6 x i32*], [6 x i32*]* %473, i64 0, i64 0
  store i32* @g_469, i32** %474, !tbaa !5
  %475 = getelementptr inbounds i32*, i32** %474, i64 1
  store i32* null, i32** %475, !tbaa !5
  %476 = getelementptr inbounds i32*, i32** %475, i64 1
  store i32* %l_2629, i32** %476, !tbaa !5
  %477 = getelementptr inbounds i32*, i32** %476, i64 1
  store i32* @g_127, i32** %477, !tbaa !5
  %478 = getelementptr inbounds i32*, i32** %477, i64 1
  store i32* @g_127, i32** %478, !tbaa !5
  %479 = getelementptr inbounds i32*, i32** %478, i64 1
  store i32* %l_2629, i32** %479, !tbaa !5
  %480 = getelementptr inbounds [6 x i32*], [6 x i32*]* %473, i64 1
  %481 = getelementptr inbounds [6 x i32*], [6 x i32*]* %480, i64 0, i64 0
  store i32* @g_469, i32** %481, !tbaa !5
  %482 = getelementptr inbounds i32*, i32** %481, i64 1
  store i32* %l_2629, i32** %482, !tbaa !5
  %483 = getelementptr inbounds i32*, i32** %482, i64 1
  store i32* @g_127, i32** %483, !tbaa !5
  %484 = getelementptr inbounds i32*, i32** %483, i64 1
  store i32* @g_469, i32** %484, !tbaa !5
  %485 = getelementptr inbounds i32*, i32** %484, i64 1
  store i32* @g_127, i32** %485, !tbaa !5
  %486 = getelementptr inbounds i32*, i32** %485, i64 1
  store i32* %l_2629, i32** %486, !tbaa !5
  %487 = getelementptr inbounds [6 x i32*], [6 x i32*]* %480, i64 1
  %488 = getelementptr inbounds [6 x i32*], [6 x i32*]* %487, i64 0, i64 0
  store i32* null, i32** %488, !tbaa !5
  %489 = getelementptr inbounds i32*, i32** %488, i64 1
  store i32* null, i32** %489, !tbaa !5
  %490 = getelementptr inbounds i32*, i32** %489, i64 1
  store i32* @g_127, i32** %490, !tbaa !5
  %491 = getelementptr inbounds i32*, i32** %490, i64 1
  store i32* @g_469, i32** %491, !tbaa !5
  %492 = getelementptr inbounds i32*, i32** %491, i64 1
  store i32* null, i32** %492, !tbaa !5
  %493 = getelementptr inbounds i32*, i32** %492, i64 1
  store i32* @g_17, i32** %493, !tbaa !5
  %494 = getelementptr inbounds [6 x i32*], [6 x i32*]* %487, i64 1
  %495 = getelementptr inbounds [6 x i32*], [6 x i32*]* %494, i64 0, i64 0
  store i32* %l_2629, i32** %495, !tbaa !5
  %496 = getelementptr inbounds i32*, i32** %495, i64 1
  store i32* %l_2629, i32** %496, !tbaa !5
  %497 = getelementptr inbounds i32*, i32** %496, i64 1
  store i32* @g_127, i32** %497, !tbaa !5
  %498 = getelementptr inbounds i32*, i32** %497, i64 1
  store i32* @g_127, i32** %498, !tbaa !5
  %499 = getelementptr inbounds i32*, i32** %498, i64 1
  store i32* @g_469, i32** %499, !tbaa !5
  %500 = getelementptr inbounds i32*, i32** %499, i64 1
  store i32* @g_17, i32** %500, !tbaa !5
  %501 = bitcast i32* %i7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %501) #1
  %502 = bitcast i32* %j8 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %502) #1
  %503 = bitcast i32* %k9 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %503) #1
  %504 = load i64, i64* %l_2659, align 8, !tbaa !7
  %505 = add i64 %504, 1
  store i64 %505, i64* %l_2659, align 8, !tbaa !7
  %506 = call zeroext i16 @safe_rshift_func_uint16_t_u_s(i16 zeroext -8718, i32 13)
  %507 = zext i16 %506 to i32
  %508 = load i32*, i32** %l_2647, align 8, !tbaa !5
  %509 = load i32, i32* %508, align 4, !tbaa !1
  %510 = xor i32 %509, %507
  store i32 %510, i32* %508, align 4, !tbaa !1
  %511 = load i32*, i32** %4, align 8, !tbaa !5
  %512 = load i32, i32* %511, align 4, !tbaa !1
  %513 = load i32**, i32*** @g_1194, align 8, !tbaa !5
  %514 = load i32*, i32** %513, align 8, !tbaa !5
  %515 = load i32, i32* %514, align 4, !tbaa !1
  %516 = or i32 %515, %512
  store i32 %516, i32* %514, align 4, !tbaa !1
  %517 = bitcast i32* %k9 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %517) #1
  %518 = bitcast i32* %j8 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %518) #1
  %519 = bitcast i32* %i7 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %519) #1
  %520 = bitcast [6 x [6 x [6 x i32*]]]* %l_2650 to i8*
  call void @llvm.lifetime.end(i64 1728, i8* %520) #1
  %521 = bitcast i32** %l_2649 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %521) #1
  %522 = bitcast i32** %l_2648 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %522) #1
  %523 = bitcast i32** %l_2647 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %523) #1
  br label %524

; <label>:524                                     ; preds = %238, %237
  store i32 0, i32* %5
  br label %525

; <label>:525                                     ; preds = %524, %233
  %526 = bitcast i32* %j3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %526) #1
  %527 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %527) #1
  %528 = bitcast [3 x [9 x i32]]* %l_2656 to i8*
  call void @llvm.lifetime.end(i64 108, i8* %528) #1
  %529 = bitcast i16**** %l_2638 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %529) #1
  %530 = bitcast i32* %l_2637 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %530) #1
  %cleanup.dest.10 = load i32, i32* %5
  switch i32 %cleanup.dest.10, label %662 [
    i32 0, label %531
    i32 8, label %537
  ]

; <label>:531                                     ; preds = %525
  br label %532

; <label>:532                                     ; preds = %531
  %533 = load i8, i8* @g_171, align 1, !tbaa !9
  %534 = sext i8 %533 to i32
  %535 = sub nsw i32 %534, 1
  %536 = trunc i32 %535 to i8
  store i8 %536, i8* @g_171, align 1, !tbaa !9
  br label %36

; <label>:537                                     ; preds = %525, %36
  %538 = load volatile i32*, i32** @g_2390, align 8, !tbaa !5
  %539 = load volatile i32, i32* %538, align 4, !tbaa !1
  %540 = icmp ne i32 %539, 0
  br i1 %540, label %541, label %542

; <label>:541                                     ; preds = %537
  store i32 7, i32* %5
  br label %546

; <label>:542                                     ; preds = %537
  %543 = load i32****, i32***** @g_865, align 8, !tbaa !5
  %544 = load i32***, i32**** %543, align 8, !tbaa !5
  %545 = load i32**, i32*** %544, align 8, !tbaa !5
  store i32* %l_2658, i32** %545, align 8, !tbaa !5
  store i32 0, i32* %5
  br label %546

; <label>:546                                     ; preds = %542, %541
  %547 = bitcast i32* %l_2655 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %547) #1
  %548 = bitcast i32* %l_2654 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %548) #1
  %549 = bitcast i16**** %l_2622 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %549) #1
  %cleanup.dest.11 = load i32, i32* %5
  switch i32 %cleanup.dest.11, label %662 [
    i32 0, label %550
    i32 7, label %551
  ]

; <label>:550                                     ; preds = %546
  br label %551

; <label>:551                                     ; preds = %550, %546
  %552 = load i64, i64* @g_1037, align 8, !tbaa !7
  %553 = add i64 %552, 1
  store i64 %553, i64* @g_1037, align 8, !tbaa !7
  br label %29

; <label>:554                                     ; preds = %29
  %555 = load i32*, i32** %l_2664, align 8, !tbaa !5
  %556 = load i32**, i32*** @g_720, align 8, !tbaa !5
  store i32* %555, i32** %556, align 8, !tbaa !5
  %557 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %557) #1
  %558 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %558) #1
  %559 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %559) #1
  %560 = bitcast i32** %l_2664 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %560) #1
  %561 = bitcast i64* %l_2659 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %561) #1
  %562 = bitcast [4 x [1 x [10 x i64*]]]* %l_2639 to i8*
  call void @llvm.lifetime.end(i64 320, i8* %562) #1
  %563 = bitcast i64* %l_2630 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %563) #1
  br label %564

; <label>:564                                     ; preds = %554
  %565 = load i16, i16* @g_2535, align 2, !tbaa !10
  %566 = zext i16 %565 to i32
  %567 = add nsw i32 %566, 1
  %568 = trunc i32 %567 to i16
  store i16 %568, i16* @g_2535, align 2, !tbaa !10
  br label %16

; <label>:569                                     ; preds = %16
  %570 = load i32*, i32** %4, align 8, !tbaa !5
  %571 = load i32, i32* %570, align 4, !tbaa !1
  %572 = load i32*, i32** @g_870, align 8, !tbaa !5
  %573 = load i32, i32* %572, align 4, !tbaa !1
  %574 = or i32 %573, %571
  store i32 %574, i32* %572, align 4, !tbaa !1
  %575 = getelementptr inbounds [9 x i16], [9 x i16]* %l_2625, i32 0, i64 8
  %576 = load i16, i16* %575, align 2, !tbaa !10
  %577 = sext i16 %576 to i32
  %578 = load volatile i32**, i32*** @g_1786, align 8, !tbaa !5
  %579 = load i32*, i32** %578, align 8, !tbaa !5
  %580 = load i32, i32* %579, align 4, !tbaa !1
  %581 = load i32*, i32** %l_2669, align 8, !tbaa !5
  %582 = icmp eq i32* null, %581
  %583 = zext i1 %582 to i32
  %584 = call i32 @safe_sub_func_int32_t_s_s(i32 %580, i32 %583)
  %585 = icmp ne i32 %584, 0
  br i1 %585, label %621, label %586

; <label>:586                                     ; preds = %569
  %587 = load volatile i64*, i64** @g_1200, align 8, !tbaa !5
  %588 = load i64, i64* %587, align 8, !tbaa !7
  %589 = getelementptr inbounds [9 x i16], [9 x i16]* %l_2625, i32 0, i64 1
  %590 = load i16, i16* %589, align 2, !tbaa !10
  %591 = sext i16 %590 to i64
  %592 = xor i64 %588, %591
  %593 = icmp ne i64 %592, 0
  br i1 %593, label %594, label %619

; <label>:594                                     ; preds = %586
  %595 = load volatile i16**, i16*** @g_1398, align 8, !tbaa !5
  %596 = load volatile i16*, i16** %595, align 8, !tbaa !5
  %597 = load i16, i16* %596, align 2, !tbaa !10
  %598 = zext i16 %597 to i32
  %599 = load i32, i32* %l_2629, align 4, !tbaa !1
  %600 = load i32, i32* %l_2629, align 4, !tbaa !1
  %601 = trunc i32 %600 to i8
  %602 = call signext i8 @safe_rshift_func_int8_t_s_s(i8 signext %601, i32 3)
  %603 = sext i8 %602 to i64
  %604 = icmp uge i64 %603, -7187971906587085180
  br i1 %604, label %609, label %605

; <label>:605                                     ; preds = %594
  %606 = load i16, i16* %2, align 2, !tbaa !10
  %607 = zext i16 %606 to i32
  %608 = icmp ne i32 %607, 0
  br label %609

; <label>:609                                     ; preds = %605, %594
  %610 = phi i1 [ true, %594 ], [ %608, %605 ]
  %611 = zext i1 %610 to i32
  %612 = and i32 %598, %611
  %613 = load i32, i32* %l_2629, align 4, !tbaa !1
  %614 = call i32 @safe_add_func_int32_t_s_s(i32 %612, i32 %613)
  %615 = trunc i32 %614 to i16
  %616 = call zeroext i16 @safe_rshift_func_uint16_t_u_u(i16 zeroext %615, i32 6)
  %617 = zext i16 %616 to i64
  %618 = icmp ule i64 %617, 65535
  br label %619

; <label>:619                                     ; preds = %609, %586
  %620 = phi i1 [ false, %586 ], [ %618, %609 ]
  br label %621

; <label>:621                                     ; preds = %619, %569
  %622 = phi i1 [ true, %569 ], [ %620, %619 ]
  %623 = zext i1 %622 to i32
  %624 = sext i32 %623 to i64
  %625 = icmp ugt i64 %624, 9
  %626 = zext i1 %625 to i32
  %627 = sext i32 %626 to i64
  %628 = icmp uge i64 %627, 65527
  %629 = zext i1 %628 to i32
  %630 = sext i32 %629 to i64
  %631 = icmp uge i64 %630, 0
  %632 = zext i1 %631 to i32
  %633 = load i32*, i32** @g_674, align 8, !tbaa !5
  %634 = load i32, i32* %633, align 4, !tbaa !1
  %635 = call i32 @safe_mod_func_uint32_t_u_u(i32 %632, i32 %634)
  %636 = zext i32 %635 to i64
  %637 = load i64, i64* @g_389, align 8, !tbaa !7
  %638 = icmp ule i64 %636, %637
  %639 = zext i1 %638 to i32
  %640 = icmp ne i32 %577, %639
  %641 = zext i1 %640 to i32
  %642 = load i16, i16* %2, align 2, !tbaa !10
  %643 = zext i16 %642 to i32
  %644 = or i32 %641, %643
  %645 = load i16, i16* %3, align 2, !tbaa !10
  %646 = zext i16 %645 to i32
  %647 = icmp eq i32 %644, %646
  %648 = zext i1 %647 to i32
  %649 = load i32*, i32** %1, align 8, !tbaa !5
  %650 = load i32, i32* %649, align 4, !tbaa !1
  %651 = load i32*, i32** @g_870, align 8, !tbaa !5
  store i32 %650, i32* %651, align 4, !tbaa !1
  %652 = load i32*, i32** %4, align 8, !tbaa !5
  store i32 1, i32* %5
  %653 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %653) #1
  %654 = bitcast i32** %l_2669 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %654) #1
  %655 = bitcast i32* %l_2658 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %655) #1
  %656 = bitcast i32* %l_2657 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %656) #1
  %657 = bitcast i32* %l_2653 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %657) #1
  %658 = bitcast i32* %l_2652 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %658) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_2651) #1
  %659 = bitcast i16**** %l_2640 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %659) #1
  %660 = bitcast i32* %l_2629 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %660) #1
  %661 = bitcast [9 x i16]* %l_2625 to i8*
  call void @llvm.lifetime.end(i64 18, i8* %661) #1
  ret i32* %652

; <label>:662                                     ; preds = %546, %525
  unreachable
}

; Function Attrs: nounwind uwtable
define internal zeroext i16 @safe_div_func_uint16_t_u_u(i16 zeroext %ui1, i16 zeroext %ui2) #0 {
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
  %14 = sdiv i32 %11, %13
  br label %15

; <label>:15                                      ; preds = %9, %6
  %16 = phi i32 [ %8, %6 ], [ %14, %9 ]
  %17 = trunc i32 %16 to i16
  ret i16 %17
}

; Function Attrs: nounwind uwtable
define internal zeroext i16 @func_11(i32 %p_12, i32* %p_13, i32 %p_14, i16 zeroext %p_15) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  %l_2583 = alloca i32***, align 8
  %l_2584 = alloca i16**, align 8
  %l_2585 = alloca i16**, align 8
  %l_2586 = alloca i16***, align 8
  %l_2587 = alloca i32, align 4
  %l_2590 = alloca i16, align 2
  %l_2591 = alloca i32, align 4
  %l_2604 = alloca i16***, align 8
  %l_2603 = alloca i16****, align 8
  %l_2602 = alloca i16*****, align 8
  %l_2606 = alloca i64*, align 8
  %l_2605 = alloca i64**, align 8
  %l_2611 = alloca i8*, align 8
  %l_2612 = alloca i32*, align 8
  store i32 %p_12, i32* %1, align 4, !tbaa !1
  store i32* %p_13, i32** %2, align 8, !tbaa !5
  store i32 %p_14, i32* %3, align 4, !tbaa !1
  store i16 %p_15, i16* %4, align 2, !tbaa !10
  %5 = bitcast i32**** %l_2583 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store i32*** @g_91, i32**** %l_2583, align 8, !tbaa !5
  %6 = bitcast i16*** %l_2584 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i16** @g_342, i16*** %l_2584, align 8, !tbaa !5
  %7 = bitcast i16*** %l_2585 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store i16** @g_342, i16*** %l_2585, align 8, !tbaa !5
  %8 = bitcast i16**** %l_2586 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i16*** @g_341, i16**** %l_2586, align 8, !tbaa !5
  %9 = bitcast i32* %l_2587 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 2133425185, i32* %l_2587, align 4, !tbaa !1
  %10 = bitcast i16* %l_2590 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %10) #1
  store i16 19805, i16* %l_2590, align 2, !tbaa !10
  %11 = bitcast i32* %l_2591 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  store i32 -4, i32* %l_2591, align 4, !tbaa !1
  %12 = bitcast i16**** %l_2604 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  store i16*** %l_2584, i16**** %l_2604, align 8, !tbaa !5
  %13 = bitcast i16***** %l_2603 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  store i16**** %l_2604, i16***** %l_2603, align 8, !tbaa !5
  %14 = bitcast i16****** %l_2602 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  store i16***** %l_2603, i16****** %l_2602, align 8, !tbaa !5
  %15 = bitcast i64** %l_2606 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  store i64* @g_385, i64** %l_2606, align 8, !tbaa !5
  %16 = bitcast i64*** %l_2605 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  store i64** %l_2606, i64*** %l_2605, align 8, !tbaa !5
  %17 = bitcast i8** %l_2611 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  store i8* @g_171, i8** %l_2611, align 8, !tbaa !5
  %18 = bitcast i32** %l_2612 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  store i32* @g_127, i32** %l_2612, align 8, !tbaa !5
  %19 = load i32***, i32**** %l_2583, align 8, !tbaa !5
  %20 = icmp ne i32*** null, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @safe_mod_func_int32_t_s_s(i32 %21, i32 -6)
  %23 = load i16**, i16*** @g_2575, align 8, !tbaa !5
  %24 = load volatile i16*, i16** %23, align 8, !tbaa !5
  %25 = load i16, i16* %24, align 2, !tbaa !10
  %26 = zext i16 %25 to i32
  %27 = or i32 %26, %22
  %28 = trunc i32 %27 to i16
  store i16 %28, i16* %24, align 2, !tbaa !10
  %29 = load i16**, i16*** %l_2584, align 8, !tbaa !5
  %30 = load i16**, i16*** %l_2585, align 8, !tbaa !5
  %31 = load i16***, i16**** %l_2586, align 8, !tbaa !5
  store i16** %30, i16*** %31, align 8, !tbaa !5
  %32 = icmp ne i16** %29, %30
  %33 = zext i1 %32 to i32
  %34 = load i32, i32* %l_2587, align 4, !tbaa !1
  %35 = load i32*, i32** %2, align 8, !tbaa !5
  %36 = load i32, i32* %35, align 4, !tbaa !1
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %54, label %38

; <label>:38                                      ; preds = %0
  %39 = load i16, i16* %4, align 2, !tbaa !10
  %40 = zext i16 %39 to i32
  %41 = load i32, i32* %l_2587, align 4, !tbaa !1
  %42 = and i32 %40, %41
  %43 = load i32, i32* %3, align 4, !tbaa !1
  %44 = zext i32 %43 to i64
  %45 = load i16, i16* %l_2590, align 2, !tbaa !10
  %46 = sext i16 %45 to i64
  %47 = call i64 @safe_div_func_uint64_t_u_u(i64 %44, i64 %46)
  %48 = load i32, i32* %l_2587, align 4, !tbaa !1
  %49 = sext i32 %48 to i64
  %50 = or i64 %47, %49
  %51 = load i32, i32* %1, align 4, !tbaa !1
  %52 = sext i32 %51 to i64
  %53 = icmp ne i64 %50, %52
  br label %54

; <label>:54                                      ; preds = %38, %0
  %55 = phi i1 [ true, %0 ], [ %53, %38 ]
  %56 = zext i1 %55 to i32
  %57 = icmp eq i32 %34, %56
  %58 = zext i1 %57 to i32
  %59 = load i16, i16* %l_2590, align 2, !tbaa !10
  %60 = sext i16 %59 to i32
  %61 = icmp ne i32 %58, %60
  %62 = zext i1 %61 to i32
  %63 = sext i32 %62 to i64
  %64 = or i64 %63, -6
  %65 = load i32*, i32** @g_462, align 8, !tbaa !5
  %66 = load i32, i32* %65, align 4, !tbaa !1
  %67 = load i32, i32* %l_2591, align 4, !tbaa !1
  %68 = and i32 %67, %66
  store i32 %68, i32* %l_2591, align 4, !tbaa !1
  %69 = load i32, i32* %l_2587, align 4, !tbaa !1
  %70 = load i16*****, i16****** %l_2602, align 8, !tbaa !5
  store i16***** %70, i16****** %l_2602, align 8, !tbaa !5
  %71 = load i32, i32* %l_2587, align 4, !tbaa !1
  %72 = load i16, i16* %4, align 2, !tbaa !10
  %73 = load i64**, i64*** %l_2605, align 8, !tbaa !5
  %74 = icmp eq i64** %73, %l_2606
  %75 = zext i1 %74 to i32
  %76 = call signext i16 @safe_add_func_int16_t_s_s(i16 signext -12334, i16 signext -28516)
  %77 = sext i16 %76 to i32
  %78 = load i32, i32* %1, align 4, !tbaa !1
  %79 = icmp sle i32 %77, %78
  %80 = zext i1 %79 to i32
  %81 = load i32***, i32**** %l_2583, align 8, !tbaa !5
  %82 = load i32**, i32*** %81, align 8, !tbaa !5
  %83 = icmp eq i32** %82, null
  %84 = zext i1 %83 to i32
  %85 = trunc i32 %84 to i16
  %86 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %85, i16 zeroext 22463)
  %87 = zext i16 %86 to i32
  %88 = icmp sgt i32 %75, %87
  br i1 %88, label %92, label %89

; <label>:89                                      ; preds = %54
  %90 = load i32, i32* %3, align 4, !tbaa !1
  %91 = icmp ne i32 %90, 0
  br label %92

; <label>:92                                      ; preds = %89, %54
  %93 = phi i1 [ true, %54 ], [ %91, %89 ]
  %94 = zext i1 %93 to i32
  %95 = sext i32 %94 to i64
  %96 = icmp ule i64 %95, 5
  %97 = zext i1 %96 to i32
  %98 = sext i32 %97 to i64
  %99 = icmp uge i64 1, %98
  %100 = zext i1 %99 to i32
  %101 = load i32, i32* %l_2587, align 4, !tbaa !1
  %102 = icmp ne i32 %100, %101
  %103 = zext i1 %102 to i32
  %104 = xor i32 %71, %103
  %105 = icmp eq i16***** %70, @g_2261
  %106 = zext i1 %105 to i32
  %107 = sext i32 %106 to i64
  %108 = load i64**, i64*** @g_1199, align 8, !tbaa !5
  %109 = load volatile i64*, i64** %108, align 8, !tbaa !5
  %110 = load i64, i64* %109, align 8, !tbaa !7
  %111 = call i64 @safe_sub_func_uint64_t_u_u(i64 %107, i64 %110)
  %112 = load i16, i16* %4, align 2, !tbaa !10
  %113 = zext i16 %112 to i64
  %114 = icmp ult i64 %111, %113
  %115 = zext i1 %114 to i32
  %116 = load i16, i16* %4, align 2, !tbaa !10
  %117 = zext i16 %116 to i32
  %118 = icmp ne i32 %115, %117
  %119 = zext i1 %118 to i32
  %120 = load i32*, i32** @g_462, align 8, !tbaa !5
  store i32 %119, i32* %120, align 4, !tbaa !1
  %121 = load i32*, i32** @g_870, align 8, !tbaa !5
  %122 = load i32, i32* %121, align 4, !tbaa !1
  %123 = call i32 @safe_mod_func_int32_t_s_s(i32 %119, i32 %122)
  %124 = sext i32 %123 to i64
  %125 = icmp uge i64 %124, -4
  %126 = zext i1 %125 to i32
  %127 = load i8*, i8** %l_2611, align 8, !tbaa !5
  %128 = load i8, i8* %127, align 1, !tbaa !9
  %129 = sext i8 %128 to i32
  %130 = or i32 %129, %126
  %131 = trunc i32 %130 to i8
  store i8 %131, i8* %127, align 1, !tbaa !9
  %132 = load i16, i16* %4, align 2, !tbaa !10
  %133 = trunc i16 %132 to i8
  %134 = call signext i8 @safe_mod_func_int8_t_s_s(i8 signext %131, i8 signext %133)
  %135 = sext i8 %134 to i32
  store i32 %135, i32* %l_2591, align 4, !tbaa !1
  %136 = trunc i32 %135 to i16
  %137 = load i32, i32* @g_252, align 4, !tbaa !1
  %138 = trunc i32 %137 to i16
  %139 = call signext i16 @safe_add_func_int16_t_s_s(i16 signext %136, i16 signext %138)
  %140 = sext i16 %139 to i32
  %141 = and i32 %69, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %147, label %143

; <label>:143                                     ; preds = %92
  %144 = load i16, i16* %l_2590, align 2, !tbaa !10
  %145 = sext i16 %144 to i32
  %146 = icmp ne i32 %145, 0
  br label %147

; <label>:147                                     ; preds = %143, %92
  %148 = phi i1 [ true, %92 ], [ %146, %143 ]
  %149 = zext i1 %148 to i32
  %150 = trunc i32 %149 to i16
  %151 = load i16*, i16** @g_342, align 8, !tbaa !5
  store i16 %150, i16* %151, align 2, !tbaa !10
  %152 = sext i16 %150 to i64
  %153 = icmp sle i64 %152, 1
  %154 = zext i1 %153 to i32
  %155 = trunc i32 %154 to i16
  %156 = load i32, i32* %l_2587, align 4, !tbaa !1
  %157 = trunc i32 %156 to i16
  %158 = call zeroext i16 @safe_add_func_uint16_t_u_u(i16 zeroext %155, i16 zeroext %157)
  %159 = zext i16 %158 to i32
  %160 = load i32*, i32** @g_870, align 8, !tbaa !5
  store i32 %159, i32* %160, align 4, !tbaa !1
  %161 = load i32**, i32*** @g_720, align 8, !tbaa !5
  %162 = load i32*, i32** %161, align 8, !tbaa !5
  store i32 -953772775, i32* %162, align 4, !tbaa !1
  %163 = load volatile i32**, i32*** @g_1786, align 8, !tbaa !5
  %164 = load i32*, i32** %163, align 8, !tbaa !5
  store i32* %164, i32** %l_2612, align 8, !tbaa !5
  %165 = load i32*, i32** %l_2612, align 8, !tbaa !5
  %166 = load i32, i32* %165, align 4, !tbaa !1
  %167 = trunc i32 %166 to i16
  %168 = bitcast i32** %l_2612 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %168) #1
  %169 = bitcast i8** %l_2611 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %169) #1
  %170 = bitcast i64*** %l_2605 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %170) #1
  %171 = bitcast i64** %l_2606 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %171) #1
  %172 = bitcast i16****** %l_2602 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %172) #1
  %173 = bitcast i16***** %l_2603 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %173) #1
  %174 = bitcast i16**** %l_2604 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %174) #1
  %175 = bitcast i32* %l_2591 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %175) #1
  %176 = bitcast i16* %l_2590 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %176) #1
  %177 = bitcast i32* %l_2587 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %177) #1
  %178 = bitcast i16**** %l_2586 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %178) #1
  %179 = bitcast i16*** %l_2585 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %179) #1
  %180 = bitcast i16*** %l_2584 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %180) #1
  %181 = bitcast i32**** %l_2583 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %181) #1
  ret i16 %167
}

; Function Attrs: nounwind uwtable
define internal signext i16 @safe_lshift_func_int16_t_s_s(i16 signext %left, i32 %right) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i32, align 4
  store i16 %left, i16* %1, align 2, !tbaa !10
  store i32 %right, i32* %2, align 4, !tbaa !1
  %3 = load i16, i16* %1, align 2, !tbaa !10
  %4 = sext i16 %3 to i32
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %18, label %6

; <label>:6                                       ; preds = %0
  %7 = load i32, i32* %2, align 4, !tbaa !1
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %18, label %9

; <label>:9                                       ; preds = %6
  %10 = load i32, i32* %2, align 4, !tbaa !1
  %11 = icmp sge i32 %10, 32
  br i1 %11, label %18, label %12

; <label>:12                                      ; preds = %9
  %13 = load i16, i16* %1, align 2, !tbaa !10
  %14 = sext i16 %13 to i32
  %15 = load i32, i32* %2, align 4, !tbaa !1
  %16 = ashr i32 32767, %15
  %17 = icmp sgt i32 %14, %16
  br i1 %17, label %18, label %21

; <label>:18                                      ; preds = %12, %9, %6, %0
  %19 = load i16, i16* %1, align 2, !tbaa !10
  %20 = sext i16 %19 to i32
  br label %26

; <label>:21                                      ; preds = %12
  %22 = load i16, i16* %1, align 2, !tbaa !10
  %23 = sext i16 %22 to i32
  %24 = load i32, i32* %2, align 4, !tbaa !1
  %25 = shl i32 %23, %24
  br label %26

; <label>:26                                      ; preds = %21, %18
  %27 = phi i32 [ %20, %18 ], [ %25, %21 ]
  %28 = trunc i32 %27 to i16
  ret i16 %28
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
define internal zeroext i16 @func_23(i32 %p_24, i32 %p_25) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %l_2578 = alloca i32***, align 8
  %l_2579 = alloca [1 x [7 x [7 x i32]]], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %p_24, i32* %1, align 4, !tbaa !1
  store i32 %p_25, i32* %2, align 4, !tbaa !1
  %3 = bitcast i32**** %l_2578 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store i32*** @g_91, i32**** %l_2578, align 8, !tbaa !5
  %4 = bitcast [1 x [7 x [7 x i32]]]* %l_2579 to i8*
  call void @llvm.lifetime.start(i64 196, i8* %4) #1
  %5 = bitcast [1 x [7 x [7 x i32]]]* %l_2579 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* bitcast ([1 x [7 x [7 x i32]]]* @func_23.l_2579 to i8*), i64 196, i32 16, i1 false)
  %6 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load i32***, i32**** %l_2578, align 8, !tbaa !5
  %10 = icmp ne i32*** null, %9
  %11 = zext i1 %10 to i32
  %12 = load i32***, i32**** @g_866, align 8, !tbaa !5
  %13 = load i32**, i32*** %12, align 8, !tbaa !5
  %14 = load i32*, i32** %13, align 8, !tbaa !5
  %15 = load i32, i32* %14, align 4, !tbaa !1
  %16 = and i32 %15, %11
  store i32 %16, i32* %14, align 4, !tbaa !1
  %17 = getelementptr inbounds [1 x [7 x [7 x i32]]], [1 x [7 x [7 x i32]]]* %l_2579, i32 0, i64 0
  %18 = getelementptr inbounds [7 x [7 x i32]], [7 x [7 x i32]]* %17, i32 0, i64 4
  %19 = getelementptr inbounds [7 x i32], [7 x i32]* %18, i32 0, i64 1
  %20 = load i32, i32* %19, align 4, !tbaa !1
  %21 = load i32*, i32** @g_870, align 8, !tbaa !5
  store i32 %20, i32* %21, align 4, !tbaa !1
  %22 = load i32*, i32** @g_462, align 8, !tbaa !5
  store i32 1510445601, i32* %22, align 4, !tbaa !1
  %23 = load volatile i16**, i16*** @g_1398, align 8, !tbaa !5
  %24 = load volatile i16*, i16** %23, align 8, !tbaa !5
  %25 = load i16, i16* %24, align 2, !tbaa !10
  %26 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %27 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  %28 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  %29 = bitcast [1 x [7 x [7 x i32]]]* %l_2579 to i8*
  call void @llvm.lifetime.end(i64 196, i8* %29) #1
  %30 = bitcast i32**** %l_2578 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  ret i16 %25
}

; Function Attrs: nounwind uwtable
define internal i64 @func_26(i32 %p_27, i32* %p_28, i64 %p_29, i32* %p_30) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %l_38 = alloca i8, align 1
  %l_169 = alloca i32, align 4
  %l_664 = alloca i32*, align 8
  %l_2064 = alloca i32, align 4
  %l_2172 = alloca i32**, align 8
  %l_2171 = alloca i32***, align 8
  %l_2173 = alloca i32***, align 8
  %l_2208 = alloca i32, align 4
  %l_2223 = alloca [2 x [6 x i32]], align 16
  %l_2235 = alloca i16, align 2
  %l_2315 = alloca i32****, align 8
  %l_2411 = alloca i8, align 1
  %l_2426 = alloca i8, align 1
  %l_2431 = alloca [10 x i16*], align 16
  %l_2432 = alloca i8*****, align 8
  %l_2449 = alloca i64, align 8
  %l_2451 = alloca i64, align 8
  %l_2505 = alloca [2 x i64*], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %l_35 = alloca i32*, align 8
  %l_36 = alloca [4 x i32*], align 16
  %l_41 = alloca i32, align 4
  %l_170 = alloca i8*, align 8
  %l_345 = alloca i32*, align 8
  %l_344 = alloca i32**, align 8
  %l_347 = alloca [10 x [2 x i32*]], align 16
  %l_346 = alloca i32**, align 8
  %l_809 = alloca i8*, align 8
  %l_810 = alloca i8*, align 8
  %l_2222 = alloca i64, align 8
  %l_2230 = alloca i32, align 4
  %l_2256 = alloca i16***, align 8
  %l_2255 = alloca i16****, align 8
  %l_2254 = alloca i16*****, align 8
  %l_2324 = alloca i32**, align 8
  %l_2370 = alloca i16*, align 8
  %i1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  %l_2443 = alloca i8, align 1
  %l_2447 = alloca i32, align 4
  %l_2448 = alloca i32, align 4
  %l_2450 = alloca [10 x [6 x i32]], align 16
  %l_2452 = alloca i8, align 1
  %l_2454 = alloca [4 x [6 x [6 x i32]]], align 16
  %l_2460 = alloca i64**, align 8
  %l_2544 = alloca i16*, align 8
  %i3 = alloca i32, align 4
  %j4 = alloca i32, align 4
  %k = alloca i32, align 4
  %l_2435 = alloca i32*, align 8
  %l_2436 = alloca i32*, align 8
  %l_2437 = alloca i32*, align 8
  %l_2438 = alloca i32*, align 8
  %l_2439 = alloca i32, align 4
  %l_2440 = alloca [2 x [10 x [1 x i32]]], align 16
  %l_2441 = alloca i32*, align 8
  %l_2442 = alloca i32*, align 8
  %l_2444 = alloca i32*, align 8
  %l_2445 = alloca i32*, align 8
  %l_2446 = alloca [1 x [6 x i32*]], align 16
  %l_2453 = alloca i32, align 4
  %l_2462 = alloca i64*, align 8
  %l_2461 = alloca i64**, align 8
  %l_2520 = alloca i8, align 1
  %l_2577 = alloca i8, align 1
  %i5 = alloca i32, align 4
  %j6 = alloca i32, align 4
  %k7 = alloca i32, align 4
  %6 = alloca i32
  store i32 %p_27, i32* %2, align 4, !tbaa !1
  store i32* %p_28, i32** %3, align 8, !tbaa !5
  store i64 %p_29, i64* %4, align 8, !tbaa !7
  store i32* %p_30, i32** %5, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_38) #1
  store i8 -7, i8* %l_38, align 1, !tbaa !9
  %7 = bitcast i32* %l_169 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 -1199212156, i32* %l_169, align 4, !tbaa !1
  %8 = bitcast i32** %l_664 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i32* %l_169, i32** %l_664, align 8, !tbaa !5
  %9 = bitcast i32* %l_2064 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 1030762454, i32* %l_2064, align 4, !tbaa !1
  %10 = bitcast i32*** %l_2172 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i32** null, i32*** %l_2172, align 8, !tbaa !5
  %11 = bitcast i32**** %l_2171 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store i32*** %l_2172, i32**** %l_2171, align 8, !tbaa !5
  %12 = bitcast i32**** %l_2173 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  store i32*** null, i32**** %l_2173, align 8, !tbaa !5
  %13 = bitcast i32* %l_2208 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  store i32 371965287, i32* %l_2208, align 4, !tbaa !1
  %14 = bitcast [2 x [6 x i32]]* %l_2223 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %14) #1
  %15 = bitcast i16* %l_2235 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %15) #1
  store i16 19582, i16* %l_2235, align 2, !tbaa !10
  %16 = bitcast i32***** %l_2315 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  store i32**** @g_866, i32***** %l_2315, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_2411) #1
  store i8 0, i8* %l_2411, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %l_2426) #1
  store i8 1, i8* %l_2426, align 1, !tbaa !9
  %17 = bitcast [10 x i16*]* %l_2431 to i8*
  call void @llvm.lifetime.start(i64 80, i8* %17) #1
  %18 = bitcast [10 x i16*]* %l_2431 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* bitcast ([10 x i16*]* @func_26.l_2431 to i8*), i64 80, i32 16, i1 false)
  %19 = bitcast i8****** %l_2432 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  store i8***** @g_1861, i8****** %l_2432, align 8, !tbaa !5
  %20 = bitcast i64* %l_2449 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  store i64 0, i64* %l_2449, align 8, !tbaa !7
  %21 = bitcast i64* %l_2451 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  store i64 0, i64* %l_2451, align 8, !tbaa !7
  %22 = bitcast [2 x i64*]* %l_2505 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %22) #1
  %23 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %25

; <label>:25                                      ; preds = %43, %0
  %26 = load i32, i32* %i, align 4, !tbaa !1
  %27 = icmp slt i32 %26, 2
  br i1 %27, label %28, label %46

; <label>:28                                      ; preds = %25
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %29

; <label>:29                                      ; preds = %39, %28
  %30 = load i32, i32* %j, align 4, !tbaa !1
  %31 = icmp slt i32 %30, 6
  br i1 %31, label %32, label %42

; <label>:32                                      ; preds = %29
  %33 = load i32, i32* %j, align 4, !tbaa !1
  %34 = sext i32 %33 to i64
  %35 = load i32, i32* %i, align 4, !tbaa !1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [2 x [6 x i32]], [2 x [6 x i32]]* %l_2223, i32 0, i64 %36
  %38 = getelementptr inbounds [6 x i32], [6 x i32]* %37, i32 0, i64 %34
  store i32 0, i32* %38, align 4, !tbaa !1
  br label %39

; <label>:39                                      ; preds = %32
  %40 = load i32, i32* %j, align 4, !tbaa !1
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %j, align 4, !tbaa !1
  br label %29

; <label>:42                                      ; preds = %29
  br label %43

; <label>:43                                      ; preds = %42
  %44 = load i32, i32* %i, align 4, !tbaa !1
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %i, align 4, !tbaa !1
  br label %25

; <label>:46                                      ; preds = %25
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %47

; <label>:47                                      ; preds = %54, %46
  %48 = load i32, i32* %i, align 4, !tbaa !1
  %49 = icmp slt i32 %48, 2
  br i1 %49, label %50, label %57

; <label>:50                                      ; preds = %47
  %51 = load i32, i32* %i, align 4, !tbaa !1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [2 x i64*], [2 x i64*]* %l_2505, i32 0, i64 %52
  store i64* getelementptr inbounds ([8 x [4 x i64]], [8 x [4 x i64]]* @g_248, i32 0, i64 4, i64 2), i64** %53, align 8, !tbaa !5
  br label %54

; <label>:54                                      ; preds = %50
  %55 = load i32, i32* %i, align 4, !tbaa !1
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %i, align 4, !tbaa !1
  br label %47

; <label>:57                                      ; preds = %47
  store i64 -28, i64* %4, align 8, !tbaa !7
  br label %58

; <label>:58                                      ; preds = %104, %57
  %59 = load i64, i64* %4, align 8, !tbaa !7
  %60 = icmp slt i64 %59, -7
  br i1 %60, label %61, label %107

; <label>:61                                      ; preds = %58
  %62 = bitcast i32** %l_35 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %62) #1
  store i32* null, i32** %l_35, align 8, !tbaa !5
  %63 = bitcast [4 x i32*]* %l_36 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %63) #1
  %64 = bitcast [4 x i32*]* %l_36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %64, i8* bitcast ([4 x i32*]* @func_26.l_36 to i8*), i64 32, i32 16, i1 false)
  %65 = bitcast i32* %l_41 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %65) #1
  store i32 0, i32* %l_41, align 4, !tbaa !1
  %66 = bitcast i8** %l_170 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %66) #1
  store i8* @g_171, i8** %l_170, align 8, !tbaa !5
  %67 = bitcast i32** %l_345 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %67) #1
  store i32* %l_169, i32** %l_345, align 8, !tbaa !5
  %68 = bitcast i32*** %l_344 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %68) #1
  store i32** %l_345, i32*** %l_344, align 8, !tbaa !5
  %69 = bitcast [10 x [2 x i32*]]* %l_347 to i8*
  call void @llvm.lifetime.start(i64 160, i8* %69) #1
  %70 = bitcast [10 x [2 x i32*]]* %l_347 to i8*
  call void @llvm.memset.p0i8.i64(i8* %70, i8 0, i64 160, i32 16, i1 false)
  %71 = bitcast i32*** %l_346 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %71) #1
  %72 = getelementptr inbounds [10 x [2 x i32*]], [10 x [2 x i32*]]* %l_347, i32 0, i64 7
  %73 = getelementptr inbounds [2 x i32*], [2 x i32*]* %72, i32 0, i64 0
  store i32** %73, i32*** %l_346, align 8, !tbaa !5
  %74 = bitcast i8** %l_809 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %74) #1
  store i8* @g_209, i8** %l_809, align 8, !tbaa !5
  %75 = bitcast i8** %l_810 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %75) #1
  store i8* @g_380, i8** %l_810, align 8, !tbaa !5
  %76 = bitcast i64* %l_2222 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %76) #1
  store i64 1365073861328389670, i64* %l_2222, align 8, !tbaa !7
  %77 = bitcast i32* %l_2230 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %77) #1
  store i32 9, i32* %l_2230, align 4, !tbaa !1
  %78 = bitcast i16**** %l_2256 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %78) #1
  store i16*** @g_341, i16**** %l_2256, align 8, !tbaa !5
  %79 = bitcast i16***** %l_2255 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %79) #1
  store i16**** %l_2256, i16***** %l_2255, align 8, !tbaa !5
  %80 = bitcast i16****** %l_2254 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %80) #1
  store i16***** %l_2255, i16****** %l_2254, align 8, !tbaa !5
  %81 = bitcast i32*** %l_2324 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %81) #1
  store i32** null, i32*** %l_2324, align 8, !tbaa !5
  %82 = bitcast i16** %l_2370 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %82) #1
  store i16* getelementptr inbounds ([6 x [10 x [4 x i16]]], [6 x [10 x [4 x i16]]]* @g_214, i32 0, i64 1, i64 5, i64 0), i16** %l_2370, align 8, !tbaa !5
  %83 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %83) #1
  %84 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %84) #1
  %85 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #1
  %86 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #1
  %87 = bitcast i16** %l_2370 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %87) #1
  %88 = bitcast i32*** %l_2324 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %88) #1
  %89 = bitcast i16****** %l_2254 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %89) #1
  %90 = bitcast i16***** %l_2255 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %90) #1
  %91 = bitcast i16**** %l_2256 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %91) #1
  %92 = bitcast i32* %l_2230 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %92) #1
  %93 = bitcast i64* %l_2222 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %93) #1
  %94 = bitcast i8** %l_810 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %94) #1
  %95 = bitcast i8** %l_809 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %95) #1
  %96 = bitcast i32*** %l_346 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %96) #1
  %97 = bitcast [10 x [2 x i32*]]* %l_347 to i8*
  call void @llvm.lifetime.end(i64 160, i8* %97) #1
  %98 = bitcast i32*** %l_344 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %98) #1
  %99 = bitcast i32** %l_345 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %99) #1
  %100 = bitcast i8** %l_170 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %100) #1
  %101 = bitcast i32* %l_41 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %101) #1
  %102 = bitcast [4 x i32*]* %l_36 to i8*
  call void @llvm.lifetime.end(i64 32, i8* %102) #1
  %103 = bitcast i32** %l_35 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %103) #1
  br label %104

; <label>:104                                     ; preds = %61
  %105 = load i64, i64* %4, align 8, !tbaa !7
  %106 = add nsw i64 %105, 1
  store i64 %106, i64* %4, align 8, !tbaa !7
  br label %58

; <label>:107                                     ; preds = %58
  %108 = load i32, i32* %2, align 4, !tbaa !1
  %109 = trunc i32 %108 to i16
  %110 = load i64*, i64** @g_1318, align 8, !tbaa !5
  %111 = load i64, i64* %110, align 8, !tbaa !7
  %112 = icmp sge i64 5352455063386343064, %111
  %113 = zext i1 %112 to i32
  %114 = trunc i32 %113 to i16
  %115 = call zeroext i16 @safe_add_func_uint16_t_u_u(i16 zeroext %109, i16 zeroext %114)
  %116 = zext i16 %115 to i32
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %125, label %118

; <label>:118                                     ; preds = %107
  %119 = load i8***, i8**** @g_1757, align 8, !tbaa !5
  %120 = load volatile i8**, i8*** %119, align 8, !tbaa !5
  %121 = load volatile i8*, i8** %120, align 8, !tbaa !5
  %122 = load i8, i8* %121, align 1, !tbaa !9
  %123 = zext i8 %122 to i32
  %124 = icmp ne i32 %123, 0
  br label %125

; <label>:125                                     ; preds = %118, %107
  %126 = phi i1 [ true, %107 ], [ %124, %118 ]
  %127 = zext i1 %126 to i32
  %128 = trunc i32 %127 to i16
  %129 = load i8, i8* %l_2426, align 1, !tbaa !9
  %130 = zext i8 %129 to i32
  %131 = load volatile i16**, i16*** @g_1398, align 8, !tbaa !5
  %132 = load volatile i16*, i16** %131, align 8, !tbaa !5
  %133 = getelementptr inbounds [10 x i16*], [10 x i16*]* %l_2431, i32 0, i64 0
  %134 = load i16*, i16** %133, align 8, !tbaa !5
  %135 = icmp eq i16* %132, %134
  %136 = zext i1 %135 to i32
  %137 = sext i32 %136 to i64
  %138 = load i64*, i64** @g_1318, align 8, !tbaa !5
  %139 = load i64, i64* %138, align 8, !tbaa !7
  %140 = call i64 @safe_mod_func_int64_t_s_s(i64 %137, i64 %139)
  %141 = trunc i64 %140 to i32
  %142 = call zeroext i16 @safe_rshift_func_uint16_t_u_u(i16 zeroext 3, i32 %141)
  %143 = zext i16 %142 to i32
  %144 = load i16**, i16*** @g_341, align 8, !tbaa !5
  %145 = load i16*, i16** %144, align 8, !tbaa !5
  %146 = load i16, i16* %145, align 2, !tbaa !10
  %147 = sext i16 %146 to i32
  %148 = and i32 %143, %147
  %149 = sext i32 %148 to i64
  %150 = load i64, i64* %4, align 8, !tbaa !7
  %151 = icmp ne i64 %149, %150
  br i1 %151, label %152, label %153

; <label>:152                                     ; preds = %125
  br label %153

; <label>:153                                     ; preds = %152, %125
  %154 = phi i1 [ false, %125 ], [ true, %152 ]
  %155 = zext i1 %154 to i32
  %156 = sext i32 %155 to i64
  %157 = icmp ne i64 %156, 1
  %158 = zext i1 %157 to i32
  %159 = icmp sgt i32 %130, %158
  %160 = zext i1 %159 to i32
  %161 = sext i32 %160 to i64
  %162 = call i64 @safe_sub_func_uint64_t_u_u(i64 %161, i64 2633866705928845616)
  %163 = load i32*, i32** %l_664, align 8, !tbaa !5
  %164 = load i32, i32* %163, align 4, !tbaa !1
  %165 = sext i32 %164 to i64
  %166 = xor i64 %165, %162
  %167 = trunc i64 %166 to i32
  store i32 %167, i32* %163, align 4, !tbaa !1
  %168 = load i32*, i32** @g_76, align 8, !tbaa !5
  %169 = load i32, i32* %168, align 4, !tbaa !1
  %170 = call i32 @safe_mod_func_int32_t_s_s(i32 %167, i32 %169)
  %171 = load i8*****, i8****** %l_2432, align 8, !tbaa !5
  store i8***** %171, i8****** %l_2432, align 8, !tbaa !5
  %172 = icmp ne i8***** %171, null
  %173 = zext i1 %172 to i32
  %174 = trunc i32 %173 to i8
  %175 = load i32****, i32***** %l_2315, align 8, !tbaa !5
  %176 = load i32***, i32**** %175, align 8, !tbaa !5
  %177 = load i32**, i32*** %176, align 8, !tbaa !5
  %178 = load i32*, i32** %177, align 8, !tbaa !5
  %179 = load i32, i32* %178, align 4, !tbaa !1
  %180 = call zeroext i8 @safe_lshift_func_uint8_t_u_s(i8 zeroext %174, i32 %179)
  %181 = load i64, i64* %4, align 8, !tbaa !7
  %182 = trunc i64 %181 to i8
  %183 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %180, i8 signext %182)
  %184 = sext i8 %183 to i32
  %185 = call signext i16 @safe_rshift_func_int16_t_s_u(i16 signext %128, i32 %184)
  %186 = sext i16 %185 to i64
  %187 = icmp ult i64 1, %186
  %188 = zext i1 %187 to i32
  %189 = load i32****, i32***** %l_2315, align 8, !tbaa !5
  %190 = load i32***, i32**** %189, align 8, !tbaa !5
  %191 = load i32**, i32*** %190, align 8, !tbaa !5
  %192 = load i32*, i32** %191, align 8, !tbaa !5
  %193 = load i32, i32* %192, align 4, !tbaa !1
  %194 = sext i32 %193 to i64
  %195 = xor i64 %194, -5726853782822943473
  %196 = trunc i64 %195 to i32
  %197 = load i32*, i32** @g_462, align 8, !tbaa !5
  store i32 %196, i32* %197, align 4, !tbaa !1
  store i16 15, i16* @g_411, align 2, !tbaa !10
  br label %198

; <label>:198                                     ; preds = %288, %153
  %199 = load i16, i16* @g_411, align 2, !tbaa !10
  %200 = zext i16 %199 to i32
  %201 = icmp sge i32 %200, 43
  br i1 %201, label %202, label %291

; <label>:202                                     ; preds = %198
  call void @llvm.lifetime.start(i64 1, i8* %l_2443) #1
  store i8 0, i8* %l_2443, align 1, !tbaa !9
  %203 = bitcast i32* %l_2447 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %203) #1
  store i32 -1, i32* %l_2447, align 4, !tbaa !1
  %204 = bitcast i32* %l_2448 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %204) #1
  store i32 1602961394, i32* %l_2448, align 4, !tbaa !1
  %205 = bitcast [10 x [6 x i32]]* %l_2450 to i8*
  call void @llvm.lifetime.start(i64 240, i8* %205) #1
  %206 = bitcast [10 x [6 x i32]]* %l_2450 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %206, i8* bitcast ([10 x [6 x i32]]* @func_26.l_2450 to i8*), i64 240, i32 16, i1 false)
  call void @llvm.lifetime.start(i64 1, i8* %l_2452) #1
  store i8 0, i8* %l_2452, align 1, !tbaa !9
  %207 = bitcast [4 x [6 x [6 x i32]]]* %l_2454 to i8*
  call void @llvm.lifetime.start(i64 576, i8* %207) #1
  %208 = bitcast [4 x [6 x [6 x i32]]]* %l_2454 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %208, i8* bitcast ([4 x [6 x [6 x i32]]]* @func_26.l_2454 to i8*), i64 576, i32 16, i1 false)
  %209 = bitcast i64*** %l_2460 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %209) #1
  store i64** null, i64*** %l_2460, align 8, !tbaa !5
  %210 = bitcast i16** %l_2544 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %210) #1
  store i16* null, i16** %l_2544, align 8, !tbaa !5
  %211 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %211) #1
  %212 = bitcast i32* %j4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %212) #1
  %213 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %213) #1
  store i64 8, i64* %4, align 8, !tbaa !7
  br label %214

; <label>:214                                     ; preds = %273, %202
  %215 = load i64, i64* %4, align 8, !tbaa !7
  %216 = icmp sge i64 %215, 0
  br i1 %216, label %217, label %276

; <label>:217                                     ; preds = %214
  %218 = bitcast i32** %l_2435 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %218) #1
  store i32* null, i32** %l_2435, align 8, !tbaa !5
  %219 = bitcast i32** %l_2436 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %219) #1
  %220 = getelementptr inbounds [2 x [6 x i32]], [2 x [6 x i32]]* %l_2223, i32 0, i64 0
  %221 = getelementptr inbounds [6 x i32], [6 x i32]* %220, i32 0, i64 1
  store i32* %221, i32** %l_2436, align 8, !tbaa !5
  %222 = bitcast i32** %l_2437 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %222) #1
  store i32* null, i32** %l_2437, align 8, !tbaa !5
  %223 = bitcast i32** %l_2438 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %223) #1
  store i32* %l_2208, i32** %l_2438, align 8, !tbaa !5
  %224 = bitcast i32* %l_2439 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %224) #1
  store i32 -1, i32* %l_2439, align 4, !tbaa !1
  %225 = bitcast [2 x [10 x [1 x i32]]]* %l_2440 to i8*
  call void @llvm.lifetime.start(i64 80, i8* %225) #1
  %226 = bitcast [2 x [10 x [1 x i32]]]* %l_2440 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %226, i8* bitcast ([2 x [10 x [1 x i32]]]* @func_26.l_2440 to i8*), i64 80, i32 16, i1 false)
  %227 = bitcast i32** %l_2441 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %227) #1
  store i32* %l_2064, i32** %l_2441, align 8, !tbaa !5
  %228 = bitcast i32** %l_2442 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %228) #1
  store i32* @g_469, i32** %l_2442, align 8, !tbaa !5
  %229 = bitcast i32** %l_2444 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %229) #1
  store i32* @g_469, i32** %l_2444, align 8, !tbaa !5
  %230 = bitcast i32** %l_2445 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %230) #1
  store i32* null, i32** %l_2445, align 8, !tbaa !5
  %231 = bitcast [1 x [6 x i32*]]* %l_2446 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %231) #1
  %232 = getelementptr inbounds [1 x [6 x i32*]], [1 x [6 x i32*]]* %l_2446, i64 0, i64 0
  %233 = getelementptr inbounds [6 x i32*], [6 x i32*]* %232, i64 0, i64 0
  store i32* null, i32** %233, !tbaa !5
  %234 = getelementptr inbounds i32*, i32** %233, i64 1
  %235 = getelementptr inbounds [2 x [10 x [1 x i32]]], [2 x [10 x [1 x i32]]]* %l_2440, i32 0, i64 0
  %236 = getelementptr inbounds [10 x [1 x i32]], [10 x [1 x i32]]* %235, i32 0, i64 7
  %237 = getelementptr inbounds [1 x i32], [1 x i32]* %236, i32 0, i64 0
  store i32* %237, i32** %234, !tbaa !5
  %238 = getelementptr inbounds i32*, i32** %234, i64 1
  store i32* null, i32** %238, !tbaa !5
  %239 = getelementptr inbounds i32*, i32** %238, i64 1
  store i32* null, i32** %239, !tbaa !5
  %240 = getelementptr inbounds i32*, i32** %239, i64 1
  %241 = getelementptr inbounds [2 x [10 x [1 x i32]]], [2 x [10 x [1 x i32]]]* %l_2440, i32 0, i64 0
  %242 = getelementptr inbounds [10 x [1 x i32]], [10 x [1 x i32]]* %241, i32 0, i64 7
  %243 = getelementptr inbounds [1 x i32], [1 x i32]* %242, i32 0, i64 0
  store i32* %243, i32** %240, !tbaa !5
  %244 = getelementptr inbounds i32*, i32** %240, i64 1
  store i32* null, i32** %244, !tbaa !5
  %245 = bitcast i32* %l_2453 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %245) #1
  store i32 1, i32* %l_2453, align 4, !tbaa !1
  %246 = bitcast i64** %l_2462 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %246) #1
  store i64* null, i64** %l_2462, align 8, !tbaa !5
  %247 = bitcast i64*** %l_2461 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %247) #1
  store i64** %l_2462, i64*** %l_2461, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_2520) #1
  store i8 -62, i8* %l_2520, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %l_2577) #1
  store i8 0, i8* %l_2577, align 1, !tbaa !9
  %248 = bitcast i32* %i5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %248) #1
  %249 = bitcast i32* %j6 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %249) #1
  %250 = bitcast i32* %k7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %250) #1
  %251 = getelementptr inbounds [4 x [6 x [6 x i32]]], [4 x [6 x [6 x i32]]]* %l_2454, i32 0, i64 2
  %252 = getelementptr inbounds [6 x [6 x i32]], [6 x [6 x i32]]* %251, i32 0, i64 5
  %253 = getelementptr inbounds [6 x i32], [6 x i32]* %252, i32 0, i64 4
  %254 = load i32, i32* %253, align 4, !tbaa !1
  %255 = add i32 %254, 1
  store i32 %255, i32* %253, align 4, !tbaa !1
  %256 = bitcast i32* %k7 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %256) #1
  %257 = bitcast i32* %j6 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %257) #1
  %258 = bitcast i32* %i5 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %258) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_2577) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_2520) #1
  %259 = bitcast i64*** %l_2461 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %259) #1
  %260 = bitcast i64** %l_2462 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %260) #1
  %261 = bitcast i32* %l_2453 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %261) #1
  %262 = bitcast [1 x [6 x i32*]]* %l_2446 to i8*
  call void @llvm.lifetime.end(i64 48, i8* %262) #1
  %263 = bitcast i32** %l_2445 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %263) #1
  %264 = bitcast i32** %l_2444 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %264) #1
  %265 = bitcast i32** %l_2442 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %265) #1
  %266 = bitcast i32** %l_2441 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %266) #1
  %267 = bitcast [2 x [10 x [1 x i32]]]* %l_2440 to i8*
  call void @llvm.lifetime.end(i64 80, i8* %267) #1
  %268 = bitcast i32* %l_2439 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %268) #1
  %269 = bitcast i32** %l_2438 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %269) #1
  %270 = bitcast i32** %l_2437 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %270) #1
  %271 = bitcast i32** %l_2436 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %271) #1
  %272 = bitcast i32** %l_2435 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %272) #1
  br label %273

; <label>:273                                     ; preds = %217
  %274 = load i64, i64* %4, align 8, !tbaa !7
  %275 = sub nsw i64 %274, 1
  store i64 %275, i64* %4, align 8, !tbaa !7
  br label %214

; <label>:276                                     ; preds = %214
  %277 = load volatile i64*, i64** @g_2550, align 8, !tbaa !5
  %278 = load volatile i64, i64* %277, align 8, !tbaa !7
  store i64 %278, i64* %1
  store i32 1, i32* %6
  %279 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %279) #1
  %280 = bitcast i32* %j4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %280) #1
  %281 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %281) #1
  %282 = bitcast i16** %l_2544 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %282) #1
  %283 = bitcast i64*** %l_2460 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %283) #1
  %284 = bitcast [4 x [6 x [6 x i32]]]* %l_2454 to i8*
  call void @llvm.lifetime.end(i64 576, i8* %284) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_2452) #1
  %285 = bitcast [10 x [6 x i32]]* %l_2450 to i8*
  call void @llvm.lifetime.end(i64 240, i8* %285) #1
  %286 = bitcast i32* %l_2448 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %286) #1
  %287 = bitcast i32* %l_2447 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %287) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_2443) #1
  br label %298
                                                  ; No predecessors!
  %289 = load i16, i16* @g_411, align 2, !tbaa !10
  %290 = add i16 %289, 1
  store i16 %290, i16* @g_411, align 2, !tbaa !10
  br label %198

; <label>:291                                     ; preds = %198
  %292 = load i32****, i32***** %l_2315, align 8, !tbaa !5
  %293 = load i32***, i32**** %292, align 8, !tbaa !5
  %294 = load i32**, i32*** %293, align 8, !tbaa !5
  %295 = load i32*, i32** %294, align 8, !tbaa !5
  %296 = load i32, i32* %295, align 4, !tbaa !1
  %297 = sext i32 %296 to i64
  store i64 %297, i64* %1
  store i32 1, i32* %6
  br label %298

; <label>:298                                     ; preds = %291, %276
  %299 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %299) #1
  %300 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %300) #1
  %301 = bitcast [2 x i64*]* %l_2505 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %301) #1
  %302 = bitcast i64* %l_2451 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %302) #1
  %303 = bitcast i64* %l_2449 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %303) #1
  %304 = bitcast i8****** %l_2432 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %304) #1
  %305 = bitcast [10 x i16*]* %l_2431 to i8*
  call void @llvm.lifetime.end(i64 80, i8* %305) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_2426) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_2411) #1
  %306 = bitcast i32***** %l_2315 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %306) #1
  %307 = bitcast i16* %l_2235 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %307) #1
  %308 = bitcast [2 x [6 x i32]]* %l_2223 to i8*
  call void @llvm.lifetime.end(i64 48, i8* %308) #1
  %309 = bitcast i32* %l_2208 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %309) #1
  %310 = bitcast i32**** %l_2173 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %310) #1
  %311 = bitcast i32**** %l_2171 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %311) #1
  %312 = bitcast i32*** %l_2172 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %312) #1
  %313 = bitcast i32* %l_2064 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %313) #1
  %314 = bitcast i32** %l_664 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %314) #1
  %315 = bitcast i32* %l_169 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %315) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_38) #1
  %316 = load i64, i64* %1
  ret i64 %316
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
define internal i32 @safe_add_func_int32_t_s_s(i32 %si1, i32 %si2) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %si1, i32* %1, align 4, !tbaa !1
  store i32 %si2, i32* %2, align 4, !tbaa !1
  %3 = load i32, i32* %1, align 4, !tbaa !1
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %13

; <label>:5                                       ; preds = %0
  %6 = load i32, i32* %2, align 4, !tbaa !1
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %13

; <label>:8                                       ; preds = %5
  %9 = load i32, i32* %1, align 4, !tbaa !1
  %10 = load i32, i32* %2, align 4, !tbaa !1
  %11 = sub nsw i32 2147483647, %10
  %12 = icmp sgt i32 %9, %11
  br i1 %12, label %24, label %13

; <label>:13                                      ; preds = %8, %5, %0
  %14 = load i32, i32* %1, align 4, !tbaa !1
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %26

; <label>:16                                      ; preds = %13
  %17 = load i32, i32* %2, align 4, !tbaa !1
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %26

; <label>:19                                      ; preds = %16
  %20 = load i32, i32* %1, align 4, !tbaa !1
  %21 = load i32, i32* %2, align 4, !tbaa !1
  %22 = sub nsw i32 -2147483648, %21
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %26

; <label>:24                                      ; preds = %19, %8
  %25 = load i32, i32* %1, align 4, !tbaa !1
  br label %30

; <label>:26                                      ; preds = %19, %16, %13
  %27 = load i32, i32* %1, align 4, !tbaa !1
  %28 = load i32, i32* %2, align 4, !tbaa !1
  %29 = add nsw i32 %27, %28
  br label %30

; <label>:30                                      ; preds = %26, %24
  %31 = phi i32 [ %25, %24 ], [ %29, %26 ]
  ret i32 %31
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
define internal zeroext i8 @safe_lshift_func_uint8_t_u_u(i8 zeroext %left, i32 %right) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i32, align 4
  store i8 %left, i8* %1, align 1, !tbaa !9
  store i32 %right, i32* %2, align 4, !tbaa !1
  %3 = load i32, i32* %2, align 4, !tbaa !1
  %4 = icmp uge i32 %3, 32
  br i1 %4, label %11, label %5

; <label>:5                                       ; preds = %0
  %6 = load i8, i8* %1, align 1, !tbaa !9
  %7 = zext i8 %6 to i32
  %8 = load i32, i32* %2, align 4, !tbaa !1
  %9 = ashr i32 255, %8
  %10 = icmp sgt i32 %7, %9
  br i1 %10, label %11, label %14

; <label>:11                                      ; preds = %5, %0
  %12 = load i8, i8* %1, align 1, !tbaa !9
  %13 = zext i8 %12 to i32
  br label %19

; <label>:14                                      ; preds = %5
  %15 = load i8, i8* %1, align 1, !tbaa !9
  %16 = zext i8 %15 to i32
  %17 = load i32, i32* %2, align 4, !tbaa !1
  %18 = shl i32 %16, %17
  br label %19

; <label>:19                                      ; preds = %14, %11
  %20 = phi i32 [ %13, %11 ], [ %18, %14 ]
  %21 = trunc i32 %20 to i8
  ret i8 %21
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
define internal zeroext i16 @safe_rshift_func_uint16_t_u_s(i16 zeroext %left, i32 %right) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i32, align 4
  store i16 %left, i16* %1, align 2, !tbaa !10
  store i32 %right, i32* %2, align 4, !tbaa !1
  %3 = load i32, i32* %2, align 4, !tbaa !1
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %8, label %5

; <label>:5                                       ; preds = %0
  %6 = load i32, i32* %2, align 4, !tbaa !1
  %7 = icmp sge i32 %6, 32
  br i1 %7, label %8, label %11

; <label>:8                                       ; preds = %5, %0
  %9 = load i16, i16* %1, align 2, !tbaa !10
  %10 = zext i16 %9 to i32
  br label %16

; <label>:11                                      ; preds = %5
  %12 = load i16, i16* %1, align 2, !tbaa !10
  %13 = zext i16 %12 to i32
  %14 = load i32, i32* %2, align 4, !tbaa !1
  %15 = ashr i32 %13, %14
  br label %16

; <label>:16                                      ; preds = %11, %8
  %17 = phi i32 [ %10, %8 ], [ %15, %11 ]
  %18 = trunc i32 %17 to i16
  ret i16 %18
}

; Function Attrs: nounwind uwtable
define internal i32 @safe_mod_func_uint32_t_u_u(i32 %ui1, i32 %ui2) #0 {
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
  %10 = urem i32 %8, %9
  br label %11

; <label>:11                                      ; preds = %7, %5
  %12 = phi i32 [ %6, %5 ], [ %10, %7 ]
  ret i32 %12
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
define internal zeroext i16 @safe_add_func_uint16_t_u_u(i16 zeroext %ui1, i16 zeroext %ui2) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i16, align 2
  store i16 %ui1, i16* %1, align 2, !tbaa !10
  store i16 %ui2, i16* %2, align 2, !tbaa !10
  %3 = load i16, i16* %1, align 2, !tbaa !10
  %4 = zext i16 %3 to i32
  %5 = load i16, i16* %2, align 2, !tbaa !10
  %6 = zext i16 %5 to i32
  %7 = add nsw i32 %4, %6
  %8 = trunc i32 %7 to i16
  ret i16 %8
}

; Function Attrs: nounwind uwtable
define internal signext i16 @safe_add_func_int16_t_s_s(i16 signext %si1, i16 signext %si2) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i16, align 2
  store i16 %si1, i16* %1, align 2, !tbaa !10
  store i16 %si2, i16* %2, align 2, !tbaa !10
  %3 = load i16, i16* %1, align 2, !tbaa !10
  %4 = sext i16 %3 to i32
  %5 = load i16, i16* %2, align 2, !tbaa !10
  %6 = sext i16 %5 to i32
  %7 = add nsw i32 %4, %6
  %8 = trunc i32 %7 to i16
  ret i16 %8
}

; Function Attrs: nounwind uwtable
define internal signext i8 @safe_mod_func_int8_t_s_s(i8 signext %si1, i8 signext %si2) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  store i8 %si1, i8* %1, align 1, !tbaa !9
  store i8 %si2, i8* %2, align 1, !tbaa !9
  %3 = load i8, i8* %2, align 1, !tbaa !9
  %4 = sext i8 %3 to i32
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %14, label %6

; <label>:6                                       ; preds = %0
  %7 = load i8, i8* %1, align 1, !tbaa !9
  %8 = sext i8 %7 to i32
  %9 = icmp eq i32 %8, -128
  br i1 %9, label %10, label %17

; <label>:10                                      ; preds = %6
  %11 = load i8, i8* %2, align 1, !tbaa !9
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %17

; <label>:14                                      ; preds = %10, %0
  %15 = load i8, i8* %1, align 1, !tbaa !9
  %16 = sext i8 %15 to i32
  br label %23

; <label>:17                                      ; preds = %10, %6
  %18 = load i8, i8* %1, align 1, !tbaa !9
  %19 = sext i8 %18 to i32
  %20 = load i8, i8* %2, align 1, !tbaa !9
  %21 = sext i8 %20 to i32
  %22 = srem i32 %19, %21
  br label %23

; <label>:23                                      ; preds = %17, %14
  %24 = phi i32 [ %16, %14 ], [ %22, %17 ]
  %25 = trunc i32 %24 to i8
  ret i8 %25
}

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

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

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
define internal zeroext i8 @safe_lshift_func_uint8_t_u_s(i8 zeroext %left, i32 %right) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i32, align 4
  store i8 %left, i8* %1, align 1, !tbaa !9
  store i32 %right, i32* %2, align 4, !tbaa !1
  %3 = load i32, i32* %2, align 4, !tbaa !1
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %14, label %5

; <label>:5                                       ; preds = %0
  %6 = load i32, i32* %2, align 4, !tbaa !1
  %7 = icmp sge i32 %6, 32
  br i1 %7, label %14, label %8

; <label>:8                                       ; preds = %5
  %9 = load i8, i8* %1, align 1, !tbaa !9
  %10 = zext i8 %9 to i32
  %11 = load i32, i32* %2, align 4, !tbaa !1
  %12 = ashr i32 255, %11
  %13 = icmp sgt i32 %10, %12
  br i1 %13, label %14, label %17

; <label>:14                                      ; preds = %8, %5, %0
  %15 = load i8, i8* %1, align 1, !tbaa !9
  %16 = zext i8 %15 to i32
  br label %22

; <label>:17                                      ; preds = %8
  %18 = load i8, i8* %1, align 1, !tbaa !9
  %19 = zext i8 %18 to i32
  %20 = load i32, i32* %2, align 4, !tbaa !1
  %21 = shl i32 %19, %20
  br label %22

; <label>:22                                      ; preds = %17, %14
  %23 = phi i32 [ %16, %14 ], [ %21, %17 ]
  %24 = trunc i32 %23 to i8
  ret i8 %24
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
