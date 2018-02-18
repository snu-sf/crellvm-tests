; ModuleID = '00189.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_2 = internal global i32 9, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"g_2\00", align 1
@g_3 = internal global i32 802430549, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"g_3\00", align 1
@g_4 = internal global i32 1626700412, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"g_4\00", align 1
@g_8 = internal global i32 -1988839834, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"g_8\00", align 1
@g_10 = internal global i8 0, align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"g_10\00", align 1
@g_59 = internal global i32 2, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"g_59\00", align 1
@g_61 = internal global [3 x i32] [i32 1243264772, i32 1243264772, i32 1243264772], align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"g_61[i]\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_99 = internal global i32 811803680, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"g_99\00", align 1
@g_113 = internal global [8 x [5 x [6 x i32]]] [[5 x [6 x i32]] [[6 x i32] [i32 1423092786, i32 0, i32 -4, i32 864379947, i32 1, i32 -102763431], [6 x i32] [i32 -1, i32 -1, i32 1423092786, i32 1423092786, i32 -1, i32 -1], [6 x i32] [i32 1, i32 0, i32 0, i32 1, i32 -6, i32 -1], [6 x i32] [i32 0, i32 -4, i32 -6, i32 -1, i32 -283901209, i32 -1], [6 x i32] [i32 0, i32 -1183052913, i32 -1, i32 1, i32 -1, i32 -1183052913]], [5 x [6 x i32]] [[6 x i32] [i32 1, i32 -6, i32 864379947, i32 1423092786, i32 -1183052913, i32 0], [6 x i32] [i32 -1, i32 286267180, i32 1, i32 864379947, i32 -102763431, i32 -1], [6 x i32] [i32 1423092786, i32 286267180, i32 0, i32 -1183052913, i32 -1183052913, i32 0], [6 x i32] [i32 -6, i32 -6, i32 286267180, i32 1, i32 -1, i32 0], [6 x i32] [i32 -4, i32 -1183052913, i32 -1, i32 -1, i32 -283901209, i32 286267180]], [5 x [6 x i32]] [[6 x i32] [i32 -102763431, i32 -4, i32 -1, i32 0, i32 -6, i32 0], [6 x i32] [i32 286267180, i32 0, i32 286267180, i32 0, i32 -1, i32 0], [6 x i32] [i32 0, i32 -1, i32 0, i32 -283901209, i32 1, i32 -1], [6 x i32] [i32 1, i32 0, i32 1, i32 -283901209, i32 0, i32 0], [6 x i32] [i32 0, i32 864379947, i32 864379947, i32 0, i32 -4, i32 -1183052913]], [5 x [6 x i32]] [[6 x i32] [i32 286267180, i32 1, i32 -1, i32 0, i32 1, i32 -1], [6 x i32] [i32 -102763431, i32 -283901209, i32 -6, i32 -1, i32 1, i32 -1], [6 x i32] [i32 -4, i32 1, i32 0, i32 1, i32 -4, i32 -1], [6 x i32] [i32 -6, i32 864379947, i32 1423092786, i32 -1183052913, i32 0, i32 -102763431], [6 x i32] [i32 1423092786, i32 0, i32 -4, i32 864379947, i32 1, i32 -102763431]], [5 x [6 x i32]] [[6 x i32] [i32 -1, i32 -1, i32 1423092786, i32 1423092786, i32 -1, i32 -1], [6 x i32] [i32 1, i32 0, i32 0, i32 1, i32 -6, i32 -1], [6 x i32] [i32 0, i32 -4, i32 -6, i32 -1, i32 -283901209, i32 -1], [6 x i32] [i32 0, i32 -1, i32 -4, i32 1423092786, i32 -4, i32 -1], [6 x i32] [i32 -1183052913, i32 -102763431, i32 -6, i32 0, i32 -1, i32 286267180]], [5 x [6 x i32]] [[6 x i32] [i32 1, i32 1, i32 1423092786, i32 -6, i32 9, i32 -4], [6 x i32] [i32 0, i32 1, i32 -1, i32 -1, i32 -1, i32 -1], [6 x i32] [i32 -102763431, i32 -102763431, i32 1, i32 864379947, i32 -4, i32 0], [6 x i32] [i32 1, i32 -1, i32 0, i32 1, i32 -1, i32 1], [6 x i32] [i32 9, i32 1, i32 0, i32 0, i32 -102763431, i32 0]], [5 x [6 x i32]] [[6 x i32] [i32 1, i32 0, i32 1, i32 286267180, i32 -283901209, i32 -1], [6 x i32] [i32 286267180, i32 -283901209, i32 -1, i32 -1, i32 -1183052913, i32 -4], [6 x i32] [i32 864379947, i32 -1, i32 1423092786, i32 -1, i32 286267180, i32 286267180], [6 x i32] [i32 286267180, i32 -6, i32 -6, i32 286267180, i32 1, i32 -1], [6 x i32] [i32 1, i32 864379947, i32 -4, i32 0, i32 1423092786, i32 0]], [5 x [6 x i32]] [[6 x i32] [i32 9, i32 -1, i32 -102763431, i32 1, i32 1423092786, i32 -283901209], [6 x i32] [i32 1, i32 864379947, i32 286267180, i32 864379947, i32 1, i32 1], [6 x i32] [i32 -102763431, i32 -6, i32 0, i32 -1, i32 286267180, i32 9], [6 x i32] [i32 0, i32 -1, i32 1, i32 -6, i32 -1183052913, i32 9], [6 x i32] [i32 1, i32 -283901209, i32 0, i32 0, i32 -283901209, i32 1]]], align 16
@.str.10 = private unnamed_addr constant [15 x i8] c"g_113[i][j][k]\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"index = [%d][%d][%d]\0A\00", align 1
@g_134 = internal global i8 15, align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"g_134\00", align 1
@g_145 = internal global i64 -7439918811276192847, align 8
@.str.13 = private unnamed_addr constant [6 x i8] c"g_145\00", align 1
@g_154 = internal global i8 -74, align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"g_154\00", align 1
@g_196 = internal global i64 2, align 8
@.str.15 = private unnamed_addr constant [6 x i8] c"g_196\00", align 1
@g_198 = internal global i16 3, align 2
@.str.16 = private unnamed_addr constant [6 x i8] c"g_198\00", align 1
@g_200 = internal global i32 -392111229, align 4
@.str.17 = private unnamed_addr constant [6 x i8] c"g_200\00", align 1
@g_204 = internal global i32 1830437407, align 4
@.str.18 = private unnamed_addr constant [6 x i8] c"g_204\00", align 1
@g_215 = internal global i8 8, align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"g_215\00", align 1
@g_241 = internal global i64 -9, align 8
@.str.20 = private unnamed_addr constant [6 x i8] c"g_241\00", align 1
@g_249 = internal global i32 1, align 4
@.str.21 = private unnamed_addr constant [6 x i8] c"g_249\00", align 1
@g_262 = internal global i32 -2, align 4
@.str.22 = private unnamed_addr constant [6 x i8] c"g_262\00", align 1
@g_328 = internal global [9 x i16] [i16 30595, i16 30595, i16 30595, i16 30595, i16 30595, i16 30595, i16 30595, i16 30595, i16 30595], align 16
@.str.23 = private unnamed_addr constant [9 x i8] c"g_328[i]\00", align 1
@g_481 = internal global i32 1, align 4
@.str.24 = private unnamed_addr constant [6 x i8] c"g_481\00", align 1
@g_504 = internal global [2 x i64] [i64 1, i64 1], align 16
@.str.25 = private unnamed_addr constant [9 x i8] c"g_504[i]\00", align 1
@g_513 = internal global i64 1, align 8
@.str.26 = private unnamed_addr constant [6 x i8] c"g_513\00", align 1
@g_605 = internal global i8 -1, align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"g_605\00", align 1
@g_642 = internal global i64 1, align 8
@.str.28 = private unnamed_addr constant [6 x i8] c"g_642\00", align 1
@g_710 = internal global i64 0, align 8
@.str.29 = private unnamed_addr constant [6 x i8] c"g_710\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"g_765\00", align 1
@g_798 = internal global i8 0, align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"g_798\00", align 1
@g_845 = internal global i64 -1, align 8
@.str.32 = private unnamed_addr constant [6 x i8] c"g_845\00", align 1
@g_857 = internal global [9 x [8 x i32]] zeroinitializer, align 16
@.str.33 = private unnamed_addr constant [12 x i8] c"g_857[i][j]\00", align 1
@.str.34 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"g_861\00", align 1
@g_868 = internal global i8 -9, align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"g_868\00", align 1
@g_1095 = internal global i32 -3, align 4
@.str.37 = private unnamed_addr constant [7 x i8] c"g_1095\00", align 1
@g_1104 = internal global i64 -2, align 8
@.str.38 = private unnamed_addr constant [7 x i8] c"g_1104\00", align 1
@g_1210 = internal global [8 x i16] [i16 -17216, i16 -17216, i16 -17216, i16 -17216, i16 -17216, i16 -17216, i16 -17216, i16 -17216], align 16
@.str.39 = private unnamed_addr constant [10 x i8] c"g_1210[i]\00", align 1
@g_1212 = internal global i16 2436, align 2
@.str.40 = private unnamed_addr constant [7 x i8] c"g_1212\00", align 1
@g_1234 = internal global [1 x i8] c"\1D", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"g_1234[i]\00", align 1
@g_1253 = internal global i16 5, align 2
@.str.42 = private unnamed_addr constant [7 x i8] c"g_1253\00", align 1
@g_1376 = internal global i16 0, align 2
@.str.43 = private unnamed_addr constant [7 x i8] c"g_1376\00", align 1
@g_1377 = internal global i16 -10784, align 2
@.str.44 = private unnamed_addr constant [7 x i8] c"g_1377\00", align 1
@g_1378 = internal global i16 -4, align 2
@.str.45 = private unnamed_addr constant [7 x i8] c"g_1378\00", align 1
@g_1379 = internal global [7 x i16] [i16 23197, i16 23197, i16 23197, i16 23197, i16 23197, i16 23197, i16 23197], align 2
@.str.46 = private unnamed_addr constant [10 x i8] c"g_1379[i]\00", align 1
@g_1380 = internal global i16 -32196, align 2
@.str.47 = private unnamed_addr constant [7 x i8] c"g_1380\00", align 1
@g_1381 = internal global i16 1, align 2
@.str.48 = private unnamed_addr constant [7 x i8] c"g_1381\00", align 1
@g_1382 = internal global i16 -7291, align 2
@.str.49 = private unnamed_addr constant [7 x i8] c"g_1382\00", align 1
@g_1383 = internal global i16 -1, align 2
@.str.50 = private unnamed_addr constant [7 x i8] c"g_1383\00", align 1
@g_1384 = internal global i16 -19965, align 2
@.str.51 = private unnamed_addr constant [7 x i8] c"g_1384\00", align 1
@g_1385 = internal global [3 x i16] [i16 -1, i16 -1, i16 -1], align 2
@.str.52 = private unnamed_addr constant [10 x i8] c"g_1385[i]\00", align 1
@g_1386 = internal global i16 -5148, align 2
@.str.53 = private unnamed_addr constant [7 x i8] c"g_1386\00", align 1
@g_1387 = internal global i16 -21610, align 2
@.str.54 = private unnamed_addr constant [7 x i8] c"g_1387\00", align 1
@g_1388 = internal global i16 0, align 2
@.str.55 = private unnamed_addr constant [7 x i8] c"g_1388\00", align 1
@g_1389 = internal global i16 -12347, align 2
@.str.56 = private unnamed_addr constant [7 x i8] c"g_1389\00", align 1
@g_1390 = internal global i16 16907, align 2
@.str.57 = private unnamed_addr constant [7 x i8] c"g_1390\00", align 1
@g_1391 = internal global i16 26110, align 2
@.str.58 = private unnamed_addr constant [7 x i8] c"g_1391\00", align 1
@g_1392 = internal global [3 x [2 x i16]] [[2 x i16] [i16 1, i16 8558], [2 x i16] [i16 1, i16 1], [2 x i16] [i16 8558, i16 1]], align 2
@.str.59 = private unnamed_addr constant [13 x i8] c"g_1392[i][j]\00", align 1
@g_1393 = internal global [2 x [3 x [9 x i16]]] [[3 x [9 x i16]] [[9 x i16] [i16 -30503, i16 9281, i16 18828, i16 -30503, i16 2, i16 -27590, i16 21996, i16 -6, i16 30818], [9 x i16] [i16 21996, i16 9281, i16 4744, i16 21996, i16 2, i16 -6, i16 -1, i16 -6, i16 2], [9 x i16] [i16 -1, i16 9281, i16 9281, i16 -1, i16 2, i16 -31025, i16 -30503, i16 -6, i16 3]], [3 x [9 x i16]] [[9 x i16] [i16 18828, i16 -19355, i16 -8, i16 18828, i16 0, i16 8, i16 9281, i16 0, i16 5], [9 x i16] [i16 9281, i16 -19355, i16 -10, i16 9281, i16 0, i16 0, i16 4744, i16 0, i16 0], [9 x i16] [i16 4744, i16 -19355, i16 -19355, i16 4744, i16 0, i16 6, i16 18828, i16 0, i16 27135]]], align 16
@.str.60 = private unnamed_addr constant [16 x i8] c"g_1393[i][j][k]\00", align 1
@g_1394 = internal global i16 27042, align 2
@.str.61 = private unnamed_addr constant [7 x i8] c"g_1394\00", align 1
@g_1395 = internal global i16 16768, align 2
@.str.62 = private unnamed_addr constant [7 x i8] c"g_1395\00", align 1
@g_1396 = internal global i16 -9062, align 2
@.str.63 = private unnamed_addr constant [7 x i8] c"g_1396\00", align 1
@g_1397 = internal global i16 28594, align 2
@.str.64 = private unnamed_addr constant [7 x i8] c"g_1397\00", align 1
@g_1398 = internal global i16 21430, align 2
@.str.65 = private unnamed_addr constant [7 x i8] c"g_1398\00", align 1
@g_1399 = internal global [7 x i16] [i16 -3, i16 -3, i16 -3, i16 -3, i16 -3, i16 -3, i16 -3], align 2
@.str.66 = private unnamed_addr constant [10 x i8] c"g_1399[i]\00", align 1
@g_1400 = internal global i16 -1, align 2
@.str.67 = private unnamed_addr constant [7 x i8] c"g_1400\00", align 1
@g_1401 = internal global i16 19480, align 2
@.str.68 = private unnamed_addr constant [7 x i8] c"g_1401\00", align 1
@g_1402 = internal global [6 x [1 x i16]] [[1 x i16] [i16 -29470], [1 x i16] [i16 14458], [1 x i16] [i16 14458], [1 x i16] [i16 -29470], [1 x i16] [i16 14458], [1 x i16] [i16 14458]], align 2
@.str.69 = private unnamed_addr constant [13 x i8] c"g_1402[i][j]\00", align 1
@g_1403 = internal global i16 3, align 2
@.str.70 = private unnamed_addr constant [7 x i8] c"g_1403\00", align 1
@g_1404 = internal global i16 -1, align 2
@.str.71 = private unnamed_addr constant [7 x i8] c"g_1404\00", align 1
@g_1405 = internal global i16 4, align 2
@.str.72 = private unnamed_addr constant [7 x i8] c"g_1405\00", align 1
@g_1406 = internal global i16 -8, align 2
@.str.73 = private unnamed_addr constant [7 x i8] c"g_1406\00", align 1
@g_1407 = internal global i16 17761, align 2
@.str.74 = private unnamed_addr constant [7 x i8] c"g_1407\00", align 1
@g_1408 = internal global i16 -30030, align 2
@.str.75 = private unnamed_addr constant [7 x i8] c"g_1408\00", align 1
@g_1409 = internal global i16 0, align 2
@.str.76 = private unnamed_addr constant [7 x i8] c"g_1409\00", align 1
@g_1410 = internal global i16 1, align 2
@.str.77 = private unnamed_addr constant [7 x i8] c"g_1410\00", align 1
@g_1411 = internal global i16 -1, align 2
@.str.78 = private unnamed_addr constant [7 x i8] c"g_1411\00", align 1
@g_1412 = internal global i16 -1, align 2
@.str.79 = private unnamed_addr constant [7 x i8] c"g_1412\00", align 1
@g_1413 = internal global i16 -19628, align 2
@.str.80 = private unnamed_addr constant [7 x i8] c"g_1413\00", align 1
@g_1414 = internal global i16 25961, align 2
@.str.81 = private unnamed_addr constant [7 x i8] c"g_1414\00", align 1
@g_1415 = internal global i16 8, align 2
@.str.82 = private unnamed_addr constant [7 x i8] c"g_1415\00", align 1
@g_1416 = internal global i16 -5, align 2
@.str.83 = private unnamed_addr constant [7 x i8] c"g_1416\00", align 1
@g_1417 = internal global i16 23504, align 2
@.str.84 = private unnamed_addr constant [7 x i8] c"g_1417\00", align 1
@g_1418 = internal global i16 -20779, align 2
@.str.85 = private unnamed_addr constant [7 x i8] c"g_1418\00", align 1
@g_1419 = internal global i16 4, align 2
@.str.86 = private unnamed_addr constant [7 x i8] c"g_1419\00", align 1
@g_1420 = internal global i16 -23931, align 2
@.str.87 = private unnamed_addr constant [7 x i8] c"g_1420\00", align 1
@g_1421 = internal global i16 -18753, align 2
@.str.88 = private unnamed_addr constant [7 x i8] c"g_1421\00", align 1
@g_1422 = internal global i16 0, align 2
@.str.89 = private unnamed_addr constant [7 x i8] c"g_1422\00", align 1
@g_1423 = internal global [6 x i16] [i16 -19564, i16 -22944, i16 -19564, i16 -19564, i16 -22944, i16 -19564], align 2
@.str.90 = private unnamed_addr constant [10 x i8] c"g_1423[i]\00", align 1
@g_1424 = internal global i16 0, align 2
@.str.91 = private unnamed_addr constant [7 x i8] c"g_1424\00", align 1
@g_1425 = internal global i16 8464, align 2
@.str.92 = private unnamed_addr constant [7 x i8] c"g_1425\00", align 1
@g_1426 = internal global [8 x [6 x i16]] [[6 x i16] [i16 18816, i16 -11546, i16 -1, i16 -9725, i16 14554, i16 14554], [6 x i16] [i16 -11546, i16 -1, i16 -1, i16 -11546, i16 -27701, i16 14554], [6 x i16] [i16 -5, i16 14554, i16 -1, i16 3, i16 -9725, i16 3], [6 x i16] [i16 -27701, i16 -2494, i16 -27701, i16 -18611, i16 -9725, i16 18816], [6 x i16] [i16 -1, i16 14554, i16 -5, i16 -27701, i16 -27701, i16 -5], [6 x i16] [i16 -1, i16 -1, i16 -11546, i16 -27701, i16 14554, i16 -18611], [6 x i16] [i16 -1, i16 -11546, i16 18816, i16 -18611, i16 18816, i16 -11546], [6 x i16] [i16 -27701, i16 -1, i16 18816, i16 3, i16 -1, i16 -18611]], align 16
@.str.93 = private unnamed_addr constant [13 x i8] c"g_1426[i][j]\00", align 1
@g_1427 = internal global i16 -10, align 2
@.str.94 = private unnamed_addr constant [7 x i8] c"g_1427\00", align 1
@g_1428 = internal global i16 30478, align 2
@.str.95 = private unnamed_addr constant [7 x i8] c"g_1428\00", align 1
@g_1429 = internal global [9 x i16] [i16 -11618, i16 17882, i16 -11618, i16 17882, i16 -11618, i16 17882, i16 -11618, i16 17882, i16 -11618], align 16
@.str.96 = private unnamed_addr constant [10 x i8] c"g_1429[i]\00", align 1
@g_1430 = internal global i16 -1, align 2
@.str.97 = private unnamed_addr constant [7 x i8] c"g_1430\00", align 1
@g_1431 = internal global i16 2448, align 2
@.str.98 = private unnamed_addr constant [7 x i8] c"g_1431\00", align 1
@g_1432 = internal global i16 28040, align 2
@.str.99 = private unnamed_addr constant [7 x i8] c"g_1432\00", align 1
@g_1433 = internal global i16 2, align 2
@.str.100 = private unnamed_addr constant [7 x i8] c"g_1433\00", align 1
@g_1434 = internal global i16 -23635, align 2
@.str.101 = private unnamed_addr constant [7 x i8] c"g_1434\00", align 1
@g_1435 = internal global i16 4, align 2
@.str.102 = private unnamed_addr constant [7 x i8] c"g_1435\00", align 1
@g_1436 = internal global i16 1, align 2
@.str.103 = private unnamed_addr constant [7 x i8] c"g_1436\00", align 1
@g_1437 = internal global i16 19372, align 2
@.str.104 = private unnamed_addr constant [7 x i8] c"g_1437\00", align 1
@g_1438 = internal global [1 x i16] [i16 10661], align 2
@.str.105 = private unnamed_addr constant [10 x i8] c"g_1438[i]\00", align 1
@g_1439 = internal global [3 x i16] [i16 -9, i16 -9, i16 -9], align 2
@.str.106 = private unnamed_addr constant [10 x i8] c"g_1439[i]\00", align 1
@g_1440 = internal global i16 -1, align 2
@.str.107 = private unnamed_addr constant [7 x i8] c"g_1440\00", align 1
@g_1441 = internal global i16 11617, align 2
@.str.108 = private unnamed_addr constant [7 x i8] c"g_1441\00", align 1
@g_1442 = internal global i16 -1, align 2
@.str.109 = private unnamed_addr constant [7 x i8] c"g_1442\00", align 1
@g_1443 = internal global i16 -13954, align 2
@.str.110 = private unnamed_addr constant [7 x i8] c"g_1443\00", align 1
@g_1689 = internal global i32 263064766, align 4
@.str.111 = private unnamed_addr constant [7 x i8] c"g_1689\00", align 1
@g_1738 = internal global i16 -21938, align 2
@.str.112 = private unnamed_addr constant [7 x i8] c"g_1738\00", align 1
@.str.113 = private unnamed_addr constant [7 x i8] c"g_1806\00", align 1
@g_2013 = internal global i8 -1, align 1
@.str.114 = private unnamed_addr constant [7 x i8] c"g_2013\00", align 1
@g_2606 = internal global i32 -2, align 4
@.str.115 = private unnamed_addr constant [7 x i8] c"g_2606\00", align 1
@g_2710 = internal global i32 -1154142831, align 4
@.str.116 = private unnamed_addr constant [7 x i8] c"g_2710\00", align 1
@g_2982 = internal constant i8 40, align 1
@.str.117 = private unnamed_addr constant [7 x i8] c"g_2982\00", align 1
@g_2983 = internal global i32 0, align 4
@.str.118 = private unnamed_addr constant [7 x i8] c"g_2983\00", align 1
@g_3010 = internal global i64 -1, align 8
@.str.119 = private unnamed_addr constant [7 x i8] c"g_3010\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@func_1.l_1236 = private unnamed_addr constant [9 x [8 x i32*]] [[8 x i32*] [i32* @g_4, i32* @g_4, i32* @g_4, i32* @g_4, i32* @g_4, i32* @g_4, i32* @g_4, i32* @g_4], [8 x i32*] [i32* @g_4, i32* null, i32* @g_8, i32* @g_4, i32* @g_4, i32* @g_8, i32* null, i32* @g_4], [8 x i32*] [i32* null, i32* @g_8, i32* @g_4, i32* @g_4, i32* @g_4, i32* @g_8, i32* null, i32* null], [8 x i32*] [i32* @g_8, i32* @g_4, i32* @g_8, i32* @g_8, i32* @g_4, i32* @g_8, i32* @g_4, i32* @g_8], [8 x i32*] [i32* @g_4, i32* @g_8, i32* @g_4, i32* @g_8, i32* @g_4, i32* @g_8, i32* @g_8, i32* @g_4], [8 x i32*] [i32* @g_8, i32* null, i32* null, i32* @g_8, i32* @g_4, i32* @g_4, i32* @g_4, i32* @g_8], [8 x i32*] [i32* null, i32* @g_4, i32* null, i32* @g_8, i32* @g_4, i32* @g_4, i32* @g_8, i32* null], [8 x i32*] [i32* @g_4, i32* @g_4, i32* @g_4, i32* @g_4, i32* @g_4, i32* @g_4, i32* @g_4, i32* @g_4], [8 x i32*] [i32* @g_4, i32* null, i32* @g_8, i32* @g_4, i32* @g_4, i32* @g_4, i32* @g_4, i32* @g_4]], align 16
@func_1.l_2728 = private unnamed_addr constant [4 x i64] [i64 1, i64 1, i64 1, i64 1], align 16
@func_1.l_3040 = private unnamed_addr constant [4 x [8 x i16]] [[8 x i16] [i16 9, i16 9, i16 1, i16 9, i16 9, i16 1, i16 9, i16 9], [8 x i16] [i16 -30154, i16 9, i16 -30154, i16 -30154, i16 9, i16 -30154, i16 -30154, i16 9], [8 x i16] [i16 9, i16 -30154, i16 -30154, i16 9, i16 -30154, i16 -30154, i16 9, i16 -30154], [8 x i16] [i16 9, i16 9, i16 1, i16 9, i16 9, i16 1, i16 9, i16 9]], align 16
@func_1.l_3062 = private unnamed_addr constant [6 x i32] [i32 4, i32 4, i32 4, i32 4, i32 4, i32 4], align 16
@func_1.l_7 = private unnamed_addr constant [6 x [2 x i32*]] [[2 x i32*] [i32* @g_8, i32* @g_8], [2 x i32*] [i32* @g_4, i32* @g_4], [2 x i32*] [i32* @g_8, i32* @g_4], [2 x i32*] [i32* @g_4, i32* @g_8], [2 x i32*] [i32* @g_8, i32* @g_8], [2 x i32*] [i32* @g_8, i32* @g_8]], align 16
@func_1.l_11 = private unnamed_addr constant [1 x [8 x i32]] [[8 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1]], align 16
@func_1.l_56 = private unnamed_addr constant [10 x i32*] [i32* @g_8, i32* @g_4, i32* @g_4, i32* @g_8, i32* @g_4, i32* @g_4, i32* @g_8, i32* @g_4, i32* @g_4, i32* @g_8], align 16
@func_1.l_1540 = private unnamed_addr constant [7 x [9 x [4 x i32]]] [[9 x [4 x i32]] [[4 x i32] [i32 -1315742566, i32 5, i32 1, i32 1169413304], [4 x i32] [i32 1599577424, i32 1127918498, i32 5, i32 1924088316], [4 x i32] [i32 9, i32 0, i32 -1378139239, i32 1], [4 x i32] [i32 1, i32 1361410202, i32 1815475952, i32 1599577424], [4 x i32] [i32 0, i32 -1315742566, i32 9, i32 -102193625], [4 x i32] [i32 -1083086366, i32 1, i32 1150030320, i32 1], [4 x i32] [i32 7, i32 -1083086366, i32 1, i32 -1], [4 x i32] [i32 1392487760, i32 1924088316, i32 -1004356456, i32 -1706202632], [4 x i32] [i32 -2127647086, i32 1, i32 -1, i32 868148595]], [9 x [4 x i32]] [[4 x i32] [i32 -2127647086, i32 1788312200, i32 -1004356456, i32 1150030320], [4 x i32] [i32 1392487760, i32 868148595, i32 1, i32 -1378139239], [4 x i32] [i32 7, i32 1157718307, i32 1150030320, i32 0], [4 x i32] [i32 -1083086366, i32 0, i32 9, i32 5], [4 x i32] [i32 0, i32 7, i32 1815475952, i32 -121111971], [4 x i32] [i32 1, i32 947890427, i32 -1378139239, i32 1392487760], [4 x i32] [i32 9, i32 -1605406891, i32 5, i32 -1206530716], [4 x i32] [i32 1599577424, i32 0, i32 1, i32 1788312200], [4 x i32] [i32 -1315742566, i32 -1, i32 -1, i32 -1315742566]], [9 x [4 x i32]] [[4 x i32] [i32 1, i32 -564148835, i32 1924088316, i32 0], [4 x i32] [i32 -594148627, i32 2025844520, i32 7, i32 -1465992777], [4 x i32] [i32 1157718307, i32 1815475952, i32 -1605406891, i32 -1465992777], [4 x i32] [i32 -1378139239, i32 2025844520, i32 1, i32 0], [4 x i32] [i32 1, i32 -564148835, i32 -1706202632, i32 -1315742566], [4 x i32] [i32 -6, i32 -1, i32 -594148627, i32 1788312200], [4 x i32] [i32 2025844520, i32 0, i32 -2127647086, i32 -1206530716], [4 x i32] [i32 1765638969, i32 -1605406891, i32 -1, i32 1392487760], [4 x i32] [i32 -1206530716, i32 -564148835, i32 1127918498, i32 -1605406891]], [9 x [4 x i32]] [[4 x i32] [i32 5, i32 0, i32 -1, i32 1], [4 x i32] [i32 -1465992777, i32 1127918498, i32 -2, i32 -1083086366], [4 x i32] [i32 -1083086366, i32 7, i32 -1083086366, i32 1], [4 x i32] [i32 1, i32 -1315742566, i32 -564148835, i32 4], [4 x i32] [i32 1815475952, i32 0, i32 7, i32 -1315742566], [4 x i32] [i32 4, i32 -6, i32 7, i32 1392487760], [4 x i32] [i32 1815475952, i32 -2127647086, i32 -564148835, i32 5], [4 x i32] [i32 1, i32 -1004356456, i32 -1083086366, i32 1599577424], [4 x i32] [i32 -1083086366, i32 1599577424, i32 -2, i32 -1206530716]], [9 x [4 x i32]] [[4 x i32] [i32 -1465992777, i32 947890427, i32 -1, i32 -102193625], [4 x i32] [i32 5, i32 -1, i32 1127918498, i32 1361410202], [4 x i32] [i32 -1206530716, i32 -121111971, i32 8, i32 -2127647086], [4 x i32] [i32 2025844520, i32 1815475952, i32 -1378139239, i32 1157718307], [4 x i32] [i32 0, i32 1, i32 1788312200, i32 1788312200], [4 x i32] [i32 1765638969, i32 1765638969, i32 1392487760, i32 -1], [4 x i32] [i32 1599577424, i32 -1, i32 -6, i32 1169413304], [4 x i32] [i32 1, i32 1788312200, i32 0, i32 -6], [4 x i32] [i32 7, i32 1788312200, i32 0, i32 1169413304]], [9 x [4 x i32]] [[4 x i32] [i32 1788312200, i32 -1, i32 -2127647086, i32 -1], [4 x i32] [i32 1361410202, i32 1765638969, i32 5, i32 1788312200], [4 x i32] [i32 947890427, i32 1, i32 1361410202, i32 1157718307], [4 x i32] [i32 -102193625, i32 1815475952, i32 1, i32 -2127647086], [4 x i32] [i32 868148595, i32 -121111971, i32 1, i32 1361410202], [4 x i32] [i32 0, i32 -1, i32 -1465992777, i32 -102193625], [4 x i32] [i32 1150030320, i32 947890427, i32 868148595, i32 -1206530716], [4 x i32] [i32 -1004356456, i32 1599577424, i32 4, i32 1599577424], [4 x i32] [i32 0, i32 -1004356456, i32 0, i32 5]], [9 x [4 x i32]] [[4 x i32] [i32 219842536, i32 -2127647086, i32 9, i32 1392487760], [4 x i32] [i32 -1378139239, i32 -6, i32 1, i32 -1315742566], [4 x i32] [i32 -1378139239, i32 0, i32 9, i32 4], [4 x i32] [i32 219842536, i32 -1315742566, i32 0, i32 1], [4 x i32] [i32 0, i32 7, i32 4, i32 -1083086366], [4 x i32] [i32 -1004356456, i32 1127918498, i32 868148595, i32 1], [4 x i32] [i32 1150030320, i32 0, i32 -1465992777, i32 -1605406891], [4 x i32] [i32 0, i32 -564148835, i32 1, i32 219842536], [4 x i32] [i32 868148595, i32 0, i32 1, i32 1]]], align 16
@g_2538 = internal global i32* @g_99, align 8
@.str.120 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@.str.121 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

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
  %94 = load volatile i32, i32* @g_3, align 4, !tbaa !1
  %95 = sext i32 %94 to i64
  %96 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %95, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 %96)
  %97 = load i32, i32* @g_4, align 4, !tbaa !1
  %98 = sext i32 %97 to i64
  %99 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %98, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i32 %99)
  %100 = load i32, i32* @g_8, align 4, !tbaa !1
  %101 = sext i32 %100 to i64
  %102 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %101, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i32 %102)
  %103 = load i8, i8* @g_10, align 1, !tbaa !9
  %104 = sext i8 %103 to i64
  %105 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %104, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 %105)
  %106 = load i32, i32* @g_59, align 4, !tbaa !1
  %107 = sext i32 %106 to i64
  %108 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %107, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 %108)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %109

; <label>:109                                     ; preds = %125, %89
  %110 = load i32, i32* %i, align 4, !tbaa !1
  %111 = icmp slt i32 %110, 3
  br i1 %111, label %112, label %128

; <label>:112                                     ; preds = %109
  %113 = load i32, i32* %i, align 4, !tbaa !1
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [3 x i32], [3 x i32]* @g_61, i32 0, i64 %114
  %116 = load i32, i32* %115, align 4, !tbaa !1
  %117 = sext i32 %116 to i64
  %118 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %117, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i32 %118)
  %119 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

; <label>:121                                     ; preds = %112
  %122 = load i32, i32* %i, align 4, !tbaa !1
  %123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i32 %122)
  br label %124

; <label>:124                                     ; preds = %121, %112
  br label %125

; <label>:125                                     ; preds = %124
  %126 = load i32, i32* %i, align 4, !tbaa !1
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %i, align 4, !tbaa !1
  br label %109

; <label>:128                                     ; preds = %109
  %129 = load i32, i32* @g_99, align 4, !tbaa !1
  %130 = sext i32 %129 to i64
  %131 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %130, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i32 %131)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %132

; <label>:132                                     ; preds = %172, %128
  %133 = load i32, i32* %i, align 4, !tbaa !1
  %134 = icmp slt i32 %133, 8
  br i1 %134, label %135, label %175

; <label>:135                                     ; preds = %132
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %136

; <label>:136                                     ; preds = %168, %135
  %137 = load i32, i32* %j, align 4, !tbaa !1
  %138 = icmp slt i32 %137, 5
  br i1 %138, label %139, label %171

; <label>:139                                     ; preds = %136
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %140

; <label>:140                                     ; preds = %164, %139
  %141 = load i32, i32* %k, align 4, !tbaa !1
  %142 = icmp slt i32 %141, 6
  br i1 %142, label %143, label %167

; <label>:143                                     ; preds = %140
  %144 = load i32, i32* %k, align 4, !tbaa !1
  %145 = sext i32 %144 to i64
  %146 = load i32, i32* %j, align 4, !tbaa !1
  %147 = sext i32 %146 to i64
  %148 = load i32, i32* %i, align 4, !tbaa !1
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [8 x [5 x [6 x i32]]], [8 x [5 x [6 x i32]]]* @g_113, i32 0, i64 %149
  %151 = getelementptr inbounds [5 x [6 x i32]], [5 x [6 x i32]]* %150, i32 0, i64 %147
  %152 = getelementptr inbounds [6 x i32], [6 x i32]* %151, i32 0, i64 %145
  %153 = load i32, i32* %152, align 4, !tbaa !1
  %154 = zext i32 %153 to i64
  %155 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %154, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i32 %155)
  %156 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %163

; <label>:158                                     ; preds = %143
  %159 = load i32, i32* %i, align 4, !tbaa !1
  %160 = load i32, i32* %j, align 4, !tbaa !1
  %161 = load i32, i32* %k, align 4, !tbaa !1
  %162 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i32 0, i32 0), i32 %159, i32 %160, i32 %161)
  br label %163

; <label>:163                                     ; preds = %158, %143
  br label %164

; <label>:164                                     ; preds = %163
  %165 = load i32, i32* %k, align 4, !tbaa !1
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %k, align 4, !tbaa !1
  br label %140

; <label>:167                                     ; preds = %140
  br label %168

; <label>:168                                     ; preds = %167
  %169 = load i32, i32* %j, align 4, !tbaa !1
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %j, align 4, !tbaa !1
  br label %136

; <label>:171                                     ; preds = %136
  br label %172

; <label>:172                                     ; preds = %171
  %173 = load i32, i32* %i, align 4, !tbaa !1
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %i, align 4, !tbaa !1
  br label %132

; <label>:175                                     ; preds = %132
  %176 = load i8, i8* @g_134, align 1, !tbaa !9
  %177 = zext i8 %176 to i64
  %178 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %177, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i32 %178)
  %179 = load i64, i64* @g_145, align 8, !tbaa !7
  %180 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %179, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i32 %180)
  %181 = load i8, i8* @g_154, align 1, !tbaa !9
  %182 = zext i8 %181 to i64
  %183 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %182, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 %183)
  %184 = load i64, i64* @g_196, align 8, !tbaa !7
  %185 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %184, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 %185)
  %186 = load i16, i16* @g_198, align 2, !tbaa !10
  %187 = zext i16 %186 to i64
  %188 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %187, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i32 %188)
  %189 = load i32, i32* @g_200, align 4, !tbaa !1
  %190 = zext i32 %189 to i64
  %191 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %190, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i32 %191)
  %192 = load i32, i32* @g_204, align 4, !tbaa !1
  %193 = sext i32 %192 to i64
  %194 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %193, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i32 %194)
  %195 = load i8, i8* @g_215, align 1, !tbaa !9
  %196 = sext i8 %195 to i64
  %197 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %196, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i32 %197)
  %198 = load i64, i64* @g_241, align 8, !tbaa !7
  %199 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %198, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 %199)
  %200 = load i32, i32* @g_249, align 4, !tbaa !1
  %201 = sext i32 %200 to i64
  %202 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %201, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i32 %202)
  %203 = load volatile i32, i32* @g_262, align 4, !tbaa !1
  %204 = zext i32 %203 to i64
  %205 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %204, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i32 %205)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %206

; <label>:206                                     ; preds = %222, %175
  %207 = load i32, i32* %i, align 4, !tbaa !1
  %208 = icmp slt i32 %207, 9
  br i1 %208, label %209, label %225

; <label>:209                                     ; preds = %206
  %210 = load i32, i32* %i, align 4, !tbaa !1
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds [9 x i16], [9 x i16]* @g_328, i32 0, i64 %211
  %213 = load i16, i16* %212, align 2, !tbaa !10
  %214 = sext i16 %213 to i64
  %215 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %214, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i32 %215)
  %216 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %221

; <label>:218                                     ; preds = %209
  %219 = load i32, i32* %i, align 4, !tbaa !1
  %220 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i32 %219)
  br label %221

; <label>:221                                     ; preds = %218, %209
  br label %222

; <label>:222                                     ; preds = %221
  %223 = load i32, i32* %i, align 4, !tbaa !1
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %i, align 4, !tbaa !1
  br label %206

; <label>:225                                     ; preds = %206
  %226 = load i32, i32* @g_481, align 4, !tbaa !1
  %227 = zext i32 %226 to i64
  %228 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %227, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %228)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %229

; <label>:229                                     ; preds = %244, %225
  %230 = load i32, i32* %i, align 4, !tbaa !1
  %231 = icmp slt i32 %230, 2
  br i1 %231, label %232, label %247

; <label>:232                                     ; preds = %229
  %233 = load i32, i32* %i, align 4, !tbaa !1
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds [2 x i64], [2 x i64]* @g_504, i32 0, i64 %234
  %236 = load volatile i64, i64* %235, align 8, !tbaa !7
  %237 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %236, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), i32 %237)
  %238 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %243

; <label>:240                                     ; preds = %232
  %241 = load i32, i32* %i, align 4, !tbaa !1
  %242 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i32 %241)
  br label %243

; <label>:243                                     ; preds = %240, %232
  br label %244

; <label>:244                                     ; preds = %243
  %245 = load i32, i32* %i, align 4, !tbaa !1
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %i, align 4, !tbaa !1
  br label %229

; <label>:247                                     ; preds = %229
  %248 = load i64, i64* @g_513, align 8, !tbaa !7
  %249 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %248, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i32 %249)
  %250 = load i8, i8* @g_605, align 1, !tbaa !9
  %251 = zext i8 %250 to i64
  %252 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %251, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 %252)
  %253 = load i64, i64* @g_642, align 8, !tbaa !7
  %254 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %253, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i32 %254)
  %255 = load volatile i64, i64* @g_710, align 8, !tbaa !7
  %256 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %255, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i32 %256)
  %257 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 -1234118561, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i32 %257)
  %258 = load volatile i8, i8* @g_798, align 1, !tbaa !9
  %259 = zext i8 %258 to i64
  %260 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %259, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i32 %260)
  %261 = load i64, i64* @g_845, align 8, !tbaa !7
  %262 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %261, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i32 %262)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %263

; <label>:263                                     ; preds = %291, %247
  %264 = load i32, i32* %i, align 4, !tbaa !1
  %265 = icmp slt i32 %264, 9
  br i1 %265, label %266, label %294

; <label>:266                                     ; preds = %263
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %267

; <label>:267                                     ; preds = %287, %266
  %268 = load i32, i32* %j, align 4, !tbaa !1
  %269 = icmp slt i32 %268, 8
  br i1 %269, label %270, label %290

; <label>:270                                     ; preds = %267
  %271 = load i32, i32* %j, align 4, !tbaa !1
  %272 = sext i32 %271 to i64
  %273 = load i32, i32* %i, align 4, !tbaa !1
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds [9 x [8 x i32]], [9 x [8 x i32]]* @g_857, i32 0, i64 %274
  %276 = getelementptr inbounds [8 x i32], [8 x i32]* %275, i32 0, i64 %272
  %277 = load i32, i32* %276, align 4, !tbaa !1
  %278 = zext i32 %277 to i64
  %279 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %278, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i32 0, i32 0), i32 %279)
  %280 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %286

; <label>:282                                     ; preds = %270
  %283 = load i32, i32* %i, align 4, !tbaa !1
  %284 = load i32, i32* %j, align 4, !tbaa !1
  %285 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.34, i32 0, i32 0), i32 %283, i32 %284)
  br label %286

; <label>:286                                     ; preds = %282, %270
  br label %287

; <label>:287                                     ; preds = %286
  %288 = load i32, i32* %j, align 4, !tbaa !1
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %j, align 4, !tbaa !1
  br label %267

; <label>:290                                     ; preds = %267
  br label %291

; <label>:291                                     ; preds = %290
  %292 = load i32, i32* %i, align 4, !tbaa !1
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %i, align 4, !tbaa !1
  br label %263

; <label>:294                                     ; preds = %263
  %295 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), i32 %295)
  %296 = load i8, i8* @g_868, align 1, !tbaa !9
  %297 = zext i8 %296 to i64
  %298 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %297, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i32 %298)
  %299 = load i32, i32* @g_1095, align 4, !tbaa !1
  %300 = zext i32 %299 to i64
  %301 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %300, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), i32 %301)
  %302 = load i64, i64* @g_1104, align 8, !tbaa !7
  %303 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %302, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), i32 %303)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %304

; <label>:304                                     ; preds = %320, %294
  %305 = load i32, i32* %i, align 4, !tbaa !1
  %306 = icmp slt i32 %305, 8
  br i1 %306, label %307, label %323

; <label>:307                                     ; preds = %304
  %308 = load i32, i32* %i, align 4, !tbaa !1
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds [8 x i16], [8 x i16]* @g_1210, i32 0, i64 %309
  %311 = load i16, i16* %310, align 2, !tbaa !10
  %312 = zext i16 %311 to i64
  %313 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %312, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0), i32 %313)
  %314 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %319

; <label>:316                                     ; preds = %307
  %317 = load i32, i32* %i, align 4, !tbaa !1
  %318 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i32 %317)
  br label %319

; <label>:319                                     ; preds = %316, %307
  br label %320

; <label>:320                                     ; preds = %319
  %321 = load i32, i32* %i, align 4, !tbaa !1
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %i, align 4, !tbaa !1
  br label %304

; <label>:323                                     ; preds = %304
  %324 = load i16, i16* @g_1212, align 2, !tbaa !10
  %325 = zext i16 %324 to i64
  %326 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %325, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0), i32 %326)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %327

; <label>:327                                     ; preds = %343, %323
  %328 = load i32, i32* %i, align 4, !tbaa !1
  %329 = icmp slt i32 %328, 1
  br i1 %329, label %330, label %346

; <label>:330                                     ; preds = %327
  %331 = load i32, i32* %i, align 4, !tbaa !1
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds [1 x i8], [1 x i8]* @g_1234, i32 0, i64 %332
  %334 = load i8, i8* %333, align 1, !tbaa !9
  %335 = sext i8 %334 to i64
  %336 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %335, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i32 0, i32 0), i32 %336)
  %337 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %342

; <label>:339                                     ; preds = %330
  %340 = load i32, i32* %i, align 4, !tbaa !1
  %341 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i32 %340)
  br label %342

; <label>:342                                     ; preds = %339, %330
  br label %343

; <label>:343                                     ; preds = %342
  %344 = load i32, i32* %i, align 4, !tbaa !1
  %345 = add nsw i32 %344, 1
  store i32 %345, i32* %i, align 4, !tbaa !1
  br label %327

; <label>:346                                     ; preds = %327
  %347 = load i16, i16* @g_1253, align 2, !tbaa !10
  %348 = zext i16 %347 to i64
  %349 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %348, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), i32 %349)
  %350 = load i16, i16* @g_1376, align 2, !tbaa !10
  %351 = zext i16 %350 to i64
  %352 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %351, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), i32 %352)
  %353 = load i16, i16* @g_1377, align 2, !tbaa !10
  %354 = zext i16 %353 to i64
  %355 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %354, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i32 0, i32 0), i32 %355)
  %356 = load i16, i16* @g_1378, align 2, !tbaa !10
  %357 = zext i16 %356 to i64
  %358 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %357, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), i32 %358)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %359

; <label>:359                                     ; preds = %375, %346
  %360 = load i32, i32* %i, align 4, !tbaa !1
  %361 = icmp slt i32 %360, 7
  br i1 %361, label %362, label %378

; <label>:362                                     ; preds = %359
  %363 = load i32, i32* %i, align 4, !tbaa !1
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds [7 x i16], [7 x i16]* @g_1379, i32 0, i64 %364
  %366 = load i16, i16* %365, align 2, !tbaa !10
  %367 = zext i16 %366 to i64
  %368 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %367, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i32 0, i32 0), i32 %368)
  %369 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %374

; <label>:371                                     ; preds = %362
  %372 = load i32, i32* %i, align 4, !tbaa !1
  %373 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i32 %372)
  br label %374

; <label>:374                                     ; preds = %371, %362
  br label %375

; <label>:375                                     ; preds = %374
  %376 = load i32, i32* %i, align 4, !tbaa !1
  %377 = add nsw i32 %376, 1
  store i32 %377, i32* %i, align 4, !tbaa !1
  br label %359

; <label>:378                                     ; preds = %359
  %379 = load i16, i16* @g_1380, align 2, !tbaa !10
  %380 = zext i16 %379 to i64
  %381 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %380, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i32 0, i32 0), i32 %381)
  %382 = load i16, i16* @g_1381, align 2, !tbaa !10
  %383 = zext i16 %382 to i64
  %384 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %383, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0), i32 %384)
  %385 = load i16, i16* @g_1382, align 2, !tbaa !10
  %386 = zext i16 %385 to i64
  %387 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %386, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0), i32 %387)
  %388 = load i16, i16* @g_1383, align 2, !tbaa !10
  %389 = zext i16 %388 to i64
  %390 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %389, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i32 0, i32 0), i32 %390)
  %391 = load i16, i16* @g_1384, align 2, !tbaa !10
  %392 = zext i16 %391 to i64
  %393 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %392, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), i32 %393)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %394

; <label>:394                                     ; preds = %410, %378
  %395 = load i32, i32* %i, align 4, !tbaa !1
  %396 = icmp slt i32 %395, 3
  br i1 %396, label %397, label %413

; <label>:397                                     ; preds = %394
  %398 = load i32, i32* %i, align 4, !tbaa !1
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds [3 x i16], [3 x i16]* @g_1385, i32 0, i64 %399
  %401 = load i16, i16* %400, align 2, !tbaa !10
  %402 = zext i16 %401 to i64
  %403 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %402, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.52, i32 0, i32 0), i32 %403)
  %404 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %406, label %409

; <label>:406                                     ; preds = %397
  %407 = load i32, i32* %i, align 4, !tbaa !1
  %408 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i32 %407)
  br label %409

; <label>:409                                     ; preds = %406, %397
  br label %410

; <label>:410                                     ; preds = %409
  %411 = load i32, i32* %i, align 4, !tbaa !1
  %412 = add nsw i32 %411, 1
  store i32 %412, i32* %i, align 4, !tbaa !1
  br label %394

; <label>:413                                     ; preds = %394
  %414 = load i16, i16* @g_1386, align 2, !tbaa !10
  %415 = zext i16 %414 to i64
  %416 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %415, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0), i32 %416)
  %417 = load i16, i16* @g_1387, align 2, !tbaa !10
  %418 = zext i16 %417 to i64
  %419 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %418, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i32 0, i32 0), i32 %419)
  %420 = load i16, i16* @g_1388, align 2, !tbaa !10
  %421 = zext i16 %420 to i64
  %422 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %421, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i32 0, i32 0), i32 %422)
  %423 = load i16, i16* @g_1389, align 2, !tbaa !10
  %424 = zext i16 %423 to i64
  %425 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %424, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i32 0, i32 0), i32 %425)
  %426 = load i16, i16* @g_1390, align 2, !tbaa !10
  %427 = zext i16 %426 to i64
  %428 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %427, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i32 0, i32 0), i32 %428)
  %429 = load i16, i16* @g_1391, align 2, !tbaa !10
  %430 = zext i16 %429 to i64
  %431 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %430, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i32 0, i32 0), i32 %431)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %432

; <label>:432                                     ; preds = %460, %413
  %433 = load i32, i32* %i, align 4, !tbaa !1
  %434 = icmp slt i32 %433, 3
  br i1 %434, label %435, label %463

; <label>:435                                     ; preds = %432
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %436

; <label>:436                                     ; preds = %456, %435
  %437 = load i32, i32* %j, align 4, !tbaa !1
  %438 = icmp slt i32 %437, 2
  br i1 %438, label %439, label %459

; <label>:439                                     ; preds = %436
  %440 = load i32, i32* %j, align 4, !tbaa !1
  %441 = sext i32 %440 to i64
  %442 = load i32, i32* %i, align 4, !tbaa !1
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds [3 x [2 x i16]], [3 x [2 x i16]]* @g_1392, i32 0, i64 %443
  %445 = getelementptr inbounds [2 x i16], [2 x i16]* %444, i32 0, i64 %441
  %446 = load i16, i16* %445, align 2, !tbaa !10
  %447 = zext i16 %446 to i64
  %448 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %447, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.59, i32 0, i32 0), i32 %448)
  %449 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %450 = icmp ne i32 %449, 0
  br i1 %450, label %451, label %455

; <label>:451                                     ; preds = %439
  %452 = load i32, i32* %i, align 4, !tbaa !1
  %453 = load i32, i32* %j, align 4, !tbaa !1
  %454 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.34, i32 0, i32 0), i32 %452, i32 %453)
  br label %455

; <label>:455                                     ; preds = %451, %439
  br label %456

; <label>:456                                     ; preds = %455
  %457 = load i32, i32* %j, align 4, !tbaa !1
  %458 = add nsw i32 %457, 1
  store i32 %458, i32* %j, align 4, !tbaa !1
  br label %436

; <label>:459                                     ; preds = %436
  br label %460

; <label>:460                                     ; preds = %459
  %461 = load i32, i32* %i, align 4, !tbaa !1
  %462 = add nsw i32 %461, 1
  store i32 %462, i32* %i, align 4, !tbaa !1
  br label %432

; <label>:463                                     ; preds = %432
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %464

; <label>:464                                     ; preds = %504, %463
  %465 = load i32, i32* %i, align 4, !tbaa !1
  %466 = icmp slt i32 %465, 2
  br i1 %466, label %467, label %507

; <label>:467                                     ; preds = %464
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %468

; <label>:468                                     ; preds = %500, %467
  %469 = load i32, i32* %j, align 4, !tbaa !1
  %470 = icmp slt i32 %469, 3
  br i1 %470, label %471, label %503

; <label>:471                                     ; preds = %468
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %472

; <label>:472                                     ; preds = %496, %471
  %473 = load i32, i32* %k, align 4, !tbaa !1
  %474 = icmp slt i32 %473, 9
  br i1 %474, label %475, label %499

; <label>:475                                     ; preds = %472
  %476 = load i32, i32* %k, align 4, !tbaa !1
  %477 = sext i32 %476 to i64
  %478 = load i32, i32* %j, align 4, !tbaa !1
  %479 = sext i32 %478 to i64
  %480 = load i32, i32* %i, align 4, !tbaa !1
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds [2 x [3 x [9 x i16]]], [2 x [3 x [9 x i16]]]* @g_1393, i32 0, i64 %481
  %483 = getelementptr inbounds [3 x [9 x i16]], [3 x [9 x i16]]* %482, i32 0, i64 %479
  %484 = getelementptr inbounds [9 x i16], [9 x i16]* %483, i32 0, i64 %477
  %485 = load i16, i16* %484, align 2, !tbaa !10
  %486 = zext i16 %485 to i64
  %487 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %486, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.60, i32 0, i32 0), i32 %487)
  %488 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %489 = icmp ne i32 %488, 0
  br i1 %489, label %490, label %495

; <label>:490                                     ; preds = %475
  %491 = load i32, i32* %i, align 4, !tbaa !1
  %492 = load i32, i32* %j, align 4, !tbaa !1
  %493 = load i32, i32* %k, align 4, !tbaa !1
  %494 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i32 0, i32 0), i32 %491, i32 %492, i32 %493)
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
  %508 = load i16, i16* @g_1394, align 2, !tbaa !10
  %509 = zext i16 %508 to i64
  %510 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %509, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.61, i32 0, i32 0), i32 %510)
  %511 = load i16, i16* @g_1395, align 2, !tbaa !10
  %512 = zext i16 %511 to i64
  %513 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %512, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i32 0, i32 0), i32 %513)
  %514 = load i16, i16* @g_1396, align 2, !tbaa !10
  %515 = zext i16 %514 to i64
  %516 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %515, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.63, i32 0, i32 0), i32 %516)
  %517 = load i16, i16* @g_1397, align 2, !tbaa !10
  %518 = zext i16 %517 to i64
  %519 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %518, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.64, i32 0, i32 0), i32 %519)
  %520 = load i16, i16* @g_1398, align 2, !tbaa !10
  %521 = zext i16 %520 to i64
  %522 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %521, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.65, i32 0, i32 0), i32 %522)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %523

; <label>:523                                     ; preds = %539, %507
  %524 = load i32, i32* %i, align 4, !tbaa !1
  %525 = icmp slt i32 %524, 7
  br i1 %525, label %526, label %542

; <label>:526                                     ; preds = %523
  %527 = load i32, i32* %i, align 4, !tbaa !1
  %528 = sext i32 %527 to i64
  %529 = getelementptr inbounds [7 x i16], [7 x i16]* @g_1399, i32 0, i64 %528
  %530 = load i16, i16* %529, align 2, !tbaa !10
  %531 = zext i16 %530 to i64
  %532 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %531, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.66, i32 0, i32 0), i32 %532)
  %533 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %534 = icmp ne i32 %533, 0
  br i1 %534, label %535, label %538

; <label>:535                                     ; preds = %526
  %536 = load i32, i32* %i, align 4, !tbaa !1
  %537 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i32 %536)
  br label %538

; <label>:538                                     ; preds = %535, %526
  br label %539

; <label>:539                                     ; preds = %538
  %540 = load i32, i32* %i, align 4, !tbaa !1
  %541 = add nsw i32 %540, 1
  store i32 %541, i32* %i, align 4, !tbaa !1
  br label %523

; <label>:542                                     ; preds = %523
  %543 = load i16, i16* @g_1400, align 2, !tbaa !10
  %544 = zext i16 %543 to i64
  %545 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %544, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.67, i32 0, i32 0), i32 %545)
  %546 = load i16, i16* @g_1401, align 2, !tbaa !10
  %547 = zext i16 %546 to i64
  %548 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %547, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.68, i32 0, i32 0), i32 %548)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %549

; <label>:549                                     ; preds = %577, %542
  %550 = load i32, i32* %i, align 4, !tbaa !1
  %551 = icmp slt i32 %550, 6
  br i1 %551, label %552, label %580

; <label>:552                                     ; preds = %549
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %553

; <label>:553                                     ; preds = %573, %552
  %554 = load i32, i32* %j, align 4, !tbaa !1
  %555 = icmp slt i32 %554, 1
  br i1 %555, label %556, label %576

; <label>:556                                     ; preds = %553
  %557 = load i32, i32* %j, align 4, !tbaa !1
  %558 = sext i32 %557 to i64
  %559 = load i32, i32* %i, align 4, !tbaa !1
  %560 = sext i32 %559 to i64
  %561 = getelementptr inbounds [6 x [1 x i16]], [6 x [1 x i16]]* @g_1402, i32 0, i64 %560
  %562 = getelementptr inbounds [1 x i16], [1 x i16]* %561, i32 0, i64 %558
  %563 = load i16, i16* %562, align 2, !tbaa !10
  %564 = zext i16 %563 to i64
  %565 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %564, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.69, i32 0, i32 0), i32 %565)
  %566 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %567 = icmp ne i32 %566, 0
  br i1 %567, label %568, label %572

; <label>:568                                     ; preds = %556
  %569 = load i32, i32* %i, align 4, !tbaa !1
  %570 = load i32, i32* %j, align 4, !tbaa !1
  %571 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.34, i32 0, i32 0), i32 %569, i32 %570)
  br label %572

; <label>:572                                     ; preds = %568, %556
  br label %573

; <label>:573                                     ; preds = %572
  %574 = load i32, i32* %j, align 4, !tbaa !1
  %575 = add nsw i32 %574, 1
  store i32 %575, i32* %j, align 4, !tbaa !1
  br label %553

; <label>:576                                     ; preds = %553
  br label %577

; <label>:577                                     ; preds = %576
  %578 = load i32, i32* %i, align 4, !tbaa !1
  %579 = add nsw i32 %578, 1
  store i32 %579, i32* %i, align 4, !tbaa !1
  br label %549

; <label>:580                                     ; preds = %549
  %581 = load i16, i16* @g_1403, align 2, !tbaa !10
  %582 = zext i16 %581 to i64
  %583 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %582, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.70, i32 0, i32 0), i32 %583)
  %584 = load i16, i16* @g_1404, align 2, !tbaa !10
  %585 = zext i16 %584 to i64
  %586 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %585, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0), i32 %586)
  %587 = load i16, i16* @g_1405, align 2, !tbaa !10
  %588 = zext i16 %587 to i64
  %589 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %588, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.72, i32 0, i32 0), i32 %589)
  %590 = load i16, i16* @g_1406, align 2, !tbaa !10
  %591 = zext i16 %590 to i64
  %592 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %591, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.73, i32 0, i32 0), i32 %592)
  %593 = load i16, i16* @g_1407, align 2, !tbaa !10
  %594 = zext i16 %593 to i64
  %595 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %594, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.74, i32 0, i32 0), i32 %595)
  %596 = load i16, i16* @g_1408, align 2, !tbaa !10
  %597 = zext i16 %596 to i64
  %598 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %597, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.75, i32 0, i32 0), i32 %598)
  %599 = load i16, i16* @g_1409, align 2, !tbaa !10
  %600 = zext i16 %599 to i64
  %601 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %600, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i32 0, i32 0), i32 %601)
  %602 = load i16, i16* @g_1410, align 2, !tbaa !10
  %603 = zext i16 %602 to i64
  %604 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %603, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.77, i32 0, i32 0), i32 %604)
  %605 = load i16, i16* @g_1411, align 2, !tbaa !10
  %606 = zext i16 %605 to i64
  %607 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %606, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.78, i32 0, i32 0), i32 %607)
  %608 = load i16, i16* @g_1412, align 2, !tbaa !10
  %609 = zext i16 %608 to i64
  %610 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %609, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.79, i32 0, i32 0), i32 %610)
  %611 = load i16, i16* @g_1413, align 2, !tbaa !10
  %612 = zext i16 %611 to i64
  %613 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %612, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.80, i32 0, i32 0), i32 %613)
  %614 = load i16, i16* @g_1414, align 2, !tbaa !10
  %615 = zext i16 %614 to i64
  %616 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %615, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.81, i32 0, i32 0), i32 %616)
  %617 = load i16, i16* @g_1415, align 2, !tbaa !10
  %618 = zext i16 %617 to i64
  %619 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %618, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.82, i32 0, i32 0), i32 %619)
  %620 = load i16, i16* @g_1416, align 2, !tbaa !10
  %621 = zext i16 %620 to i64
  %622 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %621, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.83, i32 0, i32 0), i32 %622)
  %623 = load i16, i16* @g_1417, align 2, !tbaa !10
  %624 = zext i16 %623 to i64
  %625 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %624, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.84, i32 0, i32 0), i32 %625)
  %626 = load i16, i16* @g_1418, align 2, !tbaa !10
  %627 = zext i16 %626 to i64
  %628 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %627, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.85, i32 0, i32 0), i32 %628)
  %629 = load i16, i16* @g_1419, align 2, !tbaa !10
  %630 = zext i16 %629 to i64
  %631 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %630, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.86, i32 0, i32 0), i32 %631)
  %632 = load i16, i16* @g_1420, align 2, !tbaa !10
  %633 = zext i16 %632 to i64
  %634 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %633, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.87, i32 0, i32 0), i32 %634)
  %635 = load i16, i16* @g_1421, align 2, !tbaa !10
  %636 = zext i16 %635 to i64
  %637 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %636, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.88, i32 0, i32 0), i32 %637)
  %638 = load i16, i16* @g_1422, align 2, !tbaa !10
  %639 = zext i16 %638 to i64
  %640 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %639, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.89, i32 0, i32 0), i32 %640)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %641

; <label>:641                                     ; preds = %657, %580
  %642 = load i32, i32* %i, align 4, !tbaa !1
  %643 = icmp slt i32 %642, 6
  br i1 %643, label %644, label %660

; <label>:644                                     ; preds = %641
  %645 = load i32, i32* %i, align 4, !tbaa !1
  %646 = sext i32 %645 to i64
  %647 = getelementptr inbounds [6 x i16], [6 x i16]* @g_1423, i32 0, i64 %646
  %648 = load i16, i16* %647, align 2, !tbaa !10
  %649 = zext i16 %648 to i64
  %650 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %649, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.90, i32 0, i32 0), i32 %650)
  %651 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %652 = icmp ne i32 %651, 0
  br i1 %652, label %653, label %656

; <label>:653                                     ; preds = %644
  %654 = load i32, i32* %i, align 4, !tbaa !1
  %655 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i32 %654)
  br label %656

; <label>:656                                     ; preds = %653, %644
  br label %657

; <label>:657                                     ; preds = %656
  %658 = load i32, i32* %i, align 4, !tbaa !1
  %659 = add nsw i32 %658, 1
  store i32 %659, i32* %i, align 4, !tbaa !1
  br label %641

; <label>:660                                     ; preds = %641
  %661 = load i16, i16* @g_1424, align 2, !tbaa !10
  %662 = zext i16 %661 to i64
  %663 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %662, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.91, i32 0, i32 0), i32 %663)
  %664 = load i16, i16* @g_1425, align 2, !tbaa !10
  %665 = zext i16 %664 to i64
  %666 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %665, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.92, i32 0, i32 0), i32 %666)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %667

; <label>:667                                     ; preds = %695, %660
  %668 = load i32, i32* %i, align 4, !tbaa !1
  %669 = icmp slt i32 %668, 8
  br i1 %669, label %670, label %698

; <label>:670                                     ; preds = %667
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %671

; <label>:671                                     ; preds = %691, %670
  %672 = load i32, i32* %j, align 4, !tbaa !1
  %673 = icmp slt i32 %672, 6
  br i1 %673, label %674, label %694

; <label>:674                                     ; preds = %671
  %675 = load i32, i32* %j, align 4, !tbaa !1
  %676 = sext i32 %675 to i64
  %677 = load i32, i32* %i, align 4, !tbaa !1
  %678 = sext i32 %677 to i64
  %679 = getelementptr inbounds [8 x [6 x i16]], [8 x [6 x i16]]* @g_1426, i32 0, i64 %678
  %680 = getelementptr inbounds [6 x i16], [6 x i16]* %679, i32 0, i64 %676
  %681 = load i16, i16* %680, align 2, !tbaa !10
  %682 = zext i16 %681 to i64
  %683 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %682, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.93, i32 0, i32 0), i32 %683)
  %684 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %685 = icmp ne i32 %684, 0
  br i1 %685, label %686, label %690

; <label>:686                                     ; preds = %674
  %687 = load i32, i32* %i, align 4, !tbaa !1
  %688 = load i32, i32* %j, align 4, !tbaa !1
  %689 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.34, i32 0, i32 0), i32 %687, i32 %688)
  br label %690

; <label>:690                                     ; preds = %686, %674
  br label %691

; <label>:691                                     ; preds = %690
  %692 = load i32, i32* %j, align 4, !tbaa !1
  %693 = add nsw i32 %692, 1
  store i32 %693, i32* %j, align 4, !tbaa !1
  br label %671

; <label>:694                                     ; preds = %671
  br label %695

; <label>:695                                     ; preds = %694
  %696 = load i32, i32* %i, align 4, !tbaa !1
  %697 = add nsw i32 %696, 1
  store i32 %697, i32* %i, align 4, !tbaa !1
  br label %667

; <label>:698                                     ; preds = %667
  %699 = load i16, i16* @g_1427, align 2, !tbaa !10
  %700 = zext i16 %699 to i64
  %701 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %700, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.94, i32 0, i32 0), i32 %701)
  %702 = load i16, i16* @g_1428, align 2, !tbaa !10
  %703 = zext i16 %702 to i64
  %704 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %703, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.95, i32 0, i32 0), i32 %704)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %705

; <label>:705                                     ; preds = %721, %698
  %706 = load i32, i32* %i, align 4, !tbaa !1
  %707 = icmp slt i32 %706, 9
  br i1 %707, label %708, label %724

; <label>:708                                     ; preds = %705
  %709 = load i32, i32* %i, align 4, !tbaa !1
  %710 = sext i32 %709 to i64
  %711 = getelementptr inbounds [9 x i16], [9 x i16]* @g_1429, i32 0, i64 %710
  %712 = load i16, i16* %711, align 2, !tbaa !10
  %713 = zext i16 %712 to i64
  %714 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %713, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.96, i32 0, i32 0), i32 %714)
  %715 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %716 = icmp ne i32 %715, 0
  br i1 %716, label %717, label %720

; <label>:717                                     ; preds = %708
  %718 = load i32, i32* %i, align 4, !tbaa !1
  %719 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i32 %718)
  br label %720

; <label>:720                                     ; preds = %717, %708
  br label %721

; <label>:721                                     ; preds = %720
  %722 = load i32, i32* %i, align 4, !tbaa !1
  %723 = add nsw i32 %722, 1
  store i32 %723, i32* %i, align 4, !tbaa !1
  br label %705

; <label>:724                                     ; preds = %705
  %725 = load i16, i16* @g_1430, align 2, !tbaa !10
  %726 = zext i16 %725 to i64
  %727 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %726, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.97, i32 0, i32 0), i32 %727)
  %728 = load i16, i16* @g_1431, align 2, !tbaa !10
  %729 = zext i16 %728 to i64
  %730 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %729, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.98, i32 0, i32 0), i32 %730)
  %731 = load i16, i16* @g_1432, align 2, !tbaa !10
  %732 = zext i16 %731 to i64
  %733 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %732, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.99, i32 0, i32 0), i32 %733)
  %734 = load i16, i16* @g_1433, align 2, !tbaa !10
  %735 = zext i16 %734 to i64
  %736 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %735, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.100, i32 0, i32 0), i32 %736)
  %737 = load i16, i16* @g_1434, align 2, !tbaa !10
  %738 = zext i16 %737 to i64
  %739 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %738, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.101, i32 0, i32 0), i32 %739)
  %740 = load i16, i16* @g_1435, align 2, !tbaa !10
  %741 = zext i16 %740 to i64
  %742 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %741, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.102, i32 0, i32 0), i32 %742)
  %743 = load i16, i16* @g_1436, align 2, !tbaa !10
  %744 = zext i16 %743 to i64
  %745 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %744, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.103, i32 0, i32 0), i32 %745)
  %746 = load i16, i16* @g_1437, align 2, !tbaa !10
  %747 = zext i16 %746 to i64
  %748 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %747, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.104, i32 0, i32 0), i32 %748)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %749

; <label>:749                                     ; preds = %765, %724
  %750 = load i32, i32* %i, align 4, !tbaa !1
  %751 = icmp slt i32 %750, 1
  br i1 %751, label %752, label %768

; <label>:752                                     ; preds = %749
  %753 = load i32, i32* %i, align 4, !tbaa !1
  %754 = sext i32 %753 to i64
  %755 = getelementptr inbounds [1 x i16], [1 x i16]* @g_1438, i32 0, i64 %754
  %756 = load i16, i16* %755, align 2, !tbaa !10
  %757 = zext i16 %756 to i64
  %758 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %757, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.105, i32 0, i32 0), i32 %758)
  %759 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %760 = icmp ne i32 %759, 0
  br i1 %760, label %761, label %764

; <label>:761                                     ; preds = %752
  %762 = load i32, i32* %i, align 4, !tbaa !1
  %763 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i32 %762)
  br label %764

; <label>:764                                     ; preds = %761, %752
  br label %765

; <label>:765                                     ; preds = %764
  %766 = load i32, i32* %i, align 4, !tbaa !1
  %767 = add nsw i32 %766, 1
  store i32 %767, i32* %i, align 4, !tbaa !1
  br label %749

; <label>:768                                     ; preds = %749
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %769

; <label>:769                                     ; preds = %785, %768
  %770 = load i32, i32* %i, align 4, !tbaa !1
  %771 = icmp slt i32 %770, 3
  br i1 %771, label %772, label %788

; <label>:772                                     ; preds = %769
  %773 = load i32, i32* %i, align 4, !tbaa !1
  %774 = sext i32 %773 to i64
  %775 = getelementptr inbounds [3 x i16], [3 x i16]* @g_1439, i32 0, i64 %774
  %776 = load i16, i16* %775, align 2, !tbaa !10
  %777 = zext i16 %776 to i64
  %778 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %777, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.106, i32 0, i32 0), i32 %778)
  %779 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %780 = icmp ne i32 %779, 0
  br i1 %780, label %781, label %784

; <label>:781                                     ; preds = %772
  %782 = load i32, i32* %i, align 4, !tbaa !1
  %783 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i32 %782)
  br label %784

; <label>:784                                     ; preds = %781, %772
  br label %785

; <label>:785                                     ; preds = %784
  %786 = load i32, i32* %i, align 4, !tbaa !1
  %787 = add nsw i32 %786, 1
  store i32 %787, i32* %i, align 4, !tbaa !1
  br label %769

; <label>:788                                     ; preds = %769
  %789 = load i16, i16* @g_1440, align 2, !tbaa !10
  %790 = zext i16 %789 to i64
  %791 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %790, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.107, i32 0, i32 0), i32 %791)
  %792 = load i16, i16* @g_1441, align 2, !tbaa !10
  %793 = zext i16 %792 to i64
  %794 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %793, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.108, i32 0, i32 0), i32 %794)
  %795 = load i16, i16* @g_1442, align 2, !tbaa !10
  %796 = zext i16 %795 to i64
  %797 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %796, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.109, i32 0, i32 0), i32 %797)
  %798 = load i16, i16* @g_1443, align 2, !tbaa !10
  %799 = zext i16 %798 to i64
  %800 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %799, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.110, i32 0, i32 0), i32 %800)
  %801 = load i32, i32* @g_1689, align 4, !tbaa !1
  %802 = zext i32 %801 to i64
  %803 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %802, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.111, i32 0, i32 0), i32 %803)
  %804 = load i16, i16* @g_1738, align 2, !tbaa !10
  %805 = sext i16 %804 to i64
  %806 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %805, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.112, i32 0, i32 0), i32 %806)
  %807 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 9197414287755554192, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.113, i32 0, i32 0), i32 %807)
  %808 = load i8, i8* @g_2013, align 1, !tbaa !9
  %809 = sext i8 %808 to i64
  %810 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %809, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.114, i32 0, i32 0), i32 %810)
  %811 = load i32, i32* @g_2606, align 4, !tbaa !1
  %812 = sext i32 %811 to i64
  %813 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %812, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.115, i32 0, i32 0), i32 %813)
  %814 = load i32, i32* @g_2710, align 4, !tbaa !1
  %815 = sext i32 %814 to i64
  %816 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %815, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.116, i32 0, i32 0), i32 %816)
  %817 = load volatile i8, i8* @g_2982, align 1, !tbaa !9
  %818 = zext i8 %817 to i64
  %819 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %818, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.117, i32 0, i32 0), i32 %819)
  %820 = load i32, i32* @g_2983, align 4, !tbaa !1
  %821 = zext i32 %820 to i64
  %822 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %821, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.118, i32 0, i32 0), i32 %822)
  %823 = load i64, i64* @g_3010, align 8, !tbaa !7
  %824 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %823, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.119, i32 0, i32 0), i32 %824)
  %825 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %826 = zext i32 %825 to i64
  %827 = xor i64 %826, 4294967295
  %828 = trunc i64 %827 to i32
  %829 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %828, i32 %829)
  %830 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %830) #1
  %831 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %831) #1
  %832 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %832) #1
  %833 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %833) #1
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
  %l_9 = alloca i32, align 4
  %l_57 = alloca i8*, align 8
  %l_1236 = alloca [9 x [8 x i32*]], align 16
  %l_1235 = alloca [9 x i32**], align 16
  %l_2628 = alloca i64, align 8
  %l_2629 = alloca i64, align 8
  %l_2634 = alloca i64, align 8
  %l_2635 = alloca [1 x i32], align 4
  %l_2639 = alloca i32, align 4
  %l_2649 = alloca i32**, align 8
  %l_2651 = alloca i32*, align 8
  %l_2650 = alloca i32**, align 8
  %l_2660 = alloca i16*, align 8
  %l_2713 = alloca i32, align 4
  %l_2728 = alloca [4 x i64], align 16
  %l_2756 = alloca i32, align 4
  %l_2932 = alloca i64****, align 8
  %l_2935 = alloca i64**, align 8
  %l_3039 = alloca i8, align 1
  %l_3040 = alloca [4 x [8 x i16]], align 16
  %l_3043 = alloca i32, align 4
  %l_3061 = alloca i16, align 2
  %l_3062 = alloca [6 x i32], align 16
  %l_3065 = alloca i32, align 4
  %l_3075 = alloca i64, align 8
  %l_3078 = alloca i32, align 4
  %l_3083 = alloca i16, align 2
  %l_3093 = alloca i64, align 8
  %l_3094 = alloca i8, align 1
  %l_3095 = alloca i32*, align 8
  %l_3096 = alloca i32, align 4
  %l_3097 = alloca i16, align 2
  %l_3098 = alloca i32, align 4
  %l_3099 = alloca i32, align 4
  %l_3100 = alloca i16, align 2
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %l_7 = alloca [6 x [2 x i32*]], align 16
  %l_11 = alloca [1 x [8 x i32]], align 16
  %l_40 = alloca i32, align 4
  %l_56 = alloca [10 x i32*], align 16
  %l_55 = alloca i32**, align 8
  %l_1541 = alloca i32*, align 8
  %i1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  %l_25 = alloca i32**, align 8
  %l_26 = alloca i32**, align 8
  %l_39 = alloca [4 x i8*], align 16
  %l_1540 = alloca [7 x [9 x [4 x i32]]], align 16
  %i3 = alloca i32, align 4
  %j4 = alloca i32, align 4
  %k = alloca i32, align 4
  %1 = bitcast i32* %l_9 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 -1369137299, i32* %l_9, align 4, !tbaa !1
  %2 = bitcast i8** %l_57 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store i8* @g_10, i8** %l_57, align 8, !tbaa !5
  %3 = bitcast [9 x [8 x i32*]]* %l_1236 to i8*
  call void @llvm.lifetime.start(i64 576, i8* %3) #1
  %4 = bitcast [9 x [8 x i32*]]* %l_1236 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* bitcast ([9 x [8 x i32*]]* @func_1.l_1236 to i8*), i64 576, i32 16, i1 false)
  %5 = bitcast [9 x i32**]* %l_1235 to i8*
  call void @llvm.lifetime.start(i64 72, i8* %5) #1
  %6 = getelementptr inbounds [9 x i32**], [9 x i32**]* %l_1235, i64 0, i64 0
  store i32** null, i32*** %6, !tbaa !5
  %7 = getelementptr inbounds i32**, i32*** %6, i64 1
  %8 = getelementptr inbounds [9 x [8 x i32*]], [9 x [8 x i32*]]* %l_1236, i32 0, i64 6
  %9 = getelementptr inbounds [8 x i32*], [8 x i32*]* %8, i32 0, i64 3
  store i32** %9, i32*** %7, !tbaa !5
  %10 = getelementptr inbounds i32**, i32*** %7, i64 1
  store i32** null, i32*** %10, !tbaa !5
  %11 = getelementptr inbounds i32**, i32*** %10, i64 1
  %12 = getelementptr inbounds [9 x [8 x i32*]], [9 x [8 x i32*]]* %l_1236, i32 0, i64 6
  %13 = getelementptr inbounds [8 x i32*], [8 x i32*]* %12, i32 0, i64 3
  store i32** %13, i32*** %11, !tbaa !5
  %14 = getelementptr inbounds i32**, i32*** %11, i64 1
  store i32** null, i32*** %14, !tbaa !5
  %15 = getelementptr inbounds i32**, i32*** %14, i64 1
  %16 = getelementptr inbounds [9 x [8 x i32*]], [9 x [8 x i32*]]* %l_1236, i32 0, i64 6
  %17 = getelementptr inbounds [8 x i32*], [8 x i32*]* %16, i32 0, i64 3
  store i32** %17, i32*** %15, !tbaa !5
  %18 = getelementptr inbounds i32**, i32*** %15, i64 1
  store i32** null, i32*** %18, !tbaa !5
  %19 = getelementptr inbounds i32**, i32*** %18, i64 1
  %20 = getelementptr inbounds [9 x [8 x i32*]], [9 x [8 x i32*]]* %l_1236, i32 0, i64 6
  %21 = getelementptr inbounds [8 x i32*], [8 x i32*]* %20, i32 0, i64 3
  store i32** %21, i32*** %19, !tbaa !5
  %22 = getelementptr inbounds i32**, i32*** %19, i64 1
  store i32** null, i32*** %22, !tbaa !5
  %23 = bitcast i64* %l_2628 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #1
  store i64 0, i64* %l_2628, align 8, !tbaa !7
  %24 = bitcast i64* %l_2629 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #1
  store i64 1, i64* %l_2629, align 8, !tbaa !7
  %25 = bitcast i64* %l_2634 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #1
  store i64 8151102149731324232, i64* %l_2634, align 8, !tbaa !7
  %26 = bitcast [1 x i32]* %l_2635 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #1
  %27 = bitcast i32* %l_2639 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  store i32 -6, i32* %l_2639, align 4, !tbaa !1
  %28 = bitcast i32*** %l_2649 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %28) #1
  store i32** null, i32*** %l_2649, align 8, !tbaa !5
  %29 = bitcast i32** %l_2651 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %29) #1
  store i32* %l_9, i32** %l_2651, align 8, !tbaa !5
  %30 = bitcast i32*** %l_2650 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %30) #1
  store i32** %l_2651, i32*** %l_2650, align 8, !tbaa !5
  %31 = bitcast i16** %l_2660 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %31) #1
  store i16* getelementptr inbounds ([6 x [1 x i16]], [6 x [1 x i16]]* @g_1402, i32 0, i64 1, i64 0), i16** %l_2660, align 8, !tbaa !5
  %32 = bitcast i32* %l_2713 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #1
  store i32 -1283301730, i32* %l_2713, align 4, !tbaa !1
  %33 = bitcast [4 x i64]* %l_2728 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %33) #1
  %34 = bitcast [4 x i64]* %l_2728 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* bitcast ([4 x i64]* @func_1.l_2728 to i8*), i64 32, i32 16, i1 false)
  %35 = bitcast i32* %l_2756 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #1
  store i32 0, i32* %l_2756, align 4, !tbaa !1
  %36 = bitcast i64***** %l_2932 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %36) #1
  store i64**** null, i64***** %l_2932, align 8, !tbaa !5
  %37 = bitcast i64*** %l_2935 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %37) #1
  store i64** null, i64*** %l_2935, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_3039) #1
  store i8 -1, i8* %l_3039, align 1, !tbaa !9
  %38 = bitcast [4 x [8 x i16]]* %l_3040 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %38) #1
  %39 = bitcast [4 x [8 x i16]]* %l_3040 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* bitcast ([4 x [8 x i16]]* @func_1.l_3040 to i8*), i64 64, i32 16, i1 false)
  %40 = bitcast i32* %l_3043 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %40) #1
  store i32 -10, i32* %l_3043, align 4, !tbaa !1
  %41 = bitcast i16* %l_3061 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %41) #1
  store i16 -1, i16* %l_3061, align 2, !tbaa !10
  %42 = bitcast [6 x i32]* %l_3062 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %42) #1
  %43 = bitcast [6 x i32]* %l_3062 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* bitcast ([6 x i32]* @func_1.l_3062 to i8*), i64 24, i32 16, i1 false)
  %44 = bitcast i32* %l_3065 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %44) #1
  store i32 -1268098644, i32* %l_3065, align 4, !tbaa !1
  %45 = bitcast i64* %l_3075 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %45) #1
  store i64 7, i64* %l_3075, align 8, !tbaa !7
  %46 = bitcast i32* %l_3078 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %46) #1
  store i32 -1, i32* %l_3078, align 4, !tbaa !1
  %47 = bitcast i16* %l_3083 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %47) #1
  store i16 0, i16* %l_3083, align 2, !tbaa !10
  %48 = bitcast i64* %l_3093 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %48) #1
  store i64 -10, i64* %l_3093, align 8, !tbaa !7
  call void @llvm.lifetime.start(i64 1, i8* %l_3094) #1
  store i8 0, i8* %l_3094, align 1, !tbaa !9
  %49 = bitcast i32** %l_3095 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %49) #1
  store i32* %l_2639, i32** %l_3095, align 8, !tbaa !5
  %50 = bitcast i32* %l_3096 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %50) #1
  store i32 -1567203542, i32* %l_3096, align 4, !tbaa !1
  %51 = bitcast i16* %l_3097 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %51) #1
  store i16 1, i16* %l_3097, align 2, !tbaa !10
  %52 = bitcast i32* %l_3098 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %52) #1
  store i32 0, i32* %l_3098, align 4, !tbaa !1
  %53 = bitcast i32* %l_3099 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %53) #1
  store i32 -213789642, i32* %l_3099, align 4, !tbaa !1
  %54 = bitcast i16* %l_3100 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %54) #1
  store i16 0, i16* %l_3100, align 2, !tbaa !10
  %55 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %55) #1
  %56 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %56) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %57

; <label>:57                                      ; preds = %64, %0
  %58 = load i32, i32* %i, align 4, !tbaa !1
  %59 = icmp slt i32 %58, 1
  br i1 %59, label %60, label %67

; <label>:60                                      ; preds = %57
  %61 = load i32, i32* %i, align 4, !tbaa !1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [1 x i32], [1 x i32]* %l_2635, i32 0, i64 %62
  store i32 -7, i32* %63, align 4, !tbaa !1
  br label %64

; <label>:64                                      ; preds = %60
  %65 = load i32, i32* %i, align 4, !tbaa !1
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %i, align 4, !tbaa !1
  br label %57

; <label>:67                                      ; preds = %57
  store i32 0, i32* @g_4, align 4, !tbaa !1
  br label %68

; <label>:68                                      ; preds = %132, %67
  %69 = load i32, i32* @g_4, align 4, !tbaa !1
  %70 = icmp sge i32 %69, 14
  br i1 %70, label %71, label %135

; <label>:71                                      ; preds = %68
  %72 = bitcast [6 x [2 x i32*]]* %l_7 to i8*
  call void @llvm.lifetime.start(i64 96, i8* %72) #1
  %73 = bitcast [6 x [2 x i32*]]* %l_7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %73, i8* bitcast ([6 x [2 x i32*]]* @func_1.l_7 to i8*), i64 96, i32 16, i1 false)
  %74 = bitcast [1 x [8 x i32]]* %l_11 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %74) #1
  %75 = bitcast [1 x [8 x i32]]* %l_11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %75, i8* bitcast ([1 x [8 x i32]]* @func_1.l_11 to i8*), i64 32, i32 16, i1 false)
  %76 = bitcast i32* %l_40 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %76) #1
  store i32 2, i32* %l_40, align 4, !tbaa !1
  %77 = bitcast [10 x i32*]* %l_56 to i8*
  call void @llvm.lifetime.start(i64 80, i8* %77) #1
  %78 = bitcast [10 x i32*]* %l_56 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %78, i8* bitcast ([10 x i32*]* @func_1.l_56 to i8*), i64 80, i32 16, i1 false)
  %79 = bitcast i32*** %l_55 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %79) #1
  %80 = getelementptr inbounds [10 x i32*], [10 x i32*]* %l_56, i32 0, i64 3
  store i32** %80, i32*** %l_55, align 8, !tbaa !5
  %81 = bitcast i32** %l_1541 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %81) #1
  store i32* @g_8, i32** %l_1541, align 8, !tbaa !5
  %82 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %82) #1
  %83 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %83) #1
  %84 = getelementptr inbounds [1 x [8 x i32]], [1 x [8 x i32]]* %l_11, i32 0, i64 0
  %85 = getelementptr inbounds [8 x i32], [8 x i32]* %84, i32 0, i64 5
  %86 = load i32, i32* %85, align 4, !tbaa !1
  %87 = add i32 %86, 1
  store i32 %87, i32* %85, align 4, !tbaa !1
  store i32 0, i32* %l_9, align 4, !tbaa !1
  br label %88

; <label>:88                                      ; preds = %120, %71
  %89 = load i32, i32* %l_9, align 4, !tbaa !1
  %90 = icmp slt i32 %89, 9
  br i1 %90, label %91, label %123

; <label>:91                                      ; preds = %88
  %92 = bitcast i32*** %l_25 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %92) #1
  store i32** null, i32*** %l_25, align 8, !tbaa !5
  %93 = bitcast i32*** %l_26 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %93) #1
  %94 = getelementptr inbounds [6 x [2 x i32*]], [6 x [2 x i32*]]* %l_7, i32 0, i64 1
  %95 = getelementptr inbounds [2 x i32*], [2 x i32*]* %94, i32 0, i64 1
  store i32** %95, i32*** %l_26, align 8, !tbaa !5
  %96 = bitcast [4 x i8*]* %l_39 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %96) #1
  %97 = bitcast [7 x [9 x [4 x i32]]]* %l_1540 to i8*
  call void @llvm.lifetime.start(i64 1008, i8* %97) #1
  %98 = bitcast [7 x [9 x [4 x i32]]]* %l_1540 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %98, i8* bitcast ([7 x [9 x [4 x i32]]]* @func_1.l_1540 to i8*), i64 1008, i32 16, i1 false)
  %99 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %99) #1
  %100 = bitcast i32* %j4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %100) #1
  %101 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %101) #1
  store i32 0, i32* %i3, align 4, !tbaa !1
  br label %102

; <label>:102                                     ; preds = %109, %91
  %103 = load i32, i32* %i3, align 4, !tbaa !1
  %104 = icmp slt i32 %103, 4
  br i1 %104, label %105, label %112

; <label>:105                                     ; preds = %102
  %106 = load i32, i32* %i3, align 4, !tbaa !1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [4 x i8*], [4 x i8*]* %l_39, i32 0, i64 %107
  store i8* @g_10, i8** %108, align 8, !tbaa !5
  br label %109

; <label>:109                                     ; preds = %105
  %110 = load i32, i32* %i3, align 4, !tbaa !1
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %i3, align 4, !tbaa !1
  br label %102

; <label>:112                                     ; preds = %102
  %113 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %113) #1
  %114 = bitcast i32* %j4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %114) #1
  %115 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %115) #1
  %116 = bitcast [7 x [9 x [4 x i32]]]* %l_1540 to i8*
  call void @llvm.lifetime.end(i64 1008, i8* %116) #1
  %117 = bitcast [4 x i8*]* %l_39 to i8*
  call void @llvm.lifetime.end(i64 32, i8* %117) #1
  %118 = bitcast i32*** %l_26 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %118) #1
  %119 = bitcast i32*** %l_25 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %119) #1
  br label %120

; <label>:120                                     ; preds = %112
  %121 = load i32, i32* %l_9, align 4, !tbaa !1
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %l_9, align 4, !tbaa !1
  br label %88

; <label>:123                                     ; preds = %88
  %124 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %124) #1
  %125 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %125) #1
  %126 = bitcast i32** %l_1541 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %126) #1
  %127 = bitcast i32*** %l_55 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %127) #1
  %128 = bitcast [10 x i32*]* %l_56 to i8*
  call void @llvm.lifetime.end(i64 80, i8* %128) #1
  %129 = bitcast i32* %l_40 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %129) #1
  %130 = bitcast [1 x [8 x i32]]* %l_11 to i8*
  call void @llvm.lifetime.end(i64 32, i8* %130) #1
  %131 = bitcast [6 x [2 x i32*]]* %l_7 to i8*
  call void @llvm.lifetime.end(i64 96, i8* %131) #1
  br label %132

; <label>:132                                     ; preds = %123
  %133 = load i32, i32* @g_4, align 4, !tbaa !1
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* @g_4, align 4, !tbaa !1
  br label %68

; <label>:135                                     ; preds = %68
  %136 = load i32*, i32** @g_2538, align 8, !tbaa !5
  %137 = load i32, i32* %136, align 4, !tbaa !1
  %138 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %138) #1
  %139 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %139) #1
  %140 = bitcast i16* %l_3100 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %140) #1
  %141 = bitcast i32* %l_3099 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %141) #1
  %142 = bitcast i32* %l_3098 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %142) #1
  %143 = bitcast i16* %l_3097 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %143) #1
  %144 = bitcast i32* %l_3096 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %144) #1
  %145 = bitcast i32** %l_3095 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %145) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_3094) #1
  %146 = bitcast i64* %l_3093 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %146) #1
  %147 = bitcast i16* %l_3083 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %147) #1
  %148 = bitcast i32* %l_3078 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %148) #1
  %149 = bitcast i64* %l_3075 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %149) #1
  %150 = bitcast i32* %l_3065 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %150) #1
  %151 = bitcast [6 x i32]* %l_3062 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %151) #1
  %152 = bitcast i16* %l_3061 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %152) #1
  %153 = bitcast i32* %l_3043 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %153) #1
  %154 = bitcast [4 x [8 x i16]]* %l_3040 to i8*
  call void @llvm.lifetime.end(i64 64, i8* %154) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_3039) #1
  %155 = bitcast i64*** %l_2935 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %155) #1
  %156 = bitcast i64***** %l_2932 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %156) #1
  %157 = bitcast i32* %l_2756 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %157) #1
  %158 = bitcast [4 x i64]* %l_2728 to i8*
  call void @llvm.lifetime.end(i64 32, i8* %158) #1
  %159 = bitcast i32* %l_2713 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %159) #1
  %160 = bitcast i16** %l_2660 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %160) #1
  %161 = bitcast i32*** %l_2650 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %161) #1
  %162 = bitcast i32** %l_2651 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %162) #1
  %163 = bitcast i32*** %l_2649 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %163) #1
  %164 = bitcast i32* %l_2639 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %164) #1
  %165 = bitcast [1 x i32]* %l_2635 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %165) #1
  %166 = bitcast i64* %l_2634 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %166) #1
  %167 = bitcast i64* %l_2629 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %167) #1
  %168 = bitcast i64* %l_2628 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %168) #1
  %169 = bitcast [9 x i32**]* %l_1235 to i8*
  call void @llvm.lifetime.end(i64 72, i8* %169) #1
  %170 = bitcast [9 x [8 x i32*]]* %l_1236 to i8*
  call void @llvm.lifetime.end(i64 576, i8* %170) #1
  %171 = bitcast i8** %l_57 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %171) #1
  %172 = bitcast i32* %l_9 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %172) #1
  ret i32 %137
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
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.120, i32 0, i32 0), i8* %8, i64 %11)
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
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.121, i32 0, i32 0), i32 %3)
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
